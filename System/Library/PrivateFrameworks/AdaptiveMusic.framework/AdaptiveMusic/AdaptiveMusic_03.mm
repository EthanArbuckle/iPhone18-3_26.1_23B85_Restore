uint64_t sub_23E7D1D74(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v9 = *v1;

  *(v3 + 76) = a1 ^ 1;
  v5 = v3 + 76;
  v6 = swift_task_alloc();
  *(v5 + 148) = v6;
  *v6 = v9;
  v6[1] = sub_23E7D1EBC;
  v7 = *(v5 + 132);

  return Library.moods(for:)(v5);
}

uint64_t sub_23E7D1EBC(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_23E7D1FBC, 0, 0);
}

uint64_t sub_23E7D1FBC()
{
  Description = v0[14].Description;
  v2 = Description[2];
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_21:

    v0[15].Kind = v5;
    if (qword_27E34FB50 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v3 = 0;
  v4 = (Description + 7);
  v5 = MEMORY[0x277D84F90];
  v0 = &type metadata for Mood.Playlist;
  while (v3 < Description[2])
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_26;
    }

    v10 = *v4;
    sub_23E7DC9D8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v12 = v8 + v7;
      }

      else
      {
        v12 = v8;
      }

      v5 = sub_23E7D2B98(isUniquelyReferenced_nonNull_native, v12, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v13 = *(v5 + 2);
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_29;
          }

          *(v5 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_27;
    }

LABEL_4:
    ++v3;
    v4 += 32;
    if (v2 == v3)
    {
      v0 = v19;
      v16 = v19[14].Description;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_22:
  v17 = swift_task_alloc();
  v0[15].Description = v17;
  *v17 = v0;
  v17[1] = sub_23E7D21E0;

  return sub_23E7C7C58();
}

uint64_t sub_23E7D21E0(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_23E7D22E0, 0, 0);
}

uint64_t sub_23E7D22E0()
{
  v35 = v0;
  v1 = *(v0 + 256);
  v34 = *(v0 + 240);
  sub_23E7D31D8(v1);
  v2 = v34;
  v3 = *(v34 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v34 + 32;
    v6 = MEMORY[0x277D84F90];
    v32 = v34 + 32;
    do
    {
      v33 = v6;
      v6 = v5 + (v4 << 6);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v8 = *(v0 + 160);
        v10 = *(v6 + 16);
        v9 = *(v6 + 32);
        v11 = *v6;
        *(v0 + 59) = *(v6 + 43);
        *(v0 + 32) = v10;
        *(v0 + 48) = v9;
        *(v0 + 16) = v11;
        v4 = v7 + 1;
        v12 = *(v0 + 24);
        *(v0 + 144) = *(v0 + 16);
        *(v0 + 152) = v12;
        v13 = swift_task_alloc();
        *(v13 + 16) = v0 + 144;
        sub_23E794BD8(v0 + 16, v0 + 80);
        sub_23E7DC9D8();
        LOBYTE(v8) = sub_23E7CB348(sub_23E7D32CC, v13, v8);

        if (v8)
        {
          break;
        }

        sub_23E7A4C68(v0 + 16);
        v6 += 64;
        ++v7;
        if (v3 == v4)
        {
          v6 = v33;
          goto LABEL_15;
        }
      }

      v6 = v33;
      v34 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23E7CB5A8(0, *(v33 + 16) + 1, 1);
        v6 = v34;
      }

      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23E7CB5A8((v14 > 1), v15 + 1, 1);
        v6 = v34;
      }

      *(v6 + 16) = v15 + 1;
      v16 = (v6 + (v15 << 6));
      v17 = *(v0 + 16);
      v18 = *(v0 + 32);
      v19 = *(v0 + 48);
      *(v16 + 75) = *(v0 + 59);
      v16[3] = v18;
      v16[4] = v19;
      v16[2] = v17;
      v5 = v32;
    }

    while (v3 - 1 != v7);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  if (!*(v6 + 16))
  {
    if (qword_27E34FB58 != -1)
    {
LABEL_24:
      swift_once();
    }

    v20 = *(v0 + 160);
    v21 = sub_23E7DCE88();
    __swift_project_value_buffer(v21, qword_27E35A110);
    sub_23E7DC9D8();
    v22 = sub_23E7DCE68();
    v23 = sub_23E7DD5D8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 160);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      v27 = MEMORY[0x23EF12F00](v24, MEMORY[0x277D837D0]);
      v29 = sub_23E7D2CA4(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_23E790000, v22, v23, "SuggestedPlaylistQuery attempted to fetch %s but found no results", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x23EF13B60](v26, -1, -1);
      MEMORY[0x23EF13B60](v25, -1, -1);
    }
  }

  v30 = *(v0 + 8);

  return v30(v6);
}

uint64_t sub_23E7D2644(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7CB898;

  return SuggestedPlaylistQuery.entities(for:)(a1);
}

uint64_t sub_23E7D26D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23E7CAC64;

  return SuggestedPlaylistQuery.suggestedEntities()();
}

uint64_t sub_23E7D2768(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_23E7BF0D0();
  *v6 = v2;
  v6[1] = sub_23E7A23AC;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_23E7D281C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return SuggestedPlaylistQuery.defaultResult()(a1);
}

