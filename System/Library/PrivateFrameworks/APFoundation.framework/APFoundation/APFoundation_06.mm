uint64_t sub_1BAF4BA78(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF4BB08(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BAF4BC58(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 32) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[2] = 0;
        result[3] = 0;
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1BAF4BE34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = *(v1 + 40);
  *(a1 + 40) = *(v1 + 56);
  *(a1 + 56) = v2;
}

uint64_t PersistentCachedStore.__allocating_init<A>(queueStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1BAF4C990(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t PersistentCachedStore.init<A>(queueStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BAF4C990(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1BAF4BFB0()
{
  v2 = *v0;
  sub_1BAF4BE34(v16);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  type metadata accessor for AnyPersistentQueueStore();
  sub_1BAF5B88C();

  if (!v1)
  {
    v7 = v14;
    v17 = v15;
    v8 = sub_1BADC8524(v13, v14);
    v9 = *(*(v7 - 8) + 64);
    MEMORY[0x1EEE9AC00](v8);
    (*(v11 + 16))(&v12[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    swift_beginAccess();
    type metadata accessor for QueueMessage();
    sub_1BAF8EF28();
    sub_1BAF8EEF8();
    swift_endAccess();
    return sub_1BADC5BE0(v13);
  }

  return result;
}

uint64_t sub_1BAF4C194(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = type metadata accessor for QueueMessage();
  v14 = *(v7 - 8);
  v8 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9 + 16;
  sub_1BAF4BE34(v13);
  type metadata accessor for AnyPersistentQueueStore();
  sub_1BAF5B8B4();

  if (!v2)
  {
    (*(v14 + 16))(v10, a1, v7);
    swift_beginAccess();
    sub_1BAF8EF28();
    sub_1BAF8EF08();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BAF4C358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  sub_1BAF4BE34(v15);
  v9 = v8[11];
  v10 = v8[12];
  v11 = v8[10];
  type metadata accessor for AnyPersistentQueueStore();
  v14[2] = a2;
  v14[3] = a3;
  sub_1BAF5B8DC();

  if (!v4)
  {
    v16 = a1;
    v14[7] = 0;
    swift_beginAccess();
    type metadata accessor for QueueMessage();
    sub_1BAF8EF28();

    swift_getWitnessTable();
    swift_getWitnessTable();
    v13 = sub_1BAF8EFD8();
    v14[1] = v14;
    MEMORY[0x1EEE9AC00](v13);
    swift_getWitnessTable();
    sub_1BAF8EFE8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BAF4C598()
{
  v2 = *v0;
  sub_1BAF4BE34(v8);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  type metadata accessor for AnyPersistentQueueStore();
  sub_1BAF5B904();

  if (!v1)
  {
    v9 = &v7;
    MEMORY[0x1EEE9AC00](result);
    swift_beginAccess();
    type metadata accessor for QueueMessage();
    sub_1BAF8EF28();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1BAF8EFE8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BAF4C778()
{
  v1 = *v0;
  swift_beginAccess();
  v6 = v0[10];
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  type metadata accessor for QueueMessage();
  sub_1BAF8EF28();
  swift_getWitnessTable();
  return sub_1BAF8EFB8();
}

void *PersistentCachedStore.deinit()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];

  v5 = v0[10];

  return v0;
}

uint64_t PersistentCachedStore.__deallocating_deinit()
{
  PersistentCachedStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF4C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v9 = *(*v3 + 96);
  type metadata accessor for QueueMessage();
  *(v3 + 80) = sub_1BAF8EB68();
  sub_1BAF5BE3C(a1, v7, a2, a3, v13);
  v10 = v13[1];
  *(v3 + 16) = v13[0];
  *(v3 + 32) = v10;
  v11 = v13[3];
  *(v3 + 48) = v13[2];
  *(v3 + 64) = v11;
  return v3;
}

uint64_t sub_1BAF4CA6C(void *a1)
{
  if (*a1 == *(v1 + 40) && a1[1] == *(v1 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8() & 1;
  }
}

uint64_t getEnumTagSinglePayload for WorkState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAF4CE00()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](qword_1BAF969A0[v1]);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF4CE88()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](qword_1BAF969A0[v1]);
  return sub_1BAF8F5E8();
}

void *sub_1BAF4CED4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2030100u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1BAF4CF18()
{
  result = qword_1EBC36B48;
  if (!qword_1EBC36B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36B48);
  }

  return result;
}

uint64_t sub_1BAF4CF6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t static Guarantee.value(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = sub_1BAF8F0D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *(v1 + 48);
  v10 = *(v1 + 52);
  v11 = swift_allocObject();
  Guarantee.init()();
  v12 = *(v3 - 8);
  (*(v12 + 16))(v8, a1, v3);
  (*(v12 + 56))(v8, 0, 1, v3);
  v13 = *(*v11 + 88);
  swift_beginAccess();
  (*(v5 + 40))(v11 + v13, v8, v4);
  swift_endAccess();
  return v11;
}

void Guarantee.then(_:)(void (*a1)(char *), uint64_t a2)
{
  v21 = a2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_1BAF8F0D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v20 - v14;
  v16 = *(v2 + *(v4 + 104));
  os_unfair_lock_lock(v16 + 4);
  v17 = *(*v2 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v11, v2 + v17, v6);
  if ((*(v12 + 48))(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = a1;
    v18[4] = v21;
    v22 = sub_1BAF4ED8C;
    v23 = v18;
    v19 = *(*v2 + 96);
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1BAF8EF28();

    sub_1BAF8EF08();
    swift_endAccess();
    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    (*(v12 + 32))(v15, v11, v5);
    os_unfair_lock_unlock(v16 + 4);
    a1(v15);
    (*(v12 + 8))(v15, v5);
  }
}

uint64_t Guarantee.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_1BAF8F0D8();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 96));

  v5 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1BAF4D548()
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](0);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF4D5B4()
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](0);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF4D60C(void (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  a1();
  return v5;
}

void *Promise.init()()
{
  v1 = *(*v0 + 80);
  swift_getFunctionTypeMetadata1();
  v2 = sub_1BAF8EED8();
  v3 = MEMORY[0x1E69E7CC0];
  v0[2] = v2;
  v0[3] = v3;
  v4 = *(*v0 + 104);
  type metadata accessor for Promise.State();
  swift_storeEnumTagMultiPayload();
  v5 = *(*v0 + 112);
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v0 + v5) = v6;
  *(v0 + *(*v0 + 120)) = 0;
  return v0;
}

uint64_t static Promise.value(_:)(uint64_t a1)
{
  v24 = a1;
  v2 = *(v1 + 80);
  v3 = type metadata accessor for Promise.State();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - v7;
  v9 = *(v2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF2F048(&qword_1EBC36890, &qword_1BAF97140);
  v13 = sub_1BAF8F5F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = *(v1 + 48);
  v19 = *(v1 + 52);
  v20 = swift_allocObject();
  Promise.init()();
  (*(v14 + 16))(v17, v24, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v8 = *v17;
  }

  else
  {
    v21 = *(v9 + 32);
    v21(v12, v17, v2);
    v21(v8, v12, v2);
  }

  swift_storeEnumTagMultiPayload();
  v22 = *(*v20 + 104);
  swift_beginAccess();
  (*(v4 + 40))(v20 + v22, v8, v3);
  swift_endAccess();
  return v20;
}

uint64_t Promise.then(_:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - v9;
  v11 = type metadata accessor for Promise.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = *(v2 + *(v5 + 112));
  os_unfair_lock_lock(v16 + 4);
  v17 = *(*v2 + 104);
  swift_beginAccess();
  (*(v12 + 16))(v15, v3 + v17, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v12 + 8))(v15, v11);
    }

    else
    {
      v19 = swift_allocObject();
      v19[2] = v6;
      v19[3] = a1;
      v19[4] = v22;
      v23 = sub_1BAF4FCA8;
      v24 = v19;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_1BAF8EF28();

      sub_1BAF8EF08();
      swift_endAccess();
    }

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    (*(v7 + 32))(v10, v15, v6);
    os_unfair_lock_unlock(v16 + 4);
    a1(v10);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t Promise.catch(_:)(void (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = type metadata accessor for Promise.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-v11];
  v13 = *&v3[*(v6 + 112)];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v3 + 104);
  swift_beginAccess();
  (*(v9 + 16))(v12, &v3[v14], v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v12;
      os_unfair_lock_unlock(v13 + 4);
      a1(v16);
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = a1;
      *(v17 + 24) = a2;
      swift_beginAccess();
      v18 = *(v3 + 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 3) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1BAF4F8E0(0, v18[2] + 1, 1, v18, &qword_1EBC36B68, &qword_1BAF96A40);
        *(v3 + 3) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1BAF4F8E0((v20 > 1), v21 + 1, 1, v18, &qword_1EBC36B68, &qword_1BAF96A40);
      }

      v18[2] = v21 + 1;
      v22 = &v18[2 * v21];
      v22[4] = sub_1BAF4EDCC;
      v22[5] = v17;
      *(v3 + 3) = v18;
      swift_endAccess();
      os_unfair_lock_unlock(v13 + 4);
    }
  }

  else
  {
    os_unfair_lock_unlock(v13 + 4);
    (*(v9 + 8))(v12, v8);
  }
}

void Promise.resolve(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Promise.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v13 = *&v1[*(v3 + 112)];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v1 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v14], v5);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  (*(v6 + 8))(v12, v5);
  if (v3 == 2)
  {
    (*(*(v4 - 8) + 16))(v10, a1, v4);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v6 + 40))(&v1[v14], v10, v5);
    swift_endAccess();
    swift_beginAccess();
    v15 = *(v1 + 2);
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1BAF8EF28();

    sub_1BAF8EF18();
    swift_endAccess();
    v16 = *(*v1 + 120);
    v17 = *&v1[v16];
    *&v1[v16] = 0;
    swift_beginAccess();
    v18 = *(v1 + 3);
    *(v1 + 3) = MEMORY[0x1E69E7CC0];

    os_unfair_lock_unlock(v13 + 4);
    if (v17)
    {

      sub_1BAF8E9C8();
    }

    v20[2] = v15;
    MEMORY[0x1EEE9AC00](v19);
    v20[-2] = v4;
    v20[-1] = a1;
    swift_getWitnessTable();
    sub_1BAF8EE88();
  }

  else
  {
    os_unfair_lock_unlock(v13 + 4);
  }
}

void Promise.reject(_:)(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Promise.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = *&v1[*(v3 + 112)];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v1 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v14], v5);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  (*(v6 + 8))(v12, v5);
  if (v3 == 2)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v15 = a1;
    (*(v6 + 40))(&v1[v14], v10, v5);
    swift_endAccess();
    swift_beginAccess();
    v16 = *(v1 + 3);
    *(v1 + 3) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1BAF8EF28();
    sub_1BAF8EF18();
    swift_endAccess();
    os_unfair_lock_unlock(v13 + 4);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = (v16 + 40);
      while (v18 < *(v16 + 16))
      {
        ++v18;
        v21 = *(v19 - 1);
        v20 = *v19;
        v23 = a1;

        v21(&v23);

        v19 += 2;
        if (v17 == v18)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }

  else
  {
    os_unfair_lock_unlock(v13 + 4);
  }
}

uint64_t Promise.race(timeout:queue:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BAF8E9A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v44 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v39 - v10;
  v42 = sub_1BAF8E958();
  v11 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAF8F098();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAF8F078();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = sub_1BAF8E988();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = a1;
  }

  else
  {
    v24 = sub_1BAF4F388();
    v39[1] = "Storage";
    v39[2] = v24;
    sub_1BAF8E968();
    aBlock[0] = v21;
    v39[0] = sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF8F198();
    (*(v40 + 104))(v16, *MEMORY[0x1E69E8090], v41);
    v25 = sub_1BAF8F0B8();
    v22 = MEMORY[0x1E69E7CC0];
    v23 = v25;
  }

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = *(v4 + 80);
  *(v27 + 24) = v26;
  aBlock[4] = sub_1BAF4F3D4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F60E8;
  _Block_copy(aBlock);
  v46 = v22;
  sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
  v28 = a1;

  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  v29 = sub_1BAF8E9D8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1BAF8E9B8();

  v33 = *(*v2 + 120);
  v34 = *(v2 + v33);
  *(v2 + v33) = v32;

  v35 = v44;
  sub_1BAF8E998();
  v36 = v45;
  sub_1BAF8E9F8();
  v37 = *(v6 + 8);
  v37(v35, v5);
  sub_1BAF8F088();

  return (v37)(v36, v5);
}

uint64_t sub_1BAF4EB9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Promise.PromiseError();
    swift_getWitnessTable();
    v1 = swift_allocError();
    Promise.reject(_:)(v1);
  }

  return result;
}

char *Promise.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(*v0 + 104);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for Promise.State();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);
  v7 = *&v0[*(*v0 + 112)];

  v8 = *&v0[*(*v0 + 120)];

  return v0;
}

uint64_t sub_1BAF4ED30(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF4ED8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1BAF4EDCC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

char *sub_1BAF4EDF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36B78, &qword_1BAF96A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1BAF4EF14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(qword_1EBC36B80, &qword_1BAF96A58);
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

char *sub_1BAF4F018(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36B70, &qword_1BAF96A48);
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

char *sub_1BAF4F124(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC367D8, &qword_1BAF956D0);
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

char *sub_1BAF4F230(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36B58, &qword_1BAF96A30);
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

uint64_t sub_1BAF4F350(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

unint64_t sub_1BAF4F388()
{
  result = qword_1EDBA2078;
  if (!qword_1EDBA2078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA2078);
  }

  return result;
}

uint64_t sub_1BAF4F3D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1BAF4EB9C();
}

uint64_t sub_1BAF4F3DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAF4F420(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Promise.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAF4F520(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1BAF4F868();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAF4F598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BAF4F6B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1BAF4F868()
{
  result = qword_1EDBA2068;
  if (!qword_1EDBA2068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBA2068);
  }

  return result;
}

void *sub_1BAF4F8E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1BAF2DB10(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BAF2DB10(&qword_1EBC36720, &unk_1BAF95558);
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1BAF4FA0C(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 48);
  _Block_copy(a2);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (!*(a1 + 40))
  {
LABEL_9:
    os_unfair_lock_unlock(v5 + 4);
    goto LABEL_10;
  }

  if (*(a1 + 40) != 1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BAF4FC00;
    *(v9 + 24) = v4;
    swift_beginAccess();
    v10 = *(a1 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1BAF4F8E0(0, v10[2] + 1, 1, v10, &qword_1EBC36B68, &qword_1BAF96A40);
      *(a1 + 24) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1BAF4F8E0((v12 > 1), v13 + 1, 1, v10, &qword_1EBC36B68, &qword_1BAF96A40);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1BAF4FCC4;
    v14[5] = v9;
    *(a1 + 24) = v10;
    swift_endAccess();
    goto LABEL_9;
  }

  v6 = *(a1 + 32);
  v7 = v6;
  os_unfair_lock_unlock(v5 + 4);
  v8 = sub_1BAF8E4B8();
  (a2)[2](a2, v8);

  sub_1BAF4FC58(v6, 1);
LABEL_10:

  return a1;
}

void sub_1BAF4FC00()
{
  v1 = *(v0 + 16);
  v2 = sub_1BAF8E4B8();
  (*(v1 + 16))(v1, v2);
}

void sub_1BAF4FC58(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t QueueMessage.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t QueueMessage.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1BAF4FD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  v16 = type metadata accessor for QueueMessage();
  v17 = (a9 + *(v16 + 52));
  *v17 = a3;
  v17[1] = a4;
  a9[2] = a5;
  a9[3] = a6;
  v18 = *(*(a8 - 8) + 32);
  v19 = a9 + *(v16 + 48);

  return v18(v19, a7, a8);
}

uint64_t QueueMessage.init(type:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v21 = a5;
  v22 = a3;
  v10 = sub_1BAF8E788();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8E778();
  v15 = sub_1BAF8E748();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  *a6 = v15;
  a6[1] = v17;
  a6[2] = a1;
  a6[3] = a2;
  v18 = type metadata accessor for QueueMessage();
  result = (*(*(a4 - 8) + 32))(a6 + *(v18 + 48), v22, a4);
  v20 = (a6 + *(v18 + 52));
  *v20 = 0;
  v20[1] = 0;
  return result;
}

uint64_t sub_1BAF4FF94@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 1);

  v11 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v11);

  v19 = sub_1BAF8EE08();
  v20 = v12;
  sub_1BAF8ED58();

  *a5 = v19;
  a5[1] = v20;
  v13 = *(a1 + 3);
  a5[2] = *(a1 + 2);
  a5[3] = v13;
  v14 = type metadata accessor for QueueMessage();
  (*(*(a4 - 8) + 16))(a5 + *(v14 + 48), &a1[*(v14 + 48)], a4);
  v15 = *(*(v14 - 8) + 8);

  result = v15(a1, v14);
  v17 = (a5 + *(v14 + 52));
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t sub_1BAF50134(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BAFA2CA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BAF8F4C8();

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

uint64_t sub_1BAF502D0(unsigned __int8 a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1);
  return sub_1BAF8F5E8();
}

