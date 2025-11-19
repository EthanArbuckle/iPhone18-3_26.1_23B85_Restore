uint64_t sub_23A8EC75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A8EC82C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LineAnimation()
{
  result = qword_27DFAED08;
  if (!qword_27DFAED08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A8EC928()
{
  sub_23A8ECA08();
  if (v0 <= 0x3F)
  {
    sub_23A8ECA64();
    if (v1 <= 0x3F)
    {
      sub_23A8ECAC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A8ECA08()
{
  if (!qword_27DFAED18)
  {
    sub_23A8E996C();
    v0 = sub_23AA0DCC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAED18);
    }
  }
}

void sub_23A8ECA64()
{
  if (!qword_27DFAED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0940, &qword_23AA15CF0);
    v0 = sub_23AA0D344();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAED20);
    }
  }
}

void sub_23A8ECAC8()
{
  if (!qword_27DFAEC18)
  {
    sub_23AA0C064();
    v0 = sub_23AA0D664();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAEC18);
    }
  }
}

__n128 sub_23A8ECB20(float32x4_t *a1, __n128 result, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v7 = a1[1].i64[0];
  if (v7)
  {
    v34 = MEMORY[0x277D84F90];
    v30 = result;
    sub_23A975DC0(0, v7, 0);
    v10 = v30;
    v11 = v34;
    v12 = a1 + 2;
    v13.i64[0] = 0xBF000000BF000000;
    v13.i64[1] = 0xBF000000BF000000;
    v16.i64[0] = vmulq_f32(a6, v13).u64[0];
    v14 = a4;
    v15 = a5;
    v16.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(-0.5, a6, 2));
    v17.i64[0] = 0x3F0000003F000000;
    v17.i64[1] = 0x3F0000003F000000;
    v18.i64[0] = vmulq_f32(a6, v17).u64[0];
    v18.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, a6, 2));
    v19 = a3;
    do
    {
      v20 = *v12;
      v35 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        v27 = v18;
        v29 = v16;
        v25 = v9;
        v26 = v8;
        v24 = *v12;
        sub_23A975DC0((v21 > 1), v22 + 1, 1);
        v20 = v24;
        v9 = v25;
        v8 = v26;
        v18 = v27;
        v16 = v29;
        v10 = v30;
        v19 = a3;
        v14 = a4;
        v15 = a5;
        v11 = v35;
      }

      v23 = vmaxnmq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v20.f32[0]), v19, *v20.f32, 1), v14, v20, 2), v15).u64[0], v16);
      v23.i32[3] = 0;
      result = vminnmq_f32(v23, v18);
      result.n128_u32[3] = v8;
      *(v11 + 16) = v22 + 1;
      *(v11 + 16 * v22 + 32) = result;
      ++v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_23A8ECC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(type metadata accessor for LineAnimation() + 60);
  sub_23A8ED91C(v1 + v7, v6);
  v8 = sub_23AA0C064();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_23A8ED8B4(v6);
  sub_23AA0C044();
  sub_23A8ED8B4(v1 + v7);
  (*(v9 + 16))(v1 + v7, a1, v8);
  return (*(v9 + 56))(v1 + v7, 0, 1, v8);
}

