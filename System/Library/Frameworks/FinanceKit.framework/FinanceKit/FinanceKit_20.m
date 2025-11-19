id StorableColor.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992CF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7375984();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    sub_1B7801E18();
    *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_red] = v9;
    v17 = 1;
    sub_1B7801E18();
    *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_green] = v10;
    v17 = 2;
    sub_1B7801E18();
    *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_blue] = v12;
    v17 = 3;
    sub_1B7801E18();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha] = v14;
    v16.receiver = v1;
    v16.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id StorableColor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B7375778@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = StorableColor.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B73757EC()
{
  v0 = sub_1B7801D18();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_1B7375838(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1B7800838();
  [a1 decodeDoubleForKey_];
  v6 = v5;

  *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_red] = v6;
  v7 = sub_1B7800838();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_green] = v9;
  v10 = sub_1B7800838();
  [a1 decodeDoubleForKey_];
  v12 = v11;

  *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_blue] = v12;
  v13 = sub_1B7800838();
  [a1 decodeDoubleForKey_];
  v15 = v14;

  *&v1[OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha] = v15;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_1B7375984()
{
  result = qword_1EB992CE8;
  if (!qword_1EB992CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992CE8);
  }

  return result;
}

unint64_t sub_1B7375A78()
{
  result = qword_1EB992CF8;
  if (!qword_1EB992CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992CF8);
  }

  return result;
}

unint64_t sub_1B7375AD0()
{
  result = qword_1EB992D00;
  if (!qword_1EB992D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D00);
  }

  return result;
}

unint64_t sub_1B7375B28()
{
  result = qword_1EB992D08;
  if (!qword_1EB992D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D08);
  }

  return result;
}

void sub_1B7375B84(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 countryCodes];
  v4 = sub_1B7800FA8();

  *a2 = v4;
}

id ManagedPIIRedactionConfiguration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedPIIRedactionConfiguration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedPIIRedactionConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedPIIRedactionConfiguration.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithContext_];
  v5 = sub_1B7800F78();

  [v4 setCountryCodes_];

  return v4;
}

id ManagedPIIRedactionConfiguration.__allocating_init(_:context:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithContext_];
  sub_1B723B658(v4);

  v6 = sub_1B7800F78();

  [v5 setCountryCodes_];

  return v5;
}

uint64_t FinanceStore.insertOrUpdateFoundInMailItems(_:forTransactionIDs:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for FinanceStore.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7375F44, 0, 0);
}

uint64_t sub_1B7375F44()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 24);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7375FE0, 0, 0);
}

uint64_t sub_1B7375FE0()
{
  v1 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1B7376084;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7376084()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B7376224;
  }

  else
  {
    v2 = sub_1B73761A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73761A0()
{
  sub_1B71A4BF4(*(v0 + 112), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7376224()
{
  sub_1B71A4BF4(*(v0 + 112), type metadata accessor for FinanceStore.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.iconForFoundInMailItem(withID:generateIfNeeded:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 144) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = type metadata accessor for FinanceStore.Message();
  *(v4 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D10);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7376388, 0, 0);
}

uint64_t sub_1B7376388()
{
  v0[11] = *(v0[6] + 16);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1B7376428;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1B7708EC8(v3, v2);
}

uint64_t sub_1B7376428(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {

    v5 = v4[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7376588, 0, 0);
}

uint64_t sub_1B7376588()
{
  v1 = *(v0 + 112);
  if (v1 >> 60 != 15 || *(v0 + 144) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 120);
  sub_1B770905C();
  v7 = *(v0 + 72);
  if (v6)
  {

    v8 = *(v0 + 8);

    return v8();
  }

  sub_1B73780F8(*(v0 + 80), *(v0 + 72));
  v9 = type metadata accessor for FoundInMailItem();
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  v11 = *(v0 + 72);
  if (v10 == 1)
  {
    sub_1B7378168(*(v0 + 80));
    sub_1B7378168(v11);
    v1 = *(v0 + 112);
LABEL_6:
    v3 = *(v0 + 104);

    v4 = *(v0 + 8);

    return v4(v3, v1);
  }

  v12 = *(v0 + 64);
  v13 = (v11 + *(v9 + 32));
  v15 = *v13;
  v14 = v13[1];

  sub_1B71A4BF4(v11, type metadata accessor for FoundInMailItem);
  *v12 = v15;
  v12[1] = v14;
  swift_storeEnumTagMultiPayload();
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *v16 = v0;
  v16[1] = sub_1B73767F8;
  v17 = *(v0 + 64);

  return sub_1B72713DC(v0 + 16, v17);
}

uint64_t sub_1B73767F8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  sub_1B71A4BF4(*(v2 + 64), type metadata accessor for FinanceStore.Message);
  if (v0)
  {
    v3 = sub_1B73769D4;
  }

  else
  {
    v3 = sub_1B7376940;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7376940()
{
  sub_1B7378168(v0[10]);
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1B73769D4()
{
  sub_1B7378168(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.iconForFoundInMailItem(withEmail:generateIfNeeded:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 232) = a3;
  *(v4 + 72) = a1;
  *(v4 + 96) = type metadata accessor for FinanceStore.Message();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7376AF8, 0, 0);
}

uint64_t sub_1B7376AF8()
{
  v0[14] = *(v0[11] + 16);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1B7376B98;
  v3 = v0[9];
  v2 = v0[10];

  return sub_1B7709164(v3, v2);
}

uint64_t sub_1B7376B98(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 128) = a1;
  *(v4 + 136) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7376CE8, 0, 0);
}

uint64_t sub_1B7376CE8()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1B7376EE0;
    v3 = *(v0 + 128);

    return sub_1B7708EC8(v3, v1);
  }

  else if (*(v0 + 232) == 1)
  {
    *(v0 + 168) = xmmword_1B7810080;
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    *v5 = *(v0 + 72);
    v5[1] = v6;
    swift_storeEnumTagMultiPayload();

    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_1B7377214;
    v8 = *(v0 + 104);

    return sub_1B72713DC(v0 + 56, v8);
  }

  else
  {
    *(v0 + 200) = xmmword_1B7810080;
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_1B7377454;
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);

    return sub_1B77092F8(v0 + 16, v10, v11);
  }
}

uint64_t sub_1B7376EE0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7377050, 0, 0);
}

uint64_t sub_1B7377050()
{
  v1 = *(v0 + 160);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 152);
    if (*(v0 + 232))
    {
      *(v0 + 168) = v2;
      *(v0 + 176) = v1;
      v3 = *(v0 + 104);
      v4 = *(v0 + 80);
      *v3 = *(v0 + 72);
      v3[1] = v4;
      swift_storeEnumTagMultiPayload();

      v5 = swift_task_alloc();
      *(v0 + 184) = v5;
      *v5 = v0;
      v5[1] = sub_1B7377214;
      v6 = *(v0 + 104);

      return sub_1B72713DC(v0 + 56, v6);
    }

    else
    {
      *(v0 + 200) = v2;
      *(v0 + 208) = v1;
      v10 = swift_task_alloc();
      *(v0 + 216) = v10;
      *v10 = v0;
      v10[1] = sub_1B7377454;
      v11 = *(v0 + 72);
      v12 = *(v0 + 80);

      return sub_1B77092F8(v0 + 16, v11, v12);
    }
  }

  else
  {
    v8 = *(v0 + 152);

    v9 = *(v0 + 8);

    return v9(v8, v1);
  }
}

uint64_t sub_1B7377214()
{
  v2 = *(*v1 + 104);
  *(*v1 + 192) = v0;

  sub_1B71A4BF4(v2, type metadata accessor for FinanceStore.Message);
  if (v0)
  {
    v3 = sub_1B7377630;
  }

  else
  {
    v3 = sub_1B7377358;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7377358()
{
  sub_1B72380B8(v0[21], v0[22]);
  v2 = v0[7];
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    v0[25] = v2;
    v0[26] = v1;
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_1B7377454;
    v4 = v0[9];
    v5 = v0[10];

    return sub_1B77092F8((v0 + 2), v4, v5);
  }

  else
  {

    v7 = v0[1];

    return v7(v2, v1);
  }
}

uint64_t sub_1B7377454()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1B737769C;
  }

  else
  {
    v2 = sub_1B7377568;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7377568()
{
  sub_1B72380B8(v0[25], v0[26]);
  v1 = v0[6];
  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0xF000000000000000;
  }

  else
  {
    v5 = v0[4];
    v4 = v0[5];
    v2 = v0[2];
    v3 = v0[3];
    sub_1B720ABEC(v2, v3);
    sub_1B720ACE8(v2, v3, v5, v4, v1);
  }

  v6 = v0[1];

  return v6(v2, v3);
}

uint64_t sub_1B7377630()
{
  sub_1B72380B8(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B737769C()
{
  sub_1B72380B8(v0[25], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t FinanceStore.pruneFoundInInsightsforTransaction(withID:primaryAccountIdentifier:dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = type metadata accessor for FinanceStore.Message();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 88) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1B73777B0, 0, 0);
}

uint64_t sub_1B73777B0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v5;
  *(v2 + 16) = v4;
  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  swift_storeEnumTagMultiPayload();

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B73778A4;
  v7 = *(v0 + 64);

  return (sub_1B7271C34)(v7);
}

uint64_t sub_1B73778A4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  sub_1B71A4BF4(*(v2 + 64), type metadata accessor for FinanceStore.Message);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7377A28, 0, 0);
}

uint64_t sub_1B7377A28()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t FinanceStore.pruneFoundInInsightsforTransactions(withIDs:dataSource:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for FinanceStore.Message();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B7377B30, 0, 0);
}

uint64_t sub_1B7377B30()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v1;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1B7377C0C;
  v4 = *(v0 + 40);

  return sub_1B7271C34(v4);
}

uint64_t sub_1B7377C0C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 56) = v0;

  sub_1B71A4BF4(*(v2 + 40), type metadata accessor for FinanceStore.Message);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B73781D0, 0, 0);
}

uint64_t FinanceStore.pruneOrphanedMailItems(withMessageIDs:dataSource:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for FinanceStore.Message();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B7377E30, 0, 0);
}

uint64_t sub_1B7377E30()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v1;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1B7377F0C;
  v4 = *(v0 + 40);

  return sub_1B7271C34(v4);
}

uint64_t sub_1B7377F0C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 56) = v0;

  sub_1B71A4BF4(*(v2 + 40), type metadata accessor for FinanceStore.Message);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7378090, 0, 0);
}

uint64_t sub_1B7378090()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1B73780F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7378168(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B73781D4()
{
  if (*(v0 + 16) == 1)
  {
    *(v0 + 16) = 0;
  }
}

uint64_t ManagedFoundInTransactionInsightDeleter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t ManagedFoundInTransactionInsightDeleter.init()()
{
  result = v0;
  *(v0 + 16) = 1;
  return result;
}

void ManagedFoundInTransactionInsightDeleter.removeFromInsight(messageIDs:dataSource:on:in:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a4);
  if (!v4)
  {
    v8 = v7;
    v9 = [v7 foundInInsightObject];

    if (v9)
    {
      sub_1B73781D4();
      v10 = v6;
      ManagedFoundInMailItemDeleter.deleteFoundInMailItems(messageIDs:with:associatedWith:in:)(a1, &v10, v9);
    }
  }
}

uint64_t CoreDataStoreClientConfiguration.init(url:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CoreDataStoreClientConfiguration(0);
  *(a3 + *(v6 + 20)) = 0;
  v7 = sub_1B77FF4F8();
  result = (*(*(v7 - 8) + 32))(a3, a1, v7);
  *(a3 + *(v6 + 24)) = a2;
  return result;
}

uint64_t sub_1B73783E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1B77FF4F8();
  __swift_allocate_value_buffer(v3, qword_1EDAF7A68);
  v4 = __swift_project_value_buffer(v3, qword_1EDAF7A68);
  static URL.financeCloudDatabaseURL.getter(v2);
  v5 = *(v3 - 8);
  if ((*(v5 + 48))(v2, 1, v3) != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  sub_1B726A798(v2);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B737857C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1B77FF4F8();
  __swift_allocate_value_buffer(v3, qword_1EDAF7A40);
  v4 = __swift_project_value_buffer(v3, qword_1EDAF7A40);
  static URL.financeDropboxDatabaseURL.getter(v2);
  v5 = *(v3 - 8);
  if ((*(v5 + 48))(v2, 1, v3) != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  sub_1B726A798(v2);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B7378710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1B77FF4F8();
  __swift_allocate_value_buffer(v3, qword_1EDAFCB58);
  v4 = __swift_project_value_buffer(v3, qword_1EDAFCB58);
  static URL.financeLocalDatabaseURL.getter(v2);
  v5 = *(v3 - 8);
  if ((*(v5 + 48))(v2, 1, v3) != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  sub_1B726A798(v2);
  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B73788A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B77FF4F8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t CoreDataStoreClientConfiguration.isViewClient.setter(char a1)
{
  result = type metadata accessor for CoreDataStoreClientConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t CoreDataStoreCloudConfiguration.containerIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreDataStoreCloudConfiguration.containerIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CoreDataStoreCloudConfiguration.persistentStoreURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoreDataStoreCloudConfiguration.persistentStoreURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CoreDataStoreCloudConfiguration.dropboxContainerIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 24));

  return v1;
}

uint64_t CoreDataStoreCloudConfiguration.dropboxContainerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CoreDataStoreCloudConfiguration.isDropboxPersistentStoreEnabled.setter(char a1)
{
  result = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t CoreDataStoreCloudConfiguration.dropboxPersistentStoreURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 32);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoreDataStoreCloudConfiguration.dropboxPersistentStoreURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 32);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CoreDataStoreCloudConfiguration.isMirroringEnabled.setter(char a1)
{
  result = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t CoreDataStoreCloudConfiguration.init(overrideContainerIdentifierForDevelopment:overrideDropboxContainerIdentifierForDevelopment:)@<X0>(char a1@<W0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  v7 = v6[5];
  if (qword_1EDAF7A60 != -1)
  {
    swift_once();
  }

  v8 = sub_1B77FF4F8();
  v9 = __swift_project_value_buffer(v8, qword_1EDAF7A68);
  v10 = *(*(v8 - 8) + 16);
  v10(a3 + v7, v9, v8);
  *(a3 + v6[7]) = 1;
  v11 = v6[8];
  if (qword_1EDAF7A38 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1EDAF7A40);
  result = (v10)(a3 + v11, v12, v8);
  *(a3 + v6[9]) = 1;
  v14 = 0xD000000000000021;
  v15 = "nance.dropbox.development";
  if ((a1 & 1) == 0)
  {
    v14 = 0xD000000000000015;
    v15 = "ApplePayOrder_1.0";
  }

  *a3 = v14;
  a3[1] = v15 | 0x8000000000000000;
  v16 = "$_mailItemDeleter";
  if (a2)
  {
    v16 = "com.apple.pay.finance.dropbox";
  }

  v17 = 0xD000000000000029;
  if ((a2 & 1) == 0)
  {
    v17 = 0xD00000000000001DLL;
  }

  v18 = (a3 + v6[6]);
  *v18 = v17;
  v18[1] = v16 | 0x8000000000000000;
  return result;
}

uint64_t CoreDataStoreLocalConfiguration.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void sub_1B737914C()
{
  sub_1B73791C0();
  if (v0 <= 0x3F)
  {
    sub_1B7379254();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B73791C0()
{
  if (!qword_1EDAFAFD0)
  {
    type metadata accessor for CoreDataStoreLocalConfiguration(255);
    type metadata accessor for CoreDataStoreCloudConfiguration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDAFAFD0);
    }
  }
}

void sub_1B7379254()
{
  if (!qword_1EDAFAFA0)
  {
    v0 = type metadata accessor for CoreDataStoreClientConfiguration(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAFAFA0);
    }
  }
}

void sub_1B73792C4()
{
  sub_1B77FF4F8();
  if (v0 <= 0x3F)
  {
    sub_1B7379350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7379350()
{
  if (!qword_1EDAFAF40)
  {
    v0 = sub_1B7800748();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAFAF40);
    }
  }
}

uint64_t sub_1B73793DC()
{
  result = sub_1B77FF4F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7379494()
{
  result = sub_1B77FF4F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ManagedTransactionImporterError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t ManagedTransactionImporter.__allocating_init()()
{
  v0 = swift_allocObject();
  ManagedTransactionImporter.init()();
  return v0;
}

void *ManagedTransactionImporter.init()()
{
  type metadata accessor for ManagedApplePayTransactionInsightImporter();
  v0[2] = swift_allocObject();
  type metadata accessor for ManagedBankMerchantInformationInsightImporter();
  v0[3] = swift_allocObject();
  v1 = type metadata accessor for CoreAnalyticsProvider();
  v2 = swift_allocObject();
  type metadata accessor for ManagedMapsTransactionInsightImporter();
  v3 = swift_allocObject();
  v7 = v1;
  v8 = &protocol witness table for CoreAnalyticsProvider;
  *&v6 = v2;
  type metadata accessor for ManagedMapsMerchantImporter();
  v3[2] = swift_allocObject();
  type metadata accessor for ManagedMapsBrandImporter();
  v3[3] = swift_allocObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  v3[4] = swift_allocObject();
  v3[5] = &unk_1F2F42478;
  sub_1B71E4C44(&v6, (v3 + 6));
  v0[4] = v3;
  type metadata accessor for ManagedContactTransactionInsightImporter();
  v0[5] = swift_allocObject();
  type metadata accessor for ManagedUserTransactionInsightImporter();
  v4 = swift_allocObject();
  *(v4 + 16) = swift_allocObject();
  v0[6] = v4;
  v0[7] = swift_allocObject();
  return v0;
}

uint64_t ManagedTransactionImporter.insertOrUpdateTransactions(_:with:context:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v35 = a1;
  v5 = type metadata accessor for RawBankConnectData.Transaction(0);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1B7800008();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = *a2;
  v38 = a2[1];
  v39 = v15;
  v16 = a2[2];
  v36 = a2[3];
  v37 = v16;
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v17 = sub_1B7800038();
  __swift_project_value_buffer(v17, qword_1EBA45940);
  sub_1B77FFFF8();
  v18 = sub_1B7800018();
  v19 = sub_1B7801388();
  v20 = sub_1B7801738();
  v42 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1B77FFFE8();
    _os_signpost_emit_with_name_impl(&dword_1B7198000, v18, v19, v22, "InsertOrUpdateTransactions", "", v21, 2u);
    v23 = v21;
    a3 = v42;
    MEMORY[0x1B8CA7A40](v23, -1, -1);
  }

  (*(v9 + 16))(v12, v14, v8);
  sub_1B7800078();
  v24 = swift_allocObject();
  v25 = sub_1B7800068();
  (*(v9 + 8))(v14, v8);
  v41[0] = v39;
  v41[1] = v38;
  v41[2] = v37;
  v41[3] = v36;
  v26 = v40;
  v27 = sub_1B737ABB0(v41);
  if (v26)
  {
    sub_1B7379B54("InsertOrUpdateTransactions", 26, 2);
  }

  else
  {
    v28 = v27;
    v29 = v35;
    v30 = *(v35 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    if (v30)
    {
      v40 = v25;
      v41[0] = MEMORY[0x1E69E7CC0];
      sub_1B7801B98();
      v31 = v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v32 = *(v34 + 72);
      do
      {
        sub_1B737AD6C(v31, v7);
        sub_1B7379E30(v28, v7, a3);
        sub_1B737B920(v7, type metadata accessor for RawBankConnectData.Transaction);
        sub_1B7801B68();
        sub_1B7801BA8();
        a3 = v42;
        sub_1B7801BB8();
        sub_1B7801B78();
        v31 += v32;
        --v30;
      }

      while (v30);
      v24 = v41[0];
    }

    [v28 setEarliestTransactionsRequestStartDate_];

    sub_1B7379B54("InsertOrUpdateTransactions", 26, 2);
  }

  return v24;
}

uint64_t sub_1B7379B54(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = sub_1B7800048();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7800008();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB98EAC8 != -1)
  {
    swift_once();
  }

  v12 = sub_1B7800038();
  __swift_project_value_buffer(v12, qword_1EBA45940);
  v13 = sub_1B7800018();
  sub_1B7800058();
  v18 = sub_1B7801378();
  result = sub_1B7801738();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_1B7800088();

      if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1B77FFFE8();
      _os_signpost_emit_with_name_impl(&dword_1B7198000, v13, v18, v17, a1, v15, v16, 2u);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1B7379E30(void *a1, void *a2, void *a3)
{
  v38 = a3;
  v35 = type metadata accessor for RawBankConnectData.Transaction(0);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInternalTransaction();
  v7 = *a2;
  v6 = a2[1];
  v37 = a2;

  v8 = [a1 accountId];
  v9 = sub_1B7800868();
  v11 = v10;

  v36 = a1;
  v12 = [a1 institutionId];
  v13 = sub_1B7800868();
  v15 = v14;

  *&v40 = v7;
  *(&v40 + 1) = v6;
  *&v41 = v9;
  *(&v41 + 1) = v11;
  *&v42 = v13;
  *(&v42 + 1) = v15;
  v16 = v38;
  v17 = v50;
  v18 = static ManagedInternalTransaction.existingTransaction(with:in:)(&v40);

  if (!v17)
  {
    v19 = v35;
    v21 = v36;
    v20 = v37;
    v50 = v18;
    if (v18)
    {
      v18 = v18;
      _s10FinanceKit26ManagedInternalTransactionC6update_07withRawE0yAC_AA0H15BankConnectDataO0E0VtFZ_0(v18, v20);
    }

    else
    {
      v22 = v37;
      v23 = v34;
      sub_1B737AD6C(v37, v34);
      v24 = v21;
      v25 = v16;
      v26 = sub_1B777BED8(v23, v24, v25);
      v20 = v22;
      v18 = v26;
    }

    v27 = (v20 + *(v19 + 64));
    v28 = v27[7];
    v46 = v27[6];
    v47 = v28;
    v29 = v27[9];
    v48 = v27[8];
    v49 = v29;
    v30 = v27[3];
    v42 = v27[2];
    v43 = v30;
    v31 = v27[5];
    v44 = v27[4];
    v45 = v31;
    v32 = v27[1];
    v40 = *v27;
    v41 = v32;
    if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v40) != 1)
    {
      v39[6] = v46;
      v39[7] = v47;
      v39[8] = v48;
      v39[9] = v49;
      v39[2] = v42;
      v39[3] = v43;
      v39[4] = v44;
      v39[5] = v45;
      v39[0] = v40;
      v39[1] = v41;
      sub_1B7739C00(v39, v18, v16);
    }

    ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v18, v16);
    [v18 setIsVisible_];
  }

  return v18;
}

