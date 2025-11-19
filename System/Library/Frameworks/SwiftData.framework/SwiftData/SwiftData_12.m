uint64_t _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v8 = *a1;
  v9 = *a2;
  v3 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B418, &qword_19752F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19752D100;
  *(inited + 32) = v8;
  *(inited + 48) = v2;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_19752D100;
  *(v5 + 32) = v9;
  *(v5 + 48) = v3;
  if (sub_1974D1990(inited, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_19749ED2C(v5, inited);
  }

  return v6 & 1;
}

uint64_t _s9SwiftData6SchemaC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = v4;
  v5 = *(a2 + 56);
  v13 = *(a2 + 40);
  v14 = v5;
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v15, &v13))
  {
    return 0;
  }

  v11 = v15;
  v12 = v16;
  v9 = v13;
  v10 = v14;
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v9, &v11))
  {
    return 0;
  }

  v7 = *(a1 + 64);
  v8 = *(a2 + 64);

  return sub_197421268(v7, v8);
}

uint64_t sub_1974DB8D4(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 >> 62;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    goto LABEL_67;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v4)
      {
        return sub_1975220EC();
      }

      else
      {
        return *(v5 + 16);
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8E0960](v7, v3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_63;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    swift_beginAccess();
    if (*(v8 + 16) == *(a2 + 16) && *(v8 + 24) == *(a2 + 24))
    {
      break;
    }

    v10 = sub_19752282C();

    if (v10)
    {
      goto LABEL_20;
    }

    v12 = __OFADD__(v7++, 1);
    if (v12)
    {
      goto LABEL_64;
    }
  }

LABEL_20:
  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v5 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v13 == sub_1975220EC())
        {
          return v7;
        }
      }

      else if (v13 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v4 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A8E0960](v13, v3);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v6 = sub_1975220EC();
          goto LABEL_3;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      swift_beginAccess();
      if (*(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24))
      {
      }

      else
      {
        v15 = sub_19752282C();

        if ((v15 & 1) == 0)
        {
          if (v7 != v13)
          {
            if (v4)
            {
              v16 = MEMORY[0x19A8E0960](v7, v3);
              v17 = MEMORY[0x19A8E0960](v13, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                break;
              }

              v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v18)
              {
                goto LABEL_69;
              }

              if (v13 >= v18)
              {
                goto LABEL_70;
              }

              v16 = *(v3 + 32 + 8 * v7);
              v17 = *(v3 + 32 + 8 * v13);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_19751E884(v3);
              v19 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v4 = v3 & 0xFFFFFFFFFFFFFF8;
            v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

            if ((v3 & 0x8000000000000000) != 0 || v19)
            {
              v3 = sub_19751E884(v3);
              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_57:
                __break(1u);
                return sub_1975220EC();
              }
            }

            else if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v13 >= *(v4 + 16))
            {
              goto LABEL_66;
            }

            v21 = v4 + 8 * v13;
            v22 = *(v21 + 32);
            *(v21 + 32) = v16;

            *a1 = v3;
          }

          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_65;
          }
        }
      }

      v12 = __OFADD__(v13++, 1);
      if (v12)
      {
        goto LABEL_62;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974DBC1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = (result + 8);
  v8 = (result + 64);
  while (1)
  {
    v9 = v6;
    v10 = *v5;
    if (*v5 > 0x7FF)
    {
LABEL_5:
      v11 = v8;
      v12 = 36;
LABEL_6:
      v13 = *(*v11 + v12);
      goto LABEL_7;
    }

    if (v10 == 512)
    {
      v11 = v7;
      v12 = 20;
      goto LABEL_6;
    }

    if (!v10)
    {
      goto LABEL_5;
    }

    result = sub_19752148C();
    if (result != v10)
    {
      if (!v9)
      {
        return v9;
      }

      goto LABEL_8;
    }

    sub_19752145C();
    v13 = sub_19752143C();
    result = sub_19752143C();
    if (result < 0)
    {
      goto LABEL_49;
    }

    result = sub_19752143C();
    if (v13 < 0 || result < v13)
    {
      goto LABEL_50;
    }

LABEL_7:
    if (v9 == v13)
    {
      return 0;
    }

LABEL_8:
    v14 = *v5;
    if (*v5 > 0x7FF)
    {
      goto LABEL_11;
    }

    if (v14 == 512)
    {
      v15 = v7;
      v16 = 20;
      goto LABEL_12;
    }

    if (!v14)
    {
LABEL_11:
      v15 = v8;
      v16 = 36;
LABEL_12:
      v17 = *(*v15 + v16);
      goto LABEL_13;
    }

    result = sub_19752148C();
    if (result == v14)
    {
      sub_19752145C();
      v17 = sub_19752143C();
      result = sub_19752143C();
      if (result < 0)
      {
        goto LABEL_51;
      }

      result = sub_19752143C();
      if (v17 < 0 || result < v17)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_13:
    if (v9 >= v17)
    {
      break;
    }

    v18 = *v5;
    v19 = sub_19752148C();
    if (v18 > 0x7FF)
    {
      if (v19 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_19;
      }
    }

    else if (v19 >= 0x800)
    {
      if (!v18)
      {
LABEL_19:
        sub_19752145C();
        sub_19752144C();
        v20 = sub_19752142C();
        goto LABEL_24;
      }
    }

    else if (v18 == v19)
    {
      goto LABEL_19;
    }

    v22 = 8;
    if (*v5 - 512 < 3)
    {
      v22 = 1;
    }

    v23 = *(v5[v22] + 16);
    v24 = *(sub_19752146C() + 8);
    v20 = sub_19752186C();
LABEL_24:
    if (v20 == a2 && v21 == a3)
    {

      return v9;
    }

    v26 = sub_19752282C();

    v6 = v9 + 1;
    if (v26)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void *sub_1974DBEE8(void *a1, char a2)
{
  if (qword_1ED7C9CC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7C9CC8;
  [qword_1ED7C9CC8 lock];
  if (qword_1ED7C9598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = sub_19741AA7C(a1, qword_1ED7CE630);
  swift_endAccess();
  if (!v5)
  {
    v7 = sub_19741AB44();
    v5 = v7;
    if (v7)
    {
      [v7 _makeImmutable];
      if (a2)
      {
        swift_beginAccess();
        sub_197420530(v5, a1);
        swift_endAccess();
      }
    }
  }

  [v4 unlock];
  return v5;
}

unint64_t sub_1974DC038()
{
  result = qword_1EAF2BAC8;
  if (!qword_1EAF2BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAC8);
  }

  return result;
}

uint64_t sub_1974DC08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646F636E65 && a2 == 0xEF6E6F6973726556;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1974DC1AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1974DC2B8(unint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  if (qword_1ED7C9B38 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v6 = qword_1ED7C9B50;
    *(v2 + 16) = xmmword_1ED7C9B40;
    *(v2 + 32) = v6;
    *(v2 + 40) = v4;
    *(v2 + 56) = v5;
    *(v2 + 64) = a1;
    v5 = a1 >> 62 ? sub_1975220EC() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v2;

    if (!v5)
    {
      break;
    }

    v7 = 0;
    v2 = MEMORY[0x1E69E7CC8];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x19A8E0960](v7, a1);
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_26;
      }

LABEL_11:
      swift_beginAccess();
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_1973F4028(v14, v13);
      v18 = *(v2 + 16);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_28;
      }

      v22 = v17;
      if (*(v2 + 24) < v21)
      {
        sub_197417494(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_1973F4028(v14, v13);
        if ((v22 & 1) != (v23 & 1))
        {
          result = sub_1975229CC();
          __break(1u);
          return result;
        }

LABEL_16:
        if (v22)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v27 = v16;
      sub_197479C28();
      v16 = v27;
      if (v22)
      {
LABEL_6:
        v8 = v16;

        v9 = *(v2 + 56);
        v10 = *(v9 + 8 * v8);
        *(v9 + 8 * v8) = v11;

        goto LABEL_7;
      }

LABEL_17:
      *(v2 + 8 * (v16 >> 6) + 64) |= 1 << v16;
      v24 = (*(v2 + 48) + 16 * v16);
      *v24 = v14;
      v24[1] = v13;
      *(*(v2 + 56) + 8 * v16) = v11;

      v25 = *(v2 + 16);
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_29;
      }

      *(v2 + 16) = v26;
LABEL_7:
      ++v7;
      if (v12 == v5)
      {
        goto LABEL_25;
      }
    }

    if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v11 = *(a1 + 8 * v7 + 32);

    v12 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_11;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = v4;
    swift_once();
    v4 = v30;
  }

  v2 = MEMORY[0x1E69E7CC8];
LABEL_25:
  result = v29;
  *(v29 + 72) = v2;
  return result;
}

unint64_t sub_1974DC574()
{
  result = qword_1EAF2BAD8;
  if (!qword_1EAF2BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAD8);
  }

  return result;
}

unint64_t sub_1974DC5C8()
{
  result = qword_1EAF2BAE0;
  if (!qword_1EAF2BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAE0);
  }

  return result;
}

unint64_t sub_1974DC61C()
{
  result = qword_1EAF2BB08;
  if (!qword_1EAF2BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB08);
  }

  return result;
}

uint64_t sub_1974DC670(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BAE8, &qword_1975309C8);
    sub_197420CF8(a2, 255, type metadata accessor for Schema.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1974DC710()
{
  result = qword_1EAF2BB38;
  if (!qword_1EAF2BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB38);
  }

  return result;
}

unint64_t sub_1974DC764()
{
  result = qword_1EAF2BB48;
  if (!qword_1EAF2BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SwiftData12ModelContextCs5Error_pIeghgzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1974DC7F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0xFFFFFFF);
  }

  v3 = *(a1 + 24);
  v4 = (((v3 >> 36) >> 27) & 0xF0000001 | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x7FFFFFF | (v3 >> 36) & 0x7000000 | ((v3 & 7) << 21) & 0x7FFFFFF))) ^ 0xFFFFFFF;
  if (v4 >= 0xFFFFFFE)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1974DC88C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0xFFFFFFF;
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x7FFFFFF) - (a2 << 27);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1975309A0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1975309B0), vdupq_n_s64(0xF000000000000000)));
      *(result + 24) = ((v3 >> 21) | (v3 << 36)) & 0xF000000000000007;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
    }
  }

  return result;
}

int8x16_t sub_1974DC964(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1].i64[0] & 0xFFFFFFFFFFFFFF8;
  v3 = a1[1].i64[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
  *a1 = result;
  a1[1].i64[0] = v2;
  a1[1].i64[1] = v3;
  return result;
}

uint64_t dispatch thunk of Schema.__allocating_init(_:version:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

uint64_t getEnumTagSinglePayload for Schema.Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Schema.Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1974DCAB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1974DCB00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1974DCB6C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1974DCBFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1974DCCC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1974DCD08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1974DCD68()
{
  result = qword_1EAF2BB50;
  if (!qword_1EAF2BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB50);
  }

  return result;
}

unint64_t sub_1974DCDC0()
{
  result = qword_1EAF2BB58;
  if (!qword_1EAF2BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB58);
  }

  return result;
}

unint64_t sub_1974DCE18()
{
  result = qword_1EAF2BB60;
  if (!qword_1EAF2BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB60);
  }

  return result;
}

unint64_t sub_1974DCE70()
{
  result = qword_1EAF2BB68;
  if (!qword_1EAF2BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB68);
  }

  return result;
}

unint64_t sub_1974DCEC8()
{
  result = qword_1EAF2BB70;
  if (!qword_1EAF2BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB70);
  }

  return result;
}

unint64_t sub_1974DCF20()
{
  result = qword_1EAF2BB78;
  if (!qword_1EAF2BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB78);
  }

  return result;
}

uint64_t sub_1974DCF84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1974DCFCC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1974DD018()
{
  result = qword_1EAF2BB88;
  if (!qword_1EAF2BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BB88);
  }

  return result;
}

uint64_t sub_1974DD06C(uint64_t *a1, int a2)
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

uint64_t sub_1974DD0B4(uint64_t result, int a2, int a3)
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

uint64_t FetchDescriptor.predicate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t FetchDescriptor.sortBy.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*FetchDescriptor.sortBy.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_39;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t FetchDescriptor.fetchLimit.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t FetchDescriptor.fetchLimit.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 40);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t (*FetchDescriptor.fetchLimit.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_40;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t FetchDescriptor.fetchOffset.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t FetchDescriptor.fetchOffset.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 44);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t (*FetchDescriptor.fetchOffset.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_41;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t (*FetchDescriptor.includePendingChanges.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_42;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t FetchDescriptor.propertiesToFetch.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*FetchDescriptor.propertiesToFetch.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_43;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t FetchDescriptor.relationshipKeyPathsForPrefetching.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*FetchDescriptor.relationshipKeyPathsForPrefetching.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_44;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t (*FetchDescriptor.returnModelsAsFutures.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_45;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t (*FetchDescriptor.triggerObservationChanges.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_46;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t static FetchDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v50 = a2;
  v51 = a3;
  v48 = a3;
  v5 = sub_19752139C();
  v6 = sub_197521F5C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v46 - v14;
  v16 = v7[2];
  v47 = a1;
  v49 = v16;
  v16(&v46 - v14, a1, v6);
  v17 = *(*(v5 - 8) + 48);
  v18 = v17(v15, 1, v5);
  v19 = v7[1];
  v19(v15, v6);
  if (v18 != 1)
  {
    goto LABEL_5;
  }

  v20 = v50;
  v49(v12, v50, v6);
  v21 = v17(v12, 1, v5);
  v19(v12, v6);
  if (v21 != 1)
  {
    goto LABEL_5;
  }

  Descriptor = type metadata accessor for FetchDescriptor();
  v23 = v47;
  if (*(v47 + Descriptor[12]) != *(v20 + Descriptor[12]) || *(v47 + Descriptor[15]) != *(v20 + Descriptor[15]))
  {
    goto LABEL_5;
  }

  v26 = Descriptor[10];
  v27 = (v47 + v26);
  v28 = *(v47 + v26 + 8);
  v29 = (v20 + v26);
  v30 = *(v20 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_5;
    }
  }

  v31 = Descriptor[11];
  v32 = (v47 + v31);
  v33 = *(v47 + v31 + 8);
  v34 = (v20 + v31);
  v35 = *(v20 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_5;
    }
  }

  v36 = Descriptor;
  v37 = Descriptor[13];
  v38 = *(v47 + v37);
  v39 = *(v20 + v37);
  sub_19752228C();
  if (sub_197521ACC())
  {
    v40 = v36[14];
    v41 = *(v23 + v40);
    v42 = *(v20 + v40);
    if (sub_197521ACC())
    {
      v43 = v36[9];
      v44 = *(v23 + v43);
      v45 = *(v20 + v43);
      sub_197520C4C();
      swift_getWitnessTable();
      v24 = sub_197521ACC();
      return v24 & 1;
    }
  }

LABEL_5:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1974DD830@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = sub_1973F7BBC(a1, a2, a3);
  v7 = v6;
  result = sub_19752189C();
  if (result)
  {
    sub_197416D54();
    v9 = sub_197521F9C();

    *(v9 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFA0, &qword_19752C710);
    sub_1974EDD00(&qword_1EAF2AFA8, &qword_1EAF2AFA0, &qword_19752C710);
    v5 = sub_1975216CC();
    v7 = v10;
    result = swift_unknownObjectRelease();
  }

  *a4 = v5;
  a4[1] = v7;
  return result;
}

id sub_1974DD97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v84 = a5;
  v81 = a2;
  v77 = a6;
  v80 = sub_197520DAC();
  v79 = *(v80 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80, v10);
  v78 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_19752119C();
  v82 = *(v88 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v88, v13);
  v87 = &v77 - v14;
  v96[6] = a3;
  v15 = sub_19752139C();
  v16 = sub_197521F5C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v77 - v21;
  v23 = *(v15 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20, v25);
  v86 = &v77 - v26;
  v89 = a3;
  v90 = a4;
  sub_1973F7AAC();
  v27 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v28 = sub_19752178C();

  v92 = [v27 initWithEntityName_];

  v29 = *(v17 + 16);
  v83 = a1;
  v29(v22, a1, v16);
  v85 = v23;
  if ((*(v23 + 48))(v22, 1, v15) == 1)
  {
    (*(v17 + 8))(v22, v16);
  }

  else
  {
    (*(v85 + 32))(v86, v22, v15);
    v96[3] = v87;
    sub_19752138C();
    v30 = v78;
    sub_19752118C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF88, &qword_19752C6F8);
    v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700) - 8);
    v32 = *(*v31 + 72);
    v33 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_19752C280;
    v35 = v34 + v33;
    v36 = v34 + v33 + v31[14];
    v37 = v79;
    v38 = v34 + v33;
    v39 = v80;
    (*(v79 + 16))(v38, v30, v80);
    v40 = [objc_opt_self() expressionForEvaluatedObject];
    *(v36 + 8) = 0u;
    *(v36 + 24) = 0u;
    *(v36 + 40) = 0u;
    *(v36 + 56) = 0;
    *v36 = v40;
    v41 = sub_197407784(v34);
    swift_setDeallocating();
    sub_19740797C(v35, &qword_1EAF2AF90, &qword_19752C700);
    swift_deallocClassInstance();
    (*(v37 + 8))(v30, v39);
    v96[0] = 1;
    v96[1] = v41;
    v96[2] = v81;

    sub_19752136C();
    v42 = v94;
    v43 = v95;
    __swift_project_boxed_opaque_existential_0Tm(v93, v94);
    v44 = v91;
    sub_197407C0C(v96, v42, *(v43 + 8));
    if (v44)
    {

      (*(v85 + 8))(v86, v15);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v93);
      result = (*(v82 + 8))(v87, v88);
      *v84 = v44;
      return result;
    }

    v47 = v45;
    v91 = 0;
    __swift_destroy_boxed_opaque_existential_0Tm_0(v93);
    [v92 setPredicate_];

    (*(v85 + 8))(v86, v15);
    (*(v82 + 8))(v87, v88);
  }

  v49 = v89;
  v48 = v90;
  Descriptor = type metadata accessor for FetchDescriptor();
  v51 = v83;
  v93[0] = *(v83 + Descriptor[9]);
  MEMORY[0x1EEE9AC00](Descriptor, v52);
  *(&v77 - 2) = v49;
  *(&v77 - 1) = v48;
  sub_197520C4C();
  v53 = sub_197521AAC();
  v54 = sub_197408568(0, &qword_1ED7C9358, 0x1E696AEB0);

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  WitnessTable = swift_getWitnessTable();
  v57 = v91;
  sub_1974048EC(sub_1974EDD70, (&v77 - 4), v53, v54, v55, WitnessTable, MEMORY[0x1E69E7288], v96);
  if (v57)
  {

    *v84 = v96[0];
  }

  else
  {

    v58 = sub_1975219BC();

    v59 = v92;
    [v92 setSortDescriptors_];

    v62 = v51 + Descriptor[10];
    if ((*(v62 + 8) & 1) == 0)
    {
      v60 = [v59 setFetchLimit_];
    }

    v63 = v51 + Descriptor[11];
    v65 = v89;
    v64 = v90;
    if ((*(v63 + 8) & 1) == 0)
    {
      v60 = [v59 setFetchOffset_];
    }

    v93[0] = *(v51 + Descriptor[13]);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v77 - 2) = v65;
    *(&v77 - 1) = v64;
    sub_19752228C();
    v66 = sub_197521AAC();

    v67 = swift_getWitnessTable();
    v68 = sub_1974048EC(sub_1974EDD90, (&v77 - 4), v66, MEMORY[0x1E69E6158], v55, v67, MEMORY[0x1E69E7288], v96);

    if (*(v68 + 16))
    {
      sub_1974AE9C4(v68);

      v69 = sub_1975219BC();

      [v92 setPropertiesToFetch_];
    }

    else
    {
    }

    v72 = v83;
    v93[0] = *(v83 + Descriptor[14]);
    MEMORY[0x1EEE9AC00](v70, v71);
    v73 = v90;
    *(&v77 - 2) = v89;
    *(&v77 - 1) = v73;

    v74 = sub_1974048EC(sub_1974EE090, (&v77 - 4), v66, MEMORY[0x1E69E6158], v55, v67, MEMORY[0x1E69E7288], v96);

    v75 = v92;
    if (*(v74 + 16))
    {
      v76 = sub_1975219BC();

      [v75 setRelationshipKeyPathsForPrefetching_];
    }

    else
    {
    }

    result = [v75 setIncludesPendingChanges_];
    *v77 = v75;
  }

  return result;
}

