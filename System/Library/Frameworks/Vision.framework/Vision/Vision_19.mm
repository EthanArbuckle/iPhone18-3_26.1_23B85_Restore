uint64_t sub_1A5CBA6F4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A5CBA784, 0, 0);
}

uint64_t sub_1A5CBA784()
{
  v1 = v0[4];
  v2 = v1[2];
  v3 = *(*v1 + 168);
  v4 = v3();
  v5 = sub_1A5CD3BA4(v2, v4);
  v6 = v0[3];

  v8 = *(v6 + 16);
  v9 = (v3)(v7);
  sub_1A5B37FAC(v9);

  v10 = sub_1A5FD3BDC();

  v0[2] = 0;
  LODWORD(v8) = [v5 warmUpSession:v8 withOptions:v10 error:v0 + 2];

  v11 = v0[2];
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v14 = v11;
    sub_1A5FD348C();

    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A5CBA964()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = (*(*v0 + 168))();
  sub_1A5B37FAC(v2);

  v3 = sub_1A5FD3BDC();

  [ObjCClassFromMetadata keyForDetectorWithConfigurationOptions_];

  v4 = sub_1A5FD4D0C();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4770);
  sub_1A5FD481C();
  swift_unknownObjectRelease();
  return 0;
}

void sub_1A5CBAAC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *(v6 + 5);
    __swift_destroy_boxed_opaque_existential_1(v6);
    v8 = *(*v2 + 256);
    v9 = v7;
    v8(v7);
  }

  else
  {
    sub_1A5B16718(v6);
    sub_1A5B5C574(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
    if (swift_dynamicCast())
    {
      v36 = a1;
      v10 = sub_1A5B063D4(&v39, v45);
      v11 = *(*v2 + 224);
      v35 = v2;
      v12 = v11(v10);
      v13 = v12;
      v14 = *(v12 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = &unk_1EB1F46F8;
        v17 = &unk_1A6022BB8;
        v18 = v12 + 32;
        while (v15 < *(v13 + 16))
        {
          sub_1A5B180A0(v18, &v39);
          __swift_instantiateConcreteTypeFromMangledNameV2(v16);
          if (swift_dynamicCast())
          {
            sub_1A5B063D4((v38 + 4), v42);
            v19 = v43;
            v20 = v44;
            __swift_project_boxed_opaque_existential_1(v42, v43);
            (*(*(v20 + 8) + 96))(&v39, v19);
            v21 = *(&v40 + 1);
            sub_1A5B10168(&v39, &qword_1EB1EF4E8);
            if (v21)
            {
              v22 = v43;
              v23 = v44;
              __swift_project_boxed_opaque_existential_1(v42, v43);
              (*(*(v23 + 8) + 96))(&v39, v22);
              v24 = *(&v40 + 1);
              if (!*(&v40 + 1))
              {
                goto LABEL_19;
              }

              v25 = v41;
              __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
              (*(*(v25 + 8) + 56))(v38 + 4, v24);
              WORD1(v38[0]) = WORD2(v38[0]);
              v27 = v46;
              v26 = v47;
              __swift_project_boxed_opaque_existential_1(v45, v46);
              (*(*(v26 + 8) + 56))(v38, v27);
              v37 = v38[0];
              LOBYTE(v26) = static RequestDescriptor.== infix(_:_:)(v38 + 2, &v37);
              __swift_destroy_boxed_opaque_existential_1(&v39);
              if (v26)
              {
                v28 = v43;
                v29 = v17;
                v30 = v16;
                v31 = v44;
                __swift_project_boxed_opaque_existential_1(v42, v43);
                v32 = *(v31 + 64);
                v33 = v31;
                v16 = v30;
                v17 = v29;
                v32(v36, v35, v28, v33);
              }
            }

            __swift_destroy_boxed_opaque_existential_1(v42);
          }

          else
          {
            *(&v38[4] + 4) = 0;
            memset(v38 + 4, 0, 32);
            sub_1A5B10168(v38 + 4, &qword_1EB1F4700);
          }

          ++v15;
          v18 += 40;
          if (v14 == v15)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }

      else
      {
LABEL_16:

        __swift_destroy_boxed_opaque_existential_1(v45);
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_1A5B10168(&v39, &qword_1EB1EF4E8);
    }
  }
}

uint64_t sub_1A5CBAF0C()
{

  return v0;
}

uint64_t sub_1A5CBAF44()
{

  return swift_deallocClassInstance();
}

void (*sub_1A5CBAFDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 240))();
  return sub_1A5B16120;
}

uint64_t sub_1A5CBB0C8(uint64_t a1)
{
  v6 = (*(*v1 + 288) + **(*v1 + 288));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C99530;

  return v6(a1);
}

uint64_t sub_1A5CBB1F0(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5C9A9D4;

  return v6(a1);
}

uint64_t sub_1A5CBB3A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5C98C98;

  return sub_1A5CA07F4(a1, a2, &off_1F1967E50);
}

uint64_t sub_1A5CBB480(uint64_t a1)
{
  v6 = (*(*v1 + 296) + **(*v1 + 296));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B0CE78;

  return v6(a1);
}

double *sub_1A5CBB5A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = *v7;
  *(v7 + 10) = MEMORY[0x1E69E7CC0];
  v7[11] = 0.0;
  v15 = (*(*&v14 + 216))(a2);
  *(v7 + 2) = a1;
  *(v7 + 3) = v15;
  *(v7 + 4) = v15;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  *(v7 + 9) = a3;

  return v7;
}

uint64_t sub_1A5CBB6A0(uint64_t a1)
{
  sub_1A5B180A0(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F46F8);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v5, v8);
    v1 = v9;
    v2 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v3 = (*(v2 + 80))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    result = sub_1A5B10168(v5, &qword_1EB1F4700);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CBB7D0(uint64_t a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5CBAAC8(a1);
  sub_1A5CA6988(a1, v12, type metadata accessor for VisionResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 11)
  {
    v14 = *(v12 + 7);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      return sub_1A5CA69F0(v12, type metadata accessor for VisionResult);
    }

    v14 = *(v12 + 7);
  }

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(*v1 + 344);
    v21 = v14;
    v22 = v16;
    v17 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    do
    {
      sub_1A5CA6988(v17, v6, type metadata accessor for FaceObservation);
      v19 = v22(v23);
      sub_1A5CBECD0(v9, v6);
      sub_1A5CA69F0(v9, type metadata accessor for FaceObservation);
      v19(v23, 0);
      v17 += v18;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1A5CBBA44(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for FaceObservation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  sub_1A5B180A0(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E0);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v25, v28);
    sub_1A5CB8980(a1, a2);
    if (!v3)
    {
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v16 = (*(v15 + 24))(v14, v15);
      v17 = *(v16 + 16);
      if (v17)
      {
        v23[1] = 0;
        v31 = *(*v4 + 344);
        v18 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v19 = *(v8 + 72);
        v23[2] = v16;
        v24 = v19;
        do
        {
          sub_1A5CA6988(v18, v10, type metadata accessor for FaceObservation);
          v20 = v4;
          v21 = v31(v27);
          sub_1A5CBECD0(v13, v10);
          sub_1A5CA69F0(v13, type metadata accessor for FaceObservation);
          v21(v27, 0);
          v4 = v20;
          v18 += v24;
          --v17;
        }

        while (v17);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1A5B10168(v25, &qword_1EB1F45D8);
    result = sub_1A5FD483C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CBBD30(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5CBBD50, 0, 0);
}

uint64_t sub_1A5CBBD50()
{
  v1 = *((*(**(v0 + 32) + 328))() + 16);

  if (v1)
  {
    v3 = *(v0 + 32);
    v4 = v3[2];
    v5 = (*(*v3 + 168))(v2);
    v6 = sub_1A5CD3BA4(v4, v5);
    *(v0 + 40) = v6;
    v10 = v6;
    v15 = *(v0 + 24);

    v11 = type metadata accessor for FaceObservation(0);
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    v12[1] = vextq_s8(v15, v15, 8uLL);
    v12[2].i64[0] = v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1370);
    v14 = swift_task_alloc();
    *(v0 + 56) = v14;
    *v14 = v0;
    v14[1] = sub_1A5CB7070;

    return MEMORY[0x1EEE6DD58](v0 + 16, v11, v13, 0, 0, &unk_1A6022D18, v12, v11);
  }

  else
  {
    v7 = *(v0 + 8);
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

uint64_t sub_1A5CBBF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2970);
  v5[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47A0);
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for FaceObservation(0);
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5CBC148, 0, 0);
}

uint64_t sub_1A5CBC148()
{
  v32 = (v0 + 16);
  v36 = *(v0 + 208);
  v1 = (*(**(v0 + 128) + 328))();
  v6 = 0;
  v7 = v1 + 56;
  v37 = v1;
  v8 = -1;
  v9 = -1 << *(v1 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v1 + 56);
  v11 = (63 - v9) >> 6;
  v34 = v11;
  v35 = v1 + 56;
  v33 = v0;
  while (v10)
  {
LABEL_11:
    v15 = *(v0 + 216);
    v16 = *(v0 + 192);
    v17 = *(v0 + 136);
    v38 = *(v0 + 184);
    v39 = *(v0 + 144);
    v18 = *(v0 + 128);
    sub_1A5CA6988(*(v37 + 48) + *(v36 + 72) * (__clz(__rbit64(v10)) | (v6 << 6)), v15, type metadata accessor for FaceObservation);
    v40 = swift_allocBox();
    sub_1A5B2A89C(v15, v19);
    v20 = sub_1A5FD40AC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v16, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v40;
    v22[5] = v18;
    v22[6] = v17;
    v22[7] = v39;
    sub_1A5B31A34(v16, v38, &unk_1EB1F30E0);
    v23 = v20;
    LODWORD(v20) = (*(v21 + 48))(v38, 1, v20);

    v24 = v39;
    v0 = v33;
    v25 = *(v33 + 184);
    if (v20 == 1)
    {
      sub_1A5B10168(*(v33 + 184), &unk_1EB1F30E0);
    }

    else
    {
      sub_1A5FD409C();
      (*(v21 + 8))(v25, v23);
    }

    if (v22[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_1A5FD404C();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v33 + 120);

    if (v28 | v26)
    {
      v12 = v32;
      *v32 = 0;
      v32[1] = 0;
      *(v33 + 32) = v26;
      *(v33 + 40) = v28;
    }

    else
    {
      v12 = 0;
    }

    v10 &= v10 - 1;
    v13 = *(v33 + 192);
    *(v33 + 80) = 1;
    *(v33 + 88) = v12;
    *(v33 + 96) = v29;
    swift_task_create();

    sub_1A5B10168(v13, &unk_1EB1F30E0);

    v11 = v34;
    v7 = v35;
  }

  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DAD8](v1, v2, v3, v4, v5);
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v6;
    if (v10)
    {
      v6 = v14;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
  sub_1A5FD413C();
  *(v0 + 224) = MEMORY[0x1E69E7CC0];
  v30 = swift_task_alloc();
  *(v0 + 232) = v30;
  *v30 = v0;
  v30[1] = sub_1A5CBC5B8;
  v1 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = v0 + 104;
  v2 = 0;
  v3 = 0;

  return MEMORY[0x1EEE6DAD8](v1, v2, v3, v4, v5);
}

uint64_t sub_1A5CBC5B8()
{

  if (v0)
  {

    v1 = sub_1A5CBC8E4;
  }

  else
  {
    v1 = sub_1A5CBC6D0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A5CBC6D0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = (*(*(v0 + 208) + 48))(v2, 1, v1);
  v4 = *(v0 + 224);
  if (v3 == 1)
  {
    v5 = *(v0 + 112);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    *v5 = v4;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 72) = v1;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    sub_1A5B2A89C(v2, boxed_opaque_existential_1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 224);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1A5CB84AC(0, *(v10 + 2) + 1, 1, *(v0 + 224));
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1A5CB84AC((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    sub_1A5B101C8((v0 + 48), &v10[32 * v12 + 32]);
    *(v0 + 224) = v10;
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = sub_1A5CBC5B8;
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);

    return MEMORY[0x1EEE6DAD8](v14, 0, 0, v15, v0 + 104);
  }
}

uint64_t sub_1A5CBC8E4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A5CBC99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[41] = a6;
  v7[42] = a7;
  v7[39] = a1;
  v7[40] = a5;
  type metadata accessor for FaceObservation(0);
  v7[43] = swift_task_alloc();
  v7[44] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1A5CBCA40, 0, 0);
}

