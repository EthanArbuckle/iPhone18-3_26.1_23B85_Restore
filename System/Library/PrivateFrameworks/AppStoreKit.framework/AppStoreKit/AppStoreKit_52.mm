uint64_t ImpressionsCalculator.__allocating_init(configurationTrackerPairs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImpressionsCalculator.init(configurationTrackerPairs:)(a1);
  return v2;
}

uint64_t ImpressionsCalculator.isVisible.getter()
{
  if (!*(*(v0 + 16) + 16))
  {
    return 0;
  }

  v1 = sub_1E1AF4B9C();

  return v1 & 1;
}

Swift::Void __swiftcall ImpressionsCalculator.removeAllElements()()
{
  v1 = v0;
  v2 = sub_1E159D508(MEMORY[0x1E69E7CC0]);
  v3 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_impressionIdCount;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v7 += 16;

      sub_1E1AF4B5C();

      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    swift_beginAccess();
    v8 = *(v1 + 24);
    v11 = *(v8 + 64);
    v10 = v8 + 64;
    v9 = v11;
    v12 = 1 << *(*(v1 + 24) + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v16 = 0;
    if (v14)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        *(v1 + 24) = MEMORY[0x1E69E7CC8];

        return;
      }

      v14 = *(v10 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        do
        {
LABEL_13:
          v14 &= v14 - 1;

          ImpressionsCalculator.removeAllElements()();
        }

        while (v14);
        continue;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t ImpressionsCalculator.isVisible.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v4 += 16;

      sub_1E1AF4BAC();

      if (v2 == v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ImpressionsCalculator.addElement(_:at:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v38 = a1;
  v11 = sub_1E1AF468C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v37 = sub_1E1AF46DC();
  v18 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  v22 = (*(v12 + 48))(v5 + v21, 1, v11);
  v23 = 0;
  v24 = 0;
  if (!v22)
  {
    v23 = sub_1E1AF467C();
    v24 = v25;
  }

  swift_endAccess();
  ImpressionMetrics.withParentId(_:)(v23, v24, v20);

  sub_1E1AF46AC();
  sub_1E1AF46AC();
  v26 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_impressionIdCount;
  swift_beginAccess();
  v27 = *(v6 + v26);
  if (*(v27 + 16) && (v28 = sub_1E1595354(v14), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  v31 = *(v12 + 8);
  result = v31(v14, v11);
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v6 + v26);
    *(v6 + v26) = 0x8000000000000000;
    sub_1E159A804(v30 + 1, v17, isUniquelyReferenced_nonNull_native);
    v31(v17, v11);
    *(v6 + v26) = v39;
    v34 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v34);
    *(&v36 - 6) = v20;
    *(&v36 - 5) = a2;
    *(&v36 - 4) = a3;
    *(&v36 - 3) = a4;
    *(&v36 - 2) = a5;
    sub_1E1810798(sub_1E18131E8, (&v36 - 8), v35);
    return (*(v18 + 8))(v20, v37);
  }

  return result;
}

uint64_t ImpressionsCalculator.changeImpressionableBounds(_:forElementWithID:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(v5 + 16);
  *&v8[2] = a2;
  *&v8[3] = a3;
  *&v8[4] = a4;
  *&v8[5] = a5;
  v8[6] = a1;
  return sub_1E1810798(sub_1E17322F4, v8, v6);
}

uint64_t ImpressionsCalculator.removeElement(_:)(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1E1AF468C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = sub_1E1AF46DC();
  v46 = *(v17 - 8);
  v47 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  v21 = v3;
  v22 = (*(v4 + 48))(v2 + v20, 1, v3);
  v23 = 0;
  v24 = 0;
  if (!v22)
  {
    v23 = sub_1E1AF467C();
    v24 = v25;
  }

  swift_endAccess();
  ImpressionMetrics.withParentId(_:)(v23, v24, v19);

  sub_1E1AF46AC();
  sub_1E1AF46AC();
  v26 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_impressionIdCount;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (*(v27 + 16) && (v28 = sub_1E1595354(v13), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  v31 = *(v4 + 8);
  v32 = v13;
  v33 = v21;
  result = v31(v32, v21);
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v2 + v26);
  *(v2 + v26) = 0x8000000000000000;
  sub_1E159A804(v30 - 1, v16, isUniquelyReferenced_nonNull_native);
  v31(v16, v21);
  *(v2 + v26) = v50;
  swift_endAccess();
  sub_1E1AF46AC();
  swift_beginAccess();
  v36 = *(v2 + v26);
  if (*(v36 + 16) && (v37 = sub_1E1595354(v10), (v38 & 1) != 0))
  {
    v39 = *(*(v36 + 56) + 8 * v37);
    swift_endAccess();
    v31(v10, v21);
    v40 = v48;
    if (v39 > 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    swift_endAccess();
    v31(v10, v21);
    v40 = v48;
  }

  sub_1E1AF46AC();
  swift_beginAccess();
  sub_1E1387538(0, 1, v40);
  v41 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v41);
  *(&v45 - 2) = v19;
  sub_1E1810798(sub_1E1813224, (&v45 - 4), v42);
LABEL_14:
  v43 = v45;
  sub_1E1AF46AC();
  swift_beginAccess();
  if (*(*(v2 + 24) + 16) && (sub_1E1595354(v43), (v44 & 1) != 0))
  {
    swift_endAccess();

    v31(v43, v33);
    ImpressionsCalculator.removeAllElements()();
    sub_1E1AF46AC();
    swift_beginAccess();
    sub_1E13876EC(0, v40);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v31(v43, v33);
  }

  return (*(v46 + 8))(v19, v47);
}

uint64_t ImpressionsCalculator.childCalculator(for:viewBounds:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_1E1AF468C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v2 + 24);
  if (*(v10 + 16) && (v11 = sub_1E1595354(a1), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    if (a2[2])
    {

      return v13;
    }

    v27 = *(v13 + 16);
    v28 = *(v27 + 16);
    v29 = v13 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;

    result = swift_beginAccess();
    if (!v28)
    {
      return v13;
    }

    v30 = 0;
    v31 = (v27 + 40);
    while (v30 < *(v27 + 16))
    {
      v32 = *v31;
      v33 = a2[1];
      v34 = *a2;
      v35 = v33;
      if (v32 != 1 || (*(v29 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_1E1AF6B3C();
      }

      ++v30;
      sub_1E1AF4AEC();

      v31 += 16;
      if (v28 == v30)
      {
        return v13;
      }
    }
  }

  else
  {
    v14 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v14);
    *(&v34 - 2) = a1;
    *(&v34 - 1) = v3;
    v16 = sub_1E1683944(sub_1E1813258, (&v34 - 2), v15);
    if (!v16[2])
    {

      (*(v7 + 16))(v9, a1, v6);
      swift_beginAccess();
      sub_1E13876EC(0, v9);
      swift_endAccess();
      return 0;
    }

    v17 = v16;
    (*(v7 + 16))(v9, a1, v6);
    swift_allocObject();
    v13 = sub_1E1811D8C(v17, v9);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_1E159A638(v13, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v36;
    swift_endAccess();
    if ((a2[2] & 1) != 0 || (v19 = *(v13 + 16), v20 = *(v19 + 16), v21 = v13 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets, result = swift_beginAccess(), !v20))
    {
LABEL_15:

      return v13;
    }

    v23 = 0;
    v24 = (v19 + 40);
    while (v23 < *(v19 + 16))
    {
      v25 = *v24;
      v26 = a2[1];
      v34 = *a2;
      v35 = v26;
      if (v25 & 1) == 0 || (*(v21 + 32))
      {
      }

      else
      {

        sub_1E1AF6B3C();
      }

      ++v23;
      sub_1E1AF4AEC();

      v24 += 16;
      if (v20 == v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = *(v6 + 16);
  v9[2] = a1;
  *&v9[4] = a3;
  *&v9[5] = a4;
  *&v9[6] = a5;
  *&v9[7] = a6;
  v10 = a2;
  return sub_1E1810798(sub_1E1534CB4, v9, v7);
}

uint64_t ImpressionsCalculator.init(configurationTrackerPairs:)(uint64_t a1)
{
  v2 = v1;
  v43 = sub_1E1AF4B2C();
  v37 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F78);
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = sub_1E159D320(MEMORY[0x1E69E7CC0]);
  v12 = &unk_1EE1ED000;
  v13 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  v14 = sub_1E1AF468C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v35 = v15 + 56;
  v36 = v16;
  v16((v2 + v13), 1, 1, v14);
  v17 = v2 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 1;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  v18 = *(a1 + 16);
  if (v18)
  {
    v32 = v14;
    v33 = v10;
    v34 = v2;
    v44 = v11;
    sub_1E135C520(0, v18, 0);
    v39 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v40 = v5;
    v19 = v44;
    result = sub_1E1AF4BBC();
    v21 = 0;
    v37 += 2;
    v38 = result;
    while (v21 < *(a1 + 16))
    {
      v22 = v18;
      v23 = a1;
      sub_1E1813288(v39 + *(v40 + 72) * v21, v7);
      v24 = v7[*(v41 + 64)];
      (*v37)(v42, v7, v43);
      swift_unknownObjectRetain();
      v25 = sub_1E1AF4B3C();
      result = sub_1E1308058(v7, &qword_1ECEB3F78);
      v44 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1E135C520((v26 > 1), v27 + 1, 1);
        v19 = v44;
      }

      ++v21;
      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v18 = v22;
      a1 = v23;
      if (v22 == v21)
      {

        v10 = v33;
        v2 = v34;
        v12 = &unk_1EE1ED000;
        v14 = v32;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *(v2 + 16) = v19;
    v36(v10, 1, 1, v14);
    v29 = v12[80];
    swift_beginAccess();
    sub_1E18132F8(v10, v2 + v29);
    swift_endAccess();
    *(v2 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_impressionIdCount) = sub_1E159D508(MEMORY[0x1E69E7CC0]);
    v30 = [objc_opt_self() defaultCenter];
    [v30 addObserver:v2 selector:sel_applicationDidEnterBackgroundWithNote_ name:*MEMORY[0x1E69DDAC8] object:0];
    [v30 addObserver:v2 selector:sel_applicationWillEnterForegroundWithNote_ name:*MEMORY[0x1E69DDBC0] object:0];

    return v2;
  }

  return result;
}

uint64_t ImpressionsCalculator.init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_1E1812F7C(a3, a1, a2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1E1811D8C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  *(v2 + 24) = sub_1E159D320(MEMORY[0x1E69E7CC0]);
  v8 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  v9 = sub_1E1AF468C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v2 + v8, 1, 1, v9);
  v12 = v2 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  *(v2 + 16) = a1;
  (*(v10 + 16))(v7, a2, v9);
  v11(v7, 0, 1, v9);
  v13 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  sub_1E18132F8(v7, v2 + v13);
  swift_endAccess();
  v14 = sub_1E159D508(MEMORY[0x1E69E7CC0]);
  (*(v10 + 8))(a2, v9);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_impressionIdCount) = v14;
  return v2;
}

uint64_t sub_1E1811F68@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(*(*result + 16) + 16))
  {

    v3 = sub_1E1AF4B9C();
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3 & 1;
  return result;
}

uint64_t (*ImpressionsCalculator.isVisible.modify(uint64_t a1))()
{
  *a1 = v1;
  if (*(*(v1 + 16) + 16))
  {

    v3 = sub_1E1AF4B9C();
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 8) = v3 & 1;
  return sub_1E1812058;
}

double ImpressionsCalculator.viewBounds.getter()
{
  if (!*(*(v0 + 16) + 16))
  {
    return 0.0;
  }

  sub_1E1AF4ADC();
  v2 = v1;

  return v2;
}

uint64_t sub_1E1812104@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(*(*result + 16) + 16))
  {

    sub_1E1AF4ADC();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v8 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

uint64_t ImpressionsCalculator.viewBounds.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = v0 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  result = swift_beginAccess();
  if (v2)
  {
    v5 = 0;
    v6 = (v1 + 40);
    while (v5 < *(v1 + 16))
    {
      if (*v6 != 1 || (*(v3 + 32) & 1) != 0)
      {
      }

      else
      {

        sub_1E1AF6B3C();
      }

      ++v5;
      sub_1E1AF4AEC();

      v6 += 16;
      if (v2 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void (*ImpressionsCalculator.viewBounds.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  *(v3 + 88) = v5;
  if (*(v5 + 16))
  {

    sub_1E1AF4ADC();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
  }

  *v4 = v7;
  v4[1] = v9;
  v4[2] = v11;
  v4[3] = v13;
  return sub_1E1812394;
}

void sub_1E1812394(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 88) + 16);
  v4 = *(*a1 + 80) + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  if (a2)
  {
    swift_beginAccess();
    if (v3)
    {
      v5 = 0;
      v6 = (v2[11] + 40);
      while (v5 < *(v2[11] + 16))
      {
        if (*v6 & 1) == 0 || (*(v4 + 32))
        {
        }

        else
        {

          sub_1E1AF6B3C();
        }

        ++v5;
        sub_1E1AF4AEC();

        v6 += 16;
        if (v3 == v5)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }
  }

  else
  {
    swift_beginAccess();
    if (v3)
    {
      v7 = 0;
      v8 = (v2[11] + 40);
      while (v7 < *(v2[11] + 16))
      {
        if (*v8 != 1 || (*(v4 + 32) & 1) != 0)
        {
        }

        else
        {

          sub_1E1AF6B3C();
        }

        ++v7;
        sub_1E1AF4AEC();

        v8 += 16;
        if (v3 == v7)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_18:

  free(v2);
}

__n128 ImpressionsCalculator.viewSafeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ImpressionsCalculator.viewSafeAreaInsets.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ImpressionsCalculator.makeChildCalculator(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF468C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 16);
  v13 = a1;
  v14 = v2;
  v9 = sub_1E1683944(sub_1E1813368, v12, v8);
  if (v9[2])
  {
    v10 = v9;
    (*(v5 + 16))(v7, a1, v4);
    swift_allocObject();
    return sub_1E1811D8C(v10, v7);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1E1812814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *)@<X3>, uint64_t a5@<X8>)
{
  v20 = a4;
  v9 = sub_1E1AF468C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  if ((*(v10 + 48))(a3 + v14, 1, v9))
  {
    swift_endAccess();
    (*(v10 + 16))(v12, a2, v9);
  }

  else
  {
    v15 = sub_1E1AF467C();
    v19[0] = v16;
    v19[1] = v15;
    swift_endAccess();
    sub_1E1AF467C();
    v19[2] = v13;
    sub_1E1AF465C();
    sub_1E1AF466C();
  }

  v17 = v20(v12);
  result = (*(v10 + 8))(v12, v9);
  *a5 = v17;
  *(a5 + 8) = 0;
  return result;
}

uint64_t sub_1E18129E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15[1] = a4;
  v5 = sub_1E1AF46DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  v10 = sub_1E1AF468C();
  v11 = 0;
  v12 = 0;
  if (!(*(*(v10 - 8) + 48))(a3 + v9, 1, v10))
  {
    v11 = sub_1E1AF467C();
    v12 = v13;
  }

  swift_endAccess();
  ImpressionMetrics.withParentId(_:)(v11, v12, v8);

  sub_1E1AF4B8C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E1812BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF468C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  if ((*(v7 + 48))(a3 + v10, 1, v6))
  {
    swift_endAccess();
    (*(v7 + 16))(v9, a2, v6);
  }

  else
  {
    v12[0] = sub_1E1AF467C();
    v12[9] = v3;
    swift_endAccess();
    sub_1E1AF467C();
    sub_1E1AF465C();
    sub_1E1AF466C();
  }

  sub_1E1AF4B7C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t ImpressionsCalculator.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID, &qword_1ECEB8960);

  return v0;
}

uint64_t ImpressionsCalculator.__deallocating_deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID, &qword_1ECEB8960);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1812F7C(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  *(v4 + 24) = sub_1E159D320(MEMORY[0x1E69E7CC0]);
  v10 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  v11 = sub_1E1AF468C();
  v12 = *(*(v11 - 8) + 56);
  v12(v4 + v10, 1, 1, v11);
  v13 = v4 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_viewSafeAreaInsets;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2660);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF4BBC();
  v15 = swift_unknownObjectRetain();
  *(v14 + 32) = MEMORY[0x1E68FD890](v15, a3, a1);
  *(v14 + 40) = 0;
  *(v4 + 16) = v14;
  v12(v9, 1, 1, v11);
  v16 = OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_parentItemID;
  swift_beginAccess();
  sub_1E18132F8(v9, v4 + v16);
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit21ImpressionsCalculator_impressionIdCount) = sub_1E159D508(MEMORY[0x1E69E7CC0]);
  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v4 selector:sel_applicationDidEnterBackgroundWithNote_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v17 addObserver:v4 selector:sel_applicationWillEnterForegroundWithNote_ name:*MEMORY[0x1E69DDBC0] object:0];

  return v4;
}

uint64_t sub_1E1813288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E18132F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ImpressionsCalculator()
{
  result = qword_1EE1ED260;
  if (!qword_1EE1ED260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E18133EC()
{
  sub_1E18134E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E18134E0()
{
  if (!qword_1EE1E39F8)
  {
    sub_1E1AF468C();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E39F8);
    }
  }
}

uint64_t *TodayCardMediaSingleLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v45 = sub_1E1AF380C();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v33 - v19;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v40 = v5;
  v21 = *(v5 + 16);
  v21(v13, a2, v4);
  v39 = v20;
  v22 = v43;
  sub_1E1AF464C();
  v21(v22, a2, v4);
  v23 = v36;
  v42 = a1;
  sub_1E1AF381C();
  v24 = v37;
  v21(v37, v22, v4);
  type metadata accessor for CondensedAdLockupWithIconBackground();
  swift_allocObject();
  v25 = v38;
  v26 = CondensedAdLockupWithIconBackground.init(deserializing:using:)(v23, v24);
  if (v25)
  {
    v27 = *(v40 + 8);
    (v27)(a2, v4);
    (*(v44 + 8))(v42, v45);
    (v27)(v22, v4);
    sub_1E1308058(v39, &unk_1ECEB1770);
    type metadata accessor for TodayCardMediaSingleLockup();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v40;
    *(v41 + OBJC_IVAR____TtC11AppStoreKit26TodayCardMediaSingleLockup_condensedAdLockupWithIconBackground) = v26;
    v29 = v34;
    (*(v44 + 16))(v34, v42, v45);
    v30 = v35;
    v21(v35, a2, v4);
    v27 = TodayCardMedia.init(deserializing:using:)(v29, v30);
    v32 = *(v28 + 8);
    v32(a2, v4);
    (*(v44 + 8))(v42, v45);
    v32(v43, v4);
    sub_1E1308058(v39, &unk_1ECEB1770);
  }

  return v27;
}

uint64_t type metadata accessor for TodayCardMediaSingleLockup()
{
  result = qword_1ECEB9CC0;
  if (!qword_1ECEB9CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayCardMediaSingleLockup.__allocating_init(condensedAdLockupWithIconBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaSingleLockup.init(condensedAdLockupWithIconBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaSingleLockup.init(condensedAdLockupWithIconBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit26TodayCardMediaSingleLockup_condensedAdLockupWithIconBackground) = a1;
  v13 = sub_1E1AF46DC();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_1E138853C(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v20[1] = v15;
    v20[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v21, &unk_1ECEB5670);
  }

  (*(v14 + 8))(a2, v13);
  sub_1E1308058(v27, &unk_1ECEB5670);
  v18 = v25;
  *(v3 + 32) = v24;
  *(v3 + 48) = v18;
  *(v3 + 64) = v26;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 11;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaSingleLockup.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaSingleLockup.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

AppStoreKit::TextCardTitleStyle_optional __swiftcall TextCardTitleStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TextCardTitleStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x4373726F74696465;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1E1814084(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4373726F74696465;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00006563696F68;
  }

  if (*a2)
  {
    v5 = 0x4373726F74696465;
  }

  else
  {
    v5 = 1954047348;
  }

  if (*a2)
  {
    v6 = 0xED00006563696F68;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E1814130()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18141B8()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E181422C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18142B0@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E1814310(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (*v1)
  {
    v2 = 0x4373726F74696465;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00006563696F68;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TextCard.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TextCard.subtitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TextCard.captionTitle.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TextCard.captionSubtitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t TextCard.__allocating_init(id:title:titleStyle:subtitle:bodyParagraph:compactAction:regularAction:captionTitle:captionSubtitle:captionArtwork:captionAction:isExpanded:includeCaptionWhenExpanded:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, char a17)
{
  v20 = a17;
  v21 = a16;
  v51 = a15;
  v52 = a7;
  v49 = a14;
  v50 = a6;
  v47 = a13;
  v48 = a5;
  v45 = a3;
  v46 = a12;
  v43 = a2;
  v44 = a11;
  v41 = a9;
  v42 = a10;
  v22 = sub_1E1AEFEAC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = *a4;
  sub_1E138853C(a1, &v55);
  if (*(&v56 + 1))
  {
    v28 = v56;
    *(v26 + 136) = v55;
    *(v26 + 152) = v28;
    *(v26 + 168) = v57;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v40 = a16;
    v31 = v30;
    (*(v23 + 8))(v25, v22);
    v53 = v29;
    v54 = v31;
    v20 = a17;
    v21 = v40;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v55);
  }

  sub_1E13E2E98(a1);
  v32 = v45;
  *(v26 + 16) = v43;
  *(v26 + 24) = v32;
  *(v26 + 32) = v27;
  v33 = v50;
  *(v26 + 40) = v48;
  *(v26 + 48) = v33;
  *(v26 + 56) = v52;
  *(v26 + 64) = a8;
  v34 = v42;
  *(v26 + 72) = v41;
  *(v26 + 80) = v34;
  v35 = v46;
  v36 = v47;
  *(v26 + 88) = v44;
  *(v26 + 96) = v35;
  v37 = v49;
  *(v26 + 104) = v36;
  *(v26 + 112) = v37;
  *(v26 + 120) = v51;
  *(v26 + 128) = v21 & 1;
  *(v26 + 129) = v20 & 1;
  return v26;
}

uint64_t TextCard.init(id:title:titleStyle:subtitle:bodyParagraph:compactAction:regularAction:captionTitle:captionSubtitle:captionArtwork:captionAction:isExpanded:includeCaptionWhenExpanded:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, unsigned __int8 a17)
{
  v18 = v17;
  v41 = a8;
  v52 = a6;
  v50 = a5;
  v47 = a3;
  v45 = a2;
  v42 = a17;
  v53 = a15;
  v51 = a14;
  v48 = a12;
  v49 = a13;
  v46 = a11;
  v44 = a10;
  v43 = a9;
  v22 = sub_1E1AEFEAC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  sub_1E138853C(a1, &v56);
  if (*(&v57 + 1))
  {
    v59 = v56;
    v60 = v57;
    v61 = v58;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v40 = a7;
    v29 = v28;
    (*(v23 + 8))(v25, v22);
    v54 = v27;
    v55 = v29;
    a7 = v40;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v56);
  }

  sub_1E13E2E98(a1);
  v30 = v60;
  *(v18 + 136) = v59;
  *(v18 + 152) = v30;
  *(v18 + 168) = v61;
  v31 = v47;
  *(v18 + 16) = v45;
  *(v18 + 24) = v31;
  *(v18 + 32) = v26;
  v32 = v52;
  *(v18 + 40) = v50;
  *(v18 + 48) = v32;
  v33 = v41;
  *(v18 + 56) = a7;
  *(v18 + 64) = v33;
  v34 = v44;
  *(v18 + 72) = v43;
  *(v18 + 80) = v34;
  v35 = v48;
  v36 = v49;
  *(v18 + 88) = v46;
  *(v18 + 96) = v35;
  v37 = v51;
  *(v18 + 104) = v36;
  *(v18 + 112) = v37;
  *(v18 + 120) = v53;
  *(v18 + 128) = a16 & 1;
  *(v18 + 129) = v42 & 1;
  return v18;
}

char *TextCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v91 = sub_1E1AEFEAC();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v77 - v7;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  sub_1E1AF381C();
  v96 = sub_1E1AF37CC();
  v25 = v24;
  v26 = *(v9 + 8);
  v26(v23, v8);
  v102 = a1;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v28 = v27;
  v29 = v20;
  v30 = v8;
  v101 = v26;
  v111[7] = v9 + 8;
  v26(v29, v8);
  if (!v28)
  {

    v35 = sub_1E1AF5A7C();
    sub_1E181569C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = 0x797453656C746974;
    v36[1] = 0xEA0000000000656CLL;
    v36[2] = v100;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    v34 = v102;
    v37 = v103;
    v38 = v105;
    v33 = v101;
LABEL_10:
    (*(v104 + 8))(v37, v38);
    v33(v34, v30);
    return v17;
  }

  v31 = v100;
  v97 = v25;
  v32 = sub_1E1AF72FC();

  if (v32)
  {
    v33 = v101;
    if (v32 != 1)
    {

      v45 = sub_1E1AF5A7C();
      sub_1E181569C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      v46 = MEMORY[0x1E69E7CC0];
      *v47 = 0x797453656C746974;
      v47[1] = 0xEA0000000000656CLL;
      v47[2] = v31;
      v47[3] = v46;
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69AB6A0], v45);
      swift_willThrow();
      v34 = v102;
      v37 = v103;
      v38 = v105;
      goto LABEL_10;
    }

    v87 = 1;
    v34 = v102;
  }

  else
  {
    v87 = 0;
    v33 = v101;
    v34 = v102;
  }

  sub_1E1AF381C();
  v39 = sub_1E1AF37CC();
  v41 = v40;
  v33(v23, v30);
  sub_1E1AF381C();
  v88 = v30;
  v37 = v103;
  v42 = v98;
  v86 = *(v104 + 16);
  (v86)(v98, v103, v105);
  v43 = v99;
  v44 = sub_1E165AA74(v17, v42);
  v100 = v43;
  if (v43)
  {

    v38 = v105;
    v30 = v88;
    goto LABEL_10;
  }

  v85 = v44;
  v98 = v39;
  v99 = v41;
  v49 = type metadata accessor for Action();
  sub_1E1AF381C();
  v79 = v49;
  v78 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v50 = v88;
  v33(v23, v88);
  sub_1E1AF381C();
  v84 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v33(v23, v50);
  sub_1E1AF381C();
  v83 = sub_1E1AF37CC();
  v82 = v51;
  v33(v23, v50);
  sub_1E1AF381C();
  v81 = sub_1E1AF37CC();
  v80 = v52;
  v33(v23, v50);
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  (v86)(v93, v37, v105);
  sub_1E181569C(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v93 = v111[0];
  sub_1E1AF381C();
  v86 = static Action.tryToMakeInstance(byDeserializing:using:)(v23, v37);
  v53 = v88;
  v33(v23, v88);
  v54 = v92;
  sub_1E1AF381C();
  LODWORD(v79) = sub_1E1AF370C();
  v33(v54, v53);
  v55 = v94;
  sub_1E1AF381C();
  v56 = sub_1E1AF370C();
  v33(v55, v53);
  v57 = v95;
  sub_1E1AF381C();
  v58 = sub_1E1AF37CC();
  if (v59)
  {
    *&v108 = v58;
    *(&v108 + 1) = v59;
  }

  else
  {
    v60 = v89;
    sub_1E1AEFE9C();
    v61 = sub_1E1AEFE7C();
    v63 = v62;
    (*(v90 + 8))(v60, v91);
    *&v108 = v61;
    *(&v108 + 1) = v63;
  }

  sub_1E1AF6F6C();
  v33(v57, v53);
  type metadata accessor for TextCard();
  v17 = swift_allocObject();
  sub_1E138853C(v111, &v108);
  v64 = v103;
  v65 = v105;
  v66 = v97;
  v67 = v99;
  if (*(&v109 + 1))
  {
    v68 = v109;
    *(v17 + 136) = v108;
    *(v17 + 152) = v68;
    *(v17 + 21) = v110;
  }

  else
  {
    v69 = v89;
    sub_1E1AEFE9C();
    v70 = sub_1E1AEFE7C();
    v72 = v71;
    (*(v90 + 8))(v69, v91);
    v106 = v70;
    v107 = v72;
    v67 = v99;
    v66 = v97;
    v64 = v103;
    v65 = v105;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v108);
  }

  (*(v104 + 8))(v64, v65);
  v101(v102, v53);
  sub_1E13E2E98(v111);
  *(v17 + 2) = v96;
  *(v17 + 3) = v66;
  v17[32] = v87;
  *(v17 + 5) = v98;
  *(v17 + 6) = v67;
  v73 = v78;
  *(v17 + 7) = v85;
  *(v17 + 8) = v73;
  v74 = v83;
  *(v17 + 9) = v84;
  *(v17 + 10) = v74;
  v75 = v81;
  *(v17 + 11) = v82;
  *(v17 + 12) = v75;
  v76 = v93;
  *(v17 + 13) = v80;
  *(v17 + 14) = v76;
  *(v17 + 15) = v86;
  v17[128] = v79 & 1;
  v17[129] = v56 & 1;
  return v17;
}

uint64_t TextCard.deinit()
{

  sub_1E134B88C(v0 + 136);
  return v0;
}

uint64_t TextCard.__deallocating_deinit()
{
  TextCard.deinit();

  return swift_deallocClassInstance();
}

char *sub_1E181559C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = TextCard.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1E1815600()
{
  result = qword_1ECEB9CD0;
  if (!qword_1ECEB9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9CD0);
  }

  return result;
}

uint64_t sub_1E181569C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void __swiftcall PlaceholderBrick.init(style:title:badge:artworks:)(AppStoreKit::PlaceholderBrick *__return_ptr retstr, AppStoreKit::ChartOrCategoryBrickStyle_optional style, Swift::String title, Swift::String_optional badge, Swift::OpaquePointer_optional artworks)
{
  v5 = *style.value;
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  retstr->_style = v5;
  retstr->title = title;
  retstr->badge = badge;
  retstr->_artworks.value._rawValue = artworks.value._rawValue;
}

double ChartOrCategoryBrick.textSafeArea.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

AppStoreKit::ChartOrCategoryBrickSafeArea::Constraint_optional __swiftcall ChartOrCategoryBrickSafeArea.Constraint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChartOrCategoryBrickSafeArea.Constraint.rawValue.getter()
{
  v1 = 0x6D726F4665657266;
  if (*v0 == 1)
  {
    v1 = 0x7942657261757173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7942657261757173;
  }
}

uint64_t sub_1E18158BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEE00746867696548;
  v4 = 0x6D726F4665657266;
  if (v2 == 1)
  {
    v4 = 0x7942657261757173;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7942657261757173;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006874646957;
  }

  v7 = 0xEE00746867696548;
  v8 = 0x6D726F4665657266;
  if (*a2 == 1)
  {
    v8 = 0x7942657261757173;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7942657261757173;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006874646957;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E18159C0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1815A6C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1815B04()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1815BB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006874646957;
  v4 = 0xEE00746867696548;
  v5 = 0x7942657261757173;
  if (v2 != 1)
  {
    v5 = 0x6D726F4665657266;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7942657261757173;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void ChartOrCategoryBrickSafeArea.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t ChartOrCategoryBrickSafeArea.location.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t ChartOrCategoryBrickSafeArea.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a3;
  v50 = a2;
  v51 = sub_1E1AF39DC();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  sub_1E1AF381C();
  v47 = sub_1E1AF379C();
  v19 = v18;
  v20 = *(v6 + 8);
  v21 = v17;
  v22 = a1;
  v20(v21, v5);
  if (v19 & 1) != 0 || (sub_1E1AF381C(), v23 = sub_1E1AF379C(), v25 = v24, v20(v14, v5), (v25))
  {
    v26 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v27 = 0x6874646977;
    v27[1] = 0xE500000000000000;
    v27[2] = &type metadata for ChartOrCategoryBrickSafeArea;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
    swift_willThrow();
    (*(v49 + 8))(v50, v51);
    return (v20)(v22, v5);
  }

  else
  {
    v45 = v23;
    sub_1E1AF381C();
    v57 = sub_1E1AF370C();
    v20(v11, v5);
    sub_1E1AF381C();
    v29 = v49;
    v30 = v50;
    (*(v49 + 16))(v46, v50, v51);
    sub_1E1816254();
    sub_1E1AF464C();
    v43 = v53;
    v44 = v52;
    v46 = v54;
    v42 = v55;
    v31 = v22;
    v32 = v56;
    sub_1E1AF381C();
    sub_1E18162A8();
    sub_1E1AF369C();
    (*(v29 + 8))(v30, v51);
    v20(v31, v5);
    result = (v20)(v8, v5);
    v33 = v46;
    v34 = v52;
    v35 = v57 & 1;
    if (v46 == 255)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v33 = 1;
      v32 = 1;
      v39 = v45;
    }

    else
    {
      v36 = v44;
      v39 = v45;
      v38 = v42;
      v37 = v43;
    }

    v40 = v48;
    *v48 = v47;
    v40[1] = v39;
    *(v40 + 16) = v35;
    *(v40 + 24) = v36;
    v40[4] = v37;
    *(v40 + 40) = v33 & 1;
    v40[6] = v38;
    *(v40 + 56) = v32 & 1;
    *(v40 + 57) = v34;
  }

  return result;
}

unint64_t sub_1E1816254()
{
  result = qword_1EE1D6D70;
  if (!qword_1EE1D6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D6D70);
  }

  return result;
}

unint64_t sub_1E18162A8()
{
  result = qword_1EE1D6D88[0];
  if (!qword_1EE1D6D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D6D88);
  }

  return result;
}

CGSize __swiftcall ChartOrCategoryBrickSafeArea.size(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v6 = v1[1];
  v23[0] = *v1;
  v23[1] = v6;
  *v24 = v1[2];
  *&v24[10] = *(v1 + 42);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v8 + 24) = 1;
  v11 = (v8 + 24);
  if (!v24[25])
  {
    sub_1E18164B0(v7, v23, x, y, width, height);
    v15 = v14;
    swift_beginAccess();
    *v10 = v15;
    goto LABEL_5;
  }

  if (v24[25] == 1)
  {
    sub_1E1816534(v8, v23, x, y, width, height);
    v13 = v12;
    swift_beginAccess();
    *(v7 + 16) = v13;
    v11 = (v7 + 24);
LABEL_5:
    *v11 = 0;
  }

  sub_1E18164B0(v7, v23, x, y, width, height);
  v17 = v16;
  sub_1E1816534(v9, v23, x, y, width, height);
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

uint64_t sub_1E18164B0(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = result;
  if (*(result + 24))
  {
    v7 = 1.0;
    if (*(a2 + 16))
    {
      v8 = a2;
      Width = CGRectGetWidth(*&a3);
      a2 = v8;
      v7 = Width;
    }

    v10 = v7 * *a2;
    result = swift_beginAccess();
    *(v6 + 16) = v10;
    *(v6 + 24) = 0;
  }

  return result;
}

uint64_t sub_1E1816534(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = result;
  if (*(result + 24))
  {
    v7 = 1.0;
    if (*(a2 + 16))
    {
      v8 = a2;
      Height = CGRectGetHeight(*&a3);
      a2 = v8;
      v7 = Height;
    }

    v10 = v7 * *(a2 + 8);
    result = swift_beginAccess();
    *(v6 + 16) = v10;
    *(v6 + 24) = 0;
  }

  return result;
}

void ChartOrCategoryBrickSafeArea.Location.distanceX.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

void ChartOrCategoryBrickSafeArea.Location.distanceY.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t ChartOrCategoryBrickSafeArea.Location.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v27 = a2;
  v32 = a3;
  v4 = sub_1E1AF39DC();
  v26 = *(v4 - 8);
  v5 = v26;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1E1AF380C();
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1AF381C();
  sub_1E181692C();
  sub_1E1AF369C();
  v12 = *(v9 + 8);
  v28 = v9 + 8;
  v30 = v12;
  v12(v11, v8);
  v31 = v33;
  sub_1E1AF381C();
  v13 = *(v5 + 16);
  v14 = v7;
  v15 = v7;
  v16 = v27;
  v13(v15, v27, v4);
  sub_1E1816980();
  sub_1E1AF464C();
  v25 = v33;
  v24 = v34;
  sub_1E1AF381C();
  v13(v14, v16, v4);
  sub_1E1AF464C();
  (*(v26 + 8))(v16, v4);
  result = v30(a1, v29);
  v19 = v32;
  v18 = v33;
  v20 = v34;
  v21 = v24;
  v22 = v25;
  if (v24 == 255)
  {
    v22 = 0;
  }

  if (v34 == 255)
  {
    v18 = 0;
  }

  *v32 = v31;
  *(v19 + 1) = v22;
  v19[16] = v21 & 1;
  *(v19 + 3) = v18;
  v19[32] = v20 & 1;
  return result;
}

unint64_t sub_1E181692C()
{
  result = qword_1EE1D6D80;
  if (!qword_1EE1D6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D6D80);
  }

  return result;
}