size_t sub_23E7D29B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_23E7D2B98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350068, &unk_23E7E57C0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23E7D2CA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_23E7DC9D8();
  v6 = sub_23E7D2D70(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23E7A6134(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23E7D2D70(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23E7D2E7C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23E7DD778();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23E7D2E7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23E7D2EC8(a1, a2);
  sub_23E7D2FF8(&unk_2851118A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23E7D2EC8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23E79A534(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23E7DD778();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23E7DD3C8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E79A534(v10, 0);
        result = sub_23E7DD728();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23E7D2FF8(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23E7D30E4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_23E7D30E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF58, &qword_23E7E1B68);
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

uint64_t sub_23E7D31D8(uint64_t result)
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

  result = sub_23E7D2B98(result, v11, 1, v3);
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

unint64_t sub_23E7D32F0()
{
  result = qword_27E350EB8;
  if (!qword_27E350EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350EB8);
  }

  return result;
}

unint64_t sub_23E7D3348()
{
  result = qword_27E350EC0;
  if (!qword_27E350EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350EC0);
  }

  return result;
}

unint64_t sub_23E7D33A0()
{
  result = qword_27E350EC8;
  if (!qword_27E350EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestedPlaylistQuery(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_23E7D34A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7D34DC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E7A23AC;

  return sub_23E7CFE64();
}

void sub_23E7D3588(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
  sub_23E7DCDA8();

  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
}

void sub_23E7D3644(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
  sub_23E7DCDA8();

  v4 = *(v3 + 16);
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
  *a2 = v5;
}

uint64_t sub_23E7D3700(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
  sub_23E7DCD98();
}

void sub_23E7D37D0(unsigned __int8 a1, uint64_t a2)
{
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v4 = sub_23E7DCE88();
  __swift_project_value_buffer(v4, qword_27E35A110);
  v5 = sub_23E7DCE68();
  v6 = sub_23E7DD5E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    v9 = 0xE400000000000000;
    *v7 = 136315138;
    v10 = 1701602409;
    v11 = 0xE600000000000000;
    v12 = 0x646573756170;
    if (a1 != 2)
    {
      v12 = 0x676E6979616C70;
      v11 = 0xE700000000000000;
    }

    if (a1)
    {
      v10 = 0x676E6964616F6CLL;
      v9 = 0xE700000000000000;
    }

    if (a1 <= 1u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_23E7D2CA4(v13, v14, &v17);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_23E790000, v5, v6, "AppleMusicPlayer updating status to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x23EF13B60](v8, -1, -1);
    MEMORY[0x23EF13B60](v7, -1, -1);
  }

  v16 = *(a2 + 16);
  os_unfair_lock_lock((v16 + 20));
  *(v16 + 16) = a1;
  os_unfair_lock_unlock((v16 + 20));
}

uint64_t sub_23E7D39A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F58, &qword_23E7E58F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - v4;
  v6 = sub_23E7DD1B8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = sub_23E7DD148();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DCED8();

  sub_23E7DD0C8();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_23E7996FC(v13, &qword_27E350278, &qword_23E7E27A8);
    v19 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  (*(v15 + 32))(v18, v13, v14);
  sub_23E7DD108();
  v21 = sub_23E7DD0F8();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_23E7996FC(v5, &qword_27E350F58, &qword_23E7E58F8);
LABEL_8:
    v28 = sub_23E7DDA38();
    v43 = v29;
    v44 = v28;
    goto LABEL_9;
  }

  if ((*(v22 + 88))(v5, v21) != *MEMORY[0x277CD7F10])
  {
    (*(v22 + 8))(v5, v21);
    goto LABEL_8;
  }

  (*(v22 + 96))(v5, v21);
  v23 = v45;
  v24 = v5;
  v25 = v46;
  (*(v45 + 32))(v9, v24, v46);
  sub_23E7DD1A8();
  v26 = sub_23E7DDA48();
  v43 = v27;
  v44 = v26;
  (*(v23 + 8))(v9, v25);
LABEL_9:
  v30 = sub_23E7DD118();
  v45 = v31;
  v46 = v30;
  v32 = sub_23E7DD138();
  if (v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  sub_23E7DCEF8();
  sub_23E7DD078();

  v36 = sub_23E7DDA48();
  v38 = v37;
  v39 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v40 = a1 + *(v39 + 32);
  sub_23E7DD128();
  (*(v15 + 8))(v18, v14);
  v41 = v45;
  *a1 = v46;
  a1[1] = v41;
  a1[2] = v34;
  a1[3] = v35;
  a1[4] = v36;
  a1[5] = v38;
  v42 = v43;
  a1[6] = v44;
  a1[7] = v42;
  return (*(*(v39 - 8) + 56))(a1, 0, 1, v39);
}

void *sub_23E7D3E68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350088, &qword_23E7E5900);
  v3 = swift_allocObject();
  *(v3 + 20) = 0;
  *(v3 + 16) = 0;
  v1[2] = v3;
  v1[4] = &unk_285111948;
  sub_23E7DCDB8();
  v1[3] = a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(a1 + 40);
  *(a1 + 32) = sub_23E7D8384;
  *(a1 + 40) = v4;
  sub_23E7DC9E8();
  sub_23E7DC9E8();

  v6 = v1[3];
  v7 = swift_allocObject();
  swift_weakInit();
  sub_23E7DC9E8();

  v8 = *(v6 + 24);
  *(v6 + 16) = sub_23E7D838C;
  *(v6 + 24) = v7;

  return v1;
}

uint64_t sub_23E7D3FA4(uint64_t a1, uint64_t *a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v17 = result;
  sub_23E7AF3B0(a1, v15);
  v18 = sub_23E7DD148();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v18);
  v47 = v10;
  if (v21 == 1)
  {
    sub_23E7996FC(v15, &qword_27E350278, &qword_23E7E27A8);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_23E7DD0E8();
    v23 = v24;
    (*(v19 + 8))(v15, v18);
  }

  v46 = v7;
  sub_23E7AF3B0(v48, v13);
  if (v20(v13, 1, v18) == 1)
  {
    sub_23E7996FC(v13, &qword_27E350278, &qword_23E7E27A8);
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v25 = sub_23E7DD0E8();
  v27 = v26;
  (*(v19 + 8))(v13, v18);
  if (!v23)
  {
    if (!v27)
    {
      goto LABEL_21;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!v27)
  {
    goto LABEL_18;
  }

  if (v22 != v25 || v23 != v27)
  {
    v29 = sub_23E7DD8E8();

    if (v29)
    {
      goto LABEL_21;
    }

LABEL_19:
    swift_getKeyPath();
    v49 = v17;
    sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
    sub_23E7DCDA8();

    v30 = *(v17 + 16);
    os_unfair_lock_lock((v30 + 20));
    v31 = *(v30 + 16);
    os_unfair_lock_unlock((v30 + 20));
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v46 - 16) = v31;
    *(&v46 - 1) = v17;
    v49 = v17;
    sub_23E7DCD98();
  }

LABEL_21:
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v33 = sub_23E7DCE88();
  __swift_project_value_buffer(v33, qword_27E35A110);
  v34 = v47;
  sub_23E7AF3B0(v48, v47);
  v35 = sub_23E7DCE68();
  v36 = sub_23E7DD5C8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v37 = 136315138;
    v38 = v46;
    sub_23E7AF3B0(v34, v46);
    if (v20(v38, 1, v18) == 1)
    {
      sub_23E7996FC(v38, &qword_27E350278, &qword_23E7E27A8);
      v39 = 0xE300000000000000;
      v40 = 7104878;
    }

    else
    {
      v41 = sub_23E7DD0E8();
      v42 = v38;
      v40 = v41;
      v39 = v43;
      (*(v19 + 8))(v42, v18);
    }

    sub_23E7996FC(v47, &qword_27E350278, &qword_23E7E27A8);
    v44 = sub_23E7D2CA4(v40, v39, &v49);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_23E790000, v35, v36, "AppleMusicPlayer Ignoring item update to %s we are already playing that item", v37, 0xCu);
    v45 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x23EF13B60](v45, -1, -1);
    MEMORY[0x23EF13B60](v37, -1, -1);
  }

  else
  {

    return sub_23E7996FC(v34, &qword_27E350278, &qword_23E7E27A8);
  }
}

uint64_t sub_23E7D4560(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_23E7D45D4(&v3, 0, 0);
  }

  return result;
}

