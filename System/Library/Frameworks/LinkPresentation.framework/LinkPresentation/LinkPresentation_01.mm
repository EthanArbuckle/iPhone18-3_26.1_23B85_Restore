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

uint64_t sub_1AE969998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE969A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE969A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE969B54(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AE969B9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1AE969B54(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1AE969C9C(void *a1)
{
  v1 = [a1 CGImage];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v2, v3);
  if (CopyWithColorSpace)
  {
    v6 = CopyWithColorSpace;

    v2 = v6;
  }

  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);
  v30.origin.x = sub_1AE97E404(0.8, 0.0, 0.0, Width, Height);
  v9 = CGImageCreateWithImageInRect(v2, v30);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v10 = v9;
  v11 = __CGBitmapContextCreate(v4);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12 = v11;
  sub_1AE9888A4();
  type metadata accessor for DominantColorAnalysisProcessor();
  v13 = v12;
  v14 = sub_1AE975788(v13, 20);
  v15 = (*(*v14 + 360))();
  v16 = (*(*v14 + 328))(v15);
  if (!v16)
  {
LABEL_15:
    v23 = (*(*v14 + 304))();

    return v23;
  }

  v17 = v16;
  v29 = *(*v14 + 304);
  result = v29();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_21:

LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1AE9C6D00;
    *(v26 + 32) = v17;
    v27 = v17;
    v28 = v29();
    sub_1AE96A184(v28);

    return v26;
  }

  v24 = result;
  v25 = sub_1AE9889A4();
  result = v24;
  if (!v25)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1B2709E60](0);
LABEL_13:
    v20 = v19;

    sub_1AE96A53C();
    v21 = v17;
    v22 = sub_1AE988904();

    if (v22)
    {

      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE96A02C(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for LPDominantColorImageAnalyzer()) init];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(a1);

  return v3;
}

id sub_1AE96A0A8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AE96A0DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LPDominantColorImageAnalyzer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1AE96A150()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LPDominantColorImageAnalyzer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AE96A184(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1AE9889A4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1AE9889A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1AE96A274(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AE96A314(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AE96A274(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1AE9889A4();
LABEL_9:
  result = sub_1AE988A64();
  *v1 = result;
  return result;
}

uint64_t sub_1AE96A314(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE9889A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AE9889A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE96A5AC();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6518);
            v9 = sub_1AE96A494(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1AE96A53C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1AE96A494(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2709E60](a2, a3);
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
    return sub_1AE96A514;
  }

  __break(1u);
  return result;
}

unint64_t sub_1AE96A53C()
{
  result = qword_1EB5E4DD8;
  if (!qword_1EB5E4DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E4DD8);
  }

  return result;
}

unint64_t sub_1AE96A5AC()
{
  result = qword_1EB5E6520;
  if (!qword_1EB5E6520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E6518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E6520);
  }

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

id sub_1AE96A658()
{
  sub_1AE96A854();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB5E76B0 = result;
  return result;
}

uint64_t sub_1AE96A6B0()
{
  if (qword_1EB5E76A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB5E76B0;
  v1 = sub_1AE9886A4();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = sub_1AE9886E4();
  return v3;
}

uint64_t sub_1AE96A770()
{
  if (qword_1EB5E76A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB5E76B0;
  v1 = sub_1AE9886A4();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_1AE9886E4();
  v3 = sub_1AE9886B4();

  return v3;
}

unint64_t sub_1AE96A854()
{
  result = qword_1EB5E6800;
  if (!qword_1EB5E6800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E6800);
  }

  return result;
}

uint64_t sub_1AE96A8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AE9C6D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  return v0;
}

id sub_1AE96A93C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aboveTopCaptionView];
  *a2 = result;
  return result;
}

id sub_1AE96A998@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 topCaptionView];
  *a2 = result;
  return result;
}

id sub_1AE96A9F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bottomCaptionView];
  *a2 = result;
  return result;
}

id sub_1AE96AA50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 belowBottomCaptionView];
  *a2 = result;
  return result;
}

id sub_1AE96AAD0()
{
  result = [v0 textView];
  if (result)
  {
    v2 = result;
    v3 = [result text];

    if (v3)
    {
      v4 = sub_1AE9886E4();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE96AB5C(uint64_t a1)
{
  v2 = v1;
  v40 = v2;
  v4 = [v2 textView];
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  v6 = &off_1E7A38000;
  v7 = [v4 beginningOfDocument];
  v8 = a1 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range;
  v9 = *(a1 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range);
  v10 = &off_1E7A38000;
  v11 = [v5 positionFromPosition:v7 offset:v9];

  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = [v5 beginningOfDocument];
  v13 = *(v8 + 8);
  if (__OFADD__(v9, v13))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v12;
  v10 = [v5 positionFromPosition:v12 offset:v9 + v13];

  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v5 textRangeFromPosition:v11 toPosition:v10];
  if (v15)
  {
    v6 = v15;
    v16 = [v5 selectionRectsForRange_];
    sub_1AE96AF08();
    v17 = sub_1AE988794();

    v7 = v17;
    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_8:
        v42 = MEMORY[0x1E69E7CC0];
        sub_1AE96AF7C(0, v18 & ~(v18 >> 63), 0);
        if ((v18 & 0x8000000000000000) == 0)
        {
          v38 = v6;
          v39 = v10;
          v41 = v5;
          v19 = v42;
          sub_1AE988824();
          v20 = 0;
          v21 = v7;
          v22 = v7 & 0xC000000000000001;
          v23 = v7;
          do
          {
            if (v22)
            {
              v24 = MEMORY[0x1B2709E60](v20, v21);
            }

            else
            {
              v24 = *(v21 + 8 * v20 + 32);
            }

            v25 = v24;
            sub_1AE988814();
            sub_1AE9887E4();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            [v25 rect];
            [v40 convertRect:v41 fromCoordinateSpace:?];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;

            v35 = *(v42 + 16);
            v34 = *(v42 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_1AE96AF7C((v34 > 1), v35 + 1, 1);
            }

            ++v20;
            *(v42 + 16) = v35 + 1;
            v36 = (v42 + 32 * v35);
            v36[4] = v27;
            v36[5] = v29;
            v36[6] = v31;
            v36[7] = v33;
            v21 = v23;
          }

          while (v18 != v20);

          return v19;
        }

        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_21:

      return MEMORY[0x1E69E7CC0];
    }

LABEL_20:
    v18 = sub_1AE9889A4();
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1AE988AE4();
  __break(1u);
  return result;
}

unint64_t sub_1AE96AF08()
{
  result = qword_1EB5E65A0;
  if (!qword_1EB5E65A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E65A0);
  }

  return result;
}

char *sub_1AE96AF7C(char *a1, int64_t a2, char a3)
{
  result = sub_1AE96AF9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AE96AF9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E65A8);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AE96B0B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE96B0D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1AE96B144(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1AE96B198()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AE9C6F50;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  return v0;
}

id sub_1AE96B214@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leftView];
  *a2 = result;
  return result;
}

id sub_1AE96B270@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rightView];
  *a2 = result;
  return result;
}

uint64_t sub_1AE96B36C()
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1AE988AE4();
  __break(1u);
  return result;
}

id sub_1AE96B48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1AE96B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC16LinkPresentation11LPTextRange_path] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for LPTextRange();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1AE96B62C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LPTextRange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for _NSRange()
{
  if (!qword_1EB5E65C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB5E65C0);
    }
  }
}

double sub_1AE96B774()
{

  return sub_1AE96B834(&selRef_getRed_green_blue_alpha_);
}

double sub_1AE96B7D4()
{

  return sub_1AE96B834(&selRef_getHue_saturation_brightness_alpha_);
}

double sub_1AE96B834(SEL *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  [v1 *a1];
  return *v6;
}

void sub_1AE96B8B0()
{
  v0 = sub_1AE96B834(&selRef_getRed_green_blue_alpha_);
  v2 = v1;
  v4 = v3;
  if (v0 <= 0.03928)
  {
    if (v1 <= 0.03928)
    {
LABEL_3:
      if (v4 <= 0.03928)
      {
        return;
      }

LABEL_7:
      pow((v4 + 0.055) / 1.055, 2.4);
      return;
    }
  }

  else
  {
    pow((v0 + 0.055) / 1.055, 2.4);
    if (v2 <= 0.03928)
    {
      goto LABEL_3;
    }
  }

  pow((v2 + 0.055) / 1.055, 2.4);
  if (v4 > 0.03928)
  {
    goto LABEL_7;
  }
}

void sub_1AE96B9FC(void *a1)
{
  v1 = a1;
  v2 = sub_1AE96B834(&selRef_getRed_green_blue_alpha_);
  v4 = v3;
  v6 = v5;
  if (v2 > 0.03928)
  {
    pow((v2 + 0.055) / 1.055, 2.4);
    if (v4 <= 0.03928)
    {
      goto LABEL_6;
    }

LABEL_5:
    pow((v4 + 0.055) / 1.055, 2.4);
    goto LABEL_6;
  }

  if (v3 > 0.03928)
  {
    goto LABEL_5;
  }

LABEL_6:

  if (v6 > 0.03928)
  {
    pow((v6 + 0.055) / 1.055, 2.4);
  }
}

BOOL sub_1AE96BB50()
{
  v1 = [objc_opt_self() forceDarkLuminanceThreshold];
  if (v1)
  {
    v6 = 0.0;
    v7 = 1;
    v2 = v1;
    MEMORY[0x1B2709C60](v1, &v6);

    if (v7)
    {
      v3 = 0.38;
    }

    else
    {
      v3 = v6;
    }
  }

  else
  {
    v3 = 0.38;
  }

  [v0 _lp_contrastRatioLuminance];
  return v4 < v3;
}

BOOL sub_1AE96BBFC(void *a1)
{
  v1 = a1;
  v2 = sub_1AE96BB50();

  return v2;
}

double sub_1AE96BC94(double a1)
{
  [v1 _lp_contrastRatioLuminance];
  if (v3 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3;
  }

  if (v3 > a1)
  {
    v3 = a1;
  }

  return (v4 + 0.05) / (v3 + 0.05);
}

double sub_1AE96BCE4(void *a1, double a2)
{
  [a1 _lp_contrastRatioLuminance];
  if (v3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 > a2)
  {
    v3 = a2;
  }

  return (v4 + 0.05) / (v3 + 0.05);
}

id sub_1AE96BD30(void *a1)
{
  [a1 _lp_contrastRatioLuminance];

  return [v1 _lp_contrastWithLuminance_];
}

double sub_1AE96BD6C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 _lp_contrastRatioLuminance];
  [v5 _lp_contrastWithLuminance_];
  v7 = v6;

  return v7;
}

BOOL sub_1AE96BDD4(void *a1)
{
  v3 = [v1 _lp_luminosityLevel];
  if (v3 == [a1 _lp_luminosityLevel])
  {
    return 0;
  }

  [v1 _lp_contrastWithColor_];
  return v5 >= 4.6;
}

BOOL sub_1AE96BE54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = [v5 _lp_luminosityLevel];
  if (v6 == [v4 _lp_luminosityLevel])
  {

    return 0;
  }

  else
  {
    [v5 _lp_contrastWithColor_];
    v9 = v8;

    return v9 >= 4.6;
  }
}

id sub_1AE96BEFC()
{
  swift_getObjCClassMetadata();
  v0 = sub_1AE96BF34();

  return v0;
}

id sub_1AE96BF34()
{
  v0 = [swift_getObjCClassFromMetadata() systemBackgroundColor];

  return v0;
}

uint64_t sub_1AE96C028()
{
  swift_beginAccess();
  if ((*(v0 + 16) & 0xC000000000000001) != 0)
  {

    sub_1AE9889A4();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1AE96C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66C0);
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  sub_1AE988824();
  v5[27] = sub_1AE988814();
  v8 = sub_1AE9887E4();
  v5[28] = v8;
  v5[29] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AE96C1B8, v8, v7);
}

uint64_t sub_1AE96C1B8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 21;
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1AE96C360;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for UIViewAnimatingPosition(0);
  sub_1AE9887F4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1AE96C560;
  v1[13] = &block_descriptor;
  [v9 addCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1AE96C360()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1AE96C468, v2, v1);
}

uint64_t sub_1AE96C468()
{
  v1 = v0[22];
  v2 = v0[23];

  swift_beginAccess();
  v3 = sub_1AE96E2F8(v1);
  swift_endAccess();

  v5 = *(v2 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1AE9889A4();

    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!*(v5 + 16))
  {
LABEL_3:
    (*(v0[23] + 32))(v4);
  }

LABEL_4:

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AE96C560(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66C0);
  return sub_1AE988804();
}