unint64_t sub_1E1816980()
{
  result = qword_1EE1D6D78;
  if (!qword_1EE1D6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D6D78);
  }

  return result;
}

CGPoint __swiftcall ChartOrCategoryBrickSafeArea.Location.absoluteDistance(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = v6 * CGRectGetWidth(in);
  if (!v7)
  {
    v6 = v10;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = v8 * CGRectGetHeight(v15);
  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v6;
  result.y = v12;
  result.x = v13;
  return result;
}

AppStoreKit::ChartOrCategoryBrickSafeArea::Location::RelativeLocation_optional __swiftcall ChartOrCategoryBrickSafeArea.Location.RelativeLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x7468676952706F74 && rawValue._object == 0xE800000000000000;
  if (!v5 && (sub_1E1AF74AC() & 1) == 0)
  {
    if (countAndFlagsBits == 0x7466654C706F74 && object == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v7 = 1;
      goto LABEL_7;
    }

    v8 = 0x6C69617254706F74;
    v7 = byte_1F5C256A0;
    if (byte_1F5C256A0)
    {
      if (byte_1F5C256A0 == 1)
      {
        v9 = 1282436980;
      }

      else
      {
        v9 = 1281649005;
      }

      v10 = v9 | 0x6964616500000000;
      v11 = 0xEA0000000000676ELL;
    }

    else
    {
      v10 = 0x6C69617254706F74;
      v11 = 0xEB00000000676E69;
    }

    if (v10 == countAndFlagsBits && v11 == object)
    {
LABEL_20:

      goto LABEL_7;
    }

    v12 = sub_1E1AF74AC();

    if ((v12 & 1) == 0)
    {
      v7 = byte_1F5C256A1;
      if (byte_1F5C256A1)
      {
        if (byte_1F5C256A1 == 1)
        {
          v13 = 1282436980;
        }

        else
        {
          v13 = 1281649005;
        }

        v14 = v13 | 0x6964616500000000;
        v15 = 0xEA0000000000676ELL;
      }

      else
      {
        v14 = 0x6C69617254706F74;
        v15 = 0xEB00000000676E69;
      }

      if (v14 == countAndFlagsBits && v15 == object)
      {
        goto LABEL_20;
      }

      v16 = sub_1E1AF74AC();

      if ((v16 & 1) == 0)
      {
        v7 = byte_1F5C256A2;
        if (byte_1F5C256A2)
        {
          if (byte_1F5C256A2 == 1)
          {
            v17 = 1282436980;
          }

          else
          {
            v17 = 1281649005;
          }

          v8 = v17 | 0x6964616500000000;
          v18 = 0xEA0000000000676ELL;
        }

        else
        {
          v18 = 0xEB00000000676E69;
        }

        if (v8 == countAndFlagsBits && v18 == object)
        {
          goto LABEL_20;
        }

        v19 = sub_1E1AF74AC();

        if ((v19 & 1) == 0)
        {

          v7 = 3;
          goto LABEL_7;
        }
      }
    }

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  *v4 = v7;
  return result;
}

uint64_t ChartOrCategoryBrickSafeArea.Location.RelativeLocation.rawValue.getter()
{
  v1 = 0x696461654C706F74;
  if (*v0 != 1)
  {
    v1 = 0x696461654C64696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69617254706F74;
  }
}

uint64_t sub_1E1816D74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696461654C706F74;
  if (v2 != 1)
  {
    v3 = 0x696461654C64696DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C69617254706F74;
  }

  if (v2)
  {
    v5 = 0xEA0000000000676ELL;
  }

  else
  {
    v5 = 0xEB00000000676E69;
  }

  v6 = 0x696461654C706F74;
  if (*a2 != 1)
  {
    v6 = 0x696461654C64696DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C69617254706F74;
  }

  if (*a2)
  {
    v8 = 0xEA0000000000676ELL;
  }

  else
  {
    v8 = 0xEB00000000676E69;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

uint64_t sub_1E1816E6C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1816F20()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1816FC0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E181707C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0x696461654C706F74;
  if (v2 != 1)
  {
    v4 = 0x696461654C64696DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C69617254706F74;
  }

  if (!v5)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t ChartOrCategoryBrickSafeArea.Location.Distance.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1E1AF381C();
  v20 = sub_1E1AF379C();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v11, v5);
  sub_1E1AF381C();
  v15 = sub_1E1AF370C();
  v16 = sub_1E1AF39DC();
  (*(*(v16 - 8) + 8))(v21, v16);
  v14(a1, v5);
  result = (v14)(v8, v5);
  v18 = v15 == 2 || (v15 & 1) == 0;
  v19 = v20;
  if (v13)
  {
    v19 = 0;
  }

  *a3 = v19;
  *(a3 + 8) = v18;
  return result;
}

