uint64_t sub_1B99BAC5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B99A3EB8;

  return sub_1B99BA64C(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1B99BAD44(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F3E74();
  result = sub_1B99F41C4();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    sub_1B99F4A34();
    result = sub_1B99F41C4();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1B99BAE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B99F4384();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BAF3C);
}

uint64_t sub_1B99BAF3C()
{
  v1 = v0[6];
  sub_1B99F49A4();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1B99BAFFC;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1B99BD4A4(v5, v4, 0, 0, 1);
}

uint64_t sub_1B99BAFFC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1B99BB1FC;
  }

  else
  {
    v6 = sub_1B99BB16C;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1B99BB16C()
{
  sub_1B99BDE84();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B99BB1FC()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B99BB260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B99BB284);
}

uint64_t sub_1B99BB284()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for SafeContinuation();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v12 = *(v0 + 24);
  v5 = sub_1B99BD2BC();
  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v12;
  v7 = *(MEMORY[0x1E69E88F0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1B99BB3AC;
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v10, &unk_1B99F6FA0, v6, sub_1B99BDCF4, v5, 0, 0, v9);
}

uint64_t sub_1B99BB3AC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1B99BB52C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1B99BB4C8;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1B99BB4C8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B99BB52C()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t *sub_1B99BB598()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1B99BD2BC();
}

uint64_t sub_1B99BB5CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99BB618);
}

uint64_t sub_1B99BB618()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v1 + 80);
  *v5 = v0;
  v5[1] = sub_1B99B4C34;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000015, 0x80000001B99FA4F0, sub_1B99BDCF8, v3, v6);
}

uint64_t sub_1B99BB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F3E74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19[-v13];
  (*(v10 + 16))(&v19[-v13], a1, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = a2;
  (*(v10 + 32))(v16 + v15, v14, v9);
  v17 = (v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a3;
  v17[1] = a4;
  v20 = &unk_1B99F6FB0;
  v21 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD18, &qword_1B99F6F50);
  sub_1B99F4444();
}

uint64_t sub_1B99BB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v7 = sub_1B99F4A34();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BBA0C);
}

uint64_t sub_1B99BBA0C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1B99BC1D8(v0[3]);
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1B99BBB0C;
  v5 = v0[9];
  v6 = v0[5];

  return v8(v5);
}

uint64_t sub_1B99BBB0C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B99BBD34;
  }

  else
  {
    v3 = sub_1B99BBC20;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99BBC20()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B99BBC94);
}

uint64_t sub_1B99BBC94()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  sub_1B99BC564(v1);
  (*(v3 + 8))(v1, v2);
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B99BBD34()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  **(v0 + 64) = v1;
  swift_storeEnumTagMultiPayload();
  v4 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B99BBDB8);
}

uint64_t sub_1B99BBDB8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_1B99BC564(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B99BBE4C);
}

uint64_t sub_1B99BBE4C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B99BBEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD20, &unk_1B99F6F58);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = v22 - v14;
  sub_1B99BD974(a1, v10);
  v16 = sub_1B99F3F64();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_1B99A18A4(v10, &qword_1EBBDCD20, &unk_1B99F6F58);
    v18 = 1;
  }

  else
  {
    sub_1B99F3F54();
    (*(v17 + 8))(v10, v16);
    v18 = 0;
  }

  v19 = sub_1B99F3EC4();
  (*(*(v19 - 8) + 56))(v15, v18, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a2;
  v20[5] = a3;

  return sub_1B99F0F9C(0, 0, v15, &unk_1B99F6F70, v20);
}

uint64_t sub_1B99BC0E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B99A3EB8;

  return v9(a1);
}

uint64_t sub_1B99BC1D8(uint64_t a1)
{
  v30 = a1;
  v2 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v3 = sub_1B99F4A34();
  v31 = sub_1B99F41C4();
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  v6 = MEMORY[0x1EEE9AC00](v31, v5);
  v8 = &v29 - v7;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  v13 = &v29 - v12;
  v14 = sub_1B99F3E74();
  v15 = sub_1B99F41C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v29 - v19;
  v21 = *(v14 - 8);
  (*(v21 + 16))(&v29 - v19, v30, v14);
  (*(v21 + 56))(v20, 0, 1, v14);
  v22 = *(*v1 + 96);
  swift_beginAccess();
  v23 = v15;
  v24 = v29;
  (*(v16 + 40))(v1 + v22, v20, v23);
  swift_endAccess();
  v25 = *(*v1 + 104);
  swift_beginAccess();
  v26 = v1 + v25;
  v27 = v31;
  (*(v24 + 16))(v8, v26, v31);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v24 + 8))(v8, v27);
  }

  (*(v9 + 32))(v13, v8, v3);
  sub_1B99BC564(v13);
  return (*(v9 + 8))(v13, v3);
}

uint64_t sub_1B99BC564(uint64_t a1)
{
  v29 = *v1;
  v2 = v29;
  v30 = a1;
  v3 = *(v29 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = sub_1B99F4A34();
  v5 = sub_1B99F41C4();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
  v10 = sub_1B99F3E74();
  v11 = sub_1B99F41C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v27 - v16;
  v18 = *(v10 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v15, v20);
  v23 = &v27 - v22;
  if ((*(v1 + *(v2 + 112)) & 1) == 0)
  {
    v24 = *(v29 + 96);
    swift_beginAccess();
    (*(v12 + 16))(v17, v1 + v24, v11);
    if ((*(v18 + 48))(v17, 1, v10) == 1)
    {
      (*(v12 + 8))(v17, v11);
      v25 = *(v4 - 8);
      (*(v25 + 16))(v9, v30, v4);
      (*(v25 + 56))(v9, 0, 1, v4);
      v26 = *(*v1 + 104);
      swift_beginAccess();
      (*(v27 + 40))(v1 + v26, v9, v28);
      return swift_endAccess();
    }

    else
    {
      (*(v18 + 32))(v23, v17, v10);
      sub_1B99BCC0C(v30, v10);
      sub_1B99BC948(v1);
      return (*(v18 + 8))(v23, v10);
    }
  }

  return result;
}

uint64_t sub_1B99BC948(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = sub_1B99F4A34();
  v5 = sub_1B99F41C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  v11 = sub_1B99F3E74();
  v12 = sub_1B99F41C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21 - v16;
  *(a1 + *(v2 + 112)) = 1;
  (*(*(v11 - 8) + 56))(&v21 - v16, 1, 1, v11);
  v18 = *(*a1 + 96);
  swift_beginAccess();
  (*(v13 + 40))(a1 + v18, v17, v12);
  swift_endAccess();
  (*(*(v4 - 8) + 56))(v10, 1, 1, v4);
  v19 = *(*a1 + 104);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v19, v10, v5);
  return swift_endAccess();
}

uint64_t sub_1B99BCC0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1B99F4A34();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v24 - v20;
  (*(v22 + 16))(&v24 - v20, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v21, v10);
    return sub_1B99F3E54();
  }

  else
  {
    (*(v4 + 32))(v8, v21, v3);
    return sub_1B99F3E64();
  }
}

uint64_t sub_1B99BCE48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD18, &qword_1B99F6F50);
  sub_1B99F4444();
}

uint64_t sub_1B99BCED4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = sub_1B99F4A34();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BCFCC);
}

uint64_t sub_1B99BCFCC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  sub_1B99F3E84();
  sub_1B99BDED8(&qword_1ED99DC80, MEMORY[0x1E69E8550]);
  v4 = swift_allocError();
  sub_1B99F3B04();
  *v1 = v4;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B99BD0B0);
}

uint64_t sub_1B99BD0B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B99BC564(v1);
  (*(v2 + 8))(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B99BD144()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F3E74();
  v3 = sub_1B99F41C4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 104);
  sub_1B99F4A34();
  v5 = sub_1B99F41C4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B99BD27C()
{
  v0 = sub_1B99BD144();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t *sub_1B99BD2BC()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(*v0 + 96);
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = sub_1B99F3E74();
  (*(*(v4 - 8) + 56))(v0 + v2, 1, 1, v4);
  v5 = *(*v0 + 104);
  v6 = sub_1B99F4A34();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + *(*v0 + 112)) = 0;
  return v0;
}

uint64_t sub_1B99BD408(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B99A3FAC;

  return sub_1B99BCED4(a1, v1);
}

uint64_t sub_1B99BD4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1B99F4374();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B99BD5A4);
}

uint64_t sub_1B99BD5A4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1B99F4384();
  v7 = sub_1B99BDED8(&qword_1ED99DF30, MEMORY[0x1E69E8820]);
  sub_1B99F4984();
  sub_1B99BDED8(&qword_1ED99DF38, MEMORY[0x1E69E87E8]);
  sub_1B99F4394();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1B99BD734;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1B99BD734()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99BD8F0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1B99BD8F0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1B99BD974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD20, &unk_1B99F6F58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99BD9E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B99A3FAC;

  return sub_1B99BC0E0(a1, v4, v5, v7);
}

uint64_t sub_1B99BDAB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B99A3FAC;

  return sub_1B99BAE7C(a1, v4, v5, v7, v8);
}

uint64_t sub_1B99BDB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B99A3FAC;

  return sub_1B99BB260(a1, v4, v5, v7, v8, v6);
}

uint64_t sub_1B99BDC40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3FAC;

  return sub_1B99BB5CC(a1, v4, v5, v6);
}

uint64_t sub_1B99BDD04(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v6 = *(sub_1B99F3E74() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B99A3FAC;

  return sub_1B99BB900(a1, v8, v1 + v7, v10, v11);
}

uint64_t sub_1B99BDE54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B99BBEC0(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B99BDE84()
{
  result = qword_1ED99DDA0;
  if (!qword_1ED99DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED99DDA0);
  }

  return result;
}

uint64_t sub_1B99BDED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B99BDF38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B99BDF7C()
{
  v0 = sub_1B99F4104();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v3 = sub_1B99F4124();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B99F3A84();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  sub_1B99BE9A8(0, &qword_1ED99DBB0, 0x1E69E9610);
  sub_1B99F3A64();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8098], v3);
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_1B99BE9F0(&qword_1EBBDCD30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD38, "dj");
  sub_1B99BEA38(&qword_1EBBDCD40, &qword_1EBBDCD38, "dj");
  sub_1B99F4224();
  result = sub_1B99F4144();
  qword_1EBBDCD28 = result;
  return result;
}

id static AAFAnalytics.sharedAnalytics.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBBDC2B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1EBBDCD28;
  *a1 = qword_1EBBDCD28;

  return v2;
}

void static AAFAnalytics.sendAnalyticsEvent(eventName:eventData:)(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  if (qword_1EBBDC2B0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBBDCD28;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  AAFAnalytics.sendAnalyticsEvent(eventName:eventData:)(v6, a3);
}

Swift::Void __swiftcall AAFAnalytics.sendAnalyticsEvent(eventName:eventData:)(Swift::String eventName, Swift::OpaquePointer eventData)
{
  object = eventName._object;
  countAndFlagsBits = eventName._countAndFlagsBits;
  v6 = sub_1B99F3A44();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B99F3A84();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v17 = swift_allocObject();
  v17[2]._rawValue = v16;
  v17[3]._rawValue = countAndFlagsBits;
  v17[4]._rawValue = object;
  v17[5]._rawValue = eventData._rawValue;
  aBlock[4] = sub_1B99BE5C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99BDF38;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);
  v16;

  sub_1B99F3A74();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B99BE9F0(&qword_1EBBDC508, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC510, &qword_1B99F6FD0);
  sub_1B99BEA38(&qword_1EBBDC518, &qword_1EBBDC510, &qword_1B99F6FD0);
  sub_1B99F4224();
  MEMORY[0x1BFAE0A00](0, v15, v10, v18);
  _Block_release(v18);
  (*(v21 + 8))(v10, v6);
  (*(v11 + 8))(v15, v20);
}

void sub_1B99BE5C8()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_1B99BE6A0(v0[3], v0[4]);
}

uint64_t sub_1B99BE60C(uint64_t *a1, int a2)
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

uint64_t sub_1B99BE654(uint64_t result, int a2, int a3)
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

void sub_1B99BE6A0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B99F3AC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v2;
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_1B99F3AE4();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    if (qword_1ED99EB40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_1B99F3974();
  __swift_project_value_buffer(v13, qword_1ED99EC18);

  v14 = sub_1B99F3954();
  v15 = sub_1B99F40B4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1B99BFCEC(a1, a2, &v24);
    *(v16 + 12) = 2080;
    sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
    v18 = sub_1B99F3B44();
    v20 = sub_1B99BFCEC(v18, v19, &v24);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_1B99A0000, v14, v15, "Publishing Analytics: %s %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAE1C50](v17, -1, -1);
    MEMORY[0x1BFAE1C50](v16, -1, -1);
  }

  v21 = sub_1B99F3C04();
  sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
  v22 = sub_1B99F3B34();
  AnalyticsSendEvent();
}

uint64_t sub_1B99BE9A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B99BE9F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B99BEA38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1B99BEA8C()
{
  type metadata accessor for DependencyRegistry();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD60, &unk_1B99F7150);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  result = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v0 + 32) = result;
  *(v0 + 40) = v2;
  off_1ED99DBD0 = v0;
  return result;
}

void static DependencyRegistry.register<A>(_:entry:dependencyId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (qword_1ED99DBB8 != -1)
    {
      swift_once();
    }

    v7 = sub_1B99F3974();
    __swift_project_value_buffer(v7, qword_1ED99EBF0);

    v8 = sub_1B99F3954();
    v9 = sub_1B99F40B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1B99BFCEC(a3, a4, v23);
      _os_log_impl(&dword_1B99A0000, v8, v9, "Registering dependency by id - %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFAE1C50](v11, -1, -1);
      MEMORY[0x1BFAE1C50](v10, -1, -1);
    }

    if (qword_1ED99DBC8 != -1)
    {
      swift_once();
    }

    v12 = (off_1ED99DBD0 + 16);
    os_unfair_lock_lock((*(off_1ED99DBD0 + 2) + 16));
    sub_1B99BFBE4(a2, v23);
    swift_beginAccess();

    v13 = a3;
    v14 = a4;
  }

  else
  {
    v23[0] = a1;
    swift_getMetatypeMetadata();
    v15 = sub_1B99F3C44();
    v17 = v16;
    if (qword_1ED99DBB8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B99F3974();
    __swift_project_value_buffer(v18, qword_1ED99EBF0);

    v19 = sub_1B99F3954();
    v20 = sub_1B99F40B4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1B99BFCEC(v15, v17, v23);
      _os_log_impl(&dword_1B99A0000, v19, v20, "Registering dependency by id - %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAE1C50](v22, -1, -1);
      MEMORY[0x1BFAE1C50](v21, -1, -1);
    }

    if (qword_1ED99DBC8 != -1)
    {
      swift_once();
    }

    v12 = (off_1ED99DBD0 + 16);
    os_unfair_lock_lock((*(off_1ED99DBD0 + 2) + 16));
    sub_1B99BFBE4(a2, v23);
    swift_beginAccess();
    v13 = v15;
    v14 = v17;
  }

  sub_1B99BF1F0(v23, v13, v14);
  swift_endAccess();
  os_unfair_lock_unlock(*v12 + 4);
}

uint64_t static DependencyRegistry.locateService<A>(by:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  if (!a2)
  {
    swift_getMetatypeMetadata();
    a1 = sub_1B99F3C44();
  }

  v9 = a2;
  v10 = qword_1ED99DBC8;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_1B99BEF7C(a1, v9, a3, a4, a5);
}

uint64_t sub_1B99BEF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v11 = *(v5 + 16);
  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v12 = *(v5 + 24);
  if (*(v12 + 16) && (v13 = sub_1B99EF914(a1, a2), (v14 & 1) != 0))
  {
    sub_1B99BFBE4(*(v12 + 56) + 48 * v13, v20);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v22 = -1;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v11 + 4);
  sub_1B99A183C(v20, &v16, &qword_1EBBDCD48, &unk_1B99F7130);
  if (v17[24] == 255)
  {
    sub_1B99C047C(v20);
    sub_1B99C047C(&v16);
    return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
  }

  else
  {
    v18 = v16;
    v19[0] = *v17;
    *(v19 + 9) = *&v17[9];
    sub_1B99BF2A4(&v18, a3, a4, a5);
    sub_1B99C04E4(&v18);
    return sub_1B99C047C(v20);
  }
}

void static DependencyRegistry.reset()()
{
  if (qword_1ED99DBC8 != -1)
  {
    swift_once();
  }

  v0 = off_1ED99DBD0;
  os_unfair_lock_lock((*(off_1ED99DBD0 + 2) + 16));
  swift_beginAccess();
  v1 = v0[3];
  v0[3] = MEMORY[0x1E69E7CC8];

  os_unfair_lock_unlock((v0[2] + 16));
}