uint64_t sub_23A8ECDE8(uint64_t a1, float a2, __n128 a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  result = 0;
  if (*(*a1 + 16) >= 2uLL)
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 32);
    v15 = 0;
    sub_23A8ECB20(*a1, a3, a4, a5, a6, a7);
    v17 = v16[1].u64[0];
    if (!v17)
    {
      goto LABEL_27;
    }

    v8 = v16;
    v18 = vmulq_f32(vsubq_f32(v16[v17 + 1], v16[2]), a8);
    v19 = v18.f32[2] + vaddv_f32(*v18.f32);

    if (v19 <= 0.0)
    {
      v13 = sub_23A8ED48C(v13);
      v16 = sub_23A8ED544(v8);
      v17 = v16[1].u64[0];
      if (!v17)
      {
        goto LABEL_28;
      }

      v8 = v16;
    }

    a8 = *(v8 + 32);
    v16 = sub_23A9388A8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = v16[1].u64[0];
    v17 = v16[1].u64[1];
    v15 = v9 + 1;
    if (v9 >= v17 >> 1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v16[1].i64[0] = v15;
      v16[v9 + 2] = a8;
      v9 = *(v13 + 16);
      if (!v9)
      {
        break;
      }

      v15 = 0;
      v20 = 0.0;
      while (1)
      {
        v17 = *(v13 + 16);
        if (v15 >= v17)
        {
          break;
        }

        v21 = v15 + 1;
        v22 = v20 + *(v13 + 4 * v15 + 32);
        if (v22 > (v14 * a2))
        {
          if (((a2 - (v20 / v14)) / ((v22 / v14) - (v20 / v14))) > 0.0001)
          {
            v36 = (a2 - (v20 / v14)) / ((v22 / v14) - (v20 / v14));
            v27 = v16;

            v29 = *(v8 + 16);
            if (v15 >= v29)
            {
              __break(1u);
            }

            else if (v15 + 1 < v29)
            {
              v30 = (v8 + 16 * v15);
              v33 = v30[2];
              v34 = v30[3];

              v31 = vsubq_f32(v34, v33);
              v32 = vmuls_lane_f32(v36, v31, 2);
              *&v28 = vaddq_f32(v33, vmulq_n_f32(v31, v36)).u64[0];
              *(&v28 + 2) = v33.f32[2] + v32;
              HIDWORD(v28) = 0;
              result = v27;
              v8 = v27[1].i64[0];
              v29 = v27[1].u64[1];
              v13 = v8 + 1;
              if (v8 < v29 >> 1)
              {
LABEL_21:
                *(result + 16) = v13;
                *(result + 16 * v8 + 32) = v28;
                goto LABEL_22;
              }

LABEL_32:
              v37 = v28;
              result = sub_23A9388A8((v29 > 1), v13, 1, result);
              v28 = v37;
              goto LABEL_21;
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        else
        {
          v17 = *(v8 + 16);
          if (v21 >= v17)
          {
            goto LABEL_26;
          }

          v23 = *(v8 + 16 * v15 + 48);
          v25 = v16[1].u64[0];
          v24 = v16[1].u64[1];
          if (v25 >= v24 >> 1)
          {
            a8 = *(v8 + 16 * v15 + 48);
            v16 = sub_23A9388A8((v24 > 1), v25 + 1, 1, v16);
            v23 = a8;
          }

          v16[1].i64[0] = v25 + 1;
          v16[v25 + 2] = v23;
          v20 = v22;
        }

        ++v15;
        if (v9 == v21)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v16 = sub_23A9388A8((v17 > 1), v15, 1, v16);
    }

LABEL_17:
    v26 = v16;

    result = v26;
LABEL_22:
    if (*(result + 16) < 2uLL)
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_23A8ED10C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_23AA0D7F4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_23A9F5738(v19, 0);
      sub_23A9130B0(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_23AA0D7F4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x23EE90360]();
          v11 = MEMORY[0x23EE90360](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_23A97E578(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_23A97E578(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_23A8ED31C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975C20(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED3D4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975C74(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED48C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975CEC(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED544(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 1;
  for (i = 2; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 2 >= v6)
    {
      break;
    }

    if (v4 - 2 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 16 * v4);
    v8 = *(v1 + 16 * i);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975CD8(v1);
      v1 = result;
    }

    *(v1 + 16 * i) = v7;
    *(v1 + 16 * v4) = v8;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23A8ED604(float32x4_t a1, double a2)
{
  v3 = v2;
  v20 = a1;
  v5 = sub_23AA0C064();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = vmulq_f32(*(v2 + 80), v20);
  v15 = *(v2 + 32);
  v14 = *(v2 + 48);
  sub_23AA0DCB4();
  *v2;
  v16 = *(v2 + 64) * a2;
  sub_23AA0C044();
  sub_23A8ECC7C(v9);
  sub_23AA0C014();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v17(v12, v5);
  sub_23AA0C044();
  sub_23AA0C024();
  v17(v9, v5);
  v18 = *(type metadata accessor for LineAnimation() + 60);
  sub_23A8ED8B4(v3 + v18);
  (*(v6 + 32))(v3 + v18, v12, v5);
  return (*(v6 + 56))(v3 + v18, 0, 1, v5);
}

uint64_t sub_23A8ED8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8ED91C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8ED98C(float32x2_t *a1, float a2, float32x2_t a3)
{
  if (a1[4].i8[0])
  {
    return 0;
  }

  v4 = a1[2];
  v5 = vsub_f32(a3, v4);
  v6 = fabsf(v5.f32[1]);
  v7 = fabsf(v5.f32[0]) < a2 && v6 < a2;
  if (v7 || ((v8 = a1[3], v9 = vsub_f32(a3, v8), v10 = fabsf(v9.f32[0]), v11 = fabsf(v9.f32[1]), v10 < a2) ? (v12 = v11 < a2) : (v12 = 0), v12))
  {
    v17 = 1;
  }

  else
  {
    v18 = v5;
    v13 = vsub_f32(v8, v4);
    if (fabsf(_simd_orient_vf2(v5, v13)) > a2 || (v14 = vmul_f32(v18, v13), vaddv_f32(v14) <= 0.0))
    {
      v17 = 0;
    }

    else
    {
      v15 = vsub_f32(v4, v8);
      v16 = vmul_f32(v15, v15);
      v17 = vcgt_f32(vadd_f32(v16, vdup_lane_s32(v16, 1)), vadd_f32(v14, vdup_lane_s32(v14, 1))).u8[0];
    }
  }

  return v17 & 1;
}

uint64_t sub_23A8EDA7C(uint64_t a1, float a2, float32x2_t a3)
{
  v4 = *(a1 + 24);
  v32 = a3;
  if (v4 >> 62)
  {
LABEL_37:
    v27 = sub_23AA0D7F4();
    a3.i32[1] = v32.i32[1];
    v5 = v27;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = 0;
      v8 = a3.f32[1];
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EE90360](v6, v4);
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:

LABEL_35:
            v7 = 1;
            return v7 & 1;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_37;
          }

          v9 = *(v4 + 8 * v6 + 32);

          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_33;
          }
        }

        if ((*(v9 + 32) & 1) == 0)
        {
          v11 = *(v9 + 16);
          v12 = vsub_f32(v32, v11);
          v13 = fabsf(v12.f32[1]);
          if (fabsf(v12.f32[0]) < a2 && v13 < a2)
          {
            goto LABEL_34;
          }

          v15 = *(v9 + 24);
          v16 = vsub_f32(v32, v15);
          v17 = fabsf(v16.f32[0]);
          v18 = fabsf(v16.f32[1]);
          if (v17 < a2 && v18 < a2)
          {
            goto LABEL_34;
          }

          v30 = v12;
          v20 = vsub_f32(v15, v11);
          if (fabsf(_simd_orient_vf2(v12, v20)) <= a2)
          {
            v21 = vmul_f32(v30, v20);
            if (vaddv_f32(v21) > 0.0)
            {
              v22 = vsub_f32(v11, v15);
              v23 = vmul_f32(v22, v22);
              if (vcgt_f32(vadd_f32(v23, vdup_lane_s32(v23, 1)), vadd_f32(v21, vdup_lane_s32(v21, 1))).u8[0])
              {
                goto LABEL_34;
              }
            }
          }
        }

        v29 = *(v9 + 16);
        v31 = *(v9 + 24);

        v24 = vabds_f32(v31.f32[1], v8);
        v25 = vabds_f32(v29.f32[1], v31.f32[1]) > 0.00000011921 || v24 > 0.00000011921;
        if (!v25 && (vmvn_s8(veor_s8(vcge_f32(v31, v32), vcge_f32(v29, v32))).u32[0] & 1) == 0)
        {
          goto LABEL_35;
        }

        if (v8 < v29.f32[1] != v8 >= v31.f32[1])
        {
          goto LABEL_27;
        }

        v26 = v29.f32[0] + (((v8 - v29.f32[1]) * vsub_f32(v31, v29).f32[0]) / (v31.f32[1] - v29.f32[1]));
        if (vabds_f32(v32.f32[0], v26) <= 0.00000011921)
        {
          goto LABEL_35;
        }

        if (v32.f32[0] > v26)
        {
LABEL_27:
          ++v6;
        }

        else
        {
          v7 ^= 1u;
          v6 = v10;
        }

        if (v10 == v5)
        {
          return v7 & 1;
        }
      }
    }
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t sub_23A8EDCD8(uint64_t a1, float a2, simd_float2 a3)
{
  v5 = *(a1 + 24);
  if (v5 >> 62)
  {
LABEL_18:
    v6 = sub_23AA0D7F4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = 2;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EE90360](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_15:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_15;
      }
    }

    v11 = _simd_orient_pf2(v9[2], v9[3], a3);

    if (fabsf(v11) < a2)
    {
      return 0;
    }

    if (v8 == 2)
    {
      v8 = v11 > 0.0;
      v7 = v10;
    }

    else
    {
      ++v7;
      if ((((v11 <= 0.0) ^ v8) & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_23A8EDE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

unint64_t sub_23A8EDE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

char *sub_23A8EDEBC()
{
  v1 = v0[1];
  v35 = 0.5 * v1.f32[0];
  v37 = v0[2];
  v2 = vmuls_lane_f32(0.5, v1, 2);
  v43 = v0[5];
  v44 = vmuls_lane_f32(0.5, *v1.f32, 1);
  v39 = vmuls_lane_f32(0.5 * v1.f32[0], v37, 2);
  v41 = v0[3];
  v3 = v0[4];
  v46 = vmuls_lane_f32(v44, v41, 2);
  v4 = vmul_n_f32(vneg_f32(*v3.f32), v2);
  v5 = -(v3.f32[2] * v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v6 = swift_allocObject();
  v7 = 0;
  v8 = 0;
  *&v9 = vmul_n_f32(*v37.f32, v35);
  *&v10 = vsub_f32(0, *&v9);
  *(&v10 + 2) = 0.0 - v39;
  HIDWORD(v10) = 0;
  *(v6 + 32) = v10;
  v11 = v6 + 32;
  *(&v9 + 1) = LODWORD(v39);
  *(v6 + 48) = v9;
  *&v9 = vmul_n_f32(*v41.f32, v44);
  *&v10 = vsub_f32(0, *&v9);
  *(&v9 + 1) = LODWORD(v46);
  v40 = v9;
  v42 = v10;
  *(&v10 + 2) = 0.0 - v46;
  HIDWORD(v10) = 0;
  v36 = v10;
  v38 = 0.0 - v46;
  v12 = vsub_f32(0, v4);
  v13 = 0.0 - v5;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = v7;
    v47 = *(v11 + 16 * v8);
    v16 = swift_allocObject();
    *(v16 + 32) = v36;
    *(v16 + 48) = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23A9388A8(0, *(v14 + 2) + 1, 1, v14);
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
      v14 = sub_23A9388A8((v17 > 1), v18 + 1, 1, v14);
      v17 = *(v14 + 3);
      v19 = v17 >> 1;
    }

    v48 = vaddq_f32(v43, v47);
    v21 = vadd_f32(*v48.f32, v42);
    *&v22 = vadd_f32(v12, v21);
    *(&v22 + 2) = v13 + (v48.f32[2] + v38);
    HIDWORD(v22) = 0;
    *(v14 + 2) = v20;
    *&v14[16 * v18 + 32] = v22;
    v23 = v18 + 2;
    if (v19 < v23)
    {
      v14 = sub_23A9388A8((v17 > 1), v23, 1, v14);
    }

    *&v24 = vadd_f32(v4, v21);
    *(&v24 + 2) = v5 + (v48.f32[2] + v38);
    HIDWORD(v24) = 0;
    *(v14 + 2) = v23;
    *&v14[16 * v20 + 32] = v24;
    v45 = *(v16 + 48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23A9388A8(0, *(v14 + 2) + 1, 1, v14);
    }

    v26 = *(v14 + 2);
    v25 = *(v14 + 3);
    v27 = v25 >> 1;
    v28 = v26 + 1;
    if (v25 >> 1 <= v26)
    {
      v14 = sub_23A9388A8((v25 > 1), v26 + 1, 1, v14);
      v25 = *(v14 + 3);
      v27 = v25 >> 1;
    }

    v29 = vadd_f32(*v48.f32, *v45.f32);
    v30 = COERCE_FLOAT(vaddq_f32(v48, v45).i32[2]);
    *&v31 = vadd_f32(v12, v29);
    *(&v31 + 2) = v13 + v30;
    HIDWORD(v31) = 0;
    *(v14 + 2) = v28;
    *&v14[16 * v26 + 32] = v31;
    v32 = v26 + 2;
    if (v27 < v32)
    {
      v14 = sub_23A9388A8((v25 > 1), v32, 1, v14);
    }

    *&v33 = vadd_f32(v4, v29);
    *(&v33 + 2) = v5 + v30;
    HIDWORD(v33) = 0;
    *(v14 + 2) = v32;
    *&v14[16 * v28 + 32] = v33;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v7 = 1;
    v8 = 1;
  }

  while ((v15 & 1) == 0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  return v14;
}

BOOL sub_23A8EE240(uint64_t a1, float a2)
{
  v72 = __invert_f4(*(a1 + 32));
  v63 = v72.columns[1];
  v66 = v72.columns[0];
  v60 = v72.columns[3];
  v61 = v72.columns[2];
  v4 = sub_23A8EDEBC();
  v5 = *(v4 + 2);
  if (v5)
  {
    v69 = MEMORY[0x277D84F90];
    v6 = v4;
    sub_23A975DC0(0, v5, 0);
    v8 = v6;
    v9 = v69;
    v10 = *(v69 + 16);
    v11 = 32;
    v13 = v63;
    v12 = v66;
    v15 = v60;
    v14 = v61;
    do
    {
      v16 = *&v8[v11];
      v17 = *(v69 + 24);
      if (v10 >= v17 >> 1)
      {
        v58 = *&v8[v11];
        v59 = v7;
        sub_23A975DC0((v17 > 1), v10 + 1, 1);
        v16 = v58;
        v7 = v59;
        v15 = v60;
        v14 = v61;
        v13 = v63;
        v12 = v66;
        v8 = v6;
      }

      v18 = vaddq_f32(v15, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v16.f32[0]), v13, *v16.f32, 1), v14, v16, 2));
      v18.i32[3] = v7;
      *(v69 + 16) = v10 + 1;
      *(v69 + 16 * v10 + 32) = v18;
      v11 += 16;
      ++v10;
      --v5;
    }

    while (v5);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v19 = *(v9 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v70 = MEMORY[0x277D84F90];
    sub_23A975DF0(0, v19, 0);
    v20 = v70;
    v21 = (v9 + 32);
    v22 = *(v70 + 16);
    v23 = v19;
    do
    {
      v24 = *v21;
      v25 = *(v70 + 24);
      if (v22 >= v25 >> 1)
      {
        v67 = *v21;
        sub_23A975DF0((v25 > 1), v22 + 1, 1);
        LODWORD(v24) = v67;
      }

      *(v70 + 16) = v22 + 1;
      *(v70 + 4 * v22 + 32) = v24;
      ++v21;
      ++v22;
      --v23;
    }

    while (v23);
  }

  v26 = sub_23A8EDE0C(v20);
  if ((v26 & 0x100000000) != 0)
  {
    goto LABEL_30;
  }

  v68 = *&v26;
  v27 = sub_23A8EDE64(v20);

  if ((v27 & 0x100000000) != 0)
  {
LABEL_31:

    return 0;
  }

  v28 = MEMORY[0x277D84F90];
  if (v19)
  {
    v71 = MEMORY[0x277D84F90];
    sub_23A975DF0(0, v19, 0);
    v29 = v71;
    v30 = (v9 + 32);
    v31 = *(v71 + 16);
    v32 = v19;
    do
    {
      v33 = *v30;
      v34 = *(v71 + 24);
      if (v31 >= v34 >> 1)
      {
        v65 = HIDWORD(*v30);
        sub_23A975DF0((v34 > 1), v31 + 1, 1);
        DWORD1(v33) = v65;
      }

      *(v71 + 16) = v31 + 1;
      *(v71 + 4 * v31 + 32) = DWORD1(v33);
      ++v30;
      ++v31;
      --v32;
    }

    while (v32);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v35 = sub_23A8EDE0C(v29);
  if ((v35 & 0x100000000) != 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  v64 = *&v35;
  v36 = sub_23A8EDE64(v29);

  if ((v36 & 0x100000000) != 0)
  {
    goto LABEL_31;
  }

  if (v19)
  {
    sub_23A975DF0(0, v19, 0);
    v37 = v28;
    v38 = *(v28 + 16);
    v39 = 32;
    do
    {
      v40 = *(v9 + v39);
      v41 = *(v37 + 24);
      if (v38 >= v41 >> 1)
      {
        v62 = DWORD2(*(v9 + v39 + 8));
        sub_23A975DF0((v41 > 1), v38 + 1, 1);
        DWORD2(v40) = v62;
      }

      *(v37 + 16) = v38 + 1;
      *(v37 + 4 * v38 + 32) = DWORD2(v40);
      v39 += 16;
      ++v38;
      --v19;
    }

    while (v19);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v43 = sub_23A8EDE0C(v37);
  if ((v43 & 0x100000000) != 0)
  {
    goto LABEL_31;
  }

  v44 = *&v43;
  v45 = sub_23A8EDE64(v37);

  if ((v45 & 0x100000000) != 0)
  {
    return 0;
  }

  v46 = *(a1 + 16);
  v47 = 0.5 * v46.f32[0];
  v48 = vmuls_lane_f32(0.5, *v46.f32, 1);
  v49 = vmuls_lane_f32(0.5, v46, 2);
  v50 = (*&v27 - v68) * a2;
  v51 = v50 > (v47 - v68) || v50 > (*&v27 - (0.0 - v47));
  v52 = (*&v36 - v64) * a2;
  v53 = v51 || v52 > (v48 - v64);
  v54 = v53 || v52 > (*&v36 - (0.0 - v48));
  v55 = (*&v45 - v44) * a2;
  v56 = v54 || v55 > (v49 - v44);
  return !v56 && v55 <= (*&v45 - (0.0 - v49));
}

uint64_t sub_23A8EE690(char a1)
{
  if ((a1 & 8) != 0)
  {
    if ((a1 & 4) == 0)
    {
      result = 240;
      if ((a1 & 2) == 0)
      {
        if (a1)
        {
          goto LABEL_22;
        }

        return result;
      }

      goto LABEL_16;
    }

    result = 255;
    if ((a1 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if ((a1 & 4) == 0)
  {
    result = 0;
    if ((a1 & 2) == 0)
    {
      if ((a1 & 1) == 0)
      {
        return result;
      }

LABEL_20:
      LODWORD(result) = result | 0x40;
LABEL_21:
      if ((result & 4) != 0)
      {
        return result | 0x88;
      }

LABEL_22:
      LODWORD(result) = result | 4;
      return result | 0x88;
    }

LABEL_14:
    LODWORD(result) = result | 0x20;
LABEL_15:
    if ((result & 2) != 0)
    {
LABEL_17:
      result = result | 0x11;
      goto LABEL_18;
    }

LABEL_16:
    LODWORD(result) = result | 2;
    goto LABEL_17;
  }

  result = 15;
  if ((a1 & 2) != 0)
  {
LABEL_13:
    if ((result & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_18:
  if (a1)
  {
    if ((result & 0x40) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23A8EE70C(uint64_t *a1)
{
  v3 = v2;
  v192 = *MEMORY[0x277D85DE8];
  v169 = sub_23AA0BFB4();
  v168 = *(v169 - 8);
  v5 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v7 = v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_23AA0C064();
  v165 = *(v166 - 8);
  v8 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for CapturedRoom.Object(0);
  v176 = *(v175 - 8);
  v10 = *(v176 + 64);
  MEMORY[0x28223BE20](v175);
  v184 = v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177.i64[0] = type metadata accessor for CapturedRoom.Surface(0);
  *&v178 = *(v177.i64[0] - 8);
  v12 = *(v178 + 64);
  MEMORY[0x28223BE20](v177.i64[0]);
  v185 = v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath);
  result = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath + 8);
  v167 = v7;
  v170 = a1;
  if (result)
  {
LABEL_2:
    v162[1] = v3;
    v162[0] = *v14;
    v16 = *a1;
    v174 = *(*a1 + 16);
    v163 = result;
    if (v174)
    {
      v172 = v16 + ((*(v178 + 80) + 32) & ~*(v178 + 80));

      v17 = 0;
      v18 = MEMORY[0x277D84F90];
      v171 = xmmword_23AA11C10;
      v19 = MEMORY[0x277D84F90];
      v173 = v16;
      while (v17 < *(v16 + 16))
      {
        v186 = v18;
        v20 = *(v178 + 72);
        v183 = v17;
        v21 = v185;
        sub_23A8D52B8(v172 + v20 * v17, v185, type metadata accessor for CapturedRoom.Surface);
        v22 = *(v21 + 16);
        v182 = *(v21 + 32);
        v181 = *(v21 + 48);
        v187 = *(v21 + 80);
        v23.i64[1] = v187.i64[1];
        *v23.i8 = vmul_f32(*&v22, COERCE_FLOAT32X2_T(-0.0000305175853));
        v180 = v23;
        v24 = vextq_s8(v181, v181, 8uLL);
        *v24.i8 = vmul_f32(*v23.i8, vzip1_s32(*&vextq_s8(v182, v182, 8uLL), *v24.i8));
        v179 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v25 = swift_allocObject();
        v25[1] = v171;
        v26 = *&v187.i32[2];
        v27 = *v179.i32;
        v28 = vmul_lane_f32(*v181.i8, *v180.i8, 1);
        v29 = vmul_n_f32(*v182.i8, *v180.i32);
        v30 = *v187.i8;
        *&v31 = vadd_f32(v28, vsub_f32(*v187.i8, v29));
        v32 = *&v179.i32[1];
        *(&v31 + 2) = *&v179.i32[1] + (*&v187.i32[2] - *v179.i32);
        HIDWORD(v31) = 0;
        v25[2] = v31;
        v33 = v25 + 2;
        *&v34 = vadd_f32(v28, vadd_f32(v29, v30));
        *(&v34 + 1) = COERCE_UNSIGNED_INT(v32 + (v27 + v26));
        v182.i64[0] = v25;
        v25[3] = v34;
        v35 = v21 + *(v177.i64[0] + 44);
        v36 = sub_23AA0C074();
        v191 = MEMORY[0x277D837D0];
        *&v190 = v36;
        *(&v190 + 1) = v37;
        sub_23A8EF9F0(&v190, &v189);
        v38 = MEMORY[0x277D84F98];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v188 = v38;
        sub_23A9DA840(&v189, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
        v40 = 0;
        v41 = 0;
        v181.i64[0] = v188;
        v42 = v19;
        do
        {
          v43 = v40;
          v187 = v33[v41];
          v44 = sub_23A93964C(0, 1, 1, v19);
          v46 = *(v44 + 2);
          v45 = *(v44 + 3);
          v47 = v45 >> 1;
          v48 = v46 + 1;
          if (v45 >> 1 <= v46)
          {
            v44 = sub_23A93964C((v45 > 1), v46 + 1, 1, v44);
            v45 = *(v44 + 3);
            v47 = v45 >> 1;
          }

          *(v44 + 2) = v48;
          v49 = v187;
          *&v44[4 * v46 + 32] = v187.i32[0];
          v50 = v46 + 2;
          if (v47 < (v46 + 2))
          {
            v54 = sub_23A93964C((v45 > 1), v46 + 2, 1, v44);
            v49 = v187;
            v44 = v54;
          }

          *(v44 + 2) = v50;
          *&v44[4 * v48 + 32] = v49.i32[2];
          v51 = *(v44 + 3);
          if ((v46 + 3) > (v51 >> 1))
          {
            v55 = sub_23A93964C((v51 > 1), v46 + 3, 1, v44);
            v49.i32[1] = v187.i32[1];
            v44 = v55;
          }

          *(v44 + 2) = v46 + 3;
          *&v44[4 * v50 + 32] = v49.i32[1];
          v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
          *&v190 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_23A939750(0, *(v42 + 2) + 1, 1, v42);
          }

          v53 = *(v42 + 2);
          v52 = *(v42 + 3);
          if (v53 >= v52 >> 1)
          {
            v42 = sub_23A939750((v52 > 1), v53 + 1, 1, v42);
          }

          *(v42 + 2) = v53 + 1;
          sub_23A8EF9F0(&v190, &v42[32 * v53 + 32]);
          v40 = 1;
          v41 = 1;
        }

        while ((v43 & 1) == 0);

        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED28, &qword_23AA121E8);
        *&v190 = v42;
        sub_23A8EF9F0(&v190, &v189);
        v56 = v181.i64[0];
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v188 = v56;
        sub_23A9DA840(&v189, 0x73746E696F70, 0xE600000000000000, v57);
        v58 = v188;
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED30, &unk_23AA121F0);
        *&v190 = v58;
        v18 = v186;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_23A939750(0, *(v18 + 2) + 1, 1, v18);
        }

        v59 = v183;
        v61 = *(v18 + 2);
        v60 = *(v18 + 3);
        if (v61 >= v60 >> 1)
        {
          v18 = sub_23A939750((v60 > 1), v61 + 1, 1, v18);
        }

        v17 = v59 + 1;
        sub_23A8D5320(v185, type metadata accessor for CapturedRoom.Surface);
        *(v18 + 2) = v61 + 1;
        sub_23A8EF9F0(&v190, &v18[32 * v61 + 32]);
        v16 = v173;
        if (v17 == v174)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
    }

    v18 = MEMORY[0x277D84F90];
LABEL_32:
    v186 = v18;
    v85 = v170[5];
    v174 = *(v85 + 16);
    if (v174)
    {
      v86 = 0;
      v172 = v85 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
      v87 = MEMORY[0x277D84F90];
      v171 = xmmword_23AA11C20;
      v88 = MEMORY[0x277D84F90];
      v173 = v85;
      while (v86 < *(v85 + 16))
      {
        v185 = v87;
        v89 = *(v176 + 72);
        v183 = v86;
        v90 = v184;
        sub_23A8D52B8(v172 + v89 * v86, v184, type metadata accessor for CapturedRoom.Object);
        v91 = *(v90 + 16);
        v187 = *(v90 + 32);
        v92 = *(v90 + 64);
        v182 = *(v90 + 48);
        v179 = v92;
        v181 = *(v90 + 80);
        *&v93 = vmul_f32(*v91.f32, COERCE_FLOAT32X2_T(-0.0000305175853));
        v178 = v93;
        v94 = vextq_s8(v182, v182, 8uLL);
        *v94.i8 = vmul_f32(*&v93, vzip1_s32(*&vextq_s8(v187, v187, 8uLL), *v94.i8));
        v177 = v94;
        *v94.i32 = vmuls_lane_f32(0.5, v91, 2);
        v180 = v94;
        v95 = -(*&v92.i32[2] * *v94.i32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v96 = swift_allocObject();
        v97 = *&v181.i32[2];
        v98 = *&v177.i32[1];
        v99 = *v177.i32;
        v100 = *&v177.i32[1] + (*&v181.i32[2] - *v177.i32);
        v101 = vmul_lane_f32(*v182.i8, *&v178, 1);
        v102 = vmul_n_f32(*v187.i8, *&v178);
        v103 = vmul_n_f32(vneg_f32(*v179.i8), *v180.i32);
        v104 = *v181.i8;
        v105 = vadd_f32(v101, vsub_f32(*v181.i8, v102));
        *&v106 = vsub_f32(v105, v103);
        *(&v106 + 2) = v100 - v95;
        HIDWORD(v106) = 0;
        v96[1] = v171;
        v96[2] = v106;
        *&v107 = vadd_f32(v103, v105);
        *(&v107 + 2) = v95 + v100;
        HIDWORD(v107) = 0;
        v108 = v98 + (v99 + v97);
        v109 = vadd_f32(v101, vadd_f32(v102, v104));
        *&v110 = vadd_f32(v103, v109);
        *(&v110 + 2) = v95 + v108;
        HIDWORD(v110) = 0;
        v96[3] = v107;
        v96[4] = v110;
        *&v111 = vsub_f32(v109, v103);
        *(&v111 + 1) = COERCE_UNSIGNED_INT(v108 - v95);
        v96[5] = v111;
        v112 = v90 + *(v175 + 32);
        v113 = sub_23AA0C074();
        v191 = MEMORY[0x277D837D0];
        *&v190 = v113;
        *(&v190 + 1) = v114;
        sub_23A8EF9F0(&v190, &v189);
        v115 = MEMORY[0x277D84F98];
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v188 = v115;
        sub_23A9DA840(&v189, 0x696669746E656469, 0xEA00000000007265, v116);
        v182.i64[0] = v188;
        v117 = 2;
        v118 = v88;
        do
        {
          v187 = v96[v117];
          v119 = sub_23A93964C(0, 1, 1, v88);
          v121 = *(v119 + 2);
          v120 = *(v119 + 3);
          v122 = v120 >> 1;
          v123 = v121 + 1;
          if (v120 >> 1 <= v121)
          {
            v119 = sub_23A93964C((v120 > 1), v121 + 1, 1, v119);
            v120 = *(v119 + 3);
            v122 = v120 >> 1;
          }

          *(v119 + 2) = v123;
          v124 = v187;
          *&v119[4 * v121 + 32] = v187.i32[0];
          v125 = v121 + 2;
          if (v122 < (v121 + 2))
          {
            v129 = sub_23A93964C((v120 > 1), v121 + 2, 1, v119);
            v124 = v187;
            v119 = v129;
          }

          *(v119 + 2) = v125;
          *&v119[4 * v123 + 32] = v124.i32[2];
          v126 = *(v119 + 3);
          if ((v121 + 3) > (v126 >> 1))
          {
            v130 = sub_23A93964C((v126 > 1), v121 + 3, 1, v119);
            v124.i32[1] = v187.i32[1];
            v119 = v130;
          }

          *(v119 + 2) = v121 + 3;
          *&v119[4 * v125 + 32] = v124.i32[1];
          v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
          *&v190 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_23A939750(0, *(v118 + 2) + 1, 1, v118);
          }

          v128 = *(v118 + 2);
          v127 = *(v118 + 3);
          if (v128 >= v127 >> 1)
          {
            v118 = sub_23A939750((v127 > 1), v128 + 1, 1, v118);
          }

          *(v118 + 2) = v128 + 1;
          sub_23A8EF9F0(&v190, &v118[32 * v128 + 32]);
          ++v117;
        }

        while (v117 != 6);

        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED28, &qword_23AA121E8);
        *&v190 = v118;
        sub_23A8EF9F0(&v190, &v189);
        v131 = v182.i64[0];
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v188 = v131;
        sub_23A9DA840(&v189, 0x73746E696F70, 0xE600000000000000, v132);
        v133 = v188;
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED30, &unk_23AA121F0);
        *&v190 = v133;
        v87 = v185;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_23A939750(0, *(v87 + 2) + 1, 1, v87);
        }

        v85 = v173;
        v135 = *(v87 + 2);
        v134 = *(v87 + 3);
        v136 = v183;
        if (v135 >= v134 >> 1)
        {
          v87 = sub_23A939750((v134 > 1), v135 + 1, 1, v87);
        }

        v86 = v136 + 1;
        sub_23A8D5320(v184, type metadata accessor for CapturedRoom.Object);
        *(v87 + 2) = v135 + 1;
        sub_23A8EF9F0(&v190, &v87[32 * v135 + 32]);
        if (v86 == v174)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_61;
    }

    v87 = MEMORY[0x277D84F90];
LABEL_54:
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED28, &qword_23AA121E8);
    v191 = v137;
    *&v190 = v186;
    sub_23A8EF9F0(&v190, &v189);
    v138 = MEMORY[0x277D84F98];
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v188 = v138;
    sub_23A9DA840(&v189, 0x736C6C6177, 0xE500000000000000, v139);
    v140 = v188;
    v191 = v137;
    *&v190 = v87;
    sub_23A8EF9F0(&v190, &v189);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v188 = v140;
    sub_23A9DA840(&v189, 0x737463656A626FLL, 0xE700000000000000, v141);
    v142 = objc_opt_self();
    v143 = sub_23AA0D024();

    *&v190 = 0;
    v144 = [v142 dataWithPropertyList:v143 format:100 options:0 error:&v190];

    v145 = v190;
    if (v144)
    {
      v146 = sub_23AA0BFE4();
      v148 = v147;

      v149 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v150 = sub_23AA0D104();
      [v149 setDateFormat_];

      v151 = v164;
      sub_23AA0C054();
      v152 = sub_23AA0C034();
      (*(v165 + 8))(v151, v166);
      v153 = [v149 stringFromDate_];

      v154 = sub_23AA0D134();
      v156 = v155;

      *&v190 = v154;
      *(&v190 + 1) = v156;

      MEMORY[0x23EE8FCA0](0x2E73746E696F705FLL, 0xED00007473696C70);

      v157 = v190;
      *&v190 = v162[0];
      *(&v190 + 1) = v163;

      MEMORY[0x23EE8FCA0](v157, *(&v157 + 1));

      v158 = v167;
      sub_23AA0BEE4();

      sub_23AA0BFF4();
      (*(v168 + 8))(v158, v169);

      result = sub_23A8EFA00(v146, v148);
      goto LABEL_59;
    }

    v159 = v145;

    sub_23AA0BE74();

LABEL_58:
    result = swift_willThrow();
    goto LABEL_59;
  }

  v62 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  result = swift_beginAccess();
  v63 = *(v1 + v62);
  if (v63)
  {
    v64 = v63 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_59:
      v161 = *MEMORY[0x277D85DE8];
      return result;
    }

    v65 = *(v64 + 8);
    ObjectType = swift_getObjectType();
    v67 = (*(v65 + 8))(ObjectType, v65);
    v69 = v68;
    swift_unknownObjectRelease();
    *&v190 = v67;
    *(&v190 + 1) = v69;

    MEMORY[0x23EE8FCA0](0x6574656D69726550, 0xEE002F6174614472);

    v70 = v190;
    v71 = objc_opt_self();
    v72 = [v71 defaultManager];
    v73 = sub_23AA0D104();
    v74 = [v72 fileExistsAtPath_];

    if (v74)
    {
      v75 = [v71 defaultManager];
      v76 = sub_23AA0D104();
      *&v190 = 0;
      v77 = [v75 removeItemAtPath:v76 error:&v190];

      v78 = v190;
      if (!v77)
      {
        goto LABEL_57;
      }

      v79 = v190;
    }

    v80 = [v71 defaultManager];
    v81 = sub_23AA0D104();
    *&v190 = 0;
    v82 = [v80 createDirectoryAtPath:v81 withIntermediateDirectories:1 attributes:0 error:&v190];

    v78 = v190;
    if (v82)
    {
      v83 = v14[1];
      *v14 = v70;
      v84 = v78;

      result = v14[1];
      v3 = v2;
      a1 = v170;
      if (!result)
      {
        goto LABEL_59;
      }

      goto LABEL_2;
    }

LABEL_57:
    v160 = v78;

    sub_23AA0BE74();

    goto LABEL_58;
  }

  __break(1u);
  return result;
}

_OWORD *sub_23A8EF9F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23A8EFA00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static RoomCaptureGeometryManager.shared.getter()
{
  type metadata accessor for RoomCaptureGeometryManager();

  return swift_initStaticObject();
}

void *sub_23A8EFAA8(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  type metadata accessor for CDTTriangulator();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v68 = inited;
  *(inited + 16) = 0;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = a4;
    v80 = MEMORY[0x277D84F90];
    sub_23A975EA4(0, v10, 0);
    v13 = v80;
    v14 = (a1 + 32);
    v15 = *(v80 + 2);
    do
    {
      v16 = *v14;
      v80 = v13;
      v17 = *(v13 + 3);
      if (v15 >= v17 >> 1)
      {
        v74 = v16;
        sub_23A975EA4((v17 > 1), v15 + 1, 1);
        *&v16 = v74;
        v13 = v80;
      }

      *(v13 + 2) = v15 + 1;
      *&v13[8 * v15 + 32] = v16;
      ++v14;
      ++v15;
      --v10;
    }

    while (v10);
    a4 = v12;
  }

  v18 = *a5;

  *a5 = v11;
  if (a2 >> 62)
  {
    goto LABEL_72;
  }

  v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
LABEL_19:
    if (*(v69 + 16) == 1)
    {

      v26 = sub_23A8ED31C(v25);
      type metadata accessor for CDTPolygon();
      swift_initStackObject();
      v27 = sub_23A99A810(v26);
      if (a3)
      {
        v28 = a3;
      }

      else
      {
        swift_allocObject();
        v28 = sub_23A99A810(MEMORY[0x277D84F90]);
      }

      v30 = *a4;

      sub_23A992E6C(v27, v28, MEMORY[0x277D84F90]);
    }

    else
    {
      v29 = *a4;
    }

    v32 = sub_23A8ED31C(v31);
    type metadata accessor for CDTPolygon();
    swift_allocObject();
    a2 = sub_23A99A810(v32);
    *a4 = a2;
    sub_23A99AC40();
    if (v33)
    {

      swift_allocObject();

      a2 = sub_23A99A810(v34);
      *a4 = a2;
    }

    v35 = a3;
    if (a3)
    {

      sub_23A99AC40();
      if (v36)
      {
        v37 = a3[2];

        v39 = sub_23A8ED31C(v38);
        swift_allocObject();
        v40 = sub_23A99A810(v39);

        v35 = v40;
      }

      v41 = sub_23A98EAC0(a2, v35);

      *a4 = v41;
      a2 = v41;
    }

    v42 = sub_23A98EBE4(v21);

    *a5 = v42;
    if (v42 >> 62)
    {
      v43 = sub_23AA0D7F4();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v43)
    {
      v44 = 0;
      v76 = v42 & 0xC000000000000001;
      v73 = v42 & 0xFFFFFFFFFFFFFF8;
      a3 = a5;
      v71 = v42 + 32;
      v67 = v42;
      v45 = v42;
      v69 = v43;
      while (1)
      {
        if (v76)
        {
          v46 = MEMORY[0x23EE90360](v44, v67);
        }

        else
        {
          if (v44 >= *(v73 + 16))
          {
            goto LABEL_70;
          }

          v46 = *(v71 + 8 * v44);
        }

        if (sub_23A99AA3C())
        {
          v47 = 0;
          v48 = *(v46 + 16);
          a4 = *(v48 + 16);
          while (1)
          {
            if (a4 == v47)
            {

              v52 = v46;
              goto LABEL_50;
            }

            if (v47 >= *(v48 + 16))
            {
              break;
            }

            a5 = (v47 + 1);
            v49 = sub_23A8EDCD8(a2, 0.001, *(v48 + 32 + 8 * v47));
            v47 = a5;
            if (v49)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          result = sub_23AA0D7F4();
          v20 = result;
          goto LABEL_9;
        }

LABEL_43:
        if (sub_23A99AA3C() & 1) != 0 && (sub_23A99AA3C())
        {
          v51 = sub_23A993944(v46, a2, 0, v50);
          if (v51)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v51 = sub_23A9908E8(v46, a2, 0, 1, 0.0001);
          if (v51)
          {
LABEL_48:
            v52 = v51;
            goto LABEL_50;
          }
        }

        swift_allocObject();
        v52 = sub_23A99A810(MEMORY[0x277D84F90]);
LABEL_50:
        a5 = a3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v45 & 0x8000000000000000) != 0 || (v45 & 0x4000000000000000) != 0)
        {
          v45 = sub_23A97E578(v45);
        }

        if (v44 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v53 = *((v45 & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 0x20);
        *((v45 & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 0x20) = v52;

        *a3 = v45;
        if (++v44 == v69)
        {
          goto LABEL_59;
        }
      }
    }

    v45 = v42;
LABEL_59:

    v54 = sub_23A98EE34(a2, v45, 0, 0, 1);
    v55 = MEMORY[0x277D84F90];
    v80 = MEMORY[0x277D84F90];
    v78 = MEMORY[0x277D84F90];
    v79 = MEMORY[0x277D84F90];
    sub_23A995AEC(v54, &v80, &v79);

    v56 = v80;
    v57 = *(v80 + 2);
    if (v57)
    {
      sub_23A975DC0(0, v57, 0);
      v59 = v55;
      v60 = *(v55 + 16);
      v61 = 32;
      do
      {
        *&v58 = *&v56[v61];
        v62 = *(v55 + 24);
        if (v60 >= v62 >> 1)
        {
          v77 = v58;
          sub_23A975DC0((v62 > 1), v60 + 1, 1);
          v58 = v77;
        }

        *(v55 + 16) = v60 + 1;
        *(v55 + 16 * v60 + 32) = v58;
        v61 += 8;
        ++v60;
        --v57;
      }

      while (v57);

      v63 = *(v55 + 16);
      if (v63)
      {
        goto LABEL_65;
      }
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
      v63 = *(MEMORY[0x277D84F90] + 16);
      if (v63)
      {
LABEL_65:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
        v64 = sub_23AA0D324();
        *(v64 + 16) = v63;
        memset_pattern16((v64 + 32), &xmmword_23AA12250, 16 * v63);
LABEL_68:
        sub_23A9119A0(v64);
        swift_setDeallocating();
        v65 = *(v68 + 24);

        v66 = v79;
        type metadata accessor for RoomCaptureMesh();
        result = swift_allocObject();
        result[2] = v59;
        result[3] = v78;
        result[4] = v66;
        return result;
      }
    }

    v64 = MEMORY[0x277D84F90];
    goto LABEL_68;
  }

  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23EE90360](i, a2);
      }

      else
      {
        v23 = *(a2 + 8 * i + 32);
      }

      v75 = *(v23 + 16);
      v72 = *(v23 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_23AA11C20;
      *(v24 + 32) = v75;
      *(v24 + 40) = __PAIR64__(HIDWORD(v75), v72);
      *(v24 + 48) = v72;
      *(v24 + 56) = __PAIR64__(HIDWORD(v72), v75);
      type metadata accessor for CDTPolygon();
      swift_allocObject();
      sub_23A99A810(v24);
      MEMORY[0x23EE8FD70]();
      if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();
    }

    v21 = *a5;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_23A8F0290(uint64_t a1, unint64_t a2, unint64_t *a3, __int32 a4, uint64_t a5, uint64_t a6, __n128 a7, float32_t a8, float32_t a9, float a10)
{
  v11.f32[0] = a9;
  v292 = a6;
  v293 = a5;
  v318.i32[0] = a4;
  v302 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v310 = &v292 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v306 = &v292 - v20;
  v295 = type metadata accessor for ScanItemStrut();
  v297 = *(v295 - 8);
  v21 = *(v297 + 64);
  v22 = MEMORY[0x28223BE20](v295);
  v309 = (&v292 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v294 = (&v292 - v24);
  v324 = MEMORY[0x277D84F90];
  v325 = MEMORY[0x277D84F90];
  v322 = 0;
  v323 = MEMORY[0x277D84F90];
  v321 = MEMORY[0x277D84F90];
  v300 = sub_23A8F5768(a1, a10);
  if (a3)
  {
    type metadata accessor for CDTPolygon();
    swift_allocObject();

    a3 = sub_23A99A810(v25);
  }

  v26 = sub_23A8EFAA8(v300, a2, a3, &v322, &v321);

  v303 = v26;
  v27 = v26[2];
  v28 = v27[1].i64[0];
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v320 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v28, 0);
    *v30.i32 = a8 * 0.0;
    v29 = v320;
    v31 = v27 + 2;
    v32.f32[0] = a8 + 0.0;
    v33 = *(v320 + 16);
    v34 = vdupq_lane_s32(v30, 0);
    do
    {
      v35 = *v31;
      v320 = v29;
      v36 = *(v29 + 24);
      if (v33 >= v36 >> 1)
      {
        v319 = v32;
        v316 = v35;
        v317 = v34;
        sub_23A975DC0((v36 > 1), v33 + 1, 1);
        v35 = v316;
        v34 = v317;
        v32 = v319;
        v29 = v320;
      }

      *&v37 = vaddq_f32(v34, v35).u64[0];
      *(&v37 + 1) = v32.u32[0];
      *(v29 + 16) = v33 + 1;
      *(v29 + 16 * v33 + 32) = v37;
      ++v31;
      ++v33;
      --v28;
    }

    while (v28);
  }

  sub_23A9119A0(v29);
  v38 = v303;
  v39 = v303[3];

  sub_23A9119A0(v40);
  v41 = v38[4];

  sub_23A911A8C(v42);
  v44 = v38[4];
  v45 = *(v44 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v320 = MEMORY[0x277D84F90];

    v47 = &v320;
    sub_23A975E54(0, v45, 0);
    v46 = v320;
    v48 = 32;
    v49 = v325;
    do
    {
      v50 = *(v49 + 16);
      if (HIDWORD(v50))
      {
        goto LABEL_234;
      }

      v51 = *(v44 + v48);
      v52 = v51 + v50;
      if (__CFADD__(v51, v50))
      {
        goto LABEL_235;
      }

      v320 = v46;
      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        v47 = &v320;
        sub_23A975E54((v53 > 1), v54 + 1, 1);
        v46 = v320;
      }

      *(v46 + 16) = v54 + 1;
      *(v46 + 4 * v54 + 32) = v52;
      v48 += 4;
      --v45;
    }

    while (v45);
  }

  sub_23A912078(v46, v43);
  v55 = v303[2];
  v56 = v55[1].i64[0];
  v57 = MEMORY[0x277D84F90];
  if (v56)
  {
    v320 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v56, 0);
    *v58.i32 = v11.f32[0] * 0.0;
    v57 = v320;
    v59 = v55 + 2;
    v60.f32[0] = 0.0 - v11.f32[0];
    v61 = *(v320 + 16);
    v62 = vdupq_lane_s32(v58, 0);
    do
    {
      v63 = *v59;
      v320 = v57;
      v64 = *(v57 + 24);
      if (v61 >= v64 >> 1)
      {
        v319 = v60;
        v316 = v63;
        v317 = v62;
        sub_23A975DC0((v64 > 1), v61 + 1, 1);
        v63 = v316;
        v62 = v317;
        v60 = v319;
        v57 = v320;
      }

      *&v65 = vaddq_f32(v62, v63).u64[0];
      *(&v65 + 1) = v60.u32[0];
      *(v57 + 16) = v61 + 1;
      *(v57 + 16 * v61 + 32) = v65;
      ++v59;
      ++v61;
      --v56;
    }

    while (v56);
  }

  sub_23A9119A0(v57);
  v66 = *(v303[2] + 16);
  v46 = MEMORY[0x277D84F90];
  v48 = v309;
  if (v66)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v67 = sub_23AA0D324();
    *(v67 + 16) = v66;
    memset_pattern16((v67 + 32), &xmmword_23AA12240, 16 * v66);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  result = sub_23A9119A0(v67);
  if (v322)
  {
    v296 = v322;
    v45 = *(v322 + 24);
    v47 = v310;
    if (v45 >> 62)
    {
      goto LABEL_245;
    }

    v73 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_27;
    }

LABEL_65:
    while (2)
    {
      if (v318.i8[0])
      {
        v119 = sub_23A8F5E40(a2, v302.n128_f64[0], a8, v11.f32[0]);
        v48 = sub_23A982850(v119);

        v120 = *(v48 + 32);
        v45 = *(v120 + 16);
        v46 = MEMORY[0x277D84F90];
        if (v45)
        {
          v320 = MEMORY[0x277D84F90];

          v47 = &v320;
          sub_23A975E54(0, v45, 0);
          v46 = v320;
          v121 = 32;
          v122 = v325;
          while (1)
          {
            v123 = *(v122 + 16);
            if (HIDWORD(v123))
            {
              goto LABEL_236;
            }

            v124 = *(v120 + v121);
            v125 = v124 + v123;
            if (__CFADD__(v124, v123))
            {
              goto LABEL_237;
            }

            v320 = v46;
            a2 = *(v46 + 16);
            v126 = *(v46 + 24);
            if (a2 >= v126 >> 1)
            {
              v47 = &v320;
              sub_23A975E54((v126 > 1), a2 + 1, 1);
              v46 = v320;
            }

            *(v46 + 16) = a2 + 1;
            *(v46 + 4 * a2 + 32) = v125;
            v121 += 4;
            if (!--v45)
            {

              break;
            }
          }
        }

        sub_23A911A8C(v46);
        v127 = *(v48 + 16);

        sub_23A9119A0(v128);
        v129 = *(v48 + 24);

        sub_23A9119A0(v130);

        v48 = v309;
        v47 = v310;
        v46 = MEMORY[0x277D84F90];
      }

      v304 = v321;
      if (v321 >> 62)
      {
        v45 = sub_23AA0D7F4();
      }

      else
      {
        v45 = *((v321 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v131 = v306;
      if (v45)
      {
        v132 = 0;
        v305 = v304 & 0xC000000000000001;
        v299 = v304 & 0xFFFFFFFFFFFFFF8;
        v298 = v304 + 32;
        v133.i32[1] = v302.n128_i32[1];
        v134 = vmuls_lane_f32(-0.5, v302.n128_u64[0], 1);
        DWORD1(v69) = 0;
        *v133.i32 = a8 * 0.0;
        *&v71 = a8 + 0.0;
        *&v70 = v11.f32[0] * 0.0;
        *&v69 = 0.0 - v11.f32[0];
        *&v72 = *&v71 - *&v71;
        v313 = v72;
        v11 = vdup_lane_s32(*&v70, 0);
        v135 = vdup_lane_s32(v133, 0);
        v315 = v71;
        v314 = v69;
        *&v69 = *&v69 - (a8 + 0.0);
        v312 = v69;
        v311 = xmmword_23AA11C20;
        v301 = v45;
        do
        {
          if (v305)
          {
            v136 = MEMORY[0x23EE90360](v132, v304);
            v137 = __OFADD__(v132++, 1);
            if (v137)
            {
              goto LABEL_238;
            }
          }

          else
          {
            if (v132 >= *(v299 + 16))
            {
              goto LABEL_244;
            }

            v138 = *(v298 + 8 * v132);

            v137 = __OFADD__(v132++, 1);
            if (v137)
            {
              goto LABEL_238;
            }
          }

          *&v308 = v136;
          v139 = *(v136 + 24);
          if (v139 >> 62)
          {
            if (v139 < 0)
            {
              v180 = *(v136 + 24);
            }

            v47 = sub_23AA0D7F4();
            if (v47)
            {
LABEL_89:
              if (v47 >= 1)
              {
                *&v307 = v132;
                v317.i64[0] = v139 & 0xC000000000000001;

                v140 = 0;
                v316.i64[0] = v139;
                while (1)
                {
                  if (v317.i64[0])
                  {
                    v141 = MEMORY[0x23EE90360](v140, v139);
                  }

                  else
                  {
                    v141 = *(v139 + 8 * v140 + 32);
                  }

                  if (vabds_f32(COERCE_FLOAT(HIDWORD(*(v141 + 16))), v134) >= 0.0001 || vabds_f32(*(v141 + 28), v134) >= 0.0001)
                  {
                    v142.i64[0] = *(v141 + 16);
                    v319 = v142;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
                    v143 = swift_allocObject();
                    v144 = v319;
                    v145 = vadd_f32(v135, *v319.f32);
                    *&v146 = v145;
                    *(&v146 + 1) = v315;
                    v143[1] = v311;
                    v143[2] = v146;
                    *&v146 = *(v141 + 24);
                    *&v147 = vadd_f32(v11, *&v146);
                    *(&v147 + 1) = v314;
                    *&v148 = vadd_f32(v11, *v144.f32);
                    *(&v148 + 1) = v314;
                    *v144.f32 = vsub_f32(*&v148, v145);
                    *&v146 = vadd_f32(v135, *&v146);
                    *v149.f32 = vsub_f32(*&v146, v145);
                    v143[4] = v147;
                    v143[5] = v148;
                    v149.i32[2] = v313;
                    v143[3] = v146;
                    v144.i32[2] = v312;
                    v150 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v144, v144), v144, 0xCuLL), vnegq_f32(v149)), v144, vextq_s8(vuzp1q_s32(v149, v149), v149, 0xCuLL));
                    v151 = vextq_s8(vuzp1q_s32(v150, v150), v150, 0xCuLL);
                    v152 = vmulq_f32(v150, v150);
                    *&v147 = v152.f32[1] + (v152.f32[2] + v152.f32[0]);
                    *v152.f32 = vrsqrte_f32(v147);
                    *v152.f32 = vmul_f32(*v152.f32, vrsqrts_f32(v147, vmul_f32(*v152.f32, *v152.f32)));
                    v153 = vmulq_n_f32(v151, vmul_f32(*v152.f32, vrsqrts_f32(v147, vmul_f32(*v152.f32, *v152.f32))).f32[0]);
                    v153.i32[3] = v318.i32[3];
                    v319 = v153;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
                    v154 = sub_23AA0D324();
                    *(v154 + 16) = 4;
                    v155 = v319;
                    *(v154 + 32) = v319;
                    *(v154 + 48) = v155;
                    *(v154 + 64) = v155;
                    *(v154 + 80) = v155;
                    v320 = v46;
                    sub_23A975E54(0, 6, 0);
                    v156 = v325;
                    v157 = *(v325 + 16);
                    if (HIDWORD(v157))
                    {
                      goto LABEL_145;
                    }

                    a2 = (dword_284D7FD00 + v157);
                    if (__CFADD__(dword_284D7FD00, v157))
                    {
                      goto LABEL_146;
                    }

                    v158 = v320;
                    v160 = *(v320 + 16);
                    v159 = *(v320 + 24);
                    v161 = v160 + 1;
                    if (v160 >= v159 >> 1)
                    {
                      sub_23A975E54((v159 > 1), v160 + 1, 1);
                      v158 = v320;
                    }

                    *(v158 + 16) = v161;
                    *(v158 + 4 * v160 + 32) = a2;
                    v162 = *(v156 + 16);
                    if (HIDWORD(v162))
                    {
                      goto LABEL_145;
                    }

                    a2 = (dword_284D7FD04 + v162);
                    if (__CFADD__(dword_284D7FD04, v162))
                    {
                      goto LABEL_146;
                    }

                    v320 = v158;
                    v163 = *(v158 + 24);
                    v164 = v160 + 2;
                    if (v161 >= v163 >> 1)
                    {
                      sub_23A975E54((v163 > 1), v164, 1);
                      v158 = v320;
                    }

                    *(v158 + 16) = v164;
                    *(v158 + 4 * v161 + 32) = a2;
                    v165 = *(v156 + 16);
                    if (HIDWORD(v165))
                    {
                      goto LABEL_145;
                    }

                    a2 = (dword_284D7FD08 + v165);
                    if (__CFADD__(dword_284D7FD08, v165))
                    {
                      goto LABEL_146;
                    }

                    v320 = v158;
                    v167 = *(v158 + 16);
                    v166 = *(v158 + 24);
                    v168 = v167 + 1;
                    if (v167 >= v166 >> 1)
                    {
                      sub_23A975E54((v166 > 1), v167 + 1, 1);
                      v158 = v320;
                    }

                    *(v158 + 16) = v168;
                    *(v158 + 4 * v167 + 32) = a2;
                    v169 = *(v156 + 16);
                    if (HIDWORD(v169))
                    {
                      goto LABEL_145;
                    }

                    a2 = (dword_284D7FD0C + v169);
                    if (__CFADD__(dword_284D7FD0C, v169))
                    {
                      goto LABEL_146;
                    }

                    v320 = v158;
                    v170 = *(v158 + 24);
                    v171 = v167 + 2;
                    if (v168 >= v170 >> 1)
                    {
                      sub_23A975E54((v170 > 1), v171, 1);
                      v158 = v320;
                    }

                    *(v158 + 16) = v171;
                    *(v158 + 4 * v168 + 32) = a2;
                    v172 = *(v156 + 16);
                    if (HIDWORD(v172))
                    {
                      goto LABEL_145;
                    }

                    a2 = (dword_284D7FD10 + v172);
                    if (__CFADD__(dword_284D7FD10, v172))
                    {
                      goto LABEL_146;
                    }

                    v320 = v158;
                    v174 = *(v158 + 16);
                    v173 = *(v158 + 24);
                    v175 = v174 + 1;
                    if (v174 >= v173 >> 1)
                    {
                      sub_23A975E54((v173 > 1), v174 + 1, 1);
                      v158 = v320;
                    }

                    *(v158 + 16) = v175;
                    *(v158 + 4 * v174 + 32) = a2;
                    v176 = *(v156 + 16);
                    if (HIDWORD(v176))
                    {
LABEL_145:
                      __break(1u);
LABEL_146:
                      __break(1u);
LABEL_147:

                      goto LABEL_149;
                    }

                    v177 = dword_284D7FD14 + v176;
                    if (__CFADD__(dword_284D7FD14, v176))
                    {
                      goto LABEL_146;
                    }

                    v320 = v158;
                    v178 = *(v158 + 24);
                    v179 = v174 + 2;
                    if (v175 >= v178 >> 1)
                    {
                      sub_23A975E54((v178 > 1), v179, 1);
                      v158 = v320;
                    }

                    *(v158 + 16) = v179;
                    *(v158 + 4 * v175 + 32) = v177;
                    sub_23A911A8C(v158);
                    sub_23A9119A0(v143);
                    sub_23A9119A0(v154);
                    v318 = v319;
                    v46 = MEMORY[0x277D84F90];
                    v139 = v316.i64[0];
                  }

                  ++v140;

                  if (v47 == v140)
                  {

                    v48 = v309;
                    v45 = v301;
                    v132 = v307;
                    goto LABEL_80;
                  }
                }
              }

              goto LABEL_239;
            }
          }

          else
          {
            v47 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v47)
            {
              goto LABEL_89;
            }
          }

LABEL_80:
          v47 = v310;
          v131 = v306;
        }

        while (v132 != v45);
      }

      sub_23A8D6CA0(v293, v131);
      v181 = *(v297 + 48);
      v297 += 48;
      if (v181(v131, 1, v295) == 1)
      {
        sub_23A8D6D10(v131);
      }

      else
      {
        v318.i64[0] = v181;
        sub_23A8D6D78(v131, v294);
        v182 = *(v296 + 16);
        v183 = *(v182 + 16);
        v184 = MEMORY[0x277D84F90];
        if (v183)
        {
          v320 = MEMORY[0x277D84F90];
          sub_23A975DF0(0, v183, 0);
          v184 = v320;
          v186 = (v182 + 32);
          v187 = *(v320 + 16);
          do
          {
            v185.i64[0] = *v186;
            v320 = v184;
            v188 = *(v184 + 24);
            if (v187 >= v188 >> 1)
            {
              v319 = v185;
              sub_23A975DF0((v188 > 1), v187 + 1, 1);
              v185 = v319;
              v184 = v320;
            }

            *(v184 + 16) = v187 + 1;
            *(v184 + 4 * v187 + 32) = v185.i32[0];
            ++v186;
            ++v187;
            --v183;
          }

          while (v183);
        }

        v189 = sub_23A8EDE0C(v184);

        if ((v189 & 0x100000000) != 0)
        {
          v134 = -0.5 * v302.n128_f32[0];
        }

        else
        {
          v134 = *&v189;
        }

        v190 = *(v296 + 16);
        v191 = *(v190 + 16);
        if (v191)
        {
          v192 = *(v296 + 16);

          v140 = MEMORY[0x277D84F90];
          v194 = 32;
          do
          {
            v193.i64[0] = *(v190 + v194);
            if (vabds_f32(v193.f32[0], v134) < 0.0001)
            {
              v319 = v193;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v320 = v140;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_23A975EA4(0, *(v140 + 16) + 1, 1);
                v140 = v320;
              }

              v196 = *(v140 + 16);
              v195 = *(v140 + 24);
              v197 = v319.i64[0];
              if (v196 >= v195 >> 1)
              {
                sub_23A975EA4((v195 > 1), v196 + 1, 1);
                v197 = v319.i64[0];
                v140 = v320;
              }

              *(v140 + 16) = v196 + 1;
              *(v140 + 8 * v196 + 32) = v197;
            }

            v194 += 8;
            --v191;
          }

          while (v191);
          goto LABEL_147;
        }

        v140 = MEMORY[0x277D84F90];
LABEL_149:
        v199 = *(v140 + 16);
        v200 = MEMORY[0x277D84F90];
        if (v199)
        {
          v320 = MEMORY[0x277D84F90];
          sub_23A975DF0(0, v199, 0);
          v202 = v320;
          v203 = (v140 + 32);
          v204 = *(v320 + 16);
          v205 = v199;
          do
          {
            v201.i64[0] = *v203;
            v320 = v202;
            v206 = *(v202 + 24);
            if (v204 >= v206 >> 1)
            {
              v319 = v201;
              sub_23A975DF0((v206 > 1), v204 + 1, 1);
              v201 = v319;
              v202 = v320;
            }

            *(v202 + 16) = v204 + 1;
            *(v202 + 4 * v204 + 32) = v201.i32[1];
            ++v203;
            ++v204;
            --v205;
          }

          while (v205);
        }

        else
        {
          v202 = MEMORY[0x277D84F90];
        }

        v207 = sub_23A8EDE0C(v202);

        v208 = v302.n128_f32[1];
        v209 = vmuls_lane_f32(-0.5, v302.n128_u64[0], 1);
        if ((v207 & 0x100000000) != 0)
        {
          v11.f32[0] = v209;
        }

        else
        {
          v11.f32[0] = *&v207;
        }

        if (v199)
        {
          v320 = v200;
          sub_23A975DF0(0, v199, 0);
          v211 = v320;
          v212 = *(v320 + 16);
          v213 = 32;
          do
          {
            v210.i64[0] = *(v140 + v213);
            v320 = v211;
            v214 = *(v211 + 24);
            if (v212 >= v214 >> 1)
            {
              v319 = v210;
              sub_23A975DF0((v214 > 1), v212 + 1, 1);
              v210 = v319;
              v211 = v320;
            }

            *(v211 + 16) = v212 + 1;
            *(v211 + 4 * v212 + 32) = v210.i32[1];
            v213 += 8;
            ++v212;
            --v199;
          }

          while (v199);
        }

        else
        {

          v211 = MEMORY[0x277D84F90];
        }

        v215 = sub_23A8EDE64(v211);

        v220 = *&v215;
        if ((v215 & 0x100000000) != 0)
        {
          v220 = v208 * 0.5;
        }

        v221 = sub_23A8F76CC(v294, a8 > 0.0, v11.f32[0], v220, COERCE_UNSIGNED_INT(v134 - COERCE_FLOAT(*v294)), v216, v217, v218, v219);
        v47 = v310;
        if (v221)
        {
          v48 = v221;
          v222 = v221[4];
          v45 = *(v222 + 16);
          v46 = MEMORY[0x277D84F90];
          if (v45)
          {
            v320 = MEMORY[0x277D84F90];

            v47 = &v320;
            sub_23A975E54(0, v45, 0);
            v46 = v320;
            v223 = 32;
            v224 = v325;
            while (1)
            {
              v225 = *(v224 + 16);
              if (HIDWORD(v225))
              {
                goto LABEL_240;
              }

              v226 = *(v222 + v223);
              a2 = (v226 + v225);
              if (__CFADD__(v226, v225))
              {
                goto LABEL_241;
              }

              v320 = v46;
              v228 = *(v46 + 16);
              v227 = *(v46 + 24);
              if (v228 >= v227 >> 1)
              {
                v47 = &v320;
                sub_23A975E54((v227 > 1), v228 + 1, 1);
                v46 = v320;
              }

              *(v46 + 16) = v228 + 1;
              *(v46 + 4 * v228 + 32) = a2;
              v223 += 4;
              if (!--v45)
              {

                break;
              }
            }
          }

          sub_23A911A8C(v46);
          v229 = *(v48 + 16);

          sub_23A9119A0(v230);
          v231 = *(v48 + 24);

          sub_23A9119A0(v232);

          v47 = v310;
        }

        sub_23A8D6DDC(v294);
        v48 = v309;
        v181 = v318.i64[0];
      }

      sub_23A8D6CA0(v292, v47);
      if (v181(v47, 1, v295) == 1)
      {

        sub_23A8D6D10(v47);
LABEL_229:
        v287 = &v318;
LABEL_230:
        v288 = v287[-16].i64[0];

        v290 = v324;
        v289 = v325;
        v291 = v323;
        type metadata accessor for RoomCaptureMesh();
        result = swift_allocObject();
        result[2] = v289;
        result[3] = v291;
        result[4] = v290;
        return result;
      }

      sub_23A8D6D78(v47, v48);

      v233 = *(v296 + 16);
      v234 = *(v233 + 16);
      v235 = MEMORY[0x277D84F90];
      if (v234)
      {
        v320 = MEMORY[0x277D84F90];
        sub_23A975DF0(0, v234, 0);
        v235 = v320;
        v237 = (v233 + 32);
        v238 = *(v320 + 16);
        do
        {
          v236.i64[0] = *v237;
          v320 = v235;
          v239 = *(v235 + 24);
          if (v238 >= v239 >> 1)
          {
            v319 = v236;
            sub_23A975DF0((v239 > 1), v238 + 1, 1);
            v236 = v319;
            v235 = v320;
          }

          *(v235 + 16) = v238 + 1;
          *(v235 + 4 * v238 + 32) = v236.i32[0];
          ++v237;
          ++v238;
          --v234;
        }

        while (v234);
      }

      v240 = sub_23A8EDE64(v235);

      if ((v240 & 0x100000000) != 0)
      {
        v241 = 0.5 * v302.n128_f32[0];
      }

      else
      {
        v241 = *&v240;
      }

      v242 = *(v296 + 16);
      v243 = *(v242 + 16);
      if (v243)
      {
        v244 = *(v296 + 16);

        v246 = MEMORY[0x277D84F90];
        v247 = 32;
        do
        {
          v245.i64[0] = *(v242 + v247);
          if (vabds_f32(v245.f32[0], v241) < 0.0001)
          {
            v319 = v245;
            v251 = swift_isUniquelyReferenced_nonNull_native();
            v320 = v246;
            if ((v251 & 1) == 0)
            {
              sub_23A975EA4(0, v246[2] + 1, 1);
              v246 = v320;
            }

            v249 = v246[2];
            v248 = v246[3];
            v250 = v319.i64[0];
            if (v249 >= v248 >> 1)
            {
              sub_23A975EA4((v248 > 1), v249 + 1, 1);
              v250 = v319.i64[0];
              v246 = v320;
            }

            v246[2] = v249 + 1;
            v246[v249 + 4] = v250;
          }

          v247 += 8;
          --v243;
        }

        while (v243);
      }

      else
      {
        v246 = MEMORY[0x277D84F90];
      }

      v252 = v246[2];
      v253 = MEMORY[0x277D84F90];
      if (v252)
      {
        v320 = MEMORY[0x277D84F90];
        sub_23A975DF0(0, v252, 0);
        v255 = v320;
        v256 = v246 + 4;
        v257 = *(v320 + 16);
        v258 = v252;
        do
        {
          v254.i64[0] = *v256;
          v320 = v255;
          v259 = *(v255 + 24);
          if (v257 >= v259 >> 1)
          {
            v319 = v254;
            sub_23A975DF0((v259 > 1), v257 + 1, 1);
            v254 = v319;
            v255 = v320;
          }

          *(v255 + 16) = v257 + 1;
          *(v255 + 4 * v257 + 32) = v254.i32[1];
          ++v256;
          ++v257;
          --v258;
        }

        while (v258);
      }

      else
      {
        v255 = MEMORY[0x277D84F90];
      }

      v260 = sub_23A8EDE0C(v255);

      v261 = v302.n128_f32[1];
      v262 = vmuls_lane_f32(-0.5, v302.n128_u64[0], 1);
      if ((v260 & 0x100000000) != 0)
      {
        v11.f32[0] = v262;
      }

      else
      {
        v11.f32[0] = *&v260;
      }

      if (v252)
      {
        v320 = v253;
        sub_23A975DF0(0, v252, 0);
        v264 = v320;
        v265 = *(v320 + 16);
        v266 = 4;
        do
        {
          v263.i64[0] = v246[v266];
          v320 = v264;
          v267 = *(v264 + 24);
          if (v265 >= v267 >> 1)
          {
            v319 = v263;
            sub_23A975DF0((v267 > 1), v265 + 1, 1);
            v263 = v319;
            v264 = v320;
          }

          *(v264 + 16) = v265 + 1;
          *(v264 + 4 * v265 + 32) = v263.i32[1];
          ++v266;
          ++v265;
          --v252;
        }

        while (v252);
      }

      else
      {

        v264 = MEMORY[0x277D84F90];
      }

      v268 = sub_23A8EDE64(v264);

      v273 = *&v268;
      if ((v268 & 0x100000000) != 0)
      {
        v273 = v261 * 0.5;
      }

      v274 = v309;
      v275 = sub_23A8F76CC(v309, a8 > 0.0, v11.f32[0], v273, COERCE_UNSIGNED_INT(v241 - COERCE_FLOAT(*v309)), v269, v270, v271, v272);
      if (!v275)
      {
        sub_23A8D6DDC(v274);

        v287 = &v323;
        goto LABEL_230;
      }

      v48 = v275;
      v276 = v275[4];
      v45 = *(v276 + 16);
      v46 = MEMORY[0x277D84F90];
      if (!v45)
      {
LABEL_228:
        sub_23A911A8C(v46);
        v283 = *(v48 + 16);

        sub_23A9119A0(v284);
        v285 = *(v48 + 24);

        sub_23A9119A0(v286);

        sub_23A8D6DDC(v309);
        goto LABEL_229;
      }

      v320 = MEMORY[0x277D84F90];

      v47 = &v320;
      sub_23A975E54(0, v45, 0);
      v46 = v320;
      v277 = 32;
      v278 = v325;
      while (1)
      {
        v279 = *(v278 + 16);
        if (HIDWORD(v279))
        {
          break;
        }

        v280 = *(v276 + v277);
        v281 = v280 + v279;
        if (__CFADD__(v280, v279))
        {
          goto LABEL_243;
        }

        v320 = v46;
        a2 = *(v46 + 16);
        v282 = *(v46 + 24);
        if (a2 >= v282 >> 1)
        {
          v47 = &v320;
          sub_23A975E54((v282 > 1), a2 + 1, 1);
          v46 = v320;
        }

        *(v46 + 16) = a2 + 1;
        *(v46 + 4 * a2 + 32) = v281;
        v277 += 4;
        if (!--v45)
        {

          goto LABEL_228;
        }
      }

LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      result = sub_23AA0D7F4();
      v73 = result;
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_27:
    if (v73 < 1)
    {
      __break(1u);
      goto LABEL_249;
    }

    v305 = a2;
    v317.i64[0] = v45 & 0xC000000000000001;
    v74 = v302;
    v75 = vmuls_lane_f32(-0.5, v302.n128_u64[0], 1);
    DWORD1(v69) = 0;
    v74.n128_f32[0] = a8 * 0.0;
    v319 = v74;
    v74.n128_f32[0] = a8 + 0.0;
    *&v70 = v11.f32[0] * 0.0;
    v313 = v70;
    *&v69 = 0.0 - v11.f32[0];
    v315 = v69;
    *&v69 = (0.0 - v11.f32[0]) - (a8 + 0.0);
    v314 = v69;
    v316 = v74;
    *&v69 = v74.n128_f32[0] - v74.n128_f32[0];
    v308 = v69;

    v76 = 0;
    v77 = vdup_lane_s32(*v319.f32, 0);
    v78 = vdup_lane_s32(*&v313, 0);
    v313 = xmmword_23AA11C20;
    v307 = xmmword_23AA12200;
    *&v312 = v73;
    while (1)
    {
      if (v317.i64[0])
      {
        a2 = MEMORY[0x23EE90360](v76, v45);
        if (v318.i8[0])
        {
          goto LABEL_35;
        }
      }

      else
      {
        a2 = *(v45 + 8 * v76 + 32);

        if (v318.i8[0])
        {
LABEL_35:
          if (vabds_f32(*(a2 + 20), v75) < 0.0001 && vabds_f32(*(a2 + 28), v75) < 0.0001)
          {
            goto LABEL_30;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
      v79 = swift_allocObject();
      v80.i32[3] = HIDWORD(v313);
      v79[1] = v313;
      v87.i64[0] = *(a2 + 24);
      *v80.f32 = vadd_f32(v77, *v87.f32);
      *&v81 = v80.i64[0];
      *(&v81 + 1) = v316.u32[0];
      v79[2] = v81;
      v82 = *(a2 + 16);
      v83 = vadd_f32(v77, v82);
      *&v84 = v83;
      *(&v84 + 1) = DWORD2(v81);
      *&v85 = vadd_f32(v78, v82);
      *(&v85 + 1) = v315;
      *&v86 = vadd_f32(v78, *v87.f32);
      *v87.f32 = vsub_f32(*&v86, *v80.f32);
      DWORD2(v86) = v315;
      v79[3] = v84;
      v79[4] = v85;
      *(&v86 + 1) = DWORD2(v86);
      v79[5] = v86;
      v87.i32[2] = v314;
      v88 = vmulq_f32(v87, v87);
      if ((v88.f32[2] + vaddv_f32(*v88.f32)) >= 1.4211e-14)
      {
        v87.i32[3] = 0;
        *v80.f32 = vsub_f32(v83, *v80.f32);
        v80.i32[2] = v308;
        v89 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL), vnegq_f32(v80)), v87, vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL));
        v90 = vmulq_f32(v89, v89);
        *&v91 = v90.f32[1] + (v90.f32[2] + v90.f32[0]);
        v92 = vrsqrte_f32(v91);
        v93 = vmul_f32(v92, vrsqrts_f32(v91, vmul_f32(v92, v92)));
        v94 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL), vmul_f32(v93, vrsqrts_f32(v91, vmul_f32(v93, v93))).f32[0]);
        v94.i32[3] = HIDWORD(v311);
        v319 = v94;
        v311 = v94;
      }

      else
      {
        v319 = v307;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
      v95 = sub_23AA0D324();
      *(v95 + 16) = 4;
      v96 = v319;
      *(v95 + 32) = v319;
      *(v95 + 48) = v96;
      *(v95 + 64) = v96;
      *(v95 + 80) = v96;
      v320 = v46;
      v47 = &v320;
      sub_23A975E54(0, 6, 0);
      v48 = v325;
      v97 = *(v325 + 16);
      if (HIDWORD(v97))
      {
        goto LABEL_232;
      }

      v46 = (dword_284D7FCC8 + v97);
      if (__CFADD__(dword_284D7FCC8, v97))
      {
        goto LABEL_233;
      }

      v98 = v320;
      v100 = *(v320 + 16);
      v99 = *(v320 + 24);
      v101 = v100 + 1;
      if (v100 >= v99 >> 1)
      {
        sub_23A975E54((v99 > 1), v100 + 1, 1);
        v98 = v320;
      }

      *(v98 + 16) = v101;
      *(v98 + 4 * v100 + 32) = v46;
      v102 = *(v48 + 16);
      if (HIDWORD(v102))
      {
        goto LABEL_232;
      }

      v46 = (dword_284D7FCCC + v102);
      if (__CFADD__(dword_284D7FCCC, v102))
      {
        goto LABEL_233;
      }

      v320 = v98;
      v103 = *(v98 + 24);
      v104 = v100 + 2;
      if (v101 >= v103 >> 1)
      {
        sub_23A975E54((v103 > 1), v104, 1);
        v98 = v320;
      }

      *(v98 + 16) = v104;
      *(v98 + 4 * v101 + 32) = v46;
      v105 = *(v48 + 16);
      if (HIDWORD(v105))
      {
        goto LABEL_232;
      }

      v46 = (dword_284D7FCD0 + v105);
      if (__CFADD__(dword_284D7FCD0, v105))
      {
        goto LABEL_233;
      }

      v320 = v98;
      v107 = *(v98 + 16);
      v106 = *(v98 + 24);
      v108 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        sub_23A975E54((v106 > 1), v107 + 1, 1);
        v98 = v320;
      }

      *(v98 + 16) = v108;
      *(v98 + 4 * v107 + 32) = v46;
      v109 = *(v48 + 16);
      if (HIDWORD(v109))
      {
        goto LABEL_232;
      }

      v46 = (dword_284D7FCD4 + v109);
      if (__CFADD__(dword_284D7FCD4, v109))
      {
        goto LABEL_233;
      }

      v320 = v98;
      v110 = *(v98 + 24);
      v111 = v107 + 2;
      if (v108 >= v110 >> 1)
      {
        sub_23A975E54((v110 > 1), v111, 1);
        v98 = v320;
      }

      *(v98 + 16) = v111;
      *(v98 + 4 * v108 + 32) = v46;
      v112 = *(v48 + 16);
      if (HIDWORD(v112))
      {
        goto LABEL_232;
      }

      v46 = (dword_284D7FCD8 + v112);
      if (__CFADD__(dword_284D7FCD8, v112))
      {
        goto LABEL_233;
      }

      v320 = v98;
      v114 = *(v98 + 16);
      v113 = *(v98 + 24);
      v115 = v114 + 1;
      if (v114 >= v113 >> 1)
      {
        sub_23A975E54((v113 > 1), v114 + 1, 1);
        v98 = v320;
      }

      *(v98 + 16) = v115;
      *(v98 + 4 * v114 + 32) = v46;
      v116 = *(v48 + 16);
      if (HIDWORD(v116))
      {
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
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
        goto LABEL_242;
      }

      v48 = (dword_284D7FCDC + v116);
      if (__CFADD__(dword_284D7FCDC, v116))
      {
        goto LABEL_233;
      }

      v320 = v98;
      v117 = *(v98 + 24);
      v118 = v114 + 2;
      if (v115 >= v117 >> 1)
      {
        sub_23A975E54((v117 > 1), v118, 1);
        v98 = v320;
      }

      *(v98 + 16) = v118;
      *(v98 + 4 * v115 + 32) = v48;
      sub_23A911A8C(v98);
      sub_23A9119A0(v79);
      sub_23A9119A0(v95);
      v48 = v309;
      v47 = v310;
      v46 = MEMORY[0x277D84F90];
      v73 = v312;
LABEL_30:
      ++v76;

      if (v73 == v76)
      {

        a2 = v305;
        goto LABEL_65;
      }
    }
  }

LABEL_249:
  __break(1u);
  return result;
}

uint64_t sub_23A8F1F50(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_23A97E578(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_23A8F1FF8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23A8F1FF8(uint64_t *a1)
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
        type metadata accessor for OpeningElement();
        v6 = sub_23AA0D324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v16[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v5;
      sub_23A8F2140(v16, v17, a1, v4);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = -1;
    v9 = 1;
    v10 = *a1;
    do
    {
      v11 = *(v7 + 8 * v9);
      v12 = v8;
      v13 = v10;
      do
      {
        v14 = *v13;
        if (COERCE_FLOAT(*(v11 + 16)) >= COERCE_FLOAT(*(*v13 + 16)))
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_20;
        }

        *v13 = v11;
        v13[1] = v14;
        --v13;
      }

      while (!__CFADD__(v12++, 1));
      ++v9;
      v10 += 8;
      --v8;
    }

    while (v9 != v2);
  }

  return result;
}

uint64_t sub_23A8F2140(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v81 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_23A977E20(v10);
      v10 = result;
    }

    v76 = *(v10 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v10[16 * v76];
        v78 = *&v10[16 * v76 + 24];
        sub_23A8F26A8((*a3 + 8 * v77), (*a3 + 8 * *&v10[16 * v76 + 16]), (*a3 + 8 * v78), v5);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v76 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v10[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_23A977D94(v76 - 1);
        v76 = *(v10 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
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
      v12 = *(*(*a3 + 8 * v9) + 16);
      v13 = vcgt_f32(*(*(*a3 + 8 * v11) + 16), v12);
      v14 = v11 + 2;
      while (v7 != v14)
      {
        v15 = *(*(*a3 + 8 * v14) + 16);
        v16 = vmvn_s8(veor_s8(vcgt_f32(v12, v15), v13)).u8[0];
        ++v14;
        v12 = v15;
        if ((v16 & 1) == 0)
        {
          v9 = v14 - 1;
          if ((v13.i8[0] & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if ((v13.i8[0] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v17 = 8 * v9 - 8;
        v18 = 8 * v11;
        v19 = v9;
        v20 = v11;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v21 = *(v22 + v18);
            *(v22 + v18) = *(v22 + v17);
            *(v22 + v17) = v21;
          }

          ++v20;
          v17 -= 8;
          v18 += 8;
        }

        while (v20 < v19);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v31 = *(v10 + 3);
    v32 = v5 + 1;
    if (v5 >= v31 >> 1)
    {
      result = sub_23A938B2C((v31 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v32;
    v33 = &v10[16 * v5];
    *(v33 + 4) = v11;
    *(v33 + 5) = v9;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v10 + 4);
          v37 = *(v10 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v10[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v10[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v10[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v10[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v10[16 * v73 + 32];
        v5 = *&v10[16 * v35 + 40];
        sub_23A8F26A8((*a3 + 8 * v74), (*a3 + 8 * *&v10[16 * v35 + 32]), (*a3 + 8 * v5), v34);
        if (v4)
        {
        }

        if (v5 < v74)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v73 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v10[16 * v73];
        *(v75 + 4) = v74;
        *(v75 + 5) = v5;
        result = sub_23A977D94(v35);
        v32 = *(v10 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v10[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v10[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v10[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 8 * v9 - 8;
  v25 = v11 - v9;
LABEL_30:
  v26 = *(v23 + 8 * v9);
  v27 = v25;
  v28 = v24;
  while (1)
  {
    v29 = *v28;
    if (COERCE_FLOAT(*(v26 + 16)) >= COERCE_FLOAT(*(*v28 + 16)))
    {
LABEL_29:
      ++v9;
      v24 += 8;
      --v25;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    *v28 = v26;
    v28[1] = v29;
    --v28;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23A8F26A8(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (COERCE_FLOAT(*(*v6 + 16)) < COERCE_FLOAT(*(*v4 + 16)))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (COERCE_FLOAT(*(v21 + 16)) < COERCE_FLOAT(*(*v17 + 16)))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_23A8F2904(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
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

uint64_t sub_23A8F29A8(float32x4_t a1, __n128 a2)
{
  v2 = 0.5 * a1.f32[0];
  v3 = vmuls_lane_f32(0.5, *a1.f32, 1);
  v4 = vmuls_lane_f32(0.5, a1, 2);
  v39 = COERCE_UNSIGNED_INT(a2.n128_f32[0] - v2);
  v5 = v39;
  v33 = a2.n128_f32[1] - v3;
  v5.n128_f32[1] = a2.n128_f32[1] - v3;
  v37 = v5;
  v31 = a2.n128_f32[2] - v4;
  v5.n128_f32[2] = a2.n128_f32[2] - v4;
  *&v6 = v2 + a2.n128_f32[0];
  v43 = COERCE_UNSIGNED_INT(v2 + a2.n128_f32[0]);
  v29 = v3 + a2.n128_f32[1];
  *(&v6 + 1) = v3 + a2.n128_f32[1];
  v7 = v4 + a2.n128_f32[2];
  v41 = *&v6;
  v8 = *&v6;
  v30 = v7;
  v8.n128_f32[2] = v7;
  v45 = MEMORY[0x277D84F90];
  v35 = v5;
  v36 = v8;
  v9 = sub_23A931450(v5, v6);
  MEMORY[0x23EE8FD70](v9);
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v10 = sub_23A9314E0(v35.n128_f64[0], v36);
  MEMORY[0x23EE8FD70](v10);
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v24 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v11 = v37;
  v11.n128_f32[2] = v30;
  v38 = v11;
  v12 = v43;
  *(&v12 + 1) = v33;
  v13 = v12;
  *(&v13 + 2) = v31;
  v34 = v13;
  *(&v12 + 2) = v30;
  v44 = v12;
  type metadata accessor for RoomCaptureQuad();
  v14 = swift_allocObject();
  v14[1] = v38;
  v14[2] = v35;
  v14[3] = v34;
  v14[4] = v44;
  v14[5] = xmmword_23AA12210;
  MEMORY[0x23EE8FD70]();
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v25 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v16 = v39;
  v15 = v41;
  *(&v15 + 2) = v31;
  v42 = v15;
  v16.n128_f32[1] = v29;
  v17 = v16;
  v17.n128_f32[2] = v31;
  v32 = v17;
  v16.n128_f32[2] = v30;
  v40 = v16;
  v18 = swift_allocObject();
  v18[1] = v36;
  v18[2] = v42;
  v18[3] = v32;
  v18[4] = v40;
  v18[5] = xmmword_23AA12220;
  MEMORY[0x23EE8FD70]();
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v26 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v19 = swift_allocObject();
  v19[1] = v40;
  v19[2] = v32;
  v19[3] = v35;
  v19[4] = v38;
  v19[5] = xmmword_23AA12230;
  MEMORY[0x23EE8FD70]();
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v27 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v20 = swift_allocObject();
  v20[1] = v44;
  v20[2] = v34;
  v20[3] = v42;
  v20[4] = v36;
  v20[5] = xmmword_23AA12200;
  MEMORY[0x23EE8FD70]();
  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v28 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v21 = sub_23A982850(v45);

  return v21;
}

uint64_t sub_23A8F2D70(float32x4_t *a1, __n128 a2, __n128 a3, float a4)
{
  v4 = a1[1].i64[0];
  if (v4)
  {
    v7 = sub_23A901794(a1, a2, a3);
    v160 = MEMORY[0x277D84F90];
    v10 = *(v7 + 2);
    v11 = vmul_f32(a3.n128_u64[0], 0x3F0000003F000000);
    v12 = "tion";
    v139 = v11;
    if (v10)
    {
      v113 = vmuls_lane_f32(0.5, a3, 2);
      v13 = v11.f32[1];
      v14 = (v7 + 48);
      v15 = MEMORY[0x277D84F90];
      do
      {
        v16 = *v14[-2].i8;
        v17 = 0.5 * COERCE_FLOAT(*v14->i8);
        v118 = *v16.i32 - v17;
        *&v22 = *v16.i32 - v17;
        v125 = *v16.i32 + v17;
        *&v23 = *v16.i32 + v17;
        v18 = vmul_f32(vext_s8(*v14, *&vextq_s8(*v14->i8, *v14->i8, 8uLL), 4uLL), 0x3F0000003F000000);
        *v16.i8 = vext_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL), 4uLL);
        v8.n128_u64[0] = vsub_f32(*v16.i8, v18);
        v19 = v22;
        v19.n128_u32[1] = v8.n128_u32[0];
        v154 = v19;
        v19.n128_u32[2] = v8.n128_u32[1];
        v131 = v19;
        *&v9 = vadd_f32(*v16.i8, v18);
        v20 = v23;
        DWORD1(v20) = v9;
        v21 = v113;
        HIDWORD(v22) = v9;
        v145 = v22;
        v156 = v20;
        DWORD2(v20) = v8.n128_u32[1];
        v137 = v20;
        v155 = v8;
        HIDWORD(v23) = v8.n128_u32[0];
        v149 = v23;
        v141 = v9;
        if (fabsf(v8.n128_f32[1] + v113) < a4)
        {
          v24 = v22;
          DWORD2(v24) = v8.n128_u32[1];
          v103 = v24;
          v25 = v23;
          DWORD2(v25) = v8.n128_u32[1];
          v98 = v25;
          type metadata accessor for RoomCaptureQuad();
          v26 = swift_allocObject();
          v26[1] = v131;
          v26[2] = v103;
          v26[3] = v137;
          v26[4] = v98;
          v26[5] = xmmword_23AA12240;
          MEMORY[0x23EE8FD70]();
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v107 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v160;
          v21 = v113;
          v9 = v141;
        }

        v27 = v156;
        DWORD2(v27) = DWORD1(v9);
        v157 = v27;
        v28 = v154;
        v28.n128_u32[2] = DWORD1(v9);
        v153 = v28;
        if (vabds_f32(*(&v9 + 1), v21) < a4)
        {
          v29 = v149;
          v29.n128_u32[2] = DWORD1(v9);
          v104 = v29;
          v30 = v145;
          DWORD2(v30) = DWORD1(v9);
          v99 = v30;
          type metadata accessor for RoomCaptureQuad();
          v31 = swift_allocObject();
          v31[1] = v153;
          v31[2] = v104;
          v31[3] = v157;
          v31[4] = v99;
          v31[5] = xmmword_23AA12250;
          MEMORY[0x23EE8FD70]();
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v108 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v160;
          v9 = v141;
        }

        if (fabsf(v155.n128_f32[0] + v13) < a4)
        {
          v32 = v149;
          v33 = v149;
          v33.n128_u32[2] = v155.n128_u32[1];
          v32.n128_u32[2] = DWORD1(v9);
          v100 = v32;
          v105 = v33;
          type metadata accessor for RoomCaptureQuad();
          v34 = swift_allocObject();
          v34[1] = v153;
          v34[2] = v131;
          v34[3] = v105;
          v34[4] = v100;
          v34[5] = xmmword_23AA12210;
          MEMORY[0x23EE8FD70]();
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v109 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v160;
          v9 = v141;
        }

        if (vabds_f32(*&v9, v13) < a4)
        {
          v35 = v145;
          v36 = v145;
          DWORD2(v36) = v155.n128_u32[1];
          DWORD2(v35) = DWORD1(v9);
          v101 = v35;
          v106 = v36;
          type metadata accessor for RoomCaptureQuad();
          v37 = swift_allocObject();
          v37[1] = v157;
          v37[2] = v137;
          v37[3] = v106;
          v37[4] = v101;
          v37[5] = xmmword_23AA12220;
          MEMORY[0x23EE8FD70]();
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v110 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v160;
          v9 = v141;
        }

        v38 = v139.f32[0];
        if (fabsf(v118 + v139.f32[0]) < a4)
        {
          v39 = v145;
          v40 = v145;
          DWORD2(v40) = DWORD1(v9);
          v119 = v40;
          DWORD2(v39) = v155.n128_u32[1];
          v146 = v39;
          type metadata accessor for RoomCaptureQuad();
          v41 = swift_allocObject();
          v41[1] = v119;
          v41[2] = v146;
          v41[3] = v131;
          v41[4] = v153;
          v41[5] = xmmword_23AA12230;
          MEMORY[0x23EE8FD70]();
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v160;
          v38 = v139.f32[0];
          v9 = v141;
        }

        if (vabds_f32(v125, v38) < a4)
        {
          v42 = v149;
          v43 = v149;
          v43.n128_u32[2] = DWORD1(v9);
          v153 = v43;
          v42.n128_u32[2] = v155.n128_u32[1];
          v150 = v42;
          type metadata accessor for RoomCaptureQuad();
          v44 = swift_allocObject();
          v44[1] = v153;
          v44[2] = v150;
          v44[3] = v137;
          v44[4] = v157;
          v44[5] = xmmword_23AA12200;
          MEMORY[0x23EE8FD70]();
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v15 = v160;
        }

        v14 += 4;
        --v10;
      }

      while (v10);

      v12 = "RoomCaptureMeshDimensionsRestriction" + 32;
      v45 = a3.n128_u64[0];
      v46 = v113;
    }

    else
    {

      v45 = a3.n128_u64[0];
      v46 = vmuls_lane_f32(0.5, a3, 2);
      v15 = MEMORY[0x277D84F90];
    }

    *v54.f32 = vmul_f32(v45, 0xBF000000BF000000);
    v48 = (a3.n128_f32[2] * -0.5) + a4;
    v49 = v46 - a4;
    v50 = v54.f32[1] + a4;
    *v51.f32 = v139;
    v52 = v54.f32[0] + a4;
    v53 = v139.f32[0] - a4;
    v54.i64[1] = COERCE_UNSIGNED_INT(a3.n128_f32[2] * -0.5);
    v51.i64[1] = LODWORD(v46);
    v55 = v139.f32[1] - a4;
    v138 = v54;
    v140 = v51;
    v56 = a1 + 3;
    v97 = *(v12 + 34);
    do
    {
      v57 = v56[-1];
      v58 = vmuls_lane_f32(0.5, *v56, 2);
      v59 = COERCE_FLOAT(v56[-1].i64[1]);
      v60 = v59 - v58;
      v61 = vmul_f32(*v56->f32, 0x3F0000003F000000);
      v62 = vadd_f32(*v57.f32, v61);
      v142 = vsub_f32(*v57.f32, v61);
      *v57.f32 = v142;
      v57.f32[2] = v59 - v58;
      v57.i32[3] = 0;
      v63 = vmaxnmq_f32(v57, v138);
      v151 = v63;
      v63.n128_u32[3] = v153.n128_u32[3];
      v153 = v63;
      v54.f32[0] = v59 + v58;
      v147 = v62;
      *v64.f32 = v62;
      v64.i64[1] = v54.u32[0];
      v65 = vminnmq_f32(v64, v140);
      v158 = v65;
      v65.i32[3] = v155.n128_i32[3];
      v155 = v65;
      if (v48 < v60)
      {
        v132 = v54;
        sub_23A931450(v63, *v65.i64);
        v120 = *(v66 + 48);
        v126 = *(v66 + 64);
        v111 = *(v66 + 16);
        v114 = *(v66 + 32);
        HIDWORD(v67) = 0;
        *&v67 = vsubq_f32(0, *(v66 + 80)).u64[0];
        *(&v67 + 2) = 0.0 - COERCE_FLOAT(*(v66 + 88));
        v102 = v67;
        type metadata accessor for RoomCaptureQuad();
        v68 = swift_allocObject();
        v68[1] = v111;
        v68[2] = v126;
        v68[3] = v120;
        v68[4] = v114;
        v68[5] = v102;

        MEMORY[0x23EE8FD70](v69);
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v90 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v160;
        v54 = v132;
      }

      if (v54.f32[0] < v49)
      {
        sub_23A9314E0(v153.n128_f64[0], v155);
        v127 = *(v70 + 48);
        v133 = *(v70 + 64);
        v115 = *(v70 + 16);
        v121 = *(v70 + 32);
        HIDWORD(v71) = 0;
        *&v71 = vsubq_f32(0, *(v70 + 80)).u64[0];
        *(&v71 + 2) = 0.0 - COERCE_FLOAT(*(v70 + 88));
        v112 = v71;
        type metadata accessor for RoomCaptureQuad();
        v72 = swift_allocObject();
        v72[1] = v115;
        v72[2] = v133;
        v72[3] = v127;
        v72[4] = v121;
        v72[5] = v112;

        MEMORY[0x23EE8FD70](v73);
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v91 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v160;
      }

      if (v50 < v142.f32[1])
      {
        v74 = v151;
        v75 = v151;
        v75.n128_u32[3] = 0;
        v134 = v75;
        v76 = v75;
        v76.n128_u32[2] = v158.u32[2];
        v128 = v76;
        v76.n128_u64[0] = __PAIR64__(v151.n128_u32[1], v158.u32[0]);
        v74.n128_u32[0] = v158.i32[0];
        v74.n128_u32[3] = 0;
        v76.n128_u64[1] = v158.u32[2];
        v116 = v76;
        v122 = v74;
        type metadata accessor for RoomCaptureQuad();
        v77 = swift_allocObject();
        v77[1] = v128;
        v77[2] = v116;
        v77[3] = v122;
        v77[4] = v134;
        v77[5] = v97;
        MEMORY[0x23EE8FD70]();
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v92 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v160;
      }

      if (v147.f32[1] < v55)
      {
        v78 = v158;
        v79 = v158;
        v79.i32[3] = 0;
        v129 = v79;
        v79.i32[2] = v151.n128_i32[2];
        v135 = v79;
        v79.i64[0] = __PAIR64__(v158.u32[1], v151.n128_u32[0]);
        v79.i64[1] = v151.n128_u32[2];
        v78.i32[0] = v151.n128_u32[0];
        v78.i32[3] = 0;
        v117 = v78;
        v123 = v79;
        type metadata accessor for RoomCaptureQuad();
        v80 = swift_allocObject();
        v80[1] = v129;
        v80[2] = v117;
        v80[3] = v123;
        v80[4] = v135;
        v80[5] = xmmword_23AA12210;
        MEMORY[0x23EE8FD70]();
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v93 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v160;
      }

      if (v52 < v142.f32[0])
      {
        v81 = v151;
        *&v82 = __PAIR64__(v158.u32[1], v151.n128_u32[0]);
        v83 = v158;
        v83.i32[0] = v151.n128_u32[0];
        v83.i32[3] = 0;
        *(&v82 + 1) = v151.n128_u32[2];
        v143 = v82;
        v81.n128_u32[3] = 0;
        v130 = v81;
        v136 = v83;
        v81.n128_u32[2] = v158.u32[2];
        v124 = v81;
        type metadata accessor for RoomCaptureQuad();
        v84 = swift_allocObject();
        v84[1] = v136;
        v84[2] = v124;
        v84[3] = v130;
        v84[4] = v143;
        v84[5] = xmmword_23AA12200;
        MEMORY[0x23EE8FD70]();
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v94 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v160;
      }

      if (v147.f32[0] < v53)
      {
        v85 = v158;
        *&v86 = __PAIR64__(v151.n128_u32[1], v158.u32[0]);
        *(&v86 + 1) = v158.u32[2];
        v148 = v86;
        v87 = v151;
        v87.n128_u32[0] = v158.i32[0];
        v87.n128_u32[3] = 0;
        v144 = v87;
        v85.i32[3] = 0;
        v159 = v85;
        v85.i32[2] = v151.n128_i32[2];
        v152 = v85;
        type metadata accessor for RoomCaptureQuad();
        v88 = swift_allocObject();
        v88[1] = v148;
        v88[2] = v159;
        v88[3] = v152;
        v88[4] = v144;
        v88[5] = xmmword_23AA12230;
        MEMORY[0x23EE8FD70]();
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v89 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v15 = v160;
      }

      v56 += 2;
      --v4;
    }

    while (v4);
    v95 = sub_23A982850(v15);

    return v95;
  }

  else
  {

    return sub_23A8F29A8(a3, a2);
  }
}

uint64_t sub_23A8F399C(unint64_t a1, float32x2_t a2)
{
  v3 = vmul_f32(a2, 0x3F0000003F000000);
  v4 = vmul_f32(vsub_f32(v3, v3), 0x3F0000003F000000);
  v5 = vadd_f32(v3, v3);
  result = sub_23A938E7C(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = (v8 + 1);
  if (v8 >= v7 >> 1)
  {
LABEL_67:
    result = sub_23A938E7C((v7 > 1), v9, 1, result);
  }

  *(result + 16) = v9;
  v10 = (result + 16 * v8);
  v10[4] = v4;
  v10[5] = v5;
  v75 = result;
  if (a1 >> 62)
  {
    v57 = result;
    v9 = sub_23AA0D7F4();
    result = v57;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  v11 = 0;
  v8 = a1 & 0xC000000000000001;
  v61 = a1 + 32;
  v62 = a1 & 0xFFFFFFFFFFFFFF8;
  v4.i32[0] = 0.5;
  v12 = MEMORY[0x277D84F90];
  v5 = 0x3F0000003F000000;
  v59 = v9;
  v60 = a1;
  v58 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      result = MEMORY[0x23EE90360](v11, a1);
      v13 = result;
      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        break;
      }

      goto LABEL_11;
    }

    if (v11 >= *(v62 + 16))
    {
      goto LABEL_71;
    }

    v13 = *(v61 + 8 * v11);

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      break;
    }

LABEL_11:
    v15 = v75;
    v16 = sub_23A97E780(v13[2], v13[4]);
    v18 = *(v15 + 16);
    if (v18)
    {
      v73 = v16.f32[0] - (0.5 * v17.f32[0]);
      v74 = v16.f32[0] + (0.5 * v17.f32[0]);
      v19 = vmuls_lane_f32(0.5, v17, 1);
      v71 = v16.f32[1] - v19;
      v72 = v16.f32[1] + v19;

      a1 = 0;
      v20 = 0;
      v7 = v15 + 16 * v18;
      v21 = (v7 + 24);
      do
      {
        if (!a1)
        {
          v20 = *(v15 + 16);
        }

        v14 = __OFSUB__(v20--, 1);
        if (v14)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v7 = *(v15 + 16);
        if (v18 > v7)
        {
          goto LABEL_66;
        }

        v24 = v21[-1];
        v25 = 0.5 * COERCE_FLOAT(*v21);
        v26 = v24.f32[0] - v25;
        v27 = v24.f32[0] + v25;
        v28 = (v24.f32[0] - v25) < v74 && v73 < v27;
        v29 = vmuls_lane_f32(0.5, *v21, 1);
        v30 = v24.f32[1] - v29;
        v31 = v28 && v30 < v72;
        v32 = v24.f32[1] + v29;
        if (v31 && v71 < v32)
        {
          v34 = v12;
          v69 = v24.f32[1] + v29;
          v70 = v24.f32[0] + v25;
          v66 = v24.f32[0] - v25;
          v68 = v24.f32[1] - v29;
          if (v26 < v73)
          {
            v34 = sub_23A938E7C(0, 1, 1, v12);
            v8 = *(v34 + 2);
            v35 = *(v34 + 3);
            if (v8 >= v35 >> 1)
            {
              v34 = sub_23A938E7C((v35 > 1), v8 + 1, 1, v34);
            }

            v30 = v68;
            v32 = v69;
            v26 = v66;
            v36.f32[0] = v73 - v66;
            v36.f32[1] = v69 - v68;
            *(v34 + 2) = v8 + 1;
            v37 = &v34[16 * v8];
            v37[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v69), LODWORD(v73)), __PAIR64__(LODWORD(v68), LODWORD(v66))), 0x3F0000003F000000);
            v37[5] = v36;
            v27 = v70;
          }

          if (v30 < v71)
          {
            v38 = v73;
            if (v73 <= v26)
            {
              v38 = v26;
            }

            v64 = v38;
            v39 = v74;
            if (v27 < v74)
            {
              v39 = v27;
            }

            v63 = v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_23A938E7C(0, *(v34 + 2) + 1, 1, v34);
            }

            v8 = *(v34 + 2);
            v40 = *(v34 + 3);
            v32 = v69;
            v27 = v70;
            v26 = v66;
            v41 = v68;
            if (v8 >= v40 >> 1)
            {
              v55 = sub_23A938E7C((v40 > 1), v8 + 1, 1, v34);
              v26 = v66;
              v41 = v68;
              v32 = v69;
              v27 = v70;
              v34 = v55;
            }

            v42.f32[0] = v63 - v64;
            v42.f32[1] = v71 - v41;
            *(v34 + 2) = v8 + 1;
            v43 = &v34[16 * v8];
            v43[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v71), LODWORD(v64)), __PAIR64__(LODWORD(v41), LODWORD(v63))), 0x3F0000003F000000);
            v43[5] = v42;
          }

          if (v72 < v32)
          {
            v44 = v73;
            if (v73 <= v26)
            {
              v44 = v26;
            }

            v67 = v44;
            v45 = v74;
            if (v27 < v74)
            {
              v45 = v27;
            }

            v65 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_23A938E7C(0, *(v34 + 2) + 1, 1, v34);
            }

            v8 = *(v34 + 2);
            v46 = *(v34 + 3);
            v47 = v69;
            v27 = v70;
            if (v8 >= v46 >> 1)
            {
              v56 = sub_23A938E7C((v46 > 1), v8 + 1, 1, v34);
              v47 = v69;
              v27 = v70;
              v34 = v56;
            }

            v48.f32[0] = v65 - v67;
            v48.f32[1] = v47 - v72;
            *(v34 + 2) = v8 + 1;
            v49 = &v34[16 * v8];
            v49[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v72), LODWORD(v67)), __PAIR64__(LODWORD(v47), LODWORD(v65))), 0x3F0000003F000000);
            v49[5] = v48;
          }

          if (v74 < v27)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_23A938E7C(0, *(v34 + 2) + 1, 1, v34);
            }

            v8 = *(v34 + 2);
            v50 = *(v34 + 3);
            v52 = v69;
            v51 = v70;
            v53 = v68;
            if (v8 >= v50 >> 1)
            {
              v54 = sub_23A938E7C((v50 > 1), v8 + 1, 1, v34);
              v53 = v68;
              v52 = v69;
              v51 = v70;
              v34 = v54;
            }

            v22.f32[0] = v51 - v74;
            v22.f32[1] = v52 - v53;
            *(v34 + 2) = v8 + 1;
            v23 = &v34[16 * v8];
            v23[4] = vmul_f32(vadd_f32(__PAIR64__(LODWORD(v52), LODWORD(v74)), __PAIR64__(LODWORD(v53), LODWORD(v51))), 0x3F0000003F000000);
            v23[5] = v22;
          }

          v9 = &v75;
          sub_23A985244(v20);
          sub_23A9460BC(v20, v20, v34);
        }

        v21 -= 2;
        ++a1;
        --v18;
      }

      while (v18);

      v9 = v59;
      a1 = v60;
      v8 = v58;
      if (v11 != v59)
      {
        continue;
      }

      return v75;
    }

    if (v11 == v9)
    {
      return v75;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_23A8F3F24(unint64_t a1, float32x2_t a2, float a3)
{
  v3 = sub_23A8F399C(a1, a2);
  v4 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v5 = *(v3 + 16);
  if (v5)
  {
    type metadata accessor for RoomCaptureQuad();
    v6 = (v3 + 40);
    do
    {
      v7 = v6[-1];
      v8 = 0.5 * COERCE_FLOAT(*v6);
      v9 = vmuls_lane_f32(0.5, *v6, 1);
      v10 = v7.f32[1] - v9;
      v11 = v7.f32[1] + v9;
      v12 = COERCE_UNSIGNED_INT(v7.f32[0] - v8);
      v13 = v12;
      *(&v12 + 1) = v10;
      *(&v12 + 2) = a3;
      v22 = v12;
      *&v12 = v7.f32[0] + v8;
      v14 = COERCE_UNSIGNED_INT(v7.f32[0] + v8);
      *(&v14 + 1) = v10;
      *(&v14 + 2) = a3;
      *(&v12 + 1) = v11;
      *(&v12 + 1) = LODWORD(a3);
      v20 = v12;
      v21 = v14;
      *(&v13 + 1) = v11;
      *(&v13 + 2) = a3;
      v19 = v13;
      v15 = swift_allocObject();
      v15[1] = v22;
      v15[2] = v21;
      v15[3] = v20;
      v15[4] = v19;
      v15[5] = xmmword_23AA12250;
      MEMORY[0x23EE8FD70]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v6 += 2;
      --v5;
    }

    while (v5);
    v4 = v23;
  }

  return v4;
}

void sub_23A8F40A8(uint64_t a1, unint64_t a2, __n128 a3, float a4)
{
  v78 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    return;
  }

  if (a2)
  {
    v5 = a3.n128_u64[0];
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = *(a1 + 20);
    v65 = *(a1 + 24);
    a3.n128_u32[0] = *(a1 + 28);
    v64 = a3;
    v9 = a2;
    v10 = v8 - v7;
    v11 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      v71 = cosf(v7 + (v10 * (v6 / v9)));
      v13 = sinf(v7 + (v10 * (v6 / v9)));
      v14 = *(v12 + 2);
      if (HIDWORD(v14))
      {
        break;
      }

      v67 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_23A9388A8(0, v14 + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      v18 = v16 >> 1;
      v19 = v17 + 1;
      if (v16 >> 1 <= v17)
      {
        v12 = sub_23A9388A8((v16 > 1), v17 + 1, 1, v12);
        v16 = *(v12 + 3);
        v18 = v16 >> 1;
      }

      *v15.i8 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v67), LODWORD(v71)), a4), v5);
      v20 = v15.u32[0];
      v21 = v15.u32[0];
      DWORD1(v21) = v65;
      DWORD2(v21) = v15.i32[1];
      *(v12 + 2) = v19;
      *&v12[16 * v17 + 32] = v21;
      v22 = v17 + 2;
      v72 = v15;
      if (v18 < v22)
      {
        v68 = v15.u32[0];
        v56 = sub_23A9388A8((v16 > 1), v22, 1, v12);
        v20 = v68;
        v15.i32[1] = v72.i32[1];
        v12 = v56;
      }

      DWORD1(v20) = v64.n128_u32[0];
      DWORD2(v20) = v15.i32[1];
      *(v12 + 2) = v22;
      *&v12[16 * v19 + 32] = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23A9388A8(0, *(v11 + 2) + 1, 1, v11);
      }

      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      v25 = v23 >> 1;
      v26 = v24 + 1;
      v27 = v72;
      if (v23 >> 1 <= v24)
      {
        v57 = sub_23A9388A8((v23 > 1), v24 + 1, 1, v11);
        v27 = v72;
        v11 = v57;
        v23 = *(v57 + 3);
        v25 = v23 >> 1;
      }

      *v27.i8 = vsub_f32(*v27.i8, v5);
      v28 = vmul_f32(*v27.i8, *v27.i8);
      v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
      v29 = vrsqrte_f32(v28.u32[0]);
      v30 = vmul_f32(v29, vrsqrts_f32(v28.u32[0], vmul_f32(v29, v29)));
      *v27.i8 = vsub_f32(0, vmul_n_f32(*v27.i8, vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30))).f32[0]));
      v31 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v27, v27)), 0);
      *(v11 + 2) = v26;
      *&v11[16 * v24 + 32] = v31;
      v32 = v24 + 2;
      if (v25 < v32)
      {
        v75 = v31;
        v58 = sub_23A9388A8((v23 > 1), v32, 1, v11);
        v31 = v75;
        v11 = v58;
      }

      *(v11 + 2) = v32;
      *&v11[16 * v26 + 32] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23AA12260;
      *(inited + 32) = v14;
      if (v14 >= 0xFFFFFFFE)
      {
        goto LABEL_34;
      }

      *(inited + 36) = v14 + 2;
      v34 = v14 + 3;
      if (v14 >= 0xFFFFFFFD)
      {
        goto LABEL_35;
      }

      v35 = v7 + (v10 * (++v6 / v9));
      *(inited + 40) = v34;
      *(inited + 44) = v14;
      *(inited + 48) = v34;
      *(inited + 52) = v14 + 1;
      sub_23A911A8C(inited);
      if (v35 == v8)
      {
        v73 = cosf(v35);
        v36 = sinf(v35);
        v38 = *(v12 + 2);
        v37 = *(v12 + 3);
        v39 = v37 >> 1;
        v40 = v38 + 1;
        if (v37 >> 1 <= v38)
        {
          v69 = v36;
          v59 = sub_23A9388A8((v37 > 1), v38 + 1, 1, v12);
          v36 = v69;
          v12 = v59;
          v37 = *(v59 + 3);
          v39 = v37 >> 1;
        }

        v41 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v36), LODWORD(v73)), a4), v5);
        v42 = v41.u32[0];
        v43 = v41.u32[0];
        DWORD1(v43) = v65;
        DWORD2(v43) = v41.i32[1];
        *(v12 + 2) = v40;
        *&v12[16 * v38 + 32] = v43;
        v44 = v38 + 2;
        if (v39 < v44)
        {
          v70 = v41.u32[0];
          v76 = v41;
          v60 = sub_23A9388A8((v37 > 1), v44, 1, v12);
          v42 = v70;
          v41 = v76;
          v12 = v60;
        }

        v45.i64[1] = v64.n128_i64[1];
        DWORD1(v42) = v64.n128_u32[0];
        DWORD2(v42) = v41.i32[1];
        *(v12 + 2) = v44;
        *&v12[16 * v40 + 32] = v42;
        v47 = *(v11 + 2);
        v46 = *(v11 + 3);
        v48 = v46 >> 1;
        v49 = v47 + 1;
        if (v46 >> 1 <= v47)
        {
          v77 = v41;
          v61 = sub_23A9388A8((v46 > 1), v47 + 1, 1, v11);
          v41 = v77;
          v11 = v61;
          v46 = *(v61 + 3);
          v48 = v46 >> 1;
        }

        *v45.i8 = vsub_f32(v41, v5);
        v50 = vmul_f32(*v45.i8, *v45.i8);
        v50.i32[0] = vadd_f32(v50, vdup_lane_s32(v50, 1)).u32[0];
        v51 = vrsqrte_f32(v50.u32[0]);
        v52 = vmul_f32(v51, vrsqrts_f32(v50.u32[0], vmul_f32(v51, v51)));
        *v45.i8 = vsub_f32(0, vmul_n_f32(*v45.i8, vmul_f32(v52, vrsqrts_f32(v50.u32[0], vmul_f32(v52, v52))).f32[0]));
        v53 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v45, v45)), 0);
        *(v11 + 2) = v49;
        *&v11[16 * v47 + 32] = v53;
        v54 = v47 + 2;
        if (v48 < v54)
        {
          v74 = v53;
          v55 = sub_23A9388A8((v46 > 1), v54, 1, v11);
          v53 = v74;
          v11 = v55;
        }

        *(v11 + 2) = v54;
        *&v11[16 * v49 + 32] = v53;
      }

      if (a2 == v6)
      {
        v62 = v78;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v62 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
LABEL_32:
  type metadata accessor for RoomCaptureMesh();
  v63 = swift_allocObject();
  v63[2] = v12;
  v63[3] = v11;
  v63[4] = v62;
}