void sub_23E7D45D4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E7DD148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v62 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v61 - v15;
  v17 = *a1;
  v61[1] = sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DCED8();

  sub_23E7DD0C8();

  v18 = *(v7 + 48);
  if (v18(v16, 1, v6))
  {
    v61[0] = v18;
    sub_23E7996FC(v16, &qword_27E350278, &qword_23E7E27A8);
LABEL_3:
    v19 = v17;
    goto LABEL_4;
  }

  (*(v7 + 16))(v10, v16, v6);
  sub_23E7996FC(v16, &qword_27E350278, &qword_23E7E27A8);
  v31 = sub_23E7DD0E8();
  v33 = v32;
  (*(v7 + 8))(v10, v6);
  if (!a3)
  {
    v61[0] = v18;

    goto LABEL_3;
  }

  v34 = v31 == a2 && v33 == a3;
  v19 = v17;
  if (!v34 && (sub_23E7DD8E8() & 1) == 0)
  {
    v61[0] = v18;

LABEL_4:
    swift_getKeyPath();
    v20 = v63;
    v64 = v63;
    sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
    sub_23E7DCDA8();

    v21 = *(v20 + 16);
    os_unfair_lock_lock((v21 + 20));
    v22 = *(v21 + 16);
    os_unfair_lock_unlock((v21 + 20));
    if (sub_23E7A70AC(v19, v22))
    {
      if (qword_27E34FB58 != -1)
      {
        swift_once();
      }

      v23 = sub_23E7DCE88();
      __swift_project_value_buffer(v23, qword_27E35A110);
      v24 = sub_23E7DCE68();
      v25 = sub_23E7DD5C8();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_67;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v64 = v27;
      *v26 = 136315138;
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v29 = 0xE600000000000000;
          v28 = 0x646573756170;
        }

        else
        {
          v29 = 0xE700000000000000;
          v28 = 0x676E6979616C70;
        }
      }

      else
      {
        if (v19)
        {
          v28 = 0x676E6964616F6CLL;
        }

        else
        {
          v28 = 1701602409;
        }

        if (v19)
        {
          v29 = 0xE700000000000000;
        }

        else
        {
          v29 = 0xE400000000000000;
        }
      }

      v59 = sub_23E7D2CA4(v28, v29, &v64);

      *(v26 + 4) = v59;
      _os_log_impl(&dword_23E790000, v24, v25, "AppleMusicPlayer ignoring status update to %s, we are already in that state", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v47 = v27;
      goto LABEL_66;
    }

    v30 = 0x676E6964616F6CLL;
    if (v19 == 2)
    {
    }

    else
    {
      v48 = sub_23E7DD8E8();

      if ((v48 & 1) == 0)
      {
        sub_23E7DCEF8();
        sub_23E7DCED8();

        v49 = v62;
        sub_23E7DD0C8();

        v50 = (v61[0])(v49, 1, v6);
        v51 = v49;
        v30 = 0x676E6964616F6CLL;
        sub_23E7996FC(v51, &qword_27E350278, &qword_23E7E27A8);
        if (v50 != 1)
        {
          goto LABEL_57;
        }
      }
    }

    swift_getKeyPath();
    v64 = v20;
    sub_23E7DCDA8();

    os_unfair_lock_lock((v21 + 20));
    v52 = *(v21 + 16);
    os_unfair_lock_unlock((v21 + 20));
    if (v52 <= 1 && v52)
    {

LABEL_51:
      if (qword_27E34FB58 != -1)
      {
        swift_once();
      }

      v54 = sub_23E7DCE88();
      __swift_project_value_buffer(v54, qword_27E35A110);
      v24 = sub_23E7DCE68();
      v55 = sub_23E7DD5C8();
      if (!os_log_type_enabled(v24, v55))
      {
        goto LABEL_67;
      }

      v26 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64 = v56;
      *v26 = 136315138;
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v57 = 0xE600000000000000;
          v30 = 0x646573756170;
        }

        else
        {
          v57 = 0xE700000000000000;
          v30 = 0x676E6979616C70;
        }
      }

      else if (v19)
      {
        v57 = 0xE700000000000000;
      }

      else
      {
        v57 = 0xE400000000000000;
        v30 = 1701602409;
      }

      v60 = sub_23E7D2CA4(v30, v57, &v64);

      *(v26 + 4) = v60;
      _os_log_impl(&dword_23E790000, v24, v55, "AppleMusicPlayer ignoring status %s we are loading and have not played yet", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      v47 = v56;
      goto LABEL_66;
    }

    v53 = sub_23E7DD8E8();

    if (v53)
    {
      goto LABEL_51;
    }

LABEL_57:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    LOBYTE(v61[-2]) = v19;
    v61[-1] = v20;
    v64 = v20;
    sub_23E7DCD98();

    return;
  }

  v35 = v31;
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v36 = sub_23E7DCE88();
  __swift_project_value_buffer(v36, qword_27E35A110);
  sub_23E7DC9D8();
  v24 = sub_23E7DCE68();
  v37 = sub_23E7DD5C8();

  if (os_log_type_enabled(v24, v37))
  {
    v26 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v64 = v38;
    *v26 = 136315394;
    v39 = 0xE400000000000000;
    v40 = 0xE600000000000000;
    v41 = 0x646573756170;
    if (v17 != 2)
    {
      v41 = 0x676E6979616C70;
      v40 = 0xE700000000000000;
    }

    v42 = 0x676E6964616F6CLL;
    if (v17)
    {
      v39 = 0xE700000000000000;
    }

    else
    {
      v42 = 1701602409;
    }

    if (v17 <= 1)
    {
      v43 = v42;
    }

    else
    {
      v43 = v41;
    }

    if (v17 <= 1)
    {
      v44 = v39;
    }

    else
    {
      v44 = v40;
    }

    v45 = sub_23E7D2CA4(v43, v44, &v64);

    *(v26 + 4) = v45;
    *(v26 + 12) = 2080;
    v46 = sub_23E7D2CA4(v35, v33, &v64);

    *(v26 + 14) = v46;
    _os_log_impl(&dword_23E790000, v24, v37, "AppleMusicPlayer ignoring status %s update for %s", v26, 0x16u);
    swift_arrayDestroy();
    v47 = v38;
LABEL_66:
    MEMORY[0x23EF13B60](v47, -1, -1);
    MEMORY[0x23EF13B60](v26, -1, -1);
    goto LABEL_67;
  }

LABEL_67:
}

uint64_t sub_23E7D4F8C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = v6;
    sub_23E7D45D4(&v8, a3, a4);
  }

  return result;
}

uint64_t sub_23E7D502C()
{
  sub_23E7DCF08();
  *(v0 + 32) = sub_23E7DCEF8();
  v1 = *(MEMORY[0x277CD7F08] + 4);
  v4 = (*MEMORY[0x277CD7F08] + MEMORY[0x277CD7F08]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_23E7D50E4;

  return v4();
}

uint64_t sub_23E7D50E4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_23E7D5330;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_23E7D5200;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E7D5200()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = 3;
  *(v3 + 24) = v2;
  v0[2] = v2;
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
  sub_23E7DCD98();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23E7D5330()
{
  v1 = v0[4];

  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_23E7DCE88();
  __swift_project_value_buffer(v3, qword_27E35A110);
  v4 = v2;
  v5 = sub_23E7DCE68();
  v6 = sub_23E7DD5D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23E790000, v5, v6, "AppleMusicPlayer failed to resume playback: %@", v8, 0xCu);
    sub_23E7996FC(v9, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v9, -1, -1);
    MEMORY[0x23EF13B60](v8, -1, -1);
  }

  v12 = v0[6];

  sub_23E799564();
  swift_allocError();
  *v13 = 3;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_23E7D5500()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC13AdaptiveMusic16AppleMusicPlayer___observationRegistrar;
  v5 = sub_23E7DCDC8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleMusicPlayer()
{
  result = qword_27E350F10;
  if (!qword_27E350F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7D5608()
{
  result = sub_23E7DCDC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23E7D56B8(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
  sub_23E7DCDA8();

  v4 = *(v3 + 16);
  os_unfair_lock_lock((v4 + 20));
  *a1 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
}

uint64_t sub_23E7D578C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E7A23AC;

  return (sub_23E7D6440)(a1);
}

uint64_t sub_23E7D5854()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A6BDC;

  return sub_23E7D500C();
}

uint64_t sub_23E7D5900()
{
  sub_23E7DCF08();
  *(v0 + 16) = sub_23E7DCEF8();
  v1 = *(MEMORY[0x277CD7EF0] + 4);
  v4 = (*MEMORY[0x277CD7EF0] + MEMORY[0x277CD7EF0]);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23E7D59B8;

  return v4();
}

uint64_t sub_23E7D59B8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7D5AF4, 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23E7D5AF4()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t sub_23E7D5B74()
{
  sub_23E7DCF08();
  *(v0 + 16) = sub_23E7DCEF8();
  v1 = *(MEMORY[0x277CD7F00] + 4);
  v4 = (*MEMORY[0x277CD7F00] + MEMORY[0x277CD7F00]);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23E7D5C2C;

  return v4();
}

uint64_t sub_23E7D5C2C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7D83AC, 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23E7D5D80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_23E7DCF08();
  sub_23E7DCEF8();
  a3();
}

