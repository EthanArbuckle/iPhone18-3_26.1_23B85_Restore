uint64_t sub_23A9C2A1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
  *&v34 = 0.5 * v1.f32[0];
  LODWORD(v2) = HIDWORD(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions));
  v36 = vmuls_lane_f32(0.5, *v1.f32, 1);
  v38 = v1.f32[0];
  v3 = COERCE_FLOAT(*(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions + 8));
  v40 = vmuls_lane_f32(0.5, v1, 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v4 = swift_allocObject();
  LODWORD(v5) = v34;
  v6 = v34;
  *(&v6 + 1) = -(v2 * 0.5);
  v7 = v6;
  *(&v7 + 2) = -(v3 * 0.5);
  *(&v5 + 1) = v36;
  v8 = v5;
  *(&v8 + 2) = *(&v7 + 2);
  *&v9 = -(v38 * 0.5);
  v10 = v9;
  *(&v10 + 1) = v36;
  v11 = v10;
  *(&v11 + 2) = *(&v7 + 2);
  *(&v9 + 1) = *(&v6 + 1);
  v12 = v9;
  *(&v12 + 2) = *(&v7 + 2);
  v4[2] = v7;
  v4[3] = v8;
  *(&v6 + 2) = v40;
  *(&v5 + 1) = LODWORD(v40);
  v4[4] = v11;
  v4[5] = v12;
  *(&v10 + 2) = v40;
  *(&v9 + 1) = LODWORD(v40);
  v4[6] = v6;
  v4[7] = v5;
  v4[8] = v10;
  v4[9] = v9;
  v13 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v14 = sub_23A975F34(0, 8, 0);
  v15 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
  v16 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
  for (i = 2; i != 10; ++i)
  {
    v41 = v4[i];
    v14 = MEMORY[0x23EE8FF80](v14, *(v0 + v15), *(v0 + v16), xmmword_23AA11AF0);
    v23 = *(v43 + 16);
    v22 = *(v43 + 24);
    if (v23 >= v22 >> 1)
    {
      v35 = v21;
      v37 = v20;
      v32 = v18;
      v33 = v19;
      v14 = sub_23A975F34((v22 > 1), v23 + 1, 1);
      v18 = v32;
      v19 = v33;
      v21 = v35;
      v20 = v37;
    }

    *(v43 + 16) = v23 + 1;
    *(v43 + 16 * v23 + 32) = vaddq_f32(v21, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v41.f32[0]), v19, *v41.f32, 1), v20, v41, 2));
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v24 = *(v43 + 16);
  if (v24)
  {
    sub_23A975DC0(0, v24, 0);
    v26 = v13;
    v27 = *(v13 + 16);
    v28 = 32;
    do
    {
      v29 = *(v43 + v28);
      v30 = *(v26 + 24);
      if (v27 >= v30 >> 1)
      {
        v39 = *(v43 + v28);
        v42 = v25;
        sub_23A975DC0((v30 > 1), v27 + 1, 1);
        v29 = v39;
        v25 = v42;
      }

      HIDWORD(v29) = v25;
      *(v26 + 16) = v27 + 1;
      *(v26 + 16 * v27 + 32) = v29;
      v28 += 16;
      ++v27;
      --v24;
    }

    while (v24);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v26;
}

unint64_t sub_23A9C2CF0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0xD000000000000014, 0x800000023AA22B30);
    v5 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v5);

    v4 = ") doesn't match texture vertex count (";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0xD000000000000014, 0x800000023AA22AE0);
    v3 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v3);

    v4 = ") doesn't match texture normal count (";
LABEL_5:
    MEMORY[0x23EE8FCA0](0xD000000000000026, (v4 - 32) | 0x8000000000000000);
    v6 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v6);

    MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
    return 0;
  }

  v8 = 0xD00000000000003ELL;
  if (!(a1 ^ 1 | a2))
  {
    v8 = 0xD000000000000023;
  }

  if (a1 | a2)
  {
    return v8;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_23A9C2F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v2 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_vertexCount);
  if (v3 != v4)
  {
    sub_23A901114();
    swift_allocError();
    v16 = 0;
    v17 = v3;
    v3 = v4;
    goto LABEL_12;
  }

  v5 = 0;
  v34 = *(v2 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture);
  v28 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_bytesPerRow);
  v30 = (a1 + 32);
  do
  {
    if (v3)
    {
      v33.i64[0] = MEMORY[0x277D84F90];
      sub_23A975DF0(0, v3, 0);
      v7 = v33.i64[0];
      v9 = *(v33.i64[0] + 16);
      v10 = v30;
      v11 = v3;
      do
      {
        v12 = *v10;
        v33.i64[0] = v7;
        v13 = *(v7 + 24);
        if (v9 >= v13 >> 1)
        {
          v26 = v12;
          sub_23A975DF0((v13 > 1), v9 + 1, 1);
          v12 = v26;
          v7 = v33.i64[0];
        }

        v32 = v12;
        v14 = *(&v32 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
        *(v7 + 16) = v9 + 1;
        *(v7 + 4 * v9 + 32) = v14;
        ++v10;
        ++v9;
        --v11;
      }

      while (v11);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    MTLRegionMake2D(v5, v3, &v33);
    [v34 replaceRegion:&v33 mipmapLevel:0 withBytes:v7 + 32 bytesPerRow:v6];

    ++v5;
  }

  while (v5 != 3);
  if (*(v28 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_storeNormals) == 1)
  {
    v17 = *(a2 + 16);
    if (v17 == v3)
    {
      for (i = 0; i != 3; ++i)
      {
        if (v3)
        {
          v33.i64[0] = MEMORY[0x277D84F90];
          sub_23A975DF0(0, v3, 0);
          v19 = v33.i64[0];
          v20 = *(v33.i64[0] + 16);
          v21 = (a2 + 32);
          v22 = v3;
          do
          {
            v23 = *v21;
            v33.i64[0] = v19;
            v24 = *(v19 + 24);
            if (v20 >= v24 >> 1)
            {
              v29 = v23;
              sub_23A975DF0((v24 > 1), v20 + 1, 1);
              v23 = v29;
              v19 = v33.i64[0];
            }

            v31 = v23;
            v25 = *(&v31 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
            *(v19 + 16) = v20 + 1;
            *(v19 + 4 * v20 + 32) = v25;
            ++v21;
            ++v20;
            --v22;
          }

          while (v22);
        }

        else
        {
          v19 = MEMORY[0x277D84F90];
        }

        MTLRegionMake2D(i + 3, v3, &v33);
        [v34 replaceRegion:&v33 mipmapLevel:0 withBytes:v19 + 32 bytesPerRow:v6];
      }

      return result;
    }

    sub_23A901114();
    swift_allocError();
    v16 = 1;
LABEL_12:
    *v15 = v17;
    *(v15 + 8) = v3;
    *(v15 + 16) = v16;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23A9C325C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_materialTexture;
  v2 = sub_23AA0CBB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8RoomPlan16MeshParamTexture_texture);
  swift_unknownObjectRelease();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MeshParamTexture()
{
  result = qword_27DFB0F68;
  if (!qword_27DFB0F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9C335C()
{
  result = sub_23AA0CBB4();
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

int64x2_t MTLRegionMake2D@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  a3->i64[0] = 0;
  a3->i64[1] = a1;
  a3[1].i64[0] = 0;
  a3[1].i64[1] = a2;
  result = vdupq_n_s64(1uLL);
  a3[2] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshParamTextureError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshParamTextureError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23A9C34B4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23A9C34CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

float32x2_t *sub_23A9C34F8(double a1, double a2, double a3, float a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA15450;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  v4[2] = v9;
  __asm { FMOV            V1.2S, #3.0 }

  v4[3] = vdiv_f32(vadd_f32(vadd_f32(*&a1, *&a2), *&a3), _D1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23AA12130;
  type metadata accessor for CDTEdge();
  swift_allocObject();
  *(v15 + 32) = sub_23A947224(a1, a2);
  swift_allocObject();
  *(v15 + 40) = sub_23A947224(a2, a3);
  swift_allocObject();
  *(v15 + 48) = sub_23A947224(a3, a1);
  v4[4] = sub_23A9C8B2C(v15);
  v16 = vsub_f32(*&a2, *&a1);
  v17 = vrev64_s32(v16);
  v18 = vsub_f32(*&a3, *&a2);
  v19 = vmul_f32(v17, v18);
  v18.f32[0] = fabsf(vsub_f32(v19, vdup_lane_s32(v19, 1)).f32[0] / sqrtf(vaddv_f32(vmul_f32(v18, v18))));
  v20 = vsub_f32(*&a3, *&a1);
  v21 = vmul_f32(vsub_f32(*&a1, *&a2), vrev64_s32(v20));
  v22 = vmul_f32(v20, v20);
  v23 = vmul_f32(v17, vsub_f32(*&a1, *&a3));
  v24 = vmul_f32(v16, v16);
  v25 = vabs_f32(vdiv_f32(vsub_f32(vzip2_s32(v23, v21), vzip1_s32(v23, v21)), vsqrt_f32(vadd_f32(vzip1_s32(v24, v22), vzip2_s32(v24, v22)))));
  v26 = vcgt_f32(0x3400000034000000, v25);
  v4[5].i8[0] = (v18.f32[0] < 0.00000011921) | (v26.i8[4] | v26.i8[0]) & 1;
  v4[5].i8[1] = fminf(fminf(v18.f32[0], v25.f32[1]), v25.f32[0]) < a4;
  v28 = v4[2];
  swift_bridgeObjectRetain_n();
  sub_23A946A58(&v28);

  v4[6] = v28;
  return v4;
}

uint64_t sub_23A9C3768()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[4];
    v4 = *&v2 - 1;
    if (*&v2 != 1)
    {
      v5 = v1 + 5;
      v6 = v1[4];
      do
      {
        v7 = *v5++;
        v8 = v7;
        v22 = vcgt_f32(v6, v7);
        if (*(&v22 | (4 * (fabsf(vsub_f32(v7, v6).f32[0]) < 0.00000011921))))
        {
          v9 = -1;
        }

        else
        {
          v9 = 0;
        }

        v10 = vdup_n_s32(v9);
        v3 = vbsl_s8(v10, v8, v3);
        v6 = vbsl_s8(v10, v8, v6);
        --v4;
      }

      while (v4);
    }

    v12 = 0;
    v13 = v1;
    while (v12 < *&v1[2])
    {
      v14 = vceq_f32(v1[v12 + 4], v3);
      if (v14.i32[0] & v14.i32[1])
      {
        return v13;
      }

      v15 = *(v13 + 2);
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = *(v13 + 4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v18 = *(v13 + 3), v19 = v18 >> 1, v18 >> 1 < v15 - 1))
      {
        v13 = sub_23A938A28(isUniquelyReferenced_nonNull_native, v15, 1, v13);
        v18 = *(v13 + 3);
        v19 = v18 >> 1;
      }

      v20 = *(v13 + 2);
      result = memmove(v13 + 32, v13 + 40, 8 * v20 - 8);
      *(v13 + 2) = v20 - 1;
      if (v19 < v20)
      {
        result = sub_23A938A28((v18 > 1), v20, 1, v13);
        v13 = result;
      }

      ++v12;
      *(v13 + 2) = v20;
      *&v13[8 * v20 + 24] = v16;
      if (*&v2 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v21 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_23A9C3918()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_23A9C3984()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v5 = sub_23AA0DC84();
      result = MEMORY[0x23EE907C0](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23A9C3A08()
{
  sub_23AA0DD14();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v5 = sub_23AA0DC84();
      MEMORY[0x23EE907C0](v5);
      --v2;
    }

    while (v2);
  }

  return sub_23AA0DD54();
}

uint64_t sub_23A9C3AC0()
{
  v1 = *(*v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v5 = sub_23AA0DC84();
      result = MEMORY[0x23EE907C0](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23A9C3B48()
{
  sub_23AA0DD14();
  v1 = *v0;
  sub_23A9C3984();
  return sub_23AA0DD54();
}

unint64_t sub_23A9C3BA0()
{
  result = qword_27DFB0F78;
  if (!qword_27DFB0F78)
  {
    type metadata accessor for CDTTriangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0F78);
  }

  return result;
}

uint64_t sub_23A9C3BF4(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1110, &qword_23AA1ACB8);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = sub_23AA0C7C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = *(v10 + 16);
  v30 = v2;
  v18(v13, v2, v9, v15);
  v19 = MEMORY[0x277CDB5F0];
  v28 = sub_23A9C8A24(&qword_27DFB1118, MEMORY[0x277CDB5F0]);
  sub_23AA0D714();
  v20 = v19;
  v21 = v31;
  sub_23A9C8A24(&unk_27DFB1120, v20);
  v29 = a2;
  v22 = sub_23AA0D084();
  v23 = *(v21 + 48);
  *v8 = (v22 & 1) == 0;
  if (v22)
  {
    (*(v10 + 32))(&v8[v23], v17, v9);
  }

  else
  {
    (*(v10 + 8))(v17, v9);
    v24 = v29;
    (v18)(&v8[v23], v29, v9);
    (v18)(v13, v24, v9);
    sub_23AA0D744();
  }

  v25 = v32;
  sub_23A930208(v8, v32, &qword_27DFB1110, &qword_23AA1ACB8);
  v26 = *v25;
  (*(v10 + 32))(v33, &v25[*(v21 + 48)], v9);
  return v26;
}

uint64_t sub_23A9C3EF8(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10F8, &qword_23AA1ACB0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = sub_23AA0C864();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = *(v10 + 16);
  v30 = v2;
  v18(v13, v2, v9, v15);
  v19 = MEMORY[0x277CDB620];
  v28 = sub_23A9C8A24(&qword_27DFB1100, MEMORY[0x277CDB620]);
  sub_23AA0D714();
  v20 = v19;
  v21 = v31;
  sub_23A9C8A24(&qword_27DFB1108, v20);
  v29 = a2;
  v22 = sub_23AA0D084();
  v23 = *(v21 + 48);
  *v8 = (v22 & 1) == 0;
  if (v22)
  {
    (*(v10 + 32))(&v8[v23], v17, v9);
  }

  else
  {
    (*(v10 + 8))(v17, v9);
    v24 = v29;
    (v18)(&v8[v23], v29, v9);
    (v18)(v13, v24, v9);
    sub_23AA0D744();
  }

  v25 = v32;
  sub_23A930208(v8, v32, &qword_27DFB10F8, &qword_23AA1ACB0);
  v26 = *v25;
  (*(v10 + 32))(v33, &v25[*(v21 + 48)], v9);
  return v26;
}

void sub_23A9C41FC()
{
  v1 = v0;
  sub_23A9C7480();
  v2 = &v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText];
  v3 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText + 8];
  *v2 = 0;
  *(v2 + 1) = 0;

  v4 = &v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText];
  v5 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText + 8];
  *v4 = 0;
  *(v4 + 1) = 0;

  v6 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse;
  v7 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v7 + qword_27DFAE5F8) = 0;

  sub_23A8C6668();

  v8 = *&v1[v6];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v8 + qword_27DFAE5C8) = 0;
  v9 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v10 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  sub_23AA08908();

  v12 = *&v1[v9];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = sub_23AA07DB0();
  sub_23AA08688(v1, v14, v15, v16, v17);

  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v46.origin.x = v20;
  v46.origin.y = v22;
  v46.size.width = v24;
  v46.size.height = v26;
  Width = CGRectGetWidth(v46);
  v28 = *&v1[v9];
  if (v28)
  {
    v29 = Width;
    [v28 bounds];
    v30 = v29 / CGRectGetWidth(v47);
    v31 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment;
    *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment] = v30 * 1.075;
    sub_23A9C6E84(1);
    v32 = v29 / (v29 + -40.0);
    *&v1[v31] = v32;
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v1;
    v44 = sub_23A9C89D4;
    v45 = v34;
    v40 = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_23A9AD0B8;
    v43 = &block_descriptor_37;
    v35 = _Block_copy(&v40);
    v36 = v1;

    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v44 = sub_23A9C89DC;
    v45 = v37;
    v40 = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_23A8CBE48;
    v43 = &block_descriptor_43;
    v38 = _Block_copy(&v40);
    v39 = v36;

    [v33 animateWithDuration:v35 animations:v38 completion:1.5];
    _Block_release(v38);
    _Block_release(v35);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_23A9C4518()
{
  sub_23A9C7480();
  *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment] = 1065982362;
  v1 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
  if (v1)
  {
    *(v1 + qword_27DFB0E50) = 1065353216;
    *(v1 + qword_27DFB0E80) = 1065353216;
    *(v1 + qword_27DFB0E58) = 0;
    *(v1 + qword_27DFB0F00) = 1;
    *(v1 + qword_27DFC09E0) = 1;
  }

  sub_23A9C77D0();
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_23A9C89CC;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_23A9AD0B8;
  v6[3] = &block_descriptor_31;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 animateWithDuration:v4 animations:1.5];
  _Block_release(v4);
}

uint64_t sub_23A9C4680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a4;
  v41 = a3;
  v39 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for CapturedRoom(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v38 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v38 - v22);
  MEMORY[0x28223BE20](v24);
  v26 = (&v38 - v25);
  sub_23A9C8908(a2, v16);
  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    sub_23A8D50D0(v16, &unk_27DFB13A0, &unk_23AA1A7A0);
  }

  else
  {
    result = sub_23A9ACCDC(v16, v26);
    if (!*(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v29 = *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse);

    sub_23A8C63CC();
    sub_23A8E1850(v26);

    sub_23A8CA970(v26);
  }

  sub_23A9C8908(v41, v13);
  v30 = v5;
  if (v27(v13, 1, v17) == 1)
  {
    sub_23A8D50D0(v13, &unk_27DFB13A0, &unk_23AA1A7A0);
    v31 = &qword_27DFB0000;
  }

  else
  {
    result = sub_23A9ACCDC(v13, v23);
    v31 = &qword_27DFB0000;
    if (!*(v30 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v32 = *(v30 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse);

    sub_23A8C63CC();
    sub_23A8E2914(v23);

    sub_23A8CA970(v23);
  }

  sub_23A9C8908(v40, v10);
  if (v27(v10, 1, v17) == 1)
  {
    result = sub_23A8D50D0(v10, &unk_27DFB13A0, &unk_23AA1A7A0);
LABEL_13:
    v36 = v31[498];
    if (*(v30 + v36))
    {
      v37 = *(v30 + v36);

      sub_23A8C6CB8(v39);

      return sub_23A9C6E84(0);
    }

    __break(1u);
    goto LABEL_16;
  }

  v33 = v38;
  result = sub_23A9ACCDC(v10, v38);
  v34 = v31[498];
  if (*(v30 + v34))
  {
    v35 = *(v30 + v34);

    sub_23A8C63CC();
    sub_23A8E259C(v33);

    result = sub_23A8CA970(v33);
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_23A9C4A34(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction];
  if (v2 == 6)
  {
    if (v3 == 6)
    {
      return;
    }

    v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = 6;
    goto LABEL_8;
  }

  if (v2 == v3)
  {
    return;
  }

  if ((v2 & 0xFE) == 4)
  {
    v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = v2;
LABEL_9:
    v8 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel];
    v7 = 0.0;
    if (v8 && (v9 = [v8 text]) != 0)
    {
      v10 = v9;
      v4 = sub_23AA0D134();
      v6 = v11;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    goto LABEL_13;
  }

  v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_8:
  LOBYTE(v24) = v2;
  v4 = sub_23A9C70EC(&v24);
  v6 = v5;
  v7 = 1.0;
LABEL_13:
  v12 = &v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText];
  v13 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText + 8];
  *v12 = v4;
  v12[1] = v6;

  v14 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel];
  if (v14)
  {
    v15 = v14;
    if (v6)
    {

      v16 = sub_23AA0D104();
    }

    else
    {
      v16 = 0;
    }

    [v15 setText_];
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v7;
  v28 = sub_23A9C81F8;
  v29 = v18;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_23A9AD0B8;
  v27 = &block_descriptor_7;
  v19 = _Block_copy(&v24);
  v20 = v1;

  v21 = swift_allocObject();
  v21[2] = v7;
  *(v21 + 3) = v20;
  *(v21 + 4) = v4;
  *(v21 + 5) = v6;
  v28 = sub_23A9C8278;
  v29 = v21;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_23A8CBE48;
  v27 = &block_descriptor_13;
  v22 = _Block_copy(&v24);
  v23 = v20;

  [v17 animateWithDuration:4 delay:v19 options:v22 animations:1.0 completion:0.0];
  _Block_release(v22);
  _Block_release(v19);
}

void sub_23A9C4D10(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView;
  if (!*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView))
  {
    sub_23A9C75A4();
    v5 = *(v1 + v4);
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer];
      v7 = v5;

      sub_23A954560();

      sub_23A8CBCA0(0, 0, 1.0);
    }
  }

  v8 = *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState);
  if (v8 == 5 || v8 != v3)
  {
    *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState) = v3;
    if (v3 <= 1)
    {
      if (v3)
      {
        v27 = *(v2 + v4);
        v11 = &qword_27DFC0470;
        if (v27)
        {
          v28 = qword_27DFAE348;
          v29 = *(v27 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
          if (v28 != -1)
          {
            swift_once();
          }

          v30 = sub_23AA0D104();
          [v29 setText_];
        }

        if (qword_27DFAE348 == -1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v15 = *(v2 + v4);
        v11 = &qword_27DFC0460;
        if (v15)
        {
          v16 = qword_27DFAE340;
          v17 = *(v15 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
          if (v16 != -1)
          {
            swift_once();
          }

          v18 = sub_23AA0D104();
          [v17 setText_];
        }

        if (qword_27DFAE340 == -1)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v3 == 2)
    {
      v19 = *(v2 + v4);
      v11 = &qword_27DFC0480;
      if (v19)
      {
        v20 = qword_27DFAE350;
        v21 = *(v19 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
        if (v20 != -1)
        {
          swift_once();
        }

        v22 = sub_23AA0D104();
        [v21 setText_];
      }

      if (qword_27DFAE350 == -1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v3 != 3)
      {
        sub_23A9C7480();
        v23 = 0;
        v24 = 0;
        v25 = (v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
        v26 = *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText + 8);
        *v25 = 0;
        v25[1] = 0;
LABEL_38:

        sub_23A9C8288(v23, v24);

        return;
      }

      v10 = *(v2 + v4);
      v11 = &qword_27DFC0490;
      if (v10)
      {
        v12 = qword_27DFAE358;
        v13 = *(v10 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel);
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = sub_23AA0D104();
        [v13 setText_];
      }

      if (qword_27DFAE358 == -1)
      {
LABEL_37:
        v23 = *v11;
        v24 = v11[1];
        v31 = (v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
        v32 = *(v2 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText + 8);
        *v31 = *v11;
        v31[1] = v24;
        swift_bridgeObjectRetain_n();
        goto LABEL_38;
      }
    }

    swift_once();
    goto LABEL_37;
  }
}

float sub_23A9C50FC()
{
  v1 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment);
  if ((*(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment + 4) & 1) == 0)
  {
    return *v1;
  }

  sub_23AA0D3E4();
  result = -v2;
  *v1 = result;
  v1[4] = 0;
  return result;
}

id sub_23A9C5170(double a1, double a2, double a3, double a4, float a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection] = 0u;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse] = 0;
  v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled] = 1;
  v12 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment];
  *v12 = 0;
  v12[4] = 1;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_runtimeScaleAdjustment] = 1065982362;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_completionMargin] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity] = 0;
  v13 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform];
  v21 = 1;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[64] = 1;
  v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction] = 6;
  v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState] = 5;
  v16 = &v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight] = 0;
  v17 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_lightingAnchor;
  sub_23AA0C1E4();
  *&v5[v17] = MEMORY[0x23EE8EC60](0);
  *&v5[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment] = 1065982362;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_23A9C53B8();
  sub_23A9C5B38();
  sub_23A9C5C5C();
  sub_23A9C5E58(a5);
  sub_23A9C5F60();
  sub_23A9C62D8();

  return v18;
}

