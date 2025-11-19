uint64_t sub_1B7272BB0(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v2[24] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7272CAC, 0, 0);
}

uint64_t sub_1B7272CAC()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7272D58;
  v2 = swift_continuation_init();
  sub_1B722D9D8(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7272D58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7272EBC, 0, 0);
}

uint64_t sub_1B7272EBC()
{
  v1 = *(v0 + 224);
  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 176) + *(**(v0 + 176) + 120), *(v0 + 192), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 192), &qword_1EB990570);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7273100, 0, 0);
}

uint64_t sub_1B7273100()
{
  v1 = v0[22];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_1B72731AC;
  v2 = swift_continuation_init();
  sub_1B722D9D8(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B72731AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 232) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7273368;
  }

  else
  {
    *(v1 + 240) = *(v1 + 160);
    v3 = sub_1B72732D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B72732D0()
{
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B7273368()
{
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7273404(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v3[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v3[33] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7273504, 0, 0);
}

uint64_t sub_1B7273504()
{
  v1 = v0[31];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B72735B0;
  v2 = swift_continuation_init();
  sub_1B722DBA4(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B72735B0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  if (!v3)
  {
    v4 = *(v1 + 232);
    v5 = *(v1 + 145);
    v6 = *(v1 + 152);
    v7 = *(v1 + 168);
    *v4 = *(v1 + 144);
    *(v4 + 1) = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;

    v8 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7273730, 0, 0);
}

uint64_t sub_1B7273730()
{
  v1 = *(v0 + 296);
  *(v0 + 224) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 248) + *(**(v0 + 248) + 120), *(v0 + 264), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 264), &qword_1EB990570);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7273974, 0, 0);
}

uint64_t sub_1B7273974()
{
  v1 = v0[31];
  v0[10] = v0;
  v0[15] = v0 + 23;
  v0[11] = sub_1B7273A20;
  v2 = swift_continuation_init();
  sub_1B722DBA4(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7273A20()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 304) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7273BEC;
  }

  else
  {
    v4 = *(v1 + 232);
    v5 = *(v1 + 185);
    v6 = *(v1 + 192);
    v7 = *(v1 + 208);
    *v4 = *(v1 + 184);
    *(v4 + 1) = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    v3 = sub_1B7273B5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7273B5C()
{
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7273BEC()
{
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7273C88(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v2[22] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7273D84, 0, 0);
}

uint64_t sub_1B7273D84()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1B7273E30;
  v2 = swift_continuation_init();
  sub_1B722DD70(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7273E30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7273F94, 0, 0);
}

uint64_t sub_1B7273F94()
{
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 160) + *(**(v0 + 160) + 120), *(v0 + 176), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 176), &qword_1EB990570);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B72741D8, 0, 0);
}

uint64_t sub_1B72741D8()
{
  v1 = v0[20];
  v0[10] = v0;
  v0[15] = v0 + 225;
  v0[11] = sub_1B7274284;
  v2 = swift_continuation_init();
  sub_1B722DD70(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7274284()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 216) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7268598;
  }

  else
  {
    *(v1 + 226) = *(v1 + 225);
    v3 = sub_1B72743A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B72743A8()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v1 = *(v0 + 226);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B7274440(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v2[24] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B727453C, 0, 0);
}

uint64_t sub_1B727453C()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B72745E8;
  v2 = swift_continuation_init();
  sub_1B722DF3C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B72745E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B727474C, 0, 0);
}

uint64_t sub_1B727474C()
{
  v1 = *(v0 + 224);
  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 176) + *(**(v0 + 176) + 120), *(v0 + 192), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 192), &qword_1EB990570);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7274990, 0, 0);
}

uint64_t sub_1B7274990()
{
  v1 = v0[22];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_1B7272A8C;
  v2 = swift_continuation_init();
  sub_1B722DF3C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7274A3C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v2[24] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7274B38, 0, 0);
}

uint64_t sub_1B7274B38()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7274BE4;
  v2 = swift_continuation_init();
  sub_1B722E108(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7274BE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7274D48, 0, 0);
}

uint64_t sub_1B7274D48()
{
  v1 = *(v0 + 224);
  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 176) + *(**(v0 + 176) + 120), *(v0 + 192), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 192), &qword_1EB990570);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7274F8C, 0, 0);
}

uint64_t sub_1B7274F8C()
{
  v1 = v0[22];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_1B7272A8C;
  v2 = swift_continuation_init();
  sub_1B722E108(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7275038(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v3[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v3[29] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7275138, 0, 0);
}

uint64_t sub_1B7275138()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B72751E4;
  v2 = swift_continuation_init();
  sub_1B722E2D4(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B72751E4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  if (!v3)
  {
    v4 = *(v1 + 200);
    v5 = *(v1 + 160);
    *v4 = *(v1 + 144);
    *(v4 + 16) = v5;

    v6 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7275354, 0, 0);
}

uint64_t sub_1B7275354()
{
  v1 = *(v0 + 264);
  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 216) + *(**(v0 + 216) + 120), *(v0 + 232), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 232), &qword_1EB990570);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7275598, 0, 0);
}

uint64_t sub_1B7275598()
{
  v1 = v0[27];
  v0[10] = v0;
  v0[15] = v0 + 21;
  v0[11] = sub_1B7275644;
  v2 = swift_continuation_init();
  sub_1B722E2D4(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7275644()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279630;
  }

  else
  {
    v4 = *(v1 + 200);
    v5 = *(v1 + 184);
    *v4 = *(v1 + 168);
    *(v4 + 16) = v5;
    v3 = sub_1B7279614;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7275774(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FE48);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72758B8, 0, 0);
}

uint64_t sub_1B72758B8()
{
  v1 = v0[28];
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1B7275964;
  v3 = swift_continuation_init();
  sub_1B722E4A0(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7275964()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (!v3)
  {
    sub_1B722376C(*(v1 + 224), *(v1 + 152), &qword_1EB98FE48);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7275AF0, 0, 0);
}

uint64_t sub_1B7275AF0()
{
  v1 = *(v0 + 232);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990578);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7275D58, 0, 0);
}

uint64_t sub_1B7275D58()
{
  v1 = v0[27];
  v2 = v0[21];
  v0[10] = v0;
  v0[15] = v1;
  v0[11] = sub_1B7275E04;
  v3 = swift_continuation_init();
  sub_1B722E4A0(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7275E04()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279620;
  }

  else
  {
    sub_1B722376C(*(v1 + 216), *(v1 + 152), &qword_1EB98FE48);
    v3 = sub_1B727961C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7275F3C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  type metadata accessor for InternalAccount();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7276074, 0, 0);
}

uint64_t sub_1B7276074()
{
  v1 = v0[28];
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1B7276120;
  v3 = swift_continuation_init();
  sub_1B722E66C(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7276120()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (!v3)
  {
    sub_1B72795A4(*(v1 + 224), *(v1 + 152), type metadata accessor for InternalAccount);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B72762B0, 0, 0);
}

uint64_t sub_1B72762B0()
{
  v1 = *(v0 + 232);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990578);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7276518, 0, 0);
}

uint64_t sub_1B7276518()
{
  v1 = v0[27];
  v2 = v0[21];
  v0[10] = v0;
  v0[15] = v1;
  v0[11] = sub_1B72765C4;
  v3 = swift_continuation_init();
  sub_1B722E66C(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B72765C4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279620;
  }

  else
  {
    sub_1B72795A4(*(v1 + 216), *(v1 + 152), type metadata accessor for InternalAccount);
    v3 = sub_1B727961C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7276700(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v3[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[27] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7276800, 0, 0);
}

uint64_t sub_1B7276800()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B72768AC;
  v2 = swift_continuation_init();
  sub_1B722EF68(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B72768AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (!v3)
  {
    **(v1 + 184) = *(v1 + 144);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7276A14, 0, 0);
}

uint64_t sub_1B7276A14()
{
  v1 = *(v0 + 248);
  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 200) + *(**(v0 + 200) + 120), *(v0 + 216), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 216), &qword_1EB990578);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7276C58, 0, 0);
}

uint64_t sub_1B7276C58()
{
  v1 = v0[25];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_1B726EEB8;
  v2 = swift_continuation_init();
  sub_1B722EF68(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7276D04(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7276E04, 0, 0);
}

uint64_t sub_1B7276E04()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1B7276EB0;
  v2 = swift_continuation_init();
  sub_1B722F134(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7276EB0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (!v3)
  {
    **(v1 + 152) = *(v1 + 232);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7277018, 0, 0);
}

uint64_t sub_1B7277018()
{
  v1 = *(v0 + 216);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990570);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B727725C, 0, 0);
}

uint64_t sub_1B727725C()
{
  v1 = v0[21];
  v0[10] = v0;
  v0[15] = v0 + 233;
  v0[11] = sub_1B7277308;
  v2 = swift_continuation_init();
  sub_1B722F134(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7277308()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 224) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B72774C0;
  }

  else
  {
    **(v1 + 152) = *(v1 + 233);
    v3 = sub_1B7277430;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7277430()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72774C0()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B727755C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  type metadata accessor for BankConnectConsent();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7277694, 0, 0);
}

uint64_t sub_1B7277694()
{
  v1 = v0[28];
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1B7277740;
  v3 = swift_continuation_init();
  sub_1B722EA04(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7277740()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (!v3)
  {
    sub_1B72795A4(*(v1 + 224), *(v1 + 152), type metadata accessor for BankConnectConsent);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B72778D0, 0, 0);
}

uint64_t sub_1B72778D0()
{
  v1 = *(v0 + 232);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990578);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7277B38, 0, 0);
}

uint64_t sub_1B7277B38()
{
  v1 = v0[27];
  v2 = v0[21];
  v0[10] = v0;
  v0[15] = v1;
  v0[11] = sub_1B7277BE4;
  v3 = swift_continuation_init();
  sub_1B722EA04(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7277BE4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279620;
  }

  else
  {
    sub_1B72795A4(*(v1 + 216), *(v1 + 152), type metadata accessor for BankConnectConsent);
    v3 = sub_1B727961C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7277D20(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FDB8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7277E64, 0, 0);
}

uint64_t sub_1B7277E64()
{
  v1 = v0[28];
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1B7277F10;
  v3 = swift_continuation_init();
  sub_1B722F300(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7277F10()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (!v3)
  {
    sub_1B722376C(*(v1 + 224), *(v1 + 152), &qword_1EB98FDB8);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B727809C, 0, 0);
}

uint64_t sub_1B727809C()
{
  v1 = *(v0 + 232);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990570);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7278304, 0, 0);
}

uint64_t sub_1B7278304()
{
  v1 = v0[27];
  v2 = v0[21];
  v0[10] = v0;
  v0[15] = v1;
  v0[11] = sub_1B72783B0;
  v3 = swift_continuation_init();
  sub_1B722F300(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B72783B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7278594;
  }

  else
  {
    sub_1B722376C(*(v1 + 216), *(v1 + 152), &qword_1EB98FDB8);
    v3 = sub_1B72784E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B72784E8()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7278594()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B727864C(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v3[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v3[29] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B727874C, 0, 0);
}

uint64_t sub_1B727874C()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B72787F8;
  v2 = swift_continuation_init();
  sub_1B722F4CC(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B72787F8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  if (!v3)
  {
    v4 = *(v1 + 200);
    v5 = *(v1 + 160);
    *v4 = *(v1 + 144);
    *(v4 + 16) = v5;

    v6 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7278968, 0, 0);
}

uint64_t sub_1B7278968()
{
  v1 = *(v0 + 264);
  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 216) + *(**(v0 + 216) + 120), *(v0 + 232), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 232), &qword_1EB990570);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7278BAC, 0, 0);
}

uint64_t sub_1B7278BAC()
{
  v1 = v0[27];
  v0[10] = v0;
  v0[15] = v0 + 21;
  v0[11] = sub_1B7278C58;
  v2 = swift_continuation_init();
  sub_1B722F4CC(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7278C58()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7278E18;
  }

  else
  {
    v4 = *(v1 + 200);
    v5 = *(v1 + 184);
    *v4 = *(v1 + 168);
    *(v4 + 16) = v5;
    v3 = sub_1B7278D88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7278D88()
{
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7278E18()
{
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.removeLogo(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7278F4C, 0, 0);
}

uint64_t sub_1B7278F4C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t sub_1B7278FD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7279080;

  return BankConnectService.logo(forInstitutionID:)(a1, a2);
}

uint64_t sub_1B7279080(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1B7279190(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return BankConnectService.removeLogo(forInstitutionID:)(a1, a2);
}

uint64_t dispatch thunk of BankConnectImageProviding.logo(forInstitutionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7279368;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B7279368(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of BankConnectImageProviding.removeLogo(forInstitutionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B72795A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t InternalAccountBalanceQuery.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void *InternalAccountBalanceQuery.predicate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t InternalAccountBalanceQuery.sortDescriptors.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t InternalAccountBalanceQuery.init(limit:predicate:sortDescriptors:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void *sub_1B7279754()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1B727977C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461636964657270;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6373654474726F73;
    v4 = 0xEF73726F74706972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74696D696CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x7461636964657270;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6373654474726F73;
    v8 = 0xEF73726F74706972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74696D696CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B78020F8();
  }

  return v11 & 1;
}

uint64_t sub_1B727989C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B727994C()
{
  sub_1B7800798();
}

uint64_t sub_1B72799E8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7279A94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B727A838();
  *a1 = result;
  return result;
}

void sub_1B7279AC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x7461636964657270;
  if (v2 != 1)
  {
    v5 = 0x6373654474726F73;
    v4 = 0xEF73726F74706972;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74696D696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B7279B30()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0x6373654474726F73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696D696CLL;
  }
}

uint64_t sub_1B7279B98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B727A838();
  *a1 = result;
  return result;
}

uint64_t sub_1B7279BC0(uint64_t a1)
{
  v2 = sub_1B727A4E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7279BFC(uint64_t a1)
{
  v2 = sub_1B727A4E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InternalAccountBalanceQuery.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9905C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B727A4E8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v23) = 0;
    v22 = sub_1B7801DA8();
    v25 = v9 & 1;
    LOBYTE(v23) = 1;
    v10 = sub_1B7801EA8();
    if (v10)
    {
      v26 = 1;
      sub_1B727A53C();
      sub_1B7801E48();
      v12 = v23;
      v11 = v24;
      sub_1B7205540(0, &qword_1EB9905D0);
      sub_1B7205540(0, &qword_1EDAFAF30);
      v21 = v11;
      v18 = sub_1B78012B8();
      sub_1B720A388(v12, v21);
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(v23) = 2;
    if (sub_1B7801EA8())
    {
      v26 = 2;
      sub_1B727A53C();
      sub_1B7801E48();
      v16 = v23;
      v17 = v24;
      v19 = sub_1B7205540(0, &qword_1EB9905D0);
      sub_1B7205540(0, &qword_1EDAF6470);
      v20 = v16;
      v21 = v17;
      v13 = sub_1B78012D8();
      sub_1B720A388(v20, v21);
      if (!v13)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v13 = 0;
    }

    (*(v6 + 8))(v8, v5);
    v14 = v25;
    *a2 = v22;
    *(a2 + 8) = v14;
    *(a2 + 16) = v18;
    *(a2 + 24) = v13;

    v15 = v18;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t InternalAccountBalanceQuery.encode(to:)(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9905D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v31 = *(v1 + 24);
  v32 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B727A4E8();
  sub_1B78023F8();
  v35 = v7;
  LOBYTE(v36) = v8;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9905E0);
  sub_1B727A590();
  v10 = v33;
  sub_1B7801FC8();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v4;
  v13 = v32;
  if (v32)
  {
    v14 = objc_opt_self();
    v35 = 0;
    v15 = v13;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v35];
    v17 = v35;
    if (!v16)
    {
      v21 = v17;
      sub_1B77FF318();

      swift_willThrow();
      return (*(v12 + 8))(v6, v3);
    }

    v18 = sub_1B77FF5B8();
    v20 = v19;

    v35 = v18;
    v36 = v20;
    v34 = 1;
    sub_1B727A60C();
    sub_1B7801FC8();

    sub_1B720A388(v18, v20);
  }

  if (v31)
  {
    v22 = objc_opt_self();
    sub_1B7205540(0, &qword_1EDAF6470);
    v23 = sub_1B7800C18();
    v35 = 0;
    v24 = [v22 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v35];

    v25 = v35;
    if (v24)
    {
      v26 = sub_1B77FF5B8();
      v28 = v27;

      v35 = v26;
      v36 = v28;
      v34 = 2;
      sub_1B727A60C();
      sub_1B7801FC8();
      (*(v12 + 8))(v6, v3);
      return sub_1B720A388(v26, v28);
    }

    v29 = v25;
    sub_1B77FF318();

    swift_willThrow();
  }

  return (*(v12 + 8))(v6, v3);
}

BOOL _s10FinanceKit27InternalAccountBalanceQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1B7205540(0, &qword_1EDAFAF30);
    v7 = v6;
    v8 = v3;
    v9 = sub_1B7801558();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v2)
  {
    if (!v5)
    {
      return 0;
    }

    v10 = sub_1B731D24C(v2, v5);

    return (v10 & 1) != 0;
  }

  return !v5;
}

