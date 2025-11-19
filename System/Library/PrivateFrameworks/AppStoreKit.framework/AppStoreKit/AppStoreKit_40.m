uint64_t sub_1E16E1660()
{
}

uint64_t TodayCardMediaBrandedSingleApp.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaBrandedSingleApp.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaBrandedSingleApp()
{
  result = qword_1EE1E1E00;
  if (!qword_1EE1E1E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall ConfigurableOfferButton.apply(outlineShapePath:isIndeterminateProgress:animated:)(CGPathRef outlineShapePath, Swift::Bool isIndeterminateProgress, Swift::Bool animated)
{
  v5 = v4;
  v6 = v3;
  v10 = *(v4 + 72);
  v11 = v10();
  v12 = 0.0;
  [v11 setCornerRadius_];

  v44 = MEMORY[0x1E69E7CC0];
  v13 = (v10)(v6, v5);
  v14 = [v13 presentationLayer];

  if (v14)
  {
    v15 = [v14 path];

    if (v15)
    {
      if (!animated)
      {

        if (isIndeterminateProgress)
        {
          v12 = 0.1;
        }

        else
        {
          v12 = 0.0;
        }

        goto LABEL_19;
      }

      v42 = animated;
      v16 = sub_1E1AF5DBC();
      v17 = outlineShapePath;
      v18 = [objc_opt_self() animationWithKeyPath_];

      [v18 setFromValue_];
      [v18 setToValue_];
      v19 = v18;
      MEMORY[0x1E68FEF20]([v19 setRemovedOnCompletion_]);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();

      if (isIndeterminateProgress)
      {
        v12 = 0.1;
      }

      else
      {
        v12 = 0.0;
      }

      outlineShapePath = v17;
      animated = v42;
      goto LABEL_13;
    }
  }

  if (isIndeterminateProgress)
  {
    v12 = 0.1;
  }

  if (animated)
  {
LABEL_13:
    v20 = sub_1E1AF5DBC();
    v21 = [objc_opt_self() animationWithKeyPath_];

    v22 = (v10)(v6, v5);
    [v22 strokeStart];

    v23 = sub_1E1AF053C();
    [v21 setFromValue_];

    v24 = sub_1E1AF053C();
    [v21 setToValue_];

    v25 = v21;
    MEMORY[0x1E68FEF20]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
  }

LABEL_19:
  v26 = (v10)(v6, v5);
  [v26 setStrokeStart_];

  if (isIndeterminateProgress)
  {
    v27 = 0.9;
  }

  else
  {
    v27 = 1.0;
  }

  if (animated)
  {
    v28 = sub_1E1AF5DBC();
    v29 = [objc_opt_self() animationWithKeyPath_];

    v30 = (v10)(v6, v5);
    [v30 strokeEnd];

    v31 = sub_1E1AF053C();
    [v29 setFromValue_];

    v32 = sub_1E1AF053C();
    [v29 setToValue_];

    v33 = v29;
    MEMORY[0x1E68FEF20]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
  }

  v34 = (v10)(v6, v5);
  [v34 setStrokeEnd_];

  if (animated)
  {
    v35 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
    v36 = objc_opt_self();
    v37 = v35;
    [v36 animationDuration];
    [v37 setDuration_];
    v38 = [objc_opt_self() functionWithName_];
    [v37 setTimingFunction_];

    sub_1E16E1FEC();
    v39 = sub_1E1AF620C();

    [v37 setAnimations_];

    v40 = (v10)(v6, v5);
    v41 = sub_1E1AF5DBC();
    [v40 addAnimation:v37 forKey:v41];
  }

  else
  {
  }

  v43 = (v10)(v6, v5);
  [v43 setPath_];
}

unint64_t sub_1E16E1FEC()
{
  result = qword_1EE1E34C0;
  if (!qword_1EE1E34C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E34C0);
  }

  return result;
}

void (*sub_1E16E2044(void *a1))(void *)
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
  v2[4] = ConfigurableOfferButton.glassTintColor.modify(v2);
  return sub_1E15255B8;
}

void (*sub_1E16E20E8(void *a1))(void *)
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
  v2[4] = ConfigurableOfferButton.largeContentImage.modify(v2);
  return sub_1E15262E4;
}

void (*sub_1E16E2190(void *a1))(void *)
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
  v2[4] = ConfigurableOfferButton.largeContentTitle.modify(v2);
  return sub_1E15262E4;
}

uint64_t (*ConfigurableOfferButton.largeContentTitle.modify(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1E16E221C;
}

void ConfigurableOfferButton.apply(cornerRadius:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 72);
  v7 = v6();
  [v7 setPath_];

  v8 = (v6)(a1, a2);
  [v8 setCornerRadius_];
}

uint64_t GuidedSearchResult.__allocating_init(id:title:tokens:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtC11AppStoreKit18GuidedSearchResult_title);
  *v17 = a2;
  v17[1] = a3;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit18GuidedSearchResult_tokens) = a4;
  sub_1E134FD1C(a1, v28, &unk_1ECEB5670);
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0;
  sub_1E134FD1C(a5, v16 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v28, &v25, &unk_1ECEB5670);
  if (*(&v26 + 1))
  {
    v18 = v26;
    *(v16 + 24) = v25;
    *(v16 + 40) = v18;
    *(v16 + 56) = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v24[0] = v19;
    v24[1] = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v25, &unk_1ECEB5670);
  }

  sub_1E1308058(a5, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v28, &unk_1ECEB5670);
  *(v16 + 16) = 1793;
  v22 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v16 + v22) = a6;
  return v16;
}

uint64_t GuidedSearchResult.init(id:title:tokens:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a6;
  v27 = sub_1E1AEFEAC();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = (v7 + OBJC_IVAR____TtC11AppStoreKit18GuidedSearchResult_title);
  *v18 = a2;
  v18[1] = a3;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit18GuidedSearchResult_tokens) = a4;
  v28 = a1;
  sub_1E134FD1C(a1, v38, &unk_1ECEB5670);
  sub_1E134FD1C(a5, v17, &unk_1ECEB1770);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v38, &v32, &unk_1ECEB5670);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v26 + 8))(v14, v27);
    v30 = v19;
    v31 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670);
  }

  sub_1E1308058(a5, &unk_1ECEB1770);
  sub_1E1308058(v28, &unk_1ECEB5670);
  sub_1E1308058(v38, &unk_1ECEB5670);
  v22 = v36;
  *(v7 + 24) = v35;
  *(v7 + 40) = v22;
  *(v7 + 56) = v37;
  *(v7 + 96) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  sub_1E134B7C8(v17, v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v7 + 16) = 1793;
  v23 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v7 + v23) = v29;

  return v7;
}

uint64_t GuidedSearchResult.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit18GuidedSearchResult_title);

  return v1;
}

uint64_t sub_1E16E2A70()
{
}

uint64_t GuidedSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t GuidedSearchResult.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16E2C38(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v44 - v4;
  v5 = sub_1E1AF39DC();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v20 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v56 = v11;
  v47 = v7;
  v46 = v8;
  v45 = v10;
  if (v22)
  {
    v66 = v21;
    v67 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v66 = v23;
    v67 = v25;
    v11 = v56;
  }

  sub_1E1AF6F6C();
  v26 = *(v12 + 8);
  v26(v19, v11);
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v51 = v27;
  v55 = v26;
  v54 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v17, v11);
  sub_1E1AF381C();
  v48 = *(v57 + 16);
  v28 = v53;
  v29 = v58;
  v30 = v59;
  v48(v53, v59, v58);
  type metadata accessor for GuidedSearchToken();
  sub_1E16E344C(&qword_1EE1DEB48, type metadata accessor for GuidedSearchToken);
  v50 = sub_1E1AF630C();
  sub_1E1AF46DC();
  v31 = v20;
  sub_1E1AF381C();
  v32 = v48;
  v48(v28, v30, v29);
  sub_1E1AF464C();
  type metadata accessor for SearchAdOpportunity();
  sub_1E1AF381C();
  v32(v28, v30, v29);
  sub_1E16E344C(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
  sub_1E1AF464C();
  v33 = v69;
  type metadata accessor for GuidedSearchResult();
  v34 = swift_allocObject();
  v35 = (v34 + OBJC_IVAR____TtC11AppStoreKit18GuidedSearchResult_title);
  v36 = v51;
  *v35 = v52;
  v35[1] = v36;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit18GuidedSearchResult_tokens) = v50;
  sub_1E134FD1C(v68, &v66, &unk_1ECEB5670);
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 96) = 0;
  sub_1E134FD1C(v60, v34 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);
  *(v34 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(&v66, &v63, &unk_1ECEB5670);
  if (*(&v64 + 1))
  {
    v37 = v64;
    *(v34 + 24) = v63;
    *(v34 + 40) = v37;
    *(v34 + 56) = v65;
  }

  else
  {
    v38 = v45;
    sub_1E1AEFE9C();
    v39 = sub_1E1AEFE7C();
    v41 = v40;
    (*(v46 + 8))(v38, v47);
    v61 = v39;
    v62 = v41;
    sub_1E1AF6F6C();
    sub_1E1308058(&v63, &unk_1ECEB5670);
  }

  (*(v57 + 8))(v59, v58);
  v55(v31, v56);
  sub_1E1308058(&v66, &unk_1ECEB5670);
  sub_1E1308058(v60, &unk_1ECEB1770);
  sub_1E1308058(v68, &unk_1ECEB5670);
  *(v34 + 16) = 1793;
  v42 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v34 + v42) = v33;
  return v34;
}

uint64_t type metadata accessor for GuidedSearchResult()
{
  result = qword_1ECEB7D28;
  if (!qword_1ECEB7D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16E344C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E16E3494(void *a1)
{
  v3 = [v1 length];
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    while ([a1 characterIsMember_])
    {
      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }
  }

  return [v1 deleteCharactersInRange_];
}

uint64_t sub_1E16E354C(void *a1)
{
  result = [v1 length];
  v4 = result;
  if (result < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      result = [a1 characterIsMember_];
      if (!result)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  if (v5 == v4)
  {
    goto LABEL_18;
  }

  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (v6 >= v5)
  {
    result = [a1 characterIsMember_];
    if (!result)
    {
      break;
    }

    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (__OFADD__(v6, 1))
  {
    goto LABEL_22;
  }

  v8 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFSUB__(v8, 1))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  [v1 deleteCharactersInRange_];
  v4 = v5;
LABEL_18:

  return [v1 deleteCharactersInRange_];
}

void sub_1E16E36A0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v21 = objc_opt_self();
  v7 = [v21 valueWithNewObjectInContext_];
  if (v7)
  {
    v8 = v7;
    v9 = *(v2 + 16);
    if (v9 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
    {
      v11 = MEMORY[0x1E69E7CC0];
      v20 = v4;
      if (!i)
      {
        break;
      }

      v24 = MEMORY[0x1E69E7CC0];
      sub_1E135C9E0(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_25;
      }

      v22 = a1;
      v18 = a2;
      v19 = v8;
      v8 = 0;
      v11 = v24;
      while (1)
      {
        a2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v4 = v22;
        if ((v9 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E68FFD80](v8, v9);
        }

        else
        {
          if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }
        }

        ArcadeDownloadPackCategory.jsRepresentation(in:)(v22, v23);
        if (v3)
        {

          return;
        }

        v24 = v11;
        v4 = *(v11 + 16);
        v12 = *(v11 + 24);
        a1 = (v4 + 1);
        if (v4 >= v12 >> 1)
        {
          sub_1E135C9E0((v12 > 1), v4 + 1, 1);
          v11 = v24;
        }

        *(v11 + 16) = a1;
        sub_1E1361B28(v23, v11 + 40 * v4 + 32);
        ++v8;
        if (a2 == i)
        {
          a2 = v18;
          v8 = v19;
          a1 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_18:
    *&v23[0] = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D50);
    v13 = [v21 valueWithObject:sub_1E1AF755C() inContext:a1];
    swift_unknownObjectRelease();
    if (!v13)
    {
      goto LABEL_26;
    }

    sub_1E1AF6C5C();
    v14 = *(v20 + 32);
    *&v23[0] = *(v20 + 24);
    *(&v23[0] + 1) = v14;

    v15 = [v21 valueWithObject:sub_1E1AF755C() inContext:a1];
    swift_unknownObjectRelease();
    if (v15)
    {

      sub_1E1AF6C5C();
      v16 = sub_1E1434AFC();
      v17 = MEMORY[0x1E69AB728];
      a2[3] = v16;
      a2[4] = v17;
      *a2 = v8;
      return;
    }
  }

  else
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1E16E39D4()
{
  result = qword_1ECEB7D38;
  if (!qword_1ECEB7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7D38);
  }

  return result;
}

unint64_t sub_1E16E3A2C()
{
  result = qword_1ECEB7D40;
  if (!qword_1ECEB7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7D40);
  }

  return result;
}

unint64_t sub_1E16E3A84()
{
  result = qword_1ECEB7D48;
  if (!qword_1ECEB7D48)
  {
    type metadata accessor for ArcadeDownloadPackSuggestionsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7D48);
  }

  return result;
}

uint64_t *TodayCardMediaMediumLockupWithScreenshots.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v48 = sub_1E1AF380C();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v36 - v22;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_1E1AF464C();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_1E1AF381C();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  swift_allocObject();
  v28 = v42;
  v29 = MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_1E1308058(v43, &unk_1ECEB1770);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit41TodayCardMediaMediumLockupWithScreenshots_mediumAdLockupWithScreenshotsBackground) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_1E1308058(v43, &unk_1ECEB1770);
  }

  return v30;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.__allocating_init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaMediumLockupWithScreenshots.init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit41TodayCardMediaMediumLockupWithScreenshots_mediumAdLockupWithScreenshotsBackground) = a1;
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
  *(v3 + 16) = 12;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaMediumLockupWithScreenshots()
{
  result = qword_1ECEB7D58;
  if (!qword_1ECEB7D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BadgeViewRibbonLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t BadgeViewRibbonLayout.Metrics.captionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t BadgeViewRibbonLayout.Metrics.captionBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueEditorsChoiceSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueIconSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_1E1308EC0(a1, v1 + 200);
}

void BadgeViewRibbonLayout.Metrics.spacingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 280);
  *a1 = *(v1 + 272);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewRibbonLayout.Metrics.spacingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 272) = *result;
  *(v1 + 280) = v2;
  return result;
}

void BadgeViewRibbonLayout.Metrics.captionCappingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 288);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewRibbonLayout.Metrics.captionCappingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 288) = *result;
  *(v1 + 296) = v2;
  return result;
}

void BadgeViewRibbonLayout.Metrics.regularBadgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = a3;
  v4[42] = a4;
}

void BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = a3;
  v4[46] = a4;
}

__n128 BadgeViewRibbonLayout.Metrics.init(headingSpace:captionSpace:captionBottomSpace:badgeValueEditorsChoiceSpace:badgeValueIconSpace:badgeValueTextSpace:badgeValueBaselineOffset:badgeIconSize:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:regularBadgeInsets:accessibleBadgeInsets:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, char *a18, char a19, char *a20, uint64_t a21, __n128 a22, uint64_t a23, uint64_t a24)
{
  v34 = *a7;
  v35 = *(a7 + 8);
  v36 = *a8;
  v37 = *(a8 + 8);
  v38 = *a18;
  v39 = *a20;
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  sub_1E1308EC0(a3, a9 + 80);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  sub_1E1308EC0(a6, a9 + 200);
  *(a9 + 240) = a10;
  *(a9 + 248) = a11;
  *(a9 + 256) = a12;
  *(a9 + 264) = a13;
  *(a9 + 272) = v34;
  *(a9 + 280) = v35;
  *(a9 + 288) = v36;
  *(a9 + 296) = v37;
  *(a9 + 297) = v38;
  *(a9 + 298) = a19;
  *(a9 + 299) = v39;
  *(a9 + 304) = a21;
  *(a9 + 312) = a14;
  *(a9 + 320) = a15;
  *(a9 + 328) = a16;
  *(a9 + 336) = a17;
  result = a22;
  *(a9 + 344) = a22;
  *(a9 + 360) = a23;
  *(a9 + 368) = a24;
  return result;
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueSpace(with:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 297) - 3 > 0xA)
  {
    v3 = 200;
  }

  else
  {
    v3 = *&aX_2[8 * (*(v1 + 297) - 3)];
  }

  return sub_1E1300B24(v1 + v3, a1);
}

__n128 BadgeViewRibbonLayout.init(metrics:headingLabel:captionView:valueLabel:valueView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(a6, __src, 0x178uLL);
  sub_1E1308EC0(a2, a6 + 376);
  sub_1E1308EC0(a3, a6 + 496);
  v11 = *(a4 + 16);
  *(a6 + 416) = *a4;
  *(a6 + 432) = v11;
  *(a6 + 448) = *(a4 + 32);
  result = *a5;
  v13 = *(a5 + 16);
  *(a6 + 456) = *a5;
  *(a6 + 472) = v13;
  *(a6 + 488) = *(a5 + 32);
  return result;
}

void BadgeViewRibbonLayout.measurements(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = [a1 traitCollection];
  sub_1E1AF698C();

  sub_1E1AF6B5C();
  sub_1E134FD1C(v2 + 416, v17, &qword_1ECEB2AD0);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1E1AF11DC();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1E1308058(v17, &qword_1ECEB2AD0);
    v6 = 0.0;
  }

  sub_1E134FD1C(v2 + 456, v17, &qword_1ECEB4E00);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1E1AF11DC();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1E1308058(v17, &qword_1ECEB4E00);
    v8 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm((v2 + 496), *(v2 + 520));
  sub_1E1AF11DC();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1Tm((v2 + 376), *(v2 + 400));
  sub_1E1AF11DC();
  if (v6 == 0.0 || v8 == 0.0)
  {
    v13 = 0.0;
    if (v10 <= v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = 272;
  if (*(v2 + 280))
  {
    v12 = 264;
  }

  v13 = *(v2 + v12);
  if (v10 > v11)
  {
LABEL_14:
    v11 = v10;
  }

LABEL_15:
  v14 = v6 + v8 + v13;
  if (v14 > v11)
  {
    v11 = v14;
  }

  if (*(v2 + 288))
  {
    v11 = v14;
  }

  v15 = [a1 traitCollection];
  sub_1E1AF698C();

  v16 = [a1 traitCollection];
  _s11AppStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v2);
}

void static BadgeViewRibbonLayout.measurements(valueLabelWidth:viewSize:captionWidth:headingLabelWidth:fitting:using:in:)(uint64_t a1, id a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a3 == 0.0 || a4 == 0.0)
  {
    v10 = 0.0;
    if (a6 <= a7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 272;
  if (*(a1 + 280))
  {
    v9 = 264;
  }

  v10 = *(a1 + v9);
  if (a6 > a7)
  {
LABEL_8:
    a7 = a6;
  }

LABEL_9:
  v11 = a3 + a4 + v10;
  if (v11 > a7)
  {
    v12 = v11;
  }

  else
  {
    v12 = a7;
  }

  if (!*(a1 + 288))
  {
    v11 = v12;
  }

  v13 = [a2 traitCollection];
  sub_1E1AF698C();

  v14 = [a2 traitCollection];
  _s11AppStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1);
}

id BadgeViewRibbonLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v155 = a2;
  v13 = sub_1E1AF745C();
  v157 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  sub_1E1AF698C();

  v151 = a3;
  v152 = a4;
  v153 = a5;
  v154 = a6;
  sub_1E1AF6B0C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1Tm((v7 + 376), *(v7 + 400));
  sub_1E1AF11CC();
  v181.origin.x = v19;
  v181.origin.y = v21;
  v181.size.width = v23;
  v181.size.height = v25;
  MinX = CGRectGetMinX(v181);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E1AF12FC();
  v182.origin.x = v19;
  v182.origin.y = v21;
  v182.size.width = v23;
  v182.size.height = v25;
  CGRectGetWidth(v182);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 376), *(v7 + 400));
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v7 + 496), *(v7 + 520));
  sub_1E1AF11CC();
  v160 = v26;
  v27 = [a1 traitCollection];
  v28 = sub_1E1AF698C();

  v183.origin.x = v19;
  v183.origin.y = v21;
  v183.size.width = v23;
  v183.size.height = v25;
  CGRectGetMinX(v183);
  if ((v28 & 1) == 0)
  {
    v184.origin.x = v19;
    v184.origin.y = v21;
    v184.size.width = v23;
    v184.size.height = v25;
    CGRectGetWidth(v184);
  }

  v185.origin.x = v19;
  v185.origin.y = v21;
  v185.size.width = v23;
  v185.size.height = v25;
  CGRectGetMaxY(v185);
  MinX = v19;
  __swift_project_boxed_opaque_existential_1Tm((v7 + 80), *(v7 + 104));
  sub_1E1AF12CC();
  v29 = MinX;
  __swift_project_boxed_opaque_existential_1Tm((v7 + 496), *(v7 + 520));
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E134FD1C(v7 + 416, &v168, &qword_1ECEB2AD0);
  v30 = *(&v169 + 1);
  sub_1E1308058(&v168, &qword_1ECEB2AD0);
  if (v30 && *(v7 + 298) == 1)
  {
    sub_1E134FD1C(v7 + 416, &v178, &qword_1ECEB2AD0);
    v31 = *(&v179 + 1);
    if (*(&v179 + 1))
    {
      v32 = v180;
      v33 = __swift_project_boxed_opaque_existential_1Tm(&v178, *(&v179 + 1));
      *(&v169 + 1) = v31;
      v170 = *(v32 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v168);
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_0, v33, v31);
      __swift_destroy_boxed_opaque_existential_1(&v178);
    }

    else
    {
      sub_1E1308058(&v178, &qword_1ECEB2AD0);
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
    }

    v178 = v168;
    v179 = v169;
    v180 = v170;
    sub_1E134FD1C(v7 + 456, &v175, &qword_1ECEB4E00);
  }

  else
  {
    sub_1E134FD1C(v7 + 456, &v178, &qword_1ECEB4E00);
    sub_1E134FD1C(v7 + 416, &v175, &qword_1ECEB2AD0);
    v35 = *(&v176 + 1);
    if (*(&v176 + 1))
    {
      v36 = v177;
      v37 = __swift_project_boxed_opaque_existential_1Tm(&v175, *(&v176 + 1));
      *(&v169 + 1) = v35;
      v170 = *(v36 + 8);
      v38 = __swift_allocate_boxed_opaque_existential_0(&v168);
      (*(*(v35 - 8) + 16))(v38, v37, v35);
      __swift_destroy_boxed_opaque_existential_1(&v175);
    }

    else
    {
      sub_1E1308058(&v175, &qword_1ECEB2AD0);
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
    }

    v175 = v168;
    v176 = v169;
    v177 = v170;
  }

  sub_1E134FD1C(&v178, &v168, &qword_1ECEB4E00);
  v39 = *(&v169 + 1);
  sub_1E1308058(&v168, &qword_1ECEB4E00);
  if (!v39)
  {
    sub_1E134FD1C(&v175, &v168, &qword_1ECEB4E00);
    v40 = *(&v169 + 1);
    sub_1E1308058(&v168, &qword_1ECEB4E00);
    if (!v40)
    {
      goto LABEL_125;
    }
  }

  sub_1E134FD1C(&v178, &v168, &qword_1ECEB4E00);
  v41 = *(&v169 + 1);
  sub_1E1308058(&v168, &qword_1ECEB4E00);
  v42 = 0.0;
  if (v41)
  {
    sub_1E134FD1C(&v175, &v168, &qword_1ECEB4E00);
    v43 = *(&v169 + 1);
    sub_1E1308058(&v168, &qword_1ECEB4E00);
    if (v43)
    {
      v44 = 272;
      if (*(v7 + 280))
      {
        v44 = 264;
      }

      v42 = *(v7 + v44);
    }
  }

  sub_1E134FD1C(&v178, &v173, &qword_1ECEB4E00);
  if (!v174)
  {
    sub_1E1308058(&v173, &qword_1ECEB4E00);
    v156 = 0.0;
    v160 = 0.0;
    goto LABEL_35;
  }

  sub_1E1308EC0(&v173, &v168);
  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x7061726761726170 && v45 == 0xE900000000000068)
  {
    goto LABEL_23;
  }

  v46 = sub_1E1AF74AC();

  if (v46)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v47 == 0xED0000676E697461)
  {
    goto LABEL_23;
  }

  v48 = sub_1E1AF74AC();

  if (v48)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x736F507472616863 && v131 == 0xED00006E6F697469)
  {
    goto LABEL_23;
  }

  v132 = sub_1E1AF74AC();

  if (v132)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x676E69746172 && v133 == 0xE600000000000000)
  {
    goto LABEL_23;
  }

  v134 = sub_1E1AF74AC();

  if (v134)
  {
    goto LABEL_31;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x4373726F74696465 && v135 == 0xED00006563696F68)
  {
LABEL_23:

LABEL_31:
    __swift_project_boxed_opaque_existential_1Tm(&v168, *(&v169 + 1));
    sub_1E1AF11DC();
    v50 = v49;
    v156 = v51;
    v186.origin.x = v29;
    v186.origin.y = v21;
    v186.size.width = v23;
    v186.size.height = v25;
    Width = CGRectGetWidth(v186);
    if (Width >= v50)
    {
      Width = v50;
    }

    v160 = Width;
    goto LABEL_34;
  }

  v136 = sub_1E1AF74AC();

  if (v136)
  {
    goto LABEL_31;
  }

  sub_1E134FD1C(&v178, &v173, &qword_1ECEB4E00);
  if (v174)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
    sub_1E1AF115C();
    v160 = v137;
    v156 = v138;
    __swift_destroy_boxed_opaque_existential_1(&v173);
  }

  else
  {
    sub_1E1308058(&v173, &qword_1ECEB4E00);
    v160 = 0.0;
    v156 = 0.0;
  }

LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(&v168);
LABEL_35:
  sub_1E134FD1C(&v175, &v173, &qword_1ECEB4E00);
  if (v174)
  {
    sub_1E1308EC0(&v173, &v168);
    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x7061726761726170 && v53 == 0xE900000000000068)
    {
      goto LABEL_38;
    }

    v55 = sub_1E1AF74AC();

    if (v55)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v56 == 0xED0000676E697461)
    {
      goto LABEL_38;
    }

    v57 = sub_1E1AF74AC();

    if (v57)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x736F507472616863 && v139 == 0xED00006E6F697469)
    {
      goto LABEL_38;
    }

    v140 = sub_1E1AF74AC();

    if (v140)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x676E69746172 && v141 == 0xE600000000000000)
    {
      goto LABEL_38;
    }

    v142 = sub_1E1AF74AC();

    if (v142)
    {
      goto LABEL_45;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x4373726F74696465 && v143 == 0xED00006563696F68)
    {
LABEL_38:
    }

    else
    {
      v144 = sub_1E1AF74AC();

      if ((v144 & 1) == 0)
      {
        sub_1E134FD1C(&v175, &v173, &qword_1ECEB4E00);
        if (v174)
        {
          __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
          sub_1E1AF115C();
          v54 = v145;
          v148 = v146;
          __swift_destroy_boxed_opaque_existential_1(&v173);
        }

        else
        {
          sub_1E1308058(&v173, &qword_1ECEB4E00);
          v54 = 0.0;
          v148 = 0;
        }

LABEL_50:
        __swift_destroy_boxed_opaque_existential_1(&v168);
        goto LABEL_51;
      }
    }

LABEL_45:
    __swift_project_boxed_opaque_existential_1Tm(&v168, *(&v169 + 1));
    sub_1E1AF11DC();
    v59 = v58;
    v148 = v60;
    v187.origin.x = v29;
    v187.origin.y = v21;
    v187.size.width = v23;
    v187.size.height = v25;
    v61 = CGRectGetWidth(v187) - (v42 + v160);
    if (v61 >= v59)
    {
      v61 = v59;
    }

    if (v61 > 0.0)
    {
      v54 = v61;
    }

    else
    {
      v54 = 0.0;
    }

    goto LABEL_50;
  }

  sub_1E1308058(&v173, &qword_1ECEB4E00);
  v148 = 0;
  v54 = 0.0;
LABEL_51:
  v62 = *(v7 + 304);
  v149 = v54;
  if (v62 == 4)
  {
    v188.origin.x = v29;
    v188.origin.y = v21;
    v188.size.width = v23;
    v188.size.height = v25;
    v63 = CGRectGetMinX(v188);
  }

  else
  {
    v64 = v42 + v160 + v54;
    v189.origin.x = v29;
    v189.origin.y = v21;
    v189.size.width = v23;
    v189.size.height = v25;
    v63 = CGRectGetMidX(v189) + v64 * -0.5;
  }

  v159 = v63;
  sub_1E134FD1C(&v178, &v173, &qword_1ECEB4E00);
  v158 = v21;
  if (!v174)
  {
    sub_1E1308058(&v173, &qword_1ECEB4E00);
    v66 = 0.0;
    v150 = 0.0;
    v160 = 0.0;
    v156 = 0.0;
    goto LABEL_65;
  }

  sub_1E1308EC0(&v173, &v168);
  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x7061726761726170 && v65 == 0xE900000000000068)
  {
    goto LABEL_57;
  }

  v67 = sub_1E1AF74AC();

  if (v67)
  {
    goto LABEL_60;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v117 == 0xED0000676E697461)
  {
    goto LABEL_57;
  }

  v118 = sub_1E1AF74AC();

  if (v118)
  {
    goto LABEL_60;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x736F507472616863 && v119 == 0xED00006E6F697469)
  {
    goto LABEL_57;
  }

  v120 = sub_1E1AF74AC();

  if (v120)
  {
    goto LABEL_60;
  }

  LOBYTE(v173) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x676E69746172 && v121 == 0xE600000000000000)
  {
LABEL_57:
  }

  else
  {
    v122 = sub_1E1AF74AC();

    if ((v122 & 1) == 0)
    {

      v68 = v42;
      if (*(v7 + 297) - 3 > 0xA)
      {
        v123 = 200;
      }

      else
      {
        v123 = *&aX_2[8 * (*(v7 + 297) - 3)];
      }

      sub_1E1300B24(v7 + v123, &v166);
      sub_1E1308EC0(&v166, &v173);
      __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v71 = v147;
      (*(v157 + 8))(v16, v13);
      goto LABEL_64;
    }
  }

LABEL_60:
  v68 = v42;
  __swift_project_boxed_opaque_existential_1Tm(&v168, *(&v169 + 1));
  sub_1E1AF11CC();

  if (*(v7 + 297) - 3 > 0xA)
  {
    v69 = 200;
  }

  else
  {
    v69 = *&aX_2[8 * (*(v7 + 297) - 3)];
  }

  sub_1E1300B24(v7 + v69, &v166);
  sub_1E1308EC0(&v166, &v173);
  __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
  sub_1E1AF12FC();
  v71 = v70;
LABEL_64:
  __swift_destroy_boxed_opaque_existential_1(&v173);
  v190.origin.x = v29;
  v190.origin.y = v158;
  v190.size.width = v23;
  v190.size.height = v25;
  MinY = CGRectGetMinY(v190);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v74 = v73;
  (*(v157 + 8))(v16, v13);
  v150 = v71 + MinY + v74 - *(v7 + 240);
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v66 = v159;
  v42 = v68;
LABEL_65:
  sub_1E134FD1C(&v175, &v173, &qword_1ECEB4E00);
  if (v174)
  {
    sub_1E1308EC0(&v173, &v168);
    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x7061726761726170 && v75 == 0xE900000000000068)
    {
      goto LABEL_68;
    }

    v77 = sub_1E1AF74AC();

    if (v77)
    {
      goto LABEL_72;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v124 == 0xED0000676E697461)
    {
      goto LABEL_68;
    }

    v125 = sub_1E1AF74AC();

    if (v125)
    {
      goto LABEL_72;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x736F507472616863 && v126 == 0xED00006E6F697469)
    {
      goto LABEL_68;
    }

    v127 = sub_1E1AF74AC();

    if (v127)
    {
      goto LABEL_72;
    }

    LOBYTE(v173) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x676E69746172 && v128 == 0xE600000000000000)
    {
LABEL_68:
    }

    else
    {
      v129 = sub_1E1AF74AC();

      if ((v129 & 1) == 0)
      {

        v78 = v42;
        if (*(v7 + 297) - 3 > 0xA)
        {
          v130 = 200;
        }

        else
        {
          v130 = *&aX_2[8 * (*(v7 + 297) - 3)];
        }

        sub_1E1300B24(v7 + v130, &v166);
        sub_1E1308EC0(&v166, &v173);
        __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
        sub_1E13BC274();
        sub_1E1AF12DC();
        (*(v157 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(&v173);
LABEL_76:
        sub_1E134FD1C(&v178, &v173, &qword_1ECEB4E00);
        v80 = v174;
        sub_1E1308058(&v173, &qword_1ECEB4E00);
        if (v80)
        {
          v191.origin.x = v66;
          v191.origin.y = v150;
          v191.size.width = v160;
          v191.size.height = v156;
          v159 = v78 + CGRectGetMaxX(v191);
        }

        v192.origin.x = v29;
        v192.origin.y = v158;
        v192.size.width = v23;
        v192.size.height = v25;
        CGRectGetMinY(v192);
        __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
        sub_1E13BC274();
        sub_1E1AF12DC();
        (*(v157 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(&v168);
        v76 = *(&v179 + 1);
        if (*(&v179 + 1))
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }
    }

LABEL_72:
    v78 = v42;
    __swift_project_boxed_opaque_existential_1Tm(&v168, *(&v169 + 1));
    sub_1E1AF11CC();

    if (*(v7 + 297) - 3 > 0xA)
    {
      v79 = 200;
    }

    else
    {
      v79 = *&aX_2[8 * (*(v7 + 297) - 3)];
    }

    sub_1E1300B24(v7 + v79, &v166);
    sub_1E1308EC0(&v166, &v173);
    __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
    sub_1E1AF12FC();
    __swift_destroy_boxed_opaque_existential_1(&v173);
    v29 = MinX;
    goto LABEL_76;
  }

  sub_1E1308058(&v173, &qword_1ECEB4E00);
  v159 = 0.0;
  v149 = 0.0;
  v76 = *(&v179 + 1);
  if (*(&v179 + 1))
  {
LABEL_79:
    v81 = __swift_project_boxed_opaque_existential_1Tm(&v178, v76);
    v82 = *(v76 - 8);
    v83 = MEMORY[0x1EEE9AC00](v81);
    v85 = &v148 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v85, v83);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    (*(v82 + 8))(v85, v76);
  }

LABEL_80:
  v86 = *(&v176 + 1);
  if (*(&v176 + 1))
  {
    v87 = __swift_project_boxed_opaque_existential_1Tm(&v175, *(&v176 + 1));
    v88 = *(v86 - 8);
    v89 = MEMORY[0x1EEE9AC00](v87);
    v91 = &v148 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v88 + 16))(v91, v89);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    (*(v88 + 8))(v91, v86);
  }

  LOBYTE(v168) = *(v7 + 299);
  sub_1E134FD1C(v7 + 456, &v168 + 8, &qword_1ECEB4E00);
  sub_1E134FD1C(v7 + 416, &v171, &qword_1ECEB2AD0);
  if (v168 > 1u)
  {
    if (v168 == 2)
    {
      if (v170)
      {
        sub_1E1308EC0((&v168 + 8), &v173);
        __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
        __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
        sub_1E13BC274();
        sub_1E1AF12DC();
        v110 = v109;
        (*(v157 + 8))(v16, v13);
        v111 = sub_1E1AF114C();
        *(v112 + 8) = v110;
        v111(&v166, 0);
        __swift_destroy_boxed_opaque_existential_1(&v173);
        v98 = &qword_1ECEB2AD0;
        v99 = &v171;
        goto LABEL_124;
      }

LABEL_123:
      v98 = &unk_1ECEB5AD8;
      v99 = &v168;
      goto LABEL_124;
    }

    if (v168 == 3)
    {
      if (v170)
      {
        sub_1E1308EC0((&v168 + 8), &v173);
        __swift_project_boxed_opaque_existential_1Tm((v7 + 496), *(v7 + 520));
        sub_1E1AF115C();
        v92 = CGRectGetMinY(v193);
        __swift_project_boxed_opaque_existential_1Tm((v7 + 376), *(v7 + 400));
        sub_1E1AF115C();
        v93 = v92 - CGRectGetMaxY(v194);
        __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
        sub_1E1AF115C();
        v94 = (v93 - CGRectGetHeight(v195)) * 0.5;
        __swift_project_boxed_opaque_existential_1Tm(&v173, v174);
        __swift_project_boxed_opaque_existential_1Tm((v7 + 376), *(v7 + 400));
        sub_1E1AF115C();
        v95 = v94 + CGRectGetMaxY(v196);
        v96 = sub_1E1AF114C();
        *(v97 + 8) = v95;
        v96(&v166, 0);
        __swift_destroy_boxed_opaque_existential_1(&v173);
        v98 = &qword_1ECEB2AD0;
        v99 = &v171;
LABEL_124:
        sub_1E1308058(v99, v98);
LABEL_125:
        sub_1E1AF106C();
        sub_1E1308058(&v175, &qword_1ECEB4E00);
        return sub_1E1308058(&v178, &qword_1ECEB4E00);
      }

      goto LABEL_123;
    }

    if (!v170)
    {
      goto LABEL_123;
    }

    sub_1E134FD1C(&v168 + 8, &v173, &qword_1ECEB4E00);
    if (v172)
    {
      sub_1E1308EC0(&v173, &v166);
      sub_1E1308EC0(&v171, v164);
      __swift_project_boxed_opaque_existential_1Tm(&v166, v167);
      __swift_project_boxed_opaque_existential_1Tm(v164, v165);
      sub_1E1AF115C();
      MidY = CGRectGetMidY(v197);
      __swift_project_boxed_opaque_existential_1Tm(&v166, v167);
      sub_1E1AF115C();
      v114 = MidY + CGRectGetHeight(v198) * -0.5;
      v115 = sub_1E1AF114C();
      *(v116 + 8) = v114;
      v115(v163, 0);
      goto LABEL_99;
    }

LABEL_122:
    __swift_destroy_boxed_opaque_existential_1(&v173);
    goto LABEL_123;
  }

  if (!v168 || !v170)
  {
    goto LABEL_123;
  }

  sub_1E134FD1C(&v168 + 8, &v173, &qword_1ECEB4E00);
  if (!v172)
  {
    goto LABEL_122;
  }

  sub_1E1308EC0(&v173, &v166);
  sub_1E1308EC0(&v171, v164);
  __swift_project_boxed_opaque_existential_1Tm(&v166, v167);
  __swift_project_boxed_opaque_existential_1Tm(v164, v165);
  sub_1E1AF115C();
  v101 = v100;
  v102 = sub_1E1AF114C();
  *(v103 + 8) = v101;
  v102(v163, 0);
  sub_1E1300B24(&v166, v163);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0);
  sub_1E158664C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_99:
    __swift_destroy_boxed_opaque_existential_1(v164);
    __swift_destroy_boxed_opaque_existential_1(&v166);
    v98 = &qword_1ECEB4E00;
    v99 = (&v168 + 8);
    goto LABEL_124;
  }

  v104 = v162;
  __swift_project_boxed_opaque_existential_1Tm(v164, v165);
  result = sub_1E1AF148C();
  if (result)
  {
    v106 = result;
    result = [v104 font];
    if (result)
    {
      v107 = result;
      v108 = v104;
      [v106 ascender];
      [v106 capHeight];
      [v107 ascender];
      [v107 capHeight];
      [v108 frame];
      [v108 setFrame_];

      goto LABEL_99;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double _s11AppStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 80), *(a1 + 104));
  sub_1E1AF12EC();
  v3 = v2;
  __swift_project_boxed_opaque_existential_1Tm((a1 + 40), *(a1 + 64));
  sub_1E1AF12EC();
  v5 = v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, *(a1 + 24));
  sub_1E1AF12EC();
  v6 = *(a1 + 297);
  v8 = v7;
  if (((1 << v6) & 0x77F0) != 0)
  {
    v9 = v6 - 4;
    if (v9 > 9)
    {
      v10 = 200;
    }

    else
    {
      v10 = qword_1E1B29D38[v9];
    }

    sub_1E1300B24(a1 + v10, v17);
    sub_1E1308EC0(v17, v18);
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    sub_1E1AF12EC();
    v12 = v11 + *(a1 + 256);
  }

  else
  {
    v13 = v6 - 3;
    if (v13 > 7u)
    {
      v14 = 200;
    }

    else
    {
      v14 = qword_1E1B29CF8[v13];
    }

    sub_1E1300B24(a1 + v14, v17);
    sub_1E1308EC0(v17, v18);
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    sub_1E1AF12EC();
    v12 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v8 + v3 + v5 + v12;
}