void sub_23A9C53B8()
{
  v1 = v0;
  v2 = sub_23AA0C864();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v70 - v8;
  MEMORY[0x28223BE20](v9);
  v73 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v74 = &v70 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = &v70 - v14;
  MEMORY[0x28223BE20](v15);
  v76 = &v70 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v20);
  v77 = &v70 - v21;
  v22 = sub_23AA0C754();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_23AA0C724();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  (*(v25 + 104))(v29, *MEMORY[0x277CDB598], v24);
  v30 = objc_allocWithZone(sub_23AA0C994());
  v31 = sub_23AA0C974();
  v32 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v33 = *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  *&v1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView] = v31;
  v34 = v31;

  [v1 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = *&v1[v32];
  if (!v35)
  {
    __break(1u);
    goto LABEL_12;
  }

  v71 = v6;
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = *&v1[v32];
  if (!v36)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_23AA0C744();

  v40 = sub_23AA0C7A4();
  sub_23AA0C764();
  v40(v78, 0);

  v41 = *&v1[v32];
  if (!v41)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v42 = v41;
  sub_23AA0C7E4();
  v43 = sub_23AA0C874();
  v44 = v77;
  sub_23A9C3EF8(v77, v19);
  v45 = *(v3 + 8);
  v45(v19, v2);
  v45(v44, v2);
  v43(v78, 0);

  v46 = *&v1[v32];
  if (!v46)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = v46;
  sub_23AA0C7F4();
  v48 = sub_23AA0C874();
  v49 = v76;
  sub_23A9C3EF8(v76, v19);
  v45(v19, v2);
  v45(v49, v2);
  v48(v78, 0);

  v50 = *&v1[v32];
  if (!v50)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v51 = v50;
  sub_23AA0C804();
  v52 = sub_23AA0C874();
  v53 = v75;
  sub_23A9C3EF8(v75, v19);
  v45(v19, v2);
  v45(v53, v2);
  v52(v78, 0);

  v54 = *&v1[v32];
  if (!v54)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v55 = v54;
  sub_23AA0C814();
  v56 = sub_23AA0C874();
  v57 = v74;
  sub_23A9C3EF8(v74, v19);
  v45(v19, v2);
  v45(v57, v2);
  v56(v78, 0);

  v58 = *&v1[v32];
  if (!v58)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v59 = v58;
  sub_23AA0C824();
  v60 = sub_23AA0C874();
  v61 = v73;
  sub_23A9C3EF8(v73, v19);
  v45(v19, v2);
  v45(v61, v2);
  v60(v78, 0);

  v62 = *&v1[v32];
  if (!v62)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v63 = v62;
  sub_23AA0C834();
  v64 = sub_23AA0C874();
  v65 = v72;
  sub_23A9C3EF8(v72, v19);
  v45(v19, v2);
  v45(v65, v2);
  v64(v78, 0);

  v66 = *&v1[v32];
  if (v66)
  {
    v67 = v66;
    sub_23AA0C854();
    v68 = sub_23AA0C874();
    v69 = v71;
    sub_23A9C3EF8(v71, v19);
    v45(v19, v2);
    v45(v69, v2);
    v68(v78, 0);

    sub_23A9C77D0();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_23A9C5B38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_23AA0C984();

    sub_23AA0C5B4();
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_23AA0C714();

    sub_23A8D50D0(v5, &qword_27DFB0DC0, &unk_23AA1A7B0);
    v4 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver;
    swift_beginAccess();
    sub_23A999018(v7, v2 + v4);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9C5C5C()
{
  v1 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:sel_didPanWithPanGesture_];
  v4 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer;
  v5 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer];
  *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer] = v3;
  v6 = v3;

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v6 setDelegate_];

  v7 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v2 action:sel_didPinchWithPinchGesture_];
  v8 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer;
  v9 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer];
  *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer] = v7;
  v10 = v7;

  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v10 setDelegate_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v2 action:sel_didTouchDownWithLongPressGesture_];
  v12 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer;
  v13 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer];
  *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer] = v11;
  v14 = v11;

  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v14 setMinimumPressDuration_];

  v15 = *&v2[v12];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 setDelegate_];
  v16 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v17 = *&v2[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!*&v2[v4])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v17 addGestureRecognizer_];
  v18 = *&v2[v16];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!*&v2[v8])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v18 addGestureRecognizer_];
  v19 = *&v2[v16];
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v2[v12])
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v19 addGestureRecognizer_];
}

void sub_23A9C5E58(float a1)
{
  v3 = type metadata accessor for DollHouse();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_23A8C69D0(a1);
  v7 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse;
  v8 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse);
  *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse) = v6;

  v9 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  sub_23AA0C984();

  if (!*(v1 + v7))
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_23A9C8A24(&unk_27DFB10E0, type metadata accessor for DollHouse);

  sub_23AA0C704();
}

void sub_23A9C5F60()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v0;
  v4 = v2;
  v5 = sub_23AA0C7A4();
  v6 = sub_23AA0C794();
  sub_23AA0C774();
  v6(v31, 0);
  v5(v32, 0);

  v7 = *(v0 + v1);
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = sub_23AA0C7A4();
  v10 = sub_23AA0C794();
  sub_23AA0C784();
  v10(v31, 0);
  v9(v32, 0);

  v11 = sub_23AA0C1B4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_23AA0C1A4();
  v15 = objc_opt_self();
  v16 = [v15 whiteColor];
  v17 = [v16 CGColor];

  v18 = sub_23AA0CD94();
  sub_23AA0C644();
  v18(v32, 0);
  v19 = *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight);
  *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight) = v14;

  v20 = *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_lightingAnchor);
  sub_23AA0C1E4();
  sub_23AA0C214();

  v21 = sub_23AA0C534();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_23AA0C1A4();
  v25 = [v15 whiteColor];
  v26 = sub_23AA0C614();
  sub_23AA0C684();
  v26(v32, 0);
  v27 = sub_23AA0C614();
  sub_23AA0C674();
  v27(v32, 0);
  v28 = *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight);
  *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight) = v24;

  sub_23AA0C214();

  v29 = *(v3 + v1);
  if (v29)
  {
    v30 = v29;
    sub_23AA0C984();

    sub_23AA0C704();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_23A9C62D8()
{
  [v0 setIsAccessibilityElement_];
  [v0 setAccessibilityFrame_];
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel;
  v3 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel];
  *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_34;
  }

  [v4 setNumberOfLines_];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 whiteColor];
  [v7 setTextColor_];

  v9 = *&v0[v2];
  if (!v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v9 setTextAlignment_];
  v10 = *&v0[v2];
  if (!v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v10 setLineBreakMode_];
  v11 = *&v0[v2];
  if (!v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D76988];
  v14 = v11;
  v15 = [v12 preferredFontForTextStyle_];
  [v14 setFont_];

  v16 = *&v0[v2];
  if (!v16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v16 setAdjustsFontSizeToFitWidth_];
  v17 = *&v0[v2];
  if (!v17)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v19 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer;
  v20 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer];
  *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer] = v18;
  v21 = v18;

  if (!v21)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  v22 = *&v0[v19];
  if (!v22)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v23 = v22;
  v24 = [v6 blackColor];
  v25 = [v24 colorWithAlphaComponent_];

  [v23 setBackgroundColor_];
  v26 = *&v0[v19];
  if (!v26)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = [v26 layer];
  [v27 setCornerRadius_];

  v28 = *&v0[v19];
  if (!v28)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v28 setAlpha_];
  v29 = *&v0[v19];
  if (!v29)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!*&v0[v2])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v29 addSubview_];
  if (!*&v0[v19])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v0 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23AA1AC40;
  v31 = *&v0[v19];
  if (!v31)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v30 + 32) = v33;
  v34 = *&v0[v19];
  if (!v34)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v35 = [v34 centerXAnchor];
  v36 = [v0 centerXAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v30 + 40) = v37;
  v38 = *&v0[v19];
  if (!v38)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v39 = [v38 topAnchor];
  v40 = [v0 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:100.0];

  *(v30 + 48) = v41;
  v42 = *&v0[v19];
  if (!v42)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v43 = [v42 leadingAnchor];
  v44 = [v0 leadingAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor_];

  *(v30 + 56) = v45;
  v46 = *&v0[v19];
  if (!v46)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v47 = [v46 trailingAnchor];
  v48 = [v0 trailingAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor_];

  *(v30 + 64) = v49;
  v50 = *&v0[v2];
  if (!v50)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v51 = [v50 topAnchor];
  v52 = *&v0[v19];
  if (!v52)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v53 = [v52 topAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:12.0];

  *(v30 + 72) = v54;
  v55 = *&v0[v2];
  if (!v55)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = [v55 leadingAnchor];
  v57 = *&v0[v19];
  if (!v57)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v58 = [v57 leadingAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:12.0];

  *(v30 + 80) = v59;
  v60 = *&v0[v2];
  if (!v60)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v61 = [v60 bottomAnchor];
  v62 = *&v0[v19];
  if (!v62)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v63 = [v62 bottomAnchor];
  v64 = [v61 constraintEqualToAnchor:v63 constant:-12.0];

  *(v30 + 88) = v64;
  v65 = *&v0[v2];
  if (!v65)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v66 = [v65 trailingAnchor];
  v67 = *&v0[v19];
  if (!v67)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v68 = [v67 trailingAnchor];
  v69 = [v66 constraintEqualToAnchor:v68 constant:-12.0];

  *(v30 + 96) = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23AA11BB0;
  v71 = *&v0[v2];
  if (!v71)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v72 = [v71 centerXAnchor];
  v73 = *&v0[v19];
  if (!v73)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v74 = [v73 centerXAnchor];
  v75 = [v72 constraintEqualToAnchor_];

  *(v70 + 32) = v75;
  v76 = objc_opt_self();
  sub_23A9C8978();
  v77 = sub_23AA0D2E4();

  [v76 activateConstraints_];

  v78 = sub_23AA0D2E4();

  [v76 activateConstraints_];
}

void sub_23A9C6B6C(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform + 64))
  {
    return;
  }

  v3 = v1;
  v5 = *v2;
  v7 = *(v2 + 16);
  v9 = *(v2 + 32);
  v12 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera;
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera))
  {
    goto LABEL_15;
  }

  v8 = *(v2 + 24);
  v19 = *(v2 + 16);
  v6 = *(v2 + 8);
  v20 = *v2;
  v11 = *(v2 + 56);
  v10 = *(v2 + 48);
  v18 = *(v2 + 32);
  sub_23A9C6CFC();
  v9 = v18;
  v7 = v19;
  v5 = v20;
  if (*(v1 + v12))
  {
LABEL_15:
    sub_23A9BC788(v5, v7, v9);
    v13 = *(v1 + v12);
    if (v13)
    {
      if (!*(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView))
      {
LABEL_12:
        __break(1u);
        return;
      }

      v14 = *(v3 + v12);

      sub_23A9E81E0();
      v15.n128_f32[0] = fminf(*(v13 + qword_27DFB0EF0) + 0.01, 1.0);
      *(v13 + qword_27DFB0EF0) = v15.n128_u32[0];
      v16 = fminf(*(v13 + qword_27DFB0EF8) + 0.01, 1.0);
      *(v13 + qword_27DFB0EF8) = v16;
      sub_23A9BC32C(v15, v16);
    }
  }

  if (!*(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(v3 + v12);

  sub_23A8CA57C(v17, a1);
}

void sub_23A9C6CFC()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v0;
  v4 = type metadata accessor for ARViewCameraEntity();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v2;
  v8 = sub_23AA0C1A4();
  sub_23A94E7E8();

  v9 = *(v0 + v1);
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = type metadata accessor for DollHouseCamera();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = sub_23A9BBAEC(v9, v8, 1, 0.9273);
  sub_23AA0CB24();
  sub_23AA0C2B4();
  v14 = *(v0 + v1);
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  sub_23AA0C984();

  sub_23A9C8A24(&qword_27DFB10F0, type metadata accessor for DollHouseCamera);

  sub_23AA0C704();

  v16 = *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  *(v3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera) = v13;
}

uint64_t sub_23A9C6E84(char a1)
{
  if (qword_27DFAE398 != -1)
  {
    swift_once();
  }

  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v3 = qword_27DFC04B0;
  swift_beginAccess();
  v4 = *(v3 + 24);

  sub_23A8EAB50(v5);
  v17 = v6;
  v18 = v7;

  v9 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);

    v11 = sub_23A9C50FC();
    v12 = v18.u32[2];
    v13 = *(v9 + qword_27DFB0EE8);
    if (*v18.i32 != 0.0 || *&v18.i32[1] != 0.0 || *&v18.i32[2] != 0.0)
    {
      if (*&v18.i32[2] <= v13.n128_f32[2])
      {
        v12 = DWORD2(*(v9 + qword_27DFB0EE8 + 8));
      }

      v13.n128_u64[0] = vbslq_s8(vcgeq_f32(v13, v18), v13, v18).u64[0];
      v13.n128_u64[1] = v12;
    }

    v14 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_scaleAdjustment);
    if (*(v9 + qword_27DFB0F10) != 1 || (v15 = qword_27DFB0F00, *(v9 + qword_27DFB0F00) == 1))
    {
      *(v9 + qword_27DFB0EF0) = 0;
      *(v9 + qword_27DFB0F08) = v17;
      v16 = vmulq_f32(v13, v13);
      *(v9 + qword_27DFB0E38) = v14 * sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
      sub_23A9BCB38(*(v9 + qword_27DFB0E40), *(v9 + qword_27DFB0E40 + 16), *(v9 + qword_27DFB0E40 + 32), *(v9 + qword_27DFB0E40 + 48));
      if (v13.n128_f32[0] <= *(v9 + qword_27DFB0E30))
      {
        v13.n128_u32[0] = *(v9 + qword_27DFB0E30);
      }

      *(v9 + qword_27DFB0E78) = v13.n128_u32[0];
      if ((*(v9 + qword_27DFC09E0) & 1) != 0 || (v15 = qword_27DFB0F00, *(v9 + qword_27DFB0F00) == 1))
      {
        *(v9 + qword_27DFB0E70) = v11;
        *(v9 + qword_27DFB0E60) = v11;
        v15 = qword_27DFB0F00;
        if (*(v9 + qword_27DFB0F00))
        {
          goto LABEL_20;
        }
      }
    }

    if (a1)
    {
LABEL_20:
      *(v9 + v15) = 0;
      v13.n128_u32[0] = 1.0;
      sub_23A9BC32C(v13, 1.0);
    }
  }

  return result;
}

uint64_t sub_23A9C70EC(unsigned __int8 *a1)
{
  swift_getObjectType();
  v2 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = v4;
  if (v2 <= 2)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_5:

    return 0;
  }

  if ((v2 - 4) < 2)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = sub_23AA0BE14();

  return v7;
}

void sub_23A9C7268(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 0.0)
  {
    v6 = (a3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText);
    v7 = *(a3 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText + 8);
    *v6 = 0;
    v6[1] = 0;
  }

  else if (a5)
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_10;
    }

    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v8 = off_27DFB17B0;
    swift_beginAccess();
    if (v8[144] == 1)
    {
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F40, &unk_23AA1ACA0);
      inited = swift_initStackObject();
      v10 = *MEMORY[0x277D76510];
      *(inited + 32) = *MEMORY[0x277D76510];
      *(inited + 16) = xmmword_23AA10FC0;
      *(inited + 64) = MEMORY[0x277D839B0];
      *(inited + 40) = 1;
      v11 = v10;
      sub_23A9DD720(inited);
      swift_setDeallocating();
      sub_23A8D50D0(inited + 32, &unk_27DFB10B0, &unk_23AA1AA30);
      v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v13 = sub_23AA0D104();
      type metadata accessor for Key(0);
      sub_23A9C8A24(&qword_27DFAE970, type metadata accessor for Key);
      v14 = sub_23AA0D024();

      v15 = [v12 initWithString:v13 attributes:v14];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v15);
    }
  }
}

void sub_23A9C7480()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView);
  if (v1)
  {
    *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView) = 0;
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = v3;
    v4[3] = sub_23A9C84AC;
    v4[4] = v2;
    v5 = v1;

    sub_23A8CBCA0(sub_23A9C853C, v4, 0.0);
  }
}

void sub_23A9C75A4()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView;
  if (!*&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView])
  {
    type metadata accessor for ARGlyphView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v4 = v2;

    [v0 addSubview_];
    v5 = *&v0[v1];
    if (v5)
    {
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];
      v6 = *&v0[v1];
      if (v6)
      {
        v11 = v6;
        v7 = sub_23AA07DB0();
        sub_23AA08688(v0, v7, v8, v9, v10);
      }
    }
  }
}

id sub_23A9C7688(char *a1)
{
  result = [a1 layoutIfNeeded];
  v3 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
  if (v3)
  {
    v4 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
    if (!v4)
    {
      __break(1u);
      return result;
    }

    v5 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];

    v6 = v4;
    [v6 bounds];
    Width = CGRectGetWidth(v20);
    [v6 bounds];
    v8 = Width / CGRectGetHeight(v21);
    *(v3 + qword_27DFB0E18) = v8;
    v9 = *(v3 + qword_27DFB0E48);
    REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
    v17 = v11;
    v18 = v10;
    v15 = v13;
    v16 = v12;

    v14 = (v3 + qword_27DFB0E40);
    *v14 = v18;
    v14[1] = v17;
    v14[2] = v16;
    v14[3] = v15;
  }

  result = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer];
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_23A9C77D0()
{
  v1 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  v2 = *&v0[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
  if (!v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v0;
  v4 = v2;
  sub_23AA08908();

  [v3 bounds];
  v6 = v5;
  [v3 bounds];
  if (v7 < v6)
  {
    v6 = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA12120;
  v9 = *&v3[v1];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v6 * 0.45;
  v11 = [v9 widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v8 + 32) = v12;
  v13 = *&v3[v1];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = [v13 heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v8 + 40) = v15;
  v16 = *&v3[v1];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = [v16 centerXAnchor];
  v18 = [v3 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v8 + 48) = v19;
  v20 = *&v3[v1];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v21 = [v20 bottomAnchor];
  v22 = [v3 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-40.0];

  *(v8 + 56) = v23;
  v24 = objc_opt_self();
  sub_23A9C8978();
  v25 = sub_23AA0D2E4();

  [v24 activateConstraints_];
}

id sub_23A9C7A54(char *a1)
{
  result = [a1 layoutIfNeeded];
  v3 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
  if (v3)
  {
    v4 = *&a1[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
    if (v4)
    {

      v5 = v4;
      [v5 bounds];
      Width = CGRectGetWidth(v19);
      [v5 bounds];
      v7 = Width / CGRectGetHeight(v20);
      *(v3 + qword_27DFB0E18) = v7;
      v8 = *(v3 + qword_27DFB0E48);
      REMatrix4x4MakePerspectiveFieldOfViewReverseDepth();
      v16 = v10;
      v17 = v9;
      v14 = v12;
      v15 = v11;

      v13 = (v3 + qword_27DFB0E40);
      *v13 = v17;
      v13[1] = v16;
      v13[2] = v15;
      v13[3] = v14;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_23A9C7B84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) == 1)
    {
      sub_23AA0C5A4();
      sub_23A9C6B6C(v2);
    }
  }
}

uint64_t sub_23A9C7C90(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);

    [v3 scale];
    v6 = 1.0 / v5;
    if (v6 != 0.0)
    {
      v7 = v6;
      *(v2 + qword_27DFB0E50) = fminf(fmaxf(*(v2 + qword_27DFB0E50) / v7, 0.1), 100.0);
      *(v2 + qword_27DFB0E80) = *(v2 + qword_27DFB0E80) * v7;
      [v3 setScale_];
    }
  }

  return result;
}

void sub_23A9C7DE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView;
  [a1 locationInView_];
  v4 = [a1 state];
  if (v4 != 3)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
    if (!v5)
    {
      return;
    }

    if (*(v1 + v3))
    {
      *(v5 + qword_27DFB0F10) = 1;
      v6 = *(v5 + qword_27DFB0E10);
      *(v5 + qword_27DFB0E10) = 0;

      v7 = *(v5 + qword_27DFB0E08);
      *(v5 + qword_27DFB0E08) = 0;

      v10 = *(v5 + qword_27DFB0E00);
      *(v5 + qword_27DFB0E00) = 0;

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (!v8)
  {
    return;
  }

  if (!*(v1 + v3))
  {
    goto LABEL_15;
  }

  *(v8 + qword_27DFB0F10) = 0;
  v9 = 1.0;
  if (*(v8 + qword_27DFC09E0))
  {
    v9 = 0.0;
  }

  *(v8 + qword_27DFB0EF0) = v9;
  *(v8 + qword_27DFB0EF8) = v9;
}

id sub_23A9C7FBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A9C815C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_23A9C81C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_23A9C81F8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A9C8238()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_23A9C8288(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_6;
    }

    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v2 = off_27DFB17B0;
    swift_beginAccess();
    if (v2[144] == 1)
    {
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0F40, &unk_23AA1ACA0);
      inited = swift_initStackObject();
      v4 = *MEMORY[0x277D76510];
      *(inited + 32) = *MEMORY[0x277D76510];
      *(inited + 16) = xmmword_23AA10FC0;
      *(inited + 64) = MEMORY[0x277D839B0];
      *(inited + 40) = 1;
      v5 = v4;
      sub_23A9DD720(inited);
      swift_setDeallocating();
      sub_23A8D50D0(inited + 32, &unk_27DFB10B0, &unk_23AA1AA30);
      v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v7 = sub_23AA0D104();
      type metadata accessor for Key(0);
      sub_23A9C8A24(&qword_27DFAE970, type metadata accessor for Key);
      v8 = sub_23AA0D024();

      v9 = [v6 initWithString:v7 attributes:v8];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v9);
    }
  }
}