void sub_23A8F4604(uint64_t a1, __n128 a2, float a3, float a4)
{
  v4 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  if (v5 >= v6)
  {
LABEL_34:
    type metadata accessor for RoomCaptureMesh();
    v64 = swift_allocObject();
    v64[2] = v8;
    v64[3] = v7;
    v64[4] = v4;
  }

  else
  {
    v10 = a2.n128_u64[0];
    v11 = 0;
    v66 = *(a1 + 24);
    a2.n128_u32[0] = *(a1 + 28);
    v65 = a2;
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v11 * a4;
      v13 = v5 + v12;
      v14 = (v5 + v12) + a4;
      v15 = v14 >= v6 ? v6 : (v5 + v12) + a4;
      v72 = cosf(v5 + v12);
      v16 = sinf(v13);
      v17 = *(v8 + 2);
      if (HIDWORD(v17))
      {
        break;
      }

      v68 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_23A9388A8(0, v17 + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      v21 = v19 >> 1;
      v22 = v20 + 1;
      if (v19 >> 1 <= v20)
      {
        v8 = sub_23A9388A8((v19 > 1), v20 + 1, 1, v8);
        v19 = *(v8 + 3);
        v21 = v19 >> 1;
      }

      *v18.i8 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v68), LODWORD(v72)), a3), v10);
      v23 = v18.u32[0];
      v24 = v18.u32[0];
      DWORD1(v24) = v66;
      DWORD2(v24) = v18.i32[1];
      *(v8 + 2) = v22;
      *&v8[16 * v20 + 32] = v24;
      v25 = v20 + 2;
      v73 = v18;
      if (v21 < v25)
      {
        v69 = v18.u32[0];
        v57 = sub_23A9388A8((v19 > 1), v25, 1, v8);
        v23 = v69;
        v18.i32[1] = v73.i32[1];
        v8 = v57;
      }

      DWORD1(v23) = v65.n128_u32[0];
      DWORD2(v23) = v18.i32[1];
      *(v8 + 2) = v25;
      *&v8[16 * v22 + 32] = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23A9388A8(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      v28 = v26 >> 1;
      v29 = v27 + 1;
      v30 = v73;
      if (v26 >> 1 <= v27)
      {
        v58 = sub_23A9388A8((v26 > 1), v27 + 1, 1, v7);
        v30 = v73;
        v7 = v58;
        v26 = *(v58 + 3);
        v28 = v26 >> 1;
      }

      *v30.i8 = vsub_f32(*v30.i8, v10);
      v31 = vmul_f32(*v30.i8, *v30.i8);
      v31.i32[0] = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
      v32 = vrsqrte_f32(v31.u32[0]);
      v33 = vmul_f32(v32, vrsqrts_f32(v31.u32[0], vmul_f32(v32, v32)));
      *v30.i8 = vsub_f32(0, vmul_n_f32(*v30.i8, vmul_f32(v33, vrsqrts_f32(v31.u32[0], vmul_f32(v33, v33))).f32[0]));
      v34 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v30, v30)), 0);
      *(v7 + 2) = v29;
      *&v7[16 * v27 + 32] = v34;
      v35 = v27 + 2;
      if (v28 < v35)
      {
        v75 = v34;
        v59 = sub_23A9388A8((v26 > 1), v35, 1, v7);
        v34 = v75;
        v7 = v59;
      }

      *(v7 + 2) = v35;
      *&v7[16 * v29 + 32] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23AA12260;
      *(inited + 32) = v17;
      if (v17 >= 0xFFFFFFFE)
      {
        goto LABEL_36;
      }

      *(inited + 36) = v17 + 2;
      v37 = v17 + 3;
      if (v17 >= 0xFFFFFFFD)
      {
        goto LABEL_37;
      }

      *(inited + 40) = v37;
      *(inited + 44) = v17;
      *(inited + 48) = v37;
      *(inited + 52) = v17 + 1;
      sub_23A911A8C(inited);
      if (v15 == v6)
      {
        v74 = cosf(v15);
        v38 = sinf(v15);
        v40 = *(v8 + 2);
        v39 = *(v8 + 3);
        v41 = v39 >> 1;
        v42 = v40 + 1;
        if (v39 >> 1 <= v40)
        {
          v70 = v38;
          v60 = sub_23A9388A8((v39 > 1), v40 + 1, 1, v8);
          v38 = v70;
          v8 = v60;
          v39 = *(v60 + 3);
          v41 = v39 >> 1;
        }

        v43 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v38), LODWORD(v74)), a3), v10);
        v44 = v43.u32[0];
        v45 = v43.u32[0];
        DWORD1(v45) = v66;
        DWORD2(v45) = v43.i32[1];
        *(v8 + 2) = v42;
        *&v8[16 * v40 + 32] = v45;
        v46 = v40 + 2;
        if (v41 < v46)
        {
          v71 = v43.u32[0];
          v76 = v43;
          v61 = sub_23A9388A8((v39 > 1), v46, 1, v8);
          v44 = v71;
          v43 = v76;
          v8 = v61;
        }

        v47.i64[1] = v65.n128_i64[1];
        DWORD1(v44) = v65.n128_u32[0];
        DWORD2(v44) = v43.i32[1];
        *(v8 + 2) = v46;
        *&v8[16 * v42 + 32] = v44;
        v49 = *(v7 + 2);
        v48 = *(v7 + 3);
        v50 = v48 >> 1;
        v51 = v49 + 1;
        if (v48 >> 1 <= v49)
        {
          v77 = v43;
          v62 = sub_23A9388A8((v48 > 1), v49 + 1, 1, v7);
          v43 = v77;
          v7 = v62;
          v48 = *(v62 + 3);
          v50 = v48 >> 1;
        }

        *v47.i8 = vsub_f32(v43, v10);
        v52 = vmul_f32(*v47.i8, *v47.i8);
        v52.i32[0] = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
        v53 = vrsqrte_f32(v52.u32[0]);
        v54 = vmul_f32(v53, vrsqrts_f32(v52.u32[0], vmul_f32(v53, v53)));
        *v47.i8 = vsub_f32(0, vmul_n_f32(*v47.i8, vmul_f32(v54, vrsqrts_f32(v52.u32[0], vmul_f32(v54, v54))).f32[0]));
        v55 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v47, v47)), 0);
        *(v7 + 2) = v51;
        *&v7[16 * v49 + 32] = v55;
        v56 = v49 + 2;
        if (v50 < v56)
        {
          v78 = v55;
          v63 = sub_23A9388A8((v48 > 1), v56, 1, v7);
          v55 = v78;
          v7 = v63;
        }

        *(v7 + 2) = v56;
        *&v7[16 * v51 + 32] = v55;
      }

      if (__OFADD__(v11, 1))
      {
        goto LABEL_38;
      }

      ++v11;
      if (v14 >= v6)
      {
        v4 = v79;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }
}