void sub_1974DE394(char *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v7 = sub_197520C4C();
  sub_197411D1C(v7, a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v8;
  }
}

void sub_1974DE400(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  sub_1974084E0(*a1, a2, a3);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      *a5 = v8;
      a5[1] = v9;
    }

    else
    {

      if (qword_1EAF2AD28 != -1)
      {
        swift_once();
      }

      v11 = byte_1EAF2B6F8;
      v13 = qword_1EAF2B700;
      v12 = unk_1EAF2B708;
      sub_19744BE3C();
      v14 = swift_allocError();
      *v15 = v11;
      *(v15 + 8) = v13;
      *(v15 + 16) = v12;
      swift_willThrow();
      *a4 = v14;
    }
  }
}

uint64_t sub_1974DE4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X8>)
{
  v34 = a4;
  v35 = a1;
  v37 = a2;
  v33 = a5;
  v6 = sub_197520DAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19752119C();
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v32 - v15;
  v42[5] = &v32 - v15;
  v42[3] = a3;
  sub_19752139C();
  sub_19752138C();
  sub_19752118C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF88, &qword_19752C6F8);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_19752C280;
  v21 = v20 + v19;
  v22 = v21 + v17[14];
  (*(v7 + 16))(v21, v11, v6);
  v23 = [objc_opt_self() expressionForEvaluatedObject];
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 0;
  *v22 = v23;
  v24 = sub_197407784(v20);
  swift_setDeallocating();
  sub_19740797C(v21, &qword_1EAF2AF90, &qword_19752C700);
  swift_deallocClassInstance();
  (*(v7 + 8))(v11, v6);
  v42[0] = 1;
  v42[1] = v24;
  v42[2] = v37;

  sub_19752136C();
  v25 = v40;
  v26 = v41;
  __swift_project_boxed_opaque_existential_0Tm(v39, v40);
  v27 = v38;
  sub_197407C0C(v42, v25, *(v26 + 8));
  v29 = (v36 + 8);
  if (v27)
  {

    __swift_destroy_boxed_opaque_existential_0Tm_0(v39);
    result = (*v29)(v16, v12);
    *v34 = v27;
  }

  else
  {
    v31 = v28;

    *v33 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm_0(v39);
    return (*v29)(v16, v12);
  }

  return result;
}

void sub_1974DE89C(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v58 = a4;
  v54 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF98, &qword_19752C708);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v52 - v12;
  v14 = sub_19752177C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v55 = &v52 - v26;
  v56 = sub_197520C4C();
  v57 = a1;
  v27 = sub_197520C3C();
  if (v27)
  {
    v28 = v27;
    sub_1974084E0(v27, a2, a3);
    if (v5)
    {

      *v58 = v5;
      return;
    }

    v36 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v36 = v29 & 0xFFFFFFFFFFFFLL;
    }

    v53 = v28;
    if (v36)
    {
      v52 = v29;
    }

    else
    {

      v52 = 0x44497463656A626FLL;
    }

    sub_197520C0C();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_19740797C(v13, &qword_1EAF2AF98, &qword_19752C708);
      v37 = 0;
LABEL_20:
      sub_197520C1C();
      v42 = sub_1975213BC();
      v43 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v44 = sub_19752178C();

      v45 = [v43 initWithKey:v44 ascending:v42 & 1 selector:{v37, v52, v53}];

      *v54 = v45;
      return;
    }

    v38 = v55;
    (*(v15 + 32))(v55, v13, v14);
    (*(v15 + 16))(v24, v38, v14);
    sub_19752175C();
    sub_1974EDDB0();
    LOBYTE(v38) = sub_19752173C();
    v39 = *(v15 + 8);
    v39(v20, v14);
    if (v38)
    {
      v40 = &selRef_compare_;
LABEL_18:
      v39(v24, v14);
LABEL_19:
      v37 = *v40;
      v39(v55, v14);
      goto LABEL_20;
    }

    sub_19752176C();
    v41 = sub_19752173C();
    v39(v20, v14);
    if (v41)
    {
      v40 = &selRef_localizedCompare_;
      goto LABEL_18;
    }

    sub_19752174C();
    v46 = sub_19752173C();
    v39(v20, v14);
    v39(v24, v14);
    if (v46)
    {
      v40 = &selRef_localizedStandardCompare_;
      goto LABEL_19;
    }

    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v47 = byte_1EAF2B728;
    v49 = qword_1EAF2B730;
    v48 = unk_1EAF2B738;
    sub_19744BE3C();
    v50 = swift_allocError();
    *v51 = v47;
    *(v51 + 8) = v49;
    *(v51 + 16) = v48;
    swift_willThrow();

    v39(v55, v14);
    *v58 = v50;
  }

  else
  {
    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v31 = byte_1EAF2B728;
    v33 = qword_1EAF2B730;
    v32 = unk_1EAF2B738;
    sub_19744BE3C();
    v34 = swift_allocError();
    *v35 = v31;
    *(v35 + 8) = v33;
    *(v35 + 16) = v32;
    swift_willThrow();
    *v58 = v34;
  }
}

uint64_t sub_1974DEDF8(uint64_t a1)
{
  v3 = sub_197520DAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0x5F6C61636F6C5F24;
  *&v17 = 0xE800000000000000;
  v21 = *v1;
  v9 = v21;
  v10 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v10);

  if (v9 == -1)
  {
    __break(1u);
  }

  else
  {
    v12 = v16;
    *v1 = v9 + 1;
    (*(v4 + 16))(v8, a1, v3);
    v13 = sub_19752178C();
    v14 = [objc_opt_self() expressionForVariable_];

    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v16 = v14;
    sub_19742A1A4(&v16, v8);
    return v12;
  }

  return result;
}

id sub_1974DEF98()
{
  v1 = sub_1975229AC();
  v2 = objc_opt_self();
  v3 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [v2 expressionForConditional:v0 trueExpression:v3 falseExpression:v4];

  return v5;
}

void sub_1974DF08C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 expressionType] == 1)
  {
    v8 = sub_19752178C();
    v9 = [objc_opt_self() expressionForKeyPath_];
LABEL_3:
    v10 = v9;

LABEL_10:
    *a4 = v10;
    return;
  }

  if ([a1 expressionType] == 3)
  {
    v11 = [a1 keyPath];
    v12 = sub_1975217BC();
    v14 = v13;

    v30 = v12;
    v31 = v14;
    v26 = 64;
    v27 = 0xE100000000000000;
    sub_197416D54();
    LOBYTE(v11) = sub_197521FCC();

    if ((v11 & 1) == 0)
    {
      v22 = [a1 keyPath];
      v23 = sub_1975217BC();
      v25 = v24;

      v30 = v23;
      v31 = v25;
      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      MEMORY[0x19A8DFF80](a2, a3);
      v8 = sub_19752178C();

      v9 = [objc_opt_self() expressionForKeyPath_];
      goto LABEL_3;
    }
  }

  v15 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
  v32 = v15;
  v30 = a1;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = sub_19752178C();
  v19 = [v16 _newKeyPathExpressionForString_];

  if (!v19)
  {
    v15 = 0;
    v27 = 0;
    v28 = 0;
  }

  v26 = v19;
  v29 = v15;
  v20 = objc_allocWithZone(MEMORY[0x1E696ACB8]);
  v21 = sub_1974ECFA8(&v30, &v26);
  if (v21)
  {
    v10 = v21;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1974DF2EC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v78 = a5;
  v79 = a2;
  v74 = a6;
  v82 = sub_197520C7C();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v82, v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = sub_197521F5C();
  v76 = *(v77 - 8);
  v15 = *(v76 + 64);
  v17 = MEMORY[0x1EEE9AC00](v77, v16);
  v19 = &v71 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v17, v22);
  v75 = &v71 - v24;
  v25 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 + 16);
  v80 = a1;
  v30(v28, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBA8, &qword_197531970);
  if (swift_dynamicCast())
  {
    v72 = AssociatedTypeWitness;
    v31 = v79;
    v73 = v20;
    sub_19745E6C8(&v86, &v89);
    v33 = v90;
    v32 = v91;
    __swift_project_boxed_opaque_existential_0Tm(&v89, v90);
    v34 = v83;
    v35 = (*(v32 + 16))(v31, v33, v32);
    v37 = v34;
    if (!v34)
    {
      v53 = v74;
      *v74 = v35;
      *(v53 + 8) = v36 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v89);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm_0(&v89);
    v38 = 0;
    v20 = v73;
    AssociatedTypeWitness = v72;
  }

  else
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    sub_19740797C(&v86, &qword_1EAF2BBB0, &qword_197531978);
    v37 = 0;
    v38 = v83;
  }

  sub_197520C8C();
  sub_197520C9C();
  if (!v38)
  {
    v83 = v37;
    (*(v9 + 8))(v13, v82);
    (*(v20 + 56))(v19, 0, 1, AssociatedTypeWitness);
    v39 = v75;
    (*(v20 + 32))(v75, v19, AssociatedTypeWitness);
    v85[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v85);
    (*(v20 + 16))(boxed_opaque_existential_0Tm, v39, AssociatedTypeWitness);
    v41 = v20;
    v43 = *v79;
    v42 = v79[1];
    v44 = v79[2];

    v46 = MEMORY[0x19A8E1370](v45);
    sub_1974DFBAC(v85, v43, v42, v44, &v84, &v86);
    objc_autoreleasePoolPop(v46);

    __swift_destroy_boxed_opaque_existential_0Tm_0(v85);
    if (*(&v87 + 1))
    {
      sub_1974028B8(&v86, &v89);
      __swift_project_boxed_opaque_existential_0Tm(&v89, v90);
      v54 = sub_19752281C();
      v55 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm_0(&v89);
      (*(v41 + 8))(v39, AssociatedTypeWitness);
      v56 = v74;
      *v74 = v55;
      *(v56 + 8) = 0;
      return;
    }

    (*(v41 + 8))(v39, AssociatedTypeWitness);
    v37 = v83;
    sub_19740797C(&v86, &qword_1EAF2AF20, &unk_19752F320);
    if (v37)
    {
      goto LABEL_7;
    }

LABEL_10:
    v47 = sub_197522B8C();
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v50 = 4 * v49;
      while (sub_1975218BC() != 60 || v51 != 0xE100000000000000)
      {
        v52 = sub_19752282C();

        if ((v52 & 1) != 0 || v50 == sub_19752182C() >> 14)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    v57 = sub_1975218DC();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    *&v89 = 0;
    *(&v89 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x8000000197528F60);
    v64 = MEMORY[0x19A8DFF20](v57, v59, v61, v63);
    v66 = v65;

    MEMORY[0x19A8DFF80](v64, v66);

    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197528F80);
    v68 = *(&v89 + 1);
    v67 = v89;
    sub_19744BE3C();
    v69 = swift_allocError();
    *v70 = 1;
    *(v70 + 8) = __PAIR128__(v68, v67);
    v37 = v69;
    swift_willThrow();

    goto LABEL_25;
  }

  (*(v9 + 8))(v13, v82);
  (*(v20 + 56))(v19, 1, 1, AssociatedTypeWitness);
  (*(v76 + 8))(v19, v77);
  if (!v37)
  {
    goto LABEL_10;
  }

LABEL_7:
  swift_willThrow();
LABEL_25:
  *v78 = v37;
}

uint64_t sub_1974DFAF4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  a1[3] = v6;
  a1[4] = v7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  v12 = *(*(v6 - 8) + 16);
  v12(boxed_opaque_existential_0Tm, v3, v6);
  v9 = *(a3 + 36);
  a2[3] = v6;
  a2[4] = v7;
  v10 = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return (v12)(v10, v3 + v9, v6);
}

void sub_1974DFBAC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X8>)
{
  v92 = a5;
  v87 = a4;
  v86 = a3;
  v85 = a2;
  v8 = sub_1975212CC();
  v88 = *(v8 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19752132C();
  v89 = *(v13 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19752135C();
  v90 = *(v18 - 8);
  v19 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197404860(a1, &v106);
  sub_197404860(&v106, &v100);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  swift_dynamicCast();
  if (!*(&v105 + 1))
  {
    *a6 = 0u;
    a6[1] = 0u;
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0Tm_0(&v106);
    return;
  }

  v91 = a6;
  sub_19740797C(&v104, &qword_1EAF2AF20, &unk_19752F320);
  type metadata accessor for ComparisonResult(0);
  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  type metadata accessor for Decimal(0);
  if (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  v24 = MEMORY[0x1E69E6158];
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v90 + 8))(v22, v18);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      (*(v89 + 8))(v17, v13);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      sub_19744D0E0(v104, *(&v104 + 1));
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      (*(v88 + 8))(v12, v8);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v29 = v104;
      v30 = v91;
      *(v91 + 3) = v24;
      *v30 = v29;
      goto LABEL_21;
    }

    v31 = swift_dynamicCast();
    if (v31)
    {
      v33 = v100;
      v34 = v101;
      if (!v101)
      {
        sub_1974028EC(v100, 0);
        v55 = v33;
LABEL_57:
        *(&v105 + 1) = sub_197408568(0, qword_1ED7C7910, 0x1E695D630);
        *&v104 = v55;
        sub_1974028C8(v33, v34);
        sub_1974028B8(&v104, v91);
        goto LABEL_21;
      }

      if (v101 != 1)
      {
        v104 = 0u;
        v105 = 0u;
        v56 = sub_19750A29C(v31, v32);
        goto LABEL_60;
      }

      if (*(v100 + 32) && *(v100 + 32) == 1)
      {
        sub_1974028EC(v100, 1);
      }

      else
      {
        v68 = sub_19752282C();
        sub_1974028EC(v33, 1);

        if ((v68 & 1) == 0)
        {
          sub_1974028C8(v33, 1);
LABEL_59:
          v104 = 0u;
          v105 = 0u;
          v56 = sub_19750ACDC(v71, v72);
LABEL_60:
          v73 = v56;
          v74 = v57;
          v75 = v91;
          *(v91 + 3) = v24;
          sub_1974028C8(v33, v34);
          *v75 = v73;
          v75[1] = v74;
          if (*(&v105 + 1))
          {
            sub_19740797C(&v104, &qword_1EAF2AF20, &unk_19752F320);
          }

          goto LABEL_21;
        }
      }

      v69 = [*(v87 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
      sub_19750ACDC(v69, v70);
      v55 = sub_197521EDC();
      sub_1974028C8(v33, 1);

      if (v55)
      {
        goto LABEL_57;
      }

      goto LABEL_59;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
    if (swift_dynamicCast())
    {
      sub_19745E6C8(&v104, &v100);
      v36 = v102;
      v35 = v103;
      v37 = __swift_project_boxed_opaque_existential_0Tm(&v100, v102);
      v39 = MEMORY[0x1EEE9AC00](v37, v38);
      v40 = v86;
      *(&v85 - 4) = v85;
      *(&v85 - 3) = v40;
      *(&v85 - 2) = v87;
      MEMORY[0x1EEE9AC00](v39, v41);
      *(&v85 - 4) = v36;
      *(&v85 - 3) = v35;
      *(&v85 - 2) = sub_1974EDBD0;
      *(&v85 - 1) = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
      v44 = v93;
      v45 = sub_19742A5D8(sub_19742ADFC, (&v85 - 6), v36, v23, v43, v35, MEMORY[0x1E69E7288], v98);
      if (v44)
      {
        *v92 = v98[0];
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v100);
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v106);
        return;
      }

      v62 = v45;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC0, &unk_197531990);
      v64 = v91;
      *(v91 + 3) = v63;
      *v64 = v62;
      goto LABEL_53;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBB8, &unk_197531980);
    if (swift_dynamicCast())
    {
      sub_19745E6C8(&v104, &v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B340, &qword_19752D4E8);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_19752F3D0;
      v47 = v102;
      v48 = v103;
      __swift_project_boxed_opaque_existential_0Tm(&v100, v102);
      (*(v48 + 8))(v98, v96, v47, v48);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v96);
      v49 = v99;
      v50 = __swift_project_boxed_opaque_existential_0Tm(v98, v99);
      v95 = v49;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v94);
      v52 = (*(*(v49 - 8) + 16))(boxed_opaque_existential_0Tm, v50, v49);
      v53 = MEMORY[0x19A8E1370](v52);
      v54 = v93;
      sub_1974DFBAC(v94, v85, v86, v87, &v107);
      if (!v54)
      {
        objc_autoreleasePoolPop(v53);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v94);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v98);
        v76 = v102;
        v77 = v103;
        __swift_project_boxed_opaque_existential_0Tm(&v100, v102);
        (*(v77 + 8))(v98, v96, v76, v77);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v98);
        v78 = v97;
        v79 = __swift_project_boxed_opaque_existential_0Tm(v96, v97);
        v95 = v78;
        v80 = __swift_allocate_boxed_opaque_existential_0Tm(v94);
        v81 = (*(*(v78 - 8) + 16))(v80, v79, v78);
        v82 = MEMORY[0x19A8E1370](v81);
        sub_1974DFBAC(v94, v85, v86, v87, &v107);
        objc_autoreleasePoolPop(v82);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v94);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v96);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC0, &unk_197531990);
        v84 = v91;
        *(v91 + 3) = v83;
        *v84 = v46;
LABEL_53:
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v100);
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v106);
        return;
      }

      v28 = v107;
      objc_autoreleasePoolPop(v53);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v94);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v98);
      *(v46 + 16) = 0;

      __swift_destroy_boxed_opaque_existential_0Tm_0(&v100);
    }

    else
    {
      if (swift_dynamicCast())
      {
        v58 = v104;
        v59 = sub_197408568(0, &qword_1ED7C7C78, 0x1E695D6A8);
        v100 = v58;
        v60 = sub_19746A47C(&v100);
        v61 = v91;
        *(v91 + 3) = v59;
        *v61 = v60;
        goto LABEL_21;
      }

      *&v104 = 0;
      *(&v104 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197528FA0);
      __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
      swift_getDynamicType();
      v65 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v65);

      MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528FE0);
      v66 = v104;
      sub_19744BE3C();
      v28 = swift_allocError();
      *v67 = 1;
      *(v67 + 8) = v66;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm_0(&v106);
    goto LABEL_28;
  }

LABEL_26:
  v25 = __swift_destroy_boxed_opaque_existential_0Tm_0(&v106);
  v26 = MEMORY[0x19A8E1370](v25);
  v27 = v93;
  sub_1974E0A44(a1, &v104, v91);
  if (v27)
  {
    v28 = v104;
    objc_autoreleasePoolPop(v26);
LABEL_28:
    *v92 = v28;
    return;
  }

  objc_autoreleasePoolPop(v26);
}

