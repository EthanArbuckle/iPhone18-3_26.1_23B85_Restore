uint64_t sub_1B255CA44()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 512);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B255CB84, v2, 0);
}

uint64_t sub_1B255CB84()
{
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B255CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B18);
  v4[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B20);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B28);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v8 = sub_1B256E15C();
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B255CE4C, a4, 0);
}

uint64_t sub_1B255CE4C()
{
  sub_1B2565D20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B257CB00;
  sub_1B256E14C();
  sub_1B256E13C();
  v0[17] = v1;
  sub_1B2565104(&qword_1EB7D2E98, MEMORY[0x1E69E80E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EA0);
  sub_1B2565E00(&qword_1EB7D2EA8, &qword_1EB7D2EA0);
  OUTLINED_FUNCTION_136();
  sub_1B256E40C();
  v0[31] = sub_1B256E16C();
  v2 = OUTLINED_FUNCTION_29_1();
  v3(v2);
  ObjectType = swift_getObjectType();
  sub_1B2438EE8(ObjectType);
  sub_1B256DE1C();
  v5 = OUTLINED_FUNCTION_41_1();
  v6(v5);
  OUTLINED_FUNCTION_9_25();
  v9 = sub_1B2565104(v7, v8);
  v10 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v0[32] = v9;
  v0[33] = v10;
  OUTLINED_FUNCTION_402();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[34] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_160_1(v11);

  return MEMORY[0x1EEE6D9C8](v13);
}

uint64_t sub_1B255D0B0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B255D1A8()
{
  v50 = v0;
  OUTLINED_FUNCTION_268_0(*(v0 + 168), 1, *(v0 + 224));
  if (v2)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v3 = sub_1B256E09C();
    v4 = sub_1B256D5CC();
    if (os_log_type_enabled(v4, v3))
    {
      OUTLINED_FUNCTION_21_3();
      v5 = OUTLINED_FUNCTION_46_1();
      v49 = v5;
      *v1 = 136446466;
      *(v1 + 4) = OUTLINED_FUNCTION_75_2(v5, v6, &v49);
      OUTLINED_FUNCTION_74_0();
      *(v1 + 14) = sub_1B2519814(0xD000000000000027, 0x80000001B2593260, &v49);
      _os_log_impl(&dword_1B23EF000, v4, v3, "%{public}s%{public}s", v1, 0x16u);
      OUTLINED_FUNCTION_305_0();
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_44_1();
    }

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v0 + 152);
  if (*(*(v9 + 128) + 16))
  {
    v10 = *(v0 + 264);
    *(v0 + 104) = 0;
    *(v0 + 112) = 0xE000000000000000;
    sub_1B256E4FC();

    *(v0 + 88) = 0xD000000000000011;
    *(v0 + 96) = 0x80000001B2593290;
    *(v0 + 144) = *(*(v9 + 128) + 16);
    v11 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v11);

    MEMORY[0x1B2749D50](0xD00000000000001BLL, 0x80000001B25932B0);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = sub_1B256E0CC();

    sub_1B256D5CC();
    OUTLINED_FUNCTION_67_2();

    if (os_log_type_enabled((v9 + v10), v14))
    {
      OUTLINED_FUNCTION_21_3();
      v49 = OUTLINED_FUNCTION_126_1();
      MEMORY[0xD000000000000011] = 136446466;
      MEMORY[0xD000000000000015] = OUTLINED_FUNCTION_75_2(v49, v15, &v49);
      OUTLINED_FUNCTION_135_2();
      v16 = sub_1B2519814(v13, v12, &v49);

      MEMORY[0xD00000000000001F] = v16;
      OUTLINED_FUNCTION_277_0(&dword_1B23EF000, (v9 + v10), v14, "%{public}s%{public}s");
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_22_8();
    }

    else
    {
    }
  }

  v17 = *(*(v0 + 152) + 128) + 56;
  OUTLINED_FUNCTION_73_2();
  v20 = v19 & v18;
  OUTLINED_FUNCTION_231_0();
  v22 = v21 >> 6;

  v24 = 0;
  v48 = v23;
  if (v20)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v23);
    }

    if (v25 >= v22)
    {
      break;
    }

    v20 = *(v17 + 8 * v25);
    ++v24;
    if (v20)
    {
      v24 = v25;
      do
      {
LABEL_18:
        v26 = *(v48 + 48) + 24 * (__clz(__rbit64(v20)) | (v24 << 6));
        v27 = *v26;
        v28 = *(v26 + 8);
        if (*(v26 + 16))
        {
          OUTLINED_FUNCTION_50_5();

          v29 = sub_1B2458898(v27, v28);
          if (v30)
          {
            v31 = v29;
            v32 = *(v0 + 152);
            swift_isUniquelyReferenced_nonNull_native();
            v49 = *(v32 + 120);
            *(v32 + 120) = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0470);
            sub_1B256E80C();
            v33 = v49;
            OUTLINED_FUNCTION_397();
            sub_1B244ADF4(*(v33 + 56) + 16 * v31, v0 + 120);
            sub_1B24D0B38();
            OUTLINED_FUNCTION_333();
            sub_1B256E82C();
            *(v32 + 120) = v33;
          }

          else
          {
            *(v0 + 120) = xmmword_1B257CAF0;
          }

          sub_1B256615C(v0 + 120, &unk_1EB7D2CD0);
        }

        else
        {
          OUTLINED_FUNCTION_50_5();

          sub_1B2458898(v27, v28);
          if (v34)
          {
            v35 = *(v0 + 152);
            swift_isUniquelyReferenced_nonNull_native();
            v49 = *(v35 + 112);
            *(v35 + 112) = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
            sub_1B256E80C();
            v36 = v49;

            v37 = type metadata accessor for StoreProductManager.CachedProduct(0);
            OUTLINED_FUNCTION_7_0();
            OUTLINED_FUNCTION_2_40();
            sub_1B25636F8();
            sub_1B243A2E0();
            sub_1B256E82C();
            *(v35 + 112) = v36;

            OUTLINED_FUNCTION_188_1();
            v41 = v37;
          }

          else
          {
            type metadata accessor for StoreProductManager.CachedProduct(0);
            v38 = OUTLINED_FUNCTION_150_0();
          }

          __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
          sub_1B256615C(*(v0 + 160), &qword_1EB7CFEA0);
        }

        v20 &= v20 - 1;
        swift_endAccess();
        v23 = sub_1B24D0BE8();
      }

      while (v20);
    }
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 152);

  *(v43 + 128) = MEMORY[0x1E69E7CD0];

  sub_1B256615C(v42, &qword_1EB7D2B18);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 272) = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6D9C8](v23);
}

uint64_t sub_1B255D828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v4[4] = swift_task_alloc();
  sub_1B256DD6C();
  v4[5] = sub_1B256DD5C();
  v6 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B255D8F0, v6, v5);
}

uint64_t sub_1B255D8F0()
{
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_41_1();
  swift_storeEnumTagMultiPayload();
  sub_1B2545740();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B255D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1B256DD6C();
  *(v4 + 24) = sub_1B256DD5C();
  v6 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B255DA08, v6, v5);
}