unint64_t sub_1BAF50318(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x64616F6C796170;
  if (a1 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 1701869940;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1BAF50384(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1BAF50298(*a1, *a2);
}

uint64_t sub_1BAF5039C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1BAF502D0(*v1);
}

uint64_t sub_1BAF503AC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1BAF502A8(a1, *v2);
}

uint64_t sub_1BAF503BC(uint64_t a1, void *a2)
{
  sub_1BAF8F5A8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1BAF502A8(v8, *v2);
  return sub_1BAF8F5E8();
}

unint64_t sub_1BAF50408(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1BAF50318(*v1);
}

uint64_t sub_1BAF50418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1BAF50134(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1BAF5044C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1BAF51258();
  *a2 = result;
  return result;
}

uint64_t sub_1BAF50480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BAF504D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QueueMessage.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v23[0] = *(a2 + 32);
  v23[1] = v4;
  type metadata accessor for QueueMessage.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1BAF8F468();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9;
  v11 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  v12 = v23[2];
  sub_1BAF8F648();
  v13 = *v12;
  v14 = v12[1];
  v27 = 0;
  v15 = v23[3];
  sub_1BAF8F438();
  if (!v15)
  {
    v16 = v12[2];
    v17 = v12[3];
    v26 = 1;
    sub_1BAF8F438();
    v18 = *(a2 + 48);
    v25 = 2;
    sub_1BAF8F458();
    v19 = (v12 + *(a2 + 52));
    v20 = *v19;
    v21 = v19[1];
    v24 = 3;
    sub_1BAF8F418();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t QueueMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v38 = *(a2 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QueueMessage.CodingKeys();
  swift_getWitnessTable();
  v42 = sub_1BAF8F408();
  v37 = *(v42 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v32 - v10;
  v39 = a2;
  v36 = a3;
  v12 = type metadata accessor for QueueMessage();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v32 - v14);
  v16 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  v41 = v11;
  v17 = v43;
  sub_1BAF8F628();
  if (v17)
  {
    return sub_1BADC5BE0(a1);
  }

  v18 = v39;
  v33 = v15;
  v19 = v37;
  v20 = v38;
  v47 = 0;
  v21 = sub_1BAF8F3D8();
  v22 = v33;
  *v33 = v21;
  v22[1] = v23;
  v43 = v23;
  v46 = 1;
  v22[2] = sub_1BAF8F3D8();
  v22[3] = v24;
  v45 = 2;
  sub_1BAF8F3F8();
  (*(v20 + 32))(v33 + *(v12 + 48), v40, v18);
  v44 = 3;
  v25 = sub_1BAF8F3B8();
  v27 = v26;
  (*(v19 + 8))(v41, v42);
  v28 = v33;
  v29 = (v33 + *(v12 + 52));
  *v29 = v25;
  v29[1] = v27;
  v30 = v34;
  (*(v34 + 16))(v35, v28, v12);
  sub_1BADC5BE0(a1);
  return (*(v30 + 8))(v28, v12);
}

uint64_t QueueMessage.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  sub_1BAF8F268();
  MEMORY[0x1BFB048C0](0x22203A65707954, 0xE700000000000000);
  MEMORY[0x1BFB048C0](v2[2], v2[3]);
  MEMORY[0x1BFB048C0](0x22203A6469202C22, 0xE800000000000000);
  MEMORY[0x1BFB048C0](*v2, v2[1]);
  MEMORY[0x1BFB048C0](0x6F6C796170202C22, 0xED000022203A6461);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  sub_1BAF8F498();
  MEMORY[0x1BFB048C0](34, 0xE100000000000000);
  return 0;
}

void sub_1BAF50CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1BAF51074();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BAF50D4C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BAF50E9C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1BAF51074()
{
  if (!qword_1EDBA20E0)
  {
    v0 = sub_1BAF8F0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBA20E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for JWTError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JWTError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1BAF51260()
{
  v0 = sub_1BAF8EC28();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_1EDBA3B98 = v2;
}

Swift::Bool __swiftcall NSProcessInfo.isRunningTestInternal()()
{
  if (qword_1EDBA28D8 != -1)
  {
    swift_once();
  }

  return byte_1EDBA3B98;
}

uint64_t sub_1BAF51320@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Lock.sync<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  v9 = *(a5 + 16);

  return v9(a3, a5);
}

{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 16))(a3, a5);
}

uint64_t UnfairLock.__allocating_init(options:)(_DWORD *a1)
{
  v2 = swift_allocObject();
  LODWORD(a1) = *a1;
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v2 + 24) = (a1 & 1) << 16;
  return v2;
}

uint64_t UnfairLock.init(options:)(int *a1)
{
  v2 = *a1;
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *v3 = 0;
  *(v1 + 24) = (v2 & 1) << 16;
  return v1;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x1BFB06160](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UnfairLock.lock()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  os_unfair_lock_lock_with_options();
}

unint64_t sub_1BAF5161C()
{
  result = qword_1EBC36C88;
  if (!qword_1EBC36C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36C88);
  }

  return result;
}

unint64_t sub_1BAF51674()
{
  result = qword_1EBC36C90;
  if (!qword_1EBC36C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36C90);
  }

  return result;
}

unint64_t sub_1BAF516CC()
{
  result = qword_1EDBA3848;
  if (!qword_1EDBA3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3848);
  }

  return result;
}

unint64_t sub_1BAF51724()
{
  result = qword_1EDBA3840;
  if (!qword_1EDBA3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3840);
  }

  return result;
}

uint64_t sub_1BAF51778()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return os_unfair_lock_lock_with_options();
}