uint64_t sub_1E16E71A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 536))
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

uint64_t sub_1E16E71EC(uint64_t result, int a2, int a3)
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
    *(result + 520) = 0u;
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
      *(result + 536) = 1;
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

    *(result + 536) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E16E72D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
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

uint64_t sub_1E16E7318(uint64_t result, int a2, int a3)
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
      *(result + 376) = 1;
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

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SearchAction.searchRequest(facetsPresenter:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFEAC();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term + 8))
  {
    v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
    v39 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term + 8);
    v40 = v5;
  }

  else
  {
    v39 = 0xE000000000000000;
    v40 = 0;
  }

  v38 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_origin);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source);
  v36 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source + 8);
  v37 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3060);
  sub_1E1AF690C();
  v35 = _s11AppStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v43);

  v34 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_entity);
  v33 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_spellCheckEnabled);
  v28 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_excludedTerms);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm + 8);
  v32 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm);
  v27 = v7;
  v29 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens);
  v9 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData);
  v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 8);
  v11 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 16);
  v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 24);
  v12 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 32);
  v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm + 8);
  v30 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v14 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 40);

  sub_1E13E2380(v9, v8, v11, v10, v12, v14);

  v15 = v31;
  sub_1E1AEFE9C();
  v16 = sub_1E1AEFE7C();
  v17 = v15;
  v19 = v18;
  result = (*(v41 + 8))(v17, v42);
  *a1 = v16;
  *(a1 + 8) = v19;
  v21 = v39;
  *(a1 + 16) = v40;
  *(a1 + 24) = v21;
  *(a1 + 32) = v38;
  v22 = v36;
  *(a1 + 40) = v37;
  *(a1 + 48) = v22;
  *(a1 + 56) = v35;
  LOBYTE(v22) = v33;
  *(a1 + 64) = v34;
  *(a1 + 65) = 0;
  *(a1 + 66) = v22;
  v23 = v32;
  *(a1 + 72) = v28;
  *(a1 + 80) = v23;
  v25 = v29;
  v24 = v30;
  *(a1 + 88) = v27;
  *(a1 + 96) = v25;
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  *(a1 + 120) = v11;
  *(a1 + 128) = v10;
  *(a1 + 136) = v12;
  *(a1 + 144) = v14;
  *(a1 + 152) = v24;
  *(a1 + 160) = v13;
  *(a1 + 168) = 0;
  return result;
}

uint64_t OpenGamesUIAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v33 = v4;
  v30 = *v4;
  v31 = v3;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v39 = sub_1E1AF380C();
  v36 = *(v39 - 8);
  v14 = MEMORY[0x1EEE9AC00](v39);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v35 = a1;
  sub_1E1AF381C();
  v32 = v8;
  v17 = *(v8 + 16);
  v34 = a2;
  v17(v13, a2, v7);
  sub_1E16E7B1C();
  sub_1E1AF464C();
  v18 = v38;
  if (v38 == 255)
  {
    v25 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v26 = 0x746567726174;
    v27 = v30;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v32 + 8))(v34, v7);
    (*(v36 + 8))(v35, v39);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v33 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target;
    *v19 = v37;
    v19[16] = v18;
    v20 = v35;
    (*(v36 + 16))(v16, v35, v39);
    v21 = v34;
    v22 = v7;
    v17(v11, v34, v7);
    v23 = v31;
    v24 = Action.init(deserializing:using:)(v16, v11);
    if (v23)
    {
      (*(v32 + 8))(v21, v7);
    }

    else
    {
      v7 = v24;
      (*(v32 + 8))(v21, v22);
    }

    (*(v36 + 8))(v20, v39);
  }

  return v7;
}

unint64_t sub_1E16E7B1C()
{
  result = qword_1EE1DAA18;
  if (!qword_1EE1DAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA18);
  }

  return result;
}

void *OpenGamesUIAction.__allocating_init(target:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v30 - v9;
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  v17 = v15 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target;
  *v17 = *a1;
  v17[16] = v16;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v12 + 16))(v14, a2, v11);
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = (v15 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v15 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v34, &v31);
  if (*(&v32 + 1))
  {
    v21 = v32;
    *v20 = v31;
    *(v20 + 1) = v21;
    *(v20 + 4) = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v23 = v4;
    v24 = a2;
    v25 = v22;
    v26 = v5;
    v28 = v27;
    (*(v26 + 8))(v7, v23);
    v30[1] = v25;
    v30[2] = v28;
    a2 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  (*(v12 + 8))(a2, v11);
  sub_1E1308058(v34, &unk_1ECEB5670);
  sub_1E134B7C8(v10, v15 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v15[2] = 0xD000000000000013;
  v15[3] = 0x80000001E1B71730;
  v15[4] = 0;
  v15[5] = 0;
  (*(v12 + 32))(v15 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v14, v11);
  return v15;
}

void *OpenGamesUIAction.init(target:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *(a1 + 16);
  v17 = v3 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target;
  *v17 = *a1;
  v17[16] = v15;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v14 + 16))(v16, a2, v13);
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = (v3 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  sub_1E138853C(v34, &v28);
  if (*(&v29 + 1))
  {
    v31 = v28;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v7;
    v23 = v22;
    (*(v21 + 8))(v9, v6);
    v27[1] = v20;
    v27[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v28, &unk_1ECEB5670);
  }

  (*(v14 + 8))(a2, v13);
  sub_1E1308058(v34, &unk_1ECEB5670);
  v24 = v3 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v24 + 4) = v33;
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v3[2] = 0xD000000000000013;
  v3[3] = 0x80000001E1B71730;
  v3[4] = 0;
  v3[5] = 0;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

uint64_t OpenGamesUIAction.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_1E16EA620(v3, v4, v5);
}

uint64_t OpenGamesUIAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  sub_1E16EA638(*(v0 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target), *(v0 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target + 16));
  return v0;
}

uint64_t OpenGamesUIAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  sub_1E16EA638(*(v0 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target), *(v0 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit17OpenGamesUIAction_target + 16));

  return swift_deallocClassInstance();
}

uint64_t GamesUIDeepLinkTarget.deepLinkURL.getter@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v54 = sub_1E1AEFBBC();
  v2 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_1E1AEFCCC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AEF65C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  *&v52 = *v1;
  *(&v52 + 1) = v15;
  v16 = *(v1 + 16);
  sub_1E1AEF64C();
  sub_1E1AEF62C();
  MEMORY[0x1E68F8330](0, 0xE000000000000000);
  MEMORY[0x1E68F8340](47, 0xE100000000000000);
  sub_1E1AEF5FC();
  v17 = (*(v8 + 48))(v6, 1, v7);
  v55 = v8;
  if (v17 != 1)
  {
    v50 = v11;
    v51 = v12;
    v48 = *(v8 + 32);
    v49 = v8 + 32;
    v48(v10, v6, v7);
    v20 = v7;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v33 = v50;
        v34 = v51;
        if (v52 > 1)
        {
          if (v52 ^ 2 | *(&v52 + 1))
          {
            strcpy(&v57, "library");
            *(&v57 + 1) = 0xE700000000000000;
            DWORD2(v52) = *MEMORY[0x1E6968F70];
            *&v52 = *(v2 + 104);
            v41 = v53;
            v42 = v54;
            (v52)(v53);
            sub_1E13B8AA4();
            sub_1E1AEFC8C();
            v46 = v7;
            v43 = *(v2 + 8);
            v43(v41, v42);
            strcpy(&v57, "achievements");
            BYTE13(v57) = 0;
            HIWORD(v57) = -5120;
            (v52)(v41, DWORD2(v52), v42);
            sub_1E1AEFC8C();
            v43(v41, v42);
            v20 = v46;
            (*(v51 + 8))(v14, v33);
            goto LABEL_11;
          }

          v35 = 0x73646E65697266;
          v36 = 0xE700000000000000;
        }

        else if (v52 == 0)
        {
          v35 = 0x726579616C70;
          v36 = 0xE600000000000000;
        }

        else
        {
          v35 = 0x776F6E2D79616C70;
          v36 = 0xE800000000000000;
        }

        *&v57 = v35;
        *(&v57 + 1) = v36;
        v37 = v2;
        v38 = *(v2 + 104);
        v39 = v53;
        v40 = v54;
        v38(v53, *MEMORY[0x1E6968F70], v54);
        sub_1E13B8AA4();
        sub_1E1AEFC8C();
        (*(v37 + 8))(v39, v40);
        (*(v34 + 8))(v14, v33);
LABEL_11:
        v19 = v56;
        v48(v56, v10, v20);
        v18 = 0;
        return (*(v55 + 56))(v19, v18, 1, v20);
      }

      *&v57 = 1701667175;
      *(&v57 + 1) = 0xE400000000000000;
      LODWORD(v47) = *MEMORY[0x1E6968F70];
      v23 = v2;
      v24 = *(v2 + 104);
      v25 = v53;
      v26 = v54;
      v46 = v20;
      v24(v53);
      sub_1E13B8AA4();
      sub_1E1AEFC8C();
      v27 = *(v23 + 8);
      v27(v25, v26);
      v45 = v27;
      v57 = v52;
      (v24)(v25, v47, v26);
      sub_1E1AEFC8C();
      v27(v25, v26);
      strcpy(&v57, "achievements");
      BYTE13(v57) = 0;
      HIWORD(v57) = -5120;
      v20 = v46;
      (v24)(v25, v47, v26);
      sub_1E1AEFC8C();
      v45(v25, v26);
    }

    else
    {
      if (v16)
      {
        v21 = 1701667175;
        v22 = 0xE400000000000000;
      }

      else
      {
        v21 = 0x726579616C70;
        v22 = 0xE600000000000000;
      }

      *&v57 = v21;
      *(&v57 + 1) = v22;
      v28 = *MEMORY[0x1E6968F70];
      v47 = *(v2 + 104);
      v29 = v53;
      v30 = v54;
      v47(v53, v28, v54);
      v46 = sub_1E13B8AA4();
      sub_1E1AEFC8C();
      v31 = *(v2 + 8);
      v31(v29, v30);
      v57 = v52;
      v47(v29, v28, v30);
      sub_1E1AEFC8C();
      v31(v29, v30);
    }

    (*(v51 + 8))(v14, v50);
    goto LABEL_11;
  }

  (*(v12 + 8))(v14, v11);
  sub_1E1308058(v6, &unk_1ECEB4B60);
  v18 = 1;
  v19 = v56;
  v20 = v7;
  return (*(v55 + 56))(v19, v18, 1, v20);
}

uint64_t sub_1E16E8C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1AF74AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E16E8D08(uint64_t a1)
{
  v2 = sub_1E16EA6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E8D44(uint64_t a1)
{
  v2 = sub_1E16EA6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E16E8D80()
{
  v1 = *v0;
  v2 = 0x6F72506C61636F6CLL;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6D65766569686361;
  }

  v4 = 0x65676150656D6167;
  if (v1 != 3)
  {
    v4 = 0x73646E65697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726579616C70;
  if (v1 != 1)
  {
    v5 = 0x776F4E79616C70;
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

uint64_t sub_1E16E8E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E16EB158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E16E8E9C(uint64_t a1)
{
  v2 = sub_1E16EA650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E8ED8(uint64_t a1)
{
  v2 = sub_1E16EA650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E16E8F14(uint64_t a1)
{
  v2 = sub_1E16EA74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E8F50(uint64_t a1)
{
  v2 = sub_1E16EA74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E16E8FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1AF74AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E16E9038(uint64_t a1)
{
  v2 = sub_1E16EA7A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E9074(uint64_t a1)
{
  v2 = sub_1E16EA7A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E16E90B0(uint64_t a1)
{
  v2 = sub_1E16EA89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E90EC(uint64_t a1)
{
  v2 = sub_1E16EA89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E16E9128(uint64_t a1)
{
  v2 = sub_1E16EA6F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E9164(uint64_t a1)
{
  v2 = sub_1E16EA6F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E16E91A0(uint64_t a1)
{
  v2 = sub_1E16EA7F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E91DC(uint64_t a1)
{
  v2 = sub_1E16EA7F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E16E9230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1AF74AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E16E92B8(uint64_t a1)
{
  v2 = sub_1E16EA848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E16E92F4(uint64_t a1)
{
  v2 = sub_1E16EA848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GamesUIDeepLinkTarget.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D68);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D70);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D78);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D80);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D88);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D90);
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D98);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7DA0);
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = *(v1 + 8);
  *&v51 = *v1;
  *(&v51 + 1) = v21;
  v22 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E16EA650();
  sub_1E1AF76EC();
  if (v22 <= 1)
  {
    if (!v22)
    {
      v55 = 1;
      sub_1E16EA848();
      v23 = v53;
      sub_1E1AF739C();
      sub_1E1AF73DC();
      (*(v44 + 8))(v15, v13);
      return (*(v52 + 8))(v20, v23);
    }

    v57 = 3;
    sub_1E16EA7A0();
    v24 = v45;
    v23 = v53;
    sub_1E1AF739C();
    v25 = v47;
    sub_1E1AF73DC();
    v26 = v46;
LABEL_7:
    (*(v26 + 8))(v24, v25);
    return (*(v52 + 8))(v20, v23);
  }

  if (v22 == 2)
  {
    v60 = 6;
    sub_1E16EA6A4();
    v24 = v48;
    v23 = v53;
    sub_1E1AF739C();
    v25 = v50;
    sub_1E1AF73DC();
    v26 = v49;
    goto LABEL_7;
  }

  if (v51 > 1)
  {
    if (v51 ^ 2 | *(&v51 + 1))
    {
      v59 = 5;
      sub_1E16EA6F8();
      v29 = v41;
      v30 = v53;
      sub_1E1AF739C();
      v32 = v42;
      v31 = v43;
    }

    else
    {
      v58 = 4;
      sub_1E16EA74C();
      v29 = v38;
      v30 = v53;
      sub_1E1AF739C();
      v32 = v39;
      v31 = v40;
    }
  }

  else
  {
    if (v51 == 0)
    {
      v54 = 0;
      sub_1E16EA89C();
      v28 = v53;
      sub_1E1AF739C();
      (*(v33 + 8))(v17, v34);
      return (*(v52 + 8))(v20, v28);
    }

    v56 = 2;
    sub_1E16EA7F4();
    v29 = v35;
    v30 = v53;
    sub_1E1AF739C();
    v32 = v36;
    v31 = v37;
  }

  (*(v32 + 8))(v29, v31);
  return (*(v52 + 8))(v20, v30);
}

uint64_t GamesUIDeepLinkTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7DD8);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v72 = &v52 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7DE0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7DE8);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7DF0);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7DF8);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v68 = &v52 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7E00);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7E08);
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7E10);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - v18;
  v20 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v20);
  sub_1E16EA650();
  v21 = v74;
  sub_1E1AF76CC();
  if (!v21)
  {
    v22 = v15;
    v53 = v13;
    v74 = v12;
    v24 = v70;
    v23 = v71;
    v25 = v72;
    v26 = sub_1E1AF738C();
    v27 = (2 * *(v26 + 16)) | 1;
    v75 = v26;
    v76 = v26 + 32;
    v77 = 0;
    v78 = v27;
    v28 = sub_1E1696500();
    if (v28 != 7 && v77 == v78 >> 1)
    {
      if (v28 > 2u)
      {
        if (v28 > 4u)
        {
          v41 = v69;
          if (v28 == 5)
          {
            v79 = 5;
            sub_1E16EA6F8();
            v42 = v67;
            sub_1E1AF731C();
            (*(v63 + 8))(v42, v65);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v50 = 0;
            v48 = 3;
            v51 = 3;
          }

          else
          {
            v79 = 6;
            sub_1E16EA6A4();
            sub_1E1AF731C();
            v44 = v64;
            v48 = sub_1E1AF735C();
            v50 = v47;
            (*(v66 + 8))(v25, v44);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v51 = 2;
          }

          v34 = v73;
          goto LABEL_24;
        }

        v29 = v73;
        if (v28 == 3)
        {
          v79 = 3;
          sub_1E16EA7A0();
          sub_1E1AF731C();
          v45 = v59;
          v48 = sub_1E1AF735C();
          v50 = v49;
          (*(v60 + 8))(v24, v45);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v51 = 1;
        }

        else
        {
          v79 = 4;
          sub_1E16EA74C();
          sub_1E1AF731C();
          (*(v61 + 8))(v23, v62);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 3;
          v48 = 2;
        }

        v34 = v29;
LABEL_23:
        v41 = v69;
LABEL_24:
        *v41 = v48;
        *(v41 + 8) = v50;
        *(v41 + 16) = v51;
        return __swift_destroy_boxed_opaque_existential_1(v34);
      }

      if (v28)
      {
        if (v28 == 1)
        {
          v79 = 1;
          sub_1E16EA848();
          v36 = v74;
          sub_1E1AF731C();
          v37 = v57;
          v38 = sub_1E1AF735C();
          v39 = v36;
          v40 = v73;
          v48 = v38;
          v50 = v46;
          (*(v55 + 8))(v39, v37);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v51 = 0;
          v34 = v40;
          goto LABEL_23;
        }

        v79 = 2;
        sub_1E16EA7F4();
        v43 = v68;
        sub_1E1AF731C();
        (*(v56 + 8))(v43, v58);
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 3;
        v48 = 1;
      }

      else
      {
        v79 = 0;
        sub_1E16EA89C();
        sub_1E1AF731C();
        (*(v54 + 8))(v22, v53);
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v48 = 0;
        v50 = 0;
        v51 = 3;
      }

      v34 = v73;
      goto LABEL_23;
    }

    v30 = sub_1E1AF708C();
    swift_allocError();
    v31 = v19;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7710);
    *v33 = &type metadata for GamesUIDeepLinkTarget;
    sub_1E1AF732C();
    sub_1E1AF707C();
    (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v17 + 8))(v31, v16);
    swift_unknownObjectRelease();
  }

  v34 = v73;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1E16EA620(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1E16EA638(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1E16EA650()
{
  result = qword_1EE1DAAA8[0];
  if (!qword_1EE1DAAA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DAAA8);
  }

  return result;
}

unint64_t sub_1E16EA6A4()
{
  result = qword_1ECEB7DA8;
  if (!qword_1ECEB7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7DA8);
  }

  return result;
}

