uint64_t sub_23A97DDC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23AA0DBD4();

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

uint64_t sub_23A97DF24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656761726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265676972666572 && a2 == 0xEC000000726F7461 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65766F7473 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6579554 && a2 == 0xE300000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1802398067 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7244726568736177 && a2 == 0xEB00000000726579 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74656C696F74 && a2 == 0xE600000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x62757468746162 && a2 == 0xE700000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1852143215 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6873617768736964 && a2 == 0xEA00000000007265 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1634103155 && a2 == 0xE400000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7269616863 && a2 == 0xE500000000000000 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x63616C7065726966 && a2 == 0xE900000000000065 || (sub_23AA0DBD4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x69736976656C6574 && a2 == 0xEA00000000006E6FLL || (sub_23AA0DBD4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x737269617473 && a2 == 0xE600000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_23AA0DBD4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_23A97E420(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23A97E468()
{
  result = qword_27DFB0558;
  if (!qword_27DFB0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0558);
  }

  return result;
}

unint64_t sub_23A97E4D0()
{
  result = qword_27DFB0580;
  if (!qword_27DFB0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0580);
  }

  return result;
}

int8x8_t sub_23A97E614(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vmul_f32(a3, 0x3F0000003F000000);
  v4 = vsub_f32(a2, v3);
  v5 = vbsl_s8(vcge_f32(v4, a1), v4, a1);
  v6 = vadd_f32(v3, a2);
  return vbsl_s8(vcgt_f32(v5, v6), v6, v5);
}

BOOL sub_23A97E638(double a1, double a2, double a3)
{
  if ((*&a2 - (0.5 * *&a3)) > *&a1 || *&a1 > (*&a2 + (0.5 * *&a3)))
  {
    return 0;
  }

  v5 = vmuls_lane_f32(0.5, *&a3, 1);
  return (*(&a2 + 1) - v5) <= *(&a1 + 1) && *(&a1 + 1) <= (*(&a2 + 1) + v5);
}

uint64_t sub_23A97E68C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, float32x4_t a11, float32x4_t a12, simd_float4 a13, simd_float4 a14, float32x4_t a15, float32x4_t a16, uint64_t a17, uint64_t a18)
{
  v18 = vmulq_f32(a15, a11);
  v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  if (v19 == 0.0)
  {
    return 0;
  }

  v21 = vnegq_f32(a15);
  v21.i32[3] = 0;
  v22 = vmulq_f32(v21, vsubq_f32(a16, a12));
  v22.f32[0] = (v22.f32[2] + vaddv_f32(*v22.f32)) / v19;
  v23 = a12.f32[0] - (v22.f32[0] * a11.f32[0]);
  v24 = a12.f32[1] - vmuls_lane_f32(v22.f32[0], *a11.f32, 1);
  v25 = a12.f32[2] - vmuls_lane_f32(v22.f32[0], a11, 2);
  v26.columns[0] = a13;
  v26.columns[1] = a14;
  v26.columns[2] = a15;
  v26.columns[3] = a16;
  v27 = __invert_f4(v26);
  v27.columns[0].i64[0] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27.columns[0], v23), v27.columns[1], v24), v27.columns[2], v25).u64[0];
  *v27.columns[1].f32 = vmul_f32(a18, 0x3F0000003F000000);
  *v27.columns[2].f32 = vsub_f32(a17, *v27.columns[1].f32);
  *v27.columns[0].f32 = vadd_f32(*v27.columns[3].f32, *v27.columns[0].f32);
  *v27.columns[0].f32 = vbsl_s8(vcge_f32(*v27.columns[2].f32, *v27.columns[0].f32), *v27.columns[2].f32, *v27.columns[0].f32);
  *v27.columns[1].f32 = vadd_f32(*v27.columns[1].f32, a17);
  return vbsl_s8(vcgt_f32(*v27.columns[0].f32, *v27.columns[1].f32), *v27.columns[1].f32, *v27.columns[0].f32);
}

uint64_t type metadata accessor for WallEntity()
{
  result = qword_27DFB05A0;
  if (!qword_27DFB05A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A97E7F4()
{
  result = sub_23AA0C064();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23A97E89C(uint64_t a1, char a2, double a3)
{
  v5 = v3;
  v9 = sub_23AA0C064();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  result = sub_23A902B54(a1, a2 & 1, a3);
  if (!v4 && *(v5 + qword_27DFC0630) == 1)
  {
    v18 = qword_27DFB0598;
    swift_beginAccess();
    (*(v10 + 16))(v16, v5 + v18, v9);
    sub_23AA0C044();
    sub_23AA0C014();
    v20 = v19;
    v21 = *(v10 + 8);
    v21(v13, v9);
    v21(v16, v9);
    v22 = 1.0;
    if (v20 <= 1.0)
    {
      v22 = v20;
    }

    if (v20 <= 0.0)
    {
      v22 = 0.0;
    }

    v23 = v22;
    v24 = qword_27DFB0588;
    *(v5 + qword_27DFB0588) = *(v5 + qword_27DFB0588) + ((*(v5 + qword_27DFB0590) - *(v5 + qword_27DFB0588)) * v23);
    v25 = qword_27DFC0628;
    swift_beginAccess();
    sub_23A8CA9D8(v5 + v25, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
    type metadata accessor for SimpleScanMaterial();
    result = swift_dynamicCast();
    if (result)
    {
      v26 = v37[0];
      v27 = *(v5 + v24);
      if (*(v37[0] + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) != v27)
      {
        *(v37[0] + OBJC_IVAR____TtC8RoomPlan18SimpleScanMaterial_opacity) = v27;
        sub_23A9026C0();
        type metadata accessor for WallEntity();
        sub_23A97ED78();
        v28 = sub_23AA0CAD4();
        v30 = v29;
        v31 = sub_23AA0C4A4();
        if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_23AA10FC0;
          v33 = sub_23AA0CD84();
          v34 = MEMORY[0x277CDB298];
          *(v32 + 56) = v33;
          *(v32 + 64) = v34;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v32 + 32));
          v36 = OBJC_IVAR____TtC8RoomPlan22MeshUpdateScanMaterial_customMaterial;
          swift_beginAccess();
          (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v26 + v36, v33);
          sub_23AA0C494();
        }

        v28(v38, 0);
      }
    }
  }

  return result;
}

uint64_t sub_23A97EC64()
{
  v1 = qword_27DFB0598;
  v2 = sub_23AA0C064();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_23A97ECCC()
{
  v0 = sub_23A904938();
  v1 = qword_27DFB0598;
  v2 = sub_23AA0C064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_23A97ED78()
{
  result = qword_27DFAF8C8;
  if (!qword_27DFAF8C8)
  {
    type metadata accessor for WallEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF8C8);
  }

  return result;
}

__n128 __swift_memcpy17_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A97EDE4(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23A97EE38(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_23A97EE8C(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v3 = a2[1].i64[0];
  if (v3 != a1[1].i64[0])
  {
    return 0;
  }

  v4 = a2 + 2;
  v5 = a1 + 2;
  v6 = a3 * a3;
  do
  {
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    v8 = *v4++;
    v9 = v8;
    v10 = *v5++;
    v11 = vsubq_f32(v9, v10);
    v12 = vmulq_f32(v11, v11);
    --v3;
  }

  while ((v12.f32[2] + vaddv_f32(*v12.f32)) < v6);
  return result;
}

BOOL sub_23A97EEE8(unint64_t a1, unint64_t a2, float a3)
{
  v5 = (a2 >> 62);
  if (a2 >> 62)
  {
LABEL_31:
    v21 = a3;
    v22 = sub_23AA0D7F4();
    a3 = v21;
    v6 = v22;
    if (!(a1 >> 62))
    {
LABEL_3:
      if (v6 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a1 >> 62))
    {
      goto LABEL_3;
    }
  }

  v23 = a3;
  v24 = sub_23AA0D7F4();
  a3 = v23;
  if (v6 != v24)
  {
    return 0;
  }

LABEL_4:
  if (v5)
  {
    v8 = a3;
    v7 = sub_23AA0D7F4();
    a3 = v8;
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = a3 * a3;
  v10 = -v7;
  v11 = 4;
  do
  {
    v12 = v10 + v11 == 4;
    if (v10 + v11 == 4)
    {
      break;
    }

    v13 = v11 - 4;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EE90360](v11 - 4, a2);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v5 = *(a2 + 8 * v11);

      if (__OFADD__(v13, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x23EE90360](v11 - 4, a1);
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v14 = *(a1 + 8 * v11);
    }

    v15 = vsub_f32(v5[2], v14[2]);
    if (vaddv_f32(vmul_f32(v15, v15)) >= v9 || (v16 = vsub_f32(v5[3], v14[3]), vaddv_f32(vmul_f32(v16, v16)) >= v9) || (v17 = vsub_f32(v5[4], v14[4]), vaddv_f32(vmul_f32(v17, v17)) >= v9) || (v18 = vsub_f32(v5[5], v14[5]), vaddv_f32(vmul_f32(v18, v18)) >= v9))
    {

      return 0;
    }

    v19 = v5[6].i32[0];

    v5 = v14[6].u32[0];

    ++v11;
  }

  while (v19 == v5);
  return v12;
}

BOOL sub_23A97F130(unint64_t a1, unint64_t a2, float a3)
{
  v6 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_30:
    v7 = sub_23AA0D7F4();
    if (!(a1 >> 62))
    {
LABEL_3:
      if (v7 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a1 >> 62))
    {
      goto LABEL_3;
    }
  }

  if (v7 != sub_23AA0D7F4())
  {
    return 0;
  }

LABEL_4:
  if (v6)
  {
    v8 = sub_23AA0D7F4();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = -v8;
  v10 = 4;
  do
  {
    v11 = v9 + v10 == 4;
    if (v9 + v10 == 4)
    {
      break;
    }

    v12 = v10 - 4;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EE90360](v10 - 4, a2);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(a2 + 8 * v10);

      if (__OFADD__(v12, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x23EE90360](v10 - 4, a1);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v13 = *(a1 + 8 * v10);
    }

    if (vabds_f32(*(v6 + 16), *(v14 + 16)) >= a3 || vabds_f32(*(v6 + 20), *(v14 + 20)) >= a3 || vabds_f32(*(v6 + 24), *(v14 + 24)) >= a3)
    {

      return 0;
    }

    v15 = *(v6 + 28);
    v16 = *(v14 + 28);

    ++v10;
  }

  while (vabds_f32(v15, v16) < a3);
  return v11;
}

BOOL sub_23A97F328(float32x4_t *a1, float32x4_t *a2, float a3)
{
  v3 = a2[1].i64[0];
  if (v3 != a1[1].i64[0])
  {
    return 0;
  }

  v4 = a3 * a3;
  v5 = a2 + 3;
  v6 = a1 + 3;
  v7 = v3 + 1;
  do
  {
    result = --v7 == 0;
    if (!v7)
    {
      break;
    }

    v9 = vsubq_f32(v5[-1], v6[-1]);
    v10 = vmulq_f32(v9, v9);
    if ((v10.f32[2] + vaddv_f32(*v10.f32)) >= v4)
    {
      break;
    }

    v11 = *v5;
    v5 += 2;
    v12 = v11;
    v13 = *v6;
    v6 += 2;
    v14 = vsubq_f32(v12, v13);
    v15 = vmulq_f32(v14, v14);
  }

  while ((v15.f32[2] + vaddv_f32(*v15.f32)) < v4);
  return result;
}

uint64_t sub_23A97F3A8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>, float32x4_t a5@<Q0>, float32x4_t a6@<Q1>, float32x4_t a7@<Q2>, float32x4_t a8@<Q3>)
{
  v194.n128_u64[0] = a3;
  v198 = a7;
  v199 = a8;
  v197 = a6;
  v196 = a5;
  v204 = a4;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v203 = *(v201 - 8);
  v10 = *(v203 + 8);
  MEMORY[0x28223BE20](v201);
  v200 = &v185 - v11;
  v206 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v12 = *(v206 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v206);
  v15 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v205.i64[0] = &v185 - v17;
  MEMORY[0x28223BE20](v18);
  v195.i64[0] = &v185 - v19;
  MEMORY[0x28223BE20](v20);
  v208 = (v185.n128_u64 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v192.i64[0] = &v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v185 - v26;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v185 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v185 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v185 - v37;
  MEMORY[0x28223BE20](v39);
  v43 = &v185 - v42;
  v44 = *a1;
  if (a2)
  {
    *v45.i64 = MEMORY[0x23EE8FF80](*(v44 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition), *(v44 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation), xmmword_23AA11AF0);
    v190 = v45;
    v191 = v46;
    v193 = v47;
    v192 = v48;
    v49 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    swift_beginAccess();
    v207 = v43;
    sub_23A8D5194(v44 + v49, v43, &qword_27DFAEB38, &unk_23AA11B60);
    v50 = *(v44 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions + 4);
    sub_23A8D5194(v194.n128_i64[0], v38, &qword_27DFAEB38, &unk_23AA11B60);
    sub_23A8D5194(v38, v35, &qword_27DFAEB38, &unk_23AA11B60);
    v51 = *(v12 + 48);
    v52 = v206;
    v53 = v51(v35, 1, v206);
    v202 = v38;
    v205.i64[0] = v12 + 48;
    if (v53 == 1)
    {
      v54 = v51;
      v55 = objc_opt_self();
      v56 = [v55 degrees];
      v57 = *(v52 + 24);
      sub_23A8EA31C();
      v58 = v208;
      sub_23AA0BC64();
      v59 = v55;
      v51 = v54;
      v60 = [v59 degrees];
      v61 = v58 + *(v52 + 28);
      sub_23AA0BC64();
      *v58 = 0;
      *(v58 + 2) = 0;
      if (v54(v35, 1, v52) != 1)
      {
        sub_23A8D50D0(v35, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      sub_23A9826EC(v35, v208, type metadata accessor for CapturedRoom.Surface.Curve);
    }

    sub_23A8D5194(v207, v32, &qword_27DFAEB38, &unk_23AA11B60);
    if (v51(v32, 1, v52) == 1)
    {
      v81 = v51;
      v82 = objc_opt_self();
      v83 = [v82 degrees];
      v84 = *(v52 + 24);
      sub_23A8EA31C();
      v85 = v195.i64[0];
      sub_23AA0BC64();
      v86 = v85;
      v87 = [v82 degrees];
      v88 = v85 + *(v52 + 28);
      sub_23AA0BC64();
      *v85 = 0;
      *(v85 + 8) = 0;
      if (v81(v32, 1, v52) != 1)
      {
        sub_23A8D50D0(v32, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      v86 = v195.i64[0];
      sub_23A9826EC(v32, v195.i64[0], type metadata accessor for CapturedRoom.Surface.Curve);
    }

    v89.i64[0] = *v86;
    v205 = v89;
    v99 = *(v86 + 8);
    v100 = *(v52 + 24);
    v101 = objc_opt_self();
    v102 = [v101 radians];
    v104 = v200;
    v103 = v201;
    sub_23AA0BC84();

    sub_23AA0BC74();
    v106 = v105;
    v107 = *(v203 + 1);
    v108 = v107(v104, v103);
    v109 = v107;
    v203 = v107;
    *&v106 = v106;
    v108.n128_f32[0] = v50 * -0.5;
    v194 = v108;
    v110.f32[0] = v205.f32[0] + (v99 * cosf(*&v106));
    v189 = v110;
    v111 = v205.f32[1];
    v112.f32[0] = v111 + (v99 * sinf(*&v106));
    v188 = v112;
    v113 = *(v52 + 28);
    v114 = [v101 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v116 = v115;
    v117 = v109(v104, v103);
    *&v116 = v116;
    v117.n128_f32[0] = v50 * 0.5;
    v187 = v117;
    v118.f32[0] = v205.f32[0] + (v99 * cosf(*&v116));
    v205 = v118;
    v119 = sinf(*&v116);
    v120 = vaddq_f32(v192, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v190, v189.f32[0]), v191, v194.n128_f32[0]), v193, v188.f32[0]));
    v121 = vaddq_f32(v192, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v190, v205.f32[0]), v191, v187.n128_f32[0]), v193, v111 + (v99 * v119)));
    v205 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v120.f32[0]), v197, *v120.f32, 1), v198, v120, 2), v199, v120, 3);
    v199 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v121.f32[0]), v197, *v121.f32, 1), v198, v121, 2), v199, v121, 3);
    v122 = v208;
    LODWORD(v123) = HIDWORD(*v208);
    *&v116 = v199.f32[0] - COERCE_FLOAT(*v208);
    v124 = v199.f32[2] - v123;
    v125 = atan2f(v205.f32[2] - v123, v205.f32[0] - COERCE_FLOAT(*v208));
    v126 = atan2f(v124, *&v116);
    v127 = v125 + 6.2832;
    if (v125 >= 0.0)
    {
      v127 = v125;
    }

    else
    {
      v126 = v126 + 6.2832;
    }

    if (v127 < 6.2832)
    {
      v128 = v127;
    }

    else
    {
      v128 = v127 + -6.2832;
    }

    if (v127 >= 6.2832)
    {
      v126 = v126 + -6.2832;
    }

    if (v126 >= v128)
    {
      v129 = v126;
    }

    else
    {
      v129 = v126 + 6.2832;
    }

    v130 = *(v52 + 24);
    v131 = [v101 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v133 = v132;
    v134 = v203;
    v203(v104, v103);
    v135 = v133;
    if (v128 < v135)
    {
      v128 = v133;
    }

    v136 = *(v52 + 28);
    v137 = v195.i64[0];
    v138 = [v101 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v140 = v139;
    v134(v104, v103);
    v141 = vzip2_s32(*v205.f32, *v199.f32);
  }

  else
  {
    v193.i64[0] = v15;
    v62 = v205.i64[0];
    v63 = v40;
    v64 = v41;
    *v65.i64 = MEMORY[0x23EE8FF80](*(v44 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition), *(v44 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation), xmmword_23AA11AF0);
    v188 = v65;
    v189 = v66;
    v191 = v67;
    v190 = v68;
    v69 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
    swift_beginAccess();
    v207 = v64;
    sub_23A8D5194(v44 + v69, v64, &qword_27DFAEB38, &unk_23AA11B60);
    v70 = *(v44 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions + 4);
    sub_23A8D5194(v194.n128_i64[0], v63, &qword_27DFAEB38, &unk_23AA11B60);
    v202 = v63;
    sub_23A8D5194(v63, v27, &qword_27DFAEB38, &unk_23AA11B60);
    v71 = *(v12 + 48);
    v72 = v206;
    v73 = v71(v27, 1, v206);
    v208 = v62;
    if (v73 == 1)
    {
      v74 = objc_opt_self();
      v75 = [v74 degrees];
      v76 = *(v72 + 24);
      sub_23A8EA31C();
      v77 = v205.i64[0];
      v78 = v208;
      sub_23AA0BC64();
      v79 = [v74 degrees];
      v80 = v77 + *(v72 + 28);
      sub_23AA0BC64();
      *v78 = 0;
      *(v78 + 2) = 0;
      if (v71(v27, 1, v72) != 1)
      {
        sub_23A8D50D0(v27, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      sub_23A9826EC(v27, v62, type metadata accessor for CapturedRoom.Surface.Curve);
    }

    v90 = v192.i64[0];
    sub_23A8D5194(v207, v192.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
    v91 = v71(v90, 1, v72);
    v92 = v193.i64[0];
    if (v91 == 1)
    {
      v93 = objc_opt_self();
      v94 = [v93 degrees];
      v195.i64[0] = v71;
      v95 = *(v72 + 24);
      sub_23A8EA31C();
      sub_23AA0BC64();
      v96 = [v93 &selRef_saveAndCreateUSDZPackageWithURL_ + 6];
      v97 = v92 + *(v72 + 28);
      sub_23AA0BC64();
      *v92 = 0;
      *(v92 + 8) = 0;
      if ((v195.i64[0])(v90, 1, v72) != 1)
      {
        sub_23A8D50D0(v90, &qword_27DFAEB38, &unk_23AA11B60);
      }
    }

    else
    {
      sub_23A9826EC(v90, v193.i64[0], type metadata accessor for CapturedRoom.Surface.Curve);
    }

    v98.i64[0] = *v92;
    v195 = v98;
    v142 = *(v92 + 8);
    v143 = *(v72 + 24);
    v144 = objc_opt_self();
    v194.n128_u64[0] = v144;
    v145 = [v144 radians];
    v146 = v200;
    v147 = v72;
    v148 = v201;
    sub_23AA0BC84();

    sub_23AA0BC74();
    v150 = v149;
    v151 = *(v203 + 1);
    v152 = v151(v146, v148);
    v153 = v151;
    v203 = v151;
    *&v150 = v150;
    v152.f32[0] = v70 * -0.5;
    v192 = v152;
    v154.n128_f32[0] = v195.f32[0] + (v142 * cosf(*&v150));
    v187 = v154;
    v155 = v195.f32[1];
    *&v156 = v155 + (v142 * sinf(*&v150));
    v186 = v156;
    v157 = *(v147 + 28);
    v158 = [v144 radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v160 = v159;
    v161 = v153(v146, v148);
    *&v160 = v160;
    v161.n128_f32[0] = v70 * 0.5;
    v185 = v161;
    v162.f32[0] = v195.f32[0] + (v142 * cosf(*&v160));
    v195 = v162;
    v163 = sinf(*&v160);
    v164 = vaddq_f32(v190, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v188, v187.n128_f32[0]), v189, v192.f32[0]), v191, *&v186));
    v165 = vaddq_f32(v190, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v188, v195.f32[0]), v189, v185.n128_f32[0]), v191, v155 + (v142 * v163)));
    v195 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v164.f32[0]), v197, *v164.f32, 1), v198, v164, 2), v199, v164, 3);
    v199 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v165.f32[0]), v197, *v165.f32, 1), v198, v165, 2), v199, v165, 3);
    LODWORD(v166) = HIDWORD(*v208);
    *&v160 = v199.f32[0] - COERCE_FLOAT(*v208);
    v167 = v199.f32[2] - v166;
    v168 = atan2f(v195.f32[2] - v166, v195.f32[0] - COERCE_FLOAT(*v208));
    v169 = atan2f(v167, *&v160);
    v170 = v168 + 6.2832;
    if (v168 >= 0.0)
    {
      v170 = v168;
    }

    else
    {
      v169 = v169 + 6.2832;
    }

    if (v170 < 6.2832)
    {
      v128 = v170;
    }

    else
    {
      v128 = v170 + -6.2832;
    }

    if (v170 >= 6.2832)
    {
      v169 = v169 + -6.2832;
    }

    if (v169 >= v128)
    {
      v129 = v169;
    }

    else
    {
      v129 = v169 + 6.2832;
    }

    v171 = v206;
    v172 = *(v206 + 24);
    v173 = v194.n128_u64[0];
    v174 = [v194.n128_u64[0] radians];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v176 = v175;
    v177 = v203;
    v203(v146, v148);
    v178 = v176;
    if (v128 < v178)
    {
      v128 = v176;
    }

    v179 = *(v171 + 28);
    v180 = [v173 byte_278B655E4];
    sub_23AA0BC84();

    sub_23AA0BC74();
    v140 = v181;
    v177(v146, v148);
    v122 = v208;
    v141 = vzip2_s32(*v195.f32, *v199.f32);
    v137 = v193.i64[0];
  }

  sub_23A982754(v137, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A982754(v122, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A8D50D0(v202, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v207, &qword_27DFAEB38, &unk_23AA11B60);
  v182 = v140;
  if (v129 >= v182)
  {
    v183 = v140;
  }

  else
  {
    v183 = v129;
  }

  type metadata accessor for CurvedElement();
  result = swift_allocObject();
  *(result + 16) = v128;
  *(result + 20) = v183;
  *(result + 24) = v141;
  *v204 = result;
  return result;
}

uint64_t sub_23A9804A8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_23AA0D7F4();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_23A945F98(result, v2);
}

