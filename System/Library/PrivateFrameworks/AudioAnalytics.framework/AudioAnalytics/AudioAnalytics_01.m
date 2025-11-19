uint64_t sub_1C0BDF908(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C0BDF9B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C0BEC1E8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1C0BEC2B8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C0BDFB28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C0BEC1E8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1C0BEC2C8();

      sub_1C0BEC098();
      v14 = sub_1C0BEC2F8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C0BDFCD8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C0BEC1E8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1C0BEC2B8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ReporterState(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

BOOL sub_1C0BDFE84(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1C0BEC288() & 1;
    }
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

uint64_t sub_1C0BDFF68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C0BDFF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0BDFFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C0BE0058()
{
  if (*(v0 + 48) >= 2u)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v2 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v2, qword_1ED6F78B8);
    v3 = swift_allocObject();
    *(v3 + 16) = 0xD00000000000005ALL;
    *(v3 + 24) = 0x80000001C0BEDF70;
    v4 = swift_allocObject();
    *(v4 + 16) = 0x286E6F646E616261;
    *(v4 + 24) = 0xE900000000000029;
    v5 = swift_allocObject();
    *(v5 + 16) = 75;
    oslog = sub_1C0BEBF88();
    v6 = sub_1C0BEC138();
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v7 = swift_allocObject();
    *(v7 + 16) = 8;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C0BE0B0C;
    *(v8 + 24) = v3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1C0BE0B08;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = 32;
    v11 = swift_allocObject();
    *(v11 + 16) = 8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1C0BE0B0C;
    *(v12 + 24) = v4;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C0BE0B08;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C0BE0B14;
    *(v17 + 24) = v5;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C0BE0B2C;
    *(v18 + 24) = v17;
    v22 = v6;
    if (os_log_type_enabled(oslog, v6))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      v28 = 0;
      *v19 = 770;
      v21 = v20;
      v29 = v19 + 2;
      v25 = sub_1C0BE0B18;
      v26 = v23;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0B18;
      v26 = v7;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0AF4;
      v26 = v9;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0B18;
      v26 = v10;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0B18;
      v26 = v11;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0AF4;
      v26 = v13;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0B18;
      v26 = v14;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0B18;
      v26 = v16;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      v25 = sub_1C0BE0AF8;
      v26 = v18;
      sub_1C0BDAEA4(&v25, &v29, &v28, &v27);

      _os_log_impl(&dword_1C0BC7000, oslog, v22, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v21, -1, -1);
      MEMORY[0x1C68E0970](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v1 = *(v0 + 16);
    *(v0 + 16) = MEMORY[0x1E69E7CC0];

    *(v0 + 48) = 2;
  }
}

uint64_t sub_1C0BE0720(uint64_t result)
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

  result = sub_1C0BDF4CC(result, v12, 1, v3);
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

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_1C0BE0830(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C0BE08C0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0BE0984()
{
  result = qword_1EBE52918;
  if (!qword_1EBE52918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52918);
  }

  return result;
}

unint64_t sub_1C0BE09DC()
{
  result = qword_1EBE52920;
  if (!qword_1EBE52920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52920);
  }

  return result;
}

uint64_t sub_1C0BE0A30()
{
  v1 = *v0;
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](v1);
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BE0A78()
{
  v1 = *v0;
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](v1);
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BE0B30()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C0BE0B7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ReporterState(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v32[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v32[-1] - v10);
  sub_1C0BC9310(a1, &v32[-1] - v10, type metadata accessor for ReporterState);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    type metadata accessor for ActiveReporterState(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = *v11;
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(v21 + 16);
      v23 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
      if (*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
      {
        v24 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
      }

      else
      {
        type metadata accessor for MessageCache();
        v27 = swift_allocObject();
        *(v27 + 16) = sub_1C0BDE700();
        v31 = *(v2 + v23);
        *(v2 + v23) = v27;
      }

      sub_1C0BDF134(v22);

      *v9 = v21;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();

      v28 = sub_1C0BCD8D4(v9, 3);
      sub_1C0BD78EC(v9, type metadata accessor for ReporterState);
      [v28 createSessionWith_];
      [v28 setWithServiceType:*(v21 + 24) for:v22];
      swift_beginAccess();
      v29 = *(v21 + 32);

      v30 = sub_1C0BEC038();

      [v28 setWithConfiguration:v30 for:v22];
      swift_unknownObjectRelease();

      *a2 = v21;
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }

    v25 = *v11;

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
    v12 = type metadata accessor for StartedReporterData;
    v13 = v11 + *(v26 + 48);
  }

  else
  {
    v12 = type metadata accessor for ReporterState;
    v13 = v11;
  }

  sub_1C0BD78EC(v13, v12);
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v14 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v14, qword_1ED6F78B8);
  v15 = sub_1C0BEBF88();
  v16 = sub_1C0BEC138();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_1C0BD80C0(0xD00000000000006BLL, 0x80000001C0BEE100, v32);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1C0BD80C0(0xD00000000000003ELL, 0x80000001C0BEE170, v32);
    *(v17 + 22) = 2048;
    *(v17 + 24) = 197;
    _os_log_impl(&dword_1C0BC7000, v15, v16, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C68E0970](v18, -1, -1);
    MEMORY[0x1C68E0970](v17, -1, -1);
  }

  return sub_1C0BC9310(a1, a2, type metadata accessor for ReporterState);
}