unint64_t sub_1E16EA6F8()
{
  result = qword_1ECEB7DB0;
  if (!qword_1ECEB7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7DB0);
  }

  return result;
}

unint64_t sub_1E16EA74C()
{
  result = qword_1ECEB7DB8;
  if (!qword_1ECEB7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7DB8);
  }

  return result;
}

unint64_t sub_1E16EA7A0()
{
  result = qword_1ECEB7DC0;
  if (!qword_1ECEB7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7DC0);
  }

  return result;
}

unint64_t sub_1E16EA7F4()
{
  result = qword_1EE1DAA70;
  if (!qword_1EE1DAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA70);
  }

  return result;
}

unint64_t sub_1E16EA848()
{
  result = qword_1ECEB7DC8;
  if (!qword_1ECEB7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7DC8);
  }

  return result;
}

unint64_t sub_1E16EA89C()
{
  result = qword_1ECEB7DD0;
  if (!qword_1ECEB7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7DD0);
  }

  return result;
}

uint64_t type metadata accessor for OpenGamesUIAction()
{
  result = qword_1EE1F1100;
  if (!qword_1EE1F1100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit21GamesUIDeepLinkTargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1E16EA9D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1E16EAA7C()
{
  result = qword_1ECEB7E18;
  if (!qword_1ECEB7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7E18);
  }

  return result;
}

unint64_t sub_1E16EAAD4()
{
  result = qword_1ECEB7E20;
  if (!qword_1ECEB7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7E20);
  }

  return result;
}

unint64_t sub_1E16EAB2C()
{
  result = qword_1ECEB7E28;
  if (!qword_1ECEB7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7E28);
  }

  return result;
}

unint64_t sub_1E16EAB84()
{
  result = qword_1ECEB7E30;
  if (!qword_1ECEB7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7E30);
  }

  return result;
}

unint64_t sub_1E16EABDC()
{
  result = qword_1EE1DAA30;
  if (!qword_1EE1DAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA30);
  }

  return result;
}

unint64_t sub_1E16EAC34()
{
  result = qword_1EE1DAA38;
  if (!qword_1EE1DAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA38);
  }

  return result;
}

unint64_t sub_1E16EAC8C()
{
  result = qword_1EE1DAA88;
  if (!qword_1EE1DAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA88);
  }

  return result;
}

unint64_t sub_1E16EACE4()
{
  result = qword_1EE1DAA90;
  if (!qword_1EE1DAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA90);
  }

  return result;
}

unint64_t sub_1E16EAD3C()
{
  result = qword_1EE1DAA60;
  if (!qword_1EE1DAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA60);
  }

  return result;
}

unint64_t sub_1E16EAD94()
{
  result = qword_1EE1DAA68;
  if (!qword_1EE1DAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA68);
  }

  return result;
}

unint64_t sub_1E16EADEC()
{
  result = qword_1EE1DAA50;
  if (!qword_1EE1DAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA50);
  }

  return result;
}

unint64_t sub_1E16EAE44()
{
  result = qword_1EE1DAA58;
  if (!qword_1EE1DAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA58);
  }

  return result;
}

unint64_t sub_1E16EAE9C()
{
  result = qword_1EE1DAA78;
  if (!qword_1EE1DAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA78);
  }

  return result;
}

unint64_t sub_1E16EAEF4()
{
  result = qword_1EE1DAA80;
  if (!qword_1EE1DAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA80);
  }

  return result;
}

unint64_t sub_1E16EAF4C()
{
  result = qword_1EE1DAA20;
  if (!qword_1EE1DAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA20);
  }

  return result;
}

unint64_t sub_1E16EAFA4()
{
  result = qword_1EE1DAA28;
  if (!qword_1EE1DAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA28);
  }

  return result;
}

unint64_t sub_1E16EAFFC()
{
  result = qword_1EE1DAA40;
  if (!qword_1EE1DAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA40);
  }

  return result;
}

unint64_t sub_1E16EB054()
{
  result = qword_1EE1DAA48;
  if (!qword_1EE1DAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA48);
  }

  return result;
}

unint64_t sub_1E16EB0AC()
{
  result = qword_1EE1DAA98;
  if (!qword_1EE1DAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA98);
  }

  return result;
}

unint64_t sub_1E16EB104()
{
  result = qword_1EE1DAAA0;
  if (!qword_1EE1DAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAAA0);
  }

  return result;
}

uint64_t sub_1E16EB158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72506C61636F6CLL && a2 == 0xEC000000656C6966;
  if (v4 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F4E79616C70 && a2 == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676150656D6167 && a2 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73646E65697266 && a2 == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E1B717A0 == a2 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E1AF74AC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t PresenterError.init(innerError:pageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for PresenterError() + 20);

  return sub_1E13E23F8(a2, v4);
}

uint64_t type metadata accessor for PresenterError()
{
  result = qword_1EE1F3C70;
  if (!qword_1EE1F3C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PresenterError.innerError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PresenterError.pageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PresenterError() + 20);

  return sub_1E1307FE8(v3, a1);
}

uint64_t PresenterError.metricsErrorDescription.getter()
{
  v8 = *v0;
  v1 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1E1308058(v6, &qword_1ECEB47C0);
    swift_getErrorValue();
    return sub_1E1AF75AC();
  }
}

uint64_t PresenterError.describeForMetricsEvent(using:)(void (*a1)(uint64_t, unint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PresenterError();
  sub_1E1307FE8(v3 + *(v9 + 20), v8);
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1E1308058(v8, &unk_1ECEB4B60);
  }

  else
  {
    v12 = sub_1E1AEFBDC();
    v14 = v13;
    (*(v11 + 8))(v8, v10);
    v23 = MEMORY[0x1E69E6158];
    v22[0] = v12;
    v22[1] = v14;
    a1(0x6C725565676170, 0xE700000000000000, v22);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v21 = *v3;
  v15 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(v19, v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    (*(v17 + 24))(a1, a2, v16, v17);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_1E1308058(v19, &qword_1ECEB47C0);
  }
}

unint64_t PresenterError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = sub_1E1AF5DFC();
  *(inited + 40) = v1;
  swift_getErrorValue();
  *(inited + 72) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0);
  v3 = sub_1E1303A74(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEB5F80);
  return v3;
}

unint64_t sub_1E16EB9BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = sub_1E1AF5DFC();
  *(inited + 40) = v1;
  swift_getErrorValue();
  *(inited + 72) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0);
  v3 = sub_1E1303A74(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEB5F80);
  return v3;
}

uint64_t sub_1E16EBAB0(uint64_t a1)
{
  v2 = sub_1E16EBC50(&qword_1EE1DFCE8);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1E16EBB08(uint64_t a1)
{
  v2 = sub_1E16EBC50(&qword_1EE1DFCE8);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1E16EBB60(uint64_t a1)
{
  result = sub_1E16EBC50(&qword_1EE1DFCE0);
  *(a1 + 8) = result;
  return result;
}

void sub_1E16EBBCC()
{
  sub_1E16A0EA0();
  if (v0 <= 0x3F)
  {
    sub_1E130072C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E16EBC50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresenterError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *TodayCardMediaMediumLockupWithAlignedRegion.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v48 = sub_1E1AF380C();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v36 - v22;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_1E1AF464C();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_1E1AF381C();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for MediumAdLockupWithAlignedRegionBackground();
  swift_allocObject();
  v28 = v42;
  v29 = MediumAdLockupWithAlignedRegionBackground.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_1E1308058(v43, &unk_1ECEB1770);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit43TodayCardMediaMediumLockupWithAlignedRegion_mediumAdLockupWithAlignedRegionBackground) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_1E1308058(v43, &unk_1ECEB1770);
  }

  return v30;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.__allocating_init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaMediumLockupWithAlignedRegion.init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.init(mediumAdLockupWithAlignedRegionBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit43TodayCardMediaMediumLockupWithAlignedRegion_mediumAdLockupWithAlignedRegionBackground) = a1;
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
  *(v3 + 16) = 13;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaMediumLockupWithAlignedRegion.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion()
{
  result = qword_1ECEB7E38;
  if (!qword_1ECEB7E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static SystemImage.load(artwork:with:includePrivateImages:)(uint64_t a1, void *a2, char a3)
{
  _s11AppStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(a1);
  if (!v6)
  {
    return 0;
  }

  if (*(a1 + 96) > 1u)
  {
    if (*(a1 + 96) != 2)
    {
LABEL_13:
      v13 = a2;
      goto LABEL_14;
    }

    v7 = 3;
  }

  else if (*(a1 + 96))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v9 = [objc_opt_self() configurationWithScale_];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  if (!a2)
  {

    goto LABEL_13;
  }

  v11 = a2;
  v12 = [v10 configurationByApplyingConfiguration_];

  v13 = v12;
LABEL_14:
  v14 = v13;
  v15 = sub_1E1AF5DBC();

  v16 = objc_opt_self();
  v17 = &selRef__systemImageNamed_withConfiguration_;
  if ((a3 & 1) == 0)
  {
    v17 = &selRef_systemImageNamed_withConfiguration_;
  }

  v8 = [v16 *v17];

  return v8;
}

id static SystemImage.load(_:with:includePrivateImages:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  v6 = sub_1E1AF5DBC();
  v7 = objc_opt_self();
  v8 = &selRef__systemImageNamed_withConfiguration_;
  if ((a4 & 1) == 0)
  {
    v8 = &selRef_systemImageNamed_withConfiguration_;
  }

  v9 = [v7 *v8];

  if (v9)
  {
    return v9;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v11 init];
}

uint64_t SystemImage.isPublic.getter()
{
  v1 = *v0;
  v2 = v1 - 65 < 0x11;
  v3 = v1 > 0x3E;
  v4 = (1 << v1) & 0x7FFFFDFF3FFFFFEDLL;
  return !v3 && v4 != 0 || v2;
}

uint64_t SystemImage.rawValue.getter()
{
  result = 7630433;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
    case 0x11:
    case 0x1F:
      return 0xD000000000000017;
    case 3:
      return 0x746177656C707061;
    case 4:
      return 0x65726F7473707061;
    case 5:
    case 0x4A:
      return 0xD000000000000011;
    case 6:
      return 0x6C632E776F727261;
    case 7:
    case 0xA:
    case 0x50:
      return 0xD000000000000010;
    case 8:
    case 0x3E:
      return 0xD000000000000022;
    case 9:
      return 0x72616D6B63656863;
    case 0xB:
    case 0x27:
    case 0x4C:
      return 0xD000000000000014;
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      return 0x2E6E6F7276656863;
    case 0x10:
      return 0x2E6E6F7276656863;
    case 0x12:
      return 0x747865742E636F64;
    case 0x13:
      return 0x73697370696C6C65;
    case 0x14:
      return 0xD000000000000016;
    case 0x15:
      return 0xD00000000000001DLL;
    case 0x16:
      return 0x73616C732E657965;
    case 0x17:
      return 0x632E322E67616C66;
    case 0x18:
      return 0xD000000000000013;
    case 0x19:
      return 0x72656D6D6168;
    case 0x1A:
      v5 = 0x72656D6D6168;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x1B:
      return 0x69662E6573756F68;
    case 0x1C:
    case 0x2B:
    case 0x38:
    case 0x49:
      return 0xD000000000000015;
    case 0x1D:
      return 0xD000000000000028;
    case 0x1E:
    case 0x32:
    case 0x33:
    case 0x42:
      return 0xD000000000000012;
    case 0x20:
      return 0x6C2E6C657275616CLL;
    case 0x21:
      return 0x742E6C657275616CLL;
    case 0x22:
    case 0x48:
      return 0xD00000000000001ALL;
    case 0x23:
      return 0xD000000000000021;
    case 0x24:
      return 0xD000000000000026;
    case 0x25:
      return 1802398060;
    case 0x26:
      return 0x6C75622E7473696CLL;
    case 0x28:
      return 0x697966696E67616DLL;
    case 0x29:
      return 0x6567617373656DLL;
    case 0x2A:
      return 0x6F68706F7263696DLL;
    case 0x2C:
      return 0x757262746E696170;
    case 0x2D:
      return 0x757262746E696170;
    case 0x2E:
      return 0x616C707265706170;
    case 0x2F:
      return 0x616C707265706170;
    case 0x30:
      v4 = 1937072496;
      goto LABEL_61;
    case 0x31:
      return 0x332E6E6F73726570;
    case 0x34:
      v5 = 0x6E6F73726570;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x35:
      return 0x656E6F6870;
    case 0x36:
      return 0x6F642E656E6F6870;
    case 0x37:
      v4 = 1852794992;
LABEL_61:
      v2 = v4 & 0xFFFF0000FFFFFFFFLL | 0x2E6500000000;
      goto LABEL_62;
    case 0x39:
      v3 = 2036427888;
      goto LABEL_49;
    case 0x3A:
      return 1937075312;
    case 0x3B:
      return 0xD000000000000013;
    case 0x3C:
      return 0x6C632E65746F7571;
    case 0x3D:
      return 0x706F2E65746F7571;
    case 0x3F:
      return 0x74656B636F72;
    case 0x40:
      v5 = 0x74656B636F72;
      return v5 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
    case 0x41:
      return 0x697261666173;
    case 0x43:
      return 0xD000000000000013;
    case 0x44:
      return 1918989427;
    case 0x45:
      v3 = 1918989427;
      goto LABEL_49;
    case 0x46:
      v3 = 1886352499;
LABEL_49:
      result = v3 | 0x6C69662E00000000;
      break;
    case 0x47:
      result = 0xD000000000000013;
      break;
    case 0x4B:
      result = 0x672E657261757173;
      break;
    case 0x4D:
      result = 0x6873617274;
      break;
    case 0x4E:
      result = 0x6F65646976;
      break;
    case 0x4F:
      v2 = 0x2E6F65646976;
LABEL_62:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
      break;
    case 0x51:
      result = 0x6B72616D78;
      break;
    default:
      return result;
  }

  return result;
}

id static SystemImage.loadIfExists(_:with:includePrivateImages:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = a3;
  v6 = sub_1E1AF5DBC();
  v7 = objc_opt_self();
  v8 = &selRef__systemImageNamed_withConfiguration_;
  if ((a4 & 1) == 0)
  {
    v8 = &selRef_systemImageNamed_withConfiguration_;
  }

  v9 = [v7 *v8];

  return v9;
}

AppStoreKit::SystemImage_optional __swiftcall SystemImage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF750C();

  v5 = 0;
  v6 = 64;
  switch(v3)
  {
    case 0:
      goto LABEL_80;
    case 1:
      v5 = 1;
      goto LABEL_80;
    case 2:
      v5 = 2;
      goto LABEL_80;
    case 3:
      v5 = 3;
      goto LABEL_80;
    case 4:
      v5 = 4;
      goto LABEL_80;
    case 5:
      v5 = 5;
      goto LABEL_80;
    case 6:
      v5 = 6;
      goto LABEL_80;
    case 7:
      v5 = 7;
      goto LABEL_80;
    case 8:
      v5 = 8;
      goto LABEL_80;
    case 9:
      v5 = 9;
      goto LABEL_80;
    case 10:
      v5 = 10;
      goto LABEL_80;
    case 11:
      v5 = 11;
      goto LABEL_80;
    case 12:
      v5 = 12;
      goto LABEL_80;
    case 13:
      v5 = 13;
      goto LABEL_80;
    case 14:
      v5 = 14;
      goto LABEL_80;
    case 15:
      v5 = 15;
      goto LABEL_80;
    case 16:
      v5 = 16;
      goto LABEL_80;
    case 17:
      v5 = 17;
      goto LABEL_80;
    case 18:
      v5 = 18;
      goto LABEL_80;
    case 19:
      v5 = 19;
      goto LABEL_80;
    case 20:
      v5 = 20;
      goto LABEL_80;
    case 21:
      v5 = 21;
      goto LABEL_80;
    case 22:
      v5 = 22;
      goto LABEL_80;
    case 23:
      v5 = 23;
      goto LABEL_80;
    case 24:
      v5 = 24;
      goto LABEL_80;
    case 25:
      v5 = 25;
      goto LABEL_80;
    case 26:
      v5 = 26;
      goto LABEL_80;
    case 27:
      v5 = 27;
      goto LABEL_80;
    case 28:
      v5 = 28;
      goto LABEL_80;
    case 29:
      v5 = 29;
      goto LABEL_80;
    case 30:
      v5 = 30;
      goto LABEL_80;
    case 31:
      v5 = 31;
      goto LABEL_80;
    case 32:
      v5 = 32;
      goto LABEL_80;
    case 33:
      v5 = 33;
      goto LABEL_80;
    case 34:
      v5 = 34;
      goto LABEL_80;
    case 35:
      v5 = 35;
      goto LABEL_80;
    case 36:
      v5 = 36;
      goto LABEL_80;
    case 37:
      v5 = 37;
      goto LABEL_80;
    case 38:
      v5 = 38;
      goto LABEL_80;
    case 39:
      v5 = 39;
      goto LABEL_80;
    case 40:
      v5 = 40;
      goto LABEL_80;
    case 41:
      v5 = 41;
      goto LABEL_80;
    case 42:
      v5 = 42;
      goto LABEL_80;
    case 43:
      v5 = 43;
      goto LABEL_80;
    case 44:
      v5 = 44;
      goto LABEL_80;
    case 45:
      v5 = 45;
      goto LABEL_80;
    case 46:
      v5 = 46;
      goto LABEL_80;
    case 47:
      v5 = 47;
      goto LABEL_80;
    case 48:
      v5 = 48;
      goto LABEL_80;
    case 49:
      v5 = 49;
      goto LABEL_80;
    case 50:
      v5 = 50;
      goto LABEL_80;
    case 51:
      v5 = 51;
      goto LABEL_80;
    case 52:
      v5 = 52;
      goto LABEL_80;
    case 53:
      v5 = 53;
      goto LABEL_80;
    case 54:
      v5 = 54;
      goto LABEL_80;
    case 55:
      v5 = 55;
      goto LABEL_80;
    case 56:
      v5 = 56;
      goto LABEL_80;
    case 57:
      v5 = 57;
      goto LABEL_80;
    case 58:
      v5 = 58;
      goto LABEL_80;
    case 59:
      v5 = 59;
      goto LABEL_80;
    case 60:
      v5 = 60;
      goto LABEL_80;
    case 61:
      v5 = 61;
      goto LABEL_80;
    case 62:
      v5 = 62;
      goto LABEL_80;
    case 63:
      v5 = 63;
LABEL_80:
      v6 = v5;
      break;
    case 64:
      break;
    case 65:
      v6 = 65;
      break;
    case 66:
      v6 = 66;
      break;
    case 67:
      v6 = 67;
      break;
    case 68:
      v6 = 68;
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    default:
      v6 = 82;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E16ED52C()
{
  v0 = SystemImage.rawValue.getter();
  v2 = v1;
  if (v0 == SystemImage.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t sub_1E16ED5C8()
{
  sub_1E1AF762C();
  SystemImage.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16ED630()
{
  SystemImage.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E16ED694()
{
  sub_1E1AF762C();
  SystemImage.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16ED704@<X0>(uint64_t *a1@<X8>)
{
  result = SystemImage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s11AppStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFCAC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E13ECBA0(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_1E1AEFC6C();
    if (v10)
    {
      v11 = v9;
      v12 = *(a1 + 24);
      v15[0] = *(a1 + 16);
      v15[1] = v12;
      v13 = Artwork.URLTemplate.isSystemImage.getter();
      (*(v6 + 8))(v8, v5);
      if (v13)
      {
        return v11;
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  return 0;
}

id _s11AppStoreKit11SystemImageO4load_4withSo7UIImageCAC_So0H19SymbolConfigurationCSgtFZ_0(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = v3 > 0x3E || ((1 << v3) & 0x7FFFFDFF3FFFFFEDLL) == 0;
  if (v4 && v3 - 65 >= 0x11)
  {
    SystemImage.rawValue.getter();
    v5 = a2;
    v6 = sub_1E1AF5DBC();

    v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];
  }

  else
  {
    SystemImage.rawValue.getter();
    v5 = a2;
    v6 = sub_1E1AF5DBC();

    v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];
  }

  v8 = v7;

  if (v8)
  {
    return v8;
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v10 init];
}

unint64_t sub_1E16EDB30()
{
  result = qword_1ECEB7E48;
  if (!qword_1ECEB7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7E48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemImage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAF)
  {
    goto LABEL_17;
  }

  if (a2 + 81 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 81) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 81;
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

      return (*a1 | (v4 << 8)) - 81;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 81;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x52;
  v8 = v6 - 82;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 81 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 81) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAF)
  {
    v4 = 0;
  }

  if (a2 > 0xAE)
  {
    v5 = ((a2 - 175) >> 8) + 1;
    *result = a2 + 81;
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
    *result = a2 + 81;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E16EDCD4()
{
  result = qword_1ECEB7E50;
  if (!qword_1ECEB7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7E50);
  }

  return result;
}

uint64_t PlaybackScrollObserver.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t PlaybackScrollObserver.init(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t PlaybackScrollObserver.__deallocating_deinit()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1E16EDE20()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visibilityTracker);
    v4 = Strong;

    sub_1E154A4E4();
    v2 = *(v1 + 64);

    v3 = sub_1E13C4CAC(v2);

    *&v4[OBJC_IVAR____TtC11AppStoreKit19PlaybackCoordinator_visiblePlayableIds] = v3;

    sub_1E1526BA4();
  }
}

uint64_t PrivacyHeaderLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t PrivacyHeaderLayout.Metrics.bodyBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t PrivacyHeaderLayout.Metrics.supplementaryItemsBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t PrivacyHeaderLayout.Metrics.actionButtonLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t PrivacyHeaderLayout.Metrics.bodyOnlyBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_1E1308EC0(a1, v1 + 240);
}

uint64_t PrivacyHeaderLayout.Metrics.init(bodyTopSpace:bodyBottomSpace:supplementaryItemsTopSpace:supplementaryItemsPadding:supplementaryItemsBottomSpace:actionButtonLeadingMargin:bodyOnlyBottomMargin:maxTextWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = a9 + 280;
  *(a9 + 312) = 0;
  *(a9 + 280) = 0u;
  *(a9 + 296) = 0u;
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  sub_1E1308EC0(a3, a9 + 80);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  sub_1E1308EC0(a6, a9 + 200);
  sub_1E1308EC0(a7, a9 + 240);

  return sub_1E13BC4E4(a8, v17);
}

__n128 PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)@<Q0>(void *__src@<X0>, char a2@<W1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  memcpy(a8, __src, 0x140uLL);
  *(a8 + 320) = a2;
  sub_1E1308EC0(a3, a8 + 328);
  *(a8 + 368) = a4;
  v15 = *(a5 + 16);
  *(a8 + 376) = *a5;
  *(a8 + 392) = v15;
  *(a8 + 408) = *(a5 + 32);
  result = *a6;
  v17 = *(a6 + 16);
  *(a8 + 416) = *a6;
  *(a8 + 432) = v17;
  *(a8 + 448) = *(a6 + 32);
  *(a8 + 456) = a7;
  return result;
}

double static PrivacyHeaderLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1)
{
  v2 = sub_1E1AF162C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1E1AF165C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB970], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CD0;
  sub_1E1300B24(a1, v18);
  v12 = sub_1E1AF1A1C();
  v13 = MEMORY[0x1E69ABA90];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  __swift_allocate_boxed_opaque_existential_0((v11 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 40, v18);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  __swift_allocate_boxed_opaque_existential_0((v11 + 72));
  sub_1E1AF1A2C();
  sub_1E1AF163C();
  sub_1E1AF161C();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  return v15;
}

uint64_t PrivacyHeaderLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_1E1AF745C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 200), *(v1 + 224));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v8 = v7;
  v22 = *(v4 + 8);
  v22(v6, v3);
  v9 = *(v1 + 456);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    v12 = 0.0;
    v13 = a1;
    do
    {
      sub_1E1300B24(v11, &v23);
      __swift_project_boxed_opaque_existential_1Tm(&v23, v24);
      sub_1E1AF11CC();
      v15 = v14;
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1(&v23);
      v13 = v13 - v15 - v8;
      if (v12 <= v17)
      {
        v12 = v17;
      }

      v11 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = a1;
  }

  sub_1E134FD1C(v1 + 280, &v23, &unk_1ECEB47F0);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v23, v24);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v19 = v18;
    v20 = v22;
    v22(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    if (v19 < v13)
    {
      v13 = v19;
    }
  }

  else
  {
    sub_1E1308058(&v23, &unk_1ECEB47F0);
    v20 = v22;
  }

  sub_1E16EEB3C(&v23);
  _VerticalFlowLayout.measurements(fitting:in:)(v13);

  if ((*(v1 + 320) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v1 + 240), *(v1 + 264));
    sub_1E13BC274();
    sub_1E1AF12DC();
    return v20(v6, v3);
  }

  return result;
}

