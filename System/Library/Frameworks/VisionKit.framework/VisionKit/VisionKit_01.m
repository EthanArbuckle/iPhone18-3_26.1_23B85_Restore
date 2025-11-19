uint64_t sub_23B2E6E38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E5A0, &qword_23B2EC890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - v4;
  [*(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider) stopProcessing];
  v6 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations;
  v7 = *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations);
  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations;
    v17 = v0;
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);

    do
    {
      v10(v5, v12, v1);
      sub_23B2EAFF0();
      (*(v9 - 8))(v5, v1);
      v12 += v13;
      --v8;
    }

    while (v8);

    v6 = v16;
    v0 = v17;
    v14 = *(v17 + v16);
  }

  *(v0 + v6) = MEMORY[0x277D84F90];
}

char *sub_23B2E6FEC(char *a1, int64_t a2, char a3)
{
  result = sub_23B2E702C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23B2E700C(size_t a1, int64_t a2, char a3)
{
  result = sub_23B2E7130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23B2E702C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E780, &unk_23B2ECEE8);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_23B2E7130(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E368, &qword_23B2ECEE0);
  v10 = *(type metadata accessor for RecognizedItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RecognizedItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23B2E7308(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_23B2D75E4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for RecognizedItem(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_23B2E7434(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23B2EADC0();
  sub_23B2EA8D8(&qword_27E12E710, MEMORY[0x277CC95F0]);
  v5 = sub_23B2EAEB0();

  return sub_23B2E74CC(a1, v5);
}

unint64_t sub_23B2E74CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23B2EADC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_23B2EA8D8(&qword_27E12E720, MEMORY[0x277CC95F0]);
      v16 = sub_23B2EAED0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_23B2E768C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23B2EADC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E718, &qword_23B2ECEA8);
  v43 = a2;
  result = sub_23B2EB180();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_23B2EA8D8(&qword_27E12E710, MEMORY[0x277CC95F0]);
      result = sub_23B2EAEB0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_23B2E7A68(int64_t a1, uint64_t a2)
{
  v43 = sub_23B2EADC0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_23B2EB110();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23B2EA8D8(&qword_27E12E710, MEMORY[0x277CC95F0]);
      v26 = sub_23B2EAEB0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

char *sub_23B2E7D88()
{
  v1 = v0;
  v32 = sub_23B2EADC0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E718, &qword_23B2ECEA8);
  v4 = *v0;
  v5 = sub_23B2EB170();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_23B2E7FFC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48) + 32 * result;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  *a4 = *v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
}

uint64_t sub_23B2E809C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_23B2E80D4(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView);
  if (v3)
  {
    if (a1 - 2 < 2 || a1 > 1)
    {
      [*(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) hideGuidance];
    }

    else
    {
      sub_23B2D2208(0, &qword_27E12E708, 0x277D78578);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = objc_opt_self();
      v6 = v3;
      v7 = [v5 bundleForClass_];
      sub_23B2EAD70();

      v8 = sub_23B2EAEE0();

      [v6 showGuidanceWithText_];
    }
  }

  v9 = v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    if (a1 >= 4)
    {
      v12 = 0;
    }

    else
    {
      v12 = a1;
    }

    ObjectType = swift_getObjectType();
    v14 = v12;
    (*(v11 + 16))(v1, &v14, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_23B2E82C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E360, &unk_23B2EC560);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_23B2E8414(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_23B2D73B4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_23B2E82C0(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_23B2E84D4(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E6F8, &unk_23B2ECE98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E360, &unk_23B2EC560);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v12;
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v13 = sub_23B2EAE70();
  __swift_project_value_buffer(v13, qword_27E12E420);
  v14 = a1;
  v15 = a2;
  v16 = sub_23B2EAE50();
  v17 = sub_23B2EB070();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2112;
    v20 = v14;
    if (a2)
    {
      v21 = a2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v18 + 14) = v22;
    v19[1] = v23;
    _os_log_impl(&dword_23B2CF000, v16, v17, "Received callback for capturePhoto() with image:%@ error:%@", v18, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6F0, &qword_23B2ECE90);
    swift_arrayDestroy();
    MEMORY[0x23EE99510](v19, -1, -1);
    MEMORY[0x23EE99510](v18, -1, -1);
  }

  v24 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (*(v25 + 16))
  {
    v26 = *(v10 + 16);
    v45 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v46 = v26;
    v27 = v48;
    v26(v48, v25 + v45, v9);
    if (a2)
    {
      v28 = a2;
      v29 = sub_23B2EAE50();
      v30 = sub_23B2EB060();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        v33 = a2;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&dword_23B2CF000, v29, v30, "capturePhoto() error %@", v31, 0xCu);
        sub_23B2EAAEC(v32, &qword_27E12E6F0, &qword_23B2ECE90);
        v35 = v32;
        v27 = v48;
        MEMORY[0x23EE99510](v35, -1, -1);
        MEMORY[0x23EE99510](v31, -1, -1);
      }

      v49 = a2;
      sub_23B2EAFA0();
    }

    else
    {
      v39 = sub_23B2EAE50();
      v40 = sub_23B2EB070();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_23B2CF000, v39, v40, "capturePhoto() success. Calling continuation.", v41, 2u);
        MEMORY[0x23EE99510](v41, -1, -1);
      }

      v49 = v14;
      v42 = v14;
      sub_23B2EAFB0();
    }

    swift_beginAccess();
    v43 = *(v3 + v24);
    if (*(v43 + 16))
    {
      v44 = v47;
      v46(v47, v43 + v45, v9);
      (*(v10 + 56))(v44, 0, 1, v9);
      sub_23B2EAAEC(v44, &unk_27E12E6F8, &unk_23B2ECE98);
      if (*(v43 + 16))
      {
        sub_23B2E8414(0, 1);
        swift_endAccess();
        (*(v10 + 8))(v27, v9);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v36 = sub_23B2EAE50();
    v37 = sub_23B2EB060();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23B2CF000, v36, v37, "Unexpected error. Missing continuation for capturePhoto()", v38, 2u);
      MEMORY[0x23EE99510](v38, -1, -1);
    }
  }
}