uint64_t PlaceholderBrick.brickBadge.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PlaceholderBrick.brickTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t sub_1E1817390()
{
  result = qword_1ECEB9CE0;
  if (!qword_1ECEB9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9CE0);
  }

  return result;
}

unint64_t sub_1E18173E8()
{
  result = qword_1ECEB9CE8;
  if (!qword_1ECEB9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9CE8);
  }

  return result;
}

unint64_t sub_1E1817440()
{
  result = qword_1ECEB9CF0;
  if (!qword_1ECEB9CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9CF0);
  }

  return result;
}

uint64_t sub_1E18174B8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E18174E8()
{
  v1 = *(v0 + 8);

  return v1;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E18175B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
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

uint64_t sub_1E181760C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E1817680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_1E18176C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartOrCategoryBrickSafeArea.Location.Distance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ChartOrCategoryBrickSafeArea.Location.Distance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1E18177E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1817828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UpdateAllAction.__allocating_init(ordering:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering) = a1;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v9 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v10 = sub_1E1AF3E1C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8 + v9, a2, v10);
  v12 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v8 + v12, 1, 1, v13);
  v14 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v25, &v22);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *v15 = v22;
    *(v15 + 16) = v16;
    *(v15 + 32) = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v21[1] = v17;
    v21[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  (*(v11 + 8))(a2, v10);
  sub_1E1308058(v25, &unk_1ECEB5670);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  return v8;
}

uint64_t UpdateAllAction.init(ordering:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering) = a1;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  (*(v14 + 16))(v16, a2, v13);
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = (v3 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  sub_1E138853C(v33, &v27);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v20 = v7;
    v22 = v21;
    (*(v20 + 8))(v9, v6);
    v26[1] = v19;
    v26[2] = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v27, &unk_1ECEB5670);
  }

  (*(v14 + 8))(a2, v13);
  sub_1E1308058(v33, &unk_1ECEB5670);
  v23 = v3 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v23 + 32) = v32;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

char *UpdateAllAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering) = MEMORY[0x1E69E7CC0];
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *UpdateAllAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering) = MEMORY[0x1E69E7CC0];
  v14 = *(v10 + 16);
  v18 = a1;
  v14(v13, a1, v9, v11);
  (*(v6 + 16))(v8, a2, v5);
  v15 = Action.init(deserializing:using:)(v13, v8);
  (*(v6 + 8))(a2, v5);
  (*(v10 + 8))(v18, v9);
  return v15;
}

uint64_t UpdateAllAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t UpdateAllAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdateAllAction()
{
  result = qword_1EE1DF490;
  if (!qword_1EE1DF490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1818598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v163 = a3;
  v5 = sub_1E1AF3E1C();
  v166 = *(v5 - 8);
  v167 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v165 = v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v7 = sub_1E1AF588C();
  v8 = MEMORY[0x1E69E7CC0];
  v174 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  v9 = sub_1E13017E4(v8);
  v171 = sub_1E1584724(v8);
  v170 = sub_1E13017E4(v8);
  sub_1E13017E4(v8);
  sub_1E13017E4(v8);
  sub_1E1303A74(v8);
  sub_1E13017E4(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF421C();
  v164 = a2;
  sub_1E1AF55EC();
  v10 = v189;
  ObjectType = swift_getObjectType();
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10RateAction_adamId + 8);
  *&v180 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10RateAction_adamId);
  *(&v180 + 1) = v12;
  v13 = v10[7];

  v14 = v13(&v180, ObjectType, v10);
  v16 = v15;
  swift_unknownObjectRelease();

  v17 = swift_getObjectType();
  v18 = *(v16 + 16);
  v168 = v14;
  v18(&v188, v17, v16);
  v19 = *(a1 + OBJC_IVAR____TtC11AppStoreKit18HttpTemplateAction_parameters);
  v20 = v19[2];
  if (!v20)
  {
LABEL_109:
    *&v180 = v174;
    *(&v180 + 1) = v9;
    v181 = v171;
    v182 = v170;
    v152 = v165;
    sub_1E1AF3DFC();
    v157 = sub_1E19A2718(&v180, 0, 0, v152);
    (*(v166 + 8))(v152, v167);

    v182 = type metadata accessor for HttpAction();
    v183 = sub_1E18197E4(qword_1ECEB3A10, type metadata accessor for HttpAction);
    *&v180 = v157;
    type metadata accessor for RateActionImplementation();

    swift_getWitnessTable();
    sub_1E1834054(&v180);
    __swift_destroy_boxed_opaque_existential_1(&v180);
    v158 = sub_1E1361A80();
    swift_retain_n();
    v159 = sub_1E1AF68EC();
    v182 = v158;
    v183 = MEMORY[0x1E69AB720];
    *&v180 = v159;
    sub_1E1AF57FC();
    swift_unknownObjectRelease();

    sub_1E139CEA8(&v188);

    __swift_destroy_boxed_opaque_existential_1(&v180);
    return v7;
  }

  v162 = v7;
  v161[1] = a1;
  v21 = (a1 + OBJC_IVAR____TtC11AppStoreKit10RateAction_rating);
  swift_beginAccess();
  if (!v19[2])
  {
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
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    swift_once();
    v153 = sub_1E1AF591C();
    __swift_project_value_buffer(v153, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v154 = v184;
    v155 = v185;
    v182 = v185;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v180);
    (*(*(v155 - 8) + 16))(boxed_opaque_existential_0, v154, v155);
    sub_1E1AF38DC();
    sub_1E13E44F8(&v180);
    sub_1E1AF54AC();

    sub_1E1AF584C();
    sub_1E139CEA8(&v188);
    swift_unknownObjectRelease();

    return v7;
  }

  v22 = 0;
  v7 = v19 + 4;
  v172 = 0x80000001E1B561A0;
  v173 = v19;
  v177 = v20 - 1;
  v175 = v21;
  while (1)
  {
    v24 = v7[1];
    v23 = v7[2];
    v25 = *(v7 + 41);
    v186[0] = *v7;
    v186[1] = v24;
    *&v187[9] = v25;
    *v187 = v23;
    v26 = v24;
    v27 = v186[0];
    if (v21[1])
    {
      break;
    }

    v42 = *v21;
    if (v186[0] != __PAIR128__(0xE600000000000000, 0x676E69746172) && (sub_1E1AF74AC() & 1) == 0)
    {
      break;
    }

    *&v179[0] = v42;
    sub_1E1819838(v186, &v180);
    v43 = sub_1E1AF742C();
    if (v26 <= 1)
    {
      v176 = v43;
      if (!v26)
      {
        v19 = v9;
        v169 = v44;

        v45 = v174;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v180 = v45;
        v48 = sub_1E13018F8(v27, *(&v27 + 1));
        v49 = *(v45 + 16);
        v50 = (v47 & 1) == 0;
        v51 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_115;
        }

        v52 = v47;
        if (*(v45 + 24) >= v51)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E1415E90();
          }
        }

        else
        {
          sub_1E1688F9C(v51, isUniquelyReferenced_nonNull_native);
          v53 = sub_1E13018F8(v27, *(&v27 + 1));
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_128;
          }

          v48 = v53;
        }

        v9 = v19;
        v110 = v180;
        v19 = v173;
        v174 = v180;
        if (v52)
        {
          v111 = (*(v180 + 56) + 16 * v48);
          v112 = v169;
          *v111 = v176;
          v111[1] = v112;
        }

        else
        {
          *(v180 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          *(*(v110 + 48) + 16 * v48) = v27;
          v119 = (*(v110 + 56) + 16 * v48);
          v120 = v169;
          *v119 = v176;
          v119[1] = v120;

          v121 = *(v174 + 16);
          v38 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v38)
          {
            goto LABEL_120;
          }

          *(v174 + 16) = v122;
        }

        goto LABEL_97;
      }

      v73 = v9;
      v74 = v44;

      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v180 = v73;
      v76 = sub_1E13018F8(v27, *(&v27 + 1));
      v78 = *(v73 + 16);
      v79 = (v77 & 1) == 0;
      v38 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      if (v38)
      {
        goto LABEL_112;
      }

      v81 = v77;
      if (*(v73 + 24) >= v80)
      {
        if ((v75 & 1) == 0)
        {
          v141 = v76;
          sub_1E1415E90();
          v76 = v141;
          v115 = v180;
          if (v81)
          {
            goto LABEL_58;
          }

          goto LABEL_95;
        }
      }

      else
      {
        sub_1E1688F9C(v80, v75);
        v76 = sub_1E13018F8(v27, *(&v27 + 1));
        if ((v81 & 1) != (v82 & 1))
        {
          goto LABEL_128;
        }
      }

      v115 = v180;
      if (v81)
      {
LABEL_58:
        v116 = (v115[7] + 16 * v76);
        *v116 = v176;
        v116[1] = v74;

        v9 = v115;
LABEL_97:
        sub_1E1819894(v186);
        goto LABEL_104;
      }

LABEL_95:
      v115[(v76 >> 6) + 8] |= 1 << v76;
      *(v115[6] + 16 * v76) = v27;
      v142 = (v115[7] + 16 * v76);
      *v142 = v176;
      v142[1] = v74;

      v143 = v115[2];
      v38 = __OFADD__(v143, 1);
      v144 = v143 + 1;
      if (v38)
      {
        goto LABEL_121;
      }

      v9 = v115;
      v115[2] = v144;
      goto LABEL_97;
    }

    v176 = v9;
    if (v26 == 2)
    {
      v182 = MEMORY[0x1E69E6158];
      *&v180 = v43;
      *(&v180 + 1) = v44;
      sub_1E1301CF0(&v180, v179);

      v55 = v171;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v178 = v55;
      v57 = sub_1E13018F8(v27, *(&v27 + 1));
      v59 = *(v55 + 16);
      v60 = (v58 & 1) == 0;
      v38 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v38)
      {
        goto LABEL_113;
      }

      v62 = v58;
      if (*(v55 + 24) >= v61)
      {
        if ((v56 & 1) == 0)
        {
          v140 = v57;
          sub_1E14154D8();
          v57 = v140;
        }
      }

      else
      {
        sub_1E168807C(v61, v56);
        v57 = sub_1E13018F8(v27, *(&v27 + 1));
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_128;
        }
      }

      v113 = v178;
      v171 = v178;
      if (v62)
      {
        v114 = (v178[7] + 32 * v57);
        __swift_destroy_boxed_opaque_existential_1(v114);
        sub_1E1301CF0(v179, v114);
      }

      else
      {
        v178[(v57 >> 6) + 8] |= 1 << v57;
        *(v113[6] + 16 * v57) = v27;
        sub_1E1301CF0(v179, (v113[7] + 32 * v57));

        v123 = v113[2];
        v38 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v38)
        {
          goto LABEL_122;
        }

        v113[2] = v124;
      }

      sub_1E1819894(v186);
      v21 = v175;
      v9 = v176;
    }

    else
    {
      v19 = v43;
      v83 = v44;

      v84 = v170;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *&v180 = v84;
      v86 = sub_1E13018F8(v27, *(&v27 + 1));
      v88 = *(v84 + 16);
      v89 = (v87 & 1) == 0;
      v38 = __OFADD__(v88, v89);
      v90 = v88 + v89;
      if (v38)
      {
        goto LABEL_114;
      }

      v91 = v87;
      if (*(v84 + 24) >= v90)
      {
        if ((v85 & 1) == 0)
        {
          v145 = v86;
          sub_1E1415E90();
          v86 = v145;
        }
      }

      else
      {
        sub_1E1688F9C(v90, v85);
        v86 = sub_1E13018F8(v27, *(&v27 + 1));
        if ((v91 & 1) != (v92 & 1))
        {
          goto LABEL_128;
        }
      }

      v117 = v180;
      v170 = v180;
      if (v91)
      {
        v118 = (*(v180 + 56) + 16 * v86);
        *v118 = v19;
        v118[1] = v83;
      }

      else
      {
        *(v180 + 8 * (v86 >> 6) + 64) |= 1 << v86;
        *(v117[6] + 16 * v86) = v27;
        v125 = (v117[7] + 16 * v86);
        *v125 = v19;
        v125[1] = v83;

        v126 = v117[2];
        v38 = __OFADD__(v126, 1);
        v127 = v126 + 1;
        if (v38)
        {
          goto LABEL_123;
        }

        v117[2] = v127;
      }

      sub_1E1819894(v186);
      v21 = v175;
      v9 = v176;
      v19 = v173;
    }

LABEL_105:
    if (v177 == v22)
    {
      v7 = v162;
      goto LABEL_109;
    }

    ++v22;
    v7 += 4;
    if (v22 >= v19[2])
    {
      goto LABEL_111;
    }
  }

  if (v190 >> 60 != 7)
  {
    goto LABEL_105;
  }

  v28 = v189;
  if (__PAIR128__(v172, 0xD000000000000011) != v27 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_105;
  }

  v176 = v9;
  sub_1E1819838(v186, &v180);
  sub_1E141CF5C(&v188, &v180);
  v29 = [v28 stringValue];
  v30 = sub_1E1AF5DFC();
  v19 = v31;

  if (v26 <= 1)
  {
    if (!v26)
    {

      v32 = v174;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v180 = v32;
      v34 = sub_1E13018F8(v27, *(&v27 + 1));
      v36 = *(v32 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_118;
      }

      v40 = v35;
      if (*(v32 + 24) >= v39)
      {
        if ((v33 & 1) == 0)
        {
          v146 = v34;
          sub_1E1415E90();
          v34 = v146;
        }
      }

      else
      {
        sub_1E1688F9C(v39, v33);
        v34 = sub_1E13018F8(v27, *(&v27 + 1));
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_128;
        }
      }

      v128 = v180;
      v174 = v180;
      if ((v40 & 1) == 0)
      {
        *(v180 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        *(v128[6] + 16 * v34) = v27;
        v129 = (v128[7] + 16 * v34);
        *v129 = v30;
        v129[1] = v19;

        sub_1E139CEA8(&v188);

        v130 = v128[2];
        v38 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v38)
        {
          goto LABEL_126;
        }

LABEL_92:
        v128[2] = v131;
LABEL_93:
        sub_1E1819894(v186);
        v9 = v176;
LABEL_103:
        v19 = v173;
LABEL_104:
        v21 = v175;
        goto LABEL_105;
      }

LABEL_87:
      v135 = (v128[7] + 16 * v34);
      *v135 = v30;
      v135[1] = v19;

      sub_1E139CEA8(&v188);

      goto LABEL_93;
    }

    v93 = v176;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = v93;
    v95 = sub_1E13018F8(v27, *(&v27 + 1));
    v97 = *(v93 + 16);
    v98 = (v96 & 1) == 0;
    v38 = __OFADD__(v97, v98);
    v99 = v97 + v98;
    if (v38)
    {
      goto LABEL_116;
    }

    v100 = v96;
    if (*(v93 + 24) >= v99)
    {
      if (v94)
      {
        goto LABEL_82;
      }

      v148 = v95;
      sub_1E1415E90();
      v95 = v148;
      v132 = v180;
      if ((v100 & 1) == 0)
      {
        goto LABEL_99;
      }

LABEL_83:
      v134 = (v132[7] + 16 * v95);
      *v134 = v30;
      v134[1] = v19;

      sub_1E139CEA8(&v188);

      v9 = v132;
    }

    else
    {
      sub_1E1688F9C(v99, v94);
      v95 = sub_1E13018F8(v27, *(&v27 + 1));
      if ((v100 & 1) != (v101 & 1))
      {
        goto LABEL_128;
      }

LABEL_82:
      v132 = v180;
      if (v100)
      {
        goto LABEL_83;
      }

LABEL_99:
      v132[(v95 >> 6) + 8] |= 1 << v95;
      *(v132[6] + 16 * v95) = v27;
      v149 = (v132[7] + 16 * v95);
      *v149 = v30;
      v149[1] = v19;

      sub_1E139CEA8(&v188);

      v150 = v132[2];
      v38 = __OFADD__(v150, 1);
      v137 = v150 + 1;
      if (v38)
      {
        goto LABEL_125;
      }

      v9 = v132;
LABEL_101:
      v132[2] = v137;
    }

    goto LABEL_102;
  }

  if (v26 == 2)
  {
    v182 = MEMORY[0x1E69E6158];
    *&v180 = v30;
    *(&v180 + 1) = v19;
    sub_1E1301CF0(&v180, v179);

    v64 = v171;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v178 = v64;
    v66 = sub_1E13018F8(v27, *(&v27 + 1));
    v68 = *(v64 + 16);
    v69 = (v67 & 1) == 0;
    v38 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v38)
    {
      goto LABEL_117;
    }

    v71 = v67;
    if (*(v64 + 24) >= v70)
    {
      v9 = v176;
      if ((v65 & 1) == 0)
      {
        v147 = v66;
        sub_1E14154D8();
        v66 = v147;
      }
    }

    else
    {
      sub_1E168807C(v70, v65);
      v66 = sub_1E13018F8(v27, *(&v27 + 1));
      v9 = v176;
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_128;
      }
    }

    v132 = v178;
    v171 = v178;
    if ((v71 & 1) == 0)
    {
      v178[(v66 >> 6) + 8] |= 1 << v66;
      *(v132[6] + 16 * v66) = v27;
      sub_1E1301CF0(v179, (v132[7] + 32 * v66));

      sub_1E139CEA8(&v188);

      v136 = v132[2];
      v38 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v38)
      {
        goto LABEL_127;
      }

      goto LABEL_101;
    }

    v133 = (v178[7] + 32 * v66);
    __swift_destroy_boxed_opaque_existential_1(v133);
    sub_1E1301CF0(v179, v133);
    sub_1E139CEA8(&v188);