uint64_t sub_23E7D5DD0()
{
  v1 = *v0;
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DD0A8();

  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
  sub_23E7DCD98();
}

uint64_t sub_23E7D5EDC()
{
  v1 = *(v0 + 16);
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DD088();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E7D5F60(uint64_t a1)
{
  result = sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E7D5FE0(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350760, &qword_23E7E37C0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7D607C, 0, 0);
}

uint64_t sub_23E7D607C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_23E7DD258();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v0[2] = v1;
  v4 = sub_23E7DCEC8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_23E7DC9D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F48, &qword_23E7E58F0);
  sub_23E7D8320();
  v0[5] = sub_23E7DCEB8();
  sub_23E7DD0B8();
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DC9E8();
  sub_23E7DCEE8();

  v0[6] = sub_23E7DCEF8();
  v7 = *(MEMORY[0x277CD7F08] + 4);
  v10 = (*MEMORY[0x277CD7F08] + MEMORY[0x277CD7F08]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E7D6240;

  return v10();
}

uint64_t sub_23E7D6240()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23E7D63C8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_23E7D635C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E7D635C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23E7D63C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[8];

  return v4();
}

uint64_t sub_23E7D6440(_OWORD *a1)
{
  *(v2 + 240) = v1;
  v4 = sub_23E7DD148();
  *(v2 + 248) = v4;
  v5 = *(v4 - 8);
  *(v2 + 256) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8) - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F28, &qword_23E7E58D0) - 8) + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F30, &qword_23E7E58D8) - 8) + 64) + 15;
  *(v2 + 288) = swift_task_alloc();
  v10 = sub_23E7DCFA8();
  *(v2 + 296) = v10;
  v11 = *(v10 - 8);
  *(v2 + 304) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  v13 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v13;
  *(v2 + 48) = a1[2];
  *(v2 + 59) = *(a1 + 43);

  return MEMORY[0x2822009F8](sub_23E7D6650, 0, 0);
}

uint64_t sub_23E7D6650()
{
  v49 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  sub_23E7DCF98();
  *(v0 + 76) = *MEMORY[0x277CD7BE0];
  (*(v4 + 104))(v2);
  sub_23E7D82D8(&qword_27E350F38, MEMORY[0x277CD7BF8]);
  v5 = sub_23E7DD2E8();
  v6 = *(v4 + 8);
  *(v0 + 352) = v6;
  *(v0 + 360) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v46 = *(v0 + 272);
    v47 = *(v0 + 248);
    v10 = *(v0 + 240);
    sub_23E7DCF08();
    sub_23E7DCEF8();
    sub_23E7DD198();

    v11 = *MEMORY[0x277CD7EB8];
    v12 = sub_23E7DD068();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v8, v11, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    sub_23E7DD168();

    sub_23E7DCEF8();
    sub_23E7DD198();

    v14 = *MEMORY[0x277CD7EB0];
    v15 = sub_23E7DD058();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v7, v14, v15);
    (*(v16 + 56))(v7, 0, 1, v15);
    sub_23E7DD158();

    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = 1;
    *(v17 + 24) = v10;
    v18 = OBJC_IVAR____TtC13AdaptiveMusic16AppleMusicPlayer___observationRegistrar;
    *(v0 + 208) = v10;
    *(v0 + 384) = v18;
    *(v0 + 392) = sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
    sub_23E7DCD98();

    sub_23E7DCEF8();
    sub_23E7DCED8();

    sub_23E7DD0C8();

    v19 = (*(v9 + 48))(v46, 1, v47);
    v20 = *(v0 + 272);
    if (v19)
    {
      sub_23E7996FC(*(v0 + 272), &qword_27E350278, &qword_23E7E27A8);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v31 = *(v0 + 256);
      v30 = *(v0 + 264);
      v32 = *(v0 + 248);
      (*(v31 + 16))(v30, *(v0 + 272), v32);
      sub_23E7996FC(v20, &qword_27E350278, &qword_23E7E27A8);
      v21 = sub_23E7DD0E8();
      v22 = v33;
      (*(v31 + 8))(v30, v32);
    }

    v34 = *(*(v0 + 240) + 24);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = v21;
    v36[4] = v22;
    v37 = *(v34 + 24);
    *(v34 + 16) = sub_23E7D82CC;
    *(v34 + 24) = v36;

    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v38 = sub_23E7DCE88();
    *(v0 + 400) = __swift_project_value_buffer(v38, qword_27E35A110);
    sub_23E794BD8(v0 + 16, v0 + 80);
    v39 = sub_23E7DCE68();
    v40 = sub_23E7DD5E8();
    sub_23E7A4C68(v0 + 16);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_23E7D2CA4(*(v0 + 32), *(v0 + 40), &v48);
      _os_log_impl(&dword_23E790000, v39, v40, "AppleMusicPlayer playing playlist %s.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x23EF13B60](v42, -1, -1);
      MEMORY[0x23EF13B60](v41, -1, -1);
    }

    v43 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v43;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 187) = *(v0 + 59);
    v44 = swift_task_alloc();
    *(v0 + 408) = v44;
    *v44 = v0;
    v44[1] = sub_23E7D76F8;

    return sub_23E7BAE00((v0 + 144));
  }

  else
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v23 = sub_23E7DCE88();
    *(v0 + 368) = __swift_project_value_buffer(v23, qword_27E35A110);
    v24 = sub_23E7DCE68();
    v25 = sub_23E7DD5E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23E790000, v24, v25, "AppleMusicPlayer not authorized for Apple Music falling back to requesting authorization", v26, 2u);
      MEMORY[0x23EF13B60](v26, -1, -1);
    }

    v27 = *(MEMORY[0x277CD7C18] + 4);
    v28 = swift_task_alloc();
    *(v0 + 376) = v28;
    *v28 = v0;
    v28[1] = sub_23E7D6DC8;
    v29 = *(v0 + 328);

    return MEMORY[0x282124430](v29);
  }
}

uint64_t sub_23E7D6DC8()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E7D6EC4, 0, 0);
}