uint64_t sub_1E16EEB3C@<X0>(uint64_t a1@<X8>)
{
  v75 = 0;
  LODWORD(v3) = *(v1 + 320);
  if (v3 == 1)
  {
    sub_1E134FD1C(v1 + 376, &v67, &qword_1ECEB4E00);
    if (*(&v68 + 1))
    {
      sub_1E1308EC0(&v67, &v54);
      *(&v58 + 1) = MEMORY[0x1E69E63B0];
      *&v59 = MEMORY[0x1E69ABBA8];
      *&v57 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
      sub_1E1300B24(&v54, &v67);
      sub_1E1300B24(&v57, v70);
      WORD4(v69) = 1;
      v74 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_1E149BCE4(&v67, &v57);
      v4 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_1E172D4E0((v5 > 1), v6 + 1, 1, v4);
      }

      sub_1E149BD40(&v67);
      __swift_destroy_boxed_opaque_existential_1(&v54);
      *(v4 + 2) = v6 + 1;
      v7 = &v4[136 * v6];
      *(v7 + 2) = v57;
      v8 = v58;
      v9 = v59;
      v10 = v61;
      *(v7 + 5) = v60;
      *(v7 + 6) = v10;
      *(v7 + 3) = v8;
      *(v7 + 4) = v9;
      v11 = v62;
      v12 = v63;
      v13 = v64;
      *(v7 + 20) = v65;
      *(v7 + 8) = v12;
      *(v7 + 9) = v13;
      *(v7 + 7) = v11;
    }

    else
    {
      sub_1E1308058(&v67, &qword_1ECEB4E00);
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1E1300B24(v1 + 328, &v57);
    sub_1E1300B24(v1, &v54);
    sub_1E1300B24(v1 + 40, v66);
  }

  else
  {
    sub_1E1300B24(v1 + 328, &v57);
    *(&v55 + 1) = MEMORY[0x1E69E63B0];
    *&v56 = MEMORY[0x1E69ABBA8];
    *&v54 = 0;
    v66[3] = MEMORY[0x1E69E63B0];
    v66[4] = MEMORY[0x1E69ABBA8];
    v66[0] = 0;
    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1E1308EC0(&v57, &v67);
  sub_1E1300B24(&v54, v70);
  sub_1E134FD1C(v66, &v71, &unk_1ECEB47F0);
  WORD4(v69) = 0;
  v74 = 8;
  sub_1E1308058(v66, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  sub_1E149BCE4(&v67, &v57);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v4 = sub_1E172D4E0(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_1E172D4E0((v14 > 1), v15 + 1, 1, v4);
  }

  result = sub_1E149BD40(&v67);
  *(v4 + 2) = v15 + 1;
  v17 = &v4[136 * v15];
  v18 = v61;
  v20 = v58;
  v19 = v59;
  *(v17 + 5) = v60;
  *(v17 + 6) = v18;
  *(v17 + 3) = v20;
  *(v17 + 4) = v19;
  v22 = v63;
  v21 = v64;
  v23 = v62;
  *(v17 + 20) = v65;
  *(v17 + 8) = v22;
  *(v17 + 9) = v21;
  *(v17 + 7) = v23;
  *(v17 + 2) = v57;
  if (v3)
  {
    sub_1E134FD1C(v1 + 416, &v67, &qword_1ECEB4E00);
    v50 = a1;
    if (*(&v68 + 1))
    {
      sub_1E1308EC0(&v67, &v54);
      *(&v58 + 1) = MEMORY[0x1E69E63B0];
      *&v59 = MEMORY[0x1E69ABBA8];
      *&v57 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0;
      sub_1E1300B24(&v54, &v67);
      sub_1E1300B24(&v57, v70);
      WORD4(v69) = 1;
      v74 = 8;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_1E149BCE4(&v67, &v57);
      v25 = *(v4 + 2);
      v24 = *(v4 + 3);
      if (v25 >= v24 >> 1)
      {
        v4 = sub_1E172D4E0((v24 > 1), v25 + 1, 1, v4);
      }

      sub_1E149BD40(&v67);
      result = __swift_destroy_boxed_opaque_existential_1(&v54);
      *(v4 + 2) = v25 + 1;
      v26 = &v4[136 * v25];
      *(v26 + 2) = v57;
      v27 = v58;
      v28 = v59;
      v29 = v61;
      *(v26 + 5) = v60;
      *(v26 + 6) = v29;
      *(v26 + 3) = v27;
      *(v26 + 4) = v28;
      v30 = v62;
      v31 = v63;
      v32 = v64;
      *(v26 + 20) = v65;
      *(v26 + 8) = v31;
      *(v26 + 9) = v32;
      *(v26 + 7) = v30;
    }

    else
    {
      result = sub_1E1308058(&v67, &qword_1ECEB4E00);
    }

    v33 = 0;
    v34 = *(v1 + 368);
    v35 = *(v34 + 16);
    a1 = 136;
    while (1)
    {
      v36 = 0uLL;
      v3 = v35;
      v37 = 0uLL;
      v38 = 0uLL;
      if (v33 != v35)
      {
        if (v33 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v3 = v33 + 1;
        *&v67 = v33;
        result = sub_1E1300B24(v34 + 32 + 40 * v33, &v67 + 8);
        v36 = v67;
        v37 = v68;
        v38 = v69;
      }

      v54 = v36;
      v55 = v37;
      v56 = v38;
      if (!v38)
      {
        a1 = v50;
        break;
      }

      v51 = v36;
      sub_1E1308EC0((&v54 + 8), v66);
      v39 = *(v34 + 16);
      if (v51)
      {
        *(&v58 + 1) = sub_1E1AF140C();
        *&v59 = MEMORY[0x1E69AB908];
        __swift_allocate_boxed_opaque_existential_0(&v57);
        sub_1E1AF13FC();
      }

      else
      {
        sub_1E1300B24(v1 + 80, &v57);
      }

      v40 = 120;
      if (v51 == v39 - 1)
      {
        v40 = 160;
      }

      sub_1E1300B24(v1 + v40, v52);
      sub_1E1300B24(v66, &v67);
      sub_1E1300B24(&v57, v70);
      v71 = v52[0];
      v72 = v52[1];
      v73 = v53;
      WORD4(v69) = 1;
      v74 = 3;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      sub_1E149BCE4(&v67, &v57);
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_1E172D4E0((v41 > 1), v42 + 1, 1, v4);
      }

      sub_1E149BD40(&v67);
      result = __swift_destroy_boxed_opaque_existential_1(v66);
      *(v4 + 2) = v42 + 1;
      v43 = &v4[136 * v42];
      *(v43 + 2) = v57;
      v44 = v58;
      v45 = v59;
      v46 = v61;
      *(v43 + 5) = v60;
      *(v43 + 6) = v46;
      *(v43 + 3) = v44;
      *(v43 + 4) = v45;
      v47 = v62;
      v48 = v63;
      v49 = v64;
      *(v43 + 20) = v65;
      *(v43 + 8) = v48;
      *(v43 + 9) = v49;
      *(v43 + 7) = v47;
      v33 = v3;
    }
  }

  *a1 = v75;
  *(a1 + 8) = v4;
  return result;
}

uint64_t PrivacyHeaderLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v40 = a1;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 25, v5[28]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v15 = v14;
  v39 = *(v11 + 8);
  v39(v13, v10);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  v45.size.width = a4;
  v45.size.height = a5;
  MaxX = CGRectGetMaxX(v45);
  v17 = v5[57];
  v18 = *(v17 + 16);
  v41.origin.x = a2;
  v41.origin.y = a3;
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_1E1300B24(v19, &v43);
      __swift_project_boxed_opaque_existential_1Tm(&v43, v44);
      width = v41.size.width;
      height = v41.size.height;
      sub_1E1AF11CC();
      v42 = v22;
      v24 = MaxX - v23;
      v46.origin.x = v41.origin.x;
      v46.origin.y = v41.origin.y;
      v46.size.width = width;
      v46.size.height = height;
      CGRectGetMinY(v46);
      __swift_project_boxed_opaque_existential_1Tm(&v43, v44);
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(&v43);
      MaxX = v24 - v15;
      v19 += 40;
      --v18;
    }

    while (v18);
  }

  x = v41.origin.x;
  y = v41.origin.y;
  v28 = v41.size.width;
  v27 = v41.size.height;
  CGRectGetMaxX(v41);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = v28;
  v47.size.height = v27;
  CGRectGetWidth(v47);
  sub_1E134FD1C((v5 + 35), &v43, &unk_1ECEB47F0);
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v43, v44);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v39(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v28 = v41.size.width;
    v27 = v41.size.height;
  }

  else
  {
    sub_1E1308058(&v43, &unk_1ECEB47F0);
  }

  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = v28;
  v48.size.height = v27;
  CGRectGetMinX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = v28;
  v49.size.height = v27;
  CGRectGetMinY(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = v28;
  v50.size.height = v27;
  CGRectGetHeight(v50);
  sub_1E1AF6B1C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1E16EEB3C(&v43);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v40, v30, v32, v34, v36);
}

uint64_t sub_1E16EF5A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t sub_1E16EF5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
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
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E16EF6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_1E16EF704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ShelfLayoutContext()
{
  result = qword_1EE1EF5F8;
  if (!qword_1EE1EF5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfLayoutContext.id.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DAC();
}

uint64_t ShelfLayoutContext.shelf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShelfLayoutContext.surroundingShelves.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = type metadata accessor for ShelfLayoutContext();
  sub_1E16EF9D0(v2 + *(v9 + 24), v8);
  v10 = *(v6 + 56);
  sub_1E16EFA40(v8, a1);
  return sub_1E16EFA40(&v8[v10], a2);
}

uint64_t sub_1E16EF9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16EFA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShelfLayoutContext.contentPageGrid.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfLayoutContext() + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x188uLL);
  return sub_1E141D08C(__dst, &v5);
}

uint64_t ShelfLayoutContext.supplementaryPageGrid.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfLayoutContext() + 32);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x188uLL);
  return sub_1E141D08C(__dst, &v5);
}

uint64_t ShelfLayoutContext.stateStore.getter()
{
  type metadata accessor for ShelfLayoutContext();
}

uint64_t sub_1E16EFBCC(uint64_t (*a1)(char *, void *, void, uint64_t, unint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-1] - v4;
  v6 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v1 + *(v6 + 20));
  sub_1E1AF6F6C();
  sub_1E1AF5BAC();
  v11[0] = *(v1 + *(v6 + 36));

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00);
  v8 = sub_1E139268C();
  return a1(v5, v11, MEMORY[0x1E69E73E0], v7, v8);
}

uint64_t ShelfLayoutContext.shelfPresentationHints.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DAC();
}

uint64_t ShelfLayoutContext.traitEnvironment.getter()
{
  type metadata accessor for ShelfLayoutContext();

  return swift_unknownObjectRetain();
}

id ShelfLayoutContext.traitCollection.getter()
{
  v1 = [*(v0 + *(type metadata accessor for ShelfLayoutContext() + 40)) traitCollection];

  return v1;
}

uint64_t ShelfLayoutContext.itemLayoutContext(for:at:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1E1AF018C();
  v8 = v5;
  return ShelfLayoutContext.itemLayoutContext(for:at:metadata:)(a1, v6, &v8, a3);
}

uint64_t ShelfLayoutContext.itemLayoutContext(for:at:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v26 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *a3;
  v14 = type metadata accessor for ShelfLayoutContext();
  sub_1E16EF9D0(v5 + *(v14 + 24), v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  LODWORD(a3) = (*(*(v15 - 8) + 48))(v12, 1, v15);
  sub_1E1308058(&v12[*(v10 + 56)], &qword_1ECEB75A0);
  sub_1E1308058(v12, &qword_1ECEB75A0);
  if (a3 == 1)
  {
    v16 = 10;
  }

  else
  {
    v16 = 2;
  }

  swift_getKeyPath();
  sub_1E1AF3DAC();

  v17 = v16 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*v30 >> 1) & 1));
  swift_getKeyPath();
  sub_1E1AF3DAC();

  if (v30[0] == 1)
  {
    v17 |= 1uLL;
  }

  else
  {
    v18 = [*(v5 + *(v14 + 40)) traitCollection];
    v19 = sub_1E1AF695C();

    if (v19)
    {
      v17 |= 0x10uLL;
    }
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7E90);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v27, v30);
    v21 = v31;
    v22 = v32;
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    (*(v22 + 8))(v29, v21, v22);
    if (LOBYTE(v29[0]) != 4)
    {
      v17 |= 0x40uLL;
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_1E1308058(v27, &unk_1ECEB7E98);
  }

  v23 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 16))(&a4[v23[5]], a1, v20);
  sub_1E13926F0(v5, &a4[v23[8]]);
  *a4 = v26;
  *&a4[v23[6]] = v13;
  *&a4[v23[7]] = v17;
}

BOOL ShelfLayoutContext.isFirstShelf.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ShelfLayoutContext();
  sub_1E16EF9D0(v0 + *(v5 + 24), v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) == 1;
  sub_1E1308058(&v4[*(v2 + 56)], &qword_1ECEB75A0);
  sub_1E1308058(v4, &qword_1ECEB75A0);
  return v7;
}

id sub_1E16F02F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayoutContextTraitEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E16F0364()
{
  sub_1E16F0430();
  if (v0 <= 0x3F)
  {
    sub_1E16F0488();
    if (v1 <= 0x3F)
    {
      sub_1E16F04FC();
      if (v2 <= 0x3F)
      {
        sub_1E16F0554();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E16F0430()
{
  if (!qword_1EE1E3B18)
  {
    type metadata accessor for Shelf();
    v0 = sub_1E1AF3DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3B18);
    }
  }
}

void sub_1E16F0488()
{
  if (!qword_1EE1D29D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB75A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1D29D0);
    }
  }
}

void sub_1E16F04FC()
{
  if (!qword_1EE1D2988)
  {
    v0 = sub_1E1AF498C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2988);
    }
  }
}

unint64_t sub_1E16F0554()
{
  result = qword_1EE1D2480;
  if (!qword_1EE1D2480)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1D2480);
  }

  return result;
}