void sub_1974E09B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x19A8E1370]();
  sub_1974DFBAC(a1, a2, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1974E0A44@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_1975212CC();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19752132C();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_19752135C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_197404860(a1, v39);
  sub_197404860(v39, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  swift_dynamicCast();
  if (!v38)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_0Tm_0(v39);
  }

  sub_19740797C(&v36, &qword_1EAF2AF20, &unk_19752F320);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v16 + 8))(v20, v15);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      (*(v33 + 8))(v14, v10);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      sub_19744D0E0(v36, v37);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      (*(v32 + 8))(v9, v5);
      goto LABEL_13;
    }

    v22 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    type metadata accessor for Decimal(0);
    if ((swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
    {
      goto LABEL_13;
    }

    type metadata accessor for ComparisonResult(0);
    if (swift_dynamicCast())
    {
      v23 = v36;
      *(a3 + 24) = v22;
      *a3 = v23;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197528FA0);
        __swift_project_boxed_opaque_existential_0Tm(v34, v34[3]);
        swift_getDynamicType();
        v26 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v26);

        MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528FE0);
        v27 = v36;
        v28 = v37;
        sub_19744BE3C();
        v29 = swift_allocError();
        *v30 = 1;
        *(v30 + 8) = v27;
        *(v30 + 16) = v28;
        swift_willThrow();
        result = __swift_destroy_boxed_opaque_existential_0Tm_0(v39);
        *v31 = v29;
        return result;
      }

      v24 = v36;
      v25 = v37;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      *a3 = v24;
      *(a3 + 8) = v25;
    }

    return __swift_destroy_boxed_opaque_existential_0Tm_0(v39);
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_0Tm_0(v39);
  return sub_197404860(v34, a3);
}

uint64_t sub_1974E11C0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v24[3] = a2;
  __swift_allocate_boxed_opaque_existential_0Tm(v24);
  v8 = sub_1975210CC();
  MEMORY[0x19A8DF7E0](v8);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];

  v13 = MEMORY[0x19A8E1370](v12);
  sub_1974DFBAC(v24, v10, v9, v11, &v27, &v25);
  if (v4)
  {
    v14 = v27;
    objc_autoreleasePoolPop(v13);

    result = __swift_destroy_boxed_opaque_existential_0Tm_0(v24);
    *a3 = v14;
  }

  else
  {
    objc_autoreleasePoolPop(v13);

    __swift_destroy_boxed_opaque_existential_0Tm_0(v24);
    v16 = v26;
    if (v26)
    {
      v17 = __swift_project_boxed_opaque_existential_0Tm(&v25, v26);
      v18 = *(v16 - 8);
      v19 = *(v18 + 64);
      MEMORY[0x1EEE9AC00](v17, v17);
      v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21);
      v22 = sub_19752281C();
      (*(v18 + 8))(v21, v16);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v25);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_opt_self() expressionForConstantValue_];
    result = swift_unknownObjectRelease();
    *a4 = v23;
    *(a4 + 8) = 0;
  }

  return result;
}

uint64_t sub_1974E1428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  v102 = a7;
  v98 = a4;
  v97 = a3;
  v96 = a2;
  v99 = a8;
  v11 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v100 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19752112C();
  v103 = sub_197521F5C();
  v13 = *(v103 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v103, v15);
  v17 = &v91 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = AssociatedTypeWitness;
  if (AssociatedTypeWitness == MEMORY[0x1E69E67B0] || AssociatedTypeWitness == MEMORY[0x1E69E6158])
  {
    v21 = 0x6874676E656CLL;
  }

  else
  {
    v21 = 0x746E756F6340;
  }

  v22 = sub_19752115C();
  v101 = a1;
  sub_19752113C();
  v23 = v115;
  v24 = sub_1974E1F70(v17, v21);
  v27 = v23;
  if (v23)
  {
    (*(v13 + 8))(v17, v103);

LABEL_9:
    *v102 = v27;
    return result;
  }

  v29 = v26;
  v95 = a5;
  v115 = 0;
  v92 = v19;
  v93 = v24;
  v94 = v25;
  (*(v13 + 8))(v17, v103);
  v30 = MEMORY[0x1E69E7CC0];
  LODWORD(v103) = v29;
  v31 = v22;
  if (v29 == 0xFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1975313B0;
    *(v30 + 32) = sub_19752111C();
  }

  MEMORY[0x19A8DF870](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC8, &qword_1975319A0);
  v32 = v95;
  if ((swift_dynamicCast() & 1) == 0)
  {

    *&v110 = 0;
    v108 = 0u;
    v109 = 0u;
    sub_19740797C(&v108, &qword_1EAF2BBD0, &qword_1975319A8);
    v37 = v103;
LABEL_16:
    *(&v109 + 1) = v32;
    *&v110 = a6;
    __swift_allocate_boxed_opaque_existential_0Tm(&v108);
    MEMORY[0x19A8DF870](v31);
    if (v37 == 0xFF)
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B328, &unk_19752D4D0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_19752C280;
      v39 = v94;
      *(v38 + 32) = v93;
      *(v38 + 40) = v39;
      *(v38 + 48) = v37;
    }

    v40 = v99;
    result = sub_19745E6C8(&v108, v99);
    *(v40 + 40) = v30;
    *(v40 + 48) = v38;
    return result;
  }

  v100 = v22;
  v33 = v103;
  sub_19745E6C8(&v108, &v112);
  v34 = v113;
  v35 = v114;
  __swift_project_boxed_opaque_existential_0Tm(&v112, v113);
  v36 = v115;
  (*(v35 + 8))(&v104, v96, v97, v98, v34, v35);
  v27 = v36;
  if (v36)
  {

    sub_1974EDD48(v93, v94, v33);

LABEL_44:
    result = __swift_destroy_boxed_opaque_existential_0Tm_0(&v112);
    goto LABEL_9;
  }

  v37 = v33;
  v115 = 0;
  if (!*(&v105 + 1))
  {

    sub_19740797C(&v104, &qword_1EAF2BBD8, &qword_1975319B0);
    __swift_destroy_boxed_opaque_existential_0Tm_0(&v112);
    v31 = v100;
    v32 = v95;
    goto LABEL_16;
  }

  v108 = v104;
  v109 = v105;
  v110 = v106;
  v111 = v107;
  v41 = *(&v106 + 1);
  if (*(&v106 + 1) >> 62)
  {
    v42 = sub_1975220EC();
  }

  else
  {
    v42 = *((*(&v106 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = MEMORY[0x1E69E7CC0];
  v44 = v30;
  if (v42)
  {
    v45 = __OFSUB__(v42, 1);
    v46 = v42 - 1;
    if (v45)
    {
      __break(1u);
    }

    else if ((v41 & 0xC000000000000001) == 0)
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v46 < *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v41 + 8 * v46 + 32);

        if (v44 >> 62)
        {
          goto LABEL_73;
        }

LABEL_32:
        v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_76;
    }

    v30 = MEMORY[0x19A8E0960](v46, v41);
    if (!(v44 >> 62))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = 0;
    if (!(v44 >> 62))
    {
      goto LABEL_32;
    }
  }

LABEL_73:
  v47 = sub_1975220EC();
LABEL_33:
  v48 = v111;
  v49 = *(v111 + 16);
  if (!v47)
  {

    if (v49)
    {
      if (v37 != 0xFF)
      {
        v55 = v99;
        sub_19742A2E0(&v108, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B328, &unk_19752D4D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_19752C280;
        v57 = v37;
        v58 = v93;
        v59 = v94;
        *(inited + 32) = v93;
        *(inited + 40) = v59;
        *(inited + 48) = v57;
        *&v104 = v48;

        sub_1974EDD5C(v58, v59, v57);

        sub_1974EE818(inited);

        sub_1974EDD48(v58, v59, v57);
        v60 = v104;
        *(v55 + 40) = v41;
        *(v55 + 48) = v60;
LABEL_67:
        sub_197407F34(&v108);
        return __swift_destroy_boxed_opaque_existential_0Tm_0(&v112);
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_39;
      }

      if (v37 != 0xFF)
      {
        v61 = v99;
        sub_19742A2E0(&v108, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B328, &unk_19752D4D0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_19752C280;
        v63 = v94;
        *(v62 + 32) = v93;
        *(v62 + 40) = v63;
        *(v62 + 48) = v37;

        *(v61 + 40) = v41;
        *(v61 + 48) = v62;
        goto LABEL_67;
      }
    }

    goto LABEL_40;
  }

  if (!v30)
  {
LABEL_38:

LABEL_39:
    sub_1974EDD48(v93, v94, v37);
LABEL_40:
    if (qword_1EAF2AD28 != -1)
    {
      swift_once();
    }

    v50 = byte_1EAF2B6F8;
    v52 = qword_1EAF2B700;
    v51 = unk_1EAF2B708;
    sub_19744BE3C();
    v53 = swift_allocError();
    *v54 = v50;
    *(v54 + 8) = v52;
    *(v54 + 16) = v51;
    swift_willThrow();
    v27 = v53;

    goto LABEL_43;
  }

  if (v49 || v37 != 0xFF)
  {

    goto LABEL_38;
  }

  v64 = v92;
  if (swift_conformsToProtocol2() && v64)
  {

    v65 = v99;
    sub_19742A2E0(&v108, v99);
    *&v104 = v41;

    sub_19742A2C8(v44);
    v66 = v104;

    *(v65 + 40) = v66;
    *(v65 + 48) = v43;
    goto LABEL_67;
  }

  v67 = *v30;
  sub_197521FFC();
  v69 = v68;
  v70 = swift_conformsToProtocol2();
  if (!v70 || !v69)
  {

LABEL_60:
    if ((v44 & 0xC000000000000001) == 0)
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v71 = *(v44 + 32);

LABEL_63:

      sub_19752202C();
      v72 = sub_1975224AC();

      if (!v72)
      {
        if (qword_1EAF2AD28 == -1)
        {
LABEL_69:
          v86 = byte_1EAF2B6F8;
          v88 = qword_1EAF2B700;
          v87 = unk_1EAF2B708;
          sub_19744BE3C();
          v89 = swift_allocError();
          *v90 = v86;
          *(v90 + 8) = v88;
          *(v90 + 16) = v87;
          swift_willThrow();
          v27 = v89;

LABEL_43:
          sub_197407F34(&v108);
          goto LABEL_44;
        }

LABEL_80:
        swift_once();
        goto LABEL_69;
      }

      v103 = v30;
      sub_19742A2E0(&v108, v99);

      sub_1974ED7D8(1, v41);
      v74 = v73;
      v76 = v75;
      v78 = v77;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
      v79 = swift_initStackObject();
      *(v79 + 16) = xmmword_1975313B0;
      *(v79 + 32) = v72;
      *&v104 = v43;
      v80 = (v78 >> 1) - v76;
      if (!__OFSUB__(v78 >> 1, v76))
      {
        v81 = v80 + 1;
        if (!__OFADD__(v80, 1))
        {
          v82 = v79;

          sub_1974ED73C(v81);
          v83 = swift_unknownObjectRetain();
          sub_1974F92D4(v83, v74, v76, v78);
          swift_unknownObjectRelease();
          sub_19742A2C8(v82);
          swift_unknownObjectRelease();
          v84 = v104;

          v85 = v99;
          *(v99 + 40) = v84;
          *(v85 + 48) = v43;
          goto LABEL_67;
        }

        goto LABEL_79;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_76:
    MEMORY[0x19A8E0960](0, v44);
    goto LABEL_63;
  }

  (*(v70 + 8))(v69, v70);
  sub_19752202C();
  result = sub_1975224AC();
  if (result)
  {

    goto LABEL_60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974E1F70(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_19752112C();
  v4 = sub_197521F5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v27 - v9;
  v11 = *(v3 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v8, v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v27 - v18;
  (*(v5 + 16))(v10, a1, v4);
  if ((*(v11 + 48))(v10, 1, v3) == 1)
  {
    (*(v5 + 8))(v10, v4);
    return 0;
  }

  (*(v11 + 32))(v19, v10, v3);
  (*(v11 + 16))(v16, v19, v3);
  v21 = (*(v11 + 88))(v16, v3);
  if (v21 == *MEMORY[0x1E6968D30] || v21 == *MEMORY[0x1E6968D40])
  {
    (*(v11 + 8))(v19, v3);

    return v28;
  }

  else
  {
    v22 = 0xD000000000000045;
    if (v21 == *MEMORY[0x1E6968D38])
    {
      v23 = " is not supported";
    }

    else
    {
      if (v21 != *MEMORY[0x1E6968D48])
      {
        v26 = *(v11 + 8);
        v26(v19, v3);
        v26(v16, v3);
        return 0;
      }

      v23 = "transactionNumber";
      v22 = 0xD000000000000051;
    }

    v24 = v23 | 0x8000000000000000;
    sub_19744BE3C();
    swift_allocError();
    *v25 = 2;
    *(v25 + 8) = v22;
    *(v25 + 16) = v24;
    swift_willThrow();
    return (*(v11 + 8))(v19, v3);
  }
}

void sub_1974E2304(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X5>, _BYTE *a4@<X8>)
{
  v6 = v4;
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = sub_19752115C();

  sub_197407E40(v11, v10, v12, v13, &v82);
  if (!v6)
  {
    v76 = a4;

    if (!*(&v83 + 1))
    {
      __break(1u);
      objc_autoreleasePoolPop(a1);
      __break(1u);
      objc_autoreleasePoolPop(a4);
      __break(1u);
      objc_autoreleasePoolPop(a3);
      __break(1u);
      return;
    }

    v86[1] = v83;
    v87 = v84;
    v86[0] = v82;
    v88 = v85;
    v14 = *(&v83 + 1);
    v15 = v84;
    __swift_project_boxed_opaque_existential_0Tm(v86, *(&v83 + 1));
    sub_197407EE0(a2, v14, v15);
    v17 = *(&v87 + 1);
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    if (*(&v87 + 1) >> 62)
    {
      goto LABEL_72;
    }

    v18 = *((*(&v87 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v72 = a3;
    v77 = v16;
    if (v18)
    {
      v19 = 0;
      a3 = (v17 & 0xC000000000000001);
      while (1)
      {
        if (a3)
        {
          v16 = MEMORY[0x19A8E0960](v19, v17);
          v20 = v16;
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v71 = v16;
            v18 = sub_1975220EC();
            v16 = v71;
            goto LABEL_6;
          }

          v20 = *(v17 + 8 * v19 + 32);

          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_15;
          }
        }

        v89 = v20;
        sub_1974E30B0(&v82, &v89, &v81);

        v22 = *(&v81 + 1);
        v23 = v81;
        v82 = v81;
        ++v19;
        if (v21 == v18)
        {
          v16 = v77;
          goto LABEL_17;
        }
      }
    }

    v23 = 0;
    v22 = 0xE000000000000000;
LABEL_17:
    v24 = v88;
    v25 = HIBYTE(v22) & 0xF;
    v79 = *(v88 + 16);
    if (!v79)
    {
      v49 = v16;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v25 = v23 & 0xFFFFFFFFFFFFLL;
      }

      v48 = v76;
      if (v25)
      {
        v50 = MEMORY[0x19A8E1370]();
        sub_1974E2EC4(v49, v23, v22, &v82);

        objc_autoreleasePoolPop(v50);

        a3 = v82;
      }

      else
      {

        a3 = [objc_opt_self() expressionForEvaluatedObject];
      }

      sub_197407F34(v86);
      v80 = 0;
LABEL_57:
      *v48 = a3;
      v48[8] = v80;
      return;
    }

    a3 = 0;
    v26 = 0;
    v73 = v23;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    v75 = v25;
    v27 = (v88 + 48);
    v80 = -1;
    v78 = v88;
    v74 = v22;
    while (1)
    {
      if (v26 >= *(v24 + 16))
      {
        goto LABEL_71;
      }

      v32 = *(v27 - 2);
      v31 = *(v27 - 1);
      if (*v27)
      {
        if (*v27 != 1)
        {
          if (v32 | v31)
          {
            if (v80 != -1)
            {
              if (v80)
              {
                goto LABEL_61;
              }

              v28 = a3;
              goto LABEL_22;
            }
          }

          else if (v80 != -1)
          {
            if (v80)
            {
LABEL_61:
              v60 = a3;

              if (qword_1EAF2AD28 != -1)
              {
                swift_once();
              }

              v61 = byte_1EAF2B6F8;
              v63 = qword_1EAF2B700;
              v62 = unk_1EAF2B708;
              sub_19744BE3C();
              v6 = swift_allocError();
              *v64 = v61;
              *(v64 + 8) = v63;
              *(v64 + 16) = v62;
              swift_willThrow();

              sub_1974EDCBC(v60, v80);

              goto LABEL_68;
            }

            v28 = a3;
            goto LABEL_22;
          }

          v28 = v77;
LABEL_22:
          v29 = a3;
          v17 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB90, &unk_197534070);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_19752C280;
          *(v30 + 56) = v17;
          *(v30 + 64) = sub_1974EDC58(&qword_1EAF2BC08, &qword_1EAF2AA78, 0x1E696ABC8);
          *(v30 + 32) = v28;
          sub_1974EDCA8(v29, v80);
          sub_1974EDCA8(v29, v80);
          a3 = sub_197521DAC();
          sub_1974EDCBC(v29, v80);

          v80 = 0;
LABEL_23:
          v24 = v78;
          goto LABEL_24;
        }

        if (v80 == -1)
        {
          if (v75)
          {
            *&v82 = v73;
            *(&v82 + 1) = v22;
            sub_1974EDCD0(v32, v31, 1u);
            sub_1974EDCD0(v32, v31, 1u);

            MEMORY[0x19A8DFF80](46, 0xE100000000000000);
            MEMORY[0x19A8DFF80](v32, v31);
            v39 = sub_1974EDCE8(v32, v31, 1u);
            v41 = *(&v82 + 1);
            v40 = v82;
          }

          else
          {
            sub_1974EDCD0(v32, v31, 1u);

            v40 = v32;
            v41 = v31;
          }

          v44 = MEMORY[0x19A8E1370](v39);
          sub_1974E2EC4(v77, v40, v41, &v82);

          objc_autoreleasePoolPop(v44);
          v17 = v82;
          *&v82 = 0;
          v45 = sub_1975229AC();
          v46 = [objc_opt_self() expressionForConstantValue_];
          swift_unknownObjectRelease();
          a3 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v17 rightExpression:v46 modifier:0 type:4 options:0];

          v80 = 1;
          v16 = sub_1974EDCE8(v32, v31, 1u);
          goto LABEL_23;
        }

        if (v80)
        {
          v65 = *(v27 - 2);
          v66 = a3;

          if (qword_1EAF2AD28 != -1)
          {
            swift_once();
          }

          v67 = byte_1EAF2B6F8;
          v69 = qword_1EAF2B700;
          v68 = unk_1EAF2B708;
          sub_19744BE3C();
          v6 = swift_allocError();
          *v70 = v67;
          *(v70 + 8) = v69;
          *(v70 + 16) = v68;
          swift_willThrow();

          sub_1974EDCBC(v66, v80);

          v57 = v65;
          v58 = v31;
          v59 = 1;
LABEL_67:
          sub_1974EDCE8(v57, v58, v59);
LABEL_68:
          sub_197407F34(v86);
          a3 = v72;
          goto LABEL_69;
        }

        sub_1974EDCD0(*(v27 - 2), *(v27 - 1), 1u);

        v34 = MEMORY[0x19A8E1370](v33);
        sub_1974E2EC4(a3, v32, v31, &v82);
        v35 = a3;
        sub_1974EDCE8(v32, v31, 1u);
        objc_autoreleasePoolPop(v34);
        v17 = v82;
        *&v82 = 0;
        v36 = sub_1975229AC();
        v37 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        a3 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v17 rightExpression:v37 modifier:0 type:4 options:0];

        sub_1974EDCBC(v35, v80);
        v16 = sub_1974EDCE8(v32, v31, 1u);
        v80 = 1;
        v24 = v78;
        v22 = v74;
      }

      else
      {
        if (v80 == -1)
        {
          if (v75)
          {
            *&v82 = v73;
            *(&v82 + 1) = v22;
            sub_1974EDCD0(v32, v31, 0);
            sub_1974EDCD0(v32, v31, 0);

            MEMORY[0x19A8DFF80](46, 0xE100000000000000);
            MEMORY[0x19A8DFF80](v32, v31);
            v42 = sub_1974EDCE8(v32, v31, 0);
            v17 = *(&v82 + 1);
            v43 = v82;
          }

          else
          {
            sub_1974EDCD0(v32, v31, 0);

            v43 = v32;
            v17 = v31;
          }

          v47 = MEMORY[0x19A8E1370](v42);
          sub_1974E2EC4(v77, v43, v17, &v82);

          objc_autoreleasePoolPop(v47);
          v16 = sub_1974EDCE8(v32, v31, 0);
          v80 = 0;
          a3 = v82;
          goto LABEL_23;
        }

        if (v80)
        {
          v51 = *(v27 - 2);
          v52 = a3;

          if (qword_1EAF2AD28 != -1)
          {
            swift_once();
          }

          v53 = byte_1EAF2B6F8;
          v55 = qword_1EAF2B700;
          v54 = unk_1EAF2B708;
          sub_19744BE3C();
          v6 = swift_allocError();
          *v56 = v53;
          *(v56 + 8) = v55;
          *(v56 + 16) = v54;
          swift_willThrow();

          sub_1974EDCBC(v52, v80);

          v57 = v51;
          v58 = v31;
          v59 = 0;
          goto LABEL_67;
        }

        sub_1974EDCD0(*(v27 - 2), *(v27 - 1), 0);

        v17 = MEMORY[0x19A8E1370](v38);
        sub_1974E2EC4(a3, v32, v31, &v82);
        sub_1974EDCE8(v32, v31, 0);
        objc_autoreleasePoolPop(v17);
        sub_1974EDCBC(a3, v80);
        v16 = sub_1974EDCE8(v32, v31, 0);
        v80 = 0;
        a3 = v82;
      }

LABEL_24:
      ++v26;
      v27 += 24;
      if (v79 == v26)
      {

        sub_197407F34(v86);
        v48 = v76;
        goto LABEL_57;
      }
    }
  }

LABEL_69:
  *a3 = v6;
}

void sub_1974E2EC4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 expressionType] == 1)
  {
    v8 = sub_19752178C();
    v9 = [objc_opt_self() expressionForKeyPath_];
LABEL_5:
    v14 = v9;

LABEL_10:
    *a4 = v14;
    return;
  }

  if ([a1 expressionType] == 3)
  {
    v10 = [a1 keyPath];
    v11 = sub_1975217BC();
    v13 = v12;

    v23[0] = v11;
    v23[1] = v13;
    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](a2, a3);
    v8 = sub_19752178C();

    v9 = [objc_opt_self() expressionForKeyPath_];
    goto LABEL_5;
  }

  v15 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
  v23[3] = v15;
  v23[0] = a1;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = sub_19752178C();
  v19 = [v16 _newKeyPathExpressionForString_];

  if (!v19)
  {
    v15 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v19;
  v22[3] = v15;
  v20 = objc_allocWithZone(MEMORY[0x1E696ACB8]);
  v21 = sub_1974ECFA8(v23, v22);
  if (v21)
  {
    v14 = v21;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1974E30B0(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v8 = **a2;
  v9 = sub_197521FFC();
  if (v9 == type metadata accessor for DefaultHistoryTransaction())
  {
    sub_19752202C();
    KeyPath = swift_getKeyPath();
    v17 = MEMORY[0x19A8E0730](v7, KeyPath);

    if (v17)
    {
      v18 = 0x6E656B6F74;
      v19 = 0xE500000000000000;
LABEL_37:
      *a3 = v18;
      a3[1] = v19;
      return;
    }

    v28 = swift_getKeyPath();
    v29 = MEMORY[0x19A8E0730](v7, v28);

    if (v29)
    {
      *a3 = 0xD000000000000011;
      a3[1] = 0x8000000197529300;
      return;
    }

    v30 = swift_getKeyPath();
    v31 = MEMORY[0x19A8E0730](v7, v30);

    if (v31)
    {
      v18 = 0x6D617473656D6974;
      v19 = 0xE900000000000070;
      goto LABEL_37;
    }

    v32 = swift_getKeyPath();
    v33 = MEMORY[0x19A8E0730](v7, v32);

    if (v33)
    {
      v18 = 0x726F68747561;
      v19 = 0xE600000000000000;
      goto LABEL_37;
    }

    v34 = swift_getKeyPath();
    v35 = MEMORY[0x19A8E0730](v7, v34);

    if (v35)
    {
      v18 = 0x4449656C646E7562;
      v19 = 0xE800000000000000;
      goto LABEL_37;
    }

    v36 = swift_getKeyPath();
    v37 = MEMORY[0x19A8E0730](v7, v36);

    if (v37)
    {
      v18 = 0x49737365636F7270;
      v19 = 0xE900000000000044;
      goto LABEL_37;
    }

    v38 = swift_getKeyPath();
    v39 = MEMORY[0x19A8E0730](v7, v38);

    if (v39)
    {
      if (qword_1EAF2ADA8 != -1)
      {
        swift_once();
      }

      if (dyld_program_sdk_at_least())
      {
        v18 = 0x7365676E616863;
        v19 = 0xE700000000000000;
        goto LABEL_37;
      }
    }

LABEL_43:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528F20);
    v40 = sub_197521FEC();
    MEMORY[0x19A8DFF80](v40);

    v14 = " root is not a PersistentModel)";
    v15 = 0xD00000000000001BLL;
    goto LABEL_44;
  }

  if (sub_197521FFC() == &type metadata for HistoryChange)
  {
    sub_19752202C();
    v20 = swift_getKeyPath();
    v21 = MEMORY[0x19A8E0730](v7, v20);

    if (v21)
    {
      if (qword_1EAF2ADA8 != -1)
      {
        swift_once();
      }

      if (dyld_program_sdk_at_least())
      {
        v18 = 0x456465676E616863;
        v19 = 0xED0000797469746ELL;
        goto LABEL_37;
      }
    }

    goto LABEL_43;
  }

  v10 = sub_197521FFC();
  v11 = swift_conformsToProtocol2();
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528F20);
    v13 = sub_197521FEC();
    MEMORY[0x19A8DFF80](v13);

    v14 = "ed Predicate values)";
    v15 = 0xD00000000000003FLL;
LABEL_44:
    MEMORY[0x19A8DFF80](v15, v14 | 0x8000000000000000);
    sub_19744BE3C();
    swift_allocError();
    *v41 = 2;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  sub_1974084E0(v7, v10, v11);
  if (!v3)
  {
    v24 = v6 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v5) & 0xF;
    }

    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      if (v25)
      {
        v42 = v5;
        v26 = v22;
        v27 = v23;

        MEMORY[0x19A8DFF80](46, 0xE100000000000000);

        MEMORY[0x19A8DFF80](v26, v27);

        v18 = v6;
        v19 = v42;
        goto LABEL_37;
      }
    }

    else if (v25)
    {
      *a3 = v22;
      a3[1] = v23;
      return;
    }

    *a3 = v6;
    a3[1] = v5;
  }
}

