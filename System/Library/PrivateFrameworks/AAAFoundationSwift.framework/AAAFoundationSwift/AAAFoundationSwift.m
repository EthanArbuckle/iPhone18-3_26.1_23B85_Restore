id ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(uint64_t a1, uint64_t a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] = 0;
  *&v3[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries] = a1;
  *&v3[OBJC_IVAR___AAFExponentialRetryScheduler_power] = a3;
  sub_1B99A183C(a2, &v11, &qword_1EBBDD290, &qword_1B99F8720);
  if (v12)
  {
    sub_1B99A1904(&v11, &v13);
  }

  else
  {
    v14 = &type metadata for DefaultSchedulerDelay;
    v15 = &off_1F37B5660;
  }

  sub_1B99A1904(&v13, &v3[OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay]);
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1B99A18A4(a2, &qword_1EBBDD290, &qword_1B99F8720);
  return v8;
}

uint64_t sub_1B99A183C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B99A18A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B99A1904(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B99A1ABC()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A1B14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B99A3FAC;

  return sub_1B99A1BCC(a1, v5);
}

uint64_t sub_1B99A1BCC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B99A3FB0;

  return v7(a1);
}

uint64_t sub_1B99A1CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B99A3FAC;

  return sub_1B99A1D90(a1, v4, v5, v7);
}

uint64_t sub_1B99A1D90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B99A3EB8;

  return v8();
}

uint64_t sub_1B99A1E78()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B99A3FAC;

  return sub_1B99A1F38(v2, v3, v5);
}

uint64_t sub_1B99A1F38(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B99A3FAC;

  return v7();
}

uint64_t sub_1B99A2020()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B99A3EB8;

  return sub_1B99A2CD4(v2, v3, v5, v4);
}

uint64_t sub_1B99A20E0@<X0>(char *description@<X0>, void *dso@<X2>, void *a3@<X8>)
{
  if (dso && description)
  {
    if (qword_1ED99E0D0 != -1)
    {
      swift_once();
    }

    result = _os_activity_create(dso, description, qword_1ED99E0E0, OS_ACTIVITY_FLAG_DEFAULT);
    *a3 = result;
  }

  else
  {
    if (qword_1ED99EB40 != -1)
    {
      swift_once();
    }

    v7 = sub_1B99F3974();
    __swift_project_value_buffer(v7, qword_1ED99EC18);
    v8 = sub_1B99F3954();
    v9 = sub_1B99F40C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1B99BFCEC(3029639152, 0xA400000000000000, &v12);
      _os_log_impl(&dword_1B99A0000, v8, v9, "%s Failed to create OS Activity", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFAE1C50](v11, -1, -1);
      MEMORY[0x1BFAE1C50](v10, -1, -1);
    }

    result = sub_1B99F43D4();
    __break(1u);
  }

  return result;
}

void sub_1B99A22B8()
{
  v1 = v0;
  if (v0[5])
  {
    sub_1B99F40D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B99F5C20;
    v4 = v0[2];
    v3 = v0[3];
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1B99A24C8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v3;
    sub_1B99A2A94();

    v5 = sub_1B99F41A4();
    sub_1B99F3944();

    v6 = v1[5];
    if (v6)
    {
      swift_beginAccess();

      os_activity_scope_leave((v6 + 24));
      swift_endAccess();

      v7 = v1[5];
    }

    v1[5] = 0;

    v11 = v1[4];
    v1[4] = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B99F40C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B99F5C20;
    v10 = v0[2];
    v9 = v1[3];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1B99A24C8();
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;
    sub_1B99A2A94();

    v12 = sub_1B99F41A4();
    sub_1B99F3944();
  }
}

unint64_t sub_1B99A24C8()
{
  result = qword_1ED99DF48[0];
  if (!qword_1ED99DF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED99DF48);
  }

  return result;
}

uint64_t OSActivity.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t OSTransaction.__deallocating_deinit()
{
  v1 = v0;
  if (v0[5])
  {
    sub_1B99F40C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B99F5C20;
    v4 = v0[2];
    v3 = v0[3];
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1B99A24C8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v3;
    sub_1B99A2A94();

    v5 = sub_1B99F41A4();
    sub_1B99F3944();
  }

  sub_1B99A22B8();
  v6 = v1[3];

  v7 = v1[4];
  swift_unknownObjectRelease();
  v8 = v1[5];

  return MEMORY[0x1EEE6BDC0](v1, 48, 7);
}

uint64_t static OSTransaction.named(_:block:)(unint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t))
{
  v8 = swift_allocObject();
  OSTransaction.init(name:)(a1, a2, a3);
  a4(v8);
}

{
  swift_initStackObject();
  v8 = OSTransaction.init(name:)(a1, a2, a3);
  a4(v8);
  sub_1B99A22B8();
}

uint64_t OSTransaction.init(name:)(unint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1B99F38D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v37 - v14;
  v4[4] = 0;
  v4[5] = 0;
  v38 = a3;
  v37 = a2;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_12;
  }

  v14 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    v14 = a1 >> 16;
    if (a1 >> 16 <= 0x10)
    {
      if (a1 <= 0x7F)
      {
        v16 = a1 + 1;
LABEL_9:
        v39 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
LABEL_10:
        v39 = sub_1B99F3C74();
        v40 = v17;

        MEMORY[0x1BFAE0580](46, 0xE100000000000000);

        v18 = v39;
        v19 = v40;
        sub_1B99F38C4();
        v20 = sub_1B99F38B4();
        v22 = v21;
        (*(v9 + 8))(v15, v8);
        v39 = v18;
        v40 = v19;

        MEMORY[0x1BFAE0580](v20, v22);

        v24 = v39;
        v23 = v40;
        v4[2] = v39;
        v4[3] = v23;

        sub_1B99F40D4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1B99F5C20;
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 64) = sub_1B99A24C8();
        *(v25 + 32) = v24;
        *(v25 + 40) = v23;
        sub_1B99A2A94();

        v26 = sub_1B99F41A4();
        sub_1B99F3944();

        sub_1B99F3C64();

        v27 = os_transaction_create();

        v28 = v4[4];
        v4[4] = v27;
        swift_unknownObjectRelease();
        type metadata accessor for OSActivity();
        swift_allocObject();
        v30 = sub_1B99A2C24(a1, v38, v29);
        v31 = v4[5];
        v4[5] = v30;

        return v4;
      }

LABEL_14:
      v32 = (a1 & 0x3F) << 8;
      v33 = (a1 >> 6) + v32 + 33217;
      v34 = (v32 | (a1 >> 6) & 0x3F) << 8;
      v35 = (a1 >> 18) + ((v34 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
      v36 = (a1 >> 12) + v34 + 8487393;
      if (v14)
      {
        v16 = v35;
      }

      else
      {
        v16 = v36;
      }

      if (a1 < 0x800)
      {
        v16 = v33;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B99A2A94()
{
  result = qword_1ED99DF40;
  if (!qword_1ED99DF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED99DF40);
  }

  return result;
}

unint64_t sub_1B99A2B04@<X0>(void *dso@<X3>, unint64_t result@<X0>, char a3@<W2>, unint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      sub_1B99A20E0(result, dso, description);
      return *description;
    }

    __break(1u);
    goto LABEL_12;
  }

  a4 = HIDWORD(result);
  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  a4 = result >> 16;
  if (result >> 16 > 0x10)
  {
    goto LABEL_13;
  }

  if (result > 0x7F)
  {
LABEL_14:
    v5 = (result & 0x3F) << 8;
    v6 = (result >> 6) + v5 + 33217;
    v7 = (v5 | (result >> 6) & 0x3F) << 8;
    v8 = (result >> 18) + ((v7 | (result >> 12) & 0x3F) << 8) - 2122219023;
    v9 = (result >> 12) + v7 + 8487393;
    if (a4)
    {
      v4 = v8;
    }

    else
    {
      v4 = v9;
    }

    if (result < 0x800)
    {
      v4 = v6;
    }

    goto LABEL_9;
  }

  v4 = result + 1;
LABEL_9:
  *description = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v4) >> 3))));
  sub_1B99A20E0(description, dso, &v10);
  return v10;
}

uint64_t *sub_1B99A2C24@<X0>(unint64_t a1@<X0>, char a2@<W2>, unint64_t a3@<X8>)
{
  v4 = *v3;
  v3[4] = 0;
  v3[3] = 0;
  v3[2] = sub_1B99A2B04(&dword_1B99A0000, a1, a2, a3);
  swift_beginAccess();
  v5 = swift_unknownObjectRetain();
  os_activity_scope_enter(v5, (v3 + 3));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B99A2CD4(const void *a1, const void *a2, const void *a3, void *a4)
{
  v4[10] = a4;
  v8 = _Block_copy(a1);
  v9 = _Block_copy(a2);
  v4[11] = _Block_copy(a3);
  v10 = swift_allocObject();
  v4[12] = v10;
  *(v10 + 16) = v8;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v12 = sub_1B99A3C4C;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v4[13] = v12;
  v4[14] = v11;
  v13 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B99A2E08);
}

uint64_t sub_1B99A2DCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A2E08()
{
  v1 = v0[12];

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1B99A3CCC;
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[10];

  return sub_1B99A2EE4((v0 + 2), v3, v4, 0, 0, v6, sub_1B99A3310, v5);
}

uint64_t sub_1B99A2EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B99A3208);
}

uint64_t sub_1B99A2F60(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, void *a2), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  a2(sub_1B99A3428, v11);
}

uint64_t sub_1B99A30B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B99A3368;
  v7[3] = &block_descriptor_3;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_1B99A3208()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *(v1 + 16) = *(v0 + 192);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  *v3 = v0;
  v3[1] = sub_1B99A3570;
  v5 = *(v0 + 144);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001CLL, 0x80000001B99FABB0, sub_1B99A3144, v1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B99A3368(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_1B99A3418(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_1B99A18A4(v11, &qword_1EBBDC658, &qword_1B99F5F40);
}

_OWORD *sub_1B99A3418(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B99A3428(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858) - 8) + 80);

  return sub_1B99A34B4(a1, a2);
}

uint64_t sub_1B99A34B4(uint64_t a1, id a2)
{
  if (a2)
  {
    v4[0] = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
    return sub_1B99F3E54();
  }

  else
  {
    sub_1B99A183C(a1, v4, &qword_1EBBDC658, &qword_1B99F5F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
    return sub_1B99F3E64();
  }
}

uint64_t sub_1B99A3570()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1B99A368C;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_1B99DAAF8;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1B99A368C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v3 = *(v0 + 224);
  if (v2)
  {
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = v3;
    if ((v5(v3) & 1) == 0)
    {
      v7 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = v3;
  }

  v9 = *(v0 + 168);
  if (v9)
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 168);
    v50 = (v9 + *v9);
    v12 = v9[1];
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = sub_1B99DAB60;
    v14 = *(v0 + 224);

    return v50(v14);
  }

  v7 = 1;