uint64_t sub_1E16F05DC()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB7EB0);
  __swift_project_value_buffer(v4, qword_1ECEB7EB0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t PersonalizationTransparencyPagePresenter.__allocating_init(objectGraph:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_pages) = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsEnabled) = 2;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsValueSequenceTask) = 0;
  v3 = sub_1E138C578(a1, 0, 0, 0);

  return v3;
}

uint64_t PersonalizationTransparencyPagePresenter.init(objectGraph:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_pages) = 0;
  *(v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsEnabled) = 2;
  *(v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsValueSequenceTask) = 0;
  v3 = sub_1E138C578(a1, 0, 0, 0);

  return v3;
}

uint64_t sub_1E16F084C()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view);
}

uint64_t PersonalizationTransparencyPagePresenter.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsValueSequenceTask))
  {

    sub_1E1AF650C();
  }

  v1 = BasePresenter.deinit();
  sub_1E1337DEC(v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view);

  return v1;
}

uint64_t PersonalizationTransparencyPagePresenter.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsValueSequenceTask))
  {

    sub_1E1AF650C();
  }

  BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;

  sub_1E1337DEC(v2 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16F0A70(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E16F0ADC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E16F0BDC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1E1AF504C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v2 + 32) & 1) == 0 && (!*(v2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_pages) || (a1))
  {
    *(v2 + 32) = 1;
    v12 = v2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v13 + 8) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (*(v2 + 24))
    {
      *v10 = 1;
      (*(v8 + 104))(v10, *MEMORY[0x1E69AB450], v7);

      sub_1E1AF509C();

      (*(v8 + 8))(v10, v7);
    }

    type metadata accessor for JSIntentDispatcher();
    v15 = *(v2 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v16 = v21;
    sub_1E1AF4C1C();
    swift_retain_n();
    sub_1E1AF422C();

    sub_1E1AF4BEC();

    v17 = sub_1E1AF4BFC();

    v18 = sub_1E1AF649C();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v16;
    v20[5] = 0xD000000000000025;
    v20[6] = 0x80000001E1B71970;
    v20[7] = v17;
    v20[8] = v15;
    v20[9] = v19;
    sub_1E154AF74(0, 0, v6, &unk_1E1B2AF00, v20);
  }

  return result;
}

uint64_t sub_1E16F0F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v15;
  v8[8] = a5;
  v8[9] = a6;
  v13 = (*(*a4 + 112) + **(*a4 + 112));
  v10 = swift_task_alloc();
  v8[16] = v10;
  v11 = sub_1E16F5888();
  *v10 = v8;
  v10[1] = sub_1E16F10C4;

  return v13(v8 + 12, v8 + 8, a7, "", 0, 2, &type metadata for PersonalizationTransparencyPageIntent, v11);
}

uint64_t sub_1E16F10C4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1E16F14AC;
  }

  else
  {
    *(v2 + 144) = *(v2 + 96);
    v3 = sub_1E16F11E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E16F11E0()
{
  sub_1E16F5534();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v0[19] = v0[13];
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1E16F12A4;

  return sub_1E16F1778();
}

uint64_t sub_1E16F12A4(char a1)
{
  v2 = *v1;
  *(v2 + 88) = a1;
  *(v2 + 80) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E16F13A8, 0, 0);
}

uint64_t sub_1E16F13A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    *(v0 + 200) = *(v0 + 88);
    sub_1E1AF644C();
    *(v0 + 184) = sub_1E1AF643C();
    v3 = sub_1E1AF63CC();

    return MEMORY[0x1EEE6DFA0](sub_1E16F15A0, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E16F14AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    sub_1E1AF644C();
    *(v0 + 192) = sub_1E1AF643C();
    v3 = sub_1E1AF63CC();

    return MEMORY[0x1EEE6DFA0](sub_1E16F1698, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E16F15A0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 200);

  sub_1E16F2814(v1, v2 & 1);

  return MEMORY[0x1EEE6DFA0](sub_1E16F1630, 0, 0);
}

uint64_t sub_1E16F1630()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16F1698()
{
  v1 = *(v0 + 136);

  sub_1E16F242C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1E16F1718, 0, 0);
}

uint64_t sub_1E16F1718()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16F1778()
{
  v1[15] = v0;
  v2 = sub_1E1AF0B9C();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F08);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F10);
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F18);
  v1[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F20);
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F28);
  v1[29] = v6;
  v1[30] = *(v6 - 8);
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16F1A10, 0, 0);
}

uint64_t sub_1E16F1A10()
{
  v1 = [*(v0 + 120) ams_activeiTunesAccount];
  if (v1 && (v2 = v1, v3 = [v1 ams_accountID], *(v0 + 256) = v3, v2, v3))
  {
    sub_1E1AF0BBC();
    v4 = sub_1E1AF0BAC();
    sub_1E1AF0B7C();
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);

    sub_1E1AF0B5C();
    (*(v9 + 8))(v8, v10);
    v11 = sub_1E1302CD4(&qword_1EE1D2AE8, &qword_1ECEB7F28);
    v12 = swift_task_alloc();
    *(v0 + 264) = v12;
    *v12 = v0;
    v12[1] = sub_1E16F1EF8;
    v13 = *(v0 + 232);
    v14 = *(v0 + 200);

    return MEMORY[0x1EEE6D8C8](v14, v13, v11);
  }

  else
  {
    if (qword_1ECEB0FC8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1ECEB7EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v6 = *(v0 + 8);

    return v6(2);
  }
}

uint64_t sub_1E16F1EF8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1E16F23A0;
  }

  else
  {
    v2 = sub_1E16F200C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16F2028()
{
  v1 = *(v0 + 200);
  if ((*(*(v0 + 184) + 48))(v1, 1, *(v0 + 176)) == 1)
  {
    v2 = *(v0 + 256);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

LABEL_7:
    v9 = 2;
    goto LABEL_9;
  }

  sub_1E16F54C4(v1, *(v0 + 192));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 192), *(v0 + 128));
    if (qword_1ECEB0FC8 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 248);
    v3 = *(v0 + 240);
    v19 = *(v0 + 256);
    v20 = *(v0 + 232);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEB7EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    *(v0 + 72) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 48));
    (*(v4 + 16))(boxed_opaque_existential_0, v5, v6);
    sub_1E1AF38BC();
    sub_1E1308058(v0 + 48, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    (*(v4 + 8))(v5, v6);
    (*(v3 + 8))(v21, v20);
    goto LABEL_7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v16 = *(v0 + 152);
  (*(v15 + 32))(v14, *(v0 + 192), v16);
  sub_1E1AF0B6C();

  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v10, v12);
  v9 = *(v0 + 280);
LABEL_9:

  v17 = *(v0 + 8);

  return v17(v9);
}

uint64_t sub_1E16F23A0()
{
  *(v0 + 112) = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void sub_1E16F242C(void *a1)
{
  v2 = v1;
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v1 + 32) = 0;
  v11 = v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v12 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  v14 = *(v8 + 20);
  v15 = sub_1E1AEFCCC();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  *v10 = a1;
  swift_beginAccess();
  v16 = *(v2 + 16);
  if (v16)
  {
    v31 = v7;
    v32 = v5;
    sub_1E169B0B4();
    v33 = v8;
    v30 = swift_allocError();
    sub_1E13614D0(v10, v17);
    v18 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v19 = *(v16 + v18);
    v20 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1E172D0E4(0, v19[2] + 1, 1, v19);
      *(v16 + v18) = v19;
    }

    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      v19 = sub_1E172D0E4((v22 > 1), v23 + 1, 1, v19);
    }

    v19[2] = v23 + 1;
    v19[v23 + 4] = v30;
    *(v16 + v18) = v19;
    swift_endAccess();

    v5 = v32;
    v7 = v31;
  }

  else
  {
    v24 = a1;
  }

  swift_beginAccess();
  if (*(v2 + 24))
  {
    *v7 = a1;
    (*(v5 + 104))(v7, *MEMORY[0x1E69AB430], v4);
    v25 = a1;

    sub_1E1AF508C();

    (*(v5 + 8))(v7, v4);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v11 + 8);
    v27 = swift_getObjectType();
    sub_1E169B0B4();
    v28 = swift_allocError();
    sub_1E13614D0(v10, v29);
    (*(*(v26 + 8) + 24))(v28, v27);
    swift_unknownObjectRelease();
    sub_1E1361548(v10);
  }

  else
  {
    sub_1E1361548(v10);
  }
}

uint64_t sub_1E16F2814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1E1AEFE6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_pages) = a1;

  sub_1E16F2B9C(a2);
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (v14)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v17 = v14 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v17 = v16;
    *(v17 + 8) = 0;
    v18 = *(v14 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
    swift_beginAccess();
    *(v18 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  swift_beginAccess();
  if (*(v3 + 24))
  {
    v19 = OBJC_IVAR____TtC11AppStoreKit31PersonalizationTransparencyPage_pageMetrics;
    v20 = sub_1E1AF3C3C();
    (*(*(v20 - 8) + 16))(v9, a1 + v19, v20);
    (*(v7 + 104))(v9, *MEMORY[0x1E69AB440], v6);

    sub_1E1AF508C();

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  *(v3 + 32) = 0;
  v21 = v3 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v22 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  return sub_1E16F2CBC();
}

uint64_t sub_1E16F2B9C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_pages))
  {
    v2 = OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsEnabled;
    v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsEnabled);
    if (v3 == 2 || ((v3 ^ result) & 1) != 0)
    {
      v9 = result;
      v4 = v1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        v7 = *(v5 + 16);

        v7(v8, ObjectType, v5);

        result = swift_unknownObjectRelease();
      }

      *(v1 + v2) = v9 & 1;
    }
  }

  return result;
}

uint64_t sub_1E16F2CBC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - v3;
  sub_1E16F5534();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v5 = v10[1];
  v6 = sub_1E1AF649C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v7;
  v8[6] = v1;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsValueSequenceTask) = sub_1E154AF74(0, 0, v4, &unk_1E1B2B018, v8);
}

uint64_t sub_1E16F2E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F18);
  v5[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F10);
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F20);
  v5[31] = swift_task_alloc();
  v5[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F28);
  v5[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F30);
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F38);
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16F30B4, 0, 0);
}

uint64_t sub_1E16F30B4()
{
  sub_1E16F428C();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  MEMORY[0x1E68FFE80](v3);
  sub_1E1302CD4(&qword_1ECEB7F40, &qword_1ECEB7F20);
  sub_1E1AF651C();
  sub_1E1AF717C();
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D0);
  sub_1E1AF718C();
  swift_beginAccess();

  return MEMORY[0x1EEE6DFA0](sub_1E16F344C, 0, 0);
}

uint64_t sub_1E16F344C()
{
  v0[40] = sub_1E1AF716C();
  sub_1E1302CD4(&qword_1EE1D2AE8, &qword_1ECEB7F28);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_1E16F3540;
  v2 = v0[26];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1E16F3540()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_1E16F3800;
  }

  else
  {
    (*(v2 + 320))();
    v3 = sub_1E16F3668;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E16F3668()
{
  v1 = v0[26];
  if ((*(v0[28] + 48))(v1, 1, v0[27]) == 1)
  {
    sub_1E1308058(v1, &qword_1ECEB7F18);

    return MEMORY[0x1EEE6DFA0](sub_1E16F3D0C, 0, 0);
  }

  else
  {
    sub_1E16F54C4(v1, v0[29]);
    v2 = sub_1E1AF717C();
    v0[42] = v3;
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[43] = v4;
    *v4 = v0;
    v4[1] = sub_1E16F3818;
    v5 = v0[29];

    return (v7)(v0 + 47, v5);
  }
}

uint64_t sub_1E16F3818()
{
  v1 = *v0;
  v2 = *(*v0 + 232);

  sub_1E1308058(v2, &qword_1ECEB7F10);
  *(v1 + 377) = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1E16F396C, 0, 0);
}

uint64_t sub_1E16F3988()
{
  if (*(v0 + 377) == 2)
  {
    if (qword_1ECEB0FC0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 304);
    v1 = *(v0 + 312);
    v3 = *(v0 + 296);
    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1ECEB7EB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    (*(v2 + 8))(v1, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 352) = v7;
    *v7 = v0;
    v7[1] = sub_1E16F3BF8;
    v8.n128_u64[0] = 0.5;

    return MEMORY[0x1EEE0A228](v8);
  }
}

uint64_t sub_1E16F3BF8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1E16F4024;
  }

  else
  {
    v2 = sub_1E16F3DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E16F3D0C()
{
  (*(v0[38] + 8))(v0[39], v0[37]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E16F3DD0()
{
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1E1AF644C();
  *(v0 + 368) = sub_1E1AF643C();
  v2 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E16F3E88, v2, v1);
}

uint64_t sub_1E16F3E88()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  if (!*(Strong + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_pages) || (v2 = OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsEnabled, v3 = *(Strong + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_personalizedRecommendationsEnabled), v3 != 2) && ((*(v0 + 377) ^ v3) & 1) == 0)
  {

LABEL_9:
    swift_weakDestroy();
    goto LABEL_10;
  }

  v4 = Strong;
  v5 = Strong + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(v9, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 377);
  swift_weakDestroy();
  *(v4 + v2) = v10 & 1;

LABEL_10:

  return MEMORY[0x1EEE6DFA0](sub_1E16F344C, 0, 0);
}

uint64_t sub_1E16F4024()
{
  (*(v0[38] + 8))(v0[39], v0[37]);
  v1 = v0[45];
  if (qword_1ECEB0FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1ECEB7EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3 = v0[10];
  v4 = v0[11];
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v6 = v0[1];

  return v6();
}

void sub_1E16F428C()
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F20);
  v4 = [v0 ams_activeiTunesAccount];
  if (v4 && (v5 = v4, v6 = [v4 ams_accountID], v5, v6))
  {
    sub_1E1AF0BBC();
    v7 = sub_1E1AF0BAC();
    sub_1E1AF0B7C();

    if (!v1)
    {
      *(swift_allocObject() + 16) = ObjectType;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D0);
      sub_1E1302CD4(&qword_1ECEB7F40, &qword_1ECEB7F20);
      sub_1E1AF71AC();
    }
  }

  else
  {
    if (qword_1ECEB0FC8 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1ECEB7EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    sub_1E16F5648();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1E16F45BC()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB7EC8);
  __swift_project_value_buffer(v4, qword_1ECEB7EC8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E16F4714(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1E1AF0B9C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F08);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F10);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E16F4878, 0, 0);
}

uint64_t sub_1E16F4878()
{
  sub_1E16F574C(v0[7], v0[15]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[9] + 32))(v0[10], v2, v0[8]);
    if (qword_1ECEB0FC8 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    v6 = v0[6];
    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEB7EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v0[5] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(v4 + 16))(boxed_opaque_existential_0, v3, v5);
    sub_1E1AF38BC();
    sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    (*(v4 + 8))(v3, v5);
    *v6 = 2;
  }

  else
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    (*(v10 + 32))(v9, v2, v11);
    sub_1E1AF0B6C();
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E16F4B34(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1E1AF649C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  *(v8 + 40) = a1;
  *(v8 + 48) = ObjectType;
  v9 = v1;
  sub_1E154AF74(0, 0, v6, &unk_1E1B2B050, v8);
}

uint64_t sub_1E16F4C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 120) = a5;
  *(v5 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E16F4C7C, 0, 0);
}

