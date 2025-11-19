size_t sub_29D702AC8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D703D28();
  v4 = *(sub_29D9339F8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29D702BB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D6A0C58();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_29D702C48(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_29D93A928();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_29D93AA48();
}

uint64_t (*sub_29D702CC0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6AE30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D7042E8;
  }

  __break(1u);
  return result;
}

void sub_29D702D40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D702DA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D702D40(255, a3, &unk_2A17B37A0, 0x29EDBAD60, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D702E20()
{
  result = qword_2A17B4C80;
  if (!qword_2A17B4C80)
  {
    sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4C80);
  }

  return result;
}

unint64_t sub_29D702E94()
{
  result = qword_2A17B2930;
  if (!qword_2A17B2930)
  {
    sub_29D702D40(255, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2930);
  }

  return result;
}

unint64_t sub_29D702F18()
{
  result = qword_2A17B4730;
  if (!qword_2A17B4730)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4730);
  }

  return result;
}

void (*sub_29D702F70(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6AE30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D702FF0;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D702FF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
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
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2968, &qword_2A17B81B0, 0x29EDBA008, MEMORY[0x29EDC9A40]);
          sub_29D703E04();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
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
        sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
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

uint64_t sub_29D7031A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
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
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2990, &unk_2A17B3720, 0x29EDC7DA8, MEMORY[0x29EDC9A40]);
          sub_29D703F0C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
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
        sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
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

uint64_t sub_29D703348(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
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
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
          sub_29D7034F0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
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
        sub_29D69567C(0, &qword_2A17B1380, 0x29EDBAB10);
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

unint64_t sub_29D7034F0()
{
  result = qword_2A17B2938;
  if (!qword_2A17B2938)
  {
    sub_29D702D40(255, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2938);
  }

  return result;
}

uint64_t sub_29D703574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_29D703580(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
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
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2958, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
          sub_29D703D80();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
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
        sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
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

uint64_t sub_29D703728(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
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
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2948, &qword_2A17B2940, 0x29EDC6288, MEMORY[0x29EDC9A40]);
          sub_29D703CA4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702F70(v13, i, a3);
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
        sub_29D69567C(0, &qword_2A17B2940, 0x29EDC6288);
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

uint64_t sub_29D7038D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
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
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2980, &qword_2A17B2978, 0x29EDC7DA0, MEMORY[0x29EDC9A40]);
          sub_29D703E88();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
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
        sub_29D69567C(0, &qword_2A17B2978, 0x29EDC7DA0);
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

void sub_29D703A8C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x29ED6AD40](a1, a2, v11);
      sub_29D69567C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_29D69567C(0, a5, a6);
    if (sub_29D93A908() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_29D93A918();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_29D93A6F8();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_29D93A708();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

unint64_t sub_29D703CA4()
{
  result = qword_2A17B2950;
  if (!qword_2A17B2950)
  {
    sub_29D702D40(255, &qword_2A17B2948, &qword_2A17B2940, 0x29EDC6288, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2950);
  }

  return result;
}

void sub_29D703D28()
{
  if (!qword_2A17B1438)
  {
    sub_29D9339F8();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1438);
    }
  }
}

unint64_t sub_29D703D80()
{
  result = qword_2A17B2960;
  if (!qword_2A17B2960)
  {
    sub_29D702D40(255, &qword_2A17B2958, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2960);
  }

  return result;
}

unint64_t sub_29D703E04()
{
  result = qword_2A17B2970;
  if (!qword_2A17B2970)
  {
    sub_29D702D40(255, &qword_2A17B2968, &qword_2A17B81B0, 0x29EDBA008, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2970);
  }

  return result;
}

unint64_t sub_29D703E88()
{
  result = qword_2A17B2988;
  if (!qword_2A17B2988)
  {
    sub_29D702D40(255, &qword_2A17B2980, &qword_2A17B2978, 0x29EDC7DA0, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2988);
  }

  return result;
}

unint64_t sub_29D703F0C()
{
  result = qword_2A17B2998;
  if (!qword_2A17B2998)
  {
    sub_29D702D40(255, &qword_2A17B2990, &unk_2A17B3720, 0x29EDC7DA8, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2998);
  }

  return result;
}

uint64_t sub_29D703F90(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_29D703FE4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2BF10);
    v16 = a1;
    v17 = sub_29D937878();
    v18 = sub_29D93A288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v24);
      *(v19 + 12) = 2112;
      v22 = [v16 sampleType];
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Found unexpected sample of type: %@", v19, 0x16u);
      sub_29D6ACA3C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    return 0;
  }

  v3 = v2;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v4 = *MEMORY[0x29EDBA890];
  v5 = a1;
  v6 = MEMORY[0x29ED6A6C0](v4);
  v7 = [v3 objectsForType_];

  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  sub_29D702E20();
  v8 = sub_29D93A0D8();

  v9 = sub_29D701128(v8);

  v10 = v9 != 0;
  if (v9)
  {
  }

  v11 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v12 = [v3 objectsForType_];

  v13 = sub_29D93A0D8();
  v14 = sub_29D701128(v13);

  if (!v14)
  {
    return 0;
  }

  return v10;
}

char *sub_29D704304()
{
  v1 = *v0;
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = sub_29D89AE08(1, 2, 4, 6);
  swift_setDeallocating();

  v5 = *(inited + 32);

  return v4;
}

uint64_t sub_29D7043DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7044CC();

  return MEMORY[0x2A1C5D108](a1, a2, a3, v6);
}

uint64_t sub_29D704440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7044CC();

  return MEMORY[0x2A1C5D0E8](a1, a2, a3, v6);
}

void sub_29D7044A4()
{
  sub_29D7044CC();
  sub_29D939058();
  __break(1u);
}

unint64_t sub_29D7044CC()
{
  result = qword_2A17B29A0;
  if (!qword_2A17B29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B29A0);
  }

  return result;
}

uint64_t sub_29D7045B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  sub_29D6B805C(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9371A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + qword_2A17B29B8);
  v16 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  swift_beginAccess();
  sub_29D6E8508(v15 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29D70647C(v8, sub_29D6B805C);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    v18 = sub_29D937878();
    v19 = sub_29D93A288();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v31);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s]: No status available for IRN; reporting 'inactive'", v20, 0xCu);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    v25 = *MEMORY[0x29EDC1768];
    v26 = sub_29D9346E8();
    return (*(*(v26 - 8) + 104))(a1, v25, v26);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v28 = sub_29D70D5A0(v14);
    (*(v10 + 8))(v14, v9);
    v29 = sub_29D9346E8();
    if (v28)
    {
      v30 = MEMORY[0x29EDC1760];
    }

    else
    {
      v30 = MEMORY[0x29EDC1768];
    }

    return (*(*(v29 - 8) + 104))(a1, *v30, v29);
  }
}

uint64_t sub_29D704928@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  swift_getObjectType();
  v1 = sub_29D9346E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v1, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v24 - v9;
  v11 = sub_29D934798();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D835400();
  v17 = sub_29D934758();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    sub_29D7045B8(v10);
    (*(v2 + 104))(v7, *MEMORY[0x29EDC1760], v1);
    v18 = sub_29D9346D8();
    v19 = *(v2 + 8);
    v19(v7, v1);
    v19(v10, v1);
    sub_29D83548C(v18 & 1, 1);
    sub_29D7045B8(v10);
    sub_29D9347C8();
    sub_29D9347A8();
    v19(v10, v1);
    v20 = v25;
    sub_29D9368E8();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v25;
  }

  v22 = sub_29D9368F8();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

uint64_t sub_29D704C0C()
{
  v0 = MEMORY[0x29EDCA190];
  v15 = MEMORY[0x29EDCA190];
  v1 = sub_29D704E2C();
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D70511C();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      MEMORY[0x29ED6A300]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
      v6 = v4;
      MEMORY[0x29ED6A300]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
      v7 = v15;
      if (v15 >> 62)
      {
        sub_29D935E88();
        v14 = sub_29D93AB48();

        swift_bridgeObjectRelease_n();
        v7 = v14;
      }

      else
      {
        v8 = v15 & 0xFFFFFFFFFFFFFF8;
        sub_29D935E88();
        sub_29D93AD88();
        if (swift_dynamicCastMetatype() || (v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
        {
LABEL_9:
        }

        else
        {
          v11 = (v8 + 32);
          while (*v11)
          {
            ++v11;
            if (!--v10)
            {
              goto LABEL_9;
            }
          }

          v7 = v8 | 1;
        }
      }

      return v7;
    }
  }

  if (!(v0 >> 62))
  {
    v7 = MEMORY[0x29EDCA190];
    sub_29D93ABD8();
    return v7;
  }

  return sub_29D93AB48();
}

id sub_29D704E2C()
{
  v1 = objc_opt_self();
  v2 = *(v0 + qword_2A17B29A8);
  v3 = *(v0 + qword_2A17B29A8 + 8);
  v4 = sub_29D939D28();
  v5 = [v1 groupSpecifierWithID_];

  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v6 irregularHeartRhythmFooterDescription];
    v8 = v7;
    v9 = v7;
    if (!v7)
    {
      sub_29D939D68();
      v9 = sub_29D939D28();

      sub_29D939D68();
      v8 = sub_29D939D28();
    }

    v10 = v7;
    v11 = [v6 irregularHeartRhythmFooterLinkTitle];
    if (!v11)
    {
      sub_29D939D68();
      v11 = sub_29D939D28();
    }

    v12 = [objc_allocWithZone(MEMORY[0x29EDBA0F8]) initWithString_];

    v13 = [v12 localizedStandardRangeOfString_];
    v15 = v14;

    sub_29D933DC8();
    sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v17)
    {
      sub_29D939D68();
      v17 = sub_29D939D28();
    }

    [v5 setProperty:v17 forKey:*MEMORY[0x29EDC62D0]];

    [v5 setProperty:v9 forKey:*MEMORY[0x29EDC62F0]];
    v22.location = v13;
    v22.length = v15;
    v18 = NSStringFromRange(v22);
    if (!v18)
    {
      sub_29D939D68();
      v18 = sub_29D939D28();
    }

    [v5 setProperty:v18 forKey:*MEMORY[0x29EDC62E0]];

    v19 = [objc_opt_self() valueWithNonretainedObject_];
    [v5 setProperty:v19 forKey:*MEMORY[0x29EDC62E8]];
    v20 = sub_29D939D28();

    [v5 setProperty:v20 forKey:*MEMORY[0x29EDC62D8]];
  }

  return v5;
}

id sub_29D70511C()
{
  v1 = [objc_opt_self() irregularHeartRhythmTitleDescription];
  if (!v1)
  {
    sub_29D939D68();
    v1 = sub_29D939D28();
  }

  v2 = [objc_opt_self() preferenceSpecifierNamed:v1 target:v0 set:sel_setAtrialFibrillationEnabledWithValue_ get:sel_isAtrialFibrillationEnabled detail:0 cell:6 edit:0];

  if (v2)
  {
    v3 = *(v0 + qword_2A17B29B0);
    v4 = *(v0 + qword_2A17B29B0 + 8);
    v5 = sub_29D939D28();
    [v2 setIdentifier_];

    v6 = sub_29D939FC8();
    [v2 setProperty:v6 forKey:*MEMORY[0x29EDC62A0]];
  }

  return v2;
}

uint64_t sub_29D70523C()
{
  sub_29D7061B8(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7061EC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D706220();
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7062B4();
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7063E8();
  v26 = *(v25 - 8);
  v46 = v25;
  v47 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v0 + qword_2A17B29B8);
  swift_beginAccess();
  sub_29D70693C(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);

  sub_29D9383A8();
  swift_endAccess();

  sub_29D7068F4(&qword_2A1A249F0, sub_29D7061EC);
  sub_29D938548();
  (*(v8 + 8))(v12, v7);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v32 = sub_29D93A468();
  v48 = v32;
  v33 = sub_29D93A448();
  (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
  sub_29D7068F4(&qword_2A17B2A18, sub_29D706220);
  sub_29D706380();
  v34 = v42;
  sub_29D938538();
  sub_29D70647C(v5, sub_29D7061B8);

  (*(v43 + 8))(v18, v34);
  swift_allocObject();
  v35 = v41;
  swift_unknownObjectWeakInit();
  sub_29D7068F4(&qword_2A17B2A28, sub_29D7062B4);
  v36 = v44;
  sub_29D9384B8();

  (*(v45 + 8))(v24, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D7068F4(&qword_2A17B2A30, sub_29D7063E8);
  v37 = v46;
  v38 = sub_29D938588();

  (*(v47 + 8))(v30, v37);
  v39 = *(v35 + qword_2A17B29C0);
  *(v35 + qword_2A17B29C0) = v38;
}

uint64_t sub_29D705804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_2A17B29D0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      swift_getObjectType();
      sub_29D9367B8();
      sub_29D936978();
    }

    v4 = v1[qword_2A17B29C8] ^ 1;
    v1[qword_2A17B29C8] = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_29D7058C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + qword_2A17B29D0;
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

id sub_29D705968(void *a1)
{
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16 - v10;
  v12 = a1;
  sub_29D7045B8(v11);
  (*(v3 + 104))(v8, *MEMORY[0x29EDC1760], v2);
  sub_29D9346D8();
  v13 = *(v3 + 8);
  v13(v8, v2);
  v13(v11, v2);
  v14 = sub_29D939FC8();

  return v14;
}

void sub_29D705AD4(_BYTE *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  a1[qword_2A17B29C8] = 1;
  v9 = a3;
  v6 = a1;
  v7 = [v9 BOOLValue];
  v8 = *(*&v6[qword_2A17B29B8] + 16);
  sub_29D835258(v7, v8, ObjectType, &off_2A2442300);
}

uint64_t sub_29D705B94(char *a1)
{
  swift_getObjectType();
  v2 = sub_29D9336F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a1[qword_2A17B29B8];
  v9 = a1;

  sub_29D8356A8(v10, &off_2A2442300, v7);

  sub_29D9336A8();

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_29D705CD4()
{
  v1 = *(v0 + qword_2A17B29A8 + 8);

  v2 = *(v0 + qword_2A17B29B0 + 8);

  v3 = *(v0 + qword_2A17B29B8);

  v4 = *(v0 + qword_2A17B29C0);

  v5 = v0 + qword_2A17B29D0;

  return sub_29D68B77C(v5);
}

uint64_t sub_29D705D64(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B29A8 + 8);

  v3 = *(a1 + qword_2A17B29B0 + 8);

  v4 = *(a1 + qword_2A17B29B8);

  v5 = *(a1 + qword_2A17B29C0);

  v6 = a1 + qword_2A17B29D0;

  return sub_29D68B77C(v6);
}

uint64_t sub_29D705E50()
{
  v1 = v0 + qword_2A17B29D0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D705EA0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17B29D0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D705F0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B29D0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

void sub_29D705FAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    sub_29D936978();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D936978();
  }

  free(v3);
}

void (*sub_29D70603C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D936958();
  return sub_29D69F0C0;
}

id sub_29D706170(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D706220()
{
  if (!qword_2A17B2A08)
  {
    sub_29D7061EC(255);
    sub_29D7068F4(&qword_2A1A249F0, sub_29D7061EC);
    v0 = sub_29D938108();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2A08);
    }
  }
}

void sub_29D7062B4()
{
  if (!qword_2A17B2A10)
  {
    sub_29D706220();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D7068F4(&qword_2A17B2A18, sub_29D706220);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2A10);
    }
  }
}

unint64_t sub_29D706380()
{
  result = qword_2A1A248E0;
  if (!qword_2A1A248E0)
  {
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A248E0);
  }

  return result;
}

void sub_29D7063E8()
{
  if (!qword_2A17B2A20)
  {
    sub_29D7062B4();
    sub_29D7068F4(&qword_2A17B2A28, sub_29D7062B4);
    v0 = sub_29D938168();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2A20);
    }
  }
}

uint64_t sub_29D70647C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D7064EC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_29D70693C(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = (v2 + qword_2A17B29A8);
  *v10 = 0xD00000000000001CLL;
  v10[1] = 0x800000029D95AFD0;
  v11 = (v2 + qword_2A17B29B0);
  *v11 = 0xD00000000000001ALL;
  v11[1] = 0x800000029D95AFF0;
  *(v2 + qword_2A17B29C0) = 0;
  *(v2 + qword_2A17B29C8) = 0;
  *(v2 + qword_2A17B29D0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_2A17B29B8) = a1;
  sub_29D8353E4();
  v12 = sub_29D934C58();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, a2, v12);
  (*(v13 + 56))(v9, 0, 1, v12);

  v14 = sub_29D934C48();
  sub_29D70523C();

  (*(v13 + 8))(a2, v12);
  return v14;
}

id sub_29D706714(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29D934C58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4);
  v10 = objc_allocWithZone(type metadata accessor for AtrialFibrillationSpecifierDataSource(0));
  v11 = sub_29D7064EC(a1, v9);
  sub_29D7068F4(&qword_2A17B2A40, type metadata accessor for AtrialFibrillationSpecifierDataSource);
  v12 = v11;
  v13 = sub_29D9365D8();
  sub_29D835A38();
  v14 = sub_29D939D28();

  [v13 setTitle_];

  (*(v5 + 8))(a2, v4);
  return v13;
}

uint64_t sub_29D7068F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D70693C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D7069A0(void *a1, uint64_t *a2, char a3)
{
  v56 = a2;
  sub_29D708E14(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v55 - v9;
  v11 = &v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_consumedHealthExperienceStore];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_objectType;
  *&v3[v12] = [objc_opt_self() electrocardiogramType];
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_cancellables] = MEMORY[0x29EDCA1A0];
  v13 = [a1 profile];
  v14 = [v13 healthStore];

  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_providedHealthStore] = v14;
  v15 = objc_opt_self();
  v16 = [a1 profile];
  v17 = [v16 healthStore];

  v18 = [v15 sharedInstanceForHealthStore_];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = [v18 displayTypeForObjectType_];

  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType;
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType] = v19;
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory] = a1;
  sub_29D6945AC(v56, &v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager]);
  v21 = a1;
  v22 = [v21 profile];
  v23 = [v22 healthStore];

  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = [v23 profileIdentifier];

  v25 = [v24 type];
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_profileType] = v25;
  if (a3 != 4)
  {
    v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_dataTypeDetailMode] = a3;
    v31 = qword_29D9432F8[a3];
