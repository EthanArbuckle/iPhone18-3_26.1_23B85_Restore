unint64_t sub_23E4B7C20()
{
  result = qword_28110A430;
  if (!qword_28110A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110A430);
  }

  return result;
}

void sub_23E4B7C74(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000054;
  v4 = 0x495F524F465F4F47;
  v5 = 0x800000023E4E09E0;
  v6 = 0xD000000000000012;
  if (v2 != 5)
  {
    v6 = 0x54495445504D4F43;
    v5 = 0xEC000000534E4F49;
  }

  v7 = 0xEC00000053554C50;
  v8 = 0x5F5353454E544946;
  if (v2 != 3)
  {
    v8 = 0x5F444554494D494CLL;
    v7 = 0xEF4E4F4954494445;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x5954495649544341;
  if (v2 != 1)
  {
    v9 = 0x5354554F4B524F57;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
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

uint64_t sub_23E4B7D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  sub_23E4B5108();
  v3 = 0;
  while ((sub_23E4DCD5C() & 1) == 0)
  {
    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_23E4B7E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      sub_23E4B5108();
      do
      {
        ++v3;
        ++v4;
        v5 = sub_23E4DCD5C();
        --v2;
      }

      while ((v5 & 1) != 0 && v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void *sub_23E4B7EEC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345310);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_23E4B7F70(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_23E4B80C4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_23E4B27D8(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_23E4B8164(v8, v7);

  sub_23E4DD01C();
}

void sub_23E4B8164(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_23E4DD0EC();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23E4AC968(0, &qword_28110A3F8);
        v8 = sub_23E4DCE7C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_23E4D4FB0(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_23E4AC364(0, v3, 1, a1);
  }
}

uint64_t sub_23E4B82B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_23E4B8364(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_23E4A5744();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345300);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_23E4B8448(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_23E4AC968(0, &qword_28110A3F8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EF0AFF0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x23EF0AFF0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_23E4DCF2C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_23E4DCF2C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_23E4DD07C();
  }

  result = sub_23E4DD07C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_23E4B8698()
{
  v1 = *(v0 + OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23E4B8808;
  *(v3 + 24) = v2;
  v6[4] = sub_23E4B8810;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_23E4B8838;
  v6[3] = &block_descriptor_62;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_23E4B8860()
{
  v0 = sub_23E4DCCCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_23E4A9B6C();
    (*(v1 + 16))(v3, v6, v0);
    v7 = v5;
    v8 = sub_23E4DCCAC();
    v9 = sub_23E4DCECC();

    v10 = os_log_type_enabled(v8, v9);
    v11 = MEMORY[0x277D85000];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v12 = 136315394;
      v13 = *v11 & *v7;
      v41 = v9;
      v14 = *(v13 + 472);
      v40 = v8;
      v14();
      v15 = MEMORY[0x23EF0AE70]();
      v17 = v16;

      v18 = v15;
      v11 = MEMORY[0x277D85000];
      v19 = sub_23E4B6768(v18, v17, &v43);

      *(v12 + 4) = v19;
      *(v12 + 12) = 2080;
      v21 = (*((*v11 & *v7) + 0x178))(v20);
      v22 = sub_23E4AC968(0, &qword_28110A3F8);
      v23 = MEMORY[0x23EF0AE70](v21, v22);
      v25 = v24;

      v26 = sub_23E4B6768(v23, v25, &v43);

      *(v12 + 14) = v26;
      v27 = v40;
      _os_log_impl(&dword_23E4A3000, v40, v41, "[AAUIAwardsDataProvider] Updating client properties:\norderedSections = %s,\ntopAchievements = %s", v12, 0x16u);
      v28 = v42;
      swift_arrayDestroy();
      MEMORY[0x23EF0BFA0](v28, -1, -1);
      MEMORY[0x23EF0BFA0](v12, -1, -1);
    }

    else
    {
    }

    v29 = (*(v1 + 8))(v3, v0);
    v30 = (*((*v11 & *v7) + 0x1D8))(v29);
    v31 = (*((*v11 & *v7) + 0x258))(v30);
    v32 = (*((*v11 & *v7) + 0x190))(v31);
    v33 = (*((*v11 & *v7) + 0x210))(v32);
    v34 = (*((*v11 & *v7) + 0x178))(v33);
    v35 = (*((*v11 & *v7) + 0x1F8))(v34);
    v36 = (*((*v11 & *v7) + 0x1C0))(v35);
    v37 = (*((*v11 & *v7) + 0x240))(v36);
    v38 = (*((*v11 & *v7) + 0x1A8))(v37);
    (*((*v11 & *v7) + 0x228))(v38);
  }
}

uint64_t sub_23E4B8E6C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E4B8EA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E4B8EDC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E4B8F14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E4B8F4C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23E4B8F84()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E4B8FC4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23E4B904C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E4B9094()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 AAUIColorVectorFromColor(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = [MEMORY[0x277D75348] blackColor];
  }

  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0.0;
  [v1 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v2.f64[0] = v9;
  v2.f64[1] = v8;
  v5 = vcvt_f32_f64(v2);
  *v2.f64 = v7;
  v4 = LODWORD(v2.f64[0]);

  result.n128_u64[0] = v5;
  result.n128_u32[2] = v4;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

id AAUIAchievementBadgeCacheKey(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (AAUIAchievementBadgeCacheKey_onceToken != -1)
  {
    AAUIAchievementBadgeCacheKey_cold_1();
  }

  if ([v5 count])
  {
    v6 = [v5 hk_map:&__block_literal_global_385];
    v7 = [v6 componentsJoinedByString:@"_"];

    UIRoundToScale();
    v9 = v8;
    UIRoundToScale();
    v11 = v10;
    v12 = [v5 firstObject];
    v13 = [v12 unearned];

    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v13 ^ 1u];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
    v20 = [v14 stringWithFormat:@"%@_%@_%@_%@_%@_%@", v7, v15, v16, v17, v18, v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void sub_23E4BB82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E4BBB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void __AAUIAchievementBadgeCacheKey_block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  AAUIAchievementBadgeCacheKey_scale = v0;
}

id __AAUIAchievementBadgeCacheKey_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 template];
  v3 = [v2 uniqueName];

  return v3;
}

void sub_23E4BCBAC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23E4BDCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E4BEC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AAUIMonthlyChallengeIsEarnable(void *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v6 = [v5 components:*MEMORY[0x277CE8B28] fromDate:v4];
  v7 = [v3 template];
  v8 = [v7 uniqueName];
  v9 = [v8 componentsSeparatedByString:@"_"];

  if ([v9 count] != 3)
  {
    goto LABEL_11;
  }

  v10 = [v9 objectAtIndexedSubscript:1];
  v11 = [v10 integerValue];

  v12 = [v9 objectAtIndexedSubscript:2];
  v13 = [v12 integerValue];

  if (v11 != [v6 year] || v13 != objc_msgSend(v6, "month"))
  {
    goto LABEL_11;
  }

  v14 = [v3 template];
  v15 = [v14 uniqueName];
  v16 = ACHMonthlyChallengeTypeFromTemplateUniqueName();

  v17 = 0;
  if (v16 <= 0x1C)
  {
    if (((1 << v16) & 0x5FFFE0) == 0)
    {
      if (((1 << v16) & 0x1EA0001E) != 0)
      {
        v18 = [v3 progress];
        v19 = [MEMORY[0x277CCDAB0] countUnit];
        [v18 doubleValueForUnit:v19];
        v21 = v20;

        v22 = [v3 goal];
        v23 = [MEMORY[0x277CCDAB0] countUnit];
        [v22 doubleValueForUnit:v23];
        v25 = v24;

        v26 = [v5 rangeOfUnit:16 inUnit:8 forDate:v4];
        v28 = v26 + v27 - [v6 day];
        if (v25 - v21 > v28)
        {
          v29 = ACHLogMonthlyChallenges();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
LABEL_10:

LABEL_11:
            v17 = 0;
            goto LABEL_12;
          }

LABEL_9:
          v40 = [v3 template];
          v39 = [v40 uniqueName];
          *buf = 138413314;
          v42 = v39;
          v43 = 2048;
          v44 = v21;
          v45 = 2048;
          v46 = v25;
          v47 = 2048;
          v48 = v25 - v21;
          v49 = 2048;
          v50 = v28;
          _os_log_impl(&dword_23E4A3000, v29, OS_LOG_TYPE_DEFAULT, "[%@] not earnable anymore, daysEarned = %ld, daysRequired = %ld, daysLeftToEarn = %ld, numberOfDaysLeftThisMonth = %ld", buf, 0x34u);

          goto LABEL_10;
        }
      }

      else
      {
        if (v16 != 24)
        {
          goto LABEL_12;
        }

        v31 = [v3 progress];
        v32 = [MEMORY[0x277CCDAB0] countUnit];
        [v31 doubleValueForUnit:v32];
        v21 = v33;

        v34 = [v3 goal];
        v35 = [MEMORY[0x277CCDAB0] countUnit];
        [v34 doubleValueForUnit:v35];
        v25 = v36;

        v37 = [v5 rangeOfUnit:16 inUnit:8 forDate:v4];
        v28 = v37 + v38 - [v6 day];
        if (v25 - v21 > v28)
        {
          v29 = ACHLogMonthlyChallenges();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }
    }

    v17 = 1;
  }

LABEL_12:

  return v17;
}

uint64_t AAUISortAchievementsByMostRecentEarnedDate(void *a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __AAUISortAchievementsByMostRecentEarnedDate_block_invoke;
  v3[3] = &__block_descriptor_33_e43_q24__0__ACHAchievement_8__ACHAchievement_16l;
  v4 = a2;
  return [a1 sortUsingComparator:v3];
}

uint64_t __AAUISortAchievementsByMostRecentEarnedDate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 unearned] & 1) != 0 || (objc_msgSend(v6, "unearned"))
  {
    v7 = 0;
  }

  else
  {
    if (*(a1 + 32) == 1)
    {
      v9 = v5;
      v10 = v6;
    }

    else
    {
      v9 = v6;
      v10 = v5;
    }

    v7 = AAUICompareAchievementsByMostRecentEarnedDate(v9, v10);
    if (!v7)
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = [v5 template];
      v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "displayOrder")}];
      v14 = MEMORY[0x277CCABB0];
      v15 = [v6 template];
      v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "displayOrder")}];
      v7 = [v13 compare:v16];
    }
  }

  return v7;
}

uint64_t __AAUISortSubAchievementsByModality_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = AAUILocalizedModalityForAchievement(a2);
  v6 = AAUILocalizedModalityForAchievement(v4);

  v7 = [v5 compare:v6];
  return v7;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __AAUIBadgeShapeFromName_block_invoke()
{
  v0 = AAUIBadgeShapeFromName_shapeNameMappings;
  AAUIBadgeShapeFromName_shapeNameMappings = &unk_2850CFCB8;
}

void sub_23E4C7068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E4C7408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23E4C7934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AAUITrophyCaseShouldShowPerfectWeekAchievement(void *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = a1;
  v7 = ACHStartOfFitnessWeekBeforeDateInCalendar();
  v8 = [v6 components:16 fromDate:v7 toDate:v5 options:0];

  v9 = [v8 day];
  v10 = a3 >= 5.0;
  v11 = a3 >= 6.0;
  if (v9 != 6)
  {
    v11 = 0;
  }

  if (v9 != 5)
  {
    v10 = v11;
  }

  if (v9 == 4)
  {
    v12 = a3 >= 4.0;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AAUIAwardsDataProvider.activate()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x280))() & 1) == 0)
  {
    (*((*v1 & *v0) + 0x288))(1);
    v2 = (*((*v1 & *v0) + 0x2A0))(0);
    v3 = *((*v1 & *v0) + 0x268);
    v4 = (v3)(v2);
    if (v4)
    {
      v5 = v4;
      (*((*v1 & *v4) + 0x68))();
    }

    v6 = v3();
    if (v6)
    {
      v7 = v6;
      (*((*v1 & *v6) + 0x60))();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AAUIAwardsDataProvider.activate(isFitnessPlusSubscriber:)(Swift::Bool isFitnessPlusSubscriber)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x280))() & 1) == 0)
  {
    (*((*v3 & *v1) + 0x288))(1);
    v4 = (*((*v3 & *v1) + 0x2A0))(isFitnessPlusSubscriber);
    v5 = *((*v3 & *v1) + 0x268);
    v6 = (v5)(v4);
    if (v6)
    {
      v7 = v6;
      (*((*v3 & *v6) + 0x68))();
    }

    v8 = v5();
    if (v8)
    {
      v9 = v8;
      (*((*v3 & *v8) + 0x60))();
    }
  }
}