uint64_t sub_1A5CBCA40()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 320);
  swift_beginAccess();
  sub_1A5CA6988(v2, v1, type metadata accessor for FaceObservation);
  sub_1A5D0AA68();
  v5 = v4;
  *(v0 + 360) = v4;
  sub_1A5CA69F0(v1, type metadata accessor for FaceObservation);
  swift_beginAccess();
  sub_1A5CA6988(v2, v1, type metadata accessor for FaceObservation);
  v6 = (*(*v3 + 352))(v1);
  v7 = sub_1A5CA69F0(v1, type metadata accessor for FaceObservation);
  if (v6)
  {
    v8 = *(**(v0 + 320) + 360);
    v25 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 368) = v9;
    *v9 = v0;
    v9[1] = sub_1A5CBCE98;
    v10 = *(v0 + 328);

    return v25(v5, v10);
  }

  else
  {
    *(v0 + 392) = v5;
    v26 = *(v0 + 336);
    v12 = *(v0 + 320);
    (*(*v12 + 192))(v7);
    v13 = sub_1A5FD3D5C();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A5FF3930;
    *(v16 + 32) = v5;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2838);
    *(v0 + 144) = v16;
    sub_1A5B101C8((v0 + 144), (v0 + 176));
    v17 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC((v0 + 176), v13, v15, isUniquelyReferenced_nonNull_native);

    v19 = v12[5];
    v20 = v12[6];
    v21 = v12[7];
    v22 = v12[8];
    v23 = sub_1A5FD3BDC();
    *(v0 + 400) = v23;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 304;
    *(v0 + 24) = sub_1A5CBD240;
    v24 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4408);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A5C9CC60;
    *(v0 + 104) = &block_descriptor_10;
    *(v0 + 112) = v24;
    [v26 produceObservationsWithRegionOfInterest:v23 detectorProcessingOptions:v0 + 80 completionHandler:{v19, v20, v21, v22}];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A5CBCE98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = sub_1A5CBD490;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = sub_1A5CBCFC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A5CBCFC0()
{
  v1 = *(v0 + 384);
  *(v0 + 392) = v1;
  v16 = *(v0 + 336);
  v2 = *(v0 + 320);
  (*(*v2 + 192))();
  v3 = sub_1A5FD3D5C();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A5FF3930;
  *(v6 + 32) = v1;
  *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2838);
  *(v0 + 144) = v6;
  sub_1A5B101C8((v0 + 144), (v0 + 176));
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC((v0 + 176), v3, v5, isUniquelyReferenced_nonNull_native);

  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = sub_1A5FD3BDC();
  *(v0 + 400) = v13;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 304;
  *(v0 + 24) = sub_1A5CBD240;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4408);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A5C9CC60;
  *(v0 + 104) = &block_descriptor_10;
  *(v0 + 112) = v14;
  [v16 produceObservationsWithRegionOfInterest:v13 detectorProcessingOptions:v0 + 80 completionHandler:{v9, v10, v11, v12}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A5CBD240()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_1A5CBD4FC;
  }

  else
  {
    v2 = sub_1A5CBD350;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5CBD350()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);

  v6 = sub_1A5CBD57C(v5);

  swift_beginAccess();
  (*(*v3 + 368))(v2, v6);
  swift_endAccess();

  swift_beginAccess();
  sub_1A5CA6988(v2, v4, type metadata accessor for FaceObservation);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A5CBD490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CBD4FC()
{
  v1 = v0[50];
  v2 = v0[49];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A5CBD57C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1A5FD47AC();
    v4 = a1 + 32;
    do
    {
      sub_1A5B101D8(v4, &v5);
      sub_1A5CBFAB4();
      swift_dynamicCast();
      sub_1A5FD477C();
      sub_1A5FD47BC();
      sub_1A5FD47CC();
      sub_1A5FD478C();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_1A5CBD654(uint64_t a1)
{
  v2 = type metadata accessor for FaceObservation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A5C9E2A4(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A5CA6988(v8, v5, type metadata accessor for FaceObservation);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5C9E2A4((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1A5CBFBE4(&qword_1EB1F4798);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1A5CA6988(v5, boxed_opaque_existential_1, type metadata accessor for FaceObservation);
      *(v7 + 16) = v11 + 1;
      sub_1A5B063D4(&v14, v7 + 40 * v11 + 32);
      sub_1A5CA69F0(v5, type metadata accessor for FaceObservation);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1A5CBD834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for FaceObservation(0);
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  sub_1A5B180A0(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F43E0);
  if (swift_dynamicCast())
  {
    sub_1A5B063D4(v39, v42);
    v38 = sub_1A5CBDCBC(a2);
    if (!v38)
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
      goto LABEL_20;
    }

    v16 = v43;
    v17 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v18 = (*(v17 + 8))(v16, v17);
    if (v18)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        v30 = a1;
        v31 = a3;
        v41[0] = MEMORY[0x1E69E7CC0];
        v20 = v18;
        v33 = v19;
        sub_1A5B2A524(0, v19, 0);
        v21 = 0;
        v22 = v41[0];
        v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v35 = v20 + v32;
        v34 = v37 + 48;
        while (v21 < *(v20 + 16))
        {
          v23 = v37;
          v24 = *(v37 + 72);
          v25 = sub_1A5CA6988(v35 + v24 * v21, v12, type metadata accessor for FaceObservation);
          MEMORY[0x1EEE9AC00](v25);
          sub_1A5CBDF44(sub_1A5CBFA38, v38, v8);
          if ((*(v23 + 48))(v8, 1, v36) == 1)
          {
            goto LABEL_17;
          }

          sub_1A5B2A89C(v8, v15);
          sub_1A5CA69F0(v12, type metadata accessor for FaceObservation);
          v41[0] = v22;
          v27 = *(v22 + 16);
          v26 = *(v22 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1A5B2A524(v26 > 1, v27 + 1, 1);
            v22 = v41[0];
          }

          ++v21;
          *(v22 + 16) = v27 + 1;
          sub_1A5B2A89C(v15, v22 + v32 + v27 * v24);
          if (v33 == v21)
          {

            a3 = v31;
            a1 = v30;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v22 = MEMORY[0x1E69E7CC0];
LABEL_14:
      sub_1A5B180A0(a1, v41);
    }

    else
    {
      sub_1A5B180A0(a1, v41);
      v22 = v38;
    }

    v28 = sub_1A5CBD654(v22);

    sub_1A5B57ECC(v41, v28, 0, a3);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

LABEL_18:
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1A5B10168(v39, &qword_1EB1F45D8);
LABEL_20:
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CBDCBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-v3 - 8];
  v5 = type metadata accessor for FaceObservation(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v20 = &v21[-v10 - 8];
  v11 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A5B2A524(0, v11, 0);
  v12 = v22;
  if (v11)
  {
    v13 = a1 + 32;
    v14 = (v6 + 56);
    while (1)
    {
      sub_1A5B101D8(v13, v21);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v5;
      (*v14)(v4, 0, 1, v5);
      v16 = v20;
      sub_1A5B2A89C(v4, v20);
      sub_1A5B2A89C(v16, v8);
      v22 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A5B2A524(v17 > 1, v18 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v18 + 1;
      sub_1A5B2A89C(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
      v13 += 32;
      --v11;
      v5 = v15;
      if (!v11)
      {
        return v12;
      }
    }

    (*v14)(v4, 1, 1, v5);
    sub_1A5B10168(v4, &unk_1EB1F2970);
    return 0;
  }

  return v12;
}

uint64_t sub_1A5CBDF44@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FaceObservation(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1A5CA6988(v12, v10, type metadata accessor for FaceObservation);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1A5CA69F0(v10, type metadata accessor for FaceObservation);
      }

      if (v14)
      {
        break;
      }

      sub_1A5CA69F0(v10, type metadata accessor for FaceObservation);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1A5B2A89C(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1A5CBE0FC(uint64_t a1)
{
  result = (*(*v1 + 224))();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = &qword_1EB1EEA80;
    v7 = &unk_1A5FFD120;
    v8 = &qword_1EB1F43E0;
    v9 = &unk_1A6021398;
    v10 = result + 32;
    v18 = result;
    while (v5 < *(v3 + 16))
    {
      sub_1A5B180A0(v10, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(v8);
      if (swift_dynamicCast())
      {
        v11 = v4;
        v12 = v9;
        v13 = v8;
        v14 = v7;
        v15 = v6;
        sub_1A5B063D4(v20, v23);
        v16 = v24;
        v17 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        if ((*(v17 + 16))(a1, v16, v17))
        {

          __swift_destroy_boxed_opaque_existential_1(v23);
          return 1;
        }

        result = __swift_destroy_boxed_opaque_existential_1(v23);
        v6 = v15;
        v7 = v14;
        v8 = v13;
        v9 = v12;
        v4 = v11;
        v3 = v18;
      }

      else
      {
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        result = sub_1A5B10168(v20, &qword_1EB1F45D8);
      }

      ++v5;
      v10 += 40;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

uint64_t sub_1A5CBE2CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A5CBE2EC, 0, 0);
}

uint64_t sub_1A5CBE2EC()
{
  v1 = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
  v2 = sub_1A5FD3D5C();
  v4 = v3;

  v5 = sub_1A5CD3A8C(v2, v4, v1);
  *(v0 + 208) = v5;
  v6 = v5;
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);

  v9 = sub_1A5FD3D5C();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A5FF3930;
  *(v12 + 32) = v8;
  *(v0 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2838);
  *(v0 + 80) = v12;
  sub_1A5B101C8((v0 + 80), (v0 + 144));
  v13 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC((v0 + 144), v9, v11, isUniquelyReferenced_nonNull_native);

  v15 = v1;
  v16 = sub_1A5FD3D5C();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A5FF3930;
  *(v19 + 32) = (*(*v7 + 120))();
  *(v0 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0800);
  *(v0 + 80) = v19;
  sub_1A5B101C8((v0 + 80), (v0 + 144));
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC((v0 + 144), v16, v18, v20);

  *(v0 + 216) = v15;
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v23 = *(MEMORY[0x1E695F050] + 16);
  v24 = *(MEMORY[0x1E695F050] + 24);
  v25 = sub_1A5FD3BDC();
  *(v0 + 224) = v25;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_1A5CBE6D8;
  v26 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4408);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A5C9CC60;
  *(v0 + 104) = &block_descriptor_5;
  *(v0 + 112) = v26;
  [v6 produceObservationsWithRegionOfInterest:v25 detectorProcessingOptions:v0 + 80 completionHandler:{v21, v22, v23, v24}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A5CBE6D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {

    v2 = sub_1A5CBE8E4;
  }

  else
  {
    v2 = sub_1A5CBE7F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5CBE7F0()
{
  v1 = *(v0 + 176);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 208);
    sub_1A5B101D8(v1 + 32, v0 + 80);

    sub_1A5B101C8((v0 + 80), (v0 + 144));
    sub_1A5CBFAB4();
    swift_dynamicCast();
    v4 = *(v0 + 184);

    v5 = *(v0 + 8);

    return v5(v4);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CBE8E4()
{
  v1 = v0[28];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A5CBE95C(uint64_t a1, unint64_t a2)
{
  v4 = (*(*v2 + 224))();
  v25 = *(v4 + 16);
  if (v25)
  {
    if (a2 >> 62)
    {
LABEL_26:
      v22 = v4;
      v5 = sub_1A5FD484C();
      v4 = v22;
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v23 = v4;
    v24 = v4 + 32;
    v7 = a2 & 0xC000000000000001;
    v27 = v5;
    v8 = &qword_1EB1EEA80;
    v9 = &unk_1A5FFD120;
    v10 = &unk_1EB1F4788;
    do
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v26 = v6;
      v4 = sub_1A5B180A0(v24 + 40 * v6, v35);
      if (v5)
      {
        if (v5 < 1)
        {
          goto LABEL_25;
        }

        for (i = 0; i != v5; ++i)
        {
          if (v7)
          {
            v14 = MEMORY[0x1AC554EE0](i, a2);
          }

          else
          {
            v14 = *(a2 + 8 * i + 32);
          }

          v15 = v14;
          sub_1A5B180A0(v35, v31);
          __swift_instantiateConcreteTypeFromMangledNameV2(v8);
          __swift_instantiateConcreteTypeFromMangledNameV2(v10);
          if (swift_dynamicCast())
          {
            v16 = v7;
            v17 = a2;
            v18 = v10;
            v19 = v9;
            v20 = v8;
            sub_1A5B063D4(v29, v32);
            if ([v15 isBoundingBoxAligned])
            {
              if (*(a1 + 32 + *(type metadata accessor for FaceObservation(0) + 100)) == 1)
              {
                sub_1A5D09DF8(v15);
              }
            }

            v12 = v33;
            v13 = v34;
            __swift_project_boxed_opaque_existential_1(v32, v33);
            (*(v13 + 16))(a1, v15, v12, v13);

            __swift_destroy_boxed_opaque_existential_1(v32);
            v8 = v20;
            v9 = v19;
            v10 = v18;
            a2 = v17;
            v7 = v16;
            v5 = v27;
          }

          else
          {

            v30 = 0;
            memset(v29, 0, sizeof(v29));
            sub_1A5B10168(v29, &qword_1EB1F4790);
          }
        }
      }

      ++v6;
      __swift_destroy_boxed_opaque_existential_1(v35);
      v4 = v23;
    }

    while (v26 + 1 != v25);
  }

  else
  {
  }
}

uint64_t sub_1A5CBECD0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for FaceObservation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  sub_1A5CBFBE4(&qword_1EB1EE8C8);
  v21 = a2;
  v9 = sub_1A5FD3CAC();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1A5CA6988(*(v8 + 48) + v13 * v11, v7, type metadata accessor for FaceObservation);
      sub_1A5CBFBE4(&qword_1EB1EE900);
      v14 = sub_1A5FD3D0C();
      sub_1A5CA69F0(v7, type metadata accessor for FaceObservation);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1A5CA69F0(v21, type metadata accessor for FaceObservation);
    sub_1A5CA6988(*(v8 + 48) + v13 * v11, v20, type metadata accessor for FaceObservation);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v21;
    sub_1A5CA6988(v21, v7, type metadata accessor for FaceObservation);
    v22 = *v15;
    sub_1A5CBF300(v7, v11, isUniquelyReferenced_nonNull_native);
    *v15 = v22;
    sub_1A5B2A89C(v17, v20);
    return 1;
  }
}

uint64_t sub_1A5CBEF40(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A5B10404;

  return sub_1A5CBBF9C(a1, a2, v6, v7, v8);
}

uint64_t sub_1A5CBF004()
{
  v1 = v0;
  v2 = type metadata accessor for FaceObservation(0);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47A8);
  result = sub_1A5FD468C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1A5B2A89C(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4);
      sub_1A5CBFBE4(&qword_1EB1EE8C8);
      result = sub_1A5FD3CAC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1A5B2A89C(v4, *(v7 + 48) + v15 * v19);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1A5CBF300(uint64_t a1, unint64_t a2, char a3)
{
  v27 = a1;
  v6 = type metadata accessor for FaceObservation(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v25 = v7;
  v26 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A5CBF004();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1A5CBF560();
      goto LABEL_12;
    }

    sub_1A5CBF758();
  }

  v12 = *v3;
  sub_1A5CBFBE4(&qword_1EB1EE8C8);
  v13 = sub_1A5FD3CAC();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_1A5CA6988(*(v12 + 48) + v16 * a2, v9, type metadata accessor for FaceObservation);
      sub_1A5CBFBE4(&qword_1EB1EE900);
      v17 = sub_1A5FD3D0C();
      sub_1A5CA69F0(v9, type metadata accessor for FaceObservation);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = v27;
  v19 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1A5B2A89C(v18, *(v19 + 48) + *(v25 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A5FD4B7C();
  __break(1u);
  return result;
}

void *sub_1A5CBF560()
{
  v1 = v0;
  v2 = type metadata accessor for FaceObservation(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47A8);
  v6 = *v0;
  v7 = sub_1A5FD467C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1A5CA6988(*(v6 + 48) + v21, v5, type metadata accessor for FaceObservation);
        result = sub_1A5B2A89C(v5, *(v8 + 48) + v21);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1A5CBF758()
{
  v1 = v0;
  v2 = type metadata accessor for FaceObservation(0);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47A8);
  result = sub_1A5FD468C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1A5CA6988(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for FaceObservation);
      sub_1A5CBFBE4(&qword_1EB1EE8C8);
      result = sub_1A5FD3CAC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1A5B2A89C(v4, *(v7 + 48) + v14 * v18);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_1A5CBFAB4()
{
  result = qword_1EB1F4780;
  if (!qword_1EB1F4780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F4780);
  }

  return result;
}

uint64_t sub_1A5CBFB24(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A5B0CE78;

  return sub_1A5CBC99C(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_1A5CBFBE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FaceObservation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A5CBFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 56)
  {
    if (EnumCaseMultiPayload == 24)
    {

      v17 = &qword_1EB1EF670;
    }

    else
    {
      if (EnumCaseMultiPayload != 55)
      {
        goto LABEL_15;
      }

      v17 = &qword_1EB1EF638;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case '9':

        v17 = &qword_1EB1EF628;
        break;
      case ':':

        v17 = &qword_1EB1EF620;
        break;
      case '=':

        v17 = &qword_1EB1EF608;
        break;
      default:
LABEL_15:
        sub_1A5BF1B70(v12, type metadata accessor for VisionResult);
        return;
    }
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v17);
  sub_1A5BD0E58(&v12[*(v18 + 48)], v15);
  (*(*(*(a4 + 8) + 8) + 56))(v44, a3);
  v43[0] = v44[0];
  v19 = sub_1A5C752E0();
  v40[1] = v5;
  v41 = a3;
  v42 = a4;
  if (v19)
  {
    v20 = v19;
    v21 = *&v15[*(v13 + 36)];
    sub_1A5BF1B70(v15, type metadata accessor for PixelBufferObservation);
    v22 = [objc_allocWithZone(VNPixelBufferObservation) initWithOriginatingRequestSpecifier:v20 featureName:0 CVPixelBuffer:v21];

    v23 = sub_1A5FD3D5C();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1898);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1A5FF36F0;
    *(v26 + 32) = v22;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18A0);
    v44[0] = v26;
    v27 = *(*a2 + 208);
    v28 = v22;
    v29 = v27(v43);
    sub_1A5B0DE30(v44, v23, v25);
    v29(v43, 0);
    v30 = sub_1A5FD3D5C();
    v32 = v31;
    v33 = MEMORY[0x1E69E7668];
    v45 = MEMORY[0x1E69E7668];
    LODWORD(v44[0]) = 1111970369;
    v34 = v27(v43);
    sub_1A5B0DE30(v44, v30, v32);
    v34(v43, 0);
    v35 = sub_1A5FD3D5C();
    v37 = v36;
    v38 = (*(v42 + 24))(v41);
    v45 = v33;
    LODWORD(v44[0]) = v38;
    v39 = v27(v43);
    sub_1A5B0DE30(v44, v35, v37);
    v39(v43, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A5CC008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A5CC212C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A5B0E2A4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A5CC22A4();
        v14 = v16;
      }

      result = sub_1A5CC1F7C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

unint64_t sub_1A5CC0184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*(*(a4 + 16) + 8) + 72))(a3);
  if (v11 != 8)
  {
    sub_1A5B4F9C8(v9, v10, v11);
    v15 = sub_1A5BD08F0(a1);
    v16 = v15;
LABEL_8:
    MEMORY[0x1EEE9AC00](v15);
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = v4;
    v19[5] = a2;
    sub_1A5CC0448(sub_1A5CC0374, v19, v16);
    v18 = v17;

    return v18;
  }

  sub_1A5B4F9C8(v9, v10, 8u);
  result = (*(a4 + 80))(a3, a4);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(a1 + 16))
  {
    v13 = a1 + 32 * result;
    sub_1A5B101D8(v13 + 32, v20);
    sub_1A5B16F58(0, &qword_1EB1EEF48);
    if (swift_dynamicCast())
    {
      v14 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
      v15 = swift_allocObject();
      v16 = v15;
      *(v15 + 16) = xmmword_1A5FF3930;
      *(v15 + 32) = v14;
    }

    else
    {
      sub_1A5B101D8(v13 + 32, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47B0);
      v15 = swift_dynamicCast();
      v16 = v21;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

double sub_1A5CC0374@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[5];
  v5 = *(v2[3] + 8);
  v6 = *(v5 + 8);
  v7 = *(v6 + 56);
  v8 = *a1;
  v7(&v13, v3, v6);
  v12 = v13;
  (*(v5 + 16))(&v11, v3, v5);
  *&result = sub_1A5BF36E0(v8, &v12, v4, a2).n128_u64[0];
  return result;
}

void sub_1A5CC0448(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for PixelBufferObservation();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A5FD484C())
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A5BD0A68(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x1AC554EE0](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A5BD0A68(v14 > 1, v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_1A5BD0E58(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1A5CC066C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a2 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v17 - v9;
  v11 = sub_1A5FD456C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v17 - v12;
  (*(v6 + 32))(a1, v6);
  (*(v6 + 104))(v10, a1, v6);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v14 = *(a1 - 8);
  result = (*(v14 + 48))(v13, 1, a1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(a3, v13, a1);
    (*(a2 + 56))(1, a1, a2);
    v16 = *(a2 + 8);
    (*(v16 + 16))(v18, a1, v16);
    v17[0] = v18[0];
    v17[1] = v18[1];
    (*(v16 + 24))(v17, a1, v16);
    return (*(a2 + 32))(1278226534, a1, a2);
  }

  return result;
}

id sub_1A5CC0904(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = (*(a2 + 72))(a1, a2);
  v12[0] = 0;
  v6 = [v4 objectClassOutputNamesForObjectClassIDs:v5 modelVersion:2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    v9 = sub_1A5FD3F4C();
    v10 = v7;
  }

  else
  {
    v9 = v12[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1A5CC0A14()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = 0;
  v0 = [objc_opt_self() objectClassOutputNamesForObjectClassIDs:4095 modelVersion:2 error:v27];
  v1 = v27[0];
  if (v0)
  {
    v2 = v0;
    v3 = sub_1A5FD3F4C();
    v4 = v1;

    v5 = sub_1A5BB8DA0(MEMORY[0x1E69E7CC0]);
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v3 + 40);
      while (1)
      {
        if (v7 >= *(v3 + 16))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
        }

        v11 = *(v8 - 1);
        v10 = *v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27[0] = v5;
        v13 = sub_1A5B0E2A4(v11, v10);
        v15 = v5[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_19;
        }

        v19 = v14;
        if (v5[3] < v18)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v24 = v13;
        sub_1A5BF130C();
        v13 = v24;
        if (v19)
        {
LABEL_4:
          v9 = v13;

          v5 = v27[0];
          *(*(v27[0] + 56) + 4 * v9) = 1278226488;
          goto LABEL_5;
        }

LABEL_13:
        v5 = v27[0];
        *(v27[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
        v21 = (v5[6] + 16 * v13);
        *v21 = v11;
        v21[1] = v10;
        *(v5[7] + 4 * v13) = 1278226488;
        v22 = v5[2];
        v17 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v17)
        {
          goto LABEL_20;
        }

        v5[2] = v23;
LABEL_5:
        ++v7;
        v8 += 2;
        if (v6 == v7)
        {
          goto LABEL_17;
        }
      }

      sub_1A5BF0F04(v18, isUniquelyReferenced_nonNull_native);
      v1 = v27[0];
      v13 = sub_1A5B0E2A4(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        sub_1A5FD4B8C();
        __break(1u);
        goto LABEL_21;
      }

LABEL_12:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

LABEL_17:

    return v5;
  }

  else
  {
LABEL_21:
    v26 = v1;
    sub_1A5FD348C();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CC0CC0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t sub_1A5CC0D58()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = 0;
  v0 = [objc_opt_self() objectClassOutputNamesForObjectClassIDs:4095 modelVersion:2 error:v27];
  v1 = v27[0];
  if (v0)
  {
    v2 = v0;
    v3 = sub_1A5FD3F4C();
    v4 = v1;

    v5 = sub_1A5BF17D4(MEMORY[0x1E69E7CC0]);
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v3 + 40);
      while (1)
      {
        if (v7 >= *(v3 + 16))
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
        }

        v11 = *(v8 - 1);
        v10 = *v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27[0] = v5;
        v13 = sub_1A5B0E2A4(v11, v10);
        v15 = v5[2];
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_19;
        }

        v19 = v14;
        if (v5[3] < v18)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v24 = v13;
        sub_1A5BF11A4();
        v13 = v24;
        if (v19)
        {
LABEL_4:
          v9 = v13;

          v5 = v27[0];
          *(*(v27[0] + 56) + v9) = 0;
          goto LABEL_5;
        }

LABEL_13:
        v5 = v27[0];
        *(v27[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
        v21 = (v5[6] + 16 * v13);
        *v21 = v11;
        v21[1] = v10;
        *(v5[7] + v13) = 0;
        v22 = v5[2];
        v17 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v17)
        {
          goto LABEL_20;
        }

        v5[2] = v23;
LABEL_5:
        ++v7;
        v8 += 2;
        if (v6 == v7)
        {
          goto LABEL_17;
        }
      }

      sub_1A5BF0C64(v18, isUniquelyReferenced_nonNull_native);
      v1 = v27[0];
      v13 = sub_1A5B0E2A4(v11, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        sub_1A5FD4B8C();
        __break(1u);
        goto LABEL_21;
      }

LABEL_12:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

LABEL_17:

    return v5;
  }

  else
  {
LABEL_21:
    v26 = v1;
    sub_1A5FD348C();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5CC0FFC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1A5CC10C8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_1A5CC1158(void *a1, uint64_t a2)
{
  v4 = v2;
  result = sub_1A5CB8980(a1, a2);
  if (v3)
  {
    return result;
  }

  sub_1A5B180A0(a1, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_39;
  }

  sub_1A5B063D4(v104, v108);
  v7 = v109;
  v8 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  v9 = (*(v8 + 96))(v7, v8);
  v101 = *(v9 + 16);
  if (!v101)
  {
LABEL_29:
    v56 = v109;
    v57 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v58 = (*(v57 + 72))(v56, v57);
    v59 = (*(*v4 + 440))(v106);
    *v60 |= v58;
    v59(v106, 0);
    v61 = v109;
    v62 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v63 = (*(v62 + 88))(v61, v62);
    v65 = v64;
    v66 = v109;
    v67 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v68 = sub_1A5BD9FC4(v66, *(v67 + 16));
    if (!v68)
    {
      goto LABEL_37;
    }

    v69 = v68;

    v70 = (*(*v4 + 392))(v106);
    sub_1A5CC008C(v69, v63, v65);
    v70(v106, 0);
    v71 = sub_1A5FD3D5C();
    v73 = v72;
    v74 = (*(*v4 + 352))();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B0);
    v106[0] = v74;
    v75 = *(*v4 + 208);
    v76 = v75(v104);
    sub_1A5B0DE30(v106, v71, v73);
    v76(v104, 0);
    v77 = sub_1A5FD3D5C();
    v79 = v78;
    v80 = (*(*v4 + 400))();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B8);
    v106[0] = v80;
    v81 = v75(v104);
    sub_1A5B0DE30(v106, v77, v79);
    v81(v104, 0);
    v82 = sub_1A5FD3D5C();
    v84 = v83;
    v85 = (*(*v4 + 424))();
    v107 = MEMORY[0x1E69E6810];
    v106[0] = v85;
    v86 = v75(v104);
    sub_1A5B0DE30(v106, v82, v84);
    v86(v104, 0);
    v87 = sub_1A5FD3D5C();
    v89 = v88;
    v90 = (*(*v4 + 376))();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47C8);
    v106[0] = v90;
    v91 = v75(v104);
    sub_1A5B0DE30(v106, v87, v89);
    v91(v104, 0);
    v92 = sub_1A5FD3D5C();
    v94 = v93;
    v95 = sub_1A5B16F58(0, &qword_1EB1EE5C0);
    v96 = sub_1A5B16F58(0, &qword_1EB1F47D0);
    v97 = sub_1A5B30560(v96, 3);
    v107 = v95;
    v106[0] = v97;
    v98 = v75(v104);
    sub_1A5B0DE30(v106, v92, v94);
    v98(v104, 0);
    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  v10 = 0;
  v11 = (v9 + 40);
  v100 = *(*v2 + 368);
  v111 = v2;
  v99 = v9;
  while (v10 < *(v9 + 16))
  {
    v102 = v11;
    v103 = v10;
    v14 = *(v11 - 1);
    v13 = *v11;
    v15 = v109;
    v16 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v17 = *(v16 + 24);

    v18 = v17(v15, v16);
    v19 = v100(v106);
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v104[0] = *v21;
    v23 = *&v104[0];
    *v21 = 0x8000000000000000;
    v24 = sub_1A5B0E2A4(v14, v13);
    v26 = *(v23 + 16);
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_33;
    }

    v30 = v25;
    if (*(v23 + 24) < v29)
    {
      sub_1A5BF0F04(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1A5B0E2A4(v14, v13);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_38;
      }

LABEL_13:
      v32 = *&v104[0];
      if (v30)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v33 = v24;
    sub_1A5BF130C();
    v24 = v33;
    v32 = *&v104[0];
    if (v30)
    {
LABEL_14:
      *(v32[7] + 4 * v24) = v18;
      goto LABEL_18;
    }

LABEL_16:
    v32[(v24 >> 6) + 8] |= 1 << v24;
    v34 = (v32[6] + 16 * v24);
    *v34 = v14;
    v34[1] = v13;
    *(v32[7] + 4 * v24) = v18;
    v35 = v32[2];
    v28 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v28)
    {
      goto LABEL_35;
    }

    v32[2] = v36;

LABEL_18:
    *v21 = v32;

    v19(v106, 0);
    v37 = v109;
    v38 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v39 = (*(v38 + 48))(v37, v38);
    v40 = (*(*v111 + 416))(v106);
    v42 = v41;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v104[0] = *v42;
    v44 = *&v104[0];
    *v42 = 0x8000000000000000;
    v46 = sub_1A5B0E2A4(v14, v13);
    v47 = *(v44 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_34;
    }

    v50 = v45;
    if (*(v44 + 24) >= v49)
    {
      if (v43)
      {
        if (v45)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1A5BF11A4();
        if (v50)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1A5BF0C64(v49, v43);
      v51 = sub_1A5B0E2A4(v14, v13);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_38;
      }

      v46 = v51;
      if (v50)
      {
LABEL_5:

        v12 = *&v104[0];
        *(*(*&v104[0] + 56) + v46) = v39 & 1;
        goto LABEL_6;
      }
    }

    v12 = *&v104[0];
    *(*&v104[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
    v53 = (v12[6] + 16 * v46);
    *v53 = v14;
    v53[1] = v13;
    *(v12[7] + v46) = v39 & 1;
    v54 = v12[2];
    v28 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v28)
    {
      goto LABEL_36;
    }

    v12[2] = v55;
LABEL_6:
    v10 = v103 + 1;
    *v42 = v12;

    v40(v106, 0);
    v11 = v102 + 2;
    v4 = v111;
    v9 = v99;
    if (v101 == v103 + 1)
    {
      goto LABEL_29;
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
  __break(1u);
LABEL_38:
  sub_1A5FD4B8C();
  __break(1u);
LABEL_39:
  v105 = 0;
  memset(v104, 0, sizeof(v104));
  sub_1A5B10168(v104, &qword_1EB1F47C0);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

double *sub_1A5CC1B90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  v14[12] = sub_1A5CC0A14();
  v14[13] = sub_1A5CC2410(MEMORY[0x1E69E7CC0]);
  v14[14] = sub_1A5CC0D58();
  v14[15] = 0;
  return sub_1A5CB8F90(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1A5CC1C34()
{
}

uint64_t sub_1A5CC1C6C()
{
  sub_1A5CBAF0C();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5CC1CD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47D8);
  v35 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A5CC1F7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A5FD463C() + 1) & ~v5;
    do
    {
      sub_1A5FD4C1C();

      sub_1A5FD3DBC();
      v9 = sub_1A5FD4C6C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A5CC212C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A5B0E2A4(a2, a3);
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
      sub_1A5CC1CD8(v16, a4 & 1);
      v11 = sub_1A5B0E2A4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A5FD4B8C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1A5CC22A4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1A5CC22A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47D8);
  v2 = *v0;
  v3 = sub_1A5FD485C();
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

unint64_t sub_1A5CC2410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47D8);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A5B0E2A4(v5, v6);
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

uint64_t sub_1A5CC2548(uint64_t a1)
{
  v2 = sub_1A5CC2810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC2584(uint64_t a1)
{
  v2 = sub_1A5CC2810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CC25C0(uint64_t a1)
{
  v2 = sub_1A5CC2864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC25FC(uint64_t a1)
{
  v2 = sub_1A5CC2864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassifyPotentialLandmarkRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC2810();
  sub_1A5FD4CDC();
  sub_1A5CC2864();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CC2810()
{
  result = qword_1EB25CC10;
  if (!qword_1EB25CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25CC10);
  }

  return result;
}

unint64_t sub_1A5CC2864()
{
  result = qword_1EB25CC18[0];
  if (!qword_1EB25CC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25CC18);
  }

  return result;
}

uint64_t ClassifyPotentialLandmarkRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t ClassifyPotentialLandmarkRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47F0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47F8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC2810();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CC2864();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for ClassifyPotentialLandmarkRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5CC2C30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F47E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC2810();
  sub_1A5FD4CDC();
  sub_1A5CC2864();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t ClassifyPotentialLandmarkRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

__n128 ClassifyPotentialLandmarkRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ClassifyPotentialLandmarkRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5CC2EC4()
{
  sub_1A5CC346C();
  result = sub_1A5D4EC2C();
  qword_1EB25CC08 = result;
  return result;
}

uint64_t static ClassifyPotentialLandmarkRequest.allSupportedRevisions.getter()
{
  if (qword_1EB25CC00 != -1)
  {
    swift_once();
  }
}

uint64_t ClassifyPotentialLandmarkRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5CC346C();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for ClassifyPotentialLandmarkRequest, v3);
}

uint64_t ClassifyPotentialLandmarkRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t ClassifyPotentialLandmarkRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CC3104(uint64_t a1)
{
  v2 = sub_1A5CC34C0();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CC3140(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CC346C();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CC31A0(uint64_t a1)
{
  v2 = sub_1A5B5E55C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CC31E0(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E55C();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5CC322C(uint64_t a1)
{
  v3 = *(v1 + 40);
  LOBYTE(v13) = *v1;
  v14 = *(v1 + 8);
  v15 = *(v1 + 24);
  v16 = v3;
  v4 = sub_1A5CC34C0();
  v5 = sub_1A5BDA35C(a1, &type metadata for ClassifyPotentialLandmarkRequest, v4);
  v6 = sub_1A5FD3D5C();
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  *&v15 = sub_1A5B16F58(0, &qword_1EB1F3E80);
  v13 = v9;
  sub_1A5B101C8(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v12, v6, v8, isUniquelyReferenced_nonNull_native);

  return v5;
}

void sub_1A5CC333C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNImageAnalyzerMultiDetectorPotentialLandmarkClassificationConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  v11[3] = sub_1A5B16F58(0, &qword_1EB1F4810);
  v11[0] = v3;
  v7 = *(*a1 + 208);
  v8 = v3;
  v9 = v7(v10);
  sub_1A5B0DE30(v11, v4, v6);
  v9(v10, 0);
}

unint64_t sub_1A5CC346C()
{
  result = qword_1EB1F4800;
  if (!qword_1EB1F4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4800);
  }

  return result;
}

unint64_t sub_1A5CC34C0()
{
  result = qword_1EB1F4808;
  if (!qword_1EB1F4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4808);
  }

  return result;
}

unint64_t sub_1A5CC3514()
{
  result = qword_1EB1F4818;
  if (!qword_1EB1F4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4818);
  }

  return result;
}

unint64_t sub_1A5CC356C(uint64_t a1)
{
  result = sub_1A5B5E55C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CC3594(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B667D8();
  result = sub_1A5CC35C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CC35C4()
{
  result = qword_1EB1F4820;
  if (!qword_1EB1F4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4820);
  }

  return result;
}

unint64_t sub_1A5CC361C()
{
  result = qword_1EB1F4828;
  if (!qword_1EB1F4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4828);
  }

  return result;
}

unint64_t sub_1A5CC3674()
{
  result = qword_1EB1F4830;
  if (!qword_1EB1F4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4830);
  }

  return result;
}

unint64_t sub_1A5CC36C8(uint64_t a1)
{
  result = sub_1A5CC346C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CC36F0(uint64_t a1)
{
  result = sub_1A5CC34C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CC3718(uint64_t a1)
{
  result = sub_1A5CC3740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CC3740()
{
  result = qword_1EB1F4838;
  if (!qword_1EB1F4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4838);
  }

  return result;
}

unint64_t sub_1A5CC37D8()
{
  result = qword_1EB25D520[0];
  if (!qword_1EB25D520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25D520);
  }

  return result;
}

unint64_t sub_1A5CC3830()
{
  result = qword_1EB25D630;
  if (!qword_1EB25D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25D630);
  }

  return result;
}

unint64_t sub_1A5CC3888()
{
  result = qword_1EB25D638[0];
  if (!qword_1EB25D638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25D638);
  }

  return result;
}

unint64_t sub_1A5CC38E0()
{
  result = qword_1EB25D6C0;
  if (!qword_1EB25D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25D6C0);
  }

  return result;
}

unint64_t sub_1A5CC3938()
{
  result = qword_1EB25D6C8[0];
  if (!qword_1EB25D6C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25D6C8);
  }

  return result;
}

uint64_t sub_1A5CC3A08(uint64_t a1)
{
  v2 = sub_1A5CC3CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC3A44(uint64_t a1)
{
  v2 = sub_1A5CC3CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CC3A80(uint64_t a1)
{
  v2 = sub_1A5CC3D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC3ABC(uint64_t a1)
{
  v2 = sub_1A5CC3D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackTranslationalImageRegistrationRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4840);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC3CD0();
  sub_1A5FD4CDC();
  sub_1A5CC3D24();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CC3CD0()
{
  result = qword_1EB25D770;
  if (!qword_1EB25D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25D770);
  }

  return result;
}

unint64_t sub_1A5CC3D24()
{
  result = qword_1EB25D778[0];
  if (!qword_1EB25D778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25D778);
  }

  return result;
}

uint64_t TrackTranslationalImageRegistrationRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t TrackTranslationalImageRegistrationRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4850);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4858);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC3CD0();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CC3D24();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for TrackTranslationalImageRegistrationRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5CC40F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4840);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC3CD0();
  sub_1A5FD4CDC();
  sub_1A5CC3D24();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TrackTranslationalImageRegistrationRequest.__allocating_init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  TrackTranslationalImageRegistrationRequest.init(_:frameAnalysisSpacing:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t TrackTranslationalImageRegistrationRequest.init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *a1;
  static NormalizedRect.fullImage.getter(v19);
  v12 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4868);
  v13 = swift_allocObject();
  *(v13 + 56) = 0;
  v14 = v19[1];
  *(v13 + 16) = v19[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v12;
  *(v6 + 40) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4870);
  v15 = sub_1A5CA9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4878);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v15;
  *(v6 + 48) = v16;
  sub_1A5FD366C();
  if (v11 == 1 && (sub_1A5CC56E8(&qword_1EB1F4880, type metadata accessor for TrackTranslationalImageRegistrationRequest), result = sub_1A5D4E900(), (v19[0].n128_u8[0] & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    if (a5)
    {
      a2 = *MEMORY[0x1E6960CC0];
      LODWORD(a3) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v18) = *(MEMORY[0x1E6960CC0] + 12);
      a4 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v18 = HIDWORD(a3);
    }

    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    *(v6 + 28) = v18;
    *(v6 + 32) = a4;
    return v6;
  }

  return result;
}

void TrackTranslationalImageRegistrationRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 56));
  v4 = *(v3 + 32);
  *a1 = *(v3 + 16);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 56));
}

void TrackTranslationalImageRegistrationRequest.regionOfInterest.setter(_OWORD *a1)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 56));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 56));
}

void (*TrackTranslationalImageRegistrationRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 56));
  v6 = *(v5 + 32);
  *v4 = *(v5 + 16);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 56));
  return sub_1A5B14E04;
}

uint64_t TrackTranslationalImageRegistrationRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5CC56E8(&qword_1EB1F4888, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t sub_1A5CC473C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v5 = type metadata accessor for TrackTranslationalImageRegistrationRequest();
  v6 = sub_1A5CC56E8(&qword_1EB1F4880, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  result = a2(v5, v6);
  *a3 = result;
  return result;
}

uint64_t TrackTranslationalImageRegistrationRequest.deinit()
{

  v1 = OBJC_IVAR____TtC6Vision42TrackTranslationalImageRegistrationRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackTranslationalImageRegistrationRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6Vision42TrackTranslationalImageRegistrationRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TrackTranslationalImageRegistrationRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5CC56E8(&unk_1EB1F4890, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t (*sub_1A5CC49A8(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TrackTranslationalImageRegistrationRequest.regionOfInterest.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5CC4A20(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CC56E8(&qword_1EB1F4888, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CC4AB4(uint64_t a1)
{
  v2 = sub_1A5CC56E8(&unk_1EB1F48C0, type metadata accessor for TrackTranslationalImageRegistrationRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CC4B20(uint64_t a1, uint64_t a2)
{
  sub_1A5CC56E8(&qword_1EB1F48E0, type metadata accessor for TrackTranslationalImageRegistrationRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5CC4B9C(uint64_t a1, uint64_t a2)
{
  sub_1A5CC56E8(&qword_1EB1F48E0, type metadata accessor for TrackTranslationalImageRegistrationRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5CC4C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5CC53D8(a1, v8, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() == 33)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0);
    return sub_1A5CAB1C4(&v8[*(v9 + 48)], a2);
  }

  else
  {
    sub_1A5B16718(v8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v17, "VisionResult ");
    HIWORD(v17[1]) = -4864;
    sub_1A5CC56E8(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v11 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v11);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v16[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F48A0);
    v12 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v12);

    v13 = v17[0];
    v14 = v17[1];
    sub_1A5B16774();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 20) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A5CC4E40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision42TrackTranslationalImageRegistrationRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5CC4ED0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0) + 48);
  *a2 = v2;
  sub_1A5CC53D8(a1, a2 + v5, type metadata accessor for ImageTranslationAlignmentObservation);
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t (*sub_1A5CC4F64(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A5B15D4C(v2);
  return sub_1A5B15448;
}

uint64_t sub_1A5CC5060@<X0>(uint64_t *a1@<X8>)
{
  v4 = 0;
  v2 = swift_allocObject();
  result = TrackTranslationalImageRegistrationRequest.init(_:frameAnalysisSpacing:)(&v4, 0, 0, 0, 1);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for TrackTranslationalImageRegistrationRequest()
{
  result = qword_1EB25DF80;
  if (!qword_1EB25DF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t _s6Vision42TrackTranslationalImageRegistrationRequestC28supportedComputeStageDevicesSDyAA0hI0OSay6CoreML15MLComputeDeviceOGGvg_0()
{
  v16 = sub_1A5FD3B5C();
  v0 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  *(inited + 32) = 0;
  v4 = inited + 32;
  v5 = [objc_opt_self() allCPUComputeDevices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F0140);
  v6 = sub_1A5FD3F4C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *(inited + 40) = v10;
    v13 = sub_1A5B54118(inited);
    swift_setDeallocating();
    sub_1A5B5420C(v4);
    return v13;
  }

  v7 = sub_1A5FD484C();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1A5B53F20(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = inited + 32;
    v15 = inited;
    v9 = 0;
    v10 = v17;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1AC554EE0](v9, v6);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1A5FD3B4C();
      v17 = v10;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A5B53F20(v11 > 1, v12 + 1, 1);
        v10 = v17;
      }

      ++v9;
      *(v10 + 16) = v12 + 1;
      (*(v0 + 32))(v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v12, v2, v16);
    }

    while (v7 != v9);

    v4 = v14;
    inited = v15;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5CC53D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5CC5440()
{
  result = qword_1EB1F48B8;
  if (!qword_1EB1F48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F48B8);
  }

  return result;
}

uint64_t sub_1A5CC5498(uint64_t a1)
{
  result = sub_1A5CC56E8(&unk_1EB1F48C0, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5CC5574(uint64_t a1)
{
  result = sub_1A5CC56E8(&qword_1EB1F4888, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CC55DC()
{
  result = qword_1EB1F48D8;
  if (!qword_1EB1F48D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F48D8);
  }

  return result;
}

uint64_t sub_1A5CC567C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5CC56E8(a4, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  result = sub_1A5CC56E8(a6, type metadata accessor for TrackTranslationalImageRegistrationRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5CC56E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A5CC5734()
{
  result = qword_1EB1F48E8;
  if (!qword_1EB1F48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F48E8);
  }

  return result;
}

unint64_t sub_1A5CC5788(uint64_t a1)
{
  result = sub_1A5CC57B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CC57B0()
{
  result = qword_1EB1F48F0;
  if (!qword_1EB1F48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F48F0);
  }

  return result;
}

uint64_t sub_1A5CC580C()
{
  result = sub_1A5FD367C();
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

unint64_t sub_1A5CC5938()
{
  result = qword_1EB25E190[0];
  if (!qword_1EB25E190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25E190);
  }

  return result;
}

unint64_t sub_1A5CC5990()
{
  result = qword_1EB25E2A0;
  if (!qword_1EB25E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25E2A0);
  }

  return result;
}

unint64_t sub_1A5CC59E8()
{
  result = qword_1EB25E2A8[0];
  if (!qword_1EB25E2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25E2A8);
  }

  return result;
}

unint64_t sub_1A5CC5A40()
{
  result = qword_1EB25E330;
  if (!qword_1EB25E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25E330);
  }

  return result;
}

unint64_t sub_1A5CC5A98()
{
  result = qword_1EB25E338[0];
  if (!qword_1EB25E338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25E338);
  }

  return result;
}

uint64_t sub_1A5CC5B10(uint64_t a1)
{
  v2 = sub_1A5CC5F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC5B4C(uint64_t a1)
{
  v2 = sub_1A5CC5F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CC5B88(uint64_t a1)
{
  v2 = sub_1A5CC5FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC5BC4(uint64_t a1)
{
  v2 = sub_1A5CC5FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CC5C00(uint64_t a1)
{
  v2 = sub_1A5CC5F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC5C3C(uint64_t a1)
{
  v2 = sub_1A5CC5F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HumanHandPoseObservation.Chirality.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48F8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4900);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4908);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC5F28();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5CC5F7C();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5CC5FD0();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5CC5F28()
{
  result = qword_1EB25E3D0;
  if (!qword_1EB25E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25E3D0);
  }

  return result;
}

unint64_t sub_1A5CC5F7C()
{
  result = qword_1EB25E3D8;
  if (!qword_1EB25E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25E3D8);
  }

  return result;
}

unint64_t sub_1A5CC5FD0()
{
  result = qword_1EB25E3E0;
  if (!qword_1EB25E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25E3E0);
  }

  return result;
}

uint64_t HumanHandPoseObservation.Chirality.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t HumanHandPoseObservation.Chirality.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4910);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4918);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4920);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CC5F28();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for HumanHandPoseObservation.Chirality;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5CC5F7C();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5CC5FD0();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void __swiftcall HumanHandPoseObservation.joint(for:)(Vision::Joint_optional *__return_ptr retstr, Vision::HumanHandPoseObservation::JointName a2)
{
  v3 = a2;
  v5 = *(v2 + *(type metadata accessor for HumanHandPoseObservation() + 36));
  if (*(v5 + 16) && (v6 = sub_1A5CC9F30(*v3), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    v11 = *(v8 + 32);
    retstr->value.location = *v8;
    retstr->value.jointName._countAndFlagsBits = v10;
    retstr->value.jointName._object = v9;
    retstr->value.confidence = v11;
  }

  else
  {
    retstr->value.confidence = 0.0;
    retstr->value.location = 0u;
    retstr->value.jointName = 0u;
  }
}

uint64_t type metadata accessor for HumanHandPoseObservation()
{
  result = qword_1EB25EF70;
  if (!qword_1EB25EF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HumanHandPoseObservation.allJoints(in:)(char *a1)
{
  v4 = *a1;
  v1 = type metadata accessor for HumanHandPoseObservation();
  v2 = sub_1A5CCAB18(&qword_1EB1F4928, type metadata accessor for HumanHandPoseObservation);
  return sub_1A5C054A8(&v4, v1, v2);
}

void *HumanHandPoseObservation.availableJointNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for HumanHandPoseObservation() + 36));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A5CCAAA4(*(v1 + 16), 0);
  v4 = sub_1A5B2E2F8(&v6, v3 + 32, v2, v1);

  sub_1A5B2E3F4();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id HumanHandPoseObservation.keypoints.getter()
{
  v0 = type metadata accessor for HumanHandPoseObservation();
  v1 = sub_1A5CCAB18(&qword_1EB1F4930, type metadata accessor for HumanHandPoseObservation);
  return sub_1A5BBE620(v0, v1);
}

uint64_t HumanHandPoseObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HumanHandPoseObservation() + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 HumanHandPoseObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HumanHandPoseObservation() + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

unint64_t HumanHandPoseObservation.description.getter()
{
  sub_1A5FD46AC();

  v1 = type metadata accessor for HumanHandPoseObservation();
  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0x73746E696F6A20, 0xE700000000000000);
  v3 = *v0;
  if (v3 != 2)
  {
    BYTE8(v7) = 0;
    MEMORY[0x1AC554600](0x6C6172696863202CLL, 0xED0000203A797469);
    *&v7 = v3 & 1;
    sub_1A5FD481C();
    MEMORY[0x1AC554600](*(&v7 + 1), 0xE000000000000000);
  }

  v4 = sub_1A5CCAB18(&qword_1EB1F4938, type metadata accessor for HumanHandPoseObservation);
  v5 = sub_1A5C29408(v1, &off_1F1968A08, v4);
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](41, 0xE100000000000000);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);

  return 0xD000000000000024;
}

uint64_t HumanHandPoseObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for HumanHandPoseObservation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

Vision::HumanHandPoseObservation::JointName_optional __swiftcall HumanHandPoseObservation.JointName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD4B2C();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t HumanHandPoseObservation.JointName.rawValue.getter()
{
  result = 0x706954626D756874;
  switch(*v0)
  {
    case 1:
      return 0x5049626D756874;
    case 2:
      return 0x504D626D756874;
    case 3:
      return 0x434D43626D756874;
    case 4:
      return 0x7069547865646E69;
    case 5:
      return 0x5049447865646E69;
    case 6:
      return 0x5049507865646E69;
    case 7:
      return 0x50434D7865646E69;
    case 8:
      v2 = 1684302189;
      return v2 | 0x6954656C00000000;
    case 9:
      v4 = 1684302189;
      goto LABEL_14;
    case 0xA:
      v5 = 1684302189;
      goto LABEL_21;
    case 0xB:
      v3 = 1684302189;
      goto LABEL_25;
    case 0xC:
      return 0x706954676E6972;
    case 0xD:
      return 0x504944676E6972;
    case 0xE:
      return 0x504950676E6972;
    case 0xF:
      return 0x50434D676E6972;
    case 0x10:
      v2 = 1953786220;
      return v2 | 0x6954656C00000000;
    case 0x11:
      v4 = 1953786220;
LABEL_14:
      result = v4 | 0x4944656C00000000;
      break;
    case 0x12:
      v5 = 1953786220;
LABEL_21:
      result = v5 | 0x4950656C00000000;
      break;
    case 0x13:
      v3 = 1953786220;
LABEL_25:
      result = v3 | 0x434D656C00000000;
      break;
    case 0x14:
      result = 0x7473697277;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5CC6E1C()
{
  v0 = HumanHandPoseObservation.JointName.rawValue.getter();
  v2 = v1;
  if (v0 == HumanHandPoseObservation.JointName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A5FD4B0C();
  }

  return v5 & 1;
}

uint64_t sub_1A5CC6EB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x626D756874;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6E69467865646E69;
    }

    else
    {
      v5 = 0x626D756874;
    }

    if (v3)
    {
      v6 = 0xEB00000000726567;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v4 = 1953786220;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v4 = 1684302189;
LABEL_12:
      v5 = v4 | 0x6946656C00000000;
      v6 = 0xEC0000007265676ELL;
      goto LABEL_14;
    }

    v5 = 0x676E6946676E6972;
    v6 = 0xEA00000000007265;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    v7 = 0xE500000000000000;
    v8 = 0x6E69467865646E69;
    v9 = 0xEB00000000726567;
    v10 = a2 == 0;
  }

  else
  {
    v2 = 0x6946656C7474696CLL;
    v7 = 0xEC0000007265676ELL;
    v8 = 0x6946656C6464696DLL;
    v9 = 0xEC0000007265676ELL;
    if (a2 != 3)
    {
      v8 = 0x676E6946676E6972;
      v9 = 0xEA00000000007265;
    }

    v10 = a2 == 2;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A5FD4B0C();
  }

  return v13 & 1;
}

uint64_t sub_1A5CC7060@<X0>(uint64_t *a1@<X8>)
{
  result = HumanHandPoseObservation.JointName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5CC7088()
{
  sub_1A5FD4C1C();
  HumanHandPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CC70F0()
{
  HumanHandPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();
}

uint64_t sub_1A5CC7154()
{
  sub_1A5FD4C1C();
  HumanHandPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

Vision::HumanHandPoseObservation::JointsGroupName_optional __swiftcall HumanHandPoseObservation.JointsGroupName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HumanHandPoseObservation.JointsGroupName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x626D756874;
  v3 = 0x6946656C7474696CLL;
  v4 = 0x6946656C6464696DLL;
  if (v1 != 3)
  {
    v4 = 0x676E6946676E6972;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69467865646E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1A5CC7390(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x626D756874;
  v5 = 0x6946656C7474696CLL;
  v6 = 0xEC0000007265676ELL;
  v7 = 0x6946656C6464696DLL;
  v8 = 0xEC0000007265676ELL;
  if (v2 != 3)
  {
    v7 = 0x676E6946676E6972;
    v8 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x6E69467865646E69;
    v3 = 0xEB00000000726567;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A5CC7458()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CC7554()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5CC763C()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CC7738(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = *(*(v2 + 48) + (v8 | (v3 << 6)));
    if (!)
    {
      return 1;
    }

    sub_1A5CC9F30(v11);
    if ((v12 & 1) == 0)
    {

      return 0;
    }

    sub_1A5B23E90();

    v13 = sub_1A5FD3D0C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t HumanHandPoseObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for HumanHandPoseObservation();
  sub_1A5CCAB18(&qword_1EB1F4940, type metadata accessor for HumanHandPoseObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CC798C(char *a1, uint64_t a2)
{
  v5 = *a1;
  v3 = sub_1A5CCAB18(&qword_1EB1F4928, type metadata accessor for HumanHandPoseObservation);
  return sub_1A5C054A8(&v5, a2, v3);
}

uint64_t sub_1A5CC7A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5CCAB18(&qword_1EB1F4938, type metadata accessor for HumanHandPoseObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

void *sub_1A5CC7A84(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for HumanHandPoseObservation() + 32));
  if (v3 > 0xFFF7 || v3 >> 3 != 14)
  {
    return 0;
  }

  v4 = &unk_1F19688C0;
  v5 = &unk_1F1968910;
  v6 = &unk_1F1968938;
  if (v2 != 3)
  {
    v6 = &unk_1F1968960;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (v2)
  {
    v4 = &unk_1F19688E8;
  }

  if (v2 <= 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1A5CC7B34()
{
  v1 = 0x74696C6172696863;
  if (*v0 != 1)
  {
    v1 = 0x746176726573626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E696F4A6C6C61;
  }
}

uint64_t sub_1A5CC7B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5CCB03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CC7BC4(uint64_t a1)
{
  v2 = sub_1A5CCACC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CC7C00(uint64_t a1)
{
  v2 = sub_1A5CCACC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HumanHandPoseObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v6 = *(v5 - 8);
  v19 = v5;
  v20 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4948);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCACC4();
  v13 = v3;
  sub_1A5FD4CDC();
  v14 = type metadata accessor for HumanHandPoseObservation();
  v25 = *&v3[*(v14 + 36)];
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4950);
  sub_1A5CCAE44(&qword_1EB1F4958, sub_1A5CCAD18, sub_1A5BC4A74);
  sub_1A5FD4A5C();
  if (!v2)
  {
    v15 = v20;
    v23 = *v13;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4968);
    sub_1A5CCAD6C();
    sub_1A5FD4A5C();
    v21 = 2;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v16 = sub_1A5CCAB18(&qword_1EB1F4938, type metadata accessor for HumanHandPoseObservation);
    sub_1A5BBD46C(v8, v14, &off_1F1968A08, v16);
    (*(v15 + 8))(v8, v19);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t HumanHandPoseObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v35 = sub_1A5FD367C();
  v30 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4980);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for HumanHandPoseObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCACC4();
  v13 = v36;
  sub_1A5FD4CCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v4;
  v28 = v6;
  v14 = v33;
  v36 = a1;
  v15 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4950);
  v37 = 0;
  sub_1A5CCAE44(&qword_1EB1F4988, sub_1A5CCAED4, sub_1A5BC4878);
  v16 = v34;
  sub_1A5FD497C();
  v17 = v9;
  v18 = v12;
  *&v12[v10[9]] = v40;
  v37 = 1;
  sub_1A5CCAF28();
  sub_1A5FD497C();
  *v12 = v40;
  LOBYTE(v40) = 2;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v26 = v17;
  LOBYTE(v40) = 0;
  sub_1A5CCAB18(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  (*(v30 + 32))(&v12[v10[5]], v32, v15);
  LOBYTE(v40) = 1;
  sub_1A5FD495C();
  *&v12[v10[6]] = v19;
  v37 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v20 = v36;
  v21 = v31;
  *(v18 + v10[8]) = v40;
  v22 = v28;
  sub_1A5BBDB04(v38);
  (*(v21 + 8))(v22, v27);
  (*(v14 + 8))(v26, v16);
  v23 = v18 + v10[7];
  v24 = v38[1];
  *v23 = v38[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v38[2];
  *(v23 + 48) = v39;
  sub_1A5CCAF7C(v18, v29);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1A5CCAFE0(v18);
}

void *sub_1A5CC85F8()
{
  v1 = *(v0 + *(type metadata accessor for HumanHandPoseObservation() + 32));
  if (v1 > 0xFFF7 || v1 >> 3 != 14)
  {
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000034, 0x80000001A6059DB0);
    if (v1 <= 0xFFF7)
    {
      v4 = RequestDescriptor.description.getter();
      v3 = v5;
    }

    else
    {
      v3 = 0xEF74736575716572;
      v4 = 0x206E776F6E6B6E75;
    }

    MEMORY[0x1AC554600](v4, v3);

    sub_1A5B16774();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0xE000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 20) = 18;
    swift_willThrow();
  }

  return &unk_1F1968988;
}

void sub_1A5CC8760(void *a1@<X0>, char *a2@<X8>)
{
  sub_1A5FD3D5C();
  v4 = a1;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v7 = sub_1A5FD3D5C();
  v9 = v8;
  if (v7 == sub_1A5FD3D5C() && v9 == v10)
  {
    v13 = 20;
LABEL_8:

    goto LABEL_9;
  }

  v12 = sub_1A5FD4B0C();

  if (v12)
  {
    v13 = 20;
LABEL_9:

    goto LABEL_10;
  }

  sub_1A5FD3D5C();
  v14 = v4;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v15 = sub_1A5FD3D5C();
  v17 = v16;
  if (v15 == sub_1A5FD3D5C() && v17 == v18)
  {
    v13 = 3;
    goto LABEL_8;
  }

  v19 = sub_1A5FD4B0C();

  if (v19)
  {
    v13 = 3;
    goto LABEL_9;
  }

  sub_1A5FD3D5C();
  v20 = v14;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v21 = sub_1A5FD3D5C();
  v23 = v22;
  if (v21 == sub_1A5FD3D5C() && v23 == v24)
  {
    v13 = 1;
    goto LABEL_8;
  }

  v25 = sub_1A5FD4B0C();

  if (v25)
  {
    v13 = 1;
    goto LABEL_9;
  }

  sub_1A5FD3D5C();
  v26 = v20;
  v27 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v28 = sub_1A5FD3D2C();

  v29 = sub_1A5FD3D5C();
  v31 = v30;
  if (v29 == sub_1A5FD3D5C() && v31 == v32)
  {

LABEL_25:

    v13 = 2;
    goto LABEL_10;
  }

  v33 = sub_1A5FD4B0C();

  if (v33)
  {
    goto LABEL_25;
  }

  sub_1A5FD3D5C();
  v34 = v26;
  v35 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v36 = sub_1A5FD3D2C();

  v37 = sub_1A5FD3D5C();
  v39 = v38;
  if (v37 == sub_1A5FD3D5C() && v39 == v40)
  {

LABEL_30:

    v13 = 0;
    goto LABEL_10;
  }

  v41 = sub_1A5FD4B0C();

  if (v41)
  {
    goto LABEL_30;
  }

  sub_1A5FD3D5C();
  v42 = v34;
  v43 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v44 = sub_1A5FD3D2C();

  v45 = sub_1A5FD3D5C();
  v47 = v46;
  if (v45 == sub_1A5FD3D5C() && v47 == v48)
  {

LABEL_35:

    v13 = 4;
    goto LABEL_10;
  }

  v49 = sub_1A5FD4B0C();

  if (v49)
  {
    goto LABEL_35;
  }

  sub_1A5FD3D5C();
  v50 = v42;
  v51 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v52 = sub_1A5FD3D2C();

  v53 = sub_1A5FD3D5C();
  v55 = v54;
  if (v53 == sub_1A5FD3D5C() && v55 == v56)
  {

LABEL_40:

    v13 = 5;
    goto LABEL_10;
  }

  v57 = sub_1A5FD4B0C();

  if (v57)
  {
    goto LABEL_40;
  }

  sub_1A5FD3D5C();
  v58 = v50;
  v59 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v60 = sub_1A5FD3D2C();

  v61 = sub_1A5FD3D5C();
  v63 = v62;
  if (v61 == sub_1A5FD3D5C() && v63 == v64)
  {

LABEL_45:

    v13 = 6;
    goto LABEL_10;
  }

  v65 = sub_1A5FD4B0C();

  if (v65)
  {
    goto LABEL_45;
  }

  sub_1A5FD3D5C();
  v66 = v58;
  v67 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v68 = sub_1A5FD3D2C();

  v69 = sub_1A5FD3D5C();
  v71 = v70;
  if (v69 == sub_1A5FD3D5C() && v71 == v72)
  {

LABEL_50:

    v13 = 7;
    goto LABEL_10;
  }

  v73 = sub_1A5FD4B0C();

  if (v73)
  {
    goto LABEL_50;
  }

  sub_1A5FD3D5C();
  v74 = v66;
  v75 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v76 = sub_1A5FD3D2C();

  v77 = sub_1A5FD3D5C();
  v79 = v78;
  if (v77 == sub_1A5FD3D5C() && v79 == v80)
  {

LABEL_55:

    v13 = 8;
    goto LABEL_10;
  }

  v81 = sub_1A5FD4B0C();

  if (v81)
  {
    goto LABEL_55;
  }

  sub_1A5FD3D5C();
  v82 = v74;
  v83 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v84 = sub_1A5FD3D2C();

  v85 = sub_1A5FD3D5C();
  v87 = v86;
  if (v85 == sub_1A5FD3D5C() && v87 == v88)
  {

LABEL_60:

    v13 = 9;
    goto LABEL_10;
  }

  v89 = sub_1A5FD4B0C();

  if (v89)
  {
    goto LABEL_60;
  }

  sub_1A5FD3D5C();
  v90 = v82;
  v91 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v92 = sub_1A5FD3D2C();

  v93 = sub_1A5FD3D5C();
  v95 = v94;
  if (v93 == sub_1A5FD3D5C() && v95 == v96)
  {

LABEL_65:

    v13 = 10;
    goto LABEL_10;
  }

  v97 = sub_1A5FD4B0C();

  if (v97)
  {
    goto LABEL_65;
  }

  sub_1A5FD3D5C();
  v98 = v90;
  v99 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v100 = sub_1A5FD3D2C();

  v101 = sub_1A5FD3D5C();
  v103 = v102;
  if (v101 == sub_1A5FD3D5C() && v103 == v104)
  {

LABEL_70:

    v13 = 11;
    goto LABEL_10;
  }

  v105 = sub_1A5FD4B0C();

  if (v105)
  {
    goto LABEL_70;
  }

  sub_1A5FD3D5C();
  v106 = v98;
  v107 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v108 = sub_1A5FD3D2C();

  v109 = sub_1A5FD3D5C();
  v111 = v110;
  if (v109 == sub_1A5FD3D5C() && v111 == v112)
  {

LABEL_75:

    v13 = 12;
    goto LABEL_10;
  }

  v113 = sub_1A5FD4B0C();

  if (v113)
  {
    goto LABEL_75;
  }

  sub_1A5FD3D5C();
  v114 = v106;
  v115 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v116 = sub_1A5FD3D2C();

  v117 = sub_1A5FD3D5C();
  v119 = v118;
  if (v117 == sub_1A5FD3D5C() && v119 == v120)
  {

LABEL_80:

    v13 = 13;
    goto LABEL_10;
  }

  v121 = sub_1A5FD4B0C();

  if (v121)
  {
    goto LABEL_80;
  }

  sub_1A5FD3D5C();
  v122 = v114;
  v123 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v124 = sub_1A5FD3D2C();

  v125 = sub_1A5FD3D5C();
  v127 = v126;
  if (v125 == sub_1A5FD3D5C() && v127 == v128)
  {

LABEL_85:

    v13 = 14;
    goto LABEL_10;
  }

  v129 = sub_1A5FD4B0C();

  if (v129)
  {
    goto LABEL_85;
  }

  sub_1A5FD3D5C();
  v130 = v122;
  v131 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v132 = sub_1A5FD3D2C();

  v133 = sub_1A5FD3D5C();
  v135 = v134;
  if (v133 == sub_1A5FD3D5C() && v135 == v136)
  {

LABEL_90:

    v13 = 15;
    goto LABEL_10;
  }

  v137 = sub_1A5FD4B0C();

  if (v137)
  {
    goto LABEL_90;
  }

  sub_1A5FD3D5C();
  v138 = v130;
  v139 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v140 = sub_1A5FD3D2C();

  v141 = sub_1A5FD3D5C();
  v143 = v142;
  if (v141 == sub_1A5FD3D5C() && v143 == v144)
  {

LABEL_95:

    v13 = 16;
    goto LABEL_10;
  }

  v145 = sub_1A5FD4B0C();

  if (v145)
  {
    goto LABEL_95;
  }

  sub_1A5FD3D5C();
  v146 = v138;
  v147 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v148 = sub_1A5FD3D2C();

  v149 = sub_1A5FD3D5C();
  v151 = v150;
  if (v149 == sub_1A5FD3D5C() && v151 == v152)
  {

LABEL_100:

    v13 = 17;
    goto LABEL_10;
  }

  v153 = sub_1A5FD4B0C();

  if (v153)
  {
    goto LABEL_100;
  }

  sub_1A5FD3D5C();
  v154 = v146;
  v155 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v156 = sub_1A5FD3D2C();

  v157 = sub_1A5FD3D5C();
  v159 = v158;
  if (v157 == sub_1A5FD3D5C() && v159 == v160)
  {

LABEL_105:

    v13 = 18;
    goto LABEL_10;
  }

  v161 = sub_1A5FD4B0C();

  if (v161)
  {
    goto LABEL_105;
  }

  sub_1A5FD3D5C();
  v162 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v163 = sub_1A5FD3D2C();

  v164 = sub_1A5FD3D5C();
  v166 = v165;
  if (v164 == sub_1A5FD3D5C() && v166 == v167)
  {

    v13 = 19;
  }

  else
  {
    v168 = sub_1A5FD4B0C();

    if (v168)
    {
      v13 = 19;
    }

    else
    {
      v13 = 21;
    }
  }

LABEL_10:
  *a2 = v13;
}

void sub_1A5CC9A60(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v56 = *a2;
  v6 = sub_1A5CCB164(MEMORY[0x1E69E7CC0]);
  v7 = [a1 availableJointNames];
  _s3__C9JointNameVMa_2(0);
  v8 = sub_1A5FD3F4C();

  v9 = *(v8 + 16);
  if (!v9)
  {

    goto LABEL_22;
  }

  v55 = a4;
  v10 = 0;
  v59 = v8;
  v60 = a1;
  v58 = *(v8 + 16);
  do
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    v13 = *(v8 + 8 * v10 + 32);
    *&v62 = 0;
    v14 = v13;
    v15 = [a1 recognizedPointForJointName:v14 error:&v62];
    v16 = v62;
    if (!v15)
    {
      v11 = v62;
      v12 = sub_1A5FD348C();

      swift_willThrow();
      goto LABEL_4;
    }

    v17 = v15;
    v18 = v14;
    v19 = v16;
    sub_1A5CC8760(v18, &v62);
    v20 = v62;
    if (v62 == 21)
    {

      goto LABEL_4;
    }

    [v17 location];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v22, v21));
    v61 = v62;
    v23 = HumanHandPoseObservation.JointName.rawValue.getter();
    v25 = v24;
    [v17 confidence];
    sub_1A5B23BA0(&v61, v23, v25, &v62, v26);
    v27 = v62;
    v29 = v63;
    v28 = v64;
    v30 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v6;
    v32 = sub_1A5CC9F30(v20);
    v34 = v6[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      goto LABEL_30;
    }

    v38 = v33;
    if (v6[3] < v37)
    {
      sub_1A5CCA47C(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_1A5CC9F30(v20);
      if ((v38 & 1) != (v39 & 1))
      {
        sub_1A5FD4B8C();
        __break(1u);
        return;
      }

LABEL_14:
      v6 = v61;
      if ((v38 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v41 = v32;
    sub_1A5CCA928();
    v32 = v41;
    v6 = v61;
    if ((v38 & 1) == 0)
    {
LABEL_17:
      v6[(v32 >> 6) + 8] |= 1 << v32;
      *(v6[6] + v32) = v20;
      v42 = v6[7] + 40 * v32;
      *v42 = v27;
      *(v42 + 16) = v29;
      *(v42 + 24) = v28;
      *(v42 + 32) = v30;

      v43 = v6[2];
      v36 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v36)
      {
        goto LABEL_31;
      }

      v6[2] = v44;
      goto LABEL_19;
    }

LABEL_15:
    v40 = v6[7] + 40 * v32;
    *v40 = v27;
    *(v40 + 16) = v29;
    *(v40 + 24) = v28;
    *(v40 + 32) = v30;

LABEL_19:
    v8 = v59;
    a1 = v60;
    v9 = v58;
LABEL_4:
    ++v10;
  }

  while (v9 != v10);

  a4 = v55;
LABEL_22:
  v45 = [a1 chirality];
  if (v45 == 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  if (v45 == -1)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

  v48 = a1;
  v49 = [v48 uuid];
  v50 = type metadata accessor for HumanHandPoseObservation();
  sub_1A5FD365C();

  [v48 confidence];
  v52 = v51;

  *a4 = v47;
  *&a4[v50[6]] = v52;
  v53 = &a4[v50[7]];
  v54 = *(a3 + 16);
  *v53 = *a3;
  *(v53 + 1) = v54;
  *(v53 + 2) = *(a3 + 32);
  v53[48] = *(a3 + 48);
  *&a4[v50[8]] = v56;
  *&a4[v50[9]] = v6;
}

void HumanHandPoseObservation.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = -8;
  [a1 timeRange];
  v7 = 0;
  sub_1A5CC9A60(a1, &v5, &v6, a2);
}

unint64_t sub_1A5CC9F30(char a1)
{
  sub_1A5FD4C1C();
  HumanHandPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  v2 = sub_1A5FD4C6C();

  return sub_1A5CC9FBC(a1, v2);
}

unint64_t sub_1A5CC9FBC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x706954626D756874;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x5049626D756874;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x504D626D756874;
          break;
        case 3:
          v8 = 0x434D43626D756874;
          break;
        case 4:
          v8 = 0x7069547865646E69;
          break;
        case 5:
          v8 = 0x5049447865646E69;
          break;
        case 6:
          v8 = 0x5049507865646E69;
          break;
        case 7:
          v8 = 0x50434D7865646E69;
          break;
        case 8:
          v7 = 0xE900000000000070;
          v9 = 1684302189;
          goto LABEL_25;
        case 9:
          v11 = 1684302189;
          goto LABEL_16;
        case 0xA:
          v12 = 1684302189;
          goto LABEL_23;
        case 0xB:
          v10 = 1684302189;
          goto LABEL_27;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x706954676E6972;
          break;
        case 0xD:
          v7 = 0xE700000000000000;
          v8 = 0x504944676E6972;
          break;
        case 0xE:
          v7 = 0xE700000000000000;
          v8 = 0x504950676E6972;
          break;
        case 0xF:
          v7 = 0xE700000000000000;
          v8 = 0x50434D676E6972;
          break;
        case 0x10:
          v7 = 0xE900000000000070;
          v9 = 1953786220;
LABEL_25:
          v8 = v9 | 0x6954656C00000000;
          break;
        case 0x11:
          v11 = 1953786220;
LABEL_16:
          v8 = v11 | 0x4944656C00000000;
          goto LABEL_28;
        case 0x12:
          v12 = 1953786220;
LABEL_23:
          v8 = v12 | 0x4950656C00000000;
          goto LABEL_28;
        case 0x13:
          v10 = 1953786220;
LABEL_27:
          v8 = v10 | 0x434D656C00000000;
LABEL_28:
          v7 = 0xE900000000000050;
          break;
        case 0x14:
          v7 = 0xE500000000000000;
          v8 = 0x7473697277;
          break;
        default:
          break;
      }

      v13 = 0xE800000000000000;
      v14 = 0x706954626D756874;
      switch(a1)
      {
        case 1:
          v13 = 0xE700000000000000;
          v15 = 0x49626D756874;
          goto LABEL_52;
        case 2:
          v13 = 0xE700000000000000;
          v15 = 0x4D626D756874;
          goto LABEL_52;
        case 3:
          if (v8 != 0x434D43626D756874)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        case 4:
          if (v8 != 0x7069547865646E69)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        case 5:
          v19 = 0x447865646E69;
          goto LABEL_55;
        case 6:
          v19 = 0x507865646E69;
LABEL_55:
          if (v8 != (v19 & 0xFFFFFFFFFFFFLL | 0x5049000000000000))
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        case 7:
          if (v8 != 0x50434D7865646E69)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        case 8:
          v13 = 0xE900000000000070;
          v14 = 0x6954656C6464696DLL;
          goto LABEL_61;
        case 9:
          v17 = 1684302189;
          goto LABEL_47;
        case 10:
          v20 = 1684302189;
          goto LABEL_59;
        case 11:
          v16 = 1684302189;
          goto LABEL_64;
        case 12:
          v13 = 0xE700000000000000;
          if (v8 != 0x706954676E6972)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        case 13:
          v13 = 0xE700000000000000;
          v15 = 0x4944676E6972;
          goto LABEL_52;
        case 14:
          v13 = 0xE700000000000000;
          v15 = 0x4950676E6972;
          goto LABEL_52;
        case 15:
          v13 = 0xE700000000000000;
          v15 = 0x434D676E6972;
LABEL_52:
          if (v8 != (v15 & 0xFFFFFFFFFFFFLL | 0x50000000000000))
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        case 16:
          v13 = 0xE900000000000070;
          if (v8 != 0x6954656C7474696CLL)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        case 17:
          v17 = 1953786220;
LABEL_47:
          v18 = v17 | 0x4944656C00000000;
          goto LABEL_65;
        case 18:
          v20 = 1953786220;
LABEL_59:
          v18 = v20 | 0x4950656C00000000;
          goto LABEL_65;
        case 19:
          v16 = 1953786220;
LABEL_64:
          v18 = v16 | 0x434D656C00000000;
LABEL_65:
          v13 = 0xE900000000000050;
          if (v8 == v18)
          {
            goto LABEL_66;
          }

          goto LABEL_67;
        case 20:
          v13 = 0xE500000000000000;
          if (v8 != 0x7473697277)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        default:
LABEL_61:
          if (v8 != v14)
          {
            goto LABEL_67;
          }

LABEL_66:
          if (v7 == v13)
          {

            return v4;
          }

LABEL_67:
          v21 = sub_1A5FD4B0C();

          if (v21)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1A5CCA47C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A08);
  v33 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 40 * v20;
      v35 = *v22;
      v23 = *(v22 + 24);
      v34 = *(v22 + 16);
      v24 = *(v22 + 32);
      if ((v33 & 1) == 0)
      {
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();

      result = sub_1A5FD4C6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v35;
      *(v16 + 16) = v34;
      *(v16 + 24) = v23;
      *(v16 + 32) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A5CCA928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A08);
  v2 = *v0;
  v3 = sub_1A5FD485C();
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
        v18 = *(v2 + 56) + 40 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v22;
        *(v23 + 16) = v20;
        *(v23 + 24) = v19;
        *(v23 + 32) = v21;
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

void *sub_1A5CCAAA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A5CCAB18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s6Vision24HumanHandPoseObservationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }
  }

  else if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    goto LABEL_19;
  }

  v6 = type metadata accessor for HumanHandPoseObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *&a1[v6[6]] != *&a2[v6[6]])
  {
    goto LABEL_19;
  }

  v7 = v6[7];
  v8 = a1[v7 + 48];
  v9 = &a2[v7];
  if (v8)
  {
    if (!v9[48])
    {
      goto LABEL_19;
    }
  }

  else if ((v9[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = v6[8];
  v11 = *&a1[v10];
  v12 = *&a2[v10];
  if (v11 > 0xFFF7)
  {
    if (v12 > 0xFFF7)
    {
      goto LABEL_18;
    }

LABEL_19:
    v13 = 0;
    return v13 & 1;
  }

  if (v12 > 0xFFF7)
  {
    goto LABEL_19;
  }

  sub_1A5B0BB44();
  if ((sub_1A5FD3D0C() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  v13 = sub_1A5CC7738(*&a1[v6[9]], *&a2[v6[9]]);
  return v13 & 1;
}

unint64_t sub_1A5CCACC4()
{
  result = qword_1EB25E3E8[0];
  if (!qword_1EB25E3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25E3E8);
  }

  return result;
}

unint64_t sub_1A5CCAD18()
{
  result = qword_1EB1F4960;
  if (!qword_1EB1F4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4960);
  }

  return result;
}

unint64_t sub_1A5CCAD6C()
{
  result = qword_1EB1F4970;
  if (!qword_1EB1F4970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4968);
    sub_1A5CCADF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4970);
  }

  return result;
}

unint64_t sub_1A5CCADF0()
{
  result = qword_1EB1F4978;
  if (!qword_1EB1F4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4978);
  }

  return result;
}

uint64_t sub_1A5CCAE44(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4950);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5CCAED4()
{
  result = qword_1EB1F4990;
  if (!qword_1EB1F4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4990);
  }

  return result;
}

unint64_t sub_1A5CCAF28()
{
  result = qword_1EB1F4998;
  if (!qword_1EB1F4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4998);
  }

  return result;
}

uint64_t sub_1A5CCAF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanHandPoseObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CCAFE0(uint64_t a1)
{
  v2 = type metadata accessor for HumanHandPoseObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5CCB03C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F4A6C6C61 && a2 == 0xE900000000000073;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696C6172696863 && a2 == 0xE900000000000079 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

unint64_t sub_1A5CCB164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A08);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 72); ; i += 12)
    {
      v5 = *(i - 40);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;

      result = sub_1A5CC9F30(v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v13 = v3[7] + 40 * result;
      *v13 = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      *(v13 + 24) = v8;
      *(v13 + 32) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1A5CCB28C()
{
  result = qword_1EB1F49A0;
  if (!qword_1EB1F49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49A0);
  }

  return result;
}

unint64_t sub_1A5CCB2E4()
{
  result = qword_1EB1F49A8;
  if (!qword_1EB1F49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49A8);
  }

  return result;
}

unint64_t sub_1A5CCB33C()
{
  result = qword_1EB1F49B0;
  if (!qword_1EB1F49B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F49B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49B0);
  }

  return result;
}