void *sub_23A8F4B4C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, __n128 a5)
{
  v112 = a4;
  v109 = a3;
  v124 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v105 - v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v15 = *(v14 + 24);
  v16 = objc_opt_self();
  v17 = [v16 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v19 = v18;
  v20 = *(v8 + 8);
  v20(v11, v7);
  v21 = v19;
  v22 = *(v14 + 28);
  v23 = [v16 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v25 = v24;
  v20(v11, v7);
  v26 = vmul_n_f32(COERCE_FLOAT32X2_T(--0.0000305175998), v124.n128_f32[0]);
  v116 = type metadata accessor for CurvedElement();
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *&v25 = v25;
  *(v27 + 20) = LODWORD(v25);
  *(v27 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA11BB0;
  v105[1] = v27;
  *(inited + 32) = v27;
  if (a2 >> 62)
  {
    goto LABEL_101;
  }

  v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
LABEL_3:
    v111 = a2 & 0xC000000000000001;
    v107 = a2 & 0xFFFFFFFFFFFFFF8;
    v108 = a2;
    v106 = a2 + 32;

    v30 = 0;
    v110 = v29;
    while (1)
    {
      if (v111)
      {
        v32 = MEMORY[0x23EE90360](v30, v108);
        v33 = __OFADD__(v30, 1);
        v34 = v30 + 1;
        if (v33)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (v30 >= *(v107 + 16))
        {
          goto LABEL_100;
        }

        v32 = *(v106 + 8 * v30);

        v33 = __OFADD__(v30, 1);
        v34 = v30 + 1;
        if (v33)
        {
          goto LABEL_99;
        }
      }

      v113 = v34;
      if (!(inited >> 62))
      {
        v35 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          break;
        }

        goto LABEL_4;
      }

      v35 = sub_23AA0D7F4();
      if (v35)
      {
        break;
      }

LABEL_4:
      v31 = MEMORY[0x277D84F90];
LABEL_5:

      inited = v31;
      v30 = v113;
      if (v113 == v110)
      {
        goto LABEL_103;
      }
    }

    v118 = inited;
    v117 = v32;
    v120 = v35;
    v36 = 0;
    if ((inited & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x277D84F90];
      while (1)
      {
        v37 = MEMORY[0x23EE90360](v36, inited);
        v33 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v33)
        {
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
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
          v29 = sub_23AA0D7F4();
          if (!v29)
          {
            goto LABEL_102;
          }

          goto LABEL_3;
        }

        v124.n128_u64[0] = v37;
        v39 = sub_23A8DF60C(v32);
        a2 = v39;
        v40 = v39 >> 62;
        if (v39 >> 62)
        {
          v41 = sub_23AA0D7F4();
        }

        else
        {
          v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = v31 >> 62;
        if (v31 >> 62)
        {
          v59 = sub_23AA0D7F4();
          v44 = v59 + v41;
          if (__OFADD__(v59, v41))
          {
            goto LABEL_88;
          }
        }

        else
        {
          v43 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v44 = v43 + v41;
          if (__OFADD__(v43, v41))
          {
            goto LABEL_88;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v42)
          {
            goto LABEL_30;
          }

          v45 = v31 & 0xFFFFFFFFFFFFFF8;
          if (v44 <= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v42)
          {
LABEL_30:
            sub_23AA0D7F4();
            goto LABEL_31;
          }

          v45 = v31 & 0xFFFFFFFFFFFFFF8;
        }

        v46 = *(v45 + 16);
LABEL_31:
        v31 = sub_23AA0D8D4();
        v45 = v31 & 0xFFFFFFFFFFFFFF8;
LABEL_32:
        v123 = v38;
        v47 = *(v45 + 16);
        v48 = *(v45 + 24);
        if (v40)
        {
          v50 = v45;
          v51 = sub_23AA0D7F4();
          v45 = v50;
          v49 = v51;
          if (v51)
          {
LABEL_36:
            if (((v48 >> 1) - v47) < v41)
            {
              goto LABEL_90;
            }

            v52 = v45 + 8 * v47 + 32;
            v122 = v45;
            if (v40)
            {
              if (v49 < 1)
              {
                goto LABEL_96;
              }

              v119 = v41;
              v121 = v31;
              sub_23A8F5704();
              for (i = 0; i != v49; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED38, &unk_23AA122E0);
                v54 = sub_23A9DC308(v125, i, a2);
                v56 = *v55;

                (v54)(v125, 0);
                *(v52 + 8 * i) = v56;
              }

              swift_unknownObjectRelease();

              v31 = v121;
              inited = v118;
              v32 = v117;
              v35 = v120;
              v41 = v119;
            }

            else
            {
              swift_arrayInitWithCopy();

              swift_unknownObjectRelease();
            }

            v36 = v123;
            if (v41 > 0)
            {
              v57 = *(v122 + 16);
              v33 = __OFADD__(v57, v41);
              v58 = v57 + v41;
              if (v33)
              {
                goto LABEL_94;
              }

              *(v122 + 16) = v58;
            }

            goto LABEL_17;
          }
        }

        else
        {
          v49 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v49)
          {
            goto LABEL_36;
          }
        }

        swift_unknownObjectRelease();
        v36 = v123;
        if (v41 > 0)
        {
          goto LABEL_89;
        }

LABEL_17:
        if (v36 == v35)
        {
          goto LABEL_5;
        }
      }
    }

    v122 = inited & 0xFFFFFFFFFFFFFF8;
    v119 = inited + 32;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v36 >= *(v122 + 16))
      {
        goto LABEL_91;
      }

      v61 = *(v119 + 8 * v36);

      v62 = sub_23A8DF60C(v32);
      v63 = v62;
      v64 = v62 >> 62;
      if (v62 >> 62)
      {
        a2 = sub_23AA0D7F4();
      }

      else
      {
        a2 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = v31 >> 62;
      if (v31 >> 62)
      {
        v81 = sub_23AA0D7F4();
        v67 = v81 + a2;
        if (__OFADD__(v81, a2))
        {
          goto LABEL_92;
        }
      }

      else
      {
        v66 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v67 = v66 + a2;
        if (__OFADD__(v66, a2))
        {
          goto LABEL_92;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v123 = v61;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v65)
        {
          goto LABEL_65;
        }

        v69 = v31 & 0xFFFFFFFFFFFFFF8;
        if (v67 <= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v65)
        {
LABEL_65:
          sub_23AA0D7F4();
          goto LABEL_66;
        }

        v69 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      v70 = *(v69 + 16);
LABEL_66:
      v31 = sub_23AA0D8D4();
      v69 = v31 & 0xFFFFFFFFFFFFFF8;
LABEL_67:
      v124.n128_u64[0] = a2;
      v71 = *(v69 + 16);
      v72 = *(v69 + 24);
      if (v64)
      {
        a2 = sub_23AA0D7F4();
        if (a2)
        {
LABEL_71:
          if (((v72 >> 1) - v71) < v124.n128_i64[0])
          {
            goto LABEL_95;
          }

          v73 = v69 + 8 * v71 + 32;
          if (v64)
          {
            if (a2 < 1)
            {
              goto LABEL_98;
            }

            v114 = v69;
            v115 = v36;
            v121 = v31;
            sub_23A8F5704();
            v75 = 0;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED38, &unk_23AA122E0);
              v76 = sub_23A9DC308(v125, v75, v63);
              v78 = *v77;

              (v76)(v125, 0);
              *(v73 + 8 * v75++) = v78;
            }

            while (a2 != v75);

            v31 = v121;
            inited = v118;
            v32 = v117;
            v36 = v115;
            v74 = v124.n128_u64[0];
            v69 = v114;
          }

          else
          {
            v74 = v124.n128_u64[0];
            swift_arrayInitWithCopy();
          }

          v60 = v120;
          if (v74 >= 1)
          {
            v79 = *(v69 + 16);
            v33 = __OFADD__(v79, v74);
            v80 = v79 + v74;
            if (v33)
            {
              goto LABEL_97;
            }

            *(v69 + 16) = v80;
          }

          goto LABEL_52;
        }
      }

      else
      {
        a2 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
          goto LABEL_71;
        }
      }

      v60 = v120;
      if (v124.n128_i64[0] > 0)
      {
        goto LABEL_93;
      }