uint64_t sub_23A9C8474()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9C84BC()
{
  MEMORY[0x23EE917F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9C84F4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23A9C8548()
{
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment;
  *v1 = 0;
  *(v1 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_runtimeScaleAdjustment) = 1065982362;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_completionMargin) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 64) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction) = 6;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState) = 5;
  v5 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight) = 0;
  v6 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_lightingAnchor;
  sub_23AA0C1E4();
  *(v0 + v6) = MEMORY[0x23EE8EC60](0);
  sub_23AA0D9E4();
  __break(1u);
}

void sub_23A9C8728()
{
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView____lazy_storage___pitchAdjustment;
  *v1 = 0;
  *(v1 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_runtimeScaleAdjustment) = 1065982362;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_completionMargin) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arGlyphView) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingLabelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_panGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_pinchGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_immediateLongPressRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalDebugEntity) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 64) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInstruction) = 6;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_currentInitializationState) = 5;
  v5 = v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_sceneObserver;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight) = 0;
  *(v0 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight) = 0;
  v6 = OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_lightingAnchor;
  sub_23AA0C1E4();
  *(v0 + v6) = MEMORY[0x23EE8EC60](0);
  sub_23AA0D9E4();
  __break(1u);
}

uint64_t sub_23A9C8908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A9C8978()
{
  result = qword_27DFB10D8;
  if (!qword_27DFB10D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFB10D8);
  }

  return result;
}

uint64_t sub_23A9C89DC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera);
  if (v1)
  {
    *(v1 + qword_27DFC09E0) = 0;
  }

  return sub_23A9C6E84(0);
}

uint64_t sub_23A9C8A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A9C8A9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23A9F5738(*(a1 + 16), 0);
  v4 = sub_23A9F409C(&v6, (v3 + 32), v2, a1);
  sub_23A8CA904();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23A9C8B84(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_23AA0D7F4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A9C8C28(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = a4(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5, a1);
  sub_23A8CA904();
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void static RoomCaptureSession.isSupported.getter()
{
  v0 = sub_23AA0D104();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_unknownObjectRetain();
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

id sub_23A9C8DDC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ARRoomCaptureConfiguration();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t RoomCaptureSession.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RoomCaptureSession.init()();
  return v3;
}

uint64_t RoomCaptureSession.init()()
{
  v1 = v0;
  v2 = sub_23AA0D524();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0D504();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v46 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CF24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 1;
  v11 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_recordFileUrl;
  v12 = sub_23AA0BFB4();
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v13(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = (v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_23AA0CE74();
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) = 1;
  v15 = v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration;
  *v15 = 0x100010101010101;
  *(v15 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRunOption) = 8;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = 0;
  v16 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
  v17 = MEMORY[0x277D84F90];
  *(v1 + v16) = sub_23A9DD100(MEMORY[0x277D84F90]);
  v18 = (v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel);
  v19 = *MEMORY[0x277D860B8];
  v44 = *(MEMORY[0x277D860B8] + 16);
  v45 = v19;
  v20 = *(MEMORY[0x277D860B8] + 32);
  v42 = *(MEMORY[0x277D860B8] + 48);
  v43 = v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
  v22 = type metadata accessor for CapturedRoom(0);
  v23 = v22[12];
  *(v18 + v23) = 0;
  *(v18 + v22[13]) = 2;
  v24 = (v18 + v22[15]);
  *v24 = 0u;
  v24[1] = 0u;
  *v18 = v17;
  v18[1] = v17;
  v18[2] = v17;
  v18[3] = v17;
  v18[4] = v17;
  v18[5] = v17;
  *(v18 + v22[14]) = v17;
  v25 = v18 + v22[10];
  sub_23AA0C0D4();
  *(v18 + v22[11]) = v17;
  *(v18 + v23) = 0;
  v26 = (v18 + v22[16]);
  v27 = v44;
  *v26 = v45;
  v26[1] = v27;
  v28 = v42;
  v26[2] = v43;
  v26[3] = v28;
  v50[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  v50[0] = v21;
  sub_23A8D5068(v50, v24, &unk_27DFB1140, &qword_23AA19C10);
  v29 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  *(v1 + v29) = sub_23A9DD2E8(v17);
  v30 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  *(v1 + v30) = sub_23A9DD504(v17);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_detectedObjects) = v17;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls) = v17;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = v17;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v17;
  *&v45 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue;
  *&v44 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  *&v43 = "plemented for this class";
  sub_23AA0CF04();
  v50[0] = v17;
  v41[1] = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230]);
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  *&v42 = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v31 = *MEMORY[0x277D85260];
  v32 = v48;
  v33 = *(v49 + 104);
  v49 += 104;
  v34 = v47;
  v33(v47, v31, v48);
  *(v1 + v45) = sub_23AA0D554();
  *&v45 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue;
  *&v43 = "an.FloorPlanCaptureSession";
  sub_23AA0CF14();
  v50[0] = MEMORY[0x277D84F90];
  sub_23AA0D764();
  v33(v34, v31, v32);
  *(v1 + v45) = sub_23AA0D554();
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate) = 0;
  v35 = (v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
  *v35 = xmmword_23AA12250;
  v35[1] = xmmword_23AA12220;
  v35[2] = xmmword_23AA12230;
  v35[3] = xmmword_23AA11AE0;
  v36 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingStateOrdinalFormatter;
  v37 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v37 setNumberStyle_];
  *(v1 + v36) = v37;
  v38 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
  v39 = sub_23AA0D5F4();
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 2, v39);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = 0;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportThreshold) = 600;
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = 0;
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
  sub_23A9C965C(1);
  return v1;
}

uint64_t RoomCaptureSession.__allocating_init(arSession:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_23A9DD848(a1);

  return v5;
}

uint64_t RoomCaptureSession.init(arSession:)(void *a1)
{
  v2 = sub_23A9DD848(a1);

  return v2;
}

void sub_23A9C965C(char a1)
{
  v2 = v1;
  v4 = sub_23AA0CEC4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CF24();
  v10 = *(v9 - 1);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0CE84();
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v14);
  v81 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23AA0D104();
  v18 = MGCopyAnswer();

  if (!v18)
  {
    goto LABEL_67;
  }

  swift_unknownObjectRetain();
  aBlock[0] = v18;
  if ((swift_dynamicCast() & 1) == 0 || v87 != 1)
  {
    return;
  }

  v19 = &off_278B65000;
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v20 = [*(v2 + 56) configuration];
    if (v20)
    {
      v21 = v20;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
        *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = v22;
        goto LABEL_11;
      }
    }
  }

  v24 = v13;
  v25 = [objc_allocWithZone(type metadata accessor for ARRoomCaptureConfiguration()) init];
  v26 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration;
  v27 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration) = v25;
  v28 = v25;

  [v28 setLightEstimationEnabled_];
  v29 = *(v2 + v26);
  if (!v29)
  {
    goto LABEL_72;
  }

  v30 = v29;
  v23 = sub_23AA0D104();
  [v30 setSlamConfiguration_];

  v13 = v24;
  v19 = 0x278B65000;
LABEL_11:

  if (qword_27DFAE518 != -1)
  {
LABEL_61:
    swift_once();
  }

  v75 = v13;
  sub_23AA00900(aBlock);
  v79 = v5;
  v78 = v9;
  v77 = v8;
  v76 = v10;
  if (LOBYTE(aBlock[0]) != 1)
  {
    goto LABEL_49;
  }

  type metadata accessor for ARRoomCaptureConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [ObjCClassFromMetadata supportedVideoFormats];
  sub_23A8D6C58(0, &unk_27DFB14D8, 0x277CE5398);
  v33 = sub_23AA0D2F4();

  if (v33 >> 62)
  {
    if (!sub_23AA0D7F4())
    {
      goto LABEL_43;
    }
  }

  else if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:

    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    v54 = v81;
    sub_23AA0CE94();
    v55 = sub_23AA0CE54();
    v56 = sub_23AA0D494();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_23A8B4000, v55, v56, "Cannot set framerate to 30 fps", v57, 2u);
      MEMORY[0x23EE91710](v57, -1, -1);
    }

    (*(v82 + 8))(v54, v83);
    goto LABEL_48;
  }

  if ((v33 & 0xC000000000000001) == 0)
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v33 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v34 = MEMORY[0x23EE90360](0, v33);
LABEL_18:
  v74 = v34;
  v72 = v2;

  v35 = [ObjCClassFromMetadata supportedVideoFormats];
  v36 = sub_23AA0D2F4();

  v71 = v4;
  if (v36 >> 62)
  {
    v37 = sub_23AA0D7F4();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v74;
  if (!v37)
  {
LABEL_42:

    v2 = v72;
    v4 = v71;
    goto LABEL_43;
  }

  v19 = 0;
  v2 = v36 & 0xC000000000000001;
  v80 = v36 & 0xFFFFFFFFFFFFFF8;
  v5 = &selRef_initWithDevice_;
  v84 = v37;
  v73 = v36 & 0xC000000000000001;
  while (1)
  {
    if (v2)
    {
      v38 = MEMORY[0x23EE90360](v19, v36);
    }

    else
    {
      if (v19 >= *(v80 + 16))
      {
        goto LABEL_60;
      }

      v38 = *(v36 + 8 * v19 + 32);
    }

    v39 = v38;
    v13 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if ([v38 v5[260]] == 30)
    {
      v4 = &selRef_initWithDevice_;
      [v39 imageResolution];
      v41 = v40;
      v43 = v42;
      [v8 imageResolution];
      v46 = v41 == v45 && v43 == v44;
      if (v46)
      {
        v4 = &selRef_initWithDevice_;
        v10 = v5;
        v47 = [v39 captureDevicePosition];
        v46 = v47 == [v8 captureDevicePosition];
        v5 = v10;
        if (v46)
        {
          break;
        }
      }
    }

LABEL_23:

    ++v19;
    if (v13 == v84)
    {
      goto LABEL_42;
    }
  }

  v48 = [v39 captureDeviceType];
  v9 = [v8 captureDeviceType];
  v49 = sub_23AA0D134();
  v51 = v50;
  if (v49 != sub_23AA0D134() || v51 != v52)
  {
    v4 = sub_23AA0DBD4();

    v8 = v74;
    v2 = v73;
    v5 = v10;
    if (v4)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  v8 = v74;
LABEL_40:

  v2 = v72;
  v53 = *(v72 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  if (!v53)
  {
    goto LABEL_73;
  }

  [v53 setVideoFormat_];

  v4 = v71;
LABEL_48:
  v19 = &off_278B65000;
LABEL_49:
  v58 = [objc_allocWithZone(type metadata accessor for ARInternalSessionObserverWrapper()) *(v19 + 3224)];
  v59 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver;
  v60 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arSessionObserver) = v58;

  v61 = [objc_allocWithZone(type metadata accessor for RSSessionDelegateWrapper()) *(v19 + 3224)];
  v62 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate;
  v63 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_rsSessionDelegate) = v61;

  v64 = [objc_allocWithZone(type metadata accessor for OUSessionDelegateWrapper()) *(v19 + 3224)];
  v65 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate;
  v66 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate);
  *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okSessionDelegate) = v64;

  if (!*(v2 + v59))
  {
    goto LABEL_68;
  }

  swift_weakAssign();
  if (!*(v2 + v62))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  swift_weakAssign();
  if (!*(v2 + v65))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  swift_weakAssign();
  swift_beginAccess();
  if (*(v2 + v59))
  {
    [*(v2 + 56) _addObserver_];
    v67 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
    aBlock[4] = sub_23A9E36DC;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_300;
    v68 = _Block_copy(aBlock);

    v69 = v75;
    sub_23AA0CEE4();
    v85 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    v70 = v77;
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v69, v70, v68);
    _Block_release(v68);
    (v79[1])(v70, v4);
    (v76[1])(v69, v78);

    if (qword_27DFAE498 != -1)
    {
      swift_once();
    }

    *(qword_27DFC07E8 + 24) = &off_284D86F50;
    swift_unknownObjectWeakAssign();
    if (qword_27DFAE410 != -1)
    {
      swift_once();
    }

    *(qword_27DFC0670 + 24) = &off_284D86F60;
    swift_unknownObjectWeakAssign();
    return;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_23A9CA1A4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D46C80]) init];
  v3 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setDelegate_];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D36D00]) init_];
  v6 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet) = v5;
  v7 = v5;

  if (v7)
  {
    [v7 setDelegate_];
  }
}

void sub_23A9CA2AC(int8x8_t *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1].i8[0];
  v15 = sub_23AA0D104();
  v16 = MGCopyAnswer();

  if (v16)
  {
    swift_unknownObjectRetain();
    aBlock[0] = v16;
    if ((swift_dynamicCast() & 1) != 0 && v22 == 1)
    {
      v21 = *(*&v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
      v17 = swift_allocObject();
      v17[2] = v1;
      v17[3] = vand_s8(v13, 0x101010101010101);
      v17[4].i8[0] = v14 & 1;
      aBlock[4] = sub_23A9DE024;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_8;
      v20 = _Block_copy(aBlock);

      sub_23AA0CEE4();
      v22 = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      v18 = v20;
      MEMORY[0x23EE8FFE0](0, v12, v7, v20);
      _Block_release(v18);
      (*(v4 + 8))(v7, v3);
      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9CA60C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v123 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_23AA0CF24();
  v122 = *(v124 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v109 - v17;
  v19 = sub_23AA0BFB4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig;
  if (*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig) || *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed) != 1 || !*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator) || !*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet))
  {
    return;
  }

  v111 = v6;
  v112 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet;
  v109 = &v109 - v25;
  v110 = v7;
  v117 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runAllowed;
  v118 = v26;
  v119 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator;
  v120 = v24;
  v28 = a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration;
  *v28 = a2;
  v113 = HIDWORD(a2);
  *(v28 + 2) = BYTE2(a2);
  *(v28 + 3) = BYTE3(a2);
  *(v28 + 4) = BYTE4(a2);
  v115 = (a2 >> 40);
  v116 = HIWORD(a2);
  LODWORD(v114) = a3 & 1;
  *(v28 + 5) = BYTE5(a2);
  *(v28 + 6) = BYTE6(a2);
  *(v28 + 7) = HIBYTE(a2);
  *(v28 + 8) = a3 & 1;
  v29 = sub_23A9DD100(MEMORY[0x277D84F90]);
  v30 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
  swift_beginAccess();
  v31 = *(a1 + v30);
  *(a1 + v30) = v29;

  v32 = [objc_allocWithZone(MEMORY[0x277D46C78]) init];
  [v32 setWindowDoorDetectionEnabled_];
  [v32 setLiveResultEnabled_];
  [v32 setTextCoachingEnabled_];
  [v32 setOnboardingEnabled_];
  [v32 setNonUniformHeightEnabled_];
  [v32 setBoundaryRefinementEnabled_];
  [v32 setBayWindowRecessedAreaEnabled_];
  v33 = *(a1 + v119);
  if (!v33)
  {
    __break(1u);
    goto LABEL_63;
  }

  v116 = v32;
  [v33 runWithConfiguration_];
  v34 = *(a1 + v112);
  if (!v34)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  swift_beginAccess();
  v35 = *(a1 + 64);
  v36 = objc_allocWithZone(MEMORY[0x277D36CF0]);
  v37 = v34;
  LODWORD(v38) = 2.0;
  v39 = [v36 initWithframerate:1 enable3DOR:v35 rgbRefinemnt:0 mlRefinement:v38];
  [v37 runWithConfiguration_];

  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) = BYTE1(a2) & 1;
  v40 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration;
  v41 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  if (!v41)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v42 = [v41 frameSemantics];
  swift_beginAccess();
  if (*(a1 + 65) != 1)
  {
    swift_beginAccess();
    v48 = [*(a1 + 56) configuration];
    if (!v48)
    {
      goto LABEL_18;
    }

    v47 = v48;
    objc_opt_self();
    goto LABEL_15;
  }

  swift_beginAccess();
  v43 = [*(a1 + 56) configuration];
  if (!v43)
  {
    goto LABEL_21;
  }

  v44 = v43;
  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = [v45 templateConfiguration];

    if (!v46)
    {
      goto LABEL_18;
    }

    objc_opt_self();
    v47 = v46;
LABEL_15:
    v49 = swift_dynamicCastObjCClass();
    if (v49)
    {
      v50 = v49;
      v44 = *(a1 + v40);
LABEL_19:
      *(a1 + v40) = v50;
      goto LABEL_20;
    }

LABEL_18:
    v50 = *(a1 + v40);
    v44 = v50;
    goto LABEL_19;
  }

LABEL_20:

LABEL_21:
  v51 = *(a1 + v40);
  if (!v51)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v51 setFrameSemantics_];
  v52 = *(a1 + v40);
  if (!v52)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v53 = *MEMORY[0x277CE51B0];
  v54 = v52;
  v55 = [v54 sceneReconstruction];
  if ((v53 & ~v55) != 0)
  {
    v56 = v53;
  }

  else
  {
    v56 = 0;
  }

  [v54 setSceneReconstruction_];

  swift_beginAccess();
  [*(a1 + 56) setForceAddSceneReconstructionKeyframePointCloudWithColor_];
  v57 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl;
  swift_beginAccess();
  sub_23A8D5194(a1 + v57, v18, &qword_27DFAF210, &qword_23AA12EE8);
  v58 = v118;
  v115 = *(v118 + 48);
  if (v115(v18, 1, v120) == 1)
  {
    sub_23A8D50D0(v18, &qword_27DFAF210, &qword_23AA12EE8);
  }

  else
  {
    v114 = v40;
    v59 = v109;
    (*(v58 + 32))(v109, v18, v120);
    if (*(a1 + 65) == 2)
    {
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v60 = off_27DFB17B0;
      swift_beginAccess();
      v61 = *(a1 + v114);
      if (!v61)
      {
        goto LABEL_71;
      }

      if (v60[32])
      {
        v62 = 2;
      }

      else
      {
        v62 = 0;
      }

      v63 = v118;
      v64 = v109;
      (*(v118 + 16))(v22, v109, v120);
      v65 = objc_allocWithZone(MEMORY[0x277CE5360]);
      v66 = v61;
      v75 = sub_23A9E1664(v66, v22, v62);

      [v75 setDelegate_];
      (*(v63 + 8))(v64, v120);
      v76 = v117;
      v40 = v114;
      goto LABEL_47;
    }

    (*(v58 + 8))(v59, v120);
    v40 = v114;
  }

  v76 = v117;
  if (*(a1 + 65) == 1)
  {
    v67 = *(a1 + v40);
    if (!v67)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    sub_23A8D5194(a1 + v57, v15, &qword_27DFAF210, &qword_23AA12EE8);
    v68 = v115(v15, 1, v120);
    v69 = v67;
    if (v68 == 1)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_23AA0BF14();
      (*(v118 + 8))(v15, v120);
    }

    v71 = [objc_allocWithZone(MEMORY[0x277CE5340]) initWithBaseConfiguration:v69 fileURL:v70];

    v72 = *(a1 + v27);
    *(a1 + v27) = v71;
    v73 = v71;

    if (!v73)
    {
      goto LABEL_70;
    }

    [v73 startRecording];

    v75 = *(a1 + v27);
    if (v75)
    {
      v74 = v75;
    }

    v76 = v117;
  }

  else
  {
    v75 = 0;
  }

LABEL_47:
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 1;
  *(a1 + v76) = 0;
  sub_23A9CD9A8();
  v77 = v75;
  if (!v75)
  {
    v77 = *(a1 + v40);
    if (v77)
    {
      v78 = v77;
    }
  }

  v79 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = v77;
  v80 = v77;
  v81 = v75;

  if (!v77)
  {
    goto LABEL_67;
  }

  v82 = *(a1 + 56);
  [v82 runWithConfiguration:v80 options:8];

  v83 = MEMORY[0x277D84F90];
  v84 = sub_23A9DD2E8(MEMORY[0x277D84F90]);
  v85 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
  swift_beginAccess();
  v86 = *(a1 + v85);
  *(a1 + v85) = v84;

  v87 = sub_23A9DD504(v83);
  v88 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects;
  swift_beginAccess();
  v89 = *(a1 + v88);
  *(a1 + v88) = v87;

  v90 = (a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v91 = v90[1];
  *v90 = 0;
  v90[1] = 0;

  v92 = a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v93 = *(v92 + 8);
    ObjectType = swift_getObjectType();
    v95 = (*(v93 + 8))(ObjectType, v93);
    v97 = v96;
    swift_unknownObjectRelease();
  }

  else
  {
    v95 = 0;
    v97 = 0;
  }

  v98 = v90[1];
  *v90 = v95;
  v90[1] = v97;

  sub_23A9CE91C();
  v99 = *(a1 + v119);
  if (!v99)
  {
    goto LABEL_68;
  }

  if (v90[1])
  {
    v100 = *v90;
    v101 = v99;

    v102 = sub_23AA0D104();
  }

  else
  {
    v103 = v99;
    v102 = 0;
  }

  [v99 setUpInternalDumpWithLogDir:v102 enable:*(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump)];

  if (qword_27DFAE460 != -1)
  {
    swift_once();
  }

  sub_23A95517C();
  sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v104 = sub_23AA0D534();
  v125[4] = sub_23A9E36D4;
  v125[5] = a1;
  v125[0] = MEMORY[0x277D85DD0];
  v125[1] = 1107296256;
  v125[2] = sub_23A9AD0B8;
  v125[3] = &block_descriptor_297;
  v105 = _Block_copy(v125);

  v106 = v121;
  sub_23AA0CEE4();
  v125[0] = v83;
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  v107 = v123;
  v108 = v111;
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v106, v107, v105);
  _Block_release(v105);

  (*(v110 + 8))(v107, v108);
  (*(v122 + 8))(v106, v124);
}