void sub_1B255DA08()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B256E64C();
    v5 = sub_1B2564214();
    v7 = v6;
    v9 = v8;
    v10 = 0;
    v11 = v4 + 56;
    v32 = v4;
    v33 = v4 + 64;
    v12 = 1;
    v34 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v12 << *(v4 + 32))
      {
        v13 = v5 >> 6;
        v14 = v12 << v5;
        if ((*(v11 + 8 * (v5 >> 6)) & (v12 << v5)) == 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_32;
        }

        v35 = v10;

        sub_1B256E61C();
        sub_1B256E65C();
        OUTLINED_FUNCTION_136();
        sub_1B256E66C();
        sub_1B256E62C();
        if (v9)
        {
          goto LABEL_37;
        }

        v15 = 1 << *(v4 + 32);
        if (v5 >= v15)
        {
          goto LABEL_33;
        }

        if ((*(v11 + 8 * v13) & v14) == 0)
        {
          goto LABEL_34;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_411();
        if (v16)
        {
          v18 = v13 << 6;
          v17 = v34;
          v19 = (v33 + 8 * v13);
          v20 = v13 + 1;
          while (v20 < (v15 + 63) >> 6)
          {
            v22 = *v19++;
            v21 = v22;
            v18 += 64;
            ++v20;
            if (v22)
            {
              v23 = OUTLINED_FUNCTION_157_0();
              sub_1B25647E0(v23, v24, 0);
              v4 = v32;
              v12 = 1;
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_17;
            }
          }

          v25 = OUTLINED_FUNCTION_157_0();
          sub_1B25647E0(v25, v26, 0);
          v4 = v32;
          v12 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_410();
          v17 = v34;
        }

LABEL_17:
        v10 = v35 + 1;
        if (v35 + 1 == v17)
        {
          goto LABEL_20;
        }

        v9 = 0;
        v7 = *(v4 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_20:
    v3 = v36;
  }

  v27 = sub_1B24D0D24(v3);
  if (!v27)
  {
    goto LABEL_28;
  }

  v28 = v27;
  if (v27 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v30 = OUTLINED_FUNCTION_14_3();
        MEMORY[0x1B274A7A0](v30);
      }

      else
      {
      }

      sub_1B255DCA8();
    }

LABEL_28:

    OUTLINED_FUNCTION_7_2();

    v31();
    return;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1B255DCA8()
{
  v1 = type metadata accessor for Product();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v22 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v3 = *(v24 - 8);
  v4 = MEMORY[0x1EEE9AC00](v24);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v21 - v8);
  v10 = StoreProductManager.CollectionObserver.storage.getter();
  v11 = *(v10 + 16);
  if (v11)
  {
    v21[1] = v0;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B2455ED8();
    v12 = v25;
    v13 = *(v3 + 80);
    v21[0] = v10;
    v23 = (v13 + 32) & ~v13;
    v14 = v10 + v23;
    v15 = *(v3 + 72);
    v16 = v22;
    do
    {
      sub_1B255FE0C();
      sub_1B25636F8();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        sub_1B25636F8();
        v18 = *(v16 + 6);
        v17 = *(v16 + 7);

        sub_1B2563750();
      }

      else
      {
        v18 = *v6;
        v17 = v6[1];
      }

      *v9 = v18;
      v9[1] = v17;
      swift_storeEnumTagMultiPayload();
      v25 = v12;
      v19 = *(v12 + 16);
      if (v19 >= *(v12 + 24) >> 1)
      {
        sub_1B2455ED8();
        v16 = v22;
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      sub_1B25636F8();
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  return sub_1B255E970();
}

uint64_t sub_1B255DF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1B256DD6C();
  *(v4 + 24) = sub_1B256DD5C();
  v6 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B255E034, v6, v5);
}

uint64_t sub_1B255E034()
{
  OUTLINED_FUNCTION_21_5();

  sub_1B2546BD4();
  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t StoreProductManager.deinit()
{

  sub_1B2563750();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t StoreProductManager.__deallocating_deinit()
{
  StoreProductManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1B255E158()
{
  swift_defaultActor_initialize();
  type metadata accessor for StoreProductManager.CachedProduct(0);
  sub_1B243A2E0();
  v0[14] = sub_1B256D8AC();
  sub_1B24D0B38();
  v1 = sub_1B256D8AC();
  v2 = MEMORY[0x1E69E7CD0];
  v0[15] = v1;
  v0[16] = v2;
  v0[17] = v2;
  v0[18] = v2;
  sub_1B256D3CC();
  v0[20] = 0;
  v0[21] = 0;
  v0[19] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E48);
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v3, v4);
  OUTLINED_FUNCTION_41_1();
  v0[22] = sub_1B256D8AC();
  sub_1B256D5DC();
  return v0;
}

uint64_t StoreProductManager.SingleObserver.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_1();
  sub_1B256D64C();
}

uint64_t sub_1B255E358()
{
  v0 = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B255FE0C();
  return sub_1B2545740();
}

uint64_t sub_1B255E414()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E28);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00]();
  v1 = OUTLINED_FUNCTION_56_6(v0, v7);
  v2(v1);
  OUTLINED_FUNCTION_226();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D18);
  OUTLINED_FUNCTION_322_0(v3);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_41_1();
  return v5(v4);
}

uint64_t sub_1B255E500()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D18);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager14SingleObserver__state;
  swift_storeEnumTagMultiPayload();
  sub_1B255FE0C();
  sub_1B256D60C();
  sub_1B2563750();
  (*(v2 + 32))(v0 + v7, v4, v1);
  swift_storeEnumTagMultiPayload();
  sub_1B2545740();
  return v0;
}

uint64_t sub_1B255E6F8@<X0>(uint64_t *a1@<X8>)
{
  result = StoreProductManager.CollectionObserver.error.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B255E774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_108_3();
  v9 = OUTLINED_FUNCTION_41_0();
  v10(v9);
  return a7(v7);
}

uint64_t sub_1B255E82C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E20);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00]();
  v1 = OUTLINED_FUNCTION_56_6(v0, v7);
  v2(v1);
  OUTLINED_FUNCTION_226();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D20);
  OUTLINED_FUNCTION_322_0(v3);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_41_1();
  return v5(v4);
}

uint64_t sub_1B255E918@<X0>(uint64_t *a1@<X8>)
{
  result = StoreProductManager.CollectionObserver.storage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B255E970()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_496();
}

uint64_t sub_1B255E9EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E18);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00]();
  v1 = OUTLINED_FUNCTION_56_6(v0, v7);
  v2(v1);
  OUTLINED_FUNCTION_226();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D28);
  OUTLINED_FUNCTION_322_0(v3);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_41_1();
  return v5(v4);
}

uint64_t sub_1B255EAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D20);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager18CollectionObserver__error;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D90);
  sub_1B256D60C();
  (*(v12 + 32))(v4 + v15, v14, v11);
  v16 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager18CollectionObserver__storage;
  v22 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2DA0);
  sub_1B256D60C();
  (*(v8 + 32))(v4 + v16, v10, v7);
  StoreProductManager.CollectionObserver.error.getter();
  sub_1B254B9CC();
  v17 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  sub_1B247A0E4(sub_1B255ED5C, 0, a2, v17, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v18);
  sub_1B255E970();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1B255ED5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t StoreProductManager.CollectionObserver.deinit()
{
  v1 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager18CollectionObserver__error;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D20);
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager18CollectionObserver__storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D28);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t StoreProductManager.CollectionObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager18CollectionObserver__error;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D20);
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager18CollectionObserver__storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D28);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1B255EF30(uint64_t a1)
{
  v2 = type metadata accessor for Product();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  sub_1B255FE0C();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_1B25636F8();
    v11 = *(v4 + 6);
    v10 = *(v4 + 7);

    sub_1B2563750();
  }

  else
  {
    v11 = *v7;
    v10 = v7[1];
  }

  if (v8 == v11 && v9 == v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B256EB5C();
  }

  return v13 & 1;
}

uint64_t sub_1B255F0D0@<X0>(uint64_t *a1@<X8>)
{
  result = StoreProductManager.CollectionObserver.Storage.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StoreProductManager.SubscriptionGroupObserver.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_1();
  sub_1B256D64C();
}

uint64_t sub_1B255F16C@<X0>(uint64_t a1@<X8>)
{
  result = StoreProductManager.SubscriptionGroupObserver.state.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B255F214()
{
  OUTLINED_FUNCTION_50_5();
  v0 = OUTLINED_FUNCTION_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1B256D61C();
  return swift_endAccess();
}

uint64_t sub_1B255F280()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E10);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00]();
  v1 = OUTLINED_FUNCTION_56_6(v0, v7);
  v2(v1);
  OUTLINED_FUNCTION_226();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D38);
  OUTLINED_FUNCTION_322_0(v3);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_41_1();
  return v5(v4);
}

uint64_t sub_1B255F36C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2D38);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtCC8StoreKit19StoreProductManager25SubscriptionGroupObserver__state;
  v7 = 0;
  v8 = 2;
  sub_1B256D60C();
  (*(v2 + 32))(v0 + v5, v4, v1);
  v7 = 0;
  v8 = 2;
  sub_1B2546BD4();
  return v0;
}

uint64_t sub_1B255F494(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OUTLINED_FUNCTION_308_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 8))(v2 + v3);
  return v2;
}

uint64_t sub_1B255F500(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OUTLINED_FUNCTION_308_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 8))(v2 + v3);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 52);

  return MEMORY[0x1EEE6BDC0](v2, v6, v7);
}

uint64_t (*sub_1B255F58C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v2[8] = sub_1B255FD90(v2);
  sub_1B255F71C();
  v2[9] = v3;
  return sub_1B255F624;
}

uint64_t (*sub_1B255F628(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1B255FDC4(v6);
  v6[9] = sub_1B255FB0C(v6 + 4, a2, a3);
  return sub_1B25661E8;
}

void sub_1B255F6C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = OUTLINED_FUNCTION_212_0();
  v2(v3);

  free(v1);
}