LABEL_102:
    sub_1E1819894(v186);
    goto LABEL_103;
  }

  v102 = v170;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *&v180 = v102;
  v34 = sub_1E13018F8(v27, *(&v27 + 1));
  v105 = *(v102 + 16);
  v106 = (v104 & 1) == 0;
  v38 = __OFADD__(v105, v106);
  v107 = v105 + v106;
  if (v38)
  {
    goto LABEL_119;
  }

  v108 = v104;
  if (*(v102 + 24) >= v107)
  {
    if ((v103 & 1) == 0)
    {
      v151 = v34;
      sub_1E1415E90();
      v34 = v151;
    }
  }

  else
  {
    sub_1E1688F9C(v107, v103);
    v34 = sub_1E13018F8(v27, *(&v27 + 1));
    if ((v108 & 1) != (v109 & 1))
    {
      goto LABEL_128;
    }
  }

  v128 = v180;
  v170 = v180;
  if (v108)
  {
    goto LABEL_87;
  }

  *(v180 + 8 * (v34 >> 6) + 64) |= 1 << v34;
  *(v128[6] + 16 * v34) = v27;
  v138 = (v128[7] + 16 * v34);
  *v138 = v30;
  v138[1] = v19;

  sub_1E139CEA8(&v188);

  v139 = v128[2];
  v38 = __OFADD__(v139, 1);
  v131 = v139 + 1;
  if (!v38)
  {
    goto LABEL_92;
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E18197E4(unint64_t *a1, void (*a2)(uint64_t))
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

id _sSo25NSCollectionLayoutSectionC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  sub_1E1819E40(a1, &v28 - v3);
  v5 = type metadata accessor for ShelfLayoutContext();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1E13F85BC(v4);
    v6 = 1.0;
    v7 = &selRef_fractionalWidthDimension_;
  }

  else
  {
    v8 = &v4[*(v5 + 28)];
    v9 = v8[3];
    v10 = v8[42];
    v11 = v8[44];
    sub_1E14C5D1C(v4);
    v6 = v9 - (v10 + v11);
    v7 = &selRef_absoluteDimension_;
  }

  v12 = [objc_opt_self() *v7];
  v13 = objc_opt_self();
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 absoluteDimension_];
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 sizeWithWidthDimension:v18 heightDimension:v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E1B06D70;
  v21 = [v14 absoluteDimension_];
  v22 = [v17 sizeWithWidthDimension:v18 heightDimension:v21];

  v23 = [objc_opt_self() itemWithLayoutSize_];
  *(v20 + 32) = v23;
  sub_1E1819DF4();
  v24 = sub_1E1AF620C();

  v25 = [v13 verticalGroupWithLayoutSize:v19 subitems:v24];

  v26 = [objc_opt_self() sectionWithGroup_];
  return v26;
}

id _sSo23NSCollectionLayoutGroupC11AppStoreKitE05emptybC03forAbC05ShelfB7ContextV_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for ShelfLayoutContext();
  v3 = *(a1 + *(v2 + 28) + 24) - (*(a1 + *(v2 + 28) + 336) + *(a1 + *(v2 + 28) + 352));
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = [v5 absoluteDimension_];
  v7 = [v5 absoluteDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E1B06D70;
  v11 = [v5 absoluteDimension_];
  v12 = [v5 absoluteDimension_];
  v13 = [v8 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = [objc_opt_self() itemWithLayoutSize_];
  *(v10 + 32) = v14;
  sub_1E1819DF4();
  v15 = sub_1E1AF620C();

  v16 = [v4 verticalGroupWithLayoutSize:v9 subitems:v15];

  return v16;
}

unint64_t sub_1E1819DF4()
{
  result = qword_1EE1E3398;
  if (!qword_1EE1E3398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3398);
  }

  return result;
}

uint64_t sub_1E1819E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InstallPagePreInstallFreeLayout.init(metrics:iconView:titleText:parentTitleText:subtitleText:descriptionText:ageRatingView:offerButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x170uLL);
  sub_1E1308EC0(a2, a9);
  sub_1E1308EC0(a3, a9 + 40);
  sub_1E1308EC0(a4, a9 + 80);
  sub_1E1308EC0(a5, a9 + 120);
  sub_1E1308EC0(a6, a9 + 160);
  sub_1E1308EC0(a7, a9 + 200);

  return sub_1E1308EC0(a8, a9 + 240);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:parentTitleSpace:parentTitleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 *a12, uint64_t *a13, __int128 *a14, __int128 *a15)
{
  v20 = *a4;
  v21 = *a6;
  v22 = *a8;
  v23 = *a13;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_1E1308EC0(a1, a9 + 16);
  sub_1E1308EC0(a2, a9 + 56);
  sub_1E1308EC0(a3, a9 + 96);
  *(a9 + 136) = v20;
  sub_1E1308EC0(a5, a9 + 144);
  *(a9 + 184) = v21;
  sub_1E1308EC0(a7, a9 + 192);
  *(a9 + 232) = v22;
  sub_1E1308EC0(a12, a9 + 240);
  *(a9 + 280) = v23;
  sub_1E1308EC0(a14, a9 + 288);

  return sub_1E1308EC0(a15, a9 + 328);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.ageRatingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.ageRatingBaselineOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 56);

  return sub_1E1308EC0(a1, v1 + 56);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return sub_1E1308EC0(a1, v1 + 96);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.titleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.parentTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 144);

  return sub_1E1308EC0(a1, v1 + 144);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.parentTitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 184) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_1E1308EC0(a1, v1 + 192);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.subtitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 232) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_1E1308EC0(a1, v1 + 240);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.descriptionHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 280) = v2;
  return result;
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 288);

  return sub_1E1308EC0(a1, v1 + 288);
}

uint64_t InstallPagePreInstallFreeLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 328);

  return sub_1E1308EC0(a1, v1 + 328);
}

double InstallPagePreInstallFreeLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 25, v2[28]);
  sub_1E1AF11DC();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 37, v3[40]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v10 = *(v7 + 8);
  v10(v9, v6);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 25, v3[28]);
  sub_1E1AF117C();
  v20 = v2[52];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v20 = v2[58];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v20 = v2[64];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v10(v9, v6);

  v20 = v2[70];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v9);
  v12 = v11;
  v10(v9, v6);

  v19[2] = a2 - (v12 + v12);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 5, v2[8]);
  sub_1E1AF11CC();
  v14 = v13;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1Tm(v2 + 47, v2[50]);
  sub_1E1AF12FC();
  v19[1] = v14 - v16 + v17;
  __swift_project_boxed_opaque_existential_1Tm(v2 + 10, v2[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 53, v2[56]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 15, v2[18]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 59, v2[62]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 20, v2[23]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 65, v2[68]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 71, v2[74]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v10(v9, v6);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 30, v2[33]);
  sub_1E1AF11DC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 76, v2[79]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v10(v9, v6);
  return a2;
}

uint64_t InstallPagePreInstallFreeLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v103 = a2;
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 296), *(v6 + 320));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v18 = v17;
  v19 = *(v14 + 8);
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  sub_1E1AF11DC();
  v21 = v20;
  v94[2] = v22;
  __swift_project_boxed_opaque_existential_1Tm((v7 + 200), *(v7 + 224));
  v23 = sub_1E1AF117C();
  *&v94[3] = v21;
  if (v23)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v18 + v21;
  }

  v104 = v24;
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  Width = CGRectGetWidth(v110);
  v109[0] = *(v6 + 416);

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v16);
  v27 = v26;
  v19(v16, v13);

  v96 = Width - (v27 + v27) - v24;
  v111.origin.x = a3;
  v111.origin.y = a4;
  v111.size.width = a5;
  v111.size.height = a6;
  MinX = CGRectGetWidth(v111);
  v109[0] = *(v6 + 464);
  v28 = *MEMORY[0x1E69E7048];
  v29 = *(v14 + 104);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v101 = v30;
  v19(v16, v13);

  v112.origin.x = a3;
  v112.origin.y = a4;
  v112.size.width = a5;
  v112.size.height = a6;
  v100 = CGRectGetWidth(v112);
  v109[0] = *(v6 + 512);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v99 = v31;
  v19(v16, v13);

  v32 = a3;
  v113.origin.x = a3;
  v113.origin.y = a4;
  v113.size.width = a5;
  v113.size.height = a6;
  v98 = CGRectGetWidth(v113);
  v109[0] = *(v6 + 560);
  v29(v16, v28, v13);

  Conditional<>.value(in:rounded:)(a1, v16);
  v97 = v33;
  v19(v16, v13);

  v114.origin.x = a3;
  v114.origin.y = a4;
  v114.size.width = a5;
  v114.size.height = a6;
  MinY = CGRectGetMinY(v114);
  v35 = *(v6 + 280);
  v36 = *(v6 + 288);
  __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 24));
  sub_1E1AF11AC();
  v115.origin.x = a3;
  v115.origin.y = a4;
  v115.size.width = a5;
  v115.size.height = a6;
  v37 = floor(CGRectGetMidX(v115) - v35 * 0.5);
  __swift_project_boxed_opaque_existential_1Tm(v109, v109[3]);
  sub_1E1AF116C();
  v116.origin.x = v37;
  v116.origin.y = MinY;
  v116.size.width = v35;
  v116.size.height = v36;
  v95 = MinY + CGRectGetMaxY(v116);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 376), *(v6 + 400));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v39 = v38;
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 40), *(v6 + 64));
  v117.origin.x = v32;
  v117.origin.y = a4;
  v117.size.width = a5;
  v117.size.height = a6;
  CGRectGetHeight(v117);
  sub_1E1AF11CC();
  v41 = v40;
  v94[1] = v39;
  v108 = v39;
  v96 = v42;
  sub_1E1AF12FC();
  v44 = v43;
  v105 = v32;
  v118.origin.x = v32;
  v118.origin.y = a4;
  v45 = v95;
  y = v118.origin.y;
  v107 = a5;
  v118.size.width = a5;
  v104 = a6;
  v118.size.height = a6;
  CGRectGetMidX(v118);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 40), *(v6 + 64));
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v6 + 200), *(v6 + 224));
  if ((sub_1E1AF117C() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v6 + 336), *(v6 + 360));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v19(v16, v13);
    v119.origin.x = v105;
    v119.origin.y = y;
    v119.size.width = v107;
    v119.size.height = v104;
    CGRectGetMidX(v119);
  }

  v98 = v98 - (v97 + v97);
  v100 = v100 - (v99 + v99);
  v101 = MinX - (v101 + v101);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 200), *(v6 + 224));
  sub_1E1AF116C();
  MinX = v45 + v41 - v96 + v44;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 424), *(v6 + 448));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v47 = v46;
  v19(v16, v13);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 80), *(v6 + 104));
  v48 = v105;
  v49 = y;
  v120.origin.x = v105;
  v120.origin.y = y;
  v50 = v107;
  v120.size.width = v107;
  v51 = v104;
  v120.size.height = v104;
  CGRectGetHeight(v120);
  sub_1E1AF11CC();
  v53 = v52;
  v55 = v54;
  v108 = v47;
  sub_1E1AF12FC();
  v57 = v56;
  v121.origin.x = v48;
  v121.origin.y = v49;
  v121.size.width = v50;
  v58 = v51;
  v121.size.height = v51;
  CGRectGetMidX(v121);
  v59 = MinX;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 80), *(v6 + 104));
  sub_1E1AF116C();
  MinX = v59 + v53 - v55 + v57;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 120), *(v6 + 144));
  v61 = v105;
  v60 = y;
  v122.origin.x = v105;
  v122.origin.y = y;
  v62 = v107;
  v122.size.width = v107;
  v122.size.height = v58;
  CGRectGetHeight(v122);
  sub_1E1AF11CC();
  v64 = v63;
  v66 = v65;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 472), *(v6 + 496));
  sub_1E1AF12FC();
  v68 = v67;
  v123.origin.x = v61;
  v123.origin.y = v60;
  v123.size.width = v62;
  v123.size.height = v58;
  CGRectGetMidX(v123);
  v69 = MinX;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 120), *(v6 + 144));
  sub_1E1AF116C();
  MinX = v69 + v64 - v66 + v68;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 160), *(v6 + 184));
  v71 = v105;
  v70 = y;
  v124.origin.x = v105;
  v124.origin.y = y;
  v72 = v107;
  v124.size.width = v107;
  v124.size.height = v58;
  CGRectGetHeight(v124);
  sub_1E1AF11CC();
  v74 = v73;
  v76 = v75;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 520), *(v6 + 544));
  sub_1E1AF12FC();
  v78 = v77;
  v125.origin.x = v71;
  v125.origin.y = v70;
  v125.size.width = v72;
  v125.size.height = v58;
  v79 = v58;
  CGRectGetMidX(v125);
  v80 = MinX;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 160), *(v6 + 184));
  sub_1E1AF116C();
  MinX = v80 + v74 - v76 + v78;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 240), *(v6 + 264));
  v81 = v107;
  v82 = v79;
  sub_1E1AF11DC();
  v84 = v83;
  v86 = v85;
  v87 = v105;
  v88 = y;
  v126.origin.x = v105;
  v126.origin.y = y;
  v126.size.width = v81;
  v89 = v81;
  v126.size.height = v82;
  v101 = floor(CGRectGetMidX(v126) - v84 * 0.5);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 568), *(v6 + 592));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v91 = v90;
  v19(v16, v13);
  v92 = MinX + v91;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 240), *(v6 + 264));
  sub_1E1AF116C();
  v127.origin.x = v87;
  v127.origin.y = v88;
  v127.size.width = v89;
  v127.size.height = v82;
  MinX = CGRectGetMinX(v127);
  v128.origin.x = v87;
  v128.origin.y = v88;
  v128.size.width = v89;
  v128.size.height = v82;
  CGRectGetMinY(v128);
  v129.origin.x = v87;
  v129.origin.y = v88;
  v129.size.width = v89;
  v129.size.height = v82;
  CGRectGetWidth(v129);
  v130.origin.x = v101;
  v130.origin.y = v92;
  v130.size.width = v84;
  v130.size.height = v86;
  CGRectGetMaxY(v130);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 608), *(v6 + 632));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v19(v16, v13);
  sub_1E1AF106C();
  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t sub_1E181B9A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 648))
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

uint64_t sub_1E181B9E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 648) = 1;
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

    *(result + 648) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E181BAE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E181BB30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E181BC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v44 = sub_1E1AEFEAC();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_1E1AEFCCC();
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v57[3] = type metadata accessor for ShareSheetAction();
  v57[0] = a1;

  sub_1E1AF3DFC();
  v19 = sub_1E1AF4CEC();
  v21 = v20;
  v22 = type metadata accessor for FlowAction();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 40;
  sub_1E134FD1C(v17, v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
  v26 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  *v27 = xmmword_1E1B04490;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  *v28 = v19;
  v28[1] = v21;
  sub_1E134FD1C(&v58, v56, &unk_1ECEB5670);
  v29 = *(v9 + 16);
  v45 = v11;
  v29(v11, v14, v8);
  v30 = sub_1E1AF46DC();
  v31 = v7;
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v32 = (v23 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_1E134FD1C(v56, &v50, &unk_1ECEB5670);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    v33 = v42;
    sub_1E1AEFE9C();
    v34 = sub_1E1AEFE7C();
    v36 = v35;
    (*(v43 + 8))(v33, v44);
    v48 = v34;
    v49 = v36;
    sub_1E1AF6F6C();
    sub_1E1308058(&v50, &unk_1ECEB5670);
  }

  sub_1E1308058(v56, &unk_1ECEB5670);
  v37 = v23 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v38 = v54;
  *v37 = v53;
  *(v37 + 16) = v38;
  *(v37 + 32) = v55;
  sub_1E134B7C8(v31, v23 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  (*(v9 + 32))(v23 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v45, v8);

  FlowAction.setPageData(_:)(v57);

  (*(v9 + 8))(v14, v8);
  sub_1E1308058(v17, &unk_1ECEB4B60);
  sub_1E1308058(&v58, &unk_1ECEB5670);
  sub_1E1308058(v57, &qword_1ECEB2DF0);
  *(&v59 + 1) = v22;
  v60 = sub_1E181C2E4(&qword_1ECEB3EB0, type metadata accessor for FlowAction);
  *&v58 = v23;
  type metadata accessor for ShareSheetActionImplementation();

  swift_getWitnessTable();
  v39 = sub_1E1834054(&v58);

  __swift_destroy_boxed_opaque_existential_1(&v58);
  return v39;
}

uint64_t sub_1E181C2E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E181C338(double a1, double a2)
{
  v5 = sub_1E1AEFEAC();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_1E1AEF4AC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v17 = [v2 identifier];
  v18 = sub_1E1AF5DFC();
  v20 = v19;

  v37 = v18;
  v38 = v20;
  sub_1E1AEF43C();
  sub_1E13B8AA4();
  v21 = sub_1E1AF6E3C();
  v23 = v22;
  (*(v12 + 8))(v15, v11);

  if (!v23)
  {
    v24 = [v16 identifier];
    v21 = sub_1E1AF5DFC();
    v23 = v25;
  }

  v37 = 0x69746361746E6F63;
  v38 = 0xEF2F2F3A6567616DLL;
  MEMORY[0x1E68FECA0](v21, v23);

  v26 = v37;
  v27 = v38;
  v28 = sub_1E1AF46DC();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  type metadata accessor for Artwork();
  v29 = swift_allocObject();
  *(v29 + 152) = 0u;
  *(v29 + 168) = 0u;
  *(v29 + 184) = 0;
  sub_1E1AEFE9C();
  v30 = sub_1E1AEFE7C();
  v32 = v31;
  (*(v35 + 8))(v7, v36);
  v37 = v30;
  v38 = v32;
  sub_1E1AF6F6C();
  sub_1E13815A4(v10, v29 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics);
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 72) = 29555;
  *(v29 + 80) = 0xE200000000000000;
  *(v29 + 64) = 0;
  *(v29 + 104) = MEMORY[0x1E69E7CC0];
  v37 = 29555;
  v38 = 0xE200000000000000;
  v33 = Artwork.Crop.preferredContentMode.getter();
  sub_1E13814C0(v10);
  *(v29 + 88) = v33;
  *(v29 + 96) = 3;
  return v29;
}