LABEL_52:
      if (++v36 == v60)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_102:

  v31 = inited;
LABEL_103:
  v125[0] = MEMORY[0x277D84F90];
  v127 = MEMORY[0x277D84F90];
  v128 = MEMORY[0x277D84F90];
  if (v31 >> 62)
  {
    goto LABEL_129;
  }

  for (j = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_23AA0D7F4())
  {
    v83 = 0;
    v124.n128_u64[0] = v31 & 0xC000000000000001;
    v122 = v31 & 0xFFFFFFFFFFFFFF8;
    v120 = v31 + 32;
    v84 = *&v109;
    v121 = v31;
    v123 = j;
    while (1)
    {
      if (v124.n128_u64[0])
      {
        v89 = MEMORY[0x23EE90360](v83, v31);
        v33 = __OFADD__(v83++, 1);
        if (v33)
        {
          goto LABEL_126;
        }
      }

      else
      {
        if (v83 >= *(v122 + 16))
        {
          goto LABEL_128;
        }

        v89 = *(v120 + 8 * v83);

        v33 = __OFADD__(v83++, 1);
        if (v33)
        {
          goto LABEL_126;
        }
      }

      v90.n128_u64[0] = v12;
      if (v112)
      {
        sub_23A8F4604(v89, v90, v13, v84);
      }

      else
      {
        sub_23A8F40A8(v89, v109, v90, v13);
      }

      v92 = v91;
      v93 = *(v91 + 32);
      v94 = *(v93 + 16);
      if (v94)
      {
        break;
      }

      v96 = MEMORY[0x277D84F90];
LABEL_106:
      sub_23A911A8C(v96);
      v85 = *(v92 + 16);

      sub_23A9119A0(v86);
      v87 = *(v92 + 24);

      sub_23A9119A0(v88);

      if (v83 == j)
      {
        goto LABEL_130;
      }
    }

    v126 = MEMORY[0x277D84F90];
    sub_23A975E54(0, v94, 0);
    v95 = *(v125[0] + 16);
    if (HIDWORD(v95))
    {
      goto LABEL_127;
    }

    v96 = v126;
    v31 = v93 + 32;
    while (1)
    {
      v97 = *v31;
      v31 += 4;
      v98 = v97 + v95;
      if (__CFADD__(v97, v95))
      {
        break;
      }

      v126 = v96;
      v100 = *(v96 + 16);
      v99 = *(v96 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_23A975E54((v99 > 1), v100 + 1, 1);
        v96 = v126;
      }

      *(v96 + 16) = v100 + 1;
      *(v96 + 4 * v100 + 32) = v98;
      if (!--v94)
      {
        v31 = v121;
        j = v123;
        goto LABEL_106;
      }
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    ;
  }

LABEL_130:

  v101 = v125[0];
  v103 = v127;
  v102 = v128;
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  result[2] = v101;
  result[3] = v102;
  result[4] = v103;
  return result;
}

unint64_t sub_23A8F5704()
{
  result = qword_27DFAED40;
  if (!qword_27DFAED40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAED38, &unk_23AA122E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAED40);
  }

  return result;
}