unint64_t sub_1B727A4E8()
{
  result = qword_1EB9905C8;
  if (!qword_1EB9905C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9905C8);
  }

  return result;
}

unint64_t sub_1B727A53C()
{
  result = qword_1EB991280;
  if (!qword_1EB991280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB991280);
  }

  return result;
}

unint64_t sub_1B727A590()
{
  result = qword_1EB9905E8;
  if (!qword_1EB9905E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9905E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9905E8);
  }

  return result;
}

unint64_t sub_1B727A60C()
{
  result = qword_1EDAF6600;
  if (!qword_1EDAF6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6600);
  }

  return result;
}

uint64_t sub_1B727A660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B727A6BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1B727A734()
{
  result = qword_1EB9905F0;
  if (!qword_1EB9905F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9905F0);
  }

  return result;
}

unint64_t sub_1B727A78C()
{
  result = qword_1EB9905F8;
  if (!qword_1EB9905F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9905F8);
  }

  return result;
}

unint64_t sub_1B727A7E4()
{
  result = qword_1EB990600;
  if (!qword_1EB990600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990600);
  }

  return result;
}

uint64_t sub_1B727A838()
{
  v0 = sub_1B7801D18();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t BankConnectWebServiceInitiateConsentRequest.fpanIDs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t BankConnectWebServiceInitiateConsentRequest.codeChallenge.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t BankConnectWebServiceInitiateConsentRequest.codeChallenge.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t BankConnectWebServiceInitiateConsentRequest.challengeMethod.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t BankConnectWebServiceInitiateConsentRequest.challengeMethod.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t BankConnectWebServiceInitiateConsentRequest.clientState.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t BankConnectWebServiceInitiateConsentRequest.clientState.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t BankConnectWebServiceInitiateConsentRequest.init(uuid:institutionID:codeChallenge:challengeMethod:fpanIDs:clientState:flowConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a6;
  a9[7] = a7;
  a9[4] = a10;
  a9[5] = a5;
  a9[8] = a8;
  a9[9] = a11;
  a9[10] = a12;
  v14 = type metadata accessor for BankConnectWebServiceInitiateConsentRequest(0);
  return sub_1B727C3E8(a13, a9 + *(v14 + 40), type metadata accessor for BankConnectAuthorizationConfiguration);
}

uint64_t BankConnectWebServiceInitiateConsentRequest.jsonBody.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BankConnectAuthorizationConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[4];
  if (v7 && *(v7 + 16))
  {
    v25[1] = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B723E0F4();
    v8 = sub_1B78007C8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = type metadata accessor for BankConnectWebServiceInitiateConsentRequest(0);
  sub_1B727BBB8(v2 + *(v11 + 40), v6, type metadata accessor for BankConnectAuthorizationConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v13 = 0;
      goto LABEL_11;
    }

    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_1B77FFA18();
  (*(*(v14 - 8) + 8))(v6, v14);
LABEL_11:
  v15 = v2[1];
  v16 = v2[2];
  v17 = v2[3];
  v18 = v2[5];
  v19 = v2[6];
  v20 = v2[7];
  v21 = v2[8];
  v23 = v2[9];
  v22 = v2[10];
  *a1 = *v2;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 80) = v23;
  *(a1 + 88) = v22;
  *(a1 + 96) = v13;
}

void sub_1B727AE10(void *a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v21 = v20;
    v22 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v21 = v22;
    v21[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v10 = v9;
  v45 = a2;
  v11 = a1;
  v12 = [v10 statusCode];
  if (v12 != 200)
  {
    v24 = v12;
    type metadata accessor for FinanceNetworkError();
    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    *v25 = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v41 = v11;
  v13 = sub_1B7800838();
  v14 = [v10 valueForHTTPHeaderField_];

  if (!v14)
  {
    sub_1B7280708();
    v18 = swift_allocError();
    *v26 = 0;
    goto LABEL_9;
  }

  sub_1B7800868();

  v15 = sub_1B77FF548();
  v17 = v16;

  if (v17 >> 60 == 15)
  {
    sub_1B7280708();
    v18 = swift_allocError();
    *v19 = 3;
LABEL_9:
    swift_willThrow();
    goto LABEL_15;
  }

  v40 = v17;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v5, qword_1EB991BC8);
  v38 = *(v6 + 16);
  v39 = v27;
  v38(v8);
  sub_1B77FE8C8();
  sub_1B7280858();
  sub_1B77FE8D8();
  if (!v2)
  {

    sub_1B72380B8(v15, v40);
    v29 = *(&v42 + 1);
    v36 = v43;
    v37 = v42;
    v40 = v44;
    swift_allocObject();
    sub_1B77FE8E8();
    (v38)(v8, v39, v5);
    sub_1B77FE8C8();
    sub_1B72808AC();
    sub_1B77FE8D8();

    v32 = v43;
    v33 = v45;
    *(v45 + 32) = v42;
    v33[6] = v32;
    v34 = v36;
    *v33 = v37;
    v33[1] = v29;
    v35 = v40;
    v33[2] = v34;
    v33[3] = v35;
    return;
  }

  type metadata accessor for FinanceNetworkError();
  sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  v18 = swift_allocError();
  *v28 = v2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1B72380B8(v15, v40);
LABEL_15:
  v30 = v41;
  type metadata accessor for FinanceNetworkError();
  sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
  swift_allocError();
  *v31 = v18;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t sub_1B727B3C4()
{
  if (*v0)
  {
    return 0x6F69736E65747865;
  }

  else
  {
    return 0x7463657269646572;
  }
}

uint64_t sub_1B727B414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463657269646572 && a2 == 0xEB000000004C5255;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEF736D617261506ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B727B4FC(uint64_t a1)
{
  v2 = sub_1B727BB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B727B538(uint64_t a1)
{
  v2 = sub_1B727BB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B727B574(uint64_t a1)
{
  v2 = sub_1B727BC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B727B5B0(uint64_t a1)
{
  v2 = sub_1B727BC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B727B5EC(uint64_t a1)
{
  v2 = sub_1B727BC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B727B628(uint64_t a1)
{
  v2 = sub_1B727BC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectAuthorizationPayload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990608);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v24 - v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990610);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v24 - v4;
  v6 = sub_1B77FF4F8();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BankConnectAuthorizationPayload(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990618);
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B727BB64();
  sub_1B78023F8();
  sub_1B727BBB8(v32, v11, type metadata accessor for BankConnectAuthorizationPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v11;
    v36 = 1;
    sub_1B727BC20();
    v16 = v28;
    v17 = v33;
    sub_1B7801ED8();
    v34 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
    sub_1B727C37C(&qword_1EDAF6530);
    v18 = v31;
    sub_1B7801FC8();
    (*(v30 + 8))(v16, v18);
    (*(v12 + 8))(v14, v17);
  }

  else
  {
    v21 = v25;
    v20 = v26;
    (*(v25 + 32))(v8, v11, v26);
    v35 = 0;
    sub_1B727BC74();
    v22 = v33;
    sub_1B7801ED8();
    sub_1B728075C(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    v23 = v29;
    sub_1B7801FC8();
    (*(v27 + 8))(v5, v23);
    (*(v21 + 8))(v8, v20);
    return (*(v12 + 8))(v14, v22);
  }
}

unint64_t sub_1B727BB64()
{
  result = qword_1EB990620;
  if (!qword_1EB990620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990620);
  }

  return result;
}

uint64_t sub_1B727BBB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B727BC20()
{
  result = qword_1EB990628;
  if (!qword_1EB990628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990628);
  }

  return result;
}

unint64_t sub_1B727BC74()
{
  result = qword_1EB990630;
  if (!qword_1EB990630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990630);
  }

  return result;
}

uint64_t BankConnectAuthorizationPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990638);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v38 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990640);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990648);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for BankConnectAuthorizationPayload(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B727BB64();
  v18 = v48;
  sub_1B78023C8();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v48 = v14;
  v38 = v11;
  v39 = v16;
  v20 = v46;
  v19 = v47;
  v21 = sub_1B7801E98();
  v22 = (2 * *(v21 + 16)) | 1;
  v50 = v21;
  v51 = v21 + 32;
  v52 = 0;
  v53 = v22;
  v23 = sub_1B721CE4C();
  v24 = v5;
  v25 = v7;
  if (v23 == 2 || v52 != v53 >> 1)
  {
    v27 = sub_1B7801B18();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v29 = v8;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v20 + 8))(v7, v5);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  if (v23)
  {
    LOBYTE(v54) = 1;
    sub_1B727BC20();
    v26 = v45;
    sub_1B7801D38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994460);
    sub_1B727C37C(&qword_1EDAF6528);
    v34 = v42;
    sub_1B7801E48();
    (*(v44 + 8))(v26, v34);
    (*(v20 + 8))(v25, v5);
    swift_unknownObjectRelease();
    v35 = v38;
    *v38 = v54;
    swift_storeEnumTagMultiPayload();
    v36 = v35;
  }

  else
  {
    LOBYTE(v54) = 0;
    sub_1B727BC74();
    v31 = v19;
    sub_1B7801D38();
    sub_1B77FF4F8();
    sub_1B728075C(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    v32 = v48;
    v33 = v43;
    sub_1B7801E48();
    (*(v41 + 8))(v31, v33);
    (*(v20 + 8))(v7, v24);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v36 = v32;
  }

  v37 = v39;
  sub_1B727C3E8(v36, v39, type metadata accessor for BankConnectAuthorizationPayload);
  sub_1B727C3E8(v37, v40, type metadata accessor for BankConnectAuthorizationPayload);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1B727C37C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994460);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B727C3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.token.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.token.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B727C648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.codeVerifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BankConnectWebServiceCompleteConsentRequest(0) + 28));

  return v1;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.codeVerifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BankConnectWebServiceCompleteConsentRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.fraudAssessment.getter()
{
  type metadata accessor for BankConnectWebServiceCompleteConsentRequest(0);
}