uint64_t ManagedTransactionImporter.deinit()
{

  return v0;
}

uint64_t ManagedTransactionImporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id ManagedTransactionImporter.insertOrUpdateTransaction(account:appleTransaction:context:)(void *a1, void *a2, void *a3)
{
  type metadata accessor for ManagedInternalTransaction();
  v50 = a2;
  v5 = [a2 transactionId];
  v6 = sub_1B7800868();
  v8 = v7;

  v9 = [a1 accountId];
  v10 = sub_1B7800868();
  v12 = v11;

  v49 = a1;
  v13 = [a1 institutionId];
  v14 = sub_1B7800868();
  v16 = v15;

  v56.receiver = swift_getObjCClassFromMetadata();
  v56.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v17 = objc_msgSendSuper2(&v56, sel_fetchRequest);
  v18 = sub_1B7800C18();
  [v17 setRelationshipKeyPathsForPrefetching_];

  *&v53 = v10;
  *(&v53 + 1) = v12;
  v54 = v14;
  v55 = v16;
  v57 = 2;
  v19 = sub_1B74F4A1C(v6, v8, &v53, &v57);

  [v17 setPredicate_];

  v20 = sub_1B7801498();
  if (!v52)
  {
    if (v20 >> 62)
    {
      v31 = v20;
      v32 = sub_1B7801958();
      v20 = v31;
      if (v32)
      {
        goto LABEL_5;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1B8CA5DC0](0);
        goto LABEL_8;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v20 + 32);
LABEL_8:
        v22 = v21;

        v17 = v50;
        v23 = v22;
LABEL_9:
        v24 = v23;
        if (qword_1EDAFAF50 != -1)
        {
          swift_once();
        }

        v25 = sub_1B78000B8();
        __swift_project_value_buffer(v25, qword_1EDAFAF58);
        v26 = sub_1B7800098();
        v27 = sub_1B78011F8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1B7198000, v26, v27, "Existing transaction found, updating existing transaction.", v28, 2u);
          MEMORY[0x1B8CA7A40](v28, -1, -1);
        }

        _s10FinanceKit26ManagedInternalTransactionC6update_011withPaymentE026shouldUpdateRelatedObjectsyAC_So09FKPaymentE0CSbtFZ_0(v24, v17, 1);
        v29 = [v17 insights];
        if (!v29)
        {
          goto LABEL_28;
        }

        v30 = v29;
        sub_1B737A764(v29, v24, a3);
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_32;
    }

    v17 = v50;
    v33 = [v50 serviceIdentifier];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1B7800868();
      v37 = v36;

      v47 = static ManagedInternalTransaction.existingTransaction(with:in:)(v35, v37);

      v16 = v49;
      if (v47)
      {
        v23 = v47;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = v49;
    }

    if (qword_1EDAFAF50 == -1)
    {
LABEL_20:
      v38 = sub_1B78000B8();
      __swift_project_value_buffer(v38, qword_1EDAFAF58);
      v39 = sub_1B7800098();
      v40 = sub_1B78011F8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1B7198000, v39, v40, "No existing transaction found, inserting a new transaction.", v41, 2u);
        v42 = v41;
        v16 = v49;
        MEMORY[0x1B8CA7A40](v42, -1, -1);
      }

      v43 = v17;
      v44 = v16;
      v45 = a3;
      v24 = ManagedInternalTransaction.__allocating_init(_:for:context:)(v43, v44, v45);
      v46 = [v43 insights];
      if (!v46)
      {
        v23 = 0;
LABEL_28:
        v19 = v24;
        ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v19, a3);

        [v19 setIsVisible_];
        return v19;
      }

      v30 = v46;
      sub_1B737A764(v46, v24, v45);
      v23 = 0;
LABEL_27:

      goto LABEL_28;
    }

LABEL_32:
    swift_once();
    goto LABEL_20;
  }

  return v19;
}

void sub_1B737A764(void *a1, void *a2, id a3)
{
  v5 = v3;
  v35 = sub_1B77FF988();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MapsTransactionInsight(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 applePayInsight];
  if (v14)
  {
    v15 = v14;
    ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
    if (v4)
    {
LABEL_3:

      return;
    }

    v17 = v16;
    v33 = a3;
    v18 = [v16 applePayInsightObject];
    if (!v18)
    {
      type metadata accessor for ManagedApplePayTransactionInsight();
      v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v18 = [v19 initWithContext_];
      [v17 setApplePayInsightObject_];
    }

    sub_1B76F93D4(v18, v15, a2);
    a3 = v33;
  }

  v20 = [a1 mapsInsight];
  if (v20)
  {
    v21 = *(v5 + 32);
    v22 = v20;
    MapsTransactionInsight.init(_:)(v22, v13);
    sub_1B77FF938();
    ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
    if (v4)
    {

      (*(v34 + 8))(v10, v35);
      sub_1B737B920(v13, type metadata accessor for MapsTransactionInsight);
      return;
    }

    v24 = v23;
    v32[1] = v21;
    v25 = [v23 mapsInsightObject];
    if (!v25)
    {
      type metadata accessor for ManagedMapsTransactionInsight();
      v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v24 setMapsInsightObject_];
    }

    v33 = v24;
    sub_1B73D8130(v25, v13, a2, v10, a3);
    [v33 setTransactionIconObject_];
    ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(a2, a3);

    (*(v34 + 8))(v10, v35);
    sub_1B737B920(v13, type metadata accessor for MapsTransactionInsight);
  }

  v26 = [a1 contactInsight];
  if (!v26 || (v27 = v26, sub_1B75DA01C(v26, a2, a3), v27, !v4))
  {
    v28 = [a1 userInsight];
    if (v28)
    {
      v15 = v28;
      ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
      if (v4)
      {
        goto LABEL_3;
      }

      v30 = v29;
      v31 = [v29 userInsightObject];
      if (!v31)
      {
        type metadata accessor for ManagedUserTransactionInsight();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
        [v30 setUserInsightObject_];
      }

      sub_1B726B38C(v31, v15);
    }
  }
}

void *sub_1B737ABB0(uint64_t a1)
{
  v2 = v1;
  v13 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for ManagedInternalAccount();
  v14 = v13;
  v15 = v3;
  v16 = v4;
  v5 = static ManagedInternalAccount.existingAccount(with:in:)(&v14);
  if (!v1)
  {
    v2 = v5;
    if (v5)
    {
      if (![v5 isAccountEnabled])
      {
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v7 = sub_1B78000B8();
        __swift_project_value_buffer(v7, qword_1EDAF65B0);
        v8 = sub_1B7800098();
        v9 = sub_1B78011B8();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1B7198000, v8, v9, "Unable to update account, account is disabled", v10, 2u);
          MEMORY[0x1B8CA7A40](v10, -1, -1);
        }

        sub_1B737B9E8();
        swift_allocError();
        *v11 = 1;
        swift_willThrow();
      }
    }

    else
    {
      sub_1B737B9E8();
      v2 = swift_allocError();
      *v12 = 0;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_1B737AD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Transaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1B737ADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v29 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B781E650;
  v31 = v29;
  v32 = v11;
  v33 = v12;
  v14 = sub_1B77FEA78();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10, a4, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  v30 = 1;
  v16 = _s10FinanceKit26ManagedInternalTransactionC24predicateForTransactions4with14transactionIDs12dateInterval6sourceSo11NSPredicateCAA31FullyQualifiedAccountIdentifierV_SaySSGSg10Foundation04DateM0VSgAA0E6SourceOSgtFZ_0(&v31, 0, v10, &v30);
  sub_1B737B980(v10);
  *(v13 + 32) = v16;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v17 = swift_allocObject();
  v29 = xmmword_1B7807CD0;
  *(v17 + 16) = xmmword_1B7807CD0;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80);
  *(v17 + 64) = sub_1B728216C(&qword_1EDAF6490, &qword_1EB991D80);
  *(v17 + 32) = a2;

  *(v13 + 40) = sub_1B78010E8();
  v18 = swift_allocObject();
  *(v18 + 16) = v29;
  v19 = *(a3 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    *&v31 = MEMORY[0x1E69E7CC0];
    sub_1B71FDCD8(0, v19, 0);
    v20 = v31;
    v21 = (a3 + 32);
    v22 = *(v31 + 16);
    do
    {
      v24 = *v21++;
      v23 = v24;
      *&v31 = v20;
      v25 = *(v20 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B71FDCD8((v25 > 1), v22 + 1, 1);
        v20 = v31;
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + 2 * v22++ + 32) = v23;
      --v19;
    }

    while (v19);
  }

  *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D20);
  *(v18 + 64) = sub_1B728216C(&qword_1EB992D28, &qword_1EB992D20);
  *(v18 + 32) = v20;
  *(v13 + 48) = sub_1B78010E8();
  v26 = sub_1B7800C18();

  v27 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v27;
}

void sub_1B737B18C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 2);
  v58 = *a1;
  v59 = v10;
  v11 = sub_1B737ABB0(&v58);
  if (!v5)
  {
    v55 = a2;
    v12 = v11;
    type metadata accessor for ManagedInternalTransaction();
    v57.receiver = swift_getObjCClassFromMetadata();
    v57.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
    v13 = objc_msgSendSuper2(&v57, sel_fetchRequest);
    v53 = a4;
    v14 = sub_1B7800C18();
    [v13 setRelationshipKeyPathsForPrefetching_];

    [v13 setReturnsObjectsAsFaults_];
    v15 = [v12 accountId];
    v16 = sub_1B7800868();
    v18 = v17;

    v19 = [v12 institutionId];
    v20 = sub_1B7800868();
    v22 = v21;

    *&v58 = v16;
    *(&v58 + 1) = v18;
    v59 = v20;
    v60 = v22;
    v23 = sub_1B737ADD0(&v58, v55, a3, v53);

    [v13 setPredicate_];

    v24 = sub_1B7801498();
    v52 = v12;
    v25 = v24 >> 62;
    v56 = v24;
    if (v24 >> 62)
    {
      goto LABEL_59;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7801958())
    {
      v27 = a5;
      a5 = v27;
      if (!i)
      {

        return;
      }

      v28 = 0;
      v29 = v56 & 0xC000000000000001;
      while (1)
      {
        if (v29)
        {
          v30 = MEMORY[0x1B8CA5DC0](v28, v56);
        }

        else
        {
          if (v28 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v30 = *(v56 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        [a5 deleteObject_];

        ++v28;
        if (v32 == i)
        {

          if (qword_1EDAF65A8 != -1)
          {
            swift_once();
          }

          v33 = sub_1B78000B8();
          __swift_project_value_buffer(v33, qword_1EDAF65B0);

          v34 = sub_1B7800098();
          v35 = sub_1B78011D8();
          v51 = v13;
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 134217984;
            if (v25)
            {
              v25 = v56;
              v37 = sub_1B7801958();
            }

            else
            {
              v37 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v25 = v56;
            }

            *(v36 + 4) = v37;

            _os_log_impl(&dword_1B7198000, v34, v35, "Not found %ld transactions in response.", v36, 0xCu);
            MEMORY[0x1B8CA7A40](v36, -1, -1);
          }

          else
          {

            v25 = v56;
          }

          v38 = 0;
          a5 = i;
LABEL_25:
          v13 = 0;
          v39 = *(&unk_1F2F433D8 + v38 + 32);
          v54 = v38 + 1;
          v61 = MEMORY[0x1E69E7CC0];
LABEL_29:
          if (v29)
          {
            v40 = MEMORY[0x1B8CA5DC0](v13, v25);
          }

          else
          {
            if (v13 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v40 = *(v25 + 8 * v13 + 32);
          }

          v41 = v40;
          v42 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
            break;
          }

          v43 = [v40 publicTransactionObject];
          v44 = [v43 statusValue];
          if (v44 <= 1)
          {
            if (!v44)
            {

              if (!v39)
              {
                goto LABEL_45;
              }

              goto LABEL_27;
            }

            if (v39 != 1)
            {
              goto LABEL_27;
            }
          }

          else
          {
            switch(v44)
            {
              case 2u:

                if (v39 != 2)
                {
                  goto LABEL_27;
                }

                break;
              case 3u:

                if (v39 == 3)
                {
                  break;
                }

LABEL_27:

LABEL_28:
                ++v13;
                if (v42 == a5)
                {
                  v45 = v61;

                  v46 = sub_1B7800098();
                  v47 = sub_1B78011D8();
                  if (os_log_type_enabled(v46, v47))
                  {
                    v48 = swift_slowAlloc();
                    *v48 = 134218240;
                    if (v45 < 0 || (v45 & 0x4000000000000000) != 0)
                    {
                      v49 = sub_1B7801958();
                    }

                    else
                    {
                      v49 = *(v45 + 16);
                    }

                    *(v48 + 4) = v49;

                    *(v48 + 12) = 512;
                    *(v48 + 14) = v39;
                    _os_log_impl(&dword_1B7198000, v46, v47, "Removing %ld transactions with\ntransaction status %hd", v48, 0x10u);
                    MEMORY[0x1B8CA7A40](v48, -1, -1);

                    v25 = v56;
                  }

                  else
                  {
                  }

                  v38 = v54;
                  a5 = i;
                  if (v54 == 5)
                  {

                    return;
                  }

                  goto LABEL_25;
                }

                goto LABEL_29;
              case 4u:

                if (v39 != 4)
                {
                  goto LABEL_27;
                }

                break;
              default:
                *&v58 = 0;
                *(&v58 + 1) = 0xE000000000000000;
                sub_1B7801A78();

                *&v58 = 0xD000000000000025;
                *(&v58 + 1) = 0x80000001B787C720;
                [v43 statusValue];
                v50 = sub_1B7802068();
                MEMORY[0x1B8CA4D30](v50);

                sub_1B7801C88();
                __break(1u);
                return;
            }
          }

LABEL_45:
          sub_1B7801B68();
          sub_1B7801BA8();
          v25 = v56;
          sub_1B7801BB8();
          sub_1B7801B78();
          a5 = i;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }
  }
}

unint64_t sub_1B737B86C()
{
  result = qword_1EB992D18;
  if (!qword_1EB992D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D18);
  }

  return result;
}

uint64_t sub_1B737B920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B737B980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B737B9E8()
{
  result = qword_1EB992D30;
  if (!qword_1EB992D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D30);
  }

  return result;
}

unint64_t sub_1B737BA8C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      sub_1B7801A78();

      v4 = 0xD00000000000002ALL;
      goto LABEL_12;
    }

    if (v3 != 4)
    {
      sub_1B7801A78();

      v4 = 0xD000000000000020;
      goto LABEL_12;
    }
  }

  else
  {
    if (!*(v0 + 16))
    {
      sub_1B7801A78();

      v4 = 0xD000000000000016;
      goto LABEL_12;
    }

    if (v3 != 1)
    {
      sub_1B7801A78();

      v4 = 0xD000000000000022;
      goto LABEL_12;
    }
  }

  sub_1B7801A78();

  v4 = 0xD00000000000001ALL;
LABEL_12:
  v6 = v4;
  MEMORY[0x1B8CA4D30](v2, v1);
  return v6;
}

uint64_t BankConnectMessage.hash(into:)()
{
  sub_1B737BA8C();
  sub_1B7800798();
}

uint64_t BankConnectMessage.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B737BA8C();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B737BD34()
{
  sub_1B78022F8();
  sub_1B737BA8C();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B737BDAC()
{
  sub_1B737BA8C();
  sub_1B7800798();
}

uint64_t sub_1B737BE18()
{
  sub_1B78022F8();
  sub_1B737BA8C();
  sub_1B7800798();

  return sub_1B7802368();
}

id BankConnectMessagesManager.__allocating_init(userDefaults:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1B737D8C4(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id BankConnectMessagesManager.init(userDefaults:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1B737D344(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_1B737BFCC(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B78000B8();
  __swift_project_value_buffer(v4, qword_1EDAF65B0);

  v5 = sub_1B7800098();
  v6 = sub_1B78011F8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    v36 = v8;
    *v7 = 136315138;
    v10 = *(a1 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v33 = v8;
      v34 = MEMORY[0x1E69E7CC0];
      sub_1B71FDB50(0, v10, 0);
      v11 = v34;
      v12 = (a1 + 48);
      do
      {
        v13 = *v12;
        v37 = *(v12 - 1);
        v38 = v13;
        v14 = sub_1B737BA8C();
        v35 = v11;
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          v32 = v14;
          v19 = v15;
          sub_1B71FDB50((v16 > 1), v17 + 1, 1);
          v15 = v19;
          v14 = v32;
          v11 = v35;
        }

        *(v11 + 16) = v17 + 1;
        v18 = v11 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v12 += 24;
        --v10;
      }

      while (v10);
      v9 = v33;
      v2 = v1;
    }

    v20 = MEMORY[0x1B8CA4F60](v11, MEMORY[0x1E69E6158]);
    v22 = v21;

    v23 = sub_1B71A3EF8(v20, v22, &v36);

    *(v7 + 4) = v23;
    _os_log_impl(&dword_1B7198000, v5, v6, "Reseting message state for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (v2 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults);
    v26 = (a1 + 48);
    do
    {
      v27 = *(v26 - 2);
      v28 = *(v26 - 1);
      v29 = *v26;
      v26 += 24;
      v30 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      *&v37 = v27;
      *(&v37 + 1) = v28;
      v38 = v29;
      v31 = sub_1B737BA8C();
      (*(*(v30 + 8) + 48))(v31);

      --v24;
    }

    while (v24);
  }
}

uint64_t sub_1B737C27C(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B78000B8();
  __swift_project_value_buffer(v8, qword_1EDAF65B0);
  sub_1B737D9A8(v5, v6, v7);
  v9 = sub_1B7800098();
  v10 = sub_1B78011F8();
  sub_1B737D9C0(v5, v6, v7);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22[0] = v21;
    *v11 = 136315394;
    v24[0] = v5;
    v24[1] = v6;
    v25 = v7;
    v12 = sub_1B737BA8C();
    v14 = sub_1B71A3EF8(v12, v13, v22);

    *(v11 + 4) = v14;
    v3 = v2;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_1B7198000, v9, v10, "Setting the dismissal state of %s to %{BOOL}d.", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1B8CA7A40](v21, -1, -1);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  v15 = (v3 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults);
  v16 = *(v3 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 24);
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v26 = MEMORY[0x1E69E6370];
  LOBYTE(v24[0]) = a1 & 1;
  v22[0] = v5;
  v22[1] = v6;
  v23 = v7;
  v18 = sub_1B737BA8C();
  (*(*(v17 + 8) + 8))(v24, v18, v19, v16);

  return sub_1B726990C(v24);
}

uint64_t sub_1B737C4B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults), *(v0 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 24));
  v2 = sub_1B737BA8C();
  v3 = (*(*(v1 + 8) + 24))(v2);

  return v3 & 1;
}

id BankConnectMessagesManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectMessagesManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectMessagesManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B737C66C()
{
  v1 = *v0;
  v2 = sub_1B7800838();
  [v1 resetMessagesForFPANIdentifier_];
}

uint64_t sub_1B737C6E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 32);
  __swift_project_boxed_opaque_existential_1((*v0 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults), *(*v0 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 24));
  v2 = sub_1B737BA8C();
  v3 = (*(*(v1 + 8) + 24))(v2);

  return v3 & 1;
}

id static BankConnectMessagesManager.makeManager()()
{
  if (qword_1EDAF97D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for BankConnectMessagesManager();
  v1 = objc_allocWithZone(v0);
  v5[3] = &type metadata for UncheckedSendableUserDefaults;
  v5[4] = &protocol witness table for UncheckedSendableUserDefaults;
  v5[0] = swift_allocObject();
  sub_1B7201D1C(&qword_1EDAF97D8, v5[0] + 16);
  sub_1B719B06C(v5, v1 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults);
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2;
}

Swift::Void __swiftcall BankConnectMessagesManager.resetMessages(forFPANIdentifier:)(Swift::String forFPANIdentifier)
{
  object = forFPANIdentifier._object;
  countAndFlagsBits = forFPANIdentifier._countAndFlagsBits;
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v4 = *(*(off_1EDAF9E38 + 2) + 16);

  v5 = [v4 newBackgroundContext];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = countAndFlagsBits;
  v6[4] = object;
  v6[5] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B737D9FC;
  *(v7 + 24) = v6;
  v12[4] = sub_1B7205180;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B737BA64;
  v12[3] = &block_descriptor_5;
  v8 = _Block_copy(v12);
  v9 = v1;

  v10 = v5;

  [v10 performBlockAndWait_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall BankConnectMessagesManager.resetMessages(for:context:)(Swift::String a1, NSManagedObjectContext context)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;
  *(inited + 48) = 0;
  v12 = inited;
  type metadata accessor for ManagedInternalAccount();

  v5 = static ManagedInternalAccount.existingAccount(withExternalAccountID:in:)(countAndFlagsBits, object);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accountId];
    v8 = sub_1B7800868();
    v10 = v9;

    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1B781A380;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    *(v11 + 48) = 1;
    *(v11 + 56) = v8;
    *(v11 + 64) = v10;
    *(v11 + 72) = 2;
    *(v11 + 80) = v8;
    *(v11 + 88) = v10;
    *(v11 + 96) = 3;
    *(v11 + 104) = v8;
    *(v11 + 112) = v10;
    *(v11 + 120) = 4;
    *(v11 + 128) = v8;
    *(v11 + 136) = v10;
    *(v11 + 144) = 5;
    swift_bridgeObjectRetain_n();
    sub_1B72444F0(v11);
  }

  sub_1B737BFCC(v12);
}