uint64_t sub_23E7D6EC4()
{
  v78 = v0;
  v1 = *(v0 + 76);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v4 + 16);
  v5(v2, *(v0 + 328), v3);
  if ((*(v4 + 88))(v2, v3) == v1)
  {
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);
    v7(*(v0 + 328), v9);
    v7(v8, v9);
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);
    v75 = *(v0 + 272);
    v76 = *(v0 + 248);
    v13 = *(v0 + 240);
    sub_23E7DCF08();
    sub_23E7DCEF8();
    sub_23E7DD198();

    v14 = *MEMORY[0x277CD7EB8];
    v15 = sub_23E7DD068();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v11, v14, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    sub_23E7DD168();

    sub_23E7DCEF8();
    sub_23E7DD198();

    v17 = *MEMORY[0x277CD7EB0];
    v18 = sub_23E7DD058();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v10, v17, v18);
    (*(v19 + 56))(v10, 0, 1, v18);
    sub_23E7DD158();

    swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = 1;
    *(v20 + 24) = v13;
    v21 = OBJC_IVAR____TtC13AdaptiveMusic16AppleMusicPlayer___observationRegistrar;
    *(v0 + 208) = v13;
    *(v0 + 384) = v21;
    *(v0 + 392) = sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer);
    sub_23E7DCD98();

    sub_23E7DCEF8();
    sub_23E7DCED8();

    sub_23E7DD0C8();

    v22 = (*(v12 + 48))(v75, 1, v76);
    v23 = *(v0 + 272);
    if (v22)
    {
      sub_23E7996FC(*(v0 + 272), &qword_27E350278, &qword_23E7E27A8);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v61 = *(v0 + 256);
      v60 = *(v0 + 264);
      v62 = *(v0 + 248);
      (*(v61 + 16))(v60, *(v0 + 272), v62);
      sub_23E7996FC(v23, &qword_27E350278, &qword_23E7E27A8);
      v24 = sub_23E7DD0E8();
      v25 = v63;
      (*(v61 + 8))(v60, v62);
    }

    v64 = *(*(v0 + 240) + 24);
    v65 = swift_allocObject();
    swift_weakInit();
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = v24;
    v66[4] = v25;
    v67 = *(v64 + 24);
    *(v64 + 16) = sub_23E7D82CC;
    *(v64 + 24) = v66;

    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v68 = sub_23E7DCE88();
    *(v0 + 400) = __swift_project_value_buffer(v68, qword_27E35A110);
    sub_23E794BD8(v0 + 16, v0 + 80);
    v69 = sub_23E7DCE68();
    v70 = sub_23E7DD5E8();
    sub_23E7A4C68(v0 + 16);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v77[0] = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_23E7D2CA4(*(v0 + 32), *(v0 + 40), v77);
      _os_log_impl(&dword_23E790000, v69, v70, "AppleMusicPlayer playing playlist %s.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x23EF13B60](v72, -1, -1);
      MEMORY[0x23EF13B60](v71, -1, -1);
    }

    v73 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v73;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 187) = *(v0 + 59);
    v74 = swift_task_alloc();
    *(v0 + 408) = v74;
    *v74 = v0;
    v74[1] = sub_23E7D76F8;

    return sub_23E7BAE00((v0 + 144));
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    v28 = *(v0 + 328);
    v29 = *(v0 + 312);
    v30 = *(v0 + 296);
    (*(v0 + 352))(*(v0 + 320), v30);
    v5(v29, v28, v30);
    v31 = sub_23E7DCE68();
    v32 = sub_23E7DD5D8();
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 352);
    v34 = *(v0 + 360);
    v36 = *(v0 + 312);
    v37 = *(v0 + 296);
    if (v33)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v77[0] = v39;
      *v38 = 136315138;
      sub_23E7D82D8(&qword_27E350F40, MEMORY[0x277CD7BF8]);
      v40 = sub_23E7DD8D8();
      v42 = v41;
      v35(v36, v37);
      v43 = sub_23E7D2CA4(v40, v42, v77);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_23E790000, v31, v32, "AppleMusicPlayer not authorized for Apple Music playback with status %s aborting", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x23EF13B60](v39, -1, -1);
      MEMORY[0x23EF13B60](v38, -1, -1);
    }

    else
    {

      v35(v36, v37);
    }

    v45 = *(v0 + 352);
    v44 = *(v0 + 360);
    v46 = *(v0 + 328);
    v47 = *(v0 + 296);
    sub_23E799564();
    swift_allocError();
    *v48 = 2;
    swift_willThrow();
    v45(v46, v47);
    v50 = *(v0 + 336);
    v49 = *(v0 + 344);
    v52 = *(v0 + 320);
    v51 = *(v0 + 328);
    v53 = *(v0 + 312);
    v55 = *(v0 + 280);
    v54 = *(v0 + 288);
    v57 = *(v0 + 264);
    v56 = *(v0 + 272);

    v58 = *(v0 + 8);

    return v58();
  }
}

uint64_t sub_23E7D76F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23E7D7A44, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[54] = v7;
    *v7 = v6;
    v7[1] = sub_23E7D7878;

    return sub_23E7D5FE0(a1);
  }
}

uint64_t sub_23E7D7878()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  v3[55] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7D7E48, 0, 0);
  }

  else
  {
    v4 = v3[52];
    v6 = v3[42];
    v5 = v3[43];
    v8 = v3[40];
    v7 = v3[41];
    v9 = v3[39];
    v11 = v3[35];
    v10 = v3[36];
    v12 = v3[33];
    v13 = v3[34];

    v14 = v3[1];

    return v14();
  }
}

uint64_t sub_23E7D7A44()
{
  v1 = v0[53];
  type metadata accessor for Code(0);
  v0[27] = -7007;
  v2 = v1;
  sub_23E7D82D8(&qword_27E34FCD0, type metadata accessor for Code);
  v3 = sub_23E7DCBA8();

  if (v3)
  {
    v4 = v0[49];
    v5 = v0[50];
    v6 = v0[48];
    v7 = v0[30];

    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = 0;
    *(v8 + 24) = v7;
    v0[29] = v7;
    sub_23E7DCD98();

    v9 = sub_23E7DCE68();
    v10 = sub_23E7DD5D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23E790000, v9, v10, "AppleMusicPlayer got privacy acknowledgement error", v11, 2u);
      MEMORY[0x23EF13B60](v11, -1, -1);
    }

    sub_23E799564();
    swift_allocError();
    *v12 = 5;
    swift_willThrow();
  }

  else
  {
    v13 = v0[50];
    v14 = v1;
    v15 = sub_23E7DCE68();
    v16 = sub_23E7DD5D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_23E790000, v15, v16, "AppleMusicPlayer failed to schedule playlist: %@", v17, 0xCu);
      sub_23E7996FC(v18, qword_27E34FEA8, &unk_23E7E1AB0);
      MEMORY[0x23EF13B60](v18, -1, -1);
      MEMORY[0x23EF13B60](v17, -1, -1);
    }

    v22 = v0[48];
    v21 = v0[49];
    v23 = v0[30];

    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = 0;
    *(v24 + 24) = v23;
    v0[28] = v23;
    sub_23E7DCD98();

    sub_23E799564();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
  }

  v27 = v0[42];
  v26 = v0[43];
  v29 = v0[40];
  v28 = v0[41];
  v30 = v0[39];
  v32 = v0[35];
  v31 = v0[36];
  v34 = v0[33];
  v33 = v0[34];

  v35 = v0[1];

  return v35();
}