void sub_1AE96C5BC()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    swift_beginAccess();
    v1 = *(v0 + 16);
    if ((v1 & 0xC000000000000001) != 0)
    {

      sub_1AE988994();
      sub_1AE9711C0();
      sub_1AE97120C();
      sub_1AE988864();
      v1 = v17;
      v2 = v18;
      v3 = v19;
      v4 = v20;
      v5 = v21;
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v2 = v1 + 56;
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

      v5 = v8 & *(v1 + 56);

      v4 = 0;
    }

    if (v1 < 0)
    {
      goto LABEL_15;
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

LABEL_13:
      v12 = (v10 - 1) & v10;
      v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
      if (!v13)
      {
LABEL_19:
        sub_1AE971264();
        return;
      }

      while (1)
      {
        [v13 startAnimation];

        v4 = v11;
        v5 = v12;
        if ((v1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v14 = sub_1AE9889C4();
        if (v14)
        {
          v15 = v14;
          sub_1AE9711C0();
          swift_dynamicCast();
          v13 = v16;
          v11 = v4;
          v12 = v5;
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_19;
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
        goto LABEL_19;
      }

      v10 = *(v2 + 8 * v11);
      ++v9;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1AE96C7B4(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_viewController] = a1;
  v5[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_reversed] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1AE96C81C(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_viewController] = a1;
  v2[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_reversed] = a2;
  v4.receiver = v2;
  v4.super_class = _s18TransitionAnimatorCMa();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1AE96C88C(void *a1)
{
  v4 = *(v1 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_viewController);
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = [v5 window];

  if (!v7)
  {
    return 0;
  }

  v8 = [a1 containerView];
  v9 = sub_1AE97FAFC();
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x68))();

  v12 = [v11 snapshotViewAfterScreenUpdates_];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  v14 = sub_1AE97FAFC();
  v15 = sub_1AE97FAFC();
  v16 = (*((*v10 & *v15) + 0x68))();

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v14 convertRect:v7 toCoordinateSpace:{v18, v20, v22, v24}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v13 setFrame_];
  v33 = sub_1AE97FAFC();
  v34 = (*((*v10 & *v33) + 0x68))();

  [v34 setAlpha_];
  v35 = [v4 navigationBar];
  v36 = [v35 snapshotViewAfterScreenUpdates_];

  if (!v36)
  {

    return 0;
  }

  v37 = v36;
  v38 = [v4 navigationBar];
  [v38 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v37 setFrame_];
  type metadata accessor for LPCustomizationPickerViewController(0);
  v47 = sub_1AE980670();
  [v8 bounds];
  [v47 setFrame_];

  v48 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  v49 = *&v4[v48];
  [v49 bounds];
  [v49 convertRect:v7 toCoordinateSpace:?];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_1AE97FBD8();

  v163 = sub_1AE970758(v58);
  sub_1AE96EF68(&v163);
  v159 = v48;
  v155 = v37;
  v156 = v13;
  v160 = v7;
  v157 = v8;

  v59 = v163;
  if (v163 < 0 || (v163 & 0x4000000000000000) != 0)
  {
LABEL_47:
    v60 = sub_1AE9889A4();
  }

  else
  {
    v60 = *(v163 + 16);
  }

  v61 = &selRef_fileIcon;
  v154 = v47;
  if (v60)
  {
    v62 = 0;
    v47 = (v59 & 0xC000000000000001);
    v161 = MEMORY[0x1E69E7CC0];
    do
    {
      v63 = v62;
      while (1)
      {
        if (v47)
        {
          v64 = MEMORY[0x1B2709E60](v63, v59);
        }

        else
        {
          if (v63 >= *(v59 + 16))
          {
            goto LABEL_46;
          }

          v64 = *(v59 + 8 * v63 + 32);
        }

        v65 = v64;
        v62 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        sub_1AE988824();
        sub_1AE988814();
        sub_1AE9887E4();
        isCurrentExecutor = swift_task_isCurrentExecutor();
        if ((isCurrentExecutor & 1) == 0)
        {
          isCurrentExecutor = swift_task_reportUnexpectedExecutor();
        }

        v67 = (*((*MEMORY[0x1E69E7D40] & *v65) + 0x80))(isCurrentExecutor);
        v68 = [v65 snapshotViewAfterScreenUpdates_];
        if (v68)
        {
          break;
        }

        ++v63;
        v61 = &selRef_fileIcon;
        if (v62 == v60)
        {
          goto LABEL_40;
        }
      }

      v151 = v68;
      [v65 bounds];
      [v65 convertRect:v160 toCoordinateSpace:?];
      v73 = v72;
      v74 = v70;
      v75 = v71;
      v76 = v51;
      v158 = v53;
      v152 = v57;
      v153 = v55;
      if (v71 <= v57)
      {
        v76 = v51 + (v55 - v70) * 0.5;
        v53 = v53 + (v57 - v71) * 0.5;
        v55 = v70;
        v57 = v71;
      }

      v150 = v51;
      if (v67)
      {
        v149 = 1.0;
        v77 = v69;
      }

      else
      {
        v77 = v69;
        v76 = sub_1AE97E404(0.85, v76, v53, v55, v57);
        v53 = v78;
        v55 = v79;
        v57 = v80;
        v149 = 0.0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66D0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1AE9C7120;
      KeyPath = swift_getKeyPath();
      if (qword_1EB5E76F0 != -1)
      {
        swift_once();
      }

      v83 = qword_1EB5E7E18;
      v84 = swift_allocObject();
      *(v84 + 16) = KeyPath;
      *(v84 + 24) = v76;
      *(v84 + 32) = v53;
      *(v84 + 40) = v55;
      *(v84 + 48) = v57;
      *(v84 + 56) = v73;
      *(v84 + 64) = v77;
      *(v84 + 72) = v74;
      *(v84 + 80) = v75;
      *(v81 + 32) = sub_1AE971804;
      *(v81 + 40) = v84;
      *(v81 + 48) = v83;
      v148 = swift_getKeyPath();
      v85 = qword_1EB5E76E8;
      v86 = v83;
      if (v85 != -1)
      {
        swift_once();
      }

      v87 = qword_1EB5E7E10;
      v88 = swift_allocObject();
      *(v88 + 2) = v148;
      v88[3] = v149;
      v88[4] = 1.0;
      *(v81 + 56) = sub_1AE971820;
      *(v81 + 64) = v88;
      *(v81 + 72) = v87;
      v89 = v87;

      v53 = v158;
      v57 = v152;
      v55 = v153;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_1AE96F0D8(0, *(v161 + 2) + 1, 1, v161);
      }

      v51 = v150;
      v91 = *(v161 + 2);
      v90 = *(v161 + 3);
      v92 = v151;
      if (v91 >= v90 >> 1)
      {
        v161 = sub_1AE96F0D8((v90 > 1), v91 + 1, 1, v161);
        v92 = v151;
      }

      *(v161 + 2) = v91 + 1;
      v93 = &v161[16 * v91];
      *(v93 + 4) = v92;
      *(v93 + 5) = v81;
      v61 = &selRef_fileIcon;
    }

    while (v62 != v60);
  }

  else
  {
    v161 = MEMORY[0x1E69E7CC0];
  }

LABEL_40:

  v95 = sub_1AE97FAFC();
  v96 = (*((*MEMORY[0x1E69E7D40] & *v95) + 0x68))();

  [v96 v61[51]];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66D0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1AE9C7120;
  v106 = swift_getKeyPath();
  [*&v4[v159] convertRect:v160 toCoordinateSpace:{v98, v100, v102, v104}];
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v115 = sub_1AE97FAFC();
  [v115 convertRect:v160 toCoordinateSpace:{v98, v100, v102, v104}];
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v123 = v122;

  if (qword_1EB5E76F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EB5E7E18;
  v125 = swift_allocObject();
  v125[2] = v106;
  v125[3] = v108;
  v125[4] = v110;
  v125[5] = v112;
  v125[6] = v114;
  v125[7] = v117;
  v125[8] = v119;
  v125[9] = v121;
  v125[10] = v123;
  *(v105 + 32) = sub_1AE971A24;
  *(v105 + 40) = v125;
  *(v105 + 48) = v124;
  v126 = swift_getKeyPath();
  v127 = qword_1EB5E76E8;
  v128 = v124;
  if (v127 != -1)
  {
    swift_once();
  }

  v129 = qword_1EB5E7E10;
  v130 = swift_allocObject();
  *(v130 + 16) = v126;
  *(v130 + 24) = xmmword_1AE9C7130;
  *(v105 + 56) = sub_1AE971A20;
  *(v105 + 64) = v130;
  *(v105 + 72) = v129;
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1AE9C7140;
  v132 = swift_getKeyPath();
  v133 = swift_allocObject();
  *(v133 + 16) = v132;
  *(v133 + 24) = xmmword_1AE9C7130;
  *(v131 + 32) = sub_1AE971A20;
  *(v131 + 40) = v133;
  *(v131 + 48) = v129;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1AE9C7140;
  v135 = swift_getKeyPath();
  v136 = swift_allocObject();
  *(v136 + 16) = v135;
  *(v136 + 24) = xmmword_1AE9C7130;
  *(v134 + 32) = sub_1AE971A20;
  *(v134 + 40) = v136;
  *(v134 + 48) = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66D8);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1AE9C7120;
  *(v137 + 32) = v154;
  *(v137 + 40) = v131;
  *(v137 + 48) = v155;
  *(v137 + 56) = v134;
  v162 = v137;
  v138 = v129;
  v139 = v155;
  v140 = v154;
  v141 = v138;
  v142 = v156;
  v143 = v139;
  v144 = v140;
  v145 = v141;

  sub_1AE96EFE4(v161);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AE9C7140;
  *(inited + 32) = v142;
  *(inited + 40) = v105;
  v147 = v142;

  sub_1AE96EFE4(inited);

  return v162;
}

id sub_1AE96D4DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t *sub_1AE96D52C()
{
  if (qword_1EB5E76F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB5E7E18;
}

id sub_1AE96D57C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alpha];
  *a2 = v4;
  return result;
}

uint64_t *sub_1AE96D5C4()
{
  if (qword_1EB5E76E8 != -1)
  {
    swift_once();
  }

  return &qword_1EB5E7E10;
}