uint64_t DefaultPurposeConfigurationStore.configurationFor(_:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v2 = result != 8502 && result != 8503;
  v3 = result != 8501 && v2;
  v4 = result != 103;
  if (result == 101)
  {
    v4 = 0;
  }

  if (result == 100)
  {
    v4 = 0;
  }

  if (result > 8500)
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

uint64_t WorkCoordinator.createAndRun(workerName:group:workData:requestorId:requestorData:flags:configClosure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v86 = a8;
  v84 = a7;
  v93 = a6;
  v91 = a5;
  v89 = a4;
  v88 = a3;
  v87 = a2;
  v85 = a1;
  v80 = type metadata accessor for WorkCommand();
  v14 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  *&v90 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for WorkOrder();
  v16 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v92 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1BAF8E788();
  v75 = *(v76 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BAF8E728();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v78 = &v72 - v25;
  v26 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v72 - v31;
  v83 = *a11;
  v82 = *(a11 + 8);
  v94 = *(v13 + 16);
  v33 = *(v21 + 56);
  v33(&v72 - v31, 1, 1, v20);
  v34 = type metadata accessor for WorkOrderBuilder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  *(v37 + 3) = 0;
  *(v37 + 4) = 0;
  *(v37 + 2) = 0;
  v81 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v33(&v37[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v20);
  v38 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v37[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v39 = &v37[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v37[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v40 = 0;
  *(v40 + 1) = 0;
  v33(&v37[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v20);
  v41 = &v37[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v41 = 0;
  *(v41 + 1) = 0;
  v95 = v32;
  sub_1BAF32F64(v32, v30, &unk_1EBC36750, &qword_1BAF95590);
  if ((*(v21 + 48))(v30, 1, v20) == 1)
  {
    sub_1BAF32F04(v30, &unk_1EBC36750, &qword_1BAF95590);
    v42 = 1;
  }

  else
  {
    v73 = v38;
    v43 = v78;
    (*(v21 + 32))(v78, v30, v20);
    v44 = v79;
    sub_1BAF8E718();
    v45 = sub_1BAF8E688();
    v46 = *(v21 + 8);
    v46(v44, v20);
    v46(v43, v20);
    if ((v45 & 1) == 0)
    {

      v57 = 0;
LABEL_15:
      sub_1BAF32F04(v95, &unk_1EBC36750, &qword_1BAF95590);
      return v57;
    }

    v42 = 0;
    v38 = v73;
  }

  v37[v38] = v42;
  v47 = v93 >> 60;
  if (v93 >> 60 != 15)
  {
    v48 = v74;
    sub_1BAF8E778();
    v49 = sub_1BAF8E748();
    v51 = v50;
    (*(v75 + 8))(v48, v76);
    *(v37 + 2) = v49;
    *(v37 + 3) = v51;
  }

  v52 = v81;
  swift_beginAccess();
  sub_1BAF3B5C0(v95, &v37[v52]);
  swift_endAccess();
  v53 = v86;
  *v39 = v84;
  *(v39 + 1) = v53;
  *v40 = a9;
  *(v40 + 1) = a10;
  v54 = v83;
  if (v82)
  {
    v54 = 0;
  }

  *(v37 + 4) = v54;

  v55 = v92;
  sub_1BAF7184C(v85, v87, v88, v89, v92);
  v57 = *v55;
  v56 = *(v55 + 1);
  v58 = *sub_1BADC8524(v94 + 13, v94[16]);

  sub_1BAF553D0(v55);
  v59 = v47 > 0xE;
  v60 = v93;
  v61 = v91;
  v62 = v90;
  if (!v59)
  {
    v63 = &v55[*(v77 + 24)];
    v64 = *(v63 + 1);
    if (v64)
    {
      v65 = *v63;
      v66 = *sub_1BADC8524(v94 + 18, v94[21]);
      sub_1BAF3B678(v61, v60);
      sub_1BAF5C160(v65, v64, v61, v60);
      sub_1BAF3B72C(v61, v60);
    }
  }

  v67 = swift_allocObject();
  *(v67 + 16) = v61;
  *(v67 + 24) = v60;
  v68 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v69 = (v62 + v68[12]);
  sub_1BAF4016C(v55, v62);
  *v69 = sub_1BAF40164;
  v69[1] = v67;
  sub_1BAF3B664(v61, v60);

  result = os_transaction_create();
  if (result)
  {
    v71 = (v62 + v68[20]);
    *(v62 + v68[16]) = result;
    *v71 = a12;
    v71[1] = a13;
    swift_storeEnumTagMultiPayload();
    sub_1BAEFD9BC(a12);
    sub_1BAF36C9C(v62);

    sub_1BAF3B6CC(v62, type metadata accessor for WorkCommand);
    sub_1BAF3B6CC(v55, type metadata accessor for WorkOrder);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF522B4(void *a1)
{
  v63 = a1;
  v1 = sub_1BAF8E4F8();
  v60 = *(v1 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAF8E598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v53 - v10;
  v11 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v5 + 56;
  v19 = *(v5 + 56);
  v65 = &v53 - v21;
  v66 = v4;
  v22 = v19;
  v19();
  v23 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v24 = sub_1BAF8EEA8();

  v25 = *(v24 + 16);
  v62 = v25;
  if (v25)
  {
    v26 = (v24 + 16 + 16 * v25);
    v54 = *v26;
    v64 = v5;
    v27 = v26[1];

    v28 = v60;
    v57 = v22;
    (v22)(v15, 1, 1, v66);
    v29 = *MEMORY[0x1E6968F70];
    v58 = v18;
    v30 = v59;
    v56 = v20;
    v31 = *(v28 + 104);
    v31(v59, v29, v1);
    v55 = v31;
    sub_1BAF8E568();
    *&v67[0] = 0xD00000000000001DLL;
    *(&v67[0] + 1) = 0x80000001BAFA2A80;
    v31(v30, v29, v1);
    v54 = sub_1BAF2DB58();
    v32 = v61;
    sub_1BAF8E578();
    v33 = *(v28 + 8);
    v33(v30, v1);
    v34 = *(v64 + 8);
    v64 += 8;
    v34(v9, v66);
    *&v67[0] = 7562359;
    *(&v67[0] + 1) = 0xE300000000000000;
    v55(v30, v29, v1);
    v35 = v65;
    v36 = v66;
    v37 = v58;
    sub_1BAF8E578();
    v33(v30, v1);
    v34(v32, v36);
    sub_1BAF32F04(v35, &qword_1EBC36CC0, &qword_1BAF955D0);
    v38 = v57;
    (v57)(v37, 0, 1, v36);
    v18 = v37;
    sub_1BAF5406C(v37, v35);
    v22 = v38;
  }

  else
  {
  }

  type metadata accessor for WorkOrderDatabaseStore();
  v39 = swift_allocObject();
  sub_1BAF3E4B0();
  v40 = sub_1BAF8F0C8();
  type metadata accessor for DatabaseManager();
  v41 = swift_allocObject();
  v42 = v63;
  *(v41 + 16) = v40;
  *(v41 + 24) = v42;
  *(v39 + 16) = v41;
  sub_1BAF32F64(v65, v18, &qword_1EBC36CC0, &qword_1BAF955D0);
  v43 = type metadata accessor for WorkDataStore();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v47 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  (v22)(v46 + OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath, 1, 1, v66);
  swift_beginAccess();
  v48 = v42;

  sub_1BAF540DC(v18, v46 + v47);
  swift_endAccess();
  type metadata accessor for DefaultWorkerFactory();
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  v49 = swift_allocObject();
  type metadata accessor for WorkTimer();
  v50 = swift_allocObject();
  v51 = sub_1BAF5414C(v39, v46, v49, v50, v67);

  off_1EDBA31E0 = v51;

  if (off_1EDBA31E0)
  {
    *(off_1EDBA31E0 + 24) = v62 != 0;
    sub_1BAF32F04(v65, &qword_1EBC36CC0, &qword_1BAF955D0);
    return v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BAF528E8()
{
  v1 = sub_1BAF8E728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() deviceUnlockedSinceBoot])
  {
    if (*(v0 + 24) == 1)
    {
      sub_1BAF8E718();
      v6 = *(v0 + 16);
      sub_1BAF33A2C(v5);
      (*(v2 + 8))(v5, v1);
      return;
    }

    sub_1BAF8F038();
    sub_1BAF3E4B0();
    v7 = sub_1BAF8F0C8();
    sub_1BAF8E8B8();

    v10 = sub_1BAF8EC28();
    APSimulateCrash(5, v10, 0);
  }

  else
  {
    sub_1BAF8F038();
    sub_1BAF3E4B0();
    v10 = sub_1BAF8F0C8();
    sub_1BAF8E8B8();
  }

  v8 = v10;
}

uint64_t WorkCoordinator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WorkCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t WorkCoordinator.createAndSchedule(workerName:group:workData:scheduledTime:requestorId:requestorData:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v97 = a8;
  v105 = a6;
  v101 = a5;
  v102 = a4;
  *&v100 = a3;
  v99 = a2;
  v98 = a1;
  v81 = type metadata accessor for WorkCommand();
  v14 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v85 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for WorkOrder();
  v16 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v103 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1BAF8E788();
  v88 = *(v89 - 8);
  v18 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BAF8E728();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v91 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v80 - v25;
  v27 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v84 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v80 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v80 - v34;
  v96 = *a12;
  v95 = *(a12 + 8);
  v104 = *(v12 + 16);
  (*(v21 + 16))(&v80 - v34, a7, v20);
  v36 = *(v21 + 56);
  v36(v35, 0, 1, v20);
  v37 = type metadata accessor for WorkOrderBuilder();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  *(v40 + 3) = 0;
  *(v40 + 4) = 0;
  *(v40 + 2) = 0;
  v41 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v36(&v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v20);
  v93 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v42 = &v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v42 = 0;
  *(v42 + 1) = 0;
  v94 = v42;
  v43 = &v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v43 = 0;
  *(v43 + 1) = 0;
  v83 = v21 + 56;
  v82 = v36;
  v36(&v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v20);
  v44 = &v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v44 = 0;
  *(v44 + 1) = 0;
  v106 = v35;
  sub_1BAF32F64(v35, v33, &unk_1EBC36750, &qword_1BAF95590);
  v45 = *(v21 + 48);
  if (v45(v33, 1, v20) == 1)
  {
    v86 = v45;
    v91 = (v21 + 48);
    sub_1BAF32F04(v33, &unk_1EBC36750, &qword_1BAF95590);
    v46 = 1;
    v47 = v20;
  }

  else
  {
    v90 = v41;
    (*(v21 + 32))(v26, v33, v20);
    v48 = v91;
    sub_1BAF8E718();
    v49 = sub_1BAF8E688();
    v50 = *(v21 + 8);
    v50(v48, v20);
    v50(v26, v20);
    if ((v49 & 1) == 0)
    {

      v71 = 0;
LABEL_21:
      sub_1BAF32F04(v106, &unk_1EBC36750, &qword_1BAF95590);
      return v71;
    }

    v47 = v20;
    v86 = v45;
    v91 = (v21 + 48);
    v46 = 0;
    v41 = v90;
  }

  v51 = a10;
  v40[v93] = v46;
  v52 = v105 >> 60;
  if (v105 >> 60 != 15)
  {
    v90 = v41;
    v53 = v87;
    sub_1BAF8E778();
    v54 = sub_1BAF8E748();
    v56 = v55;
    v57 = v53;
    v41 = v90;
    (*(v88 + 8))(v57, v89);
    *(v40 + 2) = v54;
    *(v40 + 3) = v56;
    v51 = a10;
  }

  swift_beginAccess();
  sub_1BAF3B5C0(v106, &v40[v41]);
  swift_endAccess();
  v58 = v94;
  *v94 = v97;
  v58[1] = a9;
  *v43 = v51;
  *(v43 + 1) = a11;
  v59 = v96;
  if (v95)
  {
    v59 = 0;
  }

  *(v40 + 4) = v59;

  v60 = v103;
  sub_1BAF7184C(v98, v99, v100, v102, v103);
  v61 = *(v60 + 1);
  v102 = *v60;
  v62 = v104;
  v63 = *sub_1BADC8524((v104 + 104), *(v104 + 128));

  sub_1BAF553D0(v60);
  v64 = v52 > 0xE;
  v65 = v105;
  v66 = v101;
  if (!v64)
  {
    v67 = &v60[*(v92 + 24)];
    v68 = *(v67 + 1);
    if (v68)
    {
      v69 = *v67;
      v70 = *sub_1BADC8524((v62 + 144), *(v62 + 168));
      sub_1BAF3B678(v66, v65);
      sub_1BAF5C160(v69, v68, v66, v65);
      sub_1BAF3B72C(v66, v65);
    }
  }

  if (v86(v106, 1, v47) != 1)
  {
    if (v60[*(v92 + 40)])
    {
      result = os_transaction_create();
      v78 = result;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v78 = 0;
    }

    v79 = v84;
    v82(v84, 1, 1, v47);
    sub_1BAF398A4(v60, v79, v78);

    swift_unknownObjectRelease();
    sub_1BAF32F04(v79, &unk_1EBC36750, &qword_1BAF95590);
    goto LABEL_20;
  }

  v72 = swift_allocObject();
  *(v72 + 16) = v66;
  *(v72 + 24) = v65;
  v73 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v74 = v85;
  v75 = (v85 + v73[12]);
  sub_1BAF4016C(v60, v85);
  *v75 = sub_1BAF5495C;
  v75[1] = v72;
  sub_1BAF3B664(v66, v65);

  result = os_transaction_create();
  if (result)
  {
    v77 = (v74 + v73[20]);
    *(v74 + v73[16]) = result;
    *v77 = 0;
    v77[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v74);

    sub_1BAF3B6CC(v74, type metadata accessor for WorkCommand);
LABEL_20:
    sub_1BAF3B6CC(v60, type metadata accessor for WorkOrder);
    v71 = v102;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t WorkCoordinator.createAndRun(workerName:group:workData:requestorId:requestorData:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v84 = a8;
  v82 = a7;
  v91 = a6;
  v89 = a5;
  v87 = a4;
  v86 = a3;
  v85 = a2;
  v83 = a1;
  v78 = type metadata accessor for WorkCommand();
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  *&v88 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for WorkOrder();
  v14 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v90 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BAF8E788();
  v73 = *(v74 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BAF8E728();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v70 - v23;
  v24 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v70 - v29;
  v81 = *a11;
  v80 = *(a11 + 8);
  v92 = *(v11 + 16);
  v31 = *(v19 + 56);
  v31(&v70 - v29, 1, 1, v18);
  v32 = type metadata accessor for WorkOrderBuilder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  *(v35 + 3) = 0;
  *(v35 + 4) = 0;
  *(v35 + 2) = 0;
  v79 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v31(&v35[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v18);
  v36 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v35[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v37 = &v35[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v35[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v38 = 0;
  *(v38 + 1) = 0;
  v31(&v35[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v18);
  v39 = &v35[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v39 = 0;
  *(v39 + 1) = 0;
  v93 = v30;
  sub_1BAF32F64(v30, v28, &unk_1EBC36750, &qword_1BAF95590);
  if ((*(v19 + 48))(v28, 1, v18) == 1)
  {
    sub_1BAF32F04(v28, &unk_1EBC36750, &qword_1BAF95590);
    v40 = 1;
  }

  else
  {
    v71 = v36;
    v41 = v76;
    (*(v19 + 32))(v76, v28, v18);
    v42 = v77;
    sub_1BAF8E718();
    v43 = sub_1BAF8E688();
    v44 = *(v19 + 8);
    v44(v42, v18);
    v44(v41, v18);
    if ((v43 & 1) == 0)
    {

      v55 = 0;
LABEL_15:
      sub_1BAF32F04(v93, &unk_1EBC36750, &qword_1BAF95590);
      return v55;
    }

    v40 = 0;
    v36 = v71;
  }

  v35[v36] = v40;
  v45 = v91 >> 60;
  if (v91 >> 60 != 15)
  {
    v46 = v72;
    sub_1BAF8E778();
    v47 = sub_1BAF8E748();
    v49 = v48;
    (*(v73 + 8))(v46, v74);
    *(v35 + 2) = v47;
    *(v35 + 3) = v49;
  }

  v50 = v79;
  swift_beginAccess();
  sub_1BAF3B5C0(v93, &v35[v50]);
  swift_endAccess();
  v51 = v84;
  *v37 = v82;
  *(v37 + 1) = v51;
  *v38 = a9;
  *(v38 + 1) = a10;
  v52 = v81;
  if (v80)
  {
    v52 = 0;
  }

  *(v35 + 4) = v52;

  v53 = v90;
  sub_1BAF7184C(v83, v85, v86, v87, v90);
  v55 = *v53;
  v54 = *(v53 + 1);
  v56 = *sub_1BADC8524(v92 + 13, v92[16]);

  sub_1BAF553D0(v53);
  v57 = v45 > 0xE;
  v58 = v91;
  v59 = v89;
  v60 = v88;
  if (!v57)
  {
    v61 = &v53[*(v75 + 24)];
    v62 = *(v61 + 1);
    if (v62)
    {
      v63 = *v61;
      v64 = *sub_1BADC8524(v92 + 18, v92[21]);
      sub_1BAF3B678(v59, v58);
      sub_1BAF5C160(v63, v62, v59, v58);
      sub_1BAF3B72C(v59, v58);
    }
  }

  v65 = swift_allocObject();
  *(v65 + 16) = v59;
  *(v65 + 24) = v58;
  v66 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v67 = (v60 + v66[12]);
  sub_1BAF4016C(v53, v60);
  *v67 = sub_1BAF5495C;
  v67[1] = v65;
  sub_1BAF3B664(v59, v58);

  result = os_transaction_create();
  if (result)
  {
    v69 = (v60 + v66[20]);
    *(v60 + v66[16]) = result;
    *v69 = 0;
    v69[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v60);

    sub_1BAF3B6CC(v60, type metadata accessor for WorkCommand);
    sub_1BAF3B6CC(v53, type metadata accessor for WorkOrder);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF5406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF540DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF5414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a4;
  v80 = a5;
  v8 = type metadata accessor for WorkOrderDatabaseStore();
  v105[3] = v8;
  v105[4] = &off_1F38F6640;
  v105[0] = a1;
  v9 = type metadata accessor for WorkDataStore();
  v103 = v9;
  v104 = &off_1F38F6A68;
  v102[0] = a2;
  v10 = type metadata accessor for DefaultWorkerFactory();
  v100 = v10;
  v101 = &off_1F38F5878;
  v99[0] = a3;
  type metadata accessor for WorkCoordinator();
  v11 = swift_allocObject();
  v78 = v11;
  v12 = sub_1BAF3BB10(v105, v8);
  v13 = *(v8 - 8);
  v76[1] = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v77 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (v76 - v77);
  v76[0] = *(v13 + 16);
  (v76[0])(v76 - v77);
  v16 = v103;
  v17 = sub_1BAF3BB10(v102, v103);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = v100;
  v23 = sub_1BAF3BB10(v99, v100);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v15;
  v29 = *v20;
  v30 = *v26;
  v98[3] = v8;
  v98[4] = &off_1F38F6640;
  v98[0] = v28;
  v97[3] = v9;
  v97[4] = &off_1F38F6A68;
  v97[0] = v29;
  v96[3] = v10;
  v96[4] = &off_1F38F5878;
  v96[0] = v30;
  *(v11 + 24) = 1;
  sub_1BAF3BB60(v98, v94);
  sub_1BAF3BB60(v97, v92);
  sub_1BAF3BB60(v96, v90);
  sub_1BAF32F64(v80, v88, &qword_1EBC367C0, &qword_1BAF955F8);
  v31 = v95;
  v32 = sub_1BAF3BB10(v94, v95);
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = v93;
  v38 = sub_1BAF3BB10(v92, v93);
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = v91;
  v44 = sub_1BAF3BB10(v90, v91);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = (v76 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v35;
  v50 = *v41;
  v51 = *v47;
  v87[3] = v8;
  v87[4] = &off_1F38F6640;
  v87[0] = v49;
  v85 = v9;
  v86 = &off_1F38F6A68;
  v52 = v9;
  v84[0] = v50;
  v82 = v10;
  v83 = &off_1F38F5878;
  v53 = v10;
  v81[0] = v51;
  type metadata accessor for WorkCommandProcessor();
  v54 = swift_allocObject();
  v55 = sub_1BAF3BB10(v87, v8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = (v76 - v77);
  (v76[0])(v76 - v77);
  v57 = v85;
  v58 = sub_1BAF3BB10(v84, v85);
  v59 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = (v76 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = v82;
  v64 = sub_1BAF3BB10(v81, v82);
  v65 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = (v76 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v56;
  v70 = *v61;
  v71 = *v67;
  *(v54 + 128) = v8;
  *(v54 + 136) = &off_1F38F6640;
  *(v54 + 104) = v69;
  *(v54 + 168) = v52;
  *(v54 + 176) = &off_1F38F6A68;
  *(v54 + 144) = v70;
  *(v54 + 88) = v53;
  *(v54 + 96) = &off_1F38F5878;
  *(v54 + 64) = v71;
  sub_1BAF32F04(v80, &qword_1EBC367C0, &qword_1BAF955F8);
  sub_1BADC5BE0(v96);
  sub_1BADC5BE0(v97);
  sub_1BADC5BE0(v98);
  v72 = v88[1];
  *(v54 + 16) = v88[0];
  *(v54 + 32) = v72;
  v73 = v79;
  *(v54 + 48) = v89;
  *(v54 + 56) = v73;
  sub_1BADC5BE0(v81);
  sub_1BADC5BE0(v84);
  sub_1BADC5BE0(v87);
  sub_1BADC5BE0(v90);
  sub_1BADC5BE0(v92);
  sub_1BADC5BE0(v94);
  v74 = v78;
  *(v78 + 16) = v54;
  sub_1BADC5BE0(v99);
  sub_1BADC5BE0(v102);
  sub_1BADC5BE0(v105);
  return v74;
}

uint64_t static Logger.subscript.getter(unint64_t a1)
{
  v1 = APLogForCategory(a1);

  return sub_1BAF8E948();
}

uint64_t static Tools.codableToBinaryData<A>(_:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v2 = *MEMORY[0x1E696A508];
  sub_1BAF8EC38();
  sub_1BAF8F058();
  if (v0)
  {
  }

  else
  {

    [v1 finishEncoding];
    v4 = [v1 encodedData];
    v5 = sub_1BAF8E5F8();

    return v5;
  }
}

uint64_t static Tools.codableFromBinaryData<A>(_:type:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1BAF3B678(a1, a2);
  v6 = sub_1BAF54B80();
  result = sub_1BAF2DABC(a1, a2);
  if (!v2)
  {
    v8 = *MEMORY[0x1E696A508];
    sub_1BAF8EC38();
    sub_1BAF8F068();
  }

  return result;
}

id sub_1BAF54B80()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BAF8E5D8();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1BAF8E4C8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _s12APFoundation5ToolsO13fullClassNameySSypFZ_0(uint64_t a1)
{
  sub_1BAF45388(a1, v18);
  v2 = sub_1BAF8ECA8();
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 4 * v4;
    while (sub_1BAF8EDF8() != 46 || v6 != 0xE100000000000000)
    {
      v7 = sub_1BAF8F4C8();

      if ((v7 & 1) != 0 || v5 == sub_1BAF8ED38() >> 14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v8 = sub_1BAF8EE18();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1BFB04820](v8, v10, v12, v14);

  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  sub_1BAF45388(a1, v18);
  v16 = sub_1BAF8EC88();
  MEMORY[0x1BFB048C0](v16);

  return v15;
}

uint64_t sub_1BAF54DFC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v66 - v6;
  v8 = sub_1BAF8E728();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  sub_1BADC8524(a1, v13);
  result = (*(v14 + 48))(3, v13, v14);
  if (v2)
  {
    return result;
  }

  v80 = v9;
  v81 = v12;
  v16 = v82;
  if (!result)
  {
    v79 = 0;
    v17 = v8;
    goto LABEL_8;
  }

  v17 = v8;
  if (result == 3)
  {
    v79 = 2;
LABEL_8:
    v18 = v7;
    goto LABEL_9;
  }

  if (result == 1)
  {
    v18 = v7;
    v79 = 1;
LABEL_9:
    v19 = a1[3];
    v20 = a1[4];
    sub_1BADC8524(a1, v19);
    v21 = (*(v20 + 80))(0, v19, v20);
    v22 = v81;
    v77 = v21;
    v78 = v23;
    v24 = a1[3];
    v25 = a1[4];
    sub_1BADC8524(a1, v24);
    (*(v25 + 96))(1, v24, v25);
    v27 = a1[3];
    v28 = a1[4];
    sub_1BADC8524(a1, v27);
    v74 = (*(v28 + 88))(2, v27, v28);
    v76 = v29;
    v30 = a1[3];
    v31 = a1[4];
    sub_1BADC8524(a1, v30);
    v73 = (*(v31 + 88))(4, v30, v31);
    v75 = v32;
    v33 = a1[3];
    v34 = a1[4];
    sub_1BADC8524(a1, v33);
    (*(v34 + 104))(5, v33, v34);
    v35 = a1[3];
    v36 = a1[4];
    sub_1BADC8524(a1, v35);
    v72 = (*(v36 + 48))(6, v35, v36);
    v37 = a1[3];
    v38 = a1[4];
    sub_1BADC8524(a1, v37);
    v69 = (*(v38 + 80))(7, v37, v38);
    v70 = v39;
    v40 = a1[3];
    v41 = a1[4];
    sub_1BADC8524(a1, v40);
    v42 = (*(v41 + 80))(8, v40, v41);
    v71 = 0;
    v43 = a1[3];
    v44 = a1[4];
    v67 = v45;
    v68 = v42;
    sub_1BADC8524(a1, v43);
    v46 = (*(v44 + 88))(9, v43, v44);
    v66 = v47;
    v48 = a1[3];
    v49 = a1[4];
    sub_1BADC8524(a1, v48);
    v50 = (*(v49 + 88))(10, v48, v49);
    v52 = v51;
    v53 = v78;
    *v16 = v77;
    *(v16 + 1) = v53;
    v54 = type metadata accessor for WorkOrder();
    (*(v80 + 32))(&v16[v54[5]], v22, v17);
    v55 = &v16[v54[6]];
    v56 = v76;
    *v55 = v74;
    v55[1] = v56;
    v16[v54[7]] = v79;
    v57 = &v16[v54[8]];
    v58 = v75;
    *v57 = v73;
    v57[1] = v58;
    result = sub_1BAF55F0C(v18, &v16[v54[9]]);
    *&v16[v54[10]] = v72;
    v59 = &v16[v54[11]];
    v60 = v70;
    *v59 = v69;
    v59[1] = v60;
    v61 = &v16[v54[12]];
    v62 = v67;
    *v61 = v68;
    v61[1] = v62;
    v63 = &v16[v54[13]];
    v64 = v66;
    *v63 = v46;
    v63[1] = v64;
    v65 = &v16[v54[14]];
    *v65 = v50;
    v65[1] = v52;
    return result;
  }

  sub_1BAF4098C();
  swift_allocError();
  *v26 = 0xD00000000000001BLL;
  *(v26 + 8) = 0x80000001BAFA2E30;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_1BAF553D0(char *a1)
{
  v2 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v49 - v4;
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF97010;
  v7 = *(a1 + 1);
  *(inited + 32) = *a1;
  v49[0] = inited + 32;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = v7;
  v8 = type metadata accessor for WorkOrder();
  v9 = v8[5];
  v10 = sub_1BAF8E728();
  *(inited + 96) = v10;
  *(inited + 104) = &protocol witness table for Date;
  v11 = sub_1BAF3BAAC((inited + 72));
  v12 = *(v10 - 8);
  (*(v12 + 16))(v11, &a1[v9], v10);
  v13 = &a1[v8[6]];
  v14 = *(v13 + 1);
  if (v14)
  {
    v15 = *v13;
    v16 = &protocol witness table for String;
    v17 = v14;
    v18 = MEMORY[0x1E69E6158];
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    *(inited + 128) = 0;
  }

  *(inited + 112) = v15;
  *(inited + 120) = v17;
  *(inited + 136) = v18;
  *(inited + 144) = v16;
  v19 = qword_1BAF97088[a1[v8[7]]];
  *(inited + 176) = MEMORY[0x1E69E6530];
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = v19;
  v20 = &a1[v8[8]];
  v21 = *(v20 + 1);
  if (v21)
  {
    v22 = *v20;
    v23 = &protocol witness table for String;
    v24 = v21;
    v25 = MEMORY[0x1E69E6158];
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v22;
  *(inited + 200) = v24;
  *(inited + 216) = v25;
  *(inited + 224) = v23;
  sub_1BAF400F4(&a1[v8[9]], v5);
  if ((*(v12 + 48))(v5, 1, v10) == 1)
  {

    sub_1BAF55EA4(v5);
    *(inited + 232) = 0u;
    *(inited + 248) = 0u;
    *(inited + 264) = 0;
  }

  else
  {
    *(inited + 256) = v10;
    *(inited + 264) = &protocol witness table for Date;
    v26 = sub_1BAF3BAAC((inited + 232));
    (*(v12 + 32))(v26, v5, v10);
  }

  v27 = *&a1[v8[10]];
  *(inited + 296) = MEMORY[0x1E69E6530];
  *(inited + 304) = &protocol witness table for Int;
  *(inited + 272) = v27;
  v28 = &a1[v8[11]];
  v29 = *v28;
  v30 = *(v28 + 1);
  v31 = MEMORY[0x1E69E6158];
  *(inited + 336) = MEMORY[0x1E69E6158];
  *(inited + 344) = &protocol witness table for String;
  *(inited + 312) = v29;
  *(inited + 320) = v30;
  v32 = &a1[v8[12]];
  v33 = *v32;
  v34 = *(v32 + 1);
  *(inited + 376) = v31;
  *(inited + 384) = &protocol witness table for String;
  *(inited + 352) = v33;
  *(inited + 360) = v34;
  v35 = &a1[v8[13]];
  v36 = *(v35 + 1);
  if (v36)
  {
    v37 = *v35;
    v38 = &protocol witness table for String;
    v39 = v36;
    v40 = MEMORY[0x1E69E6158];
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    *(inited + 408) = 0;
  }

  *(inited + 392) = v37;
  *(inited + 400) = v39;
  *(inited + 416) = v40;
  *(inited + 424) = v38;
  v41 = &a1[v8[14]];
  v42 = *(v41 + 1);
  if (v42)
  {
    v43 = *v41;
    v44 = &protocol witness table for String;
    v45 = MEMORY[0x1E69E6158];
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v44 = 0;
    *(inited + 448) = 0;
  }

  *(inited + 432) = v43;
  *(inited + 440) = v42;
  *(inited + 456) = v45;
  *(inited + 464) = v44;
  v46 = *(v49[1] + 16);

  sub_1BADC826C(0xD0000000000000A1, 0x80000001BAFA2ED0, inited);
  swift_setDeallocating();
  v47 = *(inited + 16);
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF55800(uint64_t *a1)
{
  v3 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25[-v5];
  v7 = *(v1 + 16);
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF97020;
  v9 = type metadata accessor for WorkOrder();
  v10 = v9;
  *(inited + 32) = qword_1BAF97088[*(a1 + v9[7])];
  *(inited + 56) = MEMORY[0x1E69E6530];
  *(inited + 64) = &protocol witness table for Int;
  v11 = (a1 + v9[8]);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = &protocol witness table for String;
    v15 = v12;
    v16 = MEMORY[0x1E69E6158];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    *(inited + 88) = 0;
  }

  *(inited + 72) = v13;
  *(inited + 80) = v15;
  *(inited + 96) = v16;
  *(inited + 104) = v14;
  sub_1BAF400F4(a1 + v9[9], v6);
  v17 = sub_1BAF8E728();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {

    sub_1BAF55EA4(v6);
    *(inited + 112) = 0u;
    *(inited + 128) = 0u;
    *(inited + 144) = 0;
  }

  else
  {
    *(inited + 136) = v17;
    *(inited + 144) = &protocol witness table for Date;
    v19 = sub_1BAF3BAAC((inited + 112));
    (*(v18 + 32))(v19, v6, v17);
  }

  v20 = *(a1 + v10[10]);
  *(inited + 176) = MEMORY[0x1E69E6530];
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = v20;
  v22 = *a1;
  v21 = a1[1];
  *(inited + 216) = MEMORY[0x1E69E6158];
  *(inited + 224) = &protocol witness table for String;
  *(inited + 192) = v22;
  *(inited + 200) = v21;

  sub_1BADC826C(0xD000000000000055, 0x80000001BAFA2E70, inited);
  swift_setDeallocating();
  v23 = *(inited + 16);
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF55A94@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = sub_1BAF5F9DC(0xD000000000000018, 0x80000001BAFA2E50, 0);
  v6 = sub_1BAF2DB10(&qword_1EBC36CD8, &unk_1BAF97078);
  v12 = v6;
  v13 = sub_1BAF55F7C(qword_1EDBA31F8, &qword_1EBC36CD8, &unk_1BAF97078);
  *&v10 = v5;
  *(&v10 + 1) = sub_1BAF55C3C;
  v11 = 0;
  if (!v6)
  {
    v7 = v10;
    v8 = v11;
    v9 = v13;
    goto LABEL_9;
  }

  sub_1BAF3BB60(&v10, &v7);
  if (!*(&v8 + 1))
  {
LABEL_9:
    a1[3] = sub_1BAF2DB10(&qword_1EBC36CC8, &qword_1BAF97070);
    result = sub_1BAF55F7C(&qword_1EBC36CD0, &qword_1EBC36CC8, &qword_1BAF97070);
    a1[4] = result;
    *a1 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      result = sub_1BADC5BE0(&v10);
      if (*(&v8 + 1))
      {
        return sub_1BADC5BE0(&v7);
      }
    }

    return result;
  }

  if (v12)
  {
    sub_1BADC5BE0(&v10);
  }

  return sub_1BADC5B38(&v7, a1);
}

uint64_t sub_1BAF55C3C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1BAF54DFC(a1, a2);
  if (v2)
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for WorkOrder();
  return (*(*(v5 - 8) + 56))(a2, v4, 1, v5);
}

uint64_t sub_1BAF55CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(v3 + 16);
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 32) = a1;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = a2;

  sub_1BAF5EA9C(0xD000000000000028, 0x80000001BAFA25F0, inited, v7, a3);
  swift_setDeallocating();
  v10 = *(inited + 16);
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF55E48()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF55EA4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAF55F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF55F7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF2F048(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1BAF55FC4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v12);
  v3 = v12;
  v4 = v13;
  v5 = *(a2 + 8);
  if (v13 < 0)
  {
    sub_1BAF8F278();
    v9 = objc_allocWithZone(MEMORY[0x1E698E478]);
    v10 = sub_1BAF8EC28();

    v8 = [v9 initWithIdentifier_];

    [v8 setScheduleAfter_];
    [v8 setPostInstall_];
  }

  else
  {
    sub_1BAF8F278();
    v6 = objc_allocWithZone(MEMORY[0x1E698E490]);
    v7 = sub_1BAF8EC28();

    v8 = [v6 initWithIdentifier_];

    [v8 setInterval_];
  }

  return v8;
}

uint64_t BackgroundTaskScheduler.__allocating_init(queue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_1BAF329F0(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t BackgroundTaskScheduler.init(queue:)(uint64_t a1)
{
  v3 = sub_1BAF329F0(MEMORY[0x1E69E7CC0]);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t BackgroundTaskScheduler.register<A>(task:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v10 = sub_1BAF8E938();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a3 - 8);
  v14 = *(v43 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *(a4 + 8);
  sub_1BAF8F278();
  v19 = v57;
  v20 = v58;
  sub_1BAF3BB60(a2, &aBlock);
  swift_beginAccess();
  sub_1BAF31CEC(&aBlock, v19, v20);
  swift_endAccess();
  v42 = [objc_opt_self() sharedScheduler];
  v44 = a1;
  v40 = v18;
  sub_1BAF8F278();
  v21 = sub_1BAF8EC28();

  v41 = *(v5 + 16);
  v22 = a2;
  v23 = v43;
  sub_1BAF3BB60(v22, v56);
  v24 = *(v23 + 16);
  v24(v17, a1, a3);
  v25 = (*(v23 + 80) + 72) & ~*(v23 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v45;
  *(v27 + 16) = a3;
  *(v27 + 24) = v28;
  sub_1BADC5B38(v56, v27 + 32);
  (*(v23 + 32))(v27 + v25, v17, a3);
  *(v27 + v26) = v5;
  v54 = sub_1BAF58878;
  v55 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1BAF57970;
  v53 = &unk_1F38F66A0;
  v29 = _Block_copy(&aBlock);
  v30 = v46;

  v31 = v47;

  v32 = v42;
  [v42 registerForTaskWithIdentifier:v21 usingQueue:v41 launchHandler:v29];
  _Block_release(v29);

  v33 = APLogForCategory(0x35uLL);
  sub_1BAF8E948();
  v24(v30, v44, a3);
  v34 = sub_1BAF8E918();
  v35 = sub_1BAF8F028();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v56[0] = v37;
    *v36 = 136315138;
    sub_1BAF8F278();
    (*(v23 + 8))(v30, a3);
    v38 = sub_1BAF49CF8(aBlock, v51, v56);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_1BADC1000, v34, v35, "%s: Registered task.", v36, 0xCu);
    sub_1BADC5BE0(v37);
    MEMORY[0x1BFB06160](v37, -1, -1);
    MEMORY[0x1BFB06160](v36, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v30, a3);
  }

  return (*(v48 + 8))(v31, v49);
}

id sub_1BAF5666C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a4;
  v56 = a1;
  v10 = sub_1BAF8E938();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v50 = &v49 - v18;
  v20 = a2[3];
  v19 = a2[4];
  sub_1BADC8524(a2, v20);
  v21 = *(v19 + 8);
  v22 = a3;
  v51 = a6;
  if (v21(a3, a5, a6, v20, v19))
  {
    v23 = sub_1BAF8EF78();
    v24 = v50;
    (*(*(v23 - 8) + 56))(v50, 1, 1, v23);
    v25 = v49;
    (*(v14 + 16))(v49, v22, a5);
    sub_1BAF3BB60(a2, &aBlock);
    v26 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    v28 = v51;
    v29 = v52;
    *(v27 + 4) = a5;
    *(v27 + 5) = v28;
    v30 = v56;
    *(v27 + 6) = v29;
    *(v27 + 7) = v30;
    (*(v14 + 32))(&v27[v26], v25, a5);
    sub_1BADC5B38(&aBlock, &v27[(v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8]);

    v31 = v30;
    v32 = sub_1BAF574DC(0, 0, v24, &unk_1BAF97138, v27);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    v60 = sub_1BAF58E6C;
    v61 = v33;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v58 = sub_1BAF4CF6C;
    v59 = &unk_1F38F67A8;
    v34 = _Block_copy(&aBlock);
    v35 = v31;

    [v35 setExpirationHandler_];
    _Block_release(v34);
  }

  else
  {
    v37 = APLogForCategory(0x35uLL);
    v38 = v53;
    sub_1BAF8E948();
    v39 = v56;
    v40 = sub_1BAF8E918();
    v41 = sub_1BAF8F028();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&aBlock = v43;
      *v42 = 136315138;
      v44 = [v39 identifier];
      v45 = sub_1BAF8EC38();
      v47 = v46;

      v48 = sub_1BAF49CF8(v45, v47, &aBlock);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_1BADC1000, v40, v41, "%s: Task failed precondition check.", v42, 0xCu);
      sub_1BADC5BE0(v43);
      MEMORY[0x1BFB06160](v43, -1, -1);
      MEMORY[0x1BFB06160](v42, -1, -1);
    }

    (*(v54 + 8))(v38, v55);
    return [v39 setTaskCompleted];
  }
}

uint64_t sub_1BAF56B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v17;
  v8[8] = a6;
  v8[9] = a7;
  v8[7] = a5;
  v9 = sub_1BAF8EF58();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v12 = sub_1BAF8E938();
  v8[16] = v12;
  v13 = *(v12 - 8);
  v8[17] = v13;
  v14 = *(v13 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAF56CAC, 0, 0);
}

uint64_t sub_1BAF56CAC()
{
  v33 = v0;
  v1 = v0[19];
  v2 = v0[7];
  v3 = APLogForCategory(0x35uLL);
  sub_1BAF8E948();
  v4 = v2;
  v5 = sub_1BAF8E918();
  v6 = sub_1BAF8F028();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  if (v7)
  {
    v11 = v0[7];
    v30 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315138;
    v14 = [v11 identifier];
    v15 = sub_1BAF8EC38();
    v17 = v16;

    v18 = sub_1BAF49CF8(v15, v17, &v32);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1BADC1000, v5, v6, "%s: Starting task.", v12, 0xCu);
    sub_1BADC5BE0(v13);
    MEMORY[0x1BFB06160](v13, -1, -1);
    MEMORY[0x1BFB06160](v12, -1, -1);

    v19 = *(v9 + 8);
    v19(v30, v10);
  }

  else
  {

    v19 = *(v9 + 8);
    v19(v8, v10);
  }

  v0[20] = v19;
  v20 = v0[9];
  v21 = v20[3];
  v22 = v20[4];
  sub_1BADC8524(v20, v21);
  v23 = *(v22 + 16);
  v31 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[21] = v25;
  *v25 = v0;
  v25[1] = sub_1BAF56F48;
  v26 = v0[10];
  v27 = v0[11];
  v28 = v0[8];

  return v31(v28, v26, v27, v21, v22);
}

uint64_t sub_1BAF56F48()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1BAF570F8;
  }

  else
  {
    v3 = sub_1BAF5705C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BAF5705C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_1BAF58F4C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BAF570F8()
{
  v56 = v0;
  v1 = *(v0 + 176);
  *(v0 + 40) = v1;
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = v1;
  sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 176);
  if (v5)
  {
    v51 = *(v0 + 152);
    v53 = *(v0 + 144);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v47 = *(v0 + 80);
    v49 = *(v0 + 88);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);

    (*(v9 + 32))(v7, v8, v10);
    sub_1BAF595FC();
    swift_allocError();
    (*(v9 + 16))(v14, v7, v10);
    swift_willThrow();
    (*(v9 + 8))(v7, v10);

    sub_1BAF58F4C(v13, v12, v11, v47, v49);

    v15 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 144);
    v17 = *(v0 + 56);

    v18 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    v19 = v17;
    v20 = v6;
    v21 = sub_1BAF8E918();
    v22 = sub_1BAF8F038();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 176);
    v25 = *(v0 + 160);
    v26 = *(v0 + 144);
    v27 = *(v0 + 128);
    if (v23)
    {
      v54 = *(v0 + 160);
      v28 = *(v0 + 56);
      v52 = *(v0 + 136);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55[0] = v30;
      *v29 = 136315394;
      v31 = [v28 identifier];
      v48 = v27;
      v50 = v26;
      v32 = sub_1BAF8EC38();
      v34 = v33;

      v35 = sub_1BAF49CF8(v32, v34, v55);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v37 = *(v0 + 16);
      v36 = *(v0 + 24);
      v38 = *(v0 + 32);
      v39 = sub_1BAF8F548();
      v41 = sub_1BAF49CF8(v39, v40, v55);

      *(v29 + 14) = v41;
      _os_log_impl(&dword_1BADC1000, v21, v22, "%s: Task failed with unhandled error: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB06160](v30, -1, -1);
      MEMORY[0x1BFB06160](v29, -1, -1);

      v54(v50, v48);
    }

    else
    {

      v25(v26, v27);
    }

    v42 = *(v0 + 144);
    v43 = *(v0 + 152);
    v45 = *(v0 + 112);
    v44 = *(v0 + 120);
    sub_1BAF58F4C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_1BAF574DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1BAF58E74(a3, v24 - v10);
  v12 = sub_1BAF8EF78();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BAF58EE4(v11);
  }

  else
  {
    sub_1BAF8EF68();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BAF8EF48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BAF8ECB8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1BAF58EE4(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAF58EE4(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1BAF57748(void *a1, uint64_t a2)
{
  v4 = sub_1BAF8E938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = APLogForCategory(0x35uLL);
  sub_1BAF8E948();
  v10 = a1;
  v11 = sub_1BAF8E918();
  v12 = sub_1BAF8F018();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = [v10 identifier];
    v17 = sub_1BAF8EC38();
    v19 = v18;

    v20 = sub_1BAF49CF8(v17, v19, &v23);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BADC1000, v11, v12, "%s: Task is being cancelled.", v14, 0xCu);
    sub_1BADC5BE0(v15);
    MEMORY[0x1BFB06160](v15, -1, -1);
    MEMORY[0x1BFB06160](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
  return sub_1BAF8EF88();
}

void sub_1BAF57970(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void BackgroundTaskScheduler.deregister<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8E938();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedScheduler];
  v15 = *(a3 + 8);
  sub_1BAF8F278();
  v16 = sub_1BAF8EC28();

  LODWORD(a3) = [v14 deregisterTaskWithIdentifier_];

  if (a3)
  {
    sub_1BAF8F278();
    v17 = v31;
    v18 = v32;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    swift_beginAccess();
    sub_1BAF31CEC(v29, v17, v18);
    swift_endAccess();
    v19 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v6 + 16))(v9, a1, a2);
    v20 = sub_1BAF8E918();
    v21 = sub_1BAF8F028();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      sub_1BAF8F278();
      (*(v6 + 8))(v9, a2);
      v24 = sub_1BAF49CF8(*&v29[0], *(&v29[0] + 1), &v28);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1BADC1000, v20, v21, "%s: Deregistered task.", v22, 0xCu);
      sub_1BADC5BE0(v23);
      MEMORY[0x1BFB06160](v23, -1, -1);
      MEMORY[0x1BFB06160](v22, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, a2);
    }

    (*(v26 + 8))(v13, v27);
  }
}

uint64_t BackgroundTaskScheduler.schedule<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8E938();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedScheduler];
  v15 = sub_1BAF55FC4(a2, a3);
  v16 = (*(a3 + 24))(v15, a2, a3);

  v31[0] = 0;
  LODWORD(v15) = [v14 submitTaskRequest:v16 error:v31];

  if (v15)
  {
    v17 = v31[0];
    v18 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v6 + 16))(v9, a1, a2);
    v19 = sub_1BAF8E918();
    v20 = sub_1BAF8F028();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v21 = 136315138;
      v22 = *(a3 + 8);
      sub_1BAF8F278();
      (*(v6 + 8))(v9, a2);
      v23 = sub_1BAF49CF8(v31[0], v31[1], v32);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1BADC1000, v19, v20, "%s: Scheduled task.", v21, 0xCu);
      v24 = v28;
      sub_1BADC5BE0(v28);
      MEMORY[0x1BFB06160](v24, -1, -1);
      MEMORY[0x1BFB06160](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, a2);
    }

    result = (*(v29 + 8))(v13, v30);
  }

  else
  {
    v25 = v31[0];
    sub_1BAF8E4C8();

    result = swift_willThrow();
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BackgroundTaskScheduler.cancel<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v29 = *(a2 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF8E938();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedScheduler];
  v14 = *(a3 + 8);
  sub_1BAF8F278();
  v15 = sub_1BAF8EC28();

  v30[0] = 0;
  v16 = [v13 cancelTaskRequestWithIdentifier:v15 error:v30];

  if (v16)
  {
    v17 = v30[0];
    v18 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v29 + 16))(v8, a1, a2);
    v19 = sub_1BAF8E918();
    v20 = sub_1BAF8F028();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315138;
      sub_1BAF8F278();
      (*(v29 + 8))(v8, a2);
      v23 = sub_1BAF49CF8(v30[0], v30[1], v31);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1BADC1000, v19, v20, "%s: Cancelled task.", v21, 0xCu);
      sub_1BADC5BE0(v22);
      MEMORY[0x1BFB06160](v22, -1, -1);
      MEMORY[0x1BFB06160](v21, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v8, a2);
    }

    result = (*(v27 + 8))(v12, v28);
  }

  else
  {
    v24 = v30[0];
    sub_1BAF8E4C8();

    result = swift_willThrow();
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BackgroundTaskScheduler.update<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8E938();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedScheduler];
  v31 = a3;
  v16 = sub_1BAF55FC4(a2, a3);
  v34[0] = 0;
  v17 = [v15 updateTaskRequest:v16 error:v34];

  if (v17)
  {
    v18 = v34[0];
    v19 = APLogForCategory(0x35uLL);
    sub_1BAF8E948();
    (*(v7 + 16))(v10, a1, a2);
    v20 = sub_1BAF8E918();
    v21 = sub_1BAF8F028();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v3;
      v24 = v23;
      v35[0] = v23;
      *v22 = 136315138;
      v25 = *(v31 + 8);
      sub_1BAF8F278();
      (*(v7 + 8))(v10, a2);
      v26 = sub_1BAF49CF8(v34[0], v34[1], v35);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1BADC1000, v20, v21, "%s: Updated task.", v22, 0xCu);
      sub_1BADC5BE0(v24);
      MEMORY[0x1BFB06160](v24, -1, -1);
      MEMORY[0x1BFB06160](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, a2);
    }

    result = (*(v32 + 8))(v14, v33);
  }

  else
  {
    v27 = v34[0];
    sub_1BAF8E4C8();

    result = swift_willThrow();
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Bool __swiftcall BackgroundTaskScheduler.isScheduled(taskID:)(Swift::String taskID)
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_1BAF8EC28();
  v3 = [v1 taskRequestForIdentifier_];

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t BackgroundTaskScheduler.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1BAF588E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t initializeBufferWithCopyOfBuffer for BackgroundTaskMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t dispatch thunk of BackgroundTaskHandler.perform<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1BAF58B70;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1BAF58B70()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BAF58CC8(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BAF59658;

  return sub_1BAF56B68(a1, v6, v7, v8, v9, v1 + v4, v1 + v5, v3);
}

uint64_t sub_1BAF58E08(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

uint64_t sub_1BAF58E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF58EE4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36CE0, &qword_1BAF97128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BAF58F4C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v91[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1BAF8E938();
  v10 = *(v9 - 1);
  v11 = *(v10 + 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v82 - v18;
  v20 = sub_1BAF8EF98();
  v21 = APLogForCategory(0x35uLL);
  if ((v20 & 1) == 0)
  {
    v88 = v10;
    sub_1BAF8E948();
    v41 = a1;
    v42 = sub_1BAF8E918();
    v43 = sub_1BAF8F028();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v91[0] = v84;
      *v44 = 136315138;
      v45 = [v41 identifier];
      v89 = a4;
      v46 = v45;
      v47 = sub_1BAF8EC38();
      v85 = v9;
      v48 = a2;
      v49 = v47;
      v50 = v41;
      v51 = a3;
      v53 = v52;

      v54 = v49;
      a2 = v48;
      v55 = sub_1BAF49CF8(v54, v53, v91);
      a3 = v51;
      v41 = v50;

      *(v44 + 4) = v55;
      a4 = v89;
      _os_log_impl(&dword_1BADC1000, v42, v43, "%s: Completed task.", v44, 0xCu);
      v56 = v84;
      sub_1BADC5BE0(v84);
      MEMORY[0x1BFB06160](v56, -1, -1);
      MEMORY[0x1BFB06160](v44, -1, -1);

      v88[1](v17, v85);
    }

    else
    {

      v88[1](v17, v9);
    }

    [v41 setTaskCompleted];
    v74 = a3[3];
    v75 = a3[4];
    sub_1BADC8524(a3, v74);
    (*(v75 + 24))(a2, a4, v90, v74, v75);
    goto LABEL_16;
  }

  v88 = v14;
  sub_1BAF8E948();
  v22 = a1;
  v23 = sub_1BAF8E918();
  v24 = sub_1BAF8F028();

  v25 = os_log_type_enabled(v23, v24);
  v89 = a4;
  v86 = a3;
  v87 = a2;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v91[0] = v85;
    *v26 = 136315138;
    v27 = [v22 identifier];
    v28 = sub_1BAF8EC38();
    v29 = v22;
    v30 = v10;
    v31 = v9;
    v33 = v32;

    v34 = sub_1BAF49CF8(v28, v33, v91);
    v9 = v31;
    v10 = v30;
    v22 = v29;

    *(v26 + 4) = v34;
    _os_log_impl(&dword_1BADC1000, v23, v24, "%s: Task cancelled. Scheduling retry...", v26, 0xCu);
    v35 = v85;
    sub_1BADC5BE0(v85);
    MEMORY[0x1BFB06160](v35, -1, -1);
    MEMORY[0x1BFB06160](v26, -1, -1);
  }

  v36 = *(v10 + 1);
  (v36)(v19, v9);
  v91[0] = 0;
  v37 = [v22 setTaskExpiredWithRetryAfter:v91 error:300.0];
  v38 = v91[0];
  if (!v37)
  {
    v85 = v91[0];
    v57 = v91[0];
    v58 = sub_1BAF8E4C8();

    swift_willThrow();
    v59 = APLogForCategory(0x35uLL);
    v60 = v88;
    sub_1BAF8E948();
    v61 = v22;
    v62 = sub_1BAF8E918();
    v63 = sub_1BAF8F038();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = v36;
      v91[0] = v83;
      *v64 = 136315138;
      v65 = [v61 identifier];
      v66 = v61;
      v67 = v58;
      v68 = sub_1BAF8EC38();
      v85 = v9;
      v70 = v69;

      v71 = v68;
      v58 = v67;
      v61 = v66;
      v72 = sub_1BAF49CF8(v71, v70, v91);

      *(v64 + 4) = v72;
      _os_log_impl(&dword_1BADC1000, v62, v63, "%s: Failed to expire task with retry.", v64, 0xCu);
      v73 = v83;
      sub_1BADC5BE0(v83);
      MEMORY[0x1BFB06160](v73, -1, -1);
      MEMORY[0x1BFB06160](v64, -1, -1);

      (v84)(v60, v85);
    }

    else
    {

      (v36)(v60, v9);
    }

    v76 = v90;
    v77 = v86;
    v78 = v87;
    [v61 setTaskCompleted];
    v79 = v77[3];
    v80 = v77[4];
    sub_1BADC8524(v77, v79);
    (*(v80 + 24))(v78, v89, v76, v79, v80);

LABEL_16:
    v81 = *MEMORY[0x1E69E9840];
    return;
  }

  v39 = *MEMORY[0x1E69E9840];

  v40 = v38;
}

unint64_t sub_1BAF595FC()
{
  result = qword_1EBC36CE8;
  if (!qword_1EBC36CE8)
  {
    sub_1BAF8EF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36CE8);
  }

  return result;
}

uint64_t Date.utcToLocal.getter()
{
  v0 = sub_1BAF8E888();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() apLocalSharedFormatter];
  sub_1BAF8E878();
  v6 = sub_1BAF8E868();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  v7 = sub_1BAF8E678();
  v8 = [v5 stringFromDate_];

  v9 = sub_1BAF8EC38();
  return v9;
}

unint64_t sub_1BAF597C0@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_16;
  }

  v3 = result;
  result = sub_1BAF31DBC(0x6E776F6E6B6E75, 0xE700000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1BAF45388(*(v3 + 56) + 32 * result, v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  result = sub_1BAF31DBC(0x6574657263736964, 0xE800000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1BAF45388(*(v3 + 56) + 32 * result, v28);
  sub_1BAF2DB10(&qword_1EBC36CF0, &qword_1BAF97150);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v3 + 16) || (v6 = sub_1BAF31DBC(0x6966697373616C63, 0xEA00000000006465), (v7 & 1) == 0) || (sub_1BAF45388(*(v3 + 56) + 32 * v6, v28), sub_1BAF2DB10(&qword_1EBC36CF8, &qword_1BAF97B20), (swift_dynamicCast() & 1) == 0) || (v8 = sub_1BAF59A84(v27), , v9 = sub_1BAF59E80(v27), result = , !v8))
  {
LABEL_15:

LABEL_16:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v10 = *(v9 + 16);
  v11 = v10 + 1;
  v12 = 40;
  while (--v11)
  {
    v13 = *(v9 + v12);
    v12 += 16;
    if (!v13)
    {

      goto LABEL_15;
    }
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v16 = 16 * v14 + 40;
  while (1)
  {
    if (v10 == v14)
    {

      *a2 = v27;
      a2[1] = v8;
      a2[2] = v15;
      return result;
    }

    if (v14 >= *(v9 + 16))
    {
      break;
    }

    ++v14;
    v17 = v16 + 16;
    v18 = *(v9 + v16);
    v16 += 16;
    if (v18)
    {
      v19 = *(v9 + v17 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BAF4F018(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v20 = *(v15 + 16);
      v21 = *(v15 + 24);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v26 = v20 + 1;
        v24 = v15;
        v25 = *(v15 + 16);
        result = sub_1BAF4F018((v21 > 1), v20 + 1, 1, v24);
        v20 = v25;
        v22 = v26;
        v15 = result;
      }

      *(v15 + 16) = v22;
      v23 = v15 + 16 * v20;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BAF59A84(uint64_t a1)
{
  v31 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = 1;
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6530];
    v9 = &unk_1BAF95000;
    v25 = a1 + 32;
LABEL_3:
    v26 = v6;
    v10 = v4 + 32 * v3;
    v11 = v3;
    while (v11 < v2)
    {
      sub_1BAF45388(v10, v30);
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_39;
      }

      sub_1BAF45388(v30, v29);
      if (swift_dynamicCast())
      {
        v1 = v28;
        sub_1BAF2DB10(&qword_1EBC36D18, &qword_1BAF97170);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BAF95190;
        *(inited + 32) = v28;
        v13 = sub_1BAF444D8(inited);
        swift_setDeallocating();
        sub_1BADC5BE0(v29);
        sub_1BAF5A498(v13);
        sub_1BADC5BE0(v30);
      }

      else
      {
        sub_1BAF2DB10(&qword_1EBC36D10, &qword_1BAF97168);
        if (!swift_dynamicCast())
        {
          sub_1BADC5BE0(v30);
LABEL_19:
          sub_1BADC5BE0(v29);
          v6 = 0;
          v4 = v25;
          if (v3 != v2)
          {
            goto LABEL_3;
          }

LABEL_28:

          v5 = 0;
          goto LABEL_37;
        }

        if (v28[2] != 2)
        {
          sub_1BADC5BE0(v30);

          goto LABEL_19;
        }

        v14 = v2;
        v2 = v7;
        v7 = v8;
        v16 = v28[4];
        v15 = v28[5];

        if (v15 < v16)
        {
          goto LABEL_40;
        }

        sub_1BADC5BE0(v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1BAF4EF14(0, *(v5 + 2) + 1, 1, v5);
        }

        v1 = *(v5 + 2);
        v17 = *(v5 + 3);
        if (v1 >= v17 >> 1)
        {
          v5 = sub_1BAF4EF14((v17 > 1), v1 + 1, 1, v5);
        }

        sub_1BADC5BE0(v30);
        *(v5 + 2) = v1 + 1;
        v9 = &v5[16 * v1];
        *(v9 + 32) = v16;
        *(v9 + 40) = v15;
        v8 = v7;
        v7 = v2;
        v2 = v14;
        v3 = v11 + 1;
      }

      ++v11;
      v10 += 32;
      if (v3 == v2)
      {
        if (v26)
        {
          v1 = v31;
          goto LABEL_24;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v5 = sub_1BAF4EDF8((v9 > 1), v7, 1, v5);
LABEL_26:
    *(v5 + 2) = v7;
    v18 = &v5[24 * v11];
    *(v18 + 4) = v1;
    *(v18 + 5) = 0;
    v18[48] = 0;
    v19 = *(v2 + 16);
    if (!v19)
    {
      goto LABEL_36;
    }

LABEL_30:
    v20 = (v2 + 32);
    do
    {
      v27 = *v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BAF4EDF8(0, *(v5 + 2) + 1, 1, v5);
      }

      v22 = *(v5 + 2);
      v21 = *(v5 + 3);
      if (v22 >= v21 >> 1)
      {
        v5 = sub_1BAF4EDF8((v21 > 1), v22 + 1, 1, v5);
      }

      *(v5 + 2) = v22 + 1;
      v23 = &v5[24 * v22];
      *(v23 + 2) = v27;
      v23[48] = 1;
      ++v20;
      --v19;
    }

    while (v19);
    goto LABEL_36;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E7CD0];
LABEL_24:
  v2 = v5;
  if (*(v1 + 16))
  {

    v5 = sub_1BAF4EDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v5 + 2);
    v9 = *(v5 + 3);
    v7 = v11 + 1;
    if (v11 < v9 >> 1)
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v19 = *(v2 + 16);
  if (v19)
  {
    goto LABEL_30;
  }

LABEL_36:

LABEL_37:

  return v5;
}

uint64_t sub_1BAF59E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1BAF6FB4C(0, v1, 0);
  v2 = v21;
  v4 = -1 << *(a1 + 32);
  v5 = sub_1BAF8F1A8();
  v6 = 0;
  while (1)
  {
    v7 = *(a1 + 36);
    v8 = -1 << *(a1 + 32);
    result = sub_1BAF8F1A8();
    if (v7 != *(a1 + 36))
    {
      break;
    }

    if (v5 < result)
    {
      goto LABEL_15;
    }

    if (v5 >= 1 << *(a1 + 32))
    {
      goto LABEL_16;
    }

    *&v18 = sub_1BAF5ACCC(&v16 + 8, v5, v7, 0, a1);
    *(&v18 + 1) = v10;
    sub_1BAF32E44((&v16 + 8), v19);
    v15 = v6;
    v16 = v18;
    v17[0] = v19[0];
    v17[1] = v19[1];
    sub_1BAF5A098(v18, *(&v18 + 1), v17, &v20);
    result = sub_1BAF32F04(&v15, &qword_1EBC36D00, &qword_1BAF97158);
    v11 = v20;
    v21 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      v14 = v20;
      result = sub_1BAF6FB4C((v12 > 1), v13 + 1, 1);
      v11 = v14;
      v2 = v21;
    }

    *(v2 + 16) = v13 + 1;
    *(v2 + 16 * v13 + 32) = v11;
    if (v5 < 0 || v5 >= -(-1 << *(a1 + 32)))
    {
      goto LABEL_17;
    }

    if (((*(a1 + 64 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (v7 != *(a1 + 36))
    {
      goto LABEL_19;
    }

    ++v6;
    v5 = sub_1BAF8F1C8();
    if (v1 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BAF5A098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v39[0] = a1;
  v39[1] = a2;
  sub_1BAF45388(a3, &v40);
  result = sub_1BAF5AD58(v39, &v36);
  v7 = v36;
  v6 = v37;
  v8 = HIBYTE(v37) & 0xF;
  v9 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v10 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_63;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {

    v12 = sub_1BAF2DC88(v7, v6, 10);
    v32 = v31;

    if (v32)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((v37 & 0x2000000000000000) == 0)
  {
    if ((v36 & 0x1000000000000000) != 0)
    {
      result = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BAF8F2B8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v12 = 0;
          if (result)
          {
            v19 = result + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_61;
              }

              v12 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++v19;
              if (!--v8)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_74;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v12 = 0;
        if (result)
        {
          while (1)
          {
            v25 = *result - 48;
            if (v25 > 9)
            {
              goto LABEL_61;
            }

            v26 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v12 = 0;
      LOBYTE(v8) = 1;
LABEL_62:
      v35 = v8;
      v30 = v8;

      if (v30)
      {
LABEL_63:
        sub_1BADC5BE0(v38);
        goto LABEL_69;
      }

LABEL_66:
      sub_1BADC5BE0(v38);
      sub_1BAF5AD58(v39, &v36);

      sub_1BAF2DB10(&qword_1EBC36CF0, &qword_1BAF97150);
      if (swift_dynamicCast())
      {
        v33 = sub_1BAF59A84(v34[0]);

        result = sub_1BAF32F04(v39, &qword_1EBC36D08, &qword_1BAF97160);
        if (v33)
        {
          *a4 = v12;
          a4[1] = v33;
          return result;
        }

        goto LABEL_70;
      }

LABEL_69:
      result = sub_1BAF32F04(v39, &qword_1EBC36D08, &qword_1BAF97160);
LABEL_70:
      *a4 = 0;
      a4[1] = 0;
      return result;
    }

    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v12 = 0;
        if (result)
        {
          v13 = result + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_61;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_61;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v8) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v34[0] = v36;
  v34[1] = v37 & 0xFFFFFFFFFFFFFFLL;
  if (v36 != 43)
  {
    if (v36 != 45)
    {
      if (v8)
      {
        v12 = 0;
        v27 = v34;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          v27 = (v27 + 1);
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8)
    {
      if (--v8)
      {
        v12 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if (v8)
  {
    if (--v8)
    {
      v12 = 0;
      v22 = v34 + 1;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          break;
        }

        v12 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v22;
        if (!--v8)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1BAF5A498(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1BAF5A578(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1BAF5A578(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1BAF8F598();
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
    sub_1BAF5A87C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BAF5A658(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
  result = sub_1BAF8F218();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1BAF8F598();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BAF5A87C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BAF5A658(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BAF5A99C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BAF5AADC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1BAF8F598();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BAF8F528();
  __break(1u);
  return result;
}

void *sub_1BAF5A99C()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
  v2 = *v0;
  v3 = sub_1BAF8F208();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1BAF5AADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
  result = sub_1BAF8F218();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1BAF8F598();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BAF5ACCC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    sub_1BAF45388(*(a5 + 56) + 32 * a2, result);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BAF5AD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36D08, &qword_1BAF97160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static BundleID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t sub_1BAF5AE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BAF8F4C8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAF5AEA4(uint64_t a1)
{
  v2 = sub_1BAF5B170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAF5AEE0(uint64_t a1)
{
  v2 = sub_1BAF5B170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BAF8ED18();
}

uint64_t BundleID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  return sub_1BAF8F5E8();
}

uint64_t _s12APFoundation11CountryCodeV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF5AFBC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  return sub_1BAF8F5E8();
}

uint64_t BundleID.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BundleID.encode(to:)(void *a1)
{
  v3 = sub_1BAF2DB10(&qword_1EBC36D20, &qword_1BAF97178);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF5B170();
  sub_1BAF8F648();
  sub_1BAF8F438();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BAF5B170()
{
  result = qword_1EBC36D28;
  if (!qword_1EBC36D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D28);
  }

  return result;
}

uint64_t BundleID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BAF2DB10(&qword_1EBC36D30, &qword_1BAF97180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF5B170();
  sub_1BAF8F628();
  if (!v2)
  {
    v11 = sub_1BAF8F3D8();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_1BADC5BE0(a1);
}

unint64_t sub_1BAF5B33C()
{
  result = qword_1EBC36D38;
  if (!qword_1EBC36D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D38);
  }

  return result;
}

unint64_t sub_1BAF5B394()
{
  result = qword_1EBC36D40;
  if (!qword_1EBC36D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D40);
  }

  return result;
}

unint64_t sub_1BAF5B3F8()
{
  result = qword_1EBC36D48;
  if (!qword_1EBC36D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D48);
  }

  return result;
}

uint64_t sub_1BAF5B47C(void *a1)
{
  v3 = sub_1BAF2DB10(&qword_1EBC36D20, &qword_1BAF97178);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF5B170();
  sub_1BAF8F648();
  sub_1BAF8F438();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BAF5B5DC()
{
  result = qword_1EBC36D50;
  if (!qword_1EBC36D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D50);
  }

  return result;
}

unint64_t sub_1BAF5B634()
{
  result = qword_1EBC36D58;
  if (!qword_1EBC36D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D58);
  }

  return result;
}

unint64_t sub_1BAF5B68C()
{
  result = qword_1EBC36D60;
  if (!qword_1EBC36D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D60);
  }

  return result;
}

uint64_t sub_1BAF5B78C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1BAF5B7C8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BAF5B7DC(uint64_t *a1, int a2)
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

uint64_t sub_1BAF5B824(uint64_t result, int a2, int a3)
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

uint64_t sub_1BAF5B88C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1BAF5B8B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1BAF5B8DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BAF5B904()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t (*sub_1BAF5B92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5C038;
}

uint64_t (*sub_1BAF5BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5BFD0;
}

uint64_t (*sub_1BAF5BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5BF68;
}

uint64_t (*sub_1BAF5BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF5BF00;
}

uint64_t (*sub_1BAF5BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  v20 = sub_1BAF5B92C(a1, a2, a3, a4);
  v11 = v10;
  v12 = sub_1BAF5BA58(a1, a2, a3, a4);
  v14 = v13;
  v15 = sub_1BAF5BB84(a1, a2, a3, a4);
  v17 = v16;
  result = sub_1BAF5BCB0(a1, a2, a3, a4);
  *a5 = v20;
  a5[1] = v11;
  a5[2] = v12;
  a5[3] = v14;
  a5[4] = v15;
  a5[5] = v17;
  a5[6] = result;
  a5[7] = v19;
  return result;
}

uint64_t sub_1BAF5BF00()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80));
  return (*(v1 + 56))();
}

unint64_t sub_1BAF5C0DC()
{
  result = qword_1EBC36D68;
  if (!qword_1EBC36D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36D68);
  }

  return result;
}

uint64_t Int.minute.getter(uint64_t result)
{
  if ((result * 60) >> 64 != (60 * result) >> 63)
  {
    __break(1u);
  }

  return result;
}

void sub_1BAF5C160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v5 = v4;
  v76 = a3;
  v77 = a4;
  v78 = a2;
  v84 = *MEMORY[0x1E69E9840];
  v6 = sub_1BAF8E318();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BAF8E4F8();
  v9 = *(v75 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v75);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v63 - v15;
  v17 = sub_1BAF8E598();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v63 - v25;
  v27 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  swift_beginAccess();
  sub_1BAF5D1E4(v5 + v27, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1BAF5D254(v16);
  }

  else
  {
    (*(v18 + 32))(v26, v16, v17);
    v82 = v79;
    v83 = v78;
    v28 = v18;
    v29 = v9[13];
    v69 = *MEMORY[0x1E6968F70];
    v30 = v75;
    v68 = v29;
    v29(v12);
    v67 = sub_1BAF2DB58();
    sub_1BAF8E578();
    v31 = v9[1];
    v31(v12, v30);
    v32 = v80;
    sub_1BAF8E608();
    if (v32)
    {
      v66 = v26;
      v65 = v31;
      v33 = *(v28 + 8);
      v70 = v28 + 8;
      v80 = v33;
      v33(v24, v17);
      v34 = v32;
      v35 = v72;
      sub_1BAF8E308();
      sub_1BAF5D2BC();
      v36 = v74;
      v37 = sub_1BAF8E4A8();

      (*(v73 + 8))(v35, v36);
      if (v37)
      {
        v64 = v17;

        v38 = [objc_opt_self() defaultManager];
        v39 = v66;
        v40 = sub_1BAF8E518();
        v82 = 0;
        v41 = [v38 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:&v82];

        if (v41)
        {
          v42 = v82;
        }

        else
        {
          v57 = v82;
          v58 = sub_1BAF8E4C8();

          swift_willThrow();
        }

        v59 = v80;
        v82 = v79;
        v83 = v78;
        v68(v12, v69, v30);
        v60 = v71;
        sub_1BAF8E578();
        v65(v12, v30);
        sub_1BAF8E608();
        v61 = v64;
        v59(v60, v64);
        v59(v39, v61);
      }

      else
      {
        v82 = v32;
        v44 = v32;
        sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
        sub_1BAF30DFC(0, qword_1EBC36D70, 0x1E696ABC0);
        v45 = swift_dynamicCast();
        v46 = v79;
        if (v45)
        {

          v47 = v81;
          LODWORD(v77) = sub_1BAF8F038();
          sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
          v48 = sub_1BAF8F0C8();
          sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1BAF954D0;
          v50 = MEMORY[0x1E69E6158];
          *(v49 + 56) = MEMORY[0x1E69E6158];
          v51 = sub_1BAF30E44();
          *(v49 + 64) = v51;
          v52 = v78;
          *(v49 + 32) = v46;
          *(v49 + 40) = v52;

          v53 = [v47 localizedDescription];
          v54 = sub_1BAF8EC38();
          v56 = v55;

          *(v49 + 96) = v50;
          *(v49 + 104) = v51;
          *(v49 + 72) = v54;
          *(v49 + 80) = v56;
          sub_1BAF8E8B8();

          swift_willThrow();
        }

        v80(v66, v17);
      }
    }

    else
    {
      v43 = *(v28 + 8);
      v43(v24, v17);
      v43(v26, v17);
    }
  }

  v62 = *MEMORY[0x1E69E9840];
}

void sub_1BAF5CB00(void *a1, void *a2)
{
  v49 = a1;
  v50 = a2;
  v52[5] = *MEMORY[0x1E69E9840];
  v47 = sub_1BAF8E4F8();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_1BAF8E598();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  swift_beginAccess();
  v20 = v2 + v19;
  v21 = v11;
  sub_1BAF5D1E4(v20, v10);
  v22 = v12;
  if ((*(v12 + 48))(v10, 1, v21) == 1)
  {
    sub_1BAF5D254(v10);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v21);
    v23 = [objc_opt_self() defaultManager];
    v52[0] = v49;
    v52[1] = v50;
    v24 = v47;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v47);
    sub_1BAF2DB58();
    sub_1BAF8E578();
    (*(v3 + 8))(v6, v24);
    v25 = sub_1BAF8E518();
    v26 = *(v22 + 8);
    v47 = v22 + 8;
    v26(v16, v21);
    v52[0] = 0;
    v27 = [v23 removeItemAtURL:v25 error:v52];

    v28 = v50;
    if (v27)
    {
      v29 = v52[0];
      v26(v18, v21);
    }

    else
    {
      v46 = v21;
      v48 = v18;
      v30 = v49;
      v31 = v52[0];
      v32 = sub_1BAF8E4C8();

      swift_willThrow();
      v52[0] = v32;
      v33 = v32;
      sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
      sub_1BAF30DFC(0, qword_1EBC36D70, 0x1E696ABC0);
      if (swift_dynamicCast())
      {

        v34 = v51;
        v45 = sub_1BAF8F038();
        sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
        v44 = sub_1BAF8F0C8();
        sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1BAF954D0;
        v36 = MEMORY[0x1E69E6158];
        *(v35 + 56) = MEMORY[0x1E69E6158];
        v37 = sub_1BAF30E44();
        *(v35 + 64) = v37;
        *(v35 + 32) = v30;
        *(v35 + 40) = v28;

        v38 = [v34 localizedDescription];
        v39 = sub_1BAF8EC38();
        v41 = v40;

        *(v35 + 96) = v36;
        *(v35 + 104) = v37;
        *(v35 + 72) = v39;
        *(v35 + 80) = v41;
        v42 = v44;
        sub_1BAF8E8B8();

        swift_willThrow();
      }

      v26(v48, v46);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BAF5D044()
{
  sub_1BAF5D254(v0 + OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkDataStore()
{
  result = qword_1EDBA34C8;
  if (!qword_1EDBA34C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF5D0FC()
{
  sub_1BAF5D18C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BAF5D18C()
{
  if (!qword_1EDBA38C0)
  {
    sub_1BAF8E598();
    v0 = sub_1BAF8F0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBA38C0);
    }
  }
}

uint64_t sub_1BAF5D1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF5D254(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAF5D2BC()
{
  result = qword_1EDBA38C8;
  if (!qword_1EDBA38C8)
  {
    sub_1BAF8E318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA38C8);
  }

  return result;
}

unint64_t sub_1BAF5D328()
{
  result = qword_1EDBA2E50[0];
  if (!qword_1EDBA2E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBA2E50);
  }

  return result;
}

uint64_t sub_1BAF5D37C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock((*(*a1 + 16) + 16));
  v5 = v3[3];
  v4 = v3[4];
  v6 = v3[2];
  v3[3] = 0;
  v3[4] = 0;
  os_unfair_lock_unlock(v6 + 4);
  if (v5)
  {
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v4;
    v8 = sub_1BAF5DCB0;
  }

  else
  {
    v8 = 0;
    result = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1BAF5D404(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BAF5DC88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = *(*a2 + 16);
  sub_1BAEFD9BC(v3);
  os_unfair_lock_lock(v8 + 4);
  v9 = v7[3];
  v10 = v7[4];
  v7[3] = v6;
  v7[4] = v5;
  sub_1BAEFD9BC(v6);
  sub_1BAEFD9A4(v9);
  os_unfair_lock_unlock((v7[2] + 16));

  return sub_1BAEFD9A4(v6);
}

uint64_t SinglyCallableCompletion.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  os_unfair_lock_lock(v5 + 4);
  v6 = v2[3];
  v7 = v2[4];
  v2[3] = a1;
  v2[4] = a2;
  sub_1BAEFD9BC(a1);
  sub_1BAEFD9A4(v6);
  os_unfair_lock_unlock(v5 + 4);

  return sub_1BAEFD9A4(a1);
}

uint64_t (*SinglyCallableCompletion.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[2];
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock(v3 + 4);
  v4 = v1[3];
  v5 = v1[4];
  v1[3] = 0;
  v1[4] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v4;
  a1[1] = v5;
  return sub_1BAF5D5C8;
}

uint64_t sub_1BAF5D5C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    sub_1BAEFD9BC(*a1);
    os_unfair_lock_lock(v4 + 4);
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    *(v5 + 24) = v2;
    *(v5 + 32) = v3;
    sub_1BAEFD9BC(v2);
    sub_1BAEFD9A4(v6);
    os_unfair_lock_unlock(v4 + 4);
    sub_1BAEFD9A4(v2);
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    *(v5 + 24) = v2;
    *(v5 + 32) = v3;
    sub_1BAEFD9BC(v2);
    sub_1BAEFD9A4(v8);
    os_unfair_lock_unlock(v4 + 4);
  }

  return sub_1BAEFD9A4(v2);
}

void *sub_1BAF5D6C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v4[2] = v5;
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

void *sub_1BAF5D73C(uint64_t a1, uint64_t a2)
{
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v2[2] = v5;
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1BAF5D79C()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1 + 4);
  v2 = v0[3];
  v3 = v0[4];
  v0[3] = 0;
  v0[4] = 0;
  os_unfair_lock_unlock(v1 + 4);
  return v2;
}

void *sub_1BAF5D7E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  result = SinglyCallable.wrappedValue.getter();
  if (result)
  {
    v9 = result;
    v10 = v8;
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v9;
    result[4] = v10;
    v11 = sub_1BAF5DC7C;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
  a4[1] = result;
  return result;
}

uint64_t sub_1BAF5D860(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = sub_1BAF5DC54;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  sub_1BAEFD9BC(v5);
  sub_1BAF5DAFC(v9, v8);

  return sub_1BAEFD9A4(v9);
}

uint64_t SinglyCallable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1BAF5DAFC(a1, a2);

  return sub_1BAEFD9A4(a1);
}

uint64_t (*SinglyCallable.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  v4 = v1[3];
  v5 = v1[4];
  v1[3] = 0;
  v1[4] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v4;
  a1[1] = v5;
  return sub_1BAF5D9CC;
}

uint64_t sub_1BAF5D9CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_1BAEFD9BC(v5);
    sub_1BAF5DAFC(v2, v3);
    sub_1BAEFD9A4(v2);
  }

  else
  {
    sub_1BAF5DAFC(v5, v3);
  }

  return sub_1BAEFD9A4(v2);
}

void *sub_1BAF5DA5C(void (*a1)(void, void))
{
  v3 = v1[2];

  a1(v1[3], v1[4]);
  return v1;
}

uint64_t sub_1BAF5DAAC(void (*a1)(void, void))
{
  v3 = v1[2];

  a1(v1[3], v1[4]);

  return swift_deallocClassInstance();
}

void sub_1BAF5DAFC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  os_unfair_lock_lock(v5 + 4);
  v6 = v2[3];
  v7 = v2[4];
  v2[3] = a1;
  v2[4] = a2;
  sub_1BAEFD9BC(a1);
  sub_1BAEFD9A4(v6);

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t sub_1BAF5DC54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1BAF5DC7C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1BAF4D444(a1, *(v1 + 24));
}

uint64_t sub_1BAF5DC88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BAF5DCB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t DatabaseManager.__allocating_init(database:log:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

id sub_1BAF5DD28@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  [*(a1 + 32) lock];
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = sqlite3_step(v7);
  *(a1 + 16) = v8;
  if (v8 == 100)
  {
    v16[3] = type metadata accessor for DatabaseCursorInternal();
    v16[4] = &off_1F38F6DD0;
    v16[0] = a1;

    a2(v16);
    sub_1BADC5BE0(v16);
    return [*(a1 + 32) unlock];
  }

  if (*(a1 + 24))
  {
    sqlite3_finalize(*(a1 + 24));
    *(a1 + 24) = 0;
LABEL_6:
    v8 = *(a1 + 16);
  }

  if (v8 != 101)
  {
    sub_1BAF8F038();
    v9 = *(a1 + 40);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BAF95190;
    v11 = *(a1 + 16);
    v12 = MEMORY[0x1E69E7358];
    *(v10 + 56) = MEMORY[0x1E69E72F0];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = v9;
    sub_1BAF8E8B8();
  }

  (*(*(a3 - 8) + 56))(a4, 1, 1);
  return [*(a1 + 32) unlock];
}

uint64_t sub_1BAF5E090()
{
  v1 = sub_1BAF606C4();
  v2 = *v0;

  v3 = v0[2];

  return v1;
}

uint64_t sub_1BAF5E110()
{
  [*(v0 + 32) lock];
  v1 = *(v0 + 24);
  if (v1)
  {
    sqlite3_finalize(v1);
    *(v0 + 24) = 0;
  }

  [*(v0 + 32) unlock];

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

char *sub_1BAF5E188()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);

    return v1;
  }

  result = sqlite3_column_count(*(v0 + 24));
  if ((result & 0x80000000) == 0)
  {
    v4 = result;
    if (result)
    {
      v5 = 0;
      v1 = MEMORY[0x1E69E7CC0];
      do
      {
        if (sqlite3_column_name(*(v0 + 24), v5))
        {
          v7 = sub_1BAF8ED78();
          v9 = v8;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_1BAF4F124(0, *(v1 + 2) + 1, 1, v1);
          }

          v11 = *(v1 + 2);
          v10 = *(v1 + 3);
          if (v11 >= v10 >> 1)
          {
            v1 = sub_1BAF4F124((v10 > 1), v11 + 1, 1, v1);
          }

          *(v1 + 2) = v11 + 1;
          v6 = &v1[16 * v11];
          *(v6 + 4) = v7;
          *(v6 + 5) = v9;
        }

        ++v5;
      }

      while (v4 != v5);
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v0 + 48);
    *(v0 + 48) = v1;

    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAF5E2F0(int iCol)
{
  v3 = *v1;
  v4 = sqlite3_column_type(*(v3 + 24), iCol);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(*(v3 + 24), iCol);
  }

  return v5 | ((v4 == 5) << 32);
}

uint64_t sub_1BAF5E368(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) != 5)
  {
    return sqlite3_column_int(*(v3 + 24), iCol);
  }

  sub_1BAF4098C();
  swift_allocError();
  *v4 = xmmword_1BAF977D0;
  *(v4 + 16) = 0;
  return swift_willThrow();
}

sqlite3_int64 sub_1BAF5E418(int iCol, __n128 a2)
{
  v4 = *v2;
  if (sqlite3_column_type(*(v4 + 24), iCol) != 5)
  {
    return sqlite3_column_int64(*(v4 + 24), iCol);
  }

  sub_1BAF4098C();
  swift_allocError();
  *v5 = a2;
  v5[1].n128_u8[0] = 0;
  return swift_willThrow();
}

sqlite3_int64 sub_1BAF5E4B0(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(*(v3 + 24), iCol);
  }
}

void sub_1BAF5E510(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v4 = xmmword_1BAF977F0;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    sqlite3_column_double(*(v3 + 24), iCol);
  }
}

double sub_1BAF5E5A0(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) != 5)
  {
    return sqlite3_column_double(*(v3 + 24), iCol);
  }

  return result;
}

const unsigned __int8 *sub_1BAF5E628(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v3 = xmmword_1BAF97800;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  else if (sqlite3_column_bytes(*(v1 + 24), iCol) < 1)
  {
    return 0;
  }

  else
  {
    result = sqlite3_column_text(*(v1 + 24), iCol);
    if (result)
    {
      return sub_1BAF8ED88();
    }
  }

  return result;
}

const unsigned __int8 *sub_1BAF5E6F8(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    return 0;
  }

  if (sqlite3_column_bytes(*(v1 + 24), iCol) < 1)
  {
    return 0;
  }

  result = sqlite3_column_text(*(v1 + 24), iCol);
  if (result)
  {
    return sub_1BAF8ED88();
  }

  return result;
}

uint64_t sub_1BAF5E76C(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*(v3 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v4 = xmmword_1BAF97810;
    *(v4 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    sqlite3_column_double(*(v3 + 24), iCol);
    return sub_1BAF8E6C8();
  }
}

uint64_t sub_1BAF5E808@<X0>(int iCol@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (sqlite3_column_type(*(v5 + 24), iCol) == 5)
  {
    v6 = 1;
  }

  else
  {
    sqlite3_column_double(*(v5 + 24), iCol);
    sub_1BAF8E6C8();
    v6 = 0;
  }

  v7 = sub_1BAF8E728();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

unsigned __int8 *sub_1BAF5E8DC(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    return 0;
  }

  v3 = sqlite3_column_bytes(*(v1 + 24), iCol);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  result = sqlite3_column_text(*(v1 + 24), iCol);
  if (result)
  {
    return sub_1BAF60614(result, v4);
  }

  return result;
}

unsigned __int8 *sub_1BAF5E978(int iCol)
{
  if (sqlite3_column_type(*(v1 + 24), iCol) == 5)
  {
    sub_1BAF4098C();
    swift_allocError();
    *v3 = xmmword_1BAF97820;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v5 = sqlite3_column_bytes(*(v1 + 24), iCol);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      v6 = v5;
      result = sqlite3_column_text(*(v1 + 24), iCol);
      if (result)
      {
        return sub_1BAF60614(result, v6);
      }
    }
  }

  return result;
}

uint64_t DatabaseManager.init(database:log:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

void *sub_1BAF5EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  result = sub_1BAF5F9DC(a1, a2, a3);
  if (!v5)
  {
    v9 = result;
    [result[4] lock];
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = sqlite3_step(v10);
      *(v9 + 16) = v11;
      if (v11 == 100)
      {
        v21[3] = type metadata accessor for DatabaseCursorInternal();
        v21[4] = &off_1F38F6DD0;
        v21[0] = v9;

        sub_1BAF54DFC(v21, a5);
        v20 = type metadata accessor for WorkOrder();
        (*(*(v20 - 8) + 56))(a5, 0, 1, v20);
        sub_1BADC5BE0(v21);
        [*(v9 + 32) unlock];
      }

      v12 = *(v9 + 24);
      if (v12)
      {
        sqlite3_finalize(v12);
        *(v9 + 24) = 0;
      }
    }

    if (*(v9 + 16) == 101)
    {
      v13 = type metadata accessor for WorkOrder();
      (*(*(v13 - 8) + 56))(a5, 1, 1, v13);
    }

    else
    {
      sub_1BAF8F038();
      v14 = *(a4 + 16);
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1BAF95190;
      v16 = *(v9 + 16);
      v17 = MEMORY[0x1E69E7358];
      *(v15 + 56) = MEMORY[0x1E69E72F0];
      *(v15 + 64) = v17;
      *(v15 + 32) = v16;
      sub_1BAF8E8B8();

      sub_1BAF8F268();

      v21[0] = 0xD00000000000001BLL;
      v21[1] = 0x80000001BAFA2900;
      v22 = *(v9 + 16);
      v18 = sub_1BAF8F478();
      MEMORY[0x1BFB048C0](v18);

      sub_1BAF4098C();
      swift_allocError();
      *v19 = 0xD00000000000001BLL;
      *(v19 + 8) = 0x80000001BAFA2900;
      *(v19 + 16) = 0;
      swift_willThrow();
    }

    [*(v9 + 32) unlock];
  }

  return result;
}

void *sub_1BAF5ED68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = sub_1BAF5F9DC(a1, a2, a3);
  if (!v7)
  {
    v12 = result;
    [result[4] lock];
    v13 = *(v12 + 24);
    if (v13)
    {
      v14 = sqlite3_step(v13);
      *(v12 + 16) = v14;
      if (v14 == 100)
      {
        v22[3] = type metadata accessor for DatabaseCursorInternal();
        v22[4] = &off_1F38F6DD0;
        v22[0] = v12;

        a4(v22);
        sub_1BADC5BE0(v22);
LABEL_10:
        [*(v12 + 32) unlock];
      }

      v15 = *(v12 + 24);
      if (v15)
      {
        sqlite3_finalize(v15);
        *(v12 + 24) = 0;
      }
    }

    if (*(v12 + 16) == 101)
    {
      (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
      [*(v12 + 32) unlock];
    }

    sub_1BAF8F038();
    v16 = *(v6 + 16);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BAF95190;
    v18 = *(v12 + 16);
    v19 = MEMORY[0x1E69E7358];
    *(v17 + 56) = MEMORY[0x1E69E72F0];
    *(v17 + 64) = v19;
    *(v17 + 32) = v18;
    sub_1BAF8E8B8();

    sub_1BAF8F268();

    v22[0] = 0xD00000000000001BLL;
    v22[1] = 0x80000001BAFA2900;
    LODWORD(v23) = *(v12 + 16);
    v20 = sub_1BAF8F478();
    MEMORY[0x1BFB048C0](v20);

    sub_1BAF4098C();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    *(v21 + 8) = 0x80000001BAFA2900;
    *(v21 + 16) = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  return result;
}

void *sub_1BAF5F1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_1BAF5F9DC(a1, a2, a3);
  if (!v6)
  {
    v11 = result;
    a6[3] = type metadata accessor for DatabaseResults();
    a6[4] = swift_getWitnessTable();
    *a6 = v11;
    a6[1] = a4;
    a6[2] = a5;
  }

  return result;
}

void *sub_1BAF5F260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void (*a3)(char *, uint64_t *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v36 = *(a5 - 8);
  v13 = *(v36 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v6;
  result = sub_1BAF5F9DC(v14, v17, v18);
  if (v7)
  {
    return result;
  }

  v20 = result;
  v37 = a3;
  v38 = a4;
  v33 = a6;
  [result[4] lock];
  (*(v36 + 16))(v16, a2, a5);
  v21 = *(v20 + 24);
  if (v21)
  {
    v34 = xmmword_1BAF95190;
    v22 = v37;
    while (1)
    {
      v23 = sqlite3_step(v21);
      *(v20 + 16) = v23;
      if (v23 != 100)
      {
        break;
      }

      v41 = type metadata accessor for DatabaseCursorInternal();
      v42 = &off_1F38F6DD0;
      v39 = v20;

      v22(v16, &v39);
      sub_1BADC5BE0(&v39);
      v21 = *(v20 + 24);
      if (!v21)
      {
        goto LABEL_9;
      }
    }

    if (!*(v20 + 24))
    {
      goto LABEL_10;
    }

    sqlite3_finalize(*(v20 + 24));
    *(v20 + 24) = 0;
  }

LABEL_9:
  v23 = *(v20 + 16);
LABEL_10:
  if (v23 == 101)
  {
    (*(v36 + 32))(v33, v16, a5);
  }

  else
  {
    sub_1BAF8F038();
    v24 = *(v35 + 16);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BAF95190;
    v26 = *(v20 + 16);
    v27 = MEMORY[0x1E69E7358];
    *(v25 + 56) = MEMORY[0x1E69E72F0];
    *(v25 + 64) = v27;
    *(v25 + 32) = v26;
    sub_1BAF8E8B8();

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1BAF8F268();

    v39 = 0xD00000000000001BLL;
    v40 = 0x80000001BAFA2900;
    LODWORD(v43) = *(v20 + 16);
    v28 = sub_1BAF8F478();
    MEMORY[0x1BFB048C0](v28);

    v29 = v39;
    v30 = v40;
    sub_1BAF4098C();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 0;
    swift_willThrow();
    (*(v36 + 8))(v16, a5);
  }

  [*(v20 + 32) unlock];
}

id sub_1BAF5F6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v23[2] = a2;
      v23[3] = a1;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1BAF8F2E8();
      v6 = a3 + 32;
      do
      {
        sub_1BADC81FC(v6, v27);
        sub_1BADC81FC(v27, &v24);
        v9 = *(&v25 + 1);
        if (*(&v25 + 1))
        {
          v7 = v26;
          sub_1BADC8524(&v24, *(&v25 + 1));
          (*(v7 + 8))(v9, v7);
          sub_1BADC5BE0(&v24);
        }

        else
        {
          sub_1BADC873C(&v24);
          v24 = 0u;
          v25 = 0u;
          v10 = sub_1BAF8EC28();
          v11 = *(&v25 + 1);
          if (*(&v25 + 1))
          {
            v12 = sub_1BADC8524(&v24, *(&v25 + 1));
            v13 = *(v11 - 8);
            v14 = *(v13 + 64);
            MEMORY[0x1EEE9AC00](v12);
            v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v13 + 16))(v16);
            v17 = sub_1BAF8F4B8();
            (*(v13 + 8))(v16, v11);
            sub_1BADC5BE0(&v24);
          }

          else
          {
            v17 = 0;
          }

          [objc_allocWithZone(APDatabaseColumn) initWithName:v10 forColumnType:1 withValue:v17];

          swift_unknownObjectRelease();
        }

        sub_1BADC873C(v27);
        sub_1BAF8F2C8();
        v8 = *(v28 + 16);
        sub_1BAF8F2F8();
        sub_1BAF8F308();
        sub_1BAF8F2D8();
        v6 += 40;
        --v5;
      }

      while (v5);
      v3 = v23[1];
    }
  }

  v18 = *(v3 + 24);
  v19 = sub_1BAF8EC28();
  sub_1BADC880C();
  v20 = sub_1BAF8EE98();

  v21 = [v18 executeInsertQuery:v19 withParameters:v20];

  return v21;
}