uint64_t sub_23B2E8A4C()
{
  v0 = sub_23B2EAE80();
  v14 = *(v0 - 8);
  v1 = *(v14 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23B2EAEA0();
  v4 = *(v13 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v12 = sub_23B2EB080();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23B2EA870;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_186;
  v9 = _Block_copy(aBlock);

  sub_23B2EAE90();
  v15 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EB0F0();
  v10 = v12;
  MEMORY[0x23EE98E10](0, v7, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v0);
  (*(v4 + 8))(v7, v13);
}

void sub_23B2E8D58()
{
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor) = 0;
  v1 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems) = v4;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) = v4;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions) = v4;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations) = v4;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom) = 0;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v6 = v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v8 = objc_opt_self();
  [v8 defaultProcessingInterval];
  *(v0 + v7) = v9;
  v10 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v8 defaultInfrequentProcessingInterval];
  *(v0 + v10) = v11;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords) = v4;
  *(v0 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection) = 1;
  sub_23B2EB150();
  __break(1u);
}

uint64_t sub_23B2E9000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_23B2E90A8()
{
  result = qword_27E12E598;
  if (!qword_27E12E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E598);
  }

  return result;
}

unint64_t sub_23B2E9100()
{
  result = qword_27E12E5A8;
  if (!qword_27E12E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5A8);
  }

  return result;
}

unint64_t sub_23B2E9158()
{
  result = qword_27E12E5B0;
  if (!qword_27E12E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5B0);
  }

  return result;
}

unint64_t sub_23B2E91B0()
{
  result = qword_27E12E5B8;
  if (!qword_27E12E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5B8);
  }

  return result;
}

unint64_t sub_23B2E9208()
{
  result = qword_27E12E5C0;
  if (!qword_27E12E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5C0);
  }

  return result;
}

unint64_t sub_23B2E9260()
{
  result = qword_27E12E5C8;
  if (!qword_27E12E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5C8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2 + *a5;
  swift_beginAccess();
  *(v7 + 8) = v6;
  return swift_unknownObjectWeakAssign();
}

double keypath_get_14Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t dispatch thunk of DataScannerViewController.regionOfInterest.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x3B8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DataScannerViewController.capturePhoto()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x560);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B2E9E04;

  return v6();
}

uint64_t sub_23B2E9E04(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23B2EA004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B2EA04C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DataScannerViewController.QualityLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataScannerViewController.QualityLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataScannerViewController.TextContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataScannerViewController.TextContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataScannerViewController.SceneStabilityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataScannerViewController.SceneStabilityState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B2EA4A8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B2EA538(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B2EA60C()
{
  result = qword_27E12E6A8;
  if (!qword_27E12E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6A8);
  }

  return result;
}

unint64_t sub_23B2EA664()
{
  result = qword_27E12E6B0;
  if (!qword_27E12E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6B0);
  }

  return result;
}

unint64_t sub_23B2EA6BC()
{
  result = qword_27E12E6B8;
  if (!qword_27E12E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6B8);
  }

  return result;
}

unint64_t sub_23B2EA714()
{
  result = qword_27E12E6C0;
  if (!qword_27E12E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6C0);
  }

  return result;
}

unint64_t sub_23B2EA76C()
{
  result = qword_27E12E6C8;
  if (!qword_27E12E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6C8);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23B2EA7E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23B2DC168();
}

void sub_23B2EA7EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23B2DBCE4();
}

void sub_23B2EA80C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23B2DB394(*(v0 + 32));
}

uint64_t objectdestroy_139Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23B2EA878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B2EA8D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B2EA920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_23B2EA988()
{
  v1 = *(v0 + 16);
  [v1 setReticleRect:*(v0 + 24) angle:{*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56)}];

  return [v1 setReticleAlpha_];
}

id sub_23B2EA9E4()
{
  v1 = *(v0 + 16);
  [v1 collapseReticleRect];

  return [v1 setReticleAlpha_];
}

uint64_t sub_23B2EAA34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23B2EAA7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E730, &qword_23B2ECEB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B2EAAEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B2EAB4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}