uint64_t BankConnectMessagesManager.setIsDismissed(_:for:with:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v5[0] = a3;
    v5[1] = a4;
    v6 = 0;
    return sub_1B737C27C(a1 & 1, v5);
  }

  return result;
}

{
  if ((a2 - 1) >= 5)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v5[0] = a3;
    v5[1] = a4;
    v6 = 0x503020104uLL >> (8 * (a2 - 1));
    return sub_1B737C27C(a1 & 1, v5);
  }

  return result;
}

uint64_t BankConnectMessagesManager.isPassMessageDismissed(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v6 = *(v3 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 24);
    v7 = *(v3 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults), v6);
    sub_1B7801A78();

    MEMORY[0x1B8CA4D30](a2, a3);
    v8 = (*(*(v7 + 8) + 24))(0xD000000000000016, 0x80000001B787C860, v6);

    return v8 & 1;
  }

  return result;
}

uint64_t BankConnectMessagesManager.isAccountMessageDismissed(_:for:)(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults), *(v1 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 24));
    v3 = sub_1B737BA8C();
    v4 = (*(*(v2 + 8) + 24))(v3);

    return v4 & 1;
  }

  return result;
}

id sub_1B737D344(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_1B719B06C(v11, a2 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for BankConnectMessagesManager();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t _s10FinanceKit18BankConnectMessageO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_34;
      }

      v17 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_1B737D9A8(v17, v2, 3u);
        sub_1B737D9A8(v3, v2, 3u);
        sub_1B737D9C0(v3, v2, 3u);
        v8 = v3;
        v9 = v2;
        v10 = 3;
        goto LABEL_42;
      }

      v13 = sub_1B78020F8();
      sub_1B737D9A8(v6, v5, 3u);
      sub_1B737D9A8(v3, v2, 3u);
      sub_1B737D9C0(v3, v2, 3u);
      v14 = v6;
      v15 = v5;
      v16 = 3;
    }

    else if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_34;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1B737D9A8(*a1, v2, 4u);
        sub_1B737D9A8(v3, v2, 4u);
        sub_1B737D9C0(v3, v2, 4u);
        v8 = v3;
        v9 = v2;
        v10 = 4;
        goto LABEL_42;
      }

      v13 = sub_1B78020F8();
      sub_1B737D9A8(v6, v5, 4u);
      sub_1B737D9A8(v3, v2, 4u);
      sub_1B737D9C0(v3, v2, 4u);
      v14 = v6;
      v15 = v5;
      v16 = 4;
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_34;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1B737D9A8(*a1, v2, 5u);
        sub_1B737D9A8(v3, v2, 5u);
        sub_1B737D9C0(v3, v2, 5u);
        v8 = v3;
        v9 = v2;
        v10 = 5;
        goto LABEL_42;
      }

      v13 = sub_1B78020F8();
      sub_1B737D9A8(v6, v5, 5u);
      sub_1B737D9A8(v3, v2, 5u);
      sub_1B737D9C0(v3, v2, 5u);
      v14 = v6;
      v15 = v5;
      v16 = 5;
    }

LABEL_40:
    sub_1B737D9C0(v14, v15, v16);
    return v13 & 1;
  }

  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_34;
    }

    v11 = *a1;
    if (v3 == v6 && v2 == v5)
    {
      sub_1B737D9A8(v11, v2, 0);
      sub_1B737D9A8(v3, v2, 0);
      sub_1B737D9C0(v3, v2, 0);
      v8 = v3;
      v9 = v2;
      v10 = 0;
      goto LABEL_42;
    }

    v13 = sub_1B78020F8();
    sub_1B737D9A8(v6, v5, 0);
    sub_1B737D9A8(v3, v2, 0);
    sub_1B737D9C0(v3, v2, 0);
    v14 = v6;
    v15 = v5;
    v16 = 0;
    goto LABEL_40;
  }

  if (v4 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_34;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_1B737D9A8(*a1, v2, 2u);
      sub_1B737D9A8(v3, v2, 2u);
      sub_1B737D9C0(v3, v2, 2u);
      v8 = v3;
      v9 = v2;
      v10 = 2;
      goto LABEL_42;
    }

    v13 = sub_1B78020F8();
    sub_1B737D9A8(v6, v5, 2u);
    sub_1B737D9A8(v3, v2, 2u);
    sub_1B737D9C0(v3, v2, 2u);
    v14 = v6;
    v15 = v5;
    v16 = 2;
    goto LABEL_40;
  }

  if (v7 != 1)
  {
LABEL_34:
    sub_1B737D9A8(*a2, *(a2 + 8), v7);
    sub_1B737D9A8(v3, v2, v4);
    sub_1B737D9C0(v3, v2, v4);
    sub_1B737D9C0(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v13 = sub_1B78020F8();
    sub_1B737D9A8(v6, v5, 1u);
    sub_1B737D9A8(v3, v2, 1u);
    sub_1B737D9C0(v3, v2, 1u);
    v14 = v6;
    v15 = v5;
    v16 = 1;
    goto LABEL_40;
  }

  sub_1B737D9A8(*a1, v2, 1u);
  sub_1B737D9A8(v3, v2, 1u);
  sub_1B737D9C0(v3, v2, 1u);
  v8 = v3;
  v9 = v2;
  v10 = 1;
LABEL_42:
  sub_1B737D9C0(v8, v9, v10);
  return 1;
}

id sub_1B737D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for BankConnectMessagesManager());
  (*(v7 + 16))(v9, a1, a3);
  return sub_1B737D344(v9, v10, a3, a4);
}

uint64_t sub_1B737D9A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1B737D9C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

unint64_t sub_1B737DA34()
{
  result = qword_1EB992D40;
  if (!qword_1EB992D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D40);
  }

  return result;
}

uint64_t sub_1B737DA94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B737DADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t ContentPackageReader.receiptUrl(named:localization:preferUnlocalized:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v13 = sub_1B77FF4F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v6;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v17 = *(v6 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v14 + 16))(v16, v6 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v13);
  v20 = v16;
  v21 = sub_1B7269DCC;
  v22 = &v23;
  os_unfair_lock_lock((v17 + 24));
  sub_1B726A6E8((v17 + 16), a6);
  os_unfair_lock_unlock((v17 + 24));
  return (*(v14 + 8))(v16, v13);
}

uint64_t ContentPackageReader.receiptUrls(named:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v3;
  v19 = a1;
  v20 = a2;
  v11 = *(v3 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v7);
  v14 = v10;
  v15 = sub_1B737E6D4;
  v16 = &v17;
  os_unfair_lock_lock((v11 + 24));
  sub_1B726A6E8((v11 + 16), a3);
  os_unfair_lock_unlock((v11 + 24));
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B737DF5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v73 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v60 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v60 - v20;
  v21 = sub_1B77FF4F8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v66 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v65 = &v60 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  if (a1)
  {
    v63 = v29;
    v60 = &v60 - v28;
    v62 = a5;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    inited = swift_initStackObject();
    v69 = xmmword_1B7807CD0;
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    v61 = inited;
    v76 = v22 + 48;
    v31 = v22;
    v67 = (v22 + 32);
    swift_bridgeObjectRetain_n();
    v32 = a1;
    v71 = a3;
    v33 = sub_1B7800838();
    v75 = v32;
    v34 = [v32 URLForResource:v33 withExtension:0 subdirectory:0 localization:0];

    if (v34)
    {
      sub_1B77FF478();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = *(v31 + 56);
    v37(v14, v35, 1, v21);
    sub_1B726A728(v14, v17);
    v74 = *(v31 + 48);
    if (v74(v17, 1, v21) == 1)
    {
      sub_1B726A798(v17);
      v38 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v39 = a4;
      v40 = *v67;
      (*v67)(v63, v17, v21);
      v38 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1B723E714(0, v38[2] + 1, 1, v38);
      }

      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        v38 = sub_1B723E714(v41 > 1, v42 + 1, 1, v38);
      }

      v38[2] = v42 + 1;
      v40((v38 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v42), v63, v21);
      a4 = v39;
    }

    v43 = v64;
    if (v38[2])
    {
      (*(v31 + 16))(v64, v38 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v21);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v37(v43, v44, 1, v21);
    v45 = v68;
    sub_1B726A728(v43, v68);
    if (v74(v45, 1, v21) == 1)
    {
      sub_1B726A798(v45);
      v46 = [v75 localizations];
      v47 = sub_1B7800C38();

      v48 = *(v47 + 16);
      v61 = v47;
      if (v48)
      {
        v68 = a4;
        v63 = (v31 + 8);
        v64 = (v31 + 16);
        v49 = (v47 + 40);
        v50 = MEMORY[0x1E69E7CC8];
        do
        {
          v52 = *(v49 - 1);
          v51 = *v49;
          v53 = swift_allocObject();
          *(v53 + 16) = v69;
          *(v53 + 32) = v71;
          *(v53 + 40) = v68;

          v54 = v72;
          ContentPackageReader.fileUrl(possibleNames:ext:bundle:localization:preferUnlocalized:)(v53, 0, 0, v75, v52, v51, 0, v72);

          if (v74(v54, 1, v21) == 1)
          {

            sub_1B726A798(v54);
          }

          else
          {
            v55 = v65;
            (*v67)(v65, v54, v21);
            v56 = v66;
            (*v64)(v66, v55, v21);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = v50;
            sub_1B7392814(v56, v52, v51, isUniquelyReferenced_nonNull_native);

            (*v63)(v55, v21);
            v50 = v77;
          }

          v49 += 2;
          --v48;
        }

        while (v48);
      }

      else
      {
        v50 = MEMORY[0x1E69E7CC8];
      }

      *v62 = v50;
      type metadata accessor for LocalizedURLMap();
    }

    else
    {

      v58 = *v67;
      v59 = v60;
      (*v67)(v60, v45, v21);
      v58(v62, v59, v21);
      type metadata accessor for LocalizedURLMap();
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a5 = sub_1B7202854(MEMORY[0x1E69E7CC0]);
    type metadata accessor for LocalizedURLMap();
    return swift_storeEnumTagMultiPayload();
  }
}

FinanceKit::PaymentSchedulingType_optional __swiftcall PaymentSchedulingType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B737E7E4()
{
  result = qword_1EB992D48;
  if (!qword_1EB992D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D48);
  }

  return result;
}

unint64_t sub_1B737E83C()
{
  result = qword_1EB992D50;
  if (!qword_1EB992D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D50);
  }

  return result;
}

unint64_t sub_1B737E8C0()
{
  result = qword_1EB992D60;
  if (!qword_1EB992D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D60);
  }

  return result;
}

uint64_t AppAuthorizationStateManager.__allocating_init(tccCoordinator:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1B737F968(v7, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t AppAuthorizationStateManager.init(tccCoordinator:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1B737F968(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

Swift::Void __swiftcall AppAuthorizationStateManager.refreshAllAuthorizations()()
{
  v1 = v0;
  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = v4;
  v35 = *(v4 + 16);
  if (!v35)
  {

LABEL_31:

    return;
  }

  v6 = 0;
  v7 = (v4 + 48);
  while (v6 < *(v5 + 16))
  {
    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    if (*v7 != 1)
    {
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v1[2];
      v1[2] = 0x8000000000000000;
      v21 = sub_1B724548C(v9, v8);
      v23 = v11[2];
      v24 = (v22 & 1) == 0;
      v16 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v16)
      {
        goto LABEL_34;
      }

      v26 = v22;
      if (v11[3] < v25)
      {
        sub_1B72491F4(v25, isUniquelyReferenced_nonNull_native);
        v21 = sub_1B724548C(v9, v8);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_37;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_21:
        if ((v26 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v32 = v21;
        sub_1B725C7A0();
        v21 = v32;
        if ((v26 & 1) == 0)
        {
LABEL_26:
          v11[(v21 >> 6) + 8] |= 1 << v21;
          v33 = (v11[6] + 16 * v21);
          *v33 = v9;
          v33[1] = v8;
          *(v11[7] + 8 * v21) = 1;
          v34 = v11[2];
          v16 = __OFADD__(v34, 1);
          v30 = v34 + 1;
          if (v16)
          {
            goto LABEL_36;
          }

LABEL_27:
          v11[2] = v30;

          goto LABEL_4;
        }
      }

      *(v11[7] + 8 * v21) = 1;
      goto LABEL_4;
    }

    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = v1[2];
    v1[2] = 0x8000000000000000;
    v12 = sub_1B724548C(v9, v8);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_33;
    }

    v18 = v13;
    if (v11[3] >= v17)
    {
      if ((v10 & 1) == 0)
      {
        v31 = v12;
        sub_1B725C7A0();
        v12 = v31;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          v11[(v12 >> 6) + 8] |= 1 << v12;
          v28 = (v11[6] + 16 * v12);
          *v28 = v9;
          v28[1] = v8;
          *(v11[7] + 8 * v12) = 2;
          v29 = v11[2];
          v16 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v16)
          {
            goto LABEL_35;
          }

          goto LABEL_27;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1B72491F4(v17, v10);
      v12 = sub_1B724548C(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_37;
      }
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_3:
    *(v11[7] + 8 * v12) = 2;
LABEL_4:
    v1[2] = v11;
    swift_endAccess();
    ++v6;
    swift_bridgeObjectRelease_n();
    v7 += 24;
    if (v35 == v6)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1B78021C8();
  __break(1u);
}

uint64_t sub_1B737EEA4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    v6 = 2;
    v7 = 2;
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    v6 = 1;
    v7 = 1;
  }

  sub_1B7392CCC(v7, v3, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v9;
  swift_endAccess();
  return v6;
}

uint64_t AppAuthorizationStateManager.authorizationType(bundleID:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = v1[2];
  if (*(v5 + 16) && (v6 = sub_1B724548C(v3, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = v2[6];
    v10 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v9);
    v12[0] = v3;
    v12[1] = v4;
    (*(v10 + 16))(&v13, v12, v9, v10);
    if (v14)
    {
      v13 = v3;
      v14 = v4;
      v8 = sub_1B737EEA4(&v13, v15 & 1);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t AppAuthorizationStateManager.refreshAuthorization(bundleID:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
  v8[0] = v2;
  v8[1] = v3;
  (*(v5 + 16))(&v9, v8, v4, v5);
  if (!v10)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v6 = sub_1B737EEA4(&v9, v11 & 1);

  return v6;
}

uint64_t AppAuthorizationStateManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t AppAuthorizationStateManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B737F190(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1B77FEF58();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1B737F264(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1B77FF4F8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1B737F314(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B72051F0(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_1B737F37C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B72051F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1B737F3E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_1B737F430(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_1B737F480(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

unint64_t sub_1B737F4C4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 88 * result;
  v5 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1B737F52C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_1B737F57C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B77FFA18();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1B737F634(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 56 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = *(a3 + 48);
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

uint64_t sub_1B737F6C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  result = sub_1B737FA4C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ExtractedOrder.ShippingFulfillment);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1B737F798(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1B77FFA18();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1B737FA4C(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_1B737F88C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1B72051F0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1B737F908(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = (a7[7] + 48 * result);
  v9 = a6[1];
  *v8 = *a6;
  v8[1] = v9;
  *(v8 + 25) = *(a6 + 25);
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_1B737F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = sub_1B7202FB0(MEMORY[0x1E69E7CC0]);
  sub_1B71E4C44(&v9, a2 + 24);
  return a2;
}

uint64_t sub_1B737FA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BankConnectAccountDataLoader.__allocating_init(environment:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B71E4C44(a1, v2 + 16);
  return v2;
}

uint64_t BankConnectAccountDataLoader.loadAccount(for:userPresence:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 120) = a1;
  type metadata accessor for InternalAccount();
  *(v4 + 144) = swift_task_alloc();
  v6 = *(type metadata accessor for UserPresence() - 8);
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 + 64);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = type metadata accessor for BankConnectConsent();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v4 + 184) = v7;
  *(v4 + 192) = v8;
  *(v4 + 200) = *(a2 + 1);
  *(v4 + 216) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1B737FC5C, 0, 0);
}

uint64_t sub_1B737FC5C()
{
  v32 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[26];
    v4 = v0[27];
    v7 = v0[24];
    v6 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;

    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
    MEMORY[0x1B8CA4D30](v7, v6);
    MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
    MEMORY[0x1B8CA4D30](v5, v4);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v10 = sub_1B71A3EF8(0, 0xE000000000000000, &v31);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1B7198000, v2, v3, "Fetching account and balance information for: %s/", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  v12 = v0[26];
  v11 = v0[27];
  v27 = *(v0 + 12);
  v13 = v0[23];
  v14 = v0[17];
  v15 = v14[5];
  v16 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v15);
  (*(v16 + 24))(v15, v16);
  v17 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
  v28 = v27;
  v29 = v12;
  v30 = v11;
  BankConnectConsentStoring.getAuthorizedConsent(grantingAccessTo:)(&v28, v17, v13);
  v19 = v0[22];
  v18 = v0[23];
  __swift_destroy_boxed_opaque_existential_1((v0 + 10));
  v21 = v14[5];
  v20 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v21);
  v22 = (v18 + *(v19 + 20));
  v23 = *v22;
  v24 = v22[1];
  v25 = swift_task_alloc();
  v0[28] = v25;
  *v25 = v0;
  v25[1] = sub_1B7380028;

  return BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(v23, v24, v21, v20);
}

uint64_t sub_1B7380028(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7380128, 0, 0);
}

uint64_t sub_1B7380128()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[17];
  sub_1B7389968(v0[16], v6, type metadata accessor for UserPresence);
  v9 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[30] = v10;
  v10[2] = v8;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v2;
  sub_1B7389580(v6, v10 + v9, type metadata accessor for UserPresence);
  sub_1B7389608(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);

  if (v1)
  {
    swift_getObjectType();
    v11 = sub_1B7800CD8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B73802A4, v11, v13);
}

uint64_t sub_1B73802A4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[18];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1B738039C;
  v4 = swift_continuation_init();
  sub_1B73882C4(v4, v2, &unk_1B781EB78, v1, &unk_1F2F51C40, &unk_1B781EC90, &unk_1F2F51C68, &unk_1B781EC98);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B738039C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = v1[29];
    swift_willThrow();
    v4 = sub_1B73805A4;
    v5 = v3;
  }

  else
  {
    v6 = v1[18];
    v7 = v1[15];

    sub_1B7389580(v6, v7, type metadata accessor for InternalAccount);
    v4 = sub_1B73804F8;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B73804F8()
{
  v1 = *(v0 + 184);

  sub_1B73899D0(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B73805A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B738060C, 0, 0);
}

uint64_t sub_1B738060C()
{
  v1 = *(v0 + 184);

  sub_1B73899D0(v1, type metadata accessor for BankConnectConsent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B73806B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_1B738077C;

  return sub_1B73808C8(a1, v7 + 2, a7);
}

uint64_t sub_1B738077C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B73808B0, 0, 0);
}

uint64_t sub_1B73808C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 144) = a3;
  *(v4 + 152) = v3;
  *(v4 + 136) = a1;
  v6 = type metadata accessor for BankConnectAccountChange();
  *(v4 + 160) = v6;
  *(v4 + 168) = *(v6 - 8);
  *(v4 + 176) = swift_task_alloc();
  type metadata accessor for BankConnectResponseHeaders();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992DA0);
  *(v4 + 200) = swift_task_alloc();
  type metadata accessor for BankConnectConsent();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v4 + 208) = v7;
  *(v4 + 216) = v8;
  *(v4 + 224) = *(a2 + 1);
  *(v4 + 240) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1B7380A38, 0, 0);
}

uint64_t sub_1B7380A38()
{
  v27 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v22 = *(v0 + 216);
  v3 = *(v0 + 152);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  (*(v5 + 24))(v4, v5);
  v6 = v3[5];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v6);
  (*(v7 + 80))(v6, v7);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v24 = v22;
  v25 = v2;
  v26 = v1;
  (*(v9 + 16))(&v24, v8, v9);
  v10 = *(v0 + 240);
  v21 = *(v0 + 208);
  v23 = *(v0 + 224);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  isa = BankConnectDataLoaderEnvironment.makeBackgroundContext()().super.isa;
  *(v0 + 248) = isa;
  v14 = v3[5];
  v15 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  v16 = BankConnectDataLoaderEnvironment.makeWebServiceClient()(v14, v15);
  *(v0 + 256) = v16;
  v17 = swift_task_alloc();
  *(v0 + 264) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v21;
  *(v17 + 40) = v23;
  *(v17 + 56) = v10;
  *(v17 + 64) = v12;
  *(v17 + 72) = v0 + 16;
  *(v17 + 80) = v11;
  *(v17 + 88) = isa;
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_1B7380CF4;
  v19 = *(v0 + 200);

  return sub_1B76A2248(v19, &unk_1B781ECB8);
}

uint64_t sub_1B7380CF4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1B7381318;
  }

  else
  {

    v2 = sub_1B7380E10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7380E10()
{
  v48 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v43 = v0 + 56;
  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);
  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7198000, v2, v3, "Clearing lastAccountRefreshFailure", v4, 2u);
    MEMORY[0x1B8CA7A40](v4, -1, -1);
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 240);
  v7 = *(v0 + 232);
  v42 = *(v0 + 216);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v10 = *(v0 + 184);

  v44 = v42;
  v45 = v7;
  v46 = v6;
  v47 = 2;
  sub_1B738922C();
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  sub_1B7389968(v8 + *(v9 + 28), v10, type metadata accessor for BankConnectResponseHeaders);
  LOBYTE(v44) = 0;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v10, &v44, v11, v12);
  if (v5)
  {
    v13 = *(v0 + 248);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 184);

    sub_1B73899D0(v16, type metadata accessor for RawBankConnectData.Consent);
    sub_1B7205418(v15, &qword_1EB992DA0);
    sub_1B73899D0(v14, type metadata accessor for BankConnectConsent);
  }

  else
  {
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v20 = *(v0 + 224);
    v19 = *(v0 + 232);
    v22 = *(v0 + 208);
    v21 = *(v0 + 216);
    v23 = *(v0 + 200);
    sub_1B73899D0(*(v0 + 184), type metadata accessor for RawBankConnectData.Consent);
    v24 = swift_task_alloc();
    v24[2] = v23;
    v24[3] = v21;
    v24[4] = v20;
    v24[5] = v19;
    v24[6] = v18;
    v24[7] = v17;
    v24[8] = v22;
    v24[9] = v43;
    v25 = swift_task_alloc();
    v25[2] = sub_1B73898F8;
    v25[3] = v24;
    v25[4] = v17;
    sub_1B7801468();
    v28 = *(v0 + 208);
    v29 = *(v0 + 176);
    v41 = *(v0 + 200);
    v30 = *(v0 + 168);
    v38 = *(v0 + 248);
    v39 = *(v0 + 160);
    v31 = *(v0 + 152);
    v40 = *(v0 + 136);

    v32 = v31[5];
    v33 = v31[6];
    __swift_project_boxed_opaque_existential_1(v31 + 2, v32);
    (*(v33 + 56))(v32, v33);
    v34 = *(v0 + 120);
    v35 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990168);
    v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1B7807CD0;
    sub_1B7389968(v29, v37 + v36, type metadata accessor for BankConnectAccountChange);
    (*(v35 + 16))(v37, v34, v35);

    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    sub_1B7389968(v29 + *(v39 + 20), v40, type metadata accessor for InternalAccount);
    sub_1B73899D0(v29, type metadata accessor for BankConnectAccountChange);
    sub_1B7205418(v41, &qword_1EB992DA0);
    sub_1B73899D0(v28, type metadata accessor for BankConnectConsent);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1B7381318()
{
  v1 = v0[31];
  v2 = v0[26];

  sub_1B73899D0(v2, type metadata accessor for BankConnectConsent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t BankConnectAccountDataLoader.loadAccounts(forConsentID:userPresence:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(type metadata accessor for UserPresence() - 8);
  v4[14] = v5;
  v4[15] = *(v5 + 64);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B73814BC, 0, 0);
}

uint64_t sub_1B73814BC()
{
  v16 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v15);
    _os_log_impl(&dword_1B7198000, v2, v3, "Fetching all accounts for consentID: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[13];
  v10 = v8[5];
  v9 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v10);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1B73816A4;
  v13 = v0[10];
  v12 = v0[11];

  return BankConnectDataLoaderEnvironment.makeTaskQueue(forConsentID:)(v13, v12, v10, v9);
}