void sub_23E4CBDD0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = *(v3 + OBJC_IVAR___AAUIAwardsDataProvider_protectedObservers);
  os_unfair_lock_lock((v6 + 24));
  [*(v6 + 16) *a3];

  os_unfair_lock_unlock((v6 + 24));
}

Swift::Int __swiftcall AAUIAwardsDataProvider.achievementCount(forSection:)(ActivityAchievementsUI::AAUIAwardsDataProviderSection forSection)
{
  v2 = *forSection;
  v12 = 0;
  v3 = *&v1[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = &v12;
  *(v4 + 32) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_23E4CBFA8;
  *(v5 + 24) = v4;
  aBlock[4] = sub_23E4B8810;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_23E4CBFA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*((*MEMORY[0x277D85000] & **(v0 + 32)) + 0x208))();
  v4 = *(v3 + 16);
  if (!v1)
  {
    if (v4)
    {
      v13 = sub_23E4ABDC4(0);
      if (v14)
      {
        v15 = *(*(v3 + 56) + 8 * v13);

        if (v15 >> 62)
        {
          v16 = sub_23E4DD07C();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_31;
      }
    }

LABEL_21:

    v16 = 0;
    goto LABEL_31;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = sub_23E4ABDC4(v1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(*(v3 + 56) + 8 * v5);

  v20 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23E4DD07C())
  {
    v19 = v2;
    v9 = 4;
    while (1)
    {
      v10 = v9 - 4;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EF0AFF0](v9 - 4, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v7 + 8 * v9);
      }

      v2 = v11;
      v12 = v9 - 3;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 unearned])
      {
      }

      else
      {
        sub_23E4DD00C();
        sub_23E4DD03C();
        sub_23E4DD04C();
        sub_23E4DD01C();
      }

      ++v9;
      if (v12 == i)
      {
        v2 = v19;
        v18 = v20;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_27:

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v16 = sub_23E4DD07C();
  }

  else
  {
    v16 = *(v18 + 16);
  }

LABEL_31:
  *v2 = v16;
  return result;
}

uint64_t AAUIAwardsDataProvider.topThreeAchievements()()
{
  v10 = MEMORY[0x277D84F90];
  v1 = *&v0[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23E4CC368;
  *(v3 + 24) = v2;
  aBlock[4] = sub_23E4CF4B8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor_13;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_23E4CC368()
{
  v1 = *(v0 + 16);
  *v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x1F0))();
}

uint64_t AAUIAwardsDataProvider.topAchievement(forSection:)(char *a1)
{
  v2 = *a1;
  v12 = 0;
  v3 = *&v1[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = &v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_23E4CCC88;
  *(v5 + 24) = v4;
  aBlock[4] = sub_23E4CF4B8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor_23;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

void sub_23E4CC554(void *a1, int a2, void **a3)
{
  LODWORD(v4) = a2;
  v5 = a1;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x220);
  v8 = v7();
  if (!*(v8 + 16))
  {
    goto LABEL_11;
  }

  v9 = sub_23E4ABDC4(v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (v11 >> 62)
  {
    goto LABEL_72;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = a3;
    v13 = MEMORY[0x23EF0AFF0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = a3;
    v13 = *(v11 + 32);
LABEL_8:
    v14 = v13;

    v15 = *v12;
    *v12 = v14;

    return;
  }

  __break(1u);
  do
  {
    v47 = sub_23E4DD07C();
    if (!v47)
    {
      goto LABEL_79;
    }

LABEL_55:
    v48 = 0;
    a3 = 0;
    v62 = v11 & 0xFFFFFFFFFFFFFF8;
    v63 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v63)
      {
        v49 = MEMORY[0x23EF0AFF0](v48, v11);
      }

      else
      {
        if (v48 >= *(v62 + 16))
        {
          goto LABEL_71;
        }

        v49 = *(v11 + 8 * v48 + 32);
      }

      v7 = v49;
      v6 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v50 = [v49 template];
      v51 = [v50 uniqueName];

      if (!v51)
      {
        goto LABEL_85;
      }

      v5 = sub_23E4DCD7C();
      v53 = v52;

      v4 = &v58;
      v65 = v5;
      v66 = v53;
      MEMORY[0x28223BE20](v54);
      v57[2] = &v65;
      v55 = sub_23E4B82B8(sub_23E4CF440, v57, v64);

      if ((v55 & 1) == 0)
      {

        goto LABEL_80;
      }

      ++v48;
      if (v6 == v47)
      {
        goto LABEL_79;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    if (sub_23E4DD07C())
    {
      goto LABEL_5;
    }

LABEL_11:

    v17 = (*v6 & *v5) + 520;
    v18 = *((*v6 & *v5) + 0x208);
    v19 = v17;
    v20 = v18(v16);
    if (!*(v20 + 16) || (v21 = sub_23E4ABDC4(v4), (v22 & 1) == 0))
    {
LABEL_19:

      v25 = 0;
      goto LABEL_20;
    }

    v23 = *(*(v20 + 56) + 8 * v21);

    if (v23 >> 62)
    {
      if (!sub_23E4DD07C())
      {
        goto LABEL_19;
      }
    }

    else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x23EF0AFF0](0, v23);
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        return;
      }

      v24 = *(v23 + 32);
    }

    v25 = v24;

LABEL_20:
    v26 = *a3;
    *a3 = v25;

    v70 = v4;
    v69 = 0;
    sub_23E4B7C20();
    sub_23E4DCE1C();
    sub_23E4DCE1C();
    if (v65 == v67 && v66 == v68)
    {
    }

    else
    {
      v28 = sub_23E4DD12C();

      if ((v28 & 1) == 0)
      {
        return;
      }
    }

    v29 = (v7)(v27);
    v30 = *(v29 + 16);
    v62 = v19;
    v63 = v5;
    if (!v30)
    {
      goto LABEL_27;
    }

    v11 = sub_23E4B7EEC(v30, 0);
    v31 = sub_23E4B7F70(&v65, (v11 + 32), v30, v29);
    sub_23E4ADB8C();
    if (v31 != v30)
    {
      __break(1u);
LABEL_27:

      v11 = MEMORY[0x277D84F90];
    }

    v60 = v18;
    v61 = a3;
    v59 = v4;
    v32 = *(v11 + 16);
    if (!v32)
    {
      v64 = MEMORY[0x277D84F90];
      goto LABEL_51;
    }

    v33 = 0;
    v6 = (v11 + 32);
    v58 = v32 - 1;
    v64 = MEMORY[0x277D84F90];
    a3 = &selRef_animationWithEndingFloatValue_duration_customTimingFunction_completion_;
    do
    {
      v4 = v33;
      while (1)
      {
        if (v4 >= *(v11 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v34 = v6[v4];
        if (v34 >> 62)
        {
          if (!sub_23E4DD07C())
          {
            goto LABEL_32;
          }
        }

        else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        if ((v34 & 0xC000000000000001) != 0)
        {

          v36 = MEMORY[0x23EF0AFF0](0, v34);
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v35 = *(v34 + 32);

          v36 = v35;
        }

        v7 = v36;
        v37 = [v36 template];

        v5 = [v37 uniqueName];
        if (v5)
        {
          break;
        }

LABEL_32:
        if (v32 == ++v4)
        {
          goto LABEL_51;
        }
      }

      v7 = sub_23E4DCD7C();
      v39 = v38;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = sub_23E4CEA28(0, *(v64 + 2) + 1, 1, v64);
      }

      v5 = *(v64 + 2);
      v41 = *(v64 + 3);
      if (v5 >= v41 >> 1)
      {
        v64 = sub_23E4CEA28((v41 > 1), v5 + 1, 1, v64);
      }

      v33 = v4 + 1;
      v42 = v64;
      *(v64 + 2) = v5 + 1;
      v43 = &v42[16 * v5];
      *(v43 + 4) = v7;
      *(v43 + 5) = v39;
    }

    while (v58 != v4);
LABEL_51:

    v4 = v60(v44);
    if (!*(v4 + 16))
    {
      goto LABEL_79;
    }

    v45 = sub_23E4ABDC4(v59);
    v6 = v61;
    if ((v46 & 1) == 0)
    {

      v7 = 0;
      goto LABEL_81;
    }

    v11 = *(*(v4 + 56) + 8 * v45);
  }

  while (v11 >> 62);
  v47 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
    goto LABEL_55;
  }

LABEL_79:

  v7 = 0;
LABEL_80:
  v6 = v61;
LABEL_81:
  v56 = *v6;
  *v6 = v7;
}