LABEL_10:
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 184);
  v17 = sub_1B99F3974();
  *(v0 + 248) = __swift_project_value_buffer(v17, qword_1ED99EC18);
  v18 = v16;
  v19 = sub_1B99F3954();
  v20 = sub_1B99F40D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 184);
    v22 = swift_slowAlloc();
    *v22 = 67109376;
    *(v22 + 4) = v7;
    *(v22 + 8) = 1024;
    *(v22 + 10) = *&v21[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v21[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v19, v20, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v22, 0xEu);
    MEMORY[0x1BFAE1C50](v22, -1, -1);
  }

  else
  {

    v19 = *(v0 + 184);
  }

  v23 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  *(v0 + 256) = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  *(v0 + 264) = v23;
  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v24 = *(v0 + 224);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 272) = v24;
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    if (v7)
    {
      v25 = *(v0 + 184);
      v26 = *&v25[*(v0 + 256)];
      v27 = *&v25[*(v0 + 264)];
      *(v0 + 280) = v27;
      if (v26 < v27)
      {
        v28 = *(v0 + 248);
        v29 = v25;
        v30 = sub_1B99F3954();
        v31 = sub_1B99F40D4();
        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 184);
        if (v32)
        {
          v34 = swift_slowAlloc();
          *v34 = 134218240;
          *(v34 + 4) = v26;
          *(v34 + 12) = 2048;
          *(v34 + 14) = v27;

          _os_log_impl(&dword_1B99A0000, v30, v31, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v34, 0x16u);
          MEMORY[0x1BFAE1C50](v34, -1, -1);
        }

        else
        {
        }

        v45 = *(v0 + 200);

        v46 = swift_task_alloc();
        *(v0 + 288) = v46;
        *v46 = v0;
        v46[1] = sub_1B99DB564;
        v47 = *(v0 + 192);
        v48 = *(v0 + 200);
        v49 = *(v0 + 184);

        return sub_1B99DE050(v0 + 112, v49, v47, v48);
      }
    }

    v24 = *(v0 + 272);
  }

  else
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    v35 = *(v0 + 248);
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v36 = sub_1B99F40C4();
    v37 = sub_1B99F3954();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B99A0000, v37, v36, "All retry failed", v38, 2u);
      MEMORY[0x1BFAE1C50](v38, -1, -1);
    }

    v39 = *(v0 + 224);
    v40 = *(v0 + 200);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v41 = *(v0 + 8);
  }

  else
  {
    v42 = *(v0 + 224);
    v43 = *(v0 + 200);
    v44 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v51 = *(v0 + 96);
    *v44 = *(v0 + 80);
    v44[1] = v51;

    v41 = *(v0 + 8);
  }

  return v41();
}

uint64_t sub_1B99A3C4C()
{
  v1 = *(v0 + 16);
  v2 = sub_1B99F36D4();
  v3 = (*(v1 + 16))(v1, v2);

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B99A3CCC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1B99A3DE0;
  }

  else
  {
    v3 = sub_1B99DEE44;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99A3DE0()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);

  sub_1B99A3EA8(v3);

  v6 = sub_1B99F36D4();

  (v5)[2](v5, 0, v6);
  _Block_release(v5);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B99A3EA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B99A3EB8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B99A3FB0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  sub_1B99A42EC(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD10, qword_1B99F7400);
  sub_1B99A468C();
  v2 = sub_1B99F3B94();

  return v2;
}

char *sub_1B99A41E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F8, &unk_1B99F9B20);
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

uint64_t sub_1B99A42EC(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v33 = a2 >> 62;
    sub_1B99A4668(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B99F3624();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B99F3634();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B99F3624();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B99F3634();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B99F5C20;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1B99F3C34();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_1B99A4668((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

char *sub_1B99A4668(char *a1, int64_t a2, char a3)
{
  result = sub_1B99A41E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1B99A468C()
{
  result = qword_1ED99DDA8[0];
  if (!qword_1ED99DDA8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDCD10, qword_1B99F7400);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED99DDA8);
  }

  return result;
}

uint64_t sub_1B99A46F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A4738()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1B99A92F0(v0[5], v0[6]);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A4780()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A47B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1B99A48CC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A4904()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A4944()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A497C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99A4A00()
{
  swift_getWitnessTable();

  return sub_1B99F3FC4();
}

uint64_t sub_1B99A4A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99A4B1C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v2 = *(sub_1B99F4A34() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A4C40()
{
  sub_1B99B2EE8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B99A4C8C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A4CCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A4D04()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A4D3C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A4D84()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A4DC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A4E80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A4ED8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A4F78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B99A5024()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A506C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A50C0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A50F8(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B99A5128()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A5168()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A51A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A51E0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v2 = sub_1B99F3E74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v4 | 7);
}

uint64_t sub_1B99A52E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A532C()
{
  MEMORY[0x1BFAE1CF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A5368()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B99A53A0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = v3 | v6;
  v9 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);
  v10 = *(v0 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v8 | 7);
}

uint64_t sub_1B99A54B0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4);
  v11 = *(v0 + v5 + 8);

  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1B99A55C8()
{
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B99A5600()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A56BC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B99A573C()
{
  v1 = *(v0 + 6);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 9);

  v8 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1B99A5828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B99A58F4()
{
  v1 = sub_1B99F3A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A59C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A5A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B99A5A5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CA6A4(v4);
}

unint64_t sub_1B99A5AB4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CAA28(v4);
}

uint64_t get_enum_tag_for_layout_string_18AAAFoundationSwift17DictionaryDecoderC20DataDecodingStrategyO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B99A5B1C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B99A5B3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v3 = *(v0 + 40);
  }

  sub_1B99CA900(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  if (*(v0 + 72) >= 2uLL)
  {
    v4 = *(v0 + 80);
  }

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B99A5BBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 32))
  {
    v3 = *(v0 + 40);
  }

  sub_1B99CA900(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  if (*(v0 + 72) >= 2uLL)
  {
    v4 = *(v0 + 80);
  }

  v5 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B99A5C50()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A5C88()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A5CD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A5D74()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1B99A5E0C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1B99A5EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A5EE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B99A5F30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CA6A4(v4);
}

unint64_t sub_1B99A5F88@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CAA28(v4);
}

uint64_t sub_1B99A5FF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A602C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A6064()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A60AC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A60FC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 32);

  v6 = *(v0 + 40);

  if (*(v0 + 48))
  {
    v7 = *(v0 + 56);
  }

  sub_1B99CA900(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  if (*(v0 + 88) >= 2uLL)
  {
    v8 = *(v0 + 96);
  }

  v9 = (v3 + 152) & ~v3;
  v10 = *(v0 + 112);

  v11 = *(v0 + 128);

  v12 = *(v0 + 144);

  (*(v2 + 8))(v0 + v9, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v4, v3 | 7);
}

uint64_t sub_1B99A6260()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A62A0()
{
  v1 = *(v0 + 5);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);
  v8 = *&v0[v5 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B99A637C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for LazyOptionalDependency();
  return LazyOptionalDependency.projectedValue.getter(v5, a3);
}

void *BroadcastMessageSender.__allocating_init<A, B>(encoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1B99A6AD0(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v8;
}

void *BroadcastMessageSender.init<A, B>(encoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B99A6AD0(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v8;
}

uint64_t *sub_1B99A657C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1B99A66D0(a1);
}

uint64_t sub_1B99A65C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[5];
  v10 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
  return (*(v10 + 8))(a1, a2, a3, a4, v9, v10);
}

uint64_t BroadcastMessageSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t *sub_1B99A66D0(uint64_t a1)
{
  v3 = *v1;
  (*(*(*(*v1 + 88) - 8) + 32))(v1 + *(*v1 + 112));
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 120), a1);
  return v1;
}

uint64_t sub_1B99A67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = *v4;
  v9 = v22[12];
  v10 = v22[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v12 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v21 - v14;
  v16 = v4 + v22[15];
  v17 = v23;
  result = (*(v9 + 16))(a1, a2, a4, v10, v9);
  if (!v17)
  {
    v19 = v21;
    v20 = *(*v5 + 112);
    (*(v22[13] + 16))(v15, v22[11]);
    return (*(v19 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t *sub_1B99A698C()
{
  v1 = *v0;
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_1B99A6A58()
{
  v0 = sub_1B99A698C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B99A6AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v25 = type metadata accessor for InternalBroadcastMessageSender();
  (*(v16 + 16))(v20, a1, a3);
  (*(v10 + 16))(v14, a2, a4);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1B99A66D0(v20);
  v5[5] = v25;
  v5[6] = &off_1F37B2E98;
  v5[2] = v28;
  return v5;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B99A6D50(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 80);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B99A6E4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99A6E6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1B99A6EC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99A6EE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1B99A6F24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B99A6F88()
{
  v1 = *v0;
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](v1);
  return sub_1B99F4A24();
}

uint64_t sub_1B99A6FFC()
{
  v1 = *v0;
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](v1);
  return sub_1B99F4A24();
}

void *PushService.__allocating_init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v14[21] = 0;
  v14[22] = 0;
  v14[14] = a1;
  v14[15] = a2;
  v14[19] = a5;
  v14[20] = a6;
  v14[16] = a3;
  v14[17] = a4;
  v14[18] = a7;
  return v14;
}

void *PushService.init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_defaultActor_initialize();
  v7[21] = 0;
  v7[22] = 0;
  v7[14] = a1;
  v7[15] = a2;
  v7[19] = a5;
  v7[20] = a6;
  v7[16] = a3;
  v7[17] = a4;
  v7[18] = a7;
  return v7;
}

uint64_t PushService.__allocating_init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = swift_allocObject();

  return MEMORY[0x1EEE6DFA0](sub_1B99A71B4);
}

uint64_t sub_1B99A71B4()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_defaultActor_initialize();
  v1[21] = 0;
  v1[22] = 0;
  v1[14] = v5;
  v1[15] = v4;
  v1[16] = v3;
  v6 = v3;
  v11 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1B99A72D4;
  v9 = v0[7];

  return v11();
}

uint64_t sub_1B99A72D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v6 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B99A73D4);
}

uint64_t sub_1B99A73D4()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v2[19] = v0[11];
  v2[20] = v1;
  v2[17] = v4;
  v2[18] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B99A7400);
}

uint64_t sub_1B99A7400()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t PushService.init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99A7490);
}

uint64_t sub_1B99A7490()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_defaultActor_initialize();
  v1[21] = 0;
  v1[22] = 0;
  v1[14] = v5;
  v1[15] = v4;
  v1[16] = v3;
  v6 = v3;
  v11 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1B99A75B0;
  v9 = v0[7];

  return v11();
}

uint64_t sub_1B99A75B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v6 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B99A76B0);
}

uint64_t sub_1B99A76B0()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v2[19] = v0[11];
  v2[20] = v1;
  v2[17] = v4;
  v2[18] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B99A9D50);
}