void sub_1C0BE1000(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v46 = a2;
  v43[1] = a5;
  v44 = a4;
  v45 = a3;
  v6 = type metadata accessor for ReporterState(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v43 - v14;
  active = type metadata accessor for ActiveReporterState(0);
  v17 = *(*(active - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](active);
  v20 = (v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v43 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v43 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v43 - v27;
  sub_1C0BC9310(a1, v15, type metadata accessor for ReporterState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C0BC9028(v15, v28, type metadata accessor for ActiveReporterState);
    sub_1C0BC9028(v28, v20, type metadata accessor for ActiveReporterState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = *v20;
    if (EnumCaseMultiPayload == 1)
    {
      (v44)(*v20);
    }

    else
    {
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
      v46(v30);

      sub_1C0BD78EC(v20 + v37, type metadata accessor for StartedReporterData);
    }
  }

  else
  {
    v45 = v23;
    v46 = active;
    v44 = v26;
    sub_1C0BD78EC(v15, type metadata accessor for ReporterState);
    sub_1C0BC9310(a1, v13, type metadata accessor for ReporterState);
    v31 = sub_1C0BEBF88();
    v32 = sub_1C0BEC128();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      sub_1C0BC9310(v13, v10, type metadata accessor for ReporterState);
      v34 = swift_getEnumCaseMultiPayload();
      if (v34)
      {
        if (v34 == 1)
        {
          v35 = v10;
          v36 = v44;
        }

        else
        {
          v35 = v10;
          v36 = v45;
        }

        sub_1C0BC9028(v35, v36, type metadata accessor for ActiveReporterState);
        v39 = swift_getEnumCaseMultiPayload();
        v38 = *v36;
        if (v39 != 1)
        {
          v40 = *v36;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
          sub_1C0BD78EC(v36 + *(v41 + 48), type metadata accessor for StartedReporterData);
          v38 = v40;
        }
      }

      else
      {
        v38 = *v10;
      }

      v42 = *(v38 + 16);

      sub_1C0BD78EC(v13, type metadata accessor for ReporterState);
      *(v33 + 4) = v42;
      _os_log_impl(&dword_1C0BC7000, v31, v32, "Reporter disconnected. { func=setServiceType, reporterID=%lld }", v33, 0xCu);
      MEMORY[0x1C68E0970](v33, -1, -1);
    }

    else
    {
      sub_1C0BD78EC(v13, type metadata accessor for ReporterState);
    }
  }
}

uint64_t sub_1C0BE1468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = type metadata accessor for StartedReporterData(0);
  v4 = *(*(v51 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v51);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveReporterState(0);
  v14 = *(*(active - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](active);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v20 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v20, qword_1ED6F78B8);
  v21 = sub_1C0BEBF88();
  v22 = sub_1C0BEC148();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = v17;
    v24 = active;
    v25 = v23;
    *v23 = 0;
    _os_log_impl(&dword_1C0BC7000, v21, v22, "handleXPCInterruption called.", v23, 2u);
    v26 = v25;
    active = v24;
    v17 = v50;
    MEMORY[0x1C68E0970](v26, -1, -1);
  }

  sub_1C0BC9310(a1, v12, type metadata accessor for ReporterState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = a2;
    sub_1C0BC9028(v12, v19, type metadata accessor for ActiveReporterState);
    sub_1C0BC9310(v19, v17, type metadata accessor for ActiveReporterState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *v17;
    if (EnumCaseMultiPayload == 1)
    {
      if (*(v28 + 40))
      {
        v29 = *(v28 + 40);

        sub_1C0BE0058();
      }

      sub_1C0BD78EC(v19, type metadata accessor for ActiveReporterState);
      *v50 = v28;
    }

    else
    {
      v49 = active;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BC9028(v17 + *(v48 + 48), v8, type metadata accessor for StartedReporterData);
      v31 = *(v28 + 16);
      v32 = sub_1C0BCD8D4(a1, 3);
      [v32 createSessionWith_];
      [v32 setWithServiceType:*(v28 + 24) for:v31];
      swift_beginAccess();
      v33 = *(v28 + 32);

      v34 = sub_1C0BEC038();

      [v32 setWithConfiguration:v34 for:v31];

      v35 = v52;
      sub_1C0BEBF48();
      v36 = v51;
      *(v35 + *(v51 + 20)) = 0;
      [v32 startSessionFor_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0BED230;
      *(inited + 32) = 0xD000000000000011;
      v38 = inited + 32;
      *(inited + 40) = 0x80000001C0BEE1B0;
      *(inited + 72) = MEMORY[0x1E69E6370];
      *(inited + 48) = 1;
      v39 = sub_1C0BC8EF8(inited);
      swift_setDeallocating();
      sub_1C0BE206C(v38);
      v40 = *&v8[*(v36 + 20)];
      if (v40)
      {
        v56 = MEMORY[0x1E69E7668];
        LODWORD(v55) = v40;
        sub_1C0BCA658(&v55, v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v39;
        sub_1C0BCB360(v54, 0xD000000000000014, 0x80000001C0BEE1D0, isUniquelyReferenced_nonNull_native);
      }

      v42 = sub_1C0BEC038();

      [v32 sendWithMessage:v42 with:1 and:0 for:v31];

      if (*(v28 + 40) && (v43 = *(v28 + 40), , sub_1C0BE0058(), , *(v28 + 40)))
      {
        v44 = *(v28 + 40);

        sub_1C0BCDC98();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_1C0BD78EC(v8, type metadata accessor for StartedReporterData);
      sub_1C0BD78EC(v19, type metadata accessor for ActiveReporterState);
      v45 = *(v48 + 48);
      v46 = v50;
      *v50 = v28;
      sub_1C0BC9028(v52, v46 + v45, type metadata accessor for StartedReporterData);
      swift_storeEnumTagMultiPayload();
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1C0BD78EC(v12, type metadata accessor for ReporterState);
    return sub_1C0BC9310(a1, a2, type metadata accessor for ReporterState);
  }
}

uint64_t sub_1C0BE1B50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  v6 = *(*(active - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](active);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v39 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = type metadata accessor for ReporterState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0BC9310(a1, v18, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = *v18;
    v27 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
    if (*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
    {
      v28 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
    }

    else
    {
      type metadata accessor for MessageCache();
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1C0BDE700();
      v38 = *(v2 + v27);
      *(v2 + v27) = v37;
    }

    *v9 = v26;
    swift_storeEnumTagMultiPayload();

    sub_1C0BDD83C(v9);

    sub_1C0BD78EC(v9, type metadata accessor for ActiveReporterState);
    *a2 = v26;
    swift_storeEnumTagMultiPayload();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C0BC9028(v18, v14, type metadata accessor for ActiveReporterState);
    sub_1C0BC9310(v14, v12, type metadata accessor for ActiveReporterState);
    v20 = swift_getEnumCaseMultiPayload();
    v21 = *v12;
    if (v20 != 1)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BD78EC(v12 + *(v22 + 48), type metadata accessor for StartedReporterData);
    }

    v23 = *(v21 + 16);

    [sub_1C0BCD8D4(a1 3)];
    swift_unknownObjectRelease();
    v24 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
    if (*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
    {
      v25 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
    }

    else
    {
      type metadata accessor for MessageCache();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1C0BDE700();
      v36 = *(v2 + v24);
      *(v2 + v24) = v35;
    }

    sub_1C0BDD83C(v14);

    sub_1C0BC9028(v14, a2, type metadata accessor for ActiveReporterState);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v29 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v29, qword_1ED6F78B8);
  v30 = sub_1C0BEBF88();
  v31 = sub_1C0BEC138();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40 = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_1C0BD80C0(0xD00000000000006BLL, 0x80000001C0BEE100, &v40);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1C0BD80C0(0xD00000000000003ELL, 0x80000001C0BEE0C0, &v40);
    *(v32 + 22) = 2048;
    *(v32 + 24) = 175;
    _os_log_impl(&dword_1C0BC7000, v30, v31, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C68E0970](v33, -1, -1);
    MEMORY[0x1C68E0970](v32, -1, -1);
  }

  sub_1C0BC9310(a1, a2, type metadata accessor for ReporterState);
  return sub_1C0BD78EC(v18, type metadata accessor for ReporterState);
}

uint64_t sub_1C0BE206C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52938, &qword_1C0BED7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0BE20D4()
{
  v1 = v0;
  active = type metadata accessor for ActiveReporterState(0);
  v3 = *(*(active - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](active);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - v7);
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0BC9378(v1, v12, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C0BC9D60(v12, v8, type metadata accessor for ActiveReporterState);
      v14 = swift_getEnumCaseMultiPayload();
      v15 = *v8;
      if (v14 != 1)
      {
        v16 = *v8;
        v17 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
LABEL_8:
        sub_1C0BCA00C(v17, type metadata accessor for StartedReporterData);
        v15 = v16;
      }
    }

    else
    {
      sub_1C0BC9D60(v12, v6, type metadata accessor for ActiveReporterState);
      v18 = swift_getEnumCaseMultiPayload();
      v15 = *v6;
      if (v18 != 1)
      {
        v16 = *v6;
        v17 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v15 = *v12;
  }

  v19 = *(v15 + 16);

  return v19;
}

uint64_t sub_1C0BE23D4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1C0BE7AD0;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1C0BD3D50;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BCA800;
    aBlock[3] = &block_descriptor_219;
    v5 = _Block_copy(aBlock);
    v6 = v2;

    dispatch_sync(v1, v5);

    _Block_release(v5);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C0BE255C(char *a1)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v76);
  v6 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v69 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v69 - v10;
  v12 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_logger;
  v13 = sub_1C0BEBF88();
  v14 = sub_1C0BEC148();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C0BC7000, v13, v14, "Interruption handler: Server exited or crashed.", v15, 2u);
    MEMORY[0x1C68E0970](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
  swift_beginAccess();
  v17 = *&a1[v16];

  v19 = sub_1C0BE2C8C(v18);
  v75 = 0;
  if (!*(v19 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v74 = v2;
  v20 = sub_1C0BCA668(0x657463656E6E6F63, 0xE900000000000064);
  v21 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

  v73 = v16;
  v24 = *(*(v19 + 56) + 8 * v20);
  v25 = *(v24 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
    v16 = v73;
    if (*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_21:

    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v70 = v19;
  v71 = v12;
  v72 = a1;
  v78[0] = MEMORY[0x1E69E7CC0];

  sub_1C0BE6CFC(0, v25, 0);
  v26 = v76;
  v22 = v78[0];
  v27 = *(v74 + 80);
  v69 = v24;
  v28 = v24 + ((v27 + 32) & ~v27);
  v77 = *(v74 + 72);
  do
  {
    sub_1C0BE7AD8(v28, v11);
    sub_1C0BE7AD8(v11, v9);
    v29 = *v9;
    v30 = *(v26 + 48);
    *v6 = *v9;
    sub_1C0BC9D60(v9 + v30, v6 + v30, type metadata accessor for ReporterState);
    sub_1C0BC9D00(v6, &qword_1EBE52910, &unk_1C0BED290);
    sub_1C0BC9D00(v11, &qword_1EBE52910, &unk_1C0BED290);
    v78[0] = v22;
    v32 = *(v22 + 16);
    v31 = *(v22 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1C0BE6CFC((v31 > 1), v32 + 1, 1);
      v26 = v76;
      v22 = v78[0];
    }

    *(v22 + 16) = v32 + 1;
    *(v22 + 8 * v32 + 32) = v29;
    v28 += v77;
    --v25;
  }

  while (v25);

  a1 = v72;
  v16 = v73;
  v19 = v70;
  v12 = v71;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_12:
  if (!*(v19 + 16))
  {
    goto LABEL_21;
  }

LABEL_13:
  v33 = sub_1C0BCA668(0x656E6E6F63736964, 0xEC00000064657463);
  if ((v34 & 1) == 0)
  {
    goto LABEL_21;
  }

  v35 = *(*(v19 + 56) + 8 * v33);

  v36 = v35;
  v37 = *(v35 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  v71 = v12;
  v72 = a1;
  v73 = v16;
  v78[0] = v21;
  v38 = v36;
  sub_1C0BE6CFC(0, v37, 0);
  v39 = v78[0];
  v40 = *(v74 + 80);
  v70 = v38;
  v41 = v38 + ((v40 + 32) & ~v40);
  v77 = *(v74 + 72);
  do
  {
    sub_1C0BE7AD8(v41, v11);
    sub_1C0BE7AD8(v11, v9);
    v42 = *v9;
    v43 = *(v76 + 48);
    *v6 = *v9;
    sub_1C0BC9D60(v9 + v43, v6 + v43, type metadata accessor for ReporterState);
    sub_1C0BC9D00(v6, &qword_1EBE52910, &unk_1C0BED290);
    sub_1C0BC9D00(v11, &qword_1EBE52910, &unk_1C0BED290);
    v78[0] = v39;
    v45 = *(v39 + 16);
    v44 = *(v39 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1C0BE6CFC((v44 > 1), v45 + 1, 1);
      v39 = v78[0];
    }

    *(v39 + 16) = v45 + 1;
    *(v39 + 8 * v45 + 32) = v42;
    v41 += v77;
    --v37;
  }

  while (v37);
  v77 = v39;

  a1 = v72;
  v16 = v73;
LABEL_22:

  v46 = sub_1C0BEBF88();
  v47 = sub_1C0BEC148();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v78[0] = v49;
    *v48 = 136446210;
    v50 = MEMORY[0x1C68E0030](v22, MEMORY[0x1E69E7360]);
    v52 = v51;

    v53 = sub_1C0BD80C0(v50, v52, v78);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1C0BC7000, v46, v47, "Reconnecting started reporters. { reporterIDs=%{public}s }", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1C68E0970](v49, -1, -1);
    MEMORY[0x1C68E0970](v48, -1, -1);
  }

  else
  {
  }

  v54 = v77;

  v55 = sub_1C0BEBF88();
  v56 = sub_1C0BEC148();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v78[0] = v58;
    *v57 = 136446210;
    v59 = MEMORY[0x1C68E0030](v54, MEMORY[0x1E69E7360]);
    v61 = v60;

    v62 = sub_1C0BD80C0(v59, v61, v78);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_1C0BC7000, v55, v56, "Disconnecting all other reporters. { reporterIDs=%{public}s }", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x1C68E0970](v58, -1, -1);
    MEMORY[0x1C68E0970](v57, -1, -1);
  }

  else
  {
  }

  v63 = *&a1[v16];
  v64 = a1;

  v66 = sub_1C0BE6EC4(v65, v64);

  v67 = *&a1[v16];
  *&a1[v16] = v66;
}

uint64_t sub_1C0BE2C8C(uint64_t a1)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  v62 = *(v66 - 8);
  v2 = *(v62 + 64);
  v3 = MEMORY[0x1EEE9AC00](v66);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v65 = &v58 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v68 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v58 - v9;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  v69 = MEMORY[0x1E69E7CC8];
  v67 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v59 = xmmword_1C0BED230;
  v61 = v18;
  while (v17)
  {
LABEL_9:
    v20 = __clz(__rbit64(v17)) | (v10 << 6);
    v21 = *(v67 + 56);
    v22 = *(*(v67 + 48) + 8 * v20);
    v23 = v21 + *(*(type metadata accessor for ReporterState(0) - 8) + 72) * v20;
    v24 = v66;
    v25 = v64;
    sub_1C0BC9378(v23, &v64[*(v66 + 48)], type metadata accessor for ReporterState);
    *v25 = v22;
    v26 = v25;
    v27 = v68;
    sub_1C0BE7B48(v26, v68);
    v28 = v27;
    v29 = v65;
    sub_1C0BE7AD8(v28, v65);
    v30 = (v29 + *(v24 + 48));
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = type metadata accessor for ReporterState;
      goto LABEL_13;
    }

    type metadata accessor for ActiveReporterState(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = type metadata accessor for ActiveReporterState;
LABEL_13:
      sub_1C0BCA00C(v30, v31);
      v32 = 0x656E6E6F63736964;
      v33 = 0xEC00000064657463;
      goto LABEL_15;
    }

    v34 = *v30;

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
    sub_1C0BCA00C(v30 + *(v35 + 48), type metadata accessor for StartedReporterData);
    v33 = 0xE900000000000064;
    v32 = 0x657463656E6E6F63;
LABEL_15:
    v37 = sub_1C0BCA668(v32, v33);
    v38 = v11[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_30;
    }

    v41 = v36;
    if (v11[3] < v40)
    {
      sub_1C0BEB0CC(v40, 1);
      v11 = v69;
      v42 = sub_1C0BCA668(v32, v33);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_32;
      }

      v37 = v42;
    }

    v17 &= v17 - 1;
    if (v41)
    {

      v44 = v11[7];
      sub_1C0BE7B48(v68, v63);
      v45 = *(v44 + 8 * v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v44 + 8 * v37) = v45;
      if (isUniquelyReferenced_nonNull_native)
      {
        v47 = v44;
      }

      else
      {
        v45 = sub_1C0BDF718(0, v45[2] + 1, 1, v45);
        v47 = v44;
        *(v44 + 8 * v37) = v45;
      }

      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        v45 = sub_1C0BDF718(v48 > 1, v49 + 1, 1, v45);
        *(v47 + 8 * v37) = v45;
      }

      v45[2] = v49 + 1;
      sub_1C0BE7B48(v63, v45 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v49);
      v18 = v61;
    }

    else
    {
      v60 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52908, &qword_1C0BED288);
      v50 = *(v62 + 72);
      v51 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v59;
      sub_1C0BE7B48(v68, v52 + v51);
      v11[(v37 >> 6) + 8] |= 1 << v37;
      v53 = (v11[6] + 16 * v37);
      *v53 = v60;
      v53[1] = v33;
      *(v11[7] + 8 * v37) = v52;
      v54 = v11[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_31;
      }

      v11[2] = v56;
      v18 = v61;
    }
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return v11;
    }

    v17 = *(v13 + 8 * v19);
    ++v10;
    if (v17)
    {
      v10 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C0BEC298();
  __break(1u);
  return result;
}

uint64_t sub_1C0BE31A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1C0BE31E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v1 = Strong;
  v2 = sub_1C0BEBF88();
  v3 = sub_1C0BEC118();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C0BC7000, v2, v3, "Invalidation handler: Connection cannot be formed.", v4, 2u);
    MEMORY[0x1C68E0970](v4, -1, -1);
  }

  v5 = *&v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BE7AC8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1C0BD3D50;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0BCA800;
  aBlock[3] = &block_descriptor_209;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_6:
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v10 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v10, qword_1ED6F78B8);
    v11 = sub_1C0BEBF88();
    v12 = sub_1C0BEC118();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C0BC7000, v11, v12, "self nil in invalidationHandler.", v13, 2u);
      MEMORY[0x1C68E0970](v13, -1, -1);
    }
  }
}