uint64_t AAUIAwardsDataProvider.achievementStack(forSection:)(unsigned __int8 *a1)
{
  v37 = *a1;
  LOBYTE(v38) = 7;
  v2 = *&v1[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v38;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_23E4CE6A4;
  *(v4 + 24) = v3;
  v46 = sub_23E4CF4B8;
  v47 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_23E4B8838;
  v45 = &block_descriptor_33;
  v5 = _Block_copy(&aBlock);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = v38;

  v2 = *&v6[OBJC_IVAR___AAUIAwardsDataProvider_layoutMode];
  if (v2 != 1)
  {
    v10 = v37;
    if (v2)
    {
      goto LABEL_53;
    }

    if (v37 == 7)
    {
      if (v8 != 7)
      {
LABEL_11:
        v9 = 0;
        v4 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(aBlock) = v37;
      if (v8 == 7)
      {
        goto LABEL_11;
      }

      LOBYTE(v38) = v8;
      sub_23E4B5108();
      if ((sub_23E4DCD5C() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v9 = 0;
    v4 = 5;
    goto LABEL_12;
  }

  v9 = 1;
  v4 = 3;
  v10 = v37;
LABEL_12:
  LOBYTE(v48) = v10;
  v41 = 0;
  sub_23E4B7C20();
  sub_23E4DCE1C();
  sub_23E4DCE1C();
  if (aBlock == v38 && v43 == v39)
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_23E4DD12C();
  }

  v48 = MEMORY[0x277D84F90];
  v38 = 0;
  v2 = *&v6[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = &v38;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_23E4CF4E0;
  *(v12 + 24) = v11;
  v46 = sub_23E4CF4B8;
  v47 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_23E4B8838;
  v45 = &block_descriptor_95;
  v13 = _Block_copy(&aBlock);
  v6 = v6;

  dispatch_sync(v2, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    goto LABEL_44;
  }

  v14 = v38;

  v41 = v10;
  v40 = 0;
  sub_23E4DCE1C();
  sub_23E4DCE1C();
  if (aBlock == v38 && v43 == v39)
  {

    goto LABEL_21;
  }

  v16 = sub_23E4DD12C();

  if (v16)
  {
LABEL_21:
    v17 = (*((*MEMORY[0x277D85000] & *v6) + 0x208))(v15);
    if (*(v17 + 16))
    {
      v18 = 0;
      goto LABEL_25;
    }

LABEL_27:

    v22 = 0;
    v20 = v36;
    goto LABEL_29;
  }

  v17 = (*((*MEMORY[0x277D85000] & *v6) + 0x220))(v15);
  if (!*(v17 + 16))
  {
    goto LABEL_27;
  }

  v18 = v10;
LABEL_25:
  v19 = sub_23E4ABDC4(v18);
  v20 = v36;
  if (v21)
  {
    v22 = *(*(v17 + 56) + 8 * v19);
  }

  else
  {

    v22 = 0;
  }

LABEL_29:
  v23 = swift_allocObject();
  *(v23 + 16) = &v48;
  *(v23 + 24) = v22;
  *(v23 + 32) = v9;
  *(v23 + 40) = v14;
  *(v23 + 48) = v20 & 1;
  *(v23 + 56) = v4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_23E4CEF64;
  *(v24 + 24) = v23;
  v46 = sub_23E4CF4B8;
  v47 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_23E4B8838;
  v45 = &block_descriptor_105;
  v25 = _Block_copy(&aBlock);
  v4 = v14;

  dispatch_sync(v2, v25);
  _Block_release(v25);
  v2 = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v26 = v37;
    if (sub_23E4DD07C())
    {
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  if (v48 >> 62)
  {
    goto LABEL_46;
  }

  v26 = v37;
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_47:

    goto LABEL_48;
  }

LABEL_32:
  if (*&v6[OBJC_IVAR___AAUIAwardsDataProvider_layoutMode] != 1)
  {
    goto LABEL_47;
  }

  v27 = (*((*MEMORY[0x277D85000] & *v6) + 0x208))();
  if (!*(v27 + 16))
  {
    goto LABEL_41;
  }

  v28 = sub_23E4ABDC4(v26);
  if ((v29 & 1) == 0)
  {
    goto LABEL_41;
  }

  v30 = *(*(v27 + 56) + 8 * v28);

  if (v30 >> 62)
  {
    if (sub_23E4DD07C())
    {
      goto LABEL_37;
    }

LABEL_41:

    goto LABEL_42;
  }

  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_37:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x23EF0AFF0](0, v30);
    goto LABEL_40;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v30 + 32);
LABEL_40:
    v32 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345300);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_23E4DFBA0;
    *(v33 + 32) = v32;

    v48 = v33;
LABEL_42:

LABEL_48:
    v34 = v48;

    return v34;
  }

  __break(1u);
LABEL_53:
  aBlock = 0;
  v43 = 0xE000000000000000;
  sub_23E4DCFBC();
  MEMORY[0x23EF0ADE0](0xD000000000000033, 0x800000023E4E0910);
  v38 = v2;
  type metadata accessor for AAUIAchievementsDataProviderLayoutMode();
  sub_23E4DD05C();
  result = sub_23E4DD06C();
  __break(1u);
  return result;
}

ActivityAchievementsUI::AAUIAwardsDataProviderSection_optional __swiftcall AAUIAwardsDataProvider.mostRecentSection()()
{
  v2 = v0;
  v12 = 7;
  v3 = *&v1[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_23E4CF4BC;
  *(v5 + 24) = v4;
  aBlock[4] = sub_23E4CF4B8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor_44;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    *v2 = v10;
  }

  return result;
}

uint64_t AAUIAwardsDataProvider.achievements(forSection:)(char *a1)
{
  v2 = *a1;
  v12 = MEMORY[0x277D84F90];
  v3 = *&v1[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = &v12;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_23E4CE6FC;
  *(v5 + 24) = v4;
  aBlock[4] = sub_23E4CF4B8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor_54;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t AAUIAwardsDataProvider.achievements(forWorkoutIdentifier:)(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  v5 = *&v2[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v6 = swift_allocObject();
  v6[2] = &v14;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23E4CE7BC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_23E4CF4B8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor_64;
  v8 = _Block_copy(aBlock);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

uint64_t sub_23E4CD9BC(void *a1, _BYTE *a2)
{
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x250);
  v4 = *(v3() + 16);

  if (v4 >= 2)
  {
    result = (v3)(result);
    if (*(result + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v6 = *(result + 33);

      *a2 = v6;
    }
  }

  return result;
}

ActivityAchievementsUI::AAUIAwardsDataProviderSection_optional __swiftcall AAUIAwardsDataProvider.sections(atIndex:)(Swift::Int atIndex)
{
  v4 = v1;
  v14 = 7;
  v5 = *&v2[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = atIndex;
  v6[4] = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23E4CE880;
  *(v7 + 24) = v6;
  aBlock[4] = sub_23E4CF4B8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor_74;
  v8 = _Block_copy(aBlock);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    *v4 = v12;
  }

  return result;
}

uint64_t AAUIAwardsDataProvider.otherSections()()
{
  v10 = MEMORY[0x277D84F90];
  v1 = *&v0[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23E4CE938;
  *(v3 + 24) = v2;
  aBlock[4] = sub_23E4CF4B8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4B8838;
  aBlock[3] = &block_descriptor_84;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t AAUIAwardsDataProvider.shouldShowProgressBar(for:)(void *a1)
{
  result = [a1 unearned];
  if (result)
  {
    result = [a1 goal];
    if (result)
    {

      result = [a1 progress];
      if (result)
      {

        if ((*((*MEMORY[0x277D85000] & *v1) + 0x2B0))())
        {
          return [a1 isRingsBased] ^ 1;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall AAUIAwardsDataProvider.isCloudRestoreComplete()()
{
  v1 = *(v0 + OBJC_IVAR___AAUIAwardsDataProvider_cloudSyncStatusProvider);
  if (v1)
  {
    return [v1 isInitialCloudRestoreComplete];
  }

  else
  {
    return 1;
  }
}

Swift::Bool __swiftcall AAUIAwardsDataProvider.isFirstHistoricalRunComplete()()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = sub_23E4DCCCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___AAUIAwardsDataProvider_awardsClient);
  if (!v5)
  {
    return 1;
  }

  v23[0] = 0;
  v6 = v5;
  v7 = [v6 initialHistoricalRunStatusWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = v23[0];
    v10 = [v8 isComplete];

    return v10;
  }

  else
  {
    v12 = v23[0];
    v13 = sub_23E4DCB3C();

    swift_willThrow();
    v14 = sub_23E4A9B6C();
    (*(v2 + 16))(v4, v14, v1);
    v15 = v13;
    v16 = sub_23E4DCCAC();
    v17 = sub_23E4DCEBC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_23E4A3000, v16, v17, "Error checking if initial historical run is complete: %@", v18, 0xCu);
      sub_23E4CEB34(v19);
      MEMORY[0x23EF0BFA0](v19, -1, -1);
      MEMORY[0x23EF0BFA0](v18, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

id AAUIAwardsDataProvider.restoringPlaceholderAchievement()()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = sub_23E4DCCCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___AAUIAwardsDataProvider_awardsClient);
  if (v5)
  {
    v6 = v5;
    v7 = sub_23E4DCD6C();
    v21[0] = 0;
    v8 = [v6 ephemeralAchievementWithTemplateUniqueName:v7 error:v21];

    if (v21[0])
    {
      v9 = v21[0];

      swift_willThrow();
      v10 = sub_23E4A9B6C();
      (*(v2 + 16))(v4, v10, v1);
      v11 = v9;
      v12 = sub_23E4DCCAC();
      v13 = sub_23E4DCEBC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = v11;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_23E4A3000, v12, v13, "Error getting placeholder achievement: %@", v14, 0xCu);
        sub_23E4CEB34(v15);
        MEMORY[0x23EF0BFA0](v15, -1, -1);
        MEMORY[0x23EF0BFA0](v14, -1, -1);
      }

      else
      {
        v16 = v12;
        v12 = v11;
      }

      (*(v2 + 8))(v4, v1);
    }

    else
    {
      if (v8)
      {
        v18 = [v8 shallowCopyWithRelevantEarnedInstance_];

        return v18;
      }
    }
  }

  return 0;
}

void sub_23E4CE420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *(*v5 + OBJC_IVAR___AAUIAwardsDataProvider_protectedObservers);
  os_unfair_lock_lock((v8 + 24));
  [*(v8 + 16) *a5];

  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_23E4CE5F8()
{
  v1 = *(*v0 + OBJC_IVAR___AAUIAwardsDataProvider_cloudSyncStatusProvider);
  if (v1)
  {
    return [v1 isInitialCloudRestoreComplete];
  }

  else
  {
    return 1;
  }
}

void *sub_23E4CE688@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for AAUIAchievementsDataProviderLayoutMode()
{
  if (!qword_27E3452F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E3452F0);
    }
  }
}

uint64_t sub_23E4CE6FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x208))();
  if (*(v3 + 16) && (v4 = sub_23E4ABDC4(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *v1 = v6;
}

uint64_t sub_23E4CE7BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x238))();
  if (*(v4 + 16) && (v5 = sub_23E4CED74(v2, v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *v1 = v7;
}

uint64_t sub_23E4CE880()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x250);
  v4 = *(v3() + 16);

  if (v4 > v2)
  {
    result = (v3)(result);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 16) > v2)
    {
      v6 = *(result + v2 + 32);

      *v1 = v6;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E4CE938()
{
  v1 = *(v0 + 24);
  v2 = *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x250);
  v3 = *(v2() + 16);

  if (v3 >= 3)
  {
    result = (v2)(result);
    v5 = *(result + 16);
    if (v5 < 2)
    {
      __break(1u);
    }

    else
    {
      sub_23E4CEDEC(result, result + 32, 2, (2 * v5) | 1);
      v7 = v6;

      *v1 = v7;
    }
  }

  return result;
}

char *sub_23E4CEA28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345308);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23E4CEB34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3452E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23E4CED74(uint64_t a1, uint64_t a2)
{
  sub_23E4DD17C();
  sub_23E4DCDAC();
  v4 = sub_23E4DD18C();

  return sub_23E4CEEAC(a1, a2, v4);
}

void sub_23E4CEDEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3452F8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_23E4CEEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23E4DD12C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23E4CEF64()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v40 = *(v0 + 16);
  v41 = *(v0 + 56);
  if (*(v0 + 24))
  {
    v5 = *(v0 + 24);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v47 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_39;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v6)
  {
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v5 & 0xC000000000000001;
    v1 = 4;
    v42 = v6;
    v43 = v3;
    while (1)
    {
      v7 = v1 - 4;
      if (v46)
      {
        v8 = MEMORY[0x23EF0AFF0](v1 - 4, v5);
      }

      else
      {
        if (v7 >= *(v45 + 16))
        {
          goto LABEL_38;
        }

        v8 = *(v5 + 8 * v1);
      }

      v9 = v8;
      v10 = v1 - 3;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v2)
      {
        goto LABEL_30;
      }

      v11 = [v8 template];
      v12 = [v11 uniqueName];

      if (v12)
      {
        v13 = sub_23E4DCD7C();
        v15 = v14;

        if (!v3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v13 = 0;
        v15 = 0;
        if (!v3)
        {
LABEL_19:
          v22 = 0;
          if (!v15)
          {
            goto LABEL_20;
          }

          goto LABEL_24;
        }
      }

      v44 = v13;
      v16 = v5;
      v17 = v4;
      v18 = v2;
      v19 = [v3 template];
      v20 = [v19 uniqueName];

      if (v20)
      {
        v3 = sub_23E4DCD7C();
        v22 = v21;
      }

      else
      {
        v3 = 0;
        v22 = 0;
      }

      v2 = v18;
      v4 = v17;
      v5 = v16;
      v13 = v44;
      if (!v15)
      {
LABEL_20:
        if (!v22)
        {
          goto LABEL_28;
        }

LABEL_29:

        v6 = v42;
        v3 = v43;
        goto LABEL_30;
      }

LABEL_24:
      if (!v22)
      {
        goto LABEL_29;
      }

      if (v13 == v3 && v15 == v22)
      {

LABEL_28:

        v6 = v42;
        v3 = v43;
        goto LABEL_8;
      }

      v23 = sub_23E4DD12C();

      v6 = v42;
      v3 = v43;
      if (v23)
      {
        goto LABEL_32;
      }

LABEL_30:
      if ((v4 & 1) == 0 && [v9 unearned])
      {
LABEL_32:

        goto LABEL_8;
      }

      sub_23E4DD00C();
      sub_23E4DD03C();
      sub_23E4DD04C();
      sub_23E4DD01C();
LABEL_8:
      ++v1;
      if (v10 == v6)
      {
        v24 = v47;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v6 = sub_23E4DD07C();
  }

  v24 = MEMORY[0x277D84F90];
LABEL_41:

  if (v41 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v24 < 0)
    {
      v1 = 1;
    }

    else
    {
      v1 = (v24 >> 62) & 1;
    }

    if ((v1 & 1) == 0)
    {
      v25 = *(v24 + 16);
      if (v25 >= v41)
      {
        v26 = v41;
      }

      else
      {
        v26 = *(v24 + 16);
      }

      if (v41)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v25 >= v27)
      {
        goto LABEL_53;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  v5 = sub_23E4DD07C();
  result = sub_23E4DD07C();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v5 >= v41)
  {
    v39 = v41;
  }

  else
  {
    v39 = v5;
  }

  if (v5 < 0)
  {
    v39 = v41;
  }

  if (v41)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  if (sub_23E4DD07C() < v27)
  {
    goto LABEL_85;
  }

LABEL_53:
  if ((v24 & 0xC000000000000001) != 0 && v27)
  {
    sub_23E4A5744();

    v28 = 0;
    do
    {
      v29 = v28 + 1;
      sub_23E4DCFCC();
      v28 = v29;
    }

    while (v27 != v29);
  }

  else
  {
  }

  if (!v1)
  {
    v5 = 0;
    v1 = v24 + 32;
    v27 = (2 * v27) | 1;
    if (v27)
    {
      goto LABEL_64;
    }

LABEL_63:
    sub_23E4B8364(v24, v1, v5, v27);
    v35 = v34;
LABEL_70:
    swift_unknownObjectRelease();
    goto LABEL_71;
  }

  v30 = sub_23E4DD08C();
  v1 = v31;
  v5 = v32;
  v27 = v33;

  v24 = v30;
  if ((v27 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_64:
  sub_23E4DD13C();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x277D84F90];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v27 >> 1, v5))
  {
    goto LABEL_86;
  }

  if (v37 != (v27 >> 1) - v5)
  {
LABEL_87:
    swift_unknownObjectRelease_n();
    goto LABEL_63;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v35)
  {
    v35 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

LABEL_71:
  *v40 = v35;
}

uint64_t sub_23E4CF440(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23E4DD12C() & 1;
  }
}

uint64_t sub_23E4CF570(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23E4DCCCC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23E4DCCBC();
}

uint64_t sub_23E4CF60C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23E4DCCCC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_23E4CF6A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_23E4CF7C0(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_23E4DCCAC();
  v7 = sub_23E4DCECC();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_23E4B6768(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_23E4A3000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EF0BFA0](v9, -1, -1);
    MEMORY[0x23EF0BFA0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_23E4CF7C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_23E4ABBE4();
  v8 = (sub_23E4DCF3C() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_23E4CFA1C(46, 0xE100000000000000, a1, a2);
  v10 = sub_23E4DCE0C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x23EF0ADB0](v10, v12, v14, v16);
  v19 = v18;

  sub_23E4CFA1C(40, 0xE100000000000000, a3, a4);
  v20 = sub_23E4DCE0C();
  v21 = MEMORY[0x23EF0ADB0](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_23E4DD0FC();
  MEMORY[0x23EF0ADE0](v25);

  MEMORY[0x23EF0ADE0](8285, 0xE200000000000000);
  MEMORY[0x23EF0ADE0](v17, v19);

  MEMORY[0x23EF0ADE0](14906, 0xE200000000000000);
  MEMORY[0x23EF0ADE0](v21, v23);

  return 91;
}

unint64_t sub_23E4CFA1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_23E4DCDFC() != a1 || v9 != a2)
  {
    v10 = sub_23E4DD12C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_23E4DCDBC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23E4CFB54(uint64_t a1, unint64_t a2)
{
  v3 = sub_23E4CFBA0(a1, a2);
  sub_23E4CFCD0(&unk_2850CA7E8);
  return v3;
}

uint64_t sub_23E4CFBA0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23E4CFDBC(v5, 0);
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

  result = sub_23E4DCFFC();
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
        v10 = sub_23E4DCDDC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E4CFDBC(v10, 0);
        result = sub_23E4DCFAC();
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

uint64_t sub_23E4CFCD0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23E4CFE30(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23E4CFDBC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345318);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23E4CFE30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::String __swiftcall AAUIAwardsDataProviderSection.localized()()
{
  type metadata accessor for AAUIAwardsDataProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23E4DCD6C();

  v3 = sub_23E4DCD6C();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_23E4DCD7C();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t AAUIAwardsDataProviderSection.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x495F524F465F4F47;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x54495445504D4F43;
  }

  v4 = 0x5F5353454E544946;
  if (v1 != 3)
  {
    v4 = 0x5F444554494D494CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x5954495649544341;
  if (v1 != 1)
  {
    v5 = 0x5354554F4B524F57;
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

uint64_t type metadata accessor for AAUIAwardsDataProvider()
{
  result = qword_28110A610;
  if (!qword_28110A610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E4D02E8()
{
  sub_23E4DCDAC();
}

uint64_t sub_23E4D0440@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAUIAwardsDataProvider_calendar;
  v4 = sub_23E4DCC1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_23E4D04E8()
{
  v1 = *(v0 + OBJC_IVAR___AAUIAwardsDataProvider_awardsClient);
  v2 = v1;
  return v1;
}

void sub_23E4D0988(uint64_t a1)
{
  v3 = OBJC_IVAR___AAUIAwardsDataProvider_query;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_23E4D0A40()
{
  v1 = OBJC_IVAR___AAUIAwardsDataProvider_isActivated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23E4D0A84(char a1)
{
  v3 = OBJC_IVAR___AAUIAwardsDataProvider_isActivated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23E4D0B34(char a1)
{
  v3 = OBJC_IVAR___AAUIAwardsDataProvider_isFitnessPlusSubscriber;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AAUIAwardsDataProvider.__allocating_init(healthStore:layoutMode:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CE8CD8]) initWithHealthStore_];
  [v5 activate];
  v6 = [objc_allocWithZone(MEMORY[0x277D095A8]) initWithHealthStore_];
  v7 = objc_allocWithZone(MEMORY[0x277CE8DE0]);
  v8 = v5;
  v9 = (*(v2 + 696))(a1, v6, v5, [v7 init], a2);

  return v9;
}

void *AAUIAwardsDataProvider.init(healthStore:pauseRingsCoordinator:cloudSyncStatusProvider:awardsClient:layoutMode:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v61 = a5;
  v11 = sub_23E4DCEEC();
  v12 = *(v11 - 8);
  v63 = v11;
  v64 = v12;
  MEMORY[0x28223BE20](v11);
  v62 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23E4DCEDC();
  MEMORY[0x28223BE20](v53);
  v55 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23E4DCCFC();
  MEMORY[0x28223BE20](v15 - 8);
  v54 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23E4DCC1C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_firstHistoricalRunChangedNotifyToken] = -1;
  v6[OBJC_IVAR___AAUIAwardsDataProvider_initialAwardsBatchDelivered] = 0;
  v21 = MEMORY[0x277D84F90];
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_topAchievements] = MEMORY[0x277D84F90];
  v22 = OBJC_IVAR___AAUIAwardsDataProvider_achievementsPerSection;
  *&v6[v22] = sub_23E4AC114(v21);
  v23 = OBJC_IVAR___AAUIAwardsDataProvider_mostRecentlyEarnedAchievementsPerSection;
  *&v6[v23] = sub_23E4AC114(v21);
  v24 = OBJC_IVAR___AAUIAwardsDataProvider_achievementsPerWorkoutIdentifier;
  *&v6[v24] = sub_23E4AC208(v21);
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_orderedSections] = v21;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_clientTopAchievements] = v21;
  v25 = OBJC_IVAR___AAUIAwardsDataProvider_clientAchievementsPerSection;
  *&v6[v25] = sub_23E4AC114(v21);
  v26 = OBJC_IVAR___AAUIAwardsDataProvider_clientMostRecentlyEarnedAchievementsPerSection;
  *&v6[v26] = sub_23E4AC114(v21);
  v27 = OBJC_IVAR___AAUIAwardsDataProvider_clientAchievementsPerWorkoutIdentifier;
  *&v6[v27] = sub_23E4AC208(v21);
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_clientOrderedSections] = v21;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_query] = 0;
  v6[OBJC_IVAR___AAUIAwardsDataProvider_isActivated] = 0;
  v6[OBJC_IVAR___AAUIAwardsDataProvider_isFitnessPlusSubscriber] = 0;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_observers] = v21;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_layoutMode] = v61;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_healthStore] = a1;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_pauseRingsCoordinator] = a2;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_cloudSyncStatusProvider] = a3;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_awardsClient] = a4;
  v28 = objc_allocWithZone(MEMORY[0x277CE8D58]);
  v58 = a4;
  v57 = a1;
  v56 = a2;
  v59 = a3;
  swift_unknownObjectRetain();
  v29 = [v28 init];
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_visibilityEvaluator] = v29;
  v30 = [objc_opt_self() hk_gregorianCalendar];
  sub_23E4DCBCC();

  (*(v18 + 32))(&v6[OBJC_IVAR___AAUIAwardsDataProvider_calendar], v20, v17);
  v60 = sub_23E4AC968(0, &qword_28110A3E0);
  sub_23E4DCCEC();
  v65 = MEMORY[0x277D84F90];
  v51 = sub_23E4A9F7C(&qword_28110A3E8, MEMORY[0x277D85230]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345338);
  v52 = sub_23E4AA98C(&qword_28110A400, &qword_27E345338);
  v50 = v31;
  sub_23E4DCF6C();
  LODWORD(v61) = *MEMORY[0x277D85260];
  v32 = v63;
  v33 = *(v64 + 104);
  v64 += 104;
  v33(v62);
  v49 = v33;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_propertyQueue] = sub_23E4DCF1C();
  v48[1] = "property_data_provider_queue";
  sub_23E4DCCEC();
  v65 = MEMORY[0x277D84F90];
  sub_23E4DCF6C();
  v34 = v62;
  (v33)(v62, v61, v32);
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_awardQueue] = sub_23E4DCF1C();
  sub_23E4DCCEC();
  v65 = MEMORY[0x277D84F90];
  sub_23E4DCF6C();
  (v49)(v34, v61, v63);
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_notifyQueue] = sub_23E4DCF1C();
  v35 = [objc_opt_self() weakObjectsHashTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345340);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 16) = v35;
  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_protectedObservers] = v36;
  v37 = sub_23E4DCD6C();
  v38 = [objc_opt_self() mainBundle];
  v39 = [v38 bundleIdentifier];

  if (v39)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v37, v39, 0);
  }

  else
  {
    AppIntegerValue = 0;
  }

  *&v6[OBJC_IVAR___AAUIAwardsDataProvider_overrideDisplayState] = AppIntegerValue;
  v41 = type metadata accessor for AAUIAwardsDataProvider();
  v66.receiver = v6;
  v66.super_class = v41;
  v42 = objc_msgSendSuper2(&v66, sel_init);
  type metadata accessor for AAUIAwardsQuery();
  *(swift_allocObject() + 16) = v42;
  *(swift_allocObject() + 16) = v42;
  *(swift_allocObject() + 16) = v42;
  *(swift_allocObject() + 16) = v42;
  v43 = v42;
  v44 = AAUIAwardsQuery.__allocating_init(initialAwardsHandler:addedAwardsHandler:removedAwardsHandler:updatedAwardsHandler:)();
  v45 = OBJC_IVAR___AAUIAwardsDataProvider_query;
  swift_beginAccess();
  v46 = *(v43 + v45);
  *(v43 + v45) = v44;

  (*((*MEMORY[0x277D85000] & *v43) + 0x2D8))();
  swift_unknownObjectRelease();

  return v43;
}