void sub_1974E3650(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v5 = v4[9];
      v6 = v4[10];
    }

    else
    {
      v5 = sub_19750A588();
      v6 = v9;
    }
  }

  else
  {
    v7 = [v4 entityName];
    v5 = sub_1975217BC();
    v6 = v8;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1974E36E0@<X0>(void (**a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>)
{
  v183 = a9;
  v216 = sub_197520DAC();
  v204 = *(v216 - 8);
  v17 = *(v204 + 64);
  v19 = MEMORY[0x1EEE9AC00](v216, v18);
  v217 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v203 = &v182 - v24;
  v25 = 8 * a3;
  v189 = a8;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22, v23);
    v27 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v28 = 0;
      v29 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v27[-v29] < 0x20)
      {
        goto LABEL_9;
      }

      v28 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = (v29 + 16);
      v31 = v27 + 16;
      v32 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v33 = *v30;
        *(v31 - 1) = *(v30 - 1);
        *v31 = v33;
        v30 += 2;
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      if (v28 != a3)
      {
LABEL_9:
        v34 = a3 - v28;
        v35 = 8 * v28;
        v36 = &v27[8 * v28];
        v37 = (v29 + v35);
        do
        {
          v38 = *v37++;
          *v36 = v38;
          v36 += 8;
          --v34;
        }

        while (v34);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v208 = a2;
  v195 = &v182;
  v205 = TupleTypeMetadata;
  v185 = *(TupleTypeMetadata - 8);
  v39 = *(v185 + 64);
  v40 = MEMORY[0x1EEE9AC00](TupleTypeMetadata, v23);
  v210 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = a3;
  v212 = (8 * a3);
  v211 = a1;
  v213 = a7;
  *(&v214 + 1) = a5;
  v215 = a6;
  if (a3 == 1)
  {
    v43 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    v44 = *(a7 & 0xFFFFFFFFFFFFFFFELL);
    swift_getAssociatedTypeWitness();
    v45 = sub_19752119C();
  }

  else
  {
    v47 = a4;
    MEMORY[0x1EEE9AC00](v40, v41);
    if (a3)
    {
      v48 = (*(&v214 + 1) & 0xFFFFFFFFFFFFFFFELL);
      v49 = (v213 & 0xFFFFFFFFFFFFFFFELL);
      v50 = (&v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      v51 = v218;
      do
      {
        v52 = *v48++;
        v53 = *v49++;
        swift_getAssociatedTypeWitness();
        *v50++ = sub_19752119C();
        --v51;
      }

      while (v51);
    }

    a3 = v218;
    v45 = swift_getTupleTypeMetadata();
    v25 = v212;
    a4 = v47;
  }

  v194 = &v182;
  v206 = v45;
  v184 = *(v45 - 8);
  v54 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v45, v46);
  v209 = &v182 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_197520C7C();
  v193 = &v182;
  v200 = v56;
  v199 = *(v56 - 8);
  v57 = *(v199 + 64);
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v197 = &v182 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = &v182;
  *&v214 = a4;
  v198 = *(a4 - 8);
  v61 = *(v198 + 64);
  v63 = MEMORY[0x1EEE9AC00](v59, v62);
  v65 = &v182 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = &v182;
  MEMORY[0x1EEE9AC00](v63, v66);
  v67 = (&v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v68 = (*(&v214 + 1) & 0xFFFFFFFFFFFFFFFELL);
    v69 = (v213 & 0xFFFFFFFFFFFFFFFELL);
    v70 = v67;
    v71 = v218;
    do
    {
      v72 = *v68++;
      v73 = *v69++;
      *v70++ = swift_getAssociatedTypeWitness();
      --v71;
    }

    while (v71);
  }

  v74 = v218;
  v75 = sub_19752139C();
  v187 = sub_197521F5C();
  v186 = *(v187 - 8);
  v76 = *(v186 + 64);
  v78 = MEMORY[0x1EEE9AC00](v187, v77);
  v80 = &v182 - v79;
  v190 = &v182;
  v202 = v75;
  v201 = *(v75 - 8);
  v81 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v78, v82);
  v188 = &v182 - v83;
  v221 = v74;
  v222 = v214;
  *&v223 = v215;
  v84 = v213;
  *(&v223 + 1) = v213;
  v85 = sub_197520CFC();
  sub_197520CEC();
  v86 = v197;
  sub_197520C8C();
  v196 = v80;
  v87 = v214;
  v88 = v207;
  sub_197520C9C();
  if (v88)
  {

    (*(v199 + 8))(v86, v200);
    (*(v198 + 8))(v65, v87);
    v89 = v196;
    (*(v201 + 56))(v196, 1, 1, v202);
    (*(v186 + 8))(v89, v187);
    sub_19744BE3C();
    v90 = swift_allocError();
    *v91 = 1;
    *(v91 + 8) = 0xD0000000000000A4;
    *(v91 + 16) = 0x80000001975291F0;
    result = swift_willThrow();
    *v189 = v90;
    return result;
  }

  v207 = v85;
  v215 = 0;
  v93 = v87;
  v94 = v84;
  (*(v199 + 8))(v86, v200);
  (*(v198 + 8))(v65, v93);
  v95 = v201;
  v96 = v196;
  v97 = v202;
  (*(v201 + 56))(v196, 0, 1, v202);
  v98 = (*(v95 + 32))(v188, v96, v97);
  v200 = &v182;
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = &v182 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v74)
  {
    sub_19752138C();
    sub_197520CDC();
    v143 = v208;
    v105 = v205;
LABEL_54:
    v173 = v202;
    v174 = v188;
    sub_19752136C();
    v175 = v223;
    __swift_project_boxed_opaque_existential_0Tm(&v221, v223);
    v176 = v215;
    sub_197407AB0(v143, v175, *(*(&v175 + 1) + 8));
    if (v176)
    {
      (*(v201 + 8))(v174, v173);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v221);
      (*(v185 + 8))(v210, v105);
      result = (*(v184 + 8))(v209, v206);
      *v189 = v176;
    }

    else
    {
      v179 = v177;
      v180 = v178;
      (*(v201 + 8))(v174, v173);
      v181 = v183;
      *v183 = v179;
      *(v181 + 8) = v180 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v221);
      (*(v185 + 8))(v210, v105);
      return (*(v184 + 8))(v209, v206);
    }

    return result;
  }

  v102 = 0;
  v103 = 32;
  v104 = v203;
  v105 = v205;
  v106 = v206;
  v107 = v209;
  do
  {
    if (v74 == 1)
    {
      v108 = 0;
    }

    else
    {
      v108 = *(v106 + v103);
    }

    *&v101[8 * v102++] = &v107[v108];
    v103 += 16;
  }

  while (v74 != v102);
  v109 = sub_19752138C();
  MEMORY[0x1EEE9AC00](v109, v110);
  v112 = &v182 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = 0;
  v114 = 32;
  v115 = v210;
  v116 = *(&v214 + 1);
  do
  {
    if (v74 == 1)
    {
      v117 = 0;
    }

    else
    {
      v117 = *(v105 + v114);
    }

    *&v112[8 * v113++] = &v115[v117];
    v114 += 16;
  }

  while (v74 != v113);
  sub_197520CDC();
  v118 = (v116 & 0xFFFFFFFFFFFFFFFELL);
  v119 = (v94 & 0xFFFFFFFFFFFFFFFELL);
  v211 = (v204 + 16);
  v207 = (v204 + 8);
  v120 = 32;
  v121 = v74;
  while (1)
  {
    v213 = v121;
    if (v74 == 1)
    {
      v126 = 0;
    }

    else
    {
      v126 = *(v206 + v120);
    }

    *(&v214 + 1) = v118;
    v127 = *v118;
    *&v214 = v119;
    v128 = *v119;
    swift_getAssociatedTypeWitness();
    v129 = sub_19752119C();
    v212 = &v182;
    v130 = *(v129 - 8);
    v131 = *(v130 + 64);
    MEMORY[0x1EEE9AC00](v129, v132);
    v134 = &v182 - v133;
    (*(v130 + 16))(&v182 - v133, &v209[v126], v129);
    sub_19752118C();
    v135 = (*(v130 + 8))(v134, v129);
    if (v218 != 1)
    {
      v137 = *(v105 + v120);
    }

    v138 = *(v127 - 8);
    v139 = *(v138 + 64);
    MEMORY[0x1EEE9AC00](v135, v136);
    v141 = &v182 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v138 + 16))(v141, &v210[v142], v127);
    v143 = v208;
    v144 = v215;
    sub_197407EE0(v208, v127, v128);
    v215 = v144;
    if (v144)
    {
      (*(v138 + 8))(v141, v127);
      (*v207)(v104, v216);
      (*(v201 + 8))(v188, v202);
      (*(v185 + 8))(v210, v105);
      result = (*(v184 + 8))(v209, v206);
      *v189 = v215;
      return result;
    }

    v146 = v145;
    (*(v138 + 8))(v141, v127);
    v225 = 0;
    v224 = 0u;
    v223 = 0u;
    v222 = 0u;
    v221 = v146;
    v147 = *v211;
    v148 = v217;
    (*v211)(v217, v104, v216);
    sub_197408378(&v221, v220);
    v149 = v143[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v219 = v143[1];
    v151 = v219;
    v143[1] = 0x8000000000000000;
    v152 = sub_1974079DC(v148);
    v154 = v151[2];
    v155 = (v153 & 1) == 0;
    v156 = __OFADD__(v154, v155);
    v157 = v154 + v155;
    if (v156)
    {
      break;
    }

    v158 = v153;
    if (v151[3] < v157)
    {
      sub_197448648(v157, isUniquelyReferenced_nonNull_native);
      v152 = sub_1974079DC(v217);
      v74 = v218;
      if ((v158 & 1) != (v159 & 1))
      {
        goto LABEL_60;
      }

LABEL_48:
      v160 = v219;
      if (v158)
      {
        goto LABEL_35;
      }

      goto LABEL_49;
    }

    v74 = v218;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_48;
    }

    v172 = v152;
    sub_19747C0E8();
    v152 = v172;
    v160 = v219;
    if (v158)
    {
LABEL_35:
      sub_19744BDE0(v220, v160[7] + (v152 << 6));
      v122 = *v207;
      v123 = v216;
      (*v207)(v217, v216);
      sub_197407F9C(&v221);
      v122(v104, v123);
      goto LABEL_36;
    }

LABEL_49:
    v160[(v152 >> 6) + 8] |= 1 << v152;
    v161 = v204;
    v162 = v152;
    v163 = v216;
    v164 = v217;
    v147(v160[6] + *(v204 + 72) * v152, v217, v216);
    v165 = (v160[7] + (v162 << 6));
    v166 = v220[3];
    v167 = v220[2];
    v168 = v220[1];
    *v165 = v220[0];
    v165[1] = v168;
    v165[2] = v167;
    v165[3] = v166;
    v169 = *(v161 + 8);
    v104 = v203;
    v169(v164, v163);
    sub_197407F9C(&v221);
    v169(v104, v163);
    v170 = v160[2];
    v156 = __OFADD__(v170, 1);
    v171 = v170 + 1;
    if (v156)
    {
      goto LABEL_59;
    }

    v160[2] = v171;
    v105 = v205;
LABEL_36:
    v124 = v213;
    v125 = v143[1];
    v143[1] = v160;

    v120 += 16;
    v119 = (v214 + 8);
    v118 = (*(&v214 + 1) + 8);
    v121 = v124 - 1;
    if (!v121)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