uint64_t sub_23A9CB48C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    v2 = *(a1 + 56);
    sub_23A9B6F28(v2);

    swift_unknownObjectRelease();
  }

  v3 = a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration);
    v12 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 8);
    (*(v4 + 48))(a1, &v11, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = swift_getObjectType();
    v9 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration);
    v10 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 8);
    (*(v7 + 48))(a1, &v9, v8, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23A9CB5E0(char a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0D104();
  v14 = MGCopyAnswer();

  if (v14)
  {
    swift_unknownObjectRetain();
    aBlock[0] = v14;
    if ((swift_dynamicCast() & 1) != 0 && v24 == 1)
    {
      swift_beginAccess();
      v15 = [*(v1 + 56) configuration];
      v21 = v4;
      if (v15)
      {
        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          [*(v1 + 56) setForceAddSceneReconstructionKeyframePointCloudWithColor_];
          [v18 setSceneReconstruction_];
          [*(v1 + 56) runWithConfiguration:v18 options:8];
        }
      }

      if (a1)
      {
        [*(v1 + 56) pause];
      }

      v20 = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
      aBlock[4] = sub_23A9DE0D8;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_3;
      v19 = _Block_copy(aBlock);

      sub_23AA0CEE4();
      v22 = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      MEMORY[0x23EE8FFE0](0, v12, v7, v19);
      _Block_release(v19);
      (*(v21 + 8))(v7, v3);
      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_23A9CB9D4(uint64_t a1)
{
  v2 = sub_23AA0CEC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23AA0CF24();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arRecordingConfig);
  if (v11)
  {
    v27 = sub_23A9E36C0;
    v28 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_23A9CBDF4;
    v26 = &block_descriptor_294;
    v12 = _Block_copy(&aBlock);
    v13 = v11;

    [v13 finishRecordingWithHandler_];
    _Block_release(v12);
  }

  v14 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration);
  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_currentArConfiguration) = 0;

  *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) = 0;
  sub_23A9D036C();
  v15 = (a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v16 = v15[1];
  qword_27DFC0980 = *v15;
  qword_27DFC0988 = v16;

  result = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (result)
  {
    v21 = v3;
    [result stop];
    result = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
    if (result)
    {
      [result stop];
      sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
      v18 = sub_23AA0D534();
      v27 = sub_23A9E3688;
      v28 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_23A9AD0B8;
      v26 = &block_descriptor_291;
      v19 = _Block_copy(&aBlock);

      sub_23AA0CEE4();
      aBlock = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      MEMORY[0x23EE8FFE0](0, v10, v6, v19);
      _Block_release(v19);

      (*(v21 + 8))(v6, v2);
      return (*(v7 + 8))(v10, v22);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23A9CBDF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

RoomPlan::RoomCaptureSession::Configuration __swiftcall RoomCaptureSession.Configuration.init()()
{
  *v0 = 0x100010101010101;
  *(v0 + 8) = 1;
  return result;
}

unint64_t RoomCaptureSession.CaptureError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 4)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD000000000000017;
  if (v1 == 1)
  {
    v3 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A9CC0D0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_23A9CC10C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23A9CC16C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_23A9CC200;
}

void sub_23A9CC200(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_23A9CC284(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

id sub_23A9CC2DC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

void sub_23A9CC320(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_23A9CC3EC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_23A9CC47C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 65);
  return result;
}

uint64_t sub_23A9CC4C0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

uint64_t sub_23A9CC5C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23A8D5194(a1, &v15 - v10, &qword_27DFAF210, &qword_23AA12EE8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  sub_23A8D5068(v11, v12 + v13, &qword_27DFAF210, &qword_23AA12EE8);
  return swift_endAccess();
}

uint64_t sub_23A9CC6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_23A8D5194(v2 + v4, a2, &qword_27DFAF210, &qword_23AA12EE8);
}

uint64_t sub_23A9CC724(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_23A8D5068(a1, v2 + v4, &qword_27DFAF210, &qword_23AA12EE8);
  return swift_endAccess();
}

void (*sub_23A9CC808(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23A9E37C8;
}

uint64_t sub_23A9CC8A8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23A9CC914()
{
  v1 = (v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23A9CC96C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_23A9CCA38(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_23A9CCA90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23A9CCAF8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23A9CCB98;
}

uint64_t sub_23A9CCB9C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager;
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager);
  }

  else
  {
    type metadata accessor for IULogManager();
    v2 = swift_allocObject();
    *(v2 + 16) = 1792;
    *(v2 + 32) = 0;
    swift_unknownObjectWeakInit();
    v3 = dispatch_semaphore_create(1);
    v4 = MEMORY[0x277D84F90];
    *(v2 + 40) = v3;
    *(v2 + 48) = v4;
    *(v2 + 32) = &off_284D86F30;
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_23A9CCCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23AA0CEC4();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CF24();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
  {
    v19[1] = *(v4 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = a1;
    aBlock[4] = a3;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a4;
    v18 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v21 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v16, v11, v18);
    _Block_release(v18);
    (*(v20 + 8))(v11, v8);
    (*(v13 + 8))(v16, v12);
  }
}

void sub_23A9CCF78(uint64_t a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0CF24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
  {
    v16[1] = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
    v17 = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v1;
    aBlock[4] = sub_23A9E348C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_276;
    v15 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v18 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v13, v7, v15);
    _Block_release(v15);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v17);
  }
}

void sub_23A9CD254(unint64_t a1, uint64_t a2)
{
  v70 = sub_23AA0C0E4();
  v65 = *(v70 - 8);
  v5 = *(v65 + 64);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v70);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_26:
    v9 = sub_23AA0D7F4();
    v72 = a1;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = a1;
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v11 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes;
      v68 = a1 & 0xFFFFFFFFFFFFFF8;
      v69 = a1 & 0xC000000000000001;
      v64 = v65 + 16;
      v66 = (v65 + 8);
      v67 = v9;
      do
      {
        if (v69)
        {
          a1 = MEMORY[0x23EE90360](v10, a1, v6);
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v10 >= *(v68 + 16))
          {
            goto LABEL_23;
          }

          a1 = *(a1 + 8 * v10 + 32);

          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v71 = v14;
        v15 = [*(a1 + 16) identifier];
        if (!v15)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v16 = v15;
        sub_23AA0C0A4();

        v17 = *(a1 + 16);
        swift_beginAccess();
        swift_unknownObjectRetain();
        v18 = *(a2 + v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v8;
        v8 = isUniquelyReferenced_nonNull_native;
        v73 = *(a2 + v11);
        v21 = v73;
        v22 = a2;
        v2 = v11;
        *(a2 + v11) = 0x8000000000000000;
        v23 = v20;
        v25 = sub_23A9EDD28(v20);
        v26 = v21[2];
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_24;
        }

        a2 = v24;
        if (v21[3] >= v28)
        {
          if ((v8 & 1) == 0)
          {
            sub_23A90F96C();
          }

          v8 = v23;
          v31 = v73;
          if (a2)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_23A90ADF4(v28, v8);
          v8 = v23;
          v29 = sub_23A9EDD28(v23);
          if ((a2 & 1) != (v30 & 1))
          {
            goto LABEL_62;
          }

          v25 = v29;
          v31 = v73;
          if (a2)
          {
LABEL_4:
            v12 = v31[7];
            v13 = *(v12 + 8 * v25);
            *(v12 + 8 * v25) = v17;
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v31[(v25 >> 6) + 8] |= 1 << v25;
        (*(v65 + 16))(v31[6] + *(v65 + 72) * v25, v8, v70);
        *(v31[7] + 8 * v25) = v17;
        v32 = v31[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_25;
        }

        v31[2] = v34;
LABEL_5:
        (*v66)(v8, v70);
        a2 = v22;
        v11 = v2;
        *(v2 + v22) = v31;
        swift_endAccess();

        ++v10;
        a1 = v72;
      }

      while (v71 != v67);
    }
  }

  if (v63)
  {
    v35 = sub_23AA0D7F4();
  }

  else
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35)
  {
    v74 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    if (v35 < 0)
    {
      __break(1u);
      goto LABEL_56;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v36 = 0;
      do
      {
        v2 = (v36 + 1);
        v37 = *(MEMORY[0x23EE90360]() + 16);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_23AA0D944();
        v38 = *(v74 + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        v36 = v2;
      }

      while (v35 != v2);
    }

    else
    {
      v2 = (a1 + 32);
      v39 = v35;
      do
      {
        v40 = *v2++;
        v41 = *(v40 + 16);
        swift_unknownObjectRetain();
        sub_23AA0D944();
        v42 = *(v74 + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        --v39;
      }

      while (v39);
    }
  }

  v43 = *(a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (!v43)
  {
    goto LABEL_59;
  }

  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
  v8 = sub_23AA0D2E4();
  [v44 updateWithKeyframes_];

  v45 = MEMORY[0x277D84F90];
  if (v35)
  {
    v74 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v46 = a2;
      v47 = 0;
      v48 = a1 & 0xC000000000000001;
      do
      {
        if (v48)
        {
          v49 = MEMORY[0x23EE90360](v47, a1);
        }

        else
        {
          v49 = *(a1 + 8 * v47 + 32);
        }

        ++v47;
        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        objc_allocWithZone(type metadata accessor for ObjectKitKeyframe(0));
        v52 = v50;
        v53 = swift_unknownObjectRetain();
        sub_23A9A7204(v53, v50);

        swift_unknownObjectRelease();

        sub_23AA0D944();
        v54 = *(v74 + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        a1 = v72;
      }

      while (v35 != v47);
      v45 = v74;
      a2 = v46;
      goto LABEL_47;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_47:
  if ((*(a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_objectDetectionEnabled) & 1) != 0 && (swift_beginAccess(), (v55 = [*(a2 + 56) currentFrame]) != 0))
  {
    v56 = v55;
    v57 = [v55 camera];

    [v57 transform];
    v58 = [*(a2 + 56) currentFrame];
    if (!v58)
    {
      goto LABEL_60;
    }

    v59 = v58;
    type metadata accessor for OUFrame();
    swift_allocObject();
    v8 = v59;
    sub_23A99F9B8(v8);
    v61 = *(a2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_okObjDet);
    if (v61)
    {
      v35 = v60;
      v2 = v61;

      if (!(v45 >> 62))
      {

        sub_23AA0DBE4();
LABEL_53:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BC0, qword_23AA1A638);
        v62 = sub_23AA0D2E4();

        [v2 updateWithKeyframes:v62 ouframe:v35];

        return;
      }

LABEL_57:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BC0, qword_23AA1A638);
      sub_23AA0D9F4();

      goto LABEL_53;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    sub_23AA0DC24();
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_23A9CD9A8()
{
  v1 = v0;
  v2 = sub_23AA0D604();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0CE54();
  v7 = sub_23AA0D484();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23A8B4000, v6, v7, "Resetting bad tracking failure reports", v8, 2u);
    MEMORY[0x23EE91710](v8, -1, -1);
  }

  v9 = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
  *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = 0;

  v10 = sub_23AA0D5F4();
  (*(*(v10 - 8) + 56))(v5, 1, 2, v10);
  sub_23A9CDB14(v5);
  return sub_23A9E2ED0(v5, MEMORY[0x277D82DB0]);
}

void sub_23A9CDB14(uint64_t a1)
{
  v3 = sub_23AA0CEC4();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0D604();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (*(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 7) == 1)
  {
    v18[1] = *(v1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_queue);
    sub_23A9E3260(a1, v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D82DB0]);
    v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v16 = swift_allocObject();
    sub_23A9E35C4(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, MEMORY[0x277D82DB0]);
    *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
    aBlock[4] = sub_23A9E33E8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_270;
    v17 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v20 = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v11, v6, v17);
    _Block_release(v17);
    (*(v19 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }
}

void sub_23A9CDEC0(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v3 = sub_23AA0D5F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  v14 = sub_23AA0D604();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - v22;
  sub_23A9E3260(a1, &v76 - v22, MEMORY[0x277D82DB0]);
  v24 = (*(v4 + 48))(v23, 2, v3);
  v25 = &unk_27DFC0000;
  if (v24)
  {
    if (v24 == 1)
    {
      v26 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount;
      v27 = v83;
      v28 = v20;
      if (*(v83 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) < 1)
      {
        goto LABEL_24;
      }

      v29 = sub_23AA0CE54();
      v30 = sub_23AA0D484();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_18;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Resetting bad tracking failure reports (tracking state is not available yet)";
    }

    else
    {
      v26 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount;
      v27 = v83;
      v28 = v20;
      if (*(v83 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) < 1)
      {
        goto LABEL_24;
      }

      v29 = sub_23AA0CE54();
      v30 = sub_23AA0D484();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_18;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Resetting bad tracking failure reports (tracking state back to normal)";
    }

    _os_log_impl(&dword_23A8B4000, v29, v30, v32, v31, 2u);
    MEMORY[0x23EE91710](v31, -1, -1);
LABEL_18:

    *(v27 + v26) = 0;
    goto LABEL_24;
  }

  v79 = v7;
  v80 = a1;
  (*(v4 + 32))(v13, v23, v3);
  v33 = *MEMORY[0x277D82D98];
  v34 = v13;
  v35 = *(v4 + 104);
  v35(v10, v33, v3);
  v82 = v34;
  LOBYTE(v34) = sub_23AA0D5E4();
  v36 = *(v4 + 8);
  v81 = v4 + 8;
  v78 = v36;
  v36(v10, v3);
  v28 = v20;
  v37 = v83;
  if (v34)
  {
    v38 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
    swift_beginAccess();
    sub_23A9E3260(v37 + v38, v28, MEMORY[0x277D82DB0]);
    v35(v17, v33, v3);
    (*(v4 + 56))(v17, 0, 2, v3);
    v39 = sub_23AA0D5D4();
    v40 = MEMORY[0x277D82DB0];
    sub_23A9E2ED0(v17, MEMORY[0x277D82DB0]);
    sub_23A9E2ED0(v28, v40);
    if ((v39 & 1) == 0)
    {
      v41 = sub_23AA0CE54();
      v42 = sub_23AA0D484();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_23A8B4000, v41, v42, "Resetting bad tracking failure reports (relocalization just started)", v43, 2u);
        v37 = v83;
        MEMORY[0x23EE91710](v43, -1, -1);
      }

      *(v37 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = 0;
    }
  }

  v25 = &unk_27DFC0000;
  v44 = *(v37 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount);
  if (__OFADD__(v44, 1))
  {
    __break(1u);
    return;
  }

  *(v37 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingFailureReportCount) = v44 + 1;
  v45 = [*(v37 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingStateOrdinalFormatter) stringFromInteger_];
  if (v45)
  {
    v46 = v45;
    v77 = sub_23AA0D134();
    v48 = v47;
  }

  else
  {
    v77 = 0;
    v48 = 0xE000000000000000;
  }

  v49 = v82;
  v50 = v79;
  (*(v4 + 16))(v79, v82, v3);

  v51 = sub_23AA0CE54();
  v52 = v50;
  v53 = sub_23AA0D484();

  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v84[0] = v55;
    *v54 = 136315394;
    v56 = sub_23A9CE734();
    v58 = v57;
    v59 = v3;
    v79 = v3;
    v60 = v78;
    v78(v52, v59);
    v61 = sub_23A9A65A4(v56, v58, v84);

    *(v54 + 4) = v61;
    *(v54 + 12) = 2080;
    v62 = sub_23A9A65A4(v77, v48, v84);

    *(v54 + 14) = v62;
    _os_log_impl(&dword_23A8B4000, v51, v53, "Reported bad tracking (%s) for the %s time", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE91710](v55, -1, -1);
    v63 = v54;
    v25 = &unk_27DFC0000;
    MEMORY[0x23EE91710](v63, -1, -1);

    v60(v82, v79);
  }

  else
  {

    v64 = v52;
    v65 = v78;
    v78(v64, v3);
    v65(v49, v3);
  }

  a1 = v80;
  v27 = v83;
LABEL_24:
  sub_23A9E3260(a1, v28, MEMORY[0x277D82DB0]);
  v66 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState;
  swift_beginAccess();
  sub_23A9E355C(v28, v27 + v66, MEMORY[0x277D82DB0]);
  swift_endAccess();
  v67 = v25[358];
  if (*(v27 + v67) >= 601)
  {
    v68 = sub_23AA0CE54();
    v69 = sub_23AA0D494();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_23A8B4000, v68, v69, "[reportTrackingState] Too many bad tracking reports. Ending RoomCaptureSession...", v70, 2u);
      MEMORY[0x23EE91710](v70, -1, -1);
    }

    *(v27 + v67) = 0;
    sub_23A9DE13C();
    v71 = swift_allocError();
    *v72 = 1;
    v73 = *(v27 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error);
    *(v27 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_error) = v71;

    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    LOBYTE(v84[0]) = 1;
    v74 = sub_23AA0D1A4();
    sub_23A955B84(v74, v75);

    sub_23A9CB5E0(1);
  }
}

uint64_t sub_23A9CE734()
{
  v1 = v0;
  v2 = sub_23AA0D5F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D82D90])
  {
    return 0x696C616974696E69;
  }

  if (v8 == *MEMORY[0x277D82DA0])
  {
    return 0xD000000000000010;
  }

  if (v8 == *MEMORY[0x277D82DA8])
  {
    return 0xD000000000000015;
  }

  if (v8 == *MEMORY[0x277D82D98])
  {
    return 0x696C61636F6C6572;
  }

  (*(v3 + 8))(v7, v2);
  return 0x206E776F6E6B6E75;
}