uint64_t sub_1B99A76FC(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v13 = *(v3 + 152);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = sub_1B99A9A3C(&qword_1EBBDC470, a2, type metadata accessor for PushService);
  v8 = swift_task_alloc();
  v2[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v3;
  *(v8 + 32) = v13;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  v2[5] = v10;
  v11 = sub_1B99A7E9C();
  *v10 = v2;
  v10[1] = sub_1B99A785C;

  return MEMORY[0x1EEE6DE38](v2 + 2, v3, v7, 0x6574617669746361, 0xEA00000000002928, sub_1B99A7E8C, v8, v11);
}

uint64_t sub_1B99A785C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B99A79EC;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_1B99A7980;
  }

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1B99A7980()
{
  v1 = *(v0 + 16);
  sub_1B99A80B8(v1);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B99A79EC()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1B99A7A74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v44 = sub_1B99F3A44();
  v46 = *(v44 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44, v9);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1B99F3A84();
  v43 = *(v45 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v36 - v19;
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v16 + 16))(v20, a1, v15);
  v22 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  (*(v16 + 32))(v26 + v22, v20, v15);
  v27 = (v26 + v23);
  v28 = v38;
  *v27 = v37;
  v27[1] = v28;
  v29 = (v26 + v24);
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  v31 = v39;
  *(v26 + v25) = v39;
  aBlock[4] = sub_1B99A9980;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99BDF38;
  aBlock[3] = &block_descriptor;
  v32 = _Block_copy(aBlock);

  v31;
  sub_1B99F3A74();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1B99A9A3C(&qword_1EBBDC508, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC510, &qword_1B99F6FD0);
  sub_1B99A9A84();
  v33 = v42;
  v34 = v44;
  sub_1B99F4224();
  MEMORY[0x1BFAE0A00](0, v14, v33, v32);
  _Block_release(v32);
  (*(v46 + 8))(v33, v34);
  (*(v43 + 8))(v14, v45);
}

unint64_t sub_1B99A7E9C()
{
  result = qword_1EBBDC478;
  if (!qword_1EBBDC478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDC478);
  }

  return result;
}

uint64_t sub_1B99A7EE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 128);
    v2 = objc_allocWithZone(MEMORY[0x1E698CF30]);
    v3 = v1;

    v4 = sub_1B99F3C04();

    v5 = sub_1B99F3C04();

    v6 = [v2 initWithEnvironmentName:v4 namedDelegatePort:v5 queue:v3];

    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
      sub_1B99F3E64();
    }

    else
    {
      sub_1B99A9B30();
      swift_allocError();
      *v10 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
      sub_1B99F3E54();
    }
  }

  else
  {
    sub_1B99A9B30();
    swift_allocError();
    *v8 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
    return sub_1B99F3E54();
  }
}

void sub_1B99A80B8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  swift_weakAssign();
  v23.receiver = v5;
  v23.super_class = v4;
  v6 = objc_msgSendSuper2(&v23, sel_init);
  v7 = v2[21];
  v2[21] = v6;
  v8 = v6;

  [a1 setDelegate_];
  v9 = v2[18];
  v10 = *(v9 + 16);
  if (v10)
  {
    v21 = a1;
    v11 = sub_1B99A9460(v10, 0);
    v12 = sub_1B99A94E4(&v22, v11 + 4, v10, v9);

    sub_1B99A9978();
    if (v12 != v10)
    {
      __break(1u);
      return;
    }

    a1 = v21;
  }

  v13 = sub_1B99F3D94();

  [a1 _setEnabledTopics_];

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B99F3974();
  __swift_project_value_buffer(v14, qword_1ED99EC18);

  v15 = sub_1B99F3954();
  v16 = sub_1B99F40D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1B99BFCEC(v2[19], v2[20], &v22);
    _os_log_impl(&dword_1B99A0000, v15, v16, "Push service started with environment: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFAE1C50](v18, -1, -1);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  v19 = v2[22];
  v2[22] = a1;
  v20 = a1;
}

uint64_t sub_1B99A8340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B99F4A04();
  sub_1B99F3B84();
  v7 = sub_1B99F4A24();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B99F4704() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1B99A8438(void *a1)
{
  v2 = v1;
  if (qword_1ED99EB40 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v4 = sub_1B99F3974();
    __swift_project_value_buffer(v4, qword_1ED99EC18);
    v5 = sub_1B99F3954();
    v6 = sub_1B99F40B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B99A0000, v5, v6, "Informing delegates of incoming message", v7, 2u);
      MEMORY[0x1BFAE1C50](v7, -1, -1);
    }

    v8 = *(v2 + 136);
    v9 = *(v8 + 16);
    if (!v9)
    {
      break;
    }

    v10 = 0;
    v11 = (v8 + 40);
    while (v10 < *(v8 + 16))
    {
      ++v10;
      v2 = *(v11 - 1);
      v12 = *v11;
      ObjectType = swift_getObjectType();
      v14 = swift_unknownObjectRetain();
      sub_1B99A963C(v14, a1, ObjectType, v12);
      swift_unknownObjectRelease();
      v11 += 2;
      if (v9 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

void sub_1B99A858C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED99EB40 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v5 = sub_1B99F3974();
    __swift_project_value_buffer(v5, qword_1ED99EC18);
    v6 = sub_1B99F3954();
    v7 = sub_1B99F40B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B99A0000, v6, v7, "Informing delegates of incoming message", v8, 2u);
      MEMORY[0x1BFAE1C50](v8, -1, -1);
    }

    v9 = *(v3 + 136);
    v10 = *(v9 + 16);
    if (!v10)
    {
      break;
    }

    v11 = 0;
    v12 = (v9 + 40);
    while (v11 < *(v9 + 16))
    {
      ++v11;
      v13 = *(v12 - 1);
      v3 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v3 + 40);
      swift_unknownObjectRetain();
      v15(a1, a2, ObjectType, v3);
      swift_unknownObjectRelease();
      v12 += 2;
      if (v10 == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

uint64_t PushService.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushService.__deallocating_deinit()
{
  PushService.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of PushService.__allocating_init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(v7 + 200);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_1B99A8928;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B99A8928(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PushService.activate()()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B99A8B34;

  return v6();
}

uint64_t sub_1B99A8B34(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1B99A8C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B99A8C54);
}

uint64_t sub_1B99A8C54()
{
  v1 = v0[2];
  sub_1B99A858C(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B99A8ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B99A8EF4);
}

id sub_1B99A8EF4()
{
  v1 = *(*(v0 + 16) + 144);
  result = [*(v0 + 24) topic];
  if (result)
  {
    v3 = result;
    v4 = sub_1B99F3C24();
    v6 = v5;

    v7 = sub_1B99A8340(v4, v6, v1);

    if (v7)
    {
      v8 = *(v0 + 16);
      sub_1B99A8438(*(v0 + 24));
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B99A916C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B99A921C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B99A3EB8;

  return sub_1B99A8ED4(a1, v4, v5, v7, v6);
}

uint64_t sub_1B99A92DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B99A92F0(a1, a2);
  }

  return a1;
}

uint64_t sub_1B99A92F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B99A9344(uint64_t a1)
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

  return sub_1B99A8C30(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B99A940C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1B99A9460(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F8, &unk_1B99F9B20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1B99A94E4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B99A963C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = a3;
  v35 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v30 = &v30 - v12;
  v13 = sub_1B99F41C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v30 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17, v22);
  v24 = &v30 - v23;
  (*(AssociatedConformanceWitness + 24))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v14 + 8))(v19, v13);
  }

  (*(v20 + 32))(v24, v19, AssociatedTypeWitness);
  v26 = v30;
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v28 = v34;
  v27 = v35;
  v29 = (*(v35 + 32))(v26, v34, v35);
  (*(v31 + 8))(v26, v32);
  if (v29)
  {
    (*(v27 + 24))(v24, v28, v27);
  }

  return (*(v20 + 8))(v24, AssociatedTypeWitness);
}

uint64_t sub_1B99A9980()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = (v0 + v2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v3);
  v9 = *(v0 + v3 + 8);
  v10 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B99A7EE8();
}

uint64_t sub_1B99A9A3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B99A9A84()
{
  result = qword_1EBBDC518;
  if (!qword_1EBBDC518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC510, &qword_1B99F6FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC518);
  }

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

unint64_t sub_1B99A9B30()
{
  result = qword_1EBBDC520;
  if (!qword_1EBBDC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushService.PushServiceError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushService.PushServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B99A9CFC()
{
  result = qword_1EBBDC528;
  if (!qword_1EBBDC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC528);
  }

  return result;
}

uint64_t OSTransaction.__allocating_init(name:)(unint64_t a1, uint64_t a2, int a3)
{
  v6 = swift_allocObject();
  OSTransaction.init(name:)(a1, a2, a3);
  return v6;
}

void *OSTransaction.deinit()
{
  v1 = v0;
  if (v0[5])
  {
    sub_1B99F40C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B99F5C20;
    v4 = v0[2];
    v3 = v0[3];
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1B99A24C8();
    *(v2 + 32) = v4;
    *(v2 + 40) = v3;
    sub_1B99A2A94();

    v5 = sub_1B99F41A4();
    sub_1B99F3944();
  }

  sub_1B99A22B8();
  v6 = v1[3];

  v7 = v1[4];
  swift_unknownObjectRelease();
  v8 = v1[5];

  return v1;
}

uint64_t static OSTransaction.named(_:block:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 128) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99A9F6C);
}

{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99AA2AC);
}

uint64_t sub_1B99A9F6C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 128);
  *(v0 + 104) = swift_initStackObject();
  OSTransaction.init(name:)(v4, v3, v5);
  v10 = (v2 + *v2);
  v6 = v2[1];
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1B99AA094;
  v8 = *(v0 + 88);

  return v10();
}

uint64_t sub_1B99AA094()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1B99AA214;
  }

  else
  {
    v3 = sub_1B99AA1A8;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99AA1A8()
{
  v1 = *(v0 + 104);
  sub_1B99A22B8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B99AA214()
{
  v1 = v0[13];
  sub_1B99A22B8();

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1B99AA2AC()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  OSTransaction.init(name:)(v4, v3, v5);
  v11 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1B99AA3E0;
  v9 = *(v0 + 40);

  return v11(v6);
}

uint64_t sub_1B99AA3E0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B99AA558;
  }

  else
  {
    v3 = sub_1B99AA4F4;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99AA4F4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B99AA558()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t OSTransaction.description.getter()
{
  sub_1B99F4264();

  MEMORY[0x1BFAE0580](*(v0 + 16), *(v0 + 24));
  return 0x61736E617254534FLL;
}

uint64_t sub_1B99AA634()
{
  v1 = *v0;
  sub_1B99F4264();

  MEMORY[0x1BFAE0580](*(v1 + 16), *(v1 + 24));
  return 0x61736E617254534FLL;
}

uint64_t sub_1B99AA6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  a4[3] = type metadata accessor for TypedCodingEnvelope();
  v13[1] = a3;
  a4[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return TypedCodingEnvelope.init(value:)(v9, a2, boxed_opaque_existential_1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1B99AA89C()
{
  result = qword_1EBBDC538;
  if (!qword_1EBBDC538)
  {
    sub_1B99F39E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC538);
  }

  return result;
}

uint64_t sub_1B99AA9D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return sub_1B99AB63C();
}

uint64_t sub_1B99AA9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBBDC540;
  swift_beginAccess();
  return sub_1B99AB800(v1 + v3, a1);
}

uint64_t sub_1B99AAA50(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99AAB14);
}