uint64_t sub_1B73816A4(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B73817A4, 0, 0);
}

uint64_t sub_1B73817A4()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  sub_1B7389968(v0[12], v2, type metadata accessor for UserPresence);
  v7 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[19] = v8;
  v8[2] = v3;
  v8[3] = v6;
  v8[4] = v5;
  sub_1B7389580(v2, v8 + v7, type metadata accessor for UserPresence);
  sub_1B7389608(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);

  if (v1)
  {
    swift_getObjectType();
    v9 = sub_1B7800CD8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7381908, v9, v11);
}

uint64_t sub_1B7381908()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1B73819F8;
  v3 = swift_continuation_init();
  sub_1B73882C4(v3, v2, &unk_1B781EB90, v1, &unk_1F2F51BF0, &unk_1B781EC50, &unk_1F2F51C18, &unk_1B783AC70);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B73819F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v1 + 144);
    swift_willThrow();
    v4 = sub_1B7381B9C;
    v5 = v3;
  }

  else
  {

    v4 = sub_1B7381B2C;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B7381B2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7381B9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7381C04, 0, 0);
}

uint64_t sub_1B7381C04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7381C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1B7201BB0;

  return sub_1B7381D28(a3, a4, a5);
}

uint64_t sub_1B7381D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  type metadata accessor for BankConnectResponseHeaders();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D78);
  v4[18] = swift_task_alloc();
  type metadata accessor for BankConnectConsent();
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7381E24, 0, 0);
}

uint64_t sub_1B7381E24()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  (*(v4 + 24))(v3, v4);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  BankConnectConsentStoring.getAuthorizedConsent(forConsentID:)(v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  isa = BankConnectDataLoaderEnvironment.makeBackgroundContext()().super.isa;
  *(v0 + 160) = isa;
  *(swift_task_alloc() + 16) = isa;
  sub_1B7801468();
  v7 = *(v0 + 152);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v17 = *(v0 + 112);

  v10 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  v12 = BankConnectDataLoaderEnvironment.makeWebServiceClient()(v10, v11);
  *(v0 + 168) = v12;
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v7;
  *(v13 + 32) = v17;
  *(v13 + 48) = isa;
  *(v13 + 56) = v9;
  *(v13 + 64) = v8;
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_1B73820E0;
  v15 = *(v0 + 144);

  return sub_1B76A2248(v15, dword_1B781EC70);
}

uint64_t sub_1B73820E0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1B73824C8;
  }

  else
  {

    v2 = sub_1B73821FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B73821FC()
{
  v24 = v0;
  v1 = *(v0 + 192);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v6);
  (*(v7 + 24))(v6, v7);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
  sub_1B7389968(v2 + *(v3 + 28), v5, type metadata accessor for BankConnectResponseHeaders);
  v23[0] = 0;
  BankConnectConsentStoring.updateConsent(_:consentStatus:)(v5, v23, v8, v9);
  if (v1)
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);

    sub_1B73899D0(v12, type metadata accessor for RawBankConnectData.Consent);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  else
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    sub_1B73899D0(*(v0 + 128), type metadata accessor for RawBankConnectData.Consent);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v18 = swift_task_alloc();
    v18[2] = v14;
    v18[3] = v17;
    v18[4] = v16;
    v18[5] = v13;
    v18[6] = v15;
    v19 = swift_task_alloc();
    v19[2] = sub_1B738916C;
    v19[3] = v18;
    v19[4] = v13;
    sub_1B7801468();
    v20 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
  }

  sub_1B7205418(v10, &qword_1EB992D78);
  sub_1B73899D0(v11, type metadata accessor for BankConnectConsent);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B73824C8()
{
  v1 = v0[19];
  v2 = v0[20];

  sub_1B73899D0(v1, type metadata accessor for BankConnectConsent);

  v3 = v0[1];

  return v3();
}

uint64_t BankConnectAccountDataLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B73825D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return BankConnectAccountDataLoader.loadAccount(for:userPresence:)(a1, a2, a3);
}

uint64_t sub_1B7382688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return BankConnectAccountDataLoader.loadAccounts(forConsentID:userPresence:)(a1, a2, a3);
}

uint64_t sub_1B7382738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v13;
  v8[19] = v14;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D88);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8[21] = swift_task_alloc();
  v9 = sub_1B77FF988();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for FinanceNetworkError();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = type metadata accessor for BankConnectErrorWithConsent(0);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = type metadata accessor for BankConnectWebServiceAccountRequest(0);
  v8[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7382994, 0, 0);
}

uint64_t sub_1B7382994()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  sub_1B7389968(v0[12], v1, type metadata accessor for BankConnectConsent);
  sub_1B7389968(v3, v1 + *(v2 + 24), type metadata accessor for UserPresence);
  v6 = (v1 + *(v2 + 20));
  *v6 = v5;
  v6[1] = v4;

  v0[5] = v2;
  v0[6] = &protocol witness table for BankConnectWebServiceAccountRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B7389968(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountRequest);
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_1B7382AE0;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B7382AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[40] = a1;
  v5[41] = a2;
  v5[42] = a3;
  v5[43] = v3;

  if (v3)
  {
    v6 = sub_1B7383990;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7382C00;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7382C00()
{
  v105 = v0;
  v1 = *(v0 + 344);
  sub_1B777FE08(*(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 80));
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);
  if (v1)
  {
    sub_1B73899D0(v5, type metadata accessor for BankConnectWebServiceAccountRequest);

    sub_1B720A388(v4, v3);
    *(v0 + 56) = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 280);
      v8 = *(v0 + 288);
      v9 = *(v0 + 248);
      v10 = *(v0 + 256);
      v11 = *(v0 + 144);

      sub_1B7389580(v8, v7, type metadata accessor for BankConnectErrorWithConsent);
      v12 = v11[3];
      v13 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v98 = *(v10 + 20);
      sub_1B7389968(v7 + v98, v9, type metadata accessor for FinanceNetworkError);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 7)
      {
        sub_1B73899D0(*(v0 + 248), type metadata accessor for FinanceNetworkError);
      }

      v15 = *(v0 + 280);
      LOBYTE(v101) = EnumCaseMultiPayload == 7;
      BankConnectConsentStoring.updateConsent(_:consentStatus:)(v15, &v101, v12, v13);
      v24 = v98;
      sub_1B7389968(v7 + v98, *(v0 + 240), type metadata accessor for FinanceNetworkError);
      v25 = swift_getEnumCaseMultiPayload();
      switch(v25)
      {
        case 1:
          v55 = **(v0 + 240);
          *(v0 + 72) = v55;
          v56 = v55;
          if (swift_dynamicCast())
          {
            v57 = *(v0 + 280);
            v96 = *(v0 + 136);
            v58 = v11[3];
            v59 = v11[4];
            __swift_project_boxed_opaque_existential_1(*(v0 + 144), v58);
            v61 = *v57;
            v60 = v57[1];
            v95 = *(v59 + 56);

            v95(v61, v60, v96, v58, v59);

            v24 = v98;
          }

          else
          {
          }

          break;
        case 6:
          v28 = *(v0 + 240);
          v29 = *(v0 + 200);
          v30 = *(v0 + 176);
          v31 = *(v0 + 184);
          v99 = *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
          (*(v31 + 32))(v29, v28, v30);
          if (qword_1EDAF65A8 != -1)
          {
            swift_once();
          }

          v32 = *(v0 + 280);
          v33 = *(v0 + 264);
          v35 = *(v0 + 192);
          v34 = *(v0 + 200);
          v36 = *(v0 + 176);
          v37 = *(v0 + 184);
          v38 = sub_1B78000B8();
          __swift_project_value_buffer(v38, qword_1EDAF65B0);
          v94 = *(v37 + 16);
          v94(v35, v34, v36);
          sub_1B7389968(v32, v33, type metadata accessor for BankConnectErrorWithConsent);
          v39 = sub_1B7800098();
          v40 = sub_1B78011F8();
          v41 = os_log_type_enabled(v39, v40);
          v42 = *(v0 + 264);
          if (v41)
          {
            v92 = v40;
            v44 = *(v0 + 184);
            v43 = *(v0 + 192);
            v45 = *(v0 + 176);
            v46 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            *&v101 = v91;
            *v46 = 136315650;
            sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
            log = v39;
            v47 = sub_1B7802068();
            v48 = v42;
            v50 = v49;
            v93 = *(v44 + 8);
            v93(v43, v45);
            v51 = sub_1B71A3EF8(v47, v50, &v101);

            *(v46 + 4) = v51;
            *(v46 + 12) = 512;
            *(v46 + 14) = v99;
            *(v46 + 16) = 2112;
            v52 = *(v10 + 20);
            sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
            swift_allocError();
            sub_1B7389968(v48 + v52, v53, type metadata accessor for FinanceNetworkError);
            v54 = _swift_stdlib_bridgeErrorToNSError();
            sub_1B73899D0(v48, type metadata accessor for BankConnectErrorWithConsent);
            *(v46 + 18) = v54;
            *v90 = v54;
            _os_log_impl(&dword_1B7198000, log, v92, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v46, 0x1Au);
            sub_1B7205418(v90, &qword_1EB9910D0);
            MEMORY[0x1B8CA7A40](v90, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v91);
            MEMORY[0x1B8CA7A40](v91, -1, -1);
            MEMORY[0x1B8CA7A40](v46, -1, -1);
          }

          else
          {
            v63 = *(v0 + 184);
            v62 = *(v0 + 192);
            v64 = *(v0 + 176);

            sub_1B73899D0(v42, type metadata accessor for BankConnectErrorWithConsent);
            v93 = *(v63 + 8);
            v93(v62, v64);
          }

          v65 = *(v0 + 200);
          v66 = *(v0 + 176);
          v67 = *(v0 + 184);
          v68 = *(v0 + 168);
          type metadata accessor for ManagedInstitution();
          v94(v68, v65, v66);
          (*(v67 + 56))(v68, 0, 1, v66);
          static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
          sub_1B7205418(v68, &qword_1EB98EBD0);
          v93(v65, v66);
          v24 = v98;
          break;
        case 3:
          sub_1B7389968(v7 + v98, *(v0 + 232), type metadata accessor for FinanceNetworkError);
          v26 = swift_getEnumCaseMultiPayload();
          v27 = *(v0 + 232);
          if (v26 == 3)
          {
            sub_1B7205418(v27, &qword_1EB98EBD0);
          }

          else
          {
            sub_1B73899D0(v27, type metadata accessor for FinanceNetworkError);
          }

          if (qword_1EDAF65A8 != -1)
          {
            swift_once();
          }

          v70 = *(v0 + 272);
          v69 = *(v0 + 280);
          v71 = sub_1B78000B8();
          __swift_project_value_buffer(v71, qword_1EDAF65B0);
          sub_1B7389968(v69, v70, type metadata accessor for BankConnectErrorWithConsent);
          v72 = sub_1B7800098();
          v73 = sub_1B78011B8();
          v74 = os_log_type_enabled(v72, v73);
          v75 = *(v0 + 272);
          if (v74)
          {
            v76 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            *&v101 = v100;
            *v76 = 136315394;
            if (v26 == 3)
            {
              v77 = 0xD000000000000029;
            }

            else
            {
              v77 = 0xD00000000000002ALL;
            }

            if (v26 == 3)
            {
              v78 = "shFailure.unspecifiedError";
            }

            else
            {
              v78 = ".merchantObject.muid = %lu";
            }

            v79 = sub_1B71A3EF8(v77, v78 | 0x8000000000000000, &v101);
            v24 = v98;

            *(v76 + 4) = v79;
            *(v76 + 12) = 2112;
            v80 = *(v10 + 20);
            sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
            swift_allocError();
            sub_1B7389968(v75 + v80, v81, type metadata accessor for FinanceNetworkError);
            v82 = _swift_stdlib_bridgeErrorToNSError();
            sub_1B73899D0(v75, type metadata accessor for BankConnectErrorWithConsent);
            *(v76 + 14) = v82;
            *v97 = v82;
            _os_log_impl(&dword_1B7198000, v72, v73, "Setting lastAccountRefreshFailure to: %s for error: %@", v76, 0x16u);
            sub_1B7205418(v97, &qword_1EB9910D0);
            MEMORY[0x1B8CA7A40](v97, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v100);
            MEMORY[0x1B8CA7A40](v100, -1, -1);
            MEMORY[0x1B8CA7A40](v76, -1, -1);
          }

          else
          {

            sub_1B73899D0(v75, type metadata accessor for BankConnectErrorWithConsent);
          }

          v83 = *(v0 + 240);
          v85 = *(v0 + 120);
          v84 = *(v0 + 128);
          v101 = *(v0 + 104);
          v102 = v85;
          v103 = v84;
          v104 = v26 != 3;
          sub_1B738922C();
          sub_1B7205418(v83, &qword_1EB98EBD0);
          break;
        default:
          sub_1B73899D0(*(v0 + 240), type metadata accessor for FinanceNetworkError);
          break;
      }

      v86 = *(v0 + 280);
      sub_1B77AE5D0(v7 + v24);
      sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      sub_1B7389968(v7 + v24, v87, type metadata accessor for FinanceNetworkError);
      swift_willThrow();
      sub_1B73899D0(v86, type metadata accessor for BankConnectErrorWithConsent);
    }

    else
    {
      v17 = *(v0 + 216);

      *(v0 + 64) = v1;
      v18 = v1;
      v19 = swift_dynamicCast();
      v20 = *(v17 + 56);
      if (v19)
      {
        v21 = *(v0 + 224);
        v22 = *(v0 + 160);
        v20(v22, 0, 1, *(v0 + 208));
        sub_1B7389580(v22, v21, type metadata accessor for FinanceNetworkError);
        sub_1B77AE5D0(v21);
        sub_1B73899D0(v21, type metadata accessor for FinanceNetworkError);
      }

      else
      {
        v23 = *(v0 + 160);
        v20(v23, 1, 1, *(v0 + 208));
        sub_1B7205418(v23, &qword_1EB992D88);
      }

      swift_willThrow();
    }

    v16 = *(v0 + 8);
  }

  else
  {
    sub_1B73899D0(v5, type metadata accessor for BankConnectWebServiceAccountRequest);

    sub_1B720A388(v4, v3);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1B7383990()
{
  v105 = v0;
  sub_1B73899D0(*(v0 + 304), type metadata accessor for BankConnectWebServiceAccountRequest);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 344);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 288);
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v100 = v0;
    v7 = *(v0 + 144);

    sub_1B7389580(v4, v3, type metadata accessor for BankConnectErrorWithConsent);
    v8 = v7[3];
    v98 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v96 = v5;
    v97 = v3;
    v9 = v3 + *(v5 + 20);
    v10 = *(v5 + 20);
    sub_1B7389968(v9, v6, type metadata accessor for FinanceNetworkError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 7)
    {
      sub_1B73899D0(*(v0 + 248), type metadata accessor for FinanceNetworkError);
    }

    v12 = *(v0 + 280);
    LOBYTE(v101) = EnumCaseMultiPayload == 7;
    BankConnectConsentStoring.updateConsent(_:consentStatus:)(v12, &v101, v8, v98);
    v20 = v97;
    sub_1B7389968(v97 + v10, *(v0 + 240), type metadata accessor for FinanceNetworkError);
    v21 = swift_getEnumCaseMultiPayload();
    switch(v21)
    {
      case 1:
        v50 = **(v0 + 240);
        *(v0 + 72) = v50;
        v51 = v50;
        if (swift_dynamicCast())
        {
          v52 = *(v0 + 280);
          v53 = *(v0 + 136);
          v54 = v7[3];
          v55 = v7[4];
          __swift_project_boxed_opaque_existential_1(*(v0 + 144), v54);
          v57 = *v52;
          v56 = v52[1];
          v58 = *(v55 + 56);

          v58(v57, v56, v53, v54, v55);

          v20 = v97;
        }

        else
        {
        }

        break;
      case 6:
        v24 = *(v0 + 240);
        v25 = *(v0 + 200);
        v26 = *(v0 + 176);
        v27 = *(v0 + 184);
        v99 = *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
        (*(v27 + 32))(v25, v24, v26);
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v95 = v10;
        v28 = *(v0 + 280);
        v29 = *(v0 + 264);
        v31 = *(v0 + 192);
        v30 = *(v0 + 200);
        v33 = *(v0 + 176);
        v32 = *(v0 + 184);
        v34 = sub_1B78000B8();
        __swift_project_value_buffer(v34, qword_1EDAF65B0);
        v94 = *(v32 + 16);
        v94(v31, v30, v33);
        sub_1B7389968(v28, v29, type metadata accessor for BankConnectErrorWithConsent);
        v35 = sub_1B7800098();
        v36 = sub_1B78011F8();
        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 264);
        if (v37)
        {
          v92 = v36;
          v40 = *(v0 + 184);
          v39 = *(v0 + 192);
          v41 = *(v0 + 176);
          v42 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *&v101 = v91;
          *v42 = 136315650;
          sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
          v43 = sub_1B7802068();
          v45 = v44;
          v93 = *(v40 + 8);
          v93(v39, v41);
          v46 = sub_1B71A3EF8(v43, v45, &v101);
          v20 = v97;

          *(v42 + 4) = v46;
          *(v42 + 12) = 512;
          *(v42 + 14) = v99;
          *(v42 + 16) = 2112;
          v47 = *(v96 + 20);
          sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
          swift_allocError();
          sub_1B7389968(v38 + v47, v48, type metadata accessor for FinanceNetworkError);
          v49 = _swift_stdlib_bridgeErrorToNSError();
          sub_1B73899D0(v38, type metadata accessor for BankConnectErrorWithConsent);
          *(v42 + 18) = v49;
          *v90 = v49;
          _os_log_impl(&dword_1B7198000, v35, v92, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v42, 0x1Au);
          sub_1B7205418(v90, &qword_1EB9910D0);
          MEMORY[0x1B8CA7A40](v90, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v91);
          MEMORY[0x1B8CA7A40](v91, -1, -1);
          MEMORY[0x1B8CA7A40](v42, -1, -1);
        }

        else
        {
          v59 = *(v0 + 184);
          v60 = *(v0 + 192);
          v61 = *(v0 + 176);

          sub_1B73899D0(v38, type metadata accessor for BankConnectErrorWithConsent);
          v93 = *(v59 + 8);
          v93(v60, v61);
        }

        v62 = *(v0 + 200);
        v64 = *(v0 + 176);
        v63 = *(v0 + 184);
        v65 = *(v0 + 168);
        type metadata accessor for ManagedInstitution();
        v94(v65, v62, v64);
        (*(v63 + 56))(v65, 0, 1, v64);
        static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
        sub_1B7205418(v65, &qword_1EB98EBD0);
        v93(v62, v64);
        v10 = v95;
        break;
      case 3:
        sub_1B7389968(v97 + v10, *(v0 + 232), type metadata accessor for FinanceNetworkError);
        v22 = swift_getEnumCaseMultiPayload();
        v23 = *(v0 + 232);
        if (v22 == 3)
        {
          sub_1B7205418(v23, &qword_1EB98EBD0);
        }

        else
        {
          sub_1B73899D0(v23, type metadata accessor for FinanceNetworkError);
        }

        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v67 = *(v0 + 272);
        v66 = *(v0 + 280);
        v68 = sub_1B78000B8();
        __swift_project_value_buffer(v68, qword_1EDAF65B0);
        sub_1B7389968(v66, v67, type metadata accessor for BankConnectErrorWithConsent);
        v69 = sub_1B7800098();
        v70 = sub_1B78011B8();
        v71 = os_log_type_enabled(v69, v70);
        v72 = *(v0 + 272);
        if (v71)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v101 = v75;
          *v73 = 136315394;
          if (v22 == 3)
          {
            v76 = 0xD000000000000029;
          }

          else
          {
            v76 = 0xD00000000000002ALL;
          }

          v77 = v22;
          if (v22 == 3)
          {
            v78 = "shFailure.unspecifiedError";
          }

          else
          {
            v78 = ".merchantObject.muid = %lu";
          }

          v79 = sub_1B71A3EF8(v76, v78 | 0x8000000000000000, &v101);
          v22 = v77;

          *(v73 + 4) = v79;
          *(v73 + 12) = 2112;
          v80 = *(v96 + 20);
          sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
          swift_allocError();
          sub_1B7389968(v72 + v80, v81, type metadata accessor for FinanceNetworkError);
          v82 = _swift_stdlib_bridgeErrorToNSError();
          sub_1B73899D0(v72, type metadata accessor for BankConnectErrorWithConsent);
          *(v73 + 14) = v82;
          *v74 = v82;
          v20 = v97;
          v0 = v100;
          _os_log_impl(&dword_1B7198000, v69, v70, "Setting lastAccountRefreshFailure to: %s for error: %@", v73, 0x16u);
          sub_1B7205418(v74, &qword_1EB9910D0);
          MEMORY[0x1B8CA7A40](v74, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v75);
          MEMORY[0x1B8CA7A40](v75, -1, -1);
          MEMORY[0x1B8CA7A40](v73, -1, -1);
        }

        else
        {

          sub_1B73899D0(v72, type metadata accessor for BankConnectErrorWithConsent);
        }

        v83 = *(v0 + 240);
        v85 = *(v0 + 120);
        v84 = *(v0 + 128);
        v101 = *(v0 + 104);
        v102 = v85;
        v103 = v84;
        v104 = v22 != 3;
        sub_1B738922C();
        sub_1B7205418(v83, &qword_1EB98EBD0);
        break;
      default:
        sub_1B73899D0(*(v0 + 240), type metadata accessor for FinanceNetworkError);
        break;
    }

    v86 = *(v0 + 280);
    sub_1B77AE5D0(v20 + v10);
    sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B7389968(v20 + v10, v87, type metadata accessor for FinanceNetworkError);
    swift_willThrow();
    sub_1B73899D0(v86, type metadata accessor for BankConnectErrorWithConsent);
  }

  else
  {
    v13 = *(v0 + 216);

    *(v0 + 64) = v1;
    v14 = v1;
    v15 = swift_dynamicCast();
    v16 = *(v13 + 56);
    if (v15)
    {
      v17 = *(v0 + 224);
      v18 = *(v0 + 160);
      v16(v18, 0, 1, *(v0 + 208));
      sub_1B7389580(v18, v17, type metadata accessor for FinanceNetworkError);
      sub_1B77AE5D0(v17);
      sub_1B73899D0(v17, type metadata accessor for FinanceNetworkError);
    }

    else
    {
      v19 = *(v0 + 160);
      v16(v19, 1, 1, *(v0 + 208));
      sub_1B7205418(v19, &qword_1EB992D88);
    }

    swift_willThrow();
  }

  v88 = *(v0 + 8);

  return v88();
}