uint64_t sub_23A8F5768(uint64_t a1, float a2)
{
  v4 = a1;
  if (a2 == 0.0)
  {

    return v4;
  }

  v6 = a1 + 16;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v8 ? v8 : v7;
      if (v12 > v7)
      {
        break;
      }

      v13 = *(v9 + 16 * v8);
      v14 = v8 + 1;
      v15 = vsubq_f32(v13, *(v6 + 16 * v12)).u64[0];
      v16.f32[0] = -*(&v15 + 1);
      v16.i32[1] = v15;
      v17 = vmul_f32(v16, v16);
      v18 = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
      if (v7 - 1 == v8)
      {
        v19 = 0;
      }

      else
      {
        v19 = v8 + 1;
      }

      v20 = vrsqrte_f32(v18);
      v21 = vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20)));
      LODWORD(v22) = vmul_f32(v21, vrsqrts_f32(v18, vmul_f32(v21, v21))).u32[0];
      v90 = v13;
      v23 = vsubq_f32(*(v9 + 16 * v19), v13).u64[0];
      v24.f32[0] = -*(&v23 + 1);
      v24.i32[1] = v23;
      v25 = vmul_f32(v24, v24);
      v26 = vmul_n_f32(v16, v22);
      v27 = vadd_f32(v25, vdup_lane_s32(v25, 1)).u32[0];
      v28 = vrsqrte_f32(v27);
      v29 = vmul_f32(v28, vrsqrts_f32(v27, vmul_f32(v28, v28)));
      v30 = vmul_n_f32(v24, vmul_f32(v29, vrsqrts_f32(v27, vmul_f32(v29, v29))).f32[0]);
      v31 = _simd_orient_vf2(v26, v30);
      v3.i32[0] = atan2f(v31, vaddv_f32(vmul_f32(v26, v30)));
      if (fabsf(v3.f32[0]) >= 2.0944)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_23A9388A8(0, *(v4 + 2) + 1, 1, v4);
        }

        v36 = v4;
        v37 = *(v4 + 2);
        v38 = v36;
        v39 = *(v36 + 3);
        v40 = v39 >> 1;
        v41 = v37 + 1;
        if (v39 >> 1 <= v37)
        {
          v38 = sub_23A9388A8((v39 > 1), v37 + 1, 1, v38);
          v39 = *(v38 + 3);
          v40 = v39 >> 1;
        }

        v42 = a2;
        v10 = v90;
        *&v43 = vadd_f32(*v90.f32, vmul_n_f32(v26, a2));
        *(&v43 + 1) = v90.u32[2];
        *(v38 + 2) = v41;
        *&v38[16 * v37 + 32] = v43;
        v34 = v37 + 2;
        if (v40 < (v37 + 2))
        {
          v45 = sub_23A9388A8((v39 > 1), v37 + 2, 1, v38);
          v42 = a2;
          v10 = v90;
          v38 = v45;
        }

        *(v38 + 2) = v34;
        *&v38[16 * v41 + 32] = v10;
        v44 = *(v38 + 3);
        v2 = (v37 + 3);
        if ((v37 + 3) > (v44 >> 1))
        {
          v46 = sub_23A9388A8((v44 > 1), v37 + 3, 1, v38);
          v10 = v90;
          v4 = v46;
          v32 = a2;
        }

        else
        {
          v32 = v42;
          v4 = v38;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_23A9388A8(0, *(v4 + 2) + 1, 1, v4);
        }

        v30 = vbsl_s8(vdup_lane_s32(vcgt_f32(v3, 0), 0), vsub_f32(vsub_f32(0, v26), v30), vadd_f32(v26, v30));
        v32 = a2 / vaddv_f32(vmul_f32(v26, v30));
        v34 = *(v4 + 2);
        v33 = *(v4 + 3);
        v2 = (v34 + 1);
        if (v34 >= v33 >> 1)
        {
          v86 = v32;
          v35 = sub_23A9388A8((v33 > 1), v34 + 1, 1, v4);
          v32 = v86;
          v4 = v35;
        }

        v10 = v90;
      }

      *&v11 = vadd_f32(*v10.f32, vmul_n_f32(v30, v32));
      *(&v11 + 1) = v10.u32[2];
      *(v4 + 2) = v2;
      *&v4[16 * v34 + 32] = v11;
      v8 = v14;
      if (v7 == v14)
      {
        goto LABEL_30;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);

    result = swift_deallocPartialClassInstance();
    __break(1u);
    return result;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_30:
  v47 = *(v4 + 2);
  if (!v47)
  {
    return v4;
  }

  type metadata accessor for CDTEdge();
  v48 = 0;
  v2 = 0;
  while (2)
  {
    if (v48 >= v47)
    {
      goto LABEL_76;
    }

    v49 = v4 + 32;
    if (v48 + 1 == v47)
    {
      v50 = 0;
    }

    else
    {
      v50 = v48 + 1;
    }

    v88 = *&v49[16 * v50];
    v91 = *&v4[16 * v48 + 32];
    swift_allocObject();
    v51 = sub_23A947224(v91, *&v88);
    v52 = v4;
    v53 = *(v4 + 2);
    if (!v53)
    {
      goto LABEL_77;
    }

    v54 = v51;
    v84 = v48 + 1;
    v85 = v52;
    v55 = (v52 + 16);
    while (1)
    {
      v56 = v47 - 1;
      if (v47 - 1 >= *v55)
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v47 % v53 >= *v55)
      {
        goto LABEL_74;
      }

      v89 = *&v55[2 * v47];
      v92 = *&v49[16 * (v47 % v53)];
      v57 = swift_allocObject();
      *(v57 + 16) = v89;
      *(v57 + 24) = v92.i64[0];
      v58 = vceq_f32(*&v89, *v92.f32);
      *(v57 + 32) = v58.i8[0] & v58.i8[4] & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v59 = swift_allocObject();
      *&v60 = v89;
      *(&v60 + 1) = v92.i64[0];
      *(v59 + 16) = xmmword_23AA11C10;
      *(v59 + 32) = v60;
      v93 = v59;

      sub_23A946A58(&v93);

      *(v57 + 40) = v93;
      v61 = *(v57 + 16);
      if (sub_23A8ED98C(v54, 0.0001, v61))
      {
        goto LABEL_39;
      }

      v62 = *(v57 + 24);
      if (sub_23A8ED98C(v54, 0.0001, v62))
      {
        goto LABEL_39;
      }

      v63 = v54[2];
      v64 = v54[3];
      v65 = vsub_f32(v61, v63);
      v66 = vrev64_s32(vsub_f32(v62, v63));
      v67 = vmul_f32(v65, v66);
      LODWORD(v68) = vsub_f32(v67, vdup_lane_s32(v67, 1)).u32[0];
      v69 = fabsf(v68);
      v70 = vmul_f32(vsub_f32(v61, v64), vrev64_s32(vsub_f32(v62, v64)));
      LODWORD(v71) = vsub_f32(v70, vdup_lane_s32(v70, 1)).u32[0];
      if (fabsf(v71) >= 1.4211e-14)
      {
        if (v71 <= 0.0)
        {
          if (v69 >= 1.4211e-14 && v68 <= 0.0)
          {
            goto LABEL_39;
          }
        }

        else if (v69 >= 1.4211e-14 && v68 > 0.0)
        {
          goto LABEL_39;
        }
      }

      else if (v69 < 1.4211e-14)
      {
        goto LABEL_39;
      }

      v72 = vsub_f32(v64, v63);
      LODWORD(v73) = vsub_f32(vmul_lane_f32(v72, v65, 1), vmul_lane_f32(v65, v72, 1)).u32[0];
      v74 = fabsf(v73);
      v75 = vmul_f32(v66, v72);
      LODWORD(v76) = vsub_f32(v75, vdup_lane_s32(v75, 1)).u32[0];
      if (fabsf(v76) < 1.4211e-14)
      {
        if (v74 >= 1.4211e-14)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      }

      if (v76 <= 0.0)
      {
        break;
      }

      if (v74 < 1.4211e-14 || v73 <= 0.0)
      {
        goto LABEL_60;
      }

LABEL_39:

      --v47;
      if (v48 == v56)
      {

        v77 = v48 + 1;
        goto LABEL_70;
      }
    }

    if (v74 >= 1.4211e-14 && v73 <= 0.0)
    {
      goto LABEL_39;
    }

LABEL_60:
    v77 = v48 + 1;
    if (v47 <= v84)
    {
      goto LABEL_78;
    }

    v78 = *v55;
    if (*v55 < v47)
    {
      goto LABEL_79;
    }

    v79 = v48 - v47 + 1;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_80;
    }

    v81 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v85;
    if (!isUniquelyReferenced_nonNull_native || v80 > *(v85 + 3) >> 1)
    {
      if (v78 <= v80)
      {
        v83 = v80;
      }

      else
      {
        v83 = v78;
      }

      v81 = sub_23A9388A8(isUniquelyReferenced_nonNull_native, v83, 1, v85);
      v94 = v81;
    }

    v85 = v81;
    sub_23A946190(v84, v47, 0);

LABEL_70:
    v4 = v85;
    v47 = *(v85 + 2);
    v48 = v77;
    if (v77 < v47)
    {
      continue;
    }

    return v4;
  }
}

uint64_t sub_23A8F5E40(unint64_t a1, double a2, float32_t a3, float32_t a4)
{
  v47.f32[0] = a3;
  v49.f32[0] = a4;
  v9 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v10 = sub_23AA0D7F4();
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_54;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((*(MEMORY[0x23EE90360](i, a1) + 48) & 4) != 0)
      {
        v12 = swift_unknownObjectRetain();
        MEMORY[0x23EE8FD70](v12);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = (a1 + 32);
    do
    {
      if ((*(*v14 + 48) & 4) != 0)
      {
        v15 = *v14;
        v16 = swift_retain_n();
        MEMORY[0x23EE8FD70](v16);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
      }

      ++v14;
      --v10;
    }

    while (v10);
  }

LABEL_18:
  v7 = -0.5;
  v58 = v9;
  sub_23A8F1F50(&v59);
  v10 = v59;
  v4 = v59 >> 62;
  if (v59 >> 62)
  {
LABEL_52:
    result = sub_23AA0D7F4();
  }

  else
  {
    result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v7 * *&a2;
  if (!result)
  {
LABEL_25:
    v54 = v6;
    if (!(v10 >> 62))
    {
LABEL_26:
      v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_27;
    }

LABEL_68:
    v21 = sub_23AA0D7F4();
LABEL_27:
    v22 = vmuls_lane_f32(v7, *&a2, 1);
    v23 = "tion";
    if (v21)
    {
      v18.f32[0] = v49.f32[0] * 0.0;
      v44 = v47.f32[0] * 0.0;
      v45 = v49.f32[0] * 0.0;
      v18.f32[1] = v47.f32[0] * 0.0;
      v18.i32[2] = v47.i32[0];
      v24 = vaddq_f32(vtrn1q_s32(LODWORD(v22), LODWORD(v22)), v18);
      v18.i32[3] = v49.i32[0];
      v24.i32[3] = vsubq_f32(0, v18).i32[3];
      v25 = 1;
      v43 = v24;
      v24.i32[3] = 0;
      v42 = v24;
      v4 = 0;
      do
      {
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x23EE90360](v4, v10);
            v27 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v26 = *(v10 + 8 * v4 + 32);

            v27 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }
          }

          v28 = *(v26 + 16);
          a2 = *(v26 + 32);
          v29 = v42;
          v30 = v42;
          v30.f32[0] = v44 + *&v28;
          v49 = v30;
          v29.f32[0] = v44 + v54;
          v30.f32[0] = v45 + v54;
          v30.i32[1] = v43.i32[0];
          v30.i64[1] = v43.u32[3];
          v55 = v30;
          v30.i32[3] = 0;
          v30.f32[0] = v45 + *&v28;
          v30.i32[1] = v43.i32[0];
          v46 = v30;
          v47 = v29;
          type metadata accessor for RoomCaptureQuad();
          v31 = swift_allocObject();
          v31[1] = v49;
          v31[2] = v47;
          v31[3] = v55;
          v31[4] = v46;
          v31[5] = xmmword_23AA12210;
          MEMORY[0x23EE8FD70]();
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v56 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23AA0D314();
          }

          sub_23AA0D334();
          v32 = v58;
          v33 = *(v26 + 48);

          v54 = *&a2;
          if ((v33 & 2) == 0)
          {
            break;
          }

          v25 = 0;
          if (v27 == v21)
          {

            return v32;
          }

          v4 = v27;
        }

        ++v4;
      }

      while (v27 != v21);

      v23 = "RoomCaptureMeshDimensionsRestriction" + 32;
      if ((v25 & 1) == 0)
      {
        return v32;
      }
    }

    else
    {
      v52 = v22;

      v34.f32[0] = v49.f32[0] * 0.0;
      v44 = v47.f32[0] * 0.0;
      v45 = v49.f32[0] * 0.0;
      v34.f32[1] = v47.f32[0] * 0.0;
      v34.i32[2] = v47.i32[0];
      v35 = vaddq_f32(vtrn1q_s32(LODWORD(v52), LODWORD(v52)), v34);
      v34.i32[3] = v49.i32[0];
      v35.i32[3] = vsubq_f32(0, v34).i32[3];
      v43 = v35;
    }

    v36 = v43;
    v36.i32[3] = 0;
    v37 = v36;
    v37.f32[0] = (0.0 - v6) + v44;
    v53 = v37;
    v36.f32[0] = v44 + v54;
    v37.f32[0] = v45 + v54;
    v37.i32[1] = v43.i32[0];
    v37.i64[1] = v43.u32[3];
    v57 = v37;
    *&v38 = (0.0 - v6) + v45;
    DWORD1(v38) = v43.i32[0];
    *(&v38 + 1) = v43.u32[3];
    v48 = v38;
    v50 = v36;
    type metadata accessor for RoomCaptureQuad();
    v39 = swift_allocObject();
    v39[1] = v53;
    v39[2] = v50;
    v39[3] = v57;
    v39[4] = v48;
    v39[5] = *(v23 + 33);
    MEMORY[0x23EE8FD70]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23AA0D314();
    }

    sub_23AA0D334();
    return v58;
  }

  v5 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_54:
    result = MEMORY[0x23EE90360](0, v10);
    v20 = result;
    if ((*(result + 48) & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v20 = *(v10 + 32);

  if ((*(v20 + 48) & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_55:
  LODWORD(v54) = *(v20 + 32);
  if (!v4)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

    __break(1u);
  }

  result = sub_23AA0D7F4();
  if (!result)
  {
    goto LABEL_70;
  }

  result = sub_23AA0D7F4();
  if (!result)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_60:
  if (v5)
  {
    MEMORY[0x23EE90360](0, v10);
    swift_unknownObjectRelease();
    v41 = v10 & 0xFFFFFFFFFFFFFF8;
    if (!v4)
    {
LABEL_62:
      result = *(v41 + 16);
      goto LABEL_66;
    }

LABEL_65:
    result = sub_23AA0D7F4();
LABEL_66:
    if (result)
    {
      sub_23A945F68(0, 1);

      v10 = v59;
      if (!(v59 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_68;
    }

    goto LABEL_72;
  }

  v41 = v10 & 0xFFFFFFFFFFFFFF8;
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (!v4)
    {
      goto LABEL_62;
    }

    goto LABEL_65;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_23A8F648C(unint64_t result, __n128 a2, __n128 a3, float32_t a4, double a5, __n128 a6, double a7, double a8, __n128 a9)
{
  v10 = a3.n128_f32[0];
  v11 = result;
  v12 = a2.n128_u64[0];
  v250 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    result = sub_23AA0D7F4();
    v13 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_50:
    a6.n128_f32[0] = v10 * 0.0;
    v65 = v10 + 0.0;
    v15 = a4 * 0.0;
    v66 = 0.0 - a4;
    goto LABEL_51;
  }

  v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_50;
  }

LABEL_3:
  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    a2.n128_f32[0] = v10 * 0.0;
    v231 = a2.n128_u64[0];
    v15 = a4 * 0.0;
    v244 = 0.0 - a4;
    v246 = v10 + 0.0;
    a2.n128_f32[0] = (v10 + 0.0) + -1.0;
    v156 = a2;
    do
    {
      v16 = MEMORY[0x23EE90360](v14, v11);
      v19.i64[0] = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *&v231;
      v22 = *&v231 + v19.f32[1];
      v174 = *&v231 + v19.f32[1];
      v199 = v19.f32[0];
      if ((*(v16 + 48) & 4) != 0)
      {
        v31.f32[0] = *&v231 + *&v20;
        v19.i32[3] = 0;
        v19.f32[0] = *&v231 + *&v20;
        v28 = COERCE_UNSIGNED_INT(*&v231 + *&v20);
        v28.f32[1] = *&v231 + v19.f32[1];
        v26 = v10 + 0.0;
        v28.f32[2] = v10 + 0.0;
        HIDWORD(v29) = 0;
        *&v29 = v15 + *&v20;
        v30 = COERCE_UNSIGNED_INT(v15 + *&v20);
        v169 = v15 + v19.f32[1];
        v30.f32[1] = v15 + v19.f32[1];
        v27 = 0.0 - a4;
        v30.f32[2] = 0.0 - a4;
      }

      else
      {
        v23.f32[0] = *&v231 + v19.f32[0];
        v23.f32[1] = *&v231 + v19.f32[1];
        v23.i64[1] = LODWORD(v246);
        v163 = v23;
        v221 = *&v231 + *&v20;
        v24.f32[0] = *&v231 + *&v20;
        v183 = COERCE_UNSIGNED_INT(*&v231 + *&v20);
        v24.f32[1] = *&v231 + v19.f32[1];
        v24.i64[1] = LODWORD(v246);
        v235 = v24;
        v182 = HIDWORD(*(v16 + 32));
        v23.f32[0] = v15 + *&v20;
        v214 = COERCE_UNSIGNED_INT(v15 + *&v20);
        v23.f32[1] = v15 + v19.f32[1];
        v23.i64[1] = LODWORD(v244);
        v206 = v23;
        v19.f32[0] = v15 + v19.f32[0];
        v169 = v15 + v19.f32[1];
        v19.f32[1] = v15 + v19.f32[1];
        v19.i64[1] = LODWORD(v244);
        v158 = v19;
        type metadata accessor for RoomCaptureQuad();
        v25 = swift_allocObject();
        v25[1] = v163;
        v25[2] = v235;
        v25[3] = v206;
        v25[4] = v158;
        v25[5] = xmmword_23AA12220;
        MEMORY[0x23EE8FD70]();
        if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v27 = 0.0 - a4;
        v26 = v10 + 0.0;
        v21 = *&v231;
        v28 = v235;
        v22 = v174;
        HIDWORD(v20) = v182;
        v19 = v183;
        v30 = v206;
        v29 = v214;
        v31.f32[0] = v221;
      }

      *&v18 = v21 + *(&v20 + 1);
      v222 = v18;
      v19.f32[1] = v21 + *(&v20 + 1);
      v19.f32[2] = v26;
      v32 = vsubq_f32(v19, v28);
      v33 = vmulq_f32(v32, v32);
      v184 = v19;
      v34 = v19;
      if ((v33.f32[2] + vaddv_f32(*v33.f32)) < 1.4211e-14)
      {
        v34.f32[0] = v31.f32[0] + 0.0;
        v34.f32[1] = v22 + 1.0;
        v34.i64[1] = LODWORD(v26);
      }

      v236 = v28;
      v35 = vsubq_f32(v30, v28);
      v36 = vmulq_f32(v35, v35);
      if ((v36.f32[2] + vaddv_f32(*v36.f32)) < 1.4211e-14)
      {
        v30.f32[0] = v31.f32[0] + 0.0;
        v30.f32[1] = v22 + 0.0;
        v33.i32[3] = v156.n128_i32[3];
        v30.i64[1] = v156.n128_u32[0];
      }

      v164 = v15 + *(&v20 + 1);
      *(&v29 + 1) = v15 + *(&v20 + 1);
      *(&v29 + 2) = v27;
      v207 = v30;
      v215 = v29;
      v31.f32[1] = v22;
      *v17.f32 = vsub_f32(*v34.f32, v31);
      v17.f32[2] = v34.f32[2] - v26;
      *v33.f32 = vsub_f32(*v30.f32, v31);
      v33.f32[2] = v30.f32[2] - v26;
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v17)), v33, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v39 = vmulq_f32(v37, v37);
      *&v40 = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
      *v39.f32 = vrsqrte_f32(v40);
      *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
      v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
      v41.i32[3] = v198;
      v179 = v41;
      v191 = v34;
      type metadata accessor for RoomCaptureQuad();
      v42 = swift_allocObject();
      v42[1] = v236;
      v42[2] = v191;
      v42[3] = v215;
      v42[4] = v207;
      v42[5] = v179;
      MEMORY[0x23EE8FD70]();
      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v61 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v159 = *&v231 + v199;
      v43.f32[0] = *&v231 + v199;
      v192 = COERCE_UNSIGNED_INT(*&v231 + v199);
      v43.i32[1] = v222;
      v43.i64[1] = LODWORD(v246);
      v44.f32[0] = v15 + v199;
      v200 = COERCE_UNSIGNED_INT(v15 + v199);
      v208 = v43;
      v44.f32[1] = v164;
      v44.i64[1] = LODWORD(v244);
      v237 = v44;
      v45 = swift_allocObject();
      v45[1] = v184;
      v45[2] = v208;
      v45[3] = v237;
      v45[4] = v215;
      v45[5] = xmmword_23AA12210;
      MEMORY[0x23EE8FD70]();
      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v62 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v46 = v192;
      v46.f32[1] = v174;
      v46.f32[2] = v10 + 0.0;
      v47 = vsubq_f32(v46, v208);
      v48 = vmulq_f32(v47, v47);
      v49.f32[0] = v159;
      if ((v48.f32[2] + vaddv_f32(*v48.f32)) < 1.4211e-14)
      {
        v46.i32[3] = 0;
        v46.f32[0] = v159 + 0.0;
        v46.f32[1] = *&v222 + 1.0;
        v46.f32[2] = v10 + 0.0;
      }

      v50 = v237;
      v51 = vsubq_f32(v237, v208);
      v52 = vmulq_f32(v51, v51);
      if ((v52.f32[2] + vaddv_f32(*v52.f32)) < 1.4211e-14)
      {
        v50.f32[0] = v159 + 0.0;
        v50.f32[1] = *&v222 + 0.0;
        v50.i64[1] = v156.n128_u32[0];
      }

      v238 = v50;
      v53 = v200;
      v53.f32[1] = v169;
      v53.f32[2] = 0.0 - a4;
      v201 = v53;
      v54.i32[3] = HIDWORD(v222);
      v49.i32[1] = v222;
      *v54.f32 = vsub_f32(*v46.f32, v49);
      v54.f32[2] = v46.f32[2] - v246;
      *v53.f32 = vsub_f32(*v50.f32, v49);
      v53.f32[2] = v50.f32[2] - v246;
      v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v54)), v53, vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL));
      v56 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
      v57 = vmulq_f32(v55, v55);
      *&v58 = v57.f32[1] + (v57.f32[2] + v57.f32[0]);
      *v57.f32 = vrsqrte_f32(v58);
      *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
      v59 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
      v59.i32[3] = v173;
      v223 = v59;
      v193 = v46;
      v60 = swift_allocObject();
      v60[1] = v208;
      v60[2] = v193;
      v60[3] = v201;
      v60[4] = v238;
      v60[5] = v223;
      MEMORY[0x23EE8FD70]();
      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
      }

      ++v14;
      sub_23AA0D334();
      swift_unknownObjectRelease();
      v198 = v179.i32[3];
      v173 = v223.i32[3];
    }

    while (v13 != v14);
    v66 = 0.0 - a4;
    v65 = v10 + 0.0;
    a6.n128_u64[0] = v231;
  }

  else
  {
    v67 = v11 + 32;
    a6.n128_f32[0] = v10 * 0.0;
    v65 = v10 + 0.0;
    v15 = a4 * 0.0;
    v66 = 0.0 - a4;
    a2.n128_f32[0] = (v10 + 0.0) + -1.0;
    v157 = a2;
    v247 = v10 + 0.0;
    v232 = a6;
    do
    {
      v68.i64[0] = *(*v67 + 16);
      a9.n128_u64[0] = *(*v67 + 32);
      v69 = v68.f32[1];
      v175 = a9;
      v180 = a6.n128_f32[0] + v68.f32[1];
      v194 = v68.f32[0];
      if ((*(*v67 + 48) & 4) != 0)
      {
        v68.f32[0] = a6.n128_f32[0] + a9.n128_f32[0];
        v203 = COERCE_UNSIGNED_INT(a6.n128_f32[0] + a9.n128_f32[0]);
        v210 = a6.n128_f32[0] + a9.n128_f32[0];
        v68.f32[1] = a6.n128_f32[0] + v68.f32[1];
        v68.i64[1] = LODWORD(v65);
        v225 = v68;
        v81.f32[0] = v15 + a9.n128_f32[0];
        v239 = COERCE_UNSIGNED_INT(v15 + a9.n128_f32[0]);
        v170 = v15 + v69;
        v81.f32[1] = v15 + v69;
        v81.i64[1] = LODWORD(v66);
        v216 = v81;

        v80 = v175;
        v76 = v232;
        v75 = v10 + 0.0;
        v79 = v225;
        v77 = v203;
        v78.f32[0] = v210;
      }

      else
      {
        *&v70 = a6.n128_f32[0] + v68.f32[0];
        *(&v70 + 1) = a6.n128_f32[0] + v68.f32[1];
        *(&v70 + 1) = LODWORD(v65);
        v165 = v70;
        v71.f32[0] = a6.n128_f32[0] + a9.n128_f32[0];
        v202 = COERCE_UNSIGNED_INT(a6.n128_f32[0] + a9.n128_f32[0]);
        v209 = a6.n128_f32[0] + a9.n128_f32[0];
        v71.f32[1] = a6.n128_f32[0] + v68.f32[1];
        v71.i64[1] = LODWORD(v65);
        v224 = v71;
        v72.f32[0] = v15 + a9.n128_f32[0];
        v239 = COERCE_UNSIGNED_INT(v15 + a9.n128_f32[0]);
        v72.f32[1] = v15 + v68.f32[1];
        v72.i64[1] = LODWORD(v66);
        v216 = v72;
        v72.f32[0] = v15 + v68.f32[0];
        v170 = v15 + v68.f32[1];
        v72.f32[1] = v15 + v68.f32[1];
        v160 = v72;
        type metadata accessor for RoomCaptureQuad();
        v73 = swift_allocObject();
        v73[1] = v165;
        v73[2] = v224;
        v73[3] = v216;
        v73[4] = v160;
        v73[5] = xmmword_23AA12220;

        MEMORY[0x23EE8FD70](v74);
        if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v116 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();
        v75 = v10 + 0.0;
        v76 = v232;
        v77 = v202;
        v78.f32[0] = v209;
        v79 = v224;
        v80 = v175;
      }

      v76.n128_f32[0] = v76.n128_f32[0] + v80.f32[1];
      v211 = v76;
      v77.i32[1] = v76.n128_u32[0];
      v77.f32[2] = v75;
      v82 = vsubq_f32(v77, v79);
      v83 = vmulq_f32(v82, v82);
      v84 = v77;
      if ((v83.f32[2] + vaddv_f32(*v83.f32)) < 1.4211e-14)
      {
        v84.f32[0] = v78.f32[0] + 0.0;
        v84.f32[1] = v180 + 1.0;
        v84.i64[1] = LODWORD(v75);
      }

      v204 = v77;
      v226 = v79;
      v85 = v216;
      v86 = vsubq_f32(v216, v79);
      v87 = vmulq_f32(v86, v86);
      v88 = v239;
      if ((v87.f32[2] + vaddv_f32(*v87.f32)) < 1.4211e-14)
      {
        v85.f32[0] = v78.f32[0] + 0.0;
        v85.f32[1] = v180 + 0.0;
        v83.i32[3] = v157.n128_i32[3];
        v85.i64[1] = v157.n128_u32[0];
      }

      v217 = v85;
      v166 = v15 + v80.f32[1];
      *(&v88 + 1) = v15 + v80.f32[1];
      *(&v88 + 2) = 0.0 - a4;
      v240 = v88;
      v78.f32[1] = v180;
      *v80.f32 = vsub_f32(*v84.f32, v78);
      v80.f32[2] = v84.f32[2] - v75;
      *v83.f32 = vsub_f32(*v85.f32, v78);
      v83.f32[2] = v85.f32[2] - v75;
      v89 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL), vnegq_f32(v80)), v83, vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL));
      v90 = vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL);
      v91 = vmulq_f32(v89, v89);
      *&v92 = v91.f32[1] + (v91.f32[2] + v91.f32[0]);
      *v91.f32 = vrsqrte_f32(v92);
      *v91.f32 = vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32)));
      v93 = vmulq_n_f32(v90, vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32))).f32[0]);
      v93.i32[3] = v190;
      v176 = v93;
      v185 = v84;
      type metadata accessor for RoomCaptureQuad();
      v94 = swift_allocObject();
      v94[1] = v226;
      v94[2] = v185;
      v94[3] = v240;
      v94[4] = v217;
      v94[5] = v176;
      MEMORY[0x23EE8FD70]();
      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v113 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v161 = v232.n128_f32[0] + v194;
      v95.f32[0] = v232.n128_f32[0] + v194;
      v186 = COERCE_UNSIGNED_INT(v232.n128_f32[0] + v194);
      v95.i32[1] = v211.n128_u32[0];
      v95.i64[1] = LODWORD(v247);
      v218 = v95;
      v96.f32[0] = v15 + v194;
      v195 = COERCE_UNSIGNED_INT(v15 + v194);
      v96.f32[1] = v166;
      v96.i64[1] = COERCE_UNSIGNED_INT(0.0 - a4);
      v227 = v96;
      v97 = swift_allocObject();
      v97[1] = v204;
      v97[2] = v218;
      v97[3] = v227;
      v97[4] = v240;
      v97[5] = xmmword_23AA12210;
      MEMORY[0x23EE8FD70]();
      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v114 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
      }

      sub_23AA0D334();
      v98 = v186;
      v98.f32[1] = v180;
      v98.f32[2] = v10 + 0.0;
      v99 = vsubq_f32(v98, v218);
      v100 = vmulq_f32(v99, v99);
      v101.f32[0] = v161;
      if ((v100.f32[2] + vaddv_f32(*v100.f32)) < 1.4211e-14)
      {
        v98.i32[3] = 0;
        v98.f32[0] = v161 + 0.0;
        v98.f32[1] = v211.n128_f32[0] + 1.0;
        v98.f32[2] = v10 + 0.0;
      }

      v102 = v227;
      v103 = vsubq_f32(v227, v218);
      v104 = vmulq_f32(v103, v103);
      if ((v104.f32[2] + vaddv_f32(*v104.f32)) < 1.4211e-14)
      {
        v102.f32[0] = v161 + 0.0;
        v102.f32[1] = v211.n128_f32[0] + 0.0;
        v102.i64[1] = v157.n128_u32[0];
      }

      v228 = v102;
      v105 = v195;
      v105.f32[1] = v170;
      v105.f32[2] = 0.0 - a4;
      v196 = v105;
      v106.i32[3] = v211.n128_i32[3];
      v101.i32[1] = v211.n128_u32[0];
      *v106.f32 = vsub_f32(*v98.f32, v101);
      v106.f32[2] = v98.f32[2] - v247;
      *v105.f32 = vsub_f32(*v102.f32, v101);
      v105.f32[2] = v102.f32[2] - v247;
      v107 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL), vnegq_f32(v106)), v105, vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL));
      v108 = vextq_s8(vuzp1q_s32(v107, v107), v107, 0xCuLL);
      v109 = vmulq_f32(v107, v107);
      *&v110 = v109.f32[1] + (v109.f32[2] + v109.f32[0]);
      *v109.f32 = vrsqrte_f32(v110);
      *v109.f32 = vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32)));
      v111 = vmulq_n_f32(v108, vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32))).f32[0]);
      v111.i32[3] = v173;
      v241 = v111;
      v187 = v98;
      v112 = swift_allocObject();
      v112[1] = v218;
      v112[2] = v187;
      v112[3] = v196;
      v112[4] = v228;
      v112[5] = v241;
      MEMORY[0x23EE8FD70]();
      if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v115 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23AA0D314();
      }

      sub_23AA0D334();

      v67 += 8;
      v190 = v176.i32[3];
      v173 = v241.i32[3];
      --v13;
      v66 = 0.0 - a4;
      v65 = v10 + 0.0;
      a6.n128_u64[0] = v232.n128_u64[0];
    }

    while (v13);
  }