uint64_t sub_1B99AAB14()
{
  v1 = v0[6];
  v2 = *(v1 + 112);
  v0[9] = v2;
  v3 = *(v1 + 120);
  v0[10] = v3;
  if (*(v1 + 128))
  {
    v4 = v0[7];
    sub_1B99ABF84();
    v5 = *(MEMORY[0x1E69E86A8] + 4);
    v6 = swift_task_alloc();
    v0[14] = v6;
    v7 = *(v4 + 80);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
    *v6 = v0;
    v6[1] = sub_1B99AAEA0;
    v9 = v0[5];
    v10 = MEMORY[0x1E69E7288];
    v11 = v2;
    v12 = v7;
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = qword_1EBBDC540;
    swift_beginAccess();
    sub_1B99AB800(v1 + v15, v13);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v17 = v14[10];
    v16[4] = v17;
    v16[5] = v14[11];
    v16[6] = v14[12];
    v16[7] = v2;
    v16[8] = v3;
    sub_1B99ABF84();

    v18 = sub_1B99AB2A4(0, 0, v13, &unk_1B99F5F38, v16);
    v0[11] = v18;
    v19 = *(v1 + 112);
    v20 = *(v1 + 120);
    v21 = *(v1 + 128);
    *(v1 + 112) = v18;
    *(v1 + 120) = 0;
    *(v1 + 128) = 1;

    sub_1B99AB63C();
    v22 = *(MEMORY[0x1E69E86A8] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
    *v23 = v0;
    v23[1] = sub_1B99AAD74;
    v9 = v0[5];
    v10 = MEMORY[0x1E69E7288];
    v11 = v18;
    v12 = v17;
  }

  return MEMORY[0x1EEE6DA10](v9, v11, v12, v8, v10);
}

uint64_t sub_1B99AAD74()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1B99AB0BC;
  }

  else
  {
    v6 = sub_1B99AAFCC;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1B99AAEA0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1B99AB13C;
  }

  else
  {
    v6 = sub_1B99AB04C;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1B99AAFCC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  sub_1B99AB63C();
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B99AB04C()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1B99AB63C();
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B99AB0BC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  sub_1B99AB63C();
  v4 = v0[13];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B99AB13C()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1B99AB63C();
  v3 = v0[15];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B99AB1AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B99A3FAC;

  return v9(a1);
}

uint64_t sub_1B99AB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v27[-1] - v12;
  v28[0] = a4;
  v28[1] = a5;
  sub_1B99AB800(a3, &v27[-1] - v12);
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
      v22 = sub_1B99F3C64();
      v23 = *(v22 + 16);
      sub_1B99ABEC8(v22 + 32, v28, v27);

      v24 = v27[0];
      sub_1B99AB648(a3);

      return v24;
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
  if (v21 | v19)
  {
    v27[1] = 0;
    v27[2] = 0;
    v27[3] = v19;
    v27[4] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1B99AB4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1B99AB53C(a1, a2, a3);
}

uint64_t sub_1B99AB53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = qword_1EBBDC540;
  v8 = sub_1B99F3EC4();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1B99AC080(a1, v3 + v7);
  swift_endAccess();
  *(v3 + 112) = a2;
  *(v3 + 120) = a3;
  *(v3 + 128) = 0;
  return v3;
}

uint64_t LazyTask.deinit()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  sub_1B99AB63C();
  sub_1B99AB648(v0 + qword_1EBBDC540);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B99AB648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LazyTask.__deallocating_deinit()
{
  LazyTask.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t LazyTask<>.init(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v17 - v10;
  sub_1B99AB800(a1, &v17 - v10);
  v12 = swift_allocObject();
  v12[2] = *(v3 + 80);
  v12[3] = a2;
  v12[4] = a3;
  v13 = *(v3 + 48);
  v14 = *(v3 + 52);
  swift_allocObject();
  v15 = sub_1B99AB53C(v11, &unk_1B99F5DE0, v12);
  sub_1B99AB648(a1);
  return v15;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v16 - v10;
  sub_1B99AB800(a1, &v16 - v10);
  v12 = *(v3 + 48);
  v13 = *(v3 + 52);
  swift_allocObject();
  v14 = sub_1B99AB53C(v11, a2, a3);
  sub_1B99AB648(a1);
  return v14;
}

uint64_t sub_1B99AB800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99AB870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3EB8;

  return sub_1B99A1BCC(a1, v5);
}

uint64_t LazyTask<>.value.getter(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B99AB9D4;

  return sub_1B99AAA50(a1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B99A3EB8;

  return sub_1B99AAA50(a1);
}

uint64_t sub_1B99AB9D4()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1B99ABB08);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

void sub_1B99ABC84()
{
  sub_1B99ABD58();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_1B99ABD58()
{
  if (!qword_1EBBDC5C8[0])
  {
    sub_1B99F3EC4();
    v0 = sub_1B99F41C4();
    if (!v1)
    {
      atomic_store(v0, qword_1EBBDC5C8);
    }
  }
}

uint64_t sub_1B99ABDB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B99ABE18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B99ABE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B99ABEC8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99ABF90(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B99A3FAC;

  return sub_1B99AB1AC(a1, v6, v7, v9);
}

uint64_t sub_1B99AC080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static Promise.race(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  type metadata accessor for Promise();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  return Promise.__allocating_init(startBlock:)(sub_1B99AC23C, v4);
}

uint64_t sub_1B99AC1A0()
{
  type metadata accessor for Promise();
  sub_1B99F3E24();
  swift_getWitnessTable();
  return sub_1B99F3D54();
}

uint64_t sub_1B99AC23C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1B99AC1A0();
}

void sub_1B99AC244(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *a1;
  sub_1B99B0D1C(v3, v2);
}

uint64_t WeakWrapper.deinit()
{
  sub_1B99AC2A0(v0 + 16);
  sub_1B99AC2C8(v0 + 24);
  return v0;
}

uint64_t sub_1B99AC2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeakWrapper.__deallocating_deinit()
{
  sub_1B99AC2A0(v0 + 16);
  sub_1B99AC2C8(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t RandomAccessCollection<>.randomAccessEnumerated()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t RandomAccessEnumeratedCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v5 = *(a3 + 16);
  v6 = *(*(*(a3 + 24) + 8) + 8);
  v7 = sub_1B99F4094();
  v9 = v8;
  v10 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v9, AssociatedTypeWitness);
  v7(v13, 0);
  return a2;
}

unint64_t sub_1B99AC65C()
{
  result = qword_1EBBDC670;
  if (!qword_1EBBDC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC670);
  }

  return result;
}

uint64_t sub_1B99AC7E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99AC8C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC668, &qword_1B99F5F90);
    sub_1B99AC65C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B99AC95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RandomAccessEnumeratedCollection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B99AC984@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RandomAccessEnumeratedCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1B99AC9AC(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  v10 = *(*(*(*(a3 + 24) + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v8[5] = v13;
  if (v6)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  v8[6] = v14;
  v8[7] = sub_1B99ACBAC(v8, *a2, a3);
  *v15 = v16;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v15[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
  return sub_1B99ACB34;
}

void sub_1B99ACB34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1B99ACBAC(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v8 = *(*(*(*(v7 + 8) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  a1[1] = v10;
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = v11;
  a1[2] = v11;
  RandomAccessEnumeratedCollection.subscript.getter(v11 + *(TupleTypeMetadata2 + 48), a2, a3);
  *v12 = a2;
  return sub_1B99ACCD4;
}

void sub_1B99ACCD4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B99ACD24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1B99ACE1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99ACEA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1B99ACF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1B99F43B4() + 36);
  v7 = RandomAccessEnumeratedCollection.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1B99AD024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B99AD080(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1B99AD6BC();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1B99AD13C(uint64_t a1)
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

uint64_t sub_1B99AD1AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B99AD2EC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1B99AD50C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B99F3BB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1B99F40A4() + 36);
  result = sub_1B99F3BB4();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99AD5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1B99F3BB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Promise.__allocating_init(startBlock:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Promise.init(startBlock:)(a1, a2);
  return v4;
}

id sub_1B99AD720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v12 = v11;
  v13(v10);
  if (!v4)
  {
    type metadata accessor for Promise.Box();
    v12 = sub_1B99B2E04(v9);
    (*(v6 + 8))(v9, a3);
  }

  return v12;
}

id sub_1B99AD86C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Promise.Box();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t *Promise.__allocating_init<A>(with:)(void *a1)
{
  v3 = [a1 then];
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 80);
  v9[4] = sub_1B99AE3C8;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B99B3B54;
  v9[3] = &block_descriptor_0;
  v5 = _Block_copy(v9);
  v6 = v3[2](v3, v5);
  _Block_release(v3);
  _Block_release(v5);

  swift_allocObject();
  v7 = sub_1B99ADCB0(v6);

  return v7;
}

uint64_t sub_1B99ADA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = type metadata accessor for Promise.Box();
    v6 = a1;
    result = sub_1B99B2E04(&v6);
    *a2 = result;
  }

  else
  {
    result = type metadata accessor for Promise.UnderlyingValueMissing();
    v4 = result;
  }

  a2[3] = v4;
  return result;
}

uint64_t sub_1B99ADAFC(void *a1)
{
  v3 = [a1 then];
  v14 = sub_1B99AE05C;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1B99B3B54;
  v13 = &block_descriptor_158;
  v4 = _Block_copy(&v10);
  v5 = v3[2](v3, v4);
  _Block_release(v3);
  _Block_release(v4);

  v6 = [v5 catch];

  v14 = sub_1B99AE1D0;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1B99AE1C8;
  v13 = &block_descriptor_161;
  v7 = _Block_copy(&v10);
  v8 = v6[2](v6, v7);

  _Block_release(v6);
  _Block_release(v7);

  *(v1 + 16) = v8;
  return v1;
}

uint64_t *sub_1B99ADCB0(void *a1)
{
  v3 = *v1;
  v4 = [a1 then];
  v5 = swift_allocObject();
  v6 = *(v3 + 80);
  *(v5 + 16) = v6;
  v20 = sub_1B99B3AA8;
  v21 = v5;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1B99B3B54;
  v19 = &block_descriptor_194;
  v7 = _Block_copy(&v16);
  v8 = v4[2];

  v9 = v8(v4, v7);
  _Block_release(v4);

  _Block_release(v7);

  v10 = [v9 catch];

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v20 = sub_1B99B3AB0;
  v21 = v11;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1B99AE1C8;
  v19 = &block_descriptor_200;
  v12 = _Block_copy(&v16);
  v13 = v10[2];

  v14 = v13(v10, v12);

  _Block_release(v10);

  _Block_release(v12);

  objc_opt_self();
  v1[2] = swift_dynamicCastObjCClassUnconditional();
  return v1;
}

id sub_1B99ADF00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v12, v3);

  swift_unknownObjectRelease();
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x1EEE9AC00](v5, v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = sub_1B99F46F4();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1B99AE05C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A8, &qword_1B99F6450);
    result = swift_dynamicCastClass();
    if (result)
    {
      a2[3] = v3;
      *a2 = result;
      return result;
    }

    swift_unknownObjectRelease();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A8, &qword_1B99F6450);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8B0, &qword_1B99F6458);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8B8, &qword_1B99F6460);
  a2[3] = result;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B99AE118@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = type metadata accessor for Promise.Box();
    swift_unknownObjectRetain();
    result = swift_dynamicCastClass();
    if (result)
    {
      a2[3] = v3;
      *a2 = result;
      return result;
    }

    swift_unknownObjectRelease();
  }

  v5 = type metadata accessor for Promise.Box();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8B0, &qword_1B99F6458);
  result = type metadata accessor for Promise.UnexpectedType();
  a2[3] = result;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B99AE1C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B99AE1D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    swift_getErrorValue();
    a2[3] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A0, &qword_1B99F6448);
    a2[3] = result;
  }

  return result;
}