void *sub_1BAF5F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v29[1] = a2;
      v29[2] = a1;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1BAF8F2E8();
      v6 = a3 + 32;
      do
      {
        sub_1BADC81FC(v6, v33);
        sub_1BADC81FC(v33, &v30);
        v9 = *(&v31 + 1);
        if (*(&v31 + 1))
        {
          v7 = v32;
          sub_1BADC8524(&v30, *(&v31 + 1));
          (*(v7 + 8))(v9, v7);
          sub_1BADC5BE0(&v30);
        }

        else
        {
          sub_1BADC873C(&v30);
          v30 = 0u;
          v31 = 0u;
          v10 = sub_1BAF8EC28();
          v11 = *(&v31 + 1);
          if (*(&v31 + 1))
          {
            v12 = sub_1BADC8524(&v30, *(&v31 + 1));
            v13 = *(v11 - 8);
            v14 = *(v13 + 64);
            MEMORY[0x1EEE9AC00](v12);
            v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v13 + 16))(v16);
            v17 = sub_1BAF8F4B8();
            (*(v13 + 8))(v16, v11);
            sub_1BADC5BE0(&v30);
          }

          else
          {
            v17 = 0;
          }

          [objc_allocWithZone(APDatabaseColumn) initWithName:v10 forColumnType:1 withValue:v17];

          swift_unknownObjectRelease();
        }

        sub_1BADC873C(v33);
        sub_1BAF8F2C8();
        v8 = *(v34 + 16);
        sub_1BAF8F2F8();
        sub_1BAF8F308();
        sub_1BAF8F2D8();
        v6 += 40;
        --v5;
      }

      while (v5);
      v3 = v29[0];
    }
  }

  v18 = v3[3];
  v19 = sub_1BAF8EC28();
  sub_1BADC880C();
  v20 = sub_1BAF8EE98();

  v21 = [v18 getCursorForQuery:v19 parameters:v20];

  if (v21)
  {
    v22 = [v21 statement];
    v23 = [v21 lock];

    v24 = v3[2];
    type metadata accessor for DatabaseCursorInternal();
    v3 = swift_allocObject();
    *(v3 + 4) = 0;
    v3[3] = v22;
    v3[4] = v23;
    v3[5] = v24;
    v3[6] = 0;
    v25 = v24;
  }

  else
  {
    sub_1BAF8F038();
    v26 = v3[2];
    sub_1BAF8E8B8();
    sub_1BAF4098C();
    swift_allocError();
    *v27 = 0xD000000000000018;
    *(v27 + 8) = 0x80000001BAFA3160;
    *(v27 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1BAF5FDB8(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v16 = -1;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  aBlock[4] = sub_1BAF6005C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F6CC0;
  v8 = _Block_copy(aBlock);

  [v6 executeTransactionQueryWithType:4 result:&v16 transactionBody:v8];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = *(v5 + 16);
LABEL_5:
    swift_willThrow();
    v13 = v9;
    goto LABEL_6;
  }

  v11 = v16;
  if (v16)
  {
    sub_1BAF4098C();
    swift_allocError();
    v9 = 0;
    *v12 = v11;
    *(v12 + 8) = 0;
    *(v12 + 16) = 1;
    goto LABEL_5;
  }

LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DatabaseManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF6005C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BAF5FF90(*(v0 + 16));
}

uint64_t sub_1BAF60068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of DatabaseCursor.read(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 24))();
}