uint64_t sub_1E181C6D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E181C754()
{
  sub_1E1AEF53C();
  if (v6[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        sub_1E1308EC0(&v7, v10);
        __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
        v2 = v0[7];
        v1 = v0[8];
        sub_1E1300B24(v10, &v7);
        v3 = swift_allocObject();
        *(v3 + 16) = v2;
        *(v3 + 24) = v1;
        sub_1E1308EC0(&v7, v3 + 32);

        sub_1E1AF3FAC();

        return __swift_destroy_boxed_opaque_existential_1(v10);
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_1E1308058(v6, &qword_1ECEB2DF0);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1E1308058(&v7, &qword_1ECEB85D8);
  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF591C();
  __swift_project_value_buffer(v5, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  sub_1E1AF54AC();
}

void sub_1E181CAFC()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

uint64_t MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.init(borderTextToLabelPadding:maximumNumberofLinesForDescriptionLabel:maximumNumberOfLinesForBorderedLabel:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1E1308EC0(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

__n128 MetadataRibbonBorderedLabelWithDescriptionViewLayout.init(borderedTextView:descriptionLabelTextView:metrics:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, a4 + 40);
  v7 = *(a3 + 16);
  *(a4 + 80) = *a3;
  *(a4 + 96) = v7;
  result = *(a3 + 32);
  *(a4 + 112) = result;
  *(a4 + 128) = *(a3 + 48);
  return result;
}

double MetadataRibbonBorderedLabelWithDescriptionViewLayout.measurements(fitting:in:)()
{
  v17 = sub_1E1AF1D6C();
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v3 = &v18[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF745C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF11CC();
  v9 = v8;
  sub_1E181CF28((v0 + 10), v18);
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_project_boxed_opaque_existential_1Tm(v0 + 5, v0[8]);
  sub_1E1AF11CC();
  v13 = v12;
  sub_1E1AF1D4C();
  sub_1E1AF1D2C();
  v14 = *(v1 + 8);
  v15 = v17;
  v14(v3, v17);
  sub_1E1AF1D4C();
  sub_1E1AF1CFC();
  v14(v3, v15);
  return v9 + v11 + v13;
}

uint64_t MetadataRibbonBorderedLabelWithDescriptionViewLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v23 = a2;
  v9 = sub_1E1AF745C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF11CC();
  v14 = v13;
  *&v22[3] = v13;
  v22[4] = v15;
  sub_1E181CF28((v4 + 10), v25);
  __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  sub_1E1AF11CC();
  v24 = v18;
  v19 = a1;
  v26.origin.x = a1;
  v20 = v23;
  v26.origin.y = v23;
  v26.size.width = a3;
  v26.size.height = a4;
  v22[1] = CGRectGetMinX(v26);
  v27.origin.x = v19;
  v27.origin.y = v20;
  v27.size.width = a3;
  v27.size.height = a4;
  CGRectGetMidY(v27);
  v28.origin.x = v19;
  v28.origin.y = v20;
  v28.size.width = a3;
  v28.size.height = a4;
  *&v22[2] = v14 + v17 + CGRectGetMinX(v28);
  v29.origin.x = v19;
  v29.origin.y = v20;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetMidY(v29);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

uint64_t sub_1E181D274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1E181D2BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SegmentedSearchResults.__allocating_init(segments:segmentChangeActions:selectedSegment:facets:selectedFacetOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v12 = *a5;
  v13 = a5[1];
  v14 = a5[2];
  v15 = *(a5 + 24);
  *(v11 + 16) = a1;
  if (a2 >> 62)
  {
    type metadata accessor for Action();
    v16 = sub_1E1AF720C();
  }

  else
  {

    sub_1E1AF74DC();
    type metadata accessor for Action();
    v16 = a2;
  }

  *(v11 + 24) = v16;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = v12;
  *(v11 + 56) = v13;
  *(v11 + 64) = v14;
  *(v11 + 72) = v15;
  *(v11 + 80) = a6;
  return v11;
}

uint64_t SegmentedSearchResults.init(segments:segmentChangeActions:selectedSegment:facets:selectedFacetOptions:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a5;
  v13 = a5[1];
  v14 = a5[2];
  v15 = *(a5 + 24);
  *(v6 + 16) = a1;
  if (a2 >> 62)
  {
    type metadata accessor for Action();
    v16 = sub_1E1AF720C();
  }

  else
  {

    sub_1E1AF74DC();
    type metadata accessor for Action();
    v16 = a2;
  }

  *(v7 + 24) = v16;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  *(v7 + 64) = v14;
  *(v7 + 72) = v15;
  *(v7 + 80) = a6;
  return v7;
}

uint64_t SegmentedSearchResults.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SegmentedSearchResults.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SegmentedSearchResults.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v84 = v3;
  v83 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v68 - v6;
  v7 = sub_1E1AF39DC();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v68 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  v24 = sub_1E1AF5A6C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v28 = v24;
  v73 = v17;
  v31 = *(v17 + 8);
  v29 = v17 + 8;
  v30 = v31;
  v31(v23, v16);
  if ((*(v25 + 48))(v15, 1, v28) == 1)
  {
    sub_1E1308058(v15, &qword_1ECEB1F90);
    v32 = sub_1E1AF5A7C();
    sub_1E181DF04(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v33 = 0xD000000000000015;
    v33[1] = 0x80000001E1B785F0;
    v33[2] = v83;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x1E69AB690], v32);
    swift_willThrow();
    (*(v86 + 8))(v91, v87);
    v30(v85, v16);
    v34 = v84;
LABEL_8:
    swift_deallocPartialClassInstance();
    return v34;
  }

  v76 = v30;
  v77 = v29;
  v71 = v16;
  v69 = v25;
  v35 = *(v25 + 32);
  v75 = v27;
  v70 = v28;
  v35(v27, v15, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x1E69E7CC0];
  *&v88 = v36;
  if (qword_1EE1E3BC8 != -1)
  {
    swift_once();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
  __swift_project_value_buffer(v37, qword_1EE1E3BD0);
  v38 = v82;
  sub_1E1AF395C();

  v39 = v85;
  sub_1E1AF381C();
  v41 = v86;
  v40 = v87;
  v43 = (v86 + 16);
  v42 = *(v86 + 16);
  v42(v80, v38, v87);
  type metadata accessor for SearchResultsSegment();
  sub_1E181DF04(&unk_1ECEB9E10, type metadata accessor for SearchResultsSegment);
  v44 = v81;
  v45 = sub_1E1AF62EC();
  v34 = v84;
  if (v44)
  {
    v46 = *(v41 + 8);
    v46(v91, v40);
    v76(v39, v71);
    (*(v69 + 8))(v75, v70);
    v46(v38, v40);
    goto LABEL_8;
  }

  v80 = v43;
  v81 = v42;
  v84[2] = v45;
  v47 = type metadata accessor for Action();
  MEMORY[0x1EEE9AC00](v47);
  *(&v68 - 2) = v48;
  *(&v68 - 1) = v38;
  v34[3] = sub_1E1AF5A1C();
  v50 = v72;
  v51 = v85;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v54 = v53;
  v55 = v71;
  (v76)(v50);
  v34[4] = v52;
  v34[5] = v54;
  sub_1E1AF381C();
  v81(v74, v38, v87);
  sub_1E14E6264();
  sub_1E1AF464C();
  v56 = v89;
  v57 = v90;
  *(v34 + 3) = v88;
  v34[8] = v56;
  *(v34 + 72) = v57;
  v58 = v78;
  sub_1E1AF381C();
  v59 = v55;
  (*(v73 + 56))(v58, 0, 1, v55);
  v60 = v34[7];
  v61 = v34[8];
  v62 = *(v34 + 72);
  *&v88 = v34[6];
  *(&v88 + 1) = v60;
  v89 = v61;
  v90 = v62;
  sub_1E13C0418(v88);
  v63 = v91;
  v64 = _s11AppStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v58, &v88, v91);
  v65 = *(v86 + 8);
  v66 = v63;
  v67 = v87;
  v65(v66, v87);
  v76(v51, v59);
  sub_1E13C045C(v88);
  sub_1E1308058(v58, &qword_1ECEB4D20);
  (*(v69 + 8))(v75, v70);
  v65(v82, v67);
  v34[10] = v64;
  return v34;
}

uint64_t sub_1E181DF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SegmentedSearchResults.deinit()
{

  sub_1E13C045C(*(v0 + 48));

  return v0;
}

uint64_t SegmentedSearchResults.__deallocating_deinit()
{

  sub_1E13C045C(*(v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_1E181E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SegmentedSearchResults.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

id URLProtocolDelegate.__allocating_init(dialogStyle:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  *&v3[OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;
  sub_1E1547120(v6);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1E181E174()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB9E20);
  __swift_project_value_buffer(v4, qword_1ECEB9E20);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

id URLProtocolDelegate.init(dialogStyle:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  *&v1[OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v6 = *&v1[v5];
  *&v1[v5] = v4;
  sub_1E1547120(v6);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id URLProtocolDelegate.dialogStyle.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_1E15470AC(v4);
}

void URLProtocolDelegate.dialogStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_1E1547120(v4);
}

id URLProtocolDelegate.presentDialog(for:)(void *a1)
{
  v38 = a1;
  v2 = sub_1E1AF591C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF320C();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    if (v14 == 1)
    {
      if (qword_1ECEB1268 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v2, qword_1ECEB9E20);
      (*(v3 + 16))(v5, v15, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      v16 = [v38 logKey];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1E1AF5DFC();
        v20 = v19;

        v21 = MEMORY[0x1E69E6158];
      }

      else
      {
        v18 = 0;
        v20 = 0;
        v21 = 0;
        v41 = 0;
      }

      aBlock = v18;
      v40 = v20;
      v42 = v21;
      sub_1E1AF38BC();
      sub_1E13E44F8(&aBlock);
      sub_1E1AF54AC();

      (*(v3 + 8))(v5, v2);
      sub_1E181EA50();
      v33 = swift_allocError();
      v34 = sub_1E1AEFB1C();
      v24 = [objc_opt_self() promiseWithError_];
    }

    else
    {
      v25 = objc_allocWithZone(MEMORY[0x1E698CA58]);
      v26 = v14;
      v27 = [v25 init];
      sub_1E1361A80();
      v36 = sub_1E1AF68EC();
      v28 = swift_allocObject();
      v29 = v38;
      v28[2] = v26;
      v28[3] = v29;
      v28[4] = v27;
      v43 = sub_1E181EAA4;
      v44 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = sub_1E1302D64;
      v42 = &block_descriptor_77;
      v30 = _Block_copy(&aBlock);
      sub_1E15470AC(v14);
      v31 = v29;
      v24 = v27;

      sub_1E1AF322C();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1E139D5D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      sub_1E1AF6EEC();
      v32 = v36;
      MEMORY[0x1E68FF640](0, v12, v8, v30);
      _Block_release(v30);

      sub_1E1547120(v14);
      (*(v37 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_1E181EA50();
    v22 = swift_allocError();
    v23 = sub_1E1AEFB1C();
    v24 = [objc_opt_self() promiseWithError_];

    sub_1E1547120(0);
  }

  return v24;
}

unint64_t sub_1E181EA50()
{
  result = qword_1ECEB9E40;
  if (!qword_1ECEB9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9E40);
  }

  return result;
}

id URLProtocolDelegate.performAuthentication(for:)(void *a1)
{
  v39 = a1;
  v2 = sub_1E1AF591C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF320C();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    if (v14 != 1)
    {
      v26 = objc_allocWithZone(MEMORY[0x1E698CA58]);
      v27 = v14;
      v28 = [v26 init];
      sub_1E1361A80();
      v37 = sub_1E1AF68EC();
      v29 = swift_allocObject();
      v30 = v39;
      v29[2] = v27;
      v29[3] = v30;
      v29[4] = v28;
      v44 = sub_1E181F150;
      v45 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1E1302D64;
      v43 = &block_descriptor_6_4;
      v31 = _Block_copy(&aBlock);
      sub_1E15470AC(v14);
      v32 = v30;
      v33 = v28;

      sub_1E1AF322C();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1E139D5D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      sub_1E1AF6EEC();
      v34 = v37;
      MEMORY[0x1E68FF640](0, v12, v8, v31);
      _Block_release(v31);

      sub_1E1547120(v14);
      (*(v38 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
      return v33;
    }

    if (qword_1ECEB1268 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_1ECEB9E20);
    (*(v3 + 16))(v5, v15, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v16 = v39;
    v17 = [v39 logKey];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1E1AF5DFC();
      v21 = v20;

      v22 = MEMORY[0x1E69E6158];
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v22 = 0;
      v42 = 0;
    }

    aBlock = v19;
    v41 = v21;
    v43 = v22;
    sub_1E1AF38BC();
    sub_1E13E44F8(&aBlock);
    sub_1E1AF54AC();

    (*(v3 + 8))(v5, v2);
    v36 = [objc_allocWithZone(MEMORY[0x1E698C7C8]) initWithRequest_];
    v25 = [v36 performAuthentication];
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x1E698C7C8]);
    v24 = [v23 initWithRequest_];
    v25 = [v24 performAuthentication];

    sub_1E1547120(0);
  }

  return v25;
}

void sub_1E181F090(void *a1, uint64_t a2, void *a3, Class *a4, SEL *a5)
{
  v9 = [a1 frontmostViewController];
  v10 = [objc_allocWithZone(*a4) initWithRequest:a2 presentingViewController:v9];
  v11 = [v10 *a5];

  [a3 finishWithPromise_];
}

void URLProtocolDelegate.amsurlSession(_:task:handle:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = URLProtocolDelegate.presentDialog(for:)(a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = ObjectType;
  v13[4] = sub_1E181F77C;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E1619988;
  v13[3] = &block_descriptor_12_2;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v9 addFinishBlock_];
  _Block_release(v11);
}

{
  ObjectType = swift_getObjectType();
  v9 = URLProtocolDelegate.performAuthentication(for:)(a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = ObjectType;
  v13[4] = sub_1E181FEF0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E1619988;
  v13[3] = &block_descriptor_18_0;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v9 addFinishBlock_];
  _Block_release(v11);
}

uint64_t sub_1E181F290(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a1;
  v7 = sub_1E1AF591C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (a2)
  {
    v14 = a2;
    if (qword_1ECEB1268 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_1ECEB9E20);
    (*(v8 + 16))(v10, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    swift_getErrorValue();
    v16 = v37;
    v17 = v38;
    v42 = v38;
    v18 = __swift_allocate_boxed_opaque_existential_0(&v39);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    sub_1E1AF38BC();
    sub_1E13E44F8(&v39);
    sub_1E1AF382C();
    v19 = [a3 logKey];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1E1AF5DFC();
      v23 = v22;

      v24 = MEMORY[0x1E69E6158];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v41 = 0;
    }

    v39 = v21;
    v40 = v23;
    v42 = v24;
    sub_1E1AF38BC();
    sub_1E13E44F8(&v39);
    sub_1E1AF54AC();
  }

  else
  {
    if (qword_1ECEB1268 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_1ECEB9E20);
    (*(v8 + 16))(v13, v25, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v26 = [a3 logKey];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1E1AF5DFC();
      v30 = v29;

      v31 = MEMORY[0x1E69E6158];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v41 = 0;
    }

    v39 = v28;
    v40 = v30;
    v42 = v31;
    sub_1E1AF38BC();
    sub_1E13E44F8(&v39);
    sub_1E1AF549C();

    v10 = v13;
  }

  (*(v8 + 8))(v10, v7);
  return v36(v34, a2);
}

uint64_t sub_1E181FA04(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a1;
  v7 = sub_1E1AF591C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (a2)
  {
    v14 = a2;
    if (qword_1ECEB1268 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_1ECEB9E20);
    (*(v8 + 16))(v10, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    swift_getErrorValue();
    v16 = v37;
    v17 = v38;
    v42 = v38;
    v18 = __swift_allocate_boxed_opaque_existential_0(&v39);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    sub_1E1AF38BC();
    sub_1E13E44F8(&v39);
    sub_1E1AF382C();
    v19 = [a3 logKey];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1E1AF5DFC();
      v23 = v22;

      v24 = MEMORY[0x1E69E6158];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v41 = 0;
    }

    v39 = v21;
    v40 = v23;
    v42 = v24;
    sub_1E1AF38BC();
    sub_1E13E44F8(&v39);
    sub_1E1AF54AC();
  }

  else
  {
    if (qword_1ECEB1268 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_1ECEB9E20);
    (*(v8 + 16))(v13, v25, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v26 = [a3 logKey];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1E1AF5DFC();
      v30 = v29;

      v31 = MEMORY[0x1E69E6158];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v41 = 0;
    }

    v39 = v28;
    v40 = v30;
    v42 = v31;
    sub_1E1AF38BC();
    sub_1E13E44F8(&v39);
    sub_1E1AF549C();

    v10 = v13;
  }

  (*(v8 + 8))(v10, v7);
  return v36(v34, a2);
}

id URLProtocolDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLProtocolDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1820194(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E18201E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1E1820238(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1E1820274()
{
  result = qword_1ECEB9F10;
  if (!qword_1ECEB9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F10);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t MetricsLogger.log(contentsOf:)(void *a1)
{
  v55 = sub_1E1AF428C();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v49 - v6;
  v7 = sub_1E1AF38EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  sub_1E1AF382C();
  v18 = sub_1E172EF4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1E172EF4C(v19 > 1, v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v23 = *(v8 + 32);
  v22 = v8 + 32;
  v21 = v23;
  v24 = (*(v22 + 48) + 32) & ~*(v22 + 48);
  v25 = *(v22 + 40);
  v23(&v18[v24 + v25 * v20], v17, v7);
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v60[0] = DynamicType;
  sub_1E1AF38BC();
  sub_1E1308058(v60, &qword_1ECEB2DF0);
  v28 = *(v18 + 2);
  v27 = *(v18 + 3);
  if (v28 >= v27 >> 1)
  {
    v18 = sub_1E172EF4C(v27 > 1, v28 + 1, 1, v18);
  }

  *(v18 + 2) = v28 + 1;
  v21(&v18[v24 + v28 * v25], v14, v7);
  v59 = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(&v56, v60);
    v30 = MetatypeMetadata;
    v31 = v62;
    __swift_project_boxed_opaque_existential_1Tm(v60, MetatypeMetadata);
    v32 = (*(v31 + 16))(v30, v31);
    *(&v57 + 1) = MEMORY[0x1E69E6158];
    *&v56 = v32;
    *(&v56 + 1) = v33;
    v34 = v49;
    sub_1E1AF38BC();
    sub_1E1308058(&v56, &qword_1ECEB2DF0);
    v35 = v51;
    v21(v51, v34, v7);
    *&v56 = v18;
    v36 = *(v18 + 2);
    if (v36 >= *(v18 + 3) >> 1)
    {
      v18 = sub_1E172EF4C(1uLL, v36 + 1, 1, v18);
      *&v56 = v18;
    }

    sub_1E14F3228(0, 0, 1, v35);
    *&v56 = v18;
    v37 = v62;
    v38 = __swift_project_boxed_opaque_existential_1Tm(v60, MetatypeMetadata);
    v39 = MEMORY[0x1EEE9AC00](v38);
    *(&v49 - 2) = &v56;
    (*(v37 + 24))(sub_1E1821018, v39);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    sub_1E1308058(&v56, &qword_1ECEB47C0);
    swift_getErrorValue();
    v40 = sub_1E1AF75AC();
    MetatypeMetadata = MEMORY[0x1E69E6158];
    v60[0] = v40;
    v60[1] = v41;
    v42 = v50;
    sub_1E1AF38BC();
    sub_1E1308058(v60, &qword_1ECEB2DF0);
    v43 = v52;
    v21(v52, v42, v7);
    *&v56 = v18;
    v44 = *(v18 + 2);
    if (v44 >= *(v18 + 3) >> 1)
    {
      v18 = sub_1E172EF4C(1uLL, v44 + 1, 1, v18);
      *&v56 = v18;
    }

    sub_1E14F3228(0, 0, 1, v43);
    *&v56 = v18;
  }

  v45 = v54;
  v46 = v53;
  v47 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x1E69AB108], v55);
  sub_1E1AF3F0C();
  (*(v45 + 8))(v46, v47);
}

uint64_t sub_1E18209C4(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = sub_1E1AF38EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v30[3] = MEMORY[0x1E69E6158];
  v30[0] = a1;
  v30[1] = a2;

  sub_1E1AF38BC();
  sub_1E1308058(v30, &qword_1ECEB2DF0);
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1E172EF4C(0, v15[2] + 1, 1, v15);
    *a4 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1E172EF4C(v17 > 1, v18 + 1, 1, v15);
    *a4 = v15;
  }

  v15[2] = v18 + 1;
  v21 = *(v9 + 32);
  v20 = v9 + 32;
  v19 = v21;
  v22 = (*(v20 + 48) + 32) & ~*(v20 + 48);
  v23 = v15 + v22;
  v24 = *(v20 + 40);
  v21(&v23[v24 * v18], v14, v8);
  sub_1E137A5C4(a3, v30);
  sub_1E1AF38BC();
  sub_1E1308058(v30, &qword_1ECEB2DF0);
  v25 = *a4;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v25;
  if ((v26 & 1) == 0)
  {
    v25 = sub_1E172EF4C(0, v25[2] + 1, 1, v25);
    *a4 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1E172EF4C(v27 > 1, v28 + 1, 1, v25);
    *a4 = v25;
  }

  v25[2] = v28 + 1;
  return v19(v25 + v22 + v28 * v24, v11, v8);
}

uint64_t MetricsLogger.Configuration.init(asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1E1AF3D0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = sub_1E1AF539C();
  v17 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D70);
  v19 = a1;
  sub_1E1AF55EC();
  if (qword_1EE1E2F38 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF532C();
  v14 = *(v8 + 8);
  v14(v10, v7);
  if (qword_1EE1E30D0 != -1)
  {
    swift_once();
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E69AAFB8], v3);
  sub_1E1AF52AC();
  (*(v4 + 8))(v6, v3);
  sub_1E1AF532C();
  v14(v10, v7);
  sub_1E1300B24(v21, v20);
  sub_1E1AF3EDC();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return (*(v17 + 8))(v13, v11);
}

uint64_t IconCollectionStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x70556F7754;
  v3 = 0x437055656E4FLL;
  if (v1 != 6)
  {
    v3 = 0x447055656E4FLL;
  }

  v4 = 0x417055656E4FLL;
  if (v1 != 4)
  {
    v4 = 0x427055656E4FLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7233862;
  if (v1 != 2)
  {
    v5 = 0x7274656D6D797341;
  }

  if (*v0)
  {
    v2 = 0x70556565726854;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

AppStoreKit::IconCollectionStyle_optional __swiftcall IconCollectionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1E1821194(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x70556F7754;
  v5 = 0x437055656E4FLL;
  if (v2 != 6)
  {
    v5 = 0x447055656E4FLL;
  }

  v6 = 0x417055656E4FLL;
  if (v2 != 4)
  {
    v6 = 0x427055656E4FLL;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 7233862;
  if (v2 != 2)
  {
    v8 = 0x7274656D6D797341;
    v7 = 0xEC0000006C616369;
  }

  if (*v1)
  {
    v4 = 0x70556565726854;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v9;
  a1[1] = v3;
}

AppStoreKit::MediaPageHeader::Style_optional __swiftcall MediaPageHeader.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaPageHeader.Style.rawValue.getter()
{
  if (*v0)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1E18213C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E182145C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18214D4()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1821538()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18215AC@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E182160C(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MediaPageHeader.__allocating_init(id:badge:title:subtitle:artwork:video:collectionIcons:useGeneratedBackgroundGradient:backgroundColor:placementStyle:backgroundStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, char *a13, uint64_t a14)
{
  v39 = a8;
  v40 = a4;
  v43 = a5;
  v44 = a6;
  v41 = a2;
  v42 = a3;
  v16 = sub_1E1AEFEAC();
  v37 = *(v16 - 8);
  v38 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = *a12;
  v20 = *a13;
  v21 = a1;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_artwork) = a7;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_video) = v39;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_collectionIcons) = a9;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = a10;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundColor) = a11;
  v22 = v40;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_placementStyle) = v19;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundStyle) = v20;
  sub_1E134FD1C(a1, v50, &unk_1ECEB5670);
  v23 = OBJC_IVAR____TtC11AppStoreKit10PageHeader_title;
  v24 = sub_1E1AEF91C();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v18 + v23, v22, v24);
  sub_1E134FD1C(a14, v18 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_impressionMetrics, &unk_1ECEB1770);
  v26 = v18 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_id;
  sub_1E134FD1C(v50, &v47, &unk_1ECEB5670);
  if (*(&v48 + 1))
  {
    v27 = v48;
    *v26 = v47;
    *(v26 + 16) = v27;
    *(v26 + 32) = v49;
  }

  else
  {
    v28 = v36;
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v37 + 8))(v28, v38);
    v45 = v29;
    v46 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v47, &unk_1ECEB5670);
  }

  sub_1E1308058(a14, &unk_1ECEB1770);
  (*(v25 + 8))(v22, v24);
  sub_1E1308058(v21, &unk_1ECEB5670);
  sub_1E1308058(v50, &unk_1ECEB5670);
  v32 = v42;
  *(v18 + 16) = v41;
  *(v18 + 24) = v32;
  v33 = (v18 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_subtitle);
  v34 = v44;
  *v33 = v43;
  v33[1] = v34;
  return v18;
}

uint64_t MediaPageHeader.init(id:badge:title:subtitle:artwork:video:collectionIcons:useGeneratedBackgroundGradient:backgroundColor:placementStyle:backgroundStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, _BYTE *a12, char *a13, uint64_t a14)
{
  v15 = v14;
  v46 = a8;
  v45 = a7;
  v49 = a5;
  v50 = a6;
  v41 = a4;
  v48 = a3;
  v47 = a2;
  v44 = a10;
  v42 = a9;
  v43 = a11;
  v40 = sub_1E1AEFEAC();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v38 - v20;
  v22 = sub_1E1AEF91C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v24) = *a12;
  v26 = *a13;
  v27 = a1;
  v28 = v41;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_artwork) = v45;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_video) = v46;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_collectionIcons) = v42;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = v44;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundColor) = v43;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_placementStyle) = v24;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundStyle) = v26;
  v46 = v27;
  sub_1E134FD1C(v27, v59, &unk_1ECEB5670);
  (*(v23 + 16))(v25, v28, v22);
  v45 = a14;
  sub_1E134FD1C(a14, v21, &unk_1ECEB1770);
  sub_1E134FD1C(v59, &v53, &unk_1ECEB5670);
  if (*(&v54 + 1))
  {
    v56 = v53;
    v57 = v54;
    v58 = v55;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v39 + 8))(v18, v40);
    v51 = v29;
    v52 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v53, &unk_1ECEB5670);
  }

  sub_1E1308058(v45, &unk_1ECEB1770);
  (*(v23 + 8))(v28, v22);
  sub_1E1308058(v46, &unk_1ECEB5670);
  sub_1E1308058(v59, &unk_1ECEB5670);
  v32 = v15 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_id;
  *(v32 + 32) = v58;
  v33 = v57;
  *v32 = v56;
  *(v32 + 16) = v33;
  v34 = v48;
  *(v15 + 16) = v47;
  *(v15 + 24) = v34;
  (*(v23 + 32))(v15 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_title, v25, v22);
  v35 = (v15 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_subtitle);
  v36 = v50;
  *v35 = v49;
  v35[1] = v36;
  sub_1E134B7C8(v21, v15 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_impressionMetrics);
  return v15;
}