BOOL sub_23A980560(float32x4_t *a1, float a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve;
  v38 = v2;
  sub_23A8D5194(v2 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, v11, &qword_27DFAEB38, &unk_23AA11B60);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    v8 = v11;
LABEL_5:
    sub_23A8D50D0(v8, &qword_27DFAEB38, &unk_23AA11B60);
    if (v21(v38 + v20, 1, v12) != 1 || v21(a1 + v20, 1, v12) != 1)
    {
      return 0;
    }

    goto LABEL_9;
  }

  sub_23A9826EC(v11, v19, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A8D5194(a1 + v20, v8, &qword_27DFAEB38, &unk_23AA11B60);
  if (v21(v8, 1, v12) == 1)
  {
    sub_23A982754(v19, type metadata accessor for CapturedRoom.Surface.Curve);
    goto LABEL_5;
  }

  sub_23A9826EC(v8, v16, type metadata accessor for CapturedRoom.Surface.Curve);
  v22 = sub_23A8EA248(v16);
  sub_23A982754(v16, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A982754(v19, type metadata accessor for CapturedRoom.Surface.Curve);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (sub_23A982414(v38 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, a1 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut))
  {
    return 0;
  }

  if (sub_23A982414(v38 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, a1 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut))
  {
    return 0;
  }

  v23 = vsubq_f32(v38[1], a1[1]);
  v24 = vmulq_f32(v23, v23);
  if ((v24.f32[2] + vaddv_f32(*v24.f32)) >= (a2 * a2))
  {
    return 0;
  }

  v25 = *(v38->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners);
  v26 = *(a1->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners);
  v27 = v25[1].i64[0];
  if (v27 != v26[1].i64[0])
  {
    return 0;
  }

  v28 = v25 + 2;
  v29 = v26 + 2;
  v30 = 0;
  while (v27)
  {
    v31 = *v28++;
    v32 = v31;
    v33 = *v29++;
    v34 = vsubq_f32(v32, v33);
    v35 = vmulq_f32(v34, v34);
    --v27;
    if ((v35.f32[2] + vaddv_f32(*v35.f32)) >= (a2 * a2))
    {
      return v30;
    }
  }

  if (!sub_23A97EEE8(*(a1->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements), *(v38->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements), a2) || !sub_23A97F130(*(a1->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements), *(v38->u64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements), a2))
  {
    return 0;
  }

  return sub_23A97F328(*(a1->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements), *(v38->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements), a2);
}

uint64_t sub_23A980964()
{
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, &qword_27DFAEB38, &unk_23AA11B60);
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners);

  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childOpenings);

  v3 = *(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects);

  v4 = *(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements);

  v5 = *(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements);

  v6 = *(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements);

  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, &unk_27DFAF020, &unk_23AA12300);
  return v0;
}

uint64_t sub_23A980A4C()
{
  sub_23A980964();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScanEntityMeshModel()
{
  result = qword_27DFB05B0;
  if (!qword_27DFB05B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A980AF8()
{
  sub_23A980C20(319, &qword_27DFAEC08, type metadata accessor for CapturedRoom.Surface.Curve);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23A980C20(319, &qword_27DFAEC10, type metadata accessor for ScanItemStrut);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23A980C20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23AA0D664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23A980C74(uint64_t a1, int a2, float32x4_t a3, float32x4_t a4, __n128 a5, __n128 a6)
{
  v206 = a6;
  v205 = a5;
  v204 = a4;
  v203 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v193 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v192 = &v189 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v191 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v199.n128_u64[0] = &v189 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v189 - v19;
  v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  v22 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  v208 = a2;
  if (a2)
  {
    v207 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    v23 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

    v25 = sub_23A8DC460(v24);

    v26 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
  }

  else
  {
    v207 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
    v27 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges);

    v25 = sub_23A8DC460(v28);

    v26 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
  }

  v29 = a1 + *v26;
  swift_beginAccess();
  sub_23A8D5194(v29, v20, &qword_27DFAEB38, &unk_23AA11B60);
  v219.columns[0] = v203;
  v219.columns[1] = v204;
  v219.columns[2] = v205;
  v219.columns[3] = v206;
  v220 = __invert_f4(v219);
  v213 = v220.columns[0];
  v212 = v220.columns[1];
  v211 = v220.columns[2];
  v210 = v220.columns[3];
  v30 = *(v25 + 16);
  if (v30)
  {
    v217[0] = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v30, 0);
    v32 = v217[0];
    v33 = *(v217[0] + 16);
    v34 = 32;
    do
    {
      v35 = *(v25 + v34);
      v217[0] = v32;
      v36 = *(v32 + 24);
      if (v33 >= v36 >> 1)
      {
        v209 = v31;
        v202 = v35;
        sub_23A975DC0((v36 > 1), v33 + 1, 1);
        v35 = v202;
        v31.i32[3] = v209.i32[3];
        v32 = v217[0];
      }

      v37 = vaddq_f32(v210, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213, v35.f32[0]), v212, *v35.f32, 1), v211, v35, 2));
      v37.i32[3] = v31.i32[3];
      *(v32 + 16) = v33 + 1;
      *(v32 + 16 * v33 + 32) = v37;
      v34 += 16;
      ++v33;
      v31 = v37;
      --v30;
    }

    while (v30);
    v190 = v32;

    v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  }

  else
  {

    v190 = MEMORY[0x277D84F90];
  }

  v38 = sub_23A8D7CF0();
  v39 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  v209.i64[0] = v39;
  v202.n128_u64[0] = v41;
  *&v200 = v40 + 48;
  v42 = v41(v20, 1);
  v43 = v199.n128_u64[0];
  if (v42 == 1)
  {

    v44 = v38;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v45 = (v202.n128_u64[0])(v20, 1, v209.i64[0]);
  v46 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v198 = v38;
  *&v201 = v44;
  v197 = v20;
  v196 = a1;
  if (v45 != 1)
  {
    v217[0] = MEMORY[0x277D84F90];
    if (v38 >> 62)
    {
      goto LABEL_30;
    }

    v48 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      while (1)
      {
        v49 = 0;
        v22 = (v38 & 0xC000000000000001);
        v46 = v38 & 0xFFFFFFFFFFFFFF8;
        v44 = &qword_27DFAEB38;
        v21 = &unk_23AA11B60;
        while (v22)
        {
          v20 = MEMORY[0x23EE90360](v49, v38);
          v50 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            v47 = v217[0];
            v20 = v197;
            v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
            v22 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
            v44 = v201;
            v46 = MEMORY[0x277D84F90];
            goto LABEL_32;
          }

LABEL_23:
          sub_23A8D5194(&v20[OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve], v43, &qword_27DFAEB38, &unk_23AA11B60);
          if ((v202.n128_u64[0])(v43, 1, v209.i64[0]) == 1)
          {

            sub_23A8D50D0(v43, &qword_27DFAEB38, &unk_23AA11B60);
          }

          else
          {
            sub_23A8D50D0(v43, &qword_27DFAEB38, &unk_23AA11B60);
            sub_23AA0D944();
            v51 = *(v217[0] + 16);
            sub_23AA0D974();
            v43 = v199.n128_u64[0];
            sub_23AA0D984();
            sub_23AA0D954();
            v38 = v198;
          }

          ++v49;
          if (v50 == v48)
          {
            goto LABEL_28;
          }
        }

        if (v49 < *(v46 + 16))
        {
          break;
        }

        __break(1u);
LABEL_30:
        v48 = sub_23AA0D7F4();
        if (!v48)
        {
          goto LABEL_31;
        }
      }

      v20 = *(v38 + 8 * v49 + 32);

      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

LABEL_31:
    v47 = MEMORY[0x277D84F90];
  }

LABEL_32:
  v195 = v47;
  v52 = v208 & 1;
  result = sub_23A8D8288();
  v216 = result;
  v194 = v52;
  if (v52)
  {
LABEL_59:
    if (!(v44 >> 62))
    {
      v54 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
LABEL_61:
        v217[0] = v46;
        sub_23AA0D964();
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_258;
        }

        if ((v44 & 0xC000000000000001) != 0)
        {
          v62 = 0;
          v61.n128_u64[0] = vmul_f32(*v207.f32, 0x3F0000003F000000);
          v63 = vneg_f32(v61.n128_u64[0]);
          v64 = vsub_f32(vdup_n_s32(0x3CF5C28Fu), v61.n128_u64[0]);
          v65 = v61.n128_f32[0] + -0.03;
          v201 = v61;
          v66 = v61.n128_f32[1] + -0.03;
          v200 = xmmword_23AA11AF0;
          while (1)
          {
            v70 = MEMORY[0x23EE90360](v62, v44);
            v71 = v70;
            v72 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
            if ((v208 & 1) == 0)
            {
              v72 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
            }

            v73 = *(v70 + *v72);
            v74 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
            if (v208)
            {
              v75 = v22;
            }

            else
            {
              v74 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
              v75 = v21;
            }

            *v76.i64 = MEMORY[0x23EE8FF80](v73, *(v70 + *v74), v200);
            v77 = *(v71 + *v75);
            v81 = vaddq_f32(v80, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, -0.5 * v77.f32[0]), v78, vmuls_lane_f32(-0.5, *v77.f32, 1)), v79, vmuls_lane_f32(-0.5, v77, 2)));
            v82 = vaddq_f32(v80, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, 0.5 * v77.f32[0]), v78, vmuls_lane_f32(0.5, *v77.f32, 1)), v79, vmuls_lane_f32(0.5, v77, 2)));
            v209 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213, v81.f32[0]), v212, *v81.f32, 1), v211, v81, 2), v210, v81, 3);
            v202 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213, v82.f32[0]), v212, *v82.f32, 1), v211, v82, 2), v210, v82, 3);
            type metadata accessor for OpeningElement();
            v83 = swift_allocObject();
            v84 = vbsl_s8(vcgt_f32(*v209.f32, v202.n128_u64[0]), v202.n128_u64[0], *v209.f32);
            v85 = vbsl_s8(vcge_f32(v202.n128_u64[0], *v209.f32), v202.n128_u64[0], *v209.f32);
            v86 = vmvn_s8(vcge_f32(v64, v84));
            if (v86.i8[0])
            {
              if (v86.i8[4])
              {
                v87 = 0;
              }

              else
              {
                v87 = 4;
              }
            }

            else
            {
              if (v86.i8[4])
              {
                if (v65 > v85.f32[0])
                {
                  v87 = 1;
                  if (v66 <= v85.f32[1])
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_64;
                }

                v87 = 1;
LABEL_82:
                v87 |= 2u;
                goto LABEL_83;
              }

              v87 = 5;
            }

            if (v65 <= v85.f32[0])
            {
              goto LABEL_82;
            }

LABEL_83:
            if (v66 <= v85.f32[1])
            {
LABEL_84:
              v87 |= 8u;
            }

LABEL_64:
            v67 = vminnm_f32(vmaxnm_f32(v84, v63), *&v201);
            v68 = vminnm_f32(vmaxnm_f32(v85, v63), *&v201);
            *(v83 + 16) = v67;
            *(v83 + 24) = __PAIR64__(v67.u32[1], v68.u32[0]);
            v67.i32[1] = v68.i32[1];
            ++v62;
            *(v83 + 32) = v68;
            *(v83 + 40) = v67;
            *(v83 + 48) = v87;
            swift_unknownObjectRelease();
            sub_23AA0D944();
            v69 = *(v217[0] + 16);
            sub_23AA0D974();
            sub_23AA0D984();
            sub_23AA0D954();
            if (v54 == v62)
            {
              goto LABEL_110;
            }
          }
        }

        v88.n128_u64[1] = v207.u64[1];
        v88.n128_u64[0] = vmul_f32(*v207.f32, 0x3F0000003F000000);
        v89 = vneg_f32(v88.n128_u64[0]);
        v90 = vsub_f32(vdup_n_s32(0x3CF5C28Fu), v88.n128_u64[0]);
        v91 = v88.n128_f32[0] + -0.03;
        v200 = v88;
        v92 = v88.n128_f32[1] + -0.03;
        v93 = 32;
        v199 = xmmword_23AA11AF0;
        while (1)
        {
          v97 = *(v201 + v93);
          v98 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
          if ((v208 & 1) == 0)
          {
            v98 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
          }

          v209 = *(v97 + *v98);
          v99 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
          if ((v208 & 1) == 0)
          {
            v99 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
          }

          v202 = *(v97 + *v99);
          if (v208)
          {
            v100 = v22;
          }

          else
          {
            v100 = v21;
          }

          *v102.i64 = MEMORY[0x23EE8FF80](v101, v209, v202, v199);
          v103 = *(v97 + *v100);
          v107 = vaddq_f32(v106, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v102, -0.5 * v103.f32[0]), v104, vmuls_lane_f32(-0.5, *v103.f32, 1)), v105, vmuls_lane_f32(-0.5, v103, 2)));
          v108 = vaddq_f32(v106, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v102, 0.5 * v103.f32[0]), v104, vmuls_lane_f32(0.5, *v103.f32, 1)), v105, vmuls_lane_f32(0.5, v103, 2)));
          v209 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213, v107.f32[0]), v212, *v107.f32, 1), v211, v107, 2), v210, v107, 3);
          v202 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213, v108.f32[0]), v212, *v108.f32, 1), v211, v108, 2), v210, v108, 3);
          type metadata accessor for OpeningElement();
          v109 = swift_allocObject();
          v110 = vbsl_s8(vcgt_f32(*v209.f32, v202.n128_u64[0]), v202.n128_u64[0], *v209.f32);
          v111 = vbsl_s8(vcge_f32(v202.n128_u64[0], *v209.f32), v202.n128_u64[0], *v209.f32);
          v112 = vmvn_s8(vcge_f32(v90, v110));
          if (v112.i8[0])
          {
            if (v112.i8[4])
            {
              v113 = 0;
            }

            else
            {
              v113 = 4;
            }
          }

          else
          {
            if (v112.i8[4])
            {
              if (v91 > v111.f32[0])
              {
                v113 = 1;
                if (v92 <= v111.f32[1])
                {
                  goto LABEL_109;
                }

                goto LABEL_87;
              }

              v113 = 1;
LABEL_107:
              v113 |= 2u;
              goto LABEL_108;
            }

            v113 = 5;
          }

          if (v91 <= v111.f32[0])
          {
            goto LABEL_107;
          }