id sub_23A9CE91C()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v1 = (v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  result = swift_beginAccess();
  if (v1[1])
  {
    v3 = *v1;
    v4 = objc_opt_self();

    v5 = [v4 defaultManager];
    v6 = sub_23AA0D104();
    v7 = [v5 fileExistsAtPath_];

    if (v7)
    {
      v8 = [v4 defaultManager];
      v9 = sub_23AA0D104();

      v13[0] = 0;
      v10 = [v8 removeItemAtPath:v9 error:v13];

      if (v10)
      {
        result = v13[0];
      }

      else
      {
        v11 = v13[0];
        sub_23AA0BE74();

        swift_willThrow();
        result = swift_willThrow();
      }
    }

    else
    {
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A9CEABC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v53 = a3;
  v54 = a2;
  v65 = *MEMORY[0x277D85DE8];
  v52 = sub_23AA0BFB4();
  v58 = *(v52 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_23AA0BE94();
  v49 = *(v50 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8D6C58(0, &qword_27DFB1450, 0x277CBEB38);
  v8 = sub_23AA0D464();
  *&v63 = 0x737463656A626FLL;
  *(&v63 + 1) = 0xE700000000000000;
  v9 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = sub_23A8D6C58(0, &qword_27DFB1458, 0x277CBEB18);
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8EF9F0(&v61, &v63);
  sub_23A8D6C58(0, &unk_27DFB1460, 0x277CBEA60);
  swift_dynamicCast();
  v11 = v60;
  v56 = v10;
  v55 = sub_23AA0D5C4();

  v12 = sub_23AA0D464();
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  *&v63 = 0x737463656A626FLL;
  *(&v63 + 1) = 0xE700000000000000;
  [v12 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  *&v63 = 0x737463656A626FLL;
  *(&v63 + 1) = 0xE700000000000000;
  v14 = sub_23AA0DC04();
  v48 = v12;
  v15 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8EF9F0(&v61, &v63);
  swift_dynamicCast();
  v57 = v60;
  v47 = v8;
  v16 = sub_23AA0D464();
  v17 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  *&v63 = 0x737463656A626FLL;
  *(&v63 + 1) = 0xE700000000000000;
  [v16 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  *&v63 = 0x737463656A626FLL;
  *(&v63 + 1) = 0xE700000000000000;
  v18 = [v16 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v18)
  {
    goto LABEL_30;
  }

  v46 = v16;
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8EF9F0(&v61, &v63);
  swift_dynamicCast();
  v56 = v60;
  sub_23AA0D5B4();
  sub_23AA0BE84();
  v19 = v58;
  if (v64)
  {
    while (1)
    {
      sub_23A8EF9F0(&v63, &v61);
      sub_23A8D6C58(0, &qword_27DFB1448, 0x277CBEAC0);
      swift_dynamicCast();
      v20 = v60;
      *&v61 = 0x69645F7365786F62;
      *(&v61 + 1) = 0xEA00000000007463;
      v21 = [v60 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v21)
      {
        break;
      }

      sub_23AA0D704();
      swift_unknownObjectRelease();
      sub_23A8EF9F0(&v60, &v61);
      swift_dynamicCast();
      v22 = v59;
      if (qword_27DFAE4D0 != -1)
      {
        swift_once();
      }

      v23 = [v22 objectForKey_];
      v19 = v58;
      if (v23)
      {
        sub_23AA0D704();
        swift_unknownObjectRelease();
        sub_23A8D50D0(&v61, &unk_27DFB08E0, &qword_23AA13038);
        [v57 addObject_];
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
        sub_23A8D50D0(&v61, &unk_27DFB08E0, &qword_23AA13038);
      }

      if (qword_27DFAE4D8 != -1)
      {
        swift_once();
      }

      if ([v22 objectForKey_])
      {
        sub_23AA0D704();
        swift_unknownObjectRelease();
        sub_23A8D50D0(&v61, &unk_27DFB08E0, &qword_23AA13038);
        [v56 addObject_];
      }

      else
      {

        v61 = 0u;
        v62 = 0u;
        sub_23A8D50D0(&v61, &unk_27DFB08E0, &qword_23AA13038);
      }

      sub_23AA0BE84();
      if (!v64)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_18:
  (*(v49 + 8))(v7, v50);
  v25 = v53;
  v24 = v54;
  *&v63 = v54;
  *(&v63 + 1) = v53;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0xD00000000000001BLL, 0x800000023AA23710);

  *&v63 = v24;
  *(&v63 + 1) = v25;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0xD00000000000001BLL, 0x800000023AA23730);

  v26 = v51;
  sub_23AA0BEE4();

  v27 = sub_23AA0BF14();
  v28 = *(v19 + 8);
  v29 = v52;
  v28(v26, v52);
  *&v63 = 0;
  v30 = v48;
  v31 = [v48 writeToURL:v27 error:&v63];

  v32 = v63;
  if (v31)
  {
    sub_23AA0BEE4();

    v33 = sub_23AA0BF14();
    v28(v26, v29);
    *&v63 = 0;
    v34 = v46;
    v35 = [v46 writeToURL:v33 error:&v63];

    v36 = v63;
    v37 = v47;
    if (v35)
    {

      goto LABEL_26;
    }

    v38 = v36;
  }

  else
  {
    v38 = v32;

    v37 = v47;
    v34 = v46;
  }

  v39 = sub_23AA0BE74();

  swift_willThrow();

  v40 = sub_23AA0CE54();
  v41 = sub_23AA0D494();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v63 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_23A9A65A4(v54, v25, &v63);
    _os_log_impl(&dword_23A8B4000, v40, v41, "Unable to log fp_output_wi_beautify.plist or fp_output_no_beautify.plist to %s!", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x23EE91710](v43, -1, -1);
    MEMORY[0x23EE91710](v42, -1, -1);
  }

LABEL_26:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23A9CF53C(__int128 *a1, uint64_t a2)
{
  v5 = sub_23AA0CEC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23AA0CF24();
  v36 = *(v38 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapturedRoom(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v43 = a1[2];
  v44 = v16;
  v45 = a1[4];
  v17 = a1[1];
  v41 = *a1;
  v42 = v17;
  v18 = (v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
  swift_beginAccess();
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v35 = *(v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue);
    sub_23A9E3260(a2, &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
    v21 = (*(v13 + 80) + 96) & ~*(v13 + 80);
    v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = v6;
    v23 = swift_allocObject();
    v24 = v44;
    v23[3] = v43;
    v23[4] = v24;
    v23[5] = v45;
    v25 = v42;
    v23[1] = v41;
    v23[2] = v25;
    sub_23A9E35C4(v15, v23 + v21, type metadata accessor for CapturedRoom);
    *(v23 + v22) = v2;
    v26 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v20;
    v26[1] = v19;
    aBlock[4] = sub_23A9E31C0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_264;
    v27 = _Block_copy(aBlock);

    sub_23A9ACA9C(&v41, v39);

    sub_23AA0CEE4();
    v39[0] = MEMORY[0x277D84F90];
    sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    v28 = v37;
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v11, v28, v27);
    _Block_release(v27);
    (*(v34 + 8))(v28, v5);
    (*(v36 + 8))(v11, v38);
  }

  else
  {
    v30 = v2 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v31 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v31 + 40))(ObjectType, v31);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_23A9CF9EC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v54 = a4;
  v55 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_23AA0BFB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v45 - v17;
  MEMORY[0x28223BE20](v18);
  v51 = &v45 - v19;
  MEMORY[0x28223BE20](v20);
  v53 = &v45 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1440, qword_23AA1B288);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23AA10FC0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 32) = 0x656D61726679656BLL;
  *(v22 + 40) = 0xE900000000000073;
  v24 = *a1;
  sub_23AA0C0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
  sub_23A9BACF4(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
  v25 = sub_23AA0D024();
  v26 = RSKeyframeSequenceToDictionary();

  if (v26)
  {
    v27 = sub_23AA0D034();

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF2B0, &unk_23AA13040);
    *&v57 = v27;
    sub_23A8EF9F0(&v57, (v22 + 64));
  }

  else
  {
    *(v22 + 88) = v23;
    *(v22 + 64) = 0x6575716553206F4ELL;
    *(v22 + 72) = 0xEB0000000065636ELL;
  }

  sub_23A8D6C58(0, &qword_27DFB1448, 0x277CBEAC0);
  v28 = sub_23AA0D474();
  v29 = type metadata accessor for CapturedRoom(0);
  sub_23A8D5194(v55 + *(v29 + 60), &v57, &unk_27DFB1140, &qword_23AA19C10);
  if (!v58)
  {
    sub_23A8D50D0(&v57, &unk_27DFB1140, &qword_23AA19C10);
    __break(1u);
    goto LABEL_12;
  }

  v49 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
  sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = v11;
  v30 = v56;
  v31 = [v56 dictionaryRepresentation];

  if (!v31)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v47 = v28;
  v32 = v54;
  sub_23A9D0A9C(v28, v31, v54, a5, 0);
  v46 = v31;
  sub_23A9CEABC(v31, v32, a5);
  v45 = a3;
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_23AA0D8A4();

  *&v57 = v32;
  *(&v57 + 1) = a5;
  MEMORY[0x23EE8FCA0](0x6C70726F6F6C662FLL, 0xEF7A6473752E6E61);
  sub_23AA0BEE4();

  v33 = v50;
  sub_23AA0BF34();
  v34 = v51;
  sub_23AA0BF54();
  v35 = *(v13 + 8);
  v36 = v33;
  v37 = v49;
  v35(v36, v49);
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_23AA0D8A4();

  *&v57 = v32;
  *(&v57 + 1) = a5;
  MEMORY[0x23EE8FCA0](0x6C70726F6F6C662FLL, 0xEF7A6473752E6E61);
  v38 = v52;
  sub_23AA0BEE4();

  v39 = v48;
  (*(v13 + 16))(v48, v34, v37);
  (*(v13 + 56))(v39, 0, 1, v37);
  sub_23A967070(v38, v39, 0, 0, 2);
  sub_23A8D50D0(v39, &qword_27DFAF210, &qword_23AA12EE8);
  v35(v38, v37);
  v35(v34, v37);
  v35(v53, v37);
  v40 = v45;
  v41 = v47;
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_23AA0D8A4();

  *&v57 = v54;
  *(&v57 + 1) = a5;
  MEMORY[0x23EE8FCA0](0xD000000000000012, 0x800000023AA236F0);
  sub_23A9AC460(v55, v57, *(&v57 + 1));

  v42 = v40 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v42 + 8);
    ObjectType = swift_getObjectType();
    (*(v43 + 40))(ObjectType, v43);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_23A9D036C()
{
  v1 = sub_23AA0CEC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0CF24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) == 1)
  {
    v11 = (v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory);
    swift_beginAccess();
    v12 = v11[1];
    if (v12)
    {
      v17 = v2;
      v13 = *v11;
      v16 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_saveFileQueue);
      v14 = swift_allocObject();
      v14[2] = v0;
      v14[3] = v13;
      v14[4] = v12;
      aBlock[4] = sub_23A9E3038;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23A9AD0B8;
      aBlock[3] = &block_descriptor_258;
      v15 = _Block_copy(aBlock);

      sub_23AA0CEE4();
      v18 = MEMORY[0x277D84F90];
      sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
      sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
      sub_23AA0D764();
      MEMORY[0x23EE8FFE0](0, v10, v5, v15);
      _Block_release(v15);
      (*(v17 + 8))(v5, v1);
      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_23A9D0680(uint64_t a1, void *a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanGenerator);
  if (!v12)
  {
    __break(1u);
  }

  v13 = [v12 getDebugInfo];
  if (v13)
  {
    v14 = v13;
    v39[0] = v7;
    v39[1] = a1;
    v40 = a2;
    v41 = a3;

    MEMORY[0x23EE8FCA0](0x6576694C2FLL, 0xE500000000000000);
    v16 = v40;
    v15 = v41;
    v17 = objc_opt_self();
    v18 = [v17 defaultManager];
    v19 = sub_23AA0D104();
    v20 = [v18 fileExistsAtPath_];

    if (v20)
    {
      goto LABEL_6;
    }

    v21 = [v17 defaultManager];
    v22 = sub_23AA0D104();
    v40 = 0;
    v23 = [v21 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v40];

    if (v23)
    {
      v24 = v40;
LABEL_6:
      v25 = objc_opt_self();
      v40 = 0;
      v26 = [v25 dataWithPropertyList:v14 format:200 options:0 error:&v40];
      v27 = v40;
      if (v26)
      {
        v28 = sub_23AA0BFE4();
        v30 = v29;

        v40 = 0;
        v41 = 0xE000000000000000;
        sub_23AA0D8A4();

        v40 = v16;
        v41 = v15;
        MEMORY[0x23EE8FCA0](0xD000000000000010, 0x800000023AA236D0);
        sub_23AA0BEE4();

        sub_23AA0BFF4();
        (*(v39[0] + 8))(v11, v6);

        sub_23A8EFA00(v28, v30);
      }

      else
      {
        v31 = v27;

        v32 = sub_23AA0BE74();

        swift_willThrow();
      }

      goto LABEL_12;
    }

    v33 = v40;

    v34 = sub_23AA0BE74();

    swift_willThrow();
    v35 = sub_23AA0CE54();
    v36 = sub_23AA0D494();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23A8B4000, v35, v36, "Could not write to RSC debug log", v37, 2u);
      MEMORY[0x23EE91710](v37, -1, -1);
    }
  }

LABEL_12:
  v38 = *MEMORY[0x277D85DE8];
}

void sub_23A9D0A9C(void *a1, void *a2, void *a3, unint64_t a4, int a5)
{
  LODWORD(v105) = a5;
  v104 = a1;
  v109 = *MEMORY[0x277D85DE8];
  v8 = sub_23AA0BFB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23AA0C064();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 && a4 == 0xE000000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {
    goto LABEL_33;
  }

  v101 = v8;
  v102 = v9;
  v97 = a2;
  v103 = objc_opt_self();
  v18 = [v103 defaultManager];
  v19 = sub_23AA0D104();
  v20 = [v18 fileExistsAtPath_];

  if ((v20 & 1) == 0)
  {
    v21 = [v103 defaultManager];
    v22 = sub_23AA0D104();
    v107 = 0;
    v23 = [v21 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:&v107];

    if (v23)
    {
      v24 = v107;
    }

    else
    {
      v25 = v107;
      v26 = sub_23AA0BE74();

      swift_willThrow();

      v27 = sub_23AA0CE54();
      v28 = sub_23AA0D494();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v100 = v27;
        v30 = v29;
        v31 = swift_slowAlloc();
        v107 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_23A9A65A4(a3, a4, &v107);
        v32 = v28;
        v33 = v100;
        _os_log_impl(&dword_23A8B4000, v100, v32, "Unable to create folder %s!", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x23EE91710](v31, -1, -1);
        MEMORY[0x23EE91710](v30, -1, -1);
      }

      else
      {
      }
    }
  }

  v107 = a3;
  v108 = a4;

  MEMORY[0x23EE8FCA0](0x6576694C2FLL, 0xE500000000000000);
  v35 = v107;
  v34 = v108;
  v99 = v107;
  v100 = v108;
  if (v105)
  {
    v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v37 = sub_23AA0D104();
    v96 = v36;
    [v36 setDateFormat_];

    sub_23AA0C054();
    v38 = sub_23AA0C034();
    (*(v14 + 8))(v17, v13);
    v39 = [v36 stringFromDate_];

    v40 = sub_23AA0D134();
    v89 = v40;
    v88 = v41;

    v42 = objc_opt_self();
    v95 = v12;
    v43 = v42;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF598, &qword_23AA18B40);
    v44 = swift_allocObject();
    v92 = xmmword_23AA11C10;
    *(v44 + 16) = xmmword_23AA11C10;
    *(v44 + 32) = v35;
    *(v44 + 40) = v34;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
    v45 = v34;
    v46 = swift_allocObject();
    v90 = xmmword_23AA10FC0;
    *(v46 + 16) = xmmword_23AA10FC0;
    *(v46 + 56) = MEMORY[0x277D837D0];
    v47 = sub_23A9165A8();
    *(v46 + 64) = v47;
    v94 = a3;
    v48 = v88;
    *(v46 + 32) = v40;
    *(v46 + 40) = v48;

    *(v44 + 48) = sub_23AA0D164();
    *(v44 + 56) = v49;
    v50 = sub_23AA0D2E4();

    v51 = v43;
    v52 = [v43 pathWithComponents_];

    v98 = sub_23AA0D134();
    v53 = swift_allocObject();
    *(v53 + 16) = v92;
    *(v53 + 32) = v99;
    *(v53 + 40) = v45;
    v54 = swift_allocObject();
    *(v54 + 16) = v90;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = v47;
    *(v54 + 32) = v89;
    *(v54 + 40) = v48;
    a3 = v94;

    *(v53 + 48) = sub_23AA0D164();
    *(v53 + 56) = v55;
    v56 = sub_23AA0D2E4();

    v12 = v95;
    v57 = [v51 pathWithComponents_];

    v58 = sub_23AA0D134();
    v60 = v59;
  }

  else
  {
    v107 = a3;
    v108 = a4;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](0x7475706E695F7066, 0xEE007473696C702ELL);

    v98 = v107;
    v107 = a3;
    v108 = a4;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](0x757074756F5F7066, 0xEF7473696C702E74);

    v58 = v107;
    v60 = v108;
  }

  v61 = v102;
  v62 = v103;
  if (*(v106 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) == 1)
  {
    v96 = v58;
    v103 = v60;
    v63 = [v62 defaultManager];
    v64 = sub_23AA0D104();
    v65 = [v63 fileExistsAtPath_];

    if (v65)
    {
    }

    else
    {
      v66 = [v62 defaultManager];
      v67 = sub_23AA0D104();

      v107 = 0;
      v68 = [v66 createDirectoryAtPath:v67 withIntermediateDirectories:1 attributes:0 error:&v107];

      if (!v68)
      {
        v81 = v107;

        v75 = sub_23AA0BE74();

        goto LABEL_30;
      }

      v69 = v107;
    }

    v61 = v102;
  }

  else
  {
  }

  sub_23AA0BEE4();

  v70 = sub_23AA0BF14();
  v71 = *(v61 + 8);
  v71(v12, v101);
  v107 = 0;
  v72 = [v104 writeToURL:v70 error:&v107];

  if (!v72)
  {
    v74 = v107;

    v75 = sub_23AA0BE74();

LABEL_30:
    swift_willThrow();

    v83 = sub_23AA0CE54();
    v84 = sub_23AA0D494();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v107 = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_23A9A65A4(a3, a4, &v107);
      _os_log_impl(&dword_23A8B4000, v83, v84, "Unable to log input and output to %s!", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x23EE91710](v86, -1, -1);
      MEMORY[0x23EE91710](v85, -1, -1);
    }

    goto LABEL_33;
  }

  v73 = v107;
  if (v105)
  {

LABEL_33:
    v87 = *MEMORY[0x277D85DE8];
    return;
  }

  sub_23AA0BEE4();

  v76 = sub_23AA0BF14();
  v71(v12, v101);
  v107 = 0;
  v77 = [v97 writeToURL:v76 error:&v107];

  v78 = v107;
  if (!v77)
  {
    v105 = v107;
    v82 = v107;
    v75 = sub_23AA0BE74();

    goto LABEL_30;
  }

  v79 = *MEMORY[0x277D85DE8];

  v80 = v78;
}

uint64_t RoomCaptureSession.deinit()
{
  sub_23A8E9694(v0 + 24);
  sub_23A8E9694(v0 + 40);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_recordFileUrl, &qword_27DFAF210, &qword_23AA12EE8);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_replayFileUrl, &qword_27DFAF210, &qword_23AA12EE8);
  sub_23A8E9694(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_spiReplayDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_loggingDirectory + 8);

  sub_23A8E9694(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate);
  sub_23A8E9694(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate);
  v2 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_logger;
  v3 = sub_23AA0CE84();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession____lazy_storage___iuLogManager);

  v5 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_keyframes);

  sub_23A9E2ED0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel, type metadata accessor for CapturedRoom);
  v6 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces);

  v7 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToObjects);

  v8 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_detectedObjects);

  v9 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls);

  v10 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);

  v11 = *(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);

  sub_23A9E2ED0(v0 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_trackingState, MEMORY[0x277D82DB0]);
  return v0;
}

uint64_t RoomCaptureSession.__deallocating_deinit()
{
  RoomCaptureSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23A9D1894(void *a1, void *a2)
{
  v4 = sub_23AA0D604();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE498 != -1)
  {
    swift_once();
  }

  v8 = qword_27DFC07E8;
  if (*(qword_27DFC07E8 + 32) == 1)
  {
    v9 = [a1 configuration];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 videoFormat];

      v12 = [v11 framesPerSecond];
    }

    else
    {
      v12 = [a2 renderFramesPerSecond];
    }

    [a2 timestamp];
    v14 = v13;
    v15 = *(v8 + 40);
    v16 = swift_allocObject();
    v16[2] = v8;
    v16[3] = v14;
    v16[4] = v12;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_23A9E2FD0;
    *(v17 + 24) = v16;
    aBlock[4] = sub_23A916670;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23AA08C40;
    aBlock[3] = &block_descriptor_246_0;
    v18 = _Block_copy(aBlock);

    dispatch_sync(v15, v18);
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v21 = result;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9B9314(a2);
    swift_unknownObjectRelease();
  }

  if (*(v21 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_runActive) == 1)
  {
    if (qword_27DFAE460 == -1)
    {
LABEL_13:
      [a2 timestamp];
      sub_23A9552A4(v22);
      if (qword_27DFAE520 != -1)
      {
        swift_once();
      }

      sub_23AA091F4(a2);
      if (qword_27DFAE410 != -1)
      {
        swift_once();
      }

      if (*(qword_27DFC0670 + 32) == 1)
      {
        v23 = sub_23AA08CA4();
        sub_23A915830(v23 | ((HIDWORD(v23) & 1) << 32));
        [a2 timestamp];
        sub_23A915A50(v24);
      }

      v25 = [a2 camera];
      sub_23AA0D614();

      sub_23A9CDB14(v7);
      sub_23A9E2ED0(v7, MEMORY[0x277D82DB0]);
      type metadata accessor for RSFrame();
      swift_allocObject();
      v26 = a2;
      sub_23A9A75E8(v26);
      v28 = v27;

      sub_23A9CCC54(v28);
      type metadata accessor for OUFrame();
      swift_allocObject();
      sub_23A99F9B8(v26);
      sub_23A9CCC7C(v29);
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }
}

uint64_t sub_23A9D1E30(uint64_t a1, void *a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_23A9B6F28(a2);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23A9D2114(void *a1, uint64_t *a2, int a3)
{
  v602 = a3;
  v611 = a1;
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13C8, &qword_23AA1B258);
  v607 = *(v651 - 8);
  v5 = *(v607 + 64);
  MEMORY[0x28223BE20](v651);
  v613 = &v586 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v621 = &v586 - v8;
  MEMORY[0x28223BE20](v9);
  v612 = &v586 - v10;
  MEMORY[0x28223BE20](v11);
  v616 = &v586 - v12;
  MEMORY[0x28223BE20](v13);
  v622 = &v586 - v14;
  MEMORY[0x28223BE20](v15);
  v615 = &v586 - v16;
  MEMORY[0x28223BE20](v17);
  v618 = &v586 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13D0, &qword_23AA1B260);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v586 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v642 = &v586 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB13D8, &qword_23AA1B268);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v586 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v641 = &v586 - v30;
  v660 = sub_23AA0C0E4();
  v657 = *(v660 - 8);
  v31 = *(v657 + 64);
  MEMORY[0x28223BE20](v660);
  v33 = &v586 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v586 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v586 - v38;
  MEMORY[0x28223BE20](v40);
  v590 = &v586 - v41;
  MEMORY[0x28223BE20](v42);
  v594 = &v586 - v43;
  MEMORY[0x28223BE20](v44);
  v624 = &v586 - v45;
  MEMORY[0x28223BE20](v46);
  v591 = &v586 - v47;
  MEMORY[0x28223BE20](v48);
  v595 = &v586 - v49;
  MEMORY[0x28223BE20](v50);
  v625 = &v586 - v51;
  MEMORY[0x28223BE20](v52);
  v592 = &v586 - v53;
  MEMORY[0x28223BE20](v54);
  v596 = &v586 - v55;
  MEMORY[0x28223BE20](v56);
  v626 = &v586 - v57;
  MEMORY[0x28223BE20](v58);
  v593 = &v586 - v59;
  MEMORY[0x28223BE20](v60);
  v597 = &v586 - v61;
  MEMORY[0x28223BE20](v62);
  v627 = &v586 - v63;
  MEMORY[0x28223BE20](v64);
  v589 = &v586 - v65;
  MEMORY[0x28223BE20](v66);
  v599 = &v586 - v67;
  MEMORY[0x28223BE20](v68);
  v619 = &v586 - v69;
  MEMORY[0x28223BE20](v70);
  v610 = &v586 - v71;
  MEMORY[0x28223BE20](v72);
  v645 = &v586 - v73;
  MEMORY[0x28223BE20](v74);
  v637 = &v586 - v75;
  MEMORY[0x28223BE20](v76);
  v652 = (&v586 - v77);
  MEMORY[0x28223BE20](v78);
  v653 = &v586 - v79;
  MEMORY[0x28223BE20](v80);
  v654 = (&v586 - v81);
  MEMORY[0x28223BE20](v82);
  v655 = &v586 - v83;
  MEMORY[0x28223BE20](v84);
  v658 = (&v586 - v85);
  v644 = type metadata accessor for CapturedRoom.Surface(0);
  v659 = *(v644 - 8);
  v86 = *(v659 + 64);
  MEMORY[0x28223BE20](v644);
  v614 = &v586 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v617 = &v586 - v89;
  MEMORY[0x28223BE20](v90);
  v601 = &v586 - v91;
  MEMORY[0x28223BE20](v92);
  v603 = &v586 - v93;
  MEMORY[0x28223BE20](v94);
  v604 = &v586 - v95;
  MEMORY[0x28223BE20](v96);
  v605 = &v586 - v97;
  MEMORY[0x28223BE20](v98);
  v606 = &v586 - v99;
  MEMORY[0x28223BE20](v100);
  v598 = &v586 - v101;
  MEMORY[0x28223BE20](v102);
  v600 = &v586 - v103;
  MEMORY[0x28223BE20](v104);
  v609 = &v586 - v105;
  MEMORY[0x28223BE20](v106);
  v656 = &v586 - v107;
  MEMORY[0x28223BE20](v108);
  v640 = &v586 - v109;
  MEMORY[0x28223BE20](v110);
  v646 = &v586 - v111;
  MEMORY[0x28223BE20](v112);
  v629 = &v586 - v113;
  MEMORY[0x28223BE20](v114);
  v647 = &v586 - v115;
  MEMORY[0x28223BE20](v116);
  v630 = &v586 - v117;
  MEMORY[0x28223BE20](v118);
  v648 = &v586 - v119;
  MEMORY[0x28223BE20](v120);
  v634 = &v586 - v121;
  MEMORY[0x28223BE20](v122);
  v649 = &v586 - v123;
  MEMORY[0x28223BE20](v124);
  v636 = &v586 - v125;
  MEMORY[0x28223BE20](v126);
  v650 = &v586 - v127;
  MEMORY[0x28223BE20](v128);
  v130 = &v586 - v129;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v623 = v39;
  v588 = v36;
  v587 = v33;
  v608 = v22;
  v628 = Strong;
  v132 = *a2;
  v133 = *(*a2 + 16);
  v638 = v28;
  v639 = a2;
  v635 = v133;
  if (v133)
  {
    v134 = 0;
    v633 = *(v644 + 44);
    v632 = v132 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
    v643 = (v657 + 16);
    v631 = (v657 + 8);
    v661 = MEMORY[0x277D84F98];
    v620 = v130;
    while (v134 < *(v132 + 16))
    {
      v3 = *(v659 + 72);
      sub_23A9E3260(v632 + v3 * v134, v130, type metadata accessor for CapturedRoom.Surface);
      v135 = *v643;
      v136 = v658;
      (*v643)(v658, &v130[v633], v660);
      sub_23A9E35C4(v130, v650, type metadata accessor for CapturedRoom.Surface);
      v137 = v661;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v664 = v137;
      v140 = sub_23A9EDD28(v136);
      v141 = v137[2];
      v142 = (v139 & 1) == 0;
      v143 = v141 + v142;
      if (__OFADD__(v141, v142))
      {
        goto LABEL_140;
      }

      v144 = v139;
      if (v661[3] >= v143)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23A90F5DC();
        }
      }

      else
      {
        sub_23A90A908(v143, isUniquelyReferenced_nonNull_native);
        v145 = sub_23A9EDD28(v658);
        if ((v144 & 1) != (v146 & 1))
        {
          goto LABEL_383;
        }

        v140 = v145;
      }

      a2 = v639;
      v661 = v664;
      if (v144)
      {
        sub_23A9E355C(v650, v661[7] + v140 * v3, type metadata accessor for CapturedRoom.Surface);
        (*v631)(v658, v660);
      }

      else
      {
        v147 = v132;
        v148 = v660;
        v149 = v661;
        v132 = v639;
        v661[(v140 >> 6) + 8] |= 1 << v140;
        v150 = v657;
        v151 = v658;
        (v135)(v149[6] + *(v657 + 72) * v140, v658, v148);
        sub_23A9E35C4(v650, v149[7] + v140 * v3, type metadata accessor for CapturedRoom.Surface);
        (*(v150 + 8))(v151, v148);
        v152 = v149[2];
        v153 = __OFADD__(v152, 1);
        v154 = v152 + 1;
        if (v153)
        {
          goto LABEL_149;
        }

        v149[2] = v154;
        a2 = v132;
        v132 = v147;
        v130 = v620;
      }

      if (v635 == ++v134)
      {
        goto LABEL_18;
      }
    }

LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v661 = MEMORY[0x277D84F98];
LABEL_18:
  v156 = a2[1];
  v132 = *(v156 + 16);
  if (v132)
  {
    v157 = 0;
    v158 = *(v644 + 44);
    v650 = v156 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
    v658 = (v657 + 16);
    v643 = (v657 + 8);
    v635 = v158;
    while (v157 < *(v156 + 16))
    {
      v159 = *(v659 + 72);
      v160 = v636;
      sub_23A9E3260(v650 + v159 * v157, v636, type metadata accessor for CapturedRoom.Surface);
      v3 = *v658;
      v161 = v655;
      (*v658)(v655, v160 + v158, v660);
      sub_23A9E35C4(v160, v649, type metadata accessor for CapturedRoom.Surface);
      v162 = v661;
      v163 = swift_isUniquelyReferenced_nonNull_native();
      v664 = v162;
      v164 = sub_23A9EDD28(v161);
      v166 = v162[2];
      v167 = (v165 & 1) == 0;
      v153 = __OFADD__(v166, v167);
      v168 = v166 + v167;
      if (v153)
      {
        goto LABEL_142;
      }

      v169 = v165;
      if (v661[3] >= v168)
      {
        if ((v163 & 1) == 0)
        {
          v179 = v164;
          sub_23A90F5DC();
          v164 = v179;
        }
      }

      else
      {
        sub_23A90A908(v168, v163);
        v164 = sub_23A9EDD28(v655);
        if ((v169 & 1) != (v170 & 1))
        {
          goto LABEL_383;
        }
      }

      v661 = v664;
      if (v169)
      {
        sub_23A9E355C(v649, v661[7] + v164 * v159, type metadata accessor for CapturedRoom.Surface);
        (*v643)(v655, v660);
      }

      else
      {
        v171 = v132;
        v132 = v156;
        v172 = v660;
        v173 = v661;
        v661[(v164 >> 6) + 8] |= 1 << v164;
        v174 = v657;
        v175 = v164;
        v176 = v655;
        (v3)(v173[6] + *(v657 + 72) * v164, v655, v172);
        sub_23A9E35C4(v649, v173[7] + v175 * v159, type metadata accessor for CapturedRoom.Surface);
        (*(v174 + 8))(v176, v172);
        v177 = v173[2];
        v153 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v153)
        {
          goto LABEL_150;
        }

        v661[2] = v178;
        v156 = v132;
        v132 = v171;
        v158 = v635;
      }

      if (v132 == ++v157)
      {
        goto LABEL_32;
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_32:
  v180 = v639[2];
  v181 = *(v180 + 16);
  if (v181)
  {
    v182 = 0;
    v3 = *(v644 + 44);
    v183 = v180 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
    v658 = (v657 + 16);
    v655 = v657 + 8;
    v649 = v183;
    v650 = v3;
    while (v182 < *(v180 + 16))
    {
      v184 = *(v659 + 72);
      v185 = v634;
      sub_23A9E3260(v183 + v184 * v182, v634, type metadata accessor for CapturedRoom.Surface);
      v186 = *v658;
      v132 = v654;
      (*v658)(v654, v185 + v3, v660);
      sub_23A9E35C4(v185, v648, type metadata accessor for CapturedRoom.Surface);
      v187 = v661;
      v188 = swift_isUniquelyReferenced_nonNull_native();
      v664 = v187;
      v189 = sub_23A9EDD28(v132);
      v191 = v187[2];
      v192 = (v190 & 1) == 0;
      v153 = __OFADD__(v191, v192);
      v193 = v191 + v192;
      if (v153)
      {
        goto LABEL_144;
      }

      v132 = v190;
      if (v661[3] >= v193)
      {
        if ((v188 & 1) == 0)
        {
          v202 = v189;
          sub_23A90F5DC();
          v189 = v202;
        }
      }

      else
      {
        sub_23A90A908(v193, v188);
        v189 = sub_23A9EDD28(v654);
        if ((v132 & 1) != (v194 & 1))
        {
          goto LABEL_383;
        }
      }

      v661 = v664;
      if (v132)
      {
        sub_23A9E355C(v648, v661[7] + v189 * v184, type metadata accessor for CapturedRoom.Surface);
        (*v655)(v654, v660);
      }

      else
      {
        v195 = v181;
        v3 = v180;
        v196 = v660;
        v197 = v661;
        v661[(v189 >> 6) + 8] |= 1 << v189;
        v198 = v657;
        v132 = v189;
        v199 = v654;
        v186(v197[6] + *(v657 + 72) * v189, v654, v196);
        sub_23A9E35C4(v648, v197[7] + v132 * v184, type metadata accessor for CapturedRoom.Surface);
        (*(v198 + 8))(v199, v196);
        v200 = v197[2];
        v153 = __OFADD__(v200, 1);
        v201 = v200 + 1;
        if (v153)
        {
          goto LABEL_151;
        }

        v661[2] = v201;
        v180 = v3;
        v181 = v195;
        v183 = v649;
        v3 = v650;
      }

      if (v181 == ++v182)
      {
        goto LABEL_46;
      }
    }

LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

LABEL_46:
  v203 = v639[3];
  v204 = *(v203 + 16);
  if (!v204)
  {
LABEL_60:
    v226 = v639[4];
    v227 = *(v226 + 16);
    if (v227)
    {
      v228 = 0;
      v3 = *(v644 + 44);
      v229 = v226 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
      v658 = (v657 + 16);
      v654 = v3;
      v655 = v657 + 8;
      v653 = v229;
      while (v228 < *(v226 + 16))
      {
        v230 = *(v659 + 72);
        v231 = v629;
        sub_23A9E3260(v229 + v230 * v228, v629, type metadata accessor for CapturedRoom.Surface);
        v232 = *v658;
        v132 = v652;
        (*v658)(v652, v231 + v3, v660);
        sub_23A9E35C4(v231, v646, type metadata accessor for CapturedRoom.Surface);
        v233 = v661;
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v664 = v233;
        v235 = sub_23A9EDD28(v132);
        v237 = v233[2];
        v238 = (v236 & 1) == 0;
        v153 = __OFADD__(v237, v238);
        v239 = v237 + v238;
        if (v153)
        {
          goto LABEL_148;
        }

        v132 = v236;
        if (v661[3] >= v239)
        {
          if ((v234 & 1) == 0)
          {
            v248 = v235;
            sub_23A90F5DC();
            v235 = v248;
          }
        }

        else
        {
          sub_23A90A908(v239, v234);
          v235 = sub_23A9EDD28(v652);
          if ((v132 & 1) != (v240 & 1))
          {
            goto LABEL_383;
          }
        }

        v661 = v664;
        if (v132)
        {
          sub_23A9E355C(v646, v661[7] + v235 * v230, type metadata accessor for CapturedRoom.Surface);
          (*v655)(v652, v660);
        }

        else
        {
          v241 = v227;
          v3 = v226;
          v242 = v660;
          v243 = v661;
          v661[(v235 >> 6) + 8] |= 1 << v235;
          v244 = v657;
          v132 = v235;
          v245 = v652;
          v232(v243[6] + *(v657 + 72) * v235, v652, v242);
          sub_23A9E35C4(v646, v243[7] + v132 * v230, type metadata accessor for CapturedRoom.Surface);
          (*(v244 + 8))(v245, v242);
          v246 = v243[2];
          v153 = __OFADD__(v246, 1);
          v247 = v246 + 1;
          if (v153)
          {
            goto LABEL_153;
          }

          v661[2] = v247;
          v226 = v3;
          v227 = v241;
          v229 = v653;
          v3 = v654;
        }

        if (v227 == ++v228)
        {
          goto LABEL_74;
        }
      }

      goto LABEL_147;
    }

LABEL_74:
    v249 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_allUuidToSurfaces;
    v250 = v628;
    swift_beginAccess();
    v648 = v249;
    v251 = *(v250 + v249);
    v132 = v251 + 64;
    v252 = 1 << *(v251 + 32);
    v253 = -1;
    if (v252 < 64)
    {
      v253 = ~(-1 << v252);
    }

    v254 = v253 & *(v251 + 64);
    v3 = (v252 + 63) >> 6;
    v654 = (v657 + 16);
    v655 = v657 + 32;
    v649 = v251;
    v650 = v607 + 48;
    v652 = (v607 + 56);
    v653 = v659 + 56;
    v658 = (v657 + 8);

    v255 = 0;
    v647 = MEMORY[0x277D84F98];
    v256 = v638;
LABEL_77:
    v257 = v255;
    v258 = v641;
    if (v254)
    {
      while (1)
      {
        v259 = v257;
LABEL_86:
        v262 = __clz(__rbit64(v254));
        v254 &= v254 - 1;
        v263 = v262 | (v259 << 6);
        v264 = v649;
        v265 = v657;
        v266 = v637;
        v267 = v660;
        (*(v657 + 16))(v637, *(v649 + 48) + *(v657 + 72) * v263, v660);
        v268 = *(v264 + 56) + *(v659 + 72) * v263;
        v269 = v640;
        sub_23A9E3260(v268, v640, type metadata accessor for CapturedRoom.Surface);
        v270 = v651;
        v271 = *(v651 + 48);
        v272 = *(v265 + 32);
        v256 = v638;
        v272(v638, v266, v267);
        sub_23A9E35C4(v269, v256 + v271, type metadata accessor for CapturedRoom.Surface);
        v273 = 0;
        v255 = v259;
        v258 = v641;
        v261 = v645;
LABEL_87:
        (*v652)(v256, v273, 1, v270);
        sub_23A930208(v256, v258, &qword_27DFB13D8, &qword_23AA1B268);
        if ((*v650)(v258, 1, v270) == 1)
        {
          break;
        }

        v274 = *(v270 + 48);
        (*v655)(v261, v258, v660);
        sub_23A9E35C4(v258 + v274, v656, type metadata accessor for CapturedRoom.Surface);
        if (!v661[2] || (v275 = sub_23A9EDD28(v261), (v276 & 1) == 0))
        {
          v280 = v642;
          (*v653)(v642, 1, 1, v644);
          sub_23A8D50D0(v280, &qword_27DFB13D0, &qword_23AA1B260);
          v281 = *v654;
          v282 = v261;
          v283 = v610;
          (*v654)(v610, v282, v660);
          sub_23A9E3260(v656, v609, type metadata accessor for CapturedRoom.Surface);
          v284 = v647;
          v285 = swift_isUniquelyReferenced_nonNull_native();
          v663 = v284;
          v286 = sub_23A9EDD28(v283);
          v288 = *(v284 + 16);
          v289 = (v287 & 1) == 0;
          v153 = __OFADD__(v288, v289);
          v290 = v288 + v289;
          if (v153)
          {
            goto LABEL_156;
          }

          v291 = v287;
          if (*(v284 + 24) >= v290)
          {
            if ((v285 & 1) == 0)
            {
              v303 = v286;
              sub_23A90F5DC();
              v286 = v303;
            }
          }

          else
          {
            sub_23A90A908(v290, v285);
            v286 = sub_23A9EDD28(v610);
            if ((v291 & 1) != (v292 & 1))
            {
              goto LABEL_383;
            }
          }

          v293 = v663;
          v647 = v663;
          if (v291)
          {
            sub_23A9E355C(v609, *(v663 + 56) + *(v659 + 72) * v286, type metadata accessor for CapturedRoom.Surface);
            v294 = *v658;
            v295 = v660;
            (*v658)(v610, v660);
            sub_23A9E2ED0(v656, type metadata accessor for CapturedRoom.Surface);
            v294(v645, v295);
          }

          else
          {
            *(v663 + 8 * (v286 >> 6) + 64) |= 1 << v286;
            v296 = v657;
            v297 = v293[6] + *(v657 + 72) * v286;
            v646 = v286;
            v298 = v610;
            v299 = v660;
            v281(v297, v610, v660);
            sub_23A9E35C4(v609, v293[7] + *(v659 + 72) * v646, type metadata accessor for CapturedRoom.Surface);
            v300 = *(v296 + 8);
            v300(v298, v299);
            sub_23A9E2ED0(v656, type metadata accessor for CapturedRoom.Surface);
            v300(v645, v299);
            v301 = v293[2];
            v153 = __OFADD__(v301, 1);
            v302 = v301 + 1;
            if (v153)
            {
              goto LABEL_157;
            }

            v293[2] = v302;
          }

          goto LABEL_77;
        }

        v277 = v659;
        v278 = v261;
        v279 = v642;
        sub_23A9E3260(v661[7] + *(v659 + 72) * v275, v642, type metadata accessor for CapturedRoom.Surface);
        (*(v277 + 56))(v279, 0, 1, v644);
        sub_23A9E2ED0(v656, type metadata accessor for CapturedRoom.Surface);
        (*v658)(v278, v660);
        sub_23A8D50D0(v279, &qword_27DFB13D0, &qword_23AA1B260);
        v257 = v255;
        if (!v254)
        {
          goto LABEL_79;
        }
      }

      if (*(v628 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 3) != 1)
      {
        v655 = MEMORY[0x277D84F98];
        v656 = MEMORY[0x277D84F98];
        goto LABEL_161;
      }

      v304 = v611;
      v305 = [v611 walls];
      sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
      v306 = sub_23AA0D2F4();

      v307 = [v304 curvedWalls];
      sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
      v308 = sub_23AA0D2F4();

      v309 = sub_23A9FC7E8(v308);

      v663 = v306;
      sub_23A912898(v309);
      v132 = v663;
      v3 = v663 & 0xFFFFFFFFFFFFFF8;
      if (v663 >> 62)
      {
        goto LABEL_158;
      }

      v310 = *((v663 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v310)
      {
        goto LABEL_106;
      }

      goto LABEL_159;
    }

LABEL_79:
    if (v3 <= v257 + 1)
    {
      v260 = v257 + 1;
    }

    else
    {
      v260 = v3;
    }

    v255 = v260 - 1;
    v261 = v645;
    while (1)
    {
      v259 = v257 + 1;
      if (__OFADD__(v257, 1))
      {
        break;
      }

      if (v259 >= v3)
      {
        v254 = 0;
        v273 = 1;
        v270 = v651;
        goto LABEL_87;
      }

      v254 = *(v132 + 8 * v259);
      ++v257;
      if (v254)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_139;
  }

  v205 = 0;
  v3 = *(v644 + 44);
  v206 = v203 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
  v658 = (v657 + 16);
  v654 = v3;
  v655 = v657 + 8;
  v650 = v206;
  while (v205 < *(v203 + 16))
  {
    v207 = *(v659 + 72);
    v208 = v630;
    sub_23A9E3260(v206 + v207 * v205, v630, type metadata accessor for CapturedRoom.Surface);
    v209 = *v658;
    v132 = v653;
    (*v658)(v653, v208 + v3, v660);
    sub_23A9E35C4(v208, v647, type metadata accessor for CapturedRoom.Surface);
    v210 = v661;
    v211 = swift_isUniquelyReferenced_nonNull_native();
    v664 = v210;
    v212 = sub_23A9EDD28(v132);
    v214 = v210[2];
    v215 = (v213 & 1) == 0;
    v153 = __OFADD__(v214, v215);
    v216 = v214 + v215;
    if (v153)
    {
      goto LABEL_146;
    }

    v132 = v213;
    if (v661[3] >= v216)
    {
      if ((v211 & 1) == 0)
      {
        v225 = v212;
        sub_23A90F5DC();
        v212 = v225;
      }
    }

    else
    {
      sub_23A90A908(v216, v211);
      v212 = sub_23A9EDD28(v653);
      if ((v132 & 1) != (v217 & 1))
      {
        goto LABEL_383;
      }
    }

    v661 = v664;
    if (v132)
    {
      sub_23A9E355C(v647, v661[7] + v212 * v207, type metadata accessor for CapturedRoom.Surface);
      (*v655)(v653, v660);
    }

    else
    {
      v218 = v204;
      v3 = v203;
      v219 = v660;
      v220 = v661;
      v661[(v212 >> 6) + 8] |= 1 << v212;
      v221 = v657;
      v132 = v212;
      v222 = v653;
      v209(v220[6] + *(v657 + 72) * v212, v653, v219);
      sub_23A9E35C4(v647, v220[7] + v132 * v207, type metadata accessor for CapturedRoom.Surface);
      (*(v221 + 8))(v222, v219);
      v223 = v220[2];
      v153 = __OFADD__(v223, 1);
      v224 = v223 + 1;
      if (v153)
      {
        goto LABEL_152;
      }

      v661[2] = v224;
      v203 = v3;
      v204 = v218;
      v3 = v654;
      v206 = v650;
    }

    if (v204 == ++v205)
    {
      goto LABEL_60;
    }
  }

LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    v310 = sub_23AA0D7F4();
    if (!v310)
    {
      break;
    }

LABEL_106:
    v311 = 0;
    v655 = MEMORY[0x277D84F98];
    v656 = MEMORY[0x277D84F98];
LABEL_107:
    v312 = v311;
    while (1)
    {
      if ((v132 & 0xC000000000000001) != 0)
      {
        v313 = MEMORY[0x23EE90360](v312, v132);
      }

      else
      {
        if (v312 >= *(v3 + 16))
        {
          goto LABEL_155;
        }

        v313 = *(v132 + 8 * v312 + 32);
      }

      v314 = v313;
      v311 = v312 + 1;
      if (__OFADD__(v312, 1))
      {
        break;
      }

      v315 = [v313 identifier];
      if (!v315)
      {
        goto LABEL_370;
      }

      v316 = v315;
      v317 = v619;
      sub_23AA0C0A4();

      if (v661[2])
      {
        v318 = sub_23A9EDD28(v317);
        if (v319)
        {
          v320 = *(v659 + 72);
          sub_23A9E3260(v661[7] + v320 * v318, v600, type metadata accessor for CapturedRoom.Surface);
          v321 = *v658;
          (*v658)(v317, v660);
          if ([v314 individualUpdate])
          {
            if ([v314 individualUpdate] == 1 || (v602 & 1) != 0)
            {
              v652 = v321;
              v335 = [v314 identifier];
              if (!v335)
              {
                goto LABEL_382;
              }

              v336 = v335;
              v337 = v589;
              sub_23AA0C0A4();

              v338 = v600;
              v339 = v640;
              sub_23A9E3260(v600, v640, type metadata accessor for CapturedRoom.Surface);
              v340 = v655;
              v341 = swift_isUniquelyReferenced_nonNull_native();
              v663 = v340;
              sub_23A9DB384(v339, v337, v341);

              (v652)(v337, v660);
              sub_23A9E2ED0(v338, type metadata accessor for CapturedRoom.Surface);
              v655 = v663;
            }

            else
            {
              sub_23A9E2ED0(v600, type metadata accessor for CapturedRoom.Surface);
            }
          }

          else
          {
            v652 = v321;
            v323 = [v314 identifier];
            if (!v323)
            {
              goto LABEL_381;
            }

            v324 = v323;
            v325 = v599;
            sub_23AA0C0A4();

            sub_23A9E3260(v600, v598, type metadata accessor for CapturedRoom.Surface);
            v326 = v656;
            v327 = swift_isUniquelyReferenced_nonNull_native();
            v663 = v326;
            v328 = sub_23A9EDD28(v325);
            v330 = *(v326 + 16);
            v331 = (v329 & 1) == 0;
            v153 = __OFADD__(v330, v331);
            v332 = v330 + v331;
            if (v153)
            {
              __break(1u);
              goto LABEL_364;
            }

            if (*(v326 + 24) >= v332)
            {
              if ((v327 & 1) == 0)
              {
                v349 = v328;
                v350 = v329;
                sub_23A90F5DC();
                v329 = v350;
                v328 = v349;
              }
            }

            else
            {
              v333 = v329;
              sub_23A90A908(v332, v327);
              v328 = sub_23A9EDD28(v599);
              if ((v333 & 1) != (v334 & 1))
              {
                goto LABEL_383;
              }

              v329 = v333;
            }

            v342 = v663;
            v656 = v663;
            if (v329)
            {
              sub_23A9E355C(v598, *(v663 + 56) + v328 * v320, type metadata accessor for CapturedRoom.Surface);

              (v652)(v599, v660);
              sub_23A9E2ED0(v600, type metadata accessor for CapturedRoom.Surface);
            }

            else
            {
              *(v663 + 8 * (v328 >> 6) + 64) |= 1 << v328;
              v343 = v342[6] + *(v657 + 72) * v328;
              v344 = *(v657 + 16);
              v650 = v328;
              v345 = v599;
              v346 = v660;
              v344(v343, v599, v660);
              sub_23A9E35C4(v598, v342[7] + v650 * v320, type metadata accessor for CapturedRoom.Surface);

              (v652)(v345, v346);
              sub_23A9E2ED0(v600, type metadata accessor for CapturedRoom.Surface);
              v347 = v342[2];
              v153 = __OFADD__(v347, 1);
              v348 = v347 + 1;
              if (v153)
              {
                goto LABEL_366;
              }

              v342[2] = v348;
            }
          }

          if (v311 != v310)
          {
            goto LABEL_107;
          }

          goto LABEL_160;
        }
      }

      (*v658)(v317, v660);

      ++v312;
      if (v311 == v310)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_159:
  v655 = MEMORY[0x277D84F98];
  v656 = MEMORY[0x277D84F98];
LABEL_160:

LABEL_161:
  v351 = v611;
  v352 = [v611 doors];
  v652 = sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
  v353 = sub_23AA0D2F4();

  v354 = [v351 curvedDoors];
  v650 = sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
  v355 = sub_23AA0D2F4();

  v356 = sub_23A9FC7E8(v355);

  v663 = v353;
  sub_23A912898(v356);
  v357 = v663;
  v358 = v663 & 0xFFFFFFFFFFFFFF8;
  if (v663 >> 62)
  {
    goto LABEL_353;
  }

  v359 = *((v663 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v359)
  {
    goto LABEL_163;
  }

LABEL_185:
  while (2)
  {

    v383 = v611;
    v384 = [v611 windows];
    v385 = sub_23AA0D2F4();

    v386 = [v383 curvedWindows];
    v387 = sub_23AA0D2F4();

    v388 = sub_23A9FC7E8(v387);

    v663 = v385;
    sub_23A912898(v388);
    v389 = v663;
    if (v663 >> 62)
    {
      v357 = sub_23AA0D7F4();
      if (!v357)
      {
        goto LABEL_209;
      }
    }

    else
    {
      v357 = *((v663 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v357)
      {
        goto LABEL_209;
      }
    }

    v358 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v390 = v358;
          while (1)
          {
            if ((v389 & 0xC000000000000001) != 0)
            {
              v391 = MEMORY[0x23EE90360](v390, v389);
            }

            else
            {
              if (v390 >= *((v389 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_342;
              }

              v391 = *(v389 + 8 * v390 + 32);
            }

            v392 = v391;
            v358 = v390 + 1;
            if (__OFADD__(v390, 1))
            {
              goto LABEL_341;
            }

            v393 = [v391 identifier];
            if (!v393)
            {
              goto LABEL_365;
            }

            v394 = v393;
            v395 = v626;
            sub_23AA0C0A4();

            if (v661[2])
            {
              v396 = sub_23A9EDD28(v395);
              if (v397)
              {
                break;
              }
            }

            (*v658)(v395, v660);

            ++v390;
            if (v358 == v357)
            {
              goto LABEL_209;
            }
          }

          sub_23A9E3260(v661[7] + *(v659 + 72) * v396, v605, type metadata accessor for CapturedRoom.Surface);
          v398 = *v658;
          (*v658)(v395, v660);
          if ([v392 individualUpdate])
          {
            break;
          }

          v400 = [v392 identifier];
          if (!v400)
          {
            goto LABEL_372;
          }

          v401 = v400;
          v402 = v596;
          sub_23AA0C0A4();

          v403 = v640;
          sub_23A9E3260(v605, v640, type metadata accessor for CapturedRoom.Surface);
          v404 = v656;
          v405 = swift_isUniquelyReferenced_nonNull_native();
          v663 = v404;
          sub_23A9DB384(v403, v402, v405);

          v398(v402, v660);
          sub_23A9E2ED0(v605, type metadata accessor for CapturedRoom.Surface);
          v656 = v663;
          if (v358 == v357)
          {
            goto LABEL_209;
          }
        }

        if ([v392 individualUpdate] == 1 || (v602 & 1) != 0)
        {
          break;
        }

        sub_23A9E2ED0(v605, type metadata accessor for CapturedRoom.Surface);

        if (v358 == v357)
        {
          goto LABEL_209;
        }
      }

      v406 = [v392 identifier];
      if (!v406)
      {
        goto LABEL_377;
      }

      v407 = v406;
      v408 = v592;
      sub_23AA0C0A4();

      v409 = v640;
      sub_23A9E3260(v605, v640, type metadata accessor for CapturedRoom.Surface);
      v410 = v655;
      v411 = swift_isUniquelyReferenced_nonNull_native();
      v663 = v410;
      sub_23A9DB384(v409, v408, v411);

      v398(v408, v660);
      sub_23A9E2ED0(v605, type metadata accessor for CapturedRoom.Surface);
      v655 = v663;
    }

    while (v358 != v357);
LABEL_209:

    v412 = [v611 opendoors];
    v413 = sub_23AA0D2F4();

    if (v413 >> 62)
    {
      v357 = sub_23AA0D7F4();
      if (!v357)
      {
        goto LABEL_233;
      }
    }

    else
    {
      v357 = *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v357)
      {
        goto LABEL_233;
      }
    }

    v358 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v414 = v358;
          while (1)
          {
            if ((v413 & 0xC000000000000001) != 0)
            {
              v415 = MEMORY[0x23EE90360](v414, v413);
            }

            else
            {
              if (v414 >= *((v413 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_344;
              }

              v415 = *(v413 + 8 * v414 + 32);
            }

            v416 = v415;
            v358 = v414 + 1;
            if (__OFADD__(v414, 1))
            {
              goto LABEL_343;
            }

            v417 = [v415 identifier];
            if (!v417)
            {
              goto LABEL_367;
            }

            v418 = v417;
            v419 = v625;
            sub_23AA0C0A4();

            if (v661[2])
            {
              v420 = sub_23A9EDD28(v419);
              if (v421)
              {
                break;
              }
            }

            (*v658)(v419, v660);

            ++v414;
            if (v358 == v357)
            {
              goto LABEL_233;
            }
          }

          sub_23A9E3260(v661[7] + *(v659 + 72) * v420, v604, type metadata accessor for CapturedRoom.Surface);
          v422 = *v658;
          (*v658)(v419, v660);
          if ([v416 individualUpdate])
          {
            break;
          }

          v424 = [v416 identifier];
          if (!v424)
          {
            goto LABEL_373;
          }

          v425 = v424;
          v426 = v595;
          sub_23AA0C0A4();

          v427 = v640;
          sub_23A9E3260(v604, v640, type metadata accessor for CapturedRoom.Surface);
          v428 = v656;
          v429 = swift_isUniquelyReferenced_nonNull_native();
          v663 = v428;
          sub_23A9DB384(v427, v426, v429);

          v422(v426, v660);
          sub_23A9E2ED0(v604, type metadata accessor for CapturedRoom.Surface);
          v656 = v663;
          if (v358 == v357)
          {
            goto LABEL_233;
          }
        }

        if ([v416 individualUpdate] == 1 || (v602 & 1) != 0)
        {
          break;
        }

        sub_23A9E2ED0(v604, type metadata accessor for CapturedRoom.Surface);

        if (v358 == v357)
        {
          goto LABEL_233;
        }
      }

      v430 = [v416 identifier];
      if (!v430)
      {
        goto LABEL_378;
      }

      v431 = v430;
      v432 = v591;
      sub_23AA0C0A4();

      v433 = v640;
      sub_23A9E3260(v604, v640, type metadata accessor for CapturedRoom.Surface);
      v434 = v655;
      v435 = swift_isUniquelyReferenced_nonNull_native();
      v663 = v434;
      sub_23A9DB384(v433, v432, v435);

      v422(v432, v660);
      sub_23A9E2ED0(v604, type metadata accessor for CapturedRoom.Surface);
      v655 = v663;
    }

    while (v358 != v357);
LABEL_233:

    v436 = [v611 openings];
    v437 = sub_23AA0D2F4();

    if (v437 >> 62)
    {
      v357 = sub_23AA0D7F4();
      if (!v357)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v357 = *((v437 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v357)
      {
        goto LABEL_257;
      }
    }

    v358 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v438 = v358;
          while (1)
          {
            if ((v437 & 0xC000000000000001) != 0)
            {
              v439 = MEMORY[0x23EE90360](v438, v437);
            }

            else
            {
              if (v438 >= *((v437 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_346;
              }

              v439 = *(v437 + 8 * v438 + 32);
            }

            v440 = v439;
            v358 = v438 + 1;
            if (__OFADD__(v438, 1))
            {
              goto LABEL_345;
            }

            v441 = [v439 identifier];
            if (!v441)
            {
              goto LABEL_368;
            }

            v442 = v441;
            v443 = v624;
            sub_23AA0C0A4();

            if (v661[2])
            {
              v444 = sub_23A9EDD28(v443);
              if (v445)
              {
                break;
              }
            }

            (*v658)(v443, v660);

            ++v438;
            if (v358 == v357)
            {
              goto LABEL_257;
            }
          }

          sub_23A9E3260(v661[7] + *(v659 + 72) * v444, v603, type metadata accessor for CapturedRoom.Surface);
          v446 = *v658;
          (*v658)(v443, v660);
          if ([v440 individualUpdate])
          {
            break;
          }

          v448 = [v440 identifier];
          if (!v448)
          {
            goto LABEL_374;
          }

          v449 = v448;
          v450 = v594;
          sub_23AA0C0A4();

          v451 = v640;
          sub_23A9E3260(v603, v640, type metadata accessor for CapturedRoom.Surface);
          v452 = v656;
          v453 = swift_isUniquelyReferenced_nonNull_native();
          v663 = v452;
          sub_23A9DB384(v451, v450, v453);

          v446(v450, v660);
          sub_23A9E2ED0(v603, type metadata accessor for CapturedRoom.Surface);
          v656 = v663;
          if (v358 == v357)
          {
            goto LABEL_257;
          }
        }

        if ([v440 individualUpdate] == 1 || (v602 & 1) != 0)
        {
          break;
        }

        sub_23A9E2ED0(v603, type metadata accessor for CapturedRoom.Surface);

        if (v358 == v357)
        {
          goto LABEL_257;
        }
      }

      v454 = [v440 identifier];
      if (!v454)
      {
        goto LABEL_379;
      }

      v455 = v454;
      v456 = v590;
      sub_23AA0C0A4();

      v457 = v640;
      sub_23A9E3260(v603, v640, type metadata accessor for CapturedRoom.Surface);
      v458 = v655;
      v459 = swift_isUniquelyReferenced_nonNull_native();
      v663 = v458;
      sub_23A9DB384(v457, v456, v459);

      v446(v456, v660);
      sub_23A9E2ED0(v603, type metadata accessor for CapturedRoom.Surface);
      v655 = v663;
    }

    while (v358 != v357);
LABEL_257:

    v460 = [v611 floors];
    v461 = sub_23AA0D2F4();

    if (v461 >> 62)
    {
      v462 = sub_23AA0D7F4();
      if (v462)
      {
LABEL_259:
        v358 = 0;
        do
        {
          while (1)
          {
            while (1)
            {
              v463 = v358;
              while (1)
              {
                if ((v461 & 0xC000000000000001) != 0)
                {
                  v464 = MEMORY[0x23EE90360](v463, v461);
                }

                else
                {
                  if (v463 >= *((v461 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_348;
                  }

                  v464 = *(v461 + 8 * v463 + 32);
                }

                v357 = v464;
                v358 = v463 + 1;
                if (__OFADD__(v463, 1))
                {
                  goto LABEL_347;
                }

                v465 = [v464 identifier];
                if (!v465)
                {
                  goto LABEL_369;
                }

                v466 = v465;
                v467 = v623;
                sub_23AA0C0A4();

                if (v661[2])
                {
                  v468 = sub_23A9EDD28(v467);
                  if (v469)
                  {
                    break;
                  }
                }

                (*v658)(v467, v660);

                ++v463;
                if (v358 == v462)
                {
                  goto LABEL_281;
                }
              }

              sub_23A9E3260(v661[7] + *(v659 + 72) * v468, v601, type metadata accessor for CapturedRoom.Surface);
              v470 = *v658;
              (*v658)(v467, v660);
              if ([v357 individualUpdate])
              {
                break;
              }

              v472 = [v357 identifier];
              if (!v472)
              {
                goto LABEL_375;
              }

              v473 = v472;
              v474 = v588;
              sub_23AA0C0A4();

              v475 = v640;
              sub_23A9E3260(v601, v640, type metadata accessor for CapturedRoom.Surface);
              v476 = v656;
              v477 = swift_isUniquelyReferenced_nonNull_native();
              v663 = v476;
              sub_23A9DB384(v475, v474, v477);

              v470(v474, v660);
              sub_23A9E2ED0(v601, type metadata accessor for CapturedRoom.Surface);
              v656 = v663;
              if (v358 == v462)
              {
                goto LABEL_281;
              }
            }

            if ([v357 individualUpdate] == 1 || (v602 & 1) != 0)
            {
              break;
            }

            sub_23A9E2ED0(v601, type metadata accessor for CapturedRoom.Surface);

            if (v358 == v462)
            {
              goto LABEL_281;
            }
          }

          v478 = [v357 identifier];
          if (!v478)
          {
            goto LABEL_380;
          }

          v479 = v478;
          v480 = v587;
          sub_23AA0C0A4();

          v481 = v640;
          sub_23A9E3260(v601, v640, type metadata accessor for CapturedRoom.Surface);
          v482 = v655;
          v483 = swift_isUniquelyReferenced_nonNull_native();
          v663 = v482;
          sub_23A9DB384(v481, v480, v483);

          v470(v480, v660);
          sub_23A9E2ED0(v601, type metadata accessor for CapturedRoom.Surface);
          v655 = v663;
        }

        while (v358 != v462);
      }
    }

    else
    {
      v462 = *((v461 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v462)
      {
        goto LABEL_259;
      }
    }

LABEL_281:

    v484 = v647 + 64;
    v485 = 1 << *(v647 + 32);
    v486 = -1;
    if (v485 < 64)
    {
      v486 = ~(-1 << v485);
    }

    v487 = v486 & *(v647 + 64);
    v488 = (v485 + 63) >> 6;

    v358 = 0;
    while (v487)
    {
LABEL_291:
      v492 = __clz(__rbit64(v487)) | (v358 << 6);
      v493 = v647;
      v494 = *(v657 + 72);
      v495 = v618;
      (*(v657 + 16))(v618, *(v647 + 48) + v494 * v492, v660);
      v496 = *(v493 + 56);
      v497 = *(v659 + 72);
      sub_23A9E3260(v496 + v497 * v492, v495 + *(v651 + 48), type metadata accessor for CapturedRoom.Surface);
      v498 = v628;
      v357 = v648;
      swift_beginAccess();
      v499 = *(v498 + v357);
      v500 = sub_23A9EDD28(v495);
      if (v501)
      {
        v502 = v500;
        v503 = *(v498 + v357);
        v504 = swift_isUniquelyReferenced_nonNull_native();
        v505 = *(v498 + v357);
        v662 = v505;
        *(v498 + v357) = 0x8000000000000000;
        if (!v504)
        {
          sub_23A90F5DC();
          v505 = v662;
        }

        (*v658)(*(v505 + 48) + v502 * v494, v660);
        v506 = *(v505 + 56) + v502 * v497;
        v490 = v608;
        sub_23A9E35C4(v506, v608, type metadata accessor for CapturedRoom.Surface);
        sub_23A90C62C(v502, v505);
        v507 = *(v498 + v357);
        *(v498 + v357) = v505;

        v489 = 0;
      }

      else
      {
        v489 = 1;
        v490 = v608;
      }

      v487 &= v487 - 1;
      (*v653)(v490, v489, 1, v644);
      sub_23A8D50D0(v490, &qword_27DFB13D0, &qword_23AA1B260);
      swift_endAccess();
      sub_23A8D50D0(v618, &qword_27DFB13C8, &qword_23AA1B258);
    }

    while (1)
    {
      v491 = v358 + 1;
      if (__OFADD__(v358, 1))
      {
        __break(1u);
LABEL_337:
        __break(1u);
        goto LABEL_338;
      }

      if (v491 >= v488)
      {
        break;
      }

      v487 = *(v484 + 8 * v491);
      ++v358;
      if (v487)
      {
        v358 = v491;
        goto LABEL_291;
      }
    }

    v508 = (v656 + 64);
    v509 = 1 << *(v656 + 32);
    v510 = -1;
    if (v509 < 64)
    {
      v510 = ~(-1 << v509);
    }

    v511 = v510 & *(v656 + 64);
    v512 = (v509 + 63) >> 6;

    v358 = 0;
    v652 = v508;
    v650 = v512;
    v513 = v622;
    while (v511)
    {
LABEL_305:
      v519 = __clz(__rbit64(v511)) | (v358 << 6);
      v520 = v656;
      v521 = *(v656 + 48);
      v653 = *(v657 + 72);
      v522 = *(v657 + 16);
      v523 = v615;
      v522(v615, v521 + v653 * v519, v660);
      v524 = *(v659 + 72);
      v525 = *(v520 + 56) + v524 * v519;
      v526 = v651;
      sub_23A9E3260(v525, v523 + *(v651 + 48), type metadata accessor for CapturedRoom.Surface);
      sub_23A8D5194(v523, v513, &qword_27DFB13C8, &qword_23AA1B258);
      v527 = v523;
      v357 = v616;
      sub_23A8D5194(v527, v616, &qword_27DFB13C8, &qword_23AA1B258);
      v528 = *(v526 + 48);
      v529 = v628;
      v530 = v648;
      swift_beginAccess();
      sub_23A9E35C4(v357 + v528, v617, type metadata accessor for CapturedRoom.Surface);
      v531 = *(v529 + v530);
      v532 = swift_isUniquelyReferenced_nonNull_native();
      v662 = *(v529 + v530);
      v533 = v662;
      *(v529 + v530) = 0x8000000000000000;
      v534 = sub_23A9EDD28(v513);
      v536 = v533[2];
      v537 = (v535 & 1) == 0;
      v153 = __OFADD__(v536, v537);
      v538 = v536 + v537;
      if (v153)
      {
        goto LABEL_349;
      }

      v539 = v535;
      if (v533[3] < v538)
      {
        sub_23A90A908(v538, v532);
        v534 = sub_23A9EDD28(v622);
        if ((v539 & 1) != (v540 & 1))
        {
          goto LABEL_383;
        }

LABEL_310:
        v541 = v662;
        if (v539)
        {
          goto LABEL_298;
        }

        goto LABEL_311;
      }

      if (v532)
      {
        goto LABEL_310;
      }

      v544 = v534;
      sub_23A90F5DC();
      v534 = v544;
      v541 = v662;
      if (v539)
      {
LABEL_298:
        sub_23A9E355C(v617, v541[7] + v534 * v524, type metadata accessor for CapturedRoom.Surface);
        goto LABEL_299;
      }

LABEL_311:
      v541[(v534 >> 6) + 8] |= 1 << v534;
      v357 = v534;
      v522(v541[6] + v534 * v653, v622, v660);
      sub_23A9E35C4(v617, v541[7] + v357 * v524, type metadata accessor for CapturedRoom.Surface);
      v542 = v541[2];
      v153 = __OFADD__(v542, 1);
      v543 = v542 + 1;
      if (v153)
      {
        goto LABEL_351;
      }

      v541[2] = v543;
LABEL_299:
      v511 &= v511 - 1;
      v514 = *(v651 + 48);
      v515 = *v658;
      v516 = v622;
      v357 = v660;
      (*v658)(v622, v660);
      v517 = *(v628 + v648);
      *(v628 + v648) = v541;

      swift_endAccess();
      sub_23A8D50D0(v615, &qword_27DFB13C8, &qword_23AA1B258);
      v515(v616, v357);
      sub_23A9E2ED0(v516 + v514, type metadata accessor for CapturedRoom.Surface);
      v508 = v652;
      v512 = v650;
    }

    while (1)
    {
      v518 = v358 + 1;
      if (__OFADD__(v358, 1))
      {
        goto LABEL_337;
      }

      if (v518 >= v512)
      {
        break;
      }

      v511 = v508[v518];
      ++v358;
      if (v511)
      {
        v358 = v518;
        goto LABEL_305;
      }
    }

    v545 = (v655 + 64);
    v546 = 1 << *(v655 + 32);
    v547 = -1;
    if (v546 < 64)
    {
      v547 = ~(-1 << v546);
    }

    v548 = v547 & *(v655 + 64);
    v549 = (v546 + 63) >> 6;

    v358 = 0;
    v652 = v545;
    v650 = v549;
    v550 = v621;
    while (2)
    {
      if (v548)
      {
LABEL_325:
        v556 = __clz(__rbit64(v548)) | (v358 << 6);
        v557 = v655;
        v558 = *(v655 + 48);
        v653 = *(v657 + 72);
        v559 = *(v657 + 16);
        v560 = v612;
        v559(v612, v558 + v653 * v556, v660);
        v561 = *(v659 + 72);
        v562 = *(v557 + 56) + v561 * v556;
        v563 = v651;
        sub_23A9E3260(v562, v560 + *(v651 + 48), type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v560, v550, &qword_27DFB13C8, &qword_23AA1B258);
        v564 = v560;
        v357 = v613;
        sub_23A8D5194(v564, v613, &qword_27DFB13C8, &qword_23AA1B258);
        v565 = *(v563 + 48);
        v566 = v628;
        v567 = v648;
        swift_beginAccess();
        sub_23A9E35C4(v357 + v565, v614, type metadata accessor for CapturedRoom.Surface);
        v568 = *(v566 + v567);
        v569 = swift_isUniquelyReferenced_nonNull_native();
        v662 = *(v566 + v567);
        v570 = v662;
        *(v566 + v567) = 0x8000000000000000;
        v571 = sub_23A9EDD28(v550);
        v573 = v570[2];
        v574 = (v572 & 1) == 0;
        v153 = __OFADD__(v573, v574);
        v575 = v573 + v574;
        if (v153)
        {
          goto LABEL_350;
        }

        v576 = v572;
        if (v570[3] >= v575)
        {
          if ((v569 & 1) == 0)
          {
            v581 = v571;
            sub_23A90F5DC();
            v571 = v581;
            v578 = v662;
            if ((v576 & 1) == 0)
            {
              goto LABEL_331;
            }

            goto LABEL_318;
          }
        }

        else
        {
          sub_23A90A908(v575, v569);
          v571 = sub_23A9EDD28(v621);
          if ((v576 & 1) != (v577 & 1))
          {
            goto LABEL_383;
          }
        }

        v578 = v662;
        if ((v576 & 1) == 0)
        {
LABEL_331:
          v578[(v571 >> 6) + 8] |= 1 << v571;
          v357 = v571;
          v559(v578[6] + v571 * v653, v621, v660);
          sub_23A9E35C4(v614, v578[7] + v357 * v561, type metadata accessor for CapturedRoom.Surface);
          v579 = v578[2];
          v153 = __OFADD__(v579, 1);
          v580 = v579 + 1;
          if (v153)
          {
            goto LABEL_352;
          }

          v578[2] = v580;
          goto LABEL_319;
        }

LABEL_318:
        sub_23A9E355C(v614, v578[7] + v571 * v561, type metadata accessor for CapturedRoom.Surface);
LABEL_319:
        v548 &= v548 - 1;
        v551 = *(v651 + 48);
        v552 = *v658;
        v357 = v621;
        v553 = v660;
        (*v658)(v621, v660);
        v554 = *(v628 + v648);
        *(v628 + v648) = v578;

        swift_endAccess();
        sub_23A8D50D0(v612, &qword_27DFB13C8, &qword_23AA1B258);
        v552(v613, v553);
        sub_23A9E2ED0(v357 + v551, type metadata accessor for CapturedRoom.Surface);
        v545 = v652;
        v549 = v650;
        continue;
      }

      break;
    }

    while (1)
    {
      v555 = v358 + 1;
      if (__OFADD__(v358, 1))
      {
        break;
      }

      if (v555 >= v549)
      {

        v583 = sub_23A9C8C28(v582, sub_23A9ED9D8, type metadata accessor for CapturedRoom.Surface, sub_23A9F4594);

        sub_23A9C8C28(v584, sub_23A9ED9D8, type metadata accessor for CapturedRoom.Surface, sub_23A9F4594);

        sub_23A9C8C28(v585, sub_23A9ED9D8, type metadata accessor for CapturedRoom.Surface, sub_23A9F4594);

        return v583;
      }

      v548 = v545[v555];
      ++v358;
      if (v548)
      {
        v358 = v555;
        goto LABEL_325;
      }
    }

LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    v359 = sub_23AA0D7F4();
    if (!v359)
    {
      continue;
    }

    break;
  }

LABEL_163:
  v360 = 0;
LABEL_164:
  v361 = v360;
  while (1)
  {
    if ((v357 & 0xC000000000000001) != 0)
    {
      v362 = MEMORY[0x23EE90360](v361, v357);
    }

    else
    {
      if (v361 >= *(v358 + 16))
      {
        goto LABEL_340;
      }

      v362 = *(v357 + 8 * v361 + 32);
    }

    v363 = v362;
    v360 = v361 + 1;
    if (__OFADD__(v361, 1))
    {
      goto LABEL_339;
    }

    v364 = [v362 identifier];
    if (!v364)
    {
      break;
    }

    v365 = v364;
    v366 = v627;
    sub_23AA0C0A4();

    if (v661[2])
    {
      v367 = sub_23A9EDD28(v366);
      if (v368)
      {
        sub_23A9E3260(v661[7] + *(v659 + 72) * v367, v606, type metadata accessor for CapturedRoom.Surface);
        v369 = *v658;
        (*v658)(v366, v660);
        if ([v363 individualUpdate])
        {
          if ([v363 individualUpdate] == 1 || (v602 & 1) != 0)
          {
            v377 = [v363 identifier];
            if (!v377)
            {
              goto LABEL_376;
            }

            v378 = v377;
            v379 = v593;
            sub_23AA0C0A4();

            v380 = v640;
            sub_23A9E3260(v606, v640, type metadata accessor for CapturedRoom.Surface);
            v381 = v655;
            v382 = swift_isUniquelyReferenced_nonNull_native();
            v663 = v381;
            sub_23A9DB384(v380, v379, v382);

            v369(v379, v660);
            sub_23A9E2ED0(v606, type metadata accessor for CapturedRoom.Surface);
            v655 = v663;
            if (v360 == v359)
            {
              goto LABEL_185;
            }
          }

          else
          {
            sub_23A9E2ED0(v606, type metadata accessor for CapturedRoom.Surface);

            if (v360 == v359)
            {
              goto LABEL_185;
            }
          }
        }

        else
        {
          v371 = [v363 identifier];
          if (!v371)
          {
            goto LABEL_371;
          }

          v372 = v371;
          v373 = v597;
          sub_23AA0C0A4();

          v374 = v640;
          sub_23A9E3260(v606, v640, type metadata accessor for CapturedRoom.Surface);
          v375 = v656;
          v376 = swift_isUniquelyReferenced_nonNull_native();
          v663 = v375;
          sub_23A9DB384(v374, v373, v376);

          v369(v373, v660);
          sub_23A9E2ED0(v606, type metadata accessor for CapturedRoom.Surface);
          v656 = v663;
          if (v360 == v359)
          {
            goto LABEL_185;
          }
        }

        goto LABEL_164;
      }
    }

    (*v658)(v366, v660);

    ++v361;
    if (v360 == v359)
    {
      goto LABEL_185;
    }
  }

LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void sub_23A9D62B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v54 = a3;
  v53 = a2;
  v55 = a4;
  v5 = type metadata accessor for CapturedRoom.Surface(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  *&v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  *&v59 = &v52 - v9;
  MEMORY[0x28223BE20](v10);
  *&v58 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  *&v57 = &v52 - v13;
  MEMORY[0x28223BE20](v14);
  v56 = &v52 - v15;
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = MEMORY[0x277D84F90];
    v23 = a1 + v21;
    v24 = *(v17 + 72);
    v63 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_23A9E3260(v23, v19, type metadata accessor for CapturedRoom.Surface);
      v26 = *v19;
      if (v26 > 3)
      {
        break;
      }

      if (v26 == 2)
      {
        sub_23A9E3260(v19, v56, type metadata accessor for CapturedRoom.Surface);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v61;
        }

        else
        {
          v27 = sub_23A938A00(0, v61[2] + 1, 1, v61);
        }

        v29 = v27[2];
        v33 = v27[3];
        v30 = v29 + 1;
        if (v29 >= v33 >> 1)
        {
          v27 = sub_23A938A00(v33 > 1, v29 + 1, 1, v27);
          v25 = v56;
          v61 = v27;
        }

        else
        {
          v61 = v27;
          v25 = v56;
        }

        goto LABEL_4;
      }

      if (v26 != 3)
      {
        goto LABEL_18;
      }

      sub_23A9E3260(v19, v59, type metadata accessor for CapturedRoom.Surface);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v64;
      }

      else
      {
        v27 = sub_23A938A00(0, v64[2] + 1, 1, v64);
      }

      v29 = v27[2];
      v28 = v27[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v27 = sub_23A938A00(v28 > 1, v29 + 1, 1, v27);
        v25 = v59;
        v64 = v27;
      }

      else
      {
        v64 = v27;
        v25 = v59;
      }

LABEL_4:
      sub_23A9E2ED0(v19, type metadata accessor for CapturedRoom.Surface);
      v27[2] = v30;
      sub_23A9E35C4(v25, v27 + v21 + v29 * v24, type metadata accessor for CapturedRoom.Surface);
      v23 += v24;
      if (!--v20)
      {
        goto LABEL_39;
      }
    }

    if (v26 == 4)
    {
      sub_23A9E3260(v19, v58, type metadata accessor for CapturedRoom.Surface);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v27 = v63;
      }

      else
      {
        v27 = sub_23A938A00(0, v63[2] + 1, 1, v63);
      }

      v29 = v27[2];
      v34 = v27[3];
      v30 = v29 + 1;
      if (v29 >= v34 >> 1)
      {
        v27 = sub_23A938A00(v34 > 1, v29 + 1, 1, v27);
        v25 = v58;
        v63 = v27;
      }

      else
      {
        v63 = v27;
        v25 = v58;
      }

      goto LABEL_4;
    }

    if (v26 == 5)
    {
      sub_23A9E3260(v19, v60, type metadata accessor for CapturedRoom.Surface);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_23A938A00(0, v22[2] + 1, 1, v22);
      }

      v29 = v22[2];
      v31 = v22[3];
      v30 = v29 + 1;
      if (v29 >= v31 >> 1)
      {
        v27 = sub_23A938A00(v31 > 1, v29 + 1, 1, v22);
        v25 = v60;
        v22 = v27;
      }

      else
      {
        v27 = v22;
        v25 = v60;
      }

      goto LABEL_4;
    }

LABEL_18:
    sub_23A9E3260(v19, v57, type metadata accessor for CapturedRoom.Surface);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v62;
    }

    else
    {
      v27 = sub_23A938A00(0, v62[2] + 1, 1, v62);
    }

    v29 = v27[2];
    v32 = v27[3];
    v30 = v29 + 1;
    if (v29 < v32 >> 1)
    {
      v62 = v27;
      v25 = v57;
    }

    else
    {
      v27 = sub_23A938A00(v32 > 1, v29 + 1, 1, v27);
      v25 = v57;
      v62 = v27;
    }

    goto LABEL_4;
  }

  v22 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
LABEL_39:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_49;
  }

  v36 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
  v59 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 16);
  v60 = v36;
  v37 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 32);
  v57 = *(Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 48);
  v58 = v37;

  v38 = type metadata accessor for CapturedRoom(0);
  v39 = v55;
  *(v55 + v38[12]) = 0;
  *(v39 + v38[13]) = 2;
  v40 = (v39 + v38[15]);
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v62;
  *v39 = v61;
  v39[1] = v41;
  v42 = v64;
  v39[2] = v63;
  v39[3] = v42;
  v43 = v53;
  v39[4] = v22;
  v39[5] = v43;
  *(v39 + v38[14]) = v54;
  v44 = v38[10];

  sub_23AA0C0D4();
  *(v39 + v38[11]) = MEMORY[0x277D84F90];
  v45 = (v39 + v38[16]);
  v46 = v59;
  *v45 = v60;
  v45[1] = v46;
  v47 = v57;
  v45[2] = v58;
  v45[3] = v47;
  v48 = sub_23AA0D104();
  v49 = MGCopyAnswer();

  if (!v49)
  {
LABEL_49:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v65[0] = v49;
  if (swift_dynamicCast() && (v66 & 1) != 0)
  {
    v50 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
    v51 = v50;
    if (v50)
    {
      v50 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    }

    else
    {
      v65[1] = 0;
      v65[2] = 0;
    }

    v65[0] = v51;
    v65[3] = v50;
    sub_23A8D5068(v65, v40, &unk_27DFB1140, &qword_23AA19C10);
  }
}