uint64_t BankConnectWebServiceCompleteConsentRequest.fraudAssessment.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectWebServiceCompleteConsentRequest(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.init(id:token:authorizationPayload:codeVerifier:fraudAssessment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v14 = type metadata accessor for BankConnectWebServiceCompleteConsentRequest(0);
  result = sub_1B727C3E8(a5, a9 + v14[6], type metadata accessor for BankConnectAuthorizationPayload);
  v16 = (a9 + v14[7]);
  *v16 = a6;
  v16[1] = a7;
  *(a9 + v14[8]) = a8;
  return result;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.jsonBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BankConnectAuthorizationPayload(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = sub_1B77FF4F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  v14 = type metadata accessor for BankConnectWebServiceCompleteConsentRequest(0);
  sub_1B727BBB8(v1 + v14[6], v5, type metadata accessor for BankConnectAuthorizationPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v5;
  }

  else
  {
    sub_1B7205418(v10, &unk_1EB994C70);
    (*(v12 + 32))(v10, v5, v11);
    v13(v10, 0, 1, v11);
    v27 = 0;
  }

  v15 = v28;
  sub_1B722376C(v10, v28, &unk_1EB994C70);
  v16 = (v1 + v14[7]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v1 + v14[8]);
  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  v13(a1, 1, 1, v11);
  v22 = type metadata accessor for RawBankConnectData.CompleteConsentRequestBody(0);
  v23 = v22[5];
  v24 = (a1 + v22[7]);

  result = sub_1B727CBBC(v15, a1);
  v26 = (a1 + v22[6]);
  *v26 = v17;
  v26[1] = v18;
  *v24 = v21;
  v24[1] = v20;
  *(a1 + v23) = v27;
  return result;
}

uint64_t sub_1B727CBBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectWebServiceCompleteConsentRequest.makeAdditionalHTTPHeaderFields()()
{
  v20 = sub_1B77FE968();
  v1 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v21[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  v21[3] = &type metadata for RawBankConnectData.InitiatedConsent;
  v21[4] = sub_1B727FD7C();
  v9 = swift_allocObject();
  v21[0] = v9;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v7;
  v9[5] = v6;
  __swift_project_boxed_opaque_existential_1(v21, &type metadata for RawBankConnectData.InitiatedConsent);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v10 = v20;
  v11 = __swift_project_value_buffer(v20, qword_1EB991BE8);
  (*(v1 + 16))(v3, v11, v10);
  sub_1B77FE988();
  v12 = v21[6];
  v13 = sub_1B77FE998();
  v15 = v14;

  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    *(v8 + 16) = 0;
  }

  else
  {
    v16 = sub_1B77FF5A8();
    v18 = v17;
    sub_1B720A388(v13, v15);
    *(v8 + 32) = 0x746E65736E6F43;
    *(v8 + 40) = 0xE700000000000000;
    *(v8 + 48) = v16;
    *(v8 + 56) = v18;
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v8;
}

void sub_1B727CEC8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a1;
  v93 = a2;
  v91 = a4;
  v5 = type metadata accessor for FinanceNetworkError();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v84 - v9);
  v11 = sub_1B77FE8B8();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawBankConnectData.Consent(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v94 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v84 - v20;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v34 = v33;
    v35 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v34 = v35;
    v34[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v23 = v22;
  v90 = v14;
  v24 = a3;
  v25 = [v23 statusCode];
  if (v25 != 200)
  {
    *v10 = v25;
    swift_storeEnumTagMultiPayload();
    v37 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B728075C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v94 = swift_allocError();
    v92 = v38;
    v39 = v24;
    v40 = sub_1B7800838();
    v41 = [v23 valueForHTTPHeaderField_];

    if (v41)
    {
      v93 = v37;
      sub_1B7800868();

      v42 = sub_1B77FF548();
      v44 = v43;

      if (v44 >> 60 == 15)
      {
        sub_1B7280708();
        v45 = swift_allocError();
        *v46 = 3;
        swift_willThrow();
      }

      else
      {
        sub_1B77FE8F8();
        swift_allocObject();
        sub_1B77FE8E8();
        if (qword_1EB98E9B0 != -1)
        {
          swift_once();
        }

        v65 = v97;
        v66 = __swift_project_value_buffer(v97, qword_1EB991BC8);
        (*(v96 + 16))(v13, v66, v65);
        sub_1B77FE8C8();
        sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v67 = v95;
        sub_1B77FE8D8();
        if (!v67)
        {

          sub_1B72380B8(v42, v44);

          v79 = v92;
          sub_1B727C3E8(v19, v92, type metadata accessor for RawBankConnectData.Consent);
          sub_1B727C3E8(v10, v79 + *(v93 + 20), type metadata accessor for FinanceNetworkError);
          swift_willThrow();

          return;
        }

        sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        v68 = v42;
        v45 = swift_allocError();
        *v69 = v67;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B72380B8(v68, v44);
      }

      v37 = v93;
    }

    else
    {
      sub_1B7280708();
      v45 = swift_allocError();
      *v48 = 0;
      swift_willThrow();
    }

    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B727BBB8(v10, v70, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B72807F8(v10, type metadata accessor for FinanceNetworkError);
    v76 = v94;
    v77 = v37;
    goto LABEL_31;
  }

  v89 = v24;
  v26 = sub_1B7800838();
  v27 = [v23 valueForHTTPHeaderField_];

  if (!v27)
  {
    sub_1B7280708();
    v31 = swift_allocError();
    *v47 = 0;
    goto LABEL_11;
  }

  sub_1B7800868();

  v28 = sub_1B77FF548();
  v30 = v29;

  if (v30 >> 60 == 15)
  {
    sub_1B7280708();
    v31 = swift_allocError();
    *v32 = 3;
LABEL_11:
    swift_willThrow();
    goto LABEL_17;
  }

  v87 = v30;
  v88 = v28;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v97, qword_1EB991BC8);
  v85 = *(v96 + 16);
  v86 = v49;
  v85(v13);
  sub_1B77FE8C8();
  sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v50 = v87;
  v51 = v95;
  sub_1B77FE8D8();
  v95 = v51;
  if (v51)
  {

    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v31 = swift_allocError();
    *v52 = v95;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1B72380B8(v88, v50);
  }

  else
  {

    sub_1B72380B8(v88, v50);
    swift_allocObject();
    sub_1B77FE8E8();
    (v85)(v13, v86, v97);
    sub_1B77FE8C8();
    sub_1B72807A4();
    v78 = v95;
    sub_1B77FE8D8();
    if (!v78)
    {

      v82 = v98;
      v83 = v91;
      sub_1B727C3E8(v21, v91, type metadata accessor for RawBankConnectData.Consent);
      *(v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990708) + 36)) = v82;
      return;
    }

    sub_1B72807F8(v21, type metadata accessor for RawBankConnectData.Consent);

    v31 = v78;
  }

LABEL_17:
  *v8 = v31;
  swift_storeEnumTagMultiPayload();
  v53 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B728075C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v95 = v53;
  v93 = swift_allocError();
  v55 = v54;
  v92 = v89;
  v56 = v31;
  v57 = sub_1B7800838();
  v58 = [v23 valueForHTTPHeaderField_];

  if (!v58)
  {
    sub_1B7280708();
    v62 = swift_allocError();
    *v64 = 0;
    goto LABEL_21;
  }

  v91 = v55;
  sub_1B7800868();

  v59 = sub_1B77FF548();
  v61 = v60;

  if (v61 >> 60 == 15)
  {
    sub_1B7280708();
    v62 = swift_allocError();
    *v63 = 3;
LABEL_21:
    swift_willThrow();
    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B727BBB8(v8, v74, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    v75 = v92;
    sub_1B72807F8(v8, type metadata accessor for FinanceNetworkError);

    v76 = v93;
    v77 = v95;
LABEL_31:
    MEMORY[0x1B8CA76D0](v76, v77);
    return;
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v71 = v97;
  v72 = __swift_project_value_buffer(v97, qword_1EB991BC8);
  (*(v96 + 16))(v13, v72, v71);
  sub_1B77FE8C8();
  sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v73 = v94;
  sub_1B77FE8D8();

  sub_1B72380B8(v59, v61);
  v80 = v92;

  v81 = v91;
  sub_1B727C3E8(v73, v91, type metadata accessor for RawBankConnectData.Consent);
  sub_1B727C3E8(v8, v81 + *(v95 + 20), type metadata accessor for FinanceNetworkError);
  swift_willThrow();
}

uint64_t BankConnectWebServiceRevokeConsentRequest.fpanIDs.getter()
{
  type metadata accessor for BankConnectWebServiceRevokeConsentRequest(0);
}

uint64_t BankConnectWebServiceRevokeConsentRequest.fpanIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectWebServiceRevokeConsentRequest(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t BankConnectWebServiceRevokeConsentRequest.init(consent:fpanIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for BankConnectWebServiceRevokeConsentRequest(0) + 20);
  result = sub_1B727C3E8(a1, a3, type metadata accessor for BankConnectConsent);
  *(a3 + v6) = a2;
  return result;
}

uint64_t BankConnectWebServiceRevokeConsentRequest.jsonBody.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for BankConnectWebServiceRevokeConsentRequest(0) + 20));
  if (v3 && *(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    sub_1B723E0F4();
    v4 = sub_1B78007C8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  return result;
}

void *sub_1B727DF8C()
{
  v1 = sub_1B77FE968();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B7807CD0;
  v3 = type metadata accessor for BankConnectConsent();
  v4 = v3[6];
  v5 = (v0 + v3[5]);
  v6 = *v5;
  v30 = v5[1];
  v31 = v6;
  v7 = type metadata accessor for RawBankConnectData.Consent(0);
  v37 = v7;
  v38 = sub_1B728075C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  v9 = v7[5];
  v10 = sub_1B77FF988();
  v11 = *(*(v10 - 8) + 16);
  v11(boxed_opaque_existential_1 + v9, v0 + v4, v10);
  v11(boxed_opaque_existential_1 + v7[6], v0 + v3[7], v10);
  v12 = *(v0 + v3[9]);
  v13 = (v0 + v3[10]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v30;
  *boxed_opaque_existential_1 = v31;
  boxed_opaque_existential_1[1] = v16;
  *(boxed_opaque_existential_1 + v7[7]) = v12;
  v17 = (boxed_opaque_existential_1 + v7[8]);
  *v17 = v14;
  v17[1] = v15;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v18 = v34;
  v19 = __swift_project_value_buffer(v34, qword_1EB991BE8);
  (*(v33 + 16))(v32, v19, v18);
  sub_1B77FE988();
  v20 = v35;
  v21 = sub_1B77FE998();
  v23 = v22;

  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    v24 = v39;
    *(v39 + 16) = 0;
  }

  else
  {
    v25 = sub_1B77FF5A8();
    v27 = v26;
    sub_1B720A388(v21, v23);
    v24 = v39;
    *(v39 + 32) = 0x746E65736E6F43;
    v24[5] = 0xE700000000000000;
    v24[6] = v25;
    v24[7] = v27;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v24;
}

void sub_1B727E2D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v162 = a1;
  v163 = a2;
  v157 = a4;
  v5 = sub_1B77FF988();
  v161 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v173 = &v155 - v12;
  v13 = type metadata accessor for FinanceNetworkError();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v167 = (&v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v164 = (&v155 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v165 = &v155 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v169 = (&v155 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = (&v155 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v170 = &v155 - v25;
  v172 = sub_1B77FE8B8();
  v174 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for RawBankConnectData.Consent(0);
  v27 = MEMORY[0x1EEE9AC00](v166);
  v158 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v155 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v159 = &v155 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v160 = &v155 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v155 - v36;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {
    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v50 = v49;
    v51 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v50 = v51;
    v50[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v39 = v38;
  v175 = v13;
  v40 = a3;
  v41 = [v39 statusCode];
  if (v41 == 429)
  {
    v170 = v40;
    v72 = v161;
    v73 = v173;
    (*(v161 + 56))(v173, 1, 1, v5);
    v74 = sub_1B7800838();
    v75 = v39;
    v76 = [v39 valueForHTTPHeaderField_];

    if (v76)
    {
      v77 = sub_1B7800868();
      v79 = v78;

      sub_1B77FF938();
      sub_1B7404B00(v77, v79, v11);
      v73 = v173;

      (*(v72 + 8))(v7, v5);
      sub_1B7205418(v73, &qword_1EB98EBD0);
      sub_1B722376C(v11, v73, &qword_1EB98EBD0);
    }

    v80 = v165;
    sub_1B7280900(v73, v165);
    swift_storeEnumTagMultiPayload();
    v81 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B728075C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v169 = swift_allocError();
    v83 = v82;
    v84 = v170;
    v85 = sub_1B7800838();
    v86 = [v75 valueForHTTPHeaderField_];

    if (v86)
    {
      sub_1B7800868();

      v87 = sub_1B77FF548();
      v89 = v88;

      if (v89 >> 60 == 15)
      {
        sub_1B7280708();
        v90 = swift_allocError();
        *v91 = 3;
        swift_willThrow();
      }

      else
      {
        sub_1B77FE8F8();
        swift_allocObject();
        sub_1B77FE8E8();
        if (qword_1EB98E9B0 != -1)
        {
          swift_once();
        }

        v114 = v172;
        v115 = __swift_project_value_buffer(v172, qword_1EB991BC8);
        (*(v174 + 16))(v171, v115, v114);
        sub_1B77FE8C8();
        sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v116 = v159;
        v117 = v168;
        sub_1B77FE8D8();
        if (!v117)
        {

          sub_1B72380B8(v87, v89);

          sub_1B727C3E8(v116, v83, type metadata accessor for RawBankConnectData.Consent);
          sub_1B727C3E8(v165, v83 + *(v81 + 20), type metadata accessor for FinanceNetworkError);
          swift_willThrow();

          sub_1B7205418(v173, &qword_1EB98EBD0);
          return;
        }

        sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        v90 = swift_allocError();
        *v118 = v117;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B72380B8(v87, v89);
        v80 = v165;
      }
    }

    else
    {
      sub_1B7280708();
      v90 = swift_allocError();
      *v106 = 0;
      swift_willThrow();
    }

    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B727BBB8(v80, v119, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B72807F8(v80, type metadata accessor for FinanceNetworkError);
    sub_1B7205418(v173, &qword_1EB98EBD0);

    v112 = v169;
    v113 = v81;
    goto LABEL_60;
  }

  if (v41 == 403)
  {
    sub_1B77FE8F8();
    swift_allocObject();
    sub_1B77FE8E8();
    v54 = v171;
    v53 = v172;
    if (qword_1EB98E9B0 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v53, qword_1EB991BC8);
    v56 = *(v174 + 16);
    v174 += 16;
    v167 = v56;
    v56(v54, v55, v53);
    sub_1B77FE8C8();
    sub_1B7280970();
    v57 = v168;
    sub_1B77FE8D8();
    if (v57)
    {
    }

    else
    {

      if (v177 == 1)
      {
        goto LABEL_14;
      }

      if (v177 == 2)
      {
        sub_1B72809C4();
        *v24 = swift_allocError();
        goto LABEL_14;
      }
    }

    *v24 = 403;
LABEL_14:
    swift_storeEnumTagMultiPayload();
    v58 = v170;
    sub_1B727C3E8(v24, v170, type metadata accessor for FinanceNetworkError);
    sub_1B727BBB8(v58, v169, type metadata accessor for FinanceNetworkError);
    v59 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B728075C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v173 = v59;
    v60 = swift_allocError();
    v62 = v61;
    v63 = v40;
    v64 = sub_1B7800838();
    v65 = [v39 valueForHTTPHeaderField_];

    if (v65)
    {
      v168 = v62;
      v66 = v60;
      sub_1B7800868();

      v67 = sub_1B77FF548();
      v69 = v68;

      if (v69 >> 60 != 15)
      {
        swift_allocObject();
        sub_1B77FE8E8();
        v167(v171, v55, v172);
        sub_1B77FE8C8();
        sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v109 = v160;
        sub_1B77FE8D8();

        sub_1B72380B8(v67, v69);

        v131 = v168;
        sub_1B727C3E8(v109, v168, type metadata accessor for RawBankConnectData.Consent);
        sub_1B727C3E8(v169, v131 + *(v173 + 20), type metadata accessor for FinanceNetworkError);
        swift_willThrow();

        sub_1B72807F8(v170, type metadata accessor for FinanceNetworkError);
        return;
      }

      sub_1B7280708();
      v70 = swift_allocError();
      *v71 = 3;
      swift_willThrow();
      v60 = v66;
    }

    else
    {
      sub_1B7280708();
      v70 = swift_allocError();
      *v105 = 0;
      swift_willThrow();
    }

    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v110 = v169;
    sub_1B727BBB8(v169, v111, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B72807F8(v110, type metadata accessor for FinanceNetworkError);
    sub_1B72807F8(v170, type metadata accessor for FinanceNetworkError);

    v112 = v60;
    v113 = v173;
    goto LABEL_60;
  }

  if (v41 != 200)
  {
    v92 = v164;
    *v164 = v41;
    swift_storeEnumTagMultiPayload();
    v93 = type metadata accessor for BankConnectErrorWithConsent(0);
    sub_1B728075C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
    v173 = swift_allocError();
    v94 = v40;
    v96 = v95;
    v97 = v94;
    v98 = sub_1B7800838();
    v99 = [v39 valueForHTTPHeaderField_];

    if (v99)
    {
      sub_1B7800868();

      v100 = sub_1B77FF548();
      v102 = v101;

      if (v102 >> 60 == 15)
      {
        sub_1B7280708();
        v103 = swift_allocError();
        *v104 = 3;
        swift_willThrow();
      }

      else
      {
        sub_1B77FE8F8();
        swift_allocObject();
        sub_1B77FE8E8();
        if (qword_1EB98E9B0 != -1)
        {
          swift_once();
        }

        v126 = v172;
        v127 = __swift_project_value_buffer(v172, qword_1EB991BC8);
        (*(v174 + 16))(v171, v127, v126);
        sub_1B77FE8C8();
        sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
        v128 = v168;
        sub_1B77FE8D8();
        if (!v128)
        {

          sub_1B72380B8(v100, v102);

          sub_1B727C3E8(v31, v96, type metadata accessor for RawBankConnectData.Consent);
          sub_1B727C3E8(v164, v96 + *(v93 + 20), type metadata accessor for FinanceNetworkError);
          swift_willThrow();

          return;
        }

        sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        v103 = swift_allocError();
        *v129 = v128;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B72380B8(v100, v102);
        v92 = v164;
      }
    }

    else
    {
      sub_1B7280708();
      v103 = swift_allocError();
      *v108 = 0;
      swift_willThrow();
    }

    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    sub_1B727BBB8(v92, v130, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B72807F8(v92, type metadata accessor for FinanceNetworkError);
    v112 = v173;
    v113 = v93;
LABEL_60:
    MEMORY[0x1B8CA76D0](v112, v113);
    return;
  }

  v42 = sub_1B7800838();
  v43 = [v39 valueForHTTPHeaderField_];

  v156 = v39;
  if (v43)
  {
    v170 = v40;
    sub_1B7800868();

    v44 = sub_1B77FF548();
    v46 = v45;

    if (v46 >> 60 == 15)
    {
      sub_1B7280708();
      v47 = swift_allocError();
      *v48 = 3;
      swift_willThrow();
      v169 = 0;
      v40 = v170;
    }

    else
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v120 = v172;
      v121 = __swift_project_value_buffer(v172, qword_1EB991BC8);
      v122 = *(v174 + 16);
      v123 = v171;
      v173 = v121;
      v169 = v122;
      v122(v171);
      sub_1B77FE8C8();
      sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
      v124 = v168;
      sub_1B77FE8D8();
      if (!v124)
      {

        sub_1B72380B8(v44, v46);
        swift_allocObject();
        sub_1B77FE8E8();
        (v169)(v123, v173, v120);
        sub_1B77FE8C8();
        sub_1B7280A18();
        sub_1B77FE8D8();

        v152 = v176;
        v153 = v37;
        v154 = v157;
        sub_1B727C3E8(v153, v157, type metadata accessor for RawBankConnectData.Consent);
        *(v154 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990730) + 36)) = v152;
        return;
      }

      sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      v47 = swift_allocError();
      *v125 = v124;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1B72380B8(v44, v46);
      v169 = 0;
      v40 = v170;
    }
  }

  else
  {
    sub_1B7280708();
    v47 = swift_allocError();
    *v107 = 0;
    swift_willThrow();
    v169 = 0;
  }

  *v167 = v47;
  swift_storeEnumTagMultiPayload();
  v132 = type metadata accessor for BankConnectErrorWithConsent(0);
  sub_1B728075C(&qword_1EB9906E8, type metadata accessor for BankConnectErrorWithConsent);
  v173 = swift_allocError();
  v134 = v133;
  v135 = v40;
  v136 = v47;
  v137 = sub_1B7800838();
  v138 = [v156 valueForHTTPHeaderField_];

  if (!v138)
  {
    sub_1B7280708();
    v142 = swift_allocError();
    *v144 = 0;
    swift_willThrow();
    goto LABEL_59;
  }

  sub_1B7800868();

  v139 = sub_1B77FF548();
  v141 = v140;

  if (v141 >> 60 == 15)
  {
    sub_1B7280708();
    v142 = swift_allocError();
    *v143 = 3;
    swift_willThrow();
LABEL_59:
    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v150 = v167;
    sub_1B727BBB8(v167, v151, type metadata accessor for FinanceNetworkError);
    swift_willThrow();

    sub_1B72807F8(v150, type metadata accessor for FinanceNetworkError);
    v112 = v173;
    v113 = v132;
    goto LABEL_60;
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v145 = v172;
  v146 = __swift_project_value_buffer(v172, qword_1EB991BC8);
  (*(v174 + 16))(v171, v146, v145);
  sub_1B77FE8C8();
  sub_1B728075C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent);
  v147 = v158;
  v148 = v169;
  sub_1B77FE8D8();
  if (v148)
  {

    sub_1B728075C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    v142 = swift_allocError();
    *v149 = v148;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1B72380B8(v139, v141);
    goto LABEL_59;
  }

  sub_1B72380B8(v139, v141);

  sub_1B727C3E8(v147, v134, type metadata accessor for RawBankConnectData.Consent);
  sub_1B727C3E8(v167, v134 + *(v132 + 20), type metadata accessor for FinanceNetworkError);
  swift_willThrow();
}

unint64_t sub_1B727FD7C()
{
  result = qword_1EB990650;
  if (!qword_1EB990650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990650);
  }

  return result;
}

unint64_t sub_1B727FDF4()
{
  result = qword_1EB99A6C0;
  if (!qword_1EB99A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A6C0);
  }

  return result;
}

unint64_t sub_1B727FE94()
{
  result = qword_1EB99A6A0;
  if (!qword_1EB99A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99A6A0);
  }

  return result;
}

void sub_1B727FF10()
{
  sub_1B727FFC4();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BankConnectAuthorizationConfiguration();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B727FFC4()
{
  if (!qword_1EDAFA078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99A670);
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAFA078);
    }
  }
}

void sub_1B7280028()
{
  if (!qword_1EDAFD2C0)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAFD2C0);
    }
  }
}