uint64_t MediaPageHeader.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v123 = a2;
  v108 = sub_1E1AEFEAC();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = v103 - v5;
  v115 = sub_1E1AF5A6C();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v104 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = v103 - v8;
  v130 = sub_1E1AF39DC();
  v122 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v127 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v121 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v126 = v103 - v15;
  v16 = sub_1E1AEF97C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v125 = sub_1E1AEF91C();
  v120 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v103 - v19;
  v21 = sub_1E1AF380C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v117 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v116 = v103 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v113 = v103 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v111 = v103 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v110 = v103 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v103 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v103 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v103 - v39;
  v128 = a1;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v42 = v41;
  v43 = *(v22 + 8);
  v131 = v22 + 8;
  v132 = v21;
  v129 = v43;
  v43(v40, v21);
  if (v42)
  {
    sub_1E1AEF96C();
    v118 = v20;
    sub_1E1AEF92C();
    sub_1E1AF46DC();
    sub_1E1AF381C();
    v45 = v122 + 16;
    v44 = *(v122 + 16);
    v46 = v123;
    v47 = v130;
    v44(v119, v123, v130);
    v109 = v37;
    sub_1E1AF464C();
    v48 = v127;
    v44(v127, v46, v47);
    sub_1E1AF381C();
    v49 = v112;
    sub_1E1AF374C();
    v129(v34, v132);
    v50 = v114;
    v51 = v115;
    v52 = (*(v114 + 48))(v49, 1, v115);
    v103[1] = v45;
    v103[0] = v44;
    if (v52 == 1)
    {
      sub_1E1308058(v49, &qword_1ECEB1F90);
      v104 = 0;
      v53 = v119;
    }

    else
    {
      v57 = v105;
      v58 = v47;
      (*(v50 + 32))(v105, v49, v51);
      (*(v50 + 16))(v104, v57, v51);
      v59 = v119;
      v44(v119, v48, v58);
      type metadata accessor for Artwork();
      sub_1E1822F84(&qword_1EE1E4BB8, type metadata accessor for Artwork);
      v104 = sub_1E1AF631C();
      (*(v50 + 8))(v57, v51);
      v53 = v59;
    }

    v60 = v110;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    v63 = v118;
    v64 = v109;
    if (v62)
    {
      v138 = v61;
      v139 = v62;
    }

    else
    {
      v65 = v53;
      v66 = v106;
      sub_1E1AEFE9C();
      v67 = sub_1E1AEFE7C();
      v69 = v68;
      v70 = v66;
      v53 = v65;
      v64 = v109;
      (*(v107 + 8))(v70, v108);
      v138 = v67;
      v139 = v69;
    }

    sub_1E1AF6F6C();
    v71 = v60;
    v72 = v132;
    v73 = v129;
    v129(v71, v132);
    v74 = v111;
    sub_1E1AF381C();
    v119 = sub_1E1AF37CC();
    v115 = v75;
    v73(v74, v72);
    v76 = *(v120 + 16);
    v110 = (v120 + 16);
    v111 = v76;
    (v76)(v124, v63, v125);
    v77 = v113;
    sub_1E1AF381C();
    v114 = sub_1E1AF37CC();
    v112 = v78;
    v73(v77, v72);
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v79 = v127;
    v80 = v130;
    v81 = v103[0];
    (v103[0])(v53, v127, v130);
    sub_1E1822F84(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v113 = v144;
    type metadata accessor for Video();
    sub_1E1AF381C();
    v81(v53, v79, v80);
    sub_1E1822F84(&qword_1EE1E52D0, type metadata accessor for Video);
    sub_1E1AF464C();
    v82 = v142;
    v83 = v116;
    sub_1E1AF381C();
    LODWORD(v109) = sub_1E1AF370C();
    v84 = v132;
    v85 = v129;
    v129(v83, v132);
    v86 = v117;
    sub_1E1AF381C();
    v116 = JSONObject.appStoreColor.getter();
    v85(v86, v84);
    sub_1E1AF381C();
    sub_1E1822FCC();
    sub_1E1AF36DC();
    v85(v64, v84);
    LODWORD(v117) = v141;
    sub_1E1AF381C();
    sub_1E1823020();
    sub_1E1AF369C();
    v85(v64, v84);
    LOBYTE(v86) = v140;
    v87 = v121;
    sub_1E134FD1C(v126, v121, &unk_1ECEB1770);
    type metadata accessor for MediaPageHeader();
    v54 = swift_allocObject();
    *(v54 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_artwork) = v113;
    *(v54 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_video) = v82;
    *(v54 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_collectionIcons) = v104;
    *(v54 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_useGeneratedBackgroundGradient) = v109 & 1;
    *(v54 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundColor) = v116;
    *(v54 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_placementStyle) = v117;
    *(v54 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundStyle) = v86;
    sub_1E134FD1C(v143, &v138, &unk_1ECEB5670);
    (v111)(v54 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_title, v124, v125);
    sub_1E134FD1C(v87, v54 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_impressionMetrics, &unk_1ECEB1770);
    v88 = v54 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_id;
    sub_1E134FD1C(&v138, &v135, &unk_1ECEB5670);
    v89 = v85;
    if (*(&v136 + 1))
    {
      v90 = v136;
      *v88 = v135;
      *(v88 + 16) = v90;
      *(v88 + 32) = v137;
    }

    else
    {
      v91 = v106;
      sub_1E1AEFE9C();
      v92 = sub_1E1AEFE7C();
      v94 = v93;
      (*(v107 + 8))(v91, v108);
      v133 = v92;
      v134 = v94;
      sub_1E1AF6F6C();
      sub_1E1308058(&v135, &unk_1ECEB5670);
    }

    v95 = *(v122 + 8);
    v96 = v130;
    v95(v123, v130);
    v89(v128, v132);
    sub_1E1308058(&v138, &unk_1ECEB5670);
    sub_1E1308058(v121, &unk_1ECEB1770);
    v97 = *(v120 + 8);
    v98 = v125;
    v97(v124, v125);
    sub_1E1308058(v143, &unk_1ECEB5670);
    v95(v127, v96);
    sub_1E1308058(v126, &unk_1ECEB1770);
    v97(v118, v98);
    v99 = v115;
    *(v54 + 16) = v119;
    *(v54 + 24) = v99;
    v100 = (v54 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_subtitle);
    v101 = v112;
    *v100 = v114;
    v100[1] = v101;
  }

  else
  {
    v54 = sub_1E1AF5A7C();
    sub_1E1822F84(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v55 = 0x656C746974;
    v56 = v118;
    v55[1] = 0xE500000000000000;
    v55[2] = v56;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x1E69AB690], v54);
    swift_willThrow();
    (*(v122 + 8))(v123, v130);
    v129(v128, v132);
  }

  return v54;
}

uint64_t sub_1E1822F84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E1822FCC()
{
  result = qword_1EE1DCEA0;
  if (!qword_1EE1DCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCEA0);
  }

  return result;
}

unint64_t sub_1E1823020()
{
  result = qword_1ECEB9F20;
  if (!qword_1ECEB9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F20);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeader()
{
  result = qword_1EE1F3498;
  if (!qword_1EE1F3498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MediaPageHeader.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundColor);
  v2 = v1;
  return v1;
}

void sub_1E1823188()
{

  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundColor);
}

uint64_t MediaPageHeader.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit10PageHeader_title;
  v2 = sub_1E1AEF91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit10PageHeader_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t MediaPageHeader.__deallocating_deinit()
{
  MediaPageHeader.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E1823340()
{
  result = qword_1ECEB9F28;
  if (!qword_1ECEB9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F28);
  }

  return result;
}

unint64_t sub_1E1823398()
{
  result = qword_1ECEB9F30;
  if (!qword_1ECEB9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F30);
  }

  return result;
}

void *sub_1E1823400()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11AppStoreKit15MediaPageHeader_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t sub_1E1823538(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      sub_1E134E724(*(a1 + 48) + 40 * v12, &v29);
      *(&v31 + 1) = *(*(a1 + 56) + 8 * v12);
      v28[1] = v30;
      v28[2] = v31;
      v28[0] = v29;
      v13 = *(&v31 + 1);
      if ((*(*(&v31 + 1) + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints + 1) & 0x40) == 0)
      {
        break;
      }

      result = sub_1E1308058(v28, &qword_1ECEB4D38);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v26 = v30;
    v27 = v31;
    v25 = v29;
    v14 = *(v2 + 16);
    if (*(v2 + 24) <= v14)
    {

      sub_1E16889E4(v14 + 1, 1);
      v2 = v32;
    }

    else
    {
    }

    result = sub_1E1AF6F2C();
    v15 = v2 + 64;
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6))) == 0)
    {
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
        v23 = *(v15 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *(*(v2 + 56) + 8 * v19) = v13;
    ++*(v2 + 16);
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t ReviewsDiffablePageContentPresenter.__allocating_init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v78 = a5;
  v74 = a1;
  v75 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v72 - v10;
  v73 = v72 - v10;
  *(v6 + qword_1ECEB9F38) = 0;
  v12 = sub_1E1AEFCCC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  *(v6 + qword_1EE1E9D48) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v14 = qword_1EE2166A0;
  v77 = a4;

  v76 = a3;

  *(v6 + v14) = sub_1E159D6F0(v13);
  v15 = (v6 + qword_1EE1E9E00);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v6 + qword_1EE1E9EA0);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v6 + qword_1EE1E9E08);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v6 + qword_1EE1E9DF0);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v6 + qword_1EE1E9E98);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v6 + qword_1EE216698);
  *v20 = 0u;
  v20[1] = 0u;
  *(v20 + 25) = 0u;
  *(v6 + qword_1EE2166D0) = 0;
  *(v6 + qword_1EE1E9D50) = 0;
  *(v6 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE2166C8) = 0;
  v21 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3348);
  swift_allocObject();
  *(v6 + v21) = sub_1E1AF5BEC();
  v22 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v6 + v22) = sub_1E1AF5BEC();
  v23 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3360);
  swift_allocObject();
  *(v6 + v23) = sub_1E1AF5BEC();
  v24 = qword_1EE2166B0;
  swift_allocObject();
  *(v6 + v24) = sub_1E1AF5BEC();
  v25 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v25) = sub_1E1AF5BEC();
  v26 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v6 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE1E9DD8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v29 = *(*(v28 - 8) + 56);
  v29(v6 + v27, 1, 1, v28);
  v29(v6 + qword_1EE1E9DE0, 1, 1, v28);
  v30 = v73;
  v31 = v74;
  *(v6 + 16) = v74;
  sub_1E13E23F8(v30, v6 + qword_1EE216678);
  v32 = *v15;
  *v15 = 0;
  v15[1] = 0;
  sub_1E1300EA8(v32);
  v33 = *v17;
  *v17 = 0;
  v17[1] = 0;
  v34 = v75;
  sub_1E1300EA8(v33);
  if (v34)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v36 = sub_1E1445E6C;
  }

  else
  {
    v36 = 0;
    v35 = 0;
  }

  v37 = *v16;
  *v16 = v36;
  v16[1] = v35;
  sub_1E1300EA8(v37);
  v38 = *v18;
  *v18 = 0;
  v18[1] = 0;
  sub_1E1300EA8(v38);
  v39 = *v19;
  *v19 = 0;
  v19[1] = 0;
  sub_1E1300EA8(v39);
  v40 = v77;
  *(v6 + qword_1EE1E9E90) = v76;
  *(v6 + qword_1EE216690) = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF421C();
  swift_retain_n();
  v42 = v31;
  sub_1E1AF55EC();
  v43 = v79;
  v44 = v80;
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v72[0] = v46;
  v72[1] = v43;
  v46[2] = v45;
  v46[3] = v34;
  v46[4] = v43;
  v46[5] = v44;
  v47 = swift_allocObject();
  v47[2] = v78;
  v47[3] = v34;
  v47[4] = v42;
  v47[5] = v6;
  v47[6] = v43;
  v47[7] = v44;
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v41;
  v50 = swift_allocObject();
  v73 = v50;
  *(v50 + 16) = sub_1E1824930;
  *(v50 + 24) = v42;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1E18248EC;
  *(v51 + 24) = v47;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E1543608;
  *(v52 + 24) = v51;
  v53 = (v6 + qword_1EE1E9E00);
  v54 = *(v6 + qword_1EE1E9E00);
  *v53 = sub_1E13E24A0;
  v53[1] = v52;

  v55 = v72[0];

  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_1E1300EA8(v54);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1E18248BC;
  *(v56 + 24) = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1E154366C;
  *(v57 + 24) = v56;
  v58 = (v6 + qword_1EE1E9EA0);
  v59 = *(v6 + qword_1EE1E9EA0);
  *v58 = sub_1E13E24C0;
  v58[1] = v57;

  sub_1E1300EA8(v59);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1E18248FC;
  *(v60 + 24) = v48;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1E1543638;
  *(v61 + 24) = v60;
  v62 = (v6 + qword_1EE1E9E08);
  v63 = *(v6 + qword_1EE1E9E08);
  *v62 = sub_1E13E24B0;
  v62[1] = v61;

  sub_1E1300EA8(v63);
  v64 = (v6 + qword_1EE1E9DF0);
  v65 = *(v6 + qword_1EE1E9DF0);
  *v64 = sub_1E1824928;
  v64[1] = v49;

  sub_1E1300EA8(v65);
  v66 = swift_allocObject();
  v67 = v73;
  *(v66 + 16) = sub_1E155BC10;
  *(v66 + 24) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1E1543608;
  *(v68 + 24) = v66;
  v69 = (v6 + qword_1EE1E9E98);
  v70 = *(v6 + qword_1EE1E9E98);
  *v69 = sub_1E13E24A0;
  v69[1] = v68;

  sub_1E1300EA8(v70);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1E1824134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23[-1] - v13;
  if (a2)
  {
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();

    sub_1E1AF55EC();
    v15 = OBJC_IVAR____TtCC11AppStoreKit11ReviewsPage10SortOption_url;
    v16 = sub_1E1AEFCCC();
    (*(*(v16 - 8) + 16))(v14, a2 + v15, v16);
    sub_1E136AFD4(v14, a4, "AppStoreKit/ReviewsDiffablePageContentPresenter.swift", 53, 2);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a6;
    v18[4] = a7;
    v23[3] = sub_1E1AF470C();
    v23[4] = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_0(v23);
    swift_unknownObjectRetain();
    sub_1E1AF46FC();
    type metadata accessor for ReviewsPage(0);
    v19 = sub_1E1AF57DC();

    sub_1E1308058(v14, &qword_1ECEB28F8);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v19;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28E0);
    if (a3)
    {
      v23[0] = a3;

      return sub_1E1AF582C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9F50);
      sub_1E18249F4();
      swift_allocError();
      *v21 = 0;
      return sub_1E1AF581C();
    }
  }
}