uint64_t sub_1B99AE26C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    swift_getErrorValue();
    a2[3] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  }

  else
  {
    result = type metadata accessor for Promise.UnderlyingErrorMissing();
    a2[3] = result;
  }

  return result;
}

uint64_t *Promise.init(startBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);
  v7 = swift_allocObject();
  v7[2] = *(v6 + 80);
  v7[3] = a1;
  v7[4] = a2;
  type metadata accessor for Promise.Box();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3[2] = sub_1B99B28C0(sub_1B99AE500, v7);
  return v3;
}

uint64_t sub_1B99AE3D0(uint64_t a1, uint64_t a2, void (*a3)(void (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_1B99B39A8, v6);
}

uint64_t sub_1B99AE464(uint64_t a1, uint64_t a2, void (*a3)(void (*)(uint64_t a1), void *), uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a1;
  v9[4] = a2;

  a3(sub_1B99B3A9C, v9);
}

void sub_1B99AE50C(uint64_t a1, void (*a2)(id, id), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v11 = sub_1B99F4A34();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v20 - v14);
  (*(v16 + 16))(&v20 - v14, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    v18 = *v15;
    a2(0, v17);
  }

  else
  {
    (*(v7 + 32))(v10, v15, a4);
    type metadata accessor for Promise.Box();
    v19 = sub_1B99B2E04(v10);
    a2(v19, 0);

    (*(v7 + 8))(v10, a4);
  }
}

uint64_t Promise.__allocating_init(with:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = sub_1B99F4A34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v5 + 32))(v11 + v10, v9, v4);
  v12 = swift_allocObject();
  Promise.init(startBlock:)(sub_1B99AE8CC, v11);
  (*(v5 + 8))(a1, v4);
  return v12;
}

uint64_t sub_1B99AE8CC(uint64_t (*a1)(unint64_t))
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = *(sub_1B99F4A34() - 8);
  return a1(v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
}

void sub_1B99AE968(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a1)
  {
    v9 = a1;
    v10 = sub_1B99AD720(a2, a3, a4);
    a5[3] = type metadata accessor for Promise.Box();

    *a5 = v10;
  }

  else
  {
    a5[3] = type metadata accessor for Promise.UnderlyingValueMissing();
  }
}

void sub_1B99AEA5C(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
    v7 = a1;
    v8 = *(a2(a1 + v5) + 16);

    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);

    *a3 = v8;
  }

  else
  {
    a3[3] = type metadata accessor for Promise.UnderlyingValueMissing();
  }
}

void sub_1B99AEB8C(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v13 = a1;
    a2(a1);
    v14 = type metadata accessor for Promise.Box();
    v15 = sub_1B99B2E04(v12);
    (*(v8 + 8))(v12, a3);
    a4[3] = v14;

    *a4 = v15;
  }

  else
  {
    a4[3] = type metadata accessor for Promise.UnderlyingErrorMissing();
  }
}

void sub_1B99AED24(void *a1@<X0>, uint64_t (*a2)(void *)@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v6 = a1;
    v7 = *(a2(a1) + 16);

    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);

    *a3 = v7;
  }

  else
  {
    a3[3] = type metadata accessor for Promise.UnderlyingErrorMissing();
  }
}

uint64_t sub_1B99AEE34(char *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F4A34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = (&v18 - v14);
  if (a2)
  {
    *v15 = a2;
    swift_storeEnumTagMultiPayload();
    v16 = a2;
    a3(v15);
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    (*(*(a5 - 8) + 16))(v15, &a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x58)], a5);
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a3(v15);
  }

  return (*(v10 + 8))(v15, v9);
}

uint64_t *sub_1B99AEFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for Promise();
  v8 = [v3[2] then];
  v9 = *(v7 + 80);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a3;
  v11[4] = sub_1B99B3A90;
  v11[5] = v10;

  v15[4] = sub_1B99B2E70;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B99B3B58;
  v15[3] = &block_descriptor_12;
  v12 = _Block_copy(v15);
  v13 = v8[2](v8, v12);
  _Block_release(v8);
  _Block_release(v12);

  swift_allocObject();
  return sub_1B99ADCB0(v13);
}

uint64_t *sub_1B99AF198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise();
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a4;
  v13[4] = sub_1B99B3A90;
  v13[5] = v12;

  v17[4] = sub_1B99B3B00;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99B3B58;
  v17[3] = &block_descriptor_19;
  v14 = _Block_copy(v17);

  v15 = [v10 then:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AF31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for Promise();
  v8 = [v3[2] then];
  v9 = *(v7 + 80);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a3;
  v11[4] = sub_1B99B3A84;
  v11[5] = v10;

  v15[4] = sub_1B99B3B00;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B99B3B58;
  v15[3] = &block_descriptor_26;
  v12 = _Block_copy(v15);
  v13 = v8[2](v8, v12);
  _Block_release(v8);
  _Block_release(v12);

  swift_allocObject();
  return sub_1B99ADCB0(v13);
}

uint64_t *sub_1B99AF4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise();
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a4;
  v13[4] = sub_1B99B3A84;
  v13[5] = v12;

  v17[4] = sub_1B99B3B00;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99B3B58;
  v17[3] = &block_descriptor_33;
  v14 = _Block_copy(v17);

  v15 = [v10 then:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AF63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for Promise();
  v8 = [v3[2] catch];
  v9 = *(v7 + 80);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B99B3A78;
  *(v11 + 24) = v10;

  v16[4] = sub_1B99B2E98;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B99AE1C8;
  v16[3] = &block_descriptor_39;
  v12 = _Block_copy(v16);
  v13 = v8[2];

  v14 = v13(v8, v12);
  _Block_release(v8);

  _Block_release(v12);

  swift_allocObject();
  return sub_1B99ADCB0(v14);
}

uint64_t *sub_1B99AF7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise();
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B99B3A78;
  *(v13 + 24) = v12;

  v17[4] = sub_1B99B3B04;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99AE1C8;
  v17[3] = &block_descriptor_46;
  v14 = _Block_copy(v17);

  v15 = [v10 catch:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AF964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  type metadata accessor for Promise();
  v8 = [v3[2] catch];
  v9 = *(v7 + 80);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B99B3A6C;
  *(v11 + 24) = v10;

  v16[4] = sub_1B99B3B04;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B99AE1C8;
  v16[3] = &block_descriptor_53;
  v12 = _Block_copy(v16);
  v13 = v8[2];

  v14 = v13(v8, v12);
  _Block_release(v8);

  _Block_release(v12);

  swift_allocObject();
  return sub_1B99ADCB0(v14);
}

uint64_t *sub_1B99AFB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise();
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B99B3A6C;
  *(v13 + 24) = v12;

  v17[4] = sub_1B99B3B04;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99AE1C8;
  v17[3] = &block_descriptor_60;
  v14 = _Block_copy(v17);

  v15 = [v10 catch:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t sub_1B99AFC8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B99F43E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v18[0] = MEMORY[0x1E69E7CC0];
  result = sub_1B99F4314();
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        v6 = *(MEMORY[0x1BFAE0B50]() + 16);
        swift_unknownObjectRelease();
        sub_1B99F42E4();
        v7 = *(v18[0] + 16);
        sub_1B99F4324();
        sub_1B99F4334();
        sub_1B99F42F4();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v9 = *v8++;
        v10 = *(v9 + 16);
        sub_1B99F42E4();
        v11 = *(v18[0] + 16);
        sub_1B99F4324();
        sub_1B99F4334();
        sub_1B99F42F4();
        --v2;
      }

      while (v2);
    }

LABEL_11:
    v12 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);
    v13 = sub_1B99F3D94();

    v14 = [v12 all_];

    v15 = [v14 then];
    v18[4] = sub_1B99B0738;
    v18[5] = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1B99B3B58;
    v18[3] = &block_descriptor_155;
    v16 = _Block_copy(v18);
    v17 = v15[2](v15, v16);
    _Block_release(v15);
    _Block_release(v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC898, &qword_1B99F6440);
    swift_allocObject();
    return sub_1B99ADAFC(v17);
  }

  __break(1u);
  return result;
}

uint64_t *static Promise.all(_:)(uint64_t a1)
{
  v17 = *(v1 + 80);
  v2 = v17;
  aBlock[0] = a1;
  type metadata accessor for Promise();
  v3 = sub_1B99F3E24();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);
  WitnessTable = swift_getWitnessTable();
  sub_1B99B01B8(sub_1B99B2EC0, &v16, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
  v7 = objc_opt_self();
  v8 = sub_1B99F3D94();

  v9 = [v7 all_];

  v10 = [v9 then];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  aBlock[4] = sub_1B99B2EE0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B3B58;
  aBlock[3] = &block_descriptor_66;
  v12 = _Block_copy(aBlock);
  v13 = v10[2];

  v14 = v13(v10, v12);
  _Block_release(v10);

  _Block_release(v12);

  sub_1B99F3E24();
  type metadata accessor for Promise();
  swift_allocObject();
  return sub_1B99ADCB0(v14);
}

id sub_1B99B0154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  objc_opt_self();
  *a2 = swift_dynamicCastObjCClassUnconditional();
  return v3;
}

uint64_t sub_1B99B01B8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_1B99F4034();
  if (!v29)
  {
    return sub_1B99F3DE4();
  }

  v51 = v29;
  v55 = sub_1B99F4354();
  v42 = sub_1B99F4364();
  sub_1B99F4304();
  result = sub_1B99F4024();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_1B99F4094();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_1B99F4344();
      result = sub_1B99F4044();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B99B05D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(v14, a2);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7, v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1B99F46F4();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1B99B0738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B99F3724();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v19 = v7;
    v20 = a2;
    sub_1B99F4164();
    sub_1B99B3A24(&qword_1EBBDC2A8, MEMORY[0x1E6968EB0]);
    sub_1B99F41D4();
    if (v25)
    {
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B99A3418(&v24, v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8C0, &qword_1B99F6468);
        if (swift_dynamicCast())
        {
          v12 = v21;
          sub_1B99B3944(v21 + *((*v10 & *v21) + 0x58), v22);

          sub_1B99A3418(v22, v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1B99B2A68(0, *(v11 + 2) + 1, 1, v11);
          }

          v14 = *(v11 + 2);
          v13 = *(v11 + 3);
          if (v14 >= v13 >> 1)
          {
            v11 = sub_1B99B2A68((v13 > 1), v14 + 1, 1, v11);
          }

          *(v11 + 2) = v14 + 1;
          sub_1B99A3418(v23, &v11[32 * v14 + 32]);
        }

        sub_1B99F41D4();
      }

      while (v25);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    (*(v19 + 8))(v9, v4);
    a2 = v20;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A8, &qword_1B99F6450);
  v16 = objc_allocWithZone(v15);
  *&v16[*((*v10 & *v16) + 0x58)] = v11;
  v26.receiver = v16;
  v26.super_class = v15;
  result = objc_msgSendSuper2(&v26, sel_init);
  a2[3] = v15;
  *a2 = result;
  return result;
}