LABEL_9:
    v32 = *&v3[v20];
    v33 = [v21 profile];
    v34 = type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
    v59.receiver = v3;
    v59.super_class = v34;
    v35 = objc_msgSendSuper2(&v59, sel_initWithDisplayType_profile_mode_, v32, v33, v31);

    v36 = *&v35[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType];
    v37 = v35;
    if ([v36 allowsManualEntry])
    {
      v38 = v37[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_dataTypeDetailMode];
      v39 = sub_29D9354E8();
      v41 = v40;
      if (v39 == sub_29D9354E8() && v41 == v42)
      {
      }

      else
      {
        v44 = sub_29D93AD78();

        if ((v44 & 1) == 0)
        {
LABEL_19:

          sub_29D69417C(v56);
          return;
        }
      }

      v45 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:4 target:v37 action:sel_showAddDataVC];
      v57 = 0;
      v58 = 0xE000000000000000;
      v46 = v45;
      sub_29D93AA18();
      v47 = *MEMORY[0x29EDC43E0];
      v48 = sub_29D939D68();
      v50 = v49;

      v57 = v48;
      v58 = v50;
      MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D95B180);
      v51 = sub_29D939D28();

      [v46 setAccessibilityIdentifier_];

      v52 = qword_2A1A257A0;
      v43 = v46;
      if (v52 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v53 = sub_29D939D28();

      [v43 setAccessibilityValue_];

      v54 = [v37 navigationItem];
      [v54 setRightBarButtonItem_];

      v21 = v54;
    }

    else
    {
      v43 = v37;
    }

    goto LABEL_19;
  }

  v26 = [v21 profile];
  v27 = [v26 healthStore];

  if (v27)
  {
    v28 = [v27 profileIdentifier];

    v29 = sub_29D9350C8();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    v30 = MEMORY[0x29ED658D0](v28, v10);

    sub_29D708C88(v10, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
    v31 = 0;
    v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_dataTypeDetailMode] = v30;
    goto LABEL_9;
  }

LABEL_24:
  __break(1u);
}

id sub_29D7070AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v5 = [*&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory] profile];
    sub_29D93A388();
    v6 = type metadata accessor for SummariesElectrocardiogramListDataProvider();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher] = 0;
    result = [v5 healthStore];
    if (result)
    {
      *&v7[OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_store] = result;
      sub_29D6945AC(v14, &v7[OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_healthExperienceStore]);
      v13.receiver = v7;
      v13.super_class = v6;
      v9 = objc_msgSendSuper2(&v13, sel_initWithDisplayType_profile_mode_, a1, v5, 2);

      sub_29D69417C(v14);
      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
    v12 = objc_msgSendSuper2(&v15, sel_createDataProviderWithDisplayType_profile_mode_, a1, a2, a3);

    return v12;
  }

  return result;
}

uint64_t sub_29D707284()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = v0[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_dataTypeDetailMode];
  v2 = sub_29D9354E8();
  v4 = v3;
  if (v2 == sub_29D9354E8() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_29D93AD78();

    if ((v7 & 1) == 0)
    {
      sub_29D7079F0();
    }
  }

  v8 = *&v0[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_objectType];
  v9 = *MEMORY[0x29EDC43C8];
  v10 = *&v0[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_providedHealthStore];
  sub_29D708E70(&qword_2A17B2B28);
  return sub_29D936EF8();
}

uint64_t sub_29D70742C()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager + 32);
  sub_29D693E2C((v0 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager), *(v0 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager + 24));
  v2 = *(v0 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_objectType);
  sub_29D93A1F8();
  v3 = sub_29D934318();

  if (v3 == 2)
  {
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF40);
    v5 = sub_29D937878();
    v6 = sub_29D93A2A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Unable to fetch pinned status", v7, 0xCu);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_29D707630(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2BF40);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Setting favorite: %{BOOL}d", v7, 0x12u);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager + 32);
  sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager), *(v2 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager + 24));
  v13 = *(v2 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_objectType);
  if (a1)
  {
    return sub_29D934328();
  }

  else
  {
    return sub_29D934338();
  }
}

void sub_29D7077E4()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType];
  v9 = [*&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory] profile];
  v10 = [v9 healthStore];

  if (v10)
  {
    v11 = [v1 resolvedHealthToolbox];
    sub_29D9339E8();
    v12 = sub_29D933958();
    (*(v3 + 8))(v7, v2);
    v13 = [v8 wd:v10 addDataViewControllerWithHealthStore:v11 healthToolBox:v12 initialStartDate:?];

    v14 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v1 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7079F0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_consumedHealthExperienceStore;
  swift_beginAccess();
  sub_29D708D30(&v1[v2], v21);
  v3 = v22;
  if (!v22)
  {
    goto LABEL_11;
  }

  v4 = sub_29D693E2C(v21, v22);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8);
  sub_29D708C88(v21, &qword_2A17B2B10, sub_29D708DB0);
  v9 = sub_29D933EC8();
  (*(v5 + 8))(v8, v3);
  v10 = *&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory];
  v11 = [v10 profile];
  v12 = [v11 healthStore];

  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = [v12 profileIdentifier];

  v14 = [v10 profile];
  v15 = [v14 healthStore];

  if (!v15)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    sub_29D708C88(v21, &qword_2A17B2B10, sub_29D708DB0);
    sub_29D93AB28();
    __break(1u);
    return;
  }

  v16 = [v1 title];
  if (v16)
  {
    v17 = v16;
    sub_29D939D68();
  }

  v18 = v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_dataTypeDetailMode];
  type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
  sub_29D708E70(&qword_2A17B2B18);
  v19 = sub_29D936C98();

  if (v19)
  {
    swift_beginAccess();
    sub_29D938258();
    swift_endAccess();
  }

  else
  {
  }
}

void sub_29D707D60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v46 = sub_29D937898();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v46, v4);
  v45 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D708E14(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v38[3] = v38 - v9;
  sub_29D708E14(0, &qword_2A17B2B20, MEMORY[0x29EDC4378]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v39 = v38 - v13;
  v14 = sub_29D939A78();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v40 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v41 = v38 - v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = ObjectType;
  v47 = v1;
  v23 = *&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_providedHealthStore];
  v24 = *MEMORY[0x29EDBA6D0];
  v25 = type metadata accessor for ECGFeatureRegulatoryInfoTransformProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v38[2] = v23;
  v38[1] = v24;
  v28 = sub_29D939A98();
  v49 = v25;
  v50 = MEMORY[0x29EDC43B8];
  v48 = v28;
  if (qword_2A17B0D58 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9336E8();

  v29 = v39;
  sub_29D939A48();
  v30 = sub_29D939A58();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v31 = v46;
  v32 = sub_29D69C6C0(v46, qword_2A1A2BF40);
  (*(v44 + 16))(v45, v32, v31);
  v33 = v41;
  sub_29D939A68();
  v34 = objc_allocWithZone(type metadata accessor for ElectroCardiogramFeatureRegulatoryDetailViewController());
  v36 = v42;
  v35 = v43;
  (*(v42 + 16))(v40, v33, v43);
  v37 = sub_29D938CF8();
  (*(v36 + 8))(v33, v35);
  [v47 showAdaptively:v37 sender:0];
}

void sub_29D7082CC()
{
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2BF40);
  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446210;
    v5 = sub_29D93AF08();
    v7 = sub_29D6C2364(v5, v6, &v12);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s] Reenable ECG button action selected", v3, 0xCu);
    sub_29D69417C(v4);
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong navigationController];
    if (v10)
    {
      v11 = v10;
    }

    [v9 didSelectReenableFeature];
  }
}

uint64_t sub_29D708498(uint64_t a1)
{
  v3 = sub_29D939A78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D938CF8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t type metadata accessor for ElectroCardiogramFeatureRegulatoryDetailViewController()
{
  result = qword_2A17B2A90;
  if (!qword_2A17B2A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D708834(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v1 action:sel_didTapDone_];
    v9 = v4;
    v8 = MEMORY[0x29EDCA190];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x29ED6A300]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
    }
  }

  else
  {
    v9 = 0;
  }

  sub_29D708C88(&v9, &qword_2A17B2B00, sub_29D708CE4);
  sub_29D708CE4();
  v6 = sub_29D939F18();

  [v3 setRightBarButtonItems_];
}

uint64_t sub_29D708994(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return sub_29D69417C(v4);
}

uint64_t sub_29D708A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D939A78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v2);
  (*(v5 + 16))(v9, a2, v4);
  v11 = sub_29D938CE8();
  (*(v5 + 8))(a2, v4);
  return v11;
}

id sub_29D708B10(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ElectroCardiogramFeatureRegulatoryDetailViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D708BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29D708BE8(void *a1)
{
  v1 = a1;
  sub_29D708834(1);
}

void sub_29D708C38(void *a1)
{
  v1 = a1;
  sub_29D708834(0);
}

uint64_t sub_29D708C88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D708E14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D708CE4()
{
  result = qword_2A17B2B08;
  if (!qword_2A17B2B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B2B08);
  }

  return result;
}

uint64_t sub_29D708D30(uint64_t a1, uint64_t a2)
{
  sub_29D708E14(0, &qword_2A17B2B10, sub_29D708DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D708DB0()
{
  result = qword_2A17B50D0;
  if (!qword_2A17B50D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B50D0);
  }

  return result;
}

void sub_29D708E14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D708E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D7082CC();
}

uint64_t sub_29D708E70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_29D708EB0(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_isOnboarding] = a1;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v4 = sub_29D939D28();

  v5 = sub_29D939D28();

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_initWithTitle_detailText_icon_contentLayout_, v4, v5, 0, 4, 0xE000000000000000);

  if (a1)
  {
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v7 = sub_29D939D28();
  }

  else
  {
    [v6 setAdditionalSafeAreaInsets_];
  }

  return v6;
}

void sub_29D7090E4()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    if (*(v0 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_isOnboarding) == 1)
    {
    }

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A2C038;
    v9 = sub_29D939D28();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

    v11 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    v12 = v11;
    [v12 setContentMode_];
    v13 = [v0 contentView];
    [v13 addSubview_];

    v14 = [v0 contentView];
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = [v0 contentView];
    v17 = [v16 safeAreaLayoutGuide];

    [v12 hk:v17 alignConstraintsWithGuide:?];
    v18 = [v12 heightAnchor];

    v19 = [v0 view];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 heightAnchor];

      v22 = [v18 constraintEqualToAnchor:v21 multiplier:0.34];
      [v22 setActive_];

      sub_29D93A538();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29D709700(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D70974C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D70B5E0();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AB34(0, &qword_2A17B2B48, MEMORY[0x29EDB8550]);
  v11 = v10;
  sub_29D937BE8();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, *a1, v11);
  sub_29D70AB34(0, &qword_2A17B2B50, MEMORY[0x29EDB86C8]);
  v14 = v13;
  sub_29D937F08();
  v15 = *(v5 + 56);
  v24 = v15;
  v16 = *(v14 - 8);
  (*(v16 + 16))(&v9[v15], a1[1], v14);
  sub_29D70ABCC();
  v18 = v17;
  sub_29D70ACCC();
  sub_29D70AD94();
  sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94);
  v19 = *(v5 + 72);
  v20 = a1[2];
  v21 = *(v18 - 8);
  (*(v21 + 16))(&v9[v19], v20, v18);
  (*(v12 + 32))(a2, v9, v11);
  (*(v16 + 32))(a2 + *(v5 + 56), &v9[v24], v14);
  return (*(v21 + 32))(a2 + *(v5 + 72), &v9[v19], v18);
}

void sub_29D7099E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  v1 = sub_29D939D28();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_2A17D0870 = v0;
}

uint64_t sub_29D709A58@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_29D937D68();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D937CB8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v7 = type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v10 = MEMORY[0x29EDB9D18];
  sub_29D70B704(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v15 = &v29 - v14;
  v16 = sub_29D933CC8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D937CF8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  (*(v17 + 104))(v21, *MEMORY[0x29EDB9CD8], v16);
  v25 = sub_29D933CE8();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  sub_29D937CD8();
  sub_29D70B758(v15, &qword_2A17B1F98, v10);
  (*(v17 + 8))(v21, v16);
  sub_29D70A924(v31, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v27 = swift_allocObject();
  sub_29D70A988(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D70AA6C();
  sub_29D70AFA0();
  return sub_29D937F88();
}

uint64_t type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider()
{
  result = qword_2A17B2B98;
  if (!qword_2A17B2B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D709E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v106 = a3;
  v4 = sub_29D937E18();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v93 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D937E48();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AD94();
  v100 = v12;
  v97 = *(v12 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ACCC();
  v102 = v16;
  v101 = *(v16 - 8);
  v17 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v98 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ABCC();
  v105 = v20;
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v103 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v99 = &v87 - v26;
  v27 = sub_29D937EE8();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27 - 8, v29);
  v89 = sub_29D937F08();
  v30 = *(v89 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v89, v32);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AB34(0, &qword_2A17B2B50, MEMORY[0x29EDB86C8]);
  v96 = v35;
  v95 = *(v35 - 8);
  v36 = *(v95 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v110 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v109 = &v87 - v41;
  v42 = sub_29D937BE8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v42, v45);
  v47 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AB34(0, &qword_2A17B2B48, MEMORY[0x29EDB8550]);
  v108 = v48;
  v90 = *(v48 - 8);
  v49 = *(v90 + 64);
  v51 = MEMORY[0x2A1C7C4A8](v48, v50);
  v107 = &v87 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v51, v53);
  v111 = &v87 - v54;
  v88 = a1;
  v55 = sub_29D937FF8();
  if (v55)
  {
    if (qword_2A17B0C98 != -1)
    {
      swift_once();
    }

    v87 = xmmword_2A17D0CF0;
    v56 = qword_2A17D0D00;
    v57 = qword_2A17D0D10;
    v55 = sub_29D935E88();
    v58 = v87;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0uLL;
  }

  v120 = v58;
  v121 = v56;
  v122 = v55;
  v123 = v57;
  sub_29D937BD8();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v59 = qword_2A17D0CC0;
  *&v116 = qword_2A17D0CC0;

  sub_29D937EB8();
  (*(v43 + 8))(v47, v42);
  if (qword_2A17B0C98 != -1)
  {
    swift_once();
  }

  v116 = xmmword_2A17D0CF0;
  v117 = qword_2A17D0D00;
  v118 = qword_2A17D0D08;
  v119 = qword_2A17D0D10;
  sub_29D935E88();
  sub_29D937ED8();
  sub_29D937EF8();
  v112 = v59;
  v60 = v89;
  sub_29D937EB8();

  (*(v30 + 8))(v34, v60);
  v61 = sub_29D937E28();
  MEMORY[0x2A1C7C4A8](v61, v62);
  sub_29D937E08();
  sub_29D70ADF8();
  v86[2] = v63;
  v86[3] = sub_29D70AEA8();
  v86[0] = sub_29D70B5D8;
  v86[1] = v86;
  v64 = v94;
  sub_29D937D18();
  if (qword_2A17B0CA0 != -1)
  {
    swift_once();
  }

  v112 = qword_2A17D0D18;
  v65 = sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94);
  v66 = MEMORY[0x29EDBCA98];
  v67 = MEMORY[0x29EDBCA88];
  v68 = v98;
  v69 = v100;
  sub_29D937EB8();
  (*(v97 + 8))(v64, v69);
  if (qword_2A17B0CA8 != -1)
  {
    swift_once();
  }

  v112 = v69;
  v113 = v66;
  v114 = v65;
  v115 = v67;
  swift_getOpaqueTypeConformance2();
  v70 = v99;
  v71 = v102;
  sub_29D937EC8();
  (*(v101 + 8))(v68, v71);
  v72 = v90;
  v73 = v107;
  (*(v90 + 16))(v107, v111, v108);
  v112 = v73;
  v74 = v95;
  v76 = v109;
  v75 = v110;
  v77 = v96;
  (*(v95 + 16))(v110, v109, v96);
  v113 = v75;
  v78 = v104;
  v79 = v103;
  v80 = v105;
  (*(v104 + 16))(v103, v70, v105);
  v114 = v79;
  sub_29D70974C(&v112, v106);
  v81 = *(v78 + 8);
  v81(v70, v80);
  v82 = *(v74 + 8);
  v82(v76, v77);
  v83 = *(v72 + 8);
  v84 = v108;
  v83(v111, v108);
  v81(v79, v80);
  v82(v110, v77);
  return (v83)(v107, v84);
}

uint64_t sub_29D70A924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70A988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70A9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D709E44(a1, v6, a2);
}

void sub_29D70AA6C()
{
  if (!qword_2A17B2B40)
  {
    sub_29D70AB34(255, &qword_2A17B2B48, MEMORY[0x29EDB8550]);
    sub_29D70AB34(255, &qword_2A17B2B50, MEMORY[0x29EDB86C8]);
    sub_29D70ABCC();
    v0 = sub_29D937BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2B40);
    }
  }
}

void sub_29D70AB34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D70ABCC()
{
  if (!qword_2A17B2B58)
  {
    sub_29D70ACCC();
    sub_29D70AD94();
    sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2B58);
    }
  }
}

void sub_29D70ACCC()
{
  if (!qword_2A17B2B60)
  {
    sub_29D70AD94();
    sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2B60);
    }
  }
}

void sub_29D70AD94()
{
  if (!qword_2A17B2B68)
  {
    sub_29D70ADF8();
    sub_29D70AEA8();
    v0 = sub_29D937D28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2B68);
    }
  }
}

void sub_29D70ADF8()
{
  if (!qword_2A17B2B70)
  {
    sub_29D70AE58();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2B70);
    }
  }
}

void sub_29D70AE58()
{
  if (!qword_2A17B17B8)
  {
    v0 = sub_29D939088();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B17B8);
    }
  }
}

unint64_t sub_29D70AEA8()
{
  result = qword_2A17B2B78;
  if (!qword_2A17B2B78)
  {
    sub_29D70ADF8();
    sub_29D70AF58(&qword_2A17B17F8, sub_29D70AE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2B78);
  }

  return result;
}

uint64_t sub_29D70AF58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D70AFA0()
{
  result = qword_2A17B2B88;
  if (!qword_2A17B2B88)
  {
    sub_29D70AA6C();
    sub_29D937BE8();
    swift_getOpaqueTypeConformance2();
    sub_29D937F08();
    swift_getOpaqueTypeConformance2();
    sub_29D70ACCC();
    sub_29D70AD94();
    sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2B88);
  }

  return result;
}

uint64_t sub_29D70B130@<X0>(uint64_t a1@<X8>)
{
  sub_29D70B1C4();
  sub_29D69AB60();
  v2 = sub_29D9392F8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 0x4000000000000000;
  return result;
}