void sub_1B255F71C()
{
  OUTLINED_FUNCTION_475();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_coroFrameAllocStub(0x68uLL);
  *v6 = v7;
  v7[1] = v2;
  v7[2] = v0;
  *v7 = v4;
  v8 = type metadata accessor for StoreProductManager.CachedProduct(0);
  v7[3] = v8;
  OUTLINED_FUNCTION_1_1();
  v7[4] = v9;
  v7[5] = OUTLINED_FUNCTION_401();
  v7[6] = OUTLINED_FUNCTION_401();
  v7[7] = OUTLINED_FUNCTION_401();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  OUTLINED_FUNCTION_2_2(v10);
  v7[8] = OUTLINED_FUNCTION_401();
  v7[9] = OUTLINED_FUNCTION_401();
  v11 = OUTLINED_FUNCTION_401();
  v7[10] = v11;
  v12 = OUTLINED_FUNCTION_132_0();
  sub_1B2458898(v12, v13);
  *(v7 + 96) = v14 & 1;
  OUTLINED_FUNCTION_25_11();
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v15;
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
  if (sub_1B256E80C())
  {
    v21 = OUTLINED_FUNCTION_132_0();
    v23 = sub_1B2458898(v21, v22);
    if ((v20 & 1) == (v24 & 1))
    {
      v19 = v23;
      goto LABEL_5;
    }

LABEL_10:
    sub_1B256EC9C();
    __break(1u);
    return;
  }

LABEL_5:
  v7[11] = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_2_40();
    sub_1B25636F8();
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v25, 1, v8);
  OUTLINED_FUNCTION_477();
}

void sub_1B255F90C()
{
  OUTLINED_FUNCTION_58();
  v1 = *v0;
  v2 = *(*v0 + 24);
  if (v3)
  {
    sub_1B24C5C14();
    v4 = OUTLINED_FUNCTION_164_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, v5, v2);
    v7 = *(v1 + 96);
    v8 = *(v1 + 64);
    if (EnumTagSinglePayload != 1)
    {
      v9 = *(v1 + 16);
      OUTLINED_FUNCTION_2_40();
      sub_1B25636F8();
      v10 = *v9;
      v11 = *(v1 + 88);
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v12 = *(v1 + 40);
        v14 = *v1;
        v13 = *(v1 + 8);
        OUTLINED_FUNCTION_2_40();
        sub_1B25636F8();
        sub_1B2449CF8(v11, v14, v13, v12, v10);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1B24C5C14();
    v15 = OUTLINED_FUNCTION_164_1();
    v17 = __swift_getEnumTagSinglePayload(v15, v16, v2);
    v7 = *(v1 + 96);
    v8 = *(v1 + 72);
    if (v17 != 1)
    {
      v18 = *(v1 + 16);
      OUTLINED_FUNCTION_2_40();
      sub_1B25636F8();
      v10 = *v18;
      v11 = *(v1 + 88);
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      OUTLINED_FUNCTION_2_40();
      sub_1B25636F8();
      goto LABEL_10;
    }
  }

  sub_1B256615C(v8, &qword_1EB7CFEA0);
  if (v7)
  {
    sub_1B243A28C(*(**(v1 + 16) + 48) + 16 * *(v1 + 88));
    sub_1B243A2E0();
    sub_1B256E82C();
  }

LABEL_10:
  v19 = *(v1 + 72);
  v20 = *(v1 + 80);
  v22 = *(v1 + 56);
  v21 = *(v1 + 64);
  v24 = *(v1 + 40);
  v23 = *(v1 + 48);
  sub_1B256615C(v20, &qword_1EB7CFEA0);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);
  OUTLINED_FUNCTION_51();

  free(v25);
}