uint64_t sub_23A9D69A4(void *a1, uint64_t *a2)
{
  v112 = type metadata accessor for CapturedRoom(0);
  v121 = *(v112 - 8);
  v5 = *(v121 + 8);
  MEMORY[0x28223BE20](v112);
  v104 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v115 = (&v104 - v8);
  MEMORY[0x28223BE20](v9);
  v105 = (&v104 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB13A0, &unk_23AA1A7A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v111 = (&v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v116 = (&v104 - v15);
  MEMORY[0x28223BE20](v16);
  v117 = (&v104 - v17);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0DB8, &qword_23AA1A798);
  v18 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v107 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v106 = &v104 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v104 - v23;
  MEMORY[0x28223BE20](v25);
  v113 = &v104 - v26;
  v27 = sub_23A9D2114(a1, a2, 0);
  v29 = v28;
  v110 = v30;
  v31 = sub_23A9DF1BC(a1, a2);
  v108 = v32;
  v109 = v33;
  v34 = OBJC_IVAR____TtC8RoomPlan24RSSessionDelegateWrapper_captureSession;
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_66;
  }

  v36 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v37 = v2;
  v114 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);

  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v38 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls);
  v39 = MEMORY[0x277D84F90];
  *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_addedPotentialWalls) = MEMORY[0x277D84F90];

  v118 = v34;
  v119 = v37;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v40 = *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls);
  *(result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_removedPotentialWalls) = v39;

  v41 = v112;
  v42 = v29;
  if (*(v27 + 16) || *(v31 + 16))
  {
    v43 = v117;
    sub_23A9D62B8(v27, v31, MEMORY[0x277D84F90], v117);

    v44 = *(v121 + 7);
    v44(v43, 0, 1, v41);
  }

  else
  {

    v44 = *(v121 + 7);
    v44(v117, 1, 1, v41);
  }

  v45 = v116;
  v46 = v110;
  v47 = v113;
  if (*(v42 + 16) || *(v108 + 16) || *(v36 + 16))
  {
    sub_23A9D62B8(v42, v108, v36, v116);

    v48 = 0;
  }

  else
  {

    v48 = 1;
  }

  v44(v45, v48, 1, v41);
  v49 = v111;
  if (*(v46 + 16) || *(v109 + 16) || *(v114 + 16))
  {
    sub_23A9D62B8(v46, v109, v114, v111);

    v50 = 0;
  }

  else
  {

    v50 = 1;
  }

  v44(v49, v50, 1, v41);
  v51 = v120;
  v52 = *(v120 + 48);
  v53 = *(v120 + 64);
  sub_23A930208(v116, v47, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A930208(v49, v47 + v52, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A930208(v117, v47 + v53, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D5194(v47, v24, &qword_27DFB0DB8, &qword_23AA1A798);
  v54 = *(v51 + 48);
  v55 = *(v51 + 64);
  v56 = *(v121 + 6);
  if (v56(&v24[v55], 1, v41) == 1)
  {
    sub_23A8D50D0(&v24[v55], &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(&v24[v54], &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v24, &unk_27DFB13A0, &unk_23AA1A7A0);
    v57 = v107;
    goto LABEL_31;
  }

  v121 = v56;
  v58 = v105;
  sub_23A9E35C4(&v24[v55], v105, type metadata accessor for CapturedRoom);
  sub_23A8D50D0(&v24[v54], &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D50D0(v24, &unk_27DFB13A0, &unk_23AA1A7A0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_69;
  }

  v59 = result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v61 = *(v59 + 8);

  v57 = v107;
  if (Strong)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v62 = result;
    ObjectType = swift_getObjectType();
    (*(v61 + 24))(v62, v58, ObjectType, v61);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_70;
  }

  v64 = result;
  swift_beginAccess();
  v65 = swift_unknownObjectWeakLoadStrong();
  v66 = *(v64 + 32);

  if (v65)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v67 = result;
    v68 = swift_getObjectType();
    (*(v66 + 24))(v67, v58, v68, v66);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_72;
  }

  v69 = sub_23A9CCB9C();

  v70 = *(v69 + 16);

  if (v70 == 1)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    sub_23A9CCB9C();

    sub_23A961904(v58, 1);
  }

  sub_23A9E2ED0(v58, type metadata accessor for CapturedRoom);
  v56 = v121;
LABEL_31:
  v71 = v106;
  sub_23A8D5194(v47, v106, &qword_27DFB0DB8, &qword_23AA1A798);
  v72 = *(v120 + 48);
  v73 = *(v120 + 64);
  if (v56(v71, 1, v41) == 1)
  {
    sub_23A8D50D0(v71 + v73, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v71 + v72, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v71, &unk_27DFB13A0, &unk_23AA1A7A0);
    goto LABEL_46;
  }

  sub_23A9E35C4(v71, v115, type metadata accessor for CapturedRoom);
  sub_23A8D50D0(v71 + v73, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D50D0(v71 + v72, &unk_27DFB13A0, &unk_23AA1A7A0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_71;
  }

  v74 = result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  v75 = swift_unknownObjectWeakLoadStrong();
  v76 = *(v74 + 8);

  if (v75)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v77 = result;
    v78 = swift_getObjectType();
    (*(v76 + 16))(v77, v115, v78, v76);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_73;
  }

  v79 = result;
  swift_beginAccess();
  v80 = swift_unknownObjectWeakLoadStrong();
  v81 = *(v79 + 32);

  if (v80)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v82 = result;
    v83 = swift_getObjectType();
    (*(v81 + 16))(v82, v115, v83, v81);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_75;
  }

  v84 = sub_23A9CCB9C();

  v85 = *(v84 + 16);

  if (v85 == 1)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    sub_23A9CCB9C();

    sub_23A961904(v115, 0);
  }

  sub_23A9E2ED0(v115, type metadata accessor for CapturedRoom);