uint64_t sub_1C0BE3494(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection);
  v3 = type metadata accessor for ServerProxy();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_logger;
  v8 = qword_1ED6F7518;
  v9 = v2;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C0BEBFA8();
  v11 = __swift_project_value_buffer(v10, qword_1ED6F78B8);
  (*(*(v10 - 8) + 16))(v6 + v7, v11, v10);
  *(v6 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___unboostedProxy) = 0;
  *(v6 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___boostedProxy) = 0;
  *(v6 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy) = 0;
  *(v6 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection) = v9;
  v12 = *(a1 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy);
  *(a1 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy) = v6;
}

void sub_1C0BE35C4(int a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1C0BEBF88();
    v5 = sub_1C0BEC118();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v4, v5, "Game mode notification received. { token=%d }", v6, 8u);
      MEMORY[0x1C68E0970](v6, -1, -1);
    }

    v7 = sub_1C0BD2D20(a1);
    sub_1C0BD2E40(v7);
  }

  else
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v8 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v8, qword_1ED6F78B8);
    v3 = sub_1C0BEBF88();
    v9 = sub_1C0BEC128();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v3, v9, "Game mode notification received, but self is nil. { token=%d }", v10, 8u);
      MEMORY[0x1C68E0970](v10, -1, -1);
    }
  }
}