void sub_23E4D16A4()
{
  v0 = sub_23E4DCCCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_23E4A9B6C();
    (*(v1 + 16))(v3, v6, v0);
    v7 = sub_23E4DCCAC();
    v8 = sub_23E4DCECC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23E4A3000, v7, v8, "[AAUIAwardsDataProvider] App entered background, stopping data provider query.", v9, 2u);
      MEMORY[0x23EF0BFA0](v9, -1, -1);
    }

    v10 = (*(v1 + 8))(v3, v0);
    (*((*MEMORY[0x277D85000] & *v5) + 0x2E0))(v10);
  }
}

uint64_t sub_23E4D1878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id AAUIAwardsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR___AAUIAwardsDataProvider_observers;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v2 + 32;

    do
    {
      sub_23E4B6940(v5, v11);
      v6 = [v4 defaultCenter];
      __swift_project_boxed_opaque_existential_0(v11, v11[3]);
      v7 = sub_23E4DD11C();
      __swift_destroy_boxed_opaque_existential_0(v11);
      [v6 removeObserver_];

      swift_unknownObjectRelease();
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  v8 = OBJC_IVAR___AAUIAwardsDataProvider_firstHistoricalRunChangedNotifyToken;
  swift_beginAccess();
  notify_cancel(*&v0[v8]);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AAUIAwardsDataProvider();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_23E4D1C48(uint64_t a1)
{
  v3 = sub_23E4DCD0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_23E4DCD1C();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x340))(a1);
    v13 = v12;
    sub_23E4AFBE4();
    v14 = sub_23E4B6D90();
    v15 = (*((*v10 & *v1) + 0x328))();
    (*((*v10 & *v1) + 0x2F0))();
    (*((*v10 & *v1) + 0x348))(MEMORY[0x277D84F90], a1, v11, v13, v14 & 1, v15 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23E4D1EA8(id *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23E4DCB9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E4DCB1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  if ([v29 unearned])
  {
    v27 = v4;
    v28 = a2;
    v12 = [objc_allocWithZone(MEMORY[0x277CE8D38]) init];
    v13 = [v29 template];
    v14 = [v13 canonicalUnit];

    if (!v14)
    {
LABEL_5:
      v18 = ACHDateComponentsForYearMonthDay();
      sub_23E4DCB0C();

      v19 = sub_23E4DCAFC();
      (*(v9 + 8))(v11, v8);
      [v12 setEarnedDateComponents_];

      sub_23E4DCB8C();
      v20 = sub_23E4DCB5C();
      (*(v5 + 8))(v7, v27);
      [v12 setCreatedDate_];

      [v12 setCreatorDevice_];
      v21 = [v29 template];
      v22 = [v21 uniqueName];

      [v12 setTemplateUniqueName_];
      v23 = [v29 shallowCopyWithRelevantEarnedInstance_];

      *v28 = v23;
      return;
    }

    v15 = [v29 template];
    v16 = [v15 canonicalUnit];

    if (v16)
    {
      v17 = [objc_opt_self() quantityWithUnit:v16 doubleValue:20.0];

      [v12 setValue_];
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    v24 = v29;
    *a2 = v29;

    v25 = v24;
  }
}

void (*sub_23E4D2244(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_23E4D3F38(v4, a2);
  return sub_23E4D22BC;
}

void sub_23E4D22BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23E4D2308(unint64_t isUniquelyReferenced_nonNull_native)
{
  v3 = sub_23E4DCD0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = v1;
  v7 = *(v1 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  v9 = sub_23E4DCD1C();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    goto LABEL_35;
  }

  v121 = MEMORY[0x277D84FA0];
  v122 = MEMORY[0x277D84FA0];
  v123[0] = MEMORY[0x277D84F98];
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_36:
    v10 = sub_23E4DD07C();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_4:
      v11 = 0;
      v12 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v13 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v119 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v12)
        {
          v14 = MEMORY[0x23EF0AFF0](v11, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v11 >= *(v13 + 16))
          {
            goto LABEL_32;
          }

          v14 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
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

        v17 = [v14 section];
        sub_23E4DCD7C();

        v18 = sub_23E4DD0CC();

        if (v18 <= 6)
        {
          break;
        }

LABEL_7:

        ++v11;
        if (v16 == v10)
        {
          v37 = v123[0];
          goto LABEL_38;
        }
      }

      v19 = v123[0];
      if (v123[0][2])
      {
        sub_23E4ABDC4(v18);
        if (v20)
        {
LABEL_27:
          v34 = sub_23E4D2244(&v120, v18);
          if (*v33)
          {
            v35 = v33;
            v36 = v15;
            MEMORY[0x23EF0AE40]();
            if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_23E4DCE6C();
              isUniquelyReferenced_nonNull_native = v119;
            }

            sub_23E4DCE8C();
          }

          (v34)(&v120, 0);
          goto LABEL_7;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v19;
      v21 = sub_23E4ABDC4(v18);
      v23 = v19[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_33;
      }

      v27 = v22;
      if (v19[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v21;
          sub_23E4B515C();
          v21 = v30;
          isUniquelyReferenced_nonNull_native = v119;
          v29 = v120;
          if (v27)
          {
            goto LABEL_21;
          }

          goto LABEL_24;
        }
      }

      else
      {
        sub_23E4AD684(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_23E4ABDC4(v18);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_106;
        }
      }

      isUniquelyReferenced_nonNull_native = v119;
      v29 = v120;
      if (v27)
      {
LABEL_21:
        *(v29[7] + 8 * v21) = MEMORY[0x277D84F90];

LABEL_26:
        v123[0] = v29;
        goto LABEL_27;
      }

LABEL_24:
      v29[(v21 >> 6) + 8] |= 1 << v21;
      *(v29[6] + v21) = v18;
      *(v29[7] + 8 * v21) = MEMORY[0x277D84F90];
      v31 = v29[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_34;
      }

      v29[2] = v32;
      goto LABEL_26;
    }
  }

  v37 = MEMORY[0x277D84F98];
LABEL_38:
  v38 = v37 + 8;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v37[8];
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  v44 = v112;
  v109 = v37;
  v108 = v37 + 8;
  v107 = v42;
  while (2)
  {
    if (v41)
    {
      goto LABEL_47;
    }

    do
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_100;
      }

      if (v45 >= v42)
      {

        v97 = v122;
        v98 = *(v122 + 16);
        if (v98)
        {
          v99 = sub_23E4ADA14(*(v122 + 16), 0, &qword_27E3452F8);
          v100 = sub_23E4ADA90(&v120, v99 + 32, v98, v97);

          sub_23E4ADB8C();
          if (v100 == v98)
          {
LABEL_94:
            v101 = v121;
            v102 = *(v121 + 16);
            if (v102)
            {
              v119 = v99;
              v103 = sub_23E4ADA14(v102, 0, &qword_27E3452F8);
              v104 = sub_23E4ADA90(&v120, v103 + 32, v102, v101);

              sub_23E4ADB8C();
              if (v104 != v102)
              {
                goto LABEL_103;
              }

              return v119;
            }

            else
            {
            }

            return v99;
          }

          __break(1u);
        }

        v99 = MEMORY[0x277D84F90];
        goto LABEL_94;
      }

      v41 = v38[v45];
      ++v43;
    }

    while (!v41);
    v43 = v45;
LABEL_47:
    v46 = __clz(__rbit64(v41)) | (v43 << 6);
    v47 = v37[7];
    v116 = *(v37[6] + v46);
    v48 = *(v47 + 8 * v46);

    v110 = v41;
    if (!(v48 >> 62))
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49)
      {
        goto LABEL_49;
      }