LABEL_51:
  v233 = a6.n128_f32[0];
  v245 = LODWORD(v66);
  v248 = v65;
  v117 = vmul_f32(v12, 0xBF000000BF000000);
  v118 = vsub_f32(0, v117);
  v181 = v117.f32[0] + a6.n128_f32[0];
  v119.f32[0] = v117.f32[0] + a6.n128_f32[0];
  a3.n128_u64[0] = vadd_f32(v118, vdup_lane_s32(a6.n128_u64[0], 0));
  v229 = COERCE_UNSIGNED_INT(v117.f32[0] + a6.n128_f32[0]);
  v119.i32[1] = a3.n128_i32[1];
  v119.i64[1] = LODWORD(v65);
  v242 = v119;
  v120 = a3;
  v120.n128_u32[3] = 0;
  v167 = v120;
  v171 = v117.f32[1];
  v120.n128_u32[1] = a3.n128_u32[1];
  v172 = v120;
  v177 = a3.n128_u64[0];
  v120.n128_f32[2] = v65;
  v205 = v120;
  v212 = COERCE_UNSIGNED_INT(v118.f32[0] + v15);
  v121 = v212;
  v121.f32[1] = v118.f32[1] + v15;
  v121.f32[2] = v66;
  v188 = v121;
  v120.n128_f32[0] = v117.f32[0] + v15;
  v219 = COERCE_UNSIGNED_INT(v117.f32[0] + v15);
  v120.n128_f32[1] = v118.f32[1] + v15;
  v120.n128_u64[1] = LODWORD(v66);
  v197 = v120;
  type metadata accessor for RoomCaptureQuad();
  v122 = swift_allocObject();
  v122[1] = v242;
  v122[2] = v205;
  v122[3] = v188;
  v122[4] = v197;
  v122[5] = xmmword_23AA12220;
  MEMORY[0x23EE8FD70]();
  if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v153 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v123 = sub_23A8F5E40(v11, *&v12, v10, a4);
  sub_23A912060(v123);
  v124 = v167;
  v125 = v167;
  v234 = v171 + v233;
  v125.f32[1] = v234;
  v125.f32[2] = v248;
  v126 = v212;
  v126.f32[1] = v171 + v15;
  v126.i32[2] = v245;
  v213 = v126;
  v127 = vsubq_f32(v125, v205);
  v128 = vmulq_f32(v127, v127);
  if ((v128.f32[2] + vaddv_f32(*v128.f32)) < 1.4211e-14)
  {
    v124.f32[1] = v177.f32[1] + 1.0;
    v124.f32[2] = v248;
    v125 = v124;
  }

  v129 = vsubq_f32(v188, v205);
  v130 = vmulq_f32(v129, v129);
  v130.f32[0] = v130.f32[2] + vaddv_f32(*v130.f32);
  v126.i32[0] = 679477248;
  v131 = vdupq_lane_s32(*&vcgtq_f32(v126, v130), 0);
  v126.f32[0] = v248 + -1.0;
  v162 = v126;
  v168 = v125;
  v132 = v172;
  *&v132.i32[2] = v248 + -1.0;
  v189 = vbslq_s8(v131, v132, v188);
  *v131.f32 = vsub_f32(*v125.f32, v177);
  v131.f32[2] = v125.f32[2] - v248;
  *v126.f32 = vsub_f32(*v189.i8, v177);
  v126.f32[2] = *&v189.i32[2] - v248;
  v133 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v126, v126), v126, 0xCuLL), vnegq_f32(v131)), v126, vextq_s8(vuzp1q_s32(v131, v131), v131, 0xCuLL));
  v134 = vextq_s8(vuzp1q_s32(v133, v133), v133, 0xCuLL);
  v135 = vmulq_f32(v133, v133);
  *&v136 = v135.f32[1] + (v135.f32[2] + v135.f32[0]);
  *v135.f32 = vrsqrte_f32(v136);
  *v135.f32 = vmul_f32(*v135.f32, vrsqrts_f32(v136, vmul_f32(*v135.f32, *v135.f32)));
  v178 = vmulq_n_f32(v134, vmul_f32(*v135.f32, vrsqrts_f32(v136, vmul_f32(*v135.f32, *v135.f32))).f32[0]);
  v137 = swift_allocObject();
  v137[1] = v205;
  v137[2] = v168;
  v137[3] = v213;
  v137[4] = v189;
  v137[5] = v178;
  MEMORY[0x23EE8FD70]();
  if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v154 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v141 = v219;
  v140 = v229;
  v139 = v242;
  v140.f32[1] = v234;
  v140.f32[2] = v248;
  v141.f32[1] = v171 + v15;
  v141.i32[2] = v245;
  v142 = vsubq_f32(v242, v140);
  v143 = vmulq_f32(v142, v142);
  v144.f32[0] = v181;
  if ((v143.f32[2] + vaddv_f32(*v143.f32)) < 1.4211e-14)
  {
    v139.f32[0] = v181 + 0.0;
    v139.f32[1] = v234 + 1.0;
    v139.i64[1] = LODWORD(v248);
  }

  v230 = v140;
  v145 = vsubq_f32(v141, v140);
  v146 = vmulq_f32(v145, v145);
  if ((v146.f32[2] + vaddv_f32(*v146.f32)) < 1.4211e-14)
  {
    v141.f32[0] = v181 + 0.0;
    v141.f32[1] = v234 + 0.0;
    v146.i32[3] = v162.i32[3];
    v141.i64[1] = v162.u32[0];
  }

  v220 = v141;
  v144.f32[1] = v234;
  *v146.f32 = vsub_f32(*v139.f32, v144);
  v146.f32[2] = v139.f32[2] - v248;
  *v138.f32 = vsub_f32(*v141.f32, v144);
  v138.f32[2] = v141.f32[2] - v248;
  v147 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL), vnegq_f32(v146)), v138, vextq_s8(vuzp1q_s32(v146, v146), v146, 0xCuLL));
  v148 = vextq_s8(vuzp1q_s32(v147, v147), v147, 0xCuLL);
  v149 = vmulq_f32(v147, v147);
  *&v150 = v149.f32[1] + (v149.f32[2] + v149.f32[0]);
  *v149.f32 = vrsqrte_f32(v150);
  *v149.f32 = vmul_f32(*v149.f32, vrsqrts_f32(v150, vmul_f32(*v149.f32, *v149.f32)));
  v249 = vmulq_n_f32(v148, vmul_f32(*v149.f32, vrsqrts_f32(v150, vmul_f32(*v149.f32, *v149.f32))).f32[0]);
  v243 = v139;
  v151 = swift_allocObject();
  v151[1] = v230;
  v151[2] = v243;
  v151[3] = v197;
  v151[4] = v220;
  v151[5] = v249;
  MEMORY[0x23EE8FD70]();
  if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v250 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v155 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v152 = sub_23A982850(v250);

  return v152;
}

void *sub_23A8F76CC(float32x2_t *a1, char a2, float a3, float a4, float32x2_t a5, double a6, double a7, double a8, int32x4_t a9)
{
  *&v10 = a4;
  v12 = 1.0;
  if (a2)
  {
    v12 = 2.0;
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v14 = a1[1];
  *a9.i8 = a1[4];
  v15 = vmul_f32(v14, vrev64_s32(*a9.i8));
  if (fabsf(vsub_f32(v15, vdup_lane_s32(v15, 1)).f32[0] + -0.00000011921) < 0.00000011921)
  {
    return 0;
  }

  v16 = a1[3].f32[0];
  v17 = a1[2];
  v18 = a1[5];
  v19 = vadd_f32(*a1, a5);
  v20 = vadd_f32(v19, vand_s8(vmul_n_f32(v17, v16), vdup_n_s32(v13)));
  v21 = vsub_f32(v20, vmul_n_f32(v17, v12 * v16));
  v22 = vsub_f32(v20, vmul_n_f32(v18, a1[6].f32[0]));
  v19.f32[0] = -*&a9.i32[1];
  v23 = vzip1_s32(v19, *a9.i8);
  v24 = vmul_f32(v23, vsub_f32(v21, v22));
  v23.f32[0] = -v14.f32[1];
  v25 = vmul_f32(*a9.i8, vzip1_s32(v23, v14));
  v26 = vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25));
  v144 = v21;
  *v145.i8 = vadd_f32(v21, vmul_n_f32(v14, vdiv_f32(v26, vdup_lane_s32(v26, 1)).f32[0]));
  v27 = vsub_f32(*v145.i8, v20);
  v28 = vmul_f32(v27, v27);
  *v146.i8 = v22;
  v143 = v20;
  v29 = vsub_f32(vadd_f32(vsub_f32(v21, v20), v22), v20);
  v30 = vmul_f32(v29, v29);
  v31 = vadd_f32(vzip1_s32(v30, v28), vzip2_s32(v30, v28));
  if ((4.0 * v31.f32[0]) < v31.f32[1])
  {
    return 0;
  }

  *&v141 = a3;
  v142 = v10;
  v139 = a1[2];
  v140 = a1[1];
  v138 = a9;
  v33 = MEMORY[0x277D84F90];
  v155 = MEMORY[0x277D84F90];
  sub_23A975DC0(0, 4, 0);
  v34 = v155;
  v36 = *(v155 + 16);
  v35 = *(v155 + 24);
  v37 = v35 >> 1;
  v38 = v36 + 1;
  if (v35 >> 1 <= v36)
  {
    goto LABEL_159;
  }

  while (1)
  {
    LODWORD(v39) = v143;
    v40 = v141;
    DWORD1(v39) = v141;
    *(&v39 + 1) = HIDWORD(v143);
    *(v34 + 16) = v38;
    *(v34 + 16 * v36 + 32) = v39;
    v41 = v36 + 2;
    if (v37 < (v36 + 2))
    {
      sub_23A975DC0((v35 > 1), v36 + 2, 1);
      v40 = v141;
      v34 = v155;
    }

    v42 = v144;
    DWORD1(v42) = v40;
    DWORD2(v42) = HIDWORD(v144);
    *(v34 + 16) = v41;
    *(v34 + 16 * v38 + 32) = v42;
    v43 = *(v34 + 24);
    v44 = v36 + 3;
    if ((v36 + 3) > (v43 >> 1))
    {
      sub_23A975DC0((v43 > 1), v36 + 3, 1);
      v40 = v141;
      v34 = v155;
    }

    LODWORD(v45) = v145.i32[0];
    DWORD1(v45) = v40;
    *(&v45 + 1) = v145.u32[1];
    *(v34 + 16) = v44;
    *(v34 + 16 * v41 + 32) = v45;
    v46 = *(v34 + 24);
    if ((v36 + 4) > (v46 >> 1))
    {
      sub_23A975DC0((v46 > 1), v36 + 4, 1);
      v40 = v141;
      v34 = v155;
    }

    v141 = v146.u32[0];
    v47 = v146.u32[0];
    DWORD1(v47) = v40;
    DWORD2(v47) = v146.i32[1];
    *(v34 + 16) = v36 + 4;
    v48 = v34 + 32;
    *(v34 + 32 + 16 * v44) = v47;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v49 = sub_23AA0D324();
    *(v49 + 16) = 4;
    *(v49 + 32) = xmmword_23AA12210;
    *(v49 + 48) = xmmword_23AA12210;
    *(v49 + 64) = xmmword_23AA12210;
    *(v49 + 80) = xmmword_23AA12210;
    v155 = v33;
    sub_23A975DC0(0, 4, 0);
    v50 = v33;
    v52 = *(v33 + 16);
    v51 = *(v33 + 24);
    v53 = v51 >> 1;
    v54 = v52 + 1;
    if (v51 >> 1 <= v52)
    {
      sub_23A975DC0((v51 > 1), v52 + 1, 1);
      v50 = v33;
      v51 = *(v33 + 24);
      v53 = v51 >> 1;
    }

    v56 = v143;
    v55 = v144;
    v57 = v142;
    DWORD1(v56) = v142;
    DWORD2(v56) = HIDWORD(v143);
    *(v50 + 16) = v54;
    *(v50 + 16 * v52 + 32) = v56;
    v58 = v52 + 2;
    v59 = v146.u32[0];
    if (v53 < (v52 + 2))
    {
      sub_23A975DC0((v51 > 1), v52 + 2, 1);
      v55 = v144;
      v59 = v146.u32[0];
      v57 = v142;
      v50 = v155;
    }

    DWORD1(v55) = v57;
    DWORD2(v55) = HIDWORD(v144);
    *(v50 + 16) = v58;
    *(v50 + 16 * v54 + 32) = v55;
    v60 = *(v50 + 24);
    v61 = v52 + 3;
    if ((v52 + 3) > (v60 >> 1))
    {
      sub_23A975DC0((v60 > 1), v52 + 3, 1);
      v59 = v146.u32[0];
      v57 = v142;
      v50 = v155;
    }

    v62 = v145.u32[0];
    DWORD1(v62) = v57;
    DWORD2(v62) = v145.i32[1];
    *(v50 + 16) = v61;
    *(v50 + 16 * v58 + 32) = v62;
    v63 = *(v50 + 24);
    v33 = v52 + 4;
    if ((v52 + 4) > (v63 >> 1))
    {
      sub_23A975DC0((v63 > 1), v52 + 4, 1);
      v59 = v146.u32[0];
      v57 = v142;
      v50 = v155;
    }

    DWORD1(v59) = v57;
    DWORD2(v59) = v146.i32[1];
    *(v50 + 16) = v33;
    *(v50 + 16 * v61 + 32) = v59;
    v38 = sub_23AA0D324();
    *(v38 + 16) = 4;
    *(v38 + 32) = xmmword_23AA12220;
    *(v38 + 48) = xmmword_23AA12220;
    *(v38 + 64) = xmmword_23AA12220;
    *(v38 + 80) = xmmword_23AA12220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
    v64 = swift_allocObject();
    v146.i64[0] = 4;
    v64[1] = xmmword_23AA11C20;
    v65 = *(v34 + 16);
    if (!v65)
    {
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
      sub_23A975E54((v65 > 1), v49, 1);
      v74 = v147;
      goto LABEL_32;
    }

    v52 = v64;
    v64[2] = *v48;
    if (v65 == 1)
    {
      goto LABEL_161;
    }

    v64[3] = *(v34 + 48);
    v65 = *(v50 + 16);
    if (v65 < 2)
    {
      goto LABEL_162;
    }

    v64[4] = *(v50 + 48);
    v66 = *(v50 + 32);
    v64[5] = v66;
    *v66.i8 = vsub_f32(0, v140);
    v145 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v66, v66)), 0);
    v33 = 4;
    v9 = sub_23AA0D324();
    *(v9 + 16) = 4;
    *(v9 + 32) = v145;
    *(v9 + 48) = v145;
    *(v9 + 64) = v145;
    *(v9 + 80) = v145;
    v67 = swift_allocObject();
    v67[1] = xmmword_23AA11C20;
    v67[2] = *(v34 + 48);
    v65 = *(v34 + 16);
    if (v65 < 3)
    {
      goto LABEL_163;
    }

    v67[3] = *(v34 + 64);
    v65 = *(v50 + 16);
    if (v65 < 3)
    {
      goto LABEL_164;
    }

    v67[4] = *(v50 + 64);
    v144 = v67;
    v67[5] = *(v50 + 48);
    v68.i64[0] = COERCE_UNSIGNED_INT(0.0 - v139.f32[0]);
    v68.i64[1] = COERCE_UNSIGNED_INT(0.0 - v139.f32[1]);
    v145 = v68;
    v33 = 4;
    v48 = sub_23AA0D324();
    *(v48 + 16) = 4;
    *(v48 + 32) = v145;
    *(v48 + 48) = v145;
    *(v48 + 64) = v145;
    *(v48 + 80) = v145;
    v69 = swift_allocObject();
    v69[1] = xmmword_23AA11C20;
    v69[2] = *(v34 + 64);
    v65 = *(v34 + 16);
    if (v65 < 4)
    {
      goto LABEL_165;
    }

    v69[3] = *(v34 + 80);
    v65 = *(v50 + 16);
    if (v65 < 4)
    {
      goto LABEL_166;
    }

    v69[4] = *(v50 + 80);
    v70 = *(v50 + 64);
    v143 = v69;
    v69[5] = v70;
    *v70.i8 = vsub_f32(0, v18);
    v145 = vtrn2q_s32(vrev64q_s32(vzip1q_s32(v70, v70)), 0);
    v33 = 4;
    v71 = sub_23AA0D324();
    *(v71 + 16) = 4;
    *(v71 + 32) = v145;
    *(v71 + 48) = v145;
    *(v71 + 64) = v145;
    *(v71 + 80) = v145;
    v142 = v71;
    v72 = swift_allocObject();
    v72[1] = xmmword_23AA11C20;
    v72[2] = *(v34 + 80);
    v72[3] = *(v34 + 32);
    v72[4] = *(v50 + 32);
    v145.i64[0] = v72;
    v72[5] = *(v50 + 80);
    v146 = vtrn2q_s32(vzip1q_s32(0, v138), 0);
    v73 = sub_23AA0D324();
    *(v73 + 16) = 4;
    *(v73 + 32) = v146;
    *(v73 + 48) = v146;
    *(v73 + 64) = v146;
    *(v73 + 80) = v146;
    v141 = v73;
    v154 = v49;
    v155 = v34;
    v153 = &unk_284D7FB58;
    v147 = MEMORY[0x277D84F90];
    sub_23A975E54(0, 6, 0);
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBB0 + v35);
    if (__CFADD__(dword_284D7FBB0, v35))
    {
      goto LABEL_150;
    }

    v74 = v147;
    v36 = *(v147 + 16);
    v65 = *(v147 + 24);
    v49 = v36 + 1;
    if (v36 >= v65 >> 1)
    {
      goto LABEL_167;
    }