uint64_t sub_1C0BE3780(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1C0BE37D4(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    v5 = sub_1C0BEBF88();
    v6 = sub_1C0BEC128();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67174913;
      *(v7 + 4) = a1;
      *(v7 + 8) = 1024;
      swift_beginAccess();
      *(v7 + 10) = *(a3 + 16);

      _os_log_impl(&dword_1C0BC7000, v5, v6, "GameMode notifications failed to initialize! Defaulting to off. { result=%{private}u, token=%d }", v7, 0xEu);
      v8 = v7;
LABEL_6:
      MEMORY[0x1C68E0970](v8, -1, -1);

      return;
    }
  }

  else
  {
    swift_beginAccess();
    v9 = sub_1C0BD2D20(*(a3 + 16));
    sub_1C0BD2E40(v9);

    v5 = sub_1C0BEBF88();
    v10 = sub_1C0BEC118();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67174913;
      *(v11 + 8) = 1024;
      swift_beginAccess();
      *(v11 + 10) = *(a3 + 16);

      _os_log_impl(&dword_1C0BC7000, v5, v10, "Listening for GameMode notifications. { result=%{private}u, token=%d }", v11, 0xEu);
      v8 = v11;
      goto LABEL_6;
    }
  }
}

void sub_1C0BE39E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery] = 0;
  }
}

uint64_t sub_1C0BE3BAC@<X0>(unsigned int a1@<W1>, uint64_t *a2@<X8>)
{
  result = sub_1C0BC8788(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C0BE4208(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BCAED4;
  *(v7 + 24) = v6;
  v12[4] = sub_1C0BD3D50;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C0BCA800;
  v12[3] = &block_descriptor_168;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE43FC(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  v9 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *(v10 + 44) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C0BCC0A8;
  *(v11 + 24) = v10;
  v16[4] = sub_1C0BD3D50;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C0BCA800;
  v16[3] = &block_descriptor_158;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE461C(uint64_t a1, int a2, __int16 a3)
{
  v7 = *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 36) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C0BD7B48;
  *(v9 + 24) = v8;
  v14[4] = sub_1C0BD3D50;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1C0BCA800;
  v14[3] = &block_descriptor_148;
  v10 = _Block_copy(v14);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE49B4(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a1;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a2;
  *(v12 + 52) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C0BDAF0C;
  *(v13 + 24) = v12;
  v18[4] = sub_1C0BD3D50;
  v18[5] = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C0BCA800;
  v18[3] = &block_descriptor_138;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE4B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, unsigned int a5, int a6)
{
  v38 = a6;
  v39 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ReporterState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C0BEBF88();
  v20 = sub_1C0BEC118();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = a4;
    v22 = a3;
    v23 = v21;
    *v21 = 134217984;
    *(v21 + 4) = a2;
    _os_log_impl(&dword_1C0BC7000, v19, v20, "Requesting message. { reporterID=%lld }", v21, 0xCu);
    v24 = v23;
    a3 = v22;
    a4 = v37;
    MEMORY[0x1C68E0970](v24, -1, -1);
  }

  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 == a2)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v25 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v25, qword_1ED6F78B8);
    v26 = sub_1C0BEBF88();
    v27 = sub_1C0BEC118();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = a3;
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a2;
      _os_log_impl(&dword_1C0BC7000, v26, v27, "requestMessage called with invalidID. { reporterID=%lld }", v29, 0xCu);
      v30 = v29;
      a3 = v28;
      MEMORY[0x1C68E0970](v30, -1, -1);
    }

    return a3(0);
  }

  else
  {
    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    v33 = v38;
    *(v32 + 24) = v39;
    *(v32 + 28) = v33;
    *(v32 + 32) = a3;
    *(v32 + 40) = a4;

    sub_1C0BCAF30(a2, 0xD000000000000032, 0x80000001C0BEE660, v13);
    v34 = *(v15 + 48);
    if (v34(v13, 1, v14) == 1)
    {
      sub_1C0BE538C(a2, a1, v18);
      if (v34(v13, 1, v14) != 1)
      {
        sub_1C0BC9D00(v13, &qword_1EBE52960, &unk_1C0BED5F0);
      }
    }

    else
    {
      sub_1C0BC9D60(v13, v18, type metadata accessor for ReporterState);
    }

    v35 = sub_1C0BCD8D4(v18, 1);
    aBlock[4] = sub_1C0BE7A40;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BE55A4;
    aBlock[3] = &block_descriptor_128;
    v36 = _Block_copy(aBlock);

    [v35 requestMessageFor:a2 category:v39 type:v38 reply:v36];
    _Block_release(v36);

    swift_unknownObjectRelease();
    return sub_1C0BCA00C(v18, type metadata accessor for ReporterState);
  }
}

void sub_1C0BE4FD0(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned __int16 a5, void (*a6)(void))
{
  if (!a1)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v22 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v22, qword_1ED6F78B8);
    v23 = sub_1C0BEBF88();
    v24 = sub_1C0BEC128();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 134218498;
      *(v25 + 4) = a3;
      *(v25 + 12) = 2080;
      v27 = AudioEventCategory.description.getter(a4);
      v29 = sub_1C0BD80C0(v27, v28, &v36);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      v30 = AudioEventType.description.getter(a5);
      v32 = sub_1C0BD80C0(v30, v31, &v36);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_1C0BC7000, v23, v24, "requestMessage received message. Invoking callback. { reporterID=%lld, category=%s, type=%{public}s }", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v26, -1, -1);
      MEMORY[0x1C68E0970](v25, -1, -1);

      if (a2)
      {
LABEL_10:
        v33 = sub_1C0BEC038();
        goto LABEL_16;
      }
    }

    else
    {

      if (a2)
      {
        goto LABEL_10;
      }
    }

    v33 = 0;
LABEL_16:
    v35 = v33;
    a6();
    v34 = v35;

    goto LABEL_13;
  }

  v8 = a1;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v9 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v9, qword_1ED6F78B8);
  v10 = a1;
  v11 = sub_1C0BEBF88();
  v12 = sub_1C0BEC118();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136380931;
    swift_getErrorValue();
    v15 = sub_1C0BEC2A8();
    v17 = sub_1C0BD80C0(v15, v16, &v36);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a3;
    _os_log_impl(&dword_1C0BC7000, v11, v12, "Error in requestMessage. { error=%{private}s, reporterID=%lld }", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1C68E0970](v14, -1, -1);
    MEMORY[0x1C68E0970](v13, -1, -1);

    return;
  }

  v34 = a1;

LABEL_13:
}

uint64_t sub_1C0BE538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  v7 = *(*(active - 8) + 64);
  MEMORY[0x1EEE9AC00](active);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for StartedReporterData(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0BEBF48();
  *&v14[*(v11 + 28)] = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
  type metadata accessor for ReporterData();
  v16 = swift_allocObject();
  *(v16 + 24) = -1;
  *(v16 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C0BED230;
  *(v17 + 32) = getpid();
  v18 = type metadata accessor for PerfCheck();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v16 + 40) = sub_1C0BC9100(v17);
  *(v16 + 16) = a1;
  *v9 = v16;
  sub_1C0BC9D60(v14, v9 + v15, type metadata accessor for StartedReporterData);
  swift_storeEnumTagMultiPayload();
  LODWORD(v17) = *(a2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled);
  sub_1C0BC9D60(v9, a3, type metadata accessor for ActiveReporterState);
  type metadata accessor for ReporterState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C0BE55A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_1C0BEC058();
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v5(a2, v6);
}

void sub_1C0BE5700()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
  v2 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;
      v6 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);

      do
      {
        sub_1C0BDF424(v5, v19);
        v7 = *__swift_project_boxed_opaque_existential_1(v19, v20);
        sub_1C0BE8CF4();
        __swift_destroy_boxed_opaque_existential_0(v19);
        v5 += 40;
        --v4;
      }

      while (v4);

      v3 = *(v2 + 16);
    }

    else
    {
      v8 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
    }

    v9 = *(v3 + 16);
    v10 = v3 + 32;

    v11 = -v9;
    v12 = -1;
    while (1)
    {
      if (v11 + v12 == -1)
      {

        v17 = *(v18 + v1);
        *(v18 + v1) = 0;
        goto LABEL_14;
      }

      if (++v12 >= *(v3 + 16))
      {
        break;
      }

      sub_1C0BDF424(v10, v19);
      v13 = *__swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
      swift_beginAccess();
      if (*(*(v13 + v14) + 16))
      {

        __swift_destroy_boxed_opaque_existential_0(v19);
        return;
      }

      v10 += 40;
      v15 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
      swift_beginAccess();
      v16 = *(*(v13 + v15) + 16);
      __swift_destroy_boxed_opaque_existential_0(v19);
      if (v16)
      {

LABEL_14:

        return;
      }
    }

    __break(1u);
  }
}