void sub_1974E4924(uint64_t *a1, uint64_t a2)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974E49C0(v2, a1, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), &v6, &v7);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1974E49C0@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t *a10)
{
  v214 = a7;
  v199 = a6;
  *&v213 = a4;
  v215 = sub_197520DAC();
  v202 = *(v215 - 8);
  v17 = *(v202 + 64);
  v19 = MEMORY[0x1EEE9AC00](v215, v18);
  v216 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v25 = &v181 - v24;
  v26 = 8 * a3;
  v181 = a9;
  v207 = v10;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22, v23);
    v28 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v29 = 0;
      v30 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v28[-v30] < 0x20)
      {
        goto LABEL_9;
      }

      v29 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = (v30 + 16);
      v32 = v28 + 16;
      v33 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v34 = *v31;
        *(v32 - 1) = *(v31 - 1);
        *v32 = v34;
        v31 += 2;
        v32 += 2;
        v33 -= 4;
      }

      while (v33);
      if (v29 != a3)
      {
LABEL_9:
        v35 = a3 - v29;
        v36 = 8 * v29;
        v37 = &v28[8 * v29];
        v38 = (v30 + v36);
        do
        {
          v39 = *v38++;
          *v37 = v39;
          v37 += 8;
          --v35;
        }

        while (v35);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v203 = v25;
  v208 = a2;
  v206 = TupleTypeMetadata;
  v183 = *(TupleTypeMetadata - 8);
  v40 = *(v183 + 64);
  v41 = MEMORY[0x1EEE9AC00](TupleTypeMetadata, v23);
  v204 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = a3;
  v210 = (8 * a3);
  v189 = &v181;
  v212 = a8;
  v211 = a1;
  *(&v213 + 1) = a5;
  if (a3 == 1)
  {
    v44 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    v45 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    swift_getAssociatedTypeWitness();
    v46 = sub_19752119C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v41, v42);
    if (a3)
    {
      v48 = (*(&v213 + 1) & 0xFFFFFFFFFFFFFFFELL);
      v49 = (v212 & 0xFFFFFFFFFFFFFFFELL);
      v50 = (&v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      v51 = v217;
      do
      {
        v52 = *v48++;
        v53 = *v49++;
        swift_getAssociatedTypeWitness();
        *v50++ = sub_19752119C();
        --v51;
      }

      while (v51);
    }

    a3 = v217;
    v46 = swift_getTupleTypeMetadata();
    v26 = v210;
  }

  v54 = v213;
  v193 = &v181;
  v186 = a10;
  v205 = v46;
  v182 = *(v46 - 8);
  v55 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v46, v47);
  v209 = &v181 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_197520C7C();
  v192 = &v181;
  v198 = v57;
  v197 = *(v57 - 8);
  v58 = *(v197 + 64);
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v195 = &v181 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = &v181;
  v196 = *(v54 - 8);
  v62 = *(v196 + 64);
  v64 = MEMORY[0x1EEE9AC00](v60, v63);
  v194 = &v181 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = &v181;
  MEMORY[0x1EEE9AC00](v64, v66);
  v67 = (&v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v68 = (*(&v213 + 1) & 0xFFFFFFFFFFFFFFFELL);
    v69 = (v212 & 0xFFFFFFFFFFFFFFFELL);
    v70 = v67;
    v71 = v217;
    do
    {
      v72 = *v68++;
      v73 = *v69++;
      *v70++ = swift_getAssociatedTypeWitness();
      --v71;
    }

    while (v71);
  }

  v74 = v217;
  v75 = v199;
  v76 = sub_197520B3C();
  v185 = sub_197521F5C();
  v184 = *(v185 - 8);
  v77 = *(v184 + 64);
  v79 = MEMORY[0x1EEE9AC00](v185, v78);
  v81 = &v181 - v80;
  v188 = &v181;
  v201 = v76;
  v200 = *(v76 - 8);
  v82 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v79, v83);
  v187 = &v181 - v84;
  v85 = v213;
  v220 = v74;
  v221 = v213;
  *&v222 = v75;
  v86 = v212;
  *(&v222 + 1) = v214;
  *&v223 = v212;
  sub_197520F7C();
  v87 = v194;
  sub_197520F5C();
  v88 = v195;
  sub_197520C8C();
  v199 = v81;
  v89 = v207;
  sub_197520C9C();
  if (v89)
  {

    (*(v197 + 8))(v88, v198);
    (*(v196 + 8))(v87, v85);
    v90 = v199;
    (*(v200 + 56))(v199, 1, 1, v201);
    (*(v184 + 8))(v90, v185);
    sub_19744BE3C();
    v91 = swift_allocError();
    *v92 = 1;
    *(v92 + 8) = 0xD0000000000000A6;
    *(v92 + 16) = 0x8000000197529140;
    result = swift_willThrow();
    *v186 = v91;
    return result;
  }

  v214 = 0;
  v94 = *(&v213 + 1);
  (*(v197 + 8))(v88, v198);
  (*(v196 + 8))(v87, v85);
  v95 = v200;
  v96 = v199;
  v97 = v201;
  (*(v200 + 56))(v199, 0, 1, v201);
  v98 = (*(v95 + 32))(v187, v96, v97);
  v199 = &v181;
  MEMORY[0x1EEE9AC00](v98, v99);
  v101 = &v181 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v203;
  if (!v74)
  {
    sub_197520B2C();
    sub_197520F6C();
    v142 = v208;
LABEL_54:
    v172 = v201;
    v173 = v187;
    sub_197520B1C();
    v174 = v222;
    __swift_project_boxed_opaque_existential_0Tm(&v220, v222);
    v175 = v214;
    sub_197407AB0(v142, v174, *(*(&v174 + 1) + 8));
    if (v175)
    {
      (*(v200 + 8))(v173, v172);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v220);
      (*(v183 + 8))(v204, v206);
      result = (*(v182 + 8))(v209, v205);
      *v186 = v175;
    }

    else
    {
      v178 = v176;
      v179 = v177;
      (*(v200 + 8))(v173, v172);
      v180 = v181;
      *v181 = v178;
      *(v180 + 8) = v179 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v220);
      (*(v183 + 8))(v204, v206);
      return (*(v182 + 8))(v209, v205);
    }

    return result;
  }

  v103 = 0;
  v104 = 32;
  v105 = v204;
  v106 = v205;
  v107 = v209;
  do
  {
    if (v74 == 1)
    {
      v108 = 0;
    }

    else
    {
      v108 = *(v106 + v104);
    }

    *&v101[8 * v103++] = &v107[v108];
    v104 += 16;
  }

  while (v74 != v103);
  v109 = sub_197520B2C();
  MEMORY[0x1EEE9AC00](v109, v110);
  v112 = &v181 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = 0;
  v114 = 32;
  v115 = v206;
  do
  {
    if (v74 == 1)
    {
      v116 = 0;
    }

    else
    {
      v116 = *(v115 + v114);
    }

    *&v112[8 * v113++] = &v105[v116];
    v114 += 16;
  }

  while (v74 != v113);
  sub_197520F6C();
  v117 = (v94 & 0xFFFFFFFFFFFFFFFELL);
  v118 = (v86 & 0xFFFFFFFFFFFFFFFELL);
  v210 = (v202 + 16);
  v207 = (v202 + 8);
  v119 = 32;
  v120 = v74;
  while (1)
  {
    v212 = v120;
    if (v74 == 1)
    {
      v125 = 0;
    }

    else
    {
      v125 = *(v205 + v119);
    }

    *(&v213 + 1) = v117;
    v126 = *v117;
    *&v213 = v118;
    v127 = *v118;
    swift_getAssociatedTypeWitness();
    v128 = sub_19752119C();
    v211 = &v181;
    v129 = *(v128 - 8);
    v130 = *(v129 + 64);
    MEMORY[0x1EEE9AC00](v128, v131);
    v133 = &v181 - v132;
    (*(v129 + 16))(&v181 - v132, &v209[v125], v128);
    sub_19752118C();
    v134 = (*(v129 + 8))(v133, v128);
    if (v217 != 1)
    {
      v136 = *(v206 + v119);
    }

    v137 = *(v126 - 8);
    v138 = *(v137 + 64);
    MEMORY[0x1EEE9AC00](v134, v135);
    v140 = &v181 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v137 + 16))(v140, &v105[v141], v126);
    v142 = v208;
    v143 = v214;
    sub_197407EE0(v208, v126, v127);
    v214 = v143;
    if (v143)
    {
      (*(v137 + 8))(v140, v126);
      (*v207)(v102, v215);
      (*(v200 + 8))(v187, v201);
      (*(v183 + 8))(v105, v206);
      result = (*(v182 + 8))(v209, v205);
      *v186 = v214;
      return result;
    }

    v145 = v144;
    (*(v137 + 8))(v140, v126);
    v224 = 0;
    v223 = 0u;
    v222 = 0u;
    v221 = 0u;
    v220 = v145;
    v146 = *v210;
    v147 = v216;
    (*v210)(v216, v102, v215);
    sub_197408378(&v220, v219);
    v148 = v142[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v218 = v142[1];
    v150 = v218;
    v142[1] = 0x8000000000000000;
    v151 = sub_1974079DC(v147);
    v153 = v150[2];
    v154 = (v152 & 1) == 0;
    v155 = __OFADD__(v153, v154);
    v156 = v153 + v154;
    if (v155)
    {
      break;
    }

    v157 = v152;
    if (v150[3] < v156)
    {
      sub_197448648(v156, isUniquelyReferenced_nonNull_native);
      v151 = sub_1974079DC(v216);
      v74 = v217;
      if ((v157 & 1) != (v158 & 1))
      {
        goto LABEL_60;
      }

LABEL_48:
      v159 = v218;
      if (v157)
      {
        goto LABEL_35;
      }

      goto LABEL_49;
    }

    v74 = v217;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_48;
    }

    v171 = v151;
    sub_19747C0E8();
    v151 = v171;
    v159 = v218;
    if (v157)
    {
LABEL_35:
      sub_19744BDE0(v219, v159[7] + (v151 << 6));
      v121 = *v207;
      v122 = v215;
      (*v207)(v216, v215);
      sub_197407F9C(&v220);
      v121(v102, v122);
      goto LABEL_36;
    }

LABEL_49:
    v159[(v151 >> 6) + 8] |= 1 << v151;
    v160 = v202;
    v161 = v151;
    v163 = v215;
    v162 = v216;
    v146(v159[6] + *(v202 + 72) * v151, v216, v215);
    v164 = (v159[7] + (v161 << 6));
    v165 = v219[3];
    v166 = v219[2];
    v167 = v219[1];
    *v164 = v219[0];
    v164[1] = v167;
    v164[2] = v166;
    v164[3] = v165;
    v168 = *(v160 + 8);
    v102 = v203;
    v168(v162, v163);
    sub_197407F9C(&v220);
    v168(v102, v163);
    v169 = v159[2];
    v155 = __OFADD__(v169, 1);
    v170 = v169 + 1;
    if (v155)
    {
      goto LABEL_59;
    }

    v159[2] = v170;
    v105 = v204;
LABEL_36:
    v123 = v212;
    v124 = v142[1];
    v142[1] = v159;

    v119 += 16;
    v118 = (v213 + 8);
    v117 = (*(&v213 + 1) + 8);
    v120 = v123 - 1;
    if (!v120)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

void sub_1974E5C40(uint64_t (*a1)(void, void *)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>, void (*a10)(void), void (*a11)(uint64_t), SEL *a12)
{
  v47 = a8;
  v45 = a7;
  v41 = a9;
  v40 = *(a4 - 8);
  v18 = *(v40 + 64);
  v46 = a10;
  v19 = MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_197530980;
  v48[0] = a3;
  v48[1] = a4;
  v42 = a4;
  v48[2] = a5;
  v48[3] = a6;
  v44 = a6;
  v28 = v47(0, v48);
  v47 = a1;
  v46();
  v29 = v48[5];
  sub_197407C0C(a2, a3, a5);
  v31 = v30;
  (*(v22 + 8))(v26, a3);
  if (v29)
  {
    *(v27 + 16) = 0;

    *v45 = v29;
  }

  else
  {
    v33 = v40;
    v32 = v41;
    *(v27 + 32) = v31;
    v34 = v43;
    a11(v28);
    v35 = v42;
    sub_197407C0C(a2, v42, v44);
    v37 = v36;
    (*(v33 + 8))(v34, v35);
    *(v27 + 40) = v37;
    sub_197408568(0, &qword_1ED7C7C90, 0x1E696AE18);
    v38 = sub_1975219BC();

    v39 = [objc_opt_self() *a12];

    *v32 = v39;
    *(v32 + 8) = 1;
  }
}

void sub_1974E5F50(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, void (*a9)(void), void (*a10)(uint64_t), uint64_t a11)
{
  v47 = a6;
  v42 = a7;
  v45 = *(a4 - 8);
  v15 = *(v45 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v16, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = v25;
  v48[1] = v26;
  v44 = v26;
  v48[2] = v27;
  v48[3] = v28;
  v46 = v28;
  v48[4] = v29;
  v31 = v30(0, v48);
  v43 = a1;
  a9();
  v32 = a2;
  v33 = v48[6];
  sub_197407EE0(a2, a3, a5);
  v35 = v34;
  (*(v20 + 8))(v24, a3);
  if (v33)
  {
    *v47 = v33;
  }

  else
  {
    v36 = v42;
    a10(v31);
    v37 = v44;
    sub_197407EE0(v32, v44, v46);
    v39 = v38;
    (*(v45 + 8))(v18, v37);
    v40 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v35 rightExpression:v39 modifier:0 type:a11 options:0];

    *v36 = v40;
    *(v36 + 8) = 1;
  }
}

void sub_1974E61C0(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, v3, a1, a2[2], a2[3], a2[4], a2[5], a2[6], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974E6260(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v56 = a8;
  v57 = a7;
  v65 = a2;
  v51 = a9;
  v54 = *(a4 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v52 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_197520F3C();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v50 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v49 - v28;
  v60 = a3;
  v61 = a4;
  v55 = a4;
  v58 = a5;
  v62 = a5;
  v63 = a6;
  v53 = a6;
  v31 = v30;
  v64 = v57;
  sub_197520D3C();
  sub_197520D0C();
  v32 = (*(v31 + 88))(v29, v22);
  if (v32 == *MEMORY[0x1E6968C10])
  {
    v57 = 0xE700000000000000;
    v33 = 0x3A6F743A646461;
LABEL_5:
    v50 = v33;
    goto LABEL_8;
  }

  if (v32 == *MEMORY[0x1E6968C20])
  {
    v57 = 0xEE003A7463617274;
    v33 = 0x6275733A6D6F7266;
    goto LABEL_5;
  }

  if (v32 != *MEMORY[0x1E6968C18])
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197529110);
    v48 = v50;
    sub_197520D0C();
    sub_19752235C();
    (*(v31 + 8))(v48, v22);
    sub_1975223EC();
    __break(1u);
    return;
  }

  v57 = 0xEC0000003A79623ALL;
  v50 = 0x796C7069746C756DLL;
LABEL_8:
  v34 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_19752F3D0;
  sub_197520D1C();
  v36 = v59;
  sub_197407EE0(v34, a3, v58);
  v38 = v37;
  (*(v17 + 8))(v21, a3);
  if (v36)
  {

    *(v35 + 16) = 0;

    *v56 = v36;
  }

  else
  {
    v39 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v35 + 56) = v39;
    *(v35 + 32) = v38;
    v40 = v52;
    sub_197520D2C();
    v41 = v55;
    sub_197407EE0(v34, v55, v53);
    v43 = v42;
    (*(v54 + 8))(v40, v41);
    *(v35 + 88) = v39;
    *(v35 + 64) = v43;
    v44 = sub_19752178C();

    v45 = sub_1975219BC();

    v46 = [objc_opt_self() expressionForFunction:v44 arguments:v45];

    v47 = v51;
    *v51 = v46;
    *(v47 + 8) = 0;
  }
}

void sub_1974E6818(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, v3, a1, a2[2], a2[3], a2[4], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974E68B4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, void *a6@<X8>)
{
  v25 = a6;
  v26 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19752F3D0;
  sub_197520D9C();
  sub_197520D8C();
  sub_197407EE0(a2, a3, a4);
  if (v6)
  {
    (*(v10 + 8))(v13, a3);
    *(v14 + 16) = 0;

    *v26 = v6;
  }

  else
  {
    v16 = v15;
    (*(v10 + 8))(v13, a3);
    v17 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v14 + 56) = v17;
    *(v14 + 32) = v16;
    v27 = -1;
    v18 = sub_1975229AC();
    v19 = objc_opt_self();
    v20 = [v19 expressionForConstantValue_];
    swift_unknownObjectRelease();
    *(v14 + 88) = v17;
    *(v14 + 64) = v20;
    v21 = sub_19752178C();
    v22 = sub_1975219BC();

    v23 = [v19 expressionForFunction:v21 arguments:v22];

    v24 = v25;
    *v25 = v23;
    *(v24 + 8) = 0;
  }
}

void sub_1974E6B74(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v55 = a8;
  v56 = a7;
  v64 = a2;
  v50 = a9;
  v54 = *(a4 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v52 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_197520F4C();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v49 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v48 - v28;
  v59 = a3;
  v60 = a4;
  v51 = a4;
  v57 = a5;
  v61 = a5;
  v62 = a6;
  v31 = v30;
  v53 = a6;
  v63 = v56;
  sub_197520D7C();
  sub_197520D4C();
  v32 = (*(v31 + 88))(v29, v22);
  v33 = 0;
  if (v32 != *MEMORY[0x1E6968C40])
  {
    if (v32 == *MEMORY[0x1E6968C30])
    {
      v33 = 1;
    }

    else if (v32 == *MEMORY[0x1E6968C28])
    {
      v33 = 2;
    }

    else
    {
      if (v32 != *MEMORY[0x1E6968C38])
      {
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197529110);
        v47 = v49;
        sub_197520D4C();
        sub_19752235C();
        (*(v31 + 8))(v47, v22);
        sub_1975223EC();
        __break(1u);
        return;
      }

      v33 = 3;
    }
  }

  v34 = v33;
  sub_197520D5C();
  v35 = v64;
  v36 = v58;
  sub_197407EE0(v64, a3, v57);
  v38 = v37;
  (*(v17 + 8))(v21, a3);
  if (v36)
  {
    *v55 = v36;
  }

  else
  {
    v39 = v38;
    v40 = v52;
    sub_197520D6C();
    v41 = v35;
    v42 = v51;
    sub_197407EE0(v41, v51, v53);
    v44 = v43;
    (*(v54 + 8))(v40, v42);
    v45 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v39 rightExpression:v44 modifier:0 type:v34 options:0];

    v46 = v50;
    *v50 = v45;
    *(v46 + 8) = 1;
  }
}

void sub_1974E6FEC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x19A8E1370]();
  sub_1974E7080(v3, a1, *(a2 + 16), *(a2 + 24), &v8, &v7);
  objc_autoreleasePoolPop(v6);
}

void sub_1974E7080(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19752117C();
  sub_19752116C();
  sub_197407C0C(a2, a3, a4);
  v17 = v16;
  (*(v12 + 8))(v15, a3);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    v18 = [objc_opt_self() notPredicateWithSubpredicate_];

    *a6 = v18;
    *(a6 + 8) = 1;
  }
}