void *sub_1B738467C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v68 = a8;
  v69 = a7;
  v66 = a9;
  v74 = *MEMORY[0x1E69E9840];
  v17 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v67 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v70 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v64 - v22;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992DA0) + 28);
  if ((*(a1 + *(type metadata accessor for BankConnectResponseHeaders() + 20) + v24 + 2) & 1) == 0)
  {
    v65 = a4;
    type metadata accessor for ManagedInstitution();
    v25 = sub_1B77FF988();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v10 = v9;
    a4 = v65;
    static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();
    sub_1B7205418(v23, &qword_1EB98EBD0);
  }

  type metadata accessor for ManagedInternalAccount();
  *&v71 = a2;
  *(&v71 + 1) = a3;
  v72 = a4;
  v73 = a5;
  result = static ManagedInternalAccount.existingAccount(with:in:)(&v71);
  if (!v10)
  {
    v27 = result;
    v65 = 0;
    v28 = a6;
    if (result)
    {
      v29 = result;
      v30 = v70;
      InternalAccount.init(_:)(v29, v70);
      v31 = 0;
    }

    else
    {
      v31 = 1;
      v30 = v70;
    }

    v32 = type metadata accessor for InternalAccount();
    (*(*(v32 - 8) + 56))(v30, v31, 1, v32);
    type metadata accessor for ManagedAccountImporter();
    inited = swift_initStackObject();
    type metadata accessor for ManagedAccountBalanceImporter();
    *(inited + 16) = swift_initStackObject();
    v34 = (v69 + *(type metadata accessor for BankConnectConsent() + 20));
    v35 = *v34;
    v36 = v34[1];
    type metadata accessor for ManagedConsent();
    v37 = v65;
    v38 = static ManagedConsent.existingConsent(withConsentID:in:)(v35, v36);
    if (v37)
    {

      v39 = v30;
      return sub_1B7205418(v39, &qword_1EB991920);
    }

    if (!v38)
    {
      sub_1B73891D8();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();

      v39 = v70;
      return sub_1B7205418(v39, &qword_1EB991920);
    }

    v40 = v38;
    if (v27)
    {
      v41 = v27;
      if (([v41 isAccountEnabled] & 1) == 0)
      {
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v50 = sub_1B78000B8();
        __swift_project_value_buffer(v50, qword_1EDAF65B0);
        v51 = sub_1B7800098();
        v52 = sub_1B78011D8();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1B7198000, v51, v52, "Unable to update account, account is disabled", v53, 2u);
          MEMORY[0x1B8CA7A40](v53, -1, -1);
        }

        sub_1B73891D8();
        swift_allocError();
        *v54 = 1;
        swift_willThrow();

        v55 = v70;
        return sub_1B7205418(v55, &qword_1EB991920);
      }

      _s10FinanceKit22ManagedInternalAccountC6update_7consent07withRawE0yAC_AA0C7ConsentCAA0I15BankConnectDataO0E0OtFZ_0(v41, v40, a1);
      v42 = v28;

      v43 = v41;
    }

    else
    {
      v45 = v67;
      sub_1B7389968(a1, v67, type metadata accessor for RawBankConnectData.Account);
      sub_1B719B06C(v68, &v71);
      v46 = v40;
      v47 = v28;
      v48 = v28;
      v49 = sub_1B7674D90(v45, v46, &v71, v48);

      v42 = v47;
      v43 = v49;
      v41 = 0;
    }

    v56 = v41;
    [v43 setEarliestAccountRequestStartDate_];

    *&v71 = 0;
    v57 = [v42 save_];
    v58 = v71;
    if ((v57 & 1) == 0)
    {
      v63 = v71;
      sub_1B77FF318();

      swift_willThrow();
      return sub_1B7205418(v70, &qword_1EB991920);
    }

    v59 = v70;
    v60 = v66;
    sub_1B72EA97C(v70, v66);
    v61 = *(type metadata accessor for BankConnectAccountChange() + 20);
    v62 = v58;
    InternalAccount.init(_:)(v43, v60 + v61);

    v55 = v59;
    return sub_1B7205418(v55, &qword_1EB991920);
  }

  return result;
}

uint64_t sub_1B7384D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a3;
  v8[19] = a4;
  v8[16] = a1;
  v8[17] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D88);
  v8[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8[25] = swift_task_alloc();
  v9 = sub_1B77FF988();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v10 = type metadata accessor for FinanceNetworkError();
  v8[30] = v10;
  v8[31] = *(v10 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = type metadata accessor for BankConnectErrorWithConsent(0);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = type metadata accessor for BankConnectWebServiceAccountsRequest(0);
  v8[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7384FA8, 0, 0);
}

uint64_t sub_1B7384FA8()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[19];
  sub_1B7389968(v0[18], v1, type metadata accessor for BankConnectConsent);
  type metadata accessor for BankConnectWebServiceAccountsRequest.ConsentType(0);
  swift_storeEnumTagMultiPayload();
  sub_1B7389968(v3, v1 + *(v2 + 24), type metadata accessor for UserPresence);
  v4 = (v1 + *(v2 + 20));
  *v4 = 0;
  v4[1] = 0;
  v0[5] = v2;
  v0[6] = &protocol witness table for BankConnectWebServiceAccountsRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B7389968(v1, boxed_opaque_existential_1, type metadata accessor for BankConnectWebServiceAccountsRequest);
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_1B73850F4;

  return sub_1B77955F8((v0 + 2), 1, 0, 1);
}

uint64_t sub_1B73850F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[42] = a1;
  v5[43] = a2;
  v5[44] = a3;
  v5[45] = v3;

  if (v3)
  {
    v6 = sub_1B7385D8C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + 2));
    v6 = sub_1B7385214;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B7385214()
{
  v91 = v0;
  v1 = *(v0 + 360);
  sub_1B777D014(*(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 128));
  v2 = v1;
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  if (v2)
  {

    sub_1B720A388(v5, v4);
    sub_1B73899D0(*(v0 + 320), type metadata accessor for BankConnectWebServiceAccountsRequest);
    *(v0 + 112) = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 296);
      v8 = *(v0 + 304);
      v9 = *(v0 + 272);
      v10 = *(v0 + 280);
      v11 = *(v0 + 160);

      sub_1B7389580(v8, v7, type metadata accessor for BankConnectErrorWithConsent);
      v12 = v11[5];
      v13 = v11[6];
      __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
      (*(v13 + 24))(v12, v13);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v14);
      v16 = *(v10 + 20);
      sub_1B7389968(v7 + v16, v9, type metadata accessor for FinanceNetworkError);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 7)
      {
        sub_1B73899D0(*(v0 + 272), type metadata accessor for FinanceNetworkError);
      }

      v18 = *(v0 + 296);
      LOBYTE(v90[0]) = EnumCaseMultiPayload == 7;
      BankConnectConsentStoring.updateConsent(_:consentStatus:)(v18, v90, v14, v15);
      v28 = *(v0 + 264);
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
      sub_1B7389968(v7 + v16, v28, type metadata accessor for FinanceNetworkError);
      v29 = swift_getEnumCaseMultiPayload();
      v30 = *(v0 + 264);
      if (v29 == 6)
      {
        v87 = v16;
        v31 = *(v0 + 232);
        v32 = *(v0 + 208);
        v33 = *(v0 + 216);
        v88 = *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
        (*(v33 + 32))(v31, v30, v32);
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v34 = *(v0 + 288);
        v35 = *(v0 + 296);
        v37 = *(v0 + 224);
        v36 = *(v0 + 232);
        v38 = *(v0 + 208);
        v39 = *(v0 + 216);
        v40 = sub_1B78000B8();
        __swift_project_value_buffer(v40, qword_1EDAF65B0);
        v85 = *(v39 + 16);
        v85(v37, v36, v38);
        sub_1B7389968(v35, v34, type metadata accessor for BankConnectErrorWithConsent);
        v41 = sub_1B7800098();
        v42 = sub_1B78011F8();
        v43 = os_log_type_enabled(v41, v42);
        v44 = *(v0 + 288);
        if (v43)
        {
          v45 = *(v0 + 216);
          v46 = *(v0 + 224);
          v47 = *(v0 + 208);
          log = v41;
          v48 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v90[0] = v84;
          *v48 = 136315650;
          sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
          v81 = v42;
          v49 = sub_1B7802068();
          v51 = v50;
          v80 = v44;
          v52 = *(v45 + 8);
          v52(v46, v47);
          v53 = sub_1B71A3EF8(v49, v51, v90);

          *(v48 + 4) = v53;
          *(v48 + 12) = 512;
          *(v48 + 14) = v88;
          *(v48 + 16) = 2112;
          v54 = *(v10 + 20);
          v55 = v52;
          sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
          swift_allocError();
          sub_1B7389968(v80 + v54, v56, type metadata accessor for FinanceNetworkError);
          v57 = _swift_stdlib_bridgeErrorToNSError();
          sub_1B73899D0(v80, type metadata accessor for BankConnectErrorWithConsent);
          *(v48 + 18) = v57;
          *v82 = v57;
          _os_log_impl(&dword_1B7198000, log, v81, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v48, 0x1Au);
          sub_1B7205418(v82, &qword_1EB9910D0);
          MEMORY[0x1B8CA7A40](v82, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v84);
          MEMORY[0x1B8CA7A40](v84, -1, -1);
          MEMORY[0x1B8CA7A40](v48, -1, -1);
        }

        else
        {
          v62 = *(v0 + 216);
          v61 = *(v0 + 224);
          v63 = *(v0 + 208);

          sub_1B73899D0(v44, type metadata accessor for BankConnectErrorWithConsent);
          v55 = *(v62 + 8);
          v55(v61, v63);
        }

        v65 = *(v0 + 176);
        v64 = *(v0 + 184);
        v66 = *(v0 + 168);
        v67 = swift_task_alloc();
        v67[2] = v65;
        v67[3] = v64;
        v67[4] = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98);
        sub_1B7801468();

        if (*(v0 + 104))
        {
          v68 = *(v0 + 232);
          v69 = *(v0 + 208);
          v70 = *(v0 + 216);
          v71 = *(v0 + 200);
          type metadata accessor for ManagedInstitution();
          v85(v71, v68, v69);
          (*(v70 + 56))(v71, 0, 1, v69);
          static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();

          sub_1B7205418(v71, &qword_1EB98EBD0);
          v55(v68, v69);
          v16 = v87;
        }

        else
        {

          v72 = sub_1B7800098();
          v73 = sub_1B78011D8();

          v74 = os_log_type_enabled(v72, v73);
          v75 = *(v0 + 232);
          v76 = *(v0 + 208);
          if (v74)
          {
            v77 = *(v0 + 176);
            v86 = *(v0 + 184);
            v89 = v55;
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v90[0] = v79;
            *v78 = 136315138;
            *(v78 + 4) = sub_1B71A3EF8(v77, v86, v90);
            _os_log_impl(&dword_1B7198000, v72, v73, "Could not find institution for consent ID: %s.", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v79);
            MEMORY[0x1B8CA7A40](v79, -1, -1);
            MEMORY[0x1B8CA7A40](v78, -1, -1);

            v89(v75, v76);
          }

          else
          {

            v55(v75, v76);
          }

          v16 = v87;
        }
      }

      else
      {
        sub_1B73899D0(*(v0 + 264), type metadata accessor for FinanceNetworkError);
      }

      v58 = *(v0 + 296);
      sub_1B77AE5D0(v7 + v16);
      sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      sub_1B7389968(v7 + v16, v59, type metadata accessor for FinanceNetworkError);
      swift_willThrow();
      sub_1B73899D0(v58, type metadata accessor for BankConnectErrorWithConsent);
    }

    else
    {
      v21 = *(v0 + 248);

      *(v0 + 120) = v2;
      v22 = v2;
      v23 = swift_dynamicCast();
      v24 = *(v21 + 56);
      if (v23)
      {
        v25 = *(v0 + 256);
        v26 = *(v0 + 192);
        v24(v26, 0, 1, *(v0 + 240));
        sub_1B7389580(v26, v25, type metadata accessor for FinanceNetworkError);
        sub_1B77AE5D0(v25);
        sub_1B73899D0(v25, type metadata accessor for FinanceNetworkError);
      }

      else
      {
        v27 = *(v0 + 192);
        v24(v27, 1, 1, *(v0 + 240));
        sub_1B7205418(v27, &qword_1EB992D88);
      }

      swift_willThrow();
    }

    v20 = *(v0 + 8);
  }

  else
  {
    v19 = *(v0 + 320);

    sub_1B720A388(v5, v4);
    sub_1B73899D0(v19, type metadata accessor for BankConnectWebServiceAccountsRequest);

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1B7385D8C()
{
  v87 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 360);
  sub_1B73899D0(*(v0 + 320), type metadata accessor for BankConnectWebServiceAccountsRequest);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    v5 = *(v0 + 272);
    v6 = *(v0 + 280);
    v7 = *(v0 + 160);

    sub_1B7389580(v4, v3, type metadata accessor for BankConnectErrorWithConsent);
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
    (*(v9 + 24))(v8, v9);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
    v85 = *(v6 + 20);
    sub_1B7389968(v3 + v85, v5, type metadata accessor for FinanceNetworkError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 7)
    {
      sub_1B73899D0(*(v0 + 272), type metadata accessor for FinanceNetworkError);
    }

    v13 = *(v0 + 296);
    LOBYTE(v86[0]) = EnumCaseMultiPayload == 7;
    BankConnectConsentStoring.updateConsent(_:consentStatus:)(v13, v86, v10, v11);
    v21 = *(v0 + 264);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    sub_1B7389968(v3 + v85, v21, type metadata accessor for FinanceNetworkError);
    v22 = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 264);
    if (v22 == 6)
    {
      v24 = *(v0 + 232);
      v25 = *(v0 + 208);
      v26 = *(v0 + 216);
      v81 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
      (*(v26 + 32))(v24, v23, v25);
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 288);
      v28 = *(v0 + 296);
      v30 = *(v0 + 224);
      v29 = *(v0 + 232);
      v31 = *(v0 + 208);
      v32 = *(v0 + 216);
      v33 = sub_1B78000B8();
      __swift_project_value_buffer(v33, qword_1EDAF65B0);
      v80 = *(v32 + 16);
      v80(v30, v29, v31);
      sub_1B7389968(v28, v27, type metadata accessor for BankConnectErrorWithConsent);
      v34 = sub_1B7800098();
      v35 = sub_1B78011F8();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 288);
      if (v36)
      {
        v75 = *(v0 + 288);
        v79 = v35;
        v39 = *(v0 + 216);
        v38 = *(v0 + 224);
        v77 = v34;
        v40 = *(v0 + 208);
        v41 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v86[0] = v78;
        *v41 = 136315650;
        sub_1B7389608(&qword_1EB991200, MEMORY[0x1E6969530]);
        v42 = sub_1B7802068();
        v44 = v43;
        v45 = *(v39 + 8);
        v45(v38, v40);
        v46 = sub_1B71A3EF8(v42, v44, v86);

        *(v41 + 4) = v46;
        *(v41 + 12) = 512;
        *(v41 + 14) = v81;
        *(v41 + 16) = 2112;
        v47 = *(v6 + 20);
        sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        sub_1B7389968(v75 + v47, v48, type metadata accessor for FinanceNetworkError);
        v49 = _swift_stdlib_bridgeErrorToNSError();
        sub_1B73899D0(v75, type metadata accessor for BankConnectErrorWithConsent);
        *(v41 + 18) = v49;
        *v76 = v49;
        _os_log_impl(&dword_1B7198000, v77, v79, "Set background refresh retry-after to: %s and remaining refreshes to %hd for error: %@", v41, 0x1Au);
        sub_1B7205418(v76, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v76, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x1B8CA7A40](v78, -1, -1);
        MEMORY[0x1B8CA7A40](v41, -1, -1);

        v50 = v45;
      }

      else
      {
        v52 = *(v0 + 216);
        v51 = *(v0 + 224);
        v53 = *(v0 + 208);

        sub_1B73899D0(v37, type metadata accessor for BankConnectErrorWithConsent);
        v50 = *(v52 + 8);
        v50(v51, v53);
      }

      v55 = *(v0 + 176);
      v54 = *(v0 + 184);
      v56 = *(v0 + 168);
      v57 = swift_task_alloc();
      v57[2] = v55;
      v57[3] = v54;
      v57[4] = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D98);
      sub_1B7801468();

      if (*(v0 + 104))
      {
        v58 = *(v0 + 232);
        v59 = *(v0 + 208);
        v60 = *(v0 + 216);
        v83 = v50;
        v61 = *(v0 + 200);
        type metadata accessor for ManagedInstitution();
        v80(v61, v58, v59);
        (*(v60 + 56))(v61, 0, 1, v59);
        static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:institutionID:context:)();

        sub_1B7205418(v61, &qword_1EB98EBD0);
        v83(v58, v59);
      }

      else
      {

        v62 = sub_1B7800098();
        v63 = sub_1B78011D8();

        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 232);
        v66 = *(v0 + 208);
        if (v64)
        {
          v84 = v50;
          v68 = *(v0 + 176);
          v67 = *(v0 + 184);
          v69 = swift_slowAlloc();
          v82 = v65;
          v70 = swift_slowAlloc();
          v86[0] = v70;
          *v69 = 136315138;
          *(v69 + 4) = sub_1B71A3EF8(v68, v67, v86);
          _os_log_impl(&dword_1B7198000, v62, v63, "Could not find institution for consent ID: %s.", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x1B8CA7A40](v70, -1, -1);
          MEMORY[0x1B8CA7A40](v69, -1, -1);

          v84(v82, v66);
        }

        else
        {

          v50(v65, v66);
        }
      }
    }

    else
    {
      sub_1B73899D0(*(v0 + 264), type metadata accessor for FinanceNetworkError);
    }

    v71 = *(v0 + 296);
    sub_1B77AE5D0(v3 + v85);
    sub_1B7389608(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B7389968(v3 + v85, v72, type metadata accessor for FinanceNetworkError);
    swift_willThrow();
    sub_1B73899D0(v71, type metadata accessor for BankConnectErrorWithConsent);
  }

  else
  {
    v14 = *(v0 + 248);

    *(v0 + 120) = v1;
    v15 = v1;
    v16 = swift_dynamicCast();
    v17 = *(v14 + 56);
    if (v16)
    {
      v18 = *(v0 + 256);
      v19 = *(v0 + 192);
      v17(v19, 0, 1, *(v0 + 240));
      sub_1B7389580(v19, v18, type metadata accessor for FinanceNetworkError);
      sub_1B77AE5D0(v18);
      sub_1B73899D0(v18, type metadata accessor for FinanceNetworkError);
    }

    else
    {
      v20 = *(v0 + 192);
      v17(v20, 1, 1, *(v0 + 240));
      sub_1B7205418(v20, &qword_1EB992D88);
    }

    swift_willThrow();
  }

  v73 = *(v0 + 8);

  return v73();
}