uint64_t sub_1E16F4C7C()
{
  v1 = [*(v0 + 80) ams_activeiTunesAccount];
  if (v1 && (v2 = v1, v3 = [v1 ams_accountID], *(v0 + 88) = v3, v2, v3))
  {
    sub_1E1AF0BBC();
    *(v0 + 96) = sub_1E1AF0BAC();
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_1E16F4EC8;
    v5 = *(v0 + 120);

    return MEMORY[0x1EEDEDED0](v5, v3);
  }

  else
  {
    if (qword_1ECEB0FC8 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1ECEB7EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E16F4EC8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1E16F5044;
  }

  else
  {

    v3 = sub_1E16F4FE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E16F4FE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16F5044()
{
  if (qword_1ECEB0FC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = sub_1E1AF591C();
  __swift_project_value_buffer(v3, qword_1ECEB7EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  *(v0 + 40) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1E1AF38BC();
  sub_1E1308058(v0 + 16, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E16F5268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E16F0F54(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for PersonalizationTransparencyPagePresenter()
{
  result = qword_1ECEB7EF8;
  if (!qword_1ECEB7EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16F54C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E16F5534()
{
  result = qword_1EE1E3480;
  if (!qword_1EE1E3480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3480);
  }

  return result;
}

uint64_t sub_1E16F5580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5DC;

  return sub_1E16F2E68(a1, v4, v5, v6, v7);
}

unint64_t sub_1E16F5648()
{
  result = qword_1ECEB7F48;
  if (!qword_1ECEB7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7F48);
  }

  return result;
}

uint64_t sub_1E16F569C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5D8;

  return sub_1E16F4714(a1, a2);
}

uint64_t sub_1E16F574C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16F57BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E16F4C58(a1, v4, v5, v6, v7);
}

unint64_t sub_1E16F5888()
{
  result = qword_1ECEB7F50;
  if (!qword_1ECEB7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7F50);
  }

  return result;
}

unint64_t sub_1E16F58F0()
{
  result = qword_1ECEB7F58;
  if (!qword_1ECEB7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7F58);
  }

  return result;
}

uint64_t ItemSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 16))(&v14, a1, a2, a4, a6, a7, a8);
  if (v15)
  {
    sub_1E1361B28(&v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v12 = (*(v11 + 24))(a3, a5, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1E1488CF4(&v14);
    return 0;
  }

  return v12;
}

double ItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PageRefreshPolicy.__allocating_init(strategy:updateDelayInterval:shouldSendEventsForPageExit:refreshForDeviceDrivenContentChange:)(uint64_t a1, char a2, char a3, double a4)
{
  v8 = swift_allocObject();
  sub_1E137F600(a1, v8 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, &qword_1ECEB7F60);
  *(v8 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval) = a4;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = a2;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = a3;
  return v8;
}

uint64_t PageRefreshPolicy.init(strategy:updateDelayInterval:shouldSendEventsForPageExit:refreshForDeviceDrivenContentChange:)(uint64_t a1, char a2, char a3, double a4)
{
  sub_1E137F600(a1, v4 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, &qword_1ECEB7F60);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval) = a4;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = a2;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = a3;
  return v4;
}

uint64_t PageRefreshPolicy.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = &v78 - v4;
  v5 = sub_1E1AEFE6C();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF3D0C();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v78 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F60);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v87 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v78 - v28);
  v96 = a1;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v33 = *(v10 + 8);
  v33(v24, v9);
  v34 = MEMORY[0x1E69AAFD0];
  v95 = v9;
  v91 = v10 + 8;
  v92 = v33;
  if (v32)
  {
    if (v30 == 0xD000000000000011 && 0x80000001E1B71D00 == v32 || (sub_1E1AF74AC() & 1) != 0)
    {

      v35 = 0x80000001E1B71D60;
      sub_1E1AF381C();
      v37 = v93;
      v36 = v94;
      v38 = v90;
      (*(v93 + 104))(v90, *v34, v94);
      v39 = sub_1E1AF36BC();
      v41 = v40;
      v42 = *(v37 + 8);
      v33 = v92;
      v42(v38, v36);
      v43 = v95;
      v33(v21, v95);
      if (v41)
      {
        v44 = MEMORY[0x1E69AB690];
        v45 = 0xD000000000000019;
LABEL_7:
        v46 = sub_1E1AF5A7C();
        sub_1E1380704();
        swift_allocError();
        *v47 = v45;
        v47[1] = v35;
        v47[2] = v85;
        (*(*(v46 - 8) + 104))(v47, *v44, v46);
        swift_willThrow();
        v48 = sub_1E1AF39DC();
        (*(*(v48 - 8) + 8))(v89, v48);
        return (v33)(v96, v43);
      }

      *v29 = v39;
      refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    }

    else
    {
      if (v30 == 0x694C6F54656D6974 && v32 == 0xEA00000000006576)
      {
      }

      else
      {
        v70 = sub_1E1AF74AC();

        if ((v70 & 1) == 0)
        {
          v44 = MEMORY[0x1E69AB680];
          v35 = 0xE800000000000000;
          v45 = 0x7967657461727473;
          v43 = v95;
          goto LABEL_7;
        }
      }

      v79 = 0x80000001E1B71D20;
      sub_1E1AF381C();
      v71 = v81;
      sub_1E1AF371C();
      v72 = v71;
      v43 = v95;
      v33(v18, v95);
      v73 = v83;
      v74 = v84;
      if ((*(v83 + 48))(v72, 1, v84) == 1)
      {
        sub_1E1308058(v72, &unk_1ECEBB780);
        v44 = MEMORY[0x1E69AB690];
        v45 = 0xD000000000000011;
        v35 = v79;
        goto LABEL_7;
      }

      v75 = v43;
      v85 = *(v73 + 32);
      v85(v82, v72, v74);
      v76 = v80;
      sub_1E1AF381C();
      LODWORD(v83) = sub_1E1AF370C();
      v33(v76, v75);
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F68) + 48);
      v85(v29, v82, v74);
      *(v29 + v77) = v83 & 1;
      refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(refreshed - 8) + 56))(v29, 0, 1, refreshed);
    v51 = v96;
    v34 = MEMORY[0x1E69AAFD0];
  }

  else
  {
    v50 = type metadata accessor for PageRefreshPolicy.Strategy(0);
    (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
    v51 = v96;
  }

  sub_1E1AF381C();
  v54 = v93;
  v53 = v94;
  v55 = v90;
  (*(v93 + 104))(v90, *v34, v94);
  v56 = COERCE_DOUBLE(sub_1E1AF36BC());
  v58 = v57;
  (*(v54 + 8))(v55, v53);
  v59 = v21;
  v60 = v95;
  v61 = v92;
  v92(v59, v95);
  if (v58)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v56;
  }

  v63 = v86;
  sub_1E1AF381C();
  v64 = sub_1E1AF370C();
  v61(v63, v60);
  v65 = v88;
  sub_1E1AF381C();
  v66 = sub_1E1AF370C();
  v67 = sub_1E1AF39DC();
  (*(*(v67 - 8) + 8))(v89, v67);
  v61(v51, v60);
  v61(v65, v60);
  v68 = v87;
  sub_1E137F600(v29, v87, &qword_1ECEB7F60);
  type metadata accessor for PageRefreshPolicy(0);
  v69 = swift_allocObject();
  sub_1E137F600(v68, v69 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, &qword_1ECEB7F60);
  result = v69;
  *(v69 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval) = v62;
  *(v69 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v64 & 1;
  *(v69 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v66 & 1;
  return result;
}

uint64_t sub_1E16F65E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16F6684(uint64_t a1)
{
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F70);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F60);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v57 - v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v57 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v26 = v57 - v25;
  if (!a1)
  {

    return v1;
  }

  v63 = v21;
  v64 = v24;
  v59 = v23;
  v60 = v22;
  v61 = v9;
  v62 = v7;
  v67 = v4;
  v68 = v3;
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  v28 = *(refreshed - 8);
  (*(v28 + 56))(v26, 1, 1, refreshed);
  v29 = OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy;
  v57[1] = v10;
  v30 = *(v10 + 48);
  sub_1E16F65E4(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, v12);
  sub_1E16F65E4(a1 + v29, &v12[v30]);
  v31 = *(v28 + 48);
  if (v31(v12, 1, refreshed) == 1)
  {

    sub_1E1308058(v26, &qword_1ECEB7F60);
    sub_1E16F65E4(a1 + v29, v26);

    v32 = &v12[v30];
LABEL_4:
    sub_1E1308058(v32, &qword_1ECEB7F60);
LABEL_12:
    sub_1E1308058(v12, &qword_1ECEB7F60);
    v38 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
    v39 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit);
    v40 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange);
    type metadata accessor for PageRefreshPolicy(0);
    v1 = swift_allocObject();
    sub_1E137F600(v26, v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, &qword_1ECEB7F60);
    *(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval) = v38;
    *(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v39;
    *(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v40;
    return v1;
  }

  v58 = v29;
  v65 = v26;
  v66 = v30;
  v69 = a1;
  sub_1E16F65E4(v12, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v66;
    if (v31(&v12[v66], 1, refreshed) == 1)
    {
      v34 = *(v67 + 8);

      v34(v20, v68);
      v35 = v66;
      goto LABEL_10;
    }

    v42 = v63;
    sub_1E16F65E4(&v12[v33], v63);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v53 = v69;

      v26 = v65;
      sub_1E1308058(v65, &qword_1ECEB7F60);
      sub_1E16F65E4(v53 + v58, v26);

      (*(v67 + 8))(v20, v68);
      v32 = &v12[v33];
      goto LABEL_4;
    }

    v44 = v67;
    v43 = v68;
    v45 = *(v67 + 32);
    v46 = v61;
    v45(v61, v20, v68);
    v47 = v62;
    v45(v62, v42, v43);
    v48 = v69;

    v49 = sub_1E1AEFDDC();
    v50 = *(v44 + 8);
    v50(v47, v43);
    v50(v46, v43);
    sub_1E1308058(v65, &qword_1ECEB7F60);
    if (v49)
    {
      v51 = v60;
      sub_1E16F65E4(v48 + v58, v60);
    }

    else
    {

      v51 = v60;
      sub_1E16F65E4(v1 + v58, v60);
    }

    v56 = v51;
LABEL_26:
    v26 = v65;
    sub_1E137F600(v56, v65, &qword_1ECEB7F60);
    v32 = &v12[v66];
    goto LABEL_4;
  }

  v36 = *v20;
  v35 = v66;
  v37 = v31(&v12[v66], 1, refreshed);

  if (v37 != 1)
  {
    v26 = v65;
    sub_1E1308058(v65, &qword_1ECEB7F60);
    v52 = v64;
    sub_1E16F65E4(&v12[v35], v64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E16F65E4(v69 + v58, v26);

      (*(v67 + 8))(v52, v68);
      v32 = &v12[v35];
      goto LABEL_4;
    }

    v54 = v58;
    if (*v52 >= v36)
    {

      v55 = v59;
      sub_1E16F65E4(v1 + v54, v59);
    }

    else
    {
      v55 = v59;
      sub_1E16F65E4(v69 + v58, v59);
    }

    v56 = v55;
    goto LABEL_26;
  }

LABEL_10:
  if (v31(&v12[v35], 1, refreshed) == 1)
  {

    v26 = v65;
    sub_1E1308058(v65, &qword_1ECEB7F60);
    sub_1E16F65E4(v1 + v58, v26);
    goto LABEL_12;
  }

  result = sub_1E1AF749C();
  __break(1u);
  return result;
}

uint64_t sub_1E16F6E24(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - v12;
  v14 = sub_1E1AEFE6C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v72 = a1;
  v30 = *(a1 + 2);
  if (!v30)
  {
    return 0;
  }

  v68 = v6;
  v69 = &v61 - v27;
  v66 = v29;
  v67 = v1;
  v70 = v28;
  sub_1E16F65E4(v1 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, v13);
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  v65 = *(refreshed - 8);
  if ((*(v65 + 48))(v13, 1, refreshed) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB7F60);
    return 0;
  }

  v76 = refreshed;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E16F7568(v13);
    return 0;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F68);
  v62 = v13[*(v61 + 48)];
  v32 = v69;
  v77 = *(v15 + 32);
  v78 = v15 + 32;
  v77(v69, v13, v14);
  v74 = *(v15 + 16);
  v75 = v15 + 16;
  v74(v26, v32, v14);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_1E172D0BC(0, v30 + 1, 1, v72);
  }

  v35 = *(v72 + 2);
  v34 = *(v72 + 3);
  v63 = v11;
  if (v35 >= v34 >> 1)
  {
    v72 = sub_1E172D0BC(v34 > 1, v35 + 1, 1, v72);
  }

  v36 = v72;
  *(v72 + 2) = v35 + 1;
  v73 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v37 = &v36[v73];
  v38 = *(v64 + 72);
  v77(&v36[v73 + v38 * v35], v26, v14);
  v39 = sub_1E1AEFE5C();
  v40 = *(v36 + 2);
  if (v40)
  {
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v77;
    do
    {
      v74(v22, v37, v14);
      v42(v18, v22, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1E172D0BC(0, v41[2] + 1, 1, v41);
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        v41 = sub_1E172D0BC(v43 > 1, v44 + 1, 1, v41);
      }

      v41[2] = v44 + 1;
      v42 = v77;
      v39 = (v77)(v41 + v73 + v44 * v38, v18, v14);
      v37 += v38;
      --v40;
      v45 = v76;
    }

    while (v40);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
    v45 = v76;
  }

  MEMORY[0x1EEE9AC00](v39);
  v46 = v70;
  *(&v61 - 2) = v70;
  v47 = sub_1E188DF38(sub_1E16F769C, (&v61 - 4), v41);

  v48 = v71;
  sub_1E1890084(v47, v71);

  v49 = v64;
  v50 = *(v64 + 8);
  v50(v69, v14);
  v51 = v68;
  sub_1E137F600(v48, v68, &unk_1ECEBB780);
  if ((*(v49 + 48))(v51, 1, v14) == 1)
  {
    sub_1E1308058(v51, &unk_1ECEBB780);
    v50(v46, v14);
    return 0;
  }

  v53 = v66;
  v54 = v77;
  v77(v66, v51, v14);
  v55 = *(v61 + 48);
  v56 = v63;
  v54(v63, v53, v14);
  *(v56 + v55) = v62;
  swift_storeEnumTagMultiPayload();
  (*(v65 + 56))(v56, 0, 1, v45);
  v57 = *(v67 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval);
  v58 = *(v67 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit);
  v59 = *(v67 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange);
  type metadata accessor for PageRefreshPolicy(0);
  v60 = swift_allocObject();
  sub_1E137F600(v56, v60 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, &qword_1ECEB7F60);
  *(v60 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_updateDelayInterval) = v57;
  *(v60 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_shouldSendEventsForPageExit) = v58;
  *(v60 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_refreshForDeviceDrivenContentChange) = v59;
  v50(v46, v14);
  return v60;
}

uint64_t sub_1E16F7568(uint64_t a1)
{
  refreshed = type metadata accessor for PageRefreshPolicy.Strategy(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

uint64_t PageRefreshPolicy.__deallocating_deinit()
{
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17PageRefreshPolicy_strategy, &qword_1ECEB7F60);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16F7670@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PageRefreshPolicy.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E16F76D4()
{
  sub_1E16F7818();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E16F7818()
{
  if (!qword_1EE1F0F18)
  {
    type metadata accessor for PageRefreshPolicy.Strategy(255);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1F0F18);
    }
  }
}

void sub_1E16F78C0()
{
  sub_1E16F7934();
  if (v0 <= 0x3F)
  {
    sub_1E16F7964();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1E16F7934()
{
  result = qword_1EE1D2608;
  if (!qword_1EE1D2608)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1EE1D2608);
  }

  return result;
}

void sub_1E16F7964()
{
  if (!qword_1EE1E2318)
  {
    sub_1E1AEFE6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1E2318);
    }
  }
}

__n128 TitledButtonStackLayout.init(metrics:items:lineBreaks:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 112);
  *(a4 + 112) = *(a1 + 96);
  *(a4 + 128) = v5;
  v6 = *(a1 + 144);
  *(a4 + 144) = *(a1 + 128);
  *(a4 + 160) = v6;
  v7 = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = v7;
  v8 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v10;
  *a4 = a2;
  *(a4 + 8) = v4;
  return result;
}

uint64_t TitledButtonStackLayout.Metrics.init(buttonHeight:horizontalInterItemSpace:verticalInterItemSpace:maximumButtonWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 152) = 0;
  *(a5 + 136) = 0u;
  *(a5 + 120) = 0u;
  v9 = a5 + 120;
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  sub_1E1308EC0(a3, a5 + 80);

  return sub_1E13BC4E4(a4, v9);
}

uint64_t TitledButtonStackLayout.Metrics.buttonHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t TitledButtonStackLayout.Metrics.horizontalInterItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t TitledButtonStackLayout.Metrics.verticalInterItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

double TitledButtonStackLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F78);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23[-v12];
  v14 = [a1 traitCollection];
  v15 = sub_1E1AF698C();

  if (v15)
  {
    sub_1E16F8120((v3 + 2), *v3, a1, v25);
    v23[0] = v25[0];
    v24 = v25[1];
    _VerticalFlowLayout.measurements(fitting:in:)(a2);
    a2 = v16;
  }

  else
  {
    v18 = *v3;
    v17 = v3[1];
    if (v17)
    {
      v25[0] = a1;
      (*(*v17 + 104))(v25);
      v19 = sub_1E1AF00EC();
      (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    }

    else
    {
      v20 = sub_1E1AF00EC();
      (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    }

    sub_1E16F8C30(v18, v13, a1);
    sub_1E1308058(v13, &qword_1ECEB7F78);
    __swift_project_boxed_opaque_existential_1Tm(v3 + 2, v3[5]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v21 = *(v7 + 8);
    v21(v9, v6);
    __swift_project_boxed_opaque_existential_1Tm(v3 + 12, v3[15]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v21(v9, v6);
  }

  return a2;
}

void sub_1E16F8120(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v30 = sub_1E1AF745C();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v28 = a4;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1E135C2C8(0, v10, 0);
    v12 = 0;
    v13 = a2 + 32;
    v11 = v44;
    v29 = (v7 + 8);
    v14 = MEMORY[0x1E69AB908];
    do
    {
      sub_1E1300B24(v13, v38);
      v36 = v12;
      sub_1E1308EC0(v38, v37);
      v15 = sub_1E1AF140C();
      v35[3] = v15;
      v35[4] = v14;
      __swift_allocate_boxed_opaque_existential_0(v35);
      sub_1E1AF13FC();
      if (v10 == 1)
      {
        v33 = v15;
        v34 = v14;
        __swift_allocate_boxed_opaque_existential_0(v32);
        sub_1E1AF13FC();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1Tm((a1 + 80), *(a1 + 104));
        sub_1E13BC274();
        sub_1E1AF12DC();
        v17 = v16;
        (*v29)(v9, v30);
        v33 = MEMORY[0x1E69E7DE0];
        v34 = MEMORY[0x1E69AB858];
        v32[0] = v17;
      }

      sub_1E1300B24(v37, v39);
      sub_1E1300B24(v35, v41);
      sub_1E134FD1C(v32, v42 + 8, &unk_1ECEB47F0);
      WORD4(v40) = 256;
      v43 = 2;
      sub_1E1308058(v32, &unk_1ECEB47F0);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_1E1308058(&v36, &qword_1ECEB7F80);
      v44 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1E135C2C8((v18 > 1), v19 + 1, 1);
        v11 = v44;
      }

      ++v12;
      *(v11 + 16) = v19 + 1;
      v20 = v11 + 136 * v19;
      *(v20 + 32) = v39[0];
      v21 = v39[1];
      v22 = v40;
      v23 = v41[1];
      *(v20 + 80) = v41[0];
      *(v20 + 96) = v23;
      *(v20 + 48) = v21;
      *(v20 + 64) = v22;
      v24 = v42[0];
      v25 = v42[1];
      v26 = v42[2];
      *(v20 + 160) = v43;
      *(v20 + 128) = v25;
      *(v20 + 144) = v26;
      *(v20 + 112) = v24;
      v13 += 40;
      --v10;
      v14 = MEMORY[0x1E69AB908];
    }

    while (v10);
    a4 = v28;
  }

  *a4 = 1;
  *(a4 + 8) = v11;
}

uint64_t TitledButtonStackLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v72 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F78);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - v14;
  v16 = sub_1E1AF745C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = *v6;
  if (*(*v6 + 16))
  {
    v75 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = [a1 traitCollection];
    v22 = sub_1E1AF698C();

    if (v22)
    {
      sub_1E16F8120((v7 + 2), v20, a1, v81);
      LOBYTE(v79) = v81[0];
      *(&v79 + 1) = v81[1];
      _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, v72, a4, a5, a6);
    }

    else
    {
      v77 = v15;
      v78 = v20;
      __swift_project_boxed_opaque_existential_1Tm(v7 + 12, v7[15]);
      v24 = a1;
      v25 = v75;
      sub_1E13BC274();
      sub_1E1AF12DC();
      v68 = v26;
      v27 = *(v17 + 8);
      v27(v25, v16);
      __swift_project_boxed_opaque_existential_1Tm(v7 + 7, v7[10]);
      sub_1E13BC274();
      v74 = v24;
      sub_1E1AF12DC();
      v70 = v28;
      v29 = v25;
      v30 = v27;
      v27(v29, v16);
      v31 = v7[1];
      if (v31)
      {
        v32 = v74;
        v81[0] = v74;
        v33 = v77;
        (*(*v31 + 104))(v81);
        v34 = 0;
        v35 = v32;
      }

      else
      {
        v34 = 1;
        v35 = v74;
        v33 = v77;
      }

      v36 = v78;
      v37 = sub_1E1AF00EC();
      (*(*(v37 - 8) + 56))(v33, v34, 1, v37);
      v38 = sub_1E16F8C30(v36, v33, v35);
      result = sub_1E1308058(v33, &qword_1ECEB7F78);
      v67 = *(v38 + 16);
      if (v67)
      {
        v39 = 0;
        v65 = v38 + 32;
        v40 = 0.0;
        v41 = v30;
        v64 = a2;
        v63 = a4;
        v66 = v38;
        v73 = v30;
        while (v39 < *(v38 + 16))
        {
          v71 = v39;
          v43 = *(v65 + 8 * v39);
          v44 = *(v43 + 16);
          if (v44 <= 1)
          {
            v45 = 1;
          }

          else
          {
            v45 = *(v43 + 16);
          }

          v46 = v70 * (v45 - 1);

          v85.origin.x = v72;
          v85.origin.y = a4;
          v85.size.width = a5;
          v85.size.height = a6;
          v47 = floor((CGRectGetWidth(v85) - v46) / v44);
          sub_1E134FD1C((v7 + 17), &v79, &unk_1ECEB47F0);
          if (v80)
          {
            sub_1E1308EC0(&v79, v81);
            __swift_project_boxed_opaque_existential_1Tm(v81, v82);
            v48 = v75;
            sub_1E13BC274();
            sub_1E1AF12DC();
            v50 = v49;
            v41(v48, v16);
            if (v50 < v47)
            {
              v47 = v50;
            }

            __swift_destroy_boxed_opaque_existential_1(v81);
          }

          else
          {
            sub_1E1308058(&v79, &unk_1ECEB47F0);
          }

          v86.origin.x = v72;
          v86.origin.y = a4;
          v86.size.width = a5;
          v86.size.height = a6;
          MidX = CGRectGetMidX(v86);
          v52 = *(v43 + 16);
          if (v52)
          {
            v53 = a5;
            v54 = a6;
            v55 = MidX - ceil((v46 + v47 * v44) * 0.5);
            v56 = v70 + v47;
            v69 = v43;
            v57 = v43 + 32;
            v42 = 0.0;
            do
            {
              v78 = v52;
              sub_1E1300B24(v57, v81);
              v76 = v83;
              v77 = __swift_project_boxed_opaque_existential_1Tm(v81, v82);
              __swift_project_boxed_opaque_existential_1Tm(v7 + 2, v7[5]);
              v58 = v75;
              sub_1E13BC274();
              sub_1E1AF12DC();
              v73(v58, v16);
              sub_1E1AF11DC();
              v60 = v59;
              __swift_project_boxed_opaque_existential_1Tm(v81, v82);
              sub_1E1AF116C();
              __swift_destroy_boxed_opaque_existential_1(v81);
              v55 = v56 + v55;
              if (v42 <= v60)
              {
                v42 = v60;
              }

              v57 += 40;
              v52 = v78 - 1;
            }

            while (v78 != 1);

            a6 = v54;
            a5 = v53;
            a4 = v63;
            v41 = v73;
          }

          else
          {

            v42 = 0.0;
          }

          v39 = v71 + 1;
          v40 = v40 + v68 + v42;
          v38 = v66;
          if (v71 + 1 == v67)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_29:

        v61 = v72;
        v87.origin.x = v72;
        v87.origin.y = a4;
        v87.size.width = a5;
        v87.size.height = a6;
        CGRectGetMinX(v87);
        v88.origin.x = v61;
        v88.origin.y = a4;
        v88.size.width = a5;
        v88.size.height = a6;
        CGRectGetMinY(v88);
        v89.origin.y = a4;
        v89.origin.x = v61;
        v89.size.width = a5;
        v89.size.height = a6;
        CGRectGetWidth(v89);
        return sub_1E1AF106C();
      }
    }
  }

  else
  {

    return sub_1E1AF10AC();
  }

  return result;
}