uint64_t sub_1B99B0A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v10 = a1;
    v4 = MEMORY[0x1EEE9AC00](a1, a2);
    sub_1B99B39D8();
    sub_1B99B3A24(&qword_1EBBDC8D8, sub_1B99B39D8);
    v5 = v4;
    v6 = sub_1B99F3D14();
  }

  else
  {
    v6 = sub_1B99F3DE4();
  }

  sub_1B99F3E24();
  v7 = type metadata accessor for Promise.Box();
  v10 = v6;
  v8 = sub_1B99B2E04(&v10);

  a3[3] = v7;
  *a3 = v8;
  return result;
}

uint64_t sub_1B99B0B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B99B3944(a1, &v8);
  type metadata accessor for Promise.Box();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  v5 = v9;
  v6 = *(a2 - 8);
  (*(v6 + 16))(a3, v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0x58), a2);

  return (*(v6 + 56))(a3, 0, 1, a2);
}

void sub_1B99B0CC4()
{
  v1 = *(v0 + 16);
  v2 = sub_1B99F36D4();
  [v1 abortWithError_];
}

void sub_1B99B0D1C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*v2 + 80);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  v9[4] = sub_1B99B39B0;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B99B3B5C;
  v9[3] = &block_descriptor_69;
  v8 = _Block_copy(v9);

  [v5 onComplete_];
  _Block_release(v8);
}

void sub_1B99B0E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = *(*v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;

  v11[4] = sub_1B99B39B0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B99B3B5C;
  v11[3] = &block_descriptor_72;
  v10 = _Block_copy(v11);

  [v7 onComplete:v10 onQueue:a1];
  _Block_release(v10);
}

void sub_1B99B0F2C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t *static Promise.join<A, B>(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a1;
  v7 = *a2;
  v21 = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  inited = swift_initStackObject();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B99B2EF4;
  *(v10 + 24) = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  v20[4] = sub_1B99B2F3C;
  v20[5] = v10;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1B99B2964;
  v20[3] = &block_descriptor_81;
  v12 = _Block_copy(v20);
  v13 = [v11 initWithBlock_];
  _Block_release(v12);

  *(inited + 16) = v13;
  v14 = *(v6 + 80);
  v15 = *(v7 + 80);
  swift_getTupleTypeMetadata3();
  type metadata accessor for Promise();
  static Promise.join<A, B, C>(_:_:_:)(a1, a2, inited);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v15;
  v17[4] = sub_1B99B2F44;
  v17[5] = v16;
  v18 = sub_1B99AEFE4(sub_1B99B2FE4, v17, *(v3 + 80));

  swift_setDeallocating();

  return v18;
}

uint64_t *static Promise.join<A, B, C>(_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDD180, &qword_1B99F6228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F6200;
  v7 = swift_allocObject();
  v8 = *(v3 + 80);
  v7[2] = v8;
  v9 = *(v4 + 80);
  v7[3] = v9;
  v10 = *(v5 + 80);
  v7[4] = v10;
  v11 = sub_1B99AEFE4(sub_1B99B3004, v7, MEMORY[0x1E69E7CA0] + 8);

  *(inited + 32) = v11;
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v13 = MEMORY[0x1E69E7CA0];
  v14 = sub_1B99AEFE4(sub_1B99B3074, v12, MEMORY[0x1E69E7CA0] + 8);

  *(inited + 40) = v14;
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v16 = sub_1B99AEFE4(sub_1B99B30E4, v15, v13 + 8);

  *(inited + 48) = v16;
  sub_1B99AFC8C(inited);
  swift_setDeallocating();
  v17 = *(inited + 16);
  swift_arrayDestroy();
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = v9;
  v18[4] = v10;
  v19 = sub_1B99AEFE4(sub_1B99B3154, v18, *(v21 + 80));

  return v19;
}

uint64_t sub_1B99B1484@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata3() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_1B99B1538(uint64_t *a1)
{
  v1 = *a1;
  result = swift_getTupleTypeMetadata3();
  v3 = *(v1 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(result + 48);
  v5 = *(result + 64);
  sub_1B99B3944(v1 + 32, v8);
  result = swift_dynamicCast();
  if (v3 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1B99B3944(v1 + 64, v7);
  result = swift_dynamicCast();
  if (v3 >= 3)
  {
    sub_1B99B3944(v1 + 96, &v6);
    return swift_dynamicCast();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static Promise.pending()()
{
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v2 = *(v0 + 80);
  type metadata accessor for Promise();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();

  Promise.init(startBlock:)(sub_1B99B3174, v3);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v5 = *(v1 + 24);

    return v4;
  }

  else
  {
    result = sub_1B99F43D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99B1794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  sub_1B99A3EA8(v6);
}

uint64_t Promise.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t Promise.get()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B99B18A4);
}

uint64_t sub_1B99B18A4()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_1B99B1970;
  v4 = v0[2];
  v5 = v0[3];

  return sub_1B99B1B48(v4, 0, 0, sub_1B99B317C, v5);
}

uint64_t sub_1B99B1970()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99B1AA4);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B99B1ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1B99B0D1C(sub_1B99B38DC, v4);
}

uint64_t sub_1B99B1B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    sub_1B99F3E44();
  }

  return MEMORY[0x1EEE6DFA0](sub_1B99B1BDC);
}

uint64_t sub_1B99B1BDC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1B99B1C84;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B99B1C84()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t Promise.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  Promise.init(startBlock:)(sub_1B99B3184, v5);
  return v6;
}

uint64_t sub_1B99B1E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v18 - v13;
  v15 = sub_1B99F3EC4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a5;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;

  sub_1B99C973C(0, 0, v14, &unk_1B99F6438, v16);
}

uint64_t sub_1B99B1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v8 = sub_1B99F4A34();
  v6[4] = v8;
  v9 = *(v8 - 8);
  v6[5] = v9;
  v10 = *(v9 + 64) + 15;
  v6[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[7] = v11;
  v15 = (a6 + *a6);
  v12 = a6[1];
  v13 = swift_task_alloc();
  v6[8] = v13;
  *v13 = v6;
  v13[1] = sub_1B99B20E0;

  return v15(v11);
}

uint64_t sub_1B99B20E0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B99B22AC;
  }

  else
  {
    v3 = sub_1B99B21F4;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99B21F4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  swift_storeEnumTagMultiPayload();
  v5(v1);
  (*(v3 + 8))(v1, v2);
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B99B22AC()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  v6(v2);

  (*(v3 + 8))(v2, v5);
  v9 = v0[6];
  v8 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B99B23B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  type metadata accessor for Promise();
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v11 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  *(v12 + 4) = v15;
  *(v12 + 5) = a3;
  (*(v9 + 32))(&v12[v11], &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  return Promise.__allocating_init(_:)(&unk_1B99F6420, v12);
}

uint64_t sub_1B99B2520(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B99A3EB8;

  return v10(a1, a4);
}

uint64_t sub_1B99B265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t))
{
  v12 = *v6;
  v13 = swift_allocObject();
  v13[2] = *(v12 + 80);
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = a2;

  v14 = a6(a5, v13, a3);

  return v14;
}

uint64_t sub_1B99B2704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Promise();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;

  v11 = a1;
  return Promise.__allocating_init(_:)(&unk_1B99F6410, v10);
}

uint64_t sub_1B99B27B8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B99A3FAC;

  return v10(a1, a4);
}

id sub_1B99B28C0(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B99B2964;
  v6[3] = &block_descriptor_185;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithBlock_];
  _Block_release(v3);

  return v4;
}

uint64_t sub_1B99B2964(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1B99B39A0, v5);
}

void sub_1B99B29F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B99F36D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *sub_1B99B2A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8C8, &qword_1B99F6470);
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

void *sub_1B99B2B78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC8E8, &qword_1B99F6488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B99B2CC0(uint64_t a1, void (*a2)(id, void))
{
  if (*(a1 + 8))
  {
    a2(0, *a1);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8D0, &qword_1B99F6478);
    v5.receiver = objc_allocWithZone(v3);
    v5.super_class = v3;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    a2(v4, 0);
  }
}

id sub_1B99B2D54(uint64_t a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x58)], a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Promise.Box();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1B99B2E04(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = objc_allocWithZone(type metadata accessor for Promise.Box());
  return sub_1B99B2D54(a1);
}

uint64_t sub_1B99B2E70()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1B99B2E98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1B99B2EE8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1B99B2EF4(uint64_t (*a1)(uint64_t *))
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = v2;
  return a1(&v4);
}

uint64_t sub_1B99B2F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  (*(*(v8 - 8) + 16))(a1, a3);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_1B99B2FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1B99B1484(a1, *(v2 + 32), a2);
}

uint64_t sub_1B99B3004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
}

uint64_t sub_1B99B3074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
}

uint64_t sub_1B99B30E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
}

uint64_t sub_1B99B3154(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1B99B1538(a1);
}

uint64_t dispatch thunk of Promise.then<A>(_:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 168))();
}

uint64_t dispatch thunk of Promise.then<A>(on:transform:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 176))();
}

uint64_t dispatch thunk of Promise.catch<A>(_:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of Promise.catch<A>(on:transform:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 208))();
}

uint64_t sub_1B99B33D0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_1B99B3464()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99B34A0(uint64_t *a1, int a2)
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

uint64_t sub_1B99B34E8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TimeoutError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TimeoutError(_WORD *result, int a2, int a3)
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

uint64_t sub_1B99B363C(uint64_t a1)
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

  return sub_1B99B27B8(a1, v6, v7, v8);
}

uint64_t sub_1B99B3704(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B99A3EB8;

  return sub_1B99B2520(a1, v6, v7, v1 + v5);
}

uint64_t sub_1B99B3800(uint64_t a1)
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
  v11[1] = sub_1B99A3EB8;

  return sub_1B99B1F4C(a1, v4, v5, v7, v8, v9);
}

uint64_t sub_1B99B38DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);

  return sub_1B99D913C(a1, v3, v4, v5);
}

uint64_t sub_1B99B3944(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B99B39D8()
{
  result = qword_1EBBDD130;
  if (!qword_1EBBDD130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDD130);
  }

  return result;
}

uint64_t sub_1B99B3A24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B99B3A6C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  sub_1B99AED24(a1, *(v2 + 32), a2);
}

void sub_1B99B3A78(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  sub_1B99AEB8C(a1, *(v2 + 32), *(v2 + 24), a2);
}

void sub_1B99B3A84(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  sub_1B99AEA5C(a1, *(v2 + 32), a2);
}

uint64_t ThrowingOrderedTaskGroup.addTask(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v12 = a4[3];
  v11[4] = a4[2];
  v11[5] = v12;
  v11[6] = a4[4];
  v11[7] = v10;
  v11[8] = a2;
  v11[9] = a3;

  swift_getTupleTypeMetadata2();
  v13 = sub_1B99F3F34();
  result = sub_1B99B3FB0(a1, &unk_1B99F6498, v11, v13);
  if (__OFADD__(*v5, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v5;
  }

  return result;
}

uint64_t sub_1B99B3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99B3CA4);
}