void (*sub_1B255FB0C(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v8;
  v8[7] = a3;
  v8[8] = v3;
  v8[6] = a2;
  v9 = *v3;
  v10 = sub_1B2458898(a2, a3);
  *(v8 + 80) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0470);
  if (sub_1B256E80C())
  {
    v14 = sub_1B2458898(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[9] = v12;
  if (v13)
  {
    sub_1B244ADF4(*(*v4 + 56) + 16 * v12, v8);
  }

  else
  {
    *v8 = xmmword_1B257CAF0;
  }

  return sub_1B255FC58;
}

void sub_1B255FC58(uint64_t *a1)
{
  v1 = *a1;
  sub_1B24C5C14();
  v2 = *(v1 + 80);
  if (*(v1 + 32) == 1)
  {
    sub_1B256615C(v1 + 32, &unk_1EB7D2CD0);
    if (v2)
    {
      sub_1B2565A60(*(**(v1 + 64) + 48) + 16 * *(v1 + 72));
      sub_1B24D0B38();
      OUTLINED_FUNCTION_18_1();
      sub_1B256E82C();
    }
  }

  else
  {
    v3 = *(v1 + 64);
    sub_1B244ADF4(v1 + 32, v1 + 16);
    v4 = *v3;
    if (v2)
    {
      sub_1B244ADF4(v1 + 16, *(v4 + 56) + 16 * *(v1 + 72));
    }

    else
    {
      v5 = *(v1 + 56);
      sub_1B244ADF4(v1 + 16, v1 + 32);
      v6 = OUTLINED_FUNCTION_14_3();
      sub_1B2449D74(v6, v7, v5, v8, v4);
    }
  }

  sub_1B256615C(v1, &unk_1EB7D2CD0);

  free(v1);
}

uint64_t (*sub_1B255FD90(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B255FDB8;
}

uint64_t (*sub_1B255FDC4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B25661BC;
}

uint64_t sub_1B255FE0C()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B255FE64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B2580A90;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1B255FEC8()
{
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_444();
  v5 = *v1;
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_131_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    OUTLINED_FUNCTION_155_1();
    if (((1 << v9) & v10) == 0)
    {
      break;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == v4 && v11[1] == v2;
    if (v12 || (sub_1B256EB5C() & 1) != 0)
    {

      v13 = (*(v5 + 48) + 16 * v9);
      v14 = v13[1];
      *v0 = *v13;
      v0[1] = v14;

      goto LABEL_11;
    }

    v6 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  v16 = OUTLINED_FUNCTION_28_1();
  sub_1B256126C(v16, v17, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *v0 = v4;
  v0[1] = v2;
LABEL_11:
  OUTLINED_FUNCTION_188_0();
}

void sub_1B255FFE4()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v29 = v3;
  v4 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v28 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v12, v13);
  sub_1B256D8EC();
  v30 = v11;
  v31 = v11 + 56;
  OUTLINED_FUNCTION_131_2();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    OUTLINED_FUNCTION_378();
    if (((1 << v17) & *(v31 + v18)) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v2, v4);
      v32 = *v28;
      v26 = OUTLINED_FUNCTION_29_1();
      sub_1B25613D4(v26, v27, isUniquelyReferenced_nonNull_native);
      *v28 = v32;
      (*(v6 + 32))(v29, v2, v4);
      goto LABEL_7;
    }

    v19 = *(v6 + 72) * v17;
    v20 = *(v6 + 16);
    v20(v10, *(v30 + 48) + v19, v4);
    OUTLINED_FUNCTION_7_30();
    sub_1B2565104(&qword_1EB7D0630, v21);
    v22 = sub_1B256D96C();
    v23 = *(v6 + 8);
    v24 = OUTLINED_FUNCTION_157_0();
    v23(v24);
    if (v22)
    {
      break;
    }

    v14 = v17 + 1;
  }

  (v23)(v2, v4);
  v20(v29, *(v30 + 48) + v19, v4);
LABEL_7:
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B2560258(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v4;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a4 & 1);
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_341();
  if (((*(v9 + 56 + v11) >> v5) & 1) == 0)
  {
LABEL_13:
    v17 = a4 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;
    OUTLINED_FUNCTION_41_0();
    sub_1B24D0BE0();
    v19 = OUTLINED_FUNCTION_41_0();
    sub_1B2561660(v19, v20, v17, v5, isUniquelyReferenced_nonNull_native);
    *v25 = v27;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v17;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v9 + 48);
  while (1)
  {
    v14 = v13 + 24 * v5;
    if ((*(v14 + 16) & 1) == 0)
    {
      break;
    }

    if (a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    v5 = (v5 + 1) & v12;
    OUTLINED_FUNCTION_378();
    if (((*(v9 + 56 + v16) >> v5) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (a4)
  {
    goto LABEL_12;
  }

LABEL_7:
  v15 = *v14 == a2 && *(v14 + 8) == a3;
  if (!v15 && (sub_1B256EB5C() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_41_0();
  sub_1B24D0BE8();
  v22 = *(v9 + 48) + 24 * v5;
  v23 = *(v22 + 8);
  v24 = *(v22 + 16);
  *a1 = *v22;
  *(a1 + 8) = v23;
  *(a1 + 16) = v24;
  sub_1B24D0BE0();
  return 0;
}

BOOL sub_1B25603E8(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a2);
  v6 = sub_1B256ED7C();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;

      sub_1B256181C(v11, v8, isUniquelyReferenced_nonNull_native);
      *v2 = v13;
      *a1 = a2;
      return v9 == 0;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      break;
    }

    v6 = v8 + 1;
  }

  *a1 = *(*(v5 + 48) + 8 * v8);

  return v9 == 0;
}

BOOL sub_1B2560518()
{
  OUTLINED_FUNCTION_444();
  v5 = *v1;
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_131_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    OUTLINED_FUNCTION_155_1();
    v11 = (1 << v9) & v10;
    if (!v11)
    {
      break;
    }

    v12 = (*(v5 + 48) + 16 * v9);
    v13 = *v12 == v4 && v12[1] == v2;
    if (v13 || (sub_1B256EB5C() & 1) != 0)
    {

      v14 = (*(v5 + 48) + 16 * v9);
      v15 = v14[1];
      *v0 = *v14;
      v0[1] = v15;

      return v11 == 0;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  v16 = OUTLINED_FUNCTION_28_1();
  sub_1B2561960(v16, v17, v9);
  *v3 = v19;
  *v0 = v4;
  v0[1] = v2;
  return v11 == 0;
}

uint64_t sub_1B256065C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AF8);
  result = sub_1B256E49C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1B255FE64(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1B256ED3C();
    sub_1B256DA7C();
    result = sub_1B256ED7C();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B25608B8()
{
  v1 = v0;
  v35 = sub_1B256D3CC();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E08);
  result = sub_1B256E49C();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1B255FE64(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_1B2565104(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
    result = sub_1B256D8EC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B2560C10()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EC8);
  result = sub_1B256E49C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_1B255FE64(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](v18);
    sub_1B256DA7C();
    result = sub_1B256ED7C();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v4 + 48) + 24 * v22;
    *v27 = v16;
    *(v27 + 8) = v17;
    *(v27 + 16) = v18;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B2560E8C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B08);
  result = sub_1B256E49C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1B255FE64(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](v15);
    result = sub_1B256ED7C();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1B25610D8()
{
  OUTLINED_FUNCTION_187_0();
  v3 = *v0;
  v6 = OUTLINED_FUNCTION_308_0(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_117_0();
  v7 = sub_1B256E49C();
  if (!*(v3 + 16))
  {
LABEL_24:

    *v0 = v7;
    OUTLINED_FUNCTION_188_0();
    return;
  }

  v8 = 0;
  v9 = (v3 + 56);
  OUTLINED_FUNCTION_218();
  if (!v2)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v8 >= v1)
      {
        break;
      }

      ++v11;
      if (v9[v8])
      {
        OUTLINED_FUNCTION_83();
        v2 = v13 & v12;
        goto LABEL_9;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      sub_1B255FE64(0, (v24 + 63) >> 6, v3 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_131_2();
      *v9 = v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_110_3();
LABEL_9:
    v14 = (*(v3 + 48) + 16 * (v10 | (v8 << 6)));
    v15 = *v14;
    v16 = v14[1];
    sub_1B256ED3C();
    OUTLINED_FUNCTION_34_1();
    sub_1B256DA7C();
    sub_1B256ED7C();
    OUTLINED_FUNCTION_259_0();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_442();
LABEL_18:
    OUTLINED_FUNCTION_235(v18);
    *v23 = v15;
    v23[1] = v16;
    ++*(v7 + 16);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_441();
  while (++v19 != v21 || (v20 & 1) == 0)
  {
    v22 = v19 == v21;
    if (v19 == v21)
    {
      v19 = 0;
    }

    v20 |= v22;
    if (v0[v19] != -1)
    {
      OUTLINED_FUNCTION_440();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1B256126C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B256065C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B2562224();
LABEL_10:
      v15 = *v4;
      sub_1B256ED3C();
      sub_1B256DA7C();
      result = sub_1B256ED7C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1B256EB5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B2561AB8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B256EC8C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1B25613D4(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1B256D3CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B25608B8();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1B2562458();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1B2565104(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
      v13 = sub_1B256D8EC();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1B2565104(&qword_1EB7D0630, MEMORY[0x1E69695A8]);
        v15 = sub_1B256D96C();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1B2561C10();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1B256EC8C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1B2561660(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1B2560C10();
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_1B2561E44();
        goto LABEL_20;
      }

      sub_1B2562770();
    }

    v13 = *v5;
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](a3 & 1);
    sub_1B256DA7C();
    result = sub_1B256ED7C();
    v14 = v13 + 56;
    v15 = -1 << *(v13 + 32);
    a4 = result & ~v15;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v16 = ~v15;
      v17 = *(v13 + 48);
      do
      {
        v18 = v17 + 24 * a4;
        result = *v18;
        if (*(v18 + 16))
        {
          if ((a3 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if (a3)
        {
          goto LABEL_19;
        }

        if (result == v10 && *(v18 + 8) == a2)
        {
          goto LABEL_23;
        }

        result = sub_1B256EB5C();
        if (result)
        {
          goto LABEL_23;
        }

LABEL_19:
        a4 = (a4 + 1) & v16;
      }

      while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_20:
  v20 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = v10;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3 & 1;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_23:
    result = sub_1B256EC8C();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1B256181C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B2560E8C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1B25629F4();
LABEL_10:
      v12 = *v3;
      sub_1B256ED3C();
      MEMORY[0x1B274AFC0](v5);
      result = sub_1B256ED7C();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1B2561FA8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E30);
    result = sub_1B256EC8C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1B2561960(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_469();
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (v7 & 1) == 0)
  {
    if (v7)
    {
      OUTLINED_FUNCTION_422(v8);
      sub_1B25610D8();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      OUTLINED_FUNCTION_422(v8);
      sub_1B2562C18();
LABEL_10:
      v15 = *v4;
      sub_1B256ED3C();
      sub_1B256DA7C();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_131_2();
      v18 = ~v17;
      while (1)
      {
        a3 = v16 & v18;
        OUTLINED_FUNCTION_155_1();
        if (((v19 >> a3) & 1) == 0)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_280_0(*(v15 + 48) + 16 * a3);
        v21 = v21 && v20 == v3;
        if (v21 || (sub_1B256EB5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1B25620F8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v5;
  v11[1] = v3;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1B256EC8C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void *sub_1B2561AB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AF8);
  v2 = *v0;
  v3 = sub_1B256E48C();
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
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B2561C10()
{
  v1 = v0;
  v2 = sub_1B256D3CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E08);
  v6 = *v0;
  v7 = sub_1B256E48C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_1B2561E44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EC8);
  v2 = *v0;
  v3 = sub_1B256E48C();
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
    v10 = *(v2 + 56);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v4 + 48) + 8 * v17;
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v20;
        result = sub_1B24D0BE0();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1B2561FA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B08);
  v2 = *v0;
  v3 = sub_1B256E48C();
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
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1B25620F8()
{
  OUTLINED_FUNCTION_58();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  v3 = *v0;
  v4 = sub_1B256E48C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 56 + 8 * v7)
    {
      memmove(v6, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_412();
LABEL_17:
        v19 = v15 | (v9 << 6);
        v20 = (*(v3 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v5 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      ++v16;
      if (*(v3 + 56 + 8 * v9))
      {
        OUTLINED_FUNCTION_83();
        v13 = v18 & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
    OUTLINED_FUNCTION_51();
  }
}

uint64_t sub_1B2562224()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AF8);
  result = sub_1B256E49C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1B256ED3C();

        sub_1B256DA7C();
        result = sub_1B256ED7C();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B2562458()
{
  v1 = v0;
  v32 = sub_1B256D3CC();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E08);
  v6 = sub_1B256E49C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_1B2565104(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
        result = sub_1B256D8EC();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B2562770()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EC8);
  result = sub_1B256E49C();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v2 + 48) + 24 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        sub_1B256ED3C();
        MEMORY[0x1B274AFC0](v18);

        sub_1B256DA7C();
        result = sub_1B256ED7C();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v4 + 48) + 24 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        *(v27 + 16) = v18;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B25629F4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B08);
  result = sub_1B256E49C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        sub_1B256ED3C();
        MEMORY[0x1B274AFC0](v14);
        result = sub_1B256ED7C();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_1B2562C18()
{
  OUTLINED_FUNCTION_187_0();
  v3 = *v0;
  v6 = OUTLINED_FUNCTION_308_0(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_117_0();
  v7 = sub_1B256E49C();
  if (*(v3 + 16))
  {
    v8 = 0;
    OUTLINED_FUNCTION_218();
    if (v2)
    {
      while (1)
      {
        OUTLINED_FUNCTION_110_3();
LABEL_9:
        v13 = (*(v3 + 48) + 16 * (v9 | (v8 << 6)));
        v14 = *v13;
        v15 = v13[1];
        sub_1B256ED3C();

        OUTLINED_FUNCTION_251_0();
        sub_1B256DA7C();
        sub_1B256ED7C();
        OUTLINED_FUNCTION_259_0();
        if (v16)
        {
          break;
        }

        OUTLINED_FUNCTION_442();
LABEL_18:
        OUTLINED_FUNCTION_235(v17);
        *v22 = v14;
        v22[1] = v15;
        ++*(v7 + 16);
        if (!v2)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_441();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (v0[v18] != -1)
        {
          OUTLINED_FUNCTION_440();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v10 = v8;
      while (1)
      {
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v8 >= v1)
        {
          goto LABEL_20;
        }

        ++v10;
        if (*(v3 + 56 + 8 * v8))
        {
          OUTLINED_FUNCTION_83();
          v2 = v12 & v11;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v0 = v7;
    OUTLINED_FUNCTION_188_0();
  }
}

uint64_t sub_1B2562DAC()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_279();
  v3 = sub_1B24555E0(v2);
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v1;
    v6 = OUTLINED_FUNCTION_132_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6);
    OUTLINED_FUNCTION_492();
    v7 = *(v23 + 48);
    v8 = sub_1B256D3CC();
    OUTLINED_FUNCTION_7_0();
    (*(v9 + 8))(v7 + *(v9 + 72) * v5, v8);
    v10 = *(v23 + 56);
    v11 = OUTLINED_FUNCTION_35_0();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 32))(v0, v10 + *(v13 + 72) * v5, v12);
    OUTLINED_FUNCTION_7_30();
    sub_1B2565104(v14, v15);
    sub_1B256E82C();
    *v1 = v23;
    OUTLINED_FUNCTION_188_1();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_35_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_11_16();
  }

  OUTLINED_FUNCTION_477();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_1B2562EF8()
{
  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_279();
  v3 = sub_1B2455674(v2);
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v1;
    v6 = OUTLINED_FUNCTION_132_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6);
    OUTLINED_FUNCTION_492();
    sub_1B245856C(*(v18 + 48) + 40 * v5);
    v7 = *(v18 + 56);
    v8 = OUTLINED_FUNCTION_35_0();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
    OUTLINED_FUNCTION_7_0();
    (*(v10 + 32))(v0, v7 + *(v10 + 72) * v5, v9);
    sub_1B256E82C();
    *v1 = v18;
    OUTLINED_FUNCTION_188_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_35_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    OUTLINED_FUNCTION_11_16();
  }

  OUTLINED_FUNCTION_477();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1B2562FFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B2455488();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0408);
    sub_1B256E80C();

    v6 = *(v12 + 56);
    v7 = sub_1B256D47C();
    (*(*(v7 - 8) + 32))(a1, v6 + *(*(v7 - 8) + 72) * v5, v7);
    sub_1B256E82C();
    *v1 = v12;
    v8 = a1;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = sub_1B256D47C();
    v8 = a1;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_1B2563144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B2458898(a1, a2);
  if (v5)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
    sub_1B256E80C();

    v6 = type metadata accessor for StoreProductManager.CachedProduct(0);
    sub_1B25636F8();
    sub_1B243A2E0();
    sub_1B256E82C();
    *v3 = v11;
    v7 = a3;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for StoreProductManager.CachedProduct(0);
    v7 = a3;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

double sub_1B256328C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1B2458898(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0470);
    sub_1B256E80C();

    sub_1B244ADF4(*(v9 + 56) + 16 * v7, a3);
    sub_1B24D0B38();
    sub_1B256E82C();
    *v3 = v9;
  }

  else
  {
    *&result = 1;
    *a3 = xmmword_1B257CAF0;
  }

  return result;
}

uint64_t sub_1B2563374(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B24555E0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0440);
  sub_1B256E80C();
  v6 = *(v10 + 48);
  v7 = sub_1B256D3CC();
  (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E48);
  sub_1B2565104(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  sub_1B256E82C();
  *v2 = v10;
  return v8;
}

void *sub_1B25634C0(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1B256353C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a3 & 1);
  sub_1B256DA7C();
  v9 = sub_1B256ED7C();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  v12 = v9 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  v14 = *(v8 + 48);
  while (1)
  {
    v15 = v14 + 24 * v12;
    if ((*(v15 + 16) & 1) == 0)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_7;
    }

LABEL_12:
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  v16 = *v15 == a1 && *(v15 + 8) == a2;
  if (!v16 && (sub_1B256EB5C() & 1) == 0)
  {
    goto LABEL_12;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v4;
  v21 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B2561E44();
    v19 = v21;
  }

  v17 = *(*(v19 + 48) + 24 * v12);
  sub_1B25637A0(v12);
  *v4 = v21;
  return v17;
}

uint64_t sub_1B25636F8()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B2563750()
{
  v1 = OUTLINED_FUNCTION_105_2();
  v2(v1);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1B25637A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B256E42C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v27 = v4;
      do
      {
        v10 = v3;
        v11 = v2;
        v12 = *(*(v3 + 48) + 24 * v6 + 16);
        v13 = v9;
        sub_1B256ED3C();
        MEMORY[0x1B274AFC0](v12);

        sub_1B256DA7C();
        v14 = sub_1B256ED7C();
        v2 = v11;
        sub_1B24D0BE8();
        v9 = v13;
        v15 = v14 & v7;
        if (v11 >= v13)
        {
          if (v15 >= v13 && v11 >= v15)
          {
LABEL_9:
            v3 = v10;
            v17 = *(v10 + 48);
            v18 = v17 + 24 * v11;
            v19 = (v17 + 24 * v6);
            v21 = 24 * v11 >= (24 * v6) && v18 < v19 + 24 && v11 == v6;
            v4 = v27;
            if (!v21)
            {
              v22 = *v19;
              *(v18 + 16) = *(v19 + 2);
              *v18 = v22;
              v2 = v6;
            }

            goto LABEL_23;
          }
        }

        else if (v15 >= v13 || v11 >= v15)
        {
          goto LABEL_9;
        }

        v4 = v27;
        v3 = v10;
LABEL_23:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B25639BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16))
  {
    sub_1B2564554(a2, a3, v20, result);
    v4 = v20[1];
    v5 = v20[3];
    v6 = v20[4];
    v15 = v20[5];
    v16 = v20[0];
    v7 = (v20[2] + 64) >> 6;

    {
      v8 = v5;
LABEL_9:
      v10 = (*(v16 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v11 = v10[1];
      v6 &= v6 - 1;
      v19[0] = *v10;
      v19[1] = v11;

      v15(v17, v19);

      v12 = sub_1B256353C(v17[0], v17[1], v18);
      sub_1B2565C58(v12, v13, v14);
    }

    v9 = v5;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v7)
      {
        break;
      }

      v6 = *(v4 + 8 * v8);
      ++v9;
      if (v6)
      {
        v5 = v8;
        goto LABEL_9;
      }
    }

    sub_1B23FB6C4();
  }

  return result;
}

uint64_t sub_1B2563B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1B2563BF4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = a1;
  (*(a4 + 40))(&v6, &v7);
  a2(&v8, &v6);

  return v8;
}

uint64_t sub_1B2563C78(uint64_t result)
{
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2563C84(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(isStackAllocationSafe + 16);
  v12[0] = *isStackAllocationSafe;
  v12[1] = v4;
  v12[2] = *(isStackAllocationSafe + 32);
  v13 = *(isStackAllocationSafe + 48);
  v5 = *(a2 + 32);
  v14 = v12;
  v15 = a2;
  v6 = ((1 << v5) + 63) >> 6;
  if (v5 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v7 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B255FE64(0, v6, v7);
    v8 = sub_1B2563E38(v7, v6, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_1B25634C0(v10, v6, sub_1B2565168);

    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  return v8;
}

uint64_t sub_1B2563E38(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v22 = a3[3];
  v23 = a3[1];
  v21 = a3[5];
  v31 = *a3;
  v5 = *(v31 + 16);
  sub_1B24C5C14();

  v19 = 0;
  v7 = 0;
LABEL_2:
  for (i = v7; ; i = v7)
  {
LABEL_3:
    if (i == v5)
    {
      v24 = 0;
      v7 = v5;
      goto LABEL_7;
    }

    if (i >= v5)
    {
      break;
    }

    result = sub_1B24C5C14();
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_21;
    }

LABEL_7:
    v25 = i == v5;
    sub_1B24C42F0();
    if (v29)
    {
      goto LABEL_19;
    }

    sub_1B24C42F0();
    v23(&v26, v27);
    sub_1B256615C(v27, &qword_1EB7D0460);
    v9 = v26;
    v30 = v26;
    if (v22(&v30))
    {
      v24 = v9;
      v21(&v28, &v24);

      v10 = v28;
      sub_1B256ED3C();
      MEMORY[0x1B274AFC0](v10);
      v11 = sub_1B256ED7C();
      v12 = ~(-1 << *(a4 + 32));
      do
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = 1 << (v11 & v12);
        if ((v15 & *(a4 + 56 + 8 * v14)) == 0)
        {

          goto LABEL_2;
        }

        v11 = v13 + 1;
      }

      while (*(*(a4 + 48) + 8 * v13) != v10);

      v16 = a1[v14];
      a1[v14] = v16 | v15;
      i = v7;
      if ((v16 & v15) != 0)
      {
        goto LABEL_3;
      }

      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_19:
        sub_1B256615C(&v31, &unk_1EB7D2E38);

        return sub_1B24D071C(a1, a2, v19, a4);
      }

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B2564100(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B2563B5C(result, 1, sub_1B2448D30);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Product();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1B2564254()
{
  OUTLINED_FUNCTION_58();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_470();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B2563B5C(v4 - v8, 1, sub_1B24490B0);
  v10 = *v1;
  v11 = *v1 + 32;
  v12 = (v11 + 32 * v7);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v10;
    OUTLINED_FUNCTION_51();
    return;
  }

  v13 = *(v10 + 16);
  if (__OFSUB__(v13, v0))
  {
    goto LABEL_16;
  }

  sub_1B2455208((v11 + 32 * v0), v13 - v0, v12);
  v14 = *(v10 + 16);
  v6 = __OFADD__(v14, v9);
  v15 = v14 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1B2564330()
{
  OUTLINED_FUNCTION_58();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_470();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B2563B5C(v4 - v8, 1, sub_1B2449194);
  v10 = *v1;
  type metadata accessor for TrustStore.CacheValue(0);
  OUTLINED_FUNCTION_432();
  v12 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v13 + 72);
  v15 = v12 + v14 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v10;
    OUTLINED_FUNCTION_51();
    return;
  }

  v16 = *(v10 + 16);
  if (__OFSUB__(v16, v0))
  {
    goto LABEL_16;
  }

  sub_1B24552B0(v12 + v14 * v0, v16 - v0, v15);
  v17 = *(v10 + 16);
  v6 = __OFADD__(v17, v9);
  v18 = v17 - v8;
  if (!v6)
  {
    *(v10 + 16) = v18;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1B2564454(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = a1 - a2;
  if (__OFSUB__(0, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B2563B5C(v4 - v5, 1, sub_1B24495A0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0460);
  swift_arrayDestroy();
  if (!v5)
  {
LABEL_10:
    *v2 = v7;
    return;
  }

  if (__OFSUB__(*(v7 + 16), a2))
  {
    goto LABEL_16;
  }

  sub_1B2455308();
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, v6);
  v10 = v8 - v5;
  if (!v9)
  {
    *(v7 + 16) = v10;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1B2564554(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X0>)
{
  v4 = -1 << *(a4 + 32);
  *a3 = a4;
  a3[1] = a4 + 56;
  a3[2] = ~v4;
  OUTLINED_FUNCTION_300_0(a1, a2, a3);
}

uint64_t sub_1B2564584@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = *(a3 + 32);
  v10 = *(a3 + 48);
  result = sub_1B2563E38(a1, a2, v9, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B25645D4@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v9[2] = *(a4 + 32);
  v10 = *(a4 + 48);
  result = sub_1B2563BF4(v6, a2, a3, v9);
  *a5 = result;
  return result;
}

uint64_t sub_1B256462C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B2563C78(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B2564658()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_166_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_5(v1);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_42_4();

  return sub_1B25494C8(v3, v4, v5, v6, v7);
}

uint64_t sub_1B256472C()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_166_2();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_8(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_45_5(v4);
  OUTLINED_FUNCTION_174_1();

  return sub_1B2549BEC(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_1B25647E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B256482C()
{
  result = sub_1B256D5EC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B256493C()
{
  if (!qword_1EB7D2D60)
  {
    type metadata accessor for StoreProductManager.SingleObserver.Storage(255);
    v0 = sub_1B256D66C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D2D60);
    }
  }
}

unint64_t sub_1B2564994()
{
  result = sub_1B2519EF4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Product();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B2564A10()
{
  sub_1B2564F98(319, &qword_1EB7D2D88, &qword_1EB7D2D90, &unk_1B2587618, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1B2564F98(319, &qword_1EB7D2D98, &qword_1EB7D2DA0, &unk_1B2587620, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B2564B48()
{
  result = type metadata accessor for Product();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B2564BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B2564C80()
{
  if (!qword_1EB7D2DC8)
  {
    v0 = sub_1B256D66C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D2DC8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8StoreKit0A14ProductManagerC25SubscriptionGroupObserverC7StorageO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1B2564CEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2564D2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B2564D70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1B2564DA8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2564DFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

void sub_1B2564EB0()
{
  sub_1B2564F98(319, &qword_1EB7D2DE0, &qword_1EB7D2CC0, &unk_1B2587238, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B2564F98(319, &qword_1EB7D2DE8, &qword_1EB7D0460, &unk_1B2579058, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B2564F98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B2565000()
{
  result = qword_1EB7D2DF0;
  if (!qword_1EB7D2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2DF0);
  }

  return result;
}

unint64_t sub_1B2565058()
{
  result = qword_1EB7D2DF8;
  if (!qword_1EB7D2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2DF8);
  }

  return result;
}

unint64_t sub_1B25650B0()
{
  result = qword_1EB7D2E00;
  if (!qword_1EB7D2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2E00);
  }

  return result;
}

uint64_t sub_1B2565104(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B256514C(id result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B2565184()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_45_5(v2);

  return sub_1B2557364(v4, v5, v6, v0);
}

uint64_t sub_1B2565214()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_166_2();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_45_5(v3);
  OUTLINED_FUNCTION_174_1();

  return sub_1B254CA58(v5, v6, v7, v8, v9, v10, v1);
}

uint64_t sub_1B25652CC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_105_2();
  v0 = sub_1B256D3CC();
  OUTLINED_FUNCTION_2_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_12_25();
  OUTLINED_FUNCTION_115();

  return sub_1B254D5AC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B25653F8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_21(v3);

  return sub_1B2557C18(v5, v6, v1);
}

uint64_t sub_1B2565490()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_16_21(v3);

  return sub_1B2557DF8(v5, v6, v1);
}

uint64_t sub_1B2565528()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_166_2();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12_8(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_45_5(v5);

  return sub_1B2559C40(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1B25655D0()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_166_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_5(v1);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_42_4();

  return sub_1B2559B2C(v3, v4, v5, v6, v7);
}

uint64_t sub_1B2565664()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  v3 = OUTLINED_FUNCTION_11_10();

  return v4(v3);
}

uint64_t sub_1B2565708()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_166_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_5(v1);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_42_4();

  return sub_1B25599D4(v3, v4, v5, v6, v7);
}

uint64_t sub_1B25657A8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_166_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  OUTLINED_FUNCTION_12_25();
  OUTLINED_FUNCTION_115();

  return sub_1B2558F3C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_4()
{
  OUTLINED_FUNCTION_469();
  swift_unknownObjectRelease();
  v2(*(v1 + 32));
  v0(*(v1 + 40));
  OUTLINED_FUNCTION_187_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B25658C8()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_166_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_5(v1);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_42_4();

  return sub_1B2559370(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_112Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B25659A0()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_166_2();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_45_5(v3);
  OUTLINED_FUNCTION_174_1();

  return sub_1B2559488(v5, v6, v7, v8, v9, v10, v1);
}

uint64_t sub_1B2565A90()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_45_5(v2);

  return sub_1B2558DF4(v4, v5, v6, v0);
}

uint64_t sub_1B2565B20()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_105_2();
  v0 = type metadata accessor for Product();
  OUTLINED_FUNCTION_2_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v2[1] = sub_1B24741E0;
  v4 = OUTLINED_FUNCTION_12_25();

  return sub_1B255885C(v4, v5, v6, v7, v8);
}

uint64_t sub_1B2565BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2565C58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B24D0BE8();
  }

  return result;
}

uint64_t sub_1B2565C90()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_45_5(v2);

  return sub_1B255CC48(v4, v5, v6, v0);
}

unint64_t sub_1B2565D20()
{
  result = qword_1EB7D2B30;
  if (!qword_1EB7D2B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7D2B30);
  }

  return result;
}

uint64_t sub_1B2565D64()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_166_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_5(v1);
  OUTLINED_FUNCTION_42_4();

  return sub_1B255A384(v3, v4, v5, v6, v7);
}

uint64_t sub_1B2565E00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_308_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B2565E44()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_166_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45_5(v1);
  OUTLINED_FUNCTION_42_4();

  return sub_1B255AEA0(v3, v4, v5, v6, v7);
}

uint64_t sub_1B2565EE0()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_45_5(v2);

  return sub_1B255D970(v4, v5, v6, v0);
}

uint64_t sub_1B2565F70()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_45_5(v2);

  return sub_1B255DF9C(v4, v5, v6, v0);
}

uint64_t objectdestroy_107Tm()
{
  OUTLINED_FUNCTION_469();
  swift_unknownObjectRelease();
  v1(*(v0 + 32));
  v2 = OUTLINED_FUNCTION_38_7();

  return MEMORY[0x1EEE6BDD0](v2, v3, 7);
}

uint64_t sub_1B2566054()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_38_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_45_5(v2);

  return sub_1B255D828(v4, v5, v6, v0);
}

uint64_t sub_1B25660E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0460);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B256615C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_308_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 88) = 91;
  *(v1 - 80) = 0xE100000000000000;
  return result;
}

void OUTLINED_FUNCTION_13_19(float a1)
{
  *v1 = a1;
  *(v2 - 160) = 91;
  *(v2 - 152) = 0xE100000000000000;
}

__n128 OUTLINED_FUNCTION_20_17(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  a1[2].n128_u64[0] = sub_1B25661DC;
  a1[2].n128_u64[1] = v13;
  return result;
}

__n128 OUTLINED_FUNCTION_22_12(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  a1[2].n128_u64[0] = sub_1B25661DC;
  a1[2].n128_u64[1] = v13;
  return result;
}

__n128 *OUTLINED_FUNCTION_23_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_1B25661DC;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t result)
{
  *(result + 16) = sub_1B25661D4;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_13(uint64_t result)
{
  *(result + 16) = sub_1B25661D0;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t result)
{
  *(result + 64) = sub_1B25661B0;
  *(result + 72) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_10(uint64_t result)
{
  *(result + 16) = sub_1B25661CC;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_11(uint64_t result)
{
  *(result + 16) = sub_1B25661CC;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_9(uint64_t result)
{
  *(result + 16) = sub_1B25661D0;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_9(uint64_t result)
{
  *(result + 16) = sub_1B25661CC;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_9(uint64_t result)
{
  *(result + 16) = sub_1B25661CC;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t result)
{
  *(result + 16) = sub_1B25661D4;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_7(uint64_t result)
{
  *(result + 16) = sub_1B25661CC;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t result)
{
  *(result + 16) = sub_1B25661D0;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_9(uint64_t result)
{
  *(result + 16) = sub_1B25661D4;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t result)
{
  *(result + 80) = sub_1B25661DC;
  *(result + 88) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_6(uint64_t result)
{
  *(result + 64) = sub_1B25661B0;
  *(result + 72) = v1;
  return result;
}

void OUTLINED_FUNCTION_44_8(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[3] = a2;
  a1[4] = v3;
  a1[5] = v2;
  a1[6] = v4;

  sub_1B247DAA8();
}

uint64_t OUTLINED_FUNCTION_45_6(uint64_t a1)
{
  *(a1 + 16) = sub_1B25661CC;
  *(a1 + 24) = v1;

  return swift_allocObject();
}

__n128 *OUTLINED_FUNCTION_66_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_1B25661DC;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1B256DD6C();
}

uint64_t OUTLINED_FUNCTION_85_1(uint64_t result)
{
  *(result + 16) = sub_1B25661CC;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_1(uint64_t result)
{
  *(result + 16) = sub_1B25661D4;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_2(uint64_t result)
{
  *(result + 16) = sub_1B25661D0;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_93_3()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_95_5()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;
  return 0xD000000000000033;
}

uint64_t OUTLINED_FUNCTION_99_5(uint64_t a1)
{
  *(a1 + 16) = sub_1B25661CC;
  *(a1 + 24) = v1;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_102_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_1B256DD6C();
}

void OUTLINED_FUNCTION_113_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_116_2()
{
  *(v1 - 112) = *(v0 + 2584);

  return sub_1B251954C(38);
}

uint64_t OUTLINED_FUNCTION_126_1()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_127_1()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);

  return sub_1B2519814(v2, v3, (v0 - 88));
}

unint64_t OUTLINED_FUNCTION_141_1()
{
  v2 = *(v1 - 152);
  *(v0 + 2200) = *(v1 - 160);
  *(v0 + 2208) = v2;
  return 0xD000000000000027;
}

uint64_t OUTLINED_FUNCTION_148_0(uint64_t result)
{
  *(result + 16) = 0xD000000000000033;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_153_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_154_0()
{
}

uint64_t OUTLINED_FUNCTION_159_2()
{
}

uint64_t OUTLINED_FUNCTION_162_2()
{
}

void OUTLINED_FUNCTION_189_0()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_191_0(uint64_t result)
{
  *(result + 16) = sub_1B25661CC;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_195_1(uint64_t result)
{
  *(result + 64) = sub_1B25661B0;
  *(result + 72) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_197_1(uint64_t result)
{
  *(result + 16) = sub_1B25661D0;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_202_1()
{
  *(v0 + 272) = v1;

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_219_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_221_0()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_222_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_223_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_224_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_226()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_228_0()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 176);

  return sub_1B2519814(v2, v3, (v0 - 112));
}

__n128 OUTLINED_FUNCTION_229_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  *v21 = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_232_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_236()
{

  JUMPOUT(0x1B274BFF0);
}

uint64_t OUTLINED_FUNCTION_237()
{
}

uint64_t OUTLINED_FUNCTION_238_0()
{

  return sub_1B24D0BE0();
}

uint64_t OUTLINED_FUNCTION_243_0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

__n128 OUTLINED_FUNCTION_245_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  result = a23;
  *v23 = a23;
  return result;
}

void OUTLINED_FUNCTION_247(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_248_0()
{
  *(v1 - 176) = *(v0 + 2584);
}

uint64_t OUTLINED_FUNCTION_272()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_276_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_277_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_278_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_286_0()
{
}

uint64_t OUTLINED_FUNCTION_287_0()
{
}

uint64_t OUTLINED_FUNCTION_288_0(uint64_t a1)
{
  *(a1 + 56) = v2;
  *(a1 + 64) = v1;

  return swift_retain_n();
}

void OUTLINED_FUNCTION_289_0()
{

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_290_0()
{

  JUMPOUT(0x1B2749D50);
}

BOOL OUTLINED_FUNCTION_292_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_296_0()
{

  return sub_1B256DDAC();
}

void OUTLINED_FUNCTION_297_0()
{
  v1 = *(v0 - 176);
  *(v0 - 184) = *(v0 - 184);
  *(v0 - 176) = v1;
}

void OUTLINED_FUNCTION_300_0(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  a3[3] = 0;
  a3[4] = v3 & v4;
  a3[5] = a1;
  a3[6] = a2;
}

uint64_t OUTLINED_FUNCTION_301_0()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_302()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_304_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_305_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_311_0()
{

  return sub_1B256D34C();
}

uint64_t OUTLINED_FUNCTION_313_0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_316_0()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_317_0()
{
}

void OUTLINED_FUNCTION_319_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_322_0(uint64_t a1)
{

  return MEMORY[0x1EEDB5E40](v1, a1);
}

id OUTLINED_FUNCTION_323_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{

  return a17;
}

id OUTLINED_FUNCTION_325_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19)
{

  return a19;
}

void OUTLINED_FUNCTION_327_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_328_0()
{
}

void OUTLINED_FUNCTION_329_0()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_343()
{
}

uint64_t OUTLINED_FUNCTION_344()
{
}

void OUTLINED_FUNCTION_345()
{

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_346()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_347()
{
  *(v1 - 112) = *(v0 + 2432);
}

uint64_t OUTLINED_FUNCTION_348()
{

  return sub_1B24C3DB8();
}

void OUTLINED_FUNCTION_354(uint64_t a1@<X8>)
{
  v6 = a1 + v3 * v1;
  *v6 = v4;
  *(v6 + 8) = v5;
  *(v6 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_383()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_384()
{

  return sub_1B256E78C();
}

uint64_t OUTLINED_FUNCTION_385()
{

  return sub_1B256DDAC();
}

uint64_t OUTLINED_FUNCTION_386()
{
  *(v1 - 176) = *(v0 + 2432);
}

uint64_t OUTLINED_FUNCTION_387()
{

  return sub_1B256DA7C();
}

void OUTLINED_FUNCTION_390()
{

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_391()
{

  JUMPOUT(0x1B2749D50);
}

void OUTLINED_FUNCTION_392()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_393()
{

  return sub_1B256ED3C();
}

uint64_t OUTLINED_FUNCTION_394()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_395()
{
  *(v0 + 56) = *(v0 + 57);

  return type metadata accessor for ClientOverride(0);
}

uint64_t OUTLINED_FUNCTION_396()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_397()
{
}

BOOL OUTLINED_FUNCTION_398()
{

  return sub_1B2560518();
}

uint64_t OUTLINED_FUNCTION_399()
{
}

uint64_t OUTLINED_FUNCTION_400()
{
  v3 = *(v0 + 2432);
  *(v1 - 120) = *(v0 + 2440);
  *(v1 - 112) = v3;
}

void *OUTLINED_FUNCTION_401()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_402()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_403(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

void OUTLINED_FUNCTION_404(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_405()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_406()
{

  return sub_1B256D5CC();
}

uint64_t OUTLINED_FUNCTION_424(uint64_t result, uint64_t a2)
{
  *(v2 + 2168) = result;
  *(v2 + 2176) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_428()
{
  *(v1 + 2184) = v0;
  *(v1 + 2192) = v2;
  return v1 + 2184;
}

uint64_t OUTLINED_FUNCTION_429()
{
  __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_451(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_452(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

void OUTLINED_FUNCTION_466()
{
  v1 = *(v0 - 80);
  *(v0 - 88) = *(v0 - 88);
  *(v0 - 80) = v1;
}

void OUTLINED_FUNCTION_480(uint64_t a1@<X8>)
{
  *(v2 - 200) = a1;
  *(v2 - 192) = v1;

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_481()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_482()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_483()
{
}

uint64_t OUTLINED_FUNCTION_484()
{

  return sub_1B256615C(v1 + 2360, v0);
}

unint64_t OUTLINED_FUNCTION_485(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28)
{

  return sub_1B2519814(a25, a28, (v28 - 88));
}

void OUTLINED_FUNCTION_486(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_487@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2 + 38;
  *(a1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_488(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_489()
{

  return sub_1B256615C(v0 + 2360, v1);
}

uint64_t OUTLINED_FUNCTION_490(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_491@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2 + 21;
  *(a1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_492()
{

  return sub_1B256E80C();
}

uint64_t OUTLINED_FUNCTION_493()
{

  return sub_1B256E80C();
}

uint64_t OUTLINED_FUNCTION_494()
{
}

void *OUTLINED_FUNCTION_495(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{

  return memmove((v28 + 1336), (a28 + 160), 0xD0uLL);
}

uint64_t OUTLINED_FUNCTION_496()
{

  return sub_1B256D65C();
}

uint64_t OUTLINED_FUNCTION_497()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2 + 13;
  *(a1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_499()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_502()
{

  return sub_1B24C3DB8();
}

uint64_t OUTLINED_FUNCTION_504()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_505@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_506()
{

  return sub_1B256E0AC();
}

uint64_t OUTLINED_FUNCTION_507()
{

  return sub_1B256E78C();
}

BOOL OUTLINED_FUNCTION_508()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_509()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_510()
{

  return sub_1B256E0CC();
}

uint64_t OUTLINED_FUNCTION_511()
{

  return sub_1B256E0CC();
}

uint64_t OUTLINED_FUNCTION_512()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_513()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_514()
{
}

void OUTLINED_FUNCTION_515()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_516()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_517()
{
  sub_1B23FB6C4();
}

uint64_t sub_1B2568750()
{
  v13 = v0;
  type metadata accessor for StoreKitError();
  sub_1B243A51C();
  v1 = OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v2 = v1;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v3 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v3, qword_1ED69A108);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1B256E4FC();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1B2749D50](0xD000000000000028, 0x80000001B2593460);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_1B256E0AC();

  v7 = sub_1B256D5CC();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1B2519814(0, 0xE000000000000000, v12);
    *(v8 + 12) = 2082;
    v9 = sub_1B2519814(v5, v4, v12);

    *(v8 + 14) = v9;
    _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  parseError(_:)(v1);
  swift_willThrow();

  v10 = v0[1];

  return v10(0);
}

uint64_t static MerchandisingUIExtension.send<A>(id:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2ED8);
  v5[16] = swift_task_alloc();
  v6 = sub_1B256E5EC();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2568AC8, 0, 0);
}

uint64_t sub_1B2568AC8()
{
  v20 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  type metadata accessor for MerchandisingUICoder();
  swift_initStackObject();
  sub_1B251A598();
  v4 = sub_1B251A344(v3, v2, v1);
  v6 = v5;
  type metadata accessor for StoreKitError();
  sub_1B243A51C();
  v7 = OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v8 = v7;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v9 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v9, qword_1ED69A108);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1B256E4FC();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1B2749D50](0xD00000000000001BLL, 0x80000001B25934B0);
  v0[12] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v11 = v0[8];
  v10 = v0[9];
  v12 = sub_1B256E0AC();

  v13 = sub_1B256D5CC();

  if (os_log_type_enabled(v13, v12))
  {
    v18 = v4;
    v14 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_1B2519814(0, 0xE000000000000000, v19);
    *(v14 + 12) = 2082;
    v15 = sub_1B2519814(v11, v10, v19);

    *(v14 + 14) = v15;
    _os_log_impl(&dword_1B23EF000, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    v4 = v18;
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  parseError(_:)(v7);
  swift_willThrow();

  sub_1B2443AE4(v4, v6);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B2569094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MerchandisingUIExtension(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t type metadata accessor for ClientOverrideRequest()
{
  result = qword_1EB7D2EE0;
  if (!qword_1EB7D2EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B256921C()
{
  sub_1B2441224();
  if (v0 <= 0x3F)
  {
    sub_1B256D36C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B25692B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C69746E75 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B256EB5C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1B2569408(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x764F746E65696C63;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x6C69746E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B2569490(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2F10);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2569CC0();
  sub_1B256EDFC();
  v14[15] = 0;
  sub_1B256EA2C();
  if (!v1)
  {
    type metadata accessor for ClientOverrideRequest();
    v14[14] = 1;
    type metadata accessor for ClientOverride(0);
    OUTLINED_FUNCTION_0_48();
    sub_1B2569D70(v9, v10);
    OUTLINED_FUNCTION_7_28();
    sub_1B256EA0C();
    v14[13] = 2;
    sub_1B256EA2C();
    v14[12] = 3;
    sub_1B256D36C();
    OUTLINED_FUNCTION_1_45();
    sub_1B2569D70(v11, v12);
    OUTLINED_FUNCTION_7_28();
    sub_1B256EA5C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B25696AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v34 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2F00);
  OUTLINED_FUNCTION_1_1();
  v37 = v11;
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ClientOverrideRequest();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2569CC0();
  v39 = v13;
  v17 = v40;
  sub_1B256EDBC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v6;
  v44 = 0;
  v18 = v37;
  v19 = v16;
  *v16 = sub_1B256E97C();
  v16[1] = v20;
  v33 = v20;
  type metadata accessor for ClientOverride(0);
  v43 = 1;
  OUTLINED_FUNCTION_0_48();
  sub_1B2569D70(v21, v22);
  sub_1B256E95C();
  v23 = v14;
  sub_1B244394C(v9, v19 + *(v14 + 20));
  v42 = 2;
  v24 = sub_1B256E97C();
  v25 = a1;
  v26 = (v19 + *(v14 + 24));
  *v26 = v24;
  v26[1] = v27;
  v41 = 3;
  OUTLINED_FUNCTION_1_45();
  sub_1B2569D70(v28, v29);
  v30 = v40;
  v31 = v36;
  sub_1B256E9AC();
  (*(v18 + 8))(v39, v38);
  (*(v34 + 32))(v19 + *(v23 + 28), v30, v31);
  sub_1B2440F68(v19, v35);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1B2569D14(v19);
}

uint64_t sub_1B2569B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B25692B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2569B3C(uint64_t a1)
{
  v2 = sub_1B2569CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2569B78(uint64_t a1)
{
  v2 = sub_1B2569CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2569BE4(uint64_t a1)
{
  *(a1 + 16) = sub_1B2569D70(&qword_1EB7D2EF0, type metadata accessor for ClientOverrideRequest);
  result = sub_1B2569D70(&qword_1EB7D2EF8, type metadata accessor for ClientOverrideRequest);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2569C68(uint64_t a1)
{
  result = sub_1B2569D70(&qword_1EB7D0198, type metadata accessor for ClientOverrideRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B2569CC0()
{
  result = qword_1EB7D2F08;
  if (!qword_1EB7D2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2F08);
  }

  return result;
}

uint64_t sub_1B2569D14(uint64_t a1)
{
  v2 = type metadata accessor for ClientOverrideRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2569D70(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ClientOverrideRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B2569E98()
{
  result = qword_1EB7D2F18;
  if (!qword_1EB7D2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2F18);
  }

  return result;
}

unint64_t sub_1B2569EF0()
{
  result = qword_1EB7D2F20;
  if (!qword_1EB7D2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2F20);
  }

  return result;
}

unint64_t sub_1B2569F48()
{
  result = qword_1EB7D2F28;
  if (!qword_1EB7D2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2F28);
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}