Swift::Void __swiftcall DependencyRegistry.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  v2 = *(v0 + 24);
  *(v0 + 24) = MEMORY[0x1E69E7CC8];

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1B99BF1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 255)
  {
    sub_1B99C047C(a1);
    sub_1B99C03C0(a2, a3, &v11);

    return sub_1B99C047C(&v11);
  }

  else
  {
    v6 = *(a1 + 16);
    v11 = *a1;
    v12[0] = v6;
    *(v12 + 9) = *(a1 + 25);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1B99C1420(&v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

id sub_1B99BF2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_1B99BFBE4(a1, v16);
  if (v17)
  {
    if (v17 == 1)
    {
      return sub_1B99BF428(*&v16[0], *(&v16[0] + 1), a2, a3, a4);
    }

    else
    {
      sub_1B99A1904(v16, v13);
      v9 = v14;
      v10 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v10 + 8))(v12, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
      v11 = swift_dynamicCast();
      (*(*(a3 - 8) + 56))(a4, v11 ^ 1u, 1, a3);
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
    sub_1B99A3418(v16, v13);
    v8 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a4, v8 ^ 1u, 1, a3);
  }
}

id sub_1B99BF428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v57 = a3;
  v59 = a5;
  v10 = sub_1B99F41C4();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v56 - v14;
  v60 = *(a4 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v5 + 32);
  [v58 lock];
  v64[0] = a4;
  swift_getMetatypeMetadata();
  v20 = sub_1B99F3C44();
  v22 = v21;
  swift_beginAccess();
  v23 = *(v5 + 40);
  if (*(v23 + 16) && (v24 = sub_1B99EF914(v20, v22), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      ObjectType = swift_getObjectType();
      v61[0] = v28;
      sub_1B99A3418(v61, v64);
    }

    else
    {
      swift_beginAccess();
      sub_1B99A183C(v26 + 24, v64, &qword_1EBBDC658, &qword_1B99F5F40);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    if (swift_dynamicCast())
    {

      v52 = v60;
      v53 = *(v60 + 56);
      v53(v15, 0, 1, a4);
      v54 = *(v52 + 32);
      v54(v19, v15, a4);
      v55 = v59;
      v54(v59, v19, a4);
      v53(v55, 0, 1, a4);
      return [v58 unlock];
    }

    (*(v60 + 56))(v15, 1, 1, a4);
    (*(v56 + 8))(v15, v10);
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1ED99DBB8 != -1)
  {
    swift_once();
  }

  v29 = sub_1B99F3974();
  __swift_project_value_buffer(v29, qword_1ED99EBF0);

  v30 = sub_1B99F3954();
  v31 = sub_1B99F40B4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v64[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1B99BFCEC(v20, v22, v64);
    _os_log_impl(&dword_1B99A0000, v30, v31, "Creating a new object for shared dependency id - %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1BFAE1C50](v33, -1, -1);
    MEMORY[0x1BFAE1C50](v32, -1, -1);
  }

  v34 = *(a2 + 16);
  v65 = a1;
  v66 = a2;
  __swift_allocate_boxed_opaque_existential_1(v64);

  v34(v35, a1, a2);
  v36 = v65;
  v37 = __swift_project_boxed_opaque_existential_1(v64, v65);
  ObjectType = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v37, v36);
  type metadata accessor for WeakWrapper();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v39 + 24) = 0u;
  *(v39 + 40) = 0u;
  __swift_project_boxed_opaque_existential_1(v61, ObjectType);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType() && DynamicType)
  {
    v41 = ObjectType;
    v42 = __swift_project_boxed_opaque_existential_1(v61, ObjectType);
    v43 = *(v41 - 8);
    v44 = *(v43 + 64);
    MEMORY[0x1EEE9AC00](v42, v42);
    v46 = &v56 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v46);
    sub_1B99F46F4();
    (*(v43 + 8))(v46, v41);
    __swift_destroy_boxed_opaque_existential_1(v61);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B99A3418(v61, v63);
    swift_beginAccess();
    sub_1B99C0514(v63, v39 + 24);
    swift_endAccess();
  }

  swift_beginAccess();

  v47 = *(v6 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v63[0] = *(v6 + 40);
  *(v6 + 40) = 0x8000000000000000;
  sub_1B99C15B0(v39, v20, v22, isUniquelyReferenced_nonNull_native);

  *(v6 + 40) = *&v63[0];
  swift_endAccess();

  sub_1B99B6424(v64, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD50, &qword_1B99F7140);
  v49 = v59;
  v50 = swift_dynamicCast();
  (*(v60 + 56))(v49, v50 ^ 1u, 1, a4);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return [v58 unlock];
}

uint64_t DependencyRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t DependencyRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B99BFC1C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B99BFC90(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1B99BFCEC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1B99BFCEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B99BFDB8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B99B3944(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B99BFDB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B99BFEC4(a5, a6);
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
    result = sub_1B99F42D4();
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

uint64_t sub_1B99BFEC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B99BFF10(a1, a2);
  sub_1B99C0040(&unk_1F37B3AD0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B99BFF10(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B99C012C(v5, 0);
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

  result = sub_1B99F42D4();
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
        v10 = sub_1B99F3CE4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B99C012C(v10, 0);
        result = sub_1B99F4254();
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

uint64_t sub_1B99C0040(uint64_t result)
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

  result = sub_1B99C01A0(result, v12, 1, v3);
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

void *sub_1B99C012C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD58, &qword_1B99F7148);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B99C01A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD58, &qword_1B99F7148);
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

_BYTE **sub_1B99C0294(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B99C0300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99C033C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B99C0388(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

double sub_1B99C03C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B99EF914(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B99C18A4();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 48 * v9);
    v15 = v14[1];
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 25) = *(v14 + 25);
    sub_1B99C0584(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
  }

  return result;
}

uint64_t sub_1B99C047C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD48, &unk_1B99F7130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B99C0514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99C0584(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B99F4234() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1B99F4A04();

      sub_1B99F3B84();
      v15 = sub_1B99F4A24();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (48 * v3 < (48 * v6) || v21 >= v22 + 3 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

id AAFTimedAnalyticsEvent.__allocating_init(eventName:initialData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B99F3AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v3);
  (*(v8 + 56))(&v13[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_endTime], 1, 1, v7);
  v14 = &v13[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventName];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v13[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventData] = a3;
  sub_1B99F3AA4();
  (*(v8 + 32))(&v13[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_startTime], v12, v7);
  v16.receiver = v13;
  v16.super_class = v3;
  return objc_msgSendSuper2(&v16, sel_init);
}

id AAFTimedAnalyticsEvent.init(eventName:initialData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B99F3AB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 56))(&v3[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_endTime], 1, 1, v7);
  v13 = &v3[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventName];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v3[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventData] = a3;
  sub_1B99F3AA4();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_startTime], v12, v7);
  v14 = type metadata accessor for AAFTimedAnalyticsEvent();
  v16.receiver = v3;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t type metadata accessor for AAFTimedAnalyticsEvent()
{
  result = qword_1ED99DD10;
  if (!qword_1ED99DD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B99C0A44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventData;
  swift_beginAccess();
  v4 = *(v1 + v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v4;
  sub_1B99C206C(a1, sub_1B99C1D30, 0, isUniquelyReferenced_nonNull_native, &v8);

  v6 = *(v1 + v3);
  *(v1 + v3) = v8;
}

uint64_t sub_1B99C0B04(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventData;
    swift_beginAccess();
    v7 = *(v3 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v7;
    sub_1B99C206C(a3, sub_1B99C1D30, 0, isUniquelyReferenced_nonNull_native, v24);

    v9 = *(v3 + v6);
    *(v3 + v6) = v24[0];
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = a2;
  v11 = [v10 domain];
  if (v11)
  {
    v12 = v11;
    v13 = OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventData;
    swift_beginAccess();
    v14 = *(v3 + v13);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + v13);
    *(v3 + v13) = 0x8000000000000000;
    sub_1B99C172C(v12, 0x6D6F44726F727265, 0xEB000000006E6961, v15);
    *(v3 + v13) = v22;
    swift_endAccess();
    [v10 code];
    v16 = sub_1B99F3FB4();
    swift_beginAccess();
    v17 = *(v3 + v13);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v3 + v13);
    *(v3 + v13) = 0x8000000000000000;
    sub_1B99C172C(v16, 0x646F43726F727265, 0xE900000000000065, v18);
    *(v3 + v13) = v23;
    swift_endAccess();

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD78, &qword_1B99F7160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B99F5C20;
    *(inited + 32) = 0x6563637553646964;
    *(inited + 40) = 0xEA00000000006465;
    *(inited + 48) = sub_1B99F3E34();
    v20 = sub_1B99C1D7C(inited);
    swift_setDeallocating();
    sub_1B99A18A4(inited + 32, &qword_1EBBDCD80, &qword_1B99F7168);
    sub_1B99C0D98(v20);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1B99C0D98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B99F3AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD88, qword_1B99F7170);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1B99A183C(&v2[v18], v17, &qword_1EBBDCD88, qword_1B99F7170);
  v19 = (*(v5 + 48))(v17, 1, v4);
  sub_1B99A18A4(v17, &qword_1EBBDCD88, qword_1B99F7170);
  if (v19 == 1)
  {
    if (*(a1 + 16))
    {
      v20 = OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventData;
      swift_beginAccess();
      v21 = *&v2[v20];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = v21;
      sub_1B99C206C(a1, sub_1B99C1D30, 0, isUniquelyReferenced_nonNull_native, v42);

      v23 = *&v2[v20];
      *&v2[v20] = v42[0];
    }

    v24 = v40;
    sub_1B99F3AA4();
    v25 = sub_1B99F3A94();
    if (v25 < sub_1B99F3A94())
    {
      __break(1u);
    }

    else
    {
      (*(v5 + 16))(v14, v24, v4);
      (*(v5 + 56))(v14, 0, 1, v4);
      swift_beginAccess();
      sub_1B99C22F4(v14, &v2[v18]);
      swift_endAccess();
      v26 = sub_1B99F3F74();
      v27 = OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventData;
      swift_beginAccess();
      v28 = *&v2[v27];
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v41 = *&v2[v27];
      *&v2[v27] = 0x8000000000000000;
      sub_1B99C172C(v26, 0x6E6F697461727564, 0xE800000000000000, v29);
      v25 = v41;
      *&v2[v27] = v41;
      swift_endAccess();
      v30 = &v2[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventName];
      v2 = *&v2[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventName];
      v14 = *(v30 + 1);
      v31 = qword_1EBBDC2B0;

      if (v31 == -1)
      {
LABEL_6:
        v42[0] = qword_1EBBDCD28;
        v32 = qword_1EBBDCD28;
        v33._countAndFlagsBits = v2;
        v33._object = v14;
        AAFAnalytics.sendAnalyticsEvent(eventName:eventData:)(v33, v25);

        (*(v5 + 8))(v24, v4);
        return;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v34 = sub_1B99F3974();
  __swift_project_value_buffer(v34, qword_1ED99EC18);
  v35 = v2;
  v36 = sub_1B99F3954();
  v37 = sub_1B99F40C4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1B99BFCEC(*&v35[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventName], *&v35[OBJC_IVAR____TtC18AAAFoundationSwift22AAFTimedAnalyticsEvent_eventName + 8], &v43);
    _os_log_impl(&dword_1B99A0000, v36, v37, "Analytics Event (%s) called complete after already completing", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1BFAE1C50](v39, -1, -1);
    MEMORY[0x1BFAE1C50](v38, -1, -1);
  }
}

id AAFTimedAnalyticsEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AAFTimedAnalyticsEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAFTimedAnalyticsEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B99C1420(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B99EF914(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B99EFCB4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B99EF914(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B99F4974();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B99C18A4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;

    return sub_1B99C2570(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 48 * v11);
  v27 = *a1;
  v28 = a1[1];
  *(v26 + 25) = *(a1 + 25);
  *v26 = v27;
  v26[1] = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_1B99C15B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B99EF914(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B99EFF84(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B99EF914(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B99F4974();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B99C1A54();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1B99C172C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B99EF914(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B99F022C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B99EF914(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1B99F4974();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1B99C1BC4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void *sub_1B99C18A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDB0, &qword_1B99F7200);
  v2 = *v0;
  v3 = sub_1B99F43F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_1B99BFBE4(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[9];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 25) = v25;
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

        v1 = v27;
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

void *sub_1B99C1A54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDA8, &unk_1B99F9B10);
  v2 = *v0;
  v3 = sub_1B99F43F4();
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

id sub_1B99C1BC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDA0, &unk_1B99F71F0);
  v2 = *v0;
  v3 = sub_1B99F43F4();
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

        result = v20;
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

id sub_1B99C1D30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

unint64_t sub_1B99C1D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDA0, &unk_1B99F71F0);
    v3 = sub_1B99F4414();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B99EF914(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1B99C1E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD90, &qword_1B99F71E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD98, &qword_1B99F71E8);
    v9 = sub_1B99F4414();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1B99A183C(v11, v7, &qword_1EBBDCD90, &qword_1B99F71E0);
      result = sub_1B99EF98C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1B99F43C4();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_1B99A3418(&v7[v10], (v9[7] + 32 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_1B99C206C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_1B99EF914(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_1B99C1BC4();
      }
    }

    else
    {
      v31 = v50;
      sub_1B99F022C(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_1B99EF914(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1B99A9978();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1B99F4974();
  __break(1u);
  return result;
}

uint64_t sub_1B99C22F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD88, qword_1B99F7170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B99C236C()
{
  v0 = sub_1B99F3AB4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B99C2518();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B99C2518()
{
  if (!qword_1ED99DC88[0])
  {
    sub_1B99F3AB4();
    v0 = sub_1B99F41C4();
    if (!v1)
    {
      atomic_store(v0, qword_1ED99DC88);
    }
  }
}

void *MessageDispatcher.__allocating_init<A, B>(encoder:decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1B99C6020(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v8;
}

void *MessageDispatcher.init<A, B>(encoder:decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B99C6020(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v8;
}

uint64_t *sub_1B99C2758(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1B99C3ED0(a1, a2);
}

uint64_t sub_1B99C27A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
  return (*(v9 + 8))(a1, a2, a3, *(v7 + 80), *(v7 + 88), v8, v9);
}

uint64_t sub_1B99C2850(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B99C289C);
}

uint64_t sub_1B99C289C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v1 + 88);
  *v3 = v0;
  v3[1] = sub_1B99C298C;
  v5 = *(v0 + 16);

  return (sub_1B99B1B48)(v5, 0, 0, sub_1B99C61D4, v2, v4);
}

uint64_t sub_1B99C298C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99C2AC8);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B99C2AC8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1B99C2B2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = *(v5 + 80);
  *(v6 + 32) = a1;
  sub_1B99C27A4(a3, sub_1B99C6CE0, v6);
}

uint64_t sub_1B99C2BE4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  return (*(v5 + 16))(a1, *(v3 + 80), *(v3 + 88), v4, v5);
}

uint64_t sub_1B99C2C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  return (*(v12 + 24))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t sub_1B99C2D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = *(v14 + 80);
  v16[3] = *(v14 + 88);
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = v15;
  v16[8] = a2;
  v16[9] = a3;
  v17 = v7[5];
  v18 = v7[6];

  __swift_project_boxed_opaque_existential_1(v7 + 2, v17);
  (*(v18 + 24))(a1, sub_1B99C61DC, v16, a5, a7, v17, v18);
}

uint64_t sub_1B99C2E70(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F4A34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v17 - v13);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = a5();
    v15(a1, a2, a3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B99C6C8C();
    *v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a2(v14);
    return (*(v10 + 8))(v14, v9);
  }
}

uint64_t sub_1B99C303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = *(v14 + 80);
  v16[3] = *(v14 + 88);
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = v15;
  v16[8] = a2;
  v16[9] = a3;

  sub_1B99C38F8(a1, &unk_1B99F7240, v16, a5, a7);
}

uint64_t sub_1B99C3164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99C3190);
}

uint64_t sub_1B99C3190()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v4 = (*(v0 + 64))();
    *(v0 + 88) = v5;
    v12 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_1B99C331C;
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);

    return v12(v8, v9);
  }

  else
  {
    sub_1B99C6C8C();
    swift_allocError();
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B99C331C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1B99C349C;
  }

  else
  {
    v3 = sub_1B99C3430;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99C3430()
{
  v2 = v0[10];
  v1 = v0[11];

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B99C349C()
{
  v2 = v0[10];
  v1 = v0[11];

  swift_unknownObjectRelease();
  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B99C3508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = *(v12 + 80);
  v14[3] = *(v12 + 88);
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = v13;
  v14[8] = a1;
  v14[9] = a2;

  sub_1B99C38F8(a4, &unk_1B99F7250, v14, a4, a6);
}

uint64_t sub_1B99C362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99C3658);
}