uint64_t sub_1E18243E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = *(v5 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId + 8);
    *&v20 = *(v5 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
    *(&v20 + 1) = v9;
    v10 = *(a2 + 56);

    v10(&v20, ObjectType, a2);
    v12 = v11;

    v13 = swift_getObjectType();
    (*(v12 + 16))(v18, v13, v12);
    swift_unknownObjectRelease();
    v20 = v18[0];
    v21 = v18[1];
    v22 = v18[2];
    v23 = v19;
    if (v19 >> 60)
    {
      if (v19 >> 60 != 8)
      {
LABEL_9:
        sub_1E139CEA8(&v20);
LABEL_12:
        LOBYTE(v16) = 1;
        goto LABEL_13;
      }

      v14 = *(&v22 + 1) | *(&v23 + 1);
      v15 = *(&v21 + 1) | v21 | *(&v20 + 1);
      if (v19 != 0x8000000000000000 || v14 | *&v18[0] | v22 | v15)
      {
        if (v19 == 0x8000000000000000 && *&v18[0] == 4)
        {
          v16 = v14 | v22 | v15;
          if (!v16)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v18[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v16) = 0;
LABEL_13:
    *(v7 + qword_1ECEB9F38) = v16;
  }

  *a3 = v5;
}

uint64_t sub_1E18245A0(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v2 = sub_1E1AF4C0C();

  v3 = sub_1E1367B40(a1, v2, "AppStoreKit/ReviewsDiffablePageContentPresenter.swift", 53, 2);

  return v3;
}

uint64_t sub_1E1824690(uint64_t a1, uint64_t a2)
{
  sub_1E13BFF54(a1, &v6);
  if (v7)
  {
    sub_1E1301CF0(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E137A5C4(v8, &v6);
    v3 = sub_1E136B270(&v6, a2, "AppStoreKit/ReviewsDiffablePageContentPresenter.swift", 53, 2);

    sub_1E1308058(&v6, &qword_1ECEB28E8);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_1E1308058(&v6, &qword_1ECEB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9F50);
    sub_1E18249F4();
    swift_allocError();
    *v5 = 2;
    return sub_1E1AF581C();
  }
}

uint64_t ReviewsDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E1824854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E18248BC()
{
  sub_1E1824A58(v0[2], v0[3], v0[4], v0[5]);
}

uint64_t sub_1E18248FC(uint64_t a1)
{
  sub_1E1824C24(a1);
}

uint64_t type metadata accessor for ReviewsDiffablePageContentPresenter()
{
  result = qword_1ECEB9F40;
  if (!qword_1ECEB9F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E18249F4()
{
  result = qword_1ECEB9F58;
  if (!qword_1ECEB9F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB9F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F58);
  }

  return result;
}

uint64_t sub_1E1824A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!a2)
    {
LABEL_15:

      return a2;
    }

    v7 = Strong;
    ObjectType = swift_getObjectType();
    v9 = *(a2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId + 8);
    *&v21 = *(a2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
    *(&v21 + 1) = v9;
    v10 = *(a4 + 56);

    v10(&v21, ObjectType, a4);
    v12 = v11;

    v13 = swift_getObjectType();
    (*(v12 + 16))(v19, v13, v12);

    swift_unknownObjectRelease();
    v21 = v19[0];
    v22 = v19[1];
    v23 = v19[2];
    v24 = v20;
    if (v20 >> 60)
    {
      if (v20 >> 60 != 8)
      {
LABEL_10:
        sub_1E139CEA8(&v21);
        v14 = v7;
LABEL_13:
        LOBYTE(v17) = 1;
        goto LABEL_14;
      }

      v14 = v7;
      v15 = *(&v23 + 1) | *(&v24 + 1);
      v16 = *(&v22 + 1) | v22 | *(&v21 + 1);
      if (v20 != 0x8000000000000000 || v15 | *&v19[0] | v23 | v16)
      {
        if (v20 == 0x8000000000000000 && *&v19[0] == 4)
        {
          v17 = v15 | v23 | v16;
          if (!v17)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
      v14 = v7;
      if (LOBYTE(v19[0]) != 1)
      {
        goto LABEL_13;
      }
    }

    LOBYTE(v17) = 0;
LABEL_14:
    *(v14 + qword_1ECEB9F38) = v17;
    goto LABEL_15;
  }

  return a2;
}

uint64_t sub_1E1824C24(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + qword_1ECEB9F38) == 1 || *(a1 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) == 1)
    {
    }

    else
    {
      v3 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
      swift_beginAccess();

      v5 = sub_1E1823538(v4);

      *(a1 + v3) = v5;
    }
  }

  return a1;
}

uint64_t objectdestroy_9Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E1824DB0()
{
  v17 = MEMORY[0x1E69E7CD0];
  v1 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_1E134E724(v7, v15);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_5:
      ++v8;
      sub_1E134B88C(v15);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v15);
    if ((v9 & 1) == 0)
    {

      goto LABEL_5;
    }

    v10 = sub_1E134B88C(v15);
    MEMORY[0x1E68FEF20](v10);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v6 = v8 + 1;
    sub_1E1AF62AC();
    v3 = v16;
  }

  while (v4 - 1 != v8);
LABEL_12:

  if (v3 >> 62)
  {
LABEL_21:
    result = sub_1E1AF71CC();
    v12 = result;
    if (!result)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E68FFD80](i, v3);
        }

        else
        {
          v14 = *(v3 + 8 * i + 32);
        }

        sub_1E1894228(v15, *(v14 + 16));
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_22:

    return v17;
  }

  return result;
}

AppStoreKit::ArticlePage::TouchMode_optional __swiftcall ArticlePage.TouchMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticlePage.TouchMode.rawValue.getter()
{
  v1 = 7233904;
  if (*v0 != 1)
  {
    v1 = 1869903201;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7375636F66;
  }
}

uint64_t sub_1E18250AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7233904;
  if (v2 != 1)
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7375636F66;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7233904;
  if (*a2 != 1)
  {
    v8 = 1869903201;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7375636F66;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E182518C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E182521C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1825298()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1825330(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 7233904;
  if (v2 != 1)
  {
    v5 = 1869903201;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7375636F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ArticlePage.__allocating_init(title:subtitle:card:shelves:footerLockup:arcadeFooterLockup:shareAction:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:touchMode:shouldTerminateOnClose:editorialStoryCard:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned __int8 a17, uint64_t a18)
{
  v71 = a2;
  v72 = a3;
  v70 = a1;
  v73 = a18;
  v76 = a14;
  v80 = a8;
  v81 = a12;
  v78 = a7;
  v79 = a9;
  LODWORD(v75) = a17;
  LODWORD(v74) = a10;
  v82 = a15;
  v83 = a13;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v69 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  v29 = sub_1E1AF3C3C();
  v77 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = *a16;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_editorialStoryCard) = 0;
  v34 = (v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title);
  v35 = v71;
  *v34 = v70;
  v34[1] = v35;
  v36 = (v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle);
  *v36 = v72;
  v36[1] = a4;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card) = a5;
  v72 = a5;

  v37 = sub_1E175EC2C(a6);
  v39 = v38;

  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering) = v37;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping) = v39;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup) = v78;
  v40 = v79;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup) = v80;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction) = v40;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete) = v74;
  v74 = a11;
  sub_1E134FD1C(a11, v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage, &qword_1ECEB2DF0);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode) = v33;
  v41 = v77;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose) = v75;
  v42 = *(v41 + 16);
  v42(v31, v83, v29);
  sub_1E134FD1C(v82, v28, &qword_1ECEB3B28);
  *(v32 + 16) = v81;
  v71 = v29;
  v42((v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v31, v29);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v76;
  sub_1E134FD1C(v28, v25, &qword_1ECEB3B28);
  v43 = sub_1E1AF39DC();
  v70 = *(v43 - 8);
  v44 = *(v70 + 48);
  v75 = v25;
  if (v44(v25, 1, v43) == 1)
  {

    sub_1E1308058(v82, &qword_1ECEB3B28);
    v45 = *(v41 + 8);
    v46 = v71;
    v45(v83, v71);
    sub_1E1308058(v74, &qword_1ECEB2DF0);
    sub_1E1308058(v28, &qword_1ECEB3B28);
    v45(v31, v46);
    v47 = v75;
  }

  else
  {
    v67 = v31;
    v68 = v28;
    v48 = qword_1EE1E3BC8;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v49, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v50 = v84;
    v51 = v70;
    if (v84)
    {
    }

    v52 = *(v51 + 8);
    v52(v75, v43);
    v53 = v77;
    v54 = v69;
    if (!v50)
    {

      sub_1E1308058(v82, &qword_1ECEB3B28);
      v60 = *(v53 + 8);
      v61 = v71;
      v60(v83, v71);
      sub_1E1308058(v74, &qword_1ECEB2DF0);
      sub_1E1308058(v68, &qword_1ECEB3B28);
      v60(v67, v61);
      return v32;
    }

    v55 = v68;
    sub_1E134FD1C(v68, v69, &qword_1ECEB3B28);
    v56 = v44(v54, 1, v43);
    v57 = v83;
    if (v56 != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v82, &qword_1ECEB3B28);
      v62 = *(v53 + 8);
      v63 = v57;
      v64 = v71;
      v62(v63, v71);
      sub_1E1308058(v74, &qword_1ECEB2DF0);
      sub_1E1308058(v55, &qword_1ECEB3B28);
      v62(v67, v64);
      v52(v54, v43);
      return v32;
    }

    sub_1E1308058(v82, &qword_1ECEB3B28);
    v58 = *(v53 + 8);
    v59 = v71;
    v58(v57, v71);
    sub_1E1308058(v74, &qword_1ECEB2DF0);
    sub_1E1308058(v55, &qword_1ECEB3B28);
    v58(v67, v59);
    v47 = v54;
  }

  sub_1E1308058(v47, &qword_1ECEB3B28);
  return v32;
}

uint64_t ArticlePage.init(title:subtitle:card:shelves:footerLockup:arcadeFooterLockup:shareAction:isIncomplete:nextPage:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:touchMode:shouldTerminateOnClose:editorialStoryCard:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, unsigned __int8 a17, uint64_t a18)
{
  v19 = v18;
  v77 = a7;
  v78 = a8;
  v70 = a3;
  v71 = a4;
  v68 = a2;
  v72 = a18;
  v79 = a12;
  v74 = a14;
  v75 = a11;
  LODWORD(v73) = a17;
  LODWORD(v69) = a10;
  v80 = a15;
  v81 = a13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v67 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = sub_1E1AF3C3C();
  v76 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a16;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_editorialStoryCard) = 0;
  v35 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title);
  v36 = v68;
  *v35 = a1;
  v35[1] = v36;
  v37 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle);
  v38 = v71;
  *v37 = v70;
  v37[1] = v38;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card) = a5;
  v70 = a5;

  v39 = sub_1E175EC2C(a6);
  v41 = v40;

  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering) = v39;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping) = v41;
  v42 = v75;
  v43 = v78;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup) = v77;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup) = v43;
  v71 = a9;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction) = a9;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete) = v69;
  sub_1E134FD1C(v42, v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage, &qword_1ECEB2DF0);
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode) = v34;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose) = v73;
  v44 = *(v76 + 16);
  v44(v33, v81, v31);
  sub_1E134FD1C(v80, v30, &qword_1ECEB3B28);
  *(v19 + 16) = v79;
  v73 = v31;
  v44((v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v33, v31);
  *(v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v74;
  sub_1E134FD1C(v30, v27, &qword_1ECEB3B28);
  v45 = sub_1E1AF39DC();
  v68 = *(v45 - 8);
  v46 = *(v68 + 48);
  v47 = v27;
  if (v46(v27, 1, v45) == 1)
  {

    sub_1E1308058(v80, &qword_1ECEB3B28);
    v48 = *(v76 + 8);
    v49 = v73;
    v48(v81, v73);
    sub_1E1308058(v42, &qword_1ECEB2DF0);
    sub_1E1308058(v30, &qword_1ECEB3B28);
    v48(v33, v49);
    v50 = v27;
  }

  else
  {
    v51 = v46;
    v69 = v47;
    v66 = v33;
    v52 = qword_1EE1E3BC8;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v53, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v54 = v82;
    v55 = v68;
    if (v82)
    {
    }

    v56 = *(v55 + 8);
    v56(v69, v45);
    if (!v54)
    {

      sub_1E1308058(v80, &qword_1ECEB3B28);
      v61 = *(v76 + 8);
      v62 = v73;
      v61(v81, v73);
      sub_1E1308058(v75, &qword_1ECEB2DF0);
      sub_1E1308058(v30, &qword_1ECEB3B28);
      v61(v66, v62);
      return v19;
    }

    v57 = v67;
    sub_1E134FD1C(v30, v67, &qword_1ECEB3B28);
    if (v51(v57, 1, v45) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v80, &qword_1ECEB3B28);
      v63 = *(v76 + 8);
      v64 = v73;
      v63(v81, v73);
      sub_1E1308058(v75, &qword_1ECEB2DF0);
      sub_1E1308058(v30, &qword_1ECEB3B28);
      v63(v66, v64);
      v56(v57, v45);
      return v19;
    }

    sub_1E1308058(v80, &qword_1ECEB3B28);
    v58 = *(v76 + 8);
    v59 = v57;
    v60 = v73;
    v58(v81, v73);
    sub_1E1308058(v75, &qword_1ECEB2DF0);
    sub_1E1308058(v30, &qword_1ECEB3B28);
    v58(v66, v60);
    v50 = v59;
  }

  sub_1E1308058(v50, &qword_1ECEB3B28);
  return v19;
}

void (*ArticlePage.init(deserializing:using:)(_BYTE *a1, uint64_t a2))(void, void)
{
  v106 = a2;
  v104 = a1;
  v96 = *v2;
  v109 = sub_1E1AF39DC();
  v103 = *(v109 - 8);
  v3 = MEMORY[0x1EEE9AC00](v109);
  v98 = &v85[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v89 = &v85[-v6];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v87 = &v85[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v85[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v85[-v11];
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v93 = &v85[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v91 = &v85[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v85[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v85[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v85[-v24];
  v26 = sub_1E1AF5A6C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v88 = &v85[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v85[-v30];
  v100 = v2;
  v95 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_editorialStoryCard;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_editorialStoryCard) = 0;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v32 = v26;
  v94 = v14;
  v33 = (v14 + 8);
  v34 = *(v14 + 8);
  v105 = v13;
  v34(v25, v13);
  if ((*(v27 + 48))(v12, 1, v32) == 1)
  {
    sub_1E1308058(v12, &qword_1ECEB1F90);
    v35 = sub_1E1AF5A7C();
    sub_1E1827154(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = 0x7365766C656873;
    v37 = v96;
    v36[1] = 0xE700000000000000;
    v36[2] = v37;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    (*(v103 + 8))(v106, v109);
    v34(v104, v105);

    type metadata accessor for ArticlePage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v100;
    v39 = v109;
    v95 = v27;
    v96 = v32;
    v40 = *(v27 + 32);
    v92 = v31;
    v40(v31, v12, v32);
    v41 = v104;
    sub_1E1AF381C();
    v42 = sub_1E1AF370C();
    v101 = v34;
    v97 = v33;
    v34(v23, v105);
    v86 = v42;
    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v43 = swift_allocObject();
      *(v43 + 16) = MEMORY[0x1E69E7CC0];
      *&v107 = v43;
      v44 = v103;
      v45 = v38;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v46, qword_1EE1E3BD0);
      v47 = v87;
      sub_1E1AF395C();
    }

    else
    {
      v44 = v103;
      v45 = v38;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v48, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v47 = v87;
      sub_1E1AF396C();
    }

    (*(v44 + 32))(v102, v47, v39);
    v49 = v90;
    sub_1E1AF381C();
    v50 = sub_1E1AF37CC();
    v52 = v51;
    v53 = v105;
    v54 = v101;
    v101(v49, v105);
    v55 = (v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title);
    *v55 = v50;
    v55[1] = v52;
    sub_1E1AF381C();
    v56 = sub_1E1AF37CC();
    v58 = v57;
    v54(v49, v53);
    v59 = (v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle);
    *v59 = v56;
    v59[1] = v58;
    type metadata accessor for TodayCard();
    sub_1E1AF381C();
    v60 = *(v44 + 16);
    v61 = v89;
    (v60)(v89, v106, v109);
    sub_1E1827154(&qword_1EE1E3F58, type metadata accessor for TodayCard);
    sub_1E1AF464C();
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card) = v107;
    (*(v95 + 16))(v88, v92, v96);
    (v60)(v61, v102, v109);
    type metadata accessor for Shelf();
    sub_1E1827154(&qword_1EE1E5488, type metadata accessor for Shelf);
    v62 = sub_1E1AF631C();
    v63 = sub_1E175EC2C(v62);
    v65 = v64;

    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering) = v63;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping) = v65;
    type metadata accessor for Lockup();
    sub_1E1AF381C();
    v66 = v106;
    (v60)(v61, v106, v109);
    v100 = v60;
    sub_1E1827154(&qword_1EE1E4F60, type metadata accessor for Lockup);
    sub_1E1AF464C();
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup) = v107;
    type metadata accessor for ArcadeLockup();
    sub_1E1AF381C();
    (v60)(v61, v66, v109);
    sub_1E1827154(qword_1EE1E0540, type metadata accessor for ArcadeLockup);
    sub_1E1AF464C();
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup) = v107;
    type metadata accessor for Action();
    sub_1E1AF381C();
    v67 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v66);
    v68 = v105;
    v69 = v101;
    v101(v49, v105);
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction) = v67;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete) = v86 & 1;
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v69(v49, v68);
    v70 = (v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage);
    v71 = v108;
    *v70 = v107;
    v70[1] = v71;
    sub_1E1AF381C();
    sub_1E182719C();
    sub_1E1AF369C();
    v72 = v49;
    v73 = v109;
    v69(v72, v68);
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode) = v107;
    v74 = v69;
    v75 = v68;
    v76 = v91;
    sub_1E1AF381C();
    LOBYTE(v67) = sub_1E1AF370C();
    v74(v76, v75);
    *(v45 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose) = v67 & 1;
    v77 = v93;
    (*(v94 + 16))(v93, v41, v75);
    v78 = v98;
    v79 = v41;
    v80 = v106;
    (v100)(v98, v106, v73);
    v81 = v99;
    v82 = BasePage.init(deserializing:using:)(v77, v78);
    if (v81)
    {
      v33 = *(v103 + 8);
      v33(v80, v73);
      v101(v79, v75);
      v33(v102, v73);
    }

    else
    {
      v33 = v82;
      v83 = *(v103 + 8);
      v83(v80, v73);
      v101(v79, v75);
      v83(v102, v73);
    }

    (*(v95 + 8))(v92, v96);
  }

  return v33;
}