LABEL_32:
    *(v74 + 16) = v49;
    *(v74 + 4 * v36 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBB4 + v35);
    if (__CFADD__(dword_284D7FBB4, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v75 = *(v74 + 24);
    v36 += 2;
    if (v49 >= v75 >> 1)
    {
      sub_23A975E54((v75 > 1), v36, 1);
      v74 = v147;
    }

    *(v74 + 16) = v36;
    *(v74 + 4 * v49 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBB8 + v35);
    if (__CFADD__(dword_284D7FBB8, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v36 = *(v74 + 16);
    v76 = *(v74 + 24);
    v77 = v36 + 1;
    if (v36 >= v76 >> 1)
    {
      sub_23A975E54((v76 > 1), v36 + 1, 1);
      v74 = v147;
    }

    *(v74 + 16) = v77;
    *(v74 + 4 * v36 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBBC + v35);
    if (__CFADD__(dword_284D7FBBC, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v78 = *(v74 + 24);
    v36 += 2;
    if (v77 >= v78 >> 1)
    {
      sub_23A975E54((v78 > 1), v36, 1);
      v74 = v147;
    }

    *(v74 + 16) = v36;
    *(v74 + 4 * v77 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_149;
    }

    v33 = (dword_284D7FBC0 + v35);
    if (__CFADD__(dword_284D7FBC0, v35))
    {
      goto LABEL_150;
    }

    v147 = v74;
    v36 = *(v74 + 16);
    v79 = *(v74 + 24);
    v80 = v36 + 1;
    if (v36 >= v79 >> 1)
    {
      sub_23A975E54((v79 > 1), v36 + 1, 1);
      v74 = v147;
    }

    *(v74 + 16) = v80;
    *(v74 + 4 * v36 + 32) = v33;
    v35 = *(v34 + 16);
    if (HIDWORD(v35))
    {
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
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v33 = (dword_284D7FBC4 + v35);
    if (__CFADD__(dword_284D7FBC4, v35))
    {
      goto LABEL_150;
    }

    v148 = v74;
    v81 = *(v74 + 24);
    v82 = v36 + 2;
    if (v80 >= v81 >> 1)
    {
      sub_23A975E54((v81 > 1), v82, 1);
      v74 = v148;
    }

    *(v74 + 16) = v82;
    *(v74 + 4 * v80 + 32) = v33;
    sub_23A911A8C(v74);
    sub_23A9119A0(v50);
    sub_23A9119A0(v38);
    v83 = MEMORY[0x277D84F90];
    v147 = MEMORY[0x277D84F90];
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v84 = dword_284D7FBE8 + v35;
    if (__CFADD__(dword_284D7FBE8, v35))
    {
      goto LABEL_152;
    }

    v85 = v147;
    v87 = *(v147 + 16);
    v86 = *(v147 + 24);
    v38 = v87 + 1;
    if (v87 >= v86 >> 1)
    {
      sub_23A975E54((v86 > 1), v87 + 1, 1);
      v85 = v147;
    }

    *(v85 + 16) = v38;
    *(v85 + 4 * v87 + 32) = v84;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBEC + v35);
    if (__CFADD__(dword_284D7FBEC, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v88 = *(v85 + 24);
    v89 = v87 + 2;
    if (v38 >= v88 >> 1)
    {
      sub_23A975E54((v88 > 1), v89, 1);
      v85 = v147;
    }

    *(v85 + 16) = v89;
    *(v85 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBF0 + v35);
    if (__CFADD__(dword_284D7FBF0, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v91 = *(v85 + 16);
    v90 = *(v85 + 24);
    v38 = v91 + 1;
    if (v91 >= v90 >> 1)
    {
      sub_23A975E54((v90 > 1), v91 + 1, 1);
      v85 = v147;
    }

    *(v85 + 16) = v38;
    *(v85 + 4 * v91 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBF4 + v35);
    if (__CFADD__(dword_284D7FBF4, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v92 = *(v85 + 24);
    v93 = v91 + 2;
    if (v38 >= v92 >> 1)
    {
      sub_23A975E54((v92 > 1), v93, 1);
      v85 = v147;
    }

    *(v85 + 16) = v93;
    *(v85 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v33 = (dword_284D7FBF8 + v35);
    if (__CFADD__(dword_284D7FBF8, v35))
    {
      goto LABEL_152;
    }

    v147 = v85;
    v95 = *(v85 + 16);
    v94 = *(v85 + 24);
    v38 = v95 + 1;
    if (v95 >= v94 >> 1)
    {
      sub_23A975E54((v94 > 1), v95 + 1, 1);
      v85 = v147;
    }

    *(v85 + 16) = v38;
    *(v85 + 4 * v95 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_151;
    }

    v36 = (dword_284D7FBFC + v35);
    if (__CFADD__(dword_284D7FBFC, v35))
    {
      goto LABEL_152;
    }

    v149 = v85;
    v96 = *(v85 + 24);
    v97 = v95 + 2;
    if (v38 >= v96 >> 1)
    {
      sub_23A975E54((v96 > 1), v97, 1);
      v85 = v149;
    }

    *(v85 + 16) = v97;
    *(v85 + 4 * v38 + 32) = v36;
    sub_23A911A8C(v85);
    sub_23A9119A0(v52);
    sub_23A9119A0(v9);
    v147 = v83;
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v98 = dword_284D7FC20 + v35;
    if (__CFADD__(dword_284D7FC20, v35))
    {
      goto LABEL_154;
    }

    v99 = v83;
    v101 = *(v83 + 16);
    v100 = *(v83 + 24);
    v38 = v101 + 1;
    if (v101 >= v100 >> 1)
    {
      sub_23A975E54((v100 > 1), v101 + 1, 1);
      v99 = v83;
    }

    *(v99 + 16) = v38;
    *(v99 + 4 * v101 + 32) = v98;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC24 + v35);
    if (__CFADD__(dword_284D7FC24, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v102 = *(v99 + 24);
    v103 = v101 + 2;
    if (v38 >= v102 >> 1)
    {
      sub_23A975E54((v102 > 1), v103, 1);
      v99 = v147;
    }

    *(v99 + 16) = v103;
    *(v99 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC28 + v35);
    if (__CFADD__(dword_284D7FC28, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v105 = *(v99 + 16);
    v104 = *(v99 + 24);
    v38 = v105 + 1;
    if (v105 >= v104 >> 1)
    {
      sub_23A975E54((v104 > 1), v105 + 1, 1);
      v99 = v147;
    }

    *(v99 + 16) = v38;
    *(v99 + 4 * v105 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC2C + v35);
    if (__CFADD__(dword_284D7FC2C, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v106 = *(v99 + 24);
    v107 = v105 + 2;
    if (v38 >= v106 >> 1)
    {
      sub_23A975E54((v106 > 1), v107, 1);
      v99 = v147;
    }

    *(v99 + 16) = v107;
    *(v99 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v33 = (dword_284D7FC30 + v35);
    if (__CFADD__(dword_284D7FC30, v35))
    {
      goto LABEL_154;
    }

    v147 = v99;
    v109 = *(v99 + 16);
    v108 = *(v99 + 24);
    v38 = v109 + 1;
    if (v109 >= v108 >> 1)
    {
      sub_23A975E54((v108 > 1), v109 + 1, 1);
      v99 = v147;
    }

    *(v99 + 16) = v38;
    *(v99 + 4 * v109 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_153;
    }

    v36 = (dword_284D7FC34 + v35);
    if (__CFADD__(dword_284D7FC34, v35))
    {
      goto LABEL_154;
    }

    v150 = v99;
    v110 = *(v99 + 24);
    v111 = v109 + 2;
    if (v38 >= v110 >> 1)
    {
      sub_23A975E54((v110 > 1), v111, 1);
      v99 = v150;
    }

    *(v99 + 16) = v111;
    *(v99 + 4 * v38 + 32) = v36;
    sub_23A911A8C(v99);
    sub_23A9119A0(v144);
    sub_23A9119A0(v48);
    v147 = v83;
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC58 + v35);
    if (__CFADD__(dword_284D7FC58, v35))
    {
      goto LABEL_156;
    }

    v112 = v83;
    v114 = *(v83 + 16);
    v113 = *(v83 + 24);
    v38 = v114 + 1;
    if (v114 >= v113 >> 1)
    {
      sub_23A975E54((v113 > 1), v114 + 1, 1);
      v112 = v83;
    }

    *(v112 + 16) = v38;
    *(v112 + 4 * v114 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC5C + v35);
    if (__CFADD__(dword_284D7FC5C, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v115 = *(v112 + 24);
    v116 = v114 + 2;
    if (v38 >= v115 >> 1)
    {
      sub_23A975E54((v115 > 1), v116, 1);
      v112 = v147;
    }

    *(v112 + 16) = v116;
    *(v112 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC60 + v35);
    if (__CFADD__(dword_284D7FC60, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v118 = *(v112 + 16);
    v117 = *(v112 + 24);
    v38 = v118 + 1;
    if (v118 >= v117 >> 1)
    {
      sub_23A975E54((v117 > 1), v118 + 1, 1);
      v112 = v147;
    }

    *(v112 + 16) = v38;
    *(v112 + 4 * v118 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC64 + v35);
    if (__CFADD__(dword_284D7FC64, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v119 = *(v112 + 24);
    v120 = v118 + 2;
    if (v38 >= v119 >> 1)
    {
      sub_23A975E54((v119 > 1), v120, 1);
      v112 = v147;
    }

    *(v112 + 16) = v120;
    *(v112 + 4 * v38 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v33 = (dword_284D7FC68 + v35);
    if (__CFADD__(dword_284D7FC68, v35))
    {
      goto LABEL_156;
    }

    v147 = v112;
    v122 = *(v112 + 16);
    v121 = *(v112 + 24);
    v38 = v122 + 1;
    if (v122 >= v121 >> 1)
    {
      sub_23A975E54((v121 > 1), v122 + 1, 1);
      v112 = v147;
    }

    *(v112 + 16) = v38;
    *(v112 + 4 * v122 + 32) = v33;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_155;
    }

    v36 = (dword_284D7FC6C + v35);
    if (__CFADD__(dword_284D7FC6C, v35))
    {
      goto LABEL_156;
    }

    v151 = v112;
    v123 = *(v112 + 24);
    v124 = v122 + 2;
    if (v38 >= v123 >> 1)
    {
      sub_23A975E54((v123 > 1), v124, 1);
      v112 = v151;
    }

    *(v112 + 16) = v124;
    *(v112 + 4 * v38 + 32) = v36;
    sub_23A911A8C(v112);
    sub_23A9119A0(v143);
    sub_23A9119A0(v142);
    v147 = v83;
    sub_23A975E54(0, 6, 0);
    v36 = v155;
    v35 = *(v155 + 16);
    if (HIDWORD(v35))
    {
      goto LABEL_157;
    }

    v33 = (dword_284D7FC90 + v35);
    if (!__CFADD__(dword_284D7FC90, v35))
    {
      v125 = v83;
      v127 = *(v83 + 16);
      v126 = *(v83 + 24);
      v38 = v127 + 1;
      if (v127 >= v126 >> 1)
      {
        sub_23A975E54((v126 > 1), v127 + 1, 1);
        v125 = v83;
      }

      *(v125 + 16) = v38;
      *(v125 + 4 * v127 + 32) = v33;
      v35 = *(v155 + 16);
      if (HIDWORD(v35))
      {
        goto LABEL_157;
      }

      v33 = (dword_284D7FC94 + v35);
      if (!__CFADD__(dword_284D7FC94, v35))
      {
        v147 = v125;
        v128 = *(v125 + 24);
        v129 = v127 + 2;
        if (v38 >= v128 >> 1)
        {
          sub_23A975E54((v128 > 1), v129, 1);
          v125 = v147;
        }

        *(v125 + 16) = v129;
        *(v125 + 4 * v38 + 32) = v33;
        v35 = *(v155 + 16);
        if (HIDWORD(v35))
        {
          goto LABEL_157;
        }

        v33 = (dword_284D7FC98 + v35);
        if (!__CFADD__(dword_284D7FC98, v35))
        {
          v147 = v125;
          v131 = *(v125 + 16);
          v130 = *(v125 + 24);
          v38 = v131 + 1;
          if (v131 >= v130 >> 1)
          {
            sub_23A975E54((v130 > 1), v131 + 1, 1);
            v125 = v147;
          }

          *(v125 + 16) = v38;
          *(v125 + 4 * v131 + 32) = v33;
          v35 = *(v155 + 16);
          if (HIDWORD(v35))
          {
            goto LABEL_157;
          }

          v33 = (dword_284D7FC9C + v35);
          if (!__CFADD__(dword_284D7FC9C, v35))
          {
            v147 = v125;
            v132 = *(v125 + 24);
            v133 = v131 + 2;
            if (v38 >= v132 >> 1)
            {
              sub_23A975E54((v132 > 1), v133, 1);
              v125 = v147;
            }

            *(v125 + 16) = v133;
            *(v125 + 4 * v38 + 32) = v33;
            v35 = *(v155 + 16);
            if (HIDWORD(v35))
            {
              goto LABEL_157;
            }

            v33 = (dword_284D7FCA0 + v35);
            if (!__CFADD__(dword_284D7FCA0, v35))
            {
              v147 = v125;
              v135 = *(v125 + 16);
              v134 = *(v125 + 24);
              v38 = v135 + 1;
              if (v135 >= v134 >> 1)
              {
                sub_23A975E54((v134 > 1), v135 + 1, 1);
                v125 = v147;
              }

              *(v125 + 16) = v38;
              *(v125 + 4 * v135 + 32) = v33;
              v35 = *(v155 + 16);
              if (HIDWORD(v35))
              {
                goto LABEL_157;
              }

              v36 = (dword_284D7FCA4 + v35);
              if (!__CFADD__(dword_284D7FCA4, v35))
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    sub_23A975DC0((v35 > 1), v38, 1);
    v34 = v155;
    v35 = *(v155 + 24);
    v37 = v35 >> 1;
  }

  v152 = v125;
  v136 = *(v125 + 24);
  v137 = v135 + 2;
  if (v38 >= v136 >> 1)
  {
    sub_23A975E54((v136 > 1), v137, 1);
    v125 = v152;
  }

  *(v125 + 16) = v137;
  *(v125 + 4 * v38 + 32) = v36;
  sub_23A911A8C(v125);
  sub_23A9119A0(v145.i64[0]);
  sub_23A9119A0(v141);
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  result[2] = v155;
  result[3] = v154;
  result[4] = v153;
  return result;
}

void *sub_23A8F89D0(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, float a5, float32_t a6)
{
  v131 = a3;
  v133 = a2;
  v138 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v132 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v129 - v13;
  v15 = type metadata accessor for ScanItemStrut();
  v16 = *(v15 - 8);
  v135 = v15;
  v136 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v134 = (&v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v130 = (&v129 - v20);
  v21 = MEMORY[0x277D84F90];
  v142 = MEMORY[0x277D84F90];
  v143 = MEMORY[0x277D84F90];
  v141 = MEMORY[0x277D84F90];
  v22 = sub_23A8F3F24(a1, v138.n128_u64[0], 0.0);
  v23 = sub_23A982850(v22);

  v139 = v23;
  v24 = *(v23 + 16);
  v25 = v24[1].i64[0];
  if (v25)
  {
    v140 = v21;
    sub_23A975DC0(0, v25, 0);
    *v26.i32 = a5 * 0.0;
    v21 = v140;
    v27 = v24 + 2;
    v28 = *(v140 + 16);
    v29 = vdupq_lane_s32(v26, 0);
    do
    {
      v30 = *v27;
      v140 = v21;
      v31 = *(v21 + 24);
      if (v28 >= v31 >> 1)
      {
        v137 = v29;
        v129 = v30;
        sub_23A975DC0((v31 > 1), v28 + 1, 1);
        v30 = v129;
        v29 = v137;
        v21 = v140;
      }

      *&v32 = vaddq_f32(v29, v30).u64[0];
      *(&v32 + 2) = v30.f32[2] + a5;
      HIDWORD(v32) = 0;
      *(v21 + 16) = v28 + 1;
      *(v21 + 16 * v28 + 32) = v32;
      ++v27;
      ++v28;
      --v25;
    }

    while (v25);
  }

  sub_23A9119A0(v21);
  v33 = v139;
  v34 = *(v139 + 24);

  sub_23A9119A0(v35);
  v36 = *(v33 + 32);

  sub_23A911A8C(v37);
  v39 = *(v33 + 32);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v137.i64[0] = v14;
    v140 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v40, 0);
    v41 = v140;
    v43 = 32;
    v44 = v143;
    while (1)
    {
      v45 = *(v44 + 16);
      if (HIDWORD(v45))
      {
        break;
      }

      v46 = *(v39 + v43);
      v47 = v46 + v45;
      if (__CFADD__(v46, v45))
      {
        goto LABEL_58;
      }

      v140 = v41;
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_23A975E54((v48 > 1), v49 + 1, 1);
        v41 = v140;
      }

      *(v41 + 16) = v49 + 1;
      *(v41 + 4 * v49 + 32) = v47;
      v43 += 4;
      if (!--v40)
      {

        v14 = v137.i64[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_14:
  sub_23A912078(v41, v38);
  v50 = *(v139 + 16);
  v51 = v50[1].i64[0];
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    v140 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v51, 0);
    v52 = v140;
    v53 = v50 + 2;
    v54 = *(v140 + 16);
    v55 = vdupq_lane_s32(COERCE_UNSIGNED_INT(a6 * 0.0), 0);
    do
    {
      v56 = *v53;
      v140 = v52;
      v57 = *(v52 + 24);
      if (v54 >= v57 >> 1)
      {
        v137 = v55;
        v129 = v56;
        sub_23A975DC0((v57 > 1), v54 + 1, 1);
        v56 = v129;
        v55 = v137;
        v52 = v140;
      }

      *&v58 = vaddq_f32(v55, v56).u64[0];
      *(&v58 + 2) = v56.f32[2] - a6;
      HIDWORD(v58) = 0;
      *(v52 + 16) = v54 + 1;
      *(v52 + 16 * v54 + 32) = v58;
      ++v53;
      ++v54;
      --v51;
    }

    while (v51);
  }

  sub_23A9119A0(v52);
  v59 = *(*(v139 + 16) + 16);
  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v60 = sub_23AA0D324();
    *(v60 + 16) = v59;
    memset_pattern16((v60 + 32), &xmmword_23AA12240, 16 * v59);
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  sub_23A9119A0(v60);
  v61.n128_f32[0] = a5;
  v137.i64[0] = sub_23A8F648C(a1, v138, v61, a6, v62, v63, v64, v65, v66);
  v67 = *(v137.i64[0] + 32);
  v68 = *(v67 + 16);
  v69 = MEMORY[0x277D84F90];
  if (v68)
  {
    v140 = MEMORY[0x277D84F90];

    result = sub_23A975E54(0, v68, 0);
    v69 = v140;
    v70 = 32;
    v71 = v143;
    while (1)
    {
      v72 = *(v71 + 16);
      if (HIDWORD(v72))
      {
        break;
      }

      v73 = *(v67 + v70);
      v74 = v73 + v72;
      if (__CFADD__(v73, v72))
      {
        goto LABEL_60;
      }

      v140 = v69;
      v76 = *(v69 + 16);
      v75 = *(v69 + 24);
      if (v76 >= v75 >> 1)
      {
        result = sub_23A975E54((v75 > 1), v76 + 1, 1);
        v69 = v140;
      }

      *(v69 + 16) = v76 + 1;
      *(v69 + 4 * v76 + 32) = v74;
      v70 += 4;
      if (!--v68)
      {

        goto LABEL_30;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_30:
  sub_23A911A8C(v69);
  v77 = v137.i64[0];
  v78 = *(v137.i64[0] + 16);

  sub_23A9119A0(v79);
  v80 = *(v77 + 24);

  sub_23A9119A0(v81);
  sub_23A8D6CA0(v133, v14);
  v82 = v135;
  v83 = v136 + 48;
  v84 = *(v136 + 48);
  if (v84(v14, 1, v135) == 1)
  {
    sub_23A8D6D10(v14);
  }

  else
  {
    v85 = v130;
    sub_23A8D6D78(v14, v130);
    v89 = sub_23A8F76CC(v85, a5 > 0.0, vmuls_lane_f32(-0.5, v138.n128_u64[0], 1), vmuls_lane_f32(0.5, v138.n128_u64[0], 1), COERCE_UNSIGNED_INT((-0.5 * v138.n128_f32[0]) - COERCE_FLOAT(*v85)), v138.n128_f64[0], v86, v87, v88);
    if (v89)
    {
      v90 = v89;
      v136 = v83;
      v91 = v89[4];
      v92 = *(v91 + 16);
      v93 = MEMORY[0x277D84F90];
      if (v92)
      {
        v133 = v84;
        v140 = MEMORY[0x277D84F90];

        result = sub_23A975E54(0, v92, 0);
        v93 = v140;
        v94 = 32;
        v95 = v143;
        while (1)
        {
          v96 = *(v95 + 16);
          if (HIDWORD(v96))
          {
            break;
          }

          v97 = *(v91 + v94);
          v98 = v97 + v96;
          if (__CFADD__(v97, v96))
          {
            goto LABEL_62;
          }

          v140 = v93;
          v100 = *(v93 + 16);
          v99 = *(v93 + 24);
          if (v100 >= v99 >> 1)
          {
            result = sub_23A975E54((v99 > 1), v100 + 1, 1);
            v93 = v140;
          }

          *(v93 + 16) = v100 + 1;
          *(v93 + 4 * v100 + 32) = v98;
          v94 += 4;
          if (!--v92)
          {

            v84 = v133;
            goto LABEL_41;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_41:
      sub_23A911A8C(v93);
      v101 = v90[2];

      sub_23A9119A0(v102);
      v103 = v90[3];

      sub_23A9119A0(v104);

      v82 = v135;
    }

    sub_23A8D6DDC(v130);
  }

  v105 = v134;
  v106 = v132;
  sub_23A8D6CA0(v131, v132);
  if (v84(v106, 1, v82) == 1)
  {

    sub_23A8D6D10(v106);
LABEL_56:
    v127 = v142;
    v126 = v143;
    v128 = v141;
    type metadata accessor for RoomCaptureMesh();
    result = swift_allocObject();
    result[2] = v126;
    result[3] = v128;
    result[4] = v127;
    return result;
  }

  sub_23A8D6D78(v106, v105);
  v110 = sub_23A8F76CC(v105, a5 > 0.0, vmuls_lane_f32(-0.5, v138.n128_u64[0], 1), vmuls_lane_f32(0.5, v138.n128_u64[0], 1), COERCE_UNSIGNED_INT((0.5 * v138.n128_f32[0]) - COERCE_FLOAT(*v105)), v138.n128_f64[0], v107, v108, v109);
  if (!v110)
  {
    sub_23A8D6DDC(v105);

    goto LABEL_56;
  }

  v111 = v110;
  v112 = v110[4];
  v113 = *(v112 + 16);
  v114 = MEMORY[0x277D84F90];
  if (!v113)
  {
LABEL_54:
    sub_23A911A8C(v114);
    v122 = v111[2];

    sub_23A9119A0(v123);
    v124 = v111[3];

    sub_23A9119A0(v125);

    sub_23A8D6DDC(v105);
    goto LABEL_56;
  }

  v140 = MEMORY[0x277D84F90];

  result = sub_23A975E54(0, v113, 0);
  v114 = v140;
  v115 = 32;
  v116 = v143;
  while (1)
  {
    v117 = *(v116 + 16);
    if (HIDWORD(v117))
    {
      break;
    }

    v118 = *(v112 + v115);
    v119 = v118 + v117;
    if (__CFADD__(v118, v117))
    {
      goto LABEL_64;
    }

    v140 = v114;
    v121 = *(v114 + 16);
    v120 = *(v114 + 24);
    if (v121 >= v120 >> 1)
    {
      result = sub_23A975E54((v120 > 1), v121 + 1, 1);
      v114 = v140;
    }

    *(v114 + 16) = v121 + 1;
    *(v114 + 4 * v121 + 32) = v119;
    v115 += 4;
    if (!--v113)
    {

      v105 = v134;
      goto LABEL_54;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

void sub_23A8F92F4(char a1, unint64_t a2, char a3, float a4, float a5, float32x2_t a6, float a7, float a8, float a9, float a10)
{
  v73 = a4;
  if (a3)
  {
    v16 = MEMORY[0x277D84F90];
    v83 = MEMORY[0x277D84F90];
    if (a4 < a5)
    {
      v17 = 0;
      v18 = *&a2;
      v71 = (a9 * 0.0) + a8;
      v69 = (a10 * 0.0) + a8;
      do
      {
        v19 = (v18 * v17) + a4;
        if (v19 <= a5)
        {
          v20 = v19;
        }

        else
        {
          v20 = a5;
        }

        v79 = cosf(v20);
        v75 = sinf(v20);
        if (v20 < a5)
        {
          v21 = *(v16 + 2);
          if (HIDWORD(v21))
          {
            goto LABEL_57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_23AA12260;
          *(inited + 32) = v21;
          if (v21 == -1)
          {
            goto LABEL_58;
          }

          *(inited + 36) = v21 + 1;
          v23 = v21 + 3;
          if (v21 >= 0xFFFFFFFD)
          {
            goto LABEL_59;
          }

          *(inited + 40) = v23;
          *(inited + 44) = v21;
          *(inited + 48) = v23;
          *(inited + 52) = v21 + 2;
          sub_23A911A8C(inited);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_23A9388A8(0, *(v16 + 2) + 1, 1, v16);
        }

        v25 = *(v16 + 2);
        v24 = *(v16 + 3);
        v26 = v24 >> 1;
        v27 = v25 + 1;
        if (v24 >> 1 <= v25)
        {
          v16 = sub_23A9388A8((v24 > 1), v25 + 1, 1, v16);
          v24 = *(v16 + 3);
          v26 = v24 >> 1;
        }

        v28 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v75), LODWORD(v79)), a7), a6);
        v29 = vsub_f32(a6, v28);
        v30 = vmul_f32(v29, v29);
        v30.i32[0] = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
        v31 = vrsqrte_f32(v30.u32[0]);
        *&v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
        v33 = vmul_n_f32(v29, vmul_f32(*&v32, vrsqrts_f32(v30.u32[0], vmul_f32(*&v32, *&v32))).f32[0]);
        v34 = v28.f32[1];
        *&v32 = v28.f32[0] + (a9 * v33.f32[0]);
        *(&v32 + 1) = v71;
        *(&v32 + 1) = COERCE_UNSIGNED_INT(v28.f32[1] + vmuls_lane_f32(a9, v33, 1));
        *(v16 + 2) = v27;
        *&v16[16 * v25 + 32] = v32;
        v35 = v25 + 2;
        if (v26 < v35)
        {
          v76 = v33;
          v80 = v28.i32[0];
          v37 = sub_23A9388A8((v24 > 1), v35, 1, v16);
          v33 = v76;
          v28.i32[0] = v80;
          v16 = v37;
        }

        HIDWORD(v36) = 0;
        *&v36 = v28.f32[0] + ((0.0 - v33.f32[0]) * a10);
        *(&v36 + 1) = v69;
        *(&v36 + 2) = v34 + ((0.0 - v33.f32[1]) * a10);
        *(v16 + 2) = v35;
        *&v16[16 * v27 + 32] = v36;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_54;
        }

        ++v17;
        a4 = v73;
      }

      while (v20 < a5);
    }

    if (a1)
    {
      v83 = sub_23A8ED3D4(v83);
      v61 = *(v16 + 2);
      if (v61)
      {
        v62 = &xmmword_23AA12220;
LABEL_46:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
        v66 = sub_23AA0D324();
        *(v66 + 16) = v61;
        memset_pattern16((v66 + 32), v62, 16 * v61);
LABEL_50:
        type metadata accessor for RoomCaptureMesh();
        v67 = swift_allocObject();
        v67[2] = v16;
        v67[3] = v66;
        v67[4] = v83;
        return;
      }
    }

    else
    {
      v61 = *(v16 + 2);
      if (v61)
      {
        v62 = &xmmword_23AA12210;
        goto LABEL_46;
      }
    }

    v66 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v84 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v38 = 0;
    v39 = a2;
    v40 = a5 - a4;
    v72 = (a9 * 0.0) + a8;
    v70 = (a10 * 0.0) + a8;
    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      v42 = (v40 * (v38 / v39)) + a4;
      v81 = cosf(v42);
      v77 = sinf(v42);
      if (v42 < a5)
      {
        v43 = *(v41 + 2);
        if (HIDWORD(v43))
        {
          goto LABEL_53;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
        v44 = swift_initStackObject();
        *(v44 + 16) = xmmword_23AA12260;
        *(v44 + 32) = v43;
        if (v43 == -1)
        {
          goto LABEL_55;
        }

        *(v44 + 36) = v43 + 1;
        v45 = v43 + 3;
        if (v43 >= 0xFFFFFFFD)
        {
          goto LABEL_56;
        }

        *(v44 + 40) = v45;
        *(v44 + 44) = v43;
        *(v44 + 48) = v45;
        *(v44 + 52) = v43 + 2;
        sub_23A911A8C(v44);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_23A9388A8(0, *(v41 + 2) + 1, 1, v41);
      }

      v47 = *(v41 + 2);
      v46 = *(v41 + 3);
      v48 = v46 >> 1;
      v49 = v47 + 1;
      if (v46 >> 1 <= v47)
      {
        v41 = sub_23A9388A8((v46 > 1), v47 + 1, 1, v41);
        v46 = *(v41 + 3);
        v48 = v46 >> 1;
      }

      v50 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v77), LODWORD(v81)), a7), a6);
      v51 = vsub_f32(a6, v50);
      v52 = vmul_f32(v51, v51);
      v52.i32[0] = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
      v53 = vrsqrte_f32(v52.u32[0]);
      *&v54 = vmul_f32(v53, vrsqrts_f32(v52.u32[0], vmul_f32(v53, v53)));
      v55 = vmul_n_f32(v51, vmul_f32(*&v54, vrsqrts_f32(v52.u32[0], vmul_f32(*&v54, *&v54))).f32[0]);
      v56 = v50.f32[1];
      *&v54 = v50.f32[0] + (a9 * v55.f32[0]);
      *(&v54 + 1) = v72;
      *(&v54 + 1) = COERCE_UNSIGNED_INT(v50.f32[1] + vmuls_lane_f32(a9, v55, 1));
      *(v41 + 2) = v49;
      *&v41[16 * v47 + 32] = v54;
      v57 = v47 + 2;
      if (v48 < (v47 + 2))
      {
        v78 = v55;
        v82 = v50.i32[0];
        v60 = sub_23A9388A8((v46 > 1), v47 + 2, 1, v41);
        v55 = v78;
        v50.i32[0] = v82;
        v41 = v60;
      }

      HIDWORD(v58) = 0;
      *&v58 = v50.f32[0] + ((0.0 - v55.f32[0]) * a10);
      *(&v58 + 1) = v70;
      *(&v58 + 2) = v56 + ((0.0 - v55.f32[1]) * a10);
      *(v41 + 2) = v57;
      *&v41[16 * v49 + 32] = v58;
      if (a2 == v38)
      {
        break;
      }

      v59 = __OFADD__(v38++, 1);
      a4 = v73;
      if (v59)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    if (a1)
    {
      v63 = sub_23A8ED3D4(v84);
      v64 = *(v41 + 2);
      if (v64)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
        v65 = sub_23AA0D324();
        *(v65 + 16) = v64;
        memset_pattern16((v65 + 32), &xmmword_23AA12220, 16 * v64);
      }

      else
      {
        v65 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      if (v57 < 1)
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
      v65 = sub_23AA0D324();
      *(v65 + 16) = v57;
      memset_pattern16((v65 + 32), &xmmword_23AA12210, 16 * v47 + 32);
      v63 = v84;
    }

    type metadata accessor for RoomCaptureMesh();
    v68 = swift_allocObject();
    v68[2] = v41;
    v68[3] = v65;
    v68[4] = v63;
  }
}