id sub_1C0BE58C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1C0BD24B8(0, &qword_1EBE528C0, 0x1E69E58C0);
    v5 = sub_1C0BEC038();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1C0BE5964(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (!result && (a2 & 1) != 0)
  {
    v5 = [objc_allocWithZone(AudioAnalyticsHWTraceHandleWrapper) initWithSessionID_];
    v6 = *(a4 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle);
    *(a4 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle) = v5;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

void sub_1C0BE59D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v8(a2, a3, a4);
}

uint64_t sub_1C0BE5A58(uint64_t result, unsigned __int16 a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (*(result + 24) != a2)
  {
    v28[11] = v5;
    v28[12] = v6;
    v10 = result;
    v11 = sub_1C0BEBF88();
    v12 = sub_1C0BEC118();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a4;
      _os_log_impl(&dword_1C0BC7000, v11, v12, "Stopping session while reconfiguring serviceType. { reporterID=%lld }", v13, 0xCu);
      MEMORY[0x1C68E0970](v13, -1, -1);
    }

    sub_1C0BD3F80(a4);

    v14 = sub_1C0BEBF88();
    v15 = sub_1C0BEC118();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      v17 = v28[0];
      *v16 = 134218498;
      *(v16 + 4) = a4;
      *(v16 + 12) = 2080;
      v18 = AudioServiceType.description.getter(*(v10 + 24));
      v27 = a5;
      v20 = sub_1C0BD80C0(v18, v19, v28);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;
      v21 = AudioServiceType.description.getter(a2);
      v23 = sub_1C0BD80C0(v21, v22, v28);

      *(v16 + 24) = v23;
      a5 = v27;
      _os_log_impl(&dword_1C0BC7000, v14, v15, "Setting new serviceType. { reporterID=%lld, oldServiceType=%s, newServiceType=%s) }", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v17, -1, -1);
      MEMORY[0x1C68E0970](v16, -1, -1);
    }

    [sub_1C0BCD8D4(a5 3)];
    swift_unknownObjectRelease();
    *(v10 + 24) = a2;
    v24 = sub_1C0BEBF88();
    v25 = sub_1C0BEC118();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = a4;
      _os_log_impl(&dword_1C0BC7000, v24, v25, "Restarting session after reconfiguring serviceType. { reporterID=%lld }", v26, 0xCu);
      MEMORY[0x1C68E0970](v26, -1, -1);
    }

    return sub_1C0BCFBD8(a4);
  }

  return result;
}

uint64_t sub_1C0BE5D38(uint64_t result, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(result + 24) != a2)
  {
    v8 = result;
    v9 = sub_1C0BEBF88();
    v10 = sub_1C0BEC118();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a4;
      _os_log_impl(&dword_1C0BC7000, v9, v10, "Setting new serviceType. { reporterID=%lld }", v11, 0xCu);
      MEMORY[0x1C68E0970](v11, -1, -1);
    }

    [sub_1C0BCD8D4(a5 3)];
    result = swift_unknownObjectRelease();
    *(v8 + 24) = a2;
  }

  return result;
}