void sub_1B7280078()
{
  sub_1B77FF4F8();
  if (v0 <= 0x3F)
  {
    sub_1B72800EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B72800EC()
{
  if (!qword_1EDAF9438)
  {
    v0 = sub_1B7800748();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAF9438);
    }
  }
}

uint64_t sub_1B7280170()
{
  result = type metadata accessor for BankConnectAuthorizationPayload(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FraudAssessmentResult();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B728022C()
{
  type metadata accessor for BankConnectConsent();
  if (v0 <= 0x3F)
  {
    sub_1B727FFC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7280308()
{
  result = type metadata accessor for BankConnectConsent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B72803A8()
{
  result = qword_1EB9906A0;
  if (!qword_1EB9906A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906A0);
  }

  return result;
}

unint64_t sub_1B7280400()
{
  result = qword_1EB9906A8;
  if (!qword_1EB9906A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906A8);
  }

  return result;
}

unint64_t sub_1B7280458()
{
  result = qword_1EB9906B0;
  if (!qword_1EB9906B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906B0);
  }

  return result;
}

unint64_t sub_1B72804B0()
{
  result = qword_1EB9906B8;
  if (!qword_1EB9906B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906B8);
  }

  return result;
}

unint64_t sub_1B7280508()
{
  result = qword_1EB9906C0;
  if (!qword_1EB9906C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906C0);
  }

  return result;
}

unint64_t sub_1B7280560()
{
  result = qword_1EB9906C8;
  if (!qword_1EB9906C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906C8);
  }

  return result;
}

unint64_t sub_1B72805B8()
{
  result = qword_1EB9906D0;
  if (!qword_1EB9906D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906D0);
  }

  return result;
}

unint64_t sub_1B7280610()
{
  result = qword_1EB9906D8;
  if (!qword_1EB9906D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906D8);
  }

  return result;
}

unint64_t sub_1B7280668()
{
  result = qword_1EB9906E0;
  if (!qword_1EB9906E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906E0);
  }

  return result;
}

unint64_t sub_1B72806BC()
{
  result = qword_1EB99DE70;
  if (!qword_1EB99DE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB99DE70);
  }

  return result;
}

unint64_t sub_1B7280708()
{
  result = qword_1EB9906F0;
  if (!qword_1EB9906F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9906F0);
  }

  return result;
}

uint64_t sub_1B728075C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B72807A4()
{
  result = qword_1EB990700;
  if (!qword_1EB990700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990700);
  }

  return result;
}

uint64_t sub_1B72807F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B7280858()
{
  result = qword_1EB990710;
  if (!qword_1EB990710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990710);
  }

  return result;
}

unint64_t sub_1B72808AC()
{
  result = qword_1EB990718;
  if (!qword_1EB990718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990718);
  }

  return result;
}

uint64_t sub_1B7280900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7280970()
{
  result = qword_1EB99E0E0;
  if (!qword_1EB99E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99E0E0);
  }

  return result;
}

unint64_t sub_1B72809C4()
{
  result = qword_1EB990720;
  if (!qword_1EB990720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990720);
  }

  return result;
}

unint64_t sub_1B7280A18()
{
  result = qword_1EB990728;
  if (!qword_1EB990728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990728);
  }

  return result;
}

void sub_1B7280AC4(id *a1)
{
  v1 = [*a1 updatedAt];
  sub_1B77FF928();
}

void sub_1B7280B24(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setUpdatedAt_];
}

uint64_t sub_1B7280B80@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 earliestRetryDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B7280C24(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setEarliestRetryDate_];
}

void ManagedMapsTransactionInsight.categorySource.getter(char *a1@<X8>)
{
  v3 = [v1 transactionCategorySourceValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortValue];

    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (!v5)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 2;
  }

  *a1 = v6;
}

void ManagedMapsTransactionInsight.category.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 13)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [v1 setFallbackCategoryValue_];
}

void ManagedMapsTransactionInsight.categorySource.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [v1 setTransactionCategorySourceValue_];
}

id ManagedMapsTransactionInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedMapsTransactionInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedMapsTransactionInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char sub_1B7281040@<W0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = [*a1 fallbackCategoryValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortValue];

    LOBYTE(v3) = TransactionCategory.init(rawValue:)(v5);
    v6 = v8;
  }

  else
  {
    v6 = 13;
  }

  *a2 = v6;
  return v3;
}

void sub_1B72810C0(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 13)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v5 = v4;
  [v3 setFallbackCategoryValue_];
}

void (*ManagedMapsTransactionInsight.category.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = a1 + 1;
  v3 = [v1 fallbackCategoryValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortValue];

    TransactionCategory.init(rawValue:)(v5);
  }

  else
  {
    *v2 = 13;
  }

  return sub_1B72811E0;
}

void sub_1B72811E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 13)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [*a1 setFallbackCategoryValue_];
}

void sub_1B7281268(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v5 = v4;
  [v3 setTransactionCategorySourceValue_];
}

void (*ManagedMapsTransactionInsight.categorySource.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 transactionCategorySourceValue];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 shortValue];

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 2;
  }

  *(a1 + 8) = v7;
  return sub_1B7281390;
}

void sub_1B7281390(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [*a1 setTransactionCategorySourceValue_];
}

void ManagedMapsTransactionInsight.categoryAndSource.getter(__int16 *a1@<X8>)
{
  v3 = [v1 fallbackCategoryValue];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 shortValue];

  TransactionCategory.init(rawValue:)(v5);
  if (v10 == 13)
  {
    goto LABEL_8;
  }

  v6 = [v1 transactionCategorySourceValue];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v6 shortValue];

  if (v8)
  {
    if (v8 == 1)
    {
      LOWORD(v8) = 256;
      goto LABEL_7;
    }

LABEL_8:
    v9 = 512;
    goto LABEL_9;
  }

LABEL_7:
  v9 = v8 | v10;
LABEL_9:
  *a1 = v9;
}

id sub_1B7281514@<X0>(SEL *a1@<X0>, uint64_t (*a2)(id)@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  result = [v4 *a1];
  if (result)
  {
    v8 = result;
    v9 = [result shortValue];

    return a2(v9);
  }

  else
  {
    *a4 = a3;
  }

  return result;
}

char sub_1B72815B4@<W0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = [*a1 classificationMissReasonValue];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortValue];

    LOBYTE(v3) = MapsClassificationMissReason.init(rawValue:)(v5);
    v6 = v8;
  }

  else
  {
    v6 = 4;
  }

  *a2 = v6;
  return v3;
}

void sub_1B7281634(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v5 = v4;
  [v3 setClassificationMissReasonValue_];
}

void ManagedMapsTransactionInsight.classificationMissReason.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [v1 setClassificationMissReasonValue_];
}

void (*ManagedMapsTransactionInsight.classificationMissReason.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 classificationMissReasonValue];
  v5 = 4;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 shortValue];

    if (v7 >= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v7;
    }
  }

  *(a1 + 8) = v5;
  return sub_1B72817D4;
}

void sub_1B72817D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  v4 = v3;
  [*a1 setClassificationMissReasonValue_];
}

id static ManagedMapsTransactionInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedMapsTransactionInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id ManagedInternalTransaction.mapsInsight.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 mapsInsightObject];

  return v2;
}

uint64_t sub_1B728198C(__objc2_prot **a1)
{
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990740);
  *(swift_allocObject() + 16) = xmmword_1B7807CD0;
  swift_getKeyPath();
  sub_1B7282114();
  sub_1B77FED98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990750);
  sub_1B728216C(&qword_1EB990758, &qword_1EB990748);
  sub_1B728216C(&qword_1EB990760, &qword_1EB990750);
  sub_1B728216C(&qword_1EB990768, &qword_1EB990740);
  v1 = &v44;
  v2 = sub_1B7800AD8();

  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v4 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x1B8CA5DC0](0, v2);
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v43 = *(v2 + 32);
    }

    v6 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v44 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (i == v6)
      {
        if (!(v1 >> 62))
        {
          v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_19;
        }

LABEL_50:
        v11 = sub_1B7801958();
LABEL_19:
        v12 = MEMORY[0x1E69E7CC0];
        if (!v11)
        {
          v14 = 0;
          goto LABEL_25;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          goto LABEL_84;
        }

        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_86;
        }

        v13 = v1[4];
        while (2)
        {
          v14 = v13;
LABEL_25:

          [v43 setMerchantObject_];

          v1 = 0;
          v44 = v12;
          while (i != v1)
          {
            if (v4)
            {
              v15 = MEMORY[0x1B8CA5DC0](v1, v2);
            }

            else
            {
              if (v1 >= *(v5 + 16))
              {
                goto LABEL_45;
              }

              v15 = *(v2 + 8 * v1 + 32);
            }

            v16 = v15;
            v17 = (v1 + 1);
            if (__OFADD__(v1, 1))
            {
              goto LABEL_43;
            }

            v18 = [v15 brandObject];

            v1 = (v1 + 1);
            if (v18)
            {
              MEMORY[0x1B8CA4F20]();
              if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B7800C58();
              }

              sub_1B7800C88();
              v42 = v44;
              v1 = v17;
            }
          }

          v12 = v42;
          if (v42 >> 62)
          {
            result = sub_1B7801958();
            if (!result)
            {
              goto LABEL_52;
            }

LABEL_38:
            if ((v42 & 0xC000000000000001) != 0)
            {
LABEL_86:
              v20 = MEMORY[0x1B8CA5DC0](0, v12);
            }

            else
            {
              if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v20 = v42[4];
            }

            v1 = v20;
          }

          else
          {
            result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
              goto LABEL_38;
            }

LABEL_52:
            v1 = 0;
          }

          [v43 setBrandObject_];

          v22 = 0;
          v12 = &off_1E7CAF000;
          while (1)
          {
            if (v4)
            {
              v23 = MEMORY[0x1B8CA5DC0](v22, v2);
            }

            else
            {
              if (v22 >= *(v5 + 16))
              {
                goto LABEL_83;
              }

              v23 = *(v2 + 8 * v22 + 32);
            }

            v1 = v23;
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            v25 = [v23 fallbackCategoryValue];
            if (v25)
            {
              v26 = v25;
              v27 = [v25 shortValue];

              if (v27 < 0xD)
              {
                v28 = [v1 transactionCategorySourceValue];
                if (v28)
                {
                  v29 = v28;
                  v30 = [v28 shortValue];

                  if (v30 <= 1)
                  {

                    v31 = v1;
                    v32 = [v31 fallbackCategoryValue];
                    if (v32)
                    {
                      v33 = v32;
                      v34 = [v32 shortValue];

                      TransactionCategory.init(rawValue:)(v34);
                      v21 = v43;
                      if (v44 == 13)
                      {
                        v35 = 0;
                      }

                      else
                      {
                        v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
                      }

LABEL_69:
                      [v21 setFallbackCategoryValue_];

                      if (!v1)
                      {
                        goto LABEL_75;
                      }

                      v36 = v1;
                      v37 = [v36 transactionCategorySourceValue];
                      if (!v37)
                      {

                        goto LABEL_75;
                      }

                      v38 = v37;
                      v39 = [v37 shortValue];

                      if (v39)
                      {
                        if (v39 == 1)
                        {
                          v40 = 1;
                          goto LABEL_77;
                        }

LABEL_75:
                        v41 = 0;
                      }

                      else
                      {
                        v40 = 0;
LABEL_77:
                        v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
                      }

                      [v21 setTransactionCategorySourceValue_];

                      return v21;
                    }

                    v35 = 0;
LABEL_68:
                    v21 = v43;
                    goto LABEL_69;
                  }
                }
              }
            }

            ++v22;
            if (v24 == i)
            {

              v35 = 0;
              v1 = 0;
              goto LABEL_68;
            }
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          v13 = MEMORY[0x1B8CA5DC0](0, v1);
          continue;
        }
      }

      if (v4)
      {
        v7 = MEMORY[0x1B8CA5DC0](v6, v2);
      }

      else
      {
        if (v6 >= *(v5 + 16))
        {
          goto LABEL_44;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 merchantObject];

      ++v6;
      if (v10)
      {
        MEMORY[0x1B8CA4F20]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();
        v1 = v44;
        v6 = v9;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return 0;
}

unint64_t sub_1B7282114()
{
  result = qword_1EB98EBD8;
  if (!qword_1EB98EBD8)
  {
    sub_1B77FF988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98EBD8);
  }

  return result;
}