id sub_1AE96D6DC()
{
  v2.receiver = v0;
  v2.super_class = _s18TransitionAnimatorCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AE96D7C4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_viewController);
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
    v61 = [a1 containerView];
    [v61 addSubview_];
    v6 = sub_1AE96C88C(a1);
    if (v6)
    {
      v7 = v6;
      v63 = v3;
      v56 = a1;
      [v5 setAlpha_];
      v8 = *(v7 + 16);
      v58 = v7;
      v59 = v1;
      v55 = v5;
      if (v8)
      {
        v9 = 0;
        v65 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_reversed;
        v10 = (v7 + 32);
        do
        {
          if (v9 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v12 = &v10[2 * v9];
          v13 = *v12;
          v14 = v12[1];
          aBlock[0] = *v12;
          v15 = *(v14 + 2);
          if (v15)
          {
            v16 = *(v1 + v65) ^ 1;
            v17 = v13;

            v18 = (v14 + 48);
            do
            {
              v19 = *(v18 - 2);
              v20 = *v18;
              v18 += 3;

              v21 = v20;
              v19(aBlock, v16 & 1);

              --v15;
            }

            while (v15);

            v11 = aBlock[0];
            v7 = v58;
            v1 = v59;
          }

          else
          {
            v11 = v13;
          }

          ++v9;
        }

        while (v9 != v8);
        v22 = *(v7 + 16);
        v7 = MEMORY[0x1E69E7CC0];
        if (v22)
        {
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1AE988AA4();
          do
          {
            v23 = *v10;
            v10 += 2;
            v24 = v23;
            sub_1AE988A84();
            sub_1AE988AB4();
            sub_1AE988AC4();
            sub_1AE988A94();
            --v22;
          }

          while (v22);
          v7 = aBlock[0];
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      if (v7 >> 62)
      {
        goto LABEL_37;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AE9889A4())
      {
        v26 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1B2709E60](v26, v7);
          }

          else
          {
            if (v26 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v27 = *(v7 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          sub_1AE988824();
          sub_1AE988814();
          sub_1AE9887E4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          [v61 addSubview_];

          ++v26;
          if (v29 == i)
          {
            goto LABEL_38;
          }
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        ;
      }

LABEL_38:

      v30 = OBJC_IVAR___LPCustomizationPickerViewController_source;
      swift_beginAccess();
      [*&v63[v30] setHidden_];
      v31 = v58;
      v32 = *(v59 + OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_reversed);
      v33 = MEMORY[0x1E69E7CD0];
      v67 = MEMORY[0x1E69E7CD0];
      v60 = v58[2];
      if (v60)
      {
        v57 = v32;
        for (j = 0; j != v60; ++j)
        {
          v36 = swift_allocObject();
          v37 = *&v58[2 * j + 4];
          *(v36 + 16) = v37;
          v64 = v37;
          v38 = *(*(&v37 + 1) + 16);
          if (v38)
          {
            v62 = j;
            v39 = *(&v37 + 1);
            swift_bridgeObjectRetain_n();
            v40 = v64;
            v41 = (v39 + 48);
            do
            {
              v43 = *(v41 - 2);
              v42 = *(v41 - 1);
              v44 = *v41;
              v41 += 3;
              v45 = objc_allocWithZone(MEMORY[0x1E69DD278]);

              v46 = v44;
              v47 = [v45 initWithDuration:v46 timingParameters:0.8];
              v48 = swift_allocObject();
              *(v48 + 16) = v43;
              *(v48 + 24) = v42;
              *(v48 + 32) = v46;
              *(v48 + 40) = v36;
              *(v48 + 48) = v57;
              aBlock[4] = sub_1AE971704;
              aBlock[5] = v48;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1AE96DF64;
              aBlock[3] = &block_descriptor_32;
              v49 = _Block_copy(aBlock);

              v50 = v46;

              [v47 addAnimations_];
              _Block_release(v49);
              v51 = v47;
              sub_1AE9703E0(aBlock, v51);

              --v38;
            }

            while (v38);

            j = v62;
          }

          else
          {

            v35 = v64;
          }
        }

        v33 = v67;
        v31 = v58;
      }

      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      v53[2] = v52;
      v53[3] = v31;
      v53[4] = v55;
      v53[5] = v56;
      _s10AggregatorCMa();
      swift_allocObject();
      v54 = v55;
      swift_unknownObjectRetain();
      sub_1AE9709CC(v33, v53);

      sub_1AE96C5BC();
    }

    else
    {
      [a1 completeTransition_];
    }
  }

  else
  {

    [a1 completeTransition_];
  }
}

uint64_t sub_1AE96DF64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1AE96DFB8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  qword_1EB5E7E10 = result;
  return result;
}

id sub_1AE96E030()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:350.0 damping:44.0 initialVelocity:{1.0, 1.0}];
  qword_1EB5E7E18 = result;
  return result;
}

id sub_1AE96E0A8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1AE96E108(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AE96E200;

  return v6(a1);
}

uint64_t sub_1AE96E200()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AE96E2F8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1AE9889D4();

    if (v5)
    {
      v6 = sub_1AE96E480();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_1AE9711C0();
  v9 = sub_1AE9888F4();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1AE988904();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AE96E5D8();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1AE96EB64(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1AE96E480()
{
  v1 = v0;

  v2 = sub_1AE9889A4();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1AE96ED04(v3, v2);
  v13 = v4;

  v5 = sub_1AE9888F4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1AE9711C0();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1AE988904();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1AE96EB64(v7);
  result = sub_1AE988904();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AE96E5D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66C8);
  v2 = *v0;
  v3 = sub_1AE9889E4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1AE96E728()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66C8);
  result = sub_1AE9889F4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1AE9888F4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1AE96E93C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66C8);
  result = sub_1AE9889F4();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1AE9888F4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1AE96EB64(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AE988974();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1AE9888F4();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

uint64_t sub_1AE96ED04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66C8);
    v2 = sub_1AE988A04();
    v14 = v2;
    sub_1AE988994();
    if (sub_1AE9889C4())
    {
      sub_1AE9711C0();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1AE96E93C();
        }

        v2 = v14;
        result = sub_1AE9888F4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1AE9889C4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1AE96EEE4(uint64_t a1, uint64_t a2)
{
  sub_1AE9888F4();
  result = sub_1AE988984();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1AE96EF68(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AE9709B8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1AE96F370(v6);
  return sub_1AE988A94();
}

uint64_t sub_1AE96EFE4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AE96F0D8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1AE96F0D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66D8);
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

char *sub_1AE96F1E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E66F8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1AE96F2E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
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

uint64_t sub_1AE96F370(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AE988B64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        _s15VariantLinkViewCMa();
        v6 = sub_1AE9887B4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1AE96F638(v8, v9, a1, v4);
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
    return sub_1AE96F474(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AE96F474(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1AE988824();
    v22 = v6;
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
    v9 = MEMORY[0x1E69E7D40];
LABEL_6:
    v20 = v7;
    v21 = v4;
    v10 = *(v22 + 8 * v4);
    v19 = v8;
    while (1)
    {
      v11 = *v7;
      v12 = v10;
      v13 = v11;
      sub_1AE988814();
      sub_1AE9887E4();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      if ((*((*v9 & *v12) + 0x80))(isCurrentExecutor))
      {

LABEL_5:
        v4 = v21 + 1;
        v7 = v20 + 8;
        v8 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = (*((*v9 & *v13) + 0x80))();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v16 = *v7;
      v10 = *(v7 + 8);
      *v7 = v10;
      *(v7 + 8) = v16;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1AE96F638(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v93 = *(v10 + 16);
      if (v93 >= 2)
      {
        while (*v6)
        {
          v94 = *(v10 + 16 * v93);
          v95 = v10;
          v96 = *(v10 + 16 * (v93 - 1) + 32);
          v10 = *(v10 + 16 * (v93 - 1) + 40);
          sub_1AE96FEE0((*v6 + 8 * v94), (*v6 + 8 * v96), (*v6 + 8 * v10), v9);
          if (v5)
          {
            goto LABEL_112;
          }

          if (v10 < v94)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_1AE9703CC(v95);
          }

          if (v93 - 2 >= *(v95 + 2))
          {
            goto LABEL_128;
          }

          v97 = &v95[16 * v93];
          *v97 = v94;
          *(v97 + 1) = v10;
          sub_1AE970340(v93 - 1);
          v10 = v95;
          v93 = *(v95 + 2);
          if (v93 <= 1)
          {
            goto LABEL_112;
          }
        }

        goto LABEL_138;
      }

LABEL_112:

      return;
    }

LABEL_134:
    v10 = sub_1AE9703CC(v10);
    goto LABEL_104;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v9 = (v9 + 1);
    if (v9 < v7)
    {
      v107 = v7;
      v12 = *v6;
      v13 = *(*v6 + 8 * v9);
      v103 = v11;
      v14 = *(*v6 + 8 * v11);
      sub_1AE988824();
      v15 = v13;
      v16 = v14;
      sub_1AE988814();
      sub_1AE9887E4();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v18 = MEMORY[0x1E69E7D40];
      if ((*((*MEMORY[0x1E69E7D40] & *v15) + 0x80))(isCurrentExecutor))
      {
        v109 = 0;
      }

      else
      {
        v109 = (*((*v18 & *v16) + 0x80))();
      }

      v9 = (v103 + 2);
      if (v103 + 2 < v107)
      {
        v19 = (v12 + 8 * v103 + 16);
        do
        {
          v21 = *(v19 - 1);
          v22 = *v19;
          v23 = v21;
          sub_1AE988814();
          sub_1AE9887E4();
          v24 = swift_task_isCurrentExecutor();
          if ((v24 & 1) == 0)
          {
            v24 = swift_task_reportUnexpectedExecutor();
          }

          v25 = MEMORY[0x1E69E7D40];
          if ((*((*MEMORY[0x1E69E7D40] & *v22) + 0x80))(v24))
          {

            if (v109)
            {
              v6 = a3;
              v8 = a4;
              v11 = v103;
              goto LABEL_21;
            }
          }

          else
          {
            v20 = (*((*v25 & *v23) + 0x80))();

            if ((v109 ^ v20))
            {
              goto LABEL_20;
            }
          }

          v9 = (v9 + 1);
          ++v19;
        }

        while (v107 != v9);
        v9 = v107;
      }

LABEL_20:
      v6 = a3;
      v8 = a4;
      v11 = v103;
      if (v109)
      {
LABEL_21:
        if (v9 < v11)
        {
          goto LABEL_131;
        }

        if (v11 < v9)
        {
          v26 = 8 * v9 - 8;
          v27 = 8 * v11;
          v28 = v9;
          v29 = v11;
          do
          {
            v28 = (v28 - 1);
            if (v29 != v28)
            {
              v31 = *v6;
              if (!*v6)
              {
                goto LABEL_137;
              }

              v30 = *(v31 + v27);
              *(v31 + v27) = *(v31 + v26);
              *(v31 + v26) = v30;
            }

            v29 = (v29 + 1);
            v26 -= 8;
            v27 += 8;
          }

          while (v29 < v28);
        }
      }
    }

    v32 = v6[1];
    if (v9 < v32)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_130;
      }

      if (v9 - v11 < v8)
      {
        break;
      }
    }

LABEL_51:
    if (v9 < v11)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AE96F1E4(0, *(v10 + 16) + 1, 1, v10);
    }

    v47 = *(v10 + 16);
    v46 = *(v10 + 24);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v10 = sub_1AE96F1E4((v46 > 1), v47 + 1, 1, v10);
    }

    *(v10 + 16) = v48;
    v49 = v10 + 16 * v47;
    *(v49 + 32) = v11;
    *(v49 + 40) = v9;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_139;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 32);
          v53 = *(v10 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_71:
          if (v55)
          {
            goto LABEL_118;
          }

          v68 = (v10 + 16 * v48);
          v70 = *v68;
          v69 = v68[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_121;
          }

          v74 = (v10 + 32 + 16 * v51);
          v76 = *v74;
          v75 = v74[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_125;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v78 = (v10 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_85:
        if (v73)
        {
          goto LABEL_120;
        }

        v81 = v10 + 16 * v51;
        v83 = *(v81 + 32);
        v82 = *(v81 + 40);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_123;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_92:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v6)
        {
          goto LABEL_136;
        }

        v90 = *(v10 + 32 + 16 * v89);
        v91 = *(v10 + 32 + 16 * v51 + 8);
        sub_1AE96FEE0((*v6 + 8 * v90), (*v6 + 8 * *(v10 + 32 + 16 * v51)), (*v6 + 8 * v91), v50);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v91 < v90)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AE9703CC(v10);
        }

        if (v89 >= *(v10 + 16))
        {
          goto LABEL_115;
        }

        v92 = v10 + 16 * v89;
        *(v92 + 32) = v90;
        *(v92 + 40) = v91;
        sub_1AE970340(v51);
        v48 = *(v10 + 16);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = v10 + 32 + 16 * v48;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_116;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_117;
      }

      v63 = (v10 + 16 * v48);
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_119;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_122;
      }

      if (v67 >= v59)
      {
        v85 = (v10 + 32 + 16 * v51);
        v87 = *v85;
        v86 = v85[1];
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_126;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_102;
    }
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_132;
  }

  if (v11 + v8 >= v32)
  {
    v33 = v6[1];
  }

  else
  {
    v33 = (v11 + v8);
  }

  if (v33 < v11)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v9 == v33)
  {
    goto LABEL_51;
  }

  v100 = v10;
  v98 = v5;
  v34 = *v6;
  sub_1AE988824();
  v35 = v34 + 8 * v9 - 8;
  v104 = v11;
  v105 = v33;
  v36 = v11 - v9;