uint64_t sub_1C0BE5E48(char *a1)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = sub_1C0BEC018();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v23 = v22;
  LOBYTE(v22) = sub_1C0BEC028();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v25 = sub_1C0BEBF88();
    v26 = sub_1C0BEC118();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v35;
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v28;
      _os_log_impl(&dword_1C0BC7000, v25, v26, "Destroying reporter. { reporterID=%lld }", v29, 0xCu);
      MEMORY[0x1C68E0970](v29, -1, -1);
    }

    sub_1C0BCAF30(v28, 0xD00000000000001BLL, 0x80000001C0BEE490, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_1C0BC9D00(v8, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v8, v16, type metadata accessor for ReporterState);
      sub_1C0BD3F80(v28);
      swift_beginAccess();
      v30 = v34;
      sub_1C0BE62A0(v28, v34);
      sub_1C0BC9D00(v30, &qword_1EBE52960, &unk_1C0BED5F0);
      swift_endAccess();
      sub_1C0BC9378(v16, v14, type metadata accessor for ReporterState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1C0BCA00C(v14, type metadata accessor for ReporterState);
        v31 = sub_1C0BCD8D4(v16, 3);
        [v31 destroySessionFor_];
        swift_unknownObjectRelease();
        v32 = v16;
      }

      else
      {
        sub_1C0BCA00C(v16, type metadata accessor for ReporterState);
        v32 = v14;
      }

      return sub_1C0BCA00C(v32, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE62A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1C0BC97E0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C0BEB944();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for ReporterState(0);
    v20 = *(v13 - 8);
    sub_1C0BC9D60(v12 + *(v20 + 72) * v8, a2, type metadata accessor for ReporterState);
    sub_1C0BDFCD8(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ReporterState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1C0BE63FC(uint64_t a1)
{
  v41 = type metadata accessor for StartedReporterData(0);
  v2 = *(*(v41 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v41);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = type metadata accessor for ReporterState(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v37 - v21;
  v40 = a1;
  sub_1C0BCAF30(a1, 0xD00000000000001DLL, 0x80000001C0BEE470, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1C0BC9D00(v14, &qword_1EBE52960, &unk_1C0BED5F0);
  }

  v39 = v5;
  sub_1C0BC9D60(v14, v22, type metadata accessor for ReporterState);
  sub_1C0BC9378(v22, v20, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C0BCA00C(v22, type metadata accessor for ReporterState);
    v32 = v20;
    v33 = type metadata accessor for ReporterState;
    return sub_1C0BCA00C(v32, v33);
  }

  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for ActiveReporterState(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = *v20;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BC9D60(v20 + *(v25 + 48), v7, type metadata accessor for StartedReporterData);
      v26 = sub_1C0BEBF68();
      v27 = v39;
      result = (*(*(v26 - 8) + 16))(v39, v7, v26);
      v28 = *(v41 + 20);
      v29 = *&v7[v28];
      v30 = __CFADD__(v29, 1);
      v31 = v29 + 1;
      if (!v30)
      {
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  type metadata accessor for ActiveReporterState(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_10:
    sub_1C0BCA00C(v22, type metadata accessor for ReporterState);
    v33 = type metadata accessor for ActiveReporterState;
    v32 = v20;
    return sub_1C0BCA00C(v32, v33);
  }

  v38 = *v20;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
  sub_1C0BC9D60(v20 + *(v25 + 48), v7, type metadata accessor for StartedReporterData);
  v34 = sub_1C0BEBF68();
  v27 = v39;
  result = (*(*(v34 - 8) + 16))(v39, v7, v34);
  v28 = *(v41 + 20);
  v35 = *&v7[v28];
  v30 = __CFADD__(v35, 1);
  v31 = v35 + 1;
  if (!v30)
  {
LABEL_12:
    *(v27 + v28) = v31;
    v36 = *(v25 + 48);
    *v12 = v38;
    sub_1C0BC9378(v27, v12 + v36, type metadata accessor for StartedReporterData);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v12, 0, 1, v15);
    swift_beginAccess();

    sub_1C0BC958C(v12, v40);
    swift_endAccess();

    sub_1C0BCA00C(v27, type metadata accessor for StartedReporterData);
    sub_1C0BCA00C(v7, type metadata accessor for StartedReporterData);
    v33 = type metadata accessor for ReporterState;
    v32 = v22;
    return sub_1C0BCA00C(v32, v33);
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1C0BE69D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0BE6B24()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (*(v2 + 16))
  {

    v3 = sub_1C0BCA668(0xD000000000000018, 0x80000001C0BEDF20);
    if (v4)
    {
      sub_1C0BCB304(*(v2 + 56) + 32 * v3, v9);

      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
    }
  }

  v6 = *(v1 + 32);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_1C0BCA668(0xD00000000000001ALL, 0x80000001C0BEE450);
  if ((v8 & 1) == 0)
  {

    return 0;
  }

  sub_1C0BCB304(*(v6 + 56) + 32 * v7, v9);

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

char *sub_1C0BE6CFC(char *a1, int64_t a2, char a3)
{
  result = sub_1C0BE6D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0BE6D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52978, &unk_1C0BED640);
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

double sub_1C0BE6E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C0BCA668(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C0BD20A0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1C0BCA658((*(v12 + 56) + 32 * v9), a3);
    sub_1C0BDFB28(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C0BE6EC4(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for ReporterState(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  result = sub_1C0BEC258();
  v9 = result;
  v10 = 0;
  v35 = a1;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v30 = result + 64;
  v31 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v37 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = *(v35 + 56);
      v38 = *(*(v35 + 48) + 8 * v21);
      v23 = *(v34 + 72) * v21;
      v24 = v32;
      sub_1C0BC9378(v22 + v23, v32, type metadata accessor for ReporterState);
      v25 = v33;
      sub_1C0BE1468(v24, v33);
      sub_1C0BCA00C(v24, type metadata accessor for ReporterState);
      v9 = v31;
      *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v9[6] + 8 * v21) = v38;
      result = sub_1C0BC9D60(v25, v9[7] + v23, type metadata accessor for ReporterState);
      v26 = v9[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v9[2] = v28;
      v16 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BE7140(uint64_t a1, uint64_t a2)
{
  v36[2] = a2;
  v3 = type metadata accessor for ReporterState(0);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v40 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v36 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  result = sub_1C0BEC258();
  v13 = v11;
  v14 = result;
  v15 = 0;
  v43 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v37 = result + 64;
  v38 = result;
  v39 = v9;
  if ((v20 & v16) != 0)
  {
    while (1)
    {
      v23 = v13;
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_10:
      v27 = v24 | (v15 << 6);
      v28 = *(v43 + 56);
      v44 = *(*(v43 + 48) + 8 * v27);
      v29 = *(v41 + 72) * v27;
      sub_1C0BC9378(v28 + v29, v23, type metadata accessor for ReporterState);
      v30 = v40;
      sub_1C0BC9378(v23, v40, type metadata accessor for ReporterState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1C0BCA00C(v30, type metadata accessor for ReporterState);
      v32 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        sub_1C0BC9378(v23, v39, type metadata accessor for ReporterState);
      }

      else
      {
        sub_1C0BE1B50(v23, v39);
      }

      v13 = v23;
      sub_1C0BCA00C(v23, type metadata accessor for ReporterState);
      v14 = v38;
      *(v37 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(v14[6] + 8 * v27) = v44;
      result = sub_1C0BC9D60(v32, v14[7] + v29, type metadata accessor for ReporterState);
      v33 = v14[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v14[2] = v35;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v15 >= v22)
      {
        return v14;
      }

      v26 = *(v17 + 8 * v15);
      ++v25;
      if (v26)
      {
        v23 = v13;
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BE745C(uint64_t a1, uint64_t a2)
{
  v36[2] = a2;
  v3 = type metadata accessor for ReporterState(0);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v36 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  result = sub_1C0BEC258();
  v12 = result;
  v13 = 0;
  v42 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = result + 64;
  v38 = result;
  if ((v18 & v14) != 0)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_10:
      v24 = v21 | (v13 << 6);
      v25 = *(v42 + 56);
      v43 = *(*(v42 + 48) + 8 * v24);
      v26 = *(v40 + 72) * v24;
      v27 = v44;
      sub_1C0BC9378(v25 + v26, v44, type metadata accessor for ReporterState);
      v28 = v39;
      sub_1C0BC9378(v27, v39, type metadata accessor for ReporterState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      type metadata accessor for ActiveReporterState(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v30 = v28;
      v31 = EnumCaseMultiPayload;
      sub_1C0BCA00C(v30, type metadata accessor for ActiveReporterState);
      if (v31 != 1)
      {
        goto LABEL_14;
      }

      v32 = v44;
      sub_1C0BE0B7C(v44, v9);
LABEL_15:
      sub_1C0BCA00C(v32, type metadata accessor for ReporterState);
      v12 = v38;
      *(v37 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(v12[6] + 8 * v24) = v43;
      result = sub_1C0BC9D60(v9, v12[7] + v26, type metadata accessor for ReporterState);
      v33 = v12[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v12[2] = v35;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    sub_1C0BCA00C(v28, type metadata accessor for ReporterState);
LABEL_14:
    v32 = v44;
    sub_1C0BC9378(v44, v9, type metadata accessor for ReporterState);
    goto LABEL_15;
  }

LABEL_5:
  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return v12;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for ReporterState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    type metadata accessor for ActiveReporterState(0);
    v8 = swift_getEnumCaseMultiPayload();
    v9 = *v5;

    if (v8 != 1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
      v11 = sub_1C0BEBF68();
      (*(*(v11 - 8) + 8))(&v5[v10], v11);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = *v5;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C0BE792C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ReporterState(0) - 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v7, v5, v6, v8);
}

uint64_t sub_1C0BE79C8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1C0BE5E48(v1);
}

uint64_t sub_1C0BE79F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_1C0BC8788(v3);
  *a1 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C0BE7AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BE7B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BE7C4C()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy;
  if (*(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection);
    aBlock[4] = sub_1C0BE805C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BE7F10;
    aBlock[3] = &block_descriptor_3;
    v4 = _Block_copy(aBlock);

    v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v4);
    sub_1C0BEC1C8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52988, &qword_1C0BED688);
    swift_dynamicCast();
    v2 = v8;
    v6 = *(v0 + v1);
    *(v0 + v1) = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

void sub_1C0BE7DB4(void *a1)
{
  v2 = a1;
  oslog = sub_1C0BEBF88();
  v3 = sub_1C0BEC128();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136380675;
    swift_getErrorValue();
    v6 = sub_1C0BEC2A8();
    v8 = sub_1C0BD80C0(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C0BC7000, oslog, v3, "Synchronous remote object proxy encountered error. { error=%{private}s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1C68E0970](v5, -1, -1);
    MEMORY[0x1C68E0970](v4, -1, -1);
  }

  else
  {
  }
}

void sub_1C0BE7F10(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1C0BE7F78()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_logger;
  v2 = sub_1C0BEBFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___unboostedProxy);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___boostedProxy);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy);
  swift_unknownObjectRelease();
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

void sub_1C0BE8064(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (!*(v12 + 16) || (v13 = sub_1C0BC97E0(a1), (v14 & 1) == 0))
  {
    v20 = sub_1C0BEBF88();
    v24 = sub_1C0BEC138();
    if (os_log_type_enabled(v20, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134283521;
      *(v25 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v20, v24, "start called for unknown reporterID. { function=start, reporterID=%{private}lld }", v25, 0xCu);
      MEMORY[0x1C68E0970](v25, -1, -1);
    }

    goto LABEL_12;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  swift_beginAccess();
  sub_1C0BCCD54(v15 + v16, v10, &qword_1EBE52900, &unk_1C0BED7C0);
  v17 = sub_1C0BEBF68();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v10, 1, v17);

  sub_1C0BDFF80(v10);
  v20 = sub_1C0BEBF88();
  v21 = sub_1C0BEC118();
  v22 = os_log_type_enabled(v20, v21);
  if (v19 != 1)
  {
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 134283521;
      *(v26 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, v20, v21, "start called without a stop. Ignoring. { function=start, reporterID=%{private}lld }", v26, 0xCu);
      MEMORY[0x1C68E0970](v26, -1, -1);
    }

LABEL_12:

    return;
  }

  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134283521;
    *(v23 + 4) = a1;
    _os_log_impl(&dword_1C0BC7000, v20, v21, "Setting startTime. { function=start, reporterID=%{private}lld }", v23, 0xCu);
    MEMORY[0x1C68E0970](v23, -1, -1);
  }

  sub_1C0BEBF58();
  (*(v18 + 56))(v8, 0, 1, v17);
  swift_beginAccess();
  sub_1C0BEA974(v8, v15 + v16);
  swift_endAccess();
}

void sub_1C0BE83CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = sub_1C0BEBF68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - v17;
  v19 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (!*(v20 + 16) || (v21 = sub_1C0BC97E0(a1), (v22 & 1) == 0))
  {
    v25 = sub_1C0BEBF88();
    v26 = sub_1C0BEC138();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C0BC7000, v25, v26, "activeReporters should contain reporter already. { function=stop }", v27, 2u);
      MEMORY[0x1C68E0970](v27, -1, -1);
    }

    return;
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  v24 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  swift_beginAccess();
  sub_1C0BCCD54(v23 + v24, v10, &qword_1EBE52900, &unk_1C0BED7C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_1C0BDFF80(v10);
LABEL_21:
    (*(v12 + 56))(v8, 1, 1, v11);
    swift_beginAccess();
    sub_1C0BEA974(v8, v23 + v24);
    swift_endAccess();

    return;
  }

  (*(v12 + 32))(v18, v10, v11);

  v60 = sub_1C0BEBB5C(v28);
  v61 = v29;
  v59 = v30;
  if (!v29)
  {
    (*(v12 + 8))(v18, v11);
    goto LABEL_21;
  }

  v57 = v24;
  v58 = a1;
  v31 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
  swift_beginAccess();
  v32 = *(v2 + v31);
  if (!*(v32 + 16))
  {
    goto LABEL_14;
  }

  v33 = *(v2 + v31);

  v34 = sub_1C0BEA89C(v60, v61, v59);
  if ((v35 & 1) == 0)
  {

LABEL_14:
    type metadata accessor for MessageCounts();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    swift_beginAccess();

    v37 = *(v2 + v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v31;
    v62 = *(v2 + v31);
    *(v2 + v31) = 0x8000000000000000;
    sub_1C0BEB374(v36, v60, v61, v59, isUniquelyReferenced_nonNull_native);

    *(v2 + v56) = v62;
    swift_endAccess();
    goto LABEL_15;
  }

  v36 = *(*(v32 + 56) + 8 * v34);

LABEL_15:
  v39 = *(v23 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);

  sub_1C0BEBF58();
  sub_1C0BEBF38();
  v41 = v40;
  v60 = *(v12 + 8);
  v61 = v12 + 8;
  v60(v16, v11);
  sub_1C0BEBF38();
  v43 = *(v39 + 16);
  v44 = *(v36 + 16);
  v45 = __CFADD__(v44, v43);
  v46 = v44 + v43;
  if (v45)
  {
    __break(1u);
  }

  else
  {
    v47 = v42;
    *(v36 + 16) = v46;
    v48 = *(v39 + 20);

    v49 = *(v36 + 20);
    v45 = __CFADD__(v49, v48);
    v50 = v49 + v48;
    if (!v45)
    {
      *(v36 + 20) = v50;
      *(v36 + 24) = v41 - v47 + *(v36 + 24);
      v51 = sub_1C0BEBF88();
      v52 = sub_1C0BEC118();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v58;
      if (v53)
      {
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = v54;
        _os_log_impl(&dword_1C0BC7000, v51, v52, "Incremented times. { function=stop, reporterID=%lld }", v55, 0xCu);
        MEMORY[0x1C68E0970](v55, -1, -1);
      }

      else
      {
      }

      v60(v18, v11);
      v24 = v57;
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_1C0BE894C(unsigned __int16 a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16) && (v8 = sub_1C0BC97E0(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data;
    if (*(*(v10 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) + 24) != a1)
    {
      sub_1C0BC97E0(a2);
      v13 = v12;

      if (v13)
      {
        sub_1C0BE83CC(a2);
      }

      v14 = *(v10 + v11);

      *(v14 + 24) = a1;
    }
  }

  else
  {
    v15 = sub_1C0BEBF88();
    v16 = sub_1C0BEC138();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C0BC7000, v15, v16, "activeReporters should contain reporter already. { function=setServiceType }", v17, 2u);
      MEMORY[0x1C68E0970](v17, -1, -1);
    }
  }
}

void sub_1C0BE8AA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16) && (v8 = sub_1C0BC97E0(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    v11 = sub_1C0BEBF88();
    v12 = sub_1C0BEC118();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      v15 = sub_1C0BEC068();
      v17 = sub_1C0BD80C0(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C0BC7000, v11, v12, "Setting configuration. { config=%s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1C68E0970](v14, -1, -1);
      MEMORY[0x1C68E0970](v13, -1, -1);
    }

    v18 = *(v10 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data);

    swift_beginAccess();
    v19 = *(v18 + 32);
    *(v18 + 32) = a1;
  }

  else
  {
    v20 = sub_1C0BEBF88();
    v21 = sub_1C0BEC138();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C0BC7000, v20, v21, "activeReporters should contain reporter already. { function=setConfiguration }", v22, 2u);
      MEMORY[0x1C68E0970](v22, -1, -1);
    }
  }
}

uint64_t sub_1C0BE8CF4()
{
  v1 = v0;

  v2 = sub_1C0BEBF88();
  v3 = sub_1C0BEC118();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    v5 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
    swift_beginAccess();
    *(v4 + 4) = *(*(v1 + v5) + 16);
    *(v4 + 12) = 2048;
    v6 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
    swift_beginAccess();
    *(v4 + 14) = *(*(v1 + v6) + 16);

    _os_log_impl(&dword_1C0BC7000, v2, v3, "SessionGenericSummaryCache.process called. { messageCache=%ld, active=%ld }", v4, 0x16u);
    MEMORY[0x1C68E0970](v4, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_singleMessageSessionReportInfo);
  v8 = *(v7 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);
  if (*(v8 + 16))
  {
    v9 = *(*(v7 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) + 24);
    v10 = *(v7 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);

    sub_1C0BE8FD0(0x654D656C676E6973, 0xED00006567617373, v9, v8);
  }

  sub_1C0BE9EEC();
  v11 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache;
  swift_beginAccess();
  v28 = v11;
  v12 = *(v1 + v11);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v15; result = )
  {
    v19 = i;
LABEL_14:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v19 << 6);
    v22 = *(v12 + 48) + 24 * v21;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(*(v12 + 56) + 8 * v21);
    v26 = *(v22 + 16);

    sub_1C0BE8FD0(v23, v24, v26, v25);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v27 = *(v1 + v28);
      *(v1 + v28) = MEMORY[0x1E69E7CC8];
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BE8FD0(uint64_t a1, unint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v9 = sub_1C0BEBFD8();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1C0BEC008();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v51 = v4;
  v16 = sub_1C0BEBF88();
  v17 = sub_1C0BEC118();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v18 = 136380931;
    *(v18 + 4) = sub_1C0BD80C0(a1, a2, v53);
    *(v18 + 12) = 2081;
    v19 = AudioServiceType.description.getter(a3);
    v44 = v17;
    v21 = a4;
    v22 = a1;
    v23 = sub_1C0BD80C0(v19, v20, v53);

    *(v18 + 14) = v23;
    a1 = v22;
    a4 = v21;
    _os_log_impl(&dword_1C0BC7000, v16, v44, "Sending cached message. { appName=%{private}s, serviceType=%{private}s }", v18, 0x16u);
    v24 = v45;
    swift_arrayDestroy();
    MEMORY[0x1C68E0970](v24, -1, -1);
    MEMORY[0x1C68E0970](v18, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0BED6A0;
  *(inited + 32) = 0x65646F4D656D6167;
  v26 = MEMORY[0x1E69E6370];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = v26;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001C0BEEA20;
  v27 = MEMORY[0x1E69E63B0];
  *(inited + 96) = *(a4 + 24);
  *(inited + 120) = v27;
  strcpy((inited + 128), "overload_count");
  *(inited + 143) = -18;
  v28 = MEMORY[0x1E69E7668];
  *(inited + 144) = *(a4 + 16);
  *(inited + 168) = v28;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x80000001C0BEEA40;
  *(inited + 192) = *(a4 + 20);
  v29 = MEMORY[0x1E69E6158];
  *(inited + 216) = v28;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000001C0BEDF20;
  *(inited + 240) = a1;
  *(inited + 248) = a2;
  *(inited + 264) = v29;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000001C0BEEA60;
  v30 = AudioServiceType.description.getter(a3);
  *(inited + 312) = v29;
  *(inited + 288) = v30;
  *(inited + 296) = v31;

  v32 = sub_1C0BC8EF8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52938, &qword_1C0BED7D0);
  swift_arrayDestroy();
  v33 = v51;
  v34 = *(v51 + 16);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = 134217729;
  v53[4] = sub_1C0BEBB50;
  v53[5] = v35;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 1107296256;
  v53[2] = sub_1C0BE31A0;
  v53[3] = &block_descriptor_4;
  v36 = _Block_copy(v53);
  sub_1C0BEBFE8();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1C0BEBDA8(&qword_1EBE529A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529A8, &qword_1C0BED7D8);
  sub_1C0BEBDF0(&qword_1EBE529B0, &qword_1EBE529A8, &qword_1C0BED7D8);
  v37 = v48;
  v38 = v50;
  sub_1C0BEC1D8();
  MEMORY[0x1C68E00D0](0, v15, v37, v36);
  _Block_release(v36);
  (*(v49 + 8))(v37, v38);
  (*(v46 + 8))(v15, v47);

  v40 = *(v33 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesSent);
  v41 = __CFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v33 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesSent) = v42;
  }

  return result;
}

uint64_t sub_1C0BE9584(uint64_t a1, int a2)
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6F78F0;
  v5 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 36) = 11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BD7B38;
  *(v7 + 24) = v6;
  v12[4] = sub_1C0BCAF28;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C0BCA800;
  v12[3] = &block_descriptor_61;
  v8 = _Block_copy(v12);
  v9 = v4;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BE9740()
{
  v1 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_logger;
  v2 = sub_1C0BEBFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters);

  v4 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache);

  v5 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_singleMessageSessionReportInfo);

  v6 = *(*v0 + 12);
  v7 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

uint64_t sub_1C0BE983C()
{
  result = sub_1C0BEBFA8();
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

uint64_t sub_1C0BE9908()
{
  v1 = v0;
  v2 = sub_1C0BEC158();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1C0BEC168();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C0BEC008();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v21[0] = sub_1C0BEBD5C();
  sub_1C0BEBFF8();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  v21[1] = MEMORY[0x1E69E7CC0];
  sub_1C0BEBDA8(&qword_1ED6F7508, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52970, &unk_1C0BED630);
  sub_1C0BEBDF0(&qword_1ED6F7510, &qword_1EBE52970, &unk_1C0BED630);
  sub_1C0BEC1D8();
  *(v0 + 16) = sub_1C0BEC198();
  v11 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_logger;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v12 = sub_1C0BEBFA8();
  v13 = __swift_project_value_buffer(v12, qword_1ED6F78B8);
  (*(*(v12 - 8) + 16))(v1 + v11, v13, v12);
  v14 = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messageCache) = v14;
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesReceived) = 0;
  *(v1 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesSent) = 0;
  v15 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_singleMessageSessionReportInfo;
  v16 = type metadata accessor for ReporterInfo(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_1C0BE9DA4(0, 5);
  *(v1 + v15) = v19;
  return v1;
}

uint64_t sub_1C0BE9C48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BE9CAC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_1C0BEC098();
  return sub_1C0BEC2E8();
}

uint64_t sub_1C0BE9CE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

BOOL sub_1C0BE9D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C0BEC288();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C0BE9DA4(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  v7 = sub_1C0BEBF68();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts;
  type metadata accessor for MessageCounts();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v3 + v8) = v9;
  type metadata accessor for ReporterData();
  v10 = swift_allocObject();
  *(v10 + 24) = -1;
  *(v10 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0BED230;
  *(v11 + 32) = getpid();
  v12 = type metadata accessor for PerfCheck();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + 40) = sub_1C0BC9100(v11);
  *(v10 + 16) = a1;
  *(v3 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) = v10;
  *(v10 + 24) = a2;
  return v3;
}

uint64_t sub_1C0BE9EEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_1C0BEBF68();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
  swift_beginAccess();
  sub_1C0BEA974(v4, v0 + v6);
  result = swift_endAccess();
  v8 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  return result;
}

uint64_t sub_1C0BE9FE4()
{
  sub_1C0BDFF80(v0 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime);
  v1 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data);

  v2 = *(v0 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1C0BEA090()
{
  sub_1C0BEA130();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C0BEA130()
{
  if (!qword_1EBE52848)
  {
    sub_1C0BEBF68();
    v0 = sub_1C0BEC1A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE52848);
    }
  }
}

uint64_t sub_1C0BEA188(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = v1;
  v6 = result;
  *(v1 + 16) = v4;
  if (*(result + 16))
  {
    result = sub_1C0BCA668(0x656C6379635F6F69, 0xE800000000000000);
    if (v7)
    {
      sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18);
      result = swift_dynamicCast();
      if ((result & 1) != 0 && v16 >= 3)
      {
        if (!*(v6 + 16))
        {
          goto LABEL_32;
        }

        result = sub_1C0BCA668(0xD000000000000015, 0x80000001C0BEE9E0);
        if ((v8 & 1) == 0)
        {
          goto LABEL_32;
        }

        sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_32;
        }

        v18 = v16;
        v19 = v17;
        sub_1C0BEA848();
        if (sub_1C0BEC1B8())
        {
        }

        v18 = v16;
        v19 = v17;
        v16 = 5263169;
        v17 = 0xE300000000000000;
        v9 = sub_1C0BEC1B8();

        if ((v9 & 1) == 0)
        {
LABEL_32:
          if (!*(v6 + 16))
          {
            goto LABEL_24;
          }

          result = sub_1C0BCA668(0xD000000000000016, 0x80000001C0BEEA00);
          if ((v10 & 1) == 0)
          {
            goto LABEL_24;
          }

          sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18);
          result = swift_dynamicCast();
          if ((result & 1) == 0)
          {
            goto LABEL_24;
          }

          v18 = v16;
          v19 = v17;
          sub_1C0BEA848();
          if (sub_1C0BEC1B8())
          {
          }

          v18 = v16;
          v19 = v17;
          LOBYTE(v16) = 72;
          v11 = sub_1C0BEC1B8();

          if ((v11 & 1) == 0)
          {
LABEL_24:
            if (!*(v6 + 16) || (result = sub_1C0BCA668(0x61776572705F7369, 0xED0000676E696D72), (v12 & 1) == 0) || (sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18), result = swift_dynamicCast(), (result & 1) == 0) || (v16 & 1) == 0)
            {
              if (!*(v6 + 16) || (result = sub_1C0BCA668(0x766F6365725F7369, 0xED0000676E697265), (v13 & 1) == 0) || (sub_1C0BCB304(*(v6 + 56) + 32 * result, &v18), result = swift_dynamicCast(), (result & 1) == 0) || (v16 & 1) == 0)
              {
                v14 = *(v5 + 20);
                v3 = __CFADD__(v14, 1);
                v15 = v14 + 1;
                if (!v3)
                {
                  *(v5 + 20) = v15;
                  return result;
                }

LABEL_29:
                __break(1u);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0BEA568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1C0BEA5B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0BEA604()
{
  result = qword_1EBE52990;
  if (!qword_1EBE52990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52990);
  }

  return result;
}

void *sub_1C0BEA658(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_1C0BEA6C8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1C0BD80C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1C0BEA724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529B8, &unk_1C0BED7E0);
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

uint64_t sub_1C0BEA818@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1C0BEA848()
{
  result = qword_1EBE52998;
  if (!qword_1EBE52998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52998);
  }

  return result;
}

unint64_t sub_1C0BEA89C(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v7 = *(v3 + 40);
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  sub_1C0BEC2E8();
  v8 = sub_1C0BEC2F8();

  return sub_1C0BEA9E4(a1, a2, a3, v8);
}

unint64_t sub_1C0BEA930(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C0BEC1F8();

  return sub_1C0BEAAC8(a1, v5);
}

uint64_t sub_1C0BEA974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0BEA9E4(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a3;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_1C0BEC288()) && v14 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1C0BEAAC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C0BD3C64(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C68E0150](v9, a1);
      sub_1C0BEBEA8(v9);
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

uint64_t sub_1C0BEAB90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C8, &qword_1C0BED7F8);
  result = sub_1C0BEC268();
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_1C0BEC2B8();
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

uint64_t sub_1C0BEAE00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C0, &qword_1C0BED7F0);
  v37 = a2;
  result = sub_1C0BEC268();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(v5 + 48) + 24 * v21;
      v23 = *(v22 + 8);
      v38 = *v22;
      v24 = *(v22 + 16);
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1C0BEC2C8();
      sub_1C0BEC098();
      sub_1C0BEC2E8();
      result = sub_1C0BEC2F8();
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
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v38;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C0BEB0CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529E0, &qword_1C0BED820);
  v38 = a2;
  result = sub_1C0BEC268();
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
      sub_1C0BEC2C8();
      sub_1C0BEC098();
      result = sub_1C0BEC2F8();
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

uint64_t sub_1C0BEB374(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C0BEA89C(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C0BEAE00(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1C0BEA89C(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1C0BEC298();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C0BEB660();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = v24[6] + 24 * v13;
  *v28 = a2;
  *(v28 + 8) = a3;
  *(v28 + 16) = a4;
  *(v24[7] + 8 * v13) = a1;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

void *sub_1C0BEB504()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C8, &qword_1C0BED7F8);
  v2 = *v0;
  v3 = sub_1C0BEC258();
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

void *sub_1C0BEB660()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529C0, &qword_1C0BED7F0);
  v2 = *v0;
  v3 = sub_1C0BEC258();
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOWORD(v18) = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v18;
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

void *sub_1C0BEB7DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529D0, &qword_1C0BED808);
  v2 = *v0;
  v3 = sub_1C0BEC258();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_1C0BEB944()
{
  v1 = v0;
  v2 = type metadata accessor for ReporterState(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  v6 = *v0;
  v7 = sub_1C0BEC258();
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
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1C0BEBE44(*(v6 + 56) + v23, v5);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_1C0BC9FA8(v5, *(v8 + 56) + v23);
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

uint64_t sub_1C0BEBB5C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data);
  result = sub_1C0BE6B24();
  if (!v3)
  {
    result = sub_1C0BD1A4C();
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || *(v1 + 24) == 0xFFFF)
  {

LABEL_8:
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v5 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v5, qword_1ED6F78B8);

    v6 = sub_1C0BEBF88();
    v7 = sub_1C0BEC128();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315394;
      v10 = sub_1C0BE6B24();
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0xE000000000000000;
      }

      v13 = sub_1C0BD80C0(v10, v12, &v17);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v14 = AudioServiceType.description.getter(*(v1 + 24));
      v16 = sub_1C0BD80C0(v14, v15, &v17);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1C0BC7000, v6, v7, "Unable to build MessageDimensions. { appName=%s, serviceType=%s }", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v9, -1, -1);
      MEMORY[0x1C68E0970](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C0BEBD5C()
{
  result = qword_1ED6F7500;
  if (!qword_1ED6F7500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6F7500);
  }

  return result;
}

uint64_t sub_1C0BEBDA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0BEBDF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C0BEBE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReporterState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}