uint64_t sub_29D70B1C4()
{
  v0 = sub_29D933CC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70B704(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v33 - v19;
  sub_29D937FD8();
  sub_29D6A0A20(v20, v17);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    v21 = MEMORY[0x29EDB9BC8];
    sub_29D70B758(v17, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    sub_29D70B758(v20, &qword_2A1A25780, v21);
    return 0;
  }

  (*(v7 + 32))(v11, v17, v6);
  (*(v1 + 104))(v5, *MEMORY[0x29EDB9CD8], v0);
  v23 = sub_29D933CD8();
  (*(v1 + 8))(v5, v0);
  v24 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v23 == 1 || !sub_29D937FF8())
  {
    if (qword_2A17B0BF8 == -1)
    {
LABEL_10:
      v28 = qword_2A17D0870;
      v29 = sub_29D933958();
      v30 = [v28 stringFromDate_];

      v26 = sub_29D939D68();
      v27 = v31;

      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_10;
  }

  result = sub_29D933B88();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v24 < *(result + 16))
  {
    v25 = result + 16 * v24;
    v26 = *(v25 + 32);
    v27 = *(v25 + 40);
    sub_29D935E88();

LABEL_11:
    v33[2] = v26;
    v33[3] = v27;
    sub_29D69AB60();
    v32 = sub_29D93A808();
    (*(v7 + 8))(v11, v6);
    sub_29D70B758(v20, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);

    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D70B5D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_29D70B130(a1);
}

void sub_29D70B5E0()
{
  if (!qword_2A17B2B90)
  {
    sub_29D70AB34(255, &qword_2A17B2B48, MEMORY[0x29EDB8550]);
    sub_29D70AB34(255, &qword_2A17B2B50, MEMORY[0x29EDB86C8]);
    sub_29D70ABCC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B2B90);
    }
  }
}

uint64_t sub_29D70B6B0@<X0>(void *a1@<X8>)
{
  result = sub_29D9389A8();
  *a1 = v3;
  return result;
}

void sub_29D70B704(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D70B758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D70B704(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D70B7DC()
{
  result = sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D70B8FC(void *a1)
{
  v2 = v1;
  if (![a1 healthDataSource])
  {
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v4 = sub_29D73F010(MEMORY[0x29EDCA190]);
  if (*(v2 + 16) > 1u)
  {
    if (*(v2 + 16) == 2)
    {
      v5 = 0x800000029D9576A0;
      v6 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x800000029D9576C0;
      v6 = 0xD000000000000014;
    }
  }

  else if (*(v2 + 16))
  {
    v5 = 0xED00007365636974;
    v6 = 0x6361725074736562;
  }

  else
  {
    v5 = 0xEF676E6967676F4CLL;
    v6 = 0x6574616974696E69;
  }

  v7 = MEMORY[0x29EDC99B0];
  v91 = MEMORY[0x29EDC99B0];
  *&v90 = v6;
  *(&v90 + 1) = v5;
  sub_29D6940E0(&v90, v89);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v4;
  sub_29D69242C(v89, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v9 = v92;
  v10 = *(v2 + 17);
  if (v10 <= 2)
  {
    if (*(v2 + 17))
    {
      if (v10 == 1)
      {
        v11 = 0xE400000000000000;
        v12 = 1954047342;
      }

      else
      {
        v11 = 0xE900000000000073;
        v12 = 0x64616F4C77656976;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      v12 = 0x6C65636E6163;
    }
  }

  else if (*(v2 + 17) > 4u)
  {
    if (v10 == 5)
    {
      v11 = 0xE600000000000000;
      v12 = 0x776F4E746F6ELL;
    }

    else
    {
      v12 = 0x7461446465646461;
      v11 = 0xE900000000000061;
    }
  }

  else if (v10 == 3)
  {
    v11 = 0xE400000000000000;
    v12 = 1701736292;
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x4A5042676F6CLL;
  }

  v91 = v7;
  *&v90 = v12;
  *(&v90 + 1) = v11;
  sub_29D6940E0(&v90, v89);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0x6E6F69746361, 0xE600000000000000, v13);
  v92 = v9;
  v14 = *(v2 + 18);
  v88 = a1;
  if (v14 <= 1)
  {
    if (*(v2 + 18))
    {
      v15 = 0x800000029D957700;
      v16 = 0xD000000000000013;
    }

    else
    {
      v15 = 0xEF4A50426D6F6F52;
      v16 = 0x6570795461746164;
    }

    goto LABEL_31;
  }

  if (v14 == 2)
  {
    v15 = 0xEA0000000000676ELL;
    v16 = 0x696472616F626E6FLL;
    goto LABEL_31;
  }

  if (v14 == 3)
  {
    v15 = 0x800000029D957720;
    v16 = 0xD000000000000014;
LABEL_31:
    v91 = v7;
    *&v90 = v16;
    *(&v90 + 1) = v15;
    sub_29D6940E0(&v90, v89);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v89, 0x6E616E65766F7270, 0xEA00000000006563, v18);
    v17 = v9;
    goto LABEL_32;
  }

  sub_29D8C42F8(0x6E616E65766F7270, 0xEA00000000006563, &v90);
  sub_29D6FE6B0(&v90);
  v17 = v92;
LABEL_32:
  v19 = *(v2 + 24);
  v20 = *(v2 + 32);
  v91 = v7;
  *&v90 = v19;
  *(&v90 + 1) = v20;
  sub_29D6940E0(&v90, v89);
  sub_29D935E88();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0x7954776F646E6977, 0xEA00000000006570, v21);
  v92 = v17;
  v22 = *(v2 + 40);
  v23 = MEMORY[0x29EDC9BA8];
  v91 = MEMORY[0x29EDC9BA8];
  *&v90 = v22;
  sub_29D6940E0(&v90, v89);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0xD000000000000011, 0x800000029D95B4C0, v24);
  v25 = v17;
  v26 = *(v2 + 48);
  v27 = MEMORY[0x29EDBA358];
  if (v26 == 2)
  {
    v28 = *MEMORY[0x29EDBA358];
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v29 = v28;
  v30 = sub_29D6B73CC();
  v91 = v30;
  *&v90 = v29;
  sub_29D6940E0(&v90, v89);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0x676E616843646964, 0xED00006574614465, v31);
  v92 = v25;
  v32 = *(v2 + 49);
  if (v32 == 2)
  {
    v33 = *v27;
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v91 = v30;
  *&v90 = v33;
  sub_29D6940E0(&v90, v89);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0x654C706154646964, 0xEF65726F4D6E7261, v34);
  v35 = *(v2 + 50);
  if (v35 == 2)
  {
    v36 = *v27;
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v87 = v30;
  v91 = v30;
  *&v90 = v36;
  sub_29D6940E0(&v90, v89);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0xD000000000000010, 0x800000029D95B4F0, v37);
  v38 = v25;
  v39 = *(v2 + 56);
  v40 = *(v2 + 64);
  v41 = MEMORY[0x29EDC99B0];
  v91 = MEMORY[0x29EDC99B0];
  *&v90 = v39;
  *(&v90 + 1) = v40;
  sub_29D6940E0(&v90, v89);
  sub_29D935E88();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0x546C616E72756F6ALL, 0xEB00000000657079, v42);
  v43 = *(v2 + 72);
  v91 = v23;
  *&v90 = v43;
  sub_29D6940E0(&v90, v89);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0xD000000000000023, 0x800000029D95B510, v44);
  v45 = *(v2 + 80);
  v91 = v23;
  *&v90 = v45;
  sub_29D6940E0(&v90, v89);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, 0xD00000000000001BLL, 0x800000029D95B540, v46);
  v47 = v38;
  v92 = v38;
  v48 = *MEMORY[0x29EDBA368];
  v49 = sub_29D939D68();
  v51 = v50;
  v52 = [v88 environmentDataSource];
  v53 = [v52 activePairedDeviceOSBuildNumber];

  if (v53)
  {
    v54 = sub_29D939D68();
    v56 = v55;

    v91 = v41;
    *&v90 = v54;
    *(&v90 + 1) = v56;
    sub_29D6940E0(&v90, v89);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v89, v49, v51, v57);

    v92 = v47;
  }

  else
  {
    sub_29D8C42F8(v49, v51, &v90);

    sub_29D6FE6B0(&v90);
  }

  v58 = *MEMORY[0x29EDBA370];
  v59 = sub_29D939D68();
  v61 = v60;
  v62 = [v88 environmentDataSource];
  v63 = [v62 activePairedDeviceProductType];

  if (v63)
  {
    v64 = sub_29D939D68();
    v66 = v65;

    v91 = MEMORY[0x29EDC99B0];
    *&v90 = v64;
    *(&v90 + 1) = v66;
    sub_29D6940E0(&v90, v89);
    v67 = v92;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v89, v59, v61, v68);

    v92 = v67;
  }

  else
  {
    sub_29D8C42F8(v59, v61, &v90);

    sub_29D6FE6B0(&v90);
  }

  v69 = *MEMORY[0x29EDBA378];
  v70 = sub_29D939D68();
  v72 = v71;
  v73 = [v88 environmentDataSource];
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v74 = sub_29D937898();
  sub_29D69C6C0(v74, qword_2A1A2BF10);
  type metadata accessor for BloodPressureJournalLoggingAnalyticsEvent();
  v75 = sub_29D93A2F8();

  v91 = v87;
  *&v90 = v75;
  sub_29D6940E0(&v90, v89);
  v76 = v92;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, v70, v72, v77);

  v92 = v76;
  v78 = *MEMORY[0x29EDBA380];
  v79 = sub_29D939D68();
  v81 = v80;
  v82 = sub_29D93A308();
  v91 = MEMORY[0x29EDC99B0];
  *&v90 = v82;
  *(&v90 + 1) = v83;
  sub_29D6940E0(&v90, v89);
  v84 = v92;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v89, v79, v81, v85);

  sub_29D936978();
  return v84;
}

uint64_t sub_29D70C3E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_29D70C44C()
{
  if (!qword_2A1A24810)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24810);
    }
  }
}