LABEL_41:
  v108 = v35;
  v110 = v9;
  v37 = *(v34 + 8 * v9);
  v106 = v36;
  while (1)
  {
    v38 = *v35;
    v39 = v37;
    v40 = v38;
    sub_1AE988814();
    sub_1AE9887E4();
    v41 = swift_task_isCurrentExecutor();
    if ((v41 & 1) == 0)
    {
      v41 = swift_task_reportUnexpectedExecutor();
    }

    v42 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v39) + 0x80))(v41))
    {

LABEL_40:
      v9 = (v9 + 1);
      v35 = v108 + 8;
      v36 = v106 - 1;
      if ((v110 + 1) == v105)
      {
        v9 = v105;
        v5 = v98;
        v6 = a3;
        v10 = v100;
        v11 = v104;
        goto LABEL_51;
      }

      goto LABEL_41;
    }

    v43 = (*((*v42 & *v40) + 0x80))();

    if ((v43 & 1) == 0)
    {
      goto LABEL_40;
    }

    if (!v34)
    {
      break;
    }

    v44 = *v35;
    v37 = *(v35 + 8);
    *v35 = v37;
    *(v35 + 8) = v44;
    v35 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t sub_1AE96FEE0(void **__dst, id *a2, id *a3, void **__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (__src != a2 || &a2[v12] <= __src)
    {
      v23 = a2;
      memmove(__src, a2, 8 * v12);
      a2 = v23;
    }

    v22 = a2;
    v38 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      sub_1AE988824();
      v24 = MEMORY[0x1E69E7D40];
      v37 = v4;
LABEL_31:
      v34 = v22;
      v25 = v22 - 1;
      --v5;
      v26 = v38;
      v35 = v22 - 1;
      do
      {
        v27 = *--v26;
        v28 = *v25;
        v29 = v27;
        v30 = v28;
        sub_1AE988814();
        sub_1AE9887E4();
        isCurrentExecutor = swift_task_isCurrentExecutor();
        if ((isCurrentExecutor & 1) == 0)
        {
          isCurrentExecutor = swift_task_reportUnexpectedExecutor();
        }

        if ((*((*v24 & *v29) + 0x80))(isCurrentExecutor))
        {
        }

        else
        {
          v32 = (*((*v24 & *v30) + 0x80))();

          if (v32)
          {
            v4 = v37;
            if (v5 + 1 != v34)
            {
              *v5 = *v35;
            }

            if (v38 <= v37 || (v22 = v35, v35 <= v6))
            {
              v22 = v35;
              goto LABEL_46;
            }

            goto LABEL_31;
          }
        }

        v4 = v37;
        if (v5 + 1 != v38)
        {
          *v5 = *v26;
        }

        --v5;
        v38 = v26;
        v25 = v35;
      }

      while (v26 > v37);
      v38 = v26;
      v22 = v34;
    }
  }

  else
  {
    v13 = a2;
    if (__src != __dst || &__dst[v9] <= __src)
    {
      memmove(__src, __dst, 8 * v9);
    }

    v38 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      sub_1AE988824();
      v14 = MEMORY[0x1E69E7D40];
      while (1)
      {
        v36 = v4;
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        sub_1AE988814();
        sub_1AE9887E4();
        v18 = swift_task_isCurrentExecutor();
        if ((v18 & 1) == 0)
        {
          v18 = swift_task_reportUnexpectedExecutor();
        }

        if ((*((*v14 & *v16) + 0x80))(v18))
        {
          break;
        }

        v19 = (*((*v14 & *v17) + 0x80))();

        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }

        v20 = v13;
        v21 = v6 == v13++;
        v4 = v36;
        if (!v21)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v4 >= v38 || v13 >= v5)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v20 = v36;
      v4 = v36 + 1;
      if (v6 == v36)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v20;
      goto LABEL_22;
    }

LABEL_24:
    v22 = v6;
  }

LABEL_46:
  if (v22 != v4 || v22 >= (v4 + ((v38 - v4 + (v38 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v22, v4, 8 * (v38 - v4));
  }

  return 1;
}

uint64_t sub_1AE970340(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AE9703CC(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1AE9703E0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1AE9889B4();

    if (v9)
    {

      sub_1AE9711C0();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1AE9889A4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1AE96ED04(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1AE96E93C();
    }

    v18 = v8;
    sub_1AE96EEE4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1AE9711C0();
  v11 = sub_1AE9888F4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1AE9705F8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1AE988904();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

void sub_1AE9705F8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1AE96E93C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1AE96E5D8();
      goto LABEL_12;
    }

    sub_1AE96E728();
  }

  v8 = *v3;
  v9 = sub_1AE9888F4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1AE9711C0();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1AE988904();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1AE988BA4();
  __break(1u);
}

uint64_t sub_1AE970758(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1AE9889A4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1AE96F2E8(v3, 0);
  sub_1AE9707EC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1AE9707EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE9889A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AE9889A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE971868();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66E0);
            v9 = sub_1AE96A494(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s15VariantLinkViewCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE9709CC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66B8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - v9;
  *(v2 + 24) = 0;
  *(v2 + 16) = a1;
  *(v2 + 32) = sub_1AE970EB8;
  *(v2 + 40) = a2;
  v43 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();

    sub_1AE988994();
    sub_1AE9711C0();
    sub_1AE97120C();
    result = sub_1AE988864();
    a1 = v52;
    v11 = v53;
    v13 = v54;
    v12 = v55;
    v14 = v56;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);
    swift_bridgeObjectRetain_n();

    v12 = 0;
  }

  v39 = v13;
  v40 = v11;
  v18 = (v13 + 64) >> 6;
  v41 = a1;
  v42 = v8;
  while (a1 < 0)
  {
    v24 = sub_1AE9889C4();
    if (!v24 || (v46 = v24, sub_1AE9711C0(), swift_dynamicCast(), v23 = v47, v21 = v12, v22 = v14, !v47))
    {
LABEL_29:
      sub_1AE971264();
      return v43;
    }

LABEL_19:
    v44 = v22;
    sub_1AE988824();
    sub_1AE988814();
    sub_1AE9887E4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v25 = sub_1AE988844();
    v26 = *(v25 - 8);
    v27 = v45;
    (*(v26 + 56))(v45, 1, 1, v25);
    v28 = v23;
    v29 = v43;

    v30 = sub_1AE988814();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = MEMORY[0x1E69E85E0];
    v31[4] = v28;
    v31[5] = v29;
    v32 = v42;
    sub_1AE9713F8(v27, v42);
    LODWORD(v30) = (*(v26 + 48))(v32, 1, v25);

    if (v30 == 1)
    {
      sub_1AE971468(v32);
    }

    else
    {
      sub_1AE988834();
      (*(v26 + 8))(v32, v25);
    }

    v33 = v31[2];
    swift_unknownObjectRetain();

    if (v33)
    {
      swift_getObjectType();
      v34 = sub_1AE9887E4();
      v36 = v35;
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = v44;
    sub_1AE971468(v45);
    v38 = swift_allocObject();
    *(v38 + 16) = &unk_1AE9C7208;
    *(v38 + 24) = v31;
    if (v36 | v34)
    {
      v48 = 0;
      v49 = 0;
      v50 = v34;
      v51 = v36;
    }

    v11 = v40;
    a1 = v41;
    swift_task_create();

    v12 = v21;
    v14 = v37;
  }

  v19 = v12;
  v20 = v14;
  v21 = v12;
  if (v14)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_29;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1AE970EB8()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = v3;
    v24 = Strong;
    v5 = *(v1 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1AE988AA4();
      v7 = (v1 + 32);
      do
      {
        v8 = *v7;
        v7 += 2;
        v9 = v8;
        sub_1AE988A84();
        sub_1AE988AB4();
        sub_1AE988AC4();
        sub_1AE988A94();
        --v5;
      }

      while (v5);
      v6 = v25;
    }

    if (v6 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AE9889A4())
    {
      v11 = 4;
      while (1)
      {
        v12 = v11 - 4;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1B2709E60](v11 - 4, v6);
        }

        else
        {
          if (v12 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v13 = *(v6 + 8 * v11);
        }

        v14 = v13;
        v15 = v11 - 3;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_1AE988824();
        sub_1AE988814();
        sub_1AE9887E4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        [v14 removeFromSuperview];

        ++v11;
        if (v15 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    v16 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_reversed;
    v17 = 1.0;
    if (v24[OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_reversed])
    {
      v17 = 0.0;
    }

    [v23 setAlpha_];
    v18 = OBJC_IVAR____TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator_viewController;
    v19 = sub_1AE97FAFC();
    v20 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x68))();

    [v20 setAlpha_];
    v21 = *&v24[v18];
    v22 = OBJC_IVAR___LPCustomizationPickerViewController_source;
    swift_beginAccess();
    [*(v21 + v22) setHidden_];
    [v2 completeTransition_];
  }
}

unint64_t sub_1AE9711C0()
{
  result = qword_1EB5E66A8;
  if (!qword_1EB5E66A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E66A8);
  }

  return result;
}

unint64_t sub_1AE97120C()
{
  result = qword_1EB5E66B0;
  if (!qword_1EB5E66B0)
  {
    sub_1AE9711C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E66B0);
  }

  return result;
}

uint64_t sub_1AE97126C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AE971304;

  return sub_1AE96C0B8(v4, v5, v6, v2, v3);
}

uint64_t sub_1AE971304()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AE9713F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE971468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E66B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE9714D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AE971304;

  return sub_1AE96E108(a1, v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1AE971610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1AE971704()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v1(v2 + 16, v3);
  swift_endAccess();
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AE971868()
{
  result = qword_1EB5E66E8;
  if (!qword_1EB5E66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E66E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E66E8);
  }

  return result;
}

uint64_t sub_1AE9718CC(uint64_t *a1, int a2)
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

uint64_t sub_1AE971914(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AE971974(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1AE9719BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE971A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AE9C6D70;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  return v0;
}

id sub_1AE971AC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 components];
  *a2 = result;
  return result;
}

id sub_1AE971B20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaTopCaptionBar];
  *a2 = result;
  return result;
}

id sub_1AE971B7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 quote];
  *a2 = result;
  return result;
}

id sub_1AE971BD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaBottomCaptionBar];
  *a2 = result;
  return result;
}

id sub_1AE971C34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 captionBar];
  *a2 = result;
  return result;
}

id sub_1AE971CB4()
{
  v0 = [objc_opt_self() systemGreenColor];

  return v0;
}

id sub_1AE971D38()
{
  v1 = v0;
  v2 = [v0 _symbolName];
  if (!v2)
  {
    return v1;
  }

  v3 = v2;
  sub_1AE9886E4();

  sub_1AE971EC0();
  v4 = sub_1AE988934();
  v5 = (v4 + 40);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    if (*(v5 - 1) != 1819044198 || *v5 != 0xE400000000000000)
    {
      v5 += 2;
      if ((sub_1AE988B74() & 1) == 0)
      {
        continue;
      }
    }

    return v1;
  }

  MEMORY[0x1B2709B20](0x6C6C69662ELL, 0xE500000000000000);
  v9 = objc_opt_self();
  v10 = sub_1AE9886A4();

  v11 = [v9 _optionalSystemImageNamed_withSymbolConfiguration_];

  return v11;
}

unint64_t sub_1AE971EC0()
{
  result = qword_1EB5E4DD0;
  if (!qword_1EB5E4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4DD0);
  }

  return result;
}

BOOL sub_1AE971F8C()
{
  if ([v0 _isFallbackIcon])
  {
    return 0;
  }

  v2 = [objc_opt_self() regularTheme];
  v3 = [v2 captionBar];

  v4 = [v3 minimumWidth];
  [v4 value];
  v6 = v5;

  [v0 _pixelSize];
  if (v7 < v6)
  {
    return 1;
  }

  [v0 _pixelSize];
  return v8 < v6;
}

BOOL sub_1AE972080(double a1)
{
  if ([v1 _isFallbackIcon])
  {
    return 0;
  }

  [v1 _pixelSize];
  v5 = v4;
  [objc_opt_self() largestIconSizeInPoints];
  return v5 < v6 * a1;
}

uint64_t sub_1AE972188()
{
  [*(v0 + 16) releaseCachedResources];

  return swift_deallocClassInstance();
}

unint64_t sub_1AE9721D0(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1AE972214()
{
  sub_1AE988BD4();
  sub_1AE988684();
  return sub_1AE988BE4();
}

uint64_t sub_1AE972278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE974418();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1AE9722C4()
{
  sub_1AE988BD4();
  sub_1AE988684();
  return sub_1AE988BE4();
}

uint64_t *sub_1AE972324@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1AE97234C(uint64_t a1)
{
  v2 = sub_1AE974418();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1AE972388(uint64_t a1)
{
  v2 = sub_1AE974418();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1AE9723CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE974418();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

uint64_t sub_1AE972420()
{
  _s12VNSessionBoxCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E6984688]) init];
  return v0;
}