unint64_t sub_1A5CCB3A4()
{
  result = qword_1EB1F49C0;
  if (!qword_1EB1F49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49C0);
  }

  return result;
}

uint64_t sub_1A5CCB3F8(void *a1)
{
  a1[1] = sub_1A5CCAB18(&qword_1EB1F49C8, type metadata accessor for HumanHandPoseObservation);
  a1[2] = sub_1A5CCAB18(&qword_1EB1F0E28, type metadata accessor for HumanHandPoseObservation);
  a1[3] = sub_1A5CCAB18(&qword_1EB1F0E58, type metadata accessor for HumanHandPoseObservation);
  result = sub_1A5CCAB18(&qword_1EB1F4940, type metadata accessor for HumanHandPoseObservation);
  a1[4] = result;
  return result;
}

unint64_t sub_1A5CCB4D8()
{
  result = qword_1EB1F49D0;
  if (!qword_1EB1F49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49D0);
  }

  return result;
}

unint64_t sub_1A5CCB530()
{
  result = qword_1EB1F49D8;
  if (!qword_1EB1F49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49D8);
  }

  return result;
}

unint64_t sub_1A5CCB588()
{
  result = qword_1EB1F49E0;
  if (!qword_1EB1F49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49E0);
  }

  return result;
}

unint64_t sub_1A5CCB5E0()
{
  result = qword_1EB1F49E8;
  if (!qword_1EB1F49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F49E8);
  }

  return result;
}