LABEL_41:
      v41 = (v110 - 1) & v110;

      v37 = v109;
      v38 = v108;
      v42 = v107;
      continue;
    }

    break;
  }

  v49 = sub_23E4DD07C();
  if (!v49)
  {
    goto LABEL_41;
  }

LABEL_49:
  v50 = *((*MEMORY[0x277D85000] & *v44) + 0x190);
  v118 = (*MEMORY[0x277D85000] & *v44) + 400;
  v119 = v50;
  v117 = v48 & 0xC000000000000001;
  v114 = v48 & 0xFFFFFFFFFFFFFF8;
  v115 = v48;
  v51 = 4;
  v113 = v49;
  while (2)
  {
    v52 = v51 - 4;
    if (v117)
    {
      v53 = MEMORY[0x23EF0AFF0](v51 - 4, v48);
    }

    else
    {
      if (v52 >= *(v114 + 16))
      {
        goto LABEL_101;
      }

      v53 = *(v48 + 8 * v51);
    }

    v54 = v53;
    v55 = v51 - 3;
    if (!__OFADD__(v52, 1))
    {
      if (*(v119() + 16) && (sub_23E4ABDC4(v116), (v56 & 1) != 0))
      {

        v57 = [v54 template];
        v58 = [v57 uniqueName];

        if (!v58)
        {
          goto LABEL_104;
        }

        sub_23E4DCD7C();

        sub_23E4AC968(0, &qword_28110A3F8);
        v59 = sub_23E4AC68C();
        v61 = v60;

        v48 = v115;
        if ((v61 & 1) == 0)
        {
          v62 = (*((*MEMORY[0x277D85000] & *v44) + 0x1A0))(&v120);
          v63 = v116;
          v64 = sub_23E4D2244(v123, v116);
          if (*v65)
          {
            v66 = sub_23E4B6234(v59);
            (v64)(v123, 0);
            v62(&v120, 0);

            v67 = sub_23E4AC9B4(&v120, v63);
            v68 = (v119)(v67);
            if (!*(v68 + 16) || (v69 = sub_23E4ABDC4(v63), (v70 & 1) == 0))
            {

              v48 = v115;
              v49 = v113;
              goto LABEL_78;
            }

            v71 = *(*(v68 + 56) + 8 * v69);

            v48 = v115;
            v49 = v113;
            if (v71 >> 62)
            {
              v72 = sub_23E4DD07C();
            }

            else
            {
              v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v72)
            {
LABEL_78:
              v88 = v116;
              sub_23E4AC9B4(&v120, v116);
              sub_23E4D4264(v88, &v120);
            }
          }

          else
          {
            (v64)(v123, 0);
            v62(&v120, 0);
            v48 = v115;
            v49 = v113;
          }
        }
      }

      else
      {
      }

      v73 = [v54 relevantEarnedInstance];
      if (v73 && (v74 = v73, v75 = [v73 externalIdentifier], v74, v75))
      {
        v76 = sub_23E4DCD7C();
        v78 = v77;

        v79 = (*((*MEMORY[0x277D85000] & *v44) + 0x1C0))();
        if (*(v79 + 16) && (v80 = sub_23E4CED74(v76, v78), (v81 & 1) != 0))
        {
          v82 = *(*(v79 + 56) + 8 * v80);
          swift_bridgeObjectRetain_n();

          v83 = [v54 template];
          v84 = [v83 uniqueName];

          if (!v84)
          {
            goto LABEL_105;
          }

          sub_23E4DCD7C();

          sub_23E4AC968(0, &qword_28110A3F8);
          v85 = sub_23E4AC68C();
          v87 = v86;

          if (v87)
          {

            v44 = v112;
          }

          else
          {
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v82 < 0 || (v82 & 0x4000000000000000) != 0)
            {
              v82 = sub_23E4B6308(v82);
            }

            v89 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v85 >= v89)
            {
              goto LABEL_102;
            }

            v90 = v89 - 1;
            v111 = v76;
            v91 = *((v82 & 0xFFFFFFFFFFFFFF8) + 8 * v85 + 0x20);
            memmove(((v82 & 0xFFFFFFFFFFFFFF8) + 8 * v85 + 32), ((v82 & 0xFFFFFFFFFFFFFF8) + 8 * v85 + 40), 8 * (v89 - 1 - v85));
            *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) = v90;

            v92 = v112;
            v93 = (*((*MEMORY[0x277D85000] & *v112) + 0x1D0))(&v120);
            v95 = v94;
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v123[0] = *v95;
            *v95 = 0x8000000000000000;
            sub_23E4D37F0(v82, v111, v78, v96);

            *v95 = v123[0];
            v93(&v120, 0);
            v44 = v92;
          }

          v48 = v115;
          v49 = v113;
        }

        else
        {

          v48 = v115;
        }
      }

      else
      {
      }

      ++v51;
      if (v55 == v49)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

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
  result = sub_23E4DD15C();
  __break(1u);
  return result;
}

id AAUIAwardsDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_23E4D2FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3453F8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23E4D30F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3452F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_23E4D31EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345300);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_23E4D3274(char *a1, int64_t a2, char a3)
{
  result = sub_23E4B5E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23E4D32A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3453F0);
  v34 = a2;
  result = sub_23E4DD0AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_23E4DD17C();
      sub_23E4DCDAC();
      result = sub_23E4DD18C();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23E4D3550(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E4DCF7C() + 1) & ~v5;
    do
    {
      sub_23E4DD17C();
      sub_23E4DCDAC();

      result = sub_23E4DD18C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23E4D37F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23E4CED74(a2, a3);
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
      sub_23E4D32A8(v16, a4 & 1);
      v11 = sub_23E4CED74(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_23E4DD15C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23E4D396C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_23E4D396C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3453F0);
  v2 = *v0;
  v3 = sub_23E4DD09C();
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

void *sub_23E4D3ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345400);
  v2 = *v0;
  v3 = sub_23E4DCF8C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