uint64_t sub_1AE972518(void *a1, void *a2)
{
  v92[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AE9C6F50;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = MEMORY[0x1E69E7CC0];
  v92[0] = MEMORY[0x1E69E7CC0];
  v7 = a1;
  v8 = a2;
  sub_1AE9739C4(0, 2, 0);
  v9 = v92[0];
  v10 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_82:
    v11 = MEMORY[0x1B2709E60](0, v5);
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  v13 = &selRef__disablePreviewGesture;
  [v11 _pixelSize];
  v15 = v14;

  v17 = *(v9 + 2);
  v16 = *(v9 + 3);
  if (v17 >= v16 >> 1)
  {
    sub_1AE9739C4((v16 > 1), v17 + 1, 1);
    v9 = v92[0];
  }

  *(v9 + 2) = v17 + 1;
  *&v9[8 * v17 + 32] = v15;
  if (v10)
  {
    v18 = MEMORY[0x1B2709E60](1, v5);
  }

  else
  {
    v18 = *(v5 + 40);
  }

  v19 = v18;
  [v18 _pixelSize];
  v21 = v20;

  v23 = *(v9 + 2);
  v22 = *(v9 + 3);
  if (v23 >= v22 >> 1)
  {
    sub_1AE9739C4((v22 > 1), v23 + 1, 1);
    v9 = v92[0];
  }

  v24 = (v9 + 32);
  *(v9 + 2) = v23 + 1;
  *&v9[8 * v23 + 32] = v21;
  v92[0] = v6;
  sub_1AE9739C4(0, 2, 0);
  v25 = v6;
  if (v10)
  {
    v26 = MEMORY[0x1B2709E60](0, v5);
  }

  else
  {
    v26 = *(v5 + 32);
  }

  v27 = v26;
  [v26 _pixelSize];
  v29 = v28;

  v31 = v6[2];
  v30 = v6[3];
  if (v31 >= v30 >> 1)
  {
    sub_1AE9739C4((v30 > 1), v31 + 1, 1);
    v25 = v92[0];
  }

  v25[2] = v31 + 1;
  v25[v31 + 4] = v29;
  if (v10)
  {
    v32 = MEMORY[0x1B2709E60](1, v5);
  }

  else
  {
    v32 = *(v5 + 40);
  }

  v33 = v32;
  [v32 _pixelSize];
  v35 = v34;

  v37 = v25[2];
  v36 = v25[3];
  v10 = v37 + 1;
  if (v37 >= v36 >> 1)
  {
    sub_1AE9739C4((v36 > 1), v37 + 1, 1);
    v25 = v92[0];
  }

  v25[2] = v10;
  v25[v37 + 4] = v35;
  v6 = *(v9 + 2);
  if (!v6)
  {
LABEL_90:
    __break(1u);
  }

  v38 = *v24;
  v39 = v6 - 1;
  if (v6 != 1)
  {
    v40 = (v9 + 40);
    do
    {
      v41 = *v40++;
      v42 = v41;
      if (v41 < v38)
      {
        v38 = v42;
      }

      --v39;
    }

    while (v39);
  }

  v43 = 0;
  while (v6 != v43)
  {
    v44 = &v9[8 * v43];
    v43 = (v43 + 1);
    if (v44[4] <= 0.0)
    {
LABEL_34:

      sub_1AE9739E4();
      swift_allocError();
      *v47 = 1;
      goto LABEL_35;
    }
  }

  v45 = 0;
  while (v10 != v45)
  {
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_82;
    }

    v46 = *&v25[v45++ + 4];
    if (v46 <= 0.0)
    {
      goto LABEL_34;
    }
  }

  v90 = v5;
  v92[0] = MEMORY[0x1E69E7CC0];
  sub_1AE9739C4(0, v6, 0);
  v49 = 0;
  v50 = v92[0];
  v51 = *(v92[0] + 2);
  do
  {
    v52 = v24[v49];
    v92[0] = v50;
    v53 = *(v50 + 3);
    if (v49 + v51 >= v53 >> 1)
    {
      sub_1AE9739C4((v53 > 1), v49 + v51 + 1, 1);
      v50 = v92[0];
    }

    v54 = (v49 + 1);
    *(v50 + 2) = v49 + v51 + 1;
    *(v50 + v51 + v49 + 4) = v52 * 0.25;
    v49 = v54;
  }

  while (v6 != v54);
  v55 = *(v50 + 4);
  v56 = v54 + v51 - 1;
  if (v56)
  {
    for (i = 0; i != v56; ++i)
    {
      if (v55 < *(v50 + i + 5))
      {
        v55 = *(v50 + i + 5);
      }
    }
  }

  if (v38 <= v55)
  {
    v38 = v55;
  }

  v92[0] = MEMORY[0x1E69E7CC0];
  sub_1AE9739C4(0, v6, 0);
  v58 = v92[0];
  v59 = *(v92[0] + 2);
  v13 = 32;
  do
  {
    v60 = *&v9[v13];
    v92[0] = v58;
    v61 = v58[3];
    if (v59 >= v61 >> 1)
    {
      sub_1AE9739C4((v61 > 1), v59 + 1, 1);
      v58 = v92[0];
    }

    v58[2] = v59 + 1;
    *&v58[v59 + 4] = v38 / v60;
    v13 += 8;
    ++v59;
    v6 = (v6 - 1);
  }

  while (v6);

  v62 = sub_1AE972D70(v25, v58);

  v63 = *(v62 + 16);
  if (!v63)
  {
    __break(1u);
    goto LABEL_92;
  }

  v64 = *(v62 + 32);
  v65 = v63 - 1;
  if (v65)
  {
    v66 = (v62 + 40);
    do
    {
      v67 = *v66++;
      v68 = v67;
      if (v67 < v64)
      {
        v64 = v68;
      }

      --v65;
    }

    while (v65);
  }

  v69 = *(v62 + 16);
  if (v69)
  {
    v92[0] = MEMORY[0x1E69E7CC0];
    sub_1AE9739C4(0, v69, 0);
    v70 = v92[0];
    v71 = *(v92[0] + 2);
    v13 = 32;
    do
    {
      if (*(v62 + v13) * 0.5 < v64)
      {
        v72 = v64;
      }

      else
      {
        v72 = *(v62 + v13) * 0.5;
      }

      v92[0] = v70;
      v73 = v70[3];
      if (v71 >= v73 >> 1)
      {
        sub_1AE9739C4((v73 > 1), v71 + 1, 1);
        v70 = v92[0];
      }

      v70[2] = v71 + 1;
      *&v70[v71 + 4] = v72;
      v13 += 8;
      ++v71;
      --v69;
    }

    while (v69);
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v74);
  sub_1AE972F4C(v90, v70, sub_1AE973A38);
  if (v2)
  {

    return v13;
  }

  v13 = v75;

  v76 = v13;
  if (v13 >> 62)
  {
    v77 = sub_1AE9889A4();
    v76 = v13;
    if (v77)
    {
      goto LABEL_72;
    }

LABEL_84:

    sub_1AE9739E4();
    swift_allocError();
    *v89 = 0;
LABEL_35:
    swift_willThrow();
    return v13;
  }

  v77 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v77)
  {
    goto LABEL_84;
  }