LABEL_108:
          if (v92 <= v111.f32[1])
          {
LABEL_109:
            v113 |= 8u;
          }

LABEL_87:
          v94 = vminnm_f32(vmaxnm_f32(v110, v89), *&v200);
          v95 = vminnm_f32(vmaxnm_f32(v111, v89), *&v200);
          *(v109 + 16) = v94;
          *(v109 + 24) = __PAIR64__(v94.u32[1], v95.u32[0]);
          v94.i32[1] = v95.i32[1];
          *(v109 + 32) = v95;
          *(v109 + 40) = v94;
          *(v109 + 48) = v113;

          sub_23AA0D944();
          v96 = *(v217[0] + 16);
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
          v93 += 8;
          if (!--v54)
          {
LABEL_110:

            v54 = v217[0];
            goto LABEL_153;
          }
        }
      }

LABEL_152:

      v54 = MEMORY[0x277D84F90];
LABEL_153:
      v215 = v54;
      v126 = v54 & 0xFFFFFFFFFFFFFF8;
      v44 = v54 >> 62;
      if (v54 >> 62)
      {
        goto LABEL_245;
      }

      v127 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_155:
      v52 = 0;
      while (1)
      {
        if (v127 == v52)
        {
          if (v44)
          {
            v52 = sub_23AA0D7F4();
          }

          else
          {
            v52 = *(v126 + 16);
          }

          goto LABEL_175;
        }

        if ((v54 & 0xC000000000000001) != 0)
        {
          v129 = MEMORY[0x23EE90360](v52, v54);
        }

        else
        {
          if (v52 >= *(v126 + 16))
          {
            goto LABEL_238;
          }

          v128 = *(v54 + 8 * v52 + 32);
        }

        v130 = *(v129 + 16);
        v131 = *(v129 + 32);

        v132 = vceq_f32(v130, v131);
        v133 = v52 + 1;
        v134 = __OFADD__(v52, 1);
        if ((v132.i8[0] | v132.i8[4]))
        {
          break;
        }

        ++v52;
        if (v134)
        {
          goto LABEL_239;
        }
      }

      if (v134)
      {
        goto LABEL_262;
      }

      if (v44)
      {
        if (v133 != sub_23AA0D7F4())
        {
LABEL_203:
          v173 = v52 + 5;
          do
          {
            v174 = v173 - 4;
            v126 = v54 & 0xC000000000000001;
            if ((v54 & 0xC000000000000001) != 0)
            {
              v176 = MEMORY[0x23EE90360](v173 - 4, v54);
            }

            else
            {
              if ((v174 & 0x8000000000000000) != 0)
              {
                goto LABEL_240;
              }

              if (v174 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_241;
              }

              v175 = *(v54 + 8 * v173);
            }

            v177 = *(v176 + 16);
            v178 = *(v176 + 32);

            v179 = vceq_f32(v177, v178);
            if (((v179.i32[0] | v179.i32[1]) & 1) == 0)
            {
              if (v174 != v52)
              {
                if (v126)
                {
                  v126 = MEMORY[0x23EE90360](v52, v54);
                  v44 = MEMORY[0x23EE90360](v173 - 4, v54);
                }

                else
                {
                  if ((v52 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_255;
                  }

                  v180 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v52 >= v180)
                  {
                    goto LABEL_256;
                  }

                  if (v174 >= v180)
                  {
                    goto LABEL_257;
                  }

                  v126 = *(v54 + 8 * v52 + 32);
                  v44 = *(v54 + 8 * v173);
                }

                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v54 & 0x8000000000000000) != 0 || (v54 & 0x4000000000000000) != 0)
                {
                  v54 = sub_23A97E578(v54);
                  v22 = ((v54 >> 62) & 1);
                }

                else
                {
                  v22 = 0;
                }

                v181 = v54 & 0xFFFFFFFFFFFFFF8;
                v182 = *((v54 & 0xFFFFFFFFFFFFFF8) + 8 * v52 + 0x20);
                *((v54 & 0xFFFFFFFFFFFFFF8) + 8 * v52 + 0x20) = v44;

                if ((v54 & 0x8000000000000000) != 0 || v22)
                {
                  v54 = sub_23A97E578(v54);
                  v181 = v54 & 0xFFFFFFFFFFFFFF8;
                  if ((v174 & 0x8000000000000000) != 0)
                  {
LABEL_235:
                    __break(1u);
LABEL_236:
                    __break(1u);
LABEL_237:
                    __break(1u);
LABEL_238:
                    __break(1u);
LABEL_239:
                    __break(1u);
LABEL_240:
                    __break(1u);
LABEL_241:
                    __break(1u);
LABEL_242:
                    __break(1u);
LABEL_243:
                    __break(1u);
LABEL_244:
                    __break(1u);
LABEL_245:
                    v127 = sub_23AA0D7F4();
                    goto LABEL_155;
                  }
                }

                else if ((v174 & 0x8000000000000000) != 0)
                {
                  goto LABEL_235;
                }

                if (v174 >= *(v181 + 16))
                {
                  goto LABEL_244;
                }

                v183 = *(v181 + 8 * v173);
                *(v181 + 8 * v173) = v126;

                v215 = v54;
              }

              v124 = __OFADD__(v52++, 1);
              if (v124)
              {
                goto LABEL_243;
              }
            }

            v124 = __OFADD__(v174, 1);
            v184 = v173 - 3;
            if (v124)
            {
              goto LABEL_242;
            }

            if (v54 >> 62)
            {
              v185 = sub_23AA0D7F4();
            }

            else
            {
              v185 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v173;
          }

          while (v184 != v185);
        }
      }

      else if (v133 != *(v126 + 16))
      {
        goto LABEL_203;
      }

LABEL_175:
      if (v54 >> 62)
      {
        v135 = sub_23AA0D7F4();
        if (v135 >= v52)
        {
LABEL_177:
          v136 = sub_23A945F68(v52, v135);
          MEMORY[0x28223BE20](v136);
          *(&v189 - 112) = v194;
          v137 = v212;
          *(&v189 - 6) = v213;
          *(&v189 - 5) = v137;
          v138 = v210;
          *(&v189 - 4) = v211;
          *(&v189 - 3) = v138;
          *&v187 = v20;
          v188 = v207;
          v52 = 0;
          v139 = sub_23A965F9C(sub_23A9827B4, (&v189 - 16), v195);

          v214 = v139;
          if (!(v139 >> 62))
          {
            v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v140 <= 0x19)
            {
              goto LABEL_181;
            }

            v124 = __OFSUB__(v140, 25);
            v141 = v140 - 25;
            if (!v124)
            {
              goto LABEL_180;
            }

            goto LABEL_251;
          }

LABEL_248:
          if (sub_23AA0D7F4() <= 25)
          {
LABEL_181:
            v44 = v216;
            v199.n128_u64[0] = v52;
            if (!(v216 >> 62))
            {
              v202.n128_u64[0] = v216 & 0xFFFFFFFFFFFFFF8;
              v126 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_183;
            }

LABEL_252:
            v202.n128_u64[0] = v44 & 0xFFFFFFFFFFFFFF8;
            v126 = sub_23AA0D7F4();
LABEL_183:
            v22 = (v44 & 0xC000000000000001);

            v142 = 0;
            *&v200 = MEMORY[0x277D84F90];
            v201 = xmmword_23AA11AF0;
            while (v126 != v142)
            {
              if (v22)
              {
                v143 = v44;
                v44 = MEMORY[0x23EE90360](v142, v44);
                v54 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
                v20 = (v142 + 1);
                if (__OFADD__(v142, 1))
                {
                  goto LABEL_236;
                }
              }

              else
              {
                v54 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
                if (v142 >= *(v202.n128_u64[0] + 16))
                {
                  goto LABEL_237;
                }

                v143 = v44;
                v44 = *(v44 + 8 * v142 + 32);

                v20 = (v142 + 1);
                if (__OFADD__(v142, 1))
                {
                  goto LABEL_236;
                }
              }

              v144 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
              if ((v208 & 1) == 0)
              {
                v144 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
              }

              v145 = *(v44 + *v144);
              v146 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
              if (v208)
              {
                v54 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
              }

              else
              {
                v146 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
              }

              *v147.i64 = MEMORY[0x23EE8FF80](v145, *(v44 + *v146), v201);
              v213 = v147;
              v212 = v148;
              v211 = v149;
              v210 = v150;
              v209 = *(v44 + *v54);
              v151 = sub_23A901C30(*(v44 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category));
              sub_23A902044(v151, v217, v209, v213, v212, v211, v210, v207, v203, v204, v205, v206);
              v153 = v217[0];
              v152 = v217[1];
              v155 = v217[2];
              v154 = v217[3];

              ++v142;
              v44 = v143;
              if ((v218 & 1) == 0)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  *&v200 = sub_23A938D78(0, *(v200 + 16) + 1, 1, v200);
                }

                v157 = *(v200 + 16);
                v156 = *(v200 + 24);
                if (v157 >= v156 >> 1)
                {
                  *&v200 = sub_23A938D78((v156 > 1), v157 + 1, 1, v200);
                }

                v158 = v200;
                *(v200 + 16) = v157 + 1;
                v159 = (v158 + 32 * v157);
                v159[4] = v153;
                v159[5] = v152;
                v159[6] = v155;
                v159[7] = v154;
                v142 = v20;
                v44 = v143;
              }
            }

            v160 = v197;
            v161 = v191;
            sub_23A8D5194(v197, v191, &qword_27DFAEB38, &unk_23AA11B60);
            v162 = v215;
            v213.i64[0] = v214;
            v163 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
            v164 = v196;
            swift_beginAccess();
            v165 = v192;
            sub_23A8D5194(v164 + v163, v192, &unk_27DFAF020, &unk_23AA12300);
            v166 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
            swift_beginAccess();
            v167 = v164 + v166;
            v168 = v193;
            sub_23A8D5194(v167, v193, &unk_27DFAF020, &unk_23AA12300);
            v169 = type metadata accessor for ScanEntityMeshModel();
            v170 = *(v169 + 48);
            v171 = *(v169 + 52);
            v172 = swift_allocObject();
            v172[1] = v207;
            sub_23A930208(v161, v172 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curve, &qword_27DFAEB38, &unk_23AA11B60);
            *(v172->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_polygonCorners) = v190;
            *(v172->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childOpenings) = v198;
            *(v172->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjects) = v44;
            *(v172->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_straightOpeningElements) = v162;
            *(v172->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_curvedOpeningElements) = v213.i64[0];
            *(v172->i64 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_childObjectElements) = v200;
            sub_23A930208(v165, v172 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_leftStrut, &unk_27DFAF020, &unk_23AA12300);
            sub_23A930208(v168, v172 + OBJC_IVAR____TtC8RoomPlan19ScanEntityMeshModel_rightStrut, &unk_27DFAF020, &unk_23AA12300);
            sub_23A8D50D0(v160, &qword_27DFAEB38, &unk_23AA11B60);
            return v172;
          }

          v186 = sub_23AA0D7F4();
          v124 = __OFSUB__(v186, 25);
          v141 = v186 - 25;
          if (!v124)
          {
LABEL_180:
            sub_23A9804A8(v141);
            goto LABEL_181;
          }

LABEL_251:
          __break(1u);
          goto LABEL_252;
        }
      }

      else
      {
        v135 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v135 >= v52)
        {
          goto LABEL_177;
        }
      }

      __break(1u);
      goto LABEL_248;
    }

LABEL_151:
    v54 = sub_23AA0D7F4();
    if (v54)
    {
      goto LABEL_61;
    }

    goto LABEL_152;
  }

  v54 = result;
  v52 = result & 0xFFFFFFFFFFFFFF8;
  v44 = result >> 62;
  if (result >> 62)
  {
    goto LABEL_259;
  }

  v55 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:
  v46 = 0;
  v21 = (v54 & 0xC000000000000001);
  while (1)
  {
    if (v55 == v46)
    {
      if (v44)
      {
        result = sub_23AA0D7F4();
        v46 = result;
      }

      else
      {
        v46 = *(v52 + 16);
      }

      v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
      v44 = v201;
      goto LABEL_56;
    }

    if (v21)
    {
      v57 = MEMORY[0x23EE90360](v46, v54);
    }

    else
    {
      if (v46 >= *(v52 + 16))
      {
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
        goto LABEL_151;
      }

      v56 = *(v54 + 8 * v46 + 32);
    }

    v58 = *(v57 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);

    v59 = __OFADD__(v46, 1);
    if (v58 == 10)
    {
      break;
    }

    ++v46;
    v22 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
    if (v59)
    {
      goto LABEL_146;
    }
  }

  v22 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  if (v59)
  {
    goto LABEL_266;
  }

  v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  if (v44)
  {
    result = sub_23AA0D7F4();
  }

  else
  {
    result = *(v52 + 16);
  }

  v44 = v201;
  if (v46 + 1 != result)
  {
    v52 = v46 + 5;
    do
    {
      v114 = v52 - 4;
      v44 = v54 & 0xC000000000000001;
      if ((v54 & 0xC000000000000001) != 0)
      {
        v116 = MEMORY[0x23EE90360](v52 - 4, v54);
      }

      else
      {
        if ((v114 & 0x8000000000000000) != 0)
        {
          goto LABEL_147;
        }

        if (v114 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_148;
        }

        v115 = *(v54 + 8 * v52);
      }

      v117 = *(v116 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category);

      if (v117 == 10)
      {
        v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
        v44 = v201;
      }

      else
      {
        if (v114 == v46)
        {
          v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
        }

        else
        {
          if (v44)
          {
            v44 = MEMORY[0x23EE90360](v46, v54);
            v118 = MEMORY[0x23EE90360](v52 - 4, v54);
          }

          else
          {
            if (v46 < 0)
            {
              goto LABEL_263;
            }

            v119 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v46 >= v119)
            {
              goto LABEL_264;
            }

            if (v114 >= v119)
            {
              goto LABEL_265;
            }

            v44 = *(v54 + 8 * v46 + 32);
            v118 = *(v54 + 8 * v52);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v54 & 0x8000000000000000) != 0 || (v54 & 0x4000000000000000) != 0)
          {
            v54 = sub_23A97E578(v54);
            v120 = (v54 >> 62) & 1;
          }

          else
          {
            LODWORD(v120) = 0;
          }

          v121 = v54 & 0xFFFFFFFFFFFFFF8;
          v122 = *((v54 & 0xFFFFFFFFFFFFFF8) + 8 * v46 + 0x20);
          *((v54 & 0xFFFFFFFFFFFFFF8) + 8 * v46 + 0x20) = v118;

          if ((v54 & 0x8000000000000000) != 0 || v120)
          {
            v54 = sub_23A97E578(v54);
            v121 = v54 & 0xFFFFFFFFFFFFFF8;
          }

          v21 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
          v22 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
          if ((v114 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            result = sub_23AA0D7F4();
            v55 = result;
            goto LABEL_35;
          }

          if (v114 >= *(v121 + 16))
          {
            goto LABEL_254;
          }

          v123 = *(v121 + 8 * v52);
          *(v121 + 8 * v52) = v44;

          v216 = v54;
        }

        v124 = __OFADD__(v46++, 1);
        v44 = v201;
        if (v124)
        {
          goto LABEL_150;
        }
      }

      v124 = __OFADD__(v114, 1);
      v125 = v52 - 3;
      if (v124)
      {
        goto LABEL_149;
      }

      if (v54 >> 62)
      {
        result = sub_23AA0D7F4();
      }

      else
      {
        result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v52;
    }

    while (v125 != result);
  }

LABEL_56:
  if (v54 >> 62)
  {
    result = sub_23AA0D7F4();
    v60 = result;
    if (result < v46)
    {
      goto LABEL_261;
    }

LABEL_58:
    sub_23A945F38(v46, v60);
    v46 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

  v60 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v60 >= v46)
  {
    goto LABEL_58;
  }

LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
  return result;
}

BOOL sub_23A982414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ScanItemStrut();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_23A8D5194(a1, v10, &unk_27DFAF020, &unk_23AA12300);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v7 = v10;
  }

  else
  {
    sub_23A9826EC(v10, v18, type metadata accessor for ScanItemStrut);
    sub_23A8D5194(a2, v7, &unk_27DFAF020, &unk_23AA12300);
    if (v19(v7, 1, v11) != 1)
    {
      sub_23A9826EC(v7, v15, type metadata accessor for ScanItemStrut);
      v21 = sub_23A8E9A6C(v15, 0.001);
      sub_23A982754(v15, type metadata accessor for ScanItemStrut);
      sub_23A982754(v18, type metadata accessor for ScanItemStrut);
      return !v21;
    }

    sub_23A982754(v18, type metadata accessor for ScanItemStrut);
  }

  sub_23A8D50D0(v7, &unk_27DFAF020, &unk_23AA12300);
  return v19(a1, 1, v11) != 1 || v19(a2, 1, v11) != 1;
}

uint64_t sub_23A9826EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A982754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A9827E4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_23A982850(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_109;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_23AA0D7F4())
  {
    if ((result - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      return result;
    }

    v72 = v1;
    v1 = 4 * result;
    if (4 * result < 0)
    {
      goto LABEL_111;
    }

    if (HIDWORD(v1))
    {
      goto LABEL_112;
    }

    if (v1)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_97;
        }

        v7 = __CFADD__(v5, 4);
        v5 += 4;
        if (v7)
        {
          v5 = -1;
        }

        ++v4;
        if (v5 >= v1)
        {
          goto LABEL_15;
        }
      }
    }

    v6 = 0;
LABEL_15:
    v76 = MEMORY[0x277D84F90];
    result = sub_23A975DA0(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      goto LABEL_113;
    }

    v70 = v2;
    if (v6)
    {
      v8 = 0;
      while (v8 < v1)
      {
        if (v8 >= 0xFFFFFFFC)
        {
          v9 = -1;
        }

        else
        {
          v9 = v8 + 4;
        }

        if (v8 >= 0xFFFFFFFD)
        {
          goto LABEL_99;
        }

        v11 = v76[2];
        v10 = v76[3];
        v2 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          sub_23A975DA0((v10 > 1), v11 + 1, 1);
        }

        v76[2] = v2;
        v12 = &v76[2 * v11];
        *(v12 + 8) = v8;
        *(v12 + 36) = vadd_s32(vdup_n_s32(v8), 0x200000001);
        *(v12 + 11) = v8 + 3;
        v8 = v9;
        if (!--v6)
        {
          if (v9 < v1)
          {
            goto LABEL_30;
          }

          goto LABEL_39;
        }
      }

      goto LABEL_98;
    }

    if (v1)
    {
      v9 = 0;
LABEL_30:
      while (1)
      {
        v13 = v9 >= 0xFFFFFFFC ? -1 : v9 + 4;
        if (v9 >= 0xFFFFFFFD)
        {
          goto LABEL_104;
        }

        v15 = v76[2];
        v14 = v76[3];
        v2 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_23A975DA0((v14 > 1), v15 + 1, 1);
        }

        v76[2] = v2;
        v16 = &v76[2 * v15];
        *(v16 + 8) = v9;
        *(v16 + 36) = vadd_s32(vdup_n_s32(v9), 0x200000001);
        *(v16 + 11) = v9 + 3;
        v9 = v13;
        if (v13 >= v1)
        {
          goto LABEL_39;
        }
      }
    }

    v2 = v76[2];
    if (!v2)
    {
      break;
    }