uint64_t sub_1B99B3CA4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  *v4 = v2;
  v10 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B99B3DD0;
  v8 = v0[5];

  return v10(&v4[v5]);
}

uint64_t sub_1B99B3DD0()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B99B3EC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B99A3EB8;

  return sub_1B99B3C78(a1, v6, v7, v8, v11, v10, v4);
}

uint64_t sub_1B99B3FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v24 - v12;
  sub_1B99AB800(a1, v24 - v12);
  v14 = sub_1B99F3EC4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B99AB648(v13);
    if (*(a3 + 16))
    {
LABEL_3:
      v16 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_1B99F3E44();
      v19 = v18;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B99F3EB4();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = *v5;
  v21 = *(a4 + 16);
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t ThrowingOrderedTaskGroup.results.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B99B41A8);
}

uint64_t sub_1B99B41A8()
{
  v1 = v0[7];
  v0[3] = v0[8];
  v2 = v1[2];
  v0[9] = v2;
  swift_getTupleTypeMetadata2();
  v0[4] = sub_1B99F3AF4();
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v2;
  v4 = v1[3];
  v0[11] = v4;
  v3[3] = v4;
  v5 = v1[4];
  v0[12] = v5;
  v3[4] = v5;
  v6 = *(MEMORY[0x1E69E8748] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = sub_1B99F3F34();
  v9 = sub_1B99F3E24();
  v0[14] = v9;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_1B99B4338;

  return MEMORY[0x1EEE6DB28](v0 + 2, v0 + 4, &unk_1B99F64B0, v3, v8, v9, WitnessTable);
}

uint64_t sub_1B99B4338()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B99B4610;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B99B4454;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1B99B4454()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v0[5] = v0[2];
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  swift_getWitnessTable();
  v7 = sub_1B99F3D44();

  v0[6] = v7;
  v8 = swift_task_alloc();
  *v8 = v5;
  v8[1] = v4;
  v8[2] = v3;
  KeyPath = swift_getKeyPath();

  v10 = swift_task_alloc();
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = KeyPath;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1B99B01B8(sub_1B99B4ACC, v10, v1, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1B99B4610()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1B99B4674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3[5] = TupleTypeMetadata2;
  v5 = *(TupleTypeMetadata2 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99B4758);
}

uint64_t sub_1B99B4758()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  v5 = v0[2];
  (*(v0[6] + 16))(v1, v0[3], v3);
  v6 = *(v3 + 48);
  *v2 = *v1;
  (*(*(v4 - 8) + 32))(&v2[v6], &v1[v6], v4);
  sub_1B99F3E24();
  sub_1B99F3E04();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B99B4854(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B99A3FAC;

  return sub_1B99B4674(a1, a2, v6);
}

uint64_t sub_1B99B4928(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v15 - v11;
  (*(v5 + 16))(v15 - v11);
  v13 = *(v4 + 48);
  *v9 = *v12;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v9[v13], &v12[v13]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1B99B4ACC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B99B4928(a1, *(v1 + 32));
}

uint64_t withThrowingOrderedTaskGroup<A, B>(of:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99B4B18);
}

uint64_t sub_1B99B4B18()
{
  v9 = *(v0 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v9;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1B99B4C34;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, TupleTypeMetadata2);
}

uint64_t sub_1B99B4C34()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99B4D70);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B99B4D70()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1B99B4DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99B4DF8);
}

uint64_t sub_1B99B4DF8()
{
  v1 = *(v0 + 48);
  v2 = **(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1B99B4F04;
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);

  return v8(v6, v0 + 16);
}

uint64_t sub_1B99B4F04()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B99B5030;
  }

  else
  {
    v3 = sub_1B99B5018;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99B5048(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B99A3FAC;

  return sub_1B99B4DD4(a1, a2, v9, v8);
}

uint64_t sub_1B99B5118()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99B5154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1B99B5198(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t Reference.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1B99B5214(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return Reference.wrappedValue.getter();
}

uint64_t sub_1B99B5248(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v7 = *a2;
  v6 = *(a2 + 1);
  v8 = a2[3];
  type metadata accessor for Reference();

  sub_1B99B63EC();
}

uint64_t Reference.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1B99B63EC();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*Reference.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(a2 + 16);
  *v6 = v8;
  v9 = *(v8 - 8);
  v6[1] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[3] = v11;
  v12 = *v2;
  *(v7 + 2) = *(v2 + 8);
  v7[6] = *(v2 + 24);
  v12();
  return sub_1B99B547C;
}

void sub_1B99B547C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[5];
  v3 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[2], v5, v9);

    v4(v7);
    v10 = *(v8 + 8);
    v10(v7, v9);

    v10(v5, v9);
  }

  else
  {
    v11 = (*a1)[4];

    v4(v5);
    (*(v8 + 8))(v5, v9);
  }

  free(v5);
  free(v7);

  free(v2);
}

uint64_t Reference.init(getValue:setValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Reference.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t ReferenceBox.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t ReferenceBox.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*ReferenceBox.wrappedValue.modify())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ReferenceBox.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t ReferenceBox.projectedValue.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  *a1 = sub_1B99B6414;
  a1[1] = v1;
  a1[2] = sub_1B99B641C;
  a1[3] = v1;
  return swift_retain_n();
}

uint64_t sub_1B99B5910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, a1 + v5);
}

uint64_t sub_1B99B59B4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a2 + v5, a1);
  return swift_endAccess();
}

uint64_t ReferenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ReferenceBox<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v11 - v6;
  v9 = *(v8 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v7, v2 + v9, v3);
  sub_1B99F3B54();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ReferenceBox<A>.init(from:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(*(*(v2 + 80) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B99B6424(v6, v11);
  sub_1B99F3FA4();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v3)
  {
    return ReferenceBox.__allocating_init(wrappedValue:)(v8);
  }

  return result;
}

uint64_t sub_1B99B5DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = ReferenceBox<A>.init(from:)(a1, *(a2 - 8));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ReferenceBox<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v11 - v6;
  v9 = *(v8 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v7, v2 + v9, v3);
  sub_1B99F3B74();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ReferenceBox<A>.hashValue.getter(uint64_t a1)
{
  sub_1B99F4A04();
  ReferenceBox<A>.hash(into:)(v3, a1);
  return sub_1B99F4A24();
}

uint64_t sub_1B99B5FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1B99F4A04();
  v5 = *v3;
  ReferenceBox<A>.hash(into:)(v7, v4);
  return sub_1B99F4A24();
}

uint64_t sub_1B99B6040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *, uint64_t, uint64_t))
{
  v24 = a4;
  v8 = *(v4 + 80);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v23 - v16;
  v18 = *(*v15 + 88);
  swift_beginAccess();
  v19 = v9[2];
  v19(v17, a1 + v18, v8);
  v20 = *(*a2 + 88);
  swift_beginAccess();
  v19(v13, a2 + v20, v8);
  LOBYTE(v19) = v24(v17, v13, v8, a3);
  v21 = v9[1];
  v21(v13, v8);
  v21(v17, v8);
  return v19 & 1;
}

uint64_t sub_1B99B627C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v14 - v8;
  v11 = *(v10 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v9, v2 + v11, v5);
  v12 = a2(v5, a1);
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_1B99B63EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B99B6424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B99B6488()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B99B64D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B99B6518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *Result<>.ContainBothSuccessAndFailure.failure.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

uint64_t sub_1B99B661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for Result<>.ContainBothSuccessAndFailure();
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t Result<>.foundation_tryMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[2] = a3[2];
  v6[3] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return sub_1B99B6914(sub_1B99B66D4, v6, a3, a5);
}

uint64_t sub_1B99B66D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = v4;
  v11 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
  return sub_1B99B6760(sub_1B99B723C, v7, v5, a2);
}

uint64_t sub_1B99B6760@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B99F4A34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16[-v13];
  a1(v8);
  swift_storeEnumTagMultiPayload();
  return (*(v10 + 32))(a4, v14, v9);
}

uint64_t sub_1B99B6914@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3[3] - 8) + 32))(a4, v17, a3[3]);
    v20 = a3[4];
    sub_1B99F4A34();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v12, v17, v7);
    a1(v12);
    return (*(v8 + 8))(v12, v7);
  }
}

id static Result<>.foundation_from(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B99F41C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBBDC9F0, "Zp");
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v15);
  v17 = &v24 - v16;
  (*(*(v12 - 8) + 16))(&v24 - v16, a1, v12);
  if ((*(v8 + 48))(v17, 1, a3) == 1)
  {
    if (a2)
    {
      *a4 = a2;
    }

    else
    {
      type metadata accessor for Result<>.ShouldHaveEitherSuccessOrFailure();
      swift_getWitnessTable();
      *a4 = swift_allocError();
    }
  }

  else
  {
    if (!a2)
    {
      (*(v8 + 32))(a4, v17, a3);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
      sub_1B99F4A34();
      goto LABEL_8;
    }

    v18 = *(v8 + 32);
    v18(v11, v17, a3);
    v19 = type metadata accessor for Result<>.ContainBothSuccessAndFailure();
    swift_getWitnessTable();
    v20 = swift_allocError();
    v22 = v21;
    v18(v21, v11, a3);
    *&v22[*(v19 + 28)] = a2;
    *a4 = v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F4A34();
LABEL_8:
  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_1B99B6E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1B99B71D8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B99B6EE8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_DWORD *sub_1B99B7024(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1B99B71D8()
{
  result = qword_1EBBDCA78;
  if (!qword_1EBBDCA78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBDCA78);
  }

  return result;
}

uint64_t sub_1B99B723C(void *a1)
{
  v4 = *(v1 + 40);
  result = (*(v1 + 32))(*(v1 + 48));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t static Promise<A>.delay(interval:queue:)(uint64_t a1, void *a2)
{
  v4 = sub_1B99F3A34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B99B780C;
  *(v12 + 24) = v10;
  v13 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  aBlock[4] = sub_1B99B2F3C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B2964;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = [v13 initWithBlock_];
  _Block_release(v14);

  *(v11 + 16) = v16;
  return v11;
}

uint64_t sub_1B99B748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v35 = a3;
  v6 = sub_1B99F3A44();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B99F3A84();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B99F3AB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v31 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;

  sub_1B99F3AA4();
  MEMORY[0x1BFAE03A0](v22, v31);
  v27 = *(v17 + 8);
  v27(v22, v16);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B99B8360;
  *(v28 + 24) = v26;
  aBlock[4] = sub_1B99B83A0;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99BDF38;
  aBlock[3] = &block_descriptor_53_0;
  v29 = _Block_copy(aBlock);
  sub_1B99F3A74();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1B99B83D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC510, &qword_1B99F6FD0);
  sub_1B99A9A84();
  sub_1B99F4224();
  MEMORY[0x1BFAE09E0](v25, v15, v10, v29);
  _Block_release(v29);
  (*(v34 + 8))(v10, v6);
  (*(v32 + 8))(v15, v33);
  v27(v25, v16);
}