uint64_t sub_23E7D7E48()
{
  v1 = v0[52];

  v2 = v0[55];
  type metadata accessor for Code(0);
  v0[27] = -7007;
  v3 = v2;
  sub_23E7D82D8(&qword_27E34FCD0, type metadata accessor for Code);
  v4 = sub_23E7DCBA8();

  if (v4)
  {
    v5 = v0[49];
    v6 = v0[50];
    v7 = v0[48];
    v8 = v0[30];

    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = 0;
    *(v9 + 24) = v8;
    v0[29] = v8;
    sub_23E7DCD98();

    v10 = sub_23E7DCE68();
    v11 = sub_23E7DD5D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23E790000, v10, v11, "AppleMusicPlayer got privacy acknowledgement error", v12, 2u);
      MEMORY[0x23EF13B60](v12, -1, -1);
    }

    sub_23E799564();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
  }

  else
  {
    v14 = v0[50];
    v15 = v2;
    v16 = sub_23E7DCE68();
    v17 = sub_23E7DD5D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_23E790000, v16, v17, "AppleMusicPlayer failed to schedule playlist: %@", v18, 0xCu);
      sub_23E7996FC(v19, qword_27E34FEA8, &unk_23E7E1AB0);
      MEMORY[0x23EF13B60](v19, -1, -1);
      MEMORY[0x23EF13B60](v18, -1, -1);
    }

    v23 = v0[48];
    v22 = v0[49];
    v24 = v0[30];

    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = 0;
    *(v25 + 24) = v24;
    v0[28] = v24;
    sub_23E7DCD98();

    sub_23E799564();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
  }

  v28 = v0[42];
  v27 = v0[43];
  v30 = v0[40];
  v29 = v0[41];
  v31 = v0[39];
  v33 = v0[35];
  v32 = v0[36];
  v35 = v0[33];
  v34 = v0[34];

  v36 = v0[1];

  return v36();
}

uint64_t sub_23E7D8254()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7D828C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7D82D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E7D8320()
{
  result = qword_27E350F50;
  if (!qword_27E350F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350F48, &qword_23E7E58F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350F50);
  }

  return result;
}

uint64_t Library.userLibraryPlaylists.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E7D8450;

  return sub_23E7C7C58();
}

uint64_t sub_23E7D8450(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t Library.isSubscriber.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23E7D85F0;

  return sub_23E7988F4();
}

uint64_t sub_23E7D85F0(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_23E7D8708, v3, 0);
}

uint64_t sub_23E7D8708()
{
  if (*(v0 + 32) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_23E7DD8E8();
  }

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_23E7D87D0()
{
  v0 = type metadata accessor for Library();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v5 = type metadata accessor for Manifest();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask) = 0;
  *(v3 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask) = 0;
  qword_27E350F60 = v3;
  return result;
}

uint64_t Library.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v5 = type metadata accessor for Manifest();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask) = 0;
  *(v3 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask) = 0;
  return v3;
}

uint64_t static Library.shared.getter()
{
  if (qword_27E34FB50 != -1)
  {
    swift_once();
  }

  return sub_23E7DC9E8();
}

uint64_t sub_23E7D8964(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F98, &qword_23E7E59E0);
  v2[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  v2[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7D8A90, v1, 0);
}

uint64_t sub_23E7D8A90()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v0[17] = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  swift_beginAccess();
  sub_23E7DB554(v2 + v3, v1);
  v4 = type metadata accessor for Manifest();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[16];
  if (v6 == 1)
  {
    v8 = v0[9];
    sub_23E7996FC(v7, &qword_27E350060, &qword_23E7E1E38);
    v9 = OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask;
    v0[18] = OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask;
    v10 = *(v8 + v9);
    v0[19] = v10;
    if (v10)
    {
      v11 = *(MEMORY[0x277D857D0] + 4);
      sub_23E7DC9E8();
      v12 = swift_task_alloc();
      v0[20] = v12;
      *v12 = v0;
      v12[1] = sub_23E7D8DC4;
      v13 = v0[13];
      v14 = v0[14];
    }

    else
    {
      v23 = v0[9];
      v24 = v0[10];
      v25 = sub_23E7DD558();
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      v26 = sub_23E7DB5C4();
      v27 = swift_allocObject();
      v27[2] = v23;
      v27[3] = v26;
      v27[4] = v23;
      swift_retain_n();
      v10 = sub_23E79D130(0, 0, v24, &unk_23E7E59F0, v27);
      v0[21] = v10;
      v28 = *(v8 + v9);
      *(v8 + v9) = v10;
      sub_23E7DC9E8();

      v29 = *(MEMORY[0x277D857D0] + 4);
      v30 = swift_task_alloc();
      v0[22] = v30;
      *v30 = v0;
      v30[1] = sub_23E7D8FC8;
      v14 = v0[14];
      v13 = v0[12];
    }

    v31 = MEMORY[0x277D84A98];
    v32 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v13, v10, v14, v31, v32);
  }

  else
  {
    v15 = v0[8];
    sub_23E7C5538(v7, v15);
    (*(v5 + 56))(v15, 0, 1, v4);
    v17 = v0[15];
    v16 = v0[16];
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[10];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_23E7D8DC4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E7D8ED4, v2, 0);
}

uint64_t sub_23E7D8ED4()
{
  v1 = v0[13];
  v2 = v0[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return MEMORY[0x2821FECA8]();
  }

  else
  {
    v3 = v0[19];
    v4 = v0[8];

    sub_23E7DB710(v1, v4);
    v6 = v0[15];
    v5 = v0[16];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[10];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23E7D8FC8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23E7D90F4, v3, 0);
}

uint64_t sub_23E7D90F4()
{
  v1 = v0[11];
  v2 = v0[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return MEMORY[0x2821FECA8]();
  }

  else
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[15];
    v6 = v0[8];
    v7 = v0[9];
    sub_23E7DB710(v2, v5);
    swift_beginAccess();
    sub_23E7DB780(v5, v7 + v4);
    swift_endAccess();
    v8 = *(v7 + v3);
    *(v7 + v3) = 0;

    sub_23E7DB554(v7 + v4, v6);
    v10 = v0[15];
    v9 = v0[16];
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[10];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_23E7D9230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return sub_23E7D92CC(a1);
}

uint64_t sub_23E7D92CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23E7D9368;

  return sub_23E796820(a1);
}

uint64_t sub_23E7D9368()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_23E7D952C;
  }

  else
  {
    v4 = sub_23E7D9490;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23E7D9490()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Manifest();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23E7D952C()
{
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23E790000, v4, v5, "Failed to fetch manifest: %@", v8, 0xCu);
    sub_23E7996FC(v9, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v9, -1, -1);
    MEMORY[0x23EF13B60](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = type metadata accessor for Manifest();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v0[1];

  return v14();
}

uint64_t Library.init()()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v2 = type metadata accessor for Manifest();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask) = 0;
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask) = 0;
  return v0;
}

uint64_t sub_23E7D979C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23E7D9840;

  return sub_23E7988F4();
}