LABEL_39:
    v1 = 0;
    v17 = v76 + 5;
    v18 = MEMORY[0x277D84F90];
    while (v1 < v76[2])
    {
      v74 = *(v17 - 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
      v73 = *v17;
      inited = swift_initStackObject();
      *&v20 = v74;
      *(&v20 + 1) = __PAIR64__(v74, v73);
      *(inited + 32) = v20;
      v21 = inited + 32;
      *(inited + 48) = v73;
      v22 = *(v18 + 2);
      v23 = v22 + 6;
      if (__OFADD__(v22, 6))
      {
        goto LABEL_94;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v25 = *(v18 + 3) >> 1, v25 < v23))
      {
        if (v22 <= v23)
        {
          v26 = v22 + 6;
        }

        else
        {
          v26 = v22;
        }

        v18 = sub_23A9388BC(isUniquelyReferenced_nonNull_native, v26, 1, v18);
        v25 = *(v18 + 3) >> 1;
      }

      v27 = *(v18 + 2);
      if (v25 - v27 < 6)
      {
        goto LABEL_95;
      }

      v28 = *v21;
      v29 = &v18[4 * v27];
      *(v29 + 6) = *(v21 + 16);
      *(v29 + 2) = v28;
      swift_setDeallocating();
      v30 = *(v18 + 2);
      v31 = __OFADD__(v30, 6);
      v32 = v30 + 6;
      if (v31)
      {
        goto LABEL_96;
      }

      ++v1;
      *(v18 + 2) = v32;
      v17 += 2;
      if (v2 == v1)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_51:

  v1 = v72;
  if (v70)
  {
    goto LABEL_89;
  }

  v2 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_53:
    v33 = 0;
    v34 = v1 & 0xC000000000000001;
    v75 = v1 & 0xFFFFFFFFFFFFFF8;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x23EE90360](v33, v1);
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v33 >= *(v75 + 16))
        {
          goto LABEL_100;
        }

        v36 = *(v1 + 8 * v33 + 32);

        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_70:
          __break(1u);