uint64_t sub_23E4D3C1C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345400);
  result = sub_23E4DCF9C();
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
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_23E4DD17C();
      sub_23E4DCDAC();

      result = sub_23E4DD18C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

void (*sub_23E4D3F38(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_23E4D4230(v5);
  v5[9] = sub_23E4D403C((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_23E4D3FDC;
}

void sub_23E4D3FDC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_23E4D403C(uint64_t a1, unsigned __int8 a2, char a3))(uint64_t result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_23E4ABDC4(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_23E4B515C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_23E4AD684(v14, a3 & 1);
    v9 = sub_23E4ABDC4(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_23E4DD15C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_23E4D4158;
}

uint64_t sub_23E4D4158(uint64_t result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = *(result + 16);
    v5 = **(result + 8);
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_23E4D3550(*(result + 16), **(result + 8));
    }

    return result;
  }

  v4 = *(result + 16);
  v5 = **(result + 8);
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23E4D4230(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23E4D4258;
}

unint64_t sub_23E4D4264@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  result = sub_23E4ACE84();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v9 == 1)
          {
            v10 = 0x5954495649544341;
          }

          else
          {
            v10 = 0x5354554F4B524F57;
          }

          v11 = 0xE800000000000000;
        }

        else
        {
          v10 = 0x495F524F465F4F47;
          v11 = 0xE900000000000054;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v10 = 0xD000000000000012;
          v11 = 0x800000023E4E09E0;
        }

        else
        {
          v10 = 0x54495445504D4F43;
          v11 = 0xEC000000534E4F49;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x5F5353454E544946;
        }

        else
        {
          v10 = 0x5F444554494D494CLL;
        }

        if (v9 == 3)
        {
          v11 = 0xEC00000053554C50;
        }

        else
        {
          v11 = 0xEF4E4F4954494445;
        }
      }

      v12 = 0xD000000000000012;
      if (a1 != 5)
      {
        v12 = 0x54495445504D4F43;
      }

      v13 = 0xEC000000534E4F49;
      if (a1 == 5)
      {
        v13 = 0x800000023E4E09E0;
      }

      v14 = 0x5F5353454E544946;
      if (a1 != 3)
      {
        v14 = 0x5F444554494D494CLL;
      }

      v15 = 0xEF4E4F4954494445;
      if (a1 == 3)
      {
        v15 = 0xEC00000053554C50;
      }

      if (a1 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x5954495649544341;
      if (a1 != 1)
      {
        v16 = 0x5354554F4B524F57;
      }

      v17 = 0xE800000000000000;
      if (!a1)
      {
        v16 = 0x495F524F465F4F47;
        v17 = 0xE900000000000054;
      }

      v18 = a1 <= 2u ? v16 : v12;
      v19 = a1 <= 2u ? v17 : v13;
      if (v10 == v18 && v11 == v19)
      {
        break;
      }

      v20 = sub_23E4DD12C();

      if (v20)
      {
        goto LABEL_46;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v23;
    v25 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23E4D3ADC();
      v22 = v25;
    }

    *a2 = *(*(v22 + 48) + v7);
    result = sub_23E4D458C(v7);
    *v23 = v25;
  }

  else
  {
LABEL_44:
    *a2 = 7;
  }

  return result;
}

unint64_t sub_23E4D458C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23E4DCF7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_23E4DD17C();
        sub_23E4DCDAC();

        v10 = sub_23E4DD18C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
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

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_23E4D4844(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EF0AFF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23E4D48C4;
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_23E4D4A80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x268))();
    if (v3)
    {
      v4 = v3;
      (*((*v2 & *v3) + 0x68))();
    }
  }
}

uint64_t sub_23E4D4B4C(void **__src, void **__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v22 = __dst;
      v23 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v23;
      __dst = v22;
    }

    __srcb = a4;
    v14 = &a4[v11];
    if (v9 < 8)
    {
      v13 = a4;
    }

    else
    {
      v13 = a4;
      if (__dst > v5)
      {
        v36 = v5;
LABEL_27:
        v37 = __dst;
        v24 = __dst - 1;
        --v4;
        v25 = v14;
        do
        {
          v26 = v14;
          v27 = v4 + 1;
          v28 = *--v25;
          v29 = v24;
          v30 = *v24;
          v31 = v28;
          v32 = v30;
          v33 = sub_23E4A87E8(v31, v32);

          if (v33 == -1)
          {
            if (v27 != v37)
            {
              *v4 = *v29;
            }

            v13 = __srcb;
            v14 = v26;
            if (v26 <= __srcb || (__dst = v29, v29 <= v36))
            {
              __dst = v29;
              goto LABEL_41;
            }

            goto LABEL_27;
          }

          if (v27 != v26)
          {
            *v4 = *v25;
          }

          --v4;
          v14 = v25;
          v13 = __srcb;
          v24 = v29;
        }

        while (v25 > __srcb);
        v14 = v25;
        __dst = v37;
      }
    }
  }

  else
  {
    v12 = __dst;
    v13 = a4;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      __dst = v5;
    }

    else
    {
      __srca = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = sub_23E4A87E8(v17, v18);

          if (v19 != -1)
          {
            break;
          }

          v20 = v15;
          v21 = v5 == v15++;
          if (!v21)
          {
            goto LABEL_14;
          }

LABEL_15:
          ++v5;
          if (v13 >= __srca || v15 >= v4)
          {
            goto LABEL_37;
          }
        }

        v20 = v13;
        v21 = v5 == v13++;
        if (v21)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v5 = *v20;
        goto LABEL_15;
      }

LABEL_37:
      __dst = v5;
      v14 = __srca;
    }
  }

LABEL_41:
  v34 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (__dst != v13 || __dst >= (v13 + (v34 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__dst, v13, 8 * (v34 >> 3));
  }

  return 1;
}