uint64_t sub_1B99C3658()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v4 = (*(v0 + 64))();
    *(v0 + 88) = v5;
    v12 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_1B99C37E4;
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);

    return v12(v8, v9);
  }

  else
  {
    sub_1B99C6C8C();
    swift_allocError();
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B99C37E4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1B99C6D4C;
  }

  else
  {
    v3 = sub_1B99C6D48;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99C38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  v13 = swift_allocObject();
  v13[2] = *(v10 + 80);
  v13[3] = *(v10 + 88);
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a2;
  v13[7] = a3;
  v14 = *(v12 + 24);

  v14(a1, sub_1B99C643C, v13, a4, a5, v11, v12);
}

uint64_t sub_1B99C3A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v29 = a4;
  v26 = a6;
  v27 = a2;
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v26 - v18;
  v20 = sub_1B99F3EC4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a8);
  v21 = (*(v13 + 80) + 96) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v27;
  v24 = v28;
  *(v22 + 4) = v26;
  *(v22 + 5) = v24;
  *(v22 + 6) = a8;
  *(v22 + 7) = a9;
  *(v22 + 8) = v23;
  *(v22 + 9) = a3;
  *(v22 + 10) = v29;
  *(v22 + 11) = a5;
  (*(v13 + 32))(&v22[v21], &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a8);

  sub_1B99C973C(0, 0, v19, &unk_1B99F7350, v22);
}

uint64_t sub_1B99C3C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v11 = sub_1B99F4A34();
  v8[4] = v11;
  v12 = *(v11 - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v8[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[7] = v14;
  v18 = (a6 + *a6);
  v15 = a6[1];
  v16 = swift_task_alloc();
  v8[8] = v16;
  *v16 = v8;
  v16[1] = sub_1B99B20E0;

  return v18(v14, a8);
}

uint64_t sub_1B99C3DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  return (*(v12 + 32))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t MessageDispatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t *sub_1B99C3ED0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 128);
  v7 = *(*v2 + 104);
  v8 = *(*v2 + 88);
  swift_getAssociatedTypeWitness();
  v9 = *(v5 + 96);
  v10 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F4A34();
  swift_getFunctionTypeMetadata1();
  swift_getFunctionTypeMetadata2();
  *(v2 + v6) = sub_1B99F3DE4();
  v11 = *(*v2 + 136);
  swift_getFunctionTypeMetadata1();
  *(v2 + v11) = sub_1B99F3DE4();
  (*(*(v10 - 8) + 32))(v2 + *(*v2 + 112), a1, v10);
  (*(*(v8 - 8) + 32))(v2 + *(*v2 + 120), a2, v8);
  return v2;
}

uint64_t sub_1B99C40FC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a3;
  v75 = a2;
  v72 = a1;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v71 = a5;
  v58 = sub_1B99F4A34();
  v57 = *(v58 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58, v10);
  v56 = (&v54 - v11);
  v12 = v8[13];
  v69 = v8[11];
  v70 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v19 = &v54 - v18;
  v73 = a4;
  v59 = *(a4 - 8);
  v20 = *(v59 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17, v21);
  v55 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v68 = &v54 - v25;
  v26 = v8[16];
  swift_beginAccess();
  v27 = *(v5 + v26);
  v28 = v8[12];
  v66 = v8[10];
  v67 = v28;
  swift_getAssociatedTypeWitness();
  sub_1B99F4A34();
  swift_getFunctionTypeMetadata1();
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();

  if (sub_1B99F3E14())
  {
    v30 = 0;
    v61 = (v59 + 16);
    v64 = (v14 + 8);
    v31 = (v27 + 40);
    v65 = v27;
    v62 = v19;
    v60 = FunctionTypeMetadata2;
    v63 = AssociatedTypeWitness;
    v32 = v69;
    while (1)
    {
      v33 = sub_1B99F3DF4();
      result = sub_1B99F3DD4();
      if ((v33 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_11;
      }

      v77 = v30 + 1;
      v78 = v30;
      v35 = *v31;
      v80 = *(v31 - 1);
      v36 = *v61;
      v79 = 0;
      v37 = v73;
      v36(v68, v72, v73);

      swift_dynamicCast();
      v38 = swift_allocObject();
      v40 = v66;
      v39 = v67;
      v38[2] = v66;
      v38[3] = v32;
      v76 = v31;
      v41 = v70;
      v42 = v71;
      v38[4] = v37;
      v38[5] = v42;
      v38[6] = v39;
      v38[7] = v41;
      v43 = v74;
      v38[8] = v75;
      v38[9] = v43;
      v44 = swift_allocObject();
      v44[2] = v40;
      v44[3] = v32;
      v44[4] = v37;
      v44[5] = v42;
      v44[6] = v39;
      v44[7] = v41;
      v45 = v62;
      v44[8] = sub_1B99C6AF8;
      v44[9] = v38;
      v81[0] = sub_1B99C6B2C;
      v81[1] = v44;

      v46 = v79;
      v80(v45, v81);
      if (!v46)
      {

        return (*v64)(v45, v63);
      }

      (*v64)(v45, v63);

      v47 = sub_1B99F3E14();
      v30 = v78 + 1;
      v31 = v76 + 2;
      if (v77 == v47)
      {
        goto LABEL_7;
      }
    }

    result = sub_1B99F4274();
    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

    v48 = v55;
    v49 = v73;
    (*(v59 + 16))(v55, v72, v73);
    type metadata accessor for MessagingError.NoAvailableHandler();
    swift_getWitnessTable();
    v50 = swift_allocError();
    sub_1B99E3CA0(v48, v49, v51);
    v52 = v56;
    *v56 = v50;
    v53 = v58;
    swift_storeEnumTagMultiPayload();
    v75(v52);
    return (*(v57 + 8))(v52, v53);
  }

  return result;
}