LABEL_72:
  if ((v76 & 0xC000000000000001) == 0)
  {
    v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v78)
    {
      v79 = v77 - 1;
      if (!__OFSUB__(v77, 1))
      {
        if (v79 < v78)
        {
          v80 = *(v76 + 32 + 8 * v79);
          v81 = *(v76 + 32);
          v82 = v80;

LABEL_77:
          v91 = 0;
          v92[0] = 0;
          v83 = [v81 computeDistance:&v91 toFeaturePrintObservation:v82 error:v92];
          v13 = v92[0];
          if (v83)
          {
            v84 = v91;
            v85 = objc_allocWithZone(MEMORY[0x1E696AD98]);
            v86 = v13;
            LODWORD(v87) = v84;
            v13 = [v85 initWithFloat_];
          }

          else
          {
            v88 = v92[0];
            sub_1AE9885B4();

            swift_willThrow();
          }

          return v13;
        }

        goto LABEL_89;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v81 = MEMORY[0x1B2709E60](0, v76);
  result = v77 - 1;
  if (!__OFSUB__(v77, 1))
  {
    v82 = MEMORY[0x1B2709E60](result, v13);

    goto LABEL_77;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_1AE972D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1AE9739C4(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_1AE9739C4((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v13 * v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 8 * v6);
        v19 = *(v25 + 32 + 8 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_1AE9739C4((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v18 * v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_1AE972F4C(unint64_t a1, unint64_t a2, void (*a3)(id, double))
{
  v5 = a1;
  v19 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

LABEL_45:
  v6 = sub_1AE9889A4();
LABEL_3:
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  sub_1AE988AA4();
  if (v6 < 0)
  {
    __break(1u);
LABEL_47:

    __break(1u);
  }

  else if (v8)
  {
    v9 = a2;
    a2 = 0;
    v18 = v5 & 0xC000000000000001;
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    v16 = v5;
    v15 = v9;
    v5 = v9 + 32;
    while (1)
    {
      if (v19)
      {
        v11 = sub_1AE9889A4();
      }

      else
      {
        v11 = *(v10 + 16);
      }

      if (a2 == v11)
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
        goto LABEL_45;
      }

      if (v18)
      {
        v12 = MEMORY[0x1B2709E60](a2, v16);
      }

      else
      {
        if (a2 >= *(v10 + 16))
        {
          goto LABEL_44;
        }

        v12 = *(v16 + 8 * a2 + 32);
      }

      v6 = v12;
      if (v7 == a2)
      {
        goto LABEL_47;
      }

      a3(v12, *(v5 + 8 * a2));
      if (v3)
      {
        break;
      }

      ++a2;

      sub_1AE988A84();
      sub_1AE988AB4();
      sub_1AE988AC4();
      sub_1AE988A94();
      if (v8 == a2)
      {
        v5 = v16;
        a2 = v15;
        goto LABEL_22;
      }
    }

LABEL_39:
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    v18 = v5 & 0xC000000000000001;
LABEL_22:
    a2 += 32;
    if (v19)
    {
      while (v8 != sub_1AE9889A4())
      {
LABEL_26:
        if (v18)
        {
          v13 = MEMORY[0x1B2709E60](v8, v5);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_42;
          }

          v13 = *(v5 + 8 * v8 + 32);
        }

        v14 = v13;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }

        if (v7 == v8)
        {

          return;
        }

        if (v8 >= v7)
        {
          goto LABEL_43;
        }

        a3(v13, *(a2 + 8 * v8));

        if (v3)
        {
          goto LABEL_39;
        }

        sub_1AE988A84();
        sub_1AE988AB4();
        sub_1AE988AC4();
        sub_1AE988A94();
        ++v8;
        if (!v19)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      if (v8 != *(v10 + 16))
      {
        goto LABEL_26;
      }
    }
  }
}

void __swiftcall LPVisionAnalyzer.init()(LPVisionAnalyzer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id LPVisionAnalyzer.init()()
{
  v1 = OBJC_IVAR___LPVisionAnalyzer__sessionBox;
  _s12VNSessionBoxCMa();
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(MEMORY[0x1E6984688]) init];
  *&v0[v1] = v2;
  *(v2 + 16) = v3;
  v5.receiver = v0;
  v5.super_class = LPVisionAnalyzer;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1AE973458(uint64_t a1, id *a2)
{
  result = sub_1AE9886C4();
  *a2 = 0;
  return result;
}

uint64_t sub_1AE9734D0(uint64_t a1, id *a2)
{
  v3 = sub_1AE9886D4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1AE973550@<X0>(uint64_t *a1@<X8>)
{
  sub_1AE9886E4();
  v2 = sub_1AE9886A4();

  *a1 = v2;
  return result;
}

uint64_t sub_1AE973594()
{
  v0 = sub_1AE9886E4();
  v1 = MEMORY[0x1B2709B60](v0);

  return v1;
}

uint64_t sub_1AE9735D0()
{
  sub_1AE9886E4();
  sub_1AE988704();
}

uint64_t sub_1AE973624()
{
  sub_1AE9886E4();
  sub_1AE988BD4();
  sub_1AE988704();
  v0 = sub_1AE988BE4();

  return v0;
}

uint64_t sub_1AE973698()
{
  v0 = sub_1AE9886E4();
  v2 = v1;
  if (v0 == sub_1AE9886E4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AE988B74();
  }

  return v5 & 1;
}

uint64_t sub_1AE973720@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AE9886A4();

  *a1 = v2;
  return result;
}

uint64_t sub_1AE973768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AE9886E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AE973794(uint64_t a1)
{
  v2 = sub_1AE974534(&qword_1EB5E4DB8);
  v3 = sub_1AE974534(&qword_1EB5E6748);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1AE97382C(uint64_t a1)
{
  sub_1AE9886E4();
  sub_1AE988BD4();
  sub_1AE988704();
  v2 = sub_1AE988BE4();

  return sub_1AE9738C0(a1, v2);
}

unint64_t sub_1AE9738C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1AE9886E4();
      v8 = v7;
      if (v6 == sub_1AE9886E4() && v8 == v9)
      {
        break;
      }

      v11 = sub_1AE988B74();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1AE9739C4(char *a1, int64_t a2, char a3)
{
  result = sub_1AE973FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1AE9739E4()
{
  result = qword_1EB5E4D60;
  if (!qword_1EB5E4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4D60);
  }

  return result;
}

uint64_t sub_1AE973A38(uint64_t a1, double a2)
{
  v9 = v3[3];
  if (v9 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = v4;
  v10 = *(v3 + 2);
  v11 = [v10 resampleAndCropWithImage:a1 width:v9 height:a2];
  if (!v11)
  {
    sub_1AE9739E4();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return v8;
  }

  v3 = v11;
  sub_1AE9740FC(MEMORY[0x1E69E7CC0]);
  v12 = [v10 session];
  v13 = objc_allocWithZone(MEMORY[0x1E69845B8]);
  type metadata accessor for VNImageOption(0);
  sub_1AE974534(&qword_1EB5E4DB8);
  v14 = sub_1AE988674();

  v5 = [v13 initWithCGImage:v3 options:v14 session:v12];

  v15 = [objc_allocWithZone(MEMORY[0x1E6984550]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E6530);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AE9C6D00;
  *(v16 + 32) = v15;
  sub_1AE969B54(0, &qword_1EB5E4D98);
  v6 = v15;
  v17 = sub_1AE988784();

  v25 = 0;
  v18 = [v5 performRequests:v17 error:&v25];

  if (!v18)
  {
    v8 = v25;
    v23 = sub_1AE9885B4();

    swift_willThrow();
    if (v23 || v8)
    {
      goto LABEL_30;
    }

LABEL_22:
    sub_1AE9739E4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_30;
  }

  v19 = v25;
  v8 = [v6 results];
  if (!v8)
  {
    goto LABEL_16;
  }

  sub_1AE969B54(0, &qword_1EB5E4DA0);
  v7 = sub_1AE988794();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_29:

    v8 = 0;
    if (v2)
    {
      goto LABEL_30;
    }

LABEL_17:
    if (v8)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

LABEL_28:
  result = sub_1AE9889A4();
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1B2709E60](0, v7);
    goto LABEL_15;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v7 + 32);
LABEL_15:
    v8 = v21;

LABEL_16:

    if (v2)
    {
LABEL_30:

      return v8;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1AE973E1C()
{
  result = qword_1EB5E4D70;
  if (!qword_1EB5E4D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4D70);
  }

  return result;
}

unint64_t sub_1AE973E74()
{
  result = qword_1EB5E4D88;
  if (!qword_1EB5E4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4D88);
  }

  return result;
}

unint64_t sub_1AE973ECC()
{
  result = qword_1EB5E4D78;
  if (!qword_1EB5E4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4D78);
  }

  return result;
}

unint64_t sub_1AE973F24()
{
  result = qword_1EB5E4D68;
  if (!qword_1EB5E4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4D68);
  }

  return result;
}

unint64_t sub_1AE973F7C()
{
  result = qword_1EB5E4D90;
  if (!qword_1EB5E4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4D90);
  }

  return result;
}

char *sub_1AE973FF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_1AE9740FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6720);
    v3 = sub_1AE988B24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AE974480(v4, &v11);
      v5 = v11;
      result = sub_1AE97382C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1AE9744F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

CGColorSpaceRef sub_1AE974204(void *a1, int64_t a2, int64_t a3)
{
  v5 = [a1 platformImage];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 CGImage];

  if (!v7 || CGImageGetWidth(v7) == a2 && CGImageGetHeight(v7) == a3)
  {
    return v7;
  }

  CGImageGetWidth(v7);
  CGImageGetHeight(v7);
  v8 = CGImageGetColorSpace(v7);
  if (!v8)
  {
LABEL_8:
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v9 = result;
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v9 = v8;
  result = CGColorSpaceSupportsOutput(v8);
  if ((result & 1) == 0)
  {

    goto LABEL_8;
  }

LABEL_9:
  if ((a2 - 0x2000000000000000) >> 62 == 3)
  {
    v11 = __CGBitmapContextCreate_0(a2, a3, 4 * a2, v9);
    if (v11)
    {
      v12 = a3;
      v13 = v11;
      CGContextSetGrayFillColor(v11, 1.0, 1.0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E65A8);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AE9C7140;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = a2;
      *(v14 + 56) = v12;
      sub_1AE9888B4();

      sub_1AE9888A4();
      Image = CGBitmapContextCreateImage(v13);

      return Image;
    }

    return 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1AE974418()
{
  result = qword_1EB5E4D80;
  if (!qword_1EB5E4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E4D80);
  }

  return result;
}

uint64_t sub_1AE974480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1AE9744F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1AE974534(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AE9745E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1AE9744F0(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1AE975468(v13);
}

uint64_t sub_1AE97467C(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

uint64_t sub_1AE974724(uint64_t a1)
{
  v2 = v1;
  v66 = v2;
  v4 = [v2 textView];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v7 = *(a1 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range);
  v6 = *(a1 + OBJC_IVAR____TtC16LinkPresentation11LPTextRange_range + 8);
  v8 = [v4 attributedText];
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v26 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v26)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v10 = v8;
  v64 = v5;
  v11 = [v8 length];
  v12 = *MEMORY[0x1E69DB688];
  v74[0] = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = v74;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AE9751B0;
  *(v14 + 24) = v13;
  v72 = sub_1AE9752CC;
  v73 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1AE9745E0;
  v71 = &block_descriptor_0;
  v15 = _Block_copy(&aBlock);

  v16 = v12;

  [v10 enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0, v15}];
  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v62 = v6;
  v63 = v7;
  v17 = &selRef_fileIcon;
  v61 = v10;
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v19 = *(v74[0] + 16);
  if (v19)
  {
    v20 = ( + 48);
    do
    {
      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      v23 = *v20;
      v20 += 3;
      v24 = v21;
      [v24 mutableCopy];
      sub_1AE988954();
      swift_unknownObjectRelease();
      sub_1AE969B54(0, &qword_1EB5E6750);
      swift_dynamicCast();
      [v67 setLineBreakMode_];

      [v18 addAttribute:v16 value:v67 range:{v22, v23}];
      --v19;
    }

    while (v19);

    v5 = v64;
    v17 = &selRef_fileIcon;
  }

  else
  {
    v5 = v64;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69DB850]) v17[177]];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  v65 = v28;
  [v29 setTextStorage_];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  [v29 addTextLayoutManager_];
  [v5 bounds];
  v32 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
  [v32 setLineFragmentPadding_];
  [v30 setTextContainer_];
  sub_1AE969B54(0, &qword_1EB5E6758);
  v16 = v30;
  v33 = [v16 documentRange];
  v34 = [v33 location];

  v35 = [v16 locationFromLocation:v34 withOffset:v63];
  swift_unknownObjectRelease();
  if (!v35)
  {
    goto LABEL_27;
  }

  v36 = [v16 locationFromLocation:v35 withOffset:v62];
  if (!v36)
  {
LABEL_26:
    swift_unknownObjectRelease();
LABEL_27:

    goto LABEL_28;
  }

  v37 = v36;
  v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  swift_unknownObjectRetain();
  v39 = [v38 initWithLocation:v35 endLocation:v37];

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  v9 = MEMORY[0x1E69E7CC0];
  if (v39)
  {

    [v16 ensureLayoutForRange_];
    v74[0] = v9;
    v40 = swift_allocObject();
    *(v40 + 16) = v74;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1AE97530C;
    *(v41 + 24) = v40;
    v72 = sub_1AE97543C;
    v73 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v69 = 1107296256;
    v70 = sub_1AE97467C;
    v71 = &block_descriptor_12;
    v42 = _Block_copy(&aBlock);

    [v16 enumerateTextSegmentsInRange:v39 type:2 options:0 usingBlock:v42];

    _Block_release(v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v25 = v74[0];

      v26 = *(v25 + 16);
      if (v26)
      {
LABEL_16:
        aBlock = v9;
        sub_1AE96AF7C(0, v26, 0);
        sub_1AE988824();
        v27 = aBlock;
        v44 = (v25 + 56);
        do
        {
          v45 = *(v44 - 3);
          v46 = *(v44 - 2);
          v47 = *(v44 - 1);
          v48 = *v44;
          sub_1AE988814();
          sub_1AE9887E4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          [v66 convertRect:v5 fromCoordinateSpace:{v45, v46, v47, v48}];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          aBlock = v27;
          v58 = *(v27 + 16);
          v57 = *(v27 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1AE96AF7C((v57 > 1), v58 + 1, 1);
            v27 = aBlock;
          }

          *(v27 + 16) = v58 + 1;
          v59 = (v27 + 32 * v58);
          v59[4] = v50;
          v59[5] = v52;
          v59[6] = v54;
          v59[7] = v56;
          v44 += 4;
          --v26;
        }

        while (v26);

        return v27;
      }

LABEL_9:

      return MEMORY[0x1E69E7CC0];
    }

    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1AE988AE4();
  __break(1u);
  return result;
}

void *sub_1AE974F64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6778);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AE9750AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E65A8);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_1AE9751B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  sub_1AE9754D0(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6760);
  sub_1AE969B54(0, &qword_1EB5E6768);
  swift_dynamicCast();
  v7 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((result & 1) == 0)
  {
    result = sub_1AE974F64(0, v7[2] + 1, 1, v7);
    v7 = result;
    *v6 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_1AE974F64((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
    *v6 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[3 * v10];
  v11[4] = v12;
  v11[5] = a2;
  v11[6] = a3;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AE97530C(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + 16);
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1AE9750AC(0, *(v10 + 2) + 1, 1, v10);
    *v9 = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1AE9750AC((v12 > 1), v13 + 1, 1, v10);
    *v9 = v10;
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[32 * v13];
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;

  return 1;
}

uint64_t sub_1AE975468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE9754D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1AE97555C()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = *(v0 + 56) * 0.2;
  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

uint64_t sub_1AE975598()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  v1 = *(v0 + 56);
  result = v1 * v1;
  if ((v1 * v1) >> 64 == (v1 * v1) >> 63)
  {
    *(v0 + 80) = result;
    *(v0 + 88) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE975608(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

void *sub_1AE9756A8()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void sub_1AE9756EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_1AE975788(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = v5;
  *(result + 40) = v5;
  *(result + 56) = a2;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = 0;
  *(result + 88) = 1;
  *(result + 96) = v5;
  *(result + 104) = 0;
  *(result + 48) = a1;
  return result;
}

uint64_t sub_1AE9757F0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  *(v2 + 32) = v3;
  *(v2 + 40) = v3;
  *(v2 + 56) = a2;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  *(v2 + 96) = v3;
  *(v2 + 104) = 0;
  *(v2 + 48) = a1;
  return v2;
}

void sub_1AE975824()
{
  v6 = v0;
  v7 = *(v0 + 6);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v7);
  Width = CGBitmapContextGetWidth(v7);
  Height = CGBitmapContextGetHeight(v7);
  Data = CGBitmapContextGetData(v7);
  v245 = Height - 1;
  if (__OFSUB__(Height, 1))
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v241 = Width - 1;
  if (__OFSUB__(Width, 1))
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (v245 < 1)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  if (Height == 2)
  {
LABEL_5:
    v6[3] = v6[3] / sub_1AE975598();
    Data = sub_1AE975598();
    if ((Data & 0x8000000000000000) != 0)
    {
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    if (Data)
    {
      v1 = Data;
      v12 = sub_1AE9887B4();
      *(v12 + 16) = v1;
      bzero((v12 + 32), 8 * v1);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    *(v6 + 4) = v12;

    v26 = *(v6 + 10);
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_192;
    }

    v7 = MEMORY[0x1E69E7CC0];
    if (!v26)
    {
      goto LABEL_158;
    }

    v27 = sub_1AE9887B4();
    *(v27 + 16) = v26;
    v246 = (v27 + 32);
    bzero((v27 + 32), v26);
    v28 = *(v6 + 10);
    if (v28 < 0)
    {
LABEL_193:
      __break(1u);
LABEL_194:
      v1 = Data;
      v135 = sub_1AE9889A4();

      if (v135)
      {
        goto LABEL_262;
      }

      goto LABEL_195;
    }

    if (!v28)
    {
      goto LABEL_158;
    }

    Data = swift_beginAccess();
    v3 = 0;
    v4 = 1.0;
    v29 = 0.08;
    v227 = v27;
    v228 = v28;
    while (1)
    {
      if (v3 >= *(v27 + 16))
      {
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v30 = v3 + 1;
      if (v246[v3])
      {
        goto LABEL_27;
      }

      v31 = *(v6 + 7);
      if (!v31)
      {
        goto LABEL_177;
      }

      v32 = v3 / v31;
      v33 = v3 / v31 * v31;
      if ((v3 / v31 * v31) >> 64 != v33 >> 63)
      {
        goto LABEL_178;
      }

      v7 = v3 % v31;
      if (__OFSUB__(v3, v33))
      {
        goto LABEL_179;
      }

      v34 = *(v6 + 2);
      v237 = *(v6 + 7);
      if ((v34 & 0xC000000000000001) != 0)
      {

        v35 = MEMORY[0x1B2709E60](v3, v34);
      }

      else
      {
        if (v3 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_181;
        }

        v35 = *(v34 + 8 * v3 + 32);
      }

      v36 = v7;
      v37 = v32;
      v230 = v237;
      v38 = v237 - sub_1AE97555C();
      v39 = sub_1AE97555C();
      v40 = v6[8];
      v41 = fmax(v38 - v7, v4) * 0.75;
      v42 = fmax(v40 - v32, v4);
      if (v38 - v7 >= v4)
      {
        v43 = (v38 - v36) * 0.75;
      }

      else
      {
        v43 = 0.75;
      }

      v44 = v42 * 0.75;
      if (v43 <= v44)
      {
        v43 = v44;
      }

      if (v40 < v37)
      {
        v43 = v41;
      }

      if (v38 > v36)
      {
        v43 = v4;
      }

      v45 = v40 - v36;
      v46 = fmax(v40 - v36, v4) * 0.75;
      if (v40 >= v36)
      {
        v43 = v46;
      }

      if (v45 >= v4)
      {
        v47 = v45 * 0.75;
      }

      else
      {
        v47 = 0.75;
      }

      if (v47 <= v44)
      {
        v47 = v44;
      }

      v48 = v39 < v36 || v40 < v37;
      if (v48)
      {
        v49 = v43;
      }

      else
      {
        v49 = v47;
      }

      v50 = v35;

      BytesPerRow = v50;
      v51 = sub_1AE9770D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_1AE9770D4((v52 > 1), v53 + 1, 1, v51);
      }

      v7 = 24;
      v54 = fmax(v49, v4);
      *(v51 + 2) = v53 + 1;
      v55 = &v51[24 * v53];
      v56 = BytesPerRow;
      *(v55 + 4) = BytesPerRow;
      *(v55 + 5) = v3;
      *(v55 + 6) = v54;
      v57 = *(v6 + 4);
      Data = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 4) = v57;
      if ((Data & 1) == 0)
      {
        Data = sub_1AE978498(v57);
        v57 = Data;
      }

      if (v3 >= *(v57 + 16))
      {
        goto LABEL_180;
      }

      *(v57 + 8 * v3 + 32) = v54;
      *(v6 + 4) = v57;
      if (v3 >= *(v27 + 16))
      {
        goto LABEL_182;
      }

      v246[v3] = 1;
      v58 = *(v6 + 10);
      if (v58 <= v3)
      {
        goto LABEL_183;
      }

      v234 = (v3 + 1);
      if (v30 != v58)
      {
        break;
      }

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1AE978420(v51);
      }

      v59 = *(v51 + 2);
      v1 = (v51 + 32);
      v248[0] = (v51 + 32);
      v248[1] = v59;
      v60 = sub_1AE988B64();
      if (v60 >= v59)
      {
        if (v59 >= 2)
        {
          v123 = v51 + 64;
          v124 = -1;
          for (i = 1; i != v59; ++i)
          {
            v126 = *(v1 + 24 * i + 16);
            v127 = v124;
            v128 = v123;
            do
            {
              if (*(v128 - 2) >= v126)
              {
                break;
              }

              v129 = *(v128 - 2);
              v130 = *(v128 - 2);
              *(v128 - 3) = *v128;
              v128 -= 24;
              v131 = *(v128 + 2);
              *(v128 + 4) = v130;
              *(v128 + 1) = v129;
              *(v128 - 1) = v131;
              *(v128 + 1) = v126;
            }

            while (!__CFADD__(v127++, 1));
            v123 += 24;
            --v124;
          }
        }
      }

      else
      {
        v61 = v60;
        v3 = v59 >> 1;
        v62 = MEMORY[0x1E69E7CC0];
        if (v59 >= 2)
        {
          v62 = sub_1AE9887B4();
          *(v62 + 16) = v3;
        }

        v249[0] = v62 + 32;
        v249[1] = v59 >> 1;
        v63 = v62;
        v1 = 0;
        sub_1AE977418(v249, v250, v248, v61);
        *(v63 + 16) = 0;
      }

      v109 = *(v51 + 2);
      if (!v109)
      {
        goto LABEL_161;
      }

      v110 = *(v51 + 4);
      v111 = *(v51 + 5);
      v112 = *(v51 + 6);
      v113 = v109 - 1;
      v243 = v110;
      if (v109 != 1)
      {
        v116 = v110;
        v117 = (v51 + 72);
        while (1)
        {
          v7 = *(v117 - 1);
          v118 = *v117;
          Data = *(v117 - 2);
          if (v7 < 0)
          {
            break;
          }

          if (v7 >= *(v27 + 16))
          {
            goto LABEL_168;
          }

          v3 = Data;
          v246[v7] = 1;
          v119 = *(v6 + 2);
          if ((v119 & 0xC000000000000001) != 0)
          {

            v120 = MEMORY[0x1B2709E60](v111, v119);
          }

          else
          {
            if ((v111 & 0x8000000000000000) != 0)
            {
              goto LABEL_169;
            }

            if (v111 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_171;
            }

            v120 = *(v119 + 8 * v111 + 32);
          }

          swift_beginAccess();
          v121 = *(v6 + 2);
          Data = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *(v6 + 2) = v121;
          if (!Data || (v121 & 0x8000000000000000) != 0 || (v121 & 0x4000000000000000) != 0)
          {
            Data = sub_1AE978434(v121);
            v121 = Data;
            *(v6 + 2) = Data;
          }

          if (v7 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_170;
          }

          v122 = (v121 & 0xFFFFFFFFFFFFFF8) + 8 * v7;
          v7 = *(v122 + 0x20);
          v112 = v112 + v118;
          *(v122 + 32) = v120;
          *(v6 + 2) = v121;
          swift_endAccess();

          v117 += 3;
          if (!--v113)
          {
            goto LABEL_129;
          }
        }

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
        goto LABEL_176;
      }

      v114 = v110;
LABEL_129:
      v115 = *(v6 + 4);
      Data = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 4) = v115;
      if ((Data & 1) == 0)
      {
        Data = sub_1AE978498(v115);
        v115 = Data;
        v1 = BytesPerRow;
        if ((v111 & 0x8000000000000000) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_157;
      }

      v1 = BytesPerRow;
      if ((v111 & 0x8000000000000000) != 0)
      {
LABEL_157:
        __break(1u);
LABEL_158:

        goto LABEL_163;
      }

LABEL_131:
      if (v111 >= *(v115 + 16))
      {
        goto LABEL_184;
      }

      *(v115 + 8 * v111 + 32) = v112;
      *(v6 + 4) = v115;

      v28 = v228;
      v30 = v234;
LABEL_27:
      v3 = v30;
      if (v30 == v28)
      {
        goto LABEL_162;
      }
    }

    while (1)
    {
      if (v30 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_167;
      }

      if ((v246[v30] & 1) == 0)
      {
        break;
      }

LABEL_73:
      if (++v30 == v58)
      {
        goto LABEL_66;
      }
    }

    v64 = *(v6 + 2);
    if ((v64 & 0xC000000000000001) != 0)
    {

      v3 = MEMORY[0x1B2709E60](v30, v64);
    }

    else
    {
      if (v30 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_173;
      }

      v3 = *(v64 + 8 * v30 + 32);
    }

    v65 = sub_1AE96B7D4();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = sub_1AE96B7D4();
    if (vabdd_f64(v67, v75) > v29 || vabdd_f64(v69, v73) > v29 || vabdd_f64(v71, v74) > v29)
    {
      goto LABEL_72;
    }

    if (vabdd_f64(v65, v72) > v29)
    {
      v76 = v65 + v4;
      if (v65 >= v29)
      {
        v76 = v65;
      }

      if (v72 < v29)
      {
        v72 = v72 + v4;
      }

      if (vabdd_f64(v76, v72) > v29)
      {
LABEL_72:

        goto LABEL_73;
      }
    }

    v77 = v30 / v237 * v237;
    if ((v30 / v237 * v237) >> 64 != v77 >> 63)
    {
      goto LABEL_185;
    }

    v25 = __OFSUB__(v30, v77);
    v78 = v30 % v237;
    if (v25)
    {
      goto LABEL_186;
    }

    v79 = v78;
    v80 = (v30 / v237);
    v81 = v6[8];
    if (v81 >= v78)
    {
      v83 = v81 - v79;
      if (v81 >= v80)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v82 = 1.0;
      if (v230 - v81 > v79)
      {
LABEL_100:
        v232 = fmax(v82, v4);
        v87 = *(v51 + 2);
        if (v87)
        {
          v7 = 0;
          v88 = 0;
          while (1)
          {
            if (v88 >= *(v51 + 2))
            {
              goto LABEL_172;
            }

            v89 = *&v51[v7 + 32];
            v242 = sub_1AE96B7D4();
            v90 = v29;
            v92 = v91;
            v94 = v93;
            v96 = v95;
            v97 = sub_1AE96B7D4();
            v99 = v98;
            v5 = v100;
            v4 = v101;

            v102 = vabdd_f64(v92, v99);
            v29 = v90;
            if (v102 <= v90 && vabdd_f64(v94, v5) <= v90 && vabdd_f64(v96, v4) <= v90)
            {
              if (vabdd_f64(v242, v97) <= v90)
              {
                break;
              }

              v103 = v242 + 1.0;
              if (v242 >= v90)
              {
                v103 = v242;
              }

              v104 = v97 + 1.0;
              if (v97 >= v90)
              {
                v104 = v97;
              }

              if (vabdd_f64(v103, v104) <= v90)
              {
                break;
              }
            }

            ++v88;
            v7 += 24;
            if (v87 == v88)
            {
              goto LABEL_117;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1AE978420(v51);
          }

          v27 = v227;
          if (v88 >= *(v51 + 2))
          {
            goto LABEL_325;
          }

          *&v51[v7 + 48] = v232 + *&v51[v7 + 48];
          v4 = 1.0;
          v7 = 24;
        }

        else
        {
LABEL_117:
          v27 = v227;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1AE9770D4(0, *(v51 + 2) + 1, 1, v51);
          }

          v7 = 24;
          v106 = *(v51 + 2);
          v105 = *(v51 + 3);
          v4 = 1.0;
          if (v106 >= v105 >> 1)
          {
            v51 = sub_1AE9770D4((v105 > 1), v106 + 1, 1, v51);
          }

          *(v51 + 2) = v106 + 1;
          v107 = &v51[24 * v106];
          *(v107 + 4) = v3;
          *(v107 + 5) = v30;
          *(v107 + 6) = v232;
          v108 = v3;
        }

        v56 = BytesPerRow;

        if (v30 >= *(v27 + 16))
        {
          goto LABEL_187;
        }

        v246[v30] = 1;
        goto LABEL_73;
      }

      v83 = v230 - v81 - v79;
      if (v81 >= v80)
      {
LABEL_93:
        v84 = fmax(v81 - v80, v4);
        v85 = v83 * 0.75;
        if (v83 < v4)
        {
          v85 = 0.75;
        }

        v86 = v84 * 0.75;
        if (v85 > v86)
        {
          v82 = v85;
        }

        else
        {
          v82 = v86;
        }

        goto LABEL_100;
      }
    }

    v82 = fmax(v83, v4) * 0.75;
    goto LABEL_100;
  }

  if (v241 < 1)
  {
    __break(1u);
    goto LABEL_320;
  }

  v7 = Data;
  v236 = (Width - 2);
  v13 = 1;
  while (1)
  {
    v14 = v13 * BytesPerRow;
    if ((v13 * BytesPerRow) >> 64 != (v13 * BytesPerRow) >> 63)
    {
      goto LABEL_174;
    }

    v1 = v14 + 4;
    if (__OFADD__(v14, 4))
    {
      goto LABEL_175;
    }

    v3 = v236;
    if (v241 != 1)
    {
      break;
    }

LABEL_10:
    if (++v13 == v245)
    {
      goto LABEL_5;
    }
  }

  while (!__OFADD__(v1, 3))
  {
    LOBYTE(v11) = *(v7 + v1 + 1);
    *&v15 = *&v11;
    v16 = *&v15 / 255.0;
    LOBYTE(v15) = *(v7 + v1 + 2);
    *&v17 = v15;
    v18 = *&v17 / 255.0;
    LOBYTE(v17) = *(v7 + v1 + 3);
    *&v19 = v17;
    v20 = *&v19 / 255.0;
    LOBYTE(v19) = *(v7 + v1);
    v21 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v16 green:v18 blue:v20 alpha:v19 / 255.0];
    sub_1AE96B7D4();
    swift_beginAccess();
    v22 = v21;
    MEMORY[0x1B2709B80]();
    if (*((v6[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AE9887A4();
    }

    sub_1AE9887C4();
    swift_endAccess();
    [v22 _lp_contrastRatioLuminance];
    v24 = v23;

    v11 = v24 + v6[3];
    v6[3] = v11;
    v25 = __OFADD__(v1, 4);
    v1 += 4;
    if (v25)
    {
      goto LABEL_160;
    }

    if (!--v3)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:

LABEL_162:

  v7 = MEMORY[0x1E69E7CC0];
LABEL_163:
  Data = (*(*v6 + 304))(v133);
  if (Data >> 62)
  {
    goto LABEL_194;
  }

  v134 = *((Data & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v134)
  {
    goto LABEL_262;
  }

LABEL_195:
  v250[0] = v7;
  v136 = sub_1AE975598();
  if (v136 < 0)
  {
    goto LABEL_323;
  }

  v137 = v136;
  if (v136)
  {
    swift_beginAccess();
    v138 = 0;
    Height = MEMORY[0x1E69E7CC0];
    v139 = 1.0;
    v140 = 0.05;
    v229 = v137;
    while (1)
    {
      v143 = *(v6 + 4);
      if (v138 >= *(v143 + 16))
      {
        break;
      }

      if (*(v143 + 8 * v138 + 32) >= v139)
      {
        v144 = *(v6 + 2);
        if ((v144 & 0xC000000000000001) != 0)
        {

          v3 = MEMORY[0x1B2709E60](v138, v144);
        }

        else
        {
          if (v138 >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_310;
          }

          v3 = *(v144 + 8 * v138 + 32);
        }

        sub_1AE96B774();
        v146 = v145;

        if (v146 >= 0.3)
        {
          v147 = *(v6 + 4);
          if (v138 >= *(v147 + 16))
          {
            goto LABEL_313;
          }

          v148 = *(v147 + 8 * v138 + 32);
          v149 = *(v6 + 2);
          if ((v149 & 0xC000000000000001) != 0)
          {

            v3 = MEMORY[0x1B2709E60](v138, v149);
          }

          else
          {
            if (v138 >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_314;
            }

            v3 = *(v149 + 8 * v138 + 32);
          }

          [v3 _lp_contrastRatioLuminance];
          v231 = v150;

          v151 = *(v6 + 2);
          if ((v151 & 0xC000000000000001) != 0)
          {

            v3 = MEMORY[0x1B2709E60](v138, v151);
          }

          else
          {
            if (v138 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_315;
            }

            v3 = *(v151 + 8 * v138 + 32);
          }

          v233 = v148;
          v152 = *(Height + 16);
          if (v152)
          {
            v1 = 0;
            for (j = 0; v152 != j; ++j)
            {
              if (j >= *(Height + 16))
              {
                __break(1u);
                goto LABEL_309;
              }

              v154 = *(Height + v1 + 48);
              v240 = sub_1AE96B7D4();
              v244 = v155;
              v5 = v156;
              v4 = v157;
              v158 = sub_1AE96B7D4();
              v160 = v159;
              v162 = v161;
              v164 = v163;
              v165 = v159 < v140 && v5 < v140;
              [v3 _lp_contrastRatioLuminance];
              if (v166 >= 0.015)
              {
                if (!v165)
                {
                  goto LABEL_226;
                }
              }

              else
              {
                [v154 _lp_contrastRatioLuminance];
                v168 = v167 < 0.015 || v165;
                if ((v168 & 1) == 0)
                {
LABEL_226:

                  goto LABEL_230;
                }
              }

              [v3 _lp_contrastWithColor_];
              v169 = v140;
              v171 = v170;

              v48 = v171 > 1.66;
              v140 = v169;
              if (!v48)
              {
                goto LABEL_239;
              }

LABEL_230:
              if (vabdd_f64(v5, v160) <= 0.07 && vabdd_f64(v4, v162) <= 0.07 && vabdd_f64(v244, v164) <= 0.07)
              {
                if (vabdd_f64(v240, v158) <= 0.07)
                {
                  goto LABEL_239;
                }

                v172 = v240 + 1.0;
                if (v240 >= 0.07)
                {
                  v172 = v240;
                }

                v173 = v158 + 1.0;
                if (v158 >= 0.07)
                {
                  v173 = v158;
                }

                if (vabdd_f64(v172, v173) <= 0.07)
                {
LABEL_239:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    Height = sub_1AE9784AC(Height);
                  }

                  if (j < *(Height + 16))
                  {
                    *(Height + v1 + 32) = v233 + *(Height + v1 + 32);
                    v250[0] = Height;
                    v137 = v229;
                    v139 = 1.0;
                    goto LABEL_199;
                  }

LABEL_322:
                  __break(1u);
LABEL_323:
                  __break(1u);
LABEL_324:
                  __break(1u);
LABEL_325:
                  __break(1u);
LABEL_326:
                  __break(1u);
                  goto LABEL_327;
                }
              }

              v1 += 24;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            Height = sub_1AE9772F8(0, *(Height + 16) + 1, 1, Height);
          }

          v137 = v229;
          v1 = *(Height + 16);
          v174 = *(Height + 24);
          v139 = 1.0;
          if (v1 >= v174 >> 1)
          {
            Height = sub_1AE9772F8((v174 > 1), v1 + 1, 1, Height);
          }

          *(Height + 16) = v1 + 1;
          v141 = Height + 24 * v1;
          *(v141 + 32) = v233;
          *(v141 + 40) = v231;
          *(v141 + 48) = v3;
          v250[0] = Height;
          v142 = v3;
LABEL_199:
        }
      }

      if (++v138 == v137)
      {
        goto LABEL_251;
      }
    }

LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    if (!sub_1AE9889A4())
    {
      goto LABEL_302;
    }

    goto LABEL_264;
  }

  Height = MEMORY[0x1E69E7CC0];
LABEL_251:
  if (*(Height + 16))
  {
    sub_1AE976F70(v250);
    v175 = *(v250[0] + 2);
    if (v175)
    {
      v176 = *(*v6 + 320);
      v177 = (v250[0] + 48);
      do
      {
        v178 = *(v177 - 2);
        v179 = *v177;
        v180 = v176(v248);
        v182 = v181;
        MEMORY[0x1B2709B80]();
        if (*((*v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AE9887A4();
        }

        sub_1AE9887C4();
        v180(v248, 0);
        v183 = *(v6 + 5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 5) = v183;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v183 = sub_1AE9771F4(0, *(v183 + 2) + 1, 1, v183);
          *(v6 + 5) = v183;
        }

        v186 = *(v183 + 2);
        v185 = *(v183 + 3);
        if (v186 >= v185 >> 1)
        {
          v183 = sub_1AE9771F4((v185 > 1), v186 + 1, 1, v183);
        }

        *(v183 + 2) = v186 + 1;
        *&v183[8 * v186 + 32] = v178;
        *(v6 + 5) = v183;

        v177 += 3;
        --v175;
      }

      while (v175);
    }
  }

LABEL_262:
  v4 = v6[3];
  v3 = sub_1AE96B710();
  v5 = *v3;
  v187 = (*(*v6 + 304))();
  Height = v187;
  v1 = v187 >> 62;
  if (v187 >> 62)
  {
    goto LABEL_317;
  }

  if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_302:

    return;
  }

LABEL_264:
  v2 = Height & 0xC000000000000001;
  if ((Height & 0xC000000000000001) != 0)
  {
LABEL_320:
    v188 = MEMORY[0x1B2709E60](0, Height);
    goto LABEL_267;
  }

  if (!*((Height & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_322;
  }

  v188 = *(Height + 32);
LABEL_267:
  v189 = v188;
  v190 = *(*v6 + 336);
  v247 = v188;
  v235 = v190;
  v191 = (v190)(v189);
  v238 = *(*v6 + 328);
  v192 = (v238)(v191);
  if (!v192)
  {
    goto LABEL_326;
  }

  v193 = v192;
  [v192 _lp_contrastWithLuminance_];
  v195 = v194;

  if (v195 < 1.3)
  {
    [v247 _lp_contrastWithLuminance_];
    v197 = v196;
    if (v1)
    {
      v198 = sub_1AE9889A4();
    }

    else
    {
      v198 = *((Height & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v198 >= 3)
    {
      v199 = 3;
    }

    else
    {
      v199 = v198;
    }

    if (v198 < 1)
    {
      goto LABEL_324;
    }

    v200 = Height + 32;
    v201 = 1;
LABEL_277:
    if (v201 <= v199)
    {
      v1 = v199;
    }

    else
    {
      v1 = v201;
    }

    v202 = (v200 + 8 * v201);
    while (v199 != v201)
    {
      if (v1 == v201)
      {
        goto LABEL_311;
      }

      v207 = *(v6 + 5);
      if (v201 >= *(v207 + 16))
      {
        goto LABEL_312;
      }

      v208 = *(v207 + 8 * v201 + 32);
      if (v208 <= 0.0)
      {
        break;
      }

      v209 = *(v207 + 32) / v208;
      if (v209 <= 0.9 || v209 >= 1.112)
      {
        break;
      }

      if (v2)
      {
        v203 = MEMORY[0x1B2709E60](v201, Height);
      }

      else
      {
        if (v201 >= *((Height & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_316;
        }

        v203 = *v202;
      }

      v204 = v203;
      [v203 _lp_contrastWithLuminance_];
      v206 = v205;

      ++v202;
      ++v201;
      if (v197 < v206)
      {
        if (v2)
        {
          v210 = MEMORY[0x1B2709E60](v201 - 1, Height);
        }

        else
        {
          v210 = *(v202 - 1);
        }

        v200 = Height + 32;
        v235(v210);
        v197 = v206;
        goto LABEL_277;
      }
    }
  }

  v211 = v238();
  if (!v211)
  {
LABEL_327:
    __break(1u);
    goto LABEL_328;
  }

  v212 = v211;
  [v211 _lp_contrastWithLuminance_];
  v214 = v213;

  if (v214 >= 1.3)
  {

    goto LABEL_302;
  }

  v215 = v238();
  if (!v215)
  {
LABEL_328:
    __break(1u);
    goto LABEL_329;
  }

  v216 = v215;
  v217 = sub_1AE96B7D4();
  v219 = v218;
  v221 = v220;
  v223 = v222;

  if (v4 < v5)
  {

    goto LABEL_305;
  }

  v224 = v238();
  if (v224)
  {
    v225 = v224;

    v226 = [v225 _lp_luminosityLevel];

    if (!v226)
    {
LABEL_306:
      v235([objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v217 saturation:v219 brightness:v221 alpha:v223]);

      return;
    }

LABEL_305:
    v221 = v221 * 0.8;
    v219 = v219 * 1.1;
    goto LABEL_306;
  }

LABEL_329:
  __break(1u);
}

uint64_t sub_1AE976E54()
{

  return v0;
}

uint64_t sub_1AE976E9C()
{

  return swift_deallocClassInstance();
}

void type metadata accessor for CGContext()
{
  if (!qword_1EB5E6780)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB5E6780);
    }
  }
}

uint64_t sub_1AE976F70(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AE9784AC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_1AE988B64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 1) = v11;
          *v13 = v14;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AE9887B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1AE9779DC(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1AE9770D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AE9771F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1AE9772F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E6788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AE977418(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1AE9703CC(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1AE977FA8((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AE96F1E4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1AE96F1E4((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1AE977FA8((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1AE9779DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1AE9703CC(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1AE9781E4((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v16 >= v17;
        ++v15;
        v16 = v17;
        if ((((v14 < v9) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v14 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v14 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AE96F1E4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1AE96F1E4((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1AE9781E4((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*v33 >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
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