uint64_t sub_1B728216C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static ManagedApplePayMerchantTokenMetadata.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedApplePayMerchantTokenMetadata;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

void sub_1B7282208(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1B7800868();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_1B728225C@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1B77FF478();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1B77FF4F8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_1B72822FC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7228664(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF4F8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF3F8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t ManagedApplePayMerchantTokenMetadata.TokenCategory.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x7961705F6F747561 && a2 == 0xEC000000746E656DLL;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0xD000000000000011 && 0x80000001B78768C0 == v3 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0xD000000000000011 && 0x80000001B78768E0 == v3 || (result = sub_1B78020F8(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 2;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t ManagedApplePayMerchantTokenMetadata.TokenCategory.rawValue.getter()
{
  v1 = v0[1];
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x7961705F6F747561;
  }

  sub_1B71E4C5C(*v0, v1);
  return v4;
}

double sub_1B72825EC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  ManagedApplePayMerchantTokenMetadata.TokenCategory.init(rawValue:)(*a1, a1[1], &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B728262C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0xEC000000746E656DLL;
  v5 = 0x7961705F6F747561;
  v6 = 0xD000000000000011;
  v7 = 0x80000001B78768C0;
  v8 = 0xD000000000000011;
  v9 = 0x80000001B78768E0;
  if (v3 != 2)
  {
    v8 = *v1;
    v9 = v1[1];
  }

  if (v3 != 1)
  {
    v6 = v8;
    v7 = v9;
  }

  if (v3)
  {
    v5 = v6;
    v4 = v7;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1B71E4C5C(v2, v3);
}

id ManagedApplePayMerchantTokenMetadata.__allocating_init(tokenIdentifier:tokenCategory:tokenIssuanceDate:primaryAccountIdentifier:primaryAccountDisplayName:primaryAccountSuffix:merchantIdentifier:merchantName:merchantDomain:merchantApplicationIdentifier:context:)(int a1, int a2, uint64_t *a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v20 = v19;
  v24 = *a3;
  v23 = a3[1];
  v25 = [objc_allocWithZone(v20) initWithContext_];
  v26 = sub_1B7800838();

  [v25 setTokenIdentifier_];

  sub_1B71E4C5C(v24, v23);
  v27 = sub_1B7800838();
  sub_1B7282B50(v24, v23);

  [v25 setTokenCategoryValue_];

  v28 = sub_1B77FF8B8();
  [v25 setTokenIssuanceDate_];

  v29 = sub_1B7800838();

  [v25 setPrimaryAccountIdentifier_];

  if (a8)
  {
    v30 = sub_1B7800838();
  }

  else
  {
    v30 = 0;
  }

  [v25 setPrimaryAccountDisplayName_];

  if (a10)
  {
    v31 = sub_1B7800838();
  }

  else
  {
    v31 = 0;
  }

  [v25 setPrimaryAccountSuffix_];

  v32 = sub_1B7800838();

  [v25 setMerchantIdentifier_];

  v33 = sub_1B7800838();

  [v25 setMerchantName_];

  if (a16)
  {
    v34 = sub_1B7800838();
  }

  else
  {
    v34 = 0;
  }

  [v25 setMerchantDomain_];

  if (a18)
  {
    v35 = sub_1B7800838();
  }

  else
  {
    v35 = 0;
  }

  [v25 setMerchantApplicationIdentifier_];

  v36 = sub_1B77FF988();
  (*(*(v36 - 8) + 8))(a4, v36);
  return v25;
}

void ManagedApplePayMerchantTokenMetadata.tokenCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1B71E4C5C(*a1, v3);
  v4 = sub_1B7800838();
  sub_1B7282B50(v2, v3);

  [v1 setTokenCategoryValue_];
}

uint64_t sub_1B7282B50(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

Swift::Void __swiftcall ManagedApplePayMerchantTokenMetadata.awakeFromInsert()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_awakeFromInsert);
  sub_1B77FF938();
  v7 = sub_1B77FF8B8();
  (*(v4 + 8))(v6, v3);
  [v1 setPrimitiveCreationDate_];
}

uint64_t ManagedApplePayMerchantTokenMetadata.tokenCategory.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 tokenCategoryValue];
  v4 = sub_1B7800868();
  v6 = v5;

  return ManagedApplePayMerchantTokenMetadata.TokenCategory.init(rawValue:)(v4, v6, a1);
}

double sub_1B7282E08@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [*a1 tokenCategoryValue];
  v4 = sub_1B7800868();
  v6 = v5;

  ManagedApplePayMerchantTokenMetadata.TokenCategory.init(rawValue:)(v4, v6, &v8);
  result = *&v8;
  *a2 = v8;
  return result;
}

void sub_1B7282E7C(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_1B71E4C5C(*a1, *(a1 + 8));
  v3 = sub_1B7800838();

  [v2 setTokenCategoryValue_];
}

void (*ManagedApplePayMerchantTokenMetadata.tokenCategory.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 tokenCategoryValue];
  v4 = sub_1B7800868();
  v6 = v5;

  v7 = v4 == 0x7961705F6F747561 && v6 == 0xEC000000746E656DLL;
  if (v7 || (sub_1B78020F8() & 1) != 0)
  {

    v4 = 0;
    v6 = 0;
  }

  else
  {
    v9 = v4 == 0xD000000000000011 && 0x80000001B78768C0 == v6;
    if (v9 || (sub_1B78020F8() & 1) != 0)
    {

      v4 = 0;
      v6 = 1;
    }

    else
    {
      v10 = v4 == 0xD000000000000011 && 0x80000001B78768E0 == v6;
      if (v10 || (sub_1B78020F8() & 1) != 0)
      {

        v4 = 0;
        v6 = 2;
      }
    }
  }

  *a1 = v4;
  a1[1] = v6;
  return sub_1B72830E0;
}

void sub_1B72830E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = a1[2];
    sub_1B71E4C5C(*a1, v3);
    sub_1B71E4C5C(v2, v3);
    v5 = sub_1B7800838();
    sub_1B7282B50(v2, v3);

    [v4 setTokenCategoryValue_];

    sub_1B7282B50(v2, v3);
  }

  else
  {
    v6 = a1[2];
    sub_1B71E4C5C(*a1, v3);
    v7 = sub_1B7800838();
    sub_1B7282B50(v2, v3);

    [v6 setTokenCategoryValue_];
  }
}

id ManagedApplePayMerchantTokenMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedApplePayMerchantTokenMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedApplePayMerchantTokenMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void keypath_setTm_2(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1B7800838();
  [v6 *a5];
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit36ManagedApplePayMerchantTokenMetadataC0G8CategoryO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7283558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B72835B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t RawBankConnectData.Account.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 publicAccountObject];
  ManagedAccount.accountType.getter(&v6);

  if (v6)
  {
    sub_1B7283A78(a1, a2);
  }

  else
  {
    sub_1B72836BC(a1, a2);
  }

  type metadata accessor for RawBankConnectData.Account(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B72836BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = 0;
  *(a2 + 64) = 3;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v57 = v8;
  v11 = *(v8 + 44);
  v12 = type metadata accessor for RawBankConnectData.Actions();
  v13 = *(v12 - 8);
  v55 = *(v13 + 56);
  v56 = v11;
  v53 = v13 + 56;
  v54 = a2;
  v14 = v12;
  v55(a2 + v11, 1, 1);
  ManagedInternalAccount.accountStatus.getter(v58);
  v15 = v58[0];
  v16 = [a1 accountId];
  v17 = sub_1B7800868();
  v51 = v18;
  v52 = v17;

  v19 = [a1 institutionId];
  sub_1B7800868();

  v20 = [a1 fpanIds];
  v50 = sub_1B7800C38();

  ManagedInternalAccount.accountNumber.getter(v58);
  v48 = v58[1];
  v49 = v58[0];
  v21 = v59;
  v22 = [a1 publicAccountObject];
  v23 = [v22 displayName];

  v24 = sub_1B7800868();
  v46 = v25;
  v47 = v24;

  v26 = [a1 publicAccountObject];
  v27 = [v26 accountDescription];

  if (v27)
  {
    v28 = sub_1B7800868();
    v44 = v29;
    v45 = v28;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v43 = 0x30302010003uLL >> (8 * v21);
  v30 = 0x301020100uLL >> (8 * v15);
  v31 = ManagedInternalAccount.latestAccountBalanceObject.getter();
  v32 = v57;
  sub_1B72845A0(v31, &v10[*(v57 + 40)]);
  v33 = v55;
  (v55)(v6, 1, 1, v14);
  v34 = [a1 thirdPartyShareable];

  v35 = v6;
  v36 = *(v32 + 44);
  v33(&v10[v36], 1, 1, v14);
  v37 = v51;
  *v10 = v52;
  *(v10 + 1) = v37;
  v38 = v49;
  *(v10 + 2) = v50;
  *(v10 + 3) = v38;
  *(v10 + 4) = v48;
  v10[40] = v43;
  v39 = v46;
  *(v10 + 6) = v47;
  *(v10 + 7) = v39;
  v10[64] = v30;
  v40 = v44;
  *(v10 + 9) = v45;
  *(v10 + 10) = v40;
  sub_1B7213740(v35, &v10[v36], &qword_1EB990770);
  v10[*(v32 + 48)] = v34;
  v41 = v54;
  sub_1B7205418(v54 + v56, &qword_1EB990770);
  return sub_1B72850C0(v10, v41, type metadata accessor for RawBankConnectData.AssetAccount);
}

void sub_1B7283A78(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v153 = &v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v121 - v9;
  v10 = type metadata accessor for RawBankConnectData.AccountBalances(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v151 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = 0;
  *(a2 + 64) = 3;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v16 = (a2 + v13[11]);
  v16[4] = 0u;
  v122 = v16 + 4;
  v16[2] = 0u;
  v16[3] = 0u;
  *v16 = 0u;
  v16[1] = 0u;
  v138 = v16;
  v17 = (a2 + v13[12]);
  v17[4] = 0u;
  v123 = v17 + 4;
  v17[2] = 0u;
  v17[3] = 0u;
  *v17 = 0u;
  v17[1] = 0u;
  v149 = v17;
  v18 = a2 + v13[13];
  v19 = sub_1B77FF988();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v147 = v18;
  v143 = v21;
  v144 = v19;
  v142 = v20 + 56;
  (v21)(v18, 1, 1);
  v22 = (a2 + *(v12 + 56));
  v22[4] = 0u;
  v124 = v22 + 4;
  v22[2] = 0u;
  v22[3] = 0u;
  *v22 = 0u;
  v22[1] = 0u;
  v150 = v22;
  v139 = v12;
  v23 = *(v12 + 60);
  v148 = a2;
  v24 = a2 + v23;
  v25 = type metadata accessor for RawBankConnectData.Actions();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v146 = v24;
  v140 = v27;
  v141 = v25;
  (v27)(v24, 1, 1);
  ManagedInternalAccount.accountStatus.getter(&v167);
  v137 = 0x301020100uLL >> (8 * v167);
  v29 = [a1 accountId];
  v30 = sub_1B7800868();
  v135 = v31;
  v136 = v30;

  v32 = [a1 institutionId];
  sub_1B7800868();

  v33 = [a1 fpanIds];
  v134 = sub_1B7800C38();

  ManagedInternalAccount.accountNumber.getter(&v167);
  v132 = *(&v167 + 1);
  v133 = v167;
  v131 = 0x30302010003uLL >> (8 * v168);
  v34 = [a1 publicAccountObject];
  v35 = [v34 displayName];

  v36 = sub_1B7800868();
  v129 = v37;
  v130 = v36;

  v154 = a1;
  v38 = [a1 publicAccountObject];
  v39 = [v38 accountDescription];

  if (v39)
  {
    v40 = sub_1B7800868();
    v127 = v41;
    v128 = v40;
  }

  else
  {
    v127 = 0;
    v128 = 0;
  }

  v42 = v154;
  v43 = ManagedInternalAccount.latestAccountBalanceObject.getter();
  sub_1B72845A0(v43, v151);
  v44 = [v42 publicAccountObject];
  v45 = [v44 nextPaymentDate];

  v46 = v145;
  if (v45)
  {
    sub_1B77FF928();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = v143;
  v49 = v144;
  v143(v46, v47, 1, v144);
  sub_1B722376C(v46, v152, &qword_1EB98EBD0);
  v51 = v140;
  v50 = v141;
  v140(v153, 1, 1, v141);
  LODWORD(v145) = [v154 thirdPartyShareable];
  v125 = v28;
  v52 = v139;
  v53 = &v15[v139[11]];
  *(v53 + 3) = 0u;
  *(v53 + 4) = 0u;
  *(v53 + 1) = 0u;
  *(v53 + 2) = 0u;
  *v53 = 0u;
  v54 = &v15[v52[12]];
  *(v54 + 3) = 0u;
  *(v54 + 4) = 0u;
  *(v54 + 1) = 0u;
  *(v54 + 2) = 0u;
  *v54 = 0u;
  v126 = v52[13];
  v48(&v15[v126], 1, 1, v49);
  v55 = &v15[v52[14]];
  *(v55 + 3) = 0u;
  *(v55 + 4) = 0u;
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  *v55 = 0u;
  v144 = v52[15];
  v51(&v15[v144], 1, 1, v50);
  v56 = v135;
  *v15 = v136;
  *(v15 + 1) = v56;
  v57 = v133;
  *(v15 + 2) = v134;
  *(v15 + 3) = v57;
  LOBYTE(v57) = v131;
  *(v15 + 4) = v132;
  v15[40] = v57;
  v58 = v129;
  *(v15 + 6) = v130;
  *(v15 + 7) = v58;
  v15[64] = v137;
  v59 = v127;
  *(v15 + 9) = v128;
  *(v15 + 10) = v59;
  sub_1B72850C0(v151, &v15[v52[10]], type metadata accessor for RawBankConnectData.AccountBalances);
  v60 = *(v53 + 2);
  v61 = *(v53 + 3);
  v62 = *v53;
  v162[1] = *(v53 + 1);
  v162[2] = v60;
  v63 = *(v53 + 4);
  v162[3] = v61;
  v162[4] = v63;
  v162[0] = v62;
  sub_1B7205418(v162, &qword_1EB990780);
  *v53 = 0u;
  *(v53 + 1) = 0u;
  *(v53 + 2) = 0u;
  *(v53 + 3) = 0u;
  *(v53 + 4) = 0u;
  v64 = v154;
  v65 = *(v54 + 3);
  v163[2] = *(v54 + 2);
  v163[3] = v65;
  v163[4] = *(v54 + 4);
  v66 = *(v54 + 1);
  v163[0] = *v54;
  v163[1] = v66;
  sub_1B7205418(v163, &qword_1EB990780);
  *v54 = 0u;
  *(v54 + 1) = 0u;
  *(v54 + 2) = 0u;
  *(v54 + 3) = 0u;
  *(v54 + 4) = 0u;
  sub_1B7213740(v152, &v15[v126], &qword_1EB98EBD0);
  v67 = *(v55 + 3);
  v164[2] = *(v55 + 2);
  v164[3] = v67;
  v164[4] = *(v55 + 4);
  v68 = *(v55 + 1);
  v164[0] = *v55;
  v164[1] = v68;
  sub_1B7205418(v164, &qword_1EB990780);
  *v55 = 0u;
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  *(v55 + 3) = 0u;
  *(v55 + 4) = 0u;
  sub_1B7213740(v153, &v15[v144], &qword_1EB990770);
  v15[v52[16]] = v145;
  v69 = v138;
  v70 = v138[4];
  v165[3] = v138[3];
  v165[4] = v70;
  v71 = v138[2];
  v165[1] = v138[1];
  v165[2] = v71;
  v165[0] = *v138;
  sub_1B7205418(v165, &qword_1EB990780);
  v72 = v149[3];
  v166[2] = v149[2];
  v166[3] = v72;
  v166[4] = v149[4];
  v73 = v149[1];
  v166[0] = *v149;
  v166[1] = v73;
  sub_1B7205418(v166, &qword_1EB990780);
  sub_1B7205418(v147, &qword_1EB98EBD0);
  v74 = v150[3];
  v169 = v150[2];
  v170 = v74;
  v171 = v150[4];
  v75 = v150[1];
  v167 = *v150;
  v168 = v75;
  sub_1B7205418(&v167, &qword_1EB990780);
  sub_1B7205418(v146, &qword_1EB990770);
  sub_1B72850C0(v15, v148, type metadata accessor for RawBankConnectData.LiabilityAccount);
  v76 = [v64 publicAccountObject];
  v77 = [v76 creditLimitAmountValue];
  if (v77)
  {
    v78 = v77;
    [v77 decimalValue];
    v79 = [v76 currency];
    v80 = sub_1B7800868();
    v82 = v81;

    v64 = v154;
    v155 = v157;
    LODWORD(v156) = v158;
    v83 = v69[3];
    v159 = v69[2];
    v160 = v83;
    v161 = v69[4];
    v84 = v69[1];
    v157 = *v69;
    v158 = v84;
    sub_1B7205418(&v157, &qword_1EB990780);
    *v69 = v155;
    v85 = v156;
    *(v69 + 3) = 0;
    *(v69 + 4) = 0;
    *(v69 + 2) = v85;
    *(v69 + 10) = 0;
    *(v69 + 44) = 1;
    *(v69 + 6) = v80;
    *(v69 + 7) = v82;
    v86 = v122;
    *v122 = 0;
    v86[1] = 0;
  }

  else
  {
  }

  v87 = [v64 publicAccountObject];
  v88 = [v87 minimumPaymentAmountValue];
  if (v88)
  {
    v89 = v88;
    [v88 decimalValue];
    v90 = v158;
    v91 = v157;
    v92 = [v87 currency];
    v93 = sub_1B7800868();
    v95 = v94;

    v96 = v90;
    v64 = v154;
    CurrencyAmount.init(_:currencyCode:)(v91, *(&v91 + 1), v96, v93, v95, &v157);

    v155 = v157;
    LODWORD(v156) = v158;
    v97 = *(&v158 + 1);
    v98 = v159;
    v99 = v149;
    v100 = v149[3];
    v159 = v149[2];
    v160 = v100;
    v161 = v149[4];
    v101 = v149[1];
    v157 = *v149;
    v158 = v101;
    sub_1B7205418(&v157, &qword_1EB990780);
    *v99 = v155;
    v102 = v156;
    *(v99 + 3) = 0;
    *(v99 + 4) = 0;
    *(v99 + 2) = v102;
    *(v99 + 10) = 0;
    *(v99 + 44) = 1;
    *(v99 + 6) = v97;
    *(v99 + 7) = v98;
    v103 = v123;
    *v123 = 0;
    v103[1] = 0;
  }

  else
  {
  }

  v104 = [v64 publicAccountObject];
  v105 = [v104 overduePaymentAmountValue];
  if (v105)
  {
    v106 = v105;
    [v105 decimalValue];
    v107 = v64;
    v108 = v158;
    v109 = v157;
    v110 = [v104 currency];
    v111 = sub_1B7800868();
    v113 = v112;

    CurrencyAmount.init(_:currencyCode:)(v109, *(&v109 + 1), v108, v111, v113, &v157);
    v155 = v157;
    LODWORD(v156) = v158;
    v114 = *(&v158 + 1);
    v115 = v159;
    v116 = v150;
    v117 = v150[3];
    v159 = v150[2];
    v160 = v117;
    v161 = v150[4];
    v118 = v150[1];
    v157 = *v150;
    v158 = v118;
    sub_1B7205418(&v157, &qword_1EB990780);
    *v116 = v155;
    v119 = v156;
    *(v116 + 3) = 0;
    *(v116 + 4) = 0;
    *(v116 + 2) = v119;
    *(v116 + 10) = 0;
    *(v116 + 44) = 1;
    *(v116 + 6) = v114;
    *(v116 + 7) = v115;
    v120 = v124;
    *v124 = 0;
    v120[1] = 0;
  }

  else
  {
  }
}

uint64_t sub_1B72845A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v111 = &v101 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v108 = &v101 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v101 - v11;
  v12 = sub_1B77FF988();
  v119 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v106 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v112 = &v101 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v101 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v101 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990778);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v105 = (&v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v101 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v104 = (&v101 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v101 - v30;
  v32 = type metadata accessor for RawBankConnectData.InternalAccountBalance(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v33 + 56;
  v34(v31, 1, 1, v32);
  if (!a1)
  {
    v34(v27, 1, 1, v32);
    goto LABEL_25;
  }

  v103 = v21;
  v102 = v19;
  v118 = v35;
  v107 = a2;
  v36 = a1;
  v37 = &off_1E7CAF000;
  v38 = [v36 publicAccountBalanceObject];
  v39 = [v38 availableAmountValue];
  v116 = v32;
  v117 = v12;
  v114 = v27;
  v115 = v34;
  v113 = v31;
  if (v39)
  {
    v40 = v39;
    [v39 decimalValue];
    v41 = v123;
    v42 = v122;
    v43 = [v38 currency];
    v44 = sub_1B7800868();
    v46 = v45;

    CurrencyAmount.init(_:currencyCode:)(v42, *(&v42 + 1), v41, v44, v46, &v122);
    v125 = v122;
    v126 = v123;
    v127 = v124;
    v47 = v36;
    v48 = [v47 &selRef_setValueTransformer_forName_ + 1];
    v49 = [v48 availableAmountAsOf];

    if (v49)
    {
      v50 = v108;
      sub_1B77FF928();

      v51 = 0;
      v52 = v117;
      v53 = v119;
    }

    else
    {
      v51 = 1;
      v52 = v117;
      v53 = v119;
      v50 = v108;
    }

    (*(v53 + 56))(v50, v51, 1, v52);
    v54 = v109;
    sub_1B722376C(v50, v109, &qword_1EB98EBD0);
    v55 = (*(v53 + 48))(v54, 1, v52);
    v27 = v114;
    v34 = v115;
    if (v55 == 1)
    {
      sub_1B721722C(&v125);
      sub_1B7205418(v54, &qword_1EB98EBD0);
      v31 = v113;
      v32 = v116;
      v37 = &off_1E7CAF000;
    }

    else
    {
      v108 = v36;
      v56 = v53;
      v57 = *(v53 + 32);
      v58 = v103;
      v57(v103, v54, v52);
      v59 = v47;
      v60 = [v59 publicAccountBalanceObject];
      sub_1B7264170(&v122);

      v61 = v122;
      if (v122 == 2)
      {
        (*(v56 + 8))(v58, v52);
        sub_1B721722C(&v125);
        v31 = v113;
        v32 = v116;
      }

      else
      {
        v62 = v113;
        sub_1B7205418(v113, &qword_1EB990778);
        v63 = *(&v126 + 1);
        v64 = v127;
        v122 = v125;
        LODWORD(v123) = v126;
        v65 = v102;
        v57(v102, v58, v117);
        v66 = v123;
        v67 = v104;
        *v104 = v122;
        *(v67 + 24) = 0;
        *(v67 + 32) = 0;
        *(v67 + 16) = v66;
        *(v67 + 40) = 0;
        *(v67 + 44) = 1;
        *(v67 + 45) = v120;
        *(v67 + 47) = v121;
        *(v67 + 48) = v63;
        *(v67 + 56) = v64;
        *(v67 + 64) = 0;
        *(v67 + 72) = 0;
        v32 = v116;
        v57((v67 + *(v116 + 20)), v65, v117);
        v31 = v62;
        v34 = v115;
        *(v67 + *(v32 + 24)) = (v61 & 1) == 0;
        v34(v67, 0, 1, v32);
        sub_1B722376C(v67, v62, &qword_1EB990778);
      }

      v37 = &off_1E7CAF000;
      v36 = v108;
    }
  }

  else
  {
  }

  v34(v27, 1, 1, v32);
  v68 = v36;
  v69 = [v68 v37[99]];
  v70 = [v69 bookedAmountValue];
  if (!v70)
  {

    a2 = v107;
    goto LABEL_25;
  }

  v71 = v70;
  [v70 decimalValue];
  v72 = v123;
  v73 = v122;
  v74 = v37;
  v75 = [v69 currency];
  v76 = sub_1B7800868();
  v78 = v77;

  CurrencyAmount.init(_:currencyCode:)(v73, *(&v73 + 1), v72, v76, v78, &v122);
  v125 = v122;
  v126 = v123;
  v127 = v124;
  v79 = v68;
  v80 = [v79 v74 + 769];
  v81 = [v80 bookedAmountAsOf];

  if (v81)
  {
    v82 = v110;
    sub_1B77FF928();

    v83 = 0;
    v84 = v117;
    v85 = v112;
    v86 = v119;
  }

  else
  {
    v83 = 1;
    v84 = v117;
    v85 = v112;
    v86 = v119;
    v82 = v110;
  }

  (*(v86 + 56))(v82, v83, 1, v84);
  v87 = v111;
  sub_1B722376C(v82, v111, &qword_1EB98EBD0);
  v88 = (*(v86 + 48))(v87, 1, v84);
  v27 = v114;
  v32 = v116;
  if (v88 != 1)
  {
    v89 = v86;
    v90 = *(v86 + 32);
    v90(v85, v87, v84);
    v91 = v79;
    v92 = [v91 v74 + 769];
    sub_1B7264274(&v122);

    v93 = v122;
    if (v122 == 2)
    {
      (*(v89 + 8))(v85, v84);
      sub_1B721722C(&v125);
      goto LABEL_23;
    }

    sub_1B7205418(v27, &qword_1EB990778);
    v94 = *(&v126 + 1);
    v95 = v127;
    v122 = v125;
    LODWORD(v123) = v126;
    v96 = v106;
    v90(v106, v85, v84);
    v97 = v123;
    v98 = v105;
    *v105 = v122;
    *(v98 + 24) = 0;
    *(v98 + 32) = 0;
    *(v98 + 16) = v97;
    *(v98 + 40) = 0;
    *(v98 + 44) = 1;
    *(v98 + 45) = v120;
    *(v98 + 47) = v121;
    *(v98 + 48) = v94;
    *(v98 + 56) = v95;
    v32 = v116;
    *(v98 + 64) = 0;
    *(v98 + 72) = 0;
    v90((v98 + *(v32 + 20)), v96, v84);
    *(v98 + *(v32 + 24)) = (v93 & 1) == 0;
    v34 = v115;
    v115(v98, 0, 1, v32);
    sub_1B722376C(v98, v27, &qword_1EB990778);
    a2 = v107;
    v31 = v113;
LABEL_25:
    v34(a2, 1, 1, v32);
    goto LABEL_26;
  }

  sub_1B721722C(&v125);
  sub_1B7205418(v87, &qword_1EB98EBD0);
LABEL_23:
  a2 = v107;
  v31 = v113;
  v34 = v115;
  v115(v107, 1, 1, v32);
LABEL_26:
  v99 = *(type metadata accessor for RawBankConnectData.AccountBalances(0) + 20);
  v34((a2 + v99), 1, 1, v32);
  sub_1B7213740(v31, a2, &qword_1EB990778);
  return sub_1B7213740(v27, a2 + v99, &qword_1EB990778);
}

uint64_t sub_1B72850C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7285128(void **a1, void **a2)
{
  v4 = sub_1B77FFA18();
  v32 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - v7;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = [v15 updatedAt];
  sub_1B77FF928();

  v18 = [v16 updatedAt];
  sub_1B77FF928();

  LOBYTE(v18) = sub_1B77FF918();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v18)
  {
    v20 = [v15 id];
    v21 = v30;
    sub_1B77FF9E8();

    v22 = [v16 id];
    v23 = v31;
    sub_1B77FF9E8();

    sub_1B726E4E4();
    v24 = sub_1B78007D8();
    v25 = *(v32 + 8);
    v25(v23, v4);
    v25(v21, v4);
  }

  else
  {
    v26 = [v15 updatedAt];
    sub_1B77FF928();

    v27 = [v16 updatedAt];
    sub_1B77FF928();

    v24 = sub_1B77FF8C8();
    v19(v12, v8);
    v19(v14, v8);
  }

  return v24 & 1;
}

id ManagedFinHealthTransactionEntityGroup.__allocating_init(insight:context:)(uint64_t a1, void *a2)
{
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(v2) initWithContext_];
  v10 = sub_1B77FF9B8();
  [v9 setId_];

  sub_1B77FF938();
  v11 = sub_1B77FF8B8();
  (*(v6 + 8))(v8, v5);
  [v9 setUpdatedAt_];

  sub_1B72855CC(a1);
  return v9;
}

uint64_t sub_1B72855CC(uint64_t a1)
{
  v2 = type metadata accessor for FinHealthTransactionInsight.EntityGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall ManagedFinHealthTransactionEntityGroup.willSave()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_willSave);
  if (([v1 isDeleted] & 1) == 0)
  {
    v7 = sub_1B7800838();
    v8 = [v1 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v9 = sub_1B7800C38();

    if (v9 >> 62)
    {
      v13 = sub_1B7801958();

      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
LABEL_4:
        if (![v1 hasChanges])
        {
          return;
        }

        sub_1B77FF978();
        v11 = sub_1B77FF8B8();
        (*(v4 + 8))(v6, v3);
        v12 = sub_1B7800838();
        [v1 setPrimitiveValue:v11 forKey:v12];

        goto LABEL_8;
      }
    }

    v12 = [v1 managedObjectContext];
    [v12 deleteObject_];
LABEL_8:
  }
}

id ManagedFinHealthTransactionEntityGroup.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedFinHealthTransactionEntityGroup.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedFinHealthTransactionEntityGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedFinHealthTransactionEntityGroup.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedFinHealthTransactionEntityGroup;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

void static ManagedFinHealthTransactionEntityGroup.deleteEntityGroup(withID:in:)(uint64_t a1, void *a2)
{
  v14.receiver = swift_getObjCClassFromMetadata();
  v14.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedFinHealthTransactionEntityGroup;
  v4 = objc_msgSendSuper2(&v14, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = sub_1B77FF9B8();
  *(v5 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v5 + 64) = sub_1B726E47C();
  *(v5 + 32) = v6;
  v7 = sub_1B78010E8();
  [v4 setPredicate_];

  v8 = sub_1B7801498();
  if (v2)
  {
    goto LABEL_12;
  }

  if (v8 >> 62)
  {
    v12 = v8;
    if (sub_1B7801958() > 1)
    {
      goto LABEL_15;
    }

    v13 = sub_1B7801958();
    v8 = v12;
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 > 1)
  {
    goto LABEL_15;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_8:
    v11 = v10;

    [a2 deleteObject_];

    v4 = v11;
LABEL_12:

    return;
  }

  __break(1u);
LABEL_15:
  sub_1B7801C88();
  __break(1u);
}

unint64_t static ManagedFinHealthTransactionEntityGroup.mappedKeyPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 25705;
  *(inited + 48) = 0xE200000000000000;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  sub_1B7287620(inited + 32);
  return v1;
}

unint64_t sub_1B7285D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 25705;
  *(inited + 48) = 0xE200000000000000;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  sub_1B7287620(inited + 32);
  return v1;
}