LABEL_46:
  sub_23A8D5194(v47, v57, &qword_27DFB0DB8, &qword_23AA1A798);
  v86 = *(v120 + 48);
  v87 = *(v120 + 64);
  if (v56((v57 + v86), 1, v41) == 1)
  {
    sub_23A8D50D0(v47, &qword_27DFB0DB8, &qword_23AA1A798);
    sub_23A8D50D0(v57 + v87, &unk_27DFB13A0, &unk_23AA1A7A0);
    sub_23A8D50D0(v57 + v86, &unk_27DFB13A0, &unk_23AA1A7A0);
    v88 = v57;
    v89 = &unk_27DFB13A0;
    v90 = &unk_23AA1A7A0;
    return sub_23A8D50D0(v88, v89, v90);
  }

  v91 = v104;
  sub_23A9E35C4(v57 + v86, v104, type metadata accessor for CapturedRoom);
  sub_23A8D50D0(v57 + v87, &unk_27DFB13A0, &unk_23AA1A7A0);
  sub_23A8D50D0(v57, &unk_27DFB13A0, &unk_23AA1A7A0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_74;
  }

  v92 = result + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
  v93 = swift_unknownObjectWeakLoadStrong();
  v94 = *(v92 + 8);

  if (v93)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v95 = result;
    v96 = swift_getObjectType();
    (*(v94 + 32))(v95, v91, v96, v94);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_76;
  }

  v97 = result;
  swift_beginAccess();
  v98 = swift_unknownObjectWeakLoadStrong();
  v99 = *(v97 + 32);

  if (v98)
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v100 = result;
    v101 = swift_getObjectType();
    (*(v99 + 32))(v100, v91, v101, v99);

    swift_unknownObjectRelease();
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_77;
  }

  v102 = sub_23A9CCB9C();

  v103 = *(v102 + 16);

  if (v103 != 1)
  {
LABEL_60:
    sub_23A9E2ED0(v91, type metadata accessor for CapturedRoom);
    v89 = &qword_27DFB0DB8;
    v90 = &qword_23AA1A798;
    v88 = v47;
    return sub_23A8D50D0(v88, v89, v90);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23A9CCB9C();

    sub_23A961904(v91, 2);

    goto LABEL_60;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_23A9D778C(uint64_t a1, void *a2)
{
  v84 = type metadata accessor for CapturedRoom(0);
  v4 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v6 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v77 - v8);
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v82 = a1;
    if (qword_27DFAE460 != -1)
    {
      swift_once();
    }

    sub_23A955784();
    swift_beginAccess();
    v12 = [*(v11 + 56) currentFrame];
    if (v12)
    {
      v13 = v12;
      [v12 referenceOriginTransform];
      v87 = v15;
      v88 = v14;
      v85 = v17;
      v86 = v16;

      v18 = (v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
      v19 = v87;
      *v18 = v88;
      v18[1] = v19;
      v20 = v85;
      v18[2] = v86;
      v18[3] = v20;
    }

    type metadata accessor for RSCoreAdaptor();
    v21 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_detectedObjects);
    v22 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_potentiallWalls;
    swift_beginAccess();
    v23 = *(v11 + v22);
    v24 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform);
    v87 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 16);
    v88 = v24;
    v25 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 32);
    v85 = *(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arFrameReferenceOriginTransform + 48);
    v86 = v25;
    v26 = qword_27DFAE4C8;

    v81 = v23;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = qword_27DFC0870;
    if (qword_27DFAE4C0 != -1)
    {
      swift_once();
    }

    xmmword_27DFC0830 = v88;
    unk_27DFC0840 = v87;
    xmmword_27DFC0850 = v86;
    unk_27DFC0860 = v85;
    byte_27DFC0888 = 1;
    if (qword_27DFAE4E0 != -1)
    {
      swift_once();
    }

    v28 = qword_27DFC0890;
    qword_27DFC0890 = v27;
    v29 = v27;

    if (v21 >> 62)
    {
      v30 = sub_23AA0D7F4();
    }

    else
    {
      v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v6;
    if (v30 <= 0)
    {

      v31 = [a2 objects];
      sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
      v21 = sub_23AA0D2F4();
    }

    v32 = [a2 doors];
    sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
    v33 = sub_23AA0D2F4();

    v90 = v33;
    v34 = [a2 opendoors];
    v35 = sub_23AA0D2F4();

    sub_23A912898(v35);
    v36 = [a2 walls];
    v37 = sub_23AA0D2F4();

    v38 = [a2 curvedWalls];
    sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
    v39 = sub_23AA0D2F4();

    v80 = sub_23A9A46EC(v37, v39);

    v40 = v90;
    v41 = [a2 curvedDoors];
    v42 = sub_23AA0D2F4();

    v79 = sub_23A9A46EC(v40, v42);

    v43 = [a2 windows];
    v44 = sub_23AA0D2F4();

    v45 = [a2 curvedWindows];
    v46 = sub_23AA0D2F4();

    v78 = sub_23A9A46EC(v44, v46);

    v47 = [a2 openings];
    v48 = sub_23AA0D2F4();

    v49 = MEMORY[0x277D84F90];
    v77 = sub_23A9A46EC(v48, MEMORY[0x277D84F90]);

    v50 = [a2 floors];
    v51 = sub_23AA0D2F4();

    v52 = sub_23A9A46EC(v51, v49);

    sub_23A9A4A38(v21);
    v54 = v53;

    v55 = [a2 roomTypes];
    sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
    v56 = sub_23AA0D2F4();

    v57 = sub_23A9A4D4C(v56);

    v58 = [a2 storyLevel];
    v59 = v84;
    v60 = *(v84 + 48);
    *(v9 + *(v84 + 52)) = 2;
    v61 = (v9 + v59[15]);
    *v61 = 0u;
    v61[1] = 0u;
    v62 = v79;
    *v9 = v80;
    v9[1] = v62;
    v63 = v77;
    v9[2] = v78;
    v9[3] = v63;
    v9[4] = v52;
    v9[5] = v54;
    *(v9 + v59[14]) = v81;
    v64 = v9 + v59[10];
    sub_23AA0C0D4();
    *(v9 + v59[11]) = v57;
    *(v9 + v60) = v58;
    v65 = (v9 + v59[16]);
    v66 = v87;
    *v65 = v88;
    v65[1] = v66;
    v67 = v85;
    v65[2] = v86;
    v65[3] = v67;
    v89[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    v89[0] = a2;
    v68 = a2;
    sub_23A8D5068(v89, v61, &unk_27DFB1140, &qword_23AA19C10);
    v69 = OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_floorPlanModel;
    swift_beginAccess();
    sub_23A9E355C(v9, v11 + v69, type metadata accessor for CapturedRoom);
    swift_endAccess();
    if ((*(v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_configuration + 3) & 1) == 0)
    {
      v70 = *(v11 + v69);
      *(v11 + v69) = MEMORY[0x277D84F90];
    }

    v71 = v83;
    sub_23A9E3260(v11 + v69, v83, type metadata accessor for CapturedRoom);
    sub_23A9D69A4(v68, v71);
    sub_23A9E2ED0(v71, type metadata accessor for CapturedRoom);
    v72 = v11 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_internalDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v73 = *(v72 + 8);
      ObjectType = swift_getObjectType();
      sub_23A9E3260(v11 + v69, v71, type metadata accessor for CapturedRoom);
      (*(v73 + 8))(v11, v71, ObjectType, v73);
      swift_unknownObjectRelease();
      sub_23A9E2ED0(v71, type metadata accessor for CapturedRoom);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v75 = *(v11 + 32);
      v76 = swift_getObjectType();
      sub_23A9E3260(v11 + v69, v71, type metadata accessor for CapturedRoom);
      (*(v75 + 8))(v11, v71, v76, v75);

      swift_unknownObjectRelease();
      return sub_23A9E2ED0(v71, type metadata accessor for CapturedRoom);
    }

    else
    {
    }
  }

  return result;
}