uint64_t sub_1B99C4764(uint64_t a1, void (*a2)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = sub_1B99F4A34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  swift_getAssociatedTypeWitness();
  v10 = sub_1B99F4A34();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  (*(v14 + 16))(&v16 - v13, a1, v10);
  swift_dynamicCast();
  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

void sub_1B99C4954(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v44[1] = a4;
  v44[2] = a3;
  v52 = a1;
  v8 = *v4;
  v9 = *(*v4 + 104);
  v10 = *(*v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v17 = v44 - v16;
  v53 = a2;
  v46 = *(a2 - 8);
  v18 = *(v46 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v45 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v50 = v44 - v23;
  v24 = *(v8 + 96);
  v25 = *(v8 + 80);
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  v51 = v44 - v29;
  v30 = v8;
  v31 = v17;
  v32 = *(v30 + 136);
  swift_beginAccess();
  v33 = *(v4 + v32);
  v44[0] = v26;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();

  if (sub_1B99F3E14())
  {
    v35 = 0;
    v48 = (v46 + 16);
    v49 = (v12 + 8);
    v36 = (v33 + 40);
    v47 = FunctionTypeMetadata1;
    v37 = v50;
    while (1)
    {
      v38 = sub_1B99F3DF4();
      sub_1B99F3DD4();
      if ((v38 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_12;
      }

      v54 = v35 + 1;
      v39 = *v36;
      v55 = *(v36 - 1);
      (*v48)(v37, v52, v53);

      swift_dynamicCast();
      v55(v31);
      if (!v6)
      {

        (*v49)(v31, AssociatedTypeWitness);
        swift_dynamicCast();
        return;
      }

      (*v49)(v31, AssociatedTypeWitness);
      v56 = v6;
      v40 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      v6 = 0;
      ++v35;
      v36 += 2;
      if (v54 == sub_1B99F3E14())
      {
        goto LABEL_8;
      }
    }

    sub_1B99F4274();
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:

    v41 = v45;
    v42 = v53;
    (*(v46 + 16))(v45, v52, v53);
    type metadata accessor for MessagingError.NoAvailableHandler();
    swift_getWitnessTable();
    swift_allocError();
    sub_1B99E3CA0(v41, v42, v43);
    swift_willThrow();
  }
}

uint64_t sub_1B99C4E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v32 = a2;
  v33 = a3;
  v6 = *v5;
  v7 = *(*v5 + 80);
  v8 = *(v7 - 8);
  v28[1] = *(v8 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = v28 - v10;
  v29 = v28 - v10;
  v28[0] = v6[11];
  v12 = *(v28[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = v28 - v15;
  v17 = v6[14];
  (*(v12 + 16))(v28 - v15, v5 + v6[15]);
  (*(v8 + 16))(v11, v5 + v17, v7);
  v18 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v8 + 80) + v19 + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v28[0];
  *(v21 + 2) = v7;
  *(v21 + 3) = v22;
  *(v21 + 4) = v30;
  v30 = v6[12];
  *(v21 + 5) = v30;
  v23 = v31;
  *(v21 + 6) = v6[13];
  *(v21 + 7) = v23;
  (*(v12 + 32))(&v21[v18], v16);
  v24 = &v21[v19];
  v25 = v33;
  *v24 = v32;
  *(v24 + 1) = v25;
  (*(v8 + 32))(&v21[v20], v29, v7);
  v34 = sub_1B99C6940;
  v35 = v21;
  v26 = *(*v5 + 128);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F4A34();
  swift_getFunctionTypeMetadata1();
  swift_getFunctionTypeMetadata2();
  sub_1B99F3E24();
  sub_1B99F3E04();
  return swift_endAccess();
}

uint64_t sub_1B99C51E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t (*)(uint64_t a1), char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = a6;
  v45 = a5;
  v46 = a4;
  v49 = a1;
  v50 = a3;
  v48 = a11;
  v43 = *(a7 - 8);
  v14 = *(v43 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v38[1] = v16;
  v47 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a9 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v21;
  v23 = v21[1];
  v24 = swift_allocObject();
  v44 = a7;
  v24[2] = a7;
  v24[3] = a8;
  v24[4] = a9;
  v24[5] = a10;
  v40 = a10;
  v41 = a12;
  v25 = v48;
  v24[6] = v48;
  v24[7] = a12;
  v24[8] = v22;
  v24[9] = v23;
  v26 = *(v25 + 16);
  v27 = *(a12 + 8);

  v28 = v27;
  v29 = v51;
  v51 = a8;
  v26(a9, v49, a9, v28, a8, v25);
  if (v29)
  {
  }

  v32 = v43;
  v31 = v44;
  (*(v43 + 16))(v47, v39, v44);
  v33 = (*(v32 + 80) + 80) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v35 = v51;
  *(v34 + 2) = v31;
  *(v34 + 3) = v35;
  v37 = v40;
  v36 = v41;
  *(v34 + 4) = a9;
  *(v34 + 5) = v37;
  *(v34 + 6) = v25;
  *(v34 + 7) = v36;
  *(v34 + 8) = sub_1B99C6A10;
  *(v34 + 9) = v24;
  (*(v32 + 32))(&v34[v33], v47, v31);
  v46(v20, sub_1B99C6A38, v34);

  return (*(v42 + 8))(v20, a9);
}

uint64_t sub_1B99C5498(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a6;
  v27 = a7;
  v29 = a3;
  v30 = a2;
  v28 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v14 = sub_1B99F4A34();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v25 - v18;
  v20 = sub_1B99C5664(a4, a5, v26, v27, a8, a9, a10);
  v22 = v21;
  swift_getAssociatedTypeWitness();
  v23 = sub_1B99F4A34();
  Result<>.foundation_tryMap<A>(_:)(v20, v22, v23, AssociatedTypeWitness, v19);

  v30(v19);
  return (*(v15 + 8))(v19, v14);
}

uint64_t (*sub_1B99C5664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  v16 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  *(v17 + 6) = a6;
  *(v17 + 7) = a7;
  (*(v13 + 32))(&v17[v16], v15, a2);
  return sub_1B99C6AA0;
}

uint64_t sub_1B99C57AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return v11(a1, AssociatedTypeWitness, AssociatedConformanceWitness, a3, a6);
}

uint64_t sub_1B99C5884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v6 = *v5;
  v7 = *(*v5 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v30 - v11;
  v31 = &v30 - v11;
  v36 = v6[11];
  v13 = *(v36 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v30 - v16;
  v18 = v6[14];
  (*(v13 + 16))(&v30 - v16, v5 + v6[15]);
  v19 = v5 + v18;
  v20 = v7;
  (*(v8 + 16))(v12, v19, v7);
  v21 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v22 = (v14 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 2) = v20;
  *(v23 + 3) = v24;
  *(v23 + 4) = v32;
  v32 = v6[12];
  *(v23 + 5) = v32;
  v25 = v33;
  *(v23 + 6) = v6[13];
  *(v23 + 7) = v25;
  (*(v13 + 32))(&v23[v21], v17);
  (*(v8 + 32))(&v23[v22], v31, v20);
  v26 = &v23[(v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v27 = v35;
  *v26 = v34;
  *(v26 + 1) = v27;
  v37 = sub_1B99C6850;
  v38 = v23;
  v28 = *(*v5 + 136);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  sub_1B99F3E24();

  sub_1B99F3E04();
  return swift_endAccess();
}

uint64_t sub_1B99C5BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void (*a3)(char *)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27[1] = a2;
  v28 = a5;
  v31 = a4;
  v32 = a3;
  v30 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v15 = *(v29 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v33 = v27 - v18;
  v19 = *(a7 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v34;
  result = (*(a10 + 16))(a7, a1, a7, *(a11 + 8), a6, a10);
  if (!v24)
  {
    v34 = v19;
    v32(v23);
    v32 = *(a9 + 16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (v32)(v33, AssociatedTypeWitness, AssociatedConformanceWitness, v28, a9);
    (*(v29 + 8))(v33, AssociatedTypeWitness);
    return (*(v34 + 8))(v23, a7);
  }

  return result;
}

uint64_t *sub_1B99C5E38()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(v0 + *(*v0 + 128));

  v3 = *(v0 + *(*v0 + 136));

  return v0;
}

uint64_t sub_1B99C5F3C()
{
  v0 = sub_1B99C5E38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B99C6020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v12, v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v21;
  v30[1] = v22;
  v30[2] = v23;
  v30[3] = v24;
  v25 = type metadata accessor for InternalMessageDispatcher();
  (*(v16 + 16))(v20, a1, a3);
  (*(v10 + 16))(v14, a2, a4);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1B99C3ED0(v20, v14);
  v5[5] = v25;
  v5[6] = &off_1F37B2EE0;
  v5[2] = v28;
  return v5;
}

uint64_t sub_1B99C61DC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 72);
  v9 = *(v3 + 48);
  v8 = *(v3 + 32);
  return sub_1B99C2E70(a1, a2, a3, *(v3 + 56), *(v3 + 64));
}

uint64_t sub_1B99C6214(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v15 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B99A3FAC;

  return sub_1B99C3164(a1, a2, v10, v12, v11);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B99C6348(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v15 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B99A3FAC;

  return sub_1B99C362C(a1, a2, v10, v12, v11);
}

uint64_t dispatch thunk of MessageDispatcher.handleMessage(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B99A3EB8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MessageDispatcher.registerHandler<A>(for:_:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 168))();
}

uint64_t dispatch thunk of MessageDispatcher.registerHandler<A, B>(for:handler:in:)()
{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 152))();
}

uint64_t sub_1B99C6754(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B99C6850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = (((*(*(v2[3] - 8) + 80) + 64) & ~*(*(v2[3] - 8) + 80)) + *(*(v2[3] - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v5 = v2 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B99C5BDC(a1, v2 + v4, *v5, *(v5 + 1), v3, v2[3], v2[4], a2, v2[5], v2[6], v2[7]);
}

uint64_t sub_1B99C6940(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[3] - 8) + 80) + 64) & ~*(*(v2[3] - 8) + 80);
  v4 = (*(*(v2[3] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B99C51E0(a1, a2, v2 + v3, *(v2 + v4), *(v2 + v4 + 8), v2 + ((v4 + *(*(v2[2] - 8) + 80) + 16) & ~*(*(v2[2] - 8) + 80)), v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
}

uint64_t sub_1B99C6A10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t sub_1B99C6AA0(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  return sub_1B99C57AC(a1, v1 + ((*(*(v1[2] - 8) + 80) + 64) & ~*(*(v1[2] - 8) + 80)), v1[2], v1[3], v1[4], v1[5]);
}

uint64_t sub_1B99C6AF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 72);
  v9 = *(v1 + 56);
  return sub_1B99C4764(a1, *(v1 + 64));
}

uint64_t sub_1B99C6B2C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t sub_1B99C6B54(uint64_t a1)
{
  v3 = v2;
  v15 = v1[4];
  v4 = v1[7];
  v5 = (*(*(v1[6] - 8) + 80) + 96) & ~*(*(v1[6] - 8) + 80);
  v6 = v1[3];
  v13 = v1[2];
  v14 = v1[5];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B99A3EB8;

  return sub_1B99C3C2C(a1, v13, v6, v7, v8, v9, v10, v1 + v5);
}

unint64_t sub_1B99C6C8C()
{
  result = qword_1EBBDCDB8;
  if (!qword_1EBBDCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCDB8);
  }

  return result;
}

uint64_t sub_1B99C6CE0(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);

  return sub_1B99D913C(a1, v3, v4, v5);
}

uint64_t sub_1B99C6D50()
{
  v0 = sub_1B99C7C84(&unk_1F37B3B48);
  result = swift_arrayDestroy();
  off_1ED99EA88 = v0;
  return result;
}

id sub_1B99C6DE8()
{
  v1 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B99C6E9C(uint64_t a1)
{
  v3 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B99C6EF4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_1B99C7044(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDC8, &qword_1B99F7360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v38 - v7;
  v9 = sub_1B99C7DE4();
  v11 = v10;
  v39[0] = v9;
  v39[1] = v10;
  v38[0] = 0x242A5D392D305B5ELL;
  v38[1] = 0xE800000000000000;
  v12 = sub_1B99F3934();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_1B99C8210();
  sub_1B99F41E4();
  v14 = v13;
  sub_1B99A18A4(v8, &qword_1EBBDCDC8, &qword_1B99F7360);
  if (v14)
  {

    if (qword_1ED99EB40 != -1)
    {
      swift_once();
    }

    v15 = sub_1B99F3974();
    __swift_project_value_buffer(v15, qword_1ED99EC18);

    v16 = sub_1B99F3954();
    v17 = sub_1B99F40B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B99BFCEC(a1, a2, v39);
      _os_log_impl(&dword_1B99A0000, v16, v17, "%s is not a phone number.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAE1C50](v19, -1, -1);
      MEMORY[0x1BFAE1C50](v18, -1, -1);
    }

    goto LABEL_7;
  }

  if (sub_1B99F3CF4())
  {
    v20 = sub_1B99C8264();
    if (v21)
    {
      v22 = v20;
      v23 = v21;

      if (qword_1ED99EB40 != -1)
      {
        swift_once();
      }

      v24 = sub_1B99F3974();
      __swift_project_value_buffer(v24, qword_1ED99EC18);

      v25 = sub_1B99F3954();
      v26 = sub_1B99F40B4();

      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_25;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_1B99BFCEC(a1, a2, v39);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1B99BFCEC(v22, v23, v39);
      v29 = "Formatted an international phone number: %s -> %s.";
LABEL_24:
      _os_log_impl(&dword_1B99A0000, v25, v26, v29, v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAE1C50](v28, -1, -1);
      MEMORY[0x1BFAE1C50](v27, -1, -1);
LABEL_25:

      return v22;
    }
  }

  v30 = sub_1B99C7694(v9, v11);
  if (v31)
  {
    v22 = v30;
    v32 = v31;

    if (qword_1ED99EB40 != -1)
    {
      swift_once();
    }

    v33 = sub_1B99F3974();
    __swift_project_value_buffer(v33, qword_1ED99EC18);

    v25 = sub_1B99F3954();
    v26 = sub_1B99F40B4();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_25;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_1B99BFCEC(a1, a2, v39);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1B99BFCEC(v22, v32, v39);
    v29 = "Formatted a local phone number: %s -> %s.";
    goto LABEL_24;
  }

  v22 = sub_1B99C8264();
  v35 = v34;

  if (v35)
  {
    if (qword_1ED99EB40 != -1)
    {
      swift_once();
    }

    v36 = sub_1B99F3974();
    __swift_project_value_buffer(v36, qword_1ED99EC18);

    v25 = sub_1B99F3954();
    v26 = sub_1B99F40B4();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_25;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_1B99BFCEC(a1, a2, v39);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1B99BFCEC(v22, v35, v39);
    v29 = "Formatted a best guest phone number: %s -> %s.";
    goto LABEL_24;
  }

LABEL_7:

  return a1;
}

uint64_t sub_1B99C7694(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v6 = *(v2 + v5);
  CFPhoneNumberGetITUCountryCodeForISOCountryCode();
  sub_1B99F44E4();

  MEMORY[0x1BFAE0580](a1, a2);

  v14 = sub_1B99F3D04();
  sub_1B99F3C94();

  v7 = v14;
  v8 = sub_1B99F3C04();
  v9 = *(v2 + v5);
  if (PNIsValidPhoneNumberForCountry())
  {
    v10 = *(v2 + v5);
    v11 = sub_1B99F3C04();
    v12 = PNCreateFormattedStringWithCountry();

    if (v12)
    {

      v7 = sub_1B99F3C24();
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

id PhoneNumberFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhoneNumberFormatter.init()()
{
  v1 = v0;
  v2 = sub_1B99F3934();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDD0, &qword_1B99F7368);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v20 - v11;
  v13 = [objc_opt_self() currentLocale];
  sub_1B99F38F4();

  sub_1B99F3924();
  (*(v3 + 8))(v7, v2);
  v14 = sub_1B99F3914();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_1B99A18A4(v12, &qword_1EBBDCDD0, &qword_1B99F7368);
  }

  else
  {
    sub_1B99F3904();
    (*(v15 + 8))(v12, v14);
  }

  v16 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  v17 = sub_1B99F3C04();

  *&v1[v16] = v17;
  v18 = type metadata accessor for PhoneNumberFormatter();
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

id PhoneNumberFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneNumberFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B99C7C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDD8, &qword_1B99F73E8);
    v3 = sub_1B99F4244();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 == v9 && v15[1] == v8)
        {
          goto LABEL_3;
        }

        result = sub_1B99F4704();
        if (result)
        {
          goto LABEL_3;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;

LABEL_3:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B99C7DE4()
{

  v0 = sub_1B99F3CD4();
  v2 = v1;
  if (v1)
  {
    v3 = v0;
    do
    {
      if (qword_1ED99EA80 != -1)
      {
        swift_once();
      }

      v5 = off_1ED99EA88;
      if (*(off_1ED99EA88 + 2) && (v6 = *(off_1ED99EA88 + 5), sub_1B99F4A04(), sub_1B99F3B84(), v7 = sub_1B99F4A24(), v8 = -1 << *(v5 + 32), v9 = v7 & ~v8, ((*(v5 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        while (1)
        {
          v11 = (v5[6] + 16 * v9);
          v12 = *v11 == v3 && v2 == v11[1];
          if (v12 || (sub_1B99F4704() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        MEMORY[0x1BFAE0570](v3, v2);
      }

      v3 = sub_1B99F3CD4();
      v2 = v4;
    }

    while (v4);
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B99C7F88(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDC8, &qword_1B99F7360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v20 - v7;
  v9 = sub_1B99C7DE4();
  v21[0] = v9;
  v21[1] = v10;
  v20[0] = 0x242A5D392D305B5ELL;
  v20[1] = 0xE800000000000000;
  v11 = sub_1B99F3934();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1B99C8210();
  sub_1B99F41E4();
  v13 = v12;
  sub_1B99A18A4(v8, &qword_1EBBDCDC8, &qword_1B99F7360);
  if ((v13 & 1) == 0)
  {
    return v9;
  }

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B99F3974();
  __swift_project_value_buffer(v14, qword_1ED99EC18);

  v15 = sub_1B99F3954();
  v16 = sub_1B99F40B4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1B99BFCEC(a1, a2, v21);
    _os_log_impl(&dword_1B99A0000, v15, v16, "%s is not a phone number.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFAE1C50](v18, -1, -1);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  return a1;
}

unint64_t sub_1B99C8210()
{
  result = qword_1ED99EA70;
  if (!qword_1ED99EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED99EA70);
  }

  return result;
}

uint64_t sub_1B99C8264()
{
  v8 = sub_1B99F3D04();
  sub_1B99F3C94();
  v0 = v8;
  v1 = sub_1B99F3C04();
  v2 = PNCopyBestGuessCountryCodeForNumber();
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  valid = PNIsValidPhoneNumberForCountry();

  if (!valid)
  {

    return 0;
  }

  v5 = sub_1B99F3C04();
  v6 = PNCreateFormattedStringWithCountry();

  if (v6)
  {

    v0 = sub_1B99F3C24();
  }

  return v0;
}

uint64_t sub_1B99C8518(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDC8, &qword_1B99F7360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v30 - v11;
  if (!a4)
  {
    return 0;
  }

  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = sub_1B99F3C04();
  v31 = sub_1B99C7F88(a1, a2);
  v32 = v16;
  v30[0] = 0x242A5D392D305B5ELL;
  v30[1] = 0xE800000000000000;
  v17 = sub_1B99F3934();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_1B99C8210();
  sub_1B99F41E4();
  v19 = v18;
  sub_1B99A18A4(v12, &qword_1EBBDCDC8, &qword_1B99F7360);
  if (v19)
  {

    if (qword_1ED99EB40 != -1)
    {
      swift_once();
    }

    v20 = sub_1B99F3974();
    __swift_project_value_buffer(v20, qword_1ED99EC18);

    v21 = sub_1B99F3954();
    v22 = sub_1B99F40B4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1B99BFCEC(a1, a2, &v31);
      _os_log_impl(&dword_1B99A0000, v21, v22, "%s is not a phone number.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFAE1C50](v24, -1, -1);
      MEMORY[0x1BFAE1C50](v23, -1, -1);
    }

    goto LABEL_18;
  }

  v25 = *MEMORY[0x1E695E480];
  v26 = sub_1B99F3C04();

  v21 = CFPhoneNumberCreate();

  if (!v21)
  {
LABEL_19:

    return 0;
  }

  String = CFPhoneNumberCreateString();
  if (!String)
  {
LABEL_18:

    goto LABEL_19;
  }

  v28 = String;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v31 = 0;
    v32 = 0;
    sub_1B99F3C14();

    if (v32)
    {
      return v31;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t Dependency.init(dependencyId:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v45 = a3;
  v47 = a5;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B99F41C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v43 - v23;
  (*(v8 + 56))(&v43 - v23, 1, 1, a4);
  type metadata accessor for DependencyRegistry();
  if (a2)
  {
    swift_bridgeObjectRetain_n();
    v44 = a1;
    static DependencyRegistry.locateService<A>(by:config:)(a1, a2, v45, a4, v21);

    v25 = *(v12 + 8);
    v25(v24, v11);
    (*(v12 + 32))(v24, v21, v11);
    v26 = a2;
  }

  else
  {
    static DependencyRegistry.locateService<A>(by:config:)(a1, 0, v45, a4, v21);
    v25 = *(v12 + 8);
    v25(v24, v11);
    (*(v12 + 32))(v24, v21, v11);
    v49[0] = a4;
    swift_getMetatypeMetadata();
    v44 = sub_1B99F3C44();
    v26 = v27;
  }

  (*(v12 + 16))(v17, v24, v11);
  if ((*(v8 + 48))(v17, 1, a4) == 1)
  {
    v25(v17, v11);
    if (qword_1ED99DBB8 != -1)
    {
      swift_once();
    }

    v31 = sub_1B99F3974();
    __swift_project_value_buffer(v31, qword_1ED99EBF0);
    v32 = sub_1B99F3954();
    v33 = sub_1B99F40C4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49[0] = v35;
      *v34 = 136315650;
      *(v34 + 4) = sub_1B99BFCEC(3029639152, 0xA400000000000000, v49);
      *(v34 + 12) = 2080;

      v36 = sub_1B99BFCEC(v44, v26, v49);

      *(v34 + 14) = v36;
      *(v34 + 22) = 2080;
      v37 = [objc_opt_self() callStackSymbols];
      v38 = sub_1B99F3DA4();

      v48 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD10, qword_1B99F7400);
      sub_1B99A468C();
      v39 = sub_1B99F3B94();
      v41 = v40;

      v42 = sub_1B99BFCEC(v39, v41, v49);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_1B99A0000, v32, v33, "%s The requested service %s has not been registered at\n%s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAE1C50](v35, -1, -1);
      MEMORY[0x1BFAE1C50](v34, -1, -1);
    }

    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    sub_1B99F4264();
    MEMORY[0x1BFAE0580](0xD00000000000001DLL, 0x80000001B99FA7B0);

    MEMORY[0x1BFAE0580](v44, v26);

    MEMORY[0x1BFAE0580](0xD000000000000018, 0x80000001B99FA7D0);
    result = sub_1B99F43D4();
    __break(1u);
  }

  else
  {
    v25(v24, v11);

    v28 = *(v8 + 32);
    v29 = v46;
    v28(v46, v17, a4);
    v28(v47, v29, a4);
  }

  return result;
}

uint64_t sub_1B99C8EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for Dependency();
  return Dependency.wrappedValue.setter(v6, v8);
}

void (*Dependency.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[2] = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_1B99C90F0;
}

void sub_1B99C90F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    v9 = v2[1];
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B99C9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Dependency();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v6);
  return Dependency.projectedValue.setter(v10, v6);
}

uint64_t Dependency.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*Dependency.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_1B99C94E0;
}

void sub_1B99C94E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t keypath_getTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a2 + a3 - 8);
  v6 = type metadata accessor for Dependency();
  return a4(v6);
}

uint64_t sub_1B99C96B4(uint64_t a1)
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

uint64_t sub_1B99C973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1B99A183C(a3, v28 - v12, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v14 = sub_1B99F3EC4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1B99AB648(v13);
  }

  else
  {
    sub_1B99F3EB4();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1B99F3E44();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1B99F3C64() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1B99AB648(a3);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B99AB648(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1B99C9A0C(uint64_t a1, uint64_t a2)
{
  sub_1B99A183C(a1, v7, &qword_1EBBDCE10, qword_1B99F7480);
  if (v8)
  {
    v3 = *&v7[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
    swift_allocError();
    *v4 = v3;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1B99A1904(v7, v6);
    sub_1B99A1904(v6, *(*(a2 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1B99C9ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B99C9AEC);
}

uint64_t sub_1B99C9AEC()
{
  v2 = v0[24];
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_1B99C9C40;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v7 = *(v6 + 8);
  v8 = sub_1B99F3A24();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDF0, &qword_1B99F9940);
  v7(v1, sub_1B99CA3B4, v4, v8, v9, v5, v6);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B99C9C40()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1B99C9DF0;
  }

  else
  {
    sub_1B99A1904((v1 + 120), v1 + 80);
    v4 = sub_1B99C9D68;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1B99C9D68()
{
  v1 = v0[25];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
  sub_1B99F3A04();
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B99C9DF0()
{
  v2 = v0[25];
  v1 = v0[26];
  swift_getErrorValue();
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v1;
  v7 = sub_1B99F49B4();
  v9 = v8;

  v0[10] = v7;
  v0[11] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDF8, &qword_1B99F7478);
  sub_1B99CA3BC();
  sub_1B99F3A04();

  v10 = v0[1];

  return v10();
}

void *MessageDispatcher<>.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDE0, &qword_1B99F7440);
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDE8, &qword_1B99F7448);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  v0[5] = v1;
  v0[6] = &off_1F37B2EE0;
  v0[2] = v2;
  return v0;
}

uint64_t MessageDispatcher<>.detachMessage(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B99F3A24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v17 - v11;
  sub_1B99F39F4();
  v13 = sub_1B99F3EC4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v2;
  (*(v5 + 32))(&v15[v14], &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1B99C973C(0, 0, v12, &unk_1B99F7458, v15);
}

uint64_t sub_1B99CA14C(uint64_t a1)
{
  v4 = *(sub_1B99F3A24() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B99A3EB8;

  return sub_1B99C9ACC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B99CA244(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B99A3FAC;

  return sub_1B99A1BCC(a1, v5);
}

uint64_t sub_1B99CA2FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B99A3EB8;

  return sub_1B99A1BCC(a1, v5);
}

unint64_t sub_1B99CA3BC()
{
  result = qword_1EBBDCE00;
  if (!qword_1EBBDCE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDCDF8, &qword_1B99F7478);
    sub_1B99CA440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE00);
  }

  return result;
}

unint64_t sub_1B99CA440()
{
  result = qword_1EBBDCE08;
  if (!qword_1EBBDCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDCE08);
  }

  return result;
}

uint64_t sub_1B99CA4BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_1B99CA51C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1B99CA554(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1B99CA5EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1B99CA6A4(v2);
  return sub_1B99A3EA8(v5);
}

uint64_t sub_1B99CA65C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  return sub_1B99CA6A4(v3);
}

uint64_t sub_1B99CA6A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B99CA6B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return sub_1B99A3EA8(v4);
}

id sub_1B99CA754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 56);
  *(a2 + 16) = v6;
  return sub_1B99CA884(v4, v5, v6);
}

void sub_1B99CA7A8(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(v4 + 40);
  v7 = *(v4 + 48);
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v8 = *(v4 + 56);
  *(v4 + 56) = v5;
  sub_1B99CA884(v2, v3, v5);
  sub_1B99CA900(v6, v7, v8);
}

id sub_1B99CA834@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 56);
  *(a1 + 16) = v5;
  return sub_1B99CA884(v3, v4, v5);
}

id sub_1B99CA884(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

void sub_1B99CA8A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  v7 = *(v1 + 56);
  *(v1 + 56) = v4;
  sub_1B99CA900(v5, v6, v7);
}

void sub_1B99CA900(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_1B99CA970(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  *(v4 + 64) = v2;
  *(v4 + 72) = v3;
  sub_1B99CAA28(v2);
  return sub_1B99CAA8C(v5);
}

unint64_t sub_1B99CA9E0@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v3;
  a1[1] = v4;
  return sub_1B99CAA28(v3);
}

unint64_t sub_1B99CAA28(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1B99CAA3C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return sub_1B99CAA8C(v4);
}

unint64_t sub_1B99CAA8C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B99CAAF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  swift_beginAccess();
  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  v7 = *(v2 + 56);
  swift_beginAccess();
  v8 = *(v2 + 64);
  v13 = *(v2 + 72);
  swift_beginAccess();
  v14 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE18, &qword_1B99F74C0);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = v14;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  *&v11 = v6;
  *(&v11 + 1) = v5;
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  *(v9 + 80) = v13;
  *(v9 + 88) = a2;
  sub_1B99D6A60(qword_1EBBDBF20, &qword_1EBBDCE18, &qword_1B99F74C0);
  sub_1B99CA6A4(v3);
  sub_1B99CA884(v6, v5, v7);
  sub_1B99CAA28(v8);

  return sub_1B99F3FA4();
}

uint64_t DictionaryDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1B99C1E80(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t DictionaryDecoder.init()()
{
  *(v0 + 16) = sub_1B99C1E80(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t DictionaryDecoder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_1B99A3EA8(*(v0 + 24));
  sub_1B99CA900(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 72);
  sub_1B99CAA8C(*(v0 + 64));
  return v0;
}

uint64_t DictionaryDecoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  sub_1B99A3EA8(*(v0 + 24));
  sub_1B99CA900(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 72);
  sub_1B99CAA8C(*(v0 + 64));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B99CADC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v7 = *(*v3 + 80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(v26 - v11, v3 + *(v9 + 112), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE38, &qword_1B99F8D80);
  if (swift_dynamicCast())
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    v26[0] = a3;
    v26[1] = v5;
    v18 = *(v3 + 72);
    v19 = *(v3 + 80);
    v20 = *(v3 + 64);
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v33 = v20;
    v34 = v18;
    v35 = v19;
    v36 = v37;

    sub_1B99CA6A4(v14);
    sub_1B99CA884(v16, v17, v20);
    sub_1B99CAA28(v18);
    type metadata accessor for KeyedContainer();
    swift_getWitnessTable();
    return sub_1B99F4494();
  }

  else
  {
    v22 = sub_1B99F42A4();
    swift_allocError();
    v24 = v23;
    v25 = *(v3 + 16);
    v27 = 0;
    v28 = 0xE000000000000000;

    sub_1B99F4264();
    MEMORY[0x1BFAE0580](0xD000000000000029, 0x80000001B99FA8D0);
    sub_1B99F46E4();
    sub_1B99F4294();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B00], v22);
    return swift_willThrow();
  }
}

uint64_t sub_1B99CB08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*v3 + 80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v9 + 16))(&v26 - v10, v3 + *(v8 + 112), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE28, &qword_1B99F7838);
  if (swift_dynamicCast())
  {
    v11 = v30;
    v12 = *(v3 + 16);
    v28 = *(v3 + 24);
    v29 = v12;
    v32 = v4;
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v17 = *(v3 + 72);
    v18 = *(v3 + 80);
    v19 = *(v3 + 64);

    sub_1B99CA6A4(v13);
    sub_1B99CA884(v15, v16, v19);
    sub_1B99CAA28(v17);
    v27 = sub_1B99CB478(v11);

    a3[3] = &type metadata for UnkeyedContainer;
    a3[4] = sub_1B99D56E4();
    result = swift_allocObject();
    *a3 = result;
    v21 = v28;
    *(result + 16) = v29;
    *(result + 24) = v21;
    *(result + 32) = v13;
    *(result + 40) = v14;
    *(result + 48) = v15;
    *(result + 56) = v16;
    *(result + 64) = v19;
    *(result + 72) = v17;
    *(result + 80) = v18;
    *(result + 88) = v27;
    *(result + 96) = 0;
  }

  else
  {
    v22 = sub_1B99F42A4();
    swift_allocError();
    v24 = v23;
    v25 = *(v3 + 16);
    v30 = 0;
    v31 = 0xE000000000000000;

    sub_1B99F4264();
    MEMORY[0x1BFAE0580](0xD00000000000002BLL, 0x80000001B99FA8A0);
    sub_1B99F46E4();
    sub_1B99F4294();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B00], v22);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B99CB34C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B99EF22C(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD170, &qword_1B99F7840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE40, &qword_1B99F7848);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B99EF22C((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B99CB478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B99EF574(0, v1, 0);
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      sub_1B99B3944(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
      swift_dynamicCast();
      v13 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B99EF574((v5 > 1), v6 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 32 * v6;
      v8 = v12;
      *(v7 + 32) = v11;
      *(v7 + 48) = v8;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_1B99CB58C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v13 = v1[4];
  v14 = v1[7];
  v17 = v1[9];
  v15 = v1[6];
  v16 = v1[10];
  a1[3] = &type metadata for SingleValueContainer;
  v7 = *(v1 + 64);
  a1[4] = sub_1B99D5690();
  v8 = swift_allocObject();
  *a1 = v8;
  v9 = *(v3 + 112);
  v10 = *(v3 + 80);
  *(v8 + 112) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 88));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v1 + v9, v10);
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v13;
  *(v8 + 40) = v6;
  *(v8 + 48) = v15;
  *(v8 + 56) = v14;
  *(v8 + 64) = v7;
  *(v8 + 72) = v17;
  *(v8 + 80) = v16;

  sub_1B99CA6A4(v13);
  sub_1B99CA884(v15, v14, v7);
  return sub_1B99CAA28(v17);
}