void sub_1B738682C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ManagedInstitution();
  v7 = static ManagedInstitution.existingInstitution(forConsentID:in:)(a1, a2);
  if (!v3)
  {
    if (v7)
    {
      v8 = v7;
      v9 = [v7 id];
      v10 = sub_1B7800868();
      v12 = v11;

      *a3 = v10;
      a3[1] = v12;
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

id sub_1B73868DC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = (v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for RawBankConnectData.Account(0);
  v48 = *(v50 - 8);
  v14 = MEMORY[0x1EEE9AC00](v50);
  v49 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v40 - v19;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D78) + 28);
  v22 = type metadata accessor for BankConnectResponseHeaders();
  if ((*(a1 + *(v22 + 20) + v21 + 2) & 1) == 0)
  {
    type metadata accessor for ManagedInstitution();
    v23 = sub_1B77FF988();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
    static ManagedInstitution.setBackgroundRefreshMetadata(retryAfter:remainingRefreshes:consentID:context:)();
    v22 = sub_1B7205418(v20, &qword_1EB98EBD0);
  }

  v24 = *a1;
  v25 = *(*a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v41 = a2;
    v42 = a3;
    v43 = a5;
    v44 = a4;
    v51[0] = MEMORY[0x1E69E7CC0];
    sub_1B71FDB50(0, v25, 0);
    v26 = v51[0];
    v27 = *(v48 + 80);
    v40[1] = v24;
    v28 = v24 + ((v27 + 32) & ~v27);
    v48 = *(v48 + 72);
    do
    {
      sub_1B7389968(v28, v17, type metadata accessor for RawBankConnectData.Account);
      v29 = v49;
      sub_1B7389968(v17, v49, type metadata accessor for RawBankConnectData.Account);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v47;
        sub_1B7389580(v29, v47, type metadata accessor for RawBankConnectData.LiabilityAccount);
        v31 = *v30;
        v32 = v30[1];

        v33 = type metadata accessor for RawBankConnectData.LiabilityAccount;
      }

      else
      {
        v30 = v46;
        sub_1B7389580(v29, v46, type metadata accessor for RawBankConnectData.AssetAccount);
        v31 = *v30;
        v32 = v30[1];

        v33 = type metadata accessor for RawBankConnectData.AssetAccount;
      }

      sub_1B73899D0(v30, v33);
      v22 = sub_1B73899D0(v17, type metadata accessor for RawBankConnectData.Account);
      v51[0] = v26;
      v35 = v26[2];
      v34 = v26[3];
      if (v35 >= v34 >> 1)
      {
        v22 = sub_1B71FDB50((v34 > 1), v35 + 1, 1);
        v26 = v51[0];
      }

      v26[2] = v35 + 1;
      v36 = &v26[2 * v35];
      v36[4] = v31;
      v36[5] = v32;
      v28 += v48;
      --v25;
    }

    while (v25);
    a5 = v43;
    a4 = v44;
    a2 = v41;
    a3 = v42;
  }

  MEMORY[0x1EEE9AC00](v22);
  v40[-6] = v26;
  v40[-5] = a2;
  v40[-4] = a3;
  v40[-3] = a4;
  v40[-2] = a5;
  v37 = v45;
  sub_1B7801468();
  if (v37)
  {
  }

  sub_1B7386E30();
  v51[0] = 0;
  if ([a4 save_])
  {
    return v51[0];
  }

  v39 = v51[0];
  sub_1B77FF318();

  return swift_willThrow();
}

uint64_t sub_1B7386E30()
{
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 80))(v12, v2, v3);
  sub_1B7801468();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    (*(v5 + 56))(v9, v4, v5);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v7 + 16))(v13, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

void sub_1B7386FB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for ManagedInternalAccount();
  v43.receiver = swift_getObjCClassFromMetadata();
  v43.super_class = &OBJC_METACLASS____TtC10FinanceKit22ManagedInternalAccount;
  v6 = objc_msgSendSuper2(&v43, sel_fetchRequest);
  v7 = sub_1B7800C18();
  [v6 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v9 + 64) = sub_1B7220068();
  *(v9 + 32) = a1;

  *(v8 + 32) = sub_1B78010E8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7807CD0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1B721FF04();
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;

  v11 = v6;
  *(v8 + 40) = sub_1B78010E8();
  v12 = sub_1B7800C18();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v11 setPredicate_];
  v14 = a4;
  v15 = sub_1B7801498();
  if (v41)
  {

    return;
  }

  v16 = v15;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_17:

    return;
  }

  v17 = sub_1B7801958();
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_5:
  v34 = v11;
  if (v17 < 1)
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    v40 = v16 & 0xC000000000000001;
    v35 = v16;
    v42 = v17;
    do
    {
      if (v40)
      {
        v19 = MEMORY[0x1B8CA5DC0](v18, v16);
      }

      else
      {
        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      sub_1B7387530(v19);
      if (qword_1EDAF65A8 != -1)
      {
        swift_once();
      }

      v21 = sub_1B78000B8();
      __swift_project_value_buffer(v21, qword_1EDAF65B0);
      v22 = v20;
      v23 = sub_1B7800098();
      v24 = sub_1B78011F8();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v25 = 136315138;
        v26 = [v22 accountId];
        v37 = sub_1B7800868();
        v28 = v27;

        v29 = [v22 institutionId];
        v30 = sub_1B7800868();
        v32 = v31;

        sub_1B7801A78();
        MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
        MEMORY[0x1B8CA4D30](v37, v28);
        MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
        MEMORY[0x1B8CA4D30](v30, v32);
        MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
        v14 = a4;

        v16 = v35;

        v33 = sub_1B71A3EF8(0, 0xE000000000000000, &v44);

        *(v25 + 4) = v33;
        _os_log_impl(&dword_1B7198000, v23, v24, "Account with %s is no longer\nauthorized, removing account from the device.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1B8CA7A40](v38, -1, -1);
        MEMORY[0x1B8CA7A40](v25, -1, -1);
      }

      ++v18;
      [v14 deleteObject_];
    }

    while (v42 != v18);
  }
}

uint64_t sub_1B7387530(void *a1)
{
  v2 = v1;
  v4 = [a1 externalAccountId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = v2[5];
    v10 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
    (*(v10 + 48))(v24, v9, v10);
    v11 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990170);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B7807CD0;
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    *(v12 + 48) = 0;
    (*(v11 + 8))();

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v13 = [a1 accountId];
  v14 = sub_1B7800868();
  v16 = v15;

  v17 = v2[5];
  v18 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v17);
  (*(v18 + 48))(v24, v17, v18);
  v19 = v25;
  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990170);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B781A380;
  *(v21 + 32) = v14;
  *(v21 + 40) = v16;
  *(v21 + 48) = 1;
  *(v21 + 56) = v14;
  *(v21 + 64) = v16;
  *(v21 + 72) = 2;
  *(v21 + 80) = v14;
  *(v21 + 88) = v16;
  *(v21 + 96) = 3;
  *(v21 + 104) = v14;
  *(v21 + 112) = v16;
  *(v21 + 120) = 4;
  *(v21 + 128) = v14;
  *(v21 + 136) = v16;
  *(v21 + 144) = 5;
  v22 = *(v20 + 8);
  swift_bridgeObjectRetain_n();
  v22(v21, v19, v20);

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1B7387768(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, size_t *a6)
{
  v84 = a6;
  v72 = a5;
  v87 = a4;
  v85 = a2;
  v9 = type metadata accessor for BankConnectAccountChange();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v83 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v70 - v12;
  v14 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = (v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = (v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for RawBankConnectData.Account(0);
  v18 = *(v81 - 8);
  v19 = MEMORY[0x1EEE9AC00](v81);
  v71 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v70 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v70 - v24;
  type metadata accessor for ManagedAccountImporter();
  inited = swift_initStackObject();
  type metadata accessor for ManagedAccountBalanceImporter();
  *(inited + 16) = swift_initStackObject();
  v27 = inited;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v70[1] = v27;
  v82 = type metadata accessor for ManagedInternalAccount();
  v29 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v75 = *(v18 + 72);
  v76 = v23;
  v77 = a3;
  v78 = v25;
  while (1)
  {
    sub_1B7389968(v29, v25, type metadata accessor for RawBankConnectData.Account);
    sub_1B7389968(v25, v23, type metadata accessor for RawBankConnectData.Account);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v23;
      v31 = v74;
      sub_1B7389580(v30, v74, type metadata accessor for RawBankConnectData.LiabilityAccount);
      v32 = *v31;
      v33 = v31[1];

      v34 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    }

    else
    {
      v35 = v23;
      v31 = v73;
      sub_1B7389580(v35, v73, type metadata accessor for RawBankConnectData.AssetAccount);
      v32 = *v31;
      v33 = v31[1];

      v34 = type metadata accessor for RawBankConnectData.AssetAccount;
    }

    sub_1B73899D0(v31, v34);
    v36 = static ManagedInternalAccount.existingAccount(accountID:consentID:in:)(v32, v33, v85, a3);
    if (v6)
    {
      sub_1B73899D0(v25, type metadata accessor for RawBankConnectData.Account);
    }

    v37 = v36;

    if (v37)
    {
      [v37 setIsAccountEnabled_];
      InternalAccount.init(_:)(v37, v13);
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = type metadata accessor for InternalAccount();
    (*(*(v39 - 8) + 56))(v13, v38, 1, v39);
    type metadata accessor for ManagedConsent();
    v40 = static ManagedConsent.existingConsent(withConsentID:in:)(v85, a3);
    if (!v40)
    {
      sub_1B73891D8();
      swift_allocError();
      *v63 = 0;
      swift_willThrow();

      v64 = v13;
      goto LABEL_29;
    }

    v41 = v13;
    if (!v37)
    {
      v44 = v71;
      sub_1B7389968(v25, v71, type metadata accessor for RawBankConnectData.Account);
      sub_1B719B06C(v72, v86);
      v45 = v40;
      v46 = v87;
      v47 = sub_1B7674D90(v44, v45, v86, v46);

      v43 = v47;
      v42 = 0;
      goto LABEL_15;
    }

    v42 = v37;
    if (([v42 isAccountEnabled] & 1) == 0)
    {
      break;
    }

    _s10FinanceKit22ManagedInternalAccountC6update_7consent07withRawE0yAC_AA0C7ConsentCAA0I15BankConnectDataO0E0OtFZ_0(v42, v40, v25);

    v43 = v42;
LABEL_15:
    v48 = v42;
    [v43 setEarliestAccountRequestStartDate_];

    v49 = v83;
    sub_1B72EA97C(v41, v83);
    v50 = *(v80 + 20);
    v51 = v43;
    InternalAccount.init(_:)(v51, v49 + v50);
    v52 = v84;
    v53 = *v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_1B723F120(0, v53[2] + 1, 1, v53);
      *v84 = v53;
    }

    v56 = v53[2];
    v55 = v53[3];
    if (v56 >= v55 >> 1)
    {
      v61 = sub_1B723F120(v55 > 1, v56 + 1, 1, v53);
      *v84 = v61;
    }

    v13 = v41;
    sub_1B7205418(v41, &qword_1EB991920);
    v57 = v78;
    sub_1B73899D0(v78, type metadata accessor for RawBankConnectData.Account);
    v58 = v83;
    v59 = *v84;
    *(v59 + 16) = v56 + 1;
    v60 = v59 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v56;
    v25 = v57;
    sub_1B7389580(v58, v60, type metadata accessor for BankConnectAccountChange);
    v23 = v76;
    v29 += v75;
    --v28;
    a3 = v77;
    if (!v28)
    {
    }
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v65 = sub_1B78000B8();
  __swift_project_value_buffer(v65, qword_1EDAF65B0);
  v66 = sub_1B7800098();
  v67 = sub_1B78011D8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1B7198000, v66, v67, "Unable to update account, account is disabled", v68, 2u);
    MEMORY[0x1B8CA7A40](v68, -1, -1);
  }

  sub_1B73891D8();
  swift_allocError();
  *v69 = 1;
  swift_willThrow();

  v64 = v41;
LABEL_29:
  sub_1B7205418(v64, &qword_1EB991920);
  return sub_1B73899D0(v25, type metadata accessor for RawBankConnectData.Account);
}

void sub_1B7388028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v22 = *MEMORY[0x1E69E9840];
  type metadata accessor for ManagedInternalAccount();
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  v13 = static ManagedInternalAccount.existingAccount(with:in:)(&v19);
  if (!v6 && v13)
  {
    if (a6 == 2)
    {
      v14 = 0;
    }

    else
    {
      v15 = v13;
      v14 = sub_1B7801008();
      v13 = v15;
    }

    v16 = v13;
    [v13 setLastAccountRefreshFailureValue_];

    *&v19 = 0;
    if ([a5 save_])
    {
      v17 = v19;
    }

    else
    {
      v18 = v19;
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

uint64_t sub_1B738817C(uint64_t a1)
{
  v4 = *(type metadata accessor for UserPresence() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7201BB0;

  return sub_1B73806B8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1B73882C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  swift_beginAccess();
  v18 = *(a2 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1B723EFEC(0, v18[2] + 1, 1, v18);
    *(a2 + 120) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1B723EFEC((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = &v18[2 * v21];
  v22[4] = a6;
  v22[5] = v17;
  *(a2 + 120) = v18;
  result = swift_endAccess();
  if ((*(a2 + 112) & 1) == 0)
  {
    *(a2 + 112) = 1;
    v24 = sub_1B7800DF8();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = sub_1B7389608(&qword_1EB992D70, type metadata accessor for BankConnectTaskQueue);
    v26 = swift_allocObject();
    v26[2] = a2;
    v26[3] = v25;
    v26[4] = a2;
    swift_retain_n();
    sub_1B759B5D0(0, 0, v16, a8, v26);
  }

  return result;
}

uint64_t sub_1B7388528(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for InternalAccount();
  v4[3] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[4] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1B7388664;

  return v9(v6);
}

uint64_t sub_1B7388664()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B7388868;
  }

  else
  {
    v2 = sub_1B7388778;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7388778()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1B7389968(v2, v1, type metadata accessor for InternalAccount);
  sub_1B7389580(v1, *(*(v3 + 64) + 40), type metadata accessor for InternalAccount);
  swift_continuation_throwingResume();
  sub_1B73899D0(v2, type metadata accessor for InternalAccount);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7388868()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  swift_allocError();
  *v2 = v1;
  swift_continuation_throwingResumeWithError();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7388914(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1B7388A00;

  return v7();
}

uint64_t sub_1B7388A00()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B7388B74;
  }

  else
  {
    v2 = sub_1B7388B14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7388B14()
{
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7388B74()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  swift_allocError();
  *v2 = v1;
  swift_continuation_throwingResumeWithError();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7388C10(uint64_t a1)
{
  v4 = *(type metadata accessor for UserPresence() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B723838C;

  return sub_1B7381C74(a1, v6, v7, v8, v1 + v5);
}

uint64_t dispatch thunk of BankConnectAccountDataLoading.loadAccount(for:userPresence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BankConnectAccountDataLoading.loadAccounts(forConsentID:userPresence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1B7388FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B7388914(a1, v4, v5, v6);
}

uint64_t sub_1B7389090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B723838C;

  return sub_1B7384D74(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1B73891D8()
{
  result = qword_1EB992D80;
  if (!qword_1EB992D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D80);
  }

  return result;
}

uint64_t sub_1B7389580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7389608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7389650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B7388528(a1, v4, v5, v6);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7389744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B753DE80(a1, v4, v5, v6);
}

uint64_t sub_1B73897F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B723838C;

  return sub_1B7382738(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B7389968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B73899D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FinanceKit::PrivacyBundleIdentifier_optional __swiftcall PrivacyBundleIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PrivacyBundleIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000023;
  if (v1 != 1)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1B7389AF8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000023;
  v3 = *a1;
  v4 = 0x80000001B7873690;
  if (v3 == 1)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001B7873690;
  }

  else
  {
    v6 = 0x80000001B78736C0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000024;
    v4 = 0x80000001B78736C0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

unint64_t sub_1B7389BD0()
{
  result = qword_1EB992DB0;
  if (!qword_1EB992DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992DB0);
  }

  return result;
}

uint64_t sub_1B7389C24()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7389CC0()
{
  sub_1B7800798();
}

uint64_t sub_1B7389D48()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7389DEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000023;
  v5 = 0x80000001B7873690;
  if (v2 != 1)
  {
    v4 = 0xD000000000000024;
    v5 = 0x80000001B78736C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

void static AuditTokenUtilities.bundleID(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = SecTaskCopySigningIdentifier(v6, &token);
    if (v8)
    {
      v9 = v8;
      *a5 = sub_1B78008F8();
      a5[1] = v10;
      if (*token.val)
      {
      }

LABEL_24:
      return;
    }

    if (*token.val)
    {
      v15 = qword_1EDAF6568;
      v16 = *token.val;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = sub_1B78000B8();
      __swift_project_value_buffer(v17, qword_1EDAF6570);
      v18 = v16;
      v19 = sub_1B7800098();
      v20 = sub_1B78011D8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30 = v22;
        *v21 = 136315138;
        type metadata accessor for CFError(0);
        v23 = v18;
        v24 = sub_1B7800908();
        v26 = sub_1B71A3EF8(v24, v25, &v30);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_1B7198000, v19, v20, "Could not get bundleID for connection: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1B8CA7A40](v22, -1, -1);
        MEMORY[0x1B8CA7A40](v21, -1, -1);

        goto LABEL_22;
      }
    }

    else
    {
      if (qword_1EDAF6568 != -1)
      {
        swift_once();
      }

      v27 = sub_1B78000B8();
      __swift_project_value_buffer(v27, qword_1EDAF6570);
      v19 = sub_1B7800098();
      v28 = sub_1B78011D8();
      if (os_log_type_enabled(v19, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B7198000, v19, v28, "Missing Signing identifier for connection", v29, 2u);
        MEMORY[0x1B8CA7A40](v29, -1, -1);
      }
    }

LABEL_22:
    *a5 = 0;
    a5[1] = 0;
    if (*token.val)
    {
    }

    goto LABEL_24;
  }

  if (qword_1EDAF6568 != -1)
  {
    swift_once();
  }

  v11 = sub_1B78000B8();
  __swift_project_value_buffer(v11, qword_1EDAF6570);
  v12 = sub_1B7800098();
  v13 = sub_1B78011D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7198000, v12, v13, "Unable to create SecTask from XPC connection", v14, 2u);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
  }

  *a5 = 0;
  a5[1] = 0;
}

void static AuditTokenUtilities.containingBundleIdentifier(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1B738A418();
  v10 = sub_1B738A310(a1, a2, a3, a4);
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 containingBundleRecord];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 bundleIdentifier];

        if (v14)
        {
          v15 = sub_1B7800868();
          v17 = v16;

          *a5 = v15;
          a5[1] = v17;
          return;
        }
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
}

id sub_1B738A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1B738A418()
{
  result = qword_1EDAF6478;
  if (!qword_1EDAF6478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAF6478);
  }

  return result;
}

uint64_t FinanceStore.internalAccounts(query:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B738A4AC, 0, 0);
}

uint64_t sub_1B738A4AC()
{
  v8 = v0;
  static DeviceInfo.deviceType.getter(v7);
  if (v7[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1B7306B1C;
    v5 = v0[2];
    v6 = v0[3];

    return sub_1B73A1550(v5, v6);
  }
}

uint64_t FinanceStore.internalAccounts(forAccountID:since:isMonitoring:)(uint64_t a1, uint64_t a2, int a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v31 - v9;
  v11 = *a2;
  v12 = *(a2 + 8);
  static DeviceInfo.deviceType.getter(v36);
  if (LOBYTE(v36[0]))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
  }

  else
  {
    v37 = a3;
    v14 = *(v3 + 16);
    v15 = type metadata accessor for FinanceStore();
    v36[3] = v15;
    v36[4] = &off_1F2F66960;
    v36[0] = v3;
    sub_1B7227AFC(a1, v10);
    sub_1B719B06C(v36, v34);
    v16 = *(v14 + 16);

    sub_1B72274E8(v11, v12);
    os_unfair_lock_lock((v16 + 24));
    if (*(v16 + 16))
    {
      v32 = *(v16 + 16);
    }

    else
    {
      v17 = sub_1B73ADA9C();
      *(v16 + 16) = v17;
      v32 = v17;
    }

    os_unfair_lock_unlock((v16 + 24));
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](v18);
    v20 = (v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v33[3] = v15;
    v33[4] = &off_1F2F66960;
    v33[0] = v22;
    type metadata accessor for InternalAccountAsyncSequence();
    v4 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
    MEMORY[0x1EEE9AC00](v23);
    v25 = (v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v25;
    v28 = (v4 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyProvider);
    v28[3] = v15;
    v28[4] = &off_1F2F66960;
    *v28 = v27;
    sub_1B7227B6C(v10, v4 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_accountID);
    v29 = v4 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_historyToken;
    *v29 = v11;
    *(v29 + 8) = v12;
    *(v4 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_isMonitoring) = v37 & 1;
    *(v4 + OBJC_IVAR____TtC10FinanceKit28InternalAccountAsyncSequence_coreDataStore) = v32;
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v4;
}

id InternalAccountResult.token.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1B72274E8(v2, v3);
}

uint64_t InternalAccountResult.init(token:accounts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

uint64_t FinanceStore.internalAccounts(with:sortDescriptors:limit:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 58) = a7;
  *(v8 + 120) = a6;
  *(v8 + 128) = v7;
  *(v8 + 57) = a5;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B738A9A4, 0, 0);
}

uint64_t sub_1B738A9A4()
{
  v15 = v0;
  static DeviceInfo.deviceType.getter(v14);
  if (v14[0])
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(*(*(v0 + 128) + 16) + 16);
    os_unfair_lock_lock((v4 + 24));
    if (*(v4 + 16))
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = sub_1B73ADA9C();
      *(v4 + 16) = v5;
    }

    v6 = *(v0 + 58);
    v7 = *(v0 + 57);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);

    os_unfair_lock_unlock((v4 + 24));
    *(v0 + 136) = [*(v5 + 2) newBackgroundContext];

    *(v0 + 16) = v10;
    *(v0 + 24) = v11;
    *(v0 + 32) = v9;
    *(v0 + 40) = v7 & 1;
    *(v0 + 48) = v8;
    *(v0 + 56) = v6 & 1;

    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_1B738AB74;

    return sub_1B73A1F48((v0 + 16));
  }
}