uint64_t sub_1E16F8C30(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = a3;
  v50 = sub_1E1AF006C();
  v47 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F88);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F78);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_1E1AF00EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a2, v11, &qword_1ECEB7F78);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB7F78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7F90);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E1B02CC0;
    *(v16 + 32) = a1;
  }

  else
  {
    v46 = v13;
    (*(v13 + 32))(v15, v11, v12);
    v45 = v15;
    sub_1E1AF007C();
    sub_1E16F93C0(&qword_1EE1E2308, MEMORY[0x1E6969B50]);
    v17 = 0;
    ++v47;
    v44 = a1 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v18 = v49;
      sub_1E1AF668C();
      sub_1E16F93C0(&qword_1EE1E2310, MEMORY[0x1E6969B18]);
      v19 = v50;
      v20 = sub_1E1AF5DAC();
      (*v47)(v18, v19);
      if (v20)
      {
        break;
      }

      v21 = sub_1E1AF66FC();
      v23 = *v22;
      v21(v51, 0);
      sub_1E1AF669C();
      v24 = *(a1 + 16);
      if (v17 >= v24 || v23 >= v24)
      {
        break;
      }

      if (v23 < v17)
      {
        __break(1u);
        goto LABEL_35;
      }

      v25 = v12;
      v26 = a1;
      v27 = v23 + 1;
      v28 = v23 + 1 - v17;
      if (v24 == v28)
      {
        v29 = v26;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
        if (v27 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7FA0);
            v29 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v34 - 32) / 40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0);
          swift_arrayInitWithCopy();
        }
      }

      v30 = [v48 traitCollection];
      v31 = sub_1E1AF697C();

      if (v31)
      {
        v29 = sub_1E190CA04(v29);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1E172D600(0, *(v16 + 16) + 1, 1, v16);
      }

      v33 = *(v16 + 16);
      v32 = *(v16 + 24);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_1E172D600((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 16) = v33 + 1;
      *(v16 + 8 * v33 + 32) = v29;
      v17 = v27;
      a1 = v26;
      v12 = v25;
    }

    sub_1E1308058(v8, &qword_1ECEB7F88);
    v24 = *(a1 + 16);
    if (v24 < v17)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (!v17)
    {

      goto LABEL_24;
    }

LABEL_36:
    sub_1E14E6394(a1, v44, v17, (2 * v24) | 1);
    a1 = v42;
LABEL_24:
    v36 = v45;
    v35 = v46;
    v37 = [v48 traitCollection];
    v38 = sub_1E1AF697C();

    if (v38)
    {
      a1 = sub_1E190CA04(a1);
    }

    if (*(a1 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1E172D600(0, *(v16 + 16) + 1, 1, v16);
      }

      v40 = *(v16 + 16);
      v39 = *(v16 + 24);
      if (v40 >= v39 >> 1)
      {
        v16 = sub_1E172D600((v39 > 1), v40 + 1, 1, v16);
      }

      (*(v35 + 8))(v36, v12);
      *(v16 + 16) = v40 + 1;
      *(v16 + 8 * v40 + 32) = a1;
    }

    else
    {
      (*(v35 + 8))(v36, v12);
    }
  }

  return v16;
}

uint64_t sub_1E16F92EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1E16F9334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E16F93C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E16F9590()
{
  result = qword_1EE1D2F40;
  if (!qword_1EE1D2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2F40);
  }

  return result;
}

uint64_t sub_1E16F95E4(uint64_t a1, void *a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001E1B71E00 == a2 || (sub_1E1AF74AC() & 1) != 0)
  {
    v4 = sub_1E1AF055C();
    v18 = v4;
    v19 = sub_1E16F9904();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    (*(*(v4 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E699C020], v4);
    v6 = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {

    v8._countAndFlagsBits = a1;
    v8._object = a2;
    Feature.init(rawValue:)(v8);
    if (v12 == 18)
    {
      v14 = 0u;
      v15 = 0u;
      v16 = 0;

      Feature.iOS.init(rawValue:)(&v12);
      v9 = v12;
      if (v12 == 11)
      {
        v10 = 0;
        v11 = 0;
        memset(v17, 0, sizeof(v17));
      }

      else
      {
        v11 = sub_1E16F98B0();
        LOBYTE(v17[0]) = v9;
        v10 = &type metadata for Feature.iOS;
      }

      v18 = v10;
      v19 = v11;
      if (*(&v15 + 1))
      {
        sub_1E16F97D8(&v14);
      }
    }

    else
    {
      *(&v15 + 1) = &type metadata for Feature;
      v16 = sub_1E1309EB0();
      LOBYTE(v14) = v12;
      sub_1E1308EC0(&v14, v17);
    }

    sub_1E16F9840(v17, &v12);
    if (v13)
    {
      sub_1E1308EC0(&v12, &v14);
      v6 = sub_1E1AF056C();
      __swift_destroy_boxed_opaque_existential_1(&v14);
      sub_1E16F97D8(v17);
    }

    else
    {
      sub_1E16F97D8(&v12);
      sub_1E16F97D8(v17);
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_1E16F97D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E16F9840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E16F98B0()
{
  result = qword_1EE1E4A30;
  if (!qword_1EE1E4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4A30);
  }

  return result;
}

unint64_t sub_1E16F9904()
{
  result = qword_1ECEB7FB8;
  if (!qword_1ECEB7FB8)
  {
    sub_1E1AF055C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7FB8);
  }

  return result;
}

uint64_t StoreTab.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 4)
  {
    if (v2 <= 7)
    {
      if (v2 == 5)
      {
        v3 = 0x656461637261;
      }

      else if (v2 == 6)
      {
        v3 = 0x6465727574616566;
      }

      else
      {
        v3 = 0x69726F6765746163;
      }

      goto LABEL_25;
    }

    switch(v2)
    {
      case 8:
        v3 = 0x737472616863;
        goto LABEL_25;
      case 9:
        v3 = 0x6573616863727570;
        goto LABEL_25;
      case 10:
        v3 = 0x64616F6C6E776F64;
        goto LABEL_25;
    }

LABEL_24:
    v3 = *v0;
    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x7961646F74;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v3 = 0x73656D6167;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v2 == 2)
  {
    v3 = 1936748641;
  }

  else if (v2 == 3)
  {
    v3 = 0x73657461647075;
  }

  else
  {
    v3 = 0x686372616573;
  }

LABEL_25:
  sub_1E13BC260(v1, v2);
  return v3;
}

uint64_t StoreTab.Identifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x73656D6167 && v3 == 0xE500000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 1936748641 && v3 == 0xE400000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x73657461647075 && v3 == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x686372616573 && v3 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0x6465727574616566 && v3 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0x69726F6765746163 && v3 == 0xEA00000000007365 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0x737472616863 && v3 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0x6573616863727570 && v3 == 0xE900000000000064 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0x64616F6C6E776F64 && v3 == 0xE900000000000073 || (sub_1E1AF74AC() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0x656461637261 && v3 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0 || v4 == 0x746F6C65636FLL && v3 == 0xE600000000000000 || (result = sub_1E1AF74AC(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 5;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t sub_1E16F9EC4()
{
  v0 = type metadata accessor for StoreTab();
  v1 = (v0 - 8);
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2730);
  v29 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E1B02CD0;
  v27 = v9 + v8;
  v28 = v9;
  v10 = sub_1E1AEFCCC();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v12 = sub_1E15A0350(MEMORY[0x1E69E7CC0]);
  *v4 = xmmword_1E1B2B450;
  sub_1E1307FE8(v7, &v4[v1[8]]);
  v13 = &v4[v1[9]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[v1[11]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v30 = 0x73657461647075;
  v31 = 0xE700000000000000;
  sub_1E13B8AA4();
  v15 = sub_1E1AF6DDC();
  v17 = v16;
  sub_1E13ECBA0(v7);
  *(v4 + 2) = v15;
  *(v4 + 3) = v17;
  *&v4[v1[10]] = v12;
  v18 = v27;
  sub_1E14B1770(v4, v27);
  v11(v7, 1, 1, v10);
  v19 = sub_1E15A0350(MEMORY[0x1E69E7CC0]);
  *v4 = xmmword_1E1B2B460;
  sub_1E1307FE8(v7, &v4[v1[8]]);
  v20 = &v4[v1[9]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v4[v1[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v30 = 0x686372616573;
  v31 = 0xE600000000000000;
  v22 = sub_1E1AF6DDC();
  v24 = v23;
  sub_1E13ECBA0(v7);
  *(v4 + 2) = v22;
  *(v4 + 3) = v24;
  *&v4[v1[10]] = v19;
  result = sub_1E14B1770(v4, v18 + v29);
  qword_1EE1E0F48 = v28;
  return result;
}

uint64_t static StoreTab.fallbackTabs.getter()
{
  if (qword_1EE1E0F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static StoreTab.fallbackTabs.setter(uint64_t a1)
{
  if (qword_1EE1E0F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE1E0F48 = a1;
}

uint64_t (*static StoreTab.fallbackTabs.modify())()
{
  if (qword_1EE1E0F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double StoreTab.Identifier.init(navigationTab:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2 > 4)
  {
    if (*a1 > 6u)
    {
      if (v2 == 7)
      {
        result = 0.0;
        *a2 = xmmword_1E1B2B470;
        return result;
      }

      goto LABEL_10;
    }

    result = 0.0;
    if (v2 == 5)
    {
      *a2 = xmmword_1E1B2B460;
    }

    else
    {
      *a2 = xmmword_1E1B2B450;
    }
  }

  else
  {
    if (*a1 <= 2u)
    {
      if (v2 >= 2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        return result;
      }

LABEL_10:
      result = 0.0;
      *a2 = xmmword_1E1B21D30;
      return result;
    }

    result = 0.0;
    if (v2 == 3)
    {
      *a2 = xmmword_1E1B28A10;
    }

    else
    {
      *a2 = xmmword_1E1B04490;
    }
  }

  return result;
}

uint64_t StoreTab.Identifier.fallbackPageContext.getter()
{
  StoreTab.Identifier.rawValue.getter();
  sub_1E13B8AA4();
  v0 = sub_1E1AF6DDC();

  return v0;
}

uint64_t sub_1E16FA468@<X0>(uint64_t *a1@<X8>)
{
  result = StoreTab.Identifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E16FA494()
{
  result = qword_1EE1E0F58[0];
  if (!qword_1EE1E0F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E0F58);
  }

  return result;
}

uint64_t sub_1E16FA4E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1AF762C();
  sub_1E19DC324(v4, v1, v2);
  return sub_1E1AF767C();
}

uint64_t sub_1E16FA53C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1AF762C();
  sub_1E19DC324(v4, v1, v2);
  return sub_1E1AF767C();
}

uint64_t sub_1E16FA584()
{
  v0 = StoreTab.Identifier.rawValue.getter();
  v2 = v1;
  if (v0 == StoreTab.Identifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit0B3TabV10IdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E16FA634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 16))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 10;
  if (v4 >= 0xC)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E16FA68C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 10;
    }
  }

  return result;
}

void *sub_1E16FA6DC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id String.encapsulated(color:scale:shape:style:platterSize:lineWeight:minimumWidth:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19, double a20, char a21)
{
  v21 = [objc_allocWithZone(MEMORY[0x1E69655F0]) init];
  v22 = v21;
  if (a1)
  {
    [v21 setColor_];
  }

  if (a3)
  {
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [v22 setScale_];
    if (a5)
    {
LABEL_5:
      v23 = a17;
      if (a7)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  [v22 setShape_];
  v23 = a17;
  if (a7)
  {
LABEL_6:
    v24 = a19;
    if (v23)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v22 setStyle_];
  v24 = a19;
  if ((v23 & 1) == 0)
  {
LABEL_7:
    [v22 setPlatterSize_];
  }

LABEL_8:
  if ((v24 & 1) == 0)
  {
    [v22 setLineWeight_];
  }

  if ((a21 & 1) == 0)
  {
    [v22 setMinimumWidth_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v26 = *MEMORY[0x1E69655D0];
  *(inited + 32) = *MEMORY[0x1E69655D0];
  *(inited + 64) = sub_1E16FA960();
  *(inited + 40) = v22;
  v27 = v26;
  v28 = v22;
  sub_1E159D27C(inited);
  swift_setDeallocating();
  sub_1E16FAC1C(inited + 32);
  v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v30 = sub_1E1AF5DBC();
  type metadata accessor for Key(0);
  sub_1E16FAC84();
  v31 = sub_1E1AF5C6C();

  v32 = [v29 initWithString:v30 attributes:v31];

  return v32;
}

unint64_t sub_1E16FA960()
{
  result = qword_1ECEB7FC0;
  if (!qword_1ECEB7FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB7FC0);
  }

  return result;
}

id NSAttributedString.encapsulated(color:scale:shape:style:platterSize:lineWeight:minimumWidth:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19, double a20, char a21)
{
  v22 = [objc_allocWithZone(MEMORY[0x1E69655F0]) init];
  v23 = v22;
  if (a1)
  {
    [v22 setColor_];
  }

  if (a3)
  {
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [v23 setScale_];
    if (a5)
    {
LABEL_5:
      v24 = a17;
      if (a7)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  [v23 setShape_];
  v24 = a17;
  if (a7)
  {
LABEL_6:
    v25 = a19;
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v23 setStyle_];
  v25 = a19;
  if (v24)
  {
LABEL_7:
    v26 = a21;
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_15:
    [v23 setLineWeight_];
    if (v26)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_14:
  [v23 setPlatterSize_];
  v26 = a21;
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v26 & 1) == 0)
  {
LABEL_9:
    [v23 setMinimumWidth_];
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v28 = *MEMORY[0x1E69655D0];
  *(inited + 32) = *MEMORY[0x1E69655D0];
  *(inited + 64) = sub_1E16FA960();
  *(inited + 40) = v23;
  v29 = v28;
  v30 = v23;
  sub_1E159D27C(inited);
  swift_setDeallocating();
  sub_1E16FAC1C(inited + 32);
  v31 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  type metadata accessor for Key(0);
  sub_1E16FAC84();
  v32 = sub_1E1AF5C6C();

  v33 = v31;
  [v33 addAttributes:v32 range:{0, objc_msgSend(v33, sel_length)}];

  return v33;
}

uint64_t sub_1E16FAC1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E16FAC84()
{
  result = qword_1EE1E33D0;
  if (!qword_1EE1E33D0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E33D0);
  }

  return result;
}

uint64_t EngagementToggleAction.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22EngagementToggleAction_identifier);

  return v1;
}

uint64_t EngagementToggleAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v67 = sub_1E1AEFEAC();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v62[-v5];
  v6 = sub_1E1AF39DC();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v62[-v9];
  v10 = sub_1E1AF3E1C();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v62[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v62[-v15];
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v62[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62[-v22];
  v24 = 0xEA00000000007265;
  sub_1E1AF381C();
  v68 = sub_1E1AF37CC();
  v26 = v25;
  v27 = v23;
  v28 = v16;
  v29 = *(v17 + 8);
  v88 = v17 + 8;
  (v29)(v27, v28);
  if (!v26)
  {
    v34 = 0x696669746E656469;
    v33 = a1;
    goto LABEL_5;
  }

  v30 = v26;
  sub_1E1AF381C();
  v31 = sub_1E1AF370C();
  (v29)(v21, v28);
  v32 = a1;
  if (v31 == 2)
  {
    v33 = a1;
    v34 = 0x65756C6176;

    v24 = 0xE500000000000000;
LABEL_5:
    v36 = v78;
    v35 = v79;
    v37 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v38 = v34;
    v38[1] = v24;
    v38[2] = v77;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    (*(v36 + 8))(v80, v35);
    (v29)(v33, v28);
    return v29;
  }

  v63 = v31;
  v64 = v29;
  v77 = v28;
  sub_1E1AF381C();
  v39 = v78;
  (*(v78 + 16))(v69, v80, v79);
  v40 = v70;
  v41 = v76;
  sub_1E1AF464C();
  v42 = v75;
  v43 = *(v75 + 48);
  if (v43(v40, 1, v41) == 1)
  {
    v44 = v72;
    sub_1E1AF3DFC();
    v45 = v44;
    if (v43(v40, 1, v41) != 1)
    {
      sub_1E1308058(v40, &qword_1ECEBB7C0);
    }
  }

  else
  {
    v45 = v72;
    (*(v42 + 32))(v72, v40, v41);
  }

  v46 = *(v42 + 16);
  v47 = v73;
  v46(v73, v45, v41);
  type metadata accessor for EngagementToggleAction();
  v29 = swift_allocObject();
  v48 = (v29 + OBJC_IVAR____TtC11AppStoreKit22EngagementToggleAction_identifier);
  *v48 = v68;
  v48[1] = v30;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit22EngagementToggleAction_value) = v63 & 1;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v46(v74, v47, v41);
  v49 = sub_1E1AF46DC();
  v50 = v71;
  (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
  v51 = (v29 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v51 = 0u;
  v51[1] = 0u;
  v52 = v29 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v86, &v83);
  if (*(&v84 + 1))
  {
    v53 = v84;
    *v52 = v83;
    *(v52 + 16) = v53;
    *(v52 + 32) = v85;
  }

  else
  {
    v54 = v65;
    sub_1E1AEFE9C();
    v55 = sub_1E1AEFE7C();
    v57 = v56;
    (*(v66 + 8))(v54, v67);
    v81 = v55;
    v82 = v57;
    v50 = v71;
    sub_1E1AF6F6C();
    sub_1E1308058(&v83, &unk_1ECEB5670);
  }

  (*(v39 + 8))(v80, v79);
  v64(v32, v77);
  sub_1E1308058(v86, &unk_1ECEB5670);
  v59 = v75;
  v58 = v76;
  v60 = *(v75 + 8);
  v60(v73, v76);
  v60(v72, v58);
  sub_1E134B7C8(v50, v29 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  (*(v59 + 32))(v29 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v74, v58);
  return v29;
}