uint64_t *sub_1B99CB6E4()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[9];
  v8 = v0[10];
  v9 = *(v0 + 64);
  sub_1B99A3EA8(v0[4]);
  sub_1B99CA900(v5, v6, v9);
  sub_1B99CAA8C(v7);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t sub_1B99CB7B4()
{
  v0 = sub_1B99CB6E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B99CB88C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v2 + 24);
    v13 = *(a2 + 16);
    v11 = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1);

    v7 = v4(v12);
    sub_1B99A3EA8(v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v7;
  }

  else
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    return sub_1B99F4AB4();
  }
}

uint64_t sub_1B99CB958(uint64_t a1)
{
  v5 = *(v1 + 72);
  v4 = *(a1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCFC8, &qword_1B99F7FC8);
  sub_1B99D6A60(&qword_1EBBDCFD0, &qword_1EBBDCFC8, &qword_1B99F7FC8);
  v2 = sub_1B99F3D14();

  return v2;
}

uint64_t sub_1B99CBA34(uint64_t a1, uint64_t a2)
{
  v11 = v2[2];
  v12 = v2[3];
  v9 = *v2;
  v10 = v2[1];
  v3 = *(v2 + 9);
  v13 = *(v2 + 8);
  v4 = sub_1B99CB88C(a1, a2);
  if (*(v3 + 16))
  {
    sub_1B99EF914(v4, v5);
    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_1B99CBAB4(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v9 = v2[2];
  v10 = v3;
  v11 = v2[4];
  v4 = v2[1];
  v7 = *v2;
  v8 = v4;
  sub_1B99CBB4C(a1, a2, v12);
  sub_1B99D5A10(&v13, &v7);
  sub_1B99D5EC4(v12);
  v5 = *(&v8 + 1) == 0;
  sub_1B99A18A4(&v7, &qword_1EBBDC658, &qword_1B99F5F40);
  return v5;
}

double sub_1B99CBB4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = v3[2];
  v27 = v3[3];
  v28 = v3[1];
  v9 = v3[4];
  v26 = v3[5];
  v25 = *(v3 + 48);
  *v34 = *(v3 + 49);
  *&v34[3] = *(v3 + 13);
  v11 = v3[7];
  v10 = v3[8];
  v24 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F5C20;
  v13 = *(a2 + 16);
  *(inited + 56) = v13;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a1, v13);
  v38 = v7;

  sub_1B99EBF94(inited);
  *&v29 = v7;
  *(&v29 + 1) = v28;
  *&v30 = v8;
  *(&v30 + 1) = v27;
  v31 = v9;
  v32 = v26;
  v33 = v25;
  v35 = v11;
  v36 = v10;
  v37 = v24;

  sub_1B99CA6A4(v8);
  sub_1B99CA884(v9, v26, v25);
  v15 = v11;
  sub_1B99CAA28(v11);
  v16 = sub_1B99CB88C(a1, a2);
  if (!*(v24 + 16))
  {

    goto LABEL_5;
  }

  v18 = sub_1B99EF914(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_5:
    v29 = 0u;
    v30 = 0u;
    goto LABEL_6;
  }

  sub_1B99B3944(*(v24 + 56) + 32 * v18, &v29);
LABEL_6:
  *a3 = v7;
  *(a3 + 8) = v28;
  *(a3 + 16) = v8;
  *(a3 + 24) = v27;
  *(a3 + 32) = v9;
  *(a3 + 40) = v26;
  *(a3 + 48) = v25;
  *(a3 + 56) = v15;
  *(a3 + 64) = v10;
  result = *&v29;
  v22 = v30;
  *(a3 + 72) = v29;
  *(a3 + 88) = v22;
  return result;
}

BOOL sub_1B99CBD68(uint64_t a1, uint64_t a2)
{
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v5 = *v2;
  v6 = v2[1];
  sub_1B99CBB4C(a1, a2, v10);
  v3 = sub_1B99D4FA4();
  sub_1B99D5EC4(v10);
  return v3;
}

uint64_t sub_1B99CBDD8(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v9 = v2[2];
  v10 = v3;
  v11 = v2[4];
  v4 = v2[1];
  v7 = *v2;
  v8 = v4;
  sub_1B99CBB4C(a1, a2, v12);
  sub_1B99D5A10(v13, &v7);
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1B99D5EC4(v12);
      return v6;
    }
  }

  else
  {
    sub_1B99A18A4(&v7, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  sub_1B99D1CA8(MEMORY[0x1E69E6158], v13);
  swift_willThrow();
  return sub_1B99D5EC4(v12);
}

double sub_1B99CBEC0(uint64_t a1, uint64_t a2)
{
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v7 = *v2;
  v8 = v2[1];
  sub_1B99CBB4C(a1, a2, v12);
  v4 = sub_1B99D1F50(v13);
  if (v5)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E63B0], v13);
    swift_willThrow();
  }

  else
  {
    v3 = *&v4;
  }

  sub_1B99D5EC4(v12);
  return v3;
}

float sub_1B99CBF70(uint64_t a1, uint64_t a2)
{
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v6 = *v2;
  v7 = v2[1];
  sub_1B99CBB4C(a1, a2, v11);
  v4 = sub_1B99D27B4(v12);
  if ((v4 & 0x100000000) != 0)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E6448], v12);
    swift_willThrow();
  }

  else
  {
    v3 = *&v4;
  }

  sub_1B99D5EC4(v11);
  return v3;
}

_BYTE *sub_1B99CC020(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, double), uint64_t a4)
{
  v14 = v4[2];
  v15 = v4[3];
  v16 = v4[4];
  v12 = *v4;
  v13 = v4[1];
  v7 = sub_1B99CBB4C(a1, a2, v17);
  v8 = a3(v18, v7);
  if (v9)
  {
    v10 = v17;
    sub_1B99D1CA8(a4, v18);
    swift_willThrow();
  }

  else
  {
    v10 = v8;
  }

  sub_1B99D5EC4(v17);
  return v10;
}

_BYTE *sub_1B99CC0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, double), uint64_t a4)
{
  v13 = v4[2];
  v14 = v4[3];
  v15 = v4[4];
  v11 = *v4;
  v12 = v4[1];
  v7 = sub_1B99CBB4C(a1, a2, v16);
  v8 = a3(v17, v7);
  if ((v8 & 0x100) != 0)
  {
    v9 = v16;
    sub_1B99D1CA8(a4, v17);
    swift_willThrow();
  }

  else
  {
    v9 = v8;
  }

  sub_1B99D5EC4(v16);
  return v9;
}

_BYTE *sub_1B99CC190(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, double), uint64_t a4)
{
  v13 = v4[2];
  v14 = v4[3];
  v15 = v4[4];
  v11 = *v4;
  v12 = v4[1];
  v7 = sub_1B99CBB4C(a1, a2, v16);
  v8 = a3(v17, v7);
  if ((v8 & 0x10000) != 0)
  {
    v9 = v16;
    sub_1B99D1CA8(a4, v17);
    swift_willThrow();
  }

  else
  {
    v9 = v8;
  }

  sub_1B99D5EC4(v16);
  return v9;
}

_BYTE *sub_1B99CC248(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, double), uint64_t a4)
{
  v13 = v4[2];
  v14 = v4[3];
  v15 = v4[4];
  v11 = *v4;
  v12 = v4[1];
  v7 = sub_1B99CBB4C(a1, a2, v16);
  v8 = a3(v17, v7);
  if ((v8 & 0x100000000) != 0)
  {
    v9 = v16;
    sub_1B99D1CA8(a4, v17);
    swift_willThrow();
  }

  else
  {
    v9 = v8;
  }

  sub_1B99D5EC4(v16);
  return v9;
}

uint64_t sub_1B99CC300@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v10 = *v5;
  v11 = v5[1];
  sub_1B99CBB4C(a1, a2, v15);
  sub_1B99CC3A0(a3, a4, a5);
  return sub_1B99D5EC4(v15);
}