uint64_t sub_1B7285E34(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B77E6DD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B7285EB0(v6);
  return sub_1B7801B78();
}

void sub_1B7285EB0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B7802038();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedFinHealthTransactionEntityGroup();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B72863DC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B7285FB0(0, v2, 1, a1);
  }
}

void sub_1B7285FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = sub_1B77FFA18();
  v8 = *(v54 - 8);
  v9 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v44 - v11;
  v59 = sub_1B77FF988();
  v12 = MEMORY[0x1EEE9AC00](v59);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v44 - v16;
  v45 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v57 = (v15 + 8);
    v58 = v18;
    v50 = (v8 + 8);
    v51 = &v44 - v16;
    v19 = v18 + 8 * a3 - 8;
    v20 = a1 - a3;
    v49 = v14;
LABEL_5:
    v47 = v19;
    v48 = a3;
    v21 = *(v58 + 8 * a3);
    v46 = v20;
    while (1)
    {
      v22 = *v19;
      v23 = v21;
      v24 = v22;
      v25 = v23;
      v26 = [v23 updatedAt];
      sub_1B77FF928();

      v60 = v24;
      v27 = [v24 updatedAt];
      sub_1B77FF928();

      LOBYTE(v27) = sub_1B77FF918();
      v28 = *v57;
      v29 = v59;
      (*v57)(v14, v59);
      v28(v17, v29);
      if (v27)
      {
        v30 = [v25 id];
        v31 = v52;
        sub_1B77FF9E8();

        v32 = [v60 id];
        v33 = v53;
        sub_1B77FF9E8();

        sub_1B726E4E4();
        v34 = v54;
        v55 = sub_1B78007D8();
        v35 = *v50;
        v36 = v33;
        v14 = v49;
        (*v50)(v36, v34);
        v37 = v31;
        v17 = v51;
        v35(v37, v34);

        if ((v55 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v56 = v25;
        v38 = [v25 updatedAt];
        sub_1B77FF928();

        v39 = v60;
        v40 = [v60 updatedAt];
        sub_1B77FF928();

        LOBYTE(v40) = sub_1B77FF8C8();
        v41 = v59;
        v28(v14, v59);
        v28(v17, v41);

        if ((v40 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v58)
      {
        break;
      }

      v42 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v42;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
LABEL_4:
        a3 = v48 + 1;
        v19 = v47 + 8;
        v20 = v46 - 1;
        if (v48 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1B72863DC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  v159 = sub_1B77FFA18();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x1EEE9AC00](v159);
  v158 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v157 = &v146 - v11;
  v164 = sub_1B77FF988();
  v12 = MEMORY[0x1EEE9AC00](v164);
  v163 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v146 - v15;
  v151 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v8 = *v150;
    if (!*v150)
    {
      goto LABEL_139;
    }

    v22 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v151;
    if (isUniquelyReferenced_nonNull_native)
    {
      v141 = v22;
LABEL_102:
      v169 = v141;
      v22 = *(v141 + 2);
      if (v22 >= 2)
      {
        while (*v21)
        {
          v142 = *&v141[16 * v22];
          v143 = v141;
          v144 = *&v141[16 * v22 + 24];
          sub_1B7286FD0((*v21 + 8 * v142), (*v21 + 8 * *&v141[16 * v22 + 16]), (*v21 + 8 * v144), v8);
          if (v5)
          {
            goto LABEL_110;
          }

          if (v144 < v142)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_1B77E4CA4(v143);
          }

          if ((v22 - 2) >= *(v143 + 2))
          {
            goto LABEL_127;
          }

          v145 = &v143[16 * v22];
          *v145 = v142;
          *(v145 + 1) = v144;
          v169 = v143;
          sub_1B77E4C18(v22 - 1);
          v141 = v169;
          v22 = *(v169 + 2);
          if (v22 <= 1)
          {
            goto LABEL_110;
          }
        }

        goto LABEL_137;
      }

LABEL_110:

      return;
    }

LABEL_133:
    v141 = sub_1B77E4CA4(v22);
    goto LABEL_102;
  }

  v148 = a4;
  v18 = 0;
  v162 = (v14 + 8);
  v156 = (v8 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  v20 = &off_1E7CAF000;
  v161 = &v146 - v15;
  while (1)
  {
    v21 = v18;
    v22 = v18 + 1;
    if (v18 + 1 >= v17)
    {
      v52 = v151;
    }

    else
    {
      v149 = v19;
      v23 = *v151;
      v24 = *(*v151 + 8 * v22);
      v167 = *(*v151 + 8 * v18);
      v25 = v167;
      v168 = v24;
      v26 = v24;
      v8 = v25;
      LODWORD(v160) = sub_1B7285128(&v168, &v167);
      if (v5)
      {

        return;
      }

      v22 = v18 + 2;
      if (v18 + 2 < v17)
      {
        v147 = 0;
        v146 = v18;
        v27 = (v23 + 8 * v18 + 16);
        v154 = v17;
        do
        {
          v155 = v22;
          v37 = *(v27 - 1);
          v38 = *v27;
          v39 = v37;
          v40 = v38;
          v41 = [v38 v20[188]];
          sub_1B77FF928();

          v42 = v20[188];
          v166 = v39;
          v43 = [v39 v42];
          v44 = v163;
          sub_1B77FF928();

          LOBYTE(v43) = sub_1B77FF918();
          v45 = *v162;
          v8 = v16;
          v46 = v164;
          (*v162)(v44, v164);
          v45(v8, v46);
          v165 = v40;
          if (v43)
          {
            v28 = [v40 id];
            v29 = v157;
            sub_1B77FF9E8();

            v8 = v166;
            v30 = [v166 id];
            v31 = v158;
            sub_1B77FF9E8();

            sub_1B726E4E4();
            v32 = v159;
            v33 = sub_1B78007D8();
            v34 = *v156;
            v35 = v31;
            v20 = &off_1E7CAF000;
            v36 = v161;
            (*v156)(v35, v32);
            v34(v29, v32);

            if ((v160 ^ v33))
            {
              goto LABEL_12;
            }
          }

          else
          {
            v47 = [v40 v20[188]];
            sub_1B77FF928();

            v48 = v166;
            v49 = [v166 v20[188]];
            sub_1B77FF928();

            LODWORD(v49) = sub_1B77FF8C8();
            v50 = v164;
            v45(v44, v164);
            v51 = v48;
            v36 = v8;
            v45(v8, v50);

            if ((v160 ^ v49))
            {
LABEL_12:
              v22 = v155;
              v16 = v36;
              goto LABEL_15;
            }
          }

          v22 = v155 + 1;
          ++v27;
          v16 = v36;
        }

        while (v154 != v155 + 1);
        v22 = v154;
LABEL_15:
        v5 = v147;
        v21 = v146;
      }

      v52 = v151;
      v19 = v149;
      if (v160)
      {
        if (v22 < v21)
        {
          goto LABEL_132;
        }

        if (v21 < v22)
        {
          v53 = 8 * v22 - 8;
          v54 = 8 * v21;
          v55 = v22;
          v56 = v21;
          do
          {
            if (v56 != --v55)
            {
              v58 = *v52;
              if (!*v52)
              {
                goto LABEL_136;
              }

              v57 = *(v58 + v54);
              *(v58 + v54) = *(v58 + v53);
              *(v58 + v53) = v57;
            }

            ++v56;
            v53 -= 8;
            v54 += 8;
          }

          while (v56 < v55);
        }
      }
    }

    v59 = v52[1];
    if (v22 < v59)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_129;
      }

      if (v22 - v21 < v148)
      {
        break;
      }
    }

LABEL_46:
    if (v22 < v21)
    {
      goto LABEL_128;
    }

    v92 = v19;
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v22;
    if (v93)
    {
      v19 = v92;
    }

    else
    {
      v19 = sub_1B723E420(0, *(v92 + 2) + 1, 1, v92);
    }

    v8 = *(v19 + 2);
    v94 = *(v19 + 3);
    v22 = v8 + 1;
    if (v8 >= v94 >> 1)
    {
      v19 = sub_1B723E420((v94 > 1), v8 + 1, 1, v19);
    }

    *(v19 + 2) = v22;
    v95 = &v19[16 * v8];
    v96 = v155;
    *(v95 + 4) = v21;
    *(v95 + 5) = v96;
    v166 = *v150;
    if (!v166)
    {
      goto LABEL_138;
    }

    if (v8)
    {
      while (1)
      {
        v8 = v22 - 1;
        if (v22 >= 4)
        {
          break;
        }

        if (v22 == 3)
        {
          v97 = *(v19 + 4);
          v98 = *(v19 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_66:
          if (v100)
          {
            goto LABEL_117;
          }

          v113 = &v19[16 * v22];
          v115 = *v113;
          v114 = *(v113 + 1);
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_120;
          }

          v119 = &v19[16 * v8 + 32];
          v121 = *v119;
          v120 = *(v119 + 1);
          v107 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v107)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v117, v122))
          {
            goto LABEL_124;
          }

          if (v117 + v122 >= v99)
          {
            if (v99 < v122)
            {
              v8 = v22 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v123 = &v19[16 * v22];
        v125 = *v123;
        v124 = *(v123 + 1);
        v107 = __OFSUB__(v124, v125);
        v117 = v124 - v125;
        v118 = v107;
LABEL_80:
        if (v118)
        {
          goto LABEL_119;
        }

        v126 = &v19[16 * v8];
        v128 = *(v126 + 4);
        v127 = *(v126 + 5);
        v107 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v107)
        {
          goto LABEL_122;
        }

        if (v129 < v117)
        {
          goto LABEL_3;
        }

LABEL_87:
        v134 = v8 - 1;
        if (v8 - 1 >= v22)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v135 = *v52;
        if (!*v52)
        {
          goto LABEL_135;
        }

        v136 = v52;
        v137 = v19;
        v22 = *&v19[16 * v134 + 32];
        v21 = *&v19[16 * v8 + 40];
        sub_1B7286FD0((v135 + 8 * v22), (v135 + 8 * *&v19[16 * v8 + 32]), (v135 + 8 * v21), v166);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v21 < v22)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v138 = v137;
        }

        else
        {
          v138 = sub_1B77E4CA4(v137);
        }

        if (v134 >= *(v138 + 2))
        {
          goto LABEL_114;
        }

        v52 = v136;
        v139 = &v138[16 * v134];
        *(v139 + 4) = v22;
        *(v139 + 5) = v21;
        v169 = v138;
        sub_1B77E4C18(v8);
        v19 = v169;
        v22 = *(v169 + 2);
        if (v22 <= 1)
        {
          goto LABEL_3;
        }
      }

      v101 = &v19[16 * v22 + 32];
      v102 = *(v101 - 64);
      v103 = *(v101 - 56);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_115;
      }

      v106 = *(v101 - 48);
      v105 = *(v101 - 40);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_116;
      }

      v108 = &v19[16 * v22];
      v110 = *v108;
      v109 = *(v108 + 1);
      v107 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v107)
      {
        goto LABEL_118;
      }

      v107 = __OFADD__(v99, v111);
      v112 = v99 + v111;
      if (v107)
      {
        goto LABEL_121;
      }

      if (v112 >= v104)
      {
        v130 = &v19[16 * v8 + 32];
        v132 = *v130;
        v131 = *(v130 + 1);
        v107 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v107)
        {
          goto LABEL_125;
        }

        if (v99 < v133)
        {
          v8 = v22 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v17 = v52[1];
    v18 = v155;
    if (v155 >= v17)
    {
      goto LABEL_99;
    }
  }

  v60 = (v21 + v148);
  if (__OFADD__(v21, v148))
  {
    goto LABEL_130;
  }

  if (v60 >= v59)
  {
    v60 = v52[1];
  }

  if (v60 < v21)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v22 == v60)
  {
    goto LABEL_46;
  }

  v149 = v19;
  v147 = v5;
  v160 = *v52;
  v146 = v21;
  v61 = (v21 - v22);
  v62 = v160 + 8 * v22 - 8;
  v152 = v60;