{
  v3 = (*(a3 + 32))();
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  return (*(a3 + 40))();
}

{
  return (*(a3 + 48))();
}

{
  return (*(a3 + 56))();
}

{
  return (*(a3 + 64))();
}

{
  return (*(a3 + 72))();
}

{
  return (*(a3 + 80))();
}

{
  return (*(a3 + 88))();
}

{
  return (*(a3 + 96))();
}

{
  return (*(a3 + 104))();
}

{
  return (*(a3 + 112))();
}

{
  return (*(a3 + 120))();
}

uint64_t sub_1BAF6047C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAF604B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BAF60500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAF6055C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1BAF60614(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1BAF6055C(a1, &a1[a2]);
  }

  v3 = sub_1BAF8E438();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1BAF8E3F8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1BAF8E5C8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for WorkOrder()
{
  result = qword_1EDBA2288;
  if (!qword_1EDBA2288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF60740()
{
  sub_1BAF8E728();
  if (v0 <= 0x3F)
  {
    sub_1BAF51074();
    if (v1 <= 0x3F)
    {
      sub_1BAF6081C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BAF6081C()
{
  if (!qword_1EDBA38A0)
  {
    sub_1BAF8E728();
    v0 = sub_1BAF8F0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBA38A0);
    }
  }
}

uint64_t sub_1BAF60878(void *a1, void *a2)
{
  v4 = sub_1BAF8E728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v53 - v11;
  v13 = sub_1BAF2DB10(&qword_1EBC36DF8, &qword_1BAF97AC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for WorkOrder();
  v18 = v17[5];
  if ((_s12APFoundation14ExpirationDateV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23 || (*v20 != *v22 || v21 != v23) && (sub_1BAF8F4C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (qword_1BAF97AC8[*(a1 + v17[7])] != qword_1BAF97AC8[*(a2 + v17[7])])
  {
    return 0;
  }

  v24 = v17[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_1BAF8F4C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = v17[9];
  v30 = *(v13 + 48);
  sub_1BAF400F4(a1 + v29, v16);
  v54 = v30;
  sub_1BAF400F4(a2 + v29, &v16[v30]);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) != 1)
  {
    sub_1BAF400F4(v16, v12);
    if (v31(&v16[v54], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v54], v4);
      sub_1BAF60D58();
      v32 = sub_1BAF8EC18();
      v33 = *(v5 + 8);
      v33(v8, v4);
      v33(v12, v4);
      sub_1BAF32F04(v16, &unk_1EBC36750, &qword_1BAF95590);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_27;
    }

    (*(v5 + 8))(v12, v4);
LABEL_25:
    sub_1BAF32F04(v16, &qword_1EBC36DF8, &qword_1BAF97AC0);
    return 0;
  }

  if (v31(&v16[v54], 1, v4) != 1)
  {
    goto LABEL_25;
  }

  sub_1BAF32F04(v16, &unk_1EBC36750, &qword_1BAF95590);
LABEL_27:
  if (*(a1 + v17[10]) != *(a2 + v17[10]))
  {
    return 0;
  }

  v34 = v17[11];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v38 = v17[12];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  if ((v39 != *v41 || v40 != v41[1]) && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v42 = v17[13];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1BAF8F4C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v47 = v17[14];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (v51 && (*v48 == *v50 && v49 == v51 || (sub_1BAF8F4C8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v51)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1BAF60D58()
{
  result = qword_1EDBA38A8;
  if (!qword_1EDBA38A8)
  {
    sub_1BAF8E728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA38A8);
  }

  return result;
}

Swift::Double_optional __swiftcall NullKeyValueSource.doubleFor(key:)(Swift::String key)
{
  v1 = 0;
  result.is_nil = v1;
  return result;
}

Swift::String_optional __swiftcall NullKeyValueSource.stringFor(key:)(Swift::String key)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void *encodeJSONData<A>(_:using:)(uint64_t a1, void (*a2)(uint64_t))
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  a2(a1);
  v5 = sub_1BAF8EB78();

  v11[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v11];

  v7 = v11[0];
  if (v6)
  {
    v8 = sub_1BAF8E5F8();
  }

  else
  {
    v8 = v7;
    sub_1BAF8E4C8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t decodeJSONData<A>(_:using:)(uint64_t a1, uint64_t a2, void (*a3)())
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = sub_1BAF8E5D8();
  v12[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v12];

  if (!v6)
  {
    v9 = v12[0];
    sub_1BAF8E4C8();

LABEL_6:
    result = swift_willThrow();
    goto LABEL_7;
  }

  v7 = v12[0];
  sub_1BAF8F168();
  swift_unknownObjectRelease();
  sub_1BAF2DB10(&qword_1EBC36CF8, &qword_1BAF97B20);
  if (!swift_dynamicCast())
  {
    sub_1BAF61B7C();
    swift_allocError();
    *v10 = 0xD000000000000012;
    v10[1] = 0x80000001BAFA31B0;
    goto LABEL_6;
  }

  a3();

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSD12APFoundationSSRszypRs_rlE16requiredValueForyqd__SSAA16JSONParsingErrorOYKlF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1BAF8F0D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  if (*(a3 + 16) && (v17 = sub_1BAF31DBC(a1, a2), (v18 & 1) != 0))
  {
    sub_1BAF45388(*(a3 + 56) + 32 * v17, &v21);
    sub_1BAF32E44(&v21, &v23);
    sub_1BAF45388(&v23, &v21);
    if (swift_dynamicCast())
    {
      sub_1BADC5BE0(&v23);
      v19 = *(a4 - 8);
      (*(v19 + 56))(v16, 0, 1, a4);
      return (*(v19 + 32))(a6, v16, a4);
    }

    else
    {
      (*(*(a4 - 8) + 56))(v16, 1, 1, a4);
      (*(v13 + 8))(v16, v12);
      *a5 = a1;
      *(a5 + 8) = a2;
      *(a5 + 16) = 0;
      *&v21 = a1;
      *(&v21 + 1) = a2;
      v22 = 0;
      sub_1BAF61DAC();

      swift_willThrowTypedImpl();
      return sub_1BADC5BE0(&v23);
    }
  }

  else
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = 1;
    *&v23 = a1;
    *(&v23 + 1) = a2;
    v24 = 1;
    sub_1BAF61DAC();

    return swift_willThrowTypedImpl();
  }
}

uint64_t _sSD12APFoundationSSRszypRs_rlE16requiredValueFor_9transformqd_0_SS_qd_0_qd__XEtAA16JSONParsingErrorOYKr0_lF(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _sSD12APFoundationSSRszypRs_rlE16requiredValueForyqd__SSAA16JSONParsingErrorOYKlF(v14, v17, v19, v18, &v22, v16);
  if (v8)
  {
    v21 = v23;
    *a8 = v22;
    *(a8 + 16) = v21;
  }

  else
  {
    a3(v16);
    return (*(v12 + 8))(v16, a6);
  }

  return result;
}

uint64_t _sSD12APFoundationSSRszypRs_rlE16requiredValueFor_9transformqd_0_SS_qd_0_Sgqd__XEtAA16JSONParsingErrorOYKr0_lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v31 = a4;
  v32 = a3;
  v29 = a8;
  v30 = *(a6 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v16;
  v17 = sub_1BAF8F0D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  v22 = v36;
  result = _sSD12APFoundationSSRszypRs_rlE16requiredValueForyqd__SSAA16JSONParsingErrorOYKlF(a1, a2, a5, a6, &v34, v15);
  if (v22)
  {
    v24 = v35;
    *a7 = v34;
    *(a7 + 16) = v24;
  }

  else
  {
    v28 = v17;
    v36 = a2;
    v32(v15);
    (*(v30 + 8))(v15, a6);
    v25 = v33;
    v26 = *(v33 - 8);
    if ((*(v26 + 48))(v21, 1, v33) == 1)
    {
      (*(v18 + 8))(v21, v28);
      v27 = v36;
      *a7 = a1;
      *(a7 + 8) = v27;
      *(a7 + 16) = 0;
      *&v34 = a1;
      *(&v34 + 1) = v27;
      v35 = 0;
      sub_1BAF61DAC();

      return swift_willThrowTypedImpl();
    }

    else
    {
      return (*(v26 + 32))(v29, v21, v25);
    }
  }

  return result;
}