uint64_t sub_1B99CC3A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a3;
  v4 = sub_1B99F41C4();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v54 - v8;
  v61 = a1;
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B99F38A4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B99F37C4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCastMetatype())
  {
    v25 = v66;
    result = sub_1B99D3028(v24);
    if (v25)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  v27 = v14;
  v28 = v10;
  v29 = v9;
  v30 = v59;
  v31 = v62;
  if (swift_dynamicCastMetatype())
  {
    v32 = v66;
    result = sub_1B99D3340();
    if (v32)
    {
      return result;
    }

    *&v63 = result;
    *(&v63 + 1) = v33;
    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    v34 = v66;
    result = sub_1B99D3710(v19);
    if (v34)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  sub_1B99D5A10((v31 + 9), &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v35 = v61;
  v36 = swift_dynamicCast();
  v37 = *(v28 + 56);
  if (v36)
  {
    v37(v29, 0, 1, v35);
    v38 = *(v28 + 32);
    v38(v27, v29, v35);
    return (v38)(v60, v27, v35);
  }

  else
  {
    v37(v29, 1, 1, v35);
    (*(v30 + 8))(v29, v4);
    v39 = *v31;
    v41 = v31[2];
    v42 = v31[3];
    v44 = v31[4];
    v43 = v31[5];
    v54 = v31[1];
    v40 = v54;
    v55 = v44;
    v46 = v31[7];
    v45 = v31[8];
    v56 = v43;
    v57 = v46;
    v59 = v45;
    v47 = *(v31 + 48);
    sub_1B99D5A10((v31 + 9), &v63);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
    v49 = swift_allocObject();
    v50 = v64;
    *(v49 + 88) = v63;
    *(v49 + 16) = v39;
    *(v49 + 24) = v40;
    *(v49 + 32) = v41;
    *(v49 + 40) = v42;
    v52 = v56;
    v51 = v57;
    *(v49 + 48) = v44;
    *(v49 + 56) = v52;
    *(v49 + 64) = v47;
    v53 = v59;
    *(v49 + 72) = v51;
    *(v49 + 80) = v53;
    *(v49 + 104) = v50;
    *(&v64 + 1) = v48;
    v65 = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
    *&v63 = v49;

    sub_1B99CA6A4(v41);
    sub_1B99CA884(v55, v52, v47);
    sub_1B99CAA28(v51);
    return sub_1B99F3FA4();
  }
}

uint64_t sub_1B99CC820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LODWORD(v24) = *(v3 + 49);
  *(&v24 + 3) = *(v3 + 13);
  v8 = v3[9];
  v22 = v3[5];
  v23 = v3[4];
  v21 = *(v3 + 48);
  v19 = v3[7];
  v20 = v3[8];
  v9 = sub_1B99CB88C(a2, a3);
  if (*(v8 + 16))
  {
    v11 = sub_1B99EF914(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_1B99B3944(*(v8 + 56) + 32 * v11, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE38, &qword_1B99F8D80);
      if (swift_dynamicCast())
      {

        sub_1B99CA6A4(v6);
        sub_1B99CA884(v23, v22, v21);
        sub_1B99CAA28(v19);
        type metadata accessor for KeyedContainer();
        swift_getWitnessTable();
        return sub_1B99F4494();
      }
    }
  }

  else
  {
  }

  v15 = sub_1B99F42A4();
  swift_allocError();
  v17 = v16;

  sub_1B99F4264();

  v18 = sub_1B99F3B44();
  MEMORY[0x1BFAE0580](v18);

  sub_1B99F4294();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
  return swift_willThrow();
}

unint64_t sub_1B99CCAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[5];
  v9 = *(v3 + 48);
  LODWORD(v30) = *(v3 + 49);
  *(&v30 + 3) = *(v3 + 13);
  v10 = v3[7];
  v11 = v3[8];
  v12 = v3[9];
  v29 = *v3;
  v32 = v3[4];
  v28 = v8;
  v27 = v9;
  v26 = v10;
  v13 = sub_1B99CB88C(a1, a2);
  if (*(v12 + 16))
  {
    v15 = sub_1B99EF914(v13, v14);
    v17 = v16;

    if (v17)
    {
      sub_1B99B3944(*(v12 + 56) + 32 * v15, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCFC0, &unk_1B99F7FB8);
      if (swift_dynamicCast())
      {
        a3[3] = &type metadata for UnkeyedContainer;
        a3[4] = sub_1B99D56E4();
        v18 = swift_allocObject();
        *a3 = v18;
        *(v18 + 16) = v4;
        *(v18 + 24) = v5;
        *(v18 + 32) = v7;
        *(v18 + 40) = v6;
        v19 = v32;
        *(v18 + 48) = v32;
        *(v18 + 56) = v28;
        *(v18 + 64) = v27;
        *(v18 + 72) = v26;
        *(v18 + 80) = v11;
        *(v18 + 88) = v29;
        *(v18 + 96) = 0;

        sub_1B99CA6A4(v7);
        sub_1B99CA884(v19, v28, v27);
        return sub_1B99CAA28(v26);
      }
    }
  }

  else
  {
  }

  v21 = sub_1B99F42A4();
  swift_allocError();
  v23 = v22;

  sub_1B99F4264();

  v24 = sub_1B99F3B44();
  MEMORY[0x1BFAE0580](v24);

  sub_1B99F4294();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B00], v21);
  return swift_willThrow();
}

uint64_t sub_1B99CCDC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = *(v1 + 48);
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v32 = v2;
  if (*(v11 + 16))
  {

    v31 = v4;
    v12 = v4;
    v13 = v8;
    v14 = v5;
    sub_1B99CA6A4(v12);
    v15 = v6;
    v16 = v6;
    v17 = v9;
    v18 = v13;
    sub_1B99CA884(v7, v16, v13);
    v19 = v10;
    v20 = v17;
    v21 = v17;
    v22 = v19;
    sub_1B99CAA28(v21);
    v23 = sub_1B99EF914(0x7265707573, 0xE500000000000000);
    if (v24)
    {
      sub_1B99B3944(*(v11 + 56) + 32 * v23, &v34);
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v4 = v31;
    v26 = v15;
    v25 = v22;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;

    sub_1B99CA6A4(v4);
    sub_1B99CA884(v7, v6, v8);
    sub_1B99CAA28(v9);
    v25 = v10;
    v20 = v9;
    v18 = v8;
    v14 = v5;
    v26 = v6;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 88) = v34;
  *(v28 + 16) = v32;
  *(v28 + 24) = v3;
  *(v28 + 32) = v4;
  *(v28 + 40) = v14;
  *(v28 + 48) = v7;
  *(v28 + 56) = v26;
  *(v28 + 64) = v18;
  *(v28 + 72) = v20;
  *(v28 + 80) = v25;
  *(v28 + 104) = v29;
  a1[3] = v27;
  result = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
  a1[4] = result;
  *a1 = v28;
  return result;
}

uint64_t sub_1B99CCFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v24 = v3[2];
  v25 = v3[1];
  v7 = v3[5];
  v29 = v3[3];
  v30 = v3[4];
  v8 = *(v3 + 48);
  *v36 = *(v3 + 49);
  *&v36[3] = *(v3 + 13);
  v9 = v3[7];
  v23 = v3[8];
  v10 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F5C20;
  v12 = *(a2 + 16);
  *(inited + 56) = v12;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a1, v12);
  v40 = v6;

  sub_1B99EBF94(inited);
  *&v31 = v6;
  *(&v31 + 1) = v25;
  *&v32 = v24;
  *(&v32 + 1) = v29;
  v33 = v30;
  v34 = v7;
  v35 = v8;
  v37 = v9;
  v38 = v23;
  v39 = v10;

  sub_1B99CA6A4(v24);
  v27 = v7;
  sub_1B99CA884(v30, v7, v8);
  v26 = v9;
  sub_1B99CAA28(v9);
  v14 = sub_1B99CB88C(a1, a2);
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v16 = sub_1B99EF914(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_5:
    v31 = 0u;
    v32 = 0u;
    goto LABEL_6;
  }

  sub_1B99B3944(*(v10 + 56) + 32 * v16, &v31);
LABEL_6:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
  v20 = swift_allocObject();
  v21 = v32;
  *(v20 + 88) = v31;
  *(v20 + 16) = v6;
  *(v20 + 24) = v25;
  *(v20 + 32) = v24;
  *(v20 + 40) = v29;
  *(v20 + 48) = v30;
  *(v20 + 56) = v27;
  *(v20 + 64) = v8;
  *(v20 + 72) = v26;
  *(v20 + 80) = v23;
  *(v20 + 104) = v21;
  a3[3] = v19;
  result = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
  a3[4] = result;
  *a3 = v20;
  return result;
}