uint64_t sub_1A5CCB67C(uint64_t a1)
{
  result = sub_1A5CCAB18(&qword_1EB1F49F0, type metadata accessor for HumanHandPoseObservation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5CCB6D4(uint64_t a1)
{
  result = sub_1A5CCAB18(&qword_1EB1F4938, type metadata accessor for HumanHandPoseObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5CCB754()
{
  sub_1A5CCBDF4(319, &qword_1EB1F49F8, &type metadata for HumanHandPoseObservation.Chirality, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5B0AD5C();
      if (v2 <= 0x3F)
      {
        sub_1A5CCBDF4(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A5CCB870();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A5CCB870()
{
  if (!qword_1EB1F4A00)
  {
    sub_1A5CCB4D8();
    v0 = sub_1A5FD3C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F4A00);
    }
  }
}

uint64_t getEnumTagSinglePayload for HumanHandPoseObservation.JointName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HumanHandPoseObservation.JointName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5CCBA88()
{
  result = qword_1EB25F280[0];
  if (!qword_1EB25F280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25F280);
  }

  return result;
}

unint64_t sub_1A5CCBAE0()
{
  result = qword_1EB25F490[0];
  if (!qword_1EB25F490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25F490);
  }

  return result;
}

unint64_t sub_1A5CCBB38()
{
  result = qword_1EB25F720;
  if (!qword_1EB25F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25F720);
  }

  return result;
}

unint64_t sub_1A5CCBB90()
{
  result = qword_1EB25F728[0];
  if (!qword_1EB25F728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25F728);
  }

  return result;
}

unint64_t sub_1A5CCBBE8()
{
  result = qword_1EB25F7B0;
  if (!qword_1EB25F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25F7B0);
  }

  return result;
}

unint64_t sub_1A5CCBC40()
{
  result = qword_1EB25F7B8[0];
  if (!qword_1EB25F7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25F7B8);
  }

  return result;
}