uint64_t sub_23E7D9840(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v9 = *v1;

  *(v3 + 40) = a1 ^ 1;
  v5 = (v3 + 40);
  v6 = swift_task_alloc();
  *(v5 - 1) = v6;
  *v6 = v9;
  v6[1] = sub_23E7D9984;
  v7 = *(v5 - 3);

  return Library.moods(for:)(v5);
}

uint64_t sub_23E7D9984(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t Library.suggestedContent.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_23E7D9B24;

  return sub_23E7988F4();
}

uint64_t sub_23E7D9B24(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_23E7D9C3C, v3, 0);
}

uint64_t Library.moods(for:)(_BYTE *a1)
{
  v2[2] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[3] = v5;
  v6 = swift_task_alloc();
  v2[4] = v6;
  if (!*a1)
  {
    v5 = v6;
    v7 = swift_task_alloc();
    v2[5] = v7;
    *v7 = v2;
    v8 = sub_23E7D9DF4;
    goto LABEL_5;
  }

  if (*a1 == 1)
  {
    v7 = swift_task_alloc();
    v2[6] = v7;
    *v7 = v2;
    v8 = sub_23E7D9FF8;
LABEL_5:
    v7[1] = v8;

    return sub_23E7D8964(v5);
  }

  v10 = v2[1];
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_23E7D9DF4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E7D9F04, v2, 0);
}

uint64_t sub_23E7D9F04()
{
  v1 = v0[4];
  v2 = type metadata accessor for Manifest();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 28));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_23E7D9FF8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E7DA108, v2, 0);
}

uint64_t sub_23E7DA108()
{
  v1 = v0[3];
  v2 = type metadata accessor for Manifest();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 32));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6(v3);
}

uint64_t Library.deinit()
{
  sub_23E7996FC(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest, &qword_27E350060, &qword_23E7E1E38);
  v1 = *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask);

  v2 = *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Library.__deallocating_deinit()
{
  sub_23E7996FC(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest, &qword_27E350060, &qword_23E7E1E38);
  v1 = *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask);

  v2 = *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t Library.appleMusicMoods.getter()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v1[3] = v3;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_23E7DA3B8;

  return sub_23E7D8964(v3);
}

uint64_t sub_23E7DA3B8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E7DA4C8, v2, 0);
}

uint64_t sub_23E7DA4C8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Manifest();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 28));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t Library.uploadedAudioMoods.getter()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v1[3] = v3;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_23E7DA688;

  return sub_23E7D8964(v3);
}

uint64_t sub_23E7DA688()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E7DA798, v2, 0);
}

uint64_t sub_23E7DA798()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Manifest();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 32));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t Library.contains(playlist:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  v3 = *(a1 + 8);
  *(v2 + 96) = *a1;
  *(v2 + 104) = v3;
  *(v2 + 76) = *(a1 + 56);
  *(v2 + 77) = *(a1 + 57);
  v4 = swift_task_alloc();
  *(v2 + 112) = v4;
  *v4 = v2;
  v4[1] = sub_23E7DA940;

  return sub_23E7988F4();
}

uint64_t sub_23E7DA940(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 77);
  v6 = *v1;

  if (v5)
  {
    if (v5 == 1)
    {
      if (a1)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (a1)
    {
      v11 = sub_23E7C7C58;
      v7 = swift_task_alloc();
      *(v3 + 120) = v7;
      *v7 = v6;
      v8 = sub_23E7DAB30;
      goto LABEL_9;
    }

LABEL_12:
    v10 = *(v6 + 8);

    return v10(0);
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = sub_23E7988F4;
  v7 = swift_task_alloc();
  *(v3 + 136) = v7;
  *v7 = v6;
  v8 = sub_23E7DAD34;
LABEL_9:
  v7[1] = v8;

  return v11();
}

uint64_t sub_23E7DAB30(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_23E7DAC48, v3, 0);
}

uint64_t sub_23E7DAC48()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 78);
  v3 = *(v0 + 76);
  v4 = *(v0 + 104);
  *(v0 + 16) = *(v0 + 96);
  v5 = *(v0 + 80);
  *(v0 + 24) = v4;
  v6 = *(v5 + 48);
  v7 = *(v5 + 32);
  *(v0 + 32) = *(v5 + 16);
  *(v0 + 48) = v7;
  *(v0 + 64) = v6;
  *(v0 + 72) = v3;
  *(v0 + 73) = 2;
  *(v0 + 74) = v2;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 16;
  v9 = sub_23E7CB3F4(sub_23E7DB254, v8, v1);

  v10 = *(v0 + 8);

  return v10(v9 & 1);
}

uint64_t sub_23E7DAD34(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v9 = *v1;

  *(v3 + 75) = a1 ^ 1;
  v5 = v3 + 75;
  v6 = swift_task_alloc();
  *(v5 + 69) = v6;
  *v6 = v9;
  v6[1] = sub_23E7DAE78;
  v7 = *(v5 + 13);

  return Library.moods(for:)(v5);
}

uint64_t sub_23E7DAE78(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_23E7DAF90, v3, 0);
}

void sub_23E7DAF90()
{
  v1 = *(v0 + 152);
  v27 = *(v1 + 16);
  if (v27)
  {
    v2 = 0;
    v3 = 0xEC00000079746976;
    v4 = 0xE900000000000067;
    v5 = 0x6D6F74737563;
    v6 = (v1 + 56);
    v7 = 0xE500000000000000;
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v6 - 24);
      if (v8 <= 1)
      {
        if (*(v6 - 24))
        {
          v9 = 0x6C6C696863;
        }

        else
        {
          v9 = 0x69746375646F7270;
        }

        if (*(v6 - 24))
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = v3;
        }
      }

      else if (v8 == 2)
      {
        v10 = 0xE500000000000000;
        v9 = 0x7065656C73;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x6E6965626C6C6577;
        }

        else
        {
          v9 = 0x6D6F74737563;
        }

        if (v8 == 3)
        {
          v10 = 0xE900000000000067;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }

      v12 = *(v6 - 1);
      v11 = *v6;
      ++v2;
      v13 = *(v0 + 76);
      if (v13 == 3)
      {
        v5 = 0x6E6965626C6C6577;
      }

      else
      {
        v4 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v5 = 0x7065656C73;
        v4 = 0xE500000000000000;
      }

      if (*(v0 + 76))
      {
        v14 = 0x6C6C696863;
      }

      else
      {
        v14 = 0x69746375646F7270;
      }

      if (!*(v0 + 76))
      {
        v7 = v3;
      }

      if (*(v0 + 76) <= 1u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v5;
      }

      if (*(v0 + 76) <= 1u)
      {
        v16 = v7;
      }

      else
      {
        v16 = v4;
      }

      if (v9 == v15 && v10 == v16)
      {
        v20 = *(v0 + 152);
        v21 = *(v6 - 1);
        sub_23E7DC9D8();
        sub_23E7DC9D8();

        goto LABEL_43;
      }

      v17 = v3;
      v28 = sub_23E7DD8E8();
      sub_23E7DC9D8();
      sub_23E7DC9D8();

      if (v28)
      {
        break;
      }

      v6 += 4;
      v3 = v17;
      v4 = 0xE900000000000067;
      v5 = 0x6D6F74737563;
      v7 = 0xE500000000000000;
      if (v27 == v2)
      {
        v18 = 0;
        v19 = *(v0 + 152);
        goto LABEL_50;
      }
    }

    v22 = *(v0 + 152);