uint64_t sub_1B99CD53C()
{
  result = sub_1B99F47F4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CD58C()
{
  result = sub_1B99F4804();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CD634()
{
  result = sub_1B99F4834();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CD684()
{
  result = sub_1B99F4814();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CD7C4()
{
  result = sub_1B99F4844();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CD814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B99CD8DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3[10];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v3;
  v7 = v3[9];
  if (v5 >= *(v7 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = *v3;
  v9 = v6[1];
  v11 = v6[2];
  v10 = v6[3];
  v12 = v6[4];
  v18 = v6[5];
  v13 = *(v6 + 48);
  v17 = v5;
  v15 = v6[7];
  v14 = v6[8];
  sub_1B99D5A10(v7 + 32 * v5 + 32, &v26);
  v22[0] = v8;
  v22[1] = v9;
  v22[2] = v11;
  v22[3] = v10;
  v22[4] = v12;
  v22[5] = v18;
  v23 = v13;
  v24 = v15;
  v25 = v14;

  sub_1B99CA6A4(v11);
  sub_1B99CA884(v12, v18, v13);
  sub_1B99CAA28(v15);
  sub_1B99CC3A0(a1, a2, a3);
  result = sub_1B99D5EC4(v22);
  if (!v4)
  {
    v6[10] = v17 + 1;
  }

  return result;
}

void sub_1B99CDA08()
{
  v1 = v0[10];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v0[9];
  if (v1 >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_1B99D5A10(v2 + 32 * v1 + 32, v18);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE38, &qword_1B99F8D80);
    if (swift_dynamicCast())
    {
      v3 = v0[1];
      v4 = v0[2];
      v5 = v0[3];
      v6 = v0[4];
      v7 = v0[5];
      v16 = *v0;
      v8 = v0[7];
      v9 = v0[8];
      v0[10] = v1 + 1;
      v17 = *(v0 + 48);

      sub_1B99CA6A4(v4);
      sub_1B99CA884(v6, v7, v17);
      sub_1B99CAA28(v8);
      type metadata accessor for KeyedContainer();
      swift_getWitnessTable();
      sub_1B99F4494();
      return;
    }
  }

  else
  {
    sub_1B99A18A4(v18, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  v10 = sub_1B99F42A4();
  swift_allocError();
  v12 = v11;
  v13 = *v0;

  sub_1B99F4264();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v15 = MEMORY[0x1BFAE0680](v2, v14);
  MEMORY[0x1BFAE0580](v15);

  sub_1B99F4294();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
  swift_willThrow();
}

void sub_1B99CDCA0(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v1[9];
  if (v2 >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_1B99D5A10(v4 + 32 * v2 + 32, &v23);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCFC0, &unk_1B99F7FB8);
    if (swift_dynamicCast())
    {
      v5 = v26;
      v1[10] = v2 + 1;
      v6 = *v1;
      v7 = v1[1];
      v9 = v1[2];
      v8 = v1[3];
      v11 = v1[4];
      v10 = v1[5];
      v21 = v1[7];
      v22 = v5;
      v20 = v1[8];
      a1[3] = &type metadata for UnkeyedContainer;
      v12 = *(v1 + 48);
      a1[4] = sub_1B99D56E4();
      v13 = swift_allocObject();
      *a1 = v13;
      *(v13 + 16) = v6;
      *(v13 + 24) = v7;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      *(v13 + 48) = v11;
      *(v13 + 56) = v10;
      *(v13 + 64) = v12;
      *(v13 + 72) = v21;
      *(v13 + 80) = v20;
      *(v13 + 88) = v22;
      *(v13 + 96) = 0;

      sub_1B99CA6A4(v9);
      sub_1B99CA884(v11, v10, v12);
      sub_1B99CAA28(v21);
      return;
    }
  }

  else
  {
    sub_1B99A18A4(&v23, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  v14 = sub_1B99F42A4();
  swift_allocError();
  v16 = v15;
  v17 = *v1;
  v23 = 0;
  v24 = 0xE000000000000000;

  sub_1B99F4264();

  v23 = 0xD00000000000002BLL;
  v24 = 0x80000001B99FA8A0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  v19 = MEMORY[0x1BFAE0680](v4, v18);
  MEMORY[0x1BFAE0580](v19);

  sub_1B99F4294();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B00], v14);
  swift_willThrow();
}

void sub_1B99CDF24(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1[9];
    if (v2 < *(v3 + 16))
    {
      v1[10] = v2 + 1;
      v5 = *v1;
      v4 = v1[1];
      v6 = v1[2];
      v15 = v1[3];
      v7 = v1[4];
      v8 = v1[5];
      v9 = v1[8];
      v18 = v1[7];
      v16 = v9;
      v10 = *(v1 + 48);
      sub_1B99D5A10(v3 + 32 * v2 + 32, v17);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
      v13 = swift_allocObject();
      v14 = v17[1];
      *(v13 + 88) = v17[0];
      *(v13 + 16) = v5;
      *(v13 + 24) = v4;
      *(v13 + 32) = v6;
      *(v13 + 40) = v15;
      *(v13 + 48) = v7;
      *(v13 + 56) = v8;
      *(v13 + 64) = v10;
      *(v13 + 72) = v18;
      *(v13 + 80) = v16;
      *(v13 + 104) = v14;
      a1[3] = v12;
      a1[4] = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
      *a1 = v13;

      sub_1B99CA6A4(v6);
      sub_1B99CA884(v7, v8, v10);
      sub_1B99CAA28(v18);
      return;
    }
  }

  __break(1u);
}

BOOL sub_1B99CE0C4()
{
  v1 = *(v0 + 80);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v0 + 72);
  if (v1 >= *(v2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1B99D5A10(v2 + 32 * v1 + 32, v5);
  v3 = v5[3];
  sub_1B99A18A4(v5, &qword_1EBBDC658, &qword_1B99F5F40);
  if (!v3)
  {
    *(v0 + 80) = v1 + 1;
  }

  return v3 == 0;
}

uint64_t sub_1B99CE43C()
{
  result = sub_1B99F4514();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CE48C()
{
  result = sub_1B99F4524();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CE534()
{
  result = sub_1B99F4554();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CE584()
{
  result = sub_1B99F4534();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CE6C4()
{
  result = sub_1B99F4564();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B99CE714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B99CE7B4(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v31[0] = *(v2 - 8);
  v3 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCF90, &qword_1B99F7FA8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v31 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v31 - v22;
  sub_1B99D5A10(a1, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    return v34;
  }

  sub_1B99D5A10(a1, v32);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        sub_1B99A1904(&v34, &v37);
        sub_1B99F38E4();
        sub_1B99D5E1C();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v31[0] + 8))(v6, v2);
        v25 = v20;
        v26 = *(v11 + 8);
        v26(v25, v10);
        v27 = v40;
        __swift_project_boxed_opaque_existential_1(&v37, v39);
        v28 = *(v27 + 8);
        sub_1B99D6A60(&qword_1EBBDCFA0, &qword_1EBBDCF90, &qword_1B99F7FA8);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v26(v23, v10);
        BYTE8(v34) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v37);
        return v34;
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v32, &qword_1EBBDC658, &qword_1B99F5F40);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  sub_1B99A18A4(&v34, &qword_1EBBDCE88, &qword_1B99F7F48);
  v29 = sub_1B99D1F50(a1);
  if (v30)
  {
    return 0;
  }

  sub_1B99D481C(&v37, *&v29);
  if ((v38 & 1) == 0)
  {
    return v37;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](7630409, 0xE300000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99CECF8(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCF78, &qword_1B99F7FA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v33 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  sub_1B99D5A10(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    v24 = 0;
    v25 = v37;
    return v25 | (v24 << 8);
  }

  sub_1B99D5A10(a1, v35);
  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v38 + 1))
      {
        sub_1B99A1904(&v37, v40);
        sub_1B99F38E4();
        sub_1B99D5DC8();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v34 + 8))(v6, v2);
        v26 = v20;
        v27 = *(v11 + 8);
        v27(v26, v10);
        v28 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v40[3]);
        v29 = *(v28 + 8);
        sub_1B99D6A60(&qword_1EBBDCF88, &qword_1EBBDCF78, &qword_1B99F7FA0);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v27(v23, v10);
        BYTE1(v37) = 0;
        __swift_destroy_boxed_opaque_existential_1(v40);
        v25 = v37;
        v24 = BYTE1(v37);
        return v25 | (v24 << 8);
      }
    }

    else
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v35, &qword_1EBBDC658, &qword_1B99F5F40);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_1B99A18A4(&v37, &qword_1EBBDCE88, &qword_1B99F7F48);
  v30 = sub_1B99D1F50(a1);
  if (v31)
  {
    v25 = 0;
    v24 = 1;
    return v25 | (v24 << 8);
  }

  sub_1B99D4300(v40, *&v30);
  if ((v40[0] & 0x100) == 0)
  {
    v24 = 0;
    v25 = LOBYTE(v40[0]);
    return v25 | (v24 << 8);
  }

  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](947154505, 0xE400000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99CF240(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCF60, &qword_1B99F7F98);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v33 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  sub_1B99D5A10(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    v24 = 0;
    v25 = v37;
    return v25 | (v24 << 16);
  }

  sub_1B99D5A10(a1, v35);
  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v38 + 1))
      {
        sub_1B99A1904(&v37, v40);
        sub_1B99F38E4();
        sub_1B99D5D74();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v34 + 8))(v6, v2);
        v26 = v20;
        v27 = *(v11 + 8);
        v27(v26, v10);
        v28 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v40[3]);
        v29 = *(v28 + 8);
        sub_1B99D6A60(&qword_1EBBDCF70, &qword_1EBBDCF60, &qword_1B99F7F98);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v27(v23, v10);
        BYTE2(v37) = 0;
        __swift_destroy_boxed_opaque_existential_1(v40);
        v25 = v37;
        v24 = BYTE2(v37);
        return v25 | (v24 << 16);
      }
    }

    else
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v35, &qword_1EBBDC658, &qword_1B99F5F40);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_1B99A18A4(&v37, &qword_1EBBDCE88, &qword_1B99F7F48);
  v30 = sub_1B99D1F50(a1);
  if (v31)
  {
    v25 = 0;
    v24 = 1;
    return v25 | (v24 << 16);
  }

  sub_1B99D44B4(v40, *&v30);
  if ((v40[0] & 0x10000) == 0)
  {
    v24 = 0;
    v25 = LOWORD(v40[0]);
    return v25 | (v24 << 16);
  }

  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](0x3631746E49, 0xE500000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

unint64_t sub_1B99CF78C(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v33[0] = *(v2 - 8);
  v3 = *(v33[0] + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCF48, &qword_1B99F7F90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v33 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v33 - v22;
  sub_1B99D5A10(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    v24 = 0;
    v25 = v36;
LABEL_13:
    LOBYTE(v39[0]) = v24;
    return v25 | (v24 << 32);
  }

  sub_1B99D5A10(a1, v34);
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v37 + 1))
      {
        sub_1B99A1904(&v36, v39);
        sub_1B99F38E4();
        sub_1B99D5D20();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v33[0] + 8))(v6, v2);
        v26 = v20;
        v27 = *(v11 + 8);
        v27(v26, v10);
        v28 = v39[4];
        __swift_project_boxed_opaque_existential_1(v39, v39[3]);
        v29 = *(v28 + 8);
        sub_1B99D6A60(&qword_1EBBDCF58, &qword_1EBBDCF48, &qword_1B99F7F90);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v27(v23, v10);
        BYTE4(v36) = 0;
        __swift_destroy_boxed_opaque_existential_1(v39);
        v25 = v36;
        v24 = BYTE4(v36);
        goto LABEL_13;
      }
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v34, &qword_1EBBDC658, &qword_1B99F5F40);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  sub_1B99A18A4(&v36, &qword_1EBBDCE88, &qword_1B99F7F48);
  v30 = sub_1B99D1F50(a1);
  if (v31)
  {
    v25 = 0;
    v24 = 1;
    goto LABEL_13;
  }

  sub_1B99D4668(v39, *&v30);
  if ((v39[0] & 0x100000000) == 0)
  {
    v24 = 0;
    v25 = v39[0];
    goto LABEL_13;
  }

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](0x3233746E49, 0xE500000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99CFCE4(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v31[0] = *(v2 - 8);
  v3 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCF30, &qword_1B99F7F88);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v31 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v31 - v22;
  sub_1B99D5A10(a1, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    return v34;
  }

  sub_1B99D5A10(a1, v32);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        sub_1B99A1904(&v34, &v37);
        sub_1B99F38E4();
        sub_1B99D5CCC();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v31[0] + 8))(v6, v2);
        v25 = v20;
        v26 = *(v11 + 8);
        v26(v25, v10);
        v27 = v40;
        __swift_project_boxed_opaque_existential_1(&v37, v39);
        v28 = *(v27 + 8);
        sub_1B99D6A60(&qword_1EBBDCF40, &qword_1EBBDCF30, &qword_1B99F7F88);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v26(v23, v10);
        BYTE8(v34) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v37);
        return v34;
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v32, &qword_1EBBDC658, &qword_1B99F5F40);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  sub_1B99A18A4(&v34, &qword_1EBBDCE88, &qword_1B99F7F48);
  v29 = sub_1B99D1F50(a1);
  if (v30)
  {
    return 0;
  }

  sub_1B99D481C(&v37, *&v29);
  if ((v38 & 1) == 0)
  {
    return v37;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](0x3436746E49, 0xE500000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99D022C(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v31[0] = *(v2 - 8);
  v3 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCF18, &qword_1B99F7F80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v31 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v31 - v22;
  sub_1B99D5A10(a1, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    return v34;
  }

  sub_1B99D5A10(a1, v32);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        sub_1B99A1904(&v34, &v37);
        sub_1B99F38E4();
        sub_1B99D5C78();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v31[0] + 8))(v6, v2);
        v25 = v20;
        v26 = *(v11 + 8);
        v26(v25, v10);
        v27 = v40;
        __swift_project_boxed_opaque_existential_1(&v37, v39);
        v28 = *(v27 + 8);
        sub_1B99D6A60(&qword_1EBBDCF28, &qword_1EBBDCF18, &qword_1B99F7F80);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v26(v23, v10);
        BYTE8(v34) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v37);
        return v34;
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v32, &qword_1EBBDC658, &qword_1B99F5F40);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  sub_1B99A18A4(&v34, &qword_1EBBDCE88, &qword_1B99F7F48);
  v29 = sub_1B99D1F50(a1);
  if (v30)
  {
    return 0;
  }

  sub_1B99D4E64(&v37, *&v29);
  if ((v38 & 1) == 0)
  {
    return v37;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](1953384789, 0xE400000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99D0770(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCF00, &qword_1B99F7F78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v33 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  sub_1B99D5A10(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    v24 = 0;
    v25 = v37;
    return v25 | (v24 << 8);
  }

  sub_1B99D5A10(a1, v35);
  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v38 + 1))
      {
        sub_1B99A1904(&v37, v40);
        sub_1B99F38E4();
        sub_1B99D5C24();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v34 + 8))(v6, v2);
        v26 = v20;
        v27 = *(v11 + 8);
        v27(v26, v10);
        v28 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v40[3]);
        v29 = *(v28 + 8);
        sub_1B99D6A60(&qword_1EBBDCF10, &qword_1EBBDCF00, &qword_1B99F7F78);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v27(v23, v10);
        BYTE1(v37) = 0;
        __swift_destroy_boxed_opaque_existential_1(v40);
        v25 = v37;
        v24 = BYTE1(v37);
        return v25 | (v24 << 8);
      }
    }

    else
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v35, &qword_1EBBDC658, &qword_1B99F5F40);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_1B99A18A4(&v37, &qword_1EBBDCE88, &qword_1B99F7F48);
  v30 = sub_1B99D1F50(a1);
  if (v31)
  {
    v25 = 0;
    v24 = 1;
    return v25 | (v24 << 8);
  }

  sub_1B99D4A0C(v40, *&v30);
  if ((v40[0] & 0x100) == 0)
  {
    v24 = 0;
    v25 = LOBYTE(v40[0]);
    return v25 | (v24 << 8);
  }

  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](0x38746E4955, 0xE500000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99D0CBC(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCEE8, &qword_1B99F7F70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v33 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  sub_1B99D5A10(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    v24 = 0;
    v25 = v37;
    return v25 | (v24 << 16);
  }

  sub_1B99D5A10(a1, v35);
  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v38 + 1))
      {
        sub_1B99A1904(&v37, v40);
        sub_1B99F38E4();
        sub_1B99D5BD0();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v34 + 8))(v6, v2);
        v26 = v20;
        v27 = *(v11 + 8);
        v27(v26, v10);
        v28 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v40[3]);
        v29 = *(v28 + 8);
        sub_1B99D6A60(&qword_1EBBDCEF8, &qword_1EBBDCEE8, &qword_1B99F7F70);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v27(v23, v10);
        BYTE2(v37) = 0;
        __swift_destroy_boxed_opaque_existential_1(v40);
        v25 = v37;
        v24 = BYTE2(v37);
        return v25 | (v24 << 16);
      }
    }

    else
    {
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v35, &qword_1EBBDC658, &qword_1B99F5F40);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_1B99A18A4(&v37, &qword_1EBBDCE88, &qword_1B99F7F48);
  v30 = sub_1B99D1F50(a1);
  if (v31)
  {
    v25 = 0;
    v24 = 1;
    return v25 | (v24 << 16);
  }

  sub_1B99D4B80(v40, *&v30);
  if ((v40[0] & 0x10000) == 0)
  {
    v24 = 0;
    v25 = LOWORD(v40[0]);
    return v25 | (v24 << 16);
  }

  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](0x3631746E4955, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

unint64_t sub_1B99D1208(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v33[0] = *(v2 - 8);
  v3 = *(v33[0] + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCED0, &qword_1B99F7F68);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v33 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v33 - v22;
  sub_1B99D5A10(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    v24 = 0;
    v25 = v36;
LABEL_13:
    LOBYTE(v39[0]) = v24;
    return v25 | (v24 << 32);
  }

  sub_1B99D5A10(a1, v34);
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v37 + 1))
      {
        sub_1B99A1904(&v36, v39);
        sub_1B99F38E4();
        sub_1B99D5B7C();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v33[0] + 8))(v6, v2);
        v26 = v20;
        v27 = *(v11 + 8);
        v27(v26, v10);
        v28 = v39[4];
        __swift_project_boxed_opaque_existential_1(v39, v39[3]);
        v29 = *(v28 + 8);
        sub_1B99D6A60(&qword_1EBBDCEE0, &qword_1EBBDCED0, &qword_1B99F7F68);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v27(v23, v10);
        BYTE4(v36) = 0;
        __swift_destroy_boxed_opaque_existential_1(v39);
        v25 = v36;
        v24 = BYTE4(v36);
        goto LABEL_13;
      }
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v34, &qword_1EBBDC658, &qword_1B99F5F40);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  sub_1B99A18A4(&v36, &qword_1EBBDCE88, &qword_1B99F7F48);
  v30 = sub_1B99D1F50(a1);
  if (v31)
  {
    v25 = 0;
    v24 = 1;
    goto LABEL_13;
  }

  sub_1B99D4CF4(v39, *&v30);
  if ((v39[0] & 0x100000000) == 0)
  {
    v24 = 0;
    v25 = v39[0];
    goto LABEL_13;
  }

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](0x3233746E4955, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99D1760(void (*a1)(char *, uint64_t))
{
  v2 = sub_1B99F3764();
  v31[0] = *(v2 - 8);
  v3 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B99F3934();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCEB8, &qword_1B99F7F60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v31 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v31 - v22;
  sub_1B99D5A10(a1, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    return v34;
  }

  sub_1B99D5A10(a1, v32);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v35 + 1))
      {
        sub_1B99A1904(&v34, &v37);
        sub_1B99F38E4();
        sub_1B99D5B28();
        sub_1B99F3644();
        sub_1B99F3754();
        MEMORY[0x1BFADFF20](v6, v10);
        (*(v31[0] + 8))(v6, v2);
        v25 = v20;
        v26 = *(v11 + 8);
        v26(v25, v10);
        v27 = v40;
        __swift_project_boxed_opaque_existential_1(&v37, v39);
        v28 = *(v27 + 8);
        sub_1B99D6A60(&qword_1EBBDCEC8, &qword_1EBBDCEB8, &qword_1B99F7F60);
        sub_1B99F41F4();
        (*(v11 + 16))(v16, v23, v10);
        sub_1B99F4204();
        v26(v23, v10);
        BYTE8(v34) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v37);
        return v34;
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v32, &qword_1EBBDC658, &qword_1B99F5F40);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  sub_1B99A18A4(&v34, &qword_1EBBDCE88, &qword_1B99F7F48);
  v29 = sub_1B99D1F50(a1);
  if (v30)
  {
    return 0;
  }

  sub_1B99D4E64(&v37, *&v29);
  if ((v38 & 1) == 0)
  {
    return v37;
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000001ELL, 0x80000001B99FA990);
  MEMORY[0x1BFAE0580](0x3436746E4955, 0xE600000000000000);
  MEMORY[0x1BFAE0580](0xD00000000000002ELL, 0x80000001B99FA9B0);
  result = sub_1B99F43D4();
  __break(1u);
  return result;
}

uint64_t sub_1B99D1CA8(uint64_t a1, uint64_t a2)
{
  sub_1B99D5A10(a2, &v18);
  if (v19)
  {
    sub_1B99A3418(&v18, v20);
    v4 = sub_1B99F42A4();
    v5 = swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD000, &qword_1B99F7F20) + 48);
    *v7 = a1;
    v9 = *v2;
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;

    sub_1B99F4264();

    *&v18 = 0xD000000000000013;
    *(&v18 + 1) = 0x80000001B99FA950;
    v10 = sub_1B99F4B14();
    MEMORY[0x1BFAE0580](v10);

    MEMORY[0x1BFAE0580](0x756F662074756220, 0xEB0000000020646ELL);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    swift_getDynamicType();
    v11 = sub_1B99F4B14();
    MEMORY[0x1BFAE0580](v11);

    MEMORY[0x1BFAE0580](0x64616574736E6920, 0xE90000000000002ELL);
    sub_1B99F4294();
    (*(*(v4 - 8) + 104))(v7, *MEMORY[0x1E69E6AF8], v4);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1B99A18A4(&v18, &qword_1EBBDC658, &qword_1B99F5F40);
    v12 = sub_1B99F42A4();
    v5 = swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD000, &qword_1B99F7F20) + 48);
    *v14 = a1;
    v16 = *v2;

    sub_1B99F4294();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v12);
  }

  return v5;
}