uint64_t sub_29D70C4A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D70C518()
{
  v1 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_subscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x29EDCA1A0];

  sub_29D69417C((v0 + 24));
  v3 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability__featureStatus;
  sub_29D70CFAC(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_29D70D96C(v0 + OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status, sub_29D6B805C);
  v5 = *(v0 + v1);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AtrialFibrillationFeatureStatusAvailability()
{
  result = qword_2A1A24D58;
  if (!qword_2A1A24D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D70C6A8()
{
  sub_29D70CFAC(319, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_29D6B805C(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D70C7C4()
{
  v1 = v0;
  v33[1] = *v0;
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v34 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D278C(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v36 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v33 - v13;
  sub_29D6B805C(0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v35 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v23 = v33 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = v33 - v25;
  v27 = v0[7];
  sub_29D693E2C(v0 + 3, v0[6]);
  sub_29D937238();
  (*(v3 + 56))(v23, 0, 1, v2);
  sub_29D70D9CC(v23, v26);
  v28 = v35;
  v29 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  swift_beginAccess();
  sub_29D70D908(v26, v1 + v29);
  swift_endAccess();
  sub_29D6D27C0(v26, v28, sub_29D6B805C);
  if ((*(v3 + 48))(v28, 1, v2) == 1)
  {
    v30 = sub_29D9346E8();
    (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  }

  else
  {
    v31 = v34;
    (*(v3 + 32))(v34, v28, v2);

    sub_29D70CD74(v31, v14);
    (*(v3 + 8))(v31, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D6D27C0(v14, v36, sub_29D6D278C);

  sub_29D9383D8();
  sub_29D70D96C(v14, sub_29D6D278C);
  return sub_29D70D96C(v26, sub_29D6B805C);
}

uint64_t sub_29D70CD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x29EDBA5A0];
  v5 = sub_29D9371B8();
  v6 = *MEMORY[0x29EDBA5A8];
  v7 = sub_29D93A648();

  if (v7)
  {
    if (sub_29D70D400())
    {
      v8 = sub_29D9371B8();
      v9 = *MEMORY[0x29EDBA620];
      v10 = sub_29D93A648();
      v11 = *MEMORY[0x29EDBA6A8];
      v12 = sub_29D93A648();

      if (v10 & 1) != 0 && (v12)
      {
        v13 = sub_29D70D5A0(a1);
        v14 = sub_29D9346E8();
        v15 = *(v14 - 8);
        v26 = (v15 + 56);
        if (v13)
        {
          v16 = MEMORY[0x29EDC1760];
        }

        else
        {
          v16 = MEMORY[0x29EDC1768];
        }

        (*(v15 + 104))(a2, *v16, v14);
        v18 = *v26;
        v20 = a2;
        v21 = 0;
        v19 = v14;
        goto LABEL_13;
      }

      v22 = MEMORY[0x29EDC1758];
    }

    else
    {
      v22 = MEMORY[0x29EDC1750];
    }

    v23 = *v22;
    v24 = sub_29D9346E8();
    v27 = *(v24 - 8);
    (*(v27 + 104))(a2, v23, v24);
    v18 = *(v27 + 56);
    v20 = a2;
    v21 = 0;
    v19 = v24;
  }

  else
  {
    v17 = sub_29D9346E8();
    v18 = *(*(v17 - 8) + 56);
    v19 = v17;
    v20 = a2;
    v21 = 1;
  }

LABEL_13:

  return v18(v20, v21, 1, v19);
}

void sub_29D70CFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D70D010(uint64_t a1)
{
  sub_29D6D278C(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v21[-v9];
  sub_29D6B805C(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_29D9371A8();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v15, a1, v18);
    (*(v19 + 56))(v15, 0, 1, v18);
    v20 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
    swift_beginAccess();
    sub_29D70DA30(v15, v17 + v20);
    swift_endAccess();
    sub_29D70CD74(a1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6D27C0(v10, v7, sub_29D6D278C);
    sub_29D9383D8();
    return sub_29D70D96C(v10, sub_29D6D278C);
  }

  return result;
}

uint64_t sub_29D70D258(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D70D2D4(uint64_t a1, uint64_t *a2)
{
  sub_29D6D278C(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v15 - v11;
  sub_29D6D27C0(a1, &v15 - v11, sub_29D6D278C);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D6D27C0(v12, v9, sub_29D6D278C);

  sub_29D9383D8();
  return sub_29D70D96C(v12, sub_29D6D278C);
}

uint64_t sub_29D70D400()
{
  v0 = *MEMORY[0x29EDBA5A0];
  v1 = sub_29D9371B8();
  v2 = *MEMORY[0x29EDBA640];
  v3 = sub_29D93A648();

  v4 = sub_29D9371B8();
  v5 = *MEMORY[0x29EDBA5C0];
  v6 = sub_29D93A648();
  v7 = *MEMORY[0x29EDBA680];
  v8 = sub_29D93A648();

  v9 = sub_29D9371B8();
  v10 = *MEMORY[0x29EDBA5D0];
  v11 = sub_29D93A648();
  v12 = *MEMORY[0x29EDBA5D8];
  v13 = sub_29D93A648();

  if (sub_29D937198())
  {
    v14 = sub_29D9371B8();
    v15 = *MEMORY[0x29EDBA600];
    v16 = sub_29D93A648();
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_29D9371B8();
  v18 = *MEMORY[0x29EDBA688];
  v19 = sub_29D93A648();

  v20 = sub_29D9371B8();
  v21 = *MEMORY[0x29EDBA630];
  v22 = sub_29D93A648();

  if (v22)
  {
    v23 = v6 & v8 & v3 & v11 & v13 & v16 & v19;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_29D70D5A0(uint64_t a1)
{
  sub_29D69C75C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937158();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D9371A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, v15);
  v21 = (*(v16 + 88))(v20, v15);
  if (v21 == *MEMORY[0x29EDC2D70])
  {
    (*(v16 + 96))(v20, v15);
    (*(v10 + 32))(v14, v20, v9);
    v22 = sub_29D937148();
    sub_29D93A408();
    sub_29D93A428();

    (*(v4 + 8))(v8, v3);
    (*(v10 + 8))(v14, v9);
    v23 = v25[0];
    return v23 & 1;
  }

  if (v21 == *MEMORY[0x29EDC2D68])
  {
    (*(v16 + 8))(v20, v15);
    v23 = 0;
    return v23 & 1;
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D95B6B0);
  sub_29D93AB08();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D70D908(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70D96C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D70D9CC(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70DA30(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70DA94()
{
  v1 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item;
  swift_beginAccess();
  sub_29D69F108(v0 + v1, v19);
  if (v19[3])
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v2 = v17;
      v3 = sub_29D70DD5C();
      v4 = sub_29D939D28();
      v5 = sub_29D939D28();
      if (v16)
      {
        sub_29D935E88();
        v6 = sub_29D939D28();

        if (v17)
        {
LABEL_5:
          v15 = v17;
          v16 = v18;
          aBlock = MEMORY[0x29EDCA5F8];
          v12 = 1107296256;
          v13 = sub_29D6C1F10;
          v14 = &unk_2A24423E8;
          v7 = _Block_copy(&aBlock);

LABEL_8:
          [v3 populateWithTitle:v4 detail:v5 buttonText:v6 buttonAction:v7];
          _Block_release(v7);

          return sub_29D694784(v2);
        }
      }

      else
      {
        v6 = 0;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      goto LABEL_8;
    }

    v9 = v0;
  }

  else
  {
    v9 = v0;
    sub_29D69F230(v19);
  }

  aBlock = 0;
  v12 = 0xE000000000000000;
  sub_29D93AA18();

  v19[0] = 0xD000000000000026;
  v19[1] = 0x800000029D95B770;
  sub_29D69F108(v9 + v1, &aBlock);
  sub_29D70E348();
  v10 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v10);

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

id sub_29D70DD5C()
{
  v1 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC4868]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D70DDE4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView] = 0;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for AFibBurdenLifeFactorDescriptionCell();
  v11 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = qword_2A1A24660;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2BF28);
  v15 = sub_29D937878();
  v16 = sub_29D93A2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    v30 = ObjectType;
    swift_getMetatypeMetadata();
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v28);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_29D677000, v15, v16, "[%s] Initializing", v17, 0xCu);
    sub_29D69417C(v18);
    MEMORY[0x29ED6BE30](v18, -1, -1);
    MEMORY[0x29ED6BE30](v17, -1, -1);
  }

  v22 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v13 setBackgroundColor_];

  v23 = [v13 contentView];
  v24 = sub_29D70DD5C();
  [v23 addSubview_];

  v25 = *&v13[OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView];
  v26 = [v13 contentView];
  [v25 hk:v26 alignConstraintsWithView:?];

  return v13;
}

id sub_29D70E12C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorDescriptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D70E1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

uint64_t sub_29D70E228(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D70DA94();
  return sub_29D69F230(a1);
}

uint64_t (*sub_29D70E294(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D70E2F8;
}

uint64_t sub_29D70E2F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_29D70DA94();
  }

  return result;
}

void sub_29D70E348()
{
  if (!qword_2A17B1830)
  {
    sub_29D69F188();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1830);
    }
  }
}

uint64_t sub_29D70E3A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for BloodPressureClassificationDataManagementDataSource()
{
  result = qword_2A17B2BE8;
  if (!qword_2A17B2BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D70E474(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v79 = a4;
  v84 = a2;
  v74[1] = *v5;
  sub_29D710810(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v80 = v74 - v11;
  sub_29D710880();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v81 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D9371A8();
  v75 = *(v76 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v76, v17);
  v78 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29D933A58();
  v19 = *(v77 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v77, v21);
  v23 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_2A17B2BC0) = MEMORY[0x29EDCA1A0];
  v87 = a1;
  v24 = [a1 objectType];
  v25 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a3];
  *(v5 + qword_2A17B2BB8) = v25;
  *(v5 + qword_2A17B2BC8) = a3;
  v26 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v27 = a3;
  v28 = [v26 initWithHealthStore_];
  *(v5 + qword_2A17B2BD0) = v28;
  *(v5 + qword_2A17B2BE0) = 0;
  sub_29D934B38();
  v85 = v27;
  v86 = v24;
  sub_29D934B08();
  v29 = sub_29D68FAC0(0, 1, 1, MEMORY[0x29EDCA190]);
  v94[0] = v29;
  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_29D68FAC0((v30 > 1), v31 + 1, 1, v29);
    v94[0] = v29;
  }

  v32 = v92;
  v33 = v93;
  v34 = sub_29D693DDC(v91, v92);
  v35 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34, v34);
  v37 = v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v37);
  sub_29D693D44(v31, v37, v94, v32, v33);
  sub_29D69417C(v91);
  sub_29D934B18();
  if (v89)
  {
    sub_29D679D3C(&v88, v91);
    sub_29D6945AC(v91, &v88);
    v94[0] = v29;
    v40 = v29[2];
    v39 = v29[3];
    if (v40 >= v39 >> 1)
    {
      v29 = sub_29D68FAC0((v39 > 1), v40 + 1, 1, v29);
      v94[0] = v29;
    }

    sub_29D69417C(v91);
    v41 = v89;
    v42 = v90;
    v43 = sub_29D693DDC(&v88, v89);
    v44 = *(*(v41 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v43, v43);
    v46 = v74 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v46);
    sub_29D693D44(v40, v46, v94, v41, v42);
    sub_29D69417C(&v88);
    v48 = 2;
  }

  else
  {
    sub_29D710968(&v88, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910], sub_29D6B7318);
    v48 = 1;
  }

  *(v5 + qword_2A17B2BD8) = v48;
  sub_29D934B28();
  v94[0] = v29;
  v50 = v29[2];
  v49 = v29[3];
  if (v50 >= v49 >> 1)
  {
    v29 = sub_29D68FAC0((v49 > 1), v50 + 1, 1, v29);
    v94[0] = v29;
  }

  v51 = v92;
  v52 = v93;
  v53 = sub_29D693DDC(v91, v92);
  v54 = *(*(v51 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v53, v53);
  v56 = v74 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  sub_29D693D44(v50, v56, v94, v51, v52);
  sub_29D69417C(v91);
  sub_29D710810(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v58 = *(sub_29D9359D8() - 8);
  v59 = *(v58 + 72);
  v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D775BD0(v29);

  sub_29D933A48();
  sub_29D933A18();
  (*(v19 + 8))(v23, v77);
  sub_29D9359C8();
  *(swift_allocObject() + 16) = v79;
  v61 = sub_29D936898();
  v62 = qword_2A17B2BB8;
  v63 = *(v61 + qword_2A17B2BB8);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);

  v64 = v63;
  v65 = v78;
  sub_29D937278();

  sub_29D70F404();
  (*(v75 + 8))(v65, v76);
  v66 = *(v61 + v62);
  v67 = sub_29D937288();

  v91[0] = v67;
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v68 = sub_29D93A468();
  *&v88 = v68;
  v69 = sub_29D93A448();
  v70 = v80;
  (*(*(v69 - 8) + 56))(v80, 1, 1, v69);
  sub_29D6B7D8C();
  sub_29D7109D0(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D706380();
  v71 = v81;
  sub_29D938538();
  sub_29D710968(v70, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68], sub_29D710810);

  swift_allocObject();
  swift_weakInit();
  sub_29D7109D0(&qword_2A17B2C70, sub_29D710880);
  v72 = v83;
  sub_29D938588();

  (*(v82 + 8))(v71, v72);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  return v61;
}

uint64_t sub_29D70F190()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  sub_29D935CD8();
  sub_29D935F18();
  v6 = sub_29D935CF8();
  sub_29D936978();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D70F298()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D70F404();
  }

  return result;
}

void sub_29D70F2F8()
{
  v1 = *(v0 + qword_2A17B2BC0);

  v2 = *(v0 + qword_2A17B2BD0);
}

uint64_t sub_29D70F358()
{
  [*(v0 + qword_2A17B2BD0) stopObserving_];
  v1 = sub_29D9368B8();
  v2 = *(v1 + qword_2A17B2BB8);

  v3 = *(v1 + qword_2A17B2BC0);

  v4 = *(v1 + qword_2A17B2BD0);

  return swift_deallocClassInstance();
}

uint64_t sub_29D70F404()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x29EDBA5A0];
  v4 = sub_29D9371B8();
  v5 = [v4 areAllRequirementsSatisfied];

  if (v5)
  {
    v6 = *(v1 + qword_2A17B2BD0);
    result = [v6 isClassificationAgeGated];
    if ((result & 1) == 0)
    {
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v2;
      v14 = sub_29D710A28;
      v15 = v9;
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1107296256;
      v12[2] = sub_29D83C0B4;
      v13 = &unk_2A2442528;
      v10 = _Block_copy(v12);

      [v6 preferredClassificationGuidelinesWithCompletionHandler_];
      _Block_release(v10);
      return [v6 startObserving_];
    }
  }

  else
  {
    sub_29D935B58();
    v11 = v13;
    result = sub_29D710968(v12, &unk_2A17B2C58, &qword_2A17B1140, MEMORY[0x29EDC18F8], sub_29D6B7318);
    if (v11)
    {
      [*(v1 + qword_2A17B2BD0) stopObserving_];
      return sub_29D935B08();
    }
  }

  return result;
}

uint64_t sub_29D70F618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D939998();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v22, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v17 = sub_29D93A468();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = a3;
  aBlock[4] = sub_29D710804;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24424B0;
  v19 = _Block_copy(aBlock);

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D7109D0(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D710810(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v11, v19);
  _Block_release(v19);

  (*(v7 + 8))(v11, v6);
  return (*(v12 + 8))(v16, v22);
}

uint64_t sub_29D70F910(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D933DB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D935DA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    *(result + qword_2A17B2BE0) = a2;
    v17 = *(result + qword_2A17B2BC8);
    sub_29D70FC34(a2, v17, v14);

    sub_29D935B58();
    v18 = v21;
    sub_29D710968(v20, &unk_2A17B2C58, &qword_2A17B1140, MEMORY[0x29EDC18F8], sub_29D6B7318);
    v21 = v9;
    v22 = sub_29D7109D0(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
    v19 = sub_29D693F78(v20);
    (*(v10 + 16))(v19, v14, v9);
    if (v18)
    {
      sub_29D935B78();
    }

    else
    {
      MEMORY[0x29ED64160](*(v16 + qword_2A17B2BD8), 0);
      sub_29D935B68();

      (*(v4 + 8))(v8, v3);
    }

    (*(v10 + 8))(v14, v9);
    return sub_29D69417C(v20);
  }

  return result;
}

uint64_t sub_29D70FC34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v83 = a3;
  v84 = a1;
  v81 = sub_29D936BE8();
  v79 = *(v81 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v81, v4);
  v80 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D710810(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v78 = v66 - v10;
  v11 = sub_29D935C78();
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v77 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D710810(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v71 = v66 - v18;
  v19 = sub_29D937928();
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v69 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29D9378C8();
  v68 = *(v70 - 8);
  v23 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v70, v24);
  v67 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D933AA8();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8, v28);
  v29 = sub_29D939D18();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x2A1C7C4A8](v29, v32);
  v35 = v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = v66 - v37;
  v74 = sub_29D937B88();
  v39 = *(v74 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v74, v41);
  v43 = v66 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  sub_29D939D08();
  if (qword_2A17B0D88 != -1)
  {
    swift_once();
  }

  v44 = qword_2A17D0F70;
  (*(v30 + 16))(v35, v38, v29);
  sub_29D935E88();
  v45 = v44;
  sub_29D933A98();
  sub_29D939D98();
  (*(v30 + 8))(v38, v29);
  sub_29D937B48();
  v46 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:v84 abbreviated:1];
  if (v46)
  {
    v47 = v46;
    sub_29D939D68();
  }

  sub_29D937A08();
  v66[1] = "selectedGuidelines";
  v48 = v74;
  v85[3] = v74;
  v85[4] = MEMORY[0x29EDC7800];
  v49 = sub_29D693F78(v85);
  (*(v39 + 16))(v49, v43, v48);
  sub_29D710810(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v50 = *(sub_29D937948() - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v53 = v68;
  v54 = v67;
  v55 = v70;
  (*(v68 + 104))(v67, *MEMORY[0x29EDC7768], v70);
  v56 = sub_29D9378D8();
  (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
  v57 = v69;
  sub_29D937918();
  sub_29D937908();
  (*(v72 + 8))(v57, v73);
  (*(v53 + 8))(v54, v55);
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  v60 = v84;
  v59[2] = v58;
  v59[3] = v60;
  v61 = v82;
  v59[4] = v82;
  v62 = v77;
  *v77 = 1;
  (*(v75 + 104))(v62, *MEMORY[0x29EDC22C0], v76);
  v63 = sub_29D9379E8();
  (*(*(v63 - 8) + 56))(v78, 1, 1, v63);
  (*(v79 + 104))(v80, *MEMORY[0x29EDC2A38], v81);

  v64 = v61;
  sub_29D935D98();
  (*(v39 + 8))(v43, v48);
}

void sub_29D71053C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    objc_allocWithZone(type metadata accessor for BloodPressureClassificationGuidelinesViewController());
    v9 = sub_29D91EAF8(a3, a4);
    [a1 showAdaptively:v9 sender:v8];
  }
}

uint64_t sub_29D710690(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + qword_2A17B2BD0);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v11[4] = sub_29D7107E4;
  v11[5] = v7;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D83C0B4;
  v11[3] = &unk_2A2442460;
  v8 = _Block_copy(v11);
  v9 = a3;

  [v5 preferredClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_29D7107EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D710810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D710880()
{
  if (!qword_2A17B2C68)
  {
    sub_29D6B7D8C();
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D7109D0(&qword_2A1A22420, sub_29D6B7D8C);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2C68);
    }
  }
}