LABEL_43:

    v23 = (v11 + 40);
    v24 = *(v11 + 16) + 1;
    do
    {
      v18 = --v24 != 0;
      if (!v24)
      {
        break;
      }

      if (*(v23 - 1) == *(v0 + 96) && *v23 == *(v0 + 104))
      {
        break;
      }

      v23 += 8;
    }

    while ((sub_23E7DD8E8() & 1) == 0);
  }

  else
  {
    v18 = 0;
  }

LABEL_50:

  v26 = *(v0 + 8);

  v26(v18);
}

uint64_t sub_23E7DB254(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v9[0] = a1[2];
  *(v9 + 11) = *(a1 + 43);
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v7[0] = v2[2];
  *(v7 + 11) = *(v2 + 43);
  return _s13AdaptiveMusic4MoodV8PlaylistV2eeoiySbAE_AEtFZ_0(v8, v6) & 1;
}

uint64_t type metadata accessor for Library()
{
  result = qword_27E350F80;
  if (!qword_27E350F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E7DB318()
{
  sub_23E7DB4FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of Library.moods.getter()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E7D8450;

  return v6();
}

void sub_23E7DB4FC()
{
  if (!qword_27E350F90)
  {
    type metadata accessor for Manifest();
    v0 = sub_23E7DD658();
    if (!v1)
    {
      atomic_store(v0, &qword_27E350F90);
    }
  }
}

uint64_t sub_23E7DB554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7DB5C4()
{
  result = qword_27E350FA0;
  if (!qword_27E350FA0)
  {
    type metadata accessor for Library();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350FA0);
  }

  return result;
}

uint64_t sub_23E7DB61C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7DB65C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E7A23AC;

  return sub_23E7D9230(a1);
}

uint64_t sub_23E7DB710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7DB780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7DB800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350FE0, &qword_23E7E5A40);
  sub_23E7DCCA8();
  if (v27)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v10 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
    v9 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange + 8];
    sub_23E7DC9E8();

    HIBYTE(v25) = 0;
    v10(&v25 + 7);
  }

  else
  {
    v11 = v26;
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v12 = sub_23E7DCE88();
    __swift_project_value_buffer(v12, qword_27E35A110);
    v13 = sub_23E7DCE68();
    v14 = sub_23E7DD5E8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_23E790000, v13, v14, "QueuePlayer playback rate changed to %f", v15, 0xCu);
      MEMORY[0x23EF13B60](v15, -1, -1);
    }

    if (v11 <= 0.0)
    {
      v17 = swift_unknownObjectUnownedLoadStrong();
      v18 = *&v17[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_player];

      v19 = [v18 currentItem];
      if (v19)
      {

        v16 = 2;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 3;
    }

    v20 = sub_23E7DD558();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    sub_23E7DD538();
    sub_23E7DC9E8();
    v21 = sub_23E7DD528();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = a3;
    *(v22 + 40) = v16;
    sub_23E79CE30(0, 0, v7, &unk_23E7E5A50, v22);
  }
}

uint64_t sub_23E7DBAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_23E7DD538();
  *(v5 + 24) = sub_23E7DD528();
  v7 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7DBB70, v7, v6);
}

uint64_t sub_23E7DBB70()
{
  v10 = v0;
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
  v5 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange + 8];
  sub_23E7DC9E8();

  v9 = v1;
  v6(&v9);

  v7 = *(v0 + 8);

  return v7();
}

void sub_23E7DBC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350FD0, &qword_23E7E5A20);
  sub_23E7DCCA8();
  v8 = v30;
  if (v30 != 1)
  {
    sub_23E7DCCB8();
    v9 = v30;
    if (v30 == 1)
    {
      sub_23E7DC1AC(v8);
    }

    else
    {
      if (qword_27E34FB58 != -1)
      {
        swift_once();
      }

      v10 = sub_23E7DCE88();
      __swift_project_value_buffer(v10, qword_27E35A110);
      sub_23E7DC1BC(v9);
      sub_23E7DC1BC(v8);
      v11 = sub_23E7DCE68();
      v12 = sub_23E7DD5C8();
      sub_23E7DC1AC(v9);
      sub_23E7DC1AC(v8);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v9;
        v30 = v28;
        *v13 = 136315394;
        v14 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350FD8, &qword_23E7E5A38);
        v15 = sub_23E7DD358();
        v17 = sub_23E7D2CA4(v15, v16, &v30);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v29 = v8;
        v18 = v8;
        v19 = sub_23E7DD358();
        v21 = sub_23E7D2CA4(v19, v20, &v30);

        *(v13 + 14) = v21;
        _os_log_impl(&dword_23E790000, v11, v12, "currentItem updated from %s to: %s", v13, 0x16u);
        v22 = v28;
        swift_arrayDestroy();
        MEMORY[0x23EF13B60](v22, -1, -1);
        MEMORY[0x23EF13B60](v13, -1, -1);
      }

      v23 = sub_23E7DD558();
      (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      sub_23E7DD538();
      sub_23E7DC1BC(v9);
      sub_23E7DC1BC(v8);
      sub_23E7DC9E8();
      v24 = sub_23E7DD528();
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = a3;
      v25[5] = v9;
      v25[6] = v8;
      sub_23E79CE30(0, 0, v7, &unk_23E7E5A30, v25);
      sub_23E7DC1AC(v8);
      sub_23E7DC1AC(v9);
    }
  }
}

uint64_t sub_23E7DBF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23E7DD538();
  v6[5] = sub_23E7DD528();
  v8 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7DC01C, v8, v7);
}

uint64_t sub_23E7DC01C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onItemChange];
  v6 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onItemChange + 8];
  sub_23E7DC9E8();

  v7(v3, v2);

  v8 = v0[1];

  return v8();
}

void sub_23E7DC1AC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_23E7DC1BC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23E7DC1CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23E7DC21C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23E7A23AC;

  return sub_23E7DBF80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23E7DC2E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23E7DC324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23E7A6BDC;

  return sub_23E7DBAD4(a1, v4, v5, v6, v7);
}

uint64_t sub_23E7DC3E8()
{
  v0 = sub_23E7DCE88();
  __swift_allocate_value_buffer(v0, qword_27E35A110);
  __swift_project_value_buffer(v0, qword_27E35A110);
  return sub_23E7DCE78();
}

uint64_t sub_23E7DC458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23E7DC5EC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_23E7DC484(void *a1)
{
  result = sub_23E7DC534(*v1, *(v1 + 8));
  if (!v2)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_23E7DD9F8();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_23E7DD908();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_23E7DC534(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_23E7DC9D8();
    while (1)
    {
      sub_23E7DD3B8();
      if (!v3)
      {
        break;
      }

      v4 = sub_23E7DD2D8();

      if ((v4 & 1) == 0)
      {
      }
    }
  }

  sub_23E7DC6DC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_23E7DC5EC(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7DD9D8();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = sub_23E7DD8F8();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_23E7DC534(v3, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_23E7DC6DC()
{
  result = qword_27E350FE8;
  if (!qword_27E350FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350FE8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_23E7DC7A4()
{
  result = qword_27E350FF0;
  if (!qword_27E350FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350FF0);
  }

  return result;
}