void sub_23E4D4E10(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_23E4D3294(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 8 * *v10);
      __dst = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_23E4D4B4C(__src, __dst, v14, a2);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_23E4D4FB0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  v114 = MEMORY[0x277D84F90];
  v113 = a5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v98 = a4;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v105 = v8;
        v108 = v6;
        v11 = 8 * v7;
        v12 = (*a3 + 8 * v7);
        v14 = *v12;
        v13 = v12 + 2;
        v15 = *(*a3 + 8 * v10);
        v16 = v14;
        v17 = sub_23E4A87E8(v15, v16);

        v100 = v9;
        v18 = v9 + 2;
        while (1)
        {
          v10 = v108;
          if (v108 == v18)
          {
            break;
          }

          v19 = *(v13 - 1);
          v20 = *v13;
          v21 = v19;
          v22 = sub_23E4A87E8(v20, v21);

          ++v18;
          ++v13;
          if ((v17 == -1) == (v22 != -1))
          {
            v10 = v18 - 1;
            break;
          }
        }

        a4 = v98;
        v8 = v105;
        v9 = v100;
        if (v17 == -1)
        {
          if (v10 < v100)
          {
            goto LABEL_114;
          }

          if (v100 < v10)
          {
            v23 = 8 * v10 - 8;
            v24 = v10;
            v25 = v100;
            do
            {
              if (v25 != --v24)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_117;
                }

                v26 = *(v27 + v11);
                *(v27 + v11) = *(v27 + v23);
                *(v27 + v23) = v26;
              }

              ++v25;
              v23 -= 8;
              v11 += 8;
            }

            while (v25 < v24);
          }
        }
      }

      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_111;
        }

        if (v10 - v9 < a4)
        {
          v29 = (v9 + a4);
          if (__OFADD__(v9, a4))
          {
            goto LABEL_112;
          }

          if (v29 >= v28)
          {
            v29 = a3[1];
          }

          if (v29 < v9)
          {
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
            return;
          }

          if (v10 != v29)
          {
            v103 = v29;
            v106 = v8;
            v30 = *a3;
            v31 = *a3 + 8 * v10 - 8;
            v101 = v9;
            v32 = v9 - v10;
            do
            {
              v109 = v10;
              v33 = *(v30 + 8 * v10);
              v34 = v32;
              v35 = v31;
              do
              {
                v36 = *v35;
                v37 = v33;
                v38 = v36;
                v39 = sub_23E4A87E8(v37, v38);

                if (v39 != -1)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_115;
                }

                v40 = *v35;
                v33 = *(v35 + 8);
                *v35 = v33;
                *(v35 + 8) = v40;
                v35 -= 8;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v109 + 1;
              v31 += 8;
              --v32;
            }

            while ((v109 + 1) != v103);
            v10 = v103;
            v8 = v106;
            v9 = v101;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_110;
      }

      v110 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_23E4D2FF4(0, *(v8 + 2) + 1, 1, v8);
      }

      v43 = *(v8 + 2);
      v42 = *(v8 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v8 = sub_23E4D2FF4((v42 > 1), v43 + 1, 1, v8);
      }

      *(v8 + 2) = v44;
      v45 = v8 + 32;
      v46 = &v8[16 * v43 + 32];
      *v46 = v9;
      *(v46 + 1) = v10;
      v104 = *a1;
      if (!*a1)
      {
        goto LABEL_118;
      }

      if (v43)
      {
        v102 = v8 + 32;
        v107 = v8;
        while (1)
        {
          v47 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v48 = *(v8 + 4);
            v49 = *(v8 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_100;
            }

            v64 = &v8[16 * v44];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_102;
            }

            v70 = &v45[16 * v47];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_105;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_107;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                v47 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v44 < 2)
          {
            goto LABEL_108;
          }

          v74 = &v8[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_71:
          if (v69)
          {
            goto LABEL_104;
          }

          v77 = &v45[16 * v47];
          v79 = *v77;
          v78 = *(v77 + 1);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_106;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_78:
          if (v47 - 1 >= v44)
          {
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
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v85 = *a3;
          if (!*a3)
          {
            goto LABEL_116;
          }

          v86 = &v45[16 * v47 - 16];
          v87 = *v86;
          v88 = v47;
          v89 = &v45[16 * v47];
          v90 = *(v89 + 1);
          v91 = (v85 + 8 * *v86);
          v92 = (v85 + 8 * *v89);
          v93 = (v85 + 8 * v90);
          v94 = v113;
          sub_23E4D4B4C(v91, v92, v93, v104);
          if (v112)
          {

            goto LABEL_91;
          }

          v8 = v107;
          if (v90 < v87)
          {
            goto LABEL_95;
          }

          v95 = *(v107 + 2);
          if (v88 > v95)
          {
            goto LABEL_96;
          }

          *v86 = v87;
          *(v86 + 1) = v90;
          if (v88 >= v95)
          {
            goto LABEL_97;
          }

          v44 = v95 - 1;
          memmove(v89, v89 + 16, 16 * (v95 - 1 - v88));
          *(v107 + 2) = v95 - 1;
          v45 = v102;
          if (v95 <= 2)
          {
            goto LABEL_3;
          }
        }

        v52 = &v45[16 * v44];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_98;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_99;
        }

        v59 = &v8[16 * v44];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_101;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_103;
        }

        if (v63 >= v55)
        {
          v81 = &v45[16 * v47];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_109;
          }

          if (v50 < v84)
          {
            v47 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_3:
      v7 = v110;
      v6 = a3[1];
      a4 = v98;
      if (v110 >= v6)
      {
        v114 = v8;
        break;
      }
    }
  }

  v96 = *a1;
  if (!*a1)
  {
    goto LABEL_119;
  }

  v97 = v113;
  sub_23E4D4E10(&v114, v96, a3, v97);
  if (v112)
  {

LABEL_91:
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for AAUIAwardsDataProviderSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AAUIAwardsDataProviderSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23E4D5784()
{
  result = sub_23E4DCC1C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_23E4D58E4(uint64_t a1, int a2)
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

uint64_t sub_23E4D5904(uint64_t result, int a2, int a3)
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

void sub_23E4D5940(uint64_t a1, unint64_t *a2)
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

uint64_t objectdestroy_89Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id AAUIAwardsQuery.__allocating_init(initialAwardsHandler:addedAwardsHandler:removedAwardsHandler:updatedAwardsHandler:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = objc_allocWithZone(sub_23E4DCC5C());

  *&v1[OBJC_IVAR____TtC22ActivityAchievementsUI15AAUIAwardsQuery_query] = sub_23E4DCC2C();
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id AAUIAwardsQuery.init(initialAwardsHandler:addedAwardsHandler:removedAwardsHandler:updatedAwardsHandler:)()
{
  objc_allocWithZone(sub_23E4DCC5C());

  *&v0[OBJC_IVAR____TtC22ActivityAchievementsUI15AAUIAwardsQuery_query] = sub_23E4DCC2C();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AAUIAwardsQuery();
  v1 = objc_msgSendSuper2(&v3, sel_init);

  return v1;
}

id AAUIAwardsQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AAUIAwardsQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAUIAwardsQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AAUIActivityAwardsDateQuery.__allocating_init(dateComponents:initialAwardsHandler:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_23E4DCB1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v4);
  (*(v7 + 16))(v9, a1, v6);
  objc_allocWithZone(sub_23E4DCC9C());

  *&v10[OBJC_IVAR____TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery_query] = sub_23E4DCC7C();
  v14.receiver = v10;
  v14.super_class = v4;
  v11 = objc_msgSendSuper2(&v14, sel_init);

  (*(v7 + 8))(a1, v6);
  return v11;
}

id AAUIActivityAwardsDateQuery.init(dateComponents:initialAwardsHandler:updateHandler:)(uint64_t a1)
{
  v3 = sub_23E4DCB1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  objc_allocWithZone(sub_23E4DCC9C());

  *&v1[OBJC_IVAR____TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery_query] = sub_23E4DCC7C();
  v6 = type metadata accessor for AAUIActivityAwardsDateQuery();
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  (*(v4 + 8))(a1, v3);
  return v7;
}

id AAUIActivityAwardsDateQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AAUIActivityAwardsDateQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAUIActivityAwardsDateQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_23E4D6670()
{
  v1 = [v0 template];
  v2 = [v1 earnLimit];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 template];
  v4 = [v3 earnLimit];

  return [v0 earnedInstanceCount] >= v4;
}

uint64_t sub_23E4D6718(uint64_t a1)
{
  result = [v1 progress];
  if (result)
  {
    v4 = result;
    [result _value];
    v6 = v5;

    result = [v1 goal];
    if (result)
    {
      v7 = result;
      [result _value];
      v9 = v8;

      if (v9 <= 0.0)
      {
        return 0;
      }

      sub_23E4D6934(a1);
      v11 = v10;
      v12 = [v1 template];
      v13 = [v12 earnLimit];

      if (v13)
      {
        v14 = [v1 template];
        v15 = [v14 earnLimit];

        v16 = [v1 earnedInstanceCount] >= v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = [v1 template];
      v18 = [v17 uniqueName];

      if (!v18)
      {
        result = v6 / v9 >= 0.75;
        if (((v11 | v16) & 1) == 0)
        {
          return result;
        }

        return 0;
      }

      v19 = sub_23E4DCD7C();
      v21 = v20;

      if (v19 == 0xD000000000000019 && 0x800000023E4E0EF0 == v21)
      {

        return ((v11 | v16) & 1) == 0;
      }

      v22 = sub_23E4DD12C();

      if ((v11 | v16))
      {
        return 0;
      }

      result = v6 / v9 >= 0.75;
      if (v22)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_23E4D6934(uint64_t a1)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_23E4DCC0C();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345418);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v68 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v61 - v8;
  v10 = sub_23E4DCB9C();
  v74 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v69 = v61 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v71 = v61 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v72 = v61 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v61 - v20;
  v22 = sub_23E4DCB1C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v61 - v27;
  v29 = [v2 relevantEarnedInstance];
  if (v29)
  {
    v30 = v29;
    v70 = v21;
    v31 = [v29 earnedDateComponents];
    if (v31)
    {
      v32 = v31;
      sub_23E4DCB0C();

      (*(v23 + 32))(v28, v26, v22);
      sub_23E4DCBDC();
      v33 = v74;
      v64 = *(v74 + 48);
      if (v64(v9, 1, v10) == 1)
      {
        (*(v23 + 8))(v28, v22);

        sub_23E4D84D8(v9);
      }

      else
      {
        v62 = v23;
        v63 = v22;
        v61[0] = *(v33 + 32);
        v61[1] = v33 + 32;
        (v61[0])(v70, v9, v10);
        v34 = [v2 template];
        v35 = [v34 uniqueName];

        if (v35)
        {
          v36 = sub_23E4DCD7C();
          v38 = v37;

          v75[0] = v36;
          v75[1] = v38;
          MEMORY[0x28223BE20](v39);
          v61[-2] = v75;
          LOBYTE(v36) = sub_23E4B82B8(sub_23E4CF440, &v61[-4], &unk_2850CB018);
          sub_23E4D8540(&unk_2850CB038);

          if (v36)
          {

            (*(v74 + 8))(v70, v10);
            (*(v62 + 8))(v28, v63);
          }

          else
          {
            sub_23E4DCB8C();
            v40 = [v2 template];
            v41 = [v40 duplicateRemovalCalendarUnit];

            v42 = v63;
            v43 = v70;
            if (v41 == 0x2000)
            {
              v46 = sub_23E4DCB5C();
              v47 = sub_23E4DCBBC();
              v48 = ACHStartOfFitnessWeekBeforeDateInCalendar();

              sub_23E4DCB6C();
              v49 = v65;
              v50 = v66;
              v51 = v67;
              (*(v66 + 104))(v65, *MEMORY[0x277CC9968], v67);
              v52 = v68;
              sub_23E4DCBEC();
              (*(v50 + 8))(v49, v51);
              v53 = v64(v52, 1, v10);
              v54 = (v74 + 8);
              if (v53 == 1)
              {

                v55 = *v54;
                (*v54)(v71, v10);
                v55(v72, v10);
                v55(v70, v10);
                (*(v62 + 8))(v28, v63);
                sub_23E4D84D8(v52);
              }

              else
              {
                sub_23E4DCB4C();
                v57 = v52;
                v58 = *v54;
                (*v54)(v57, v10);
                (v61[0])(v69, v13, v10);
                sub_23E4D8594();
                v59 = v72;
                v60 = v70;
                if (sub_23E4DCD4C() & 1) != 0 || (sub_23E4DCD4C())
                {
                }

                else
                {
                  sub_23E4DCD4C();
                }

                v58(v69, v10);
                v58(v71, v10);
                v58(v59, v10);
                v58(v60, v10);
                (*(v62 + 8))(v28, v63);
              }
            }

            else if (v41 == 16)
            {
              v44 = v72;
              sub_23E4DCBFC();

              v45 = *(v74 + 8);
              v45(v44, v10);
              v45(v43, v10);
              (*(v62 + 8))(v28, v42);
            }

            else
            {

              v56 = *(v74 + 8);
              v56(v72, v10);
              v56(v43, v10);
              (*(v62 + 8))(v28, v42);
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
    }
  }
}

void sub_23E4D7188()
{
  v1 = v0;
  v2 = 0;
  for (i = &unk_2850CB2A0; ; i += 2)
  {
    v4 = *(i - 1);
    v18 = v0;

    v4(&v17, &v18);

    if (v17)
    {
      break;
    }

    if (++v2 == 55)
    {
      v5 = sub_23E4DCEBC();
      v6 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], v5))
      {
        v7 = v6;
        v8 = v1;
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v18 = v10;
        *v9 = 136315138;
        v11 = [v8 template];
        v12 = [v11 uniqueName];

        if (v12)
        {
          v13 = sub_23E4DCD7C();
          v15 = v14;

          v16 = sub_23E4B6768(v13, v15, &v18);

          *(v9 + 4) = v16;
          _os_log_impl(&dword_23E4A3000, v7, v5, "[AAUIAwardsDataProvider] Could not find earned priority for template: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v10);
          MEMORY[0x23EF0BFA0](v10, -1, -1);
          MEMORY[0x23EF0BFA0](v9, -1, -1);
        }

        else
        {
          __break(1u);
        }
      }

      return;
    }
  }
}

void sub_23E4D7348(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001ELL && 0x800000023E4E1410 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7420(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001CLL && 0x800000023E4E13F0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D74F8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001CLL && 0x800000023E4E13D0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D75E8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0x6E6F68746172614DLL && v7 == 0xEF74756F6B726F57)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_23E4DD12C();
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
}

void sub_23E4D76D8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000019 && 0x800000023E4E13B0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D77B0(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000013 && 0x800000023E4E1390 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7888(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001DLL && 0x800000023E4E1370 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7960(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000016 && 0x800000023E4E1350 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7A38(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0x6E6F6C6874617544 && v7 == 0xEF74756F6B726F57)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_23E4DD12C();
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
}

void sub_23E4D7B28(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001DLL && 0x800000023E4E1330 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7C00(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000022 && 0x800000023E4E1300 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7CD8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000018 && 0x800000023E4E12E0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7DB0(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001DLL && 0x800000023E4E12C0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D7E88(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_23E4D7F6C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0x444B303174736542 && v7 == 0xEF6E6F6974617275)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_23E4DD12C();
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
}

void sub_23E4D805C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000019 && 0x800000023E4E1200 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D8134(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0x75444B3574736542 && v7 == 0xEE006E6F69746172)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_23E4DD12C();
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
}

void sub_23E4D8224(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000018 && 0x800000023E4E11E0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4D82FC(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_23E4D8400(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001CLL && 0x800000023E4E0F70 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

uint64_t sub_23E4D84D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E4D8594()
{
  result = qword_28110A448;
  if (!qword_28110A448)
  {
    sub_23E4DCB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110A448);
  }

  return result;
}

void *sub_23E4D85F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345308);
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

void sub_23E4D867C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = *(v20 + 8 * a3);
    v17 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 template];
      v11 = [v10 displayOrder];

      v12 = [v9 template];
      v13 = [v12 displayOrder];

      if (v11 >= v13)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 8;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v14;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23E4D87B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_23E4DD12C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E4D8880(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23E4D3294(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_23E4DA438((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E4D2FF4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_23E4D2FF4((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_23E4DA438((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23E4D8DCC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v124 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345438);
  result = MEMORY[0x28223BE20](v8 - 8);
  v133 = a3;
  v134 = &v121 - v10;
  v11 = a3[1];
  if (v11 >= 1)
  {
    v121 = a4;
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = v12++;
      v132 = v13;
      if (v12 < v11)
      {
        v15 = *v133;
        v16 = *(*v133 + 8 * v14);
        v17 = *(*v133 + 8 * v12);
        v18 = v16;
        v125 = v17;
        result = AAUILocalizedModalityForAchievement(v17);
        if (!result)
        {
          goto LABEL_133;
        }

        v19 = result;
        v130 = v11;
        v123 = v5;
        v20 = sub_23E4DCD7C();
        v22 = v21;

        v137 = v20;
        v138 = v22;
        result = AAUILocalizedModalityForAchievement(v18);
        if (!result)
        {
          goto LABEL_134;
        }

        v23 = result;
        v24 = sub_23E4DCD7C();
        v26 = v25;

        v135 = v24;
        v136 = v26;
        v27 = sub_23E4DCBAC();
        v28 = *(v27 - 8);
        v11 = v134;
        v128 = *(v28 + 56);
        v129 = v27;
        v127 = v28 + 56;
        v128(v134, 1, 1);
        v126 = sub_23E4ABBE4();
        v131 = sub_23E4DCF4C();
        sub_23E4AC750(v11, &qword_27E345438);

        v29 = v14;
        v30 = v14 + 2;
        v122 = v29;
        v125 = (8 * v29);
        v31 = (v15 + 8 * v29 + 16);
        while (1)
        {
          v12 = v130;
          if (v130 == v30)
          {
            break;
          }

          v32 = *(v31 - 1);
          v33 = *v31;
          v34 = v32;
          result = AAUILocalizedModalityForAchievement(v33);
          if (!result)
          {
            goto LABEL_128;
          }

          v35 = result;
          v36 = sub_23E4DCD7C();
          v38 = v37;

          v137 = v36;
          v138 = v38;
          result = AAUILocalizedModalityForAchievement(v34);
          if (!result)
          {
            goto LABEL_127;
          }

          v39 = result;
          v11 = v131 == -1;
          v40 = sub_23E4DCD7C();
          v42 = v41;

          v135 = v40;
          v136 = v42;
          v43 = v134;
          (v128)(v134, 1, 1, v129);
          v44 = sub_23E4DCF4C();
          sub_23E4AC750(v43, &qword_27E345438);

          ++v30;
          ++v31;
          v13 = v132;
          if (((v11 ^ (v44 != -1)) & 1) == 0)
          {
            v12 = v30 - 1;
            break;
          }
        }

        v14 = v122;
        v5 = v123;
        if (v131 == -1)
        {
          if (v12 < v122)
          {
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
LABEL_135:
            __break(1u);
            return result;
          }

          if (v122 < v12)
          {
            v45 = 8 * v12 - 8;
            v46 = v12;
            v47 = v122;
            do
            {
              if (v47 != --v46)
              {
                v48 = *v133;
                if (!*v133)
                {
                  goto LABEL_131;
                }

                v49 = *&v125[v48];
                *&v125[v48] = *(v48 + v45);
                *(v48 + v45) = v49;
              }

              ++v47;
              v45 -= 8;
              v125 += 8;
            }

            while (v47 < v46);
          }
        }
      }

      v50 = v133[1];
      if (v12 < v50)
      {
        if (__OFSUB__(v12, v14))
        {
          goto LABEL_119;
        }

        if (v12 - v14 < v121)
        {
          if (__OFADD__(v14, v121))
          {
            goto LABEL_120;
          }

          if (v14 + v121 < v50)
          {
            v50 = (v14 + v121);
          }

          if (v50 < v14)
          {
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (v12 != v50)
          {
            v128 = v50;
            v122 = v14;
            v123 = v5;
            v51 = v12;
            v52 = *v133;
            v53 = *v133 + 8 * v51 - 8;
            v54 = v14 - v51;
            do
            {
              v130 = v53;
              v131 = v51;
              v55 = *(v52 + 8 * v51);
              v129 = v54;
              do
              {
                v56 = *v53;
                v11 = v55;
                v57 = v56;
                result = AAUILocalizedModalityForAchievement(v11);
                if (!result)
                {
                  goto LABEL_125;
                }

                v58 = result;
                v59 = sub_23E4DCD7C();
                v61 = v60;

                v137 = v59;
                v138 = v61;
                result = AAUILocalizedModalityForAchievement(v57);
                if (!result)
                {
                  goto LABEL_124;
                }

                v62 = result;
                v63 = sub_23E4DCD7C();
                v65 = v64;

                v135 = v63;
                v136 = v65;
                v66 = sub_23E4DCBAC();
                v67 = v134;
                (*(*(v66 - 8) + 56))(v134, 1, 1, v66);
                sub_23E4ABBE4();
                v68 = sub_23E4DCF4C();
                sub_23E4AC750(v67, &qword_27E345438);

                if (v68 != -1)
                {
                  break;
                }

                if (!v52)
                {
                  goto LABEL_126;
                }

                v69 = *v53;
                v55 = *(v53 + 8);
                *v53 = v55;
                *(v53 + 8) = v69;
                v53 -= 8;
              }

              while (!__CFADD__(v54++, 1));
              v51 = v131 + 1;
              v53 = v130 + 8;
              v54 = v129 - 1;
            }

            while ((v131 + 1) != v128);
            v12 = v128;
            v14 = v122;
            v5 = v123;
            v13 = v132;
          }
        }
      }

      if (v12 < v14)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23E4D2FF4(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v72 = *(v13 + 2);
      v71 = *(v13 + 3);
      v73 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        result = sub_23E4D2FF4((v71 > 1), v72 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v73;
      v74 = &v13[16 * v72];
      *(v74 + 4) = v14;
      *(v74 + 5) = v12;
      v75 = *v124;
      if (!*v124)
      {
        goto LABEL_132;
      }

      if (v72)
      {
        while (1)
        {
          v11 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v76 = *(v13 + 4);
            v77 = *(v13 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_60:
            if (v79)
            {
              goto LABEL_107;
            }

            v92 = &v13[16 * v73];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_110;
            }

            v98 = &v13[16 * v11 + 32];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_114;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v11 = v73 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v102 = &v13[16 * v73];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_74:
          if (v97)
          {
            goto LABEL_109;
          }

          v105 = &v13[16 * v11];
          v107 = *(v105 + 4);
          v106 = *(v105 + 5);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_112;
          }

          if (v108 < v96)
          {
            goto LABEL_3;
          }

LABEL_81:
          v113 = v11 - 1;
          if (v11 - 1 >= v73)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*v133)
          {
            goto LABEL_129;
          }

          v114 = *&v13[16 * v113 + 32];
          v115 = *&v13[16 * v11 + 40];
          sub_23E4DA62C((*v133 + 8 * v114), (*v133 + 8 * *&v13[16 * v11 + 32]), (*v133 + 8 * v115), v75);
          if (v5)
          {
          }

          if (v115 < v114)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_23E4D3294(v13);
          }

          if (v113 >= *(v13 + 2))
          {
            goto LABEL_104;
          }

          v116 = &v13[16 * v113];
          *(v116 + 4) = v114;
          *(v116 + 5) = v115;
          v139 = v13;
          result = sub_23E4DB388(v11);
          v13 = v139;
          v73 = *(v139 + 2);
          if (v73 <= 1)
          {
            goto LABEL_3;
          }
        }

        v80 = &v13[16 * v73 + 32];
        v81 = *(v80 - 64);
        v82 = *(v80 - 56);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_105;
        }

        v85 = *(v80 - 48);
        v84 = *(v80 - 40);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_106;
        }

        v87 = &v13[16 * v73];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_108;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_111;
        }

        if (v91 >= v83)
        {
          v109 = &v13[16 * v11 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_115;
          }

          if (v78 < v112)
          {
            v11 = v73 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v11 = v133[1];
      if (v12 >= v11)
      {
        goto LABEL_91;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_91:
  v11 = *v124;
  if (!*v124)
  {
    goto LABEL_135;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_23E4D3294(v13);
    v13 = result;
  }

  v139 = v13;
  v117 = *(v13 + 2);
  if (v117 >= 2)
  {
    while (*v133)
    {
      v118 = *&v13[16 * v117];
      v119 = *&v13[16 * v117 + 24];
      sub_23E4DA62C((*v133 + 8 * v118), (*v133 + 8 * *&v13[16 * v117 + 16]), (*v133 + 8 * v119), v11);
      if (v5)
      {
      }

      if (v119 < v118)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_23E4D3294(v13);
      }

      if (v117 - 2 >= *(v13 + 2))
      {
        goto LABEL_117;
      }

      v120 = &v13[16 * v117];
      *v120 = v118;
      *(v120 + 1) = v119;
      v139 = v13;
      result = sub_23E4DB388(v117 - 1);
      v13 = v139;
      v117 = *(v139 + 2);
      if (v117 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

void sub_23E4D9740(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_23E4D3294(v5);
    }

    v95 = *(v5 + 2);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v95 - 1);
        v97 = *&v5[16 * v95];
        v98 = *&v5[16 * v95 + 24];
        sub_23E4DAB1C((v96 + 8 * v97), (v96 + 8 * *&v5[16 * v95 + 16]), (v96 + 8 * v98), v10);
        if (v6)
        {
          break;
        }

        if (v98 < v97)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23E4D3294(v5);
        }

        if (v95 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v99 = &v5[16 * v95];
        *v99 = v97;
        *(v99 + 1) = v98;
        sub_23E4DB388(v95 - 1);
        v95 = *(v5 + 2);
        v7 = a3;
      }

      while (v95 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v109 = v8;
      v105 = v6;
      v5 = v9;
      v101 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*v7 + 8 * v12);
      v17 = v15;
      v18 = [v16 template];
      v113 = [v18 displayOrder];

      v19 = [v17 template];
      v111 = [v19 displayOrder];

      v103 = v5;
      v20 = v5 + 2;
      while (1)
      {
        v12 = v109;
        if (v109 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        v24 = [v22 template];
        v5 = v10;
        v25 = [v24 displayOrder];

        v26 = [v23 template];
        v27 = [v26 displayOrder];

        v28 = v25 >= v27;
        v10 = v5;
        v29 = v28;
        ++v20;
        ++v14;
        if ((((v113 < v111) ^ v29) & 1) == 0)
        {
          v12 = (v20 - 1);
          break;
        }
      }

      v11 = v103;
      v6 = v105;
      v7 = a3;
      v30 = v101;
      if (v113 < v111)
      {
        if (v12 < v103)
        {
          goto LABEL_118;
        }

        if (v103 < v12)
        {
          v31 = 8 * v12 - 8;
          v32 = v12;
          v33 = v103;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v7[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v37 = &v11[a4];
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v37 >= v36)
        {
          v37 = v7[1];
        }

        if (v37 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v37)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_23E4D2FF4(0, *(v10 + 2) + 1, 1, v10);
    }

    v50 = *(v10 + 2);
    v49 = *(v10 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v10 = sub_23E4D2FF4((v49 > 1), v50 + 1, 1, v10);
    }

    *(v10 + 2) = v51;
    v52 = &v10[16 * v50];
    *(v52 + 4) = v11;
    *(v52 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v116 = v12;
    if (v50)
    {
      while (1)
      {
        v53 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v10 + 4);
          v55 = *(v10 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_58:
          if (v57)
          {
            goto LABEL_105;
          }

          v70 = &v10[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_108;
          }

          v76 = &v10[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_112;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v51 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v80 = &v10[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_72:
        if (v75)
        {
          goto LABEL_107;
        }

        v83 = &v10[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_110;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_79:
        v91 = v53 - 1;
        if (v53 - 1 >= v51)
        {
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
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v92 = *&v10[16 * v91 + 32];
        v93 = *&v10[16 * v53 + 40];
        sub_23E4DAB1C((*v7 + 8 * v92), (*v7 + 8 * *&v10[16 * v53 + 32]), (*v7 + 8 * v93), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v93 < v92)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23E4D3294(v10);
        }

        if (v91 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v94 = &v10[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        sub_23E4DB388(v53);
        v51 = *(v10 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v10[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_103;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_104;
      }

      v65 = &v10[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_106;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_109;
      }

      if (v69 >= v61)
      {
        v87 = &v10[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_113;
        }

        if (v56 < v90)
        {
          v53 = v51 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v116;
    if (v116 >= v8)
    {
      goto LABEL_89;
    }
  }

  v102 = v10;
  v104 = v11;
  v106 = v6;
  v38 = *v7;
  v39 = *v7 + 8 * v12 - 8;
  v40 = &v11[-v12];
  v110 = v37;
LABEL_31:
  v114 = v39;
  v115 = v12;
  v41 = *(v38 + 8 * v12);
  v112 = v40;
  while (1)
  {
    v42 = *v39;
    v43 = v41;
    v44 = v42;
    v45 = [v43 template];
    v5 = [v45 displayOrder];

    v46 = [v44 template];
    v47 = [v46 displayOrder];

    if (v5 >= v47)
    {
LABEL_30:
      ++v12;
      v39 = v114 + 8;
      v40 = v112 - 1;
      if (v115 + 1 != v110)
      {
        goto LABEL_31;
      }

      v12 = v110;
      v11 = v104;
      v6 = v106;
      v7 = a3;
      v10 = v102;
      goto LABEL_38;
    }

    if (!v38)
    {
      break;
    }

    v48 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v48;
    v39 -= 8;
    v28 = __CFADD__(v40++, 1);
    if (v28)
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t sub_23E4D9E5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_23E4D3294(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_23E4DAE7C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_23E4DD12C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23E4DD12C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E4D2FF4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23E4D2FF4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_23E4DAE7C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23E4D3294(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_23E4DB388(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_23E4DD12C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}