LABEL_71:
          v51 = 0;
          v52 = MEMORY[0x277D84F90];
          v71 = v18;
          while (2)
          {
            if (v34)
            {
              v53 = MEMORY[0x23EE90360](v51, v1);
              v54 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                break;
              }

              goto LABEL_75;
            }

            if (v51 >= *(v75 + 16))
            {
              goto LABEL_105;
            }

            v53 = *(v1 + 8 * v51 + 32);

            v54 = v51 + 1;
            if (!__OFADD__(v51, 1))
            {
LABEL_75:
              v55 = v35;
              v56 = v2;
              v2 = v34;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
              v1 = swift_allocObject();
              *(v1 + 16) = xmmword_23AA11C20;
              v57 = *(v53 + 80);
              *(v1 + 32) = v57;
              *(v1 + 48) = v57;
              *(v1 + 64) = v57;
              *(v1 + 80) = v57;

              v58 = *(v52 + 2);
              v59 = v58 + 4;
              if (__OFADD__(v58, 4))
              {
                goto LABEL_106;
              }

              v60 = swift_isUniquelyReferenced_nonNull_native();
              if (!v60 || (v61 = *(v52 + 3) >> 1, v61 < v59))
              {
                if (v58 <= v59)
                {
                  v62 = v58 + 4;
                }

                else
                {
                  v62 = v58;
                }

                v52 = sub_23A9388A8(v60, v62, 1, v52);
                v61 = *(v52 + 3) >> 1;
              }

              v34 = v2;
              v63 = *(v52 + 2);
              if (v61 - v63 < 4)
              {
                goto LABEL_107;
              }

              v2 = v56;
              v64 = &v52[16 * v63];
              v65 = *(v1 + 32);
              v66 = *(v1 + 48);
              v67 = *(v1 + 80);
              *(v64 + 4) = *(v1 + 64);
              *(v64 + 5) = v67;
              *(v64 + 2) = v65;
              *(v64 + 3) = v66;

              v68 = *(v52 + 2);
              v31 = __OFADD__(v68, 4);
              v69 = v68 + 4;
              if (v31)
              {
                goto LABEL_108;
              }

              *(v52 + 2) = v69;
              ++v51;
              v35 = v55;
              v18 = v71;
              v1 = v72;
              if (v54 == v2)
              {
                goto LABEL_91;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_89:
          v2 = sub_23AA0D7F4();
          if (!v2)
          {
            break;
          }

          goto LABEL_53;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
      v38 = swift_allocObject();
      v38[1] = xmmword_23AA11C20;
      v38[2] = v36[1];
      v39 = v38 + 2;
      v38[3] = v36[2];
      v38[4] = v36[3];
      v38[5] = v36[4];

      v1 = *(v35 + 2);
      v40 = v1 + 4;
      if (__OFADD__(v1, 4))
      {
        goto LABEL_101;
      }

      v41 = swift_isUniquelyReferenced_nonNull_native();
      if (!v41 || (v42 = *(v35 + 3) >> 1, v42 < v40))
      {
        if (v1 <= v40)
        {
          v43 = v1 + 4;
        }

        else
        {
          v43 = v1;
        }

        v35 = sub_23A9388A8(v41, v43, 1, v35);
        v42 = *(v35 + 3) >> 1;
      }

      v1 = v72;
      v44 = *(v35 + 2);
      if (v42 - v44 < 4)
      {
        goto LABEL_102;
      }

      v45 = &v35[16 * v44];
      v46 = *v39;
      v47 = v39[1];
      v48 = v39[3];
      *(v45 + 4) = v39[2];
      *(v45 + 5) = v48;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;

      v49 = *(v35 + 2);
      v31 = __OFADD__(v49, 4);
      v50 = v49 + 4;
      if (v31)
      {
        goto LABEL_103;
      }

      *(v35 + 2) = v50;
      ++v33;
      if (v37 == v2)
      {
        goto LABEL_71;
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
LABEL_91:
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  *(result + 16) = v35;
  *(result + 24) = v52;
  *(result + 32) = v18;
  return result;
}

uint64_t sub_23A982F88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23A982FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23A983044()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

double sub_23A983074@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = xmmword_23AA10F60;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_23A983088()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_23A983094@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_23AA0DBB4();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t sub_23A9830EC(uint64_t a1)
{
  v2 = sub_23A9846F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A983128(uint64_t a1)
{
  v2 = sub_23A9846F4();

  return MEMORY[0x2821FE720](a1, v2);
}

int64_t sub_23A983164(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05E8, &qword_23AA18ED8);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05F0, &qword_23AA18EE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A98464C();
  v14 = v8;
  v15 = v2;
  sub_23AA0DD84();
  CVPixelBufferGetPlaneCount(v2);
  LOBYTE(v57) = 0;
  v16 = v63;
  sub_23AA0DB64();
  if (v16)
  {
    return (*(v9 + 8))(v12, v14);
  }

  v63 = v9;
  v55 = v4;
  CVPixelBufferGetPixelFormatType(v2);
  LOBYTE(v57) = 1;
  sub_23AA0DB84();
  CVPixelBufferGetWidth(v2);
  LOBYTE(v57) = 2;
  sub_23AA0DB64();
  CVPixelBufferGetHeight(v2);
  LOBYTE(v57) = 3;
  sub_23AA0DB64();
  CVPixelBufferIsPlanar(v2);
  LOBYTE(v57) = 5;
  sub_23AA0DB44();
  CVPixelBufferLockBaseAddress(v2, 1uLL);
  if (CVPixelBufferIsPlanar(v2))
  {
    LOBYTE(v57) = 4;
    sub_23A9846F4();
    v45 = v7;
    sub_23AA0DB24();
    result = CVPixelBufferGetPlaneCount(v2);
    if (result < 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v46 = v2;
    v18 = v55;
    if (result)
    {
      v19 = 0;
      v43 = v8;
      v44 = 0x800000023AA20CE0;
      v42 = result;
      while (1)
      {
        v57 = 0x746144656E616C70;
        v58 = 0xE900000000000061;
        v61 = v19;
        v20 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v20);

        v53 = v57;
        v54 = v58;
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_23AA0D8A4();

        v21 = v44;
        v57 = 0xD000000000000010;
        v58 = v44;
        v61 = v19;
        v22 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v22);

        v23 = v58;
        v52 = v57;
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_23AA0D8A4();

        v57 = 0xD000000000000010;
        v58 = v21;
        v61 = v19;
        v24 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v24);

        v26 = v57;
        v25 = v58;
        v27 = v46;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v46, v19);
        if (!BaseAddressOfPlane)
        {

          sub_23A9846A0();
          swift_allocError();
          *v41 = 0;
          swift_willThrow();
          (*(v56 + 8))(v45, v55);
          CVPixelBufferUnlockBaseAddress(v27, 1uLL);
          return (*(v63 + 8))(v12, v43);
        }

        v29 = BaseAddressOfPlane;
        v48 = v26;
        v51 = v25;
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v27, v19);
        result = CVPixelBufferGetBytesPerRowOfPlane(v27, v19);
        if ((HeightOfPlane * result) >> 64 != (HeightOfPlane * result) >> 63)
        {
          break;
        }

        v31 = sub_23A984748(v29, HeightOfPlane * result);
        v33 = v32;
        CVPixelBufferGetBytesPerRowOfPlane(v27, v19);
        v47 = CVPixelBufferGetHeightOfPlane(v27, v19);
        v49 = v31;
        v50 = v33;
        v61 = v31;
        v62 = v33;
        v57 = 0;
        LOBYTE(v58) = 1;
        v59 = v53;
        v60 = v54;
        sub_23A9348E4();
        v18 = v55;
        sub_23AA0DB74();

        v57 = 0;
        LOBYTE(v58) = 1;
        v59 = v52;
        v60 = v23;
        sub_23AA0DB64();

        v57 = 0;
        LOBYTE(v58) = 1;
        v59 = v48;
        v60 = v51;
        sub_23AA0DB64();
        v14 = v43;
        ++v19;
        sub_23A8EFA00(v49, v50);

        if (v42 == v19)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_10:
    (*(v56 + 8))(v45, v18);
    v15 = v46;
    v9 = v63;
LABEL_15:
    CVPixelBufferUnlockBaseAddress(v15, 1uLL);
    return (*(v9 + 8))(v12, v14);
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v2);
  if (!BaseAddress)
  {
    sub_23A9846A0();
    swift_allocError();
    *v40 = 3;
    swift_willThrow();
    CVPixelBufferUnlockBaseAddress(v2, 1uLL);
    return (*(v63 + 8))(v12, v8);
  }

  v35 = BaseAddress;
  Height = CVPixelBufferGetHeight(v2);
  result = CVPixelBufferGetBytesPerRow(v15);
  if ((Height * result) >> 64 == (Height * result) >> 63)
  {
    v37 = sub_23A984748(v35, Height * result);
    v39 = v38;
    v57 = v37;
    v58 = v38;
    LOBYTE(v61) = 6;
    sub_23A9348E4();
    sub_23AA0DB74();
    sub_23A8EFA00(v37, v39);
    v9 = v63;
    v14 = v8;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_23A983960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23A983DD0(a1);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_23A9839AC(void *result)
{
  if (*v1)
  {
    return sub_23A983164(result);
  }

  return result;
}

uint64_t sub_23A9839EC()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A983AFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23A983D84();
  *a2 = result;
  return result;
}

void sub_23A983B2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x756F43656E616C70;
  v5 = 0xE800000000000000;
  v6 = 0x72616E616C507369;
  if (v2 != 5)
  {
    v6 = 1635017060;
    v5 = 0xE400000000000000;
  }

  v7 = 0x746867696568;
  if (v2 != 3)
  {
    v7 = 0x73656E616C70;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xEB0000000074616DLL;
  v9 = 0x726F466C65786970;
  if (v2 != 1)
  {
    v9 = 0x6874646977;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_23A983C04()
{
  v1 = *v0;
  v2 = 0x756F43656E616C70;
  v3 = 0x72616E616C507369;
  if (v1 != 5)
  {
    v3 = 1635017060;
  }

  v4 = 0x746867696568;
  if (v1 != 3)
  {
    v4 = 0x73656E616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726F466C65786970;
  if (v1 != 1)
  {
    v5 = 0x6874646977;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23A983CD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A983D84();
  *a1 = result;
  return result;
}

uint64_t sub_23A983D0C(uint64_t a1)
{
  v2 = sub_23A98464C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A983D48(uint64_t a1)
{
  v2 = sub_23A98464C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A983D84()
{
  v0 = sub_23AA0DA64();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23A983DD0(void *a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05C0, &qword_23AA18EC8);
  v71 = *(v3 - 8);
  v4 = v71[8];
  MEMORY[0x28223BE20](v3);
  v6 = (&v64 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05C8, &qword_23AA18ED0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A98464C();
  sub_23AA0DD74();
  if (v1)
  {
    goto LABEL_3;
  }

  v13 = v6;
  v14 = v8;
  LOBYTE(pixelBufferOut) = 2;
  v15 = sub_23AA0DAE4();
  LOBYTE(pixelBufferOut) = 3;
  v16 = sub_23AA0DAE4();
  LOBYTE(pixelBufferOut) = 1;
  LODWORD(BaseAddressOfPlane) = sub_23AA0DB04();
  LOBYTE(pixelBufferOut) = 0;
  v68 = sub_23AA0DAE4();
  LOBYTE(pixelBufferOut) = 5;
  v19 = sub_23AA0DAB4();
  v69 = 0;
  v20 = v19;
  pixelBufferOut = 0;
  CVPixelBufferCreate(0, v15, v16, BaseAddressOfPlane, 0, &pixelBufferOut);
  v6 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    sub_23A9846A0();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    (*(v14 + 8))(v11, v7);

LABEL_3:
    v17 = *MEMORY[0x277D85DE8];
    return v6;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  if (v20)
  {
    LOBYTE(pixelBufferOut) = 4;
    sub_23A9846F4();
    v21 = v69;
    sub_23AA0DA74();
    if (!v21)
    {
      if (v68 < 0)
      {
        goto LABEL_61;
      }

      v69 = 0;
      v67 = v3;
      if (v68)
      {
        v22 = 0;
        v23 = v13;
        v65 = v13;
        while (1)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v6, v22);
          v72 = v22;
          pixelBufferOut = 0x746144656E616C70;
          v74 = 0xE900000000000061;
          v27 = sub_23AA0DBB4();
          MEMORY[0x23EE8FCA0](v27);

          v28 = pixelBufferOut;
          v29 = v74;
          pixelBufferOut = 0;
          LOBYTE(v74) = 1;
          v75 = v28;
          v76 = v29;
          sub_23A9347CC();
          v30 = v69;
          sub_23AA0DAF4();
          v69 = v30;
          if (v30)
          {

            (v71[1])(v23, v67);
            CVPixelBufferUnlockBaseAddress(v6, 0);

            (*(v14 + 8))(v11, v7);
            goto LABEL_3;
          }

          v31 = v78;
          v32 = v78 >> 62;
          if ((v78 >> 62) > 1)
          {
            if (v32 == 2)
            {
              v66 = v77;
              v34 = *(v77 + 16);
              v35 = sub_23AA0BD34();
              if (!v35)
              {
                goto LABEL_66;
              }

              v36 = v35;
              v37 = sub_23AA0BD54();
              if (__OFSUB__(v34, v37))
              {
                goto LABEL_57;
              }

              v38 = (v34 - v37 + v36);
              sub_23AA0BD44();
              if (!v38)
              {
                goto LABEL_67;
              }

              v39 = v66;
              v41 = *(v66 + 16);
              v40 = *(v66 + 24);
              v42 = v40 - v41;
              v43 = v65;
              if (__OFSUB__(v40, v41))
              {
                goto LABEL_59;
              }

LABEL_32:
              memcpy(BaseAddressOfPlane, v38, v42);
              sub_23A8EFA00(v39, v31);
              v23 = v43;
              goto LABEL_14;
            }

            sub_23A8EFA00(v77, v78);
          }

          else
          {
            if (v32)
            {
              v44 = v77;
              v66 = v77;
              if (v77 > v77 >> 32)
              {
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                sub_23AA0BD44();
LABEL_67:
                __break(1u);
LABEL_68:
                sub_23AA0BD44();
LABEL_69:
                __break(1u);
LABEL_70:
                sub_23AA0BD44();
                goto LABEL_71;
              }

              v45 = sub_23AA0BD34();
              v46 = v31;
              if (!v45)
              {
                goto LABEL_68;
              }

              v47 = v45;
              v48 = sub_23AA0BD54();
              if (__OFSUB__(v44, v48))
              {
                goto LABEL_58;
              }

              v38 = (v44 - v48 + v47);
              sub_23AA0BD44();
              if (!v38)
              {
                goto LABEL_69;
              }

              v31 = v46;
              v39 = v66;
              v43 = v65;
              if (__OFSUB__(HIDWORD(v66), v66))
              {
                goto LABEL_60;
              }

              v42 = HIDWORD(v66) - v66;
              goto LABEL_32;
            }

            pixelBufferOut = v77;
            LODWORD(v74) = v78;
            WORD2(v74) = WORD2(v78);
            v33 = v77;
            memcpy(BaseAddressOfPlane, &pixelBufferOut, BYTE6(v78));
            sub_23A8EFA00(v33, v31);
          }

LABEL_14:
          if (v68 == ++v22)
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_43;
    }

    goto LABEL_12;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v6);
  LOBYTE(v77) = 6;
  sub_23A9347CC();
  v26 = v69;
  sub_23AA0DAF4();
  if (v26)
  {
LABEL_12:
    CVPixelBufferUnlockBaseAddress(v6, 0);

    (*(v14 + 8))(v11, v7);
    goto LABEL_3;
  }

  v13 = pixelBufferOut;
  v49 = v74;
  v50 = v74 >> 62;
  v69 = 0;
  if ((v74 >> 62) > 1)
  {
    v71 = BaseAddress;
    if (v50 != 2)
    {
LABEL_54:
      sub_23A8EFA00(v13, v49);
LABEL_55:
      CVPixelBufferUnlockBaseAddress(v6, 0);
      (*(v14 + 8))(v11, v7);
      goto LABEL_3;
    }

    v54 = *(pixelBufferOut + 2);
    v55 = sub_23AA0BD34();
    if (!v55)
    {
      goto LABEL_70;
    }

    v56 = v55;
    v57 = sub_23AA0BD54();
    if (__OFSUB__(v54, v57))
    {
      goto LABEL_63;
    }

    v58 = (v54 - v57 + v56);
    sub_23AA0BD44();
    if (v58)
    {
      v60 = *(v13 + 2);
      v59 = *(v13 + 3);
      v51 = v59 - v60;
      if (__OFSUB__(v59, v60))
      {
        __break(1u);
LABEL_43:
        v23 = v13;
LABEL_44:
        (v71[1])(v23, v67);
        goto LABEL_55;
      }

      goto LABEL_52;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (!v50)
  {
    v51 = BYTE6(v74);
    p_pixelBufferOut = &pixelBufferOut;
    v53 = BaseAddress;
LABEL_53:
    memcpy(v53, p_pixelBufferOut, v51);
    goto LABEL_54;
  }

  v71 = BaseAddress;
  if (pixelBufferOut > pixelBufferOut >> 32)
  {
    goto LABEL_62;
  }

  v61 = sub_23AA0BD34();
  if (!v61)
  {
LABEL_72:
    result = sub_23AA0BD44();
    goto LABEL_73;
  }

  v62 = v61;
  v63 = sub_23AA0BD54();
  if (__OFSUB__(v13, v63))
  {
    goto LABEL_64;
  }

  v58 = (v13 - v63 + v62);
  result = sub_23AA0BD44();
  if (v58)
  {
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_65;
    }

    v51 = HIDWORD(v13) - v13;
LABEL_52:
    v53 = v71;
    p_pixelBufferOut = v58;
    goto LABEL_53;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_23A98464C()
{
  result = qword_27DFB05D0;
  if (!qword_27DFB05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05D0);
  }

  return result;
}

unint64_t sub_23A9846A0()
{
  result = qword_27DFB05D8;
  if (!qword_27DFB05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05D8);
  }

  return result;
}

unint64_t sub_23A9846F4()
{
  result = qword_27DFB05E0;
  if (!qword_27DFB05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05E0);
  }

  return result;
}

uint64_t sub_23A984748(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23A934510(a1, &a1[a2]);
  }

  v3 = sub_23AA0BD64();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_23AA0BD24();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23AA0BFD4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_23A984818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23A984860(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_23A9848B4()
{
  result = qword_27DFB05F8;
  if (!qword_27DFB05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05F8);
  }

  return result;
}

unint64_t sub_23A98490C()
{
  result = qword_27DFB0600;
  if (!qword_27DFB0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0600);
  }

  return result;
}

unint64_t sub_23A984964()
{
  result = qword_27DFB0608;
  if (!qword_27DFB0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0608);
  }

  return result;
}

unint64_t sub_23A9849BC()
{
  result = qword_27DFB0610;
  if (!qword_27DFB0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0610);
  }

  return result;
}

unint64_t sub_23A984A14()
{
  result = qword_27DFB0618;
  if (!qword_27DFB0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0618);
  }

  return result;
}

unint64_t sub_23A984A6C()
{
  result = qword_27DFB0620;
  if (!qword_27DFB0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0620);
  }

  return result;
}

void sub_23A984AC0()
{
  v1 = v0;
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v2 = off_27DFB17B0;
  swift_beginAccess();
  v3 = v2[38];
  swift_beginAccess();
  if ((*(v2 + 157) & 1) == 0 && qword_27DFAE510 != -1)
  {
    swift_once();
  }

  sub_23AA00900(&v5);
  if (!v5 && qword_27DFAE510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *(v1 + 56);
  sub_23A984C30(v4);
}

void sub_23A984C30(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = sub_23AA0CE84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 powerUsage] || (sub_23A8D6C58(0, &qword_27DFB0628, 0x277CE53B0), (v9 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_configurableCaptureDeviceForPrimaryCamera)) == 0))
  {
LABEL_2:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v28 = v9;
  v10 = sub_23AA0D5A4();
  v12 = v11;
  v14 = v13;
  [v28 activeVideoMinFrameDuration];
  if (sub_23AA0D594())
  {
    [v28 activeVideoMaxFrameDuration];
    if (sub_23AA0D594())
    {
      v29 = 0;
      if ([v28 lockForConfiguration_])
      {
        v15 = v29;
        v29 = v10;
        v30 = v12;
        v31 = v14;
        [v28 setActiveVideoMinFrameDuration_];
        v29 = v10;
        v30 = v12;
        v31 = v14;
        [v28 setActiveVideoMaxFrameDuration_];
        [v28 unlockForConfiguration];
      }

      else
      {
        v18 = v29;
        v19 = sub_23AA0BE74();

        swift_willThrow();
        sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        sub_23AA0CE94();
        v20 = v19;
        v21 = sub_23AA0CE54();
        v22 = sub_23AA0D494();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v29 = v24;
          *v23 = 136315138;
          swift_getErrorValue();
          v25 = sub_23AA0DC34();
          v27 = sub_23A9A65A4(v25, v26, &v29);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_23A8B4000, v21, v22, "Cannot change ARKit framerate: %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x23EE91710](v24, -1, -1);
          MEMORY[0x23EE91710](v23, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v7, v2);
      }

      goto LABEL_2;
    }
  }

  v16 = v28;
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23A985084(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_23A97E578(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_23A985114(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C0C(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[3 * a1];
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    memmove(v6, v6 + 3, 24 * (v5 - 1 - a1));
    v3[2] = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_23A9851B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C38(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 32 * a1;
    v8 = *(v7 + 48);
    v9 = *(v7 + 32);
    result = memmove((v7 + 32), (v7 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_23A985244(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    result = memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_23A9852D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    result = memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_23A985358(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C60(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v7 += 32;
    v9 = *(v7 + 8);
    memmove(v7, (v7 + 16), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23A9853F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C88(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_23AA0C0E4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23A9854F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975D00(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23A985580(uint64_t a1)
{
  v48 = sub_23AA0C0E4();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_23AA0D7F4();
    result = MEMORY[0x277D84F90];
    if (!v6)
    {
      return result;
    }

    v56 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    result = sub_23AA0D7A4();
    v53 = result;
    v54 = v8;
    v55 = 1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v6)
  {
    return result;
  }

  v56 = MEMORY[0x277D84F90];
  sub_23AA0D964();
  v9 = -1 << *(a1 + 32);
  result = sub_23AA0D774();
  v10 = *(a1 + 36);
  v53 = result;
  v54 = v10;
  v55 = 0;
LABEL_7:
  v11 = 0;
  v44 = (v3 + 32);
  v45 = (v3 + 16);
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v12 = a1;
  }

  v40 = a1 + 56;
  v41 = v12;
  v38 = v1;
  v39 = a1 + 64;
  v42 = v6;
  v43 = a1;
  while (v11 < v6)
  {
    v14 = __OFADD__(v11, 1);
    v15 = v11 + 1;
    if (v14)
    {
      goto LABEL_34;
    }

    v16 = v55;
    v51 = v53;
    v49 = v15;
    v50 = v54;
    v17 = sub_23A9886A4(v53, v54, v55, a1);
    v19 = v47;
    v18 = v48;
    (*v45)(v47, v17 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v48);
    v20 = *(v17 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
    v21 = *(v17 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness);
    v22 = type metadata accessor for HullPointUUID();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    (*v44)(v25 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v19, v18);
    *(v25 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v20;
    *(v25 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v21;

    sub_23AA0D944();
    v26 = *(v56 + 16);
    sub_23AA0D974();
    sub_23AA0D984();
    result = sub_23AA0D954();
    if (v46)
    {
      if (!v16)
      {
        goto LABEL_38;
      }

      v27 = sub_23AA0D7C4();
      a1 = v43;
      if (v27)
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v6 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D8, &unk_23AA115D0);
      v13 = sub_23AA0D414();
      sub_23AA0D844();
      result = v13(v52, 0);
    }

    else
    {
      if (v16)
      {
        goto LABEL_39;
      }

      a1 = v43;
      result = v51;
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v28 = 1 << *(v43 + 32);
      if (v51 >= v28)
      {
        goto LABEL_35;
      }

      v29 = v51 >> 6;
      v30 = *(v40 + 8 * (v51 >> 6));
      if (((v30 >> v51) & 1) == 0)
      {
        goto LABEL_36;
      }

      v31 = v50;
      if (*(v43 + 36) != v50)
      {
        goto LABEL_37;
      }

      v32 = v30 & (-2 << (v51 & 0x3F));
      if (v32)
      {
        v28 = __clz(__rbit64(v32)) | v51 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v29 << 6;
        v34 = v29 + 1;
        v35 = (v39 + 8 * v29);
        while (v34 < (v28 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_23A8CA9CC(v51, v50, 0);
            v28 = __clz(__rbit64(v36)) + v33;
            goto LABEL_30;
          }
        }

        result = sub_23A8CA9CC(v51, v50, 0);
      }

LABEL_30:
      v53 = v28;
      v54 = v31;
      v55 = 0;
      v6 = v42;
    }

    v11 = v49;
    if (v49 == v6)
    {
      sub_23A8CA9CC(v53, v54, v55);
      return v56;
    }
  }

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
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_23A9859BC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x23EE90360](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_23AA0D7F4())
  {
    goto LABEL_20;
  }

  if (!sub_23AA0D7F4())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_23AA0D7F4();
LABEL_16:
    if (v3)
    {
      sub_23A945E14(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_23A985A94(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23A97E5E8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23A985EE0(v6);
  return sub_23AA0D954();
}

uint64_t sub_23A985B10(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_23AA0D7B4();
    type metadata accessor for HullPointUUID();
    sub_23A98B508();
    result = sub_23AA0D424();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_23A8CA904();
    }

    while (1)
    {
      sub_23A9EF31C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_23AA0D824())
      {
        type metadata accessor for HullPointUUID();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_23A8CA904();
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_23A8CA904();
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A985D08(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_23AA0D8D4();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_23AA0D7F4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_23A985DA4(unint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    result = sub_23AA0D7F4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }
  }

  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE90360](v7, a1);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_17;
        }

LABEL_13:
        sub_23A98690C(v8);

        ++v7;
        if (v9 == v6)
        {
          return result;
        }
      }

      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_23AA0D7F4();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_23A985EE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23AA0DBA4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DistanceAngleHullPoint();
        v6 = sub_23AA0D324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_23A986068(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23A985FE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23A985FE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      v11 = *(v7 + 20);
      v12 = *(*v9 + 20);
      if (vabds_f32(v11, v12) < 0.00000011921)
      {
        v11 = *(v7 + 16);
        v12 = *(v10 + 16);
      }

      if (v11 >= v12)
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23A986068(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_23A977E20(v10);
      v10 = result;
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_23A986640((*a3 + 8 * v87), (*a3 + 8 * *&v10[16 * v86 + 16]), (*a3 + 8 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_130;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        result = sub_23A977D94(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*a3 + 8 * v9);
      v13 = *(*a3 + 8 * v11);
      v14 = *(v12 + 20);
      v15 = *(v13 + 20);
      if (vabds_f32(v14, v15) >= 0.00000011921)
      {
        v16 = v14 < v15;
      }

      else
      {
        v16 = *(v12 + 16) < *(v13 + 16);
      }

      v17 = v16;
      if (v7 <= v11 + 2)
      {
        v18 = v11 + 2;
      }

      else
      {
        v18 = v7;
      }

      v19 = v18 - v11 - 2;
      v20 = 8 * v11;
      v21 = *a3 + 8 * v11 + 16;
      while (v19)
      {
        v24 = *v21;
        v25 = *(*v21 + 20);
        if (vabds_f32(v25, v14) >= 0.00000011921)
        {
          v22 = v25 < v14;
        }

        else
        {
          v22 = *(v24 + 16) < *(v12 + 16);
        }

        v23 = v22;
        --v19;
        v21 += 8;
        ++v9;
        v14 = v25;
        v12 = v24;
        if (v17 != v23)
        {
          goto LABEL_24;
        }
      }

      v9 = v18;
LABEL_24:
      if (v17)
      {
        if (v9 < v11)
        {
          goto LABEL_133;
        }

        if (v11 < v9)
        {
          v26 = 8 * v9 - 8;
          v27 = v9;
          v28 = v11;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v29 = *(v30 + v20);
              *(v30 + v20) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            ++v28;
            v26 -= 8;
            v20 += 8;
          }

          while (v28 < v27);
          v7 = a3[1];
        }
      }
    }

    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_132;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_134;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v9 < v11)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v41 = *(v10 + 3);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_23A938B2C((v41 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v5];
    *(v43 + 4) = v11;
    *(v43 + 5) = v9;
    v44 = *v91;
    if (!*v91)
    {
      goto LABEL_141;
    }

    if (v5)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_73:
          if (v49)
          {
            goto LABEL_120;
          }

          v62 = &v10[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_123;
          }

          v68 = &v10[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_127;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v72 = &v10[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_87:
        if (v67)
        {
          goto LABEL_122;
        }

        v75 = &v10[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_125;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_94:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v84 = *&v10[16 * v83 + 32];
        v5 = *&v10[16 * v45 + 40];
        sub_23A986640((*a3 + 8 * v84), (*a3 + 8 * *&v10[16 * v45 + 32]), (*a3 + 8 * v5), v44);
        if (v4)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v83 >= *(v10 + 2))
        {
          goto LABEL_117;
        }

        v85 = &v10[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        result = sub_23A977D94(v45);
        v42 = *(v10 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_118;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_119;
      }

      v57 = &v10[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_121;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_124;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_128;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_104;
    }
  }

  v31 = *a3;
  v32 = *a3 + 8 * v9 - 8;
  v33 = v11 - v9;
LABEL_44:
  v34 = *(v31 + 8 * v9);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = *(v34 + 20);
    v39 = *(*v36 + 20);
    if (vabds_f32(v38, v39) < 0.00000011921)
    {
      v38 = *(v34 + 16);
      v39 = *(v37 + 16);
    }

    if (v38 >= v39)
    {
LABEL_43:
      ++v9;
      v32 += 8;
      --v33;
      if (v9 != v7)
      {
        goto LABEL_44;
      }

      v9 = v7;
      goto LABEL_53;
    }

    if (!v31)
    {
      break;
    }

    *v36 = v34;
    v36[1] = v37;
    --v36;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_23A986640(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_27:
      v19 = v6 - 8;
      v20 = v5;
      v21 = v14;
      do
      {
        v23 = *(v21 - 8);
        v21 -= 8;
        v22 = v23;
        v24 = *v19;
        v25 = *(v23 + 20);
        v26 = *(*v19 + 20);
        if (vabds_f32(v25, v26) < 0.00000011921)
        {
          v25 = *(v22 + 16);
          v26 = *(v24 + 16);
        }

        v5 = v20 - 8;
        if (v25 < v26)
        {
          if (v20 != v6)
          {
            *v5 = v24;
          }

          if (v14 <= v4 || (v6 -= 8, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_40;
          }

          goto LABEL_27;
        }

        if (v14 != v20)
        {
          *v5 = v22;
        }

        v14 = v21;
        v20 -= 8;
      }

      while (v21 > v4);
      v14 = v21;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *(*v6 + 20);
        v17 = *(*v4 + 20);
        if (vabds_f32(v16, v17) < 0.00000011921)
        {
          v16 = *(v15 + 16);
          v17 = *(*v4 + 16);
        }

        if (v16 >= v17)
        {
          break;
        }

        v18 = v7 == v6;
        v6 += 8;
        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      v15 = *v4;
      v18 = v7 == v4;
      v4 += 8;
      if (v18)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = v15;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_40:
  v27 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v27 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v27 >> 3));
  }

  return 1;
}

void *sub_23A98687C(void *result, uint64_t a2, uint64_t a3, int64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_23A988240(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23A98690C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_23AA0D834();

    if (v6)
    {
      v7 = sub_23A986AE4(v4, a1);

      return v7;
    }

    return 0;
  }

  v21 = v1;
  v9 = *(v3 + 40);
  sub_23AA0DD14();
  sub_23AA0C0B4();
  v10 = sub_23AA0DD54();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  v14 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v12);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(v15 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  if (v16 != *(a1 + v14))
  {
    goto LABEL_10;
  }

  v17 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v21;
  v22 = *v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23A9F2474();
    v19 = v22;
  }

  v20 = *(*(v19 + 48) + 8 * v12);
  sub_23A986CA8(v12);
  result = v20;
  *v21 = v22;
  return result;
}

uint64_t sub_23A986AE4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_23AA0D7F4();
  v6 = swift_unknownObjectRetain();
  v7 = sub_23A9EFF10(v6, v5);
  v19 = v7;
  v8 = *(v7 + 40);
  sub_23AA0DD14();

  sub_23AA0C0B4();
  v9 = sub_23AA0DD54();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = ~v10;
  v13 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v14 = *(*(v7 + 48) + 8 * v11);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_4:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v15 = *(v14 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  if (v15 != *(a2 + v13))
  {
    goto LABEL_4;
  }

  v16 = *(*(v7 + 48) + 8 * v11);
  sub_23A986CA8(v11);
  if (sub_23AA0C094())
  {
    if (v15 == *(v16 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type))
    {
      *v18 = v19;
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:

  __break(1u);
  return result;
}

unint64_t sub_23A986CA8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_23AA0D784();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_23AA0DD14();

        sub_23AA0C0B4();
        v13 = sub_23AA0DD54();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_23A986E78(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v56[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {
    goto LABEL_20;
  }

  v3 = a1;
  v56[0] = a1;
  v46 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (!v4)
  {
    goto LABEL_47;
  }

  v5 = 0;
  v51 = v4;
  v52 = v3 & 0xC000000000000001;
  v48 = v3 + 32;
  v49 = v3 & 0xFFFFFFFFFFFFFF8;
  v54 = (v2 + 56);
  v50 = v3;
  while (1)
  {
    if (v52)
    {
      v6 = MEMORY[0x23EE90360](v5, v3);
      v7 = __OFADD__(v5, 1);
      v8 = v5 + 1;
      if (v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v49 + 16))
      {
        goto LABEL_52;
      }

      v6 = *(v48 + 8 * v5);

      v7 = __OFADD__(v5, 1);
      v8 = v5 + 1;
      if (v7)
      {
LABEL_19:
        __break(1u);
LABEL_20:

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_48;
      }
    }

    v53 = v8;
    v56[1] = v8;
    v9 = *(v2 + 40);
    sub_23AA0DD14();
    sub_23AA0C0B4();
    v10 = sub_23AA0DD54();
    v11 = -1 << *(v2 + 32);
    v3 = v10 & ~v11;
    v12 = v3 >> 6;
    v13 = 1 << v3;
    if (((1 << v3) & v54[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    v3 = v50;
    if (v53 == v51)
    {
      goto LABEL_47;
    }
  }

  v14 = ~v11;
  v15 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v16 = v2;
    v17 = *(*(v2 + 48) + 8 * v3);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_13:
    v3 = (v3 + 1) & v14;
    v12 = v3 >> 6;
    v13 = 1 << v3;
    v2 = v16;
    if ((v54[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_6;
    }
  }

  v18 = *(v17 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  if (v18 != *(v6 + v15))
  {
    goto LABEL_13;
  }

  v20 = v16;
  v21 = *(v16 + 32);
  v22 = v21 & 0x3F;
  v23 = ((1 << v21) + 63) >> 6;
  v44[0] = v23;
  if (v22 > 0xD)
  {
    v42 = 8 * v23;

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_22;
    }

    v43 = swift_slowAlloc();
    memcpy(v43, v54, v42);
    v2 = sub_23A987458(v43, v44[0], v16, v3, v56);

    MEMORY[0x23EE91710](v43, -1, -1);
  }

  else
  {
LABEL_22:
    v44[1] = v44;
    MEMORY[0x28223BE20](v19);
    v25 = v44 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v25, v54, v24);
    v26 = *(v16 + 16);
    v27 = *&v25[8 * v12] & ~v13;
    v47 = v25;
    *&v25[8 * v12] = v27;
    v45 = v26 - 1;
    if (v46)
    {
      v51 = sub_23AA0D7F4();
    }

    else
    {
      v51 = *(v49 + 16);
    }

LABEL_27:
    while (2)
    {
      v2 = v53;
LABEL_28:
      if (v2 != v51)
      {
        if (v52)
        {
          v28 = MEMORY[0x23EE90360](v2, v50);
          v7 = __OFADD__(v2++, 1);
          if (!v7)
          {
            goto LABEL_36;
          }

          goto LABEL_49;
        }

        if ((v2 & 0x8000000000000000) != 0)
        {
LABEL_50:
          __break(1u);
        }

        else if (v2 < *(v49 + 16))
        {
          v28 = *(v48 + 8 * v2);

          v7 = __OFADD__(v2++, 1);
          if (!v7)
          {
LABEL_36:
            v53 = v2;
            v29 = *(v20 + 40);
            sub_23AA0DD14();
            sub_23AA0C0B4();
            v3 = &v55;
            v30 = sub_23AA0DD54();
            v31 = -1 << *(v20 + 32);
            v32 = v30 & ~v31;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v54[v32 >> 6]) == 0)
            {
LABEL_26:

              continue;
            }

            v35 = ~v31;
            v36 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
            while (1)
            {
              v3 = *(*(v20 + 48) + 8 * v32);

              if (sub_23AA0C094())
              {
                v37 = *(v3 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                if (v37 == *(v28 + v36))
                {

                  v38 = v47[v33];
                  v47[v33] = v38 & ~v34;
                  v20 = v16;
                  if ((v38 & v34) == 0)
                  {
                    goto LABEL_27;
                  }

                  v39 = v45 - 1;
                  v2 = v53;
                  if (__OFSUB__(v45, 1))
                  {
                    __break(1u);
                  }

                  --v45;
                  if (!v39)
                  {

                    v2 = MEMORY[0x277D84FA0];
                    goto LABEL_47;
                  }

                  goto LABEL_28;
                }
              }

              else
              {
              }

              v32 = (v32 + 1) & v35;
              v33 = v32 >> 6;
              v34 = 1 << v32;
              v20 = v16;
              if ((v54[v32 >> 6] & (1 << v32)) == 0)
              {
                goto LABEL_26;
              }
            }
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v4 = sub_23AA0D7F4();
        goto LABEL_4;
      }

      break;
    }

    v2 = sub_23A9876E0(v47, v44[0], v45, v20);
  }

LABEL_47:

LABEL_48:
  v40 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_23A987458(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
LABEL_2:
  v29 = v8;
LABEL_4:
  while (2)
  {
    v9 = *v5;
    if (*v5 >> 62)
    {
      if (v9 < 0)
      {
        v27 = *v5;
      }

      result = sub_23AA0D7F4();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v5[1];
    if (v11 == result)
    {

      return sub_23A9876E0(a1, a2, v29, v6);
    }

    v12 = *v5;
    if ((*v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23EE90360](v5[1]);
      v13 = result;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_31;
      }

LABEL_11:
      v5[1] = v14;
      v15 = *(v6 + 40);
      sub_23AA0DD14();
      sub_23AA0C0B4();
      v16 = sub_23AA0DD54();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v33 + 8 * (v18 >> 6))) == 0)
      {
LABEL_3:

        v5 = a5;
        continue;
      }

      v21 = ~v17;
      v32 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      while (1)
      {
        v22 = *(*(v6 + 48) + 8 * v18);

        if (sub_23AA0C094())
        {
          v23 = v6;
          v24 = *(v22 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

          v25 = v24 == *(v13 + v32);
          v6 = v23;
          if (v25)
          {

            v5 = a5;
            v26 = a1[v19];
            a1[v19] = v26 & ~v20;
            if ((v26 & v20) != 0)
            {
              v8 = v29 - 1;
              if (__OFSUB__(v29, 1))
              {
                goto LABEL_33;
              }

              if (v29 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        else
        {
        }

        v18 = (v18 + 1) & v21;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if ((*(v33 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

    v13 = *(v12 + 8 * v11 + 32);

    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_23A9876E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
  result = sub_23AA0D884();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_23AA0DD14();

    sub_23AA0C0B4();
    result = sub_23AA0DD54();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23A9878FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_23AA0D7F4();
      a2 = sub_23A9EFF10(v4, v5);
      goto LABEL_8;
    }

    v7 = MEMORY[0x277D84FA0];
    v19 = MEMORY[0x277D84FA0];
    sub_23AA0D7B4();
    if (sub_23AA0D824())
    {
      type metadata accessor for HullPointUUID();
      v17 = MEMORY[0x277D84FA0];
      v8 = a1 + 56;
      while (1)
      {
        swift_dynamicCast();
        if (!*(a1 + 16) || (v9 = *(a1 + 40), sub_23AA0DD14(), sub_23AA0C0B4(), v10 = sub_23AA0DD54(), v11 = -1 << *(a1 + 32), v12 = v10 & ~v11, ((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0))
        {
LABEL_13:

          goto LABEL_14;
        }

        v13 = ~v11;
        while (1)
        {
          v14 = *(*(a1 + 48) + 8 * v12);

          if (sub_23AA0C094())
          {
            break;
          }

LABEL_19:
          v12 = (v12 + 1) & v13;
          if (((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v15 = *(v14 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

        if (v15 != *(v18 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type))
        {
          goto LABEL_19;
        }

        v16 = *(v17 + 16);
        if (*(v17 + 24) <= v16)
        {
          sub_23A9F0590(v16 + 1);
        }

        v17 = v19;
        sub_23A9F153C(v18, v19);
LABEL_14:
        if (!sub_23AA0D824())
        {
          goto LABEL_29;
        }
      }
    }

    v17 = v7;
LABEL_29:

    return v17;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_23A987B8C(a1, a2);
    }

    return sub_23A987D2C(a1, a2);
  }
}

uint64_t sub_23A987B8C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_23A987EF0(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_23A98DEE0(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x23EE91710](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_23A987D2C(int64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_23A988240(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_23A98687C(v12, v6, a2, a1);

    MEMORY[0x23EE91710](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23A987EF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23AA0D7B4();
    type metadata accessor for HullPointUUID();
    sub_23A98B508();
    result = sub_23AA0D424();
    v5 = v49;
    v7 = v50;
    v9 = v51;
    v8 = v52;
    v10 = v53;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v8 = 0;
  }

  v40 = 0;
  v14 = (v9 + 64) >> 6;
  v15 = a4 + 56;
  v43 = v7;
  v44 = v5;
  v42 = v14;
  while (2)
  {
    v16 = v8;
    v17 = v10;
    while (2)
    {
      while (2)
      {
        if (v5 < 0)
        {
          if (!sub_23AA0D824())
          {
            goto LABEL_31;
          }

          type metadata accessor for HullPointUUID();
          swift_dynamicCast();
          v22 = v48;
          v20 = v16;
          v21 = v17;
          if (!v48)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v18 = v16;
          v19 = v17;
          v20 = v16;
          if (!v17)
          {
            while (1)
            {
              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              if (v20 >= v14)
              {
                goto LABEL_31;
              }

              v19 = *(v7 + 8 * v20);
              ++v18;
              if (v19)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
            return result;
          }

LABEL_15:
          v21 = (v19 - 1) & v19;
          v22 = *(*(v5 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

          if (!v22)
          {
            goto LABEL_31;
          }
        }

        v45 = v21;
        v23 = *(a4 + 40);
        sub_23AA0DD14();
        v24 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid;
        sub_23AA0C0B4();
        v25 = sub_23AA0DD54();
        v26 = -1 << *(a4 + 32);
        v27 = v25 & ~v26;
        v28 = v27 >> 6;
        v29 = 1 << v27;
        if (((1 << v27) & *(v15 + 8 * (v27 >> 6))) == 0)
        {
LABEL_9:

          v17 = v45;
          v16 = v20;
          v7 = v43;
          v5 = v44;
          v14 = v42;
          continue;
        }

        break;
      }

      v30 = ~v26;
      v46 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      v47 = ~v26;
      while (1)
      {
        v31 = *(*(a4 + 48) + 8 * v27);

        if (sub_23AA0C094())
        {
          break;
        }

LABEL_22:
        v27 = (v27 + 1) & v30;
        v28 = v27 >> 6;
        v29 = 1 << v27;
        if ((*(v15 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
        {
          goto LABEL_9;
        }
      }

      v32 = v24;
      v33 = v15;
      v34 = a4;
      v35 = *(v31 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

      v36 = v35 == *(v22 + v46);
      a4 = v34;
      v15 = v33;
      v24 = v32;
      v30 = v47;
      if (!v36)
      {
        goto LABEL_22;
      }

      v37 = a1[v28];
      a1[v28] = v37 | v29;
      v10 = v45;
      v8 = v20;
      v16 = v20;
      v17 = v45;
      v36 = (v37 & v29) == 0;
      v7 = v43;
      v5 = v44;
      v14 = v42;
      if (!v36)
      {
        continue;
      }

      break;
    }

    if (!__OFADD__(v40++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_31:
  sub_23A8CA904();

  return sub_23A9876E0(a1, a2, v40, a4);
}

uint64_t sub_23A988240(uint64_t result, uint64_t a2, uint64_t a3, int64_t a4)
{
  v4 = a4;
  v5 = a3;
  v47 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_24;
  }

  v48 = 0;
  v4 = 0;
  v43 = a4 + 56;
  v6 = 1 << *(a4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  v9 = (v6 + 63) >> 6;
  v55 = a3 + 56;
  v45 = v9;
  while (1)
  {
LABEL_7:
    if (v8)
    {
      v10 = __clz(__rbit64(v8));
      v49 = (v8 - 1) & v8;
    }

    else
    {
      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          return result;
        }

        if (v4 >= v9)
        {
          goto LABEL_47;
        }

        v12 = *(v43 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v49 = (v12 - 1) & v12;
    }

    v13 = *(*(a4 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(v5 + 40);
    sub_23AA0DD14();

    sub_23AA0C0B4();
    v15 = sub_23AA0DD54();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v55 + 8 * (v17 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v9 = v45;
    v8 = v49;
  }

  v20 = ~v16;
  v51 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v21 = *(*(v5 + 48) + 8 * v17);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_17:
    v17 = (v17 + 1) & v20;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if ((*(v55 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_6;
    }
  }

  v22 = *(v21 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  v23 = v22 == *(v13 + v51);
  v5 = a3;
  if (!v23)
  {
    goto LABEL_17;
  }

  v9 = v45;
  v47[v18] |= v19;
  v8 = v49;
  v24 = __OFADD__(v48++, 1);
  if (!v24)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_24:
  v48 = 0;
  v25 = 0;
  v46 = v5 + 56;
  v26 = 1 << *(v5 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v5 + 56);
  v29 = (v26 + 63) >> 6;
  v30 = v4 + 56;
  v52 = v29;
  while (2)
  {
    while (2)
    {
      if (v28)
      {
        v31 = __clz(__rbit64(v28));
        v56 = (v28 - 1) & v28;
      }

      else
      {
        v32 = v25;
        do
        {
          v25 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_49;
          }

          if (v25 >= v29)
          {
            goto LABEL_46;
          }

          v33 = *(v46 + 8 * v25);
          ++v32;
        }

        while (!v33);
        v31 = __clz(__rbit64(v33));
        v56 = (v33 - 1) & v33;
      }

      v50 = v31 | (v25 << 6);
      v34 = *(*(a3 + 48) + 8 * v50);
      v35 = *(v4 + 40);
      sub_23AA0DD14();

      sub_23AA0C0B4();
      v36 = sub_23AA0DD54();
      v37 = -1 << *(v4 + 32);
      v38 = v36 & ~v37;
      if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
LABEL_28:

        v29 = v52;
        v28 = v56;
        continue;
      }

      break;
    }

    v39 = ~v37;
    v40 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
    while (2)
    {
      v41 = *(*(v4 + 48) + 8 * v38);

      if ((sub_23AA0C094() & 1) == 0)
      {

        goto LABEL_39;
      }

      v42 = *(v41 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

      v23 = v42 == *(v34 + v40);
      v4 = a4;
      if (!v23)
      {
LABEL_39:
        v38 = (v38 + 1) & v39;
        if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_28;
        }

        continue;
      }

      break;
    }

    *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v24 = __OFADD__(v48++, 1);
    v29 = v52;
    v28 = v56;
    if (!v24)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_46:
  v5 = a3;
LABEL_47:

  return sub_23A9876E0(v47, a2, v48, v5);
}

uint64_t sub_23A9886A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (sub_23AA0D7D4() == *(a4 + 36))
      {
        sub_23AA0D7E4();
        type metadata accessor for HullPointUUID();
        swift_dynamicCast();
        v7 = *(a4 + 40);
        sub_23AA0DD14();
        sub_23AA0C0B4();
        v8 = sub_23AA0DD54();
        v9 = -1 << *(a4 + 32);
        v5 = v8 & ~v9;
        if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          v10 = ~v9;
          v11 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
          while (1)
          {
            v12 = *(*(a4 + 48) + 8 * v5);

            if (sub_23AA0C094())
            {
              v13 = *(v12 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

              if (v13 == *(v15 + v11))
              {

                goto LABEL_20;
              }
            }

            else
            {
            }

            v5 = (v5 + 1) & v10;
            if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > result)
    {
      if ((*(a4 + 8 * (result >> 6) + 56) >> result))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:
          v14 = *(*(a4 + 48) + 8 * v5);
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:

      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x23EE902B0](result, a2, v6);
  type metadata accessor for HullPointUUID();
  swift_dynamicCast();
  return v15;
}

unint64_t sub_23A9888E0(unint64_t a1)
{
  v1 = a1;
  v54 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v3 = MEMORY[0x277D84F90];
    v49 = i;
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EE90360](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v9 = *&v6[v8];

      v10 = v9;
      i = v49;
      sub_23A911BA4(v10);
      ++v4;
      if (v7 == v49)
      {
        v11 = v54;
        v3 = MEMORY[0x277D84F90];
        if (!(v54 >> 62))
        {
          goto LABEL_13;
        }

LABEL_62:
        v40 = v11;
        v12 = sub_23AA0D7F4();
        v11 = v40;
        if (!v12)
        {
          goto LABEL_63;
        }

LABEL_14:
        v13 = 0;
        v46 = v11 & 0xC000000000000001;
        v43 = v11 + 32;
        v44 = v11 & 0xFFFFFFFFFFFFFF8;
        v52 = v1 & 0xFFFFFFFFFFFFFF8;
        v47 = MEMORY[0x277D84F98];
        v50 = v1 & 0xC000000000000001;
        v51 = v1 + 32;
        v42 = v1;
        v1 &= 0xC000000000000001;
        v45 = v12;
        while (2)
        {
          if (v46)
          {
            v14 = MEMORY[0x23EE90360](v13);
            v15 = __OFADD__(v13++, 1);
            if (v15)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v13 >= *(v44 + 16))
            {
              goto LABEL_72;
            }

            v14 = *(v43 + 8 * v13);

            v15 = __OFADD__(v13++, 1);
            if (v15)
            {
              goto LABEL_69;
            }
          }

          v55 = v3;
          if (i)
          {
            v48 = v13;
            v16 = 0;
            v53 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
            while (1)
            {
              if (v1)
              {
                v17 = MEMORY[0x23EE90360](v16, v42);
              }

              else
              {
                if (v16 >= *(v52 + 16))
                {
                  goto LABEL_66;
                }

                v17 = *(v51 + 8 * v16);
              }

              v18 = v17;
              v15 = __OFADD__(v16++, 1);
              if (v15)
              {
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              v19 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              swift_beginAccess();
              v20 = *&v18[v19];
              if ((v20 & 0xC000000000000001) != 0)
              {
                if (v20 < 0)
                {
                  v21 = *&v18[v19];
                }

                v22 = *&v18[v19];

                v23 = sub_23AA0D834();

                if (v23)
                {
LABEL_35:
                  sub_23AA0D944();
                  v24 = *(v3 + 16);
                  sub_23AA0D974();
                  sub_23AA0D984();
                  sub_23AA0D954();
                  goto LABEL_26;
                }
              }

              else if (*(v20 + 16))
              {
                v25 = *(v20 + 40);
                sub_23AA0DD14();

                sub_23AA0C0B4();
                v26 = sub_23AA0DD54();
                v27 = -1 << *(v20 + 32);
                v28 = v26 & ~v27;
                if ((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
                {
                  v29 = ~v27;
                  do
                  {
                    v30 = *(*(v20 + 48) + 8 * v28);

                    if (sub_23AA0C094())
                    {
                      v31 = *(v30 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                      if (v31 == *(v14 + v53))
                      {

                        i = v49;
                        v1 = v50;
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                    }

                    v28 = (v28 + 1) & v29;
                  }

                  while (((*(v20 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0);

                  i = v49;
                }

                else
                {
                }

                v1 = v50;
                goto LABEL_26;
              }

LABEL_26:
              if (v16 == i)
              {
                v32 = v3;
                v3 = MEMORY[0x277D84F90];
                v13 = v48;
                if ((v55 & 0x8000000000000000) == 0)
                {
                  goto LABEL_51;
                }

                goto LABEL_58;
              }
            }
          }

          v32 = v3;
          if (v3 < 0)
          {
            goto LABEL_58;
          }

LABEL_51:
          if ((v32 & 0x4000000000000000) != 0)
          {
LABEL_58:
            if (sub_23AA0D7F4() != 2)
            {
              goto LABEL_15;
            }

LABEL_53:
            if ((v32 & 0xC000000000000001) != 0)
            {
              v34 = v13;
              v36 = MEMORY[0x23EE90360](0, v32);
              v37 = MEMORY[0x23EE90360](1, v32);
            }

            else
            {
              v33 = *(v32 + 16);
              if (!v33)
              {
                goto LABEL_70;
              }

              if (v33 == 1)
              {
                goto LABEL_71;
              }

              v34 = v13;
              v35 = *(v32 + 40);
              v36 = *(v32 + 32);
              v37 = v35;
            }

            v38 = v37;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v54 = v47;
            sub_23A9D9E74(v36, v38, v14, isUniquelyReferenced_nonNull_native);

            v13 = v34;
            v1 = v50;
          }

          else
          {
            if (*(v32 + 16) == 2)
            {
              goto LABEL_53;
            }

LABEL_15:
          }

          if (v13 == v45)
          {
            goto LABEL_64;
          }

          continue;
        }
      }
    }

LABEL_67:
    __break(1u);
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
    ;
  }

  v11 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_62;
  }

LABEL_13:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_63:
  v47 = MEMORY[0x277D84F98];
LABEL_64:

  return v47;
}

uint64_t sub_23A988E44(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  while (v4)
  {
LABEL_11:
    v9 = __clz(__rbit64(v4)) | (v6 << 6);
    v10 = *(*(a1 + 48) + 8 * v9);
    v11 = *(a1 + 56) + 16 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *&v13[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
    v15 = *(*v11 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);

    v16 = v12;
    v17 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_23A9EDE74(v10);
    v22 = v7[2];
    v23 = (v20 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v20;
    if (v7[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v19;
        sub_23A90D188();
        v19 = v36;
      }
    }

    else
    {
      sub_23A90697C(v25, isUniquelyReferenced_nonNull_native);
      v19 = sub_23A9EDE74(v10);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v28 = vsub_f32(v14, v15);
    *v21.i32 = -*&v28.i32[1];
    v29 = vzip1_s32(v21, v28);
    v30 = vmul_f32(v29, v29);
    v30.i32[0] = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
    v31 = vrsqrte_f32(v30.u32[0]);
    v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
    v33 = vmul_n_f32(v29, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
    if (v26)
    {
      *(v7[7] + 8 * v19) = v33;
    }

    else
    {
      v7[(v19 >> 6) + 8] |= 1 << v19;
      *(v7[6] + 8 * v19) = v10;
      *(v7[7] + 8 * v19) = v33;
      v34 = v7[2];
      v24 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v7[2] = v35;
    }

    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v7;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for HullPointUUID();
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

unint64_t sub_23A9890A4(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23EE90360](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;
    if (v2 == 1)
    {
      return v4;
    }

    v5 = 1;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EE90360](v5, v1);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(v1 + 8 * v5 + 32);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          result = sub_23AA0D7F4();
          v2 = result;
          if (!result)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      LODWORD(v8) = HIDWORD(*&v6[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
      LODWORD(v9) = HIDWORD(*&v4[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
      v10 = v8 < v9;
      v11 = vcgt_f32(*&v4[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v6[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]).u8[0];
      if (vabds_f32(v8, v9) < 0.00000011921)
      {
        v10 = v11;
      }

      if (v10)
      {
        v12 = v6;

        result = v12;
        v4 = v12;
        v5 = v7;
        if (v7 == v2)
        {
          return result;
        }
      }

      else
      {

        ++v5;
        if (v7 == v2)
        {
          return v4;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A989220(unint64_t a1, float a2)
{
  v3 = a1;
  v133 = MEMORY[0x277D84FA0];
  v131[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_142;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v5 = MEMORY[0x277D84F90];
    v121 = v4;
    if (v4)
    {
      v6 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x23EE90360](v6, v3);
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_140;
        }

        v10 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v11 = *&v8[v10];

        sub_23A911BA4(v11);
        ++v6;
      }

      while (v9 != v121);
      v12 = v131[0];
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = sub_23A9F4D08(v12);

    if ((v13 & 0xC000000000000001) != 0)
    {
      sub_23AA0D7B4();
      type metadata accessor for HullPointUUID();
      sub_23A98B508();
      sub_23AA0D424();
      v13 = v134;
      v14 = v135;
      v15 = v136;
      v16 = v137;
      v17 = v138;
    }

    else
    {
      v16 = 0;
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);
    }

    v21 = (v15 + 64) >> 6;
    v22 = v3 & 0xC000000000000001;
    v123 = v3 + 32;
    v125 = v3 & 0xFFFFFFFFFFFFFF8;
    v23 = v5;
    v112 = v3;
    v3 = v121;
    v114 = v21;
    v115 = v14;
    v113 = v13;
    v120 = v22;
    while (2)
    {
      v118 = v23;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_27:
      v28 = sub_23AA0D824();
      if (!v28)
      {
        goto LABEL_86;
      }

      v132 = v28;
      type metadata accessor for HullPointUUID();
      swift_dynamicCast();
      v27 = v131[0];
      v116 = v17;
      v117 = v16;
      if (!v131[0])
      {
        goto LABEL_86;
      }

LABEL_29:
      v132 = v5;
      if (!v3)
      {
        v44 = v5;
        if (v5 < 0)
        {
          break;
        }

        goto LABEL_55;
      }

      v29 = 0;
      v127 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      do
      {
        if (v22)
        {
          v30 = MEMORY[0x23EE90360](v29, v112);
        }

        else
        {
          if (v29 >= *(v125 + 16))
          {
            goto LABEL_137;
          }

          v30 = *(v123 + 8 * v29);
        }

        v31 = v30;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v33 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v34 = *&v31[v33];
        if ((v34 & 0xC000000000000001) != 0)
        {

          v35 = sub_23AA0D834();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_39:
          sub_23AA0D944();
          v36 = *(v132 + 16);
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
        }

        else
        {
          if (!*(v34 + 16))
          {
LABEL_31:

            continue;
          }

          v37 = *(v34 + 40);
          sub_23AA0DD14();

          sub_23AA0C0B4();
          v38 = sub_23AA0DD54();
          v39 = -1 << *(v34 + 32);
          v40 = v38 & ~v39;
          if ((*(v34 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            do
            {
              v42 = *(*(v34 + 48) + 8 * v40);

              if (sub_23AA0C094())
              {
                v43 = *(v42 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                if (v43 == *(v27 + v127))
                {

                  v23 = v118;
                  v22 = v120;
                  v3 = v121;
                  goto LABEL_39;
                }
              }

              else
              {
              }

              v40 = (v40 + 1) & v41;
            }

            while (((*(v34 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0);

            v23 = v118;
            v3 = v121;
          }

          else
          {
          }

          v22 = v120;
        }
      }

      while (v29 != v3);
      v44 = v132;
      v5 = MEMORY[0x277D84F90];
      v13 = v113;
      if ((v132 & 0x8000000000000000) == 0)
      {
LABEL_55:

        result = *(v44 + 16);
        if (result != 2)
        {
          goto LABEL_57;
        }

LABEL_61:
        if ((v44 & 0xC000000000000001) != 0)
        {
          v46 = *(MEMORY[0x23EE90360](1, v44) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
          swift_unknownObjectRelease();
          v47 = MEMORY[0x23EE90360](0, v44);
        }

        else
        {
          if (*(v44 + 16) < 2uLL)
          {
            goto LABEL_144;
          }

          v46 = *(*(v44 + 40) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
          v47 = *(v44 + 32);
        }

        v48 = v47;

        v49 = *&v48[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

        v50 = sub_23A938A28(0, 1, 1, v5);
        v52 = *(v50 + 2);
        v51 = *(v50 + 3);
LABEL_75:
        v61 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v50 = sub_23A938A28((v51 > 1), v52 + 1, 1, v50);
        }

        *(v50 + 2) = v61;
        *&v50[8 * v52 + 32] = vsub_f32(v46, v49);
        v62 = 32;
        do
        {
          v128 = *&v50[v62];
          v63.f32[0] = _simd_orient_vf2(1065353216, v128);
          v119 = acosf(vaddv_f32(vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(0, v63), 0), vsub_f32(0, v128), v128), 1065353216)) / sqrtf(vaddv_f32(vmul_f32(v128, v128))));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_23A9388A8(0, *(v23 + 2) + 1, 1, v23);
          }

          v65 = *(v23 + 2);
          v64 = *(v23 + 3);
          if (v65 >= v64 >> 1)
          {
            v23 = sub_23A9388A8((v64 > 1), v65 + 1, 1, v23);
          }

          *&v66 = v128;
          *(&v66 + 1) = LODWORD(v119);
          *(v23 + 2) = v65 + 1;
          *&v23[16 * v65 + 32] = v66;
          sub_23A9EF224(v131, v119);
          v62 += 8;
          --v61;
        }

        while (v61);

        v5 = MEMORY[0x277D84F90];
        v13 = v113;
        v21 = v114;
        v14 = v115;
        v17 = v116;
        v16 = v117;
        continue;
      }

      break;
    }

    result = sub_23AA0D7F4();
    if (result == 2)
    {
      goto LABEL_61;
    }

LABEL_57:
    if (result != 4)
    {

      v17 = v116;
      v16 = v117;
      v21 = v114;
      v14 = v115;
      if (v13 < 0)
      {
        goto LABEL_27;
      }

LABEL_21:
      v24 = v16;
      v25 = v17;
      v26 = v16;
      if (!v17)
      {
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_139;
          }

          if (v26 >= v21)
          {
            break;
          }

          v25 = *(v14 + 8 * v26);
          ++v24;
          if (v25)
          {
            goto LABEL_25;
          }
        }

LABEL_86:
        sub_23A8CA904();
        v67 = 0;
        v68 = v133 + 56;
        v126 = v133;
        v69 = 1 << *(v133 + 32);
        v70 = -1;
        if (v69 < 64)
        {
          v70 = ~(-1 << v69);
        }

        v71 = v70 & *(v133 + 56);
        v72 = (v69 + 63) >> 6;
        v122 = v5;
        v124 = v23 + 32;
        v73 = 0.0;
        while (2)
        {
          v74 = v67;
          if (!v71)
          {
            goto LABEL_91;
          }

LABEL_90:
          v67 = v74;
LABEL_94:
          v75 = *(v23 + 2);
          if (v75)
          {
            v76 = *(*(v126 + 48) + ((v67 << 8) | (4 * __clz(__rbit64(v71)))));
            v77 = v5;
            v78 = v124;
            do
            {
              v82 = *v78;
              v83 = COERCE_FLOAT(*(v78 + 1));
              if (v76 <= v83 && v83 < (v76 + a2))
              {
                v129 = *v78;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v131[0] = v77;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_23A975DC0(0, *(v77 + 2) + 1, 1);
                  v77 = v131[0];
                }

                v80 = *(v77 + 2);
                v79 = *(v77 + 3);
                v81 = v129;
                if (v80 >= v79 >> 1)
                {
                  sub_23A975DC0((v79 > 1), v80 + 1, 1);
                  v81 = v129;
                  v77 = v131[0];
                }

                *(v77 + 2) = v80 + 1;
                *&v77[16 * v80 + 32] = v81;
              }

              v78 += 16;
              --v75;
            }

            while (v75);
          }

          else
          {
            v77 = v5;
          }

          v71 &= v71 - 1;
          v3 = *(v77 + 2);
          if (v3)
          {
            v131[0] = MEMORY[0x277D84F90];
            sub_23A975DF0(0, v3, 0);
            v86 = v131[0];
            v87 = (v77 + 32);
            v88 = *(v131[0] + 16);
            do
            {
              v89 = *v87;
              v131[0] = v86;
              v90 = *(v86 + 24);
              v91 = v88 + 1;
              if (v88 >= v90 >> 1)
              {
                v130 = v89;
                sub_23A975DF0((v90 > 1), v88 + 1, 1);
                v89 = v130;
                v86 = v131[0];
              }

              *(v86 + 16) = v91;
              *(v86 + 4 * v88 + 32) = vmuls_lane_f32(sqrtf(vaddv_f32(*&vmulq_f32(v89, v89))), v89, 2);
              ++v87;
              ++v88;
              --v3;
            }

            while (v3);
            v5 = MEMORY[0x277D84F90];
            if (v91 <= 7)
            {
LABEL_114:
              v92 = 0;
              v93 = 0.0;
              goto LABEL_120;
            }

LABEL_117:
            v92 = v91 & 0xFFFFFFFFFFFFFFF8;
            v94 = v86 + 48;
            v93 = 0.0;
            v95 = v91 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v93 = (((((((v93 + COERCE_FLOAT(*(v94 - 16))) + COERCE_FLOAT(HIDWORD(*(v94 - 16)))) + COERCE_FLOAT(*(v94 - 8))) + COERCE_FLOAT(HIDWORD(*(v94 - 16)))) + COERCE_FLOAT(*v94)) + COERCE_FLOAT(HIDWORD(*v94))) + COERCE_FLOAT(*(v94 + 8))) + COERCE_FLOAT(HIDWORD(*v94));
              v94 += 32;
              v95 -= 8;
            }

            while (v95);
            if (v91 != v92)
            {
LABEL_120:
              v96 = v91 - v92;
              v97 = (v86 + 4 * v92 + 32);
              do
              {
                v98 = *v97++;
                v93 = v93 + v98;
                --v96;
              }

              while (v96);
            }

            if (v73 < v93)
            {
              goto LABEL_127;
            }
          }

          else
          {
            v5 = MEMORY[0x277D84F90];
            v91 = *(MEMORY[0x277D84F90] + 16);
            if (v91)
            {
              v86 = MEMORY[0x277D84F90];
              if (v91 <= 7)
              {
                goto LABEL_114;
              }

              goto LABEL_117;
            }

            if (v73 < 0.0)
            {
              v93 = 0.0;
LABEL_127:

              v73 = v93;
              v122 = v77;
              v23 = v118;
              continue;
            }
          }

          break;
        }

        v74 = v67;
        v23 = v118;
        if (!v71)
        {
LABEL_91:
          while (1)
          {
            v67 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              break;
            }

            if (v67 >= v72)
            {

              v99 = *(v122 + 2);
              if (v99)
              {
                v100 = (v122 + 32);
                v101 = 0.0;
                v102 = 0.0;
                do
                {
                  v103 = *v100++;
                  v104 = sqrtf(vaddv_f32(*&vmulq_f32(v103, v103)));
                  v101 = v101 + vmuls_lane_f32(v104, v103, 2);
                  v102 = v102 + v104;
                  --v99;
                }

                while (v99);
              }

              else
              {
                v101 = 0.0;
                v102 = 0.0;
              }

              if (fabsf(v102) < 0.00000011921)
              {
                return 0;
              }

              v105 = tanf(v101 / v102);
              __asm { FMOV            V1.2S, #1.0 }

              _D1.f32[1] = v105;
              v109 = vmul_f32(_D1, _D1);
              v109.i32[0] = vadd_f32(v109, vdup_lane_s32(v109, 1)).u32[0];
              v110 = vrsqrte_f32(v109.u32[0]);
              v111 = vmul_f32(v110, vrsqrts_f32(v109.u32[0], vmul_f32(v110, v110)));
              return vmul_n_f32(_D1, vmul_f32(v111, vrsqrts_f32(v109.u32[0], vmul_f32(v111, v111))).f32[0]);
            }

            v71 = *(v68 + 8 * v67);
            ++v74;
            if (v71)
            {
              goto LABEL_94;
            }
          }

LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          v4 = sub_23AA0D7F4();
          continue;
        }

        goto LABEL_90;
      }

LABEL_25:
      v116 = (v25 - 1) & v25;
      v117 = v26;
      v27 = *(*(v13 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (!v27)
      {
        goto LABEL_86;
      }

      goto LABEL_29;
    }

    break;
  }

  if ((v44 & 0xC000000000000001) != 0)
  {
    v53 = v22;
    v55 = *(MEMORY[0x23EE90360](1, v44) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
    swift_unknownObjectRelease();
    v56 = MEMORY[0x23EE90360](0, v44);
    v54 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
    goto LABEL_68;
  }

  if (*(v44 + 16) >= 2uLL)
  {
    v53 = v22;
    v54 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
    v55 = *(*(v44 + 40) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
    v56 = *(v44 + 32);
LABEL_68:
    v57 = *&v56[v54];

    result = sub_23A938A28(0, 1, 1, v5);
    v50 = result;
    v59 = *(result + 16);
    v58 = *(result + 24);
    if (v59 >= v58 >> 1)
    {
      result = sub_23A938A28((v58 > 1), v59 + 1, 1, result);
      v50 = result;
    }

    *(v50 + 2) = v59 + 1;
    *&v50[8 * v59 + 32] = vsub_f32(v55, v57);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v46 = *(MEMORY[0x23EE90360](3, v44) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      swift_unknownObjectRelease();
      v60 = MEMORY[0x23EE90360](0, v44);

      v22 = v53;
    }

    else
    {
      if (*(v44 + 16) < 4uLL)
      {
        goto LABEL_145;
      }

      v22 = v53;
      v46 = *(*(v44 + 56) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      v60 = *(v44 + 32);
    }

    v49 = *&v60[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    goto LABEL_75;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

void sub_23A989EB4(unint64_t a1, uint64_t a2, char a3)
{
  if (a1 >> 62)
  {
    v6 = sub_23AA0D7F4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = sub_23A9890A4(a1);
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

    if (a3)
    {
      v11 = sub_23A989220(a1, 0.1);
      if (v12)
      {
        return;
      }

      a2 = v11;
    }

    if (v6 < 1)
    {
      __break(1u);
    }

    else
    {
      v13 = a2;
      v44 = HIDWORD(a2);
      v45 = -*(&a2 + 1);
      v46 = a2;
      v14.f32[0] = -*(&a2 + 1);
      v14.i32[1] = a2;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = 0;
        *&v9 = 0x7F0000007FLL;
        *&v10 = vneg_f32(0x7F0000007FLL);
        v47 = v14;
        v48 = v13;
        do
        {
          v49 = v10;
          v50 = v9;
          v16 = MEMORY[0x23EE90360](v15++, a1);
          v17 = *(v16 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
          swift_unknownObjectRelease();
          v13.i32[1] = v48.i32[1];
          *(&v10 + 1) = *(&v49 + 1);
          *(&v9 + 1) = *(&v50 + 1);
          v18 = vsub_f32(v17, v8);
          v19 = vmul_f32(v18, v48);
          v20 = vmul_f32(v47, v18);
          v21 = vadd_f32(vzip1_s32(v19, v20), vzip2_s32(v19, v20));
          *&v10 = vbsl_s8(vcgt_f32(*&v49, v21), v21, *&v49);
          *&v9 = vbsl_s8(vcgt_f32(v21, *&v50), v21, *&v50);
        }

        while (v6 != v15);
      }

      else
      {
        v22 = (a1 + 32);
        *&v9 = 0x7F0000007FLL;
        *&v10 = vneg_f32(0x7F0000007FLL);
        do
        {
          v23 = *v22++;
          v24 = vsub_f32(*(v23 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position), v8);
          v25 = vmul_f32(v24, a2);
          v26 = vmul_f32(v14, v24);
          v27 = vadd_f32(vzip1_s32(v25, v26), vzip2_s32(v25, v26));
          *&v10 = vbsl_s8(vcgt_f32(*&v10, v27), v27, *&v10);
          *&v9 = vbsl_s8(vcgt_f32(v27, *&v9), v27, *&v9);
          --v6;
        }

        while (v6);
      }

      v13.i32[0] = v46;
      v28 = vadd_f32(v8, vmul_n_f32(v13, *&v10));
      v29 = vmul_lane_f32(__PAIR64__(v46, LODWORD(v45)), *&v10, 1);
      v30 = vadd_f32(v8, vmul_n_f32(v13, *&v9));
      v31 = vmul_lane_f32(__PAIR64__(v46, LODWORD(v45)), *&v9, 1);
      v32 = vadd_f32(v31, v28);
      v33 = vadd_f32(v30, v31);
      v34 = vadd_f32(v29, v30);
      v35 = vadd_f32(v29, v28);
      v36 = vsub_f32(*&v9, *&v10);
      type metadata accessor for OBB();
      v37 = swift_allocObject();
      *(v37 + 16) = v32;
      *(v37 + 24) = v33;
      *(v37 + 32) = v34;
      *(v37 + 40) = v35;
      *(v37 + 96) = v36;
      __asm { FMOV            V1.2S, #0.25 }

      *&v43 = vmul_f32(vadd_f32(v35, vadd_f32(v34, vadd_f32(v33, v32))), _D1);
      *(&v43 + 1) = 1065353216;
      *(v37 + 48) = __PAIR64__(v44, v46);
      *(v37 + 64) = __PAIR64__(v46, LODWORD(v45));
      *(v37 + 80) = v43;
    }
  }
}

uint64_t sub_23A98A108(unint64_t a1, float a2)
{
  v163 = sub_23AA0C0E4();
  v4 = *(v163 - 8);
  v5 = *(v4 + 64);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v163);
  v162 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a1;
  v153 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_176;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    v57 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v172 = MEMORY[0x277D84F90];
  v154 = v8;
  result = sub_23AA0D964();
  if (v154 < 0)
  {
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
  }

  else
  {
    v11 = 0;
    v152 = v151 & 0xC000000000000001;
    v149 = v151 + 32;
    v150 = v151 & 0xFFFFFFFFFFFFFF8;
    v160 = (v4 + 32);
    v161 = (v4 + 16);
    v12 = v162;
    while (2)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_167;
      }

      v156 = v11 + 1;
      if (v152)
      {
        v20 = MEMORY[0x23EE90360]();
      }

      else
      {
        if (v11 >= *(v150 + 16))
        {
          goto LABEL_174;
        }

        v20 = *(v149 + 8 * v11);
      }

      v21 = v20;
      v22 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v155 = v21;
      v23 = *&v21[v22];
      v166 = v23 & 0xC000000000000001;
      if ((v23 & 0xC000000000000001) != 0)
      {
        if (v23 < 0)
        {
          v4 = v23;
        }

        else
        {
          v4 = v23 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v23;

        v25 = sub_23AA0D7F4();
        if (!v25)
        {
LABEL_6:

          v13 = v9;
          goto LABEL_7;
        }

        v26 = v25;
        v171 = v9;
        sub_23AA0D964();
        v174 = sub_23AA0D7A4();
        v175 = v27;
        LOBYTE(v176) = 1;
        v28 = v24;
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v26 = *(v23 + 16);
        v29 = v23;

        if (!v26)
        {
          goto LABEL_6;
        }

        v171 = v9;
        sub_23AA0D964();
        v30 = -1 << *(v29 + 32);
        v31 = sub_23AA0D774();
        v28 = v29;
        v32 = *(v29 + 36);
        v174 = v31;
        v175 = v32;
        LOBYTE(v176) = 0;
      }

      v33 = 0;
      v34 = v28 & 0xFFFFFFFFFFFFFF8;
      if (v28 < 0)
      {
        v34 = v28;
      }

      v158 = v28 + 56;
      v159 = v34;
      v157 = v28 + 64;
      v164 = v26;
      v165 = v28;
      do
      {
        while (1)
        {
          if (v33 >= v26)
          {
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            v8 = sub_23AA0D7F4();
            goto LABEL_3;
          }

          v36 = __OFADD__(v33++, 1);
          if (v36)
          {
            goto LABEL_160;
          }

          v37 = v176;
          v167 = v175;
          v168 = v174;
          v38 = sub_23A9886A4(v174, v175, v176, v28);
          v39 = v163;
          (*v161)(v12, v38 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v163);
          v40 = *(v38 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
          v41 = *(v38 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness);

          v42 = type metadata accessor for HullPointUUID();
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          v4 = swift_allocObject();
          (*v160)(v4 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v12, v39);
          *(v4 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v40;
          *(v4 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v41;
          sub_23AA0D944();
          v45 = *(v171 + 16);
          sub_23AA0D974();
          sub_23AA0D984();
          result = sub_23AA0D954();
          if (v166)
          {
            break;
          }

          if (v37)
          {
            goto LABEL_180;
          }

          v28 = v165;
          if ((v168 & 0x8000000000000000) != 0)
          {
            goto LABEL_162;
          }

          v46 = 1 << *(v165 + 32);
          if (v168 >= v46)
          {
            goto LABEL_162;
          }

          v47 = v168 >> 6;
          v48 = *(v158 + 8 * (v168 >> 6));
          if (((v48 >> v168) & 1) == 0)
          {
            goto LABEL_163;
          }

          if (*(v165 + 36) != v167)
          {
            goto LABEL_164;
          }

          v49 = v48 & (-2 << (v168 & 0x3F));
          if (v49)
          {
            v46 = __clz(__rbit64(v49)) | v168 & 0x7FFFFFFFFFFFFFC0;
            v26 = v164;
          }

          else
          {
            v50 = v47 << 6;
            v51 = v47 + 1;
            v52 = (v157 + 8 * v47);
            v26 = v164;
            while (v51 < (v46 + 63) >> 6)
            {
              v53 = *v52++;
              v4 = v53;
              v50 += 64;
              ++v51;
              if (v53)
              {
                v54 = v165;
                sub_23A8CA9CC(v168, v167, 0);
                v28 = v54;
                v46 = __clz(__rbit64(v4)) + v50;
                goto LABEL_45;
              }
            }

            v55 = v165;
            sub_23A8CA9CC(v168, v167, 0);
            v28 = v55;
          }

LABEL_45:
          v56 = *(v28 + 36);
          v174 = v46;
          v175 = v56;
          LOBYTE(v176) = 0;
          if (v33 == v26)
          {
            goto LABEL_46;
          }
        }

        if (!v37)
        {
          goto LABEL_179;
        }

        if (sub_23AA0D7C4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v26 = v164;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D8, &unk_23AA115D0);
        v35 = sub_23AA0D414();
        sub_23AA0D844();
        v35(v169, 0);
        v28 = v165;
      }

      while (v33 != v26);
LABEL_46:
      sub_23A8CA9CC(v174, v175, v176);

      v13 = v171;
      v9 = MEMORY[0x277D84F90];
LABEL_7:
      v14 = sub_23A9F4D08(v13);

      v15 = v155;
      v16 = *&v155[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
      v17 = type metadata accessor for HullPoint();
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v16;
      *&v18[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v14;
      v173.receiver = v18;
      v173.super_class = v17;
      v4 = objc_msgSendSuper2(&v173, sel_init);

      sub_23AA0D944();
      v19 = *(v172 + 16);
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      v11 = v156;
      if (v156 != v154)
      {
        continue;
      }

      break;
    }

    v57 = v9;
    v9 = v172;
LABEL_49:
    v169[0] = v57;
    v58 = v151;
    if (v9 >> 62)
    {
      v4 = sub_23AA0D7F4();
    }

    else
    {
      v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = MEMORY[0x277D84F90];
    v155 = v9;
    v156 = v4;
    if (v4)
    {
      v60 = 0;
      v4 = v9 & 0xC000000000000001;
      v61 = v9 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v4)
        {
          v62 = MEMORY[0x23EE90360](v60, v9, v6);
        }

        else
        {
          if (v60 >= *(v61 + 16))
          {
            goto LABEL_166;
          }

          v62 = *(v9 + 8 * v60 + 32);
        }

        v63 = v62;
        v64 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_165;
        }

        v65 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v66 = *&v63[v65];

        v67 = v66;
        v9 = v155;
        sub_23A911BA4(v67);
        ++v60;
      }

      while (v64 != v156);
      v59 = v169[0];
      v58 = v151;
      v4 = v156;
    }

    v148 = sub_23A9F4D08(v59);

    if (v4)
    {
      v68 = 0;
      v146 = v148 & 0xC000000000000001;
      v147 = v9 & 0xC000000000000001;
      v143 = v9 + 32;
      v144 = v9 & 0xFFFFFFFFFFFFFF8;
      v69 = v148 & 0xFFFFFFFFFFFFFF8;
      if (v148 < 0)
      {
        v69 = v148;
      }

      v145 = v69;
      v142 = v148 + 56;
      v70 = v58 & 0xFFFFFFFFFFFFFF8;
      if (v58 < 0)
      {
        v71 = v58;
      }

      else
      {
        v71 = v58 & 0xFFFFFFFFFFFFFF8;
      }

      v149 = v71;
      v72 = v58 & 0xC000000000000001;
      v73 = v58 + 32;
      v141 = xmmword_23AA11BB0;
      v162 = (v58 & 0xFFFFFFFFFFFFFF8);
      v163 = v58 + 32;
      v164 = v58 & 0xC000000000000001;
      while (1)
      {
        if (v147)
        {
          v74 = MEMORY[0x23EE90360](v68, v9);
        }

        else
        {
          if (v68 >= *(v144 + 16))
          {
            goto LABEL_175;
          }

          v74 = *(v143 + 8 * v68);
        }

        v75 = v74;
        v36 = __OFADD__(v68, 1);
        v76 = v68 + 1;
        if (v36)
        {
          goto LABEL_173;
        }

        v152 = v76;
        if (v146)
        {

          sub_23AA0D7B4();
          type metadata accessor for HullPointUUID();
          sub_23A98B508();
          sub_23AA0D424();
          v77 = v174;
          v78 = v175;
          v79 = v176;
          v80 = v177;
          v4 = v178;
        }

        else
        {
          v81 = -1 << *(v148 + 32);
          v82 = ~v81;
          v83 = -v81;
          v84 = v83 < 64 ? ~(-1 << v83) : -1;
          v4 = v84 & *(v148 + 56);

          v79 = v82;
          v80 = 0;
          v78 = v142;
        }

        v150 = v79;
        v85 = (v79 + 64) >> 6;
        v154 = v75;
        v158 = v78;
        v159 = v77;
        v157 = v85;
        while (v77 < 0)
        {
          v91 = sub_23AA0D824();
          if (!v91)
          {
            goto LABEL_68;
          }

          v170 = v91;
          type metadata accessor for HullPointUUID();
          swift_dynamicCast();
          v90 = v169[0];
          v160 = v4;
          v161 = v80;
          if (!v169[0])
          {
            goto LABEL_68;
          }

LABEL_92:
          v168 = v90;
          v92 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
          swift_beginAccess();
          v93 = *&v75[v92];
          if ((v93 & 0xC000000000000001) != 0)
          {
            if (v93 < 0)
            {
              v94 = *&v75[v92];
            }

            v4 = v168;

            v95 = sub_23AA0D834();

            if (v95)
            {
              goto LABEL_81;
            }
          }

          else if (*(v93 + 16))
          {
            v96 = *(v93 + 40);
            sub_23AA0DD14();

            sub_23AA0C0B4();
            v97 = sub_23AA0DD54();
            v4 = v93 + 56;
            v98 = -1 << *(v93 + 32);
            v99 = v97 & ~v98;
            if ((*(v93 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
            {
              v100 = ~v98;
              v101 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
              do
              {
                v102 = *(*(v93 + 48) + 8 * v99);

                v103 = v168;
                if (sub_23AA0C094())
                {
                  v104 = *(v102 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                  if (v104 == *(v103 + v101))
                  {

                    v4 = v160;
                    v80 = v161;
                    v70 = v162;
                    v73 = v163;
                    v72 = v164;
                    goto LABEL_155;
                  }
                }

                else
                {
                }

                v99 = (v99 + 1) & v100;
              }

              while (((*(v4 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) != 0);
            }

            v70 = v162;
            v73 = v163;
            v72 = v164;
          }

          v170 = MEMORY[0x277D84F90];
          if (v153)
          {
            v105 = sub_23AA0D7F4();
          }

          else
          {
            v105 = *(v70 + 16);
          }

          if (v105)
          {
            v4 = 0;
            v167 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid;
            v166 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
            v165 = v105;
            while (1)
            {
              if (v72)
              {
                v107 = MEMORY[0x23EE90360](v4, v151);
              }

              else
              {
                if (v4 >= *(v70 + 16))
                {
                  goto LABEL_158;
                }

                v107 = *(v73 + 8 * v4);
              }

              v108 = v107;
              v36 = __OFADD__(v4++, 1);
              if (v36)
              {
                __break(1u);
LABEL_158:
                __break(1u);
                goto LABEL_159;
              }

              v109 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              swift_beginAccess();
              v110 = *&v108[v109];
              if ((v110 & 0xC000000000000001) != 0)
              {
                if (v110 < 0)
                {
                  v111 = *&v108[v109];
                }

                v112 = sub_23AA0D834();

                if (v112)
                {
LABEL_111:
                  sub_23AA0D944();
                  v106 = *(v170 + 16);
                  sub_23AA0D974();
                  sub_23AA0D984();
                  sub_23AA0D954();
                }

                else
                {
                }
              }

              else
              {
                if (!*(v110 + 16))
                {

                  goto LABEL_113;
                }

                v113 = *(v110 + 40);
                sub_23AA0DD14();

                sub_23AA0C0B4();
                v114 = sub_23AA0DD54();
                v115 = -1 << *(v110 + 32);
                v116 = v114 & ~v115;
                if (((*(v110 + 56 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
                {

                  v73 = v163;
                  v72 = v164;
                  goto LABEL_113;
                }

                v117 = ~v115;
                do
                {
                  v118 = *(*(v110 + 48) + 8 * v116);

                  v119 = v168;
                  if (sub_23AA0C094())
                  {
                    v120 = *(v118 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                    if (v120 == *(v119 + v166))
                    {

                      v70 = v162;
                      v73 = v163;
                      v72 = v164;
                      goto LABEL_111;
                    }
                  }

                  else
                  {
                  }

                  v116 = (v116 + 1) & v117;
                }

                while (((*(v110 + 56 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) != 0);

                v70 = v162;
                v73 = v163;
                v72 = v164;
              }

              v105 = v165;
LABEL_113:
              if (v4 == v105)
              {
                v121 = v170;
                if ((v170 & 0x8000000000000000) == 0)
                {
                  goto LABEL_138;
                }

                goto LABEL_149;
              }
            }
          }

          v121 = MEMORY[0x277D84F90];
          if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
          {
            goto LABEL_149;
          }

LABEL_138:
          if ((v121 & 0x4000000000000000) != 0)
          {
LABEL_149:
            if (sub_23AA0D7F4() == 2)
            {
              v140 = sub_23AA0D7F4();
              if (!v140)
              {
                goto LABEL_169;
              }

              v122 = v140;
              if ((v121 & 0xC000000000000001) != 0)
              {
LABEL_152:
                v125 = *(MEMORY[0x23EE90360](0, v121) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
                swift_unknownObjectRelease();
                result = v122 - 1;
                if (__OFSUB__(v122, 1))
                {
                  goto LABEL_181;
                }

                v126 = MEMORY[0x23EE90360](result, v121);
LABEL_145:
                v127 = v126;

                v128 = *&v127[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

                v75 = v154;
                v129 = *(v154 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
                v130 = vsub_f32(v128, v125);
                v131 = vmul_f32(v130, vsub_f32(v129, v125));
                if (vaddv_f32(v131) > 0.0)
                {
                  v132 = vadd_f32(v131, vdup_lane_s32(v131, 1));
                  v133 = vmul_f32(v130, v130);
                  v134 = vadd_f32(v133, vdup_lane_s32(v133, 1));
                  if ((vmvn_s8(vcge_f32(v134, v132)).u8[0] & 1) == 0)
                  {
                    v135 = vmul_f32(v130, vrev64_s32(vsub_f32(v125, v129)));
                    if (fabsf(vsub_f32(v135, vdup_lane_s32(v135, 1)).f32[0] / sqrtf(v134.f32[0])) < a2)
                    {
                      v136 = v168;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
                      inited = swift_initStackObject();
                      *(inited + 16) = v141;
                      *(inited + 32) = v136;

                      v138 = sub_23A9A6B4C(inited);
                      swift_setDeallocating();
                      v139 = *(inited + 16);
                      swift_arrayDestroy();
                      swift_beginAccess();
                      sub_23A985B10(v138);
                      swift_endAccess();
                    }
                  }
                }

LABEL_81:

                v4 = v160;
                v80 = v161;
                goto LABEL_82;
              }

LABEL_141:
              v123 = *(v121 + 16);
              if (!v123)
              {
                goto LABEL_170;
              }

              v124 = v122 - 1;
              if (__OFSUB__(v122, 1))
              {
                goto LABEL_171;
              }

              if (v124 >= v123)
              {
                goto LABEL_172;
              }

              v125 = *(*(v121 + 32) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
              v126 = *(v121 + 32 + 8 * v124);
              goto LABEL_145;
            }
          }

          else if (*(v121 + 16) == 2)
          {
            v122 = 2;
            if ((v121 & 0xC000000000000001) != 0)
            {
              goto LABEL_152;
            }

            goto LABEL_141;
          }

          v4 = v160;
          v80 = v161;
LABEL_155:
          v75 = v154;
LABEL_82:
          v78 = v158;
          v77 = v159;
          v85 = v157;
        }

        v86 = v80;
        v87 = v4;
        v88 = v80;
        if (v4)
        {
          break;
        }

        while (1)
        {
          v88 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_161;
          }

          if (v88 >= v85)
          {
            break;
          }

          v87 = *(v78 + 8 * v88);
          v86 = (v86 + 1);
          if (v87)
          {
            goto LABEL_88;
          }
        }

        v4 = 0;
LABEL_68:
        sub_23A8CA904();

        v9 = v155;
        v68 = v152;
        if (v152 == v156)
        {
          goto LABEL_156;
        }
      }

LABEL_88:
      v160 = ((v87 - 1) & v87);
      v161 = v88;
      v89 = *(*(v77 + 48) + ((v88 << 9) | (8 * __clz(__rbit64(v87)))));

      if (!v90)
      {
        goto LABEL_68;
      }

      goto LABEL_92;
    }

LABEL_156:

    return v9;
  }

  return result;
}