void sub_1974E7208(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v51 = a8;
  v64 = a6;
  v55 = a2;
  v56 = a1;
  v47 = a9;
  v48 = *(a4 - 8);
  v13 = *(v48 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_197520DAC();
  v20 = *(v54 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v54, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v25 = sub_19752119C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v46 - v29;
  v59 = a3;
  v60 = a4;
  v50 = a4;
  v61 = a5;
  v62 = v64;
  v63 = a7;
  sub_19752110C();
  sub_1975210FC();
  sub_19752118C();
  (*(v26 + 8))(v30, v25);
  v31 = v56;
  v32 = sub_1974DEDF8(v24);
  (*(v20 + 8))(v24, v54);
  v33 = a3;
  v34 = v53;
  sub_1975210EC();
  v35 = v58;
  sub_197407EE0(v31, v33, v52);
  if (v35)
  {
    (*(v57 + 8))(v34, v33);

    *v51 = v35;
  }

  else
  {
    v58 = v36;
    v54 = v32;
    (*(v57 + 8))(v34, v33);
    v37 = v49;
    sub_1975210DC();
    v38 = v50;
    sub_197407C0C(v31, v50, v64);
    v40 = v39;
    (*(v48 + 8))(v37, v38);
    v41 = sub_19752178C();

    v42 = objc_opt_self();
    v43 = v58;
    v44 = [v42 expressionForSubquery:v58 usingIteratorVariable:v41 predicate:v40];

    v45 = v47;
    *v47 = v44;
    *(v45 + 8) = 0;
  }
}

void sub_1974E76CC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v44 = a7;
  v39 = a9;
  v38 = *(a4 - 8);
  v15 = *(v38 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_19752F3D0;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v42 = a6;
  v49 = v44;
  v25 = sub_197520E9C();
  v40 = a1;
  MEMORY[0x19A8DF5A0]();
  v44 = a2;
  v26 = v50;
  sub_197407EE0(a2, a3, a5);
  v28 = v27;
  (*(v19 + 8))(v23, a3);
  if (v26)
  {
    *(v24 + 16) = 0;

    *v43 = v26;
  }

  else
  {
    v30 = v38;
    v29 = v39;
    v31 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v24 + 56) = v31;
    *(v24 + 32) = v28;
    v32 = v41;
    MEMORY[0x19A8DF5B0](v25);
    sub_197407EE0(v44, a4, v42);
    v34 = v33;
    (*(v30 + 8))(v32, a4);
    *(v24 + 88) = v31;
    *(v24 + 64) = v34;
    v35 = sub_19752178C();
    v36 = sub_1975219BC();

    v37 = [objc_opt_self() expressionForFunction:v35 arguments:v36];

    *v29 = v37;
    *(v29 + 8) = 0;
  }
}

id sub_1974E7A20(uint64_t *a1, void *a2)
{
  v32 = a2[3];
  v29 = *(v32 - 8);
  v6 = *(v29 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_19752F3D0;
  v30 = v2;
  MEMORY[0x19A8DF580](a2);
  v17 = a2[4];
  v31 = a1;
  sub_197407EE0(a1, v11, v17);
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  if (v3)
  {
    *(v16 + 16) = 0;
  }

  else
  {
    v20 = v29;
    v21 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v16 + 56) = v21;
    *(v16 + 32) = v19;
    MEMORY[0x19A8DF590](a2);
    v22 = v32;
    sub_197407EE0(v31, v32, a2[5]);
    v25 = v24;
    (*(v20 + 8))(v9, v22);
    *(v16 + 88) = v21;
    *(v16 + 64) = v25;
    v26 = sub_19752178C();
    v27 = sub_1975219BC();

    v19 = [objc_opt_self() expressionForFunction:v26 arguments:v27];
  }

  return v19;
}

id sub_1974E7D04(uint64_t *a1, void *a2)
{
  result = sub_1974E7A20(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

void sub_1974E7D28(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a8;
  v43 = a7;
  v38 = a9;
  v37 = *(a4 - 8);
  v15 = *(v37 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1, a2);
  v40 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_197530980;
  v44 = a3;
  v45 = a4;
  v39 = a4;
  v46 = a5;
  v47 = a6;
  v41 = a6;
  v48 = v43;
  v25 = sub_197520DDC();
  v43 = a1;
  MEMORY[0x19A8DF4E0]();
  v26 = v49;
  sub_197407EE0(a2, a3, a5);
  v28 = v27;
  (*(v19 + 8))(v23, a3);
  if (v26)
  {
    *(v24 + 16) = 0;

    *v42 = v26;
  }

  else
  {
    v30 = v37;
    v29 = v38;
    *(v24 + 32) = v28;
    v31 = v40;
    MEMORY[0x19A8DF4F0](v25);
    v32 = v39;
    sub_197407EE0(a2, v39, v41);
    v34 = v33;
    (*(v30 + 8))(v31, v32);
    *(v24 + 40) = v34;
    sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    v35 = sub_1975219BC();

    v36 = [objc_opt_self() expressionForAggregate_];

    *v29 = v36;
    *(v29 + 8) = 0;
  }
}

void sub_1974E804C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v41 = a6;
  v44 = *(a3 - 8);
  v12 = *(v44 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v22;
  v47 = v23;
  v45 = v24;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v28 = sub_197520F2C();
  v42 = a1;
  sub_197520F0C();
  v43 = a2;
  v29 = v52;
  sub_197407EE0(a2, a4, a5);
  v31 = v30;
  (*(v17 + 8))(v21, a4);
  if (v29)
  {
    *a7 = v29;
  }

  else
  {
    v32 = v41;
    MEMORY[0x19A8DF640](v28);
    sub_197407EE0(v43, a3, v45);
    v34 = v33;
    (*(v44 + 8))(v15, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v36 = swift_conformsToProtocol2();
    if (AssociatedTypeWitness)
    {
      v37 = v36 == 0;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      v38 = 10;
    }

    else
    {
      v38 = 100;
    }

    v39 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v31 rightExpression:v34 modifier:0 type:v38 options:0];

    *v32 = v39;
    *(v32 + 8) = 1;
  }
}

uint64_t sub_1974E82F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  a2[3] = *(a1 + 16);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return MEMORY[0x19A8DF7C0](a1);
}

uint64_t sub_1974E8330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  a2[3] = *(a1 + 24);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return MEMORY[0x19A8DF7D0](a1);
}

uint64_t sub_1974E8378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = sub_19752237C();
  v74 = *(v79 - 8);
  v5 = *(v74 + 64);
  v7 = MEMORY[0x1EEE9AC00](v79, v6);
  v75 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v78 = &v73 - v10;
  v83 = sub_19752247C();
  v76 = *(v83 - 8);
  v11 = *(v76 + 64);
  v13 = MEMORY[0x1EEE9AC00](v83, v12);
  v77 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v82 = &v73 - v16;
  v87 = sub_19752236C();
  v80 = *(v87 - 8);
  v17 = *(v80 + 64);
  v19 = MEMORY[0x1EEE9AC00](v87, v18);
  v81 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v86 = &v73 - v22;
  v23 = sub_19752172C();
  v84 = *(v23 - 8);
  v24 = *(v84 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v85 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v73 - v29;
  v31 = sub_197521D4C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v73 - v40;
  v42 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39, v43);
  v45 = &v73 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v46;
  (*(v46 + 16))(v45, v88, a1);
  if (swift_dynamicCast())
  {
    (*(v32 + 32))(v37, v41, v31);
    v47 = v89;
    *(v89 + 24) = AssociatedTypeWitness;
    *(v47 + 32) = AssociatedConformanceWitness;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
    v49 = *(*(AssociatedTypeWitness - 8) + 32);
    v49(boxed_opaque_existential_0Tm, v37, AssociatedTypeWitness);
    v50 = *(v31 + 36);
    *(v47 + 64) = AssociatedTypeWitness;
    *(v47 + 72) = AssociatedConformanceWitness;
    v51 = __swift_allocate_boxed_opaque_existential_0Tm((v47 + 40));
    v49(v51, &v37[v50], AssociatedTypeWitness);
    *(v47 + 80) = 0;
  }

  else
  {
    v52 = v89;
    if (swift_dynamicCast())
    {
      v53 = v85;
      (*(v84 + 32))(v85, v30, v23);
      v54 = v52;
      *(v52 + 24) = AssociatedTypeWitness;
      *(v52 + 32) = AssociatedConformanceWitness;
      v55 = __swift_allocate_boxed_opaque_existential_0Tm(v52);
      v56 = *(*(AssociatedTypeWitness - 8) + 32);
      v56(v55, v53, AssociatedTypeWitness);
      v57 = *(v23 + 36);
      *(v54 + 64) = AssociatedTypeWitness;
      *(v54 + 72) = AssociatedConformanceWitness;
      v58 = __swift_allocate_boxed_opaque_existential_0Tm((v54 + 40));
      v56(v58, &v53[v57], AssociatedTypeWitness);
      *(v54 + 80) = 1;
    }

    else
    {
      v60 = v86;
      v59 = v87;
      if (swift_dynamicCast())
      {
        v61 = v81;
        (*(v80 + 32))(v81, v60, v59);
        *(v52 + 24) = AssociatedTypeWitness;
        *(v52 + 32) = AssociatedConformanceWitness;
        v62 = __swift_allocate_boxed_opaque_existential_0Tm(v52);
        (*(*(AssociatedTypeWitness - 8) + 32))(v62, v61, AssociatedTypeWitness);
        v63 = 2;
      }

      else
      {
        v65 = v82;
        v64 = v83;
        if (swift_dynamicCast())
        {
          v66 = v77;
          (*(v76 + 32))(v77, v65, v64);
          *(v52 + 24) = AssociatedTypeWitness;
          *(v52 + 32) = AssociatedConformanceWitness;
          v67 = __swift_allocate_boxed_opaque_existential_0Tm(v52);
          (*(*(AssociatedTypeWitness - 8) + 32))(v67, v66, AssociatedTypeWitness);
          v63 = 3;
        }

        else
        {
          v69 = v78;
          v68 = v79;
          if (swift_dynamicCast())
          {
            v70 = v75;
            (*(v74 + 32))(v75, v69, v68);
            *(v52 + 24) = AssociatedTypeWitness;
            *(v52 + 32) = AssociatedConformanceWitness;
            v71 = __swift_allocate_boxed_opaque_existential_0Tm(v52);
            (*(*(AssociatedTypeWitness - 8) + 32))(v71, v70, AssociatedTypeWitness);
            v63 = 4;
          }

          else
          {
            *(v52 + 48) = 0u;
            *(v52 + 64) = 0u;
            *(v52 + 16) = 0u;
            *(v52 + 32) = 0u;
            *v52 = 0u;
            v63 = -1;
          }
        }
      }

      *(v52 + 80) = v63;
    }
  }

  return (*(v90 + 8))(v45, a1);
}

uint64_t sub_1974E8AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x19A8DF7E0](v7);
  sub_1974E8378(v4, a3);
  return (*(v5 + 8))(v9, v4);
}

void sub_1974E8BD0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X7>, void *a7@<X8>)
{
  v50 = a6;
  v41 = a7;
  v45 = *(a3 - 8);
  v11 = *(v45 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v43 = v40 - v19;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18, v23);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v26;
  v52 = v26;
  v53 = v27;
  v46 = v28;
  v54 = v28;
  v55 = v29;
  v42 = v30;
  *&v56 = v30;
  v47 = sub_19752105C();
  v48 = a1;
  MEMORY[0x19A8DF770]();
  v44 = a2;
  v31 = v51;
  sub_197407EE0(a2, a4, a5);
  if (v31)
  {
    (*(v21 + 8))(v25, a4);
    *v50 = v31;
  }

  else
  {
    v40[0] = a5;
    v40[1] = v14;
    v51 = v32;
    (*(v21 + 8))(v25, a4);
    v33 = v43;
    MEMORY[0x19A8DF760](v47);
    sub_197407EE0(v44, v49, v46);
    v35 = v34;
    (*(v45 + 8))(v33, v49);
    v36 = objc_allocWithZone(MEMORY[0x1E696AB18]);
    v37 = v51;
    v38 = [v36 initWithLeftExpression:v51 rightExpression:v35 modifier:0 type:100 options:0];

    v39 = v41;
    *v41 = v38;
    *(v39 + 8) = 1;
  }
}

void sub_1974E9B74(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v56 = a8;
  v65 = a6;
  v60 = a2;
  v61 = a1;
  v52 = a9;
  v53 = *(a4 - 8);
  v13 = *(v53 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_197520DAC();
  v20 = *(v59 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v59, v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v25 = sub_19752119C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v51 - v29;
  v64[0] = a3;
  v64[1] = a4;
  v55 = a4;
  v64[2] = a5;
  v64[3] = v65;
  v64[4] = a7;
  v31 = sub_19752102C();
  sub_197520FAC();
  sub_19752118C();
  (*(v26 + 8))(v30, v25);
  v32 = v61;
  v33 = sub_1974DEDF8(v24);
  (*(v20 + 8))(v24, v59);
  v34 = a3;
  v35 = v58;
  MEMORY[0x19A8DF730](v31);
  v36 = v63;
  sub_197407EE0(v32, v34, v57);
  if (v36)
  {
    (*(v62 + 8))(v35, v34);

    *v56 = v36;
  }

  else
  {
    v63 = v37;
    v59 = v33;
    (*(v62 + 8))(v35, v34);
    v38 = v54;
    MEMORY[0x19A8DF720](v31);
    v39 = v55;
    sub_197407C0C(v32, v55, v65);
    v41 = v40;
    (*(v53 + 8))(v38, v39);
    v42 = sub_19752178C();

    v43 = objc_opt_self();
    v44 = v63;
    v45 = [v43 expressionForSubquery:v63 usingIteratorVariable:v42 predicate:v41];

    v46 = MEMORY[0x19A8E1370]();
    sub_1974DF08C(v45, 0x746E756F6340, 0xE600000000000000, v64);
    objc_autoreleasePoolPop(v46);
    v47 = v64[0];
    v64[0] = 0;
    v48 = [v43 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v49 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v47 rightExpression:v48 modifier:0 type:5 options:0];

    v50 = v52;
    *v52 = v49;
    *(v50 + 8) = 1;
  }
}

void sub_1974EA104(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, a1, v3, a2[2], a2[3], a2[4], a2[5], a2[6], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974EA1A4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v58 = a8;
  v61 = a6;
  v63 = a2;
  v64 = a1;
  v53 = a9;
  v54 = *(a3 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_197520DAC();
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v25 = sub_19752119C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v53 - v29;
  v57 = a3;
  v66[0] = a3;
  v66[1] = a4;
  v55 = a5;
  v31 = v61;
  v66[2] = a5;
  v66[3] = v61;
  v66[4] = a7;
  v32 = sub_197520FBC();
  sub_197520FAC();
  sub_19752118C();
  (*(v26 + 8))(v30, v25);
  v33 = v64;
  sub_1974DEDF8(v24);
  (*(v59 + 8))(v24, v60);
  v60 = v32;
  v34 = v62;
  MEMORY[0x19A8DF6B0](v32);
  v35 = v66[6];
  sub_197407C0C(v33, a4, v31);
  if (v35)
  {
    (*(v65 + 8))(v34, a4);

    *v58 = v35;
  }

  else
  {
    v37 = v36;
    (*(v65 + 8))(v34, a4);
    v38 = [objc_opt_self() notPredicateWithSubpredicate_];

    v39 = v56;
    MEMORY[0x19A8DF6C0](v60);
    v40 = v33;
    v41 = v57;
    sub_197407EE0(v40, v57, v55);
    v43 = v42;
    (*(v54 + 8))(v39, v41);
    v44 = v38;
    v45 = sub_19752178C();

    v46 = objc_opt_self();
    v47 = [v46 expressionForSubquery:v43 usingIteratorVariable:v45 predicate:v44];

    v48 = MEMORY[0x19A8E1370]();
    sub_1974DF08C(v47, 0x746E756F6340, 0xE600000000000000, v66);
    objc_autoreleasePoolPop(v48);
    v49 = v66[0];
    v66[0] = 0;
    v50 = [v46 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v51 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v49 rightExpression:v50 modifier:0 type:4 options:0];

    v52 = v53;
    *v53 = v51;
    *(v52 + 8) = 1;
  }
}

void sub_1974EA764(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = MEMORY[0x19A8E1370]();
  v11 = a2[4];
  v12 = a2[5];
  sub_1974EA870(v5, a1, a2[2], a2[3], &v13, &v14, a4, a5);
  objc_autoreleasePoolPop(v10);
}

void sub_1974EA870(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X6>, uint64_t a6@<X8>, void (*a7)(uint64_t), uint64_t a8)
{
  v29 = a6;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  v22 = v21(0, v28);
  a7(v22);
  sub_197407EE0(a2, a3, a4);
  v24 = v23;
  v25 = (*(v13 + 8))(v16, a3);
  if (v8)
  {
    *a5 = v8;
  }

  else
  {
    v26 = v29;
    v27 = MEMORY[0x19A8E1370](v25);
    sub_1974DF08C(v24, a8, 0xE900000000000066, v28);
    objc_autoreleasePoolPop(v27);

    *v26 = v28[0];
    *(v26 + 8) = 0;
  }
}

void sub_1974EAA64(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>, void *a7)
{
  v50 = a6;
  v51 = *(a4 - 8);
  v12 = *(v51 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13, v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v18, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v27;
  v60 = v28;
  v55 = v29;
  v56 = v28;
  v61 = v30;
  v62 = v31;
  v63 = v29;
  v64 = v32;
  v54 = v32;
  sub_197520E1C();
  v58 = a1;
  sub_197520E0C();
  v57 = a2;
  v33 = v65;
  sub_197407C0C(a2, a3, a5);
  v35 = v34;
  (*(v22 + 8))(v26, a3);
  if (v33)
  {
    *a7 = v33;
  }

  else
  {
    v65 = v35;
    v36 = v52;
    v37 = v54;
    sub_197520DEC();
    v39 = v56;
    v38 = v57;
    sub_197407EE0(v57, v56, v55);
    v41 = v40;
    (*(v53 + 8))(v20, v39);
    v56 = v41;
    sub_197520DFC();
    sub_197407EE0(v38, a4, v37);
    v43 = v42;
    (*(v51 + 8))(v36, a4);
    v44 = objc_opt_self();
    v45 = v65;
    v46 = v56;
    v47 = [v44 expressionForConditional:v65 trueExpression:v56 falseExpression:v43];

    v48 = v50;
    *v50 = v47;
    *(v48 + 8) = 0;
  }
}

void sub_1974EADDC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v39[0] = a7;
  v42 = *(a4 - 8);
  v43 = a6;
  v12 = *(v42 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13, v19);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v41 = v25;
  sub_197520E4C();
  v39[1] = a1;
  MEMORY[0x19A8DF550]();
  v40 = a2;
  v26 = v48;
  sub_197407EE0(a2, a3, a5);
  v28 = v27;
  (*(v17 + 8))(v21, a3);
  if (v26)
  {
    *v43 = v26;
  }

  else
  {
    v29 = v39[0];
    sub_197520E3C();
    sub_197407EE0(v40, a4, v41);
    v31 = v30;
    (*(v42 + 8))(v15, a4);
    v32 = objc_opt_self();
    v33 = [v32 expressionForConstantValue_];
    v34 = objc_allocWithZone(MEMORY[0x1E696AB18]);
    v35 = v28;
    v36 = [v34 initWithLeftExpression:v35 rightExpression:v33 modifier:0 type:5 options:0];

    v37 = v36;
    v38 = [v32 expressionForConditional:v37 trueExpression:v35 falseExpression:v31];

    *v29 = v38;
    *(v29 + 8) = 0;
  }
}

void sub_1974EB09C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v88 = a6;
  v90 = a2;
  v98 = a1;
  v78 = a9;
  v87 = *(a5 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v86 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_197520DAC();
  v83 = *(v84 - 8);
  v17 = *(v83 + 64);
  v19 = MEMORY[0x1EEE9AC00](v84, v18);
  v81 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v82 = &v75 - v22;
  v80 = sub_19752119C();
  v79 = *(v80 - 8);
  v23 = *(v79 + 64);
  v25 = MEMORY[0x1EEE9AC00](v80, v24);
  v27 = &v75 - v26;
  v28 = *(a3 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v25, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v75 - v33;
  *&v92 = a3;
  *(&v92 + 1) = a4;
  v85 = a5;
  *&v93 = a5;
  *(&v93 + 1) = v88;
  v94 = a7;
  v95 = a8;
  v88 = a8;
  v35 = sub_197520EFC();
  MEMORY[0x19A8DF5F0]();
  v36 = v89;
  sub_197407EE0(v90, a3, a7);
  v38 = v36;
  if (!v36)
  {
    v77 = v37;
    v76 = v27;
    v89 = 0;
    (*(v28 + 8))(v34, a3);
    MEMORY[0x19A8DF5F0](v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC8, &qword_1975319A0);
    if (swift_dynamicCast())
    {
      v39 = *(&v93 + 1);
      v40 = v94;
      __swift_project_boxed_opaque_existential_0Tm(&v92, *(&v93 + 1));
      v41 = v90;
      v42 = *v90;
      v43 = v90[1];
      v44 = v90[2];
      v75 = *(v40 + 8);

      v45 = v89;
      v75(v96, v42, v43, v44, v39, v40);
      v38 = v45;

      if (v45)
      {

        __swift_destroy_boxed_opaque_existential_0Tm_0(&v92);
        goto LABEL_10;
      }

      v89 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v92);
    }

    else
    {
      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      sub_19740797C(&v92, &qword_1EAF2BBD0, &qword_1975319A8);
      memset(v96, 0, sizeof(v96));
      v97 = 0;
      v41 = v90;
    }

    v46 = v76;
    sub_197520EDC();
    v47 = v82;
    v48 = v80;
    sub_19752118C();
    (*(v79 + 8))(v46, v48);
    sub_197408478(v96, &v92 + 8, &qword_1EAF2BBD8, &qword_1975319B0);
    v49 = v77;
    *&v92 = v77;
    v50 = v83;
    v51 = v81;
    v52 = v84;
    (*(v83 + 16))(v81, v47, v84);
    sub_197408378(&v92, v91);
    v53 = v49;
    sub_19742A1A4(v91, v51);
    sub_197407F9C(&v92);
    (*(v50 + 8))(v47, v52);
    v54 = v86;
    sub_197520EEC();
    v55 = v41;
    v56 = v85;
    v57 = v89;
    sub_197407EE0(v55, v85, v88);
    v59 = v87;
    if (v57)
    {

      (*(v59 + 8))(v54, v56);
      sub_19740797C(v96, &qword_1EAF2BBD8, &qword_1975319B0);
      v38 = v57;
      goto LABEL_10;
    }

    v60 = v53;
    v61 = v58;
    (*(v87 + 8))(v54, v56);
    sub_197408478(v96, &v92, &qword_1EAF2BBD8, &qword_1975319B0);
    if (!*(&v93 + 1))
    {
      sub_19740797C(&v92, &qword_1EAF2BBD8, &qword_1975319B0);
      v63 = v78;
      goto LABEL_23;
    }

    v62 = v95;

    sub_197407F34(&v92);
    v63 = v78;
    if (v62 >> 62)
    {
      if (sub_1975220EC())
      {
LABEL_15:
        if ((v62 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x19A8E0960](0, v62);
        }

        else
        {
          if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v64 = *(v62 + 32);
        }

        v65 = *v64;
        sub_197521FFC();
        v67 = sub_1974138C4(v66);

        if (v67)
        {
          sub_19740797C(v96, &qword_1EAF2BBD8, &qword_1975319B0);

          v68 = v61;
LABEL_24:
          *v63 = v68;
          *(v63 + 8) = 0;
          return;
        }

LABEL_23:
        v69 = objc_opt_self();
        v70 = [v69 expressionForConstantValue_];
        v71 = objc_allocWithZone(MEMORY[0x1E696AB18]);
        v72 = v60;
        v73 = [v71 initWithLeftExpression:v72 rightExpression:v70 modifier:0 type:5 options:0];

        v74 = [v69 expressionForConstantValue_];
        v68 = [v69 expressionForConditional:v73 trueExpression:v61 falseExpression:v74];

        sub_19740797C(v96, &qword_1EAF2BBD8, &qword_1975319B0);
        goto LABEL_24;
      }
    }

    else if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  (*(v28 + 8))(v34, a3);
LABEL_10:
  *a10 = v38;
}

void sub_1974EB924(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, void *a7)
{
  v37[0] = a6;
  v40 = *(a4 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13, v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(v22 + 8) + 8);
  v25 = *(*(v24 + 8) + 8);
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v39 = v29;
  v45 = v23;
  v46 = v25;
  v47 = MEMORY[0x1E69E5EF8];
  sub_197520CCC();
  v37[1] = a1;
  MEMORY[0x19A8DF3D0]();
  v38 = a2;
  v30 = v48;
  sub_197407EE0(a2, a3, a5);
  v32 = v31;
  (*(v17 + 8))(v21, a3);
  if (v30)
  {
    *a7 = v30;
  }

  else
  {
    v33 = v37[0];
    sub_197520CBC();
    sub_197407EE0(v38, a4, v39);
    v35 = v34;
    (*(v40 + 8))(v15, a4);
    v36 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v32 rightExpression:v35 modifier:0 type:99 options:0];

    *v33 = v36;
    *(v33 + 8) = 1;
  }
}

void sub_1974EBBB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, uint64_t, uint64_t, uint64_t *))
{
  v7 = v5;
  v12 = MEMORY[0x19A8E1370]();
  a5(&v14, v7, a1, a2[2], a2[3], a2[4], a2[5], a3, a4, &v13);
  objc_autoreleasePoolPop(v12);
}

void sub_1974EBC74(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, void *a7)
{
  v37[0] = a6;
  v40 = *(a4 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13, v19);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(*(v22 + 8) + 8) + 8);
  v25 = *(*(*(v24 + 8) + 8) + 8);
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v39 = v29;
  v45 = v23;
  v46 = v25;
  v47 = MEMORY[0x1E69E5EF8];
  sub_197520FEC();
  v37[1] = a1;
  MEMORY[0x19A8DF6F0]();
  v38 = a2;
  v30 = v48;
  sub_197407EE0(a2, a3, a5);
  v32 = v31;
  (*(v17 + 8))(v21, a3);
  if (v30)
  {
    *a7 = v30;
  }

  else
  {
    v33 = v37[0];
    sub_197520FDC();
    sub_197407EE0(v38, a4, v39);
    v35 = v34;
    (*(v40 + 8))(v15, a4);
    v36 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v32 rightExpression:v35 modifier:0 type:8 options:0];

    *v33 = v36;
    *(v33 + 8) = 1;
  }
}