uint64_t static Promise<A>.delay(interval:)(uint64_t a1)
{
  v2 = sub_1B99F3A34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = sub_1B99F3A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B99B8134();
  (*(v7 + 104))(v11, *MEMORY[0x1E69E7F98], v6);
  v12 = sub_1B99F4154();
  (*(v7 + 8))(v11, v6);
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v3 + 32))(v14 + v13, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B99B8444;
  *(v16 + 24) = v14;
  v17 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  aBlock[4] = sub_1B99B8434;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B2964;
  aBlock[3] = &block_descriptor_14;
  v18 = _Block_copy(aBlock);
  v19 = v12;
  v20 = [v17 initWithBlock_];
  _Block_release(v18);

  *(v15 + 16) = v20;
  return v15;
}

uint64_t *Promise.timeout(after:queue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1B99F3A34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v8 + 32))(v13 + v12, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B99B8444;
  *(v15 + 24) = v13;
  v16 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  aBlock[4] = sub_1B99B8434;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B2964;
  aBlock[3] = &block_descriptor_25;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = [v16 initWithBlock_];
  _Block_release(v17);

  *(v14 + 16) = v19;
  v20 = *(v6 + 80);
  type metadata accessor for Promise();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDD180, &qword_1B99F6228);
  swift_allocObject();
  v21 = sub_1B99F3DC4();
  v23 = v22;
  *v22 = v3;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  v25 = swift_allocObject();
  v25[2] = v20;
  v25[3] = sub_1B99B82C8;
  v25[4] = v24;

  v26 = sub_1B99AF31C(sub_1B99B82E4, v25, v20);

  v23[1] = v26;
  sub_1B99F3E24();
  static Promise.race(_:)(v21);

  v27 = sub_1B99AF964(sub_1B99B830C, v3, v20);

  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v14;

  sub_1B99B0D1C(sub_1B99B8328, v28);

  return v27;
}

uint64_t sub_1B99B7EBC()
{
  type metadata accessor for Promise.TimedOut();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

id sub_1B99B7F28(void *a1)
{
  sub_1B99B0CC4();
  swift_willThrow();
  return a1;
}

void sub_1B99B7F64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Promise.Aborted();
  swift_getWitnessTable();
  v3 = swift_allocError();
  v4 = *(a2 + 16);
  v5 = sub_1B99F36D4();
  [v4 abortWithError_];
}

uint64_t *Promise.timeout(after:)(uint64_t a1)
{
  v2 = sub_1B99F3A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B99B8134();
  (*(v3 + 104))(v7, *MEMORY[0x1E69E7F98], v2);
  v8 = sub_1B99F4154();
  (*(v3 + 8))(v7, v2);
  v9 = Promise.timeout(after:queue:)(a1, v8);

  return v9;
}

unint64_t sub_1B99B8134()
{
  result = qword_1ED99DBB0;
  if (!qword_1ED99DBB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED99DBB0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_1B99F3A34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99B8244(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1B99F3A34() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1B99B748C(a1, a2, v6, v7);
}

uint64_t sub_1B99B82E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1B99B8360(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1B99B83A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0);
}

unint64_t sub_1B99B83D0()
{
  result = qword_1EBBDC508;
  if (!qword_1EBBDC508)
  {
    sub_1B99F3A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC508);
  }

  return result;
}

void *MessageSender.__allocating_init(xpcSession:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCC00, &qword_1B99F6A00);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for MessageSender();
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDCC08, &qword_1B99F6A08);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v3[5] = v4;
  v3[6] = &off_1F37B2FC8;
  v3[2] = v5;
  return v3;
}

uint64_t MessageSender.__allocating_init(machService:)()
{
  v1 = sub_1B99F39A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  sub_1B99F39D4();
  sub_1B99F3994();
  result = sub_1B99F3984();
  if (!v0)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCC00, &qword_1B99F6A00);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    type metadata accessor for MessageSender();
    v7 = swift_allocObject();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDCC08, &qword_1B99F6A08);
    v9 = swift_allocObject();
    result = v7;
    *(v9 + 16) = v6;
    v7[5] = v8;
    v7[6] = &off_1F37B2FC8;
    v7[2] = v9;
  }

  return result;
}

uint64_t OrderedTaskGroup.addTask(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = *(a4 + 16);
  v8[3] = a2;
  v8[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = type metadata accessor for ThrowingOrderedTaskGroup();
  ThrowingOrderedTaskGroup.addTask(priority:operation:)(a1, &unk_1B99F6A18, v8, v9);
}

uint64_t sub_1B99B8760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3FAC;

  return sub_1B99A1BCC(a1, v5);
}

uint64_t OrderedTaskGroup.results.getter(uint64_t a1)
{
  v4 = v1[1];
  v2[2] = *v1;
  v2[3] = v4;
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v7 = type metadata accessor for ThrowingOrderedTaskGroup();
  *v5 = v2;
  v5[1] = sub_1B99B8908;

  return ThrowingOrderedTaskGroup.results.getter(v7);
}

uint64_t sub_1B99B8908(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_1B99B8A48;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_1B99B8A30;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t withOrderedTaskGroup<A, B>(of:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99B8A8C);
}

uint64_t sub_1B99B8A8C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 48);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1B99B8B58;
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return withThrowingOrderedTaskGroup<A, B>(of:body:)(v6, v7, &unk_1B99F6A40, v1, v4, v5);
}

void sub_1B99B8B58()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_1B99B8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99B8CB0);
}

uint64_t sub_1B99B8CB0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  v10 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1B99B8DBC;
  v7 = v0[7];
  v8 = v0[4];

  return (v10)(v8, v0 + 2);
}

uint64_t sub_1B99B8DBC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B99B5018);
}

uint64_t sub_1B99B8EB8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B99A3EB8;

  return sub_1B99B8C8C(a1, a2, v9, v8);
}

uint64_t sub_1B99B8F80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99B8FD4()
{
  v0 = sub_1B99F4424();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99B9028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99B909C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99B9108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99B9178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99B91E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  result = sub_1B99B8FD4();
  *a3 = result;
  return result;
}

uint64_t sub_1B99B9224@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = sub_1B99A50F8(*v2);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B99B925C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1B99A50F8(*v1);
}

uint64_t sub_1B99B9270@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1B99B8FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1B99B92B0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1B99AD078();
  *a2 = result;
  return result;
}

uint64_t sub_1B99B92E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B99B9338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableResult.result.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_1B99F4A34();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2, v7);
}

uint64_t CodableResult.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B99F4A34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CodableResult<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v5 = *(a2 + 24);
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v15 = sub_1B99F4A34();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v36 - v19;
  v38 = v10;
  v43 = v5;
  type metadata accessor for CodableResult.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_1B99F44C4();
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v36 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4AA4();
  (*(v16 + 16))(v20, v44, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v42;
    v27 = v43;
    v29 = v39;
    (*(v42 + 32))(v39, v20, v43);
    v48 = 1;
    v30 = v46;
    sub_1B99F44B4();
    (*(v28 + 8))(v29, v27);
    return (*(v45 + 8))(v25, v30);
  }

  else
  {
    v33 = v36;
    v32 = v37;
    v34 = v38;
    (*(v37 + 32))(v36, v20, v38);
    v47 = 0;
    v35 = v46;
    sub_1B99F44B4();
    (*(v32 + 8))(v33, v34);
    return (*(v45 + 8))(v25, v35);
  }
}

uint64_t CodableResult<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v58 = a4;
  v50 = a7;
  v45 = *(a3 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v55 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B99F41C4();
  v54 = *(v47 - 8);
  v13 = *(v54 + 64);
  v15 = MEMORY[0x1EEE9AC00](v47, v14);
  v59 = &v43 - v16;
  v53 = *(a2 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CodableResult.CodingKeys();
  swift_getWitnessTable();
  v52 = sub_1B99F4484();
  v57 = *(v52 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v52, v21);
  v23 = &v43 - v22;
  v56 = a3;
  v51 = a6;
  v24 = type metadata accessor for CodableResult();
  v49 = *(v24 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v43 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v60;
  sub_1B99F4A74();
  if (v30)
  {
    v36 = a1;
  }

  else
  {
    v31 = v53;
    v32 = v54;
    v43 = v28;
    v44 = v24;
    v60 = a1;
    v34 = v55;
    v33 = v56;
    v62 = 0;
    v35 = v52;
    sub_1B99F4454();
    v38 = (*(v31 + 48))(v59, 1, a2);
    if (v38 == 1)
    {
      (*(v32 + 8))(v59, v47);
      v61 = 1;
      sub_1B99F4474();
      v39 = v50;
      (*(v57 + 8))(v23, v35);
      v40 = v43;
      (*(v45 + 32))(v43, v34, v33);
    }

    else
    {
      (*(v57 + 8))(v23, v35);
      v41 = *(v31 + 32);
      v42 = v46;
      v41(v46, v59, a2);
      v40 = v43;
      v41(v43, v42, a2);
      v39 = v50;
    }

    sub_1B99F4A34();
    swift_storeEnumTagMultiPayload();
    (*(v49 + 32))(v39, v40, v44);
    v36 = v60;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t CodableResult<>.hash(into:)(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  sub_1B99F4A34();

  return sub_1B99F4A44();
}

uint64_t CodableResult<>.hashValue.getter(void *a1)
{
  sub_1B99F4A04();
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_1B99F4A34();
  sub_1B99F4A44();
  return sub_1B99F4A24();
}

uint64_t sub_1B99B9ED0(void *a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return CodableResult<>.hashValue.getter(a1);
}

uint64_t sub_1B99B9EDC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  return CodableResult<>.hash(into:)(a1, a2);
}

uint64_t sub_1B99B9EE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1B99F4A04();
  CodableResult<>.hash(into:)(v7, a2);
  return sub_1B99F4A24();
}

uint64_t sub_1B99B9F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t sub_1B99B9F94(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = sub_1B99F4A34();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B99BA008(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1B99BA130(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
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

uint64_t withTimeout<A>(after:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99BA3A0);
}

uint64_t sub_1B99BA3A0()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  sub_1B99B5110(v1, v1);
  v6 = *(MEMORY[0x1E69E88A0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1B99BA4AC;
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v9, v8);
}

uint64_t sub_1B99BA4AC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99BA5E8);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B99BA5E8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1B99BA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(sub_1B99F41C4() - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BA724);
}

uint64_t sub_1B99BA724()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v16 = v0[6];
  v17 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_1B99F3EC4();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F3F34();
  sub_1B99B3FB0(v1, &unk_1B99F6F80, v8, v9);
  sub_1B99A18A4(v1, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v16;
  v10[6] = v17;

  sub_1B99B3FB0(v1, &unk_1B99F6F90, v10, v9);
  sub_1B99A18A4(v1, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v11 = *(MEMORY[0x1E69E8708] + 4);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1B99BA95C;
  v13 = v0[9];
  v14 = v0[3];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v9);
}

uint64_t sub_1B99BA95C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1B99BABAC;
  }

  else
  {
    v3 = sub_1B99BAA70;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B99BAA70()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[10];
    v6 = v0[3];
    (*(v3 + 32))(v0[2], v2, v1);
    v7 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
    sub_1B99F3F24();

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_1B99BABAC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F3F24();

  v5 = *(v0 + 8);
  v6 = *(v0 + 96);

  return v5();
}