uint64_t type metadata accessor for ArticlePage()
{
  result = qword_1EE1E0AA0;
  if (!qword_1EE1E0AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1827154(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E182719C()
{
  result = qword_1EE1E0AB8;
  if (!qword_1EE1E0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0AB8);
  }

  return result;
}

uint64_t ArticlePage.__allocating_init(copying:replacingCard:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v16 = sub_1E1AF3C3C();
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  if (a1)
  {
    v91 = v20;
    v88 = v9;
    v84 = v19;
    v93 = &v72 - v18;
    v89 = v15;
    v21 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title + 8);
    v80 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title);
    v22 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle + 8);
    v79 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle);
    v23 = a2;
    if (!a2)
    {
    }

    v87 = v23;
    v83 = v12;
    v73 = v6;
    v24 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
    swift_beginAccess();
    v25 = *(a1 + v24);
    v26 = MEMORY[0x1E69E7CC0];
    v95 = MEMORY[0x1E69E7CC0];
    v27 = *(v25 + 16);
    v28 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;
    v81 = a2;

    swift_beginAccess();
    v29 = v22;
    v92 = v16;
    if (v27)
    {
      v30 = 0;
      v31 = v25 + 32;
      v86 = v27 - 1;
      v82 = MEMORY[0x1E69E7CC0];
      v90 = v25 + 32;
      while (1)
      {
        v32 = v31 + 40 * v30;
        v33 = v30;
        while (1)
        {
          if (v33 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          sub_1E134E724(v32, v96);
          if (*(*(a1 + v28) + 16))
          {
            break;
          }

LABEL_7:
          ++v33;
          sub_1E134B88C(v96);
          v32 += 40;
          if (v27 == v33)
          {
            v16 = v92;
            goto LABEL_19;
          }
        }

        sub_1E135FCF4(v96);
        if ((v34 & 1) == 0)
        {
          break;
        }

        v35 = sub_1E134B88C(v96);
        MEMORY[0x1E68FEF20](v35);
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v30 = v33 + 1;
        sub_1E1AF62AC();
        v82 = v95;
        v16 = v92;
        v36 = v91;
        v31 = v90;
        if (v86 == v33)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_7;
    }

    v82 = v26;
LABEL_19:
    v36 = v91;
LABEL_20:

    v37 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup);
    v38 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup);
    v85 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction);
    v78 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete);
    memset(v96, 0, sizeof(v96));
    v39 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v76 = *(v36 + 16);
    v76(v93, a1 + v39, v16);
    v86 = *(a1 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    v77 = sub_1E1AF39DC();
    v90 = *(v77 - 8);
    v40 = v89;
    (*(v90 + 56))(v89, 1, 1, v77);
    v75 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode);
    v74 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose);
    type metadata accessor for ArticlePage();
    v25 = swift_allocObject();
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_editorialStoryCard) = 0;
    v41 = (v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title);
    *v41 = v80;
    v41[1] = v21;
    v42 = (v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle);
    *v42 = v79;
    v42[1] = v29;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card) = v87;

    v43 = v85;

    v44 = sub_1E175EC2C(v82);
    v46 = v45;

    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering) = v44;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping) = v46;
    v82 = v37;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup) = v37;
    v80 = v38;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup) = v38;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction) = v43;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete) = v78;
    sub_1E134FD1C(v96, v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage, &qword_1ECEB2DF0);
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode) = v75;
    v48 = v92;
    v47 = v93;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose) = v74;
    v49 = v84;
    v50 = v76;
    v76(v84, v47, v48);
    v51 = v83;
    sub_1E134FD1C(v40, v83, &qword_1ECEB3B28);
    *(v25 + 16) = 0;
    v50(v25 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v49, v48);
    *(v25 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v86;
    v52 = v88;
    v53 = v77;
    sub_1E134FD1C(v51, v88, &qword_1ECEB3B28);
    v54 = *(v90 + 48);
    if (v54(v52, 1, v53) == 1)
    {

      sub_1E1308058(v51, &qword_1ECEB3B28);
      v55 = *(v91 + 8);
      v55(v49, v48);
      sub_1E1308058(v89, &qword_1ECEB3B28);
      v55(v93, v48);
      sub_1E1308058(v96, &qword_1ECEB2DF0);
      v56 = v52;
    }

    else
    {
      v79 = v54;
      v21 = v53;
      v57 = qword_1EE1E3BC8;

      if (v57 != -1)
      {
LABEL_34:
        swift_once();
      }

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v58, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      sub_1E1AF39EC();
      v59 = v94;
      v60 = v73;
      if (v94)
      {
      }

      v61 = *(v90 + 8);
      v62 = v21;
      v90 += 8;
      v61(v88, v21);
      if (!v59)
      {

        sub_1E1308058(v83, &qword_1ECEB3B28);
        v67 = v92;
        v68 = *(v91 + 8);
        v68(v84, v92);
        sub_1E1308058(v89, &qword_1ECEB3B28);
        v68(v93, v67);
        v66 = &qword_1ECEB2DF0;
        v56 = v96;
        goto LABEL_30;
      }

      v63 = v83;
      sub_1E134FD1C(v83, v60, &qword_1ECEB3B28);
      if (v79(v60, 1, v62) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v63, &qword_1ECEB3B28);
        v70 = v92;
        v71 = *(v91 + 8);
        v71(v84, v92);
        sub_1E1308058(v89, &qword_1ECEB3B28);
        v71(v93, v70);
        sub_1E1308058(v96, &qword_1ECEB2DF0);
        v61(v60, v62);
        return v25;
      }

      sub_1E1308058(v63, &qword_1ECEB3B28);
      v64 = v92;
      v65 = *(v91 + 8);
      v65(v84, v92);
      sub_1E1308058(v89, &qword_1ECEB3B28);
      v65(v93, v64);
      sub_1E1308058(v96, &qword_1ECEB2DF0);
      v56 = v60;
    }

    v66 = &qword_1ECEB3B28;
LABEL_30:
    sub_1E1308058(v56, v66);
    return v25;
  }

  return 0;
}

uint64_t ArticlePage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title);

  return v1;
}

uint64_t ArticlePage.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle);

  return v1;
}

uint64_t sub_1E1827F2C(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();

  v5 = sub_1E14E6CA4(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_1E1827FB8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v69 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v69 - v12;
  v82 = sub_1E1AF3C3C();
  v13 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v69 - v16;
  v77 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card);
  v17 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for ArticlePage);
  v18 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  v21 = *(v19 + 2);
  v22 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  v84 = v13;
  if (!v21)
  {
    goto LABEL_14;
  }

  v23 = 0;
  v24 = v19 + 32;
  v80 = v21 - 1;
  v88 = v17;
  v83 = v19 + 32;
  do
  {
    v25 = &v24[40 * v23];
    v26 = v23;
    while (1)
    {
      if (v26 >= *(v19 + 2))
      {
        __break(1u);
        goto LABEL_33;
      }

      sub_1E134E724(v25, v91);
      if (*(*(a1 + v22) + 16))
      {
        break;
      }

LABEL_4:
      ++v26;
      sub_1E134B88C(v91);
      v25 += 40;
      if (v21 == v26)
      {
        v13 = v84;
        v17 = v88;
        goto LABEL_14;
      }
    }

    sub_1E135FCF4(v91);
    if ((v27 & 1) == 0)
    {

      goto LABEL_4;
    }

    v28 = sub_1E134B88C(v91);
    MEMORY[0x1E68FEF20](v28);
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v23 = v26 + 1;
    sub_1E1AF62AC();
    v20 = v90;
    v13 = v84;
    v17 = v88;
    v24 = v83;
  }

  while (v80 != v26);
LABEL_14:

  *&v91[0] = v17;
  sub_1E1728208(v20);
  v29 = *&v91[0];
  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete))
  {
    v30 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete);
  }

  else
  {
    v30 = 0;
  }

  v31 = v86;
  v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup);
  v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup);
  v34 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction);
  memset(v91, 0, 32);
  v35 = *(v2 + 16);
  v83 = v34;
  v76 = v32;
  v75 = v29;
  v74 = v30;
  if (v35)
  {
    v79 = sub_1E16F6684(*(a1 + 16));
  }

  else
  {
    v79 = *(a1 + 16);
  }

  v36 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v72 = *(v13 + 16);
  v37 = v82;
  v72(v31, v2 + v36, v82);
  v73 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  v80 = sub_1E1AF39DC();
  v88 = *(v80 - 8);
  v38 = v87;
  (*(v88 + 56))(v87, 1, 1, v80);
  v71 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode);
  v70 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose);
  type metadata accessor for ArticlePage();
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_editorialStoryCard) = 0;
  v39 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_title);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_subtitle);
  *v40 = 0;
  v40[1] = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card) = v77;

  v41 = v31;
  v42 = sub_1E175EC2C(v75);
  v44 = v43;

  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering) = v42;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping) = v44;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup) = v76;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup) = v33;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction) = v83;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete) = v74;
  sub_1E134FD1C(v91, v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage, &qword_1ECEB2DF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode) = v71;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose) = v70;
  v19 = v78;
  v45 = v41;
  v46 = v72;
  v72(v78, v45, v37);
  v47 = v38;
  v48 = v81;
  sub_1E134FD1C(v47, v81, &qword_1ECEB3B28);
  *(v2 + 16) = v79;
  v46(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v19, v37);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v73;
  v49 = v80;
  v50 = v85;
  sub_1E134FD1C(v48, v85, &qword_1ECEB3B28);
  v77 = *(v88 + 48);
  if (v77(v50, 1, v49) == 1)
  {

    sub_1E1308058(v48, &qword_1ECEB3B28);
    v51 = *(v84 + 8);
    v51(v19, v37);
    sub_1E1308058(v87, &qword_1ECEB3B28);
    v51(v86, v37);
    sub_1E1308058(v91, &qword_1ECEB2DF0);
    v52 = v50;
    v53 = &qword_1ECEB3B28;
    goto LABEL_29;
  }

  v54 = qword_1EE1E3BC8;

  if (v54 != -1)
  {
LABEL_33:
    swift_once();
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
  __swift_project_value_buffer(v55, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
  sub_1E1AF39EC();
  v56 = v89;
  v57 = v69;
  if (v89)
  {
  }

  v58 = *(v88 + 8);
  v59 = v80;
  v88 += 8;
  v58(v85, v80);
  if (v56)
  {
    v60 = v81;
    sub_1E134FD1C(v81, v57, &qword_1ECEB3B28);
    if (v77(v57, 1, v59) == 1)
    {

      sub_1E1308058(v60, &qword_1ECEB3B28);
      v61 = *(v84 + 8);
      v62 = v82;
      v61(v78, v82);
      sub_1E1308058(v87, &qword_1ECEB3B28);
      v61(v86, v62);
      sub_1E1308058(v91, &qword_1ECEB2DF0);
      v52 = v57;
      v53 = &qword_1ECEB3B28;
      goto LABEL_29;
    }

    sub_1E15F0974();

    sub_1E1308058(v60, &qword_1ECEB3B28);
    v67 = *(v84 + 8);
    v68 = v82;
    v67(v78, v82);
    sub_1E1308058(v87, &qword_1ECEB3B28);
    v67(v86, v68);
    sub_1E1308058(v91, &qword_1ECEB2DF0);
    v58(v57, v59);
  }

  else
  {

    sub_1E1308058(v81, &qword_1ECEB3B28);
    v63 = *(v84 + 8);
    v64 = v19;
    v65 = v82;
    v63(v64, v82);
    sub_1E1308058(v87, &qword_1ECEB3B28);
    v63(v86, v65);
    v53 = &qword_1ECEB2DF0;
    v52 = v91;
LABEL_29:
    sub_1E1308058(v52, v53);
  }

  return v2;
}

uint64_t sub_1E1828B08()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage, &qword_1ECEB2DF0);
}

uint64_t ArticlePage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ArticlePage.__deallocating_deinit()
{
  ArticlePage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1828DE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E1827FB8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1E1828E1C()
{
  result = qword_1ECEB9F60;
  if (!qword_1ECEB9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F60);
  }

  return result;
}

uint64_t AutoScrollConfiguration.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  sub_1E1AF381C();
  v17 = sub_1E1AF370C();
  v34 = v17;
  v35 = v17;
  v18 = *(v5 + 8);
  v18(v16, v4);
  sub_1E1AF381C();
  v33 = sub_1E1AF379C();
  v32 = v19;
  v18(v13, v4);
  sub_1E1AF381C();
  v31 = sub_1E1AF379C();
  v21 = v20;
  v18(v10, v4);
  sub_1E1AF381C();
  v22 = sub_1E1AF379C();
  v24 = v23;
  v25 = sub_1E1AF39DC();
  (*(*(v25 - 8) + 8))(v36, v25);
  v18(a1, v4);
  result = (v18)(v7, v4);
  v27 = *&v33;
  if (v32)
  {
    v27 = 7.0;
  }

  v28 = *&v31;
  if (v21)
  {
    v28 = 3.0;
  }

  v29 = *&v22;
  v30 = v37;
  *v37 = (v34 == 2) | v35 & 1;
  if (v24)
  {
    v29 = 30.0;
  }

  v30[1] = v27;
  v30[2] = v29;
  v30[3] = v28;
  return result;
}

AppStoreKit::AutoScrollConfiguration __swiftcall AutoScrollConfiguration.init(isAutoScrollEnabled:autoScrollInterval:autoScrollRestartDelay:autoScrollMaxInterval:)(Swift::Bool_optional isAutoScrollEnabled, Swift::Double_optional autoScrollInterval, Swift::Double_optional autoScrollRestartDelay, Swift::Double_optional autoScrollMaxInterval)
{
  v8 = *&autoScrollInterval.is_nil;
  if (autoScrollRestartDelay.is_nil)
  {
    v8 = 7.0;
  }

  v9 = *&autoScrollMaxInterval.is_nil;
  if (v4)
  {
    v9 = 3.0;
  }

  v10 = v5;
  *v7 = isAutoScrollEnabled.value == 2 || isAutoScrollEnabled.value;
  if (v6)
  {
    v10 = 30.0;
  }

  *(v7 + 8) = v8;
  *(v7 + 16) = v10;
  *(v7 + 24) = v9;
  result.autoScrollRestartDelay = v10;
  result.autoScrollMaxInterval = v9;
  result.autoScrollInterval = v8;
  result.isAutoScrollEnabled = isAutoScrollEnabled.value;
  return result;
}

uint64_t AutoScrollConfiguration.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_1E1AF764C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1E6900390](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E6900390](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x1E6900390](*&v6);
}

uint64_t AutoScrollConfiguration.hashValue.getter()
{
  sub_1E1AF762C();
  AutoScrollConfiguration.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E1829498()
{
  sub_1E1AF762C();
  AutoScrollConfiguration.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E18294F8()
{
  sub_1E1AF762C();
  AutoScrollConfiguration.hash(into:)();
  return sub_1E1AF767C();
}

BOOL _s11AppStoreKit23AutoScrollConfigurationV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return a1[3] == a2[3];
  }

  return result;
}

unint64_t sub_1E1829598()
{
  result = qword_1ECEB9F68;
  if (!qword_1ECEB9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F68);
  }

  return result;
}

uint64_t sub_1E18295EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E1829640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *PageGrid.init(from:breakpointOverrides:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = a1 + *(type metadata accessor for ShelfLayoutContext() + 28);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (v8)
  {
    sub_1E1AF6FEC();

    __src[0] = v7;
    __src[1] = v8;
    MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B78A50);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v6 + 16);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(v7, v9, &v11, *(v6 + 272), a2, __src, *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96));
  sub_1E14C5D1C(a1);
  return memcpy(a3, __src, 0x188uLL);
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.selectedOption.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16);
  v7[0] = *(v1 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
  v7[1] = v2;
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 48);
  v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 32);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1E1829D34(v7, &v6);
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *v3;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v36 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v43 = sub_1E1AF380C();
  v42 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v50 = a1;
  sub_1E1AF381C();
  v40 = *(v7 + 16);
  v40(v13, a2, v6);
  v19 = v41;
  PageFacets.Facet.init(deserializing:using:)(v18, v13, v48);
  if (v19)
  {
    (*(v7 + 8))(a2, v6);
    (*(v42 + 8))(v50, v43);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v7;
    v20 = v3 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet;
    v21 = v48[7];
    *(v20 + 6) = v48[6];
    *(v20 + 7) = v21;
    *(v20 + 16) = v49;
    v22 = v48[3];
    *(v20 + 2) = v48[2];
    *(v20 + 3) = v22;
    v23 = v48[5];
    *(v20 + 4) = v48[4];
    *(v20 + 5) = v23;
    v24 = v48[1];
    *v20 = v48[0];
    *(v20 + 1) = v24;
    v25 = v50;
    sub_1E1AF381C();
    v40(v36, a2, v6);
    sub_1E166FAB8();
    sub_1E1AF464C();
    v26 = (v3 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
    v27 = v45;
    *v26 = v44;
    v26[1] = v27;
    v28 = v47;
    v26[2] = v46;
    v26[3] = v28;
    v29 = v42;
    v30 = v37;
    v31 = v25;
    v32 = v6;
    v33 = v43;
    (*(v42 + 16))(v37, v31, v43);
    v34 = v38;
    v40(v38, a2, v32);
    v6 = Action.init(deserializing:using:)(v30, v34);
    (*(v41 + 8))(a2, v32);
    (*(v29 + 8))(v50, v33);
  }

  return v6;
}

uint64_t sub_1E1829D34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1829DD4()
{
  sub_1E141D144(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet);
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16);
  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24);

  return sub_1E1829F24(v1, v2, v3, v4);
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  sub_1E141D144(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet);
  sub_1E1829F24(*(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption), *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24));
  return v0;
}

uint64_t sub_1E1829F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t ArcadeSeeAllGamesPageSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  v3 = OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_facet;

  sub_1E141D144(v0 + v3);
  sub_1E1829F24(*(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption), *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit40ArcadeSeeAllGamesPageSegmentChangeAction_selectedOption + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction()
{
  result = qword_1ECEB9F78;
  if (!qword_1ECEB9F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ReviewSummaryLayout.Metrics.contentPadding.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t ReviewSummaryLayout.Metrics.init(subtitleTopSpace:contentPadding:)@<X0>(__int128 *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  result = sub_1E1308EC0(a1, a2);
  a2[5] = a3;
  a2[6] = a4;
  a2[7] = a5;
  a2[8] = a6;
  return result;
}

uint64_t ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v6;
  *(a4 + 64) = *(a1 + 64);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  sub_1E1308EC0(a2, a4 + 72);

  return sub_1E1308EC0(a3, a4 + 112);
}

uint64_t ReviewSummaryLayout.layout.getter()
{
  v1 = v0;
  v2 = sub_1E1AF13EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  sub_1E1AF13CC();
  sub_1E1AF13DC();
  v13 = *(v3 + 8);
  v13(v5, v2);
  sub_1E182A5AC(v1, v20);
  v14 = swift_allocObject();
  v15 = v20[7];
  *(v14 + 112) = v20[6];
  *(v14 + 128) = v15;
  *(v14 + 144) = v20[8];
  *(v14 + 160) = v21;
  v16 = v20[3];
  *(v14 + 48) = v20[2];
  *(v14 + 64) = v16;
  v17 = v20[5];
  *(v14 + 80) = v20[4];
  *(v14 + 96) = v17;
  v18 = v20[1];
  *(v14 + 16) = v20[0];
  *(v14 + 32) = v18;
  v22[3] = v2;
  v22[4] = MEMORY[0x1E69AB8F8];
  __swift_allocate_boxed_opaque_existential_0(v22);
  sub_1E1AF13DC();

  v13(v8, v2);
  return MEMORY[0x1E68FA900](v22, v9, v10, v11, v12);
}

uint64_t sub_1E182A560(uint64_t a1, uint64_t a2)
{
  sub_1E182A238(a2, v4);
  sub_1E1308EC0(v4, &v3);
  return sub_1E1AF134C();
}

unint64_t sub_1E182A5F0()
{
  result = qword_1EE1DC830;
  if (!qword_1EE1DC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DC830);
  }

  return result;
}