uint64_t sub_29D710968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D7109D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D710A4C()
{
  sub_29D714178(319, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_29D710B30()
{
  v0 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
  sub_29D6FD494(v0, qword_2A17D0888);
  v1 = sub_29D69C6C0(v0, qword_2A17D0888);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v2 = qword_2A17D0F10;
  sub_29D935E88();
  v3 = sub_29D9334A8();
  v5 = v4;

  if (qword_2A17B0C08 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  v7 = sub_29D69C6C0(v6, qword_2A17D08A0);
  result = sub_29D714544(v7, v1 + *(v0 + 20), type metadata accessor for HypertensionNotificationsStatusURLDestination);
  *v1 = v3;
  v1[1] = v5;
  return result;
}

uint64_t sub_29D710C98()
{
  v0 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  sub_29D6FD494(v0, qword_2A17D08A0);
  v1 = sub_29D69C6C0(v0, qword_2A17D08A0);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();

  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 2, v2);
}

uint64_t sub_29D710DE8()
{
  v1 = sub_29D933A58();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D714178(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v40 = &v37 - v10;
  v11 = MEMORY[0x29EDC2D78];
  sub_29D714178(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], v6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v37 - v15;
  v17 = sub_29D9371A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v37 - v24;
  v26 = qword_2A17D08C0;
  swift_beginAccess();
  v41 = v0;
  sub_29D7142AC(v0 + v26, v16, &unk_2A1A24700, v11);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_29D71423C(v16, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v27 = *(sub_29D9359D8() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    sub_29D933A48();
    sub_29D933A18();
    (*(v38 + 8))(v5, v39);
    sub_29D9359C8();
    sub_29D935B38();
  }

  else
  {
    v39 = *(v18 + 32);
    v39(v25, v16, v17);
    v31 = sub_29D93A028();
    (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
    (*(v18 + 16))(v22, v25, v17);
    sub_29D939FF8();
    v32 = v41;

    v33 = sub_29D939FE8();
    v34 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v35 = swift_allocObject();
    v36 = MEMORY[0x29EDCA390];
    *(v35 + 2) = v33;
    *(v35 + 3) = v36;
    *(v35 + 4) = v32;
    v39(&v35[v34], v22, v17);
    sub_29D6BEBA4(0, 0, v40, &unk_29D943758, v35);

    return (*(v18 + 8))(v25, v17);
  }
}

uint64_t sub_29D7112EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_29D933A58();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  v5[23] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  sub_29D714178(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  sub_29D939FF8();
  v5[27] = sub_29D939FE8();
  v14 = sub_29D939FD8();
  v5[28] = v14;
  v5[29] = v13;

  return MEMORY[0x2A1C73D48](sub_29D711478, v14, v13);
}

uint64_t sub_29D711478()
{
  v1 = v0[25];
  v2 = *(v0[18] + qword_2A17D08D0);
  v3 = *MEMORY[0x29EDC51D8];
  v0[30] = v2;
  v0[31] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_29D7115BC;
  v4 = swift_continuation_init();
  sub_29D714424();
  v0[17] = v5;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D711CE0;
  v0[13] = &unk_2A24425A8;
  v0[14] = v4;
  [v2 dateForKey:v3 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D7115BC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_29D7119C4;
  }

  else
  {
    v6 = sub_29D7116EC;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29D7116EC()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];

  sub_29D6B1204(v5, v4);

  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v20 = v0[20];
  v12 = v0[18];
  sub_29D711EE4(v6, v7);
  sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v13 = *(sub_29D9359D8() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D7144EC(0, &qword_2A17B1138, &qword_2A17B1140);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D93DDB0;
  *(v16 + 56) = v8;
  *(v16 + 64) = sub_29D713AB8(&qword_2A17B2CB8, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  v17 = sub_29D693F78((v16 + 32));
  sub_29D714544(v7, v17, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D933A48();
  sub_29D933A18();
  (*(v10 + 8))(v9, v20);
  sub_29D9359C8();
  sub_29D935B38();

  sub_29D7145AC(v7, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D71423C(v6, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_29D7119C4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];

  swift_willThrow();

  v6 = sub_29D9339F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[19];
  v21 = v0[20];
  v13 = v0[18];
  sub_29D711EE4(v7, v8);
  sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v14 = *(sub_29D9359D8() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D7144EC(0, &qword_2A17B1138, &qword_2A17B1140);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D93DDB0;
  *(v17 + 56) = v9;
  *(v17 + 64) = sub_29D713AB8(&qword_2A17B2CB8, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  v18 = sub_29D693F78((v17 + 32));
  sub_29D714544(v8, v18, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D933A48();
  sub_29D933A18();
  (*(v11 + 8))(v10, v21);
  sub_29D9359C8();
  sub_29D935B38();

  sub_29D7145AC(v8, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D71423C(v7, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_29D711CE0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D714178(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v21 - v13;
  v15 = *sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D6B7370(0, &qword_2A1A24850);
    swift_allocError();
    *v16 = a3;
    v17 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_29D933998();
      v19 = sub_29D9339F8();
      (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
    }

    else
    {
      v20 = sub_29D9339F8();
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    }

    sub_29D6B1204(v11, v14);
    sub_29D6B1204(v14, *(*(v15 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_29D711EE4(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_29D7120A0(a1, v2);
  v6 = v5;
  v7 = *MEMORY[0x29EDBA5A0];
  v8 = sub_29D9371B8();
  v9 = [v8 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v10 = sub_29D939F38();

  v13 = *(v10 + 16);
  if (v13)
  {
    if (v13 == 1)
    {
      v16 = *MEMORY[0x29EDBA608];
      MEMORY[0x2A1C7C4A8](v11, v12);
      v15[2] = &v16;
      v14 = sub_29D76C424(sub_29D714870, v15, v10);

      if (v14)
      {
        sub_29D7126E4(v4, v6, a2);

        return;
      }
    }

    else
    {
    }

    sub_29D712A00(v8, a2);
  }

  else
  {

    sub_29D7123CC(v4, v6, a2);
  }
}

uint64_t sub_29D7120A0(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x29EDB9BC8];
  sub_29D714178(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_29D9339F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7142AC(a1, v9, &qword_2A1A25780, v4);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D71423C(v9, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D7144EC(0, &qword_2A1A24860, &qword_2A1A24818);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93DDB0;
    v18 = *(a2 + qword_2A17D08C8);
    v19 = sub_29D933958();
    v20 = [v18 stringFromDate_];

    v21 = sub_29D939D68();
    v23 = v22;

    *(v17 + 56) = MEMORY[0x29EDC99B0];
    *(v17 + 64) = sub_29D69AD24();
    *(v17 + 32) = v21;
    *(v17 + 40) = v23;
    v24 = sub_29D939D88();

    (*(v11 + 8))(v15, v10);
    return v24;
  }
}

double sub_29D7123CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v6 = sub_29D933A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + qword_2A17B2C78);
  v13 = qword_2A17B0D68;
  v35 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_29D9334A8();
  v32 = v15;
  v33 = v14;
  v34 = 0x800000029D95BC00;
  v16 = objc_opt_self();
  sub_29D935E88();
  v17 = [v16 systemGreenColor];
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell);
  v18 = sub_29D9350D8();
  v20 = v19;
  sub_29D933A48();
  v21 = sub_29D933A18();
  v23 = v22;
  (*(v7 + 8))(v11, v6);
  v24 = *(type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0) + 52);
  v25 = sub_29D9336F8();
  (*(*(v25 - 8) + 56))(a3 + v24, 1, 1, v25);
  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v26 - 8) + 56))(a3 + v24, 0, 2, v26);
  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v35;
  *(a3 + 24) = v21;
  v28 = v32;
  v27 = v33;
  *(a3 + 32) = v23;
  *(a3 + 40) = v27;
  v29 = v36;
  *(a3 + 48) = v28;
  *(a3 + 56) = v29;
  *(a3 + 64) = a2;
  *(a3 + 72) = 0xD000000000000010;
  *(a3 + 80) = v34;
  *(a3 + 88) = v17;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  return result;
}

uint64_t sub_29D7126E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a1;
  v37 = a2;
  v35 = sub_29D933A58();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v35, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_2A17B0D68;
  v34 = *(v3 + qword_2A17B2C78);
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_29D9334A8();
  v31 = v12;
  v32 = v11;
  v33 = 0x800000029D95BC00;
  v13 = [objc_opt_self() systemGrayColor];
  v14 = sub_29D9334A8();
  v16 = v15;
  v17 = *(type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0) + 52);
  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v18 - 8) + 56))(a3 + v17, 1, 2, v18);
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell);
  v19 = sub_29D9350D8();
  v21 = v20;
  sub_29D933A48();
  v22 = sub_29D933A18();
  v24 = v23;
  (*(v5 + 8))(v9, v35);
  *a3 = v19;
  a3[1] = v21;
  a3[2] = v34;
  a3[3] = v22;
  v26 = v31;
  v25 = v32;
  a3[4] = v24;
  a3[5] = v25;
  v28 = v36;
  v27 = v37;
  a3[6] = v26;
  a3[7] = v28;
  a3[8] = v27;
  a3[9] = 0xD000000000000010;
  a3[10] = v33;
  a3[11] = v13;
  a3[12] = v14;
  a3[13] = v16;
  a3[14] = 0;
  a3[15] = 0;
  return sub_29D935E88();
}

uint64_t sub_29D712A00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_29D933A58();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v16 = sub_29D939F38();

  sub_29D712D90(v16, v14);

  v17 = *(v2 + qword_2A17B2C78);
  v18 = qword_2A17B0D68;
  v44 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_29D9334A8();
  v42 = v20;
  v43 = v19;
  v21 = [a1 unsatisfiedRequirementIdentifiers];
  v22 = sub_29D939F38();

  v23 = sub_29D7665A0(v22, sub_29D67BF28);
  v40 = v24;
  v41 = v23;

  v39 = 0x800000029D95BC00;
  v25 = [objc_opt_self() systemGrayColor];
  v27 = *v14;
  v26 = v14[1];
  v28 = *(v10 + 20);
  v29 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  sub_29D714544(v14 + v28, a2 + *(v29 + 52), type metadata accessor for HypertensionNotificationsStatusURLDestination);
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell);
  sub_29D935E88();
  v30 = sub_29D9350D8();
  v32 = v31;
  sub_29D933A48();
  v33 = sub_29D933A18();
  v35 = v34;
  (*(v45 + 8))(v9, v46);
  result = sub_29D7145AC(v14, type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel);
  *a2 = v30;
  a2[1] = v32;
  v37 = v43;
  a2[2] = v44;
  a2[3] = v33;
  a2[4] = v35;
  a2[5] = v37;
  v38 = v41;
  a2[6] = v42;
  a2[7] = v38;
  a2[8] = v40;
  a2[9] = 0xD000000000000010;
  a2[10] = v39;
  a2[11] = v25;
  a2[12] = v27;
  a2[13] = v26;
  a2[14] = 0;
  a2[15] = 0;
  return result;
}

uint64_t sub_29D712D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_29D9346B8();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v18 = &v56 - v17;
  v60 = *MEMORY[0x29EDBA650];
  v59 = &v60;
  v19 = sub_29D76C424(sub_29D7141DC, v58, a1);
  if (v19)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v55 = 0xE000000000000000;
    v21 = sub_29D9334A8();
    v23 = v22;
    v24 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
    result = (*(v14 + 56))(a2 + *(v24 + 20), 2, 2, v13);
    *a2 = v21;
    a2[1] = v23;
    return result;
  }

  v56 = v13;
  v60 = *MEMORY[0x29EDBA5D8];
  MEMORY[0x2A1C7C4A8](v19, v20);
  v55 = &v60;
  v26 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
  if (v26 & 1) != 0 || (v60 = *MEMORY[0x29EDBA5D0], MEMORY[0x2A1C7C4A8](v26, v27), v55 = &v60, v28 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1), (v28))
  {
    sub_29D73BA10();
    sub_29D9336E8();
LABEL_8:

    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v55 = 0xE000000000000000;
LABEL_11:
    v30 = sub_29D9334A8();
    v32 = v31;
    v33 = *(type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0) + 20);
    v34 = MEMORY[0x29EDB9B18];
    sub_29D7142AC(v18, a2 + v33, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
    (*(v14 + 56))(a2 + v33, 0, 2, v56);
    *a2 = v30;
    a2[1] = v32;
    return sub_29D71423C(v18, &qword_2A1A247B0, v34);
  }

  v60 = *MEMORY[0x29EDBA640];
  MEMORY[0x2A1C7C4A8](v28, v29);
  v55 = &v60;
  v35 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
  if ((v35 & 1) == 0)
  {
    v60 = *MEMORY[0x29EDBA5C0];
    MEMORY[0x2A1C7C4A8](v35, v36);
    v55 = &v60;
    v37 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
    if ((v37 & 1) == 0)
    {
      v60 = *MEMORY[0x29EDBA688];
      MEMORY[0x2A1C7C4A8](v37, v38);
      v55 = &v60;
      v41 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
      if (v41)
      {
        v43 = [objc_opt_self() seedExpiredLinkURL];
      }

      else
      {
        v60 = *MEMORY[0x29EDBA600];
        MEMORY[0x2A1C7C4A8](v41, v42);
        v55 = &v60;
        v44 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
        if ((v44 & 1) == 0)
        {
          v60 = *MEMORY[0x29EDBA620];
          MEMORY[0x2A1C7C4A8](v44, v45);
          v55 = &v60;
          v47 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
          if (v47)
          {
            v49 = MEMORY[0x29EDC1720];
          }

          else
          {
            v60 = *MEMORY[0x29EDBA6A8];
            MEMORY[0x2A1C7C4A8](v47, v48);
            v55 = &v60;
            v50 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
            if ((v50 & 1) == 0)
            {
              v60 = *MEMORY[0x29EDBA638];
              MEMORY[0x2A1C7C4A8](v50, v51);
              v55 = &v60;
              v53 = sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
              if ((v53 & 1) == 0)
              {
                v60 = *MEMORY[0x29EDBA648];
                MEMORY[0x2A1C7C4A8](v53, v54);
                v55 = &v60;
                sub_29D76C424(sub_29D714870, (&v56 - 4), a1);
              }

              goto LABEL_14;
            }

            v49 = MEMORY[0x29EDC1728];
          }

          v52 = v57;
          (*(v57 + 104))(v11, *v49, v7);
          sub_29D934698();
          (*(v52 + 8))(v11, v7);
          if (qword_2A17B0D68 != -1)
          {
            swift_once();
          }

          v55 = 0xE000000000000000;
          goto LABEL_11;
        }

        v43 = [objc_opt_self() remoteDisabledLinkURL];
      }

      v46 = v43;
      sub_29D939D68();

      sub_29D9336E8();
      goto LABEL_8;
    }
  }

LABEL_14:
  if (qword_2A17B0C00 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
  v40 = sub_29D69C6C0(v39, qword_2A17D0888);
  return sub_29D714544(v40, a2, type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel);
}

void sub_29D713690()
{
  sub_29D71423C(v0 + qword_2A17D08C0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);

  v1 = *(v0 + qword_2A17D08D0);
}

uint64_t sub_29D71370C()
{
  v0 = sub_29D935BA8();
  v1 = *(v0 + qword_2A17B2C78);

  sub_29D71423C(v0 + qword_2A17D08C0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v2 = *(v0 + qword_2A17D08D0);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7137E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v5 = sub_29D934D58();
  sub_29D937B18();
  v6 = sub_29D934D48();
  a1[3] = v5;
  result = sub_29D713AB8(&qword_2A17B2C98, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_29D7138CC()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D713A00()
{
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell);
  return sub_29D93A348();
}

uint64_t sub_29D713AB8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29D713B00(uint64_t a1)
{
  if (v1[10])
  {
    v2 = v1[11];
    if (v2)
    {
      v4 = v1[9];
      v5 = objc_opt_self();
      v6 = v2;
      v7 = [v5 configurationWithFont:a1 scale:-1];
      sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
      v8 = *MEMORY[0x29EDC80E0];
      v9 = sub_29D93A698();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 imageWithConfiguration_];

        v12 = [v11 imageWithRenderingMode_];
        v13 = [v12 imageWithTintColor_];

        if (v13)
        {

          return v13;
        }
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v15 = sub_29D937898();
      sub_29D69C6C0(v15, qword_2A1A2C008);
      v16 = sub_29D937878();
      v17 = sub_29D93A288();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_29D677000, v16, v17, "Unable to create image from symbol", v18, 2u);
        MEMORY[0x29ED6BE30](v18, -1, -1);
      }
    }
  }

  return 0;
}

uint64_t sub_29D713D00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D713D30(uint64_t a1)
{
  v2 = sub_29D713AB8(&qword_2A17B2CF0, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29D713DAC()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  v1 = sub_29D939D28();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_2A17D08B8 = v0;
}

uint64_t sub_29D713E24(void *a1)
{
  v3 = sub_29D933A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_2A17D08C0;
  v10 = sub_29D9371A8();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = qword_2A17D08C8;
  if (qword_2A17B0C10 != -1)
  {
    swift_once();
  }

  v12 = qword_2A17D08B8;
  *(v1 + v11) = qword_2A17D08B8;
  *(v1 + qword_2A17B2C78) = a1;
  v13 = *MEMORY[0x29EDC51D0];
  v14 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v15 = v12;
  v16 = [v14 initWithCategory:4 domainName:v13 healthStore:a1];
  *(v1 + qword_2A17D08D0) = v16;
  sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v17 = *(sub_29D9359D8() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D775DB0(MEMORY[0x29EDCA190]);
  sub_29D933A48();
  sub_29D933A18();
  v20 = *(v4 + 8);
  v20(v8, v3);
  sub_29D9359C8();
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v25, "MutableArray<");
  HIWORD(v25[1]) = -4864;
  sub_29D933A48();
  v21 = sub_29D933A18();
  v23 = v22;
  v20(v8, v3);
  MEMORY[0x29ED6A240](v21, v23);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D935B28();
}

void sub_29D714178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D71423C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D714178(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7142AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D714178(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D71432C(uint64_t a1)
{
  v4 = *(sub_29D9371A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D7112EC(a1, v6, v7, v8, v1 + v5);
}

void sub_29D714424()
{
  if (!qword_2A17B2CB0)
  {
    sub_29D714178(255, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    sub_29D6B7370(255, &qword_2A1A24850);
    v0 = sub_29D93A038();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2CB0);
    }
  }
}

void sub_29D7144EC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D6B7370(255, a3);
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D714544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7145AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D714634()
{
  result = type metadata accessor for HypertensionNotificationsStatusURLDestination(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D7146D8()
{
  sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
  if (v0 <= 0x3F)
  {
    sub_29D6BE91C();
    if (v1 <= 0x3F)
    {
      sub_29D7147C0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HypertensionNotificationsStatusURLDestination(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D7147C0()
{
  if (!qword_2A17B2CE0)
  {
    sub_29D69567C(255, &qword_2A17B2CE8, 0x29EDC7A00);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2CE0);
    }
  }
}

void sub_29D7148D4()
{
  sub_29D9339F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKTimeScope(319);
    if (v1 <= 0x3F)
    {
      sub_29D714AAC(319, &qword_2A17B2D08, type metadata accessor for BloodPressureMinMaxCoordinate, MEMORY[0x29EDC9A40]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D7149E8()
{
  result = sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A17B4700, 0x29EDBACF8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D714AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D714B44()
{
  sub_29D714DD0(319, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D714AAC(319, &qword_2A17B2120, type metadata accessor for BloodPressurePDFSampleInterval, MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29D714DD0(319, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
      if (v2 <= 0x3F)
      {
        sub_29D9339F8();
        if (v3 <= 0x3F)
        {
          sub_29D69567C(319, &qword_2A17B2D38, 0x29EDBAA48);
          if (v4 <= 0x3F)
          {
            sub_29D714AAC(319, &qword_2A17B2D20, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
            if (v5 <= 0x3F)
            {
              sub_29D714DD0(319, &qword_2A17B2D40, &qword_2A17B4920, 0x29EDBAE18, MEMORY[0x29EDC9C68]);
              if (v6 <= 0x3F)
              {
                sub_29D714AAC(319, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for HKBloodPressureClassificationGuidelines(319);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_29D714DD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D714E3C()
{
  result = qword_2A17B2D48;
  if (!qword_2A17B2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2D48);
  }

  return result;
}

uint64_t sub_29D714E90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D9339F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29D714EF8(int *a1)
{
  v3 = v1;
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D715264(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  v4 = v1 + a1[5];
  sub_29D939C98();
  v5 = *(v3 + a1[6]);
  sub_29D93A718();
  v6 = *(v3 + a1[7]);
  sub_29D93A718();
  v7 = *(v3 + a1[8]);
  sub_29D93A718();
  MEMORY[0x29ED6B260](*(v3 + a1[9]));
  return sub_29D93AE98();
}

uint64_t sub_29D714FF4(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_29D9339F8();
  sub_29D715264(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  v5 = v2 + a2[5];
  sub_29D939C98();
  v6 = *(v4 + a2[6]);
  sub_29D93A718();
  v7 = *(v4 + a2[7]);
  sub_29D93A718();
  v8 = *(v4 + a2[8]);
  sub_29D93A718();
  return MEMORY[0x29ED6B260](*(v4 + a2[9]));
}

uint64_t sub_29D7150D8(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D715264(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
  sub_29D939C98();
  v5 = v2 + a2[5];
  sub_29D939C98();
  v6 = *(v4 + a2[6]);
  sub_29D93A718();
  v7 = *(v4 + a2[7]);
  sub_29D93A718();
  v8 = *(v4 + a2[8]);
  sub_29D93A718();
  MEMORY[0x29ED6B260](*(v4 + a2[9]));
  return sub_29D93AE98();
}

uint64_t sub_29D715264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D7152AC(uint64_t a1, uint64_t a2)
{
  if ((sub_29D933988() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v5 = v4[5];
  if ((sub_29D933988() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_29D69567C(0, &qword_2A1A21FD0, 0x29EDC9738);
  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_29D93A708() & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = v4[7];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (sub_29D93A708() & 1) != 0 && (v12 = v4[8], v13 = *(a1 + v12), v14 = *(a2 + v12), (sub_29D93A708()))
  {
    v15 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_29D715378()
{
  v1 = *(v0 + 16);
  if (v1 <= 1)
  {
    if (!v1)
    {
      return v1;
    }

    v5 = 0xE500000000000000;
    v4 = 0x5045454C53;
  }

  else
  {
    v2 = 0xD000000000000013;
    v3 = 0x800000029D95BDC0;
    if (v1 != 3)
    {
      v2 = 0x5F4C5546444E494DLL;
      v3 = 0xEF534554554E494DLL;
    }

    if (v1 == 2)
    {
      v4 = 0x544847494557;
    }

    else
    {
      v4 = v2;
    }

    if (v1 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = v3;
    }
  }

  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D95BD90);
  MEMORY[0x29ED6A240](v4, v5);

  MEMORY[0x29ED6A240](0x4C5449544255535FLL, 0xE900000000000045);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v1 = sub_29D9334A8();

  return v1;
}

void sub_29D715528(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = sub_29D715840(v4, sub_29D716050, v1, *(v1 + 24));
  v7 = v6;
  if (!v4)
  {

    v5 = 0;
    v7 = 0;
  }

  sub_29D93AA18();
  sub_29D935E88();

  MEMORY[0x29ED6A240](0x4946415F444E415FLL, 0xEF454C5449545F42);
  v8 = sub_29D939D28();

  v9 = HKUIAFibBurdenLocalizedString();

  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = sub_29D939D68();
  v12 = v11;

  sub_29D93AA18();

  MEMORY[0x29ED6A240](0x4946415F444E415FLL, 0xEE0059444F425F42);
  v13 = sub_29D939D28();

  v14 = HKUIAFibBurdenLocalizedString();

  if (!v14)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v15 = sub_29D939D68();
  v17 = v16;

  sub_29D93AA18();

  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D95BD70);
  v18 = sub_29D939D28();

  v19 = HKUIAFibBurdenLocalizedString();

  if (v19)
  {
    v20 = sub_29D939D68();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *a1 = v10;
  a1[1] = v12;
  a1[2] = v15;
  a1[3] = v17;
  a1[4] = v20;
  a1[5] = v22;
  a1[6] = v5;
  a1[7] = v7;
}

void (*sub_29D715840(char a1, uint64_t a2, uint64_t a3, void *a4))()
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = v4;
  v10 = a4;

  return sub_29D716058;
}

void sub_29D7158CC(void *a1, unsigned __int8 a2, uint64_t (*a3)(void), NSObject *a4, uint64_t a5)
{
  v50 = a4;
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 displayTypeController];
  if (v15)
  {
    v16 = v15;
    v17 = sub_29D73439C(a2);
    v18 = [v16 displayTypeForObjectType_];

    if (v18)
    {
      v19 = HKHRAFibBurdenLogForCategory();
      v20 = a5;
      v21 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v19 healthDataSource:a1];

      v22 = sub_29D73439C(a2);
      v23 = [objc_allocWithZone(MEMORY[0x29EDC43F8]) initWithSampleType:v22 context:1];

      v24 = swift_allocObject();
      *(v24 + 16) = v20;
      aBlock[4] = sub_29D71606C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D8E44F0;
      aBlock[3] = &unk_2A24426B8;
      v25 = _Block_copy(aBlock);
      v26 = a3;
      v27 = v23;
      v28 = v21;
      v29 = v27;

      [v28 submitEvent:v29 completion:v25];
      _Block_release(v25);

      v30 = [objc_opt_self() sharedInstanceForHealthStore_];
      sub_29D9339E8();
      v31 = sub_29D933958();
      (*(v10 + 8))(v14, v9);
      v32 = [v18 wd:a1 addDataViewControllerWithHealthStore:v30 healthToolBox:v31 initialStartDate:?];

      v33 = v26();
      if (v33)
      {
        v34 = v33;
        v35 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
        [v34 presentViewController:v35 animated:1 completion:0];
      }
    }

    else
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v36 = sub_29D937898();
      sub_29D69C6C0(v36, qword_2A1A2BF28);
      v50 = sub_29D937878();
      v37 = sub_29D93A298();
      if (os_log_type_enabled(v50, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v52 = v39;
        *v38 = 136315394;
        aBlock[0] = a5;
        swift_getMetatypeMetadata();
        v40 = sub_29D939DA8();
        v42 = sub_29D6C2364(v40, v41, &v52);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = sub_29D73439C(a2);
        v44 = [v43 identifier];

        v45 = sub_29D939D68();
        v47 = v46;

        v48 = sub_29D6C2364(v45, v47, &v52);

        *(v38 + 14) = v48;
        _os_log_impl(&dword_29D677000, v50, v37, "[%s] Unable to find display type for sample type with identifier %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v39, -1, -1);
        MEMORY[0x29ED6BE30](v38, -1, -1);
      }

      else
      {
        v49 = v50;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D715DDC(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2BF28);
    v7 = a2;
    v8 = sub_29D937878();
    v9 = sub_29D93A288();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      v20 = a3;
      *v10 = 136315394;
      swift_getMetatypeMetadata();
      v12 = sub_29D939DA8();
      v14 = sub_29D6C2364(v12, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v20 = a2;
      v15 = a2;
      sub_29D6A0CD0();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v19);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_29D677000, v8, v9, "[%s] Error when sending life factor logging initiated analytics event: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D715FE4()
{
  sub_29D69417C((v0 + 32));
  MEMORY[0x29ED6BF30](v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_29D716074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D71608C(void *a1, char a2)
{
  sub_29D7186E8(0, &qword_2A1A21F88, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D7184A8();
  sub_29D93AED8();
  v13[15] = a2;
  sub_29D7184FC();
  sub_29D93AD18();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_29D7161F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D71627C(uint64_t a1)
{
  v2 = sub_29D7184A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7162B8(uint64_t a1)
{
  v2 = sub_29D7184A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D7162F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D718550(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_29D71633C()
{
  v1 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView);
  }

  else
  {
    sub_29D936A88();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_29D71641C()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937858();
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29D677000, v8, v9, "AFibBurdenRescindedTileViewController loaded", v10, 2u);
    MEMORY[0x29ED6BE30](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = type metadata accessor for AFibBurdenRescindedTileViewController();
  v14.receiver = v1;
  v14.super_class = v11;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  sub_29D71667C();
  v12 = sub_29D71633C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936A48();
}

void sub_29D7165E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29D717134();
  }
}

id sub_29D71667C()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  v3 = sub_29D71633C();
  [v2 addSubview_];

  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943A10;
  v5 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = [result topAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [*&v0[v5] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  v12 = [result bottomAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v4 + 40) = v13;
  v14 = [*&v0[v5] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  v16 = [result leadingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v4 + 48) = v17;
  v18 = [*&v0[v5] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = objc_opt_self();
  v21 = [v19 trailingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v4 + 56) = v22;
  sub_29D6D37A4();
  v23 = sub_29D939F18();

  [v20 activateConstraints_];

  v24 = sub_29D7169A0();

  return sub_29D716BB4(v24);
}

uint64_t sub_29D7169A0()
{
  v1 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v0 + v1, v16);
  v2 = v17;
  if (v17)
  {
    v3 = sub_29D693E2C(v16, v17);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x2A1C7C4A8](v3, v3);
    v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
    (*(v4 + 16))(v7);
    sub_29D7182DC(v16, &qword_2A17B8190, sub_29D7181A4);
    v8 = sub_29D9365B8();
    v10 = v9;
    (*(v4 + 8))(v7, v2);
    if (v10 >> 60 != 15)
    {
      v11 = sub_29D9330D8();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      sub_29D9330C8();
      sub_29D718428();
      sub_29D9330B8();
      sub_29D71847C(v8, v10);

      return LOBYTE(v16[0]);
    }
  }

  else
  {
    sub_29D7182DC(v16, &qword_2A17B8190, sub_29D7181A4);
  }

  return 5;
}

uint64_t sub_29D716BB4(unsigned __int8 a1)
{
  ObjectType = swift_getObjectType();
  if (a1 > 2u)
  {
    if (a1 - 3 < 2)
    {
      goto LABEL_7;
    }

    v9 = ObjectType;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v10, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v9;
    sub_29D9371C8();
  }

  if (!a1)
  {
    v7 = ObjectType;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v8, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v7;
    sub_29D9371F8();
  }

  if (a1 != 1)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_7:
  if (qword_2A17B0D48 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_8:
  sub_29D9334A8();
  v4 = sub_29D939D28();

  [v1 setTitle_];

  v5 = sub_29D71633C();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D936A58();
}

uint64_t sub_29D716FA0()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95BF60);
  MEMORY[0x29ED6A240](0xD00000000000001BLL, 0x800000029D95BFB0);
  return 91;
}

uint64_t sub_29D71706C()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95BF60);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D95BF80);
  return 91;
}

uint64_t sub_29D717134()
{
  v1 = 1 << sub_29D7169A0();
  if ((v1 & 0x1A) != 0)
  {
    v2 = [objc_opt_self() remoteDisabledLinkURL];
LABEL_8:
    v6 = v2;
    sub_29D939D68();

    sub_29D717370();
  }

  if ((v1 & 0x21) == 0)
  {
    v2 = [objc_opt_self() seedExpiredLinkURL];
    goto LABEL_8;
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v3, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v0;
  v4 = v0;
  sub_29D9371F8();
}

uint64_t sub_29D7172B0()
{
  BYTE8(v2) = 0;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D95BE60);
  *&v2 = sub_29D7169A0();
  sub_29D6C5040(0, &qword_2A17B2D90, &type metadata for AFibBurdenRescindedState, MEMORY[0x29EDC9C68]);
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  return *(&v2 + 1);
}

uint64_t sub_29D717370()
{
  ObjectType = swift_getObjectType();
  sub_29D718288(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = &v25[-v4];
  v6 = sub_29D9336F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v25[-v13];
  sub_29D9336E8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_29D7182DC(v5, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  }

  v27 = *(v7 + 32);
  v28 = v7 + 32;
  v27(v14, v5, v6);
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    v18 = sub_29D9336B8();
    sub_29D73F010(MEMORY[0x29EDCA190]);
    v19 = sub_29D939C58();

    v26 = [v17 openSensitiveURL:v18 withOptions:v19];
  }

  else
  {
    v26 = 2;
  }

  v29 = ObjectType;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v20, qword_2A1A2BF58);
  (*(v7 + 16))(v11, v14, v6);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = v21 + v8;
  v23 = (v21 + v8) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v27((v24 + v21), v11, v6);
  *(v24 + v22) = v26;
  *(v24 + v23 + 8) = v29;
  v30 = 0;
  sub_29D9371C8();

  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_29D7176FC(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0x696E65704F203A5DLL, 0xEB0000000020676ELL);
  sub_29D9336F8();
  sub_29D7183C8(&qword_2A17B5570, MEMORY[0x29EDB9B18]);
  v4 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](0x736563637573202CLL, 0xEB00000000203A73);
  if (v2 == 2)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = sub_29D939DA8();
    v5 = v7;
  }

  MEMORY[0x29ED6A240](v6, v5);

  return 91;
}

id sub_29D717880(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView] = 0;
  v7 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_detail;
  v8 = *MEMORY[0x29EDC2198];
  v9 = sub_29D935878();
  (*(*(v9 - 8) + 104))(&v3[v7], v8, v9);
  v3[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_showsSeparator] = 0;
  if (a2)
  {
    v10 = sub_29D939D28();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for AFibBurdenRescindedTileViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_29D7179F8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView] = 0;
  v4 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_detail;
  v5 = *MEMORY[0x29EDC2198];
  v6 = sub_29D935878();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v1[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_showsSeparator] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AFibBurdenRescindedTileViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_29D717B0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenRescindedTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AFibBurdenRescindedTileViewController()
{
  result = qword_2A17B2D68;
  if (!qword_2A17B2D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D717C40()
{
  result = sub_29D935878();
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

uint64_t sub_29D717CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D717D44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context;
  swift_beginAccess();
  sub_29D718124(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    v4 = sub_29D7169A0();
    sub_29D716BB4(v4);
  }

  return sub_29D7182DC(a1, &qword_2A17B8190, sub_29D7181A4);
}

uint64_t (*sub_29D717DE4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D717E48;
}

uint64_t sub_29D717E48(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = [*(a1 + 24) isViewLoaded];
    if (result)
    {
      v5 = *(a1 + 24);
      v6 = sub_29D7169A0();
      return sub_29D716BB4(v6);
    }
  }

  return result;
}

uint64_t sub_29D717EB8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29D935C78();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D717F44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63158](a1, WitnessTable);
}

uint64_t sub_29D717FB0()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29D939D68();

  return v3;
}

uint64_t sub_29D718018@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_detail;
  v5 = sub_29D935878();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D718124(uint64_t a1, uint64_t a2)
{
  sub_29D718288(0, &qword_2A17B8190, sub_29D7181A4);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D7181A4()
{
  result = qword_2A17B2D88;
  if (!qword_2A17B2D88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B2D88);
  }

  return result;
}

uint64_t sub_29D718208(uint64_t a1, uint64_t a2)
{
  sub_29D718288(0, &qword_2A17B8190, sub_29D7181A4);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D718288(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D7182DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D718288(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D718338()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v5 = *(v0 + v3);

  return sub_29D7176FC(v0 + v2, v5);
}

uint64_t sub_29D7183C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D718428()
{
  result = qword_2A17B2D98;
  if (!qword_2A17B2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2D98);
  }

  return result;
}

uint64_t sub_29D71847C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D6AA284(a1, a2);
  }

  return a1;
}

unint64_t sub_29D7184A8()
{
  result = qword_2A1A23580;
  if (!qword_2A1A23580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23580);
  }

  return result;
}

unint64_t sub_29D7184FC()
{
  result = qword_2A1A24130[0];
  if (!qword_2A1A24130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A24130);
  }

  return result;
}

void *sub_29D718550(uint64_t *a1)
{
  sub_29D7186E8(0, &qword_2A17B2DA0, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  v11 = sub_29D693E2C(a1, a1[3]);
  sub_29D7184A8();
  sub_29D93AEC8();
  if (!v1)
  {
    sub_29D71874C();
    sub_29D93AC88();
    (*(v5 + 8))(v9, v4);
    v11 = v13[15];
  }

  sub_29D69417C(a1);
  return v11;
}

void sub_29D7186E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D7184A8();
    v7 = a3(a1, &type metadata for AFibBurdenRescindedFeedItemConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D71874C()
{
  result = qword_2A17B2DA8;
  if (!qword_2A17B2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DA8);
  }

  return result;
}

unint64_t sub_29D7187B4()
{
  result = qword_2A17B2DB0;
  if (!qword_2A17B2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DB0);
  }

  return result;
}

unint64_t sub_29D71880C()
{
  result = qword_2A1A23570;
  if (!qword_2A1A23570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23570);
  }

  return result;
}

unint64_t sub_29D718864()
{
  result = qword_2A1A23578;
  if (!qword_2A1A23578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23578);
  }

  return result;
}

id sub_29D7188B8()
{
  v1 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setAdjustsFontForContentSizeCategory_];
    sub_29D718DF8();
    v6 = *MEMORY[0x29EDC80E0];
    v7 = sub_29D93A658();
    [v5 setFont_];

    LODWORD(v8) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = sub_29D939D28();
    [v5 setText_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_29D718A00()
{
  v1 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setAdjustsFontForContentSizeCategory_];
    sub_29D718DF8();
    v6 = *MEMORY[0x29EDC80E0];
    v7 = sub_29D93A658();
    [v5 setFont_];

    [v5 setNumberOfLines_];
    v8 = v5;
    LODWORD(v9) = 1132068864;
    [v8 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1132068864;
    [v8 setContentCompressionResistancePriority:0 forAxis:v10];
    v11 = *(v4 + OBJC_IVAR____TtC5Heart17BulletedLabelView_text);
    v12 = *(v4 + OBJC_IVAR____TtC5Heart17BulletedLabelView_text + 8);
    v13 = sub_29D939D28();
    [v8 setText_];

    if (*(v4 + OBJC_IVAR____TtC5Heart17BulletedLabelView_textAccessibilityIdentifier + 8))
    {
      v14 = *(v4 + OBJC_IVAR____TtC5Heart17BulletedLabelView_textAccessibilityIdentifier);
      v15 = sub_29D939D28();
    }

    else
    {
      v15 = 0;
    }

    [v8 setAccessibilityIdentifier_];

    v16 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

id sub_29D718BA8()
{
  v1 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlignment_];
    [v4 setAxis_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D718D1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletedLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D718DF8()
{
  result = qword_2A17B47B0;
  if (!qword_2A17B47B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B47B0);
  }

  return result;
}

uint64_t sub_29D718E64()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D718F08()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D718FA8()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D71904C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

id sub_29D719100()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D7191F0()
{
  sub_29D719C5C();
  v0 = sub_29D934548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943DC0;
  v52 = v4;
  v5 = v4 + v3;
  *v5 = sub_29D719100();
  *(v5 + 8) = 0;
  v6 = *(v1 + 104);
  (v6)(v5, *MEMORY[0x29EDC1608], v0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  *v7 = sub_29D9334A8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = (v5 + 2 * v2);
  *v9 = sub_29D9334A8();
  v9[1] = v10;
  v9[2] = 0;
  v53 = *MEMORY[0x29EDC15D0];
  v6(v9);
  v11 = v5 + 3 * v2;
  *v11 = sub_29D9334A8();
  *(v11 + 8) = v12;
  *(v11 + 16) = 0;
  v13 = *MEMORY[0x29EDC1630];
  (v6)(v11, v13, v0);
  v14 = v5 + 4 * v2;
  *v14 = sub_29D9334A8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v13, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29D9334A8();
  *(v16 + 8) = v17;
  *(v16 + 16) = 0;
  (v6)(v16, v13, v0);
  v18 = v5 + 6 * v2;
  *v18 = sub_29D9334A8();
  *(v18 + 8) = v19;
  *(v18 + 16) = 0;
  (v6)(v18, v13, v0);
  v20 = (v5 + 7 * v2);
  *v20 = sub_29D9334A8();
  v20[1] = v21;
  v20[2] = 0;
  (v6)(v20, v53, v0);
  v22 = v5 + 8 * v2;
  *v22 = sub_29D9334A8();
  *(v22 + 8) = v23;
  *(v22 + 16) = 0;
  (v6)(v22, v13, v0);
  v24 = v5 + 9 * v2;
  *v24 = sub_29D9334A8();
  *(v24 + 8) = v25;
  *(v24 + 16) = 0;
  (v6)(v24, v13, v0);
  v26 = (v5 + 10 * v2);
  *v26 = sub_29D9334A8();
  v26[1] = v27;
  v26[2] = 0;
  (v6)(v26, v53, v0);
  v28 = v5 + 11 * v2;
  *v28 = sub_29D9334A8();
  *(v28 + 8) = v29;
  *(v28 + 16) = 0;
  (v6)(v28, v13, v0);
  v30 = (v5 + 12 * v2);
  *v30 = sub_29D9334A8();
  v30[1] = v31;
  v30[2] = 0;
  (v6)(v30, v53, v0);
  v32 = v5 + 13 * v2;
  *v32 = sub_29D9334A8();
  *(v32 + 8) = v33;
  *(v32 + 16) = 0;
  (v6)(v32, v13, v0);
  v34 = v5 + 14 * v2;
  *v34 = sub_29D9334A8();
  *(v34 + 8) = v35;
  *(v34 + 16) = 0;
  (v6)(v34, v13, v0);
  v36 = v5 + 15 * v2;
  *v36 = sub_29D9334A8();
  *(v36 + 8) = v37;
  *(v36 + 16) = 0;
  (v6)(v36, v13, v0);
  v38 = v5 + 16 * v2;
  *v38 = sub_29D9334A8();
  *(v38 + 8) = v39;
  *(v38 + 16) = 0;
  (v6)(v38, v13, v0);
  v40 = (v5 + 17 * v2);
  v54 = sub_29D9334A8();
  v42 = v41;
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D943DD0;
  *(v43 + 32) = sub_29D9334A8();
  *(v43 + 40) = v44;
  *(v43 + 48) = sub_29D9334A8();
  *(v43 + 56) = v45;
  *(v43 + 64) = sub_29D9334A8();
  *(v43 + 72) = v46;
  *(v43 + 80) = sub_29D9334A8();
  *(v43 + 88) = v47;
  *(v43 + 96) = sub_29D9334A8();
  *(v43 + 104) = v48;
  *(v43 + 112) = sub_29D9334A8();
  *(v43 + 120) = v49;
  *(v43 + 128) = sub_29D9334A8();
  *(v43 + 136) = v50;
  *v40 = v54;
  v40[1] = v42;
  v40[2] = v43;
  (v6)(v40, *MEMORY[0x29EDC15F0], v0);
  return v52;
}

void sub_29D719C5C()
{
  if (!qword_2A17B1100)
  {
    sub_29D934548();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1100);
    }
  }
}

BOOL sub_29D719D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_29D71BBF8(a4, a5);
  }

  while ((sub_29D939CF8() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_29D719E5C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29D936DB8();
  *a3 = sub_29D9350D8();
  a3[1] = v6;
  a3[2] = 0xD000000000000013;
  a3[3] = 0x800000029D944030;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  a3[4] = sub_29D9334A8();
  a3[5] = v7;
  a3[6] = a1;

  return sub_29D679D3C(a2, (a3 + 7));
}

uint64_t sub_29D719F60@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_29D937B88();
  v4 = MEMORY[0x29EDC7800];
  a1[3] = v3;
  a1[4] = v4;
  sub_29D693F78(a1);
  sub_29D937B38();
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_29D935E88();
  return sub_29D937B48();
}

uint64_t sub_29D719FD0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D71A004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D71A034(uint64_t a1)
{
  v2 = sub_29D71AF54();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D71A080(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_29D93AD78(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_29D93AD78();
    }
  }

  return result;
}

uint64_t sub_29D71A108()
{
  sub_29D93AE58();
  v1 = v0[2];
  v2 = v0[3];
  sub_29D939E18();
  v3 = v0[4];
  v4 = v0[5];
  sub_29D939E18();
  return sub_29D93AE98();
}

uint64_t sub_29D71A158()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_29D939E18();
  v3 = v0[4];
  v4 = v0[5];

  return sub_29D939E18();
}

uint64_t sub_29D71A198()
{
  sub_29D93AE58();
  v1 = v0[2];
  v2 = v0[3];
  sub_29D939E18();
  v3 = v0[4];
  v4 = v0[5];
  sub_29D939E18();
  return sub_29D93AE98();
}

uint64_t sub_29D71A1E4()
{
  sub_29D71B6B0(0, &unk_2A17B5520, MEMORY[0x29EDC7770], MEMORY[0x29EDC9C68]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v23 - v3;
  v5 = sub_29D937928();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9378C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B6B0(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v17 = *(sub_29D937948() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D93DDB0;
  (*(v12 + 104))(v16, *MEMORY[0x29EDC7768], v11);
  v21 = sub_29D9378D8();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_29D937918();
  sub_29D937908();
  (*(v6 + 8))(v10, v5);
  (*(v12 + 8))(v16, v11);
  return v20;
}

uint64_t sub_29D71A4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_29D71B058();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_29D71B0AC(v2, v4 + 16);
}

uint64_t sub_29D71A550(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v92 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v80 - v10;
  v12 = sub_29D9350C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D93A3A8();
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v18, qword_2A1A2BF58);
  v101[0] = 0;
  sub_29D9371C8();
  v19 = *(a2 + 48);
  sub_29D93A388();
  sub_29D6945AC(a2 + 56, v100);
  (*(v13 + 16))(v11, v17, v12);
  swift_storeEnumTagMultiPayload();
  sub_29D71B6B0(0, &qword_2A17B2E10, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v91 = a1;
  v20 = *(v13 + 72);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D943EA0;
  v23 = v22 + v21;
  v24 = *MEMORY[0x29EDC1D20];
  v90 = v13;
  v25 = *(v13 + 104);
  v25(v23, v24, v12);
  v25(v23 + v20, *MEMORY[0x29EDC1D68], v12);
  v26 = *MEMORY[0x29EDC1D80];
  v89 = v12;
  v25(v23 + 2 * v20, v26, v12);
  v27 = sub_29D719D54(v17, v22, MEMORY[0x29EDC1D90], &qword_2A17B2E20, MEMORY[0x29EDC1D90]);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = type metadata accessor for AFibBurdenOnboardingController();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
  v29[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = v27;
  v99.receiver = v29;
  v99.super_class = v28;
  v87 = objc_msgSendSuper2(&v99, sel_initWithNibName_bundle_, 0, 0);
  [v87 setModalPresentationStyle_];
  v30 = *MEMORY[0x29EDBA6B0];
  v31 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v88 = v17;
  v32 = [v31 initWithFeatureIdentifier:v30 healthStore:v19];
  v33 = *MEMORY[0x29EDBA6F8];
  v34 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v83 = v19;
  v35 = [v34 initWithFeatureIdentifier:v33 healthStore:v19];
  v36 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v37 = v32;
  v85 = v37;
  v38 = [v36 initWithFeatureIdentifier:v30 healthStore:v19];
  sub_29D6945AC(v100, &v96);
  v86 = v35;
  v39 = sub_29D71B714(v37, v38, v86, &v96);
  v84 = v39;

  sub_29D6945AC(v101, &v96);
  sub_29D6945AC(v100, &v93);
  type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
  v40 = swift_allocObject();
  sub_29D679D3C(&v96, v40 + 16);
  sub_29D679D3C(&v93, v40 + 64);
  *(v40 + 56) = 2;
  v41 = sub_29D933F18();

  v42 = sub_29D933F08();
  v43 = type metadata accessor for AFibBurdenOnboardingFlowManager();
  v97 = v43;
  v98 = &off_2A244DAB0;
  *&v96 = v39;
  v94 = v41;
  v95 = &off_2A24417F8;
  *&v93 = v42;
  v44 = type metadata accessor for AFibBurdenOnboardingModel();
  v45 = swift_allocObject();
  v46 = sub_29D693DDC(&v96, v43);
  v81 = &v80;
  v47 = *(*(v43 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v46, v46);
  v49 = (&v80 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = v94;
  v52 = sub_29D693DDC(&v93, v94);
  v82 = v11;
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v52, v52);
  v55 = (&v80 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v49;
  v58 = *v55;
  v45[5] = v43;
  v45[6] = &off_2A244DAB0;
  v45[2] = v57;
  v45[10] = v41;
  v45[11] = &off_2A24417F8;
  v45[7] = v58;
  sub_29D69417C(&v93);
  sub_29D69417C(&v96);
  v59 = v92;
  sub_29D71B998(v11, v92);

  v60 = HKHRAFibBurdenLogForCategory();
  v61 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
  v62 = v83;
  v63 = [v61 initWithLoggingCategory:v60 healthDataSource:v83];

  v97 = v44;
  v98 = &off_2A2441928;
  *&v96 = v45;
  v64 = type metadata accessor for AFibBurdenOnboardingCoordinator();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  v67 = swift_allocObject();
  v68 = sub_29D693DDC(&v96, v44);
  v81 = &v80;
  v69 = *(*(v44 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v68, v68);
  v71 = (&v80 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;
  v94 = v44;
  v95 = &off_2A2441928;
  *&v93 = v73;
  *(v67 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
  v74 = v67 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  *(v67 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D6945AC(&v93, v67 + 16);
  sub_29D71B998(v59, v67 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
  *(v74 + 8) = &off_2A24497D8;
  v75 = v87;
  swift_unknownObjectWeakAssign();

  *(v67 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v40;
  *(v67 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v62;
  *(v67 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v63;
  v76 = v62;

  v77 = v63;
  sub_29D862C98();

  sub_29D71B9FC(v59);
  sub_29D69417C(&v93);
  sub_29D69417C(&v96);

  sub_29D71B9FC(v82);
  sub_29D69417C(v100);
  sub_29D69417C(v101);
  v78 = *&v75[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator];
  *&v75[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v67;

  [v91 presentViewController:v75 animated:1 completion:0];

  return (*(v90 + 8))(v88, v89);
}

unint64_t sub_29D71AF54()
{
  result = qword_2A17B2DE0;
  if (!qword_2A17B2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DE0);
  }

  return result;
}

unint64_t sub_29D71AFAC()
{
  result = qword_2A17B2DE8;
  if (!qword_2A17B2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DE8);
  }

  return result;
}

unint64_t sub_29D71B004()
{
  result = qword_2A17B2DF0;
  if (!qword_2A17B2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DF0);
  }

  return result;
}

unint64_t sub_29D71B058()
{
  result = qword_2A17B2DF8;
  if (!qword_2A17B2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DF8);
  }

  return result;
}

uint64_t sub_29D71B0E4(void *a1)
{
  v44 = sub_29D937898();
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v44, v4);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29D71B6B0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  sub_29D71B6B0(0, &qword_2A17B2B20, MEMORY[0x29EDC4378], v6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = v39 - v13;
  v15 = sub_29D939A78();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v41 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B0AC(v1, &v46);
  v19 = swift_allocObject();
  v20 = v49;
  *(v19 + 56) = v48;
  *(v19 + 72) = v20;
  v21 = v51;
  *(v19 + 88) = v50;
  *(v19 + 104) = v21;
  v22 = v47;
  *(v19 + 24) = v46;
  *(v19 + 16) = a1;
  *(v19 + 40) = v22;
  v45 = v1;
  v23 = *(v1 + 48);
  v24 = *MEMORY[0x29EDBA6B0];
  v25 = type metadata accessor for AFibBurdenFeatureRegulatoryInfoTransformProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v40 = a1;
  v39[2] = v23;
  v39[1] = v24;
  v28 = sub_29D939A98();
  *(&v47 + 1) = v25;
  *&v48 = MEMORY[0x29EDC43B8];
  *&v46 = v28;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v29 = objc_opt_self();

  v30 = [v29 remoteDisabledLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  sub_29D939A48();
  v31 = sub_29D939A58();
  (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v32 = v44;
  v33 = sub_29D69C6C0(v44, qword_2A1A2C008);
  (*(v42 + 16))(v43, v33, v32);
  sub_29D939A68();
  sub_29D71B61C();
  v35 = objc_allocWithZone(v34);
  v36 = sub_29D939A28();
  sub_29D71B0AC(v45, &v46);
  v37 = v36;
  [v40 showAdaptively:v37 sender:sub_29D93ADA8()];

  return sub_29D936978();
}

void sub_29D71B61C()
{
  if (!qword_2A17B2E00)
  {
    sub_29D939A78();
    sub_29D71BBF8(&qword_2A17B2E08, MEMORY[0x29EDC4398]);
    v0 = sub_29D939A38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2E00);
    }
  }
}

void sub_29D71B6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_29D71B714(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AFibBurdenOnboardingFlowManager.State();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = a2;
  v15 = HKPreferredRegulatoryDomainProvider();
  sub_29D6945AC(a4, v25);
  type metadata accessor for AFibBurdenOnboardingFlowManager();
  v16 = swift_allocObject();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v17 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v17 = MEMORY[0x29EDCA1A0];
  }

  v16[12] = v17;
  v18 = sub_29D9371A8();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  *&v12[*(v8 + 20)] = 0;
  v12[*(v8 + 24)] = 0;
  sub_29D71BA60();
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 3) & 0x1FFFFFFFCLL;
  v22 = swift_allocObject();
  *(v22 + ((*(*v22 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D71BAC8(v12, v22 + *(*v22 + *MEMORY[0x29EDC9DE8] + 16));
  v16[13] = v22;
  v16[2] = a1;
  v16[3] = sub_29D71BA58;
  v16[4] = v13;
  v16[5] = a3;
  v16[6] = v15;
  sub_29D6945AC(v25, (v16 + 7));

  swift_unknownObjectRetain();
  sub_29D8F0A70();

  sub_29D936978();
  sub_29D69417C(a4);
  sub_29D69417C(v25);
  return v16;
}

uint64_t sub_29D71B998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D71B9FC(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D71BA60()
{
  if (!qword_2A17B2E18)
  {
    type metadata accessor for AFibBurdenOnboardingFlowManager.State();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29D93AA88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2E18);
    }
  }
}

uint64_t sub_29D71BAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingFlowManager.State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_29D71BB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_29D71BB48(uint64_t a1, int a2)
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

uint64_t sub_29D71BB90(uint64_t result, int a2, int a3)
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

uint64_t sub_29D71BBF8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29D71BC44@<X0>(uint64_t a1@<X8>)
{
  sub_29D71BF90();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71BFE0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D943EA0;
  v10 = objc_opt_self();
  result = [v10 _quantityTypeWithCode_];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = result;
  v17 = a1;
  *(v9 + 56) = &_s39AFibBurdenSharableSummaryChartComponentVN;
  *(v9 + 64) = sub_29D71C09C();
  *(v9 + 32) = v12;
  *(v9 + 40) = 0xD00000000000001ELL;
  *(v9 + 48) = 0x800000029D95C670;
  result = [v10 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = result;
  type metadata accessor for NotOnboardedIsOnboardedProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v18 = 0;
  sub_29D938338();
  sub_29D71C144(&qword_2A1A22340, sub_29D71BF90);
  v15 = sub_29D938418();
  (*(v4 + 8))(v8, v3);
  *(v14 + 24) = v15;
  *(v9 + 96) = &_s28AFibBurdenEducationComponentVN;
  *(v9 + 104) = sub_29D71C0F0();
  v16 = swift_allocObject();
  *(v9 + 72) = v16;
  *(v16 + 16) = v13;
  *(v16 + 24) = 0xD000000000000013;
  *(v16 + 32) = 0x800000029D95C690;
  *(v16 + 40) = v14;
  *(v16 + 48) = &off_2A24475D0;
  *(v16 + 56) = 1;
  result = [v10 _quantityTypeWithCode_];
  if (result)
  {
    *(v9 + 136) = sub_29D936258();
    *(v9 + 144) = sub_29D71C144(&qword_2A17B2E48, MEMORY[0x29EDC2668]);
    sub_29D693F78((v9 + 112));
    sub_29D936238();
    return sub_29D9360B8();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_29D71BF90()
{
  if (!qword_2A1A24A48)
  {
    v0 = sub_29D938328();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A48);
    }
  }
}

void sub_29D71BFE0()
{
  if (!qword_2A17B2E28)
  {
    sub_29D71C038();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2E28);
    }
  }
}

unint64_t sub_29D71C038()
{
  result = qword_2A17B2E30;
  if (!qword_2A17B2E30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B2E30);
  }

  return result;
}

unint64_t sub_29D71C09C()
{
  result = qword_2A17B2E38;
  if (!qword_2A17B2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E38);
  }

  return result;
}

unint64_t sub_29D71C0F0()
{
  result = qword_2A17B2E40;
  if (!qword_2A17B2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E40);
  }

  return result;
}

uint64_t sub_29D71C144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D71C1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsProvenanceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsProvenanceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D71C39C()
{
  result = qword_2A17B2E50;
  if (!qword_2A17B2E50)
  {
    sub_29D71C3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E50);
  }

  return result;
}

void sub_29D71C3F4()
{
  if (!qword_2A17B2E58)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2E58);
    }
  }
}

unint64_t sub_29D71C448()
{
  result = qword_2A17B2E60;
  if (!qword_2A17B2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E60);
  }

  return result;
}

unint64_t sub_29D71C4A0()
{
  result = qword_2A17B2E68;
  if (!qword_2A17B2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E68);
  }

  return result;
}

id sub_29D71C528(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHeartAttackWarning());
      return sub_29D82E43C();
    }

    else if (a1 == 4)
    {
      v3 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsPregnancyWarning());
      return sub_29D7DEF0C();
    }

    else
    {
      v7 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsCompleteViewController());
      return sub_29D8321E8();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHowTheyWorkViewController());
      return sub_29D708EB0(1);
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHypertensionWarning());
      return sub_29D8FCB70();
    }
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsConfirmDetailsViewController());
    return sub_29D6A0E48();
  }
}

uint64_t type metadata accessor for HeartArticlesGeneratorPipeline()
{
  result = qword_2A1A243D8;
  if (!qword_2A1A243D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D71C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a2;
  v34 = *v5;
  v9 = sub_29D9341E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178();
  v15 = v14;
  v37 = *(v14 - 8);
  v16 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v35 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  if (sub_29D934198())
  {
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v21 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = a4;
    v33 = v15;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = v9;
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    (*(v10 + 32))(v25 + v21, v13, v31);
    *(v25 + v22) = v36;
    *(v25 + v23) = a3;
    *(v25 + v24) = v32;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v26 = MEMORY[0x29EDB89F8];
    sub_29D71DAB4(0, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
    sub_29D71DB28(&qword_2A1A24AE0, &qword_2A1A24AD8, v26);
    sub_29D935E88();
    sub_29D935E88();
    sub_29D935E88();
    v27 = v35;
    sub_29D938378();
    sub_29D71D938(&qword_2A1A24A20, sub_29D6C3178);
    v28 = v33;
    v19 = sub_29D938418();
    (*(v37 + 8))(v27, v28);
  }

  return v19;
}

uint64_t sub_29D71CA3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v45 = a5;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v44 = sub_29D9341E8();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v44, v10);
  sub_29D71D980();
  v12 = v11;
  v50 = *(v11 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v49 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71DAB4(0, &qword_2A1A24A38, sub_29D6CE0BC, MEMORY[0x29EDB8AC0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v16, v20);
  v22 = v40 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v24 = sub_29D9341A8();
    v25 = [objc_allocWithZone(MEMORY[0x29EDBAA48]) initWithHealthStore_];

    _s56CurrentClassificationGuidelinesPublisherWithInitialValueCMa();
    v43 = a6;
    swift_allocObject();
    v26 = v25;
    v41 = v12;
    v27 = v26;
    v51 = sub_29D8E2508(v26);
    sub_29D71D938(&qword_2A1A22148, _s56CurrentClassificationGuidelinesPublisherWithInitialValueCMa);
    v28 = sub_29D938418();
    v40[1] = v28;

    v51 = v28;
    v29 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = a1;
    v31 = v44;
    (*(v8 + 16))(v29, v30, v44);
    v32 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v33 = (v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v47;
    *(v34 + 2) = v46;
    *(v34 + 3) = v35;
    *(v34 + 4) = v48;
    (*(v8 + 32))(&v34[v32], v29, v31);
    *&v34[v33] = v45;
    sub_29D71DAB4(0, &qword_2A1A223B8, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDB89F8]);
    sub_29D6CE0BC();
    sub_29D71DA2C();
    sub_29D935E88();
    sub_29D935E88();
    sub_29D935E88();
    v36 = v49;
    a6 = v43;
    sub_29D938468();

    sub_29D71D938(&qword_2A1A225A0, sub_29D71D980);
    v37 = v41;
    v38 = sub_29D938418();

    result = (*(v50 + 8))(v36, v37);
  }

  else
  {
    sub_29D6CE0BC();
    sub_29D938348();
    sub_29D71DB28(&qword_2A1A24A40, &qword_2A1A24A38, MEMORY[0x29EDB8AC0]);
    v38 = sub_29D938418();
    result = (*(v18 + 8))(v22, v17);
  }

  *a6 = v38;
  return result;
}

uint64_t sub_29D71CF54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v97 = a4;
  sub_29D71DC38();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D9341E8();
  v98 = *(v18 - 8);
  v99 = v18;
  v19 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v100 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v101[1] = a2;
  if (*(a3 + 16) && (v23 = sub_29D6959E4(v22), (v24 & 1) != 0))
  {
    v25 = *(*(a3 + 56) + 8 * v23);
    v26 = qword_2A1A25718;
    sub_29D935E88();
    v95 = v25;
    sub_29D935E88();
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_29D937898();
    sub_29D69C6C0(v27, qword_2A1A2C008);
    v28 = sub_29D937878();
    v29 = sub_29D93A268();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v101[0] = v31;
      *v30 = 136446466;
      v32 = sub_29D93AF08();
      v34 = sub_29D6C2364(v32, v33, v101);
      v96 = a6;
      v35 = a5;
      v36 = v17;
      v37 = a7;
      v38 = v34;

      *(v30 + 4) = v38;
      *(v30 + 12) = 2080;
      v39 = sub_29D93A628();
      v41 = sub_29D6C2364(v39, v40, v101);

      *(v30 + 14) = v41;
      a7 = v37;
      v17 = v36;
      a5 = v35;
      _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s] Adding classification specific articles for %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    v42 = v97;
    sub_29D88BDE4(v95);
    if (!*(v42 + 16))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v43 = qword_2A1A25718;
    sub_29D935E88();
    if (v43 != -1)
    {
      swift_once();
    }

    v44 = sub_29D937898();
    sub_29D69C6C0(v44, qword_2A1A2C008);
    v45 = sub_29D937878();
    v46 = sub_29D93A268();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v101[0] = v48;
      *v47 = 136446466;
      v49 = sub_29D93AF08();
      v51 = sub_29D6C2364(v49, v50, v101);
      v96 = a6;
      v52 = a5;
      v53 = v17;
      v54 = a7;
      v55 = v51;

      *(v47 + 4) = v55;
      *(v47 + 12) = 2080;
      v56 = sub_29D93A628();
      v58 = sub_29D6C2364(v56, v57, v101);

      *(v47 + 14) = v58;
      a7 = v54;
      v17 = v53;
      a5 = v52;
      _os_log_impl(&dword_29D677000, v45, v46, "[%{public}s] No classification specific articles found for %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v48, -1, -1);
      MEMORY[0x29ED6BE30](v47, -1, -1);
    }

    v42 = v97;
    if (!*(v97 + 16))
    {
      goto LABEL_20;
    }
  }

  v59 = sub_29D6959E4(v22);
  if ((v60 & 1) == 0)
  {
LABEL_20:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v77 = sub_29D937898();
    sub_29D69C6C0(v77, qword_2A1A2C008);
    v78 = sub_29D937878();
    v79 = sub_29D93A268();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v101[0] = v81;
      *v80 = 136446466;
      v82 = sub_29D93AF08();
      v84 = sub_29D6C2364(v82, v83, v101);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      v85 = sub_29D93A628();
      v87 = sub_29D6C2364(v85, v86, v101);

      *(v80 + 14) = v87;
      _os_log_impl(&dword_29D677000, v78, v79, "[%{public}s] No hypertension notifications classification specific articles found for %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v81, -1, -1);
      MEMORY[0x29ED6BE30](v80, -1, -1);
    }

    goto LABEL_25;
  }

  v97 = v22;
  v61 = *(*(v42 + 56) + 8 * v59);
  v62 = qword_2A1A25718;
  sub_29D935E88();
  if (v62 != -1)
  {
    swift_once();
  }

  v63 = sub_29D937898();
  sub_29D69C6C0(v63, qword_2A1A2C008);
  v64 = sub_29D937878();
  v65 = sub_29D93A268();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v101[0] = v67;
    *v66 = 136446466;
    v68 = sub_29D93AF08();
    v70 = a5;
    v71 = v17;
    v72 = a7;
    v73 = sub_29D6C2364(v68, v69, v101);

    *(v66 + 4) = v73;
    a7 = v72;
    v17 = v71;
    a5 = v70;
    *(v66 + 12) = 2080;
    v74 = sub_29D93A628();
    v76 = sub_29D6C2364(v74, v75, v101);

    *(v66 + 14) = v76;
    _os_log_impl(&dword_29D677000, v64, v65, "[%{public}s] Adding hypertension notifications classification specific articles for %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v67, -1, -1);
    MEMORY[0x29ED6BE30](v66, -1, -1);
  }

  sub_29D88BDE4(v61);
LABEL_25:
  (*(v98 + 16))(v100, a5, v99);
  v88 = sub_29D937748();
  (*(*(v88 - 8) + 56))(v17, 1, 1, v88);
  sub_29D71DC90();
  v90 = v89;
  v91 = *(v89 + 48);
  v92 = *(v89 + 52);
  swift_allocObject();
  v93 = sub_29D937728();
  a7[3] = v90;
  result = sub_29D71D938(&unk_2A1A24690, sub_29D71DC90);
  a7[4] = result;
  *a7 = v93;
  return result;
}

uint64_t sub_29D71D798()
{
  v1 = *(v0 + qword_2A1A24400);

  v2 = *(v0 + qword_2A1A243F0);

  v3 = *(v0 + qword_2A1A243F8);
}

uint64_t sub_29D71D7E8()
{
  v0 = sub_29D937718();
  v1 = *(v0 + qword_2A1A24400);

  v2 = *(v0 + qword_2A1A243F0);

  v3 = *(v0 + qword_2A1A243F8);

  return swift_deallocClassInstance();
}

uint64_t sub_29D71D874@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D71CA3C(v1 + v4, v8, v9, v11, v12, a1);
}

uint64_t sub_29D71D938(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D71D980()
{
  if (!qword_2A1A22598)
  {
    sub_29D71DAB4(255, &qword_2A1A223B8, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDB89F8]);
    sub_29D6CE0BC();
    sub_29D71DA2C();
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22598);
    }
  }
}

unint64_t sub_29D71DA2C()
{
  result = qword_2A1A223C0;
  if (!qword_2A1A223C0)
  {
    sub_29D71DAB4(255, &qword_2A1A223B8, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A223C0);
  }

  return result;
}

void sub_29D71DAB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D71DB28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D71DAB4(255, a2, sub_29D6CE0BC, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D71DB84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D71CF54(a1, v7, v8, v9, v2 + v6, v10, a2);
}

void sub_29D71DC38()
{
  if (!qword_2A1A24680)
  {
    sub_29D937748();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24680);
    }
  }
}

void sub_29D71DC90()
{
  if (!qword_2A1A24688)
  {
    sub_29D71DCEC();
    v0 = sub_29D937738();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24688);
    }
  }
}

unint64_t sub_29D71DCEC()
{
  result = qword_2A1A23BA0;
  if (!qword_2A1A23BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23BA0);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalSettingsView()
{
  result = qword_2A17B2E78;
  if (!qword_2A17B2E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D71DDB4()
{
  sub_29D71DF0C(319, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  if (v0 <= 0x3F)
  {
    sub_29D71DF0C(319, &qword_2A17B44C0, sub_29D71DF70, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29D72819C(319, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D71DF0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D71DF70()
{
  result = qword_2A17B2E88;
  if (!qword_2A17B2E88)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A17B2E88);
  }

  return result;
}

uint64_t sub_29D71DFDC()
{
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  sub_29D939848();
  swift_getKeyPath();
  sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel);
  sub_29D933E18();

  v0 = *(v5 + 16);
  v1 = v0;

  if (v0)
  {
    [v1 journalType];

    sub_29D939848();
    swift_getKeyPath();
    sub_29D933E18();

    v2 = *(v5 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete);

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_29D71E16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = sub_29D938B78();
  v74 = *(v76 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v76, v4);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933AA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v65 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D939D18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v63 - v18;
  sub_29D7271A8(0);
  v21 = v20;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727088();
  v70 = v26;
  v68 = *(v26 - 8);
  v27 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D726F24();
  v71 = *(v31 - 8);
  v72 = v31;
  v32 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v69 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D938C68();
  v36 = *(a1 + *(type metadata accessor for BloodPressureJournalSettingsView() + 48));
  *v25 = v35;
  *(v25 + 1) = v36;
  v25[16] = 0;
  sub_29D72ABCC(0, &qword_2A17B32F0, sub_29D727264);
  sub_29D71E7FC(a1, &v25[*(v37 + 44)]);
  v38 = sub_29D9390D8();
  v39 = &v25[*(v21 + 36)];
  *v39 = v38;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  v39[40] = 1;
  v77 = a1;
  sub_29D729A78();
  v41 = v40;
  v42 = sub_29D72A1E0();
  sub_29D729B40(255);
  v44 = v43;
  v45 = sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC);
  v78 = v44;
  v79 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v30;
  v66 = v21;
  v64 = v41;
  sub_29D9394C8();
  sub_29D72A794(v25, sub_29D7271A8);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v47 = qword_2A1A2BE98;
  (*(v11 + 16))(v16, v19, v10);
  sub_29D935E88();
  v48 = v47;
  sub_29D933A98();
  v49 = sub_29D939D98();
  v51 = v50;
  (*(v11 + 8))(v19, v10);
  v82 = v49;
  v83 = v51;
  v78 = v66;
  v79 = v64;
  v80 = v42;
  v81 = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_29D69AB60();
  v54 = MEMORY[0x29EDC99B0];
  v56 = v69;
  v55 = v70;
  v57 = v67;
  sub_29D9393F8();

  (*(v68 + 8))(v57, v55);
  v59 = v73;
  v58 = v74;
  v60 = v76;
  (*(v74 + 104))(v73, *MEMORY[0x29EDBBF98], v76);
  v78 = v55;
  v79 = v54;
  v80 = v52;
  v81 = v53;
  swift_getOpaqueTypeConformance2();
  v61 = v72;
  sub_29D939468();
  (*(v58 + 8))(v59, v60);
  return (*(v71 + 8))(v56, v61);
}

uint64_t sub_29D71E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  sub_29D729308();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v8 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v127 - v10;
  sub_29D7288B8(0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727814(0, &qword_2A17B3300, sub_29D727334, sub_29D7288B8, MEMORY[0x29EDBC7E8]);
  v135 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v137 = v127 - v21;
  sub_29D727334(0);
  v136 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = (v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D7279F0();
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x2A1C7C4A8](v27 - 8, v29);
  v132 = v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = v127 - v33;
  sub_29D7277CC(0);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35 - 8, v37);
  v131 = v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v134 = v127 - v41;
  sub_29D7272EC(0);
  v43 = *(*(v42 - 8) + 64);
  v45 = MEMORY[0x2A1C7C4A8](v42 - 8, v44);
  v133 = v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45, v47);
  v139 = v127 - v48;
  if (sub_29D71DFDC())
  {
    v49 = sub_29D9398A8();
    v51 = v50;
    sub_29D71F4B8(a1, &v172);
    v156 = v178;
    v157 = v179;
    v158 = v180;
    v152 = v174;
    v153 = v175;
    v154 = v176;
    v155 = v177;
    v150 = v172;
    v151 = v173;
    v159[6] = v178;
    v159[7] = v179;
    v159[8] = v180;
    v159[2] = v174;
    v159[3] = v175;
    v159[4] = v176;
    v159[5] = v177;
    v159[0] = v172;
    v159[1] = v173;
    sub_29D72AC38(&v150, v171, sub_29D727484);
    sub_29D72AEFC(v159, sub_29D727484);
    v167 = v156;
    v168 = v157;
    v169 = v158;
    v163 = v152;
    v164 = v153;
    v165 = v154;
    v166 = v155;
    v161 = v150;
    v162 = v151;
    *&v160 = v49;
    *(&v160 + 1) = v51;
    sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
    sub_29D939848();
    v52 = sub_29D7F2248();
    v127[0] = v34;
    v54 = v53;

    *&v172 = v52;
    *(&v172 + 1) = v54;
    sub_29D69AB60();
    v55 = sub_29D9392F8();
    v57 = v56;
    LOBYTE(v52) = v58;
    v127[1] = v13;
    v60 = v59;
    KeyPath = swift_getKeyPath();
    v129 = v11;
    v62 = KeyPath;
    v63 = sub_29D938EF8();
    v128 = a1;
    v64 = v63;
    v65 = sub_29D9391F8();
    v130 = v8;
    v66 = v65;
    v67 = swift_getKeyPath();
    LOBYTE(v140) = v52 & 1;
    *&v172 = v55;
    *(&v172 + 1) = v57;
    LOBYTE(v173) = v52 & 1;
    *(&v173 + 1) = v60;
    *&v174 = v62;
    BYTE8(v174) = 1;
    HIDWORD(v174) = v64;
    *&v175 = v67;
    *(&v175 + 1) = v66;
    *&v171[0] = 0;
    *(&v171[0] + 1) = 0xE000000000000000;
    sub_29D93AA18();
    v68 = *MEMORY[0x29EDC43E0];
    v69 = sub_29D939D68();
    v71 = v70;

    *&v171[0] = v69;
    *(&v171[0] + 1) = v71;
    MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D95C8E0);
    sub_29D727898(0);
    sub_29D72AFC4();
    v72 = v134;
    a1 = v128;
    sub_29D939438();

    v170[0] = v172;
    v170[1] = v173;
    v170[2] = v174;
    v170[3] = v175;
    sub_29D72AEFC(v170, sub_29D727898);
    v73 = sub_29D938C78();
    v74 = v127[0];
    *v127[0] = v73;
    *(v74 + 8) = 0;
    *(v74 + 16) = 1;
    sub_29D72ABCC(0, &qword_2A17B3368, sub_29D727A84);
    sub_29D71F8F4(a1, (v74 + *(v75 + 44)));
    v146 = v166;
    v147 = v167;
    v148 = v168;
    v149 = v169;
    v142 = v162;
    v143 = v163;
    v144 = v164;
    v145 = v165;
    v140 = v160;
    v141 = v161;
    v76 = v72;
    v77 = v131;
    sub_29D72AC38(v76, v131, sub_29D7277CC);
    v78 = v132;
    sub_29D72AF5C(v74, v132, sub_29D7279F0);
    v79 = v147;
    v171[6] = v146;
    v171[7] = v147;
    v80 = v148;
    v81 = v149;
    v171[8] = v148;
    v171[9] = v149;
    v82 = v142;
    v83 = v143;
    v171[2] = v142;
    v171[3] = v143;
    v84 = v144;
    v85 = v145;
    v171[4] = v144;
    v171[5] = v145;
    v86 = v140;
    v87 = v141;
    v171[0] = v140;
    v171[1] = v141;
    v26[6] = v146;
    v26[7] = v79;
    v26[8] = v80;
    v26[9] = v81;
    v26[2] = v82;
    v26[3] = v83;
    v26[4] = v84;
    v26[5] = v85;
    *v26 = v86;
    v26[1] = v87;
    sub_29D727368();
    v89 = v88;
    sub_29D72AC38(v77, v26 + *(v88 + 48), sub_29D7277CC);
    sub_29D72AF5C(v78, v26 + *(v89 + 64), sub_29D7279F0);
    sub_29D72AC38(&v160, &v172, sub_29D7273F0);
    sub_29D72AC38(v171, &v172, sub_29D7273F0);
    sub_29D72A794(v78, sub_29D7279F0);
    sub_29D72AEFC(v77, sub_29D7277CC);
    v178 = v146;
    v179 = v147;
    v180 = v148;
    v181 = v149;
    v174 = v142;
    v175 = v143;
    v176 = v144;
    v177 = v145;
    v172 = v140;
    v173 = v141;
    sub_29D72AEFC(&v172, sub_29D7273F0);
    sub_29D72AF5C(v26, v137, sub_29D727334);
    swift_storeEnumTagMultiPayload();
    sub_29D728154(&qword_2A17B3318, sub_29D727334);
    sub_29D72ACA0();
    v8 = v130;
    sub_29D938DE8();
    sub_29D72AEFC(&v160, sub_29D7273F0);
    sub_29D72A794(v26, sub_29D727334);
    sub_29D72A794(v74, sub_29D7279F0);
    v90 = v134;
    v91 = sub_29D7277CC;
    v11 = v129;
  }

  else
  {
    *v17 = sub_29D938C68();
    *(v17 + 1) = 0;
    v17[16] = 1;
    sub_29D72ABCC(0, &qword_2A17B3308, sub_29D728A20);
    v93 = &v17[*(v92 + 44)];
    v94 = sub_29D938B88();
    v95 = *(a1 + *(type metadata accessor for BloodPressureJournalSettingsView() + 48));
    *v93 = v94;
    *(v93 + 1) = v95;
    v93[16] = 0;
    sub_29D72ABCC(0, &qword_2A17B3310, sub_29D728AB4);
    sub_29D725434(a1, &v93[*(v96 + 44)]);
    LOBYTE(v94) = sub_29D9390C8();
    sub_29D728964(0);
    v98 = &v17[*(v97 + 36)];
    *v98 = v94;
    *(v98 + 8) = 0u;
    *(v98 + 24) = 0u;
    v98[40] = 1;
    LOBYTE(v94) = sub_29D939138();
    sub_29D938618();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    sub_29D72893C(0);
    v108 = &v17[*(v107 + 36)];
    *v108 = v94;
    *(v108 + 1) = v100;
    *(v108 + 2) = v102;
    *(v108 + 3) = v104;
    *(v108 + 4) = v106;
    v108[40] = 0;
    v109 = [objc_opt_self() tertiarySystemBackgroundColor];
    v110 = sub_29D939528();
    v111 = sub_29D9390D8();
    sub_29D728900(0);
    v113 = &v17[*(v112 + 36)];
    *v113 = v110;
    v113[8] = v111;
    sub_29D933E48();
    v115 = v114;
    v116 = &v17[*(v13 + 36)];
    v117 = *(sub_29D9388D8() + 20);
    v118 = *MEMORY[0x29EDBC6F8];
    v119 = sub_29D938C38();
    (*(*(v119 - 8) + 104))(&v116[v117], v118, v119);
    *v116 = v115;
    *(v116 + 1) = v115;
    sub_29D7280C0();
    *&v116[*(v120 + 36)] = 256;
    sub_29D72AC38(v17, v137, sub_29D7288B8);
    swift_storeEnumTagMultiPayload();
    sub_29D728154(&qword_2A17B3318, sub_29D727334);
    sub_29D72ACA0();
    sub_29D938DE8();
    v91 = sub_29D7288B8;
    v90 = v17;
  }

  sub_29D72AEFC(v90, v91);
  *v11 = sub_29D938C78();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_29D72ABCC(0, &qword_2A17B3348, sub_29D72939C);
  sub_29D722428(a1, &v11[*(v121 + 44)]);
  v122 = v139;
  v123 = v133;
  sub_29D72AF5C(v139, v133, sub_29D7272EC);
  sub_29D72AC38(v11, v8, sub_29D729308);
  v124 = v138;
  sub_29D72AF5C(v123, v138, sub_29D7272EC);
  sub_29D72750C(0, &qword_2A17B2EC0, sub_29D7272EC, sub_29D729308);
  sub_29D72AC38(v8, v124 + *(v125 + 48), sub_29D729308);
  sub_29D72AEFC(v11, sub_29D729308);
  sub_29D72A794(v122, sub_29D7272EC);
  sub_29D72AEFC(v8, sub_29D729308);
  return sub_29D72A794(v123, sub_29D7272EC);
}

uint64_t sub_29D71F4B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a1;
  v4 = sub_29D939628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72B554(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() tertiarySystemBackgroundColor];
  v33 = sub_29D939528();
  v16 = type metadata accessor for BloodPressureJournalSettingsView();
  v17 = *(a1 + *(v16 + 72));
  sub_29D9398A8();
  sub_29D938718();
  *&v53[3] = *&v53[27];
  *&v53[11] = *&v53[35];
  *&v53[19] = *&v53[43];
  sub_29D939638();
  sub_29D938C98();
  v18 = sub_29D938CB8();
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  sub_29D939648();

  sub_29D72AEFC(v14, sub_29D72B554);
  (*(v5 + 104))(v9, *MEMORY[0x29EDBCAB8], v4);
  v19 = sub_29D939668();

  (*(v5 + 8))(v9, v4);
  v20 = sub_29D939568();
  v21 = *(v32 + *(v16 + 76));
  sub_29D9398A8();
  sub_29D938718();
  v22 = v33;
  *&v54[0] = v33;
  WORD4(v54[0]) = 256;
  *(v54 + 10) = *v53;
  *(&v54[1] + 10) = *&v53[8];
  *(&v54[2] + 10) = *&v53[16];
  *(&v54[3] + 1) = *&v53[23];
  v41 = v54[2];
  v42 = v54[3];
  v39 = v54[0];
  v40 = v54[1];
  v55 = v19;
  LOWORD(v56) = 1;
  WORD3(v56) = v52;
  *(&v56 + 2) = v51;
  *(&v56 + 1) = v20;
  v24 = v49;
  v23 = v50;
  v58 = v49;
  v59 = v50;
  v57 = v48;
  v46 = v49;
  v47 = v50;
  v44 = v56;
  v45 = v48;
  v43 = v19;
  v25 = v54[3];
  a2[2] = v54[2];
  a2[3] = v25;
  v26 = v40;
  *a2 = v39;
  a2[1] = v26;
  v28 = v47;
  v27 = v48;
  v29 = v45;
  a2[7] = v46;
  a2[8] = v28;
  v30 = v44;
  a2[4] = v43;
  a2[5] = v30;
  a2[6] = v29;
  v60[0] = v19;
  v60[1] = 0;
  v61 = 1;
  v62 = v51;
  v63 = v52;
  v64 = v20;
  v65 = v27;
  v66 = v24;
  v67 = v23;
  sub_29D72AC38(v54, &v34, sub_29D727588);
  sub_29D72AC38(&v55, &v34, sub_29D7276E4);
  sub_29D72AEFC(v60, sub_29D7276E4);
  v34 = v22;
  v35 = 256;
  v36 = *v53;
  v37 = *&v53[8];
  v38[0] = *&v53[16];
  *(v38 + 14) = *&v53[23];
  return sub_29D72AEFC(&v34, sub_29D727588);
}