unint64_t sub_1A5CCBC98()
{
  result = qword_1EB25F840;
  if (!qword_1EB25F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25F840);
  }

  return result;
}

unint64_t sub_1A5CCBCF0()
{
  result = qword_1EB25F848[0];
  if (!qword_1EB25F848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25F848);
  }

  return result;
}

unint64_t sub_1A5CCBD48()
{
  result = qword_1EB25F8D0;
  if (!qword_1EB25F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25F8D0);
  }

  return result;
}

unint64_t sub_1A5CCBDA0()
{
  result = qword_1EB25F8D8[0];
  if (!qword_1EB25F8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25F8D8);
  }

  return result;
}

void sub_1A5CCBDF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A5CCBE58(uint64_t a1)
{
  v2 = sub_1A5CCC120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CCBE94(uint64_t a1)
{
  v2 = sub_1A5CCC120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CCBED0(uint64_t a1)
{
  v2 = sub_1A5CCC174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CCBF0C(uint64_t a1)
{
  v2 = sub_1A5CCC174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateFaceSegmentsRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCC120();
  sub_1A5FD4CDC();
  sub_1A5CCC174();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CCC120()
{
  result = qword_1EB25F960;
  if (!qword_1EB25F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB25F960);
  }

  return result;
}

unint64_t sub_1A5CCC174()
{
  result = qword_1EB25F968[0];
  if (!qword_1EB25F968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB25F968);
  }

  return result;
}

uint64_t GenerateFaceSegmentsRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateFaceSegmentsRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A28);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A30);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCC120();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CCC174();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for GenerateFaceSegmentsRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5CCC540(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCC120();
  sub_1A5FD4CDC();
  sub_1A5CCC174();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateFaceSegmentsRequest.init(revision:)@<X0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0;
  a1->n128_u32[2] = 1067030938;
  static NormalizedRect.fullImage.getter(a1 + 1);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1[3].n128_u64[0] = result;
  return result;
}