uint64_t sub_1B738AB74(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[19] = v1;

  v4 = v3[3];

  if (v1)
  {
    v5 = sub_1B738AD30;
  }

  else
  {
    v5 = sub_1B738ACA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B738ACA0()
{
  v1 = v0[9];
  v2 = v0[17];
  v3 = v0[11];
  v4 = NSManagedObjectContext.currentLocalHistoryToken.getter();

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_1B738AD30()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.privateInternalAccounts(query:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 57) = *(a1 + 24);
  *(v2 + 96) = a1[4];
  *(v2 + 58) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1B738ADD8, 0, 0);
}

void sub_1B738ADD8()
{
  v9 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8[0] = 2;
    if (FinanceStore.isDataRestricted(for:)(v8))
    {
      sub_1B7201CA4();
      swift_allocError();
      *v1 = 2;
      swift_willThrow();
      v2 = *(v0 + 8);

      v2();
    }

    else
    {
      v3 = *(v0 + 58);
      v4 = *(v0 + 96);
      v5 = *(v0 + 57);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 24) = *(v0 + 80);
      *(v0 + 40) = v5;
      *(v0 + 48) = v4;
      *(v0 + 56) = v3;
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_1B72BAE3C;

      sub_1B73A1F48((v0 + 16));
    }
  }
}

uint64_t ManagedFinHealthTransactionInsightsDeleter.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManagedTransactionCategoryImporter();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void ManagedFinHealthTransactionInsightsDeleter.deleteEntityGroup(with:in:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7287430();
  if (!v2)
  {
    if (v10)
    {
      v24 = v10;
      [a2 deleteObject_];

      return;
    }

    sub_1B7201CA4();
    v3 = swift_allocError();
    *v25 = 6;
    swift_willThrow();
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v11 = sub_1B78000B8();
  __swift_project_value_buffer(v11, qword_1EDAFAF58);
  (*(v7 + 16))(v9, a1, v6);
  v12 = v3;
  v13 = sub_1B7800098();
  v14 = sub_1B78011D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v15 = 136315650;
    *(v15 + 4) = sub_1B71A3EF8(0xD000000000000026, 0x80000001B787CA70, &v28);
    *(v15 + 12) = 2080;
    sub_1B729D260();
    v16 = sub_1B7802068();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_1B71A3EF8(v16, v18, &v28);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2112;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v21;
    v22 = v26;
    *v26 = v21;
    _os_log_impl(&dword_1B7198000, v13, v14, "Could not delete %s with ID %s. %@", v15, 0x20u);
    sub_1B726B694(v22);
    MEMORY[0x1B8CA7A40](v22, -1, -1);
    v23 = v27;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v23, -1, -1);
    MEMORY[0x1B8CA7A40](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_willThrow();
}

void ManagedFinHealthTransactionInsightsDeleter.deleteIncomeInsight(with:in:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v61[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B77FFA18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_1B726E1F4();
  if (!v3)
  {
    v59 = a2;
    if (v12)
    {
      v58 = v11;
      v51 = v8;
      v52 = v7;
      v54 = v10;
      v56 = v12;
      type metadata accessor for ManagedInternalTransaction();
      v60.receiver = swift_getObjCClassFromMetadata();
      v60.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
      v13 = objc_msgSendSuper2(&v60, sel_fetchRequest);
      v14 = sub_1B7800C18();
      [v13 setRelationshipKeyPathsForPrefetching_];

      sub_1B7205540(0, &qword_1EDAFAF30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1B7807CD0;
      v55 = a1;
      v16 = sub_1B77FF9B8();
      *(v15 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
      *(v15 + 64) = sub_1B726E47C();
      *(v15 + 32) = v16;
      v17 = sub_1B78010E8();
      [v13 setPredicate_];

      [v13 setReturnsObjectsAsFaults_];
      v18 = sub_1B7800C18();
      [v13 setRelationshipKeyPathsForPrefetching_];

      v53 = v13;
      v19 = sub_1B7801498();
      v35 = v19;
      if (v19 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v37 = 0;
        v57 = v35 & 0xC000000000000001;
        v50 = v35 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v57)
          {
            v38 = MEMORY[0x1B8CA5DC0](v37, v35);
          }

          else
          {
            if (v37 >= *(v50 + 16))
            {
              goto LABEL_28;
            }

            v38 = *(v35 + 8 * v37 + 32);
          }

          v39 = v38;
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          v41 = MEMORY[0x1B8CA6D70]();
          v42 = [v39 insightsObject];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 finHealthInsightObject];

            if (v44)
            {
              [v44 setFinHealthIncomeInsightObject_];
            }
          }

          else
          {
            v44 = 0;
          }

          ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(v39, v59);

          objc_autoreleasePoolPop(v41);
          ++v37;
          if (v40 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_24:

      v61[0] = 0;
      v45 = v59;
      v46 = [v59 save_];
      v10 = v54;
      a1 = v55;
      if (v46)
      {
        v47 = v61[0];
        v48 = v56;
        [v45 deleteObject_];

        return;
      }

      v49 = v61[0];
      v4 = sub_1B77FF318();

      swift_willThrow();
      v8 = v51;
      v7 = v52;
    }

    else
    {
      sub_1B7201CA4();
      v4 = swift_allocError();
      *v20 = 6;
      swift_willThrow();
    }
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v21 = sub_1B78000B8();
  __swift_project_value_buffer(v21, qword_1EDAFAF58);
  (*(v8 + 16))(v10, a1, v7);
  v22 = v4;
  v23 = sub_1B7800098();
  v24 = sub_1B78011D8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61[0] = v59;
    *v25 = 136315650;
    *(v25 + 4) = sub_1B71A3EF8(0xD00000000000001DLL, 0x80000001B787CAA0, v61);
    *(v25 + 12) = 2080;
    sub_1B729D260();
    v27 = sub_1B7802068();
    v28 = v7;
    v30 = v29;
    (*(v8 + 8))(v10, v28);
    v31 = sub_1B71A3EF8(v27, v30, v61);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2112;
    v32 = v4;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 24) = v33;
    *v26 = v33;
    _os_log_impl(&dword_1B7198000, v23, v24, "Could not delete %s with ID %s. %@", v25, 0x20u);
    sub_1B726B694(v26);
    MEMORY[0x1B8CA7A40](v26, -1, -1);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v34, -1, -1);
    MEMORY[0x1B8CA7A40](v25, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_willThrow();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

char *sub_1B738BA90()
{
  result = ContentPackageReader.manifest()(&v3);
  if (!v0)
  {
    sub_1B720A388(result, v2);
  }

  return result;
}

uint64_t OrderMessagesPreviewMetadata.Image.Kind.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

uint64_t sub_1B738BB00()
{
  sub_1B78022F8();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B738BB74()
{
  sub_1B78022F8();
  sub_1B7802318();
  return sub_1B7802368();
}

unsigned __int8 *sub_1B738BBB8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t OrderMessagesPreviewMetadata.Image.data.getter()
{
  v1 = *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_data);
  sub_1B720ABEC(v1, *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_data + 8));
  return v1;
}

uint64_t OrderMessagesPreviewMetadata.Text.text.getter()
{
  v1 = *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_text);

  return v1;
}

void *OrderMessagesPreviewMetadata.Text.overrideColor.getter()
{
  v1 = *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_overrideColor);
  v2 = v1;
  return v1;
}

id OrderMessagesPreviewMetadata.Text.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *OrderMessagesPreviewMetadata.image.getter()
{
  v1 = *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadata_image);
  v2 = v1;
  return v1;
}

void *OrderMessagesPreviewMetadata.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadata_backgroundColor);
  v2 = v1;
  return v1;
}

void *OrderMessagesPreviewMetadata.secondaryText.getter()
{
  v1 = *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadata_secondaryText);
  v2 = v1;
  return v1;
}

void *OrderMessagesPreviewMetadata.tertiaryText.getter()
{
  v1 = *(v0 + OBJC_IVAR_____FKOrderMessagesPreviewMetadata_tertiaryText);
  v2 = v1;
  return v1;
}

id OrderMessagesPreviewMetadata.__allocating_init(orderData:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B738EC58();
  sub_1B720A388(a1, a2);
  return v6;
}

id OrderMessagesPreviewMetadata.init(orderData:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B738EC58();
  sub_1B720A388(a1, a2);
  return v4;
}