uint64_t sub_1974EBF40(uint64_t a1)
{
  type metadata accessor for ComparisonResult(0);
  v16[3] = v3;
  v16[0] = a1;
  v4 = MEMORY[0x19A8E1370]();
  sub_1974E0A44(v16, &v15, v17);
  if (v1)
  {
    objc_autoreleasePoolPop(v4);
    return __swift_destroy_boxed_opaque_existential_0Tm_0(v16);
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v16);
    v6 = v18;
    if (v18)
    {
      v7 = __swift_project_boxed_opaque_existential_0Tm(v17, v18);
      v8 = *(v6 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x1EEE9AC00](v7, v7);
      v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11);
      v12 = sub_19752281C();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v17);
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v13;
  }
}

void sub_1974EC0F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x19A8E1370]();
  sub_1974EC1BC(a3, a4, a5, a6, a7, a8, &v15, &v16);
  objc_autoreleasePoolPop(v14);
}

void sub_1974EC1BC(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, void *a8)
{
  sub_197407EE0(a1, a3, a5);
  if (v8)
  {
    *a8 = v8;
  }

  else
  {
    v34 = v16;
    v33 = a7;
    sub_197407EE0(a1, a4, a6);
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v34 rightExpression:v17 modifier:0 type:4 options:a2];

    sub_197407EE0(a1, a3, a5);
    v21 = v20;
    sub_197407EE0(a1, a4, a6);
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v21 rightExpression:v22 modifier:0 type:0 options:a2];

    v25 = sub_1974EBF40(-1);
    v26 = sub_1974EBF40(1);
    v27 = objc_opt_self();
    v28 = v24;
    v29 = [v27 expressionForConditional:v28 trueExpression:v25 falseExpression:v26];

    v30 = sub_1974EBF40(0);
    v31 = v19;
    v32 = [v27 expressionForConditional:v31 trueExpression:v30 falseExpression:v29];

    *v33 = v32;
    *(v33 + 8) = 0;
  }
}

uint64_t sub_1974EC46C(uint64_t *a1, void *a2)
{
  result = sub_1974EC4BC(a1, a2, MEMORY[0x1E6968CC0], MEMORY[0x1E6968CC8], 1);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1974EC4BC(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v25 = a1;
  v26 = a5;
  v7 = a2[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v19);
  a4(a2);
  v21 = v27;
  sub_1974EC0F0(v18, v12, v25, v26, v14, v7, a2[4], a2[5]);
  if (v21)
  {
    (*(v8 + 8))(v12, v7);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v24 = v22;
    (*(v8 + 8))(v12, v7);
    (*(v15 + 8))(v18, v14);
    return v24;
  }
}

uint64_t sub_1974EC6B0(uint64_t *a1, void *a2)
{
  result = sub_1974EC4BC(a1, a2, MEMORY[0x1E6968C98], MEMORY[0x1E6968CA0], 8);
  if (v2)
  {
    return v4;
  }

  return result;
}

void sub_1974EC700(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, v3, a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974EC7A4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, void *a7)
{
  v37 = a6;
  v41 = *(a4 - 8);
  v12 = *(v41 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  v40 = v25;
  v46 = v26;
  v47 = v27;
  v28 = sub_19752108C();
  v38 = a1;
  MEMORY[0x19A8DF790]();
  v39 = a2;
  v29 = v48;
  sub_197407EE0(a2, a3, a5);
  v31 = v30;
  (*(v17 + 8))(v21, a3);
  if (v29)
  {
    *a7 = v29;
  }

  else
  {
    v32 = v37;
    MEMORY[0x19A8DF7A0](v28);
    sub_197407EE0(v39, a4, v40);
    v34 = v33;
    (*(v41 + 8))(v15, a4);
    v35 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v31 rightExpression:v34 modifier:0 type:99 options:11];

    *v32 = v35;
    *(v32 + 8) = 1;
  }
}

void sub_1974ECA28(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X8>)
{
  v5 = *(*(a1 + 16) + OBJC_IVAR____TtC9SwiftData12DefaultStore_model);
  if (!v5)
  {
    if (qword_1ED7C9848 != -1)
    {
      swift_once();
    }

    v25 = sub_19752157C();
    __swift_project_value_buffer(v25, qword_1ED7CE648);
    v26 = sub_19752155C();
    v27 = sub_197521DDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_197462310(0xD000000000000039, 0x8000000197528E80, &v36);
      _os_log_impl(&dword_1973F2000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v29);
      MEMORY[0x19A8E1B50](v29, -1, -1);
      MEMORY[0x19A8E1B50](v28, -1, -1);
    }

    sub_19744BE3C();
    v30 = swift_allocError();
    *v31 = 1;
    *(v31 + 8) = 0xD000000000000050;
    *(v31 + 16) = 0x8000000197528EC0;
    swift_willThrow();
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v6 entitiesByName];
  v8 = sub_197408568(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v9 = sub_1975215FC();

  v10 = sub_1973F7AAC();
  if (!*(v9 + 16))
  {

    goto LABEL_14;
  }

  v35 = a3;
  v12 = sub_1973F4028(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_14:

    sub_1975221EC();

    v32 = sub_1973F7AAC();
    MEMORY[0x19A8DFF80](v32);

    MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197528F40);
    sub_19744BE3C();
    v30 = swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 0xD000000000000017;
    *(v33 + 16) = 0x8000000197528F20;
    swift_willThrow();

LABEL_15:
    *a2 = v30;
    return;
  }

  v15 = *(*(v9 + 56) + 8 * v12);

  v16 = [v15 subentities];
  v17 = sub_1975219CC();

  if (v17 >> 62)
  {
    v18 = sub_1975220EC();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_197408568(0, &qword_1ED7C7C90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB90, &unk_197534070);
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = xmmword_19752C280;
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1975313B0;
    *(v21 + 32) = v15;
    v22 = v15;
    v23 = sub_1974A9C38(v22);
    sub_1974EE6B8(v23);
    v20[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6B8, &qword_19752F3A0);
    v20[8] = sub_1974EDD00(&qword_1EAF2BB98, &qword_1EAF2B6B8, &qword_19752F3A0);
    v20[4] = v21;
    v24 = sub_197521D5C();
  }

  else
  {
    *(v19 + 56) = v8;
    *(v19 + 64) = sub_1974EDC58(&qword_1EAF2BBA0, &qword_1ED7C9BA0, 0x1E695D5B8);
    v20[4] = v15;
    v34 = v15;
    v24 = sub_197521D5C();
  }

  *v35 = v24;
  *(v35 + 8) = 1;
}

void sub_1974ECF74(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  sub_1974EDB24(a1);
}