uint64_t sub_1B99D1F50(void (*a1)(char *, uint64_t))
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE68, &qword_1B99F7F30);
  v64 = *(v65 - 8);
  v2 = *(v64 + 64);
  v4 = MEMORY[0x1EEE9AC00](v65, v3);
  v62 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v63 = v57 - v7;
  v8 = sub_1B99F3764();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B99F3744();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B99F3934();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE70, &qword_1B99F7F38);
  v70 = *(v24 - 8);
  v25 = *(v70 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v66 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = v57 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = v57 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = v57 - v38;
  v69 = a1;
  sub_1B99D5A10(a1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (swift_dynamicCast())
  {
    return v73;
  }

  sub_1B99F38E4();
  v41 = sub_1B99D5A80();
  v60 = v23;
  v61 = v41;
  sub_1B99F3704();
  sub_1B99F3734();
  MEMORY[0x1BFADFFC0](v18, v24);
  (*(v14 + 8))(v18, v13);
  v42 = v70;
  v44 = v70 + 8;
  v43 = *(v70 + 8);
  v43(v32, v24);
  sub_1B99F3754();
  MEMORY[0x1BFADFFE0](v12, v24);
  v45 = v68;
  v59 = *(v67 + 8);
  v59(v12, v68);
  v46 = v36;
  v47 = v43;
  v67 = v44;
  v43(v46, v24);
  v48 = v69;
  sub_1B99D5A10(v69, v71);
  if (v72)
  {
    v49 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCEA8, &qword_1B99F7F58);
    if (swift_dynamicCast())
    {
      if (*(&v74 + 1))
      {
        v69 = v47;
        sub_1B99A1904(&v73, v76);
        __swift_project_boxed_opaque_existential_1(v76, v77);
        sub_1B99D6A60(&qword_1EBBDCEB0, &qword_1EBBDCE70, &qword_1B99F7F38);
        sub_1B99F3B14();
        __swift_destroy_boxed_opaque_existential_1(v76);
LABEL_13:
        (*(v49 + 16))(v66, v39, v24);
        sub_1B99F3B24();
        v69(v39, v24);
        return v76[0];
      }
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }
  }

  else
  {
    sub_1B99A18A4(v71, &qword_1EBBDC658, &qword_1B99F5F40);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  sub_1B99A18A4(&v73, &qword_1EBBDCE80, &qword_1B99F7F40);
  sub_1B99D5A10(v48, v71);
  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
    if (swift_dynamicCast())
    {
      if (*(&v74 + 1))
      {
        v69 = v47;
        sub_1B99A1904(&v73, v76);
        v57[0] = v78;
        v57[1] = __swift_project_boxed_opaque_existential_1(v76, v77);
        sub_1B99F38E4();
        sub_1B99D5AD4();
        v58 = v24;
        v50 = v62;
        sub_1B99F3644();
        sub_1B99F3754();
        v51 = v63;
        v52 = v39;
        v53 = v65;
        MEMORY[0x1BFADFF20](v12, v65);
        v59(v12, v45);
        v54 = *(v64 + 8);
        v54(v50, v53);
        v55 = *(v57[0] + 8);
        sub_1B99D6A60(&qword_1EBBDCEA0, &qword_1EBBDCE68, &qword_1B99F7F30);
        v24 = v58;
        sub_1B99F41F4();
        v56 = v53;
        v39 = v52;
        v49 = v70;
        v54(v51, v56);
        __swift_destroy_boxed_opaque_existential_1(v76);
        goto LABEL_13;
      }
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    v47(v39, v24);
  }

  else
  {
    v47(v39, v24);
    sub_1B99A18A4(v71, &qword_1EBBDC658, &qword_1B99F5F40);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  sub_1B99A18A4(&v73, &qword_1EBBDCE88, &qword_1B99F7F48);
  return 0;
}

unint64_t sub_1B99D27B4(void (*a1)(char *, uint64_t))
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE68, &qword_1B99F7F30);
  v66 = *(v67 - 8);
  v2 = *(v66 + 64);
  v4 = MEMORY[0x1EEE9AC00](v67, v3);
  v64 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v65 = v59 - v7;
  v8 = sub_1B99F3764();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B99F3744();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B99F3934();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCFA8, &qword_1B99F7FB0);
  v72 = *(v24 - 8);
  v25 = *(v72 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v68 = v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = v59 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = v59 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = v59 - v38;
  v71 = a1;
  sub_1B99D5A10(a1, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  if (!swift_dynamicCast())
  {
    sub_1B99F38E4();
    v42 = sub_1B99D5E70();
    v62 = v23;
    v63 = v42;
    sub_1B99F3704();
    sub_1B99F3734();
    MEMORY[0x1BFADFFC0](v18, v24);
    (*(v14 + 8))(v18, v13);
    v43 = v72;
    v45 = v72 + 8;
    v44 = *(v72 + 8);
    v44(v32, v24);
    sub_1B99F3754();
    MEMORY[0x1BFADFFE0](v12, v24);
    v46 = v70;
    v61 = *(v69 + 8);
    v61(v12, v70);
    v47 = v36;
    v48 = v44;
    v69 = v45;
    v44(v47, v24);
    v49 = v71;
    sub_1B99D5A10(v71, v73);
    if (v74)
    {
      v50 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCEA8, &qword_1B99F7F58);
      if (swift_dynamicCast())
      {
        if (*(&v76 + 1))
        {
          v71 = v48;
          sub_1B99A1904(&v75, v78);
          __swift_project_boxed_opaque_existential_1(v78, v79);
          sub_1B99D6A60(&qword_1EBBDCFB8, &qword_1EBBDCFA8, &qword_1B99F7FB0);
          sub_1B99F3B14();
          __swift_destroy_boxed_opaque_existential_1(v78);
LABEL_13:
          (*(v50 + 16))(v68, v39, v24);
          sub_1B99F3B24();
          v71(v39, v24);
          v40 = 0;
          v41 = v78[0];
          return v41 | (v40 << 32);
        }
      }

      else
      {
        v77 = 0;
        v75 = 0u;
        v76 = 0u;
      }
    }

    else
    {
      sub_1B99A18A4(v73, &qword_1EBBDC658, &qword_1B99F5F40);
      v75 = 0u;
      v76 = 0u;
      v77 = 0;
    }

    sub_1B99A18A4(&v75, &qword_1EBBDCE80, &qword_1B99F7F40);
    sub_1B99D5A10(v49, v73);
    if (v74)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE90, &qword_1B99F7F50);
      if (swift_dynamicCast())
      {
        if (*(&v76 + 1))
        {
          v71 = v48;
          sub_1B99A1904(&v75, v78);
          v59[0] = v80;
          v59[1] = __swift_project_boxed_opaque_existential_1(v78, v79);
          sub_1B99F38E4();
          sub_1B99D5AD4();
          v60 = v24;
          v51 = v64;
          sub_1B99F3644();
          sub_1B99F3754();
          v52 = v65;
          v53 = v39;
          v54 = v67;
          MEMORY[0x1BFADFF20](v12, v67);
          v61(v12, v46);
          v55 = *(v66 + 8);
          v55(v51, v54);
          v56 = *(v59[0] + 8);
          sub_1B99D6A60(&qword_1EBBDCEA0, &qword_1EBBDCE68, &qword_1B99F7F30);
          v24 = v60;
          sub_1B99F41F4();
          v57 = v54;
          v39 = v53;
          v50 = v72;
          v55(v52, v57);
          __swift_destroy_boxed_opaque_existential_1(v78);
          goto LABEL_13;
        }
      }

      else
      {
        v77 = 0;
        v75 = 0u;
        v76 = 0u;
      }

      v48(v39, v24);
    }

    else
    {
      v48(v39, v24);
      sub_1B99A18A4(v73, &qword_1EBBDC658, &qword_1B99F5F40);
      v75 = 0u;
      v76 = 0u;
      v77 = 0;
    }

    sub_1B99A18A4(&v75, &qword_1EBBDCE88, &qword_1B99F7F48);
    v41 = 0;
    v40 = 1;
    return v41 | (v40 << 32);
  }

  v40 = 0;
  v41 = v75;
  return v41 | (v40 << 32);
}

uint64_t sub_1B99D3028@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE58, &qword_1B99F7F18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v21 - v6;
  v8 = sub_1B99F37C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B99D5A10((v1 + 9), v26);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1B99D5A10(v26, v25);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v15 = v23;
      v14 = v24;
      sub_1B99F37B4();
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_1B99A18A4(v7, &qword_1EBBDCE58, &qword_1B99F7F18);
        v16 = sub_1B99F42A4();
        swift_allocError();
        v18 = v17;
        v19 = *v1;
        v21 = 0;
        v22 = 0xE000000000000000;

        sub_1B99F4264();

        v21 = 0xD000000000000019;
        v22 = 0x80000001B99FA900;
        MEMORY[0x1BFAE0580](v15, v14);

        sub_1B99F4294();
        (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
        swift_willThrow();
      }

      else
      {

        (*(v9 + 32))(a1, v7, v8);
      }

      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_9:
    sub_1B99D1CA8(v8, (v1 + 9));
    swift_willThrow();
    return sub_1B99A18A4(v26, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  (*(v9 + 32))(a1, v13, v8);
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1B99A18A4(v26, &qword_1EBBDC658, &qword_1B99F5F40);
}

uint64_t sub_1B99D3340()
{
  sub_1B99D5A10((v0 + 9), &v34);
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      return v33;
    }
  }

  else
  {
    sub_1B99A18A4(&v34, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  v3 = v0[7];
  v4 = v0[8];
  if (v3)
  {
    if (v3 == 1)
    {
      sub_1B99D5A10((v0 + 9), &v34);
      if (*(&v35 + 1))
      {
        if (swift_dynamicCast())
        {
          v5 = sub_1B99F37D4();
          v7 = v6;

          if (v7 >> 60 != 15)
          {
            return v5;
          }
        }
      }

      else
      {
        sub_1B99A18A4(&v34, &qword_1EBBDC658, &qword_1B99F5F40);
      }

      sub_1B99D1CA8(MEMORY[0x1E6969080], (v0 + 9));
      return swift_willThrow();
    }

    else
    {
      v32 = v0[8];
      v17 = *v0;
      v37 = v1;
      v18 = v0[1];
      v19 = v0[2];
      v20 = v0[4];
      v30 = v0[3];
      v21 = v0[5];
      v22 = *(v0 + 48);
      sub_1B99D5A10((v0 + 9), &v34);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
      v24 = swift_allocObject();
      v25 = v35;
      *(v24 + 88) = v34;
      *(v24 + 16) = v17;
      *(v24 + 24) = v18;
      *(v24 + 32) = v19;
      *(v24 + 40) = v30;
      *(v24 + 48) = v20;
      *(v24 + 56) = v21;
      *(v24 + 64) = v22;
      *(v24 + 72) = v3;
      *(v24 + 80) = v32;
      *(v24 + 104) = v25;
      *(&v35 + 1) = v23;
      v36 = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
      *&v34 = v24;
      sub_1B99CAA28(v3);

      sub_1B99CA6A4(v19);
      sub_1B99CA884(v20, v21, v22);
      sub_1B99CAA28(v3);
      v26 = v37;
      v27 = v3(&v34);
      if (v26)
      {
        sub_1B99CAA8C(v3);
        return __swift_destroy_boxed_opaque_existential_1(&v34);
      }

      else
      {
        v28 = v27;
        sub_1B99CAA8C(v3);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        return v28;
      }
    }
  }

  else
  {
    v8 = *v0;
    v9 = v0[1];
    v10 = v0[2];
    v31 = v0[3];
    v11 = v0[4];
    v29 = v11;
    v37 = v0[5];
    v12 = *(v0 + 48);
    sub_1B99D5A10((v0 + 9), &v34);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
    v14 = swift_allocObject();
    v15 = v35;
    *(v14 + 88) = v34;
    *(v14 + 16) = v8;
    *(v14 + 24) = v9;
    *(v14 + 32) = v10;
    *(v14 + 40) = v31;
    *(v14 + 48) = v11;
    v16 = v37;
    *(v14 + 56) = v37;
    *(v14 + 64) = v12;
    *(v14 + 72) = 0;
    *(v14 + 80) = v4;
    *(v14 + 104) = v15;
    *(&v35 + 1) = v13;
    v36 = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
    *&v34 = v14;

    sub_1B99CA6A4(v10);
    sub_1B99CA884(v29, v16, v12);
    sub_1B99CAA28(0);
    return sub_1B99F3824();
  }
}

uint64_t sub_1B99D3710@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE60, &qword_1B99F7F28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v56 - v7;
  v9 = sub_1B99F38A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v56 - v21;
  sub_1B99D5A10((v1 + 9), &v61);
  if (*(&v62 + 1))
  {
    v23 = swift_dynamicCast();
    (*(v10 + 56))(v8, v23 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v24 = *(v10 + 32);
      v24(v22, v8, v9);
      return (v24)(a1, v22, v9);
    }
  }

  else
  {
    sub_1B99A18A4(&v61, &qword_1EBBDC658, &qword_1B99F5F40);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  v64 = a1;
  sub_1B99A18A4(v8, &qword_1EBBDCE60, &qword_1B99F7F28);
  v27 = v1[4];
  v26 = v1[5];
  if (!*(v1 + 48))
  {
    sub_1B99D5A10((v1 + 9), &v61);
    if (*(&v62 + 1))
    {
      v38 = v27;
      if (swift_dynamicCast())
      {
        v60 = v2;
        v59 = sub_1B99F3C04();

        v39 = v59;
        v40 = [v38 dateFromString_];

        if (v40)
        {
          sub_1B99F3874();

          sub_1B99CA900(v27, v26, 0);
          v41 = *(v10 + 32);
          v41(v19, v15, v9);
          return (v41)(v64, v19, v9);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v44 = v27;
      sub_1B99A18A4(&v61, &qword_1EBBDC658, &qword_1B99F5F40);
    }

    v45 = sub_1B99D1CA8(MEMORY[0x1E69E6158], (v1 + 9));
    swift_willThrow();

LABEL_18:
    sub_1B99CA900(v27, v26, 0);
    goto LABEL_19;
  }

  if (*(v1 + 48) == 1)
  {
    v29 = *v1;
    v28 = v1[1];
    v60 = v2;
    v31 = v1[2];
    v30 = v1[3];
    v33 = v1[7];
    v32 = v1[8];
    v58 = v29;
    v59 = v32;
    sub_1B99D5A10((v1 + 9), &v61);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
    v35 = swift_allocObject();
    v36 = v62;
    *(v35 + 88) = v61;
    *(v35 + 16) = v29;
    *(v35 + 24) = v28;
    *(v35 + 32) = v31;
    *(v35 + 40) = v30;
    *(v35 + 48) = v27;
    *(v35 + 56) = v26;
    *(v35 + 64) = 1;
    v37 = v59;
    *(v35 + 72) = v33;
    *(v35 + 80) = v37;
    *(v35 + 104) = v36;
    *(&v62 + 1) = v34;
    v63 = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
    *&v61 = v35;
    sub_1B99CA884(v27, v26, 1);

    sub_1B99CA6A4(v31);
    sub_1B99CA884(v27, v26, 1);
    sub_1B99CAA28(v33);
    (v27)(&v61);
    sub_1B99CA900(v27, v26, 1);
    return __swift_destroy_boxed_opaque_existential_1(&v61);
  }

  if (!(v27 | v26))
  {
    v46 = *v1;
    v47 = v1[1];
    v60 = v2;
    v49 = v1[2];
    v48 = v1[3];
    v57 = v1[7];
    v50 = v57;
    v58 = v48;
    v59 = v1[8];
    sub_1B99D5A10((v1 + 9), &v61);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCE48, &qword_1B99F7F10);
    v52 = swift_allocObject();
    v53 = v62;
    *(v52 + 88) = v61;
    *(v52 + 16) = v46;
    *(v52 + 24) = v47;
    v54 = v58;
    *(v52 + 32) = v49;
    *(v52 + 40) = v54;
    *(v52 + 48) = v27;
    *(v52 + 56) = v26;
    *(v52 + 64) = 2;
    *(v52 + 72) = v50;
    *(v52 + 80) = v59;
    *(v52 + 104) = v53;
    *(&v62 + 1) = v51;
    v63 = sub_1B99D6A60(&qword_1EBBDCE50, &qword_1EBBDCE48, &qword_1B99F7F10);
    *&v61 = v52;

    sub_1B99CA6A4(v49);
    sub_1B99CA884(v27, v26, 2);
    sub_1B99CAA28(v57);
    return sub_1B99F3884();
  }

  v42 = (v1 + 9);
  if (!(v27 ^ 1 | v26))
  {
    sub_1B99D1F50(v42);
    if ((v43 & 1) == 0)
    {
      return sub_1B99F3854();
    }

LABEL_19:
    sub_1B99D1CA8(v9, (v1 + 9));
    return swift_willThrow();
  }

  sub_1B99D1F50(v42);
  if (v55)
  {
    goto LABEL_19;
  }

  return sub_1B99F3854();
}

BOOL sub_1B99D3D70()
{
  sub_1B99D5A10(v0 + 72, v3);
  v1 = v3[3] == 0;
  sub_1B99A18A4(v3, &qword_1EBBDC658, &qword_1B99F5F40);
  return v1;
}

uint64_t sub_1B99D3DE4()
{
  sub_1B99D5A10(v0 + 72, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1B99A18A4(v3, &qword_1EBBDC658, &qword_1B99F5F40);
  }

  sub_1B99D1CA8(MEMORY[0x1E69E6158], v0 + 72);
  return swift_willThrow();
}

uint64_t sub_1B99D3E88()
{
  result = sub_1B99D1F50((v0 + 72));
  if (v2)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E63B0], v0 + 72);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B99D3EDC()
{
  result = sub_1B99D27B4((v0 + 72));
  if ((result & 0x100000000) != 0)
  {
    sub_1B99D1CA8(MEMORY[0x1E69E6448], v0 + 72);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B99D4034(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = a3(v4 + 72);
  if (v7)
  {
    v8 = result;
    sub_1B99D1CA8(a4, v4 + 72);
    swift_willThrow();
    return v8;
  }

  return result;
}

uint64_t sub_1B99D4114(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = a3(v4 + 72);
  if ((result & 0x100) != 0)
  {
    v7 = result;
    sub_1B99D1CA8(a4, v4 + 72);
    swift_willThrow();
    return v7;
  }

  return result;
}

uint64_t sub_1B99D41A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = a3(v4 + 72);
  if ((result & 0x10000) != 0)
  {
    v7 = result;
    sub_1B99D1CA8(a4, v4 + 72);
    swift_willThrow();
    return v7;
  }

  return result;
}

uint64_t sub_1B99D423C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = a3(v4 + 72);
  if ((v6 & 0x100000000) != 0)
  {
    sub_1B99D1CA8(a4, v4 + 72);
    swift_willThrow();
  }

  return v6;
}

BOOL sub_1B99D4300(_BYTE *a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_1B99F3F94(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_1B99F3F84();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 7)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_1B99D44B4(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_1B99F3F94(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_1B99F3F84();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 15)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_1B99D4668(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v14 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_39;
  }

  v8 = sub_1B99F3F94();
  if (v8 > 31)
  {
    goto LABEL_39;
  }

  v9 = v8;
  v10 = sub_1B99F3F84();
  result = v9 >= v10;
  v7 = v10 + __clz(__rbit64(v6));
  v12 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
LABEL_31:
    if (a2 < 0.0 && !v7)
    {
      v14 = 0x80000000;
      goto LABEL_29;
    }

LABEL_39:
    v14 = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  if (v7 > 31)
  {
    if ((v12 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v12 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v12 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v12;
        if (v12 >= 0x40)
        {
          LODWORD(v7) = 0;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_20:
    if (v9 != 31)
    {
      if (v9 < 0)
      {
        v13 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (v12 >= -32 && v12 <= 32)
  {
    if (v12 < 0)
    {
      if (v12 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v12 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v12;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v13 = 1 << v9;
  }

LABEL_24:
  v14 = v7 | v13;
  if (a2 >= 0.0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 < 0.0)
    {
      LOBYTE(v7) = 0;
      v14 = 0x80000000;
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  LOBYTE(v7) = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_1B99D481C(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_1B99F3F94();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_1B99F3F84();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}