uint64_t GenerateFaceSegmentsRequest.inputFaceObservations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 GenerateFaceSegmentsRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateFaceSegmentsRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return result;
}

uint64_t GenerateFaceSegmentsRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5CCD080();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateFaceSegmentsRequest, v3);
}

uint64_t GenerateFaceSegmentsRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v8;
  v9 = v1[6];
  if (v7)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v7 + 16));
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v12 = *(v4 + 72);
      do
      {
        sub_1A5B0F60C(v11, v6);
        sub_1A5B102F8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
        sub_1A5FD3CBC();
        sub_1A5B0F670(v6);
        v11 += v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  sub_1A5FD4C4C();
  v16 = v15;
  v17 = v14;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v9);
}

uint64_t GenerateFaceSegmentsRequest.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = v0[6];
  v6 = *v0;
  v7 = v1;
  v3 = *(v0 + 2);
  v8 = *(v0 + 1);
  v9 = v3;
  v10 = v2;
  sub_1A5FD4C1C();
  GenerateFaceSegmentsRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CCCAC4(uint64_t a1)
{
  v2 = sub_1A5CCD0D4();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CCCB00(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CCD080();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CCCB60(uint64_t a1)
{
  v2 = sub_1A5B5E460();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CCCB9C()
{
  v1 = *(v0 + 2);
  v2 = v0[6];
  v6 = *v0;
  v7 = v1;
  v3 = *(v0 + 2);
  v8 = *(v0 + 1);
  v9 = v3;
  v10 = v2;
  sub_1A5FD4C1C();
  GenerateFaceSegmentsRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CCCC08()
{
  v1 = *(v0 + 2);
  v2 = v0[6];
  v6 = *v0;
  v7 = v1;
  v3 = *(v0 + 2);
  v8 = *(v0 + 1);
  v9 = v3;
  v10 = v2;
  sub_1A5FD4C1C();
  GenerateFaceSegmentsRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CCCC70@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v8 = 3;
    DetectFaceRectanglesRequest.init(_:)(&v8, &v9);
    v6 = *(v1 + 16);
    v10 = *(v1 + 32);
    v9 = v6;
    v4 = sub_1A5B0F5B8();
    result = swift_allocObject();
    v7 = v10;
    *(result + 16) = v9;
    *(result + 32) = v7;
    *(result + 48) = v11;
    *(result + 64) = v12;
    v3 = &type metadata for DetectFaceRectanglesRequest;
  }

  a1[3] = v3;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A5CCCD44(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E460();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5CCCD94@<D0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(v5);
  v2 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 1067030938;
  result = v5[0].n128_f64[0];
  v4 = v5[1];
  a1[1] = v5[0];
  a1[2] = v4;
  a1[3].n128_u64[0] = v2;
  return result;
}

unint64_t sub_1A5CCCE00(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 48);
  *&v14 = *v1;
  DWORD2(v14) = v3;
  v5 = *(v1 + 32);
  v15 = *(v1 + 16);
  v16 = v5;
  v17 = v4;
  v6 = sub_1A5CCD0D4();
  v7 = sub_1A5BDA35C(a1, &type metadata for GenerateFaceSegmentsRequest, v6);
  v8 = sub_1A5FD3D5C();
  v10 = v9;
  *(&v15 + 1) = MEMORY[0x1E69E6448];
  LODWORD(v14) = v3;
  sub_1A5B101C8(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v13, v8, v10, isUniquelyReferenced_nonNull_native);

  return v7;
}

double sub_1A5CCCEE4(uint64_t a1, void *a2)
{
  sub_1A5D09D40(a2, v10);
  v3 = a1 + *(type metadata accessor for FaceObservation(0) + 96);
  v4 = *(v3 + 32);
  v5 = *(v3 + 64);
  v12[3] = *(v3 + 48);
  v12[4] = v5;
  v13 = *(v3 + 80);
  v6 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v6;
  v12[2] = v4;
  sub_1A5CCD128(v12);
  v7 = v10[3];
  *(v3 + 32) = v10[2];
  *(v3 + 48) = v7;
  *(v3 + 64) = v10[4];
  *(v3 + 80) = v11;
  result = *v10;
  v9 = v10[1];
  *v3 = v10[0];
  *(v3 + 16) = v9;
  return result;
}

uint64_t _s6Vision27GenerateFaceSegmentsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 16);
    v14 = *(a2 + 32);
    v15 = *(a2 + 16);

    v12 = sub_1A5B0E074(v2, v7);

    v10 = v14;
    v9 = v15;
    v5 = v16;
    v4 = v17;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3 != v8)
  {
    return 0;
  }

  v19.origin = v4;
  v19.size = v5;
  v18.origin = v9;
  v18.size = v10;
  if (!static NormalizedRect.== infix(_:_:)(&v19, &v18))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v6, v11);
}

unint64_t sub_1A5CCD080()
{
  result = qword_1EB1F4A38;
  if (!qword_1EB1F4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4A38);
  }

  return result;
}

unint64_t sub_1A5CCD0D4()
{
  result = qword_1EB1F4A40;
  if (!qword_1EB1F4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4A40);
  }

  return result;
}

uint64_t sub_1A5CCD128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5CCD190()
{
  result = qword_1EB1F4A50;
  if (!qword_1EB1F4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4A50);
  }

  return result;
}

unint64_t sub_1A5CCD1E8(uint64_t a1)
{
  result = sub_1A5B5E460();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CCD210(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B665E0();
  result = sub_1A5CCD240();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CCD240()
{
  result = qword_1EB1F4A58;
  if (!qword_1EB1F4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4A58);
  }

  return result;
}

unint64_t sub_1A5CCD298()
{
  result = qword_1EB1F4A60;
  if (!qword_1EB1F4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4A60);
  }

  return result;
}

unint64_t sub_1A5CCD2F0()
{
  result = qword_1EB1F4A68;
  if (!qword_1EB1F4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4A68);
  }

  return result;
}

unint64_t sub_1A5CCD344(uint64_t a1)
{
  result = sub_1A5CCD080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CCD36C(uint64_t a1)
{
  result = sub_1A5CCD394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CCD394()
{
  result = qword_1EB1F4A70;
  if (!qword_1EB1F4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4A70);
  }

  return result;
}

unint64_t sub_1A5CCD42C()
{
  result = qword_1EB2601F0[0];
  if (!qword_1EB2601F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2601F0);
  }

  return result;
}

unint64_t sub_1A5CCD484()
{
  result = qword_1EB260300;
  if (!qword_1EB260300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB260300);
  }

  return result;
}

unint64_t sub_1A5CCD4DC()
{
  result = qword_1EB260308[0];
  if (!qword_1EB260308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB260308);
  }

  return result;
}

unint64_t sub_1A5CCD534()
{
  result = qword_1EB260390;
  if (!qword_1EB260390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB260390);
  }

  return result;
}

unint64_t sub_1A5CCD58C()
{
  result = qword_1EB260398[0];
  if (!qword_1EB260398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB260398);
  }

  return result;
}

uint64_t sub_1A5CCD5F8(uint64_t a1)
{
  v2 = sub_1A5CCD8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CCD634(uint64_t a1)
{
  v2 = sub_1A5CCD8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CCD670(uint64_t a1)
{
  v2 = sub_1A5CCD914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CCD6AC(uint64_t a1)
{
  v2 = sub_1A5CCD914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackHomographicImageRegistrationRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCD8C0();
  sub_1A5FD4CDC();
  sub_1A5CCD914();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CCD8C0()
{
  result = qword_1EB260440;
  if (!qword_1EB260440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB260440);
  }

  return result;
}

unint64_t sub_1A5CCD914()
{
  result = qword_1EB260448[0];
  if (!qword_1EB260448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB260448);
  }

  return result;
}

uint64_t TrackHomographicImageRegistrationRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t TrackHomographicImageRegistrationRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A88);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A90);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCD8C0();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CCD914();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for TrackHomographicImageRegistrationRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5CCDCE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCD8C0();
  sub_1A5FD4CDC();
  sub_1A5CCD914();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TrackHomographicImageRegistrationRequest.__allocating_init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  TrackHomographicImageRegistrationRequest.init(_:frameAnalysisSpacing:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t TrackHomographicImageRegistrationRequest.init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  HIDWORD(v23) = a5;
  v11 = sub_1A5FD367C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  static NormalizedRect.fullImage.getter(v24);
  v16 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v25 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4A98);
  v17 = swift_allocObject();
  *(v17 + 56) = 0;
  v18 = v24[1];
  *(v17 + 16) = v24[0];
  *(v17 + 32) = v18;
  *(v17 + 48) = v16;
  *(v6 + 40) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4AA0);
  v19 = sub_1A5CA9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4AA8);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  *(v6 + 48) = v20;
  if (v15 == 1 && (sub_1A5CCF634(&qword_1EB1F4AB0, type metadata accessor for TrackHomographicImageRegistrationRequest), result = sub_1A5D4E900(), (v24[0].n128_u8[0] & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    if ((v23 & 0x100000000) != 0)
    {
      a2 = *MEMORY[0x1E6960CC0];
      LODWORD(a3) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v22) = *(MEMORY[0x1E6960CC0] + 12);
      a4 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v22 = HIDWORD(a3);
    }

    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    *(v6 + 28) = v22;
    *(v6 + 32) = a4;
    sub_1A5FD366C();
    (*(v12 + 32))(v6 + OBJC_IVAR____TtC6Vision40TrackHomographicImageRegistrationRequest_uuid, v14, v11);
    return v6;
  }

  return result;
}

void TrackHomographicImageRegistrationRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 56));
  v4 = *(v3 + 32);
  *a1 = *(v3 + 16);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 56));
}

void TrackHomographicImageRegistrationRequest.regionOfInterest.setter(_OWORD *a1)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 56));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 56));
}

void (*TrackHomographicImageRegistrationRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 56));
  v6 = *(v5 + 32);
  *v4 = *(v5 + 16);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 56));
  return sub_1A5B14E04;
}

uint64_t TrackHomographicImageRegistrationRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5CCF634(&qword_1EB1F4AB8, type metadata accessor for TrackHomographicImageRegistrationRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t sub_1A5CCE3D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v5 = type metadata accessor for TrackHomographicImageRegistrationRequest();
  v6 = sub_1A5CCF634(&qword_1EB1F4AB0, type metadata accessor for TrackHomographicImageRegistrationRequest);
  result = a2(v5, v6);
  *a3 = result;
  return result;
}

uint64_t TrackHomographicImageRegistrationRequest.deinit()
{

  v1 = OBJC_IVAR____TtC6Vision40TrackHomographicImageRegistrationRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackHomographicImageRegistrationRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6Vision40TrackHomographicImageRegistrationRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TrackHomographicImageRegistrationRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5CCF634(&qword_1EB1F4AC0, type metadata accessor for TrackHomographicImageRegistrationRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t (*sub_1A5CCE63C(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TrackHomographicImageRegistrationRequest.regionOfInterest.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5CCE6B0(uint64_t a1)
{
  v2 = sub_1A5CCF634(&qword_1EB1F4618, type metadata accessor for TrackHomographicImageRegistrationRequest);

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CCE71C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CCF634(&qword_1EB1F4AB8, type metadata accessor for TrackHomographicImageRegistrationRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CCE7B0(uint64_t a1)
{
  v2 = sub_1A5CCF634(&qword_1EB1EF7F0, type metadata accessor for TrackHomographicImageRegistrationRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CCE81C(uint64_t a1, uint64_t a2)
{
  sub_1A5CCF634(&qword_1EB1F4AE8, type metadata accessor for TrackHomographicImageRegistrationRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5CCE898(uint64_t a1, uint64_t a2)
{
  sub_1A5CCF634(&qword_1EB1F4AE8, type metadata accessor for TrackHomographicImageRegistrationRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5CCE918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5CCEEC8(a1, v8, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() == 29)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658);
    return sub_1A5CCEE64(&v8[*(v9 + 48)], a2);
  }

  else
  {
    sub_1A5B16718(v8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v17, "VisionResult ");
    HIWORD(v17[1]) = -4864;
    sub_1A5CCF634(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v11 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v11);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v16[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4AC8);
    v12 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v12);

    v13 = v17[0];
    v14 = v17[1];
    sub_1A5B16774();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 20) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A5CCEB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision40TrackHomographicImageRegistrationRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5CCEBCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658) + 48);
  *a2 = v2;
  sub_1A5CCEEC8(a1, a2 + v5, type metadata accessor for ImageHomographicAlignmentObservation);
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t (*sub_1A5CCEC60(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A5B15D4C(v2);
  return sub_1A5B15448;
}

uint64_t sub_1A5CCED74@<X0>(uint64_t *a1@<X8>)
{
  v4 = 0;
  v2 = swift_allocObject();
  result = TrackHomographicImageRegistrationRequest.init(_:frameAnalysisSpacing:)(&v4, 0, 0, 0, 1);
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for TrackHomographicImageRegistrationRequest()
{
  result = qword_1EB260CD0;
  if (!qword_1EB260CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5CCEE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageHomographicAlignmentObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CCEEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5CCEF30()
{
  result = qword_1EB1F4AD0;
  if (!qword_1EB1F4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4AD0);
  }

  return result;
}

uint64_t sub_1A5CCEF88(uint64_t a1)
{
  result = sub_1A5CCF634(&qword_1EB1EF7F0, type metadata accessor for TrackHomographicImageRegistrationRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5CCF064(uint64_t a1)
{
  result = sub_1A5CCF634(&qword_1EB1F4AB8, type metadata accessor for TrackHomographicImageRegistrationRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CCF0CC()
{
  result = qword_1EB1F4AE0;
  if (!qword_1EB1F4AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4AE0);
  }

  return result;
}

uint64_t sub_1A5CCF16C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5CCF634(a4, type metadata accessor for TrackHomographicImageRegistrationRequest);
  result = sub_1A5CCF634(a6, type metadata accessor for TrackHomographicImageRegistrationRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CCF1DC()
{
  result = qword_1EB1F4AF0;
  if (!qword_1EB1F4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4AF0);
  }

  return result;
}

uint64_t sub_1A5CCF278(uint64_t a1)
{
  result = sub_1A5CCF634(&qword_1EB1F4AB0, type metadata accessor for TrackHomographicImageRegistrationRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CCF2D0(uint64_t a1)
{
  result = sub_1A5CCF2F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CCF2F8()
{
  result = qword_1EB1F4B00;
  if (!qword_1EB1F4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B00);
  }

  return result;
}

uint64_t sub_1A5CCF354()
{
  result = sub_1A5FD367C();
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

unint64_t sub_1A5CCF480()
{
  result = qword_1EB260EE0[0];
  if (!qword_1EB260EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB260EE0);
  }

  return result;
}

unint64_t sub_1A5CCF4D8()
{
  result = qword_1EB260FF0;
  if (!qword_1EB260FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB260FF0);
  }

  return result;
}

unint64_t sub_1A5CCF530()
{
  result = qword_1EB260FF8[0];
  if (!qword_1EB260FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB260FF8);
  }

  return result;
}

unint64_t sub_1A5CCF588()
{
  result = qword_1EB261080;
  if (!qword_1EB261080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261080);
  }

  return result;
}

unint64_t sub_1A5CCF5E0()
{
  result = qword_1EB261088[0];
  if (!qword_1EB261088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB261088);
  }

  return result;
}

uint64_t sub_1A5CCF634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5CCF6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A6059E30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A5CCF744(uint64_t a1)
{
  v2 = sub_1A5CCFA0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CCF780(uint64_t a1)
{
  v2 = sub_1A5CCFA0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CCF7BC(uint64_t a1)
{
  v2 = sub_1A5CCFA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CCF7F8(uint64_t a1)
{
  v2 = sub_1A5CCFA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateAnimalPrintRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCFA0C();
  sub_1A5FD4CDC();
  sub_1A5CCFA60();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CCFA0C()
{
  result = qword_1EB261120;
  if (!qword_1EB261120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261120);
  }

  return result;
}

unint64_t sub_1A5CCFA60()
{
  result = qword_1EB261128[0];
  if (!qword_1EB261128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB261128);
  }

  return result;
}

uint64_t GenerateAnimalPrintRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateAnimalPrintRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B18);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B20);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCFA0C();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CCFA60();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for GenerateAnimalPrintRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5CCFE2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CCFA0C();
  sub_1A5FD4CDC();
  sub_1A5CCFA60();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateAnimalPrintRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

uint64_t GenerateAnimalPrintRequest.inputAnimalObservations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 GenerateAnimalPrintRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateAnimalPrintRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5CD00D4()
{
  sub_1A5CD0934();
  result = sub_1A5D4EC2C();
  qword_1EB261118 = result;
  return result;
}

uint64_t static GenerateAnimalPrintRequest.allSupportedRevisions.getter()
{
  if (qword_1EB261110 != -1)
  {
    swift_once();
  }
}

uint64_t GenerateAnimalPrintRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5CD0934();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateAnimalPrintRequest, v3);
}

uint64_t GenerateAnimalPrintRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for RecognizedObjectObservation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  v14 = *(v1 + 3);
  v15 = v8;
  v9 = v1[5];
  if (v7)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v7 + 16));
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v12 = *(v4 + 72);
      do
      {
        sub_1A5CD0988(v11, v6);
        sub_1A5CD0F34(&qword_1EB1F1760, type metadata accessor for RecognizedObjectObservation);
        sub_1A5FD3CBC();
        sub_1A5CD09EC(v6);
        v11 += v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  v16 = v15;
  v17 = v14;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v9);
}

uint64_t GenerateAnimalPrintRequest.hashValue.getter()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1A5FD4C1C();
  GenerateAnimalPrintRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CD03EC(uint64_t a1)
{
  v2 = sub_1A5CD0EE0();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CD0428(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CD0934();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CD0488(uint64_t a1)
{
  v2 = sub_1A5B5E40C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CD04C4()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1A5FD4C1C();
  GenerateAnimalPrintRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CD052C()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1A5FD4C1C();
  GenerateAnimalPrintRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CD0590@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v9 = 0;
    RecognizeAnimalsRequest.init(_:)(&v9, v10);
    v6 = v11;
    v7 = v12;
    v4 = sub_1A5C88B60();
    result = swift_allocObject();
    v8 = *(v1 + 24);
    *(result + 16) = *(v1 + 8);
    *(result + 32) = v8;
    *(result + 48) = v6;
    *(result + 56) = v7;
    v3 = &type metadata for RecognizeAnimalsRequest;
  }

  a1[3] = v3;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A5CD0664(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E40C();

  return sub_1A5D4E6C8(a1, a2);
}

void sub_1A5CD06B4(uint64_t a1, id a2)
{
  v3 = [a2 animalprint];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v4 descriptorData];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_1A5FD35DC();
  v9 = v8;

  v19 = 416;
  sub_1A5C103FC([v4 elementType], &v18);
  if (v18 != 3)
  {
    v17 = v18;
    v10 = [v4 elementCount];

    if ((v10 & 0x8000000000000000) == 0)
    {
      [v4 confidence];
      ImagePrint.init(data:descriptor:elementType:elementCount:confidence:)(v7, v9, &v19, &v17, v10, 0, &v20, v11);

      v16 = v20;
      v12 = v21;
      v13 = v24;
      v14 = v22 | (v23 << 32);
      v15 = a1 + *(type metadata accessor for RecognizedObjectObservation() + 44);
      sub_1A5B066C4(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32));
      *v15 = v16;
      *(v15 + 16) = v12;
      *(v15 + 24) = v14;
      *(v15 + 32) = v13;
      return;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
}

uint64_t _s6Vision26GenerateAnimalPrintRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    v14 = *(a1 + 24);
    v15 = *(a1 + 8);
    v12 = *(a2 + 24);
    v13 = *(a2 + 8);

    v10 = sub_1A5B688F8(v2, v6);

    v8 = v12;
    v7 = v13;
    v4 = v14;
    v3 = v15;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v17.origin = v3;
  v17.size = v4;
  v16.origin = v7;
  v16.size = v8;
  if (!static NormalizedRect.== infix(_:_:)(&v17, &v16))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v5, v9);
}

unint64_t sub_1A5CD0934()
{
  result = qword_1EB1F4B28;
  if (!qword_1EB1F4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B28);
  }

  return result;
}

uint64_t sub_1A5CD0988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedObjectObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CD09EC(uint64_t a1)
{
  v2 = type metadata accessor for RecognizedObjectObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5CD0A48()
{
  result = qword_1EB1F4B30;
  if (!qword_1EB1F4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B30);
  }

  return result;
}

unint64_t sub_1A5CD0AA0(uint64_t a1)
{
  result = sub_1A5B5E40C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD0AC8(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B666DC();
  result = sub_1A5CD0AF8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CD0AF8()
{
  result = qword_1EB1F4B38;
  if (!qword_1EB1F4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B38);
  }

  return result;
}

unint64_t sub_1A5CD0B50()
{
  result = qword_1EB1F4B40;
  if (!qword_1EB1F4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B40);
  }

  return result;
}

unint64_t sub_1A5CD0BA8()
{
  result = qword_1EB1F4B48;
  if (!qword_1EB1F4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B48);
  }

  return result;
}

unint64_t sub_1A5CD0C44(uint64_t a1)
{
  result = sub_1A5CD0934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD0C6C(uint64_t a1)
{
  result = sub_1A5CD0C94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD0C94()
{
  result = qword_1EB1F4B50;
  if (!qword_1EB1F4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B50);
  }

  return result;
}

unint64_t sub_1A5CD0D2C()
{
  result = qword_1EB2619B0[0];
  if (!qword_1EB2619B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2619B0);
  }

  return result;
}

unint64_t sub_1A5CD0D84()
{
  result = qword_1EB261AC0;
  if (!qword_1EB261AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261AC0);
  }

  return result;
}

unint64_t sub_1A5CD0DDC()
{
  result = qword_1EB261AC8[0];
  if (!qword_1EB261AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB261AC8);
  }

  return result;
}

unint64_t sub_1A5CD0E34()
{
  result = qword_1EB261B50;
  if (!qword_1EB261B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261B50);
  }

  return result;
}

unint64_t sub_1A5CD0E8C()
{
  result = qword_1EB261B58[0];
  if (!qword_1EB261B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB261B58);
  }

  return result;
}

unint64_t sub_1A5CD0EE0()
{
  result = qword_1EB1F4B58;
  if (!qword_1EB1F4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4B58);
  }

  return result;
}

uint64_t sub_1A5CD0F34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5CD0F94(uint64_t a1)
{
  v2 = sub_1A5CD125C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD0FD0(uint64_t a1)
{
  v2 = sub_1A5CD125C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CD100C(uint64_t a1)
{
  v2 = sub_1A5CD12B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD1048(uint64_t a1)
{
  v2 = sub_1A5CD12B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalculateBlurScoreRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD125C();
  sub_1A5FD4CDC();
  sub_1A5CD12B0();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CD125C()
{
  result = qword_1EB261BF0;
  if (!qword_1EB261BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261BF0);
  }

  return result;
}

unint64_t sub_1A5CD12B0()
{
  result = qword_1EB261BF8;
  if (!qword_1EB261BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261BF8);
  }

  return result;
}

uint64_t CalculateBlurScoreRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t CalculateBlurScoreRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B70);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B78);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD125C();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CD12B0();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for CalculateBlurScoreRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5CD167C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD125C();
  sub_1A5FD4CDC();
  sub_1A5CD12B0();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t CalculateBlurScoreRequest.init(revision:)@<X0>(__n128 *a1@<X8>)
{
  a1->n128_u8[0] = 0;
  a1->n128_u64[1] = 1024;
  static NormalizedRect.fullImage.getter(a1 + 1);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1[3].n128_u64[0] = result;
  return result;
}

uint64_t sub_1A5CD18B0()
{
  if (*v0)
  {
    return 0x7464695765676465;
  }

  else
  {
    return 0x6576615772616168;
  }
}

uint64_t sub_1A5CD18F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6576615772616168 && a2 == 0xEB0000000074656CLL;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7464695765676465 && a2 == 0xE900000000000068)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5CD19E0(uint64_t a1)
{
  v2 = sub_1A5CD298C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD1A1C(uint64_t a1)
{
  v2 = sub_1A5CD298C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CD1A58(uint64_t a1)
{
  v2 = sub_1A5CD29E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD1A94(uint64_t a1)
{
  v2 = sub_1A5CD29E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CD1AD0(uint64_t a1)
{
  v2 = sub_1A5CD2A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD1B0C(uint64_t a1)
{
  v2 = sub_1A5CD2A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalculateBlurScoreRequest.Method.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B80);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B88);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD298C();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5CD29E0();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5CD2A34();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t CalculateBlurScoreRequest.Method.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t CalculateBlurScoreRequest.Method.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4B98);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4BA0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4BA8);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD298C();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for CalculateBlurScoreRequest.Method;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5CD29E0();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5CD2A34();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}