uint64_t OrderMessagesPreviewMetadata.init(orderData:workingDirectory:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v190 = a3;
  ObjectType = swift_getObjectType();
  v158 = sub_1B77FF6B8();
  v168 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v170 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1B77FF748();
  v166 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v164 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1B77FF778();
  v174 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v161 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1B77FF7D8();
  v165 = *(v167 - 8);
  v8 = MEMORY[0x1EEE9AC00](v167);
  v159 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v160 = &v147 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v162 = &v147 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v163 = &v147 - v14;
  v15 = type metadata accessor for OrderTitleFormatter(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v173 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1B77FF988();
  v172 = *(v175 - 8);
  v17 = MEMORY[0x1EEE9AC00](v175);
  v171 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v147 - v19;
  v21 = type metadata accessor for OrderTitleFormatter.Input(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for OrderMessagesPreviewMetadata.OrderPreview();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = &type metadata for MessagesPreviewOrderBundleValidator;
  v189 = &off_1F2F51F70;
  v27 = a1;
  v28 = a2;
  v29 = a2;
  v30 = v190;
  v31 = v177;
  v32 = sub_1B7536B24(a1, v29, v190, &v186);
  if (v31)
  {
    v33 = sub_1B77FF4F8();
    (*(*(v33 - 8) + 8))(v30, v33);
    sub_1B720A388(a1, v28);
    __swift_destroy_boxed_opaque_existential_1(&v186);
    type metadata accessor for OrderMessagesPreviewMetadata();
    swift_deallocPartialClassInstance();
    return v27;
  }

  v153 = v21;
  v152 = v20;
  v155 = v24;
  v154 = v23;
  v156 = a1;
  v177 = v28;
  v34 = v32;
  __swift_destroy_boxed_opaque_existential_1(&v186);
  v35 = v34[2];

  sub_1B755AD38(v35, v34, v26);
  v37 = v26;
  ObjectType = v34;
  v38 = v155;
  v39 = &v26[*(v155 + 24)];
  v41 = *v39;
  v40 = v39[1];
  v42 = (v40 >> 60) & 3;
  v151 = v26;
  v150 = 0;
  if (!v42)
  {
    v50 = v40;
    v51 = type metadata accessor for OrderMessagesPreviewMetadata.Image();
    v52 = v41;
    v53 = objc_allocWithZone(v51);
    v54 = &v53[OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_data];
    *v54 = v52;
    v54[1] = v50;
    v53[OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_kind] = 0;
    sub_1B738EF2C(v52, v50);
    sub_1B720ABEC(v52, v50);
    v179.receiver = v53;
    v179.super_class = v51;
    v55 = objc_msgSendSuper2(&v179, sel_init);
    v56 = v178;
    *&v178[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_image] = v55;
    *&v56[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_backgroundColor] = CGColorCreateGenericRGB(0.941176471, 0.941176471, 0.941176471, 1.0);
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    v57 = GenericRGB;
    v58 = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.75);
    sub_1B738EEF4(v52, v50);
    v149 = v58;
    v59 = v58;
    v37 = v26;
    v62 = v174;
    v43 = v172;
    v63 = v152;
    v44 = v153;
    goto LABEL_33;
  }

  v43 = v172;
  v44 = v153;
  if (v42 == 1)
  {
    v149 = v40;
    v45 = v40 & 0xCFFFFFFFFFFFFFFFLL;
    sub_1B720ABEC(v41, v40 & 0xCFFFFFFFFFFFFFFFLL);
    v46 = sub_1B77FF598();
    v47 = CGDataProviderCreateWithCFData(v46);

    v63 = v152;
    if (v47)
    {
      v48 = CGImageCreateWithJPEGDataProvider(v47, 0, 0, kCGRenderingIntentDefault);
      if (v48)
      {
        v49 = v48;
      }

      else
      {
        v49 = CGImageCreateWithPNGDataProvider(v47, 0, 0, kCGRenderingIntentDefault);

        if (!v49)
        {
          goto LABEL_18;
        }
      }

      v148 = v49;
      v64 = sub_1B738DD18(300, 300);
      if (v64)
      {
        v147 = v64;
        v65 = CGImageRef.pngData.getter();
        if (v66 >> 60 != 15)
        {
          v82 = v65;
          v83 = v66;
          v69 = v41;
          v84 = type metadata accessor for OrderMessagesPreviewMetadata.Image();
          v85 = objc_allocWithZone(v84);
          v86 = &v85[OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_data];
          *v86 = v82;
          v86[1] = v83;
          v85[OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_kind] = 1;
          sub_1B720ABEC(v82, v83);
          v180.receiver = v85;
          v180.super_class = v84;
          v73 = objc_msgSendSuper2(&v180, sel_init);

          sub_1B72380B8(v82, v83);
          goto LABEL_19;
        }

        p_super_class = &v179;
      }

      else
      {
        p_super_class = &v179.super_class;
      }
    }

LABEL_18:
    v68 = v45;
    v69 = v41;
    v70 = type metadata accessor for OrderMessagesPreviewMetadata.Image();
    v71 = objc_allocWithZone(v70);
    v72 = &v71[OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_data];
    *v72 = v69;
    v72[1] = v68;
    v71[OBJC_IVAR_____FKOrderMessagesPreviewMetadataImage_kind] = 1;
    sub_1B720ABEC(v69, v68);
    v181.receiver = v71;
    v181.super_class = v70;
    v73 = objc_msgSendSuper2(&v181, sel_init);
LABEL_19:
    *&v178[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_image] = v73;
    v148 = v69;
    static ColorExtractor.extractBackgroundColorWithoutHardware(imageData:)(&v186);
    v74 = v187;
    v62 = v174;
    v38 = v155;
    if (v187 == 255)
    {
      v75 = CGColorCreateGenericRGB(0.941176471, 0.941176471, 0.941176471, 1.0);
      v44 = v153;
    }

    else
    {
      v75 = v186;
      v44 = v153;
      if (v187)
      {
        v76 = COERCE_DOUBLE(sub_1B738DED8());
        if ((v77 & 1) != 0 || v76 >= 0.5)
        {
          v78 = 0.17254902;
          v81 = 0.180392157;
          v79 = 1.0;
          v80 = 0.17254902;
        }

        else
        {
          v78 = 0.941176471;
          v79 = 1.0;
          v80 = 0.941176471;
          v81 = 0.941176471;
        }

        v87 = CGColorCreateGenericRGB(v78, v80, v81, v79);
        sub_1B738EF10(v75, v74);
        v75 = v87;
      }
    }

    v88 = v75;
    v89 = COERCE_DOUBLE(sub_1B738DED8());
    v91 = v90;

    if ((v91 & 1) != 0 || v89 >= 0.5)
    {
      GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
      v92 = 0.0;
      v93 = 0.0;
      v94 = 0.0;
    }

    else
    {
      GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
      v92 = 1.0;
      v93 = 1.0;
      v94 = 1.0;
    }

    v95 = CGColorCreateGenericRGB(v92, v93, v94, 0.75);
    sub_1B738EEF4(v148, v149);
    v149 = v95;
    *&v178[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_backgroundColor] = v88;
    v37 = v151;
    goto LABEL_33;
  }

  v149 = 0;
  GenericRGB = 0;
  v61 = v178;
  *&v178[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_image] = 0;
  *&v61[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_backgroundColor] = 0;
  v62 = v174;
  v63 = v152;
LABEL_33:
  v96 = *&v37[*(v38 + 28)];
  (*(v43 + 16))(v63, v37, v175);
  v97 = *(v96 + 16);
  v98 = v154;
  if (v97)
  {
    v99 = *(v96 + 72);
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v101 = v173;
  *v98 = v99;
  v98[1] = v100;
  v98[2] = v97;
  v102 = v63;
  v103 = v175;
  (*(v43 + 32))(v98 + *(v44 + 24), v102, v175);
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  v104 = v171;
  sub_1B77FF938();
  v105 = OrderTitleFormatter.format(_:now:)(v98, v104);
  v107 = v106;
  (*(v43 + 8))(v104, v103);
  sub_1B738FAA8(v101, type metadata accessor for OrderTitleFormatter);
  v108 = type metadata accessor for OrderMessagesPreviewMetadata.Text();
  v109 = objc_allocWithZone(v108);
  v110 = &v109[OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_text];
  *v110 = v105;
  v110[1] = v107;
  *&v109[OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_overrideColor] = GenericRGB;
  v185.receiver = v109;
  v185.super_class = v108;
  v111 = objc_msgSendSuper2(&v185, sel_init);
  v112 = v178;
  *&v178[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_primaryText] = v111;
  if (v97)
  {
    v113 = v159;
    MEMORY[0x1B8CA2BB0]();
    v114 = v161;
    sub_1B77FF758();
    v115 = v160;
    sub_1B77FF7A8();
    (*(v62 + 8))(v114, v157);
    v116 = *(v165 + 8);
    v117 = v167;
    v116(v113, v167);
    v118 = v164;
    sub_1B77FF728();
    v119 = v162;
    sub_1B77FF698();
    (*(v166 + 8))(v118, v169);
    v116(v115, v117);
    v120 = v170;
    sub_1B77FF6A8();
    v121 = v163;
    sub_1B77FF658();
    (*(v168 + 8))(v120, v158);
    v116(v119, v117);
    sub_1B738EE9C();
    v122 = v151;
    sub_1B77FF968();
    v116(v121, v117);
    v123 = v186;
    v124 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_1B7807CD0;
    *(v125 + 56) = MEMORY[0x1E69E6158];
    *(v125 + 64) = sub_1B721FF04();
    *(v125 + 32) = v123;
    *(v125 + 40) = v124;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v126 = qword_1EDAF93B0;
    v127 = sub_1B7800838();
    v128 = sub_1B7800838();
    v129 = sub_1B7800838();
    v130 = [v126 localizedStringForKey:v127 value:v128 table:v129];

    sub_1B7800868();
    v131 = sub_1B78008A8();
    v133 = v132;

    v134 = objc_allocWithZone(v108);
    v135 = v108;
    v136 = &v134[OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_text];
    *v136 = v131;
    v136[1] = v133;
    *&v134[OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_overrideColor] = GenericRGB;
    v184.receiver = v134;
    v184.super_class = v108;
    GenericRGB = GenericRGB;
    v137 = objc_msgSendSuper2(&v184, sel_init);
    v112 = v178;
    *&v178[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_secondaryText] = v137;
  }

  else
  {
    v122 = v151;
    *&v112[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_secondaryText] = 0;
    v135 = v108;
  }

  v138 = (v122 + *(v155 + 20));
  v140 = *v138;
  v139 = v138[1];
  v141 = objc_allocWithZone(v135);
  v142 = &v141[OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_text];
  *v142 = v140;
  *(v142 + 1) = v139;
  v143 = v149;
  *&v141[OBJC_IVAR_____FKOrderMessagesPreviewMetadataText_overrideColor] = v149;
  v183.receiver = v141;
  v183.super_class = v135;

  v144 = objc_msgSendSuper2(&v183, sel_init);

  sub_1B738FAA8(v154, type metadata accessor for OrderTitleFormatter.Input);
  sub_1B738FAA8(v122, type metadata accessor for OrderMessagesPreviewMetadata.OrderPreview);
  *&v112[OBJC_IVAR_____FKOrderMessagesPreviewMetadata_tertiaryText] = v144;
  v145 = type metadata accessor for OrderMessagesPreviewMetadata();
  v182.receiver = v112;
  v182.super_class = v145;
  v27 = objc_msgSendSuper2(&v182, sel_init);
  sub_1B720A388(v156, v177);
  v146 = sub_1B77FF4F8();
  (*(*(v146 - 8) + 8))(v190, v146);
  return v27;
}

uint64_t sub_1B738D300@<X0>(unsigned int (**a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RawOrderContent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for RawECommerceOrderContent(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31[-v12];
  sub_1B738F24C(a1 + OBJC_IVAR____TtC10FinanceKit11OrderBundle_content, v6);
  sub_1B738F2B0(v6, v11);
  sub_1B738F2B0(v11, v13);
  v36 = sub_1B738F334(v13, a1);
  v15 = v14;
  v16 = sub_1B738D564(a1);
  v17 = *(v8 + 52);
  v18 = sub_1B77FF988();
  (*(*(v18 - 8) + 16))(a2, &v13[v17], v18);
  v19 = &v13[*(type metadata accessor for RawMerchant() + 28)];
  v21 = *v19;
  v20 = v19[1];
  v32 = v21;
  v33 = v20;
  v34 = 0x726564726FLL;
  v35 = 0xE500000000000000;
  v22 = sub_1B723940C(sub_1B7262E4C, v31);
  v23 = sub_1B77FFA48();
  v24 = sub_1B741F7D4(v23);
  v26 = v25;

  v27 = type metadata accessor for OrderMessagesPreviewMetadata.OrderPreview();
  v28 = (a2 + v27[5]);
  *v28 = v24;
  v28[1] = v26;
  v29 = (a2 + v27[6]);
  *v29 = v36;
  v29[1] = v15;
  *(a2 + v27[7]) = v16;
  return sub_1B738FAA8(v13, type metadata accessor for RawECommerceOrderContent);
}

uint64_t sub_1B738D564(unsigned int (**a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992E28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v76 - v11;
  RawECommerceOrderContent.topPriorityContentItem(bundle:)(a1, &v76 - v11);
  v13 = type metadata accessor for Order.ContentItem(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    v16 = Order.ContentItem.lineItems.getter();
    sub_1B738FAA8(v12, type metadata accessor for Order.ContentItem);
    return v16;
  }

  sub_1B7205418(v12, &qword_1EB992E28);
  v14 = *(v1 + *(type metadata accessor for RawECommerceOrderContent(0) + 76));
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v76 = v9;
  v120 = MEMORY[0x1E69E7CC0];
  sub_1B71FDDBC(0, v15, 0);
  v16 = v120;
  v17 = (v14 + 32);
  v77 = type metadata accessor for OrderBundle();
  v78 = v3;
  v100 = 0;
  v79 = (v4 + 16);
  v80 = (v4 + 8);
  v81 = v7;
  v82 = a1;
  while (1)
  {
    v92 = v16;
    v93 = v15;
    v19 = v17[2];
    v18 = v17[3];
    v20 = v17[1];
    v112 = *v17;
    v113 = v20;
    v114 = v19;
    v115 = v18;
    v21 = v17[4];
    v22 = v17[5];
    v23 = v17[7];
    v118 = v17[6];
    v119 = v23;
    v116 = v21;
    v117 = v22;
    v24 = *(&v113 + 1);
    v25 = v114;
    v90 = v113;
    v91 = v17;
    v26 = *(&v112 + 1);
    v89 = v112;
    v111[3] = v77;
    v111[4] = &protocol witness table for OrderBundle;
    v111[0] = a1;
    sub_1B719B06C(v111, &v102);
    v88 = v26;
    if (v25)
    {
      v27 = __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
      MEMORY[0x1EEE9AC00](v27);
      *(&v76 - 4) = v24;
      *(&v76 - 3) = v25;
      *(&v76 - 2) = 0x726564726FLL;
      *(&v76 - 1) = 0xE500000000000000;
      v29 = *(v28 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
      v7 = v3;
      v3 = v76;
      v30 = (*v79)(v76, v28 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v7);
      MEMORY[0x1EEE9AC00](v30);
      *(&v76 - 4) = v3;
      *(&v76 - 3) = sub_1B726357C;
      *(&v76 - 2) = (&v76 - 6);
      sub_1B73261F0(&v112, v110);

      os_unfair_lock_lock((v29 + 24));
      v31 = v100;
      sub_1B738FBD0((v29 + 16), &v101);
      v100 = v31;
      v32 = (v29 + 24);
      if (v31)
      {
        goto LABEL_23;
      }

      os_unfair_lock_unlock(v32);
      v33 = v101;
      (*v80)(v3, v7);
      v34 = sub_1B77FFA48();
      v35 = sub_1B741F7D4(v34);
      v86 = v36;
      v87 = v35;

      v3 = v7;
      v7 = v81;
    }

    else
    {
      sub_1B73261F0(&v112, v110);

      v86 = 0;
      v87 = 0;
    }

    v37 = *(&v114 + 1);
    v38 = v115;
    v39 = __swift_destroy_boxed_opaque_existential_1(&v102);
    MEMORY[0x1EEE9AC00](v39);
    *(&v76 - 4) = v37;
    *(&v76 - 3) = v38;
    *(&v76 - 2) = 0x726564726FLL;
    *(&v76 - 1) = 0xE500000000000000;
    v41 = *(v40 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    v42 = (*v79)(v7, v40 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v3);
    MEMORY[0x1EEE9AC00](v42);
    *(&v76 - 4) = v7;
    *(&v76 - 3) = sub_1B726357C;
    *(&v76 - 2) = (&v76 - 6);
    os_unfair_lock_lock((v41 + 24));
    v43 = v100;
    sub_1B723C5C4((v41 + 16), v110);
    v44 = (v41 + 24);
    if (v43)
    {
      break;
    }

    os_unfair_lock_unlock(v44);
    v45 = v110[0];
    (*v80)(v7, v3);
    v46 = sub_1B77FFA48();
    v47 = *&v45[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings];
    v48 = *(v47 + 16);
    v100 = 0;
    if (!v48)
    {
      goto LABEL_15;
    }

    v49 = sub_1B741EBC0(v46);
    if (!v49[2] || (v50 = v49[4], v51 = v49[5], , , !*(v47 + 16)))
    {

LABEL_15:
      v55 = &v45[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
      goto LABEL_16;
    }

    v52 = sub_1B724548C(v50, v51);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_15;
    }

    v55 = (*(v47 + 56) + 16 * v52);
LABEL_16:
    v56 = *v55;
    v94 = *(v55 + 1);

    v95 = *(&v119 + 1);
    v96 = *(&v115 + 1);
    v84 = v116;
    v85 = v119;
    v97 = v117;
    v98 = *(&v116 + 1);
    v57 = *(&v118 + 1);
    v99 = v118;
    v58 = *(&v117 + 1);
    v83 = *(&v117 + 1);

    sub_1B732624C(&v112);
    v59 = v88;
    v60 = v89;
    *&v102 = v89;
    *(&v102 + 1) = v88;
    v61 = v90;
    v63 = v86;
    v62 = v87;
    *&v103 = v90;
    *(&v103 + 1) = v87;
    *&v104 = v86;
    *(&v104 + 1) = v56;
    *&v105 = v94;
    *(&v105 + 1) = v96;
    v64 = v84;
    *&v106 = v84;
    *(&v106 + 1) = v98;
    *&v107 = v97;
    *(&v107 + 1) = v58;
    *&v108 = v99;
    *(&v108 + 1) = v57;
    v65 = v85;
    *&v109 = v85;
    *(&v109 + 1) = v95;
    sub_1B7326398(&v102, v110);
    __swift_destroy_boxed_opaque_existential_1(v111);
    v110[0] = v60;
    v110[1] = v59;
    v110[2] = v61;
    v110[3] = v62;
    v110[4] = v63;
    v110[5] = v56;
    v110[6] = v94;
    v110[7] = v96;
    v110[8] = v64;
    v110[9] = v98;
    v110[10] = v97;
    v110[11] = v83;
    v110[12] = v99;
    v110[13] = v57;
    v110[14] = v65;
    v110[15] = v95;
    sub_1B73263F4(v110);
    v16 = v92;
    v120 = v92;
    v67 = *(v92 + 16);
    v66 = *(v92 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_1B71FDDBC((v66 > 1), v67 + 1, 1);
      v16 = v120;
    }

    *(v16 + 16) = v67 + 1;
    v68 = (v16 + (v67 << 7));
    v69 = v102;
    v70 = v103;
    v71 = v105;
    v68[4] = v104;
    v68[5] = v71;
    v68[2] = v69;
    v68[3] = v70;
    v72 = v106;
    v73 = v107;
    v74 = v109;
    v68[8] = v108;
    v68[9] = v74;
    v68[6] = v72;
    v68[7] = v73;
    v17 = v91 + 8;
    v15 = v93 - 1;
    v3 = v78;
    v7 = v81;
    a1 = v82;
    if (v93 == 1)
    {
      return v16;
    }
  }

  os_unfair_lock_unlock(v44);
  v32 = (*v80)(v7, v3);
  __break(1u);
LABEL_23:
  os_unfair_lock_unlock(v32);
  result = (*v80)(v3, v7);
  __break(1u);
  return result;
}

CGColorSpace *sub_1B738DD18(uint64_t a1, uint64_t a2)
{
  if (CGImageGetWidth(Image) <= a1 && CGImageGetHeight(Image) <= a2)
  {
    v17 = Image;
    return Image;
  }

  Width = CGImageGetWidth(Image);
  v6 = Width / CGImageGetHeight(Image);
  v7 = a1 / v6;
  v8 = v6 * a2;
  if (v7 > a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = a1;
  }

  if (v7 > a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v7;
  }

  result = CGImageGetColorSpace(Image);
  if (!result)
  {
    return 0;
  }

  if (v9 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10 < 9.22337204e18)
  {
    v12 = result;
    BitsPerComponent = CGImageGetBitsPerComponent(Image);
    BytesPerRow = CGImageGetBytesPerRow(Image);
    v15 = __CGBitmapContextCreate(v9, v10, BitsPerComponent, BytesPerRow, v12);
    if (v15)
    {
      v16 = v15;
      CGContextSetInterpolationQuality(v15, kCGInterpolationHigh);
      sub_1B7801118();
      Image = CGBitmapContextCreateImage(v16);

      return Image;
    }

    return 0;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B738DED8()
{
  *&result = COERCE_DOUBLE(sub_1B78010D8());
  if (*&result != 0.0)
  {
    if (*(result + 16) >= 3uLL)
    {
      v2 = vmulq_f64(*(result + 40), xmmword_1B781EF40);
      v1 = *(result + 32) * 0.2126 + v2.f64[0];

      *&result = v1 + v2.f64[1];
    }

    else
    {

      *&result = 0.0;
    }
  }

  return result;
}

uint64_t sub_1B738E078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDAFB7C0 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a2 = v4;
    a1 = v3;
  }

  return sub_1B738E2C4(a1, qword_1EDAFB7C8, &type metadata for DeviceInfo, &protocol witness table for DeviceInfo, a2);
}

uint64_t sub_1B738E2C4@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a1;
  v82 = a2;
  v84 = a5;
  v78 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF988();
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B77FF4F8();
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RawOrderContent();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  (*(a4 + 8))(&v85, a3, a4);
  if (v85)
  {
    v23 = v84;
    v24 = *(v83 + 56);

    return v24(v23, 1, 1, v14);
  }

  v76 = v22;
  v77 = v16;
  v73 = v20;
  v74 = v13;
  v75 = v10;
  v26 = FinanceStore.isWalletDeleted()();
  v27 = v14;
  v28 = v84;
  if (v26)
  {
    return (*(v83 + 56))(v28, 1, 1, v27);
  }

  v72 = sub_1B77FF488();
  v29 = sub_1B77FF518();
  v31 = v30;
  v32 = [objc_opt_self() defaultManager];
  v33 = [v32 temporaryDirectory];

  v34 = v77;
  sub_1B77FF478();

  v88 = &type metadata for OrderBundleValidator;
  v89 = &protocol witness table for OrderBundleValidator;
  v85 = &type metadata for WalletPreferences;
  v86 = &protocol witness table for WalletPreferences;
  v35 = sub_1B7536B24(v29, v31, v34, &v85);
  v70 = v29;
  v71 = v31;
  v36 = v34;
  v37 = v35;
  (*(v83 + 8))(v36, v27);
  __swift_destroy_boxed_opaque_existential_1(&v85);
  v38 = v76;
  sub_1B738F24C(v37 + OBJC_IVAR____TtC10FinanceKit11OrderBundle_content, v76);

  v77 = 0;
  v39 = v73;
  sub_1B738F24C(v38, v73);
  v40 = v74;
  sub_1B738F2B0(v39, v74);
  v41 = (v40 + v11[5]);
  v42 = *v41;
  v69 = v41[1];

  sub_1B738FAA8(v40, type metadata accessor for RawECommerceOrderContent);
  sub_1B738F24C(v38, v39);
  sub_1B738F2B0(v39, v40);
  v43 = (v40 + v11[6]);
  v44 = v43[1];
  v68 = *v43;

  sub_1B738FAA8(v40, type metadata accessor for RawECommerceOrderContent);
  sub_1B738F24C(v38, v39);
  sub_1B738F2B0(v39, v40);
  v67 = v11;
  v45 = *(v80 + 16);
  v46 = v75;
  v47 = v8;
  v45(v75, v40 + v11[12], v8);
  sub_1B738FAA8(v40, type metadata accessor for RawECommerceOrderContent);
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C08) + 48);
  v49 = v79;
  *v79 = v42;
  v50 = v68;
  *(v49 + 1) = v69;
  *(v49 + 2) = v50;
  *(v49 + 3) = v44;
  v45(&v49[v48], v46, v47);
  v51 = v80;
  (*(v80 + 56))(&v49[v48], 0, 1, v47);
  swift_storeEnumTagMultiPayload();

  v52 = v77;
  sub_1B72A83E8(v49, &v85);
  if (v52)
  {
    sub_1B720A388(v70, v71);

    sub_1B738FAA8(v49, type metadata accessor for FinanceStore.Message);
    (*(v51 + 8))(v75, v47);
    sub_1B738FAA8(v76, type metadata accessor for RawOrderContent);
    v28 = v84;
    if (v72)
    {
      sub_1B77FF468();
    }

    return (*(v83 + 56))(v28, 1, 1, v27);
  }

  v53 = v74;
  v54 = v51;
  v55 = v67;

  sub_1B738FAA8(v49, type metadata accessor for FinanceStore.Message);
  (*(v54 + 8))(v75, v47);
  v56 = v84;
  if (v85 > 1u)
  {
    v57 = v76;
    v58 = v71;
    v59 = v73;
    v60 = v53;
    if (v85 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v57 = v76;
    v58 = v71;
    v59 = v73;
    v60 = v53;
    if (v85)
    {
LABEL_16:
      sub_1B738FAA8(v57, type metadata accessor for RawOrderContent);
      sub_1B720A388(v70, v58);
      result = (*(v83 + 56))(v56, 1, 1, v27);
      goto LABEL_19;
    }
  }

  sub_1B738F24C(v57, v59);
  sub_1B738F2B0(v59, v60);
  v61 = (v60 + v55[5]);
  v62 = v61[1];
  v82 = *v61;

  sub_1B738FAA8(v60, type metadata accessor for RawECommerceOrderContent);
  sub_1B738F24C(v57, v59);
  sub_1B738F2B0(v59, v60);
  v63 = (v60 + v55[6]);
  v65 = *v63;
  v64 = v63[1];

  sub_1B738FAA8(v60, type metadata accessor for RawECommerceOrderContent);
  v85 = v82;
  v86 = v62;
  v87 = v65;
  v88 = v64;
  static FinanceURLFactory.orderDetails(fullyQualifiedOrderIdentifier:fulfillmentIdentifier:)(&v85, 0, 0, v56);
  sub_1B720A388(v70, v58);

  sub_1B738FAA8(v57, type metadata accessor for RawOrderContent);
  result = (*(v83 + 56))(v56, 0, 1, v27);
LABEL_19:
  if (v72)
  {
    return sub_1B77FF468();
  }

  return result;
}

id sub_1B738EBA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B738EC58()
{
  v1 = v0;
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B77FF4F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FF598();
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_1B77FF478();
  v9 = sub_1B77FF3F8();
  (*(v3 + 8))(v5, v2);
  v14[0] = 0;
  v10 = [v1 initWithOrderData:v6 workingDirectory:v9 error:v14];

  if (v10)
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v10;
}

uint64_t type metadata accessor for OrderMessagesPreviewMetadata.OrderPreview()
{
  result = qword_1EB992E10;
  if (!qword_1EB992E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B738EE9C()
{
  result = qword_1EB992E00;
  if (!qword_1EB992E00)
  {
    sub_1B77FF7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E00);
  }

  return result;
}

uint64_t sub_1B738EEF4(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1B720A388(result, a2);
}

void sub_1B738EF10(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1B738EF2C(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1B720ABEC(result, a2);
}

unint64_t sub_1B738EF4C()
{
  result = qword_1EB992E08;
  if (!qword_1EB992E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992E08);
  }

  return result;
}

void sub_1B738F06C()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B738F108();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B738F108()
{
  if (!qword_1EB992E20)
  {
    v0 = sub_1B7800CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB992E20);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit28OrderMessagesPreviewMetadataC0C5Image33_CEC8F8A8172FF9CB276C3DCC1738F7DDLLO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_1B738F178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1B738F1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1B781EF50;
    }
  }

  return result;
}

void *sub_1B738F214(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1B738F24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B738F2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawECommerceOrderContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B738F334(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v56 - v8;
  v9 = sub_1B77FF4F8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v58 = &v56 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  v67 = a2;
  v59 = a1;
  v20 = sub_1B738D564(a2);
  v69 = *(v20 + 16);
  if (v69)
  {
    v56 = v10;
    v57 = v7;
    v21 = 0;
    v68 = (v10 + 8);
    v62 = (v10 + 48);
    v63 = (v10 + 16);
    v60 = (v10 + 32);
    v61 = v19;
    v22 = (v20 + 40);
    v64 = v20;
    v10 = v65;
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v23 = *v22;
      if (*v22)
      {
        break;
      }

LABEL_5:
      ++v21;
      v22 += 16;
      if (v69 == v21)
      {

        v10 = v56;
        v7 = v57;
        goto LABEL_23;
      }
    }

    v24 = *(v22 - 1);
    v25 = v67[2];

    v20 = GSMainScreenScaleFactor();
    if ((LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_33;
    }

    if (v26 <= -9.2234e18)
    {
      goto LABEL_34;
    }

    if (v26 >= 9.2234e18)
    {
      goto LABEL_35;
    }

    v70 = v22;
    v71 = v21;
    v27 = v13;
    MEMORY[0x1EEE9AC00](v20);
    *(&v56 - 8) = v25;
    *(&v56 - 7) = v24;
    *(&v56 - 6) = v23;
    *(&v56 - 5) = v28;
    *(&v56 - 4) = 0;
    *(&v56 - 3) = 0;
    *(&v56 - 16) = 0;
    v29 = *(v25 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    v30 = (*v63)(v10, v25 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v9);
    MEMORY[0x1EEE9AC00](v30);
    *(&v56 - 4) = v10;
    *(&v56 - 3) = sub_1B738FBB0;
    *(&v56 - 2) = (&v56 - 10);
    os_unfair_lock_lock((v29 + 24));
    v31 = v66;
    sub_1B738FBE8((v29 + 16), v66);
    os_unfair_lock_unlock((v29 + 24));

    v32 = *v68;
    (*v68)(v10, v9);
    v33 = (*v62)(v31, 1, v9);
    v34 = v31;
    v13 = v27;
    if (v33 == 1)
    {
      sub_1B7205418(v34, &unk_1EB994C70);
LABEL_4:
      v20 = v64;
      v22 = v70;
      v21 = v71;
      goto LABEL_5;
    }

    v35 = v61;
    (*v60)(v61, v34, v9);
    v36 = sub_1B77FF518();
    v38 = v37;
    v32(v35, v9);
    v39 = sub_1B77FF598();
    v40 = CGDataProviderCreateWithCFData(v39);

    if (v40)
    {
      v41 = CGImageCreateWithJPEGDataProvider(v40, 0, 0, kCGRenderingIntentDefault);
      if (v41)
      {
        v42 = v41;

        goto LABEL_16;
      }

      v42 = CGImageCreateWithPNGDataProvider(v40, 0, 0, kCGRenderingIntentDefault);

      if (v42)
      {
LABEL_16:
        if (CGImageGetWidth(v42) < 877)
        {
        }

        else
        {
          Height = CGImageGetHeight(v42);

          if (Height >= 701)
          {

            return v36;
          }
        }
      }
    }

    sub_1B720A388(v36, v38);
    goto LABEL_4;
  }

LABEL_23:
  v44 = (v59 + *(type metadata accessor for RawMerchant() + 36));
  v45 = v44[1];
  if (!v45)
  {
    return 0;
  }

  v46 = *v44;
  v47 = v67[2];
  v20 = GSMainScreenScaleFactor();
  if ((LODWORD(v48) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_36;
  }

  if (v48 <= -9.2234e18)
  {
LABEL_37:
    __break(1u);
  }

  else if (v48 < 9.2234e18)
  {
    MEMORY[0x1EEE9AC00](v20);
    *(&v56 - 8) = v47;
    *(&v56 - 7) = v46;
    *(&v56 - 6) = v45;
    *(&v56 - 5) = v49;
    *(&v56 - 4) = 0;
    *(&v56 - 3) = 0;
    *(&v56 - 16) = 0;
    v50 = *(v47 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    v51 = (*(v10 + 2))(v13, v47 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v9);
    MEMORY[0x1EEE9AC00](v51);
    *(&v56 - 4) = v13;
    *(&v56 - 3) = sub_1B738FB08;
    *(&v56 - 2) = (&v56 - 10);
    os_unfair_lock_lock((v50 + 24));
    sub_1B726A6E8((v50 + 16), v7);
    os_unfair_lock_unlock((v50 + 24));
    v52 = *(v10 + 1);
    v52(v13, v9);
    if ((*(v10 + 6))(v7, 1, v9) != 1)
    {
      v53 = v58;
      (*(v10 + 4))(v58, v7, v9);
      v36 = sub_1B77FF518();
      v52(v53, v9);
      return v36;
    }

    sub_1B7205418(v7, &unk_1EB994C70);
    return 0;
  }

  __break(1u);
  os_unfair_lock_unlock(v20);
  v55 = (*v68)(v10, v9);
  __break(1u);
  os_unfair_lock_unlock(v55);
  result = (*(v10 + 1))(v13, v9);
  __break(1u);
  return result;
}