LABEL_36:
  v154 = v62;
  v155 = v22;
  v63 = *(v160 + 8 * v22);
  v153 = v61;
  v64 = v61;
  while (1)
  {
    v165 = v64;
    v65 = *v62;
    v66 = v63;
    v67 = v65;
    v68 = v66;
    v69 = [v66 v20[188]];
    sub_1B77FF928();

    v70 = v20[188];
    v166 = v67;
    v71 = [v67 v70];
    v72 = v163;
    sub_1B77FF928();

    LOBYTE(v71) = sub_1B77FF918();
    v73 = *v162;
    v74 = v20;
    v75 = v164;
    (*v162)(v72, v164);
    v73(v16, v75);
    if (v71)
    {
      v76 = v68;
      v77 = [v68 id];
      v78 = v157;
      sub_1B77FF9E8();

      v79 = v166;
      v80 = [v166 id];
      v81 = v158;
      sub_1B77FF9E8();

      sub_1B726E4E4();
      v82 = v159;
      v83 = sub_1B78007D8();
      v8 = v156;
      v84 = *v156;
      (*v156)(v81, v82);
      v84(v78, v82);

      if ((v83 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v85 = [v68 v74[188]];
      sub_1B77FF928();

      v86 = v74[188];
      v8 = v166;
      v87 = [v166 v86];
      sub_1B77FF928();

      LOBYTE(v87) = sub_1B77FF8C8();
      v88 = v164;
      v73(v72, v164);
      v73(v16, v88);

      if ((v87 & 1) == 0)
      {
LABEL_34:
        v16 = v161;
        v20 = &off_1E7CAF000;
LABEL_35:
        v22 = v155 + 1;
        v62 = v154 + 8;
        v61 = v153 - 1;
        if (v155 + 1 == v152)
        {
          v22 = v152;
          v5 = v147;
          v52 = v151;
          v19 = v149;
          v21 = v146;
          goto LABEL_46;
        }

        goto LABEL_36;
      }
    }

    v89 = v165;
    if (!v160)
    {
      break;
    }

    v90 = *v62;
    v63 = *(v62 + 8);
    *v62 = v63;
    *(v62 + 8) = v90;
    v62 -= 8;
    v91 = __CFADD__(v89, 1);
    v64 = v89 + 1;
    v16 = v161;
    v20 = &off_1E7CAF000;
    if (v91)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_1B7286FD0(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B7285128(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B7285128(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1B728736C(uint64_t a1)
{
  v5 = sub_1B7519C88(a1);
  sub_1B7285E34(&v5);
  v1 = v5;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!sub_1B7801958())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8CA5DC0](0, v1);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1B7287430()
{
  v1 = v0;
  type metadata accessor for ManagedFinHealthTransactionEntityGroup();
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedFinHealthTransactionEntityGroup;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7287620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B72876AC(id *a1)
{
  v1 = [*a1 id];
  sub_1B77FF9E8();
}

void sub_1B728770C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 subscriptionID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B7287774(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSubscriptionID_];
}

void sub_1B72877E4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7280900(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedConsentNotificationSubscription.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedConsentNotificationSubscription.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedConsentNotificationSubscription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedConsentNotificationSubscription.__allocating_init(id:context:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(v3) initWithContext_];
  v7 = sub_1B77FF9B8();
  [v6 setId_];

  v8 = sub_1B77FFA18();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v6;
}

id static ManagedConsentNotificationSubscription.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedConsentNotificationSubscription;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedConsentNotificationSubscription.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t static ManagedConsentNotificationSubscription.existingSubscription(withID:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedConsentNotificationSubscription;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedConsentNotificationSubscription.predicateForSubscription(withID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

unint64_t static ManagedConsentNotificationSubscription.existingSubscription(withSubscriptionID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedConsentNotificationSubscription;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedConsentNotificationSubscription.predicateForSubscription(withSubscriptionID:)(uint64_t a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

unint64_t static ManagedConsentNotificationSubscription.existingSubscription(withConsentID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit38ManagedConsentNotificationSubscription;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedConsentNotificationSubscription.predicateForSubscription(withConsentID:)(uint64_t a1, uint64_t a2)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

id ManagedConsentNotificationSubscription.eventTypes.getter@<X0>(_DWORD *a1@<X8>)
{
  result = [v1 eventTypesValue];
  *a1 = result;
  return result;
}

id (*ManagedConsentNotificationSubscription.eventTypes.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 eventTypesValue];
  return sub_1B72884F8;
}

uint64_t RecurringPayment.FrequencyComponents.init(day:week:month:year:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 2) = BYTE2(result) & 1;
  *(a5 + 4) = a2;
  *(a5 + 6) = BYTE2(a2) & 1;
  *(a5 + 8) = a3;
  *(a5 + 10) = BYTE2(a3) & 1;
  *(a5 + 12) = a4;
  *(a5 + 14) = BYTE2(a4) & 1;
  return result;
}

uint64_t sub_1B7288668()
{
  v1 = 7954788;
  v2 = 0x68746E6F6DLL;
  if (*v0 != 2)
  {
    v2 = 1918985593;
  }

  if (*v0)
  {
    v1 = 1801807223;
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

uint64_t sub_1B72886C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7288E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B72886EC(uint64_t a1)
{
  v2 = sub_1B7288C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7288728(uint64_t a1)
{
  v2 = sub_1B7288C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecurringPayment.FrequencyComponents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990788);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 4);
  v12[4] = *(v1 + 6);
  v12[5] = v7;
  v8 = *(v1 + 8);
  v12[2] = *(v1 + 10);
  v12[3] = v8;
  v9 = *(v1 + 12);
  v12[0] = *(v1 + 14);
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7288C90();
  sub_1B78023F8();
  v17 = 0;
  v10 = v13;
  sub_1B7801F48();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = 1;
  sub_1B7801F48();
  v15 = 2;
  sub_1B7801F48();
  v14 = 3;
  sub_1B7801F48();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RecurringPayment.FrequencyComponents.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990798);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7288C90();
  sub_1B78023C8();
  if (!v2)
  {
    v27 = 0;
    v9 = sub_1B7801DC8();
    v10 = v9;
    v26 = BYTE2(v9) & 1;
    v25 = 1;
    v11 = sub_1B7801DC8();
    v12 = v11;
    v24 = BYTE2(v11) & 1;
    v23 = 2;
    v19 = sub_1B7801DC8();
    v22 = BYTE2(v19) & 1;
    v21 = 3;
    v14 = sub_1B7801DC8();
    (*(v6 + 8))(v8, v5);
    v20 = BYTE2(v14) & 1;
    v15 = v26;
    v16 = v24;
    v17 = v22;
    *a2 = v10;
    *(a2 + 2) = v15;
    *(a2 + 4) = v12;
    *(a2 + 6) = v16;
    *(a2 + 8) = v19;
    *(a2 + 10) = v17;
    *(a2 + 12) = v14;
    *(a2 + 14) = BYTE2(v14) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s10FinanceKit16RecurringPaymentV19FrequencyComponentsV2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 6);
  v4 = a1[4];
  v5 = *(a1 + 10);
  v6 = a1[6];
  v7 = *(a1 + 14);
  if (a1[1])
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 2);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 6))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == a2[2])
    {
      v9 = *(a2 + 6);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 10))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == a2[4])
    {
      v10 = *(a2 + 10);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if ((v7 & 1) == 0)
  {
    if (v6 == a2[6])
    {
      v12 = *(a2 + 14);
    }

    else
    {
      v12 = 1;
    }

    return (v12 & 1) == 0;
  }

  return (a2[7] & 1) != 0;
}

unint64_t sub_1B7288C90()
{
  result = qword_1EB990790;
  if (!qword_1EB990790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990790);
  }

  return result;
}

void *__swift_memcpy15_2(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t _s14descr1F2F3E851C19FrequencyComponentsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 15))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr1F2F3E851C19FrequencyComponentsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
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

  *(result + 15) = v3;
  return result;
}

unint64_t sub_1B7288D70()
{
  result = qword_1EB9907A0;
  if (!qword_1EB9907A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907A0);
  }

  return result;
}

unint64_t sub_1B7288DC8()
{
  result = qword_1EB9907A8;
  if (!qword_1EB9907A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907A8);
  }

  return result;
}

unint64_t sub_1B7288E20()
{
  result = qword_1EB9907B0;
  if (!qword_1EB9907B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907B0);
  }

  return result;
}

uint64_t sub_1B7288E74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1801807223 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t BankConnectService.offlineLabPermission()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for BankConnectService.Message();
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7289068, 0, 0);
}

uint64_t sub_1B7289068()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B7289128;
  v2 = v0[5];
  v3 = v0[2];

  return sub_1B726EFE0(v3, v2);
}

uint64_t sub_1B7289128()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 56) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B722A6FC, 0, 0);
}

uint64_t BankConnectService.offlineLabSharingPreference()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for BankConnectService.Message();
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7289320, 0, 0);
}

uint64_t sub_1B7289320()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B72893E0;
  v2 = v0[5];
  v3 = v0[2];

  return sub_1B726F70C(v3, v2);
}

uint64_t sub_1B72893E0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 56) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7238390, 0, 0);
}

uint64_t BankConnectService.setOfflineLabSharingPermission(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = type metadata accessor for BankConnectService.Message();
  *(v2 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72895DC, 0, 0);
}

uint64_t sub_1B72895DC()
{
  **(v0 + 32) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7267548;
  v2 = *(v0 + 32);

  return sub_1B72676AC(v2);
}

uint64_t sub_1B72896A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for BankConnectService.Message();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[4] = v3;
  v2[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B7289738, 0, 0);
}

uint64_t sub_1B7289738()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B72897F8;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1B726EFE0(v3, v2);
}

uint64_t sub_1B72897F8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 56) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B728995C, 0, 0);
}

uint64_t sub_1B728995C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72899C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for BankConnectService.Message();
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[4] = v3;
  v2[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B7289A58, 0, 0);
}

uint64_t sub_1B7289A58()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B7289B18;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1B726F70C(v3, v2);
}

uint64_t sub_1B7289B18()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 56) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B728A5C4, 0, 0);
}

uint64_t sub_1B7289C7C(char a1)
{
  *(v2 + 56) = a1;
  *(v2 + 16) = type metadata accessor for BankConnectService.Message();
  v3 = swift_task_alloc();
  v4 = *v1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B7289D14, 0, 0);
}

uint64_t sub_1B7289D14()
{
  **(v0 + 24) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7268B48;
  v2 = *(v0 + 24);

  return sub_1B72676AC(v2);
}

uint64_t BankConnectService.postOfflineLabItems()()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for BankConnectService.Message();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7289E6C, 0, 0);
}

uint64_t sub_1B7289E6C()
{
  *(v0 + 104) = *(*(v0 + 80) + 16);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7289EE4, 0, 0);
}

uint64_t sub_1B7289EE4()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_1B7289F88;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7289F88()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B728A0A4;
  }

  else
  {
    v2 = sub_1B726BDD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B728A0A4()
{
  sub_1B7267DAC(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.postOfflineLabItemsWithDryRun(filename:force:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 136) = a3;
  *(v4 + 80) = a1;
  *(v4 + 104) = type metadata accessor for BankConnectService.Message();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B728A1B0, 0, 0);
}

uint64_t sub_1B728A1B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  *(v0 + 120) = *(*(v0 + 96) + 16);
  *v1 = v4;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t dispatch thunk of BankConnectConnectionOfflineLabManaging.offlineLabPermission()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BankConnectConnectionOfflineLabManaging.offlineLabSharingPreference()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BankConnectConnectionOfflineLabManaging.setOfflineLabSharingPermission(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

FinanceKit::AccountMatchingType_optional __swiftcall AccountMatchingType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B728A5F4()
{
  result = qword_1EB9907B8;
  if (!qword_1EB9907B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907B8);
  }

  return result;
}

unint64_t sub_1B728A704()
{
  result = qword_1EB9907C0;
  if (!qword_1EB9907C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9907C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountOriginType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountOriginType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B728A8C8()
{
  result = qword_1EB9907D0;
  if (!qword_1EB9907D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907D0);
  }

  return result;
}

uint64_t sub_1B728A91C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B728A940, 0, 0);
}

void sub_1B728A940()
{
  v26 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v25);
    _os_log_impl(&dword_1B7198000, v2, v3, "Processing pass deletion: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = *(v0[8] + 96);
  if (v8)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = [*(v8 + 16) newBackgroundContext];
    v12 = swift_task_alloc();
    v12[2] = v11;
    v12[3] = v10;
    v12[4] = v9;
    v13 = swift_task_alloc();
    v13[2] = sub_1B728D234;
    v13[3] = v12;
    v13[4] = v11;
    sub_1B7801468();

    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    v17 = v14[5];
    v18 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v17);
    (*(v18 + 16))(v16, v15, v17, v18);
    v19 = v14[15];
    v20 = v14[16];
    sub_1B728AF1C(v19, v20, v16, v15);
    if (qword_1EDAF7308 != -1)
    {
      swift_once();
    }

    v21 = v0[8];
    v0[5] = sub_1B77FF988();
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_1B77FF938();
    v22 = qword_1EDAF7328;
    v23 = unk_1EDAF7330;
    __swift_project_boxed_opaque_existential_1(qword_1EDAF7310, qword_1EDAF7328);
    (*(v23 + 8))(v0 + 2, v19, v20, v22, v23);
    sub_1B7205418((v0 + 2), &qword_1EB98FCB0);
    __swift_project_boxed_opaque_existential_1((v21 + 56), *(v21 + 80));
    v24 = swift_task_alloc();
    v0[9] = v24;
    *v24 = v0;
    v24[1] = sub_1B728AE28;

    BankConnectEvaluationManager.reevaluateEligibility()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B728AE28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B728AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v37 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  if (qword_1EDAF7308 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDAF7328;
  v16 = unk_1EDAF7330;
  __swift_project_boxed_opaque_existential_1(qword_1EDAF7310, qword_1EDAF7328);
  (*(v16 + 16))(v39, a1, a2, v17, v16);
  if (!v39[3])
  {
    sub_1B7205418(v39, &qword_1EB98FCB0);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }

  v18 = swift_dynamicCast();
  (*(v10 + 56))(v8, v18 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_10:
    sub_1B7205418(v8, &qword_1EB98EBD0);
    return;
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_1B77FF938();
  sub_1B77FF908();
  v20 = v19;
  v21 = *(v10 + 8);
  v21(v13, v9);
  sub_1B77FF908();
  if (v20 - v22 >= 30.0)
  {
    v21(v15, v9);
  }

  else
  {
    v35 = [objc_allocWithZone(FKAutoBugCaptureReporter) init];
    if (*(v36 + 120) == a1 && *(v36 + 128) == a2)
    {
      v23 = 2;
    }

    else if (sub_1B78020F8())
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    LOBYTE(v39[0]) = v23;
    sub_1B7598CCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B780D870;
    *(inited + 32) = 0x726665527473616CLL;
    *(inited + 40) = 0xEF65746144687365;
    *(inited + 48) = sub_1B77FF958();
    *(inited + 56) = v25;
    *(inited + 64) = 0xD000000000000023;
    *(inited + 72) = 0x80000001B7876F70;
    *(inited + 80) = sub_1B7800F58();
    *(inited + 88) = v26;
    *(inited + 96) = 0xD000000000000018;
    *(inited + 104) = 0x80000001B78769B0;
    v27 = v38;
    *(inited + 112) = v37;
    *(inited + 120) = v27;

    sub_1B72020F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4D8);
    swift_arrayDestroy();
    v28 = sub_1B7800838();
    v29 = sub_1B7800838();
    v30 = sub_1B7800838();
    v31 = sub_1B7800838();

    v32 = sub_1B7800708();

    v33 = v35;
    [v35 reportIssueWithDomain:v28 type:v29 subtype:v30 subtypeContext:v31 event:v32];

    v21(v15, v9);
  }
}

uint64_t sub_1B728B47C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B728B4A0, 0, 0);
}

uint64_t sub_1B728B4A0()
{
  v17 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  v0[9] = __swift_project_value_buffer(v1, qword_1EDAF65B0);

  v2 = sub_1B7800098();
  v3 = sub_1B78011B8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v16);
    _os_log_impl(&dword_1B7198000, v2, v3, "Processing pass provisioning: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[8];
  v9 = *(v8 + 104);
  v10 = *(v8 + 112);
  sub_1B728AF1C(v9, v10, v0[6], v0[7]);
  if (qword_1EDAF7308 != -1)
  {
    swift_once();
  }

  v11 = v0[8];
  v0[5] = sub_1B77FF988();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B77FF938();
  v12 = qword_1EDAF7328;
  v13 = unk_1EDAF7330;
  __swift_project_boxed_opaque_existential_1(qword_1EDAF7310, qword_1EDAF7328);
  (*(v13 + 8))(v0 + 2, v9, v10, v12, v13);
  sub_1B7205418((v0 + 2), &qword_1EB98FCB0);
  __swift_project_boxed_opaque_existential_1((v11 + 56), *(v11 + 80));
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_1B728B730;

  return BankConnectEvaluationManager.reevaluateEligibility()();
}

uint64_t sub_1B728B730()
{

  return MEMORY[0x1EEE6DFA0](sub_1B728B82C, 0, 0);
}

uint64_t sub_1B728B82C()
{
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1B728B8FC;
  v3 = v0[6];
  v2 = v0[7];

  return BankConnectService.refreshCardArt(for:)(v3, v2);
}

uint64_t sub_1B728B8FC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B728BA30, 0, 0);
}

uint64_t sub_1B728BA30()
{
  v17 = v0;
  v1 = v0[12];

  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1B71A3EF8(v8, v7, &v16);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1B7198000, v3, v4, "Failed to refresh card art for %s: %@.", v9, 0x16u);
    sub_1B7205418(v10, &qword_1EB9910D0);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

id sub_1B728BC00(void *a1, uint64_t a2, unint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_self() currentQueryGenerationToken];
  v13[0] = 0;
  v7 = [a1 setQueryGenerationFromToken:v6 error:v13];

  v8 = v13[0];
  if (v7)
  {
    v9 = v13[0];
    sub_1B741C4AC(a2, a3, a1);
    v13[0] = 0;
    v10 = [a1 save_];
    v8 = v13[0];
    if (v10)
    {
      return v13[0];
    }
  }

  v12 = v8;
  sub_1B77FF318();

  return swift_willThrow();
}

uint64_t sub_1B728BD20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

void *sub_1B728BD78()
{
  v1 = OBJC_IVAR___FKBankConnectPassUpdateProcessor____lazy_storage___processor;
  v2 = *(v0 + OBJC_IVAR___FKBankConnectPassUpdateProcessor____lazy_storage___processor);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1B728BDE4();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1B728D04C(v4);
  }

  sub_1B728D05C(v2);
  return v3;
}