id sub_1974ECFA8(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (!v4)
  {
    v11 = 0;
    v12 = a2[3];
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v6 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_19752281C();
  (*(v7 + 8))(v10, v4);
  __swift_destroy_boxed_opaque_existential_0Tm_0(a1);
  v12 = a2[3];
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = __swift_project_boxed_opaque_existential_0Tm(a2, v12);
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17);
  v18 = sub_19752281C();
  (*(v14 + 8))(v17, v12);
  __swift_destroy_boxed_opaque_existential_0Tm_0(a2);
LABEL_6:
  v19 = [v2 initWithOperand:v11 andKeyPath:v18];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_1974ED1D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED214(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED250(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED28C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED2C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED304(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED340(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED37C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED3B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED3F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED430(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED46C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED4A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED4E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED520(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED55C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED598(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED5D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED610(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED64C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED688(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED6C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED700(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED73C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_19752224C();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_1975220EC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_1974ED7D8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = sub_1975220EC();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = sub_1975220EC();
    result = sub_1975220EC();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = sub_1975220EC();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    sub_19752202C();

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      sub_19752221C();
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_19752241C();
}

uint64_t sub_1974ED924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v24[3] = v8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v24);
  v11 = (*(*(v8 - 8) + 16))(boxed_opaque_existential_0Tm, v9, v8);
  v12 = MEMORY[0x19A8E1370](v11);
  sub_1974DFBAC(v24, a2, a3, a4, &v23, &v25);
  if (v4)
  {
    objc_autoreleasePoolPop(v12);
    return __swift_destroy_boxed_opaque_existential_0Tm_0(v24);
  }

  else
  {
    objc_autoreleasePoolPop(v12);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v24);
    v14 = v26;
    if (v26)
    {
      v15 = __swift_project_boxed_opaque_existential_0Tm(&v25, v26);
      v16 = *(v14 - 8);
      v17 = *(v16 + 64);
      MEMORY[0x1EEE9AC00](v15, v15);
      v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v19);
      v20 = sub_19752281C();
      (*(v16 + 8))(v19, v14);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v25);
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v21;
  }
}

void sub_1974EDB24(uint64_t a1)
{
  v2 = MEMORY[0x19A8E1370]();
  sub_1974ECA28(a1, &v4, &v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1974EDC58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_197408568(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1974EDCA8(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void sub_1974EDCBC(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1974EDCD0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1974EDCE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1974EDD00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1974EDD48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1974EDCE8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1974EDD5C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1974EDCD0(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1974EDDB0()
{
  result = qword_1EAF2AA80[0];
  if (!qword_1EAF2AA80[0])
  {
    sub_19752177C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2AA80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SwiftData15SuffixOperationO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1974EDE24(uint64_t a1, unsigned int a2)
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

uint64_t sub_1974EDE6C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1974EDEB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1974EDF0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1974EDF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1974EDFA0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_1974EDFDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1974EE024(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1974EE0A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F697463416F6ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65646163736163;
    }

    else
    {
      v4 = 2037278052;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7966696C6C756ELL;
    }

    else
    {
      v4 = 0x6E6F697463416F6ELL;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x65646163736163;
  if (a2 != 2)
  {
    v8 = 2037278052;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x7966696C6C756ELL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19752282C();
  }

  return v11 & 1;
}

uint64_t sub_1974EE1DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6164696C61766E69;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = 0xEE006C6C41646574;
    }

    else
    {
      v4 = 0x8000000197523740;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x6465747265736E69;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x64657461647075;
    }

    else
    {
      v3 = 0x646574656C6564;
    }

    v4 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6164696C61766E69;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2)
    {
      v5 = 0xEE006C6C41646574;
    }

    else
    {
      v5 = 0x8000000197523740;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6465747265736E69)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (a2 == 3)
    {
      v6 = 1633972341;
    }

    else
    {
      v6 = 1701602660;
    }

    if (v3 != (v6 | 0x64657400000000))
    {
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
LABEL_32:
    v8 = sub_19752282C();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1974EE374(uint64_t a1)
{
  result = MEMORY[0x19A8E0310](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_197414EA0(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *Schema.Entity.properties.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v0 + 72);
  v5 = v1;

  sub_1974EE6F8(v3, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);

  sub_1974EEA08(&v5);

  return v5;
}

uint64_t sub_1974EE598(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1973FB6DC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1974EE6F8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1974EE818(uint64_t result)
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
  v7 = *v1;
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

  result = sub_197477A88(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1974EE910(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1975220EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1975220EC();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1974F6AA0(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1974EEA08(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1974DB0B8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1974F6B40(v5);
  *a1 = v2;
  return result;
}

uint64_t Schema.Entity.superentity.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    swift_beginAccess();
    v4 = a1[8];
    swift_beginAccess();
    v5 = a1[9];

    sub_1974EE6F8(v6, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);
    swift_beginAccess();
    v7 = v2[9];
    v2[9] = v4;

    sub_1974EF18C();

    swift_weakAssign();
    swift_beginAccess();
    v9 = a1[2];
    v8 = a1[3];
  }

  else
  {
    swift_beginAccess();
    v10 = v1[9];
    v1[9] = MEMORY[0x1E69E7CC0];

    sub_1974EF18C();
    swift_weakAssign();
    v9 = 0;
    v8 = 0;
  }

  swift_beginAccess();
  v11 = v2[6];
  v2[5] = v9;
  v2[6] = v8;
}

uint64_t Schema.Entity.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Schema.Entity.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Schema.Entity.subentities.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t Schema.Entity.subentities.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t Schema.Entity.superentityName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Schema.Entity.superentityName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t Schema.Entity.inheritedProperties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;

  return sub_1974EF18C();
}

uint64_t (*Schema.Entity.superentity.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_1974EEF44;
}

uint64_t sub_1974EEF44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return Schema.Entity.superentity.setter(*a1);
  }

  v4 = *a1;

  Schema.Entity.superentity.setter(v5);
}

uint64_t Schema.Entity.storedProperties.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

void *sub_1974EEFD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return sub_1974184F4();
}

void *Schema.Entity.storedProperties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;

  return sub_1974184F4();
}

uint64_t (*Schema.Entity.storedProperties.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1974EF0D8;
}

uint64_t Schema.Entity.inheritedProperties.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_1974EF128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return sub_1974EF18C();
}

uint64_t sub_1974EF18C()
{
  v1 = v0;
  v84 = *v0;
  swift_beginAccess();
  v2 = v0[9];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = v0[9];

    v6 = 0;
    while (1)
    {
      if (v6 >= *(v2 + 16))
      {
        goto LABEL_61;
      }

      sub_1973FA430(v4, v93);
      sub_1973FA430(v93, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if (swift_dynamicCast())
      {
        v11 = v89;
        swift_beginAccess();
        v13 = v11[2];
        v12 = v11[3];
        swift_beginAccess();
        if (!*(v1[12] + 16) || (, sub_1973F4028(v13, v12), v15 = v14, , (v15 & 1) == 0))
        {
          swift_endAccess();
          swift_beginAccess();

          sub_197417B28(v88, v11);
          swift_endAccess();

          v16 = v11[2];
          v17 = v11[3];
          swift_beginAccess();

          v18 = v1[12];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88[0] = v1[12];
          v1[12] = 0x8000000000000000;
          sub_1974184C4(v11, v16, v17, isUniquelyReferenced_nonNull_native);

          v1[12] = v88[0];
        }
      }

      else
      {
        type metadata accessor for Schema.Relationship();
        if (!swift_dynamicCast())
        {
          goto LABEL_68;
        }

        v20 = v89;
        swift_beginAccess();
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        swift_beginAccess();
        if (!*(v1[13] + 16) || (, sub_1973F4028(v22, v21), v24 = v23, , (v24 & 1) == 0))
        {
          swift_endAccess();
          swift_beginAccess();

          sub_19741DE84(v88, v20);
          swift_endAccess();

          v25 = *(v20 + 16);
          v26 = *(v20 + 24);
          swift_beginAccess();

          v27 = v1[13];
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v88[0] = v1[13];
          v1[13] = 0x8000000000000000;
          sub_19741E9CC(v20, v25, v26, v28);

          v1[13] = v88[0];
        }
      }

      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm_5(v92);
      v29 = v94;
      v30 = v95;
      __swift_project_boxed_opaque_existential_1(v93, v94);
      v31 = (*(v30 + 32))(v29, v30);
      v33 = v32;
      swift_beginAccess();
      sub_1973FA430(v93, v92);
      v34 = v1[15];
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v89 = v1[15];
      v36 = v89;
      v1[15] = 0x8000000000000000;
      v37 = sub_1973F4028(v31, v33);
      v39 = v36[2];
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_62;
      }

      v43 = v38;
      if (v36[3] < v42)
      {
        break;
      }

      if (v35)
      {
        goto LABEL_19;
      }

      v48 = v37;
      sub_1974798E0();
      v37 = v48;
      if ((v43 & 1) == 0)
      {
LABEL_20:
        v8 = v89;
        v89[(v37 >> 6) + 8] |= 1 << v37;
        v45 = (v8[6] + 16 * v37);
        *v45 = v31;
        v45[1] = v33;
        sub_1973FA670(v92, v8[7] + 40 * v37);
        v46 = v8[2];
        v41 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v41)
        {
          goto LABEL_63;
        }

        v8[2] = v47;
        goto LABEL_4;
      }

LABEL_3:
      v7 = v37;

      v8 = v89;
      v9 = (v89[7] + 40 * v7);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v9);
      sub_1973FA670(v92, v9);
LABEL_4:
      ++v6;
      v10 = v1[15];
      v1[15] = v8;

      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm_5(v93);
      v4 += 40;
      if (v3 == v6)
      {

        goto LABEL_25;
      }
    }

    sub_1973FA674(v42, v35);
    v37 = sub_1973F4028(v31, v33);
    if ((v43 & 1) != (v44 & 1))
    {
      goto LABEL_69;
    }

LABEL_19:
    if ((v43 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_3;
  }

LABEL_25:
  swift_beginAccess();
  v49 = v1[4];
  if ((v49 & 0xC000000000000001) != 0)
  {
    if (v49 < 0)
    {
      v50 = v1[4];
    }

    v51 = v1[4];

    sub_1975220AC();
    sub_1973FA628(&qword_1EAF2B670, v52, type metadata accessor for Schema.Entity);
    sub_197521C1C();
    v49 = v93[0];
    v53 = v93[1];
    v54 = v93[2];
    v55 = v94;
    v56 = v95;
  }

  else
  {
    v57 = -1 << *(v49 + 32);
    v53 = v49 + 56;
    v54 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v49 + 56);
    v60 = v1[4];

    v55 = 0;
  }

  v83 = v54;
  v61 = (v54 + 64) >> 6;
  v85 = v53;
  v86 = v61;
  while (v49 < 0)
  {
    if (!sub_19752212C())
    {
      return sub_197416DA8(v49, v53, v83, v55, v56);
    }

    swift_dynamicCast();
    v71 = v87;
    v69 = v55;
    v70 = v56;
    if (!v87)
    {
      return sub_197416DA8(v49, v53, v83, v55, v56);
    }

LABEL_45:
    v72 = v49;
    swift_beginAccess();
    v74 = v1[8];
    v73 = v1[9];
    v75 = *(v73 + 16);
    v76 = v74[2];
    v77 = v76 + v75;
    if (__OFADD__(v76, v75))
    {
      goto LABEL_64;
    }

    v78 = swift_isUniquelyReferenced_nonNull_native();
    if (v78 && v77 <= v74[3] >> 1)
    {
      if (!*(v73 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v76 <= v77)
      {
        v79 = v76 + v75;
      }

      else
      {
        v79 = v76;
      }

      v74 = sub_1973FA494(v78, v79, 1, v74);
      if (!*(v73 + 16))
      {
LABEL_34:

        if (v75)
        {
          goto LABEL_65;
        }

        goto LABEL_35;
      }
    }

    if ((v74[3] >> 1) - v74[2] < v75)
    {
      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    swift_arrayInitWithCopy();

    if (v75)
    {
      v80 = v74[2];
      v41 = __OFADD__(v80, v75);
      v81 = v80 + v75;
      if (v41)
      {
        goto LABEL_67;
      }

      v74[2] = v81;
    }

LABEL_35:
    swift_beginAccess();
    v62 = v71[9];
    v71[9] = v74;

    sub_1974EF18C(v63);

    swift_weakAssign();
    swift_beginAccess();
    v65 = v1[2];
    v64 = v1[3];
    swift_beginAccess();
    v66 = v71[6];
    v71[5] = v65;
    v71[6] = v64;

    v55 = v69;
    v56 = v70;
    v49 = v72;
    v53 = v85;
    v61 = v86;
  }

  v67 = v55;
  v68 = v56;
  v69 = v55;
  if (v56)
  {
LABEL_41:
    v70 = (v68 - 1) & v68;
    v71 = *(*(v49 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v68)))));

    if (!v71)
    {
      return sub_197416DA8(v49, v53, v83, v55, v56);
    }

    goto LABEL_45;
  }

  while (1)
  {
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v69 >= v61)
    {
      v56 = 0;
      return sub_197416DA8(v49, v53, v83, v55, v56);
    }

    v68 = *(v53 + 8 * v69);
    ++v67;
    if (v68)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197529810);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
LABEL_69:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t (*Schema.Entity.inheritedProperties.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1974EFADC;
}

uint64_t sub_1974EFAF4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t Schema.Entity.attributes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t Schema.Entity.attributes.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t Schema.Entity.relationships.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t Schema.Entity.relationships.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t Schema.Entity.attributesByName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t Schema.Entity.attributesByName.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t Schema.Entity.relationshipsByName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

uint64_t Schema.Entity.relationshipsByName.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t Schema.Entity.storedPropertiesByName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t Schema.Entity.storedPropertiesByName.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t Schema.Entity.inheritedPropertiesByName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t Schema.Entity.inheritedPropertiesByName.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t Schema.Entity.uniquenessConstraints.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
}

uint64_t Schema.Entity.uniquenessConstraints.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t Schema.Entity.indices.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
}

uint64_t Schema.Entity.indices.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(v1 + 168) = a1;
}

uint64_t sub_1974F01D0()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974F0244()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

unint64_t sub_1974F0288()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974616C6572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7469746E65627573;
  if (v1 != 1)
  {
    v5 = 0x746E657265707573;
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

uint64_t sub_1974F0384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1974F93D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1974F03C4(uint64_t a1)
{
  v2 = sub_1974F98E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974F0400(uint64_t a1)
{
  v2 = sub_1974F98E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Entity.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Schema.Entity.init(_:)(a1, a2);
  return v4;
}

uint64_t Schema.Entity.__allocating_init(_:subentities:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Schema.Entity.init(_:subentities:properties:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Schema.Entity.init(_:subentities:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = 0;
  v4[6] = 0;
  swift_weakInit();
  v4[22] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  v4[2] = a1;
  v4[3] = a2;

  v9 = sub_1974F9780(v8);

  v4[4] = v9;
  v10 = MEMORY[0x1E69E7CD0];
  v4[8] = a4;
  v128 = v10;
  v129 = v10;
  v11 = *(a4 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v120 = v4;
  if (!v11)
  {

    v4[10] = v10;
    v4[11] = v10;
    v4[20] = v12;
    swift_bridgeObjectRetain_n();

    v29 = MEMORY[0x1E69E7CC8];
    v50 = v10;
LABEL_37:
    v116 = v10;

    v4[14] = v29;
    if ((v50 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1975220AC();
      type metadata accessor for Schema.Attribute();
      sub_1973FA628(&qword_1ED7CA320, 255, type metadata accessor for Schema.Attribute);
      sub_197521C1C();
      v51 = *(&v130 + 1);
      v50 = v130;
      v53 = v131;
      v52 = v132;
      v54 = v133;
    }

    else
    {
      v55 = -1 << *(v50 + 32);
      v51 = v50 + 56;
      v53 = ~v55;
      v56 = -v55;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v54 = v57 & *(v50 + 56);

      v52 = 0;
    }

    v58 = (v53 + 64) >> 6;
    v59 = MEMORY[0x1E69E7CC8];
    v123 = v50;
    v117 = v51;
    while (1)
    {
      if (v50 < 0)
      {
        if (!sub_19752212C())
        {
          goto LABEL_67;
        }

        type metadata accessor for Schema.Attribute();
        swift_dynamicCast();
        v66 = v134[0];
        v64 = v52;
        v65 = v54;
        if (!v134[0])
        {
          goto LABEL_67;
        }
      }

      else
      {
        v62 = v52;
        v63 = v54;
        v64 = v52;
        if (!v54)
        {
          while (1)
          {
            v64 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              __break(1u);
              goto LABEL_98;
            }

            if (v64 >= v58)
            {
              break;
            }

            v63 = *(v51 + 8 * v64);
            ++v62;
            if (v63)
            {
              goto LABEL_51;
            }
          }

          v54 = 0;
LABEL_67:
          sub_197416DA8(v50, v51, v53, v52, v54);
          v81 = v120;
          v120[12] = v59;
          if ((v116 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_1975220AC();
            type metadata accessor for Schema.Relationship();
            sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship);
            sub_197521C1C();
            v82 = v134[0];
            v83 = v134[1];
            v85 = v134[2];
            v84 = v135;
            v86 = v136;
          }

          else
          {
            v87 = -1 << *(v116 + 32);
            v83 = v116 + 56;
            v85 = ~v87;
            v88 = -v87;
            if (v88 < 64)
            {
              v89 = ~(-1 << v88);
            }

            else
            {
              v89 = -1;
            }

            v86 = v89 & *(v116 + 56);

            v84 = 0;
          }

          v90 = MEMORY[0x1E69E7CC0];
          v118 = v85;
          v91 = (v85 + 64) >> 6;
          v92 = MEMORY[0x1E69E7CC8];
          v124 = v82;
          v119 = v83;
          while (2)
          {
            if (v82 < 0)
            {
              if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v100 = v125, v98 = v84, v99 = v86, !v125))
              {
LABEL_96:
                sub_197416DA8(v124, v119, v118, v84, v86);

                v81[13] = v92;
                v81[9] = v90;
                v81[15] = sub_1973FAE70(v90);
                v81[21] = v90;
                return v81;
              }
            }

            else
            {
              v96 = v84;
              v97 = v86;
              v98 = v84;
              if (!v86)
              {
                while (1)
                {
                  v98 = v96 + 1;
                  if (__OFADD__(v96, 1))
                  {
                    break;
                  }

                  if (v98 >= v91)
                  {
                    v86 = 0;
                    goto LABEL_96;
                  }

                  v97 = *(v83 + 8 * v98);
                  ++v96;
                  if (v97)
                  {
                    goto LABEL_81;
                  }
                }

LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                __break(1u);
                goto LABEL_101;
              }

LABEL_81:
              v99 = (v97 - 1) & v97;
              v100 = *(*(v82 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v97)))));

              if (!v100)
              {
                goto LABEL_96;
              }
            }

            swift_beginAccess();
            v102 = v100[2];
            v101 = v100[3];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v125 = v92;
            v104 = sub_1973F4028(v102, v101);
            v106 = v92[2];
            v107 = (v105 & 1) == 0;
            v42 = __OFADD__(v106, v107);
            v108 = v106 + v107;
            if (v42)
            {
              goto LABEL_104;
            }

            v109 = v105;
            if (v92[3] >= v108)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_90;
              }

              v114 = v104;
              sub_197479A88();
              v104 = v114;
              if (v109)
              {
                goto LABEL_74;
              }

LABEL_91:
              v92[(v104 >> 6) + 8] |= 1 << v104;
              v111 = (v92[6] + 16 * v104);
              *v111 = v102;
              v111[1] = v101;
              *(v92[7] + 8 * v104) = v100;

              v112 = v92[2];
              v42 = __OFADD__(v112, 1);
              v113 = v112 + 1;
              if (v42)
              {
                goto LABEL_106;
              }

              v92[2] = v113;
            }

            else
            {
              sub_197478114(v108, isUniquelyReferenced_nonNull_native);
              v104 = sub_1973F4028(v102, v101);
              if ((v109 & 1) != (v110 & 1))
              {
                goto LABEL_107;
              }

LABEL_90:
              if ((v109 & 1) == 0)
              {
                goto LABEL_91;
              }

LABEL_74:
              v93 = v104;

              v94 = v92[7];
              v95 = *(v94 + 8 * v93);
              *(v94 + 8 * v93) = v100;
            }

            v84 = v98;
            v86 = v99;
            v81 = v120;
            v90 = MEMORY[0x1E69E7CC0];
            v82 = v124;
            v83 = v119;
            continue;
          }
        }

LABEL_51:
        v65 = (v63 - 1) & v63;
        v66 = *(*(v50 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v63)))));

        if (!v66)
        {
          goto LABEL_67;
        }
      }

      swift_beginAccess();
      v68 = *(v66 + 16);
      v67 = *(v66 + 24);

      v69 = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = v59;
      v71 = sub_1973F4028(v68, v67);
      v72 = v59[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        goto LABEL_103;
      }

      v75 = v70;
      if (v59[3] >= v74)
      {
        if (v69)
        {
          if (v70)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_197479A9C();
          if (v75)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        sub_197478128(v74, v69);
        v76 = sub_1973F4028(v68, v67);
        if ((v75 & 1) != (v77 & 1))
        {
          goto LABEL_107;
        }

        v71 = v76;
        if (v75)
        {
LABEL_44:

          v59 = v134[0];
          v60 = *(v134[0] + 56);
          v61 = *(v60 + 8 * v71);
          *(v60 + 8 * v71) = v66;

          goto LABEL_45;
        }
      }

      v59 = v134[0];
      *(v134[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
      v78 = (v59[6] + 16 * v71);
      *v78 = v68;
      v78[1] = v67;
      *(v59[7] + 8 * v71) = v66;

      v79 = v59[2];
      v42 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v42)
      {
        goto LABEL_105;
      }

      v59[2] = v80;
LABEL_45:
      v52 = v64;
      v54 = v65;
      v51 = v117;
      v58 = (v53 + 64) >> 6;
      v50 = v123;
    }
  }

  v13 = a4 + 32;

  v14 = 0;
  v121 = MEMORY[0x1E69E7CC0];
  v122 = a4;
  do
  {
    if (v14 >= *(a4 + 16))
    {
      goto LABEL_99;
    }

    sub_1973FA430(v13 + 40 * v14, v134);
    sub_1973FA430(v134, &v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    type metadata accessor for Schema.Attribute();
    if (swift_dynamicCast())
    {
      v15 = v126;

      sub_197417B28(&v130, v126);

      swift_beginAccess();
      v16 = *(v126 + 48);
      v17 = (v16 + 64);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = *v17;
        v17 += 40;
        if (v19)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1973FA430(v134, &v130);
      type metadata accessor for Schema.Relationship();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_108;
      }

      v15 = v126;

      sub_19741DE84(&v130, v126);

      swift_beginAccess();
      v20 = *(v126 + 56);
      v21 = *(v20 + 16);
      v22 = (v20 + 32);
      while (v21)
      {
        v23 = *v22++;
        --v21;
        if (v23 == 1)
        {
          if ((*(v126 + 168) & 1) == 0)
          {
            break;
          }

LABEL_16:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_19752C280;
          swift_beginAccess();
          v25 = *(v15 + 24);
          *(v24 + 32) = *(v15 + 16);
          *(v24 + 40) = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_19741E43C(0, v121[2] + 1, 1, v121);
          }

          v27 = v121[2];
          v26 = v121[3];
          if (v27 >= v26 >> 1)
          {
            v121 = sub_19741E43C((v26 > 1), v27 + 1, 1, v121);
          }

          __swift_destroy_boxed_opaque_existential_1Tm_5(v134);
          v121[2] = v27 + 1;
          v121[v27 + 4] = v24;
          a4 = v122;
          goto LABEL_4;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm_5(v134);
LABEL_4:
    ++v14;
  }

  while (v14 != v11);

  v120[10] = v10;
  v120[11] = v10;
  v120[20] = v121;

  v28 = 0;
  v29 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v28 >= *(v122 + 16))
    {
      goto LABEL_100;
    }

    sub_1973FA430(v13, v134);
    v32 = v135;
    v33 = v136;
    __swift_project_boxed_opaque_existential_1(v134, v135);
    v34 = (*(v33 + 32))(v32, v33);
    v36 = v35;
    sub_1973FA430(v134, &v130);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v29;
    v38 = sub_1973F4028(v34, v36);
    v40 = v29[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      break;
    }

    v44 = v39;
    if (v29[3] < v43)
    {
      sub_1973FA674(v43, v37);
      v38 = sub_1973F4028(v34, v36);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_107;
      }

LABEL_30:
      if ((v44 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v37)
    {
      goto LABEL_30;
    }

    v49 = v38;
    sub_1974798E0();
    v38 = v49;
    if ((v44 & 1) == 0)
    {
LABEL_31:
      v29 = v127;
      v127[(v38 >> 6) + 8] |= 1 << v38;
      v46 = (v127[6] + 16 * v38);
      *v46 = v34;
      v46[1] = v36;
      sub_1973FA670(&v130, v127[7] + 40 * v38);
      v47 = v127[2];
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        goto LABEL_102;
      }

      v127[2] = v48;
      goto LABEL_23;
    }

LABEL_22:
    v30 = v38;

    v29 = v127;
    v31 = (v127[7] + 40 * v30);
    __swift_destroy_boxed_opaque_existential_1Tm_5(v31);
    sub_1973FA670(&v130, v31);
LABEL_23:
    ++v28;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v134);
    v13 += 40;
    if (v11 == v28)
    {
      v4 = v120;
      v50 = v129;
      v10 = v128;
      goto LABEL_37;
    }
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  sub_1975229CC();
  __break(1u);
LABEL_108:
  result = sub_1975223EC();
  __break(1u);
  return result;
}