uint64_t sub_1E17DE368(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_alwaysShowAppEvent))
  {
    return 1;
  }

  v2 = *(a1 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_lockup);
  v3 = *(v2 + 24);
  v8[0] = *(v2 + 16);
  v8[1] = v3;

  sub_1E17DE468(v8, v9);

  v4 = v12 >> 60;
  if (v12 >> 60 == 3)
  {
    sub_1E139CEA8(v9);
    return 1;
  }

  else
  {
    v5 = v4 == 2 || v4 == 7;
    v7 = 1;
    if (!v5)
    {
      if (v4 != 8 || v13 || v12 != 0x8000000000000000 || v9[0] != 1 || (v6 = vorrq_s8(v10, v11), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v9[1]))
      {
        v7 = 0;
      }
    }

    sub_1E139CEA8(v9);
    return v7;
  }
}

double sub_1E17DE468@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1E1AF320C();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStates;
  v12 = *(v3 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStates);
  v43[2] = *a1;
  v43[3] = v10;
  v40 = sub_1E17E10D8;
  v41 = v43;
  v42 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B50);
  sub_1E1AF690C();

  v53 = v44;
  v54 = v45;
  v55 = v46;
  v14 = v47;
  if ((v47 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v15 = *(v3 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStateController);
    v36[2] = 0;
    v37 = v8;
    if (v15)
    {
      v16 = *(v3 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      *&v49 = v9;
      *(&v49 + 1) = v10;
      (*(v16 + 56))(&v49, ObjectType, v16);
      v19 = v18;
      v20 = swift_getObjectType();
      (*(v19 + 16))(&v49, v20, v19);
      v13 = swift_unknownObjectRelease();
      v21 = v49;
      v22 = v50;
      v24 = v51;
      v23 = v52;
    }

    else
    {
      v23 = xmmword_1E1B11BA0;
      v21 = xmmword_1E1B34B60;
      v22 = 0uLL;
      v24 = 0uLL;
    }

    v36[1] = v36;
    v49 = v21;
    v50 = v22;
    v51 = v24;
    v52 = v23;
    v28 = *(v3 + v11);
    MEMORY[0x1EEE9AC00](v13);
    v36[-4] = v9;
    v36[-3] = v10;
    v36[-2] = &v49;
    v36[0] = *(v28 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v29 = v38;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v43[4] = v30;
    sub_1E17E1158(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
    v31 = v37;
    v32 = v39;
    v33 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v33);
    v36[-4] = sub_1E17E10E0;
    v36[-3] = &v36[-6];
    v36[-2] = v28;
    sub_1E1AF68FC();
    (*(v29 + 8))(v31, v32);

    v34 = v50;
    *a2 = v49;
    *(a2 + 16) = v34;
    result = *&v51;
    v35 = v52;
    *(a2 + 32) = v51;
    *(a2 + 48) = v35;
  }

  else
  {
    v25 = v48;
    v26 = v54;
    *a2 = v53;
    *(a2 + 16) = v26;
    result = *&v55;
    *(a2 + 32) = v55;
    *(a2 + 48) = v14;
    *(a2 + 56) = v25;
  }

  return result;
}

double sub_1E17DE884@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1E15A47D8(a2, a3), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + (v6 << 6));
    v10 = v8[2];
    v9 = v8[3];
    v11 = v8[1];
    v16[0] = *v8;
    v16[1] = v11;
    v16[2] = v10;
    v16[3] = v9;
    v12 = v8[1];
    *a4 = *v8;
    a4[1] = v12;
    v13 = v8[3];
    a4[2] = v8[2];
    a4[3] = v13;
    sub_1E141CF5C(v16, &v15);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    a4[3] = xmmword_1E1B0E0F0;
  }

  return result;
}

uint64_t sub_1E17DE914(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{

  sub_1E141CF5C(a4, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[0] = *a1;
  sub_1E159A1B0(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v10[0];
  return result;
}

double sub_1E17DE9A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AdvertsSearchResult();
  v28 = 0u;
  v29 = 0u;
  if (!swift_dynamicCastClass())
  {
    v27 = a1;
    type metadata accessor for SearchResult();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24C0);
    if (swift_dynamicCast())
    {
      sub_1E1361B28(&v24, &v21);
      v14 = *(&v22 + 1);
      v15 = v23;
      __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
      v10 = (*(v15 + 8))(v14, v15);
      v16 = *(&v22 + 1);
      v17 = v23;
      __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
      (*(v17 + 16))(v20, v16, v17);
      sub_1E1308058(&v28, &qword_1ECEB2DF0);
      v28 = v20[0];
      v29 = v20[1];
      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      sub_1E1308058(&v28, &qword_1ECEB2DF0);

      v10 = 0;
      v28 = 0u;
      v29 = 0u;
    }

    goto LABEL_9;
  }

  v5 = v2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 112))(&v21, ObjectType, v6);
    swift_unknownObjectRelease();
    if (*(&v22 + 1))
    {
      sub_1E1361B28(&v21, &v24);
      v8 = v25;
      v9 = v26;
      __swift_project_boxed_opaque_existential_1Tm(&v24, v25);
      v10 = (*(v9 + 8))(v8, v9);
      v11 = v25;
      v12 = __swift_project_boxed_opaque_existential_1Tm(&v24, v25);
      *(&v22 + 1) = v11;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
      (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v12, v11);
      sub_1E1308058(&v28, &qword_1ECEB2DF0);
      v28 = v21;
      v29 = v22;
      __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_9:
      *a2 = v10;
      result = *&v28;
      v19 = v29;
      *(a2 + 8) = v28;
      *(a2 + 24) = v19;
      return result;
    }

    sub_1E1308058(&v28, &qword_1ECEB2DF0);
  }

  else
  {
    sub_1E1308058(&v28, &qword_1ECEB2DF0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
  }

  sub_1E1308058(&v21, &qword_1ECEB50D0);
  *a2 = 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

uint64_t sub_1E17DECB8()
{
  v1 = v0;
  result = sub_1E1AF018C();
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5 >> 62)
    {
      result = sub_1E1AF71CC();
      if (v3 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 >= result)
      {
        return result;
      }
    }

    v6 = *(v1 + v4);
    if ((v6 & 0xC000000000000001) != 0)
    {

      v7 = MEMORY[0x1E68FFD80](v3, v6);
    }

    else
    {
      if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v7 = *(v6 + 8 * v3 + 32);
    }

    sub_1E17DE9A4(v7, v14);
    if (*&v14[0] == 1)
    {

      v8 = &unk_1ECEB98C0;
      v9 = v14;
    }

    else
    {
      v16[0] = v14[0];
      v16[1] = v14[1];
      v17 = v15;
      sub_1E134FD1C(v16, v14, &qword_1ECEB98C8);
      v10 = *&v14[0];
      if (*&v14[0])
      {
        sub_1E1308058(v14 + 8, &qword_1ECEB2DF0);
        v11 = v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v12 + 8) + 8))(v10, v16 + 8, ObjectType);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v8 = &qword_1ECEB98C8;
        v9 = v16;
      }

      else
      {
        sub_1E1308058(v16, &qword_1ECEB98C8);

        v8 = &qword_1ECEB2DF0;
        v9 = (v14 + 8);
      }
    }

    return sub_1E1308058(v9, v8);
  }

  return result;
}

uint64_t sub_1E17DEF0C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E17DEF50(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 16) + 8))(ObjectType);
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 16) + 16))(v9);
  }

  return swift_unknownObjectRelease();
}

void (*sub_1E17DF034(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1E17DF0BC;
}

void sub_1E17DF0BC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = v4 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
    if (*(v4 + v3[7]) == 1)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 16) + 8);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v9 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v9 + 16) + 16);
    }

    (*v8)(ObjectType);
    swift_unknownObjectRelease();
  }

LABEL_8:

  free(v3);
}

BOOL sub_1E17DF1B0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v1, v4, &qword_1ECEB2DF0);
  v2 = v5 != 0;
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  return v2;
}

uint64_t sub_1E17DF23C()
{
  result = swift_beginAccess();
  if ((*(v0 + 32) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage;
    result = swift_beginAccess();
    if ((*(v0 + v2) & 1) == 0)
    {
      v3 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage;
      swift_beginAccess();
      sub_1E134FD1C(v0 + v3, &v11, &qword_1ECEB2DF0);
      if (v12[1])
      {
        sub_1E1301CF0(&v11, v13);
        *(v0 + v2) = 1;
        v4 = v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v4 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v5 + 16) + 8))(ObjectType);
          swift_unknownObjectRelease();
        }

        type metadata accessor for JSIntentDispatcher();
        v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
        sub_1E1AF421C();
        sub_1E1AF55EC();
        sub_1E137A5C4(v13, v12);
        *&v11 = 0xD000000000000017;
        *(&v11 + 1) = 0x80000001E1B76C60;
        sub_1E136954C(&v11, v7, "AppStoreKit/SearchResultsPresenter.swift", 40, 2);
        v8 = sub_1E1361A80();
        swift_retain_n();
        v9 = sub_1E1AF68EC();
        v10[3] = v8;
        v10[4] = MEMORY[0x1E69AB720];
        v10[0] = v9;
        sub_1E1AF57FC();

        sub_1E17E087C(&v11);
        __swift_destroy_boxed_opaque_existential_1(v13);
        return __swift_destroy_boxed_opaque_existential_1(v10);
      }

      else
      {
        return sub_1E1308058(&v11, &qword_1ECEB2DF0);
      }
    }
  }

  return result;
}

uint64_t sub_1E17DF4B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1E134FD1C(*a1 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_nextPage, v14, &qword_1ECEB2DF0);
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage;
  swift_beginAccess();
  sub_1E137F818(v14, a2 + v4);
  swift_endAccess();
  v5 = *(v3 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_results);
  swift_beginAccess();

  sub_1E1728534(v6);
  swift_endAccess();
  sub_1E17DB208();
  v7 = a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 48))(v5, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(a2 + v10) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v7 + 8);
    v13 = swift_getObjectType();
    (*(*(v12 + 16) + 16))(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E17DF64C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(a2 + v4) = 0;
  v5 = a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    (*(*(v9 + 16) + 24))(a1, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E17DF738@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = sub_1E1AF018C();
  if (result < 0)
  {
    goto LABEL_15;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    result = sub_1E1AF71CC();
    if (v5 >= result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= result)
    {
      goto LABEL_15;
    }
  }

  v8 = *(v2 + v6);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x1E68FFD80](v5, v8);
  }

  else
  {
    if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v8 + 8 * v5 + 32);
  }

  sub_1E17DE9A4(v9, &v15);

  if (v15 == 1)
  {
    v10 = &unk_1ECEB98C0;
    v11 = &v15;
  }

  else
  {
    *v18 = v15;
    *&v18[16] = v16;
    *&v18[32] = v17;
    sub_1E134FD1C(v18, &v15, &qword_1ECEB98C8);
    if (v15)
    {
      type metadata accessor for FlowAction();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        sub_1E1308058(&v15 + 8, &qword_1ECEB2DF0);
        v15 = *&v18[8];
        v16 = *&v18[24];

        *a1 = v13;
        v14 = v16;
        *(a1 + 8) = v15;
        *(a1 + 24) = v14;
        *(a1 + 40) = 1;
        return result;
      }
    }

    sub_1E1308058(v18, &qword_1ECEB98C8);
    v10 = &qword_1ECEB2DF0;
    v11 = &v15 + 8;
  }

  result = sub_1E1308058(v11, v10);
LABEL_15:
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1E17DF9B4()
{
  v1 = v0;
  v2 = sub_1E1AF018C();
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < result)
    {
      goto LABEL_4;
    }

    return 0;
  }

  result = sub_1E1AF71CC();
  if (v3 >= result)
  {
    return 0;
  }

LABEL_4:
  v7 = *(v1 + v4);
  if ((v7 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E68FFD80](v3, v7);

    goto LABEL_7;
  }

  if (v3 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:
    type metadata accessor for AppSearchResult();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = &OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup;
LABEL_11:
      v10 = *(v8 + *v9);

LABEL_12:
      v11 = *(v10 + 440);

      return v11;
    }

    type metadata accessor for BundleSearchResult();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = &OBJC_IVAR____TtC11AppStoreKit18BundleSearchResult_lockup;
      goto LABEL_11;
    }

    type metadata accessor for AdvertsSearchResult();
    if (swift_dynamicCastClass() && (v12 = v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v10 = (*(v13 + 120))(ObjectType, v13);
      swift_unknownObjectRelease();

      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E17DFBCC()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage, &qword_1ECEB2DF0);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t SearchResultsPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage, &qword_1ECEB2DF0);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t SearchResultsPresenter.__deallocating_deinit()
{
  SearchResultsPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchResultsPresenter()
{
  result = qword_1EE1DA3E0;
  if (!qword_1EE1DA3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17DFF08(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v78 = a2;
  v79 = a5;
  v77 = a1;
  v11 = sub_1E1AF3C1C();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF504C();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AEFEAC();
  v75 = *(v15 - 8);
  v76 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3060);
  sub_1E1AF690C();
  v73 = _s11AppStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v101);

  v18 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity;
  swift_beginAccess();
  v19 = *(v7 + v18);
  v69 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isNetworkConstrained);
  v70 = v19;
  v68 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_spellCheckEnabled);
  v20 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_excludedTerms);
  v84 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchTokens);
  v85 = v20;
  v21 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_originatingTerm + 8);
  v67 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_originatingTerm);
  v83 = v21;
  v22 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchOptimizationTerm);
  v71 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchOptimizationTerm + 8);
  v72 = v22;
  if (a3)
  {
    v24 = a3[4];
    v23 = a3[5];
    v25 = a3[7];
    v26 = a3[8];
    v27 = a3[9];
    v60 = a3[6];
    v61 = v26;
    v62 = a3[10];
    v63 = a6;
    v28 = a3[11];

    *&v101 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
    sub_1E1386A38(v24, v23, 0x6449644169, 0xE500000000000000);
    v29 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v29;
    sub_1E1598D2C(v60, v25, 0x626F6C4261746164, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    v31 = v91;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v91 = v31;
    sub_1E1598D2C(v61, v27, 0x6974756F52644169, 0xEE006F666E49676ELL, v32);
    *&v101 = v91;
    v33 = v28;
    a6 = v63;
    sub_1E1386A38(v62, v33, 0x7972616E6163, 0xE600000000000000);
    v34 = v101;
  }

  else
  {

    v34 = 0;
  }

  v35 = v78;

  sub_1E1AEFE9C();
  v36 = sub_1E1AEFE7C();
  v38 = v37;
  (*(v75 + 8))(v17, v76);
  *&v91 = v36;
  *(&v91 + 1) = v38;
  *&v92 = v77;
  *(&v92 + 1) = v35;
  LOBYTE(v93) = v74;
  *(&v93 + 1) = v101;
  DWORD1(v93) = *(&v101 + 3);
  *(&v93 + 1) = v79;
  *&v94 = a6;
  *(&v94 + 1) = v73;
  LOBYTE(v95) = v70;
  BYTE1(v95) = v69;
  BYTE2(v95) = v68;
  *(&v95 + 3) = v89;
  BYTE7(v95) = v90;
  *(&v95 + 1) = v85;
  *&v96 = v67;
  *(&v96 + 1) = v83;
  *&v97[0] = v84;
  *(v97 + 8) = xmmword_1E1B04490;
  *(&v97[1] + 1) = 0;
  v98 = 0uLL;
  LOBYTE(v99) = 0;
  *(&v99 + 1) = v86;
  DWORD1(v99) = *(&v86 + 3);
  *(&v99 + 1) = v72;
  *&v100 = v71;
  *(&v100 + 1) = v34;
  if (*(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager))
  {
    v39 = *(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager + 8);
    ObjectType = swift_getObjectType();
    (*(v39 + 24))(a3, ObjectType, v39);
  }

  if (*(v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchPresenter))
  {
    v109 = v98;
    v110 = v99;
    v111 = v100;
    v105 = v95;
    v106 = v96;
    v107 = v97[0];
    v108 = v97[1];
    v101 = v91;
    v102 = v92;
    v103 = v93;
    v104 = v94;
    GuidedSearchPresenter.searchWillBegin(for:)(&v101);
  }

  swift_beginAccess();
  if (*(v7 + 24))
  {
    v42 = v64;
    v41 = v65;
    *v64 = 1;
    v43 = v66;
    (*(v41 + 104))(v42, *MEMORY[0x1E69AB450], v66);

    sub_1E1AF509C();

    (*(v41 + 8))(v42, v43);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v110 = v98;
  v111 = v99;
  v112 = v100;
  v106 = v95;
  v107 = v96;
  v108 = v97[0];
  v109 = v97[1];
  v102 = v91;
  v103 = v92;
  v104 = v93;
  v105 = v94;
  *&v101 = 0xD000000000000013;
  *(&v101 + 1) = 0x80000001E1B76D40;
  sub_1E1AF4C1C();

  sub_1E17A0BA8(&v91, &v86);
  sub_1E1AF422C();

  sub_1E1AF4BEC();

  v44 = sub_1E1AF4BFC();

  sub_1E13683EC(&v101, v44, "AppStoreKit/SearchResultsPresenter.swift", 40, 2);
  sub_1E17E10EC(&v101);
  v45 = v7 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v46 = *(v45 + 8);
    v47 = swift_getObjectType();
    (*(v46 + 64))(v47, v46);
    swift_unknownObjectRelease();
  }

  v48 = v80;
  sub_1E1AF3BEC();
  sub_1E183B5D0(v48);
  (*(v81 + 8))(v48, v82);
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  swift_beginAccess();
  sub_1E13891EC(&v86, v7 + 40);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(&v86, &qword_1ECEB2588);
  v49 = swift_allocObject();
  v50 = v97[0];
  *(v49 + 136) = v97[1];
  v51 = v99;
  *(v49 + 152) = v98;
  *(v49 + 168) = v51;
  *(v49 + 184) = v100;
  v52 = v93;
  *(v49 + 72) = v94;
  v53 = v96;
  *(v49 + 88) = v95;
  *(v49 + 104) = v53;
  *(v49 + 120) = v50;
  v54 = v92;
  *(v49 + 24) = v91;
  *(v49 + 40) = v54;
  *(v49 + 16) = v7;
  *(v49 + 56) = v52;
  *(v49 + 200) = a3;
  v55 = swift_allocObject();
  *(v55 + 16) = v7;
  *(v55 + 24) = a3;
  v56 = sub_1E1361A80();
  swift_retain_n();
  swift_retain_n();
  v57 = sub_1E1AF68EC();
  *(&v87 + 1) = v56;
  *&v88 = MEMORY[0x1E69AB720];
  *&v86 = v57;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(&v86);
}

uint64_t sub_1E17E1158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E17E1210()
{
  if (*v0)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_1E17E124C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E1AF74AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEA00000000006449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();

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

uint64_t sub_1E17E132C(uint64_t a1)
{
  v2 = sub_1E17E19C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E17E1368(uint64_t a1)
{
  v2 = sub_1E17E19C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E17E1420(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9900);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E17E19C4();
  sub_1E1AF76EC();
  v8[15] = 0;
  sub_1E1AF73DC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1E1AF73DC();
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_1E17E15B8(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB98F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E17E19C4();
  sub_1E1AF76CC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v9 = sub_1E1AF735C();
    v11 = &v1[OBJC_IVAR____TtC11AppStoreKit21ArcadeDownloadPackApp_adamId];
    *v11 = v9;
    v11[1] = v12;
    v19 = 1;
    v13 = sub_1E1AF735C();
    v14 = &v1[OBJC_IVAR____TtC11AppStoreKit21ArcadeDownloadPackApp_categoryId];
    *v14 = v13;
    v14[1] = v15;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_1E17E17E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1E17E15B8(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1E17E18C4()
{

  v0 = sub_1E1AF5DBC();

  return v0;
}

unint64_t sub_1E17E19C4()
{
  result = qword_1ECEB98F8;
  if (!qword_1ECEB98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB98F8);
  }

  return result;
}

unint64_t sub_1E17E1A2C()
{
  result = qword_1ECEB9908;
  if (!qword_1ECEB9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9908);
  }

  return result;
}

unint64_t sub_1E17E1A84()
{
  result = qword_1ECEB9910;
  if (!qword_1ECEB9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9910);
  }

  return result;
}

unint64_t sub_1E17E1ADC()
{
  result = qword_1ECEB9918;
  if (!qword_1ECEB9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9918);
  }

  return result;
}

uint64_t WhatsNewItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WhatsNewItem.body.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WhatsNewItem.symbolName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall WhatsNewItem.init(id:title:body:symbolName:isCustomSymbol:isEnabled:)(AppStoreKit::WhatsNewItem *__return_ptr retstr, Swift::String id, Swift::String_optional title, Swift::String_optional body, Swift::String symbolName, Swift::Bool isCustomSymbol, Swift::Bool isEnabled)
{
  object = symbolName._object;
  countAndFlagsBits = symbolName._countAndFlagsBits;
  v8 = body.value._object;
  v9 = body.value._countAndFlagsBits;
  v10 = id._object;
  v11 = id._countAndFlagsBits;
  if (title.value._object)
  {
    v13 = title.value._object;
    v14 = title.value._countAndFlagsBits;
  }

  else
  {

    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v11, v10);
    MEMORY[0x1E68FECA0](0x656C7469542ELL, 0xE600000000000000);
    v15._countAndFlagsBits = 0x696472616F626E4FLL;
    v15._object = 0xEB000000002E676ELL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = localizedString(_:comment:)(v15, v16);
    v14 = v17._countAndFlagsBits;
    v13 = v17._object;
  }

  if (!v8)
  {
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v11, v10);

    MEMORY[0x1E68FECA0](0x706972637365442ELL, 0xEC0000006E6F6974);
    v18._countAndFlagsBits = 0x696472616F626E4FLL;
    v18._object = 0xEB000000002E676ELL;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v20 = localizedString(_:comment:)(v18, v19);
    v9 = v20._countAndFlagsBits;
    v8 = v20._object;
  }

  retstr->id._countAndFlagsBits = v11;
  retstr->id._object = v10;
  retstr->title._countAndFlagsBits = v14;
  retstr->title._object = v13;
  retstr->body._countAndFlagsBits = v9;
  retstr->body._object = v8;
  retstr->symbolName._countAndFlagsBits = countAndFlagsBits;
  retstr->symbolName._object = object;
  retstr->isCustomSymbol = isCustomSymbol;
  retstr->isEnabled = isEnabled;
}

uint64_t WhatsNewItem.hash(into:)()
{
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF764C();
  return sub_1E1AF764C();
}

uint64_t WhatsNewItem.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF764C();
  sub_1E1AF764C();
  return sub_1E1AF767C();
}

uint64_t sub_1E17E1F2C()
{
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF764C();
  return sub_1E1AF764C();
}

uint64_t sub_1E17E1FCC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF764C();
  sub_1E1AF764C();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit12WhatsNewItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v16 = *(a2 + 64);
  v17 = *(a1 + 64);
  v14 = *(a2 + 65);
  v15 = *(a1 + 65);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1AF74AC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E1AF74AC() & 1) == 0 || (v3 != v8 || v5 != v9) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  if (v18 == v11 && v19 == v10)
  {
    if (v17 != v16)
    {
      return 0;
    }

    return v15 ^ v14 ^ 1u;
  }

  v13 = sub_1E1AF74AC();
  result = 0;
  if ((v13 & 1) != 0 && ((v17 ^ v16) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

unint64_t sub_1E17E21F8()
{
  result = qword_1ECEB9920;
  if (!qword_1ECEB9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9920);
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E17E2270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1E17E22B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E17E2334(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11AppStoreKit14SearchAdAction_action);
  v4[3] = type metadata accessor for Action();
  v4[4] = sub_1E17E2450(qword_1EE1D2F80, type metadata accessor for Action);
  v4[0] = v1;
  type metadata accessor for SearchAdActionImplementation();

  swift_getWitnessTable();
  v2 = sub_1E1834054(v4);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_1E17E2450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AdvertRotationControllerProvider.advertController(for:asPartOf:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DBC();
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  sub_1E1AF3FEC();
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1E135FCF4(v11), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();

    sub_1E134B88C(v11);
  }

  else
  {
    swift_endAccess();
    sub_1E134B88C(v11);
    v8 = sub_1E17E2864(a1, a2);
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      sub_1E1AF3FEC();
      swift_beginAccess();
      v9 = swift_retain_n();
      sub_1E1387310(v9, v11);
      swift_endAccess();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t AdvertRotationControllerProvider.__allocating_init(supportsAdvertRotation:advertLifecycleMetricsReporter:)(char a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1E15A2574(MEMORY[0x1E69E7CC0]);
  *(v4 + 72) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB5260);
  swift_allocObject();
  *(v4 + 80) = sub_1E1AF5BEC();
  swift_allocObject();
  *(v4 + 88) = sub_1E1AF5BEC();
  *(v4 + 24) = a1;
  sub_1E1308EC0(a2, v4 + 32);
  return v4;
}

uint64_t AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)(char a1, __int128 *a2)
{
  *(v2 + 16) = sub_1E15A2574(MEMORY[0x1E69E7CC0]);
  *(v2 + 72) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB5260);
  swift_allocObject();
  *(v2 + 80) = sub_1E1AF5BEC();
  swift_allocObject();
  *(v2 + 88) = sub_1E1AF5BEC();
  *(v2 + 24) = a1;
  sub_1E1308EC0(a2, v2 + 32);
  return v2;
}

uint64_t sub_1E17E2864(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E148BABC(a1, v8);
  sub_1E1300B24(v3 + 32, v17);
  type metadata accessor for ItemAdvertRotationController();
  v9 = swift_allocObject();
  sub_1E148BABC(v8, v9 + OBJC_IVAR____TtC11AppStoreKit28ItemAdvertRotationController_managedItemLayoutContext);
  v10 = sub_1E15DD688();
  sub_1E134FD1C(v17, v16, &qword_1ECEB24F8);

  v11 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v10, v16, 1, a2);
  sub_1E1308058(v17, &qword_1ECEB24F8);
  sub_1E17E4AC8(v8, type metadata accessor for ItemLayoutContext);
  if (v11)
  {
    if (*(v3 + 24))
    {
      v12 = v11 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
      swift_beginAccess();
      *(v12 + 8) = &protocol witness table for AdvertRotationControllerProvider;
      swift_unknownObjectWeakAssign();
    }

    v13 = *(v3 + 72);

    if (v13 <= 2)
    {
      if (v13)
      {
        if (v13 == 1)
        {
          sub_1E14720A0();
        }

        else
        {
          sub_1E1472230();
        }
      }

      else
      {
        sub_1E1471E50();
      }
    }

    else if (v13 > 4)
    {
      if (v13 == 5)
      {
        sub_1E1472D58();
      }
    }

    else if (v13 == 3)
    {
      sub_1E14724A4();
    }

    else
    {
      sub_1E1472BBC();
    }

    if (qword_1EE1D27B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF38CC();
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  return v11;
}

uint64_t AdvertRotationControllerProvider.advertController(for:asPartOf:createIfRequired:)(void *a1, uint64_t a2, char a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF3FEC();
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_1E135FCF4(v13), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    sub_1E134B88C(v13);
  }

  else
  {
    swift_endAccess();
    sub_1E134B88C(v13);
    if (a3)
    {
      v10 = sub_1E17E2D00(a1, a2);
      if (v10)
      {
        __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
        sub_1E1AF3FEC();
        swift_beginAccess();
        v11 = swift_retain_n();
        sub_1E1387310(v11, v13);
        swift_endAccess();
      }
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_1E17E2D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1E1300B24(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26E0);
  if (swift_dynamicCast())
  {
    sub_1E1337DC8(v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26D8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E1B02CC0;
    sub_1E1383E78(v15, v5 + 32);
    sub_1E1300B24(v3 + 32, v13);
    type metadata accessor for AdvertRotationController();
    swift_allocObject();

    v6 = AdvertRotationController.init(adverts:lifecycleMetricsReporter:visibilityCalculatorTracksOcclusions:objectGraph:)(v5, v13, 1, a2);
    if (v6)
    {
      if (*(v3 + 24))
      {
        v7 = v6 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_rotationPerforming;
        v8 = v6;
        swift_beginAccess();
        *(v7 + 8) = &protocol witness table for AdvertRotationControllerProvider;
        swift_unknownObjectWeakAssign();
        v6 = v8;
      }

      v9 = *(v3 + 72);
      if (v9 <= 2)
      {
        v10 = v6;
        if (*(v3 + 72))
        {
          if (v9 == 1)
          {
            sub_1E14720A0();
          }

          else
          {
            sub_1E1472230();
          }
        }

        else
        {
          sub_1E1471E50();
        }
      }

      else if (*(v3 + 72) > 4u)
      {
        v10 = v6;
        if (v9 == 5)
        {
          sub_1E1472D58();
        }
      }

      else
      {
        v10 = v6;
        if (v9 == 3)
        {
          sub_1E14724A4();
        }

        else
        {
          sub_1E1472BBC();
        }
      }

      if (qword_1EE1D27B8 != -1)
      {
        swift_once();
      }

      v12 = sub_1E1AF591C();
      __swift_project_value_buffer(v12, qword_1EE215468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF38CC();
      sub_1E1AF382C();
      sub_1E1AF548C();

      __swift_destroy_boxed_opaque_existential_1(v15);
      return v10;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      return 0;
    }
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    sub_1E1308058(v13, &qword_1ECEB4410);
    return 0;
  }
}

uint64_t AdvertRotationControllerProvider.advertController(for:)(void *a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1E134E724(*(v2 + 48) + 40 * v10, v17);
    *(&v18 + 1) = *(*(v2 + 56) + 8 * v10);
    v14 = v17[0];
    v15 = v17[1];
    v16 = v18;
    sub_1E134FD1C(&v14, &v19, &qword_1ECEB99B0);
    Strong = swift_unknownObjectWeakLoadStrong();

    sub_1E134B88C(&v19);
    if (Strong)
    {

      if (Strong == a1)
      {

        v19 = v14;
        v20 = v15;
        v21 = v16;

        if (*(&v20 + 1))
        {
          v12 = *(&v21 + 1);
          sub_1E134B88C(&v19);
          return v12;
        }

        else
        {
LABEL_15:
          sub_1E1308058(&v19, &qword_1ECEB99B8);
          return 0;
        }
      }
    }

    v5 &= v5 - 1;
    result = sub_1E1308058(&v14, &qword_1ECEB99B0);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v19 = 0u;
      v20 = 0u;
      v21 = 0u;

      goto LABEL_15;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t AdvertRotationControllerProvider.performAdvertRotation(for:from:to:in:withDelay:asPartOf:)(void *a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v39 = a6;
  v37 = a5;
  v40 = a3;
  v38 = type metadata accessor for AdvertRotationControllerProvider.AdvertRotation();
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ItemLayoutContext();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a4, v13, &qword_1ECEB4408);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_1ECEB4408;
    v19 = v13;
    return sub_1E1308058(v19, v18);
  }

  sub_1E16D33C0(v13, v17);
  v42 = a1;
  sub_1E13E71B4();
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB99C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E17E4AC8(v17, type metadata accessor for ItemLayoutContext);
    memset(v41, 0, sizeof(v41));
    v18 = &unk_1ECEB99C8;
    v19 = v41;
    return sub_1E1308058(v19, v18);
  }

  sub_1E1308EC0(v41, v43);
  v21 = a2;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v23 = v40;
  __swift_project_boxed_opaque_existential_1Tm(v40, v40[3]);
  if (DynamicType == swift_getDynamicType())
  {
    v36 = v44;
    v34 = v45;
    v35 = __swift_project_boxed_opaque_existential_1Tm(v43, v44);
    v33 = *(v23 + 3);
    v24 = v33;
    v25 = __swift_project_boxed_opaque_existential_1Tm(v23, v33);
    *&v41[24] = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_0, v25, v24);
    v27 = [v20 traitCollection];
    v28 = ASKDeviceTypeGetCurrent();
    type metadata accessor for ArtworkLoader();
    sub_1E1AF421C();
    v29 = v39;
    sub_1E1AF55EC();
    (*(v34 + 8))(v41, v27, v28, v42, v29, v37 & 1, v36);

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1E148BABC(v17, v10);
    v30 = v38;
    sub_1E1383E78(v23, &v10[*(v38 + 24)]);
    sub_1E1383E78(v21, &v10[v30[7]]);
    *&v10[v30[5]] = v20;
    *&v10[v30[8]] = v29;
    v31 = v20;

    sub_1E1AF5BCC();
    sub_1E17E4AC8(v10, type metadata accessor for AdvertRotationControllerProvider.AdvertRotation);
  }

  sub_1E17E4AC8(v17, type metadata accessor for ItemLayoutContext);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

Swift::Void __swiftcall AdvertRotationControllerProvider.didScroll(in:)(UIScrollView *in)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    if (*(v10 + 16))
    {
      v11 = *(v10 + 128);

      [(UIScrollView *)in safeAreaInsets];
      v16 = *(v11 + 48);
      v17 = *(v11 + 64);
      v18 = *(v11 + 80);
      *(v11 + 48) = v12.f64[0];
      *(v11 + 56) = v13;
      *(v11 + 64) = v14.f64[0];
      *(v11 + 72) = v15;
      *(v11 + 80) = 0;
      if ((v18 & 1) != 0 || (v12.f64[1] = v13, v14.f64[1] = v15, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12, v16), vceqq_f64(v14, v17)))) & 1) == 0))
      {
        v29 = 5;
        sub_1E169D60C(&v29);
      }
    }

    else
    {
    }

    v19 = *(v10 + 128);
    if (*(v19 + 105) == 1 && (*(v19 + 104) & 1) != 0)
    {
      sub_1E169D89C(&v29);
      v20 = v29;
      v21 = *(v19 + 81);
      if (v29 == 4)
      {
        if (v21 == 4)
        {
          goto LABEL_5;
        }
      }

      else if (v29 == v21)
      {
        goto LABEL_5;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = in;
        v22 = *(v19 + 96);
        ObjectType = swift_getObjectType();
        v29 = *(v19 + 81);
        v28 = v20;
        v27 = 2;
        v24 = *(v22 + 8);
        v25 = v22;
        in = v26;
        v24(v19, &v29, &v28, &v27, ObjectType, v25);
        swift_unknownObjectRelease();
      }

      *(v19 + 81) = v20;
    }

LABEL_5:
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall AdvertRotationControllerProvider.viewControllerWillBeReloaded()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v9 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));

    sub_1E1472764();
    swift_beginAccess();
    sub_1E1383E78(v9 + 48, v16);
    __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
    sub_1E1AF3FEC();
    swift_beginAccess();
    v10 = sub_1E135FCF4(v15);
    if (v11)
    {
      v12 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v1 + 16);
      *(v1 + 16) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E1418004();
      }

      sub_1E134B88C(*(v14 + 48) + 40 * v12);

      sub_1E141D264(v12, v14);
      *(v1 + 16) = v14;
    }

    v5 &= v5 - 1;
    swift_endAccess();

    sub_1E134B88C(v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t AdvertRotationControllerProvider.viewControllerWillRemoveItems(_:asPartOf:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = result + 32;
    do
    {
      sub_1E1300B24(v4, v12);
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      sub_1E1AF3FEC();
      swift_beginAccess();
      if (*(*(v3 + 16) + 16) && (sub_1E135FCF4(v11), (v5 & 1) != 0))
      {
        swift_endAccess();

        sub_1E134B88C(v11);
        sub_1E14724A4();
        __swift_project_boxed_opaque_existential_1Tm(v12, v13);
        sub_1E1AF3FEC();
        swift_beginAccess();
        v6 = sub_1E135FCF4(v11);
        if (v7)
        {
          v8 = v6;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v10 = *(v3 + 16);
          *(v3 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1E1418004();
          }

          sub_1E134B88C(*(v10 + 48) + 40 * v8);
          sub_1E141D264(v8, v10);
          *(v3 + 16) = v10;
        }

        swift_endAccess();
      }

      else
      {
        swift_endAccess();
      }

      sub_1E134B88C(v11);
      result = __swift_destroy_boxed_opaque_existential_1(v12);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Void __swiftcall AdvertRotationControllerProvider.advertRotationStateDidChange(to:)(AppStoreKit::AdvertRotationControllerProvider::AdvertDisplayingViewControllerState to)
{
  v2 = v1;
  *(v1 + 72) = *to;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();

  v9 = 0;
  v44 = v3;
  v45 = v1;
  while (v7)
  {
LABEL_13:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v3 + 56) + ((v9 << 9) | (8 * v12)));
    v14 = *(v2 + 72);
    if (v14 <= 2)
    {
      if (*(v2 + 72))
      {
        if (v14 == 1)
        {
          v15 = qword_1EE1D27B8;

          if (v15 != -1)
          {
            swift_once();
          }

          v16 = sub_1E1AF591C();
          __swift_project_value_buffer(v16, qword_1EE215468);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
          sub_1E1AF38CC();
          sub_1E1AF382C();
          sub_1E1AF548C();

          if (*(v13 + 112) == 1)
          {
            v17 = *(v13 + 128);
            v18 = *(v17 + 104);
            *(v17 + 104) = 1;
            v3 = v44;
            v2 = v45;
            if (v18 == 1)
            {
              goto LABEL_51;
            }

            v19 = 3;
            goto LABEL_50;
          }
        }

        else
        {
          v31 = qword_1EE1D27B8;

          if (v31 != -1)
          {
            swift_once();
          }

          v32 = sub_1E1AF591C();
          __swift_project_value_buffer(v32, qword_1EE215468);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
          sub_1E1AF38CC();
          sub_1E1AF382C();
          sub_1E1AF548C();

          if (*(v13 + 112) == 1)
          {
            v33 = *(v13 + 128);
            v34 = *(v33 + 104);
            *(v33 + 104) = 0;
            if (v34 == 1)
            {
              LOBYTE(v46[0]) = 3;
              sub_1E169D60C(v46);
            }

            swift_beginAccess();
            sub_1E1383E78(v13 + 48, v46);
            v35 = v47;
            v36 = v48;
            __swift_project_boxed_opaque_existential_1Tm(v46, v47);
            v37 = (*(v36 + 8))(v35, v36);
            if (!v37)
            {
              goto LABEL_6;
            }

            v38 = v37;
            __swift_destroy_boxed_opaque_existential_1(v46);
            sub_1E134FD1C(v13 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v46, &qword_1ECEB24F8);
            v39 = v47;
            if (v47)
            {
              v40 = v48;
              __swift_project_boxed_opaque_existential_1Tm(v46, v47);
              (*(v40 + 16))(v38, v39, v40);
              goto LABEL_5;
            }

LABEL_52:

            sub_1E1308058(v46, &qword_1ECEB24F8);
          }
        }
      }

      else
      {
        v24 = qword_1EE1D27B8;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = sub_1E1AF591C();
        __swift_project_value_buffer(v25, qword_1EE215468);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
        sub_1E1AF38CC();
        sub_1E1AF382C();
        sub_1E1AF548C();

        if (*(v13 + 112) == 1)
        {
          swift_beginAccess();
          sub_1E1383E78(v13 + 48, v46);
          v26 = v47;
          v27 = v48;
          __swift_project_boxed_opaque_existential_1Tm(v46, v47);
          v28 = (*(v27 + 8))(v26, v27);
          if (!v28)
          {
            goto LABEL_6;
          }

          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(v46);
          sub_1E134FD1C(v13 + OBJC_IVAR____TtC11AppStoreKit24AdvertRotationController_lifecycleMetricsReporter, v46, &qword_1ECEB24F8);
          v30 = v47;
          if (v47)
          {
            v10 = v48;
            __swift_project_boxed_opaque_existential_1Tm(v46, v47);
            (*(v10 + 8))(v29, v30, v10);
LABEL_5:

LABEL_6:
            __swift_destroy_boxed_opaque_existential_1(v46);
            goto LABEL_7;
          }

          goto LABEL_52;
        }
      }

LABEL_7:

      v3 = v44;
      v2 = v45;
    }

    else
    {
      if (*(v2 + 72) <= 4u)
      {
        if (v14 == 3)
        {

          sub_1E14724A4();
          goto LABEL_51;
        }

        v41 = qword_1EE1D27B8;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = sub_1E1AF591C();
        __swift_project_value_buffer(v42, qword_1EE215468);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
        sub_1E1AF38CC();
        sub_1E1AF382C();
        sub_1E1AF548C();

        if (*(v13 + 112) == 1)
        {
          v22 = *(v13 + 128);
          v43 = *(v22 + 105);
          *(v22 + 105) = 1;
          v3 = v44;
          v2 = v45;
          if (v43 == 1)
          {
            goto LABEL_51;
          }

LABEL_48:
          if ((*(v22 + 104) & 1) == 0)
          {
            goto LABEL_51;
          }

          v19 = 4;
LABEL_50:
          LOBYTE(v46[0]) = v19;
          sub_1E169D60C(v46);
          goto LABEL_51;
        }

        goto LABEL_7;
      }

      if (v14 == 5)
      {
        v20 = qword_1EE1D27B8;

        if (v20 != -1)
        {
          swift_once();
        }

        v21 = sub_1E1AF591C();
        __swift_project_value_buffer(v21, qword_1EE215468);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
        sub_1E1AF38CC();
        sub_1E1AF382C();
        sub_1E1AF548C();

        if (*(v13 + 112) != 1)
        {
          goto LABEL_7;
        }

        v22 = *(v13 + 128);
        v23 = *(v22 + 105);
        *(v22 + 105) = 0;
        v3 = v44;
        v2 = v45;
        if (v23 == 1)
        {
          goto LABEL_48;
        }

LABEL_51:
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t AdvertRotationControllerProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t AdvertRotationControllerProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E17E4780(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v26 = a2;
  v7 = type metadata accessor for AdvertRotationControllerProvider.AdvertRotation();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ItemLayoutContext();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a4, v12, &qword_1ECEB4408);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1E1308058(v12, &qword_1ECEB4408);
  }

  sub_1E16D33C0(v12, v16);
  v28 = a1;
  sub_1E13E71B4();
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB99C0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    v19 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
    DynamicType = swift_getDynamicType();
    v21 = v25;
    __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
    if (DynamicType == swift_getDynamicType())
    {
      sub_1E148BABC(v16, v9);
      sub_1E1383E78(v21, &v9[v7[6]]);
      sub_1E1383E78(v19, &v9[v7[7]]);
      *&v9[v7[5]] = v18;
      *&v9[v7[8]] = v24;
      v22 = v18;

      sub_1E1AF5BCC();
      sub_1E17E4AC8(v9, type metadata accessor for AdvertRotationControllerProvider.AdvertRotation);
    }
  }

  return sub_1E17E4AC8(v16, type metadata accessor for ItemLayoutContext);
}

uint64_t type metadata accessor for AdvertRotationControllerProvider.AdvertRotation()
{
  result = qword_1EE1E7BC0;
  if (!qword_1EE1E7BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17E4AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E17E4B28()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(*(v1 + 56) + ((v7 << 9) | (8 * v9))) + 128);
    if (*(v10 + 105) == 1 && *(v10 + 104) == 1)
    {

      sub_1E169D89C(&v17);
      v11 = v17;
      v12 = *(v10 + 81);
      if (v17 == 4)
      {
        if (v12 == 4)
        {
          goto LABEL_18;
        }
      }

      else if (v17 == v12)
      {
        goto LABEL_18;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v10 + 96);
        ObjectType = swift_getObjectType();
        v17 = *(v10 + 81);
        v16 = v11;
        v15 = 2;
        (*(v13 + 8))(v10, &v17, &v16, &v15, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      *(v10 + 81) = v11;
LABEL_18:
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E17E4CEC()
{
  result = qword_1ECEB99D0;
  if (!qword_1ECEB99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB99D0);
  }

  return result;
}

unint64_t sub_1E17E4DB8()
{
  result = type metadata accessor for ItemLayoutContext();
  if (v1 <= 0x3F)
  {
    result = sub_1E13E71B4();
    if (v2 <= 0x3F)
    {
      result = sub_1E17E4E6C();
      if (v3 <= 0x3F)
      {
        result = sub_1E1AF421C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E17E4E6C()
{
  result = qword_1EE1D6468;
  if (!qword_1EE1D6468)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1D6468);
  }

  return result;
}

double sub_1E17E4EF4@<D0>(uint64_t a1@<X8>)
{
  v55 = sub_1E1AEFEAC();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  static AccountSectionLink.createActionMetrics(targetId:)(1936748641, 0xE400000000000000, &v50 - v16);
  v18 = sub_1E1AEFCCC();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  memset(v70, 0, sizeof(v70));
  v53 = v9;
  v19 = *(v9 + 16);
  v57 = v17;
  v19(v14, v17, v8);
  v20 = sub_1E1AF4D0C();
  v22 = v21;
  type metadata accessor for FlowAction();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 14;
  v56 = v7;
  sub_1E134FD1C(v7, v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
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
  *v28 = v20;
  v28[1] = v22;
  sub_1E134FD1C(&v71, &v67, &unk_1ECEB5670);
  v54 = v11;
  v58 = v8;
  v29 = v8;
  v30 = v52;
  v19(v11, v14, v29);
  v31 = sub_1E1AF46DC();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = (v23 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_1E134FD1C(&v67, &v61, &unk_1ECEB5670);
  if (*(&v62 + 1))
  {
    v64 = v61;
    v65 = v62;
    v66 = v63;
    v33 = v55;
  }

  else
  {
    v34 = v50;
    sub_1E1AEFE9C();
    v35 = sub_1E1AEFE7C();
    v37 = v36;
    v33 = v55;
    (*(v51 + 8))(v34, v55);
    v59 = v35;
    v60 = v37;
    sub_1E1AF6F6C();
    sub_1E1308058(&v61, &unk_1ECEB5670);
  }

  sub_1E1308058(&v67, &unk_1ECEB5670);
  v38 = v23 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v39 = v65;
  *v38 = v64;
  *(v38 + 16) = v39;
  *(v38 + 32) = v66;
  sub_1E134B7C8(v30, v23 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v40 = v53;
  v41 = v58;
  (*(v53 + 32))(v23 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v54, v58);

  FlowAction.setPageData(_:)(v70);

  v42 = *(v40 + 8);
  v42(v14, v41);
  sub_1E1308058(v70, &qword_1ECEB2DF0);
  sub_1E1308058(v56, &unk_1ECEB4B60);
  sub_1E1308058(&v71, &unk_1ECEB5670);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  sub_1E134FD1C(&v71, &v64, &unk_1ECEB5670);
  if (*(&v65 + 1))
  {
    sub_1E1308058(&v71, &unk_1ECEB5670);
    v42(v57, v41);
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {

    v43 = v50;
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v45 = v41;
    v47 = v46;
    (*(v51 + 8))(v43, v33);
    *&v61 = v44;
    *(&v61 + 1) = v47;
    sub_1E1AF6F6C();

    sub_1E1308058(&v71, &unk_1ECEB5670);
    v42(v57, v45);
    sub_1E1308058(&v64, &unk_1ECEB5670);
  }

  result = *&v67;
  v49 = v68;
  *(a1 + 48) = v67;
  *(a1 + 64) = v49;
  *(a1 + 80) = v69;
  *(a1 + 16) = sub_1E17E5B4C;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  return result;
}

uint64_t static AccountSectionLink.createActionMetrics(targetId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_1E1AF45FC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_1E1B04930;
  v8 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x80000001E1B65B70;
  *(inited + 48) = 0;
  *(inited + 72) = v8;
  strcpy((inited + 80), "locationType");
  v9 = MEMORY[0x1E69E6158];
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 1802398060;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 120) = v9;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x64695F737469;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v9;
  *(inited + 176) = 25705;
  *(inited + 184) = 0xE200000000000000;
  *(inited + 192) = a1;
  *(inited + 200) = a2;
  *(inited + 216) = v9;
  *(inited + 224) = 1701667182;
  *(inited + 264) = v9;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = a1;
  *(inited + 248) = a2;
  swift_bridgeObjectRetain_n();
  v10 = sub_1E1303A74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1E1B02CD0;
  *(v11 + 32) = 0x6E6F697461636F6CLL;
  *(v11 + 40) = 0xE800000000000000;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  *(v11 + 48) = v10;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x79546E6F69746361;
  *(v11 + 120) = v9;
  *(v11 + 88) = 0xEA00000000006570;
  *(v11 + 96) = 0x657461676976616ELL;
  *(v11 + 104) = 0xE800000000000000;
  v13 = sub_1E1303A74(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
  v14 = sub_1E1AF523C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v23 = xmmword_1E1B02CC0;
  *(v17 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF51FC();
  v18 = sub_1E1498AF4(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v19 = swift_initStackObject();
  v19[6] = 0x6D657449756E656DLL;
  v19[7] = 0xE800000000000000;
  v19[4] = a1;
  v19[5] = a2;
  v20 = MEMORY[0x1E69E7CD0];
  v19[8] = v18;
  v19[9] = v20;
  v21 = MEMORY[0x1E69E7CC0];
  v19[2] = v13;
  v19[3] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBD7F0);
  sub_1E1AF3ABC();
  *(swift_allocObject() + 16) = v23;

  sub_1E1560214();
  sub_1E1AF45EC();
  sub_1E1AF3E0C();
  swift_setDeallocating();
  return ClickMetricsEvent.__deallocating_deinit();
}

uint64_t sub_1E17E5B4C()
{
  v0._countAndFlagsBits = 0x5F544E554F434341;
  v0._object = 0xEC00000053505041;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

double sub_1E17E5BA4@<D0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v61 = sub_1E1AEFEAC();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v54 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v54 - v3;
  v4 = sub_1E1AF3E1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  sub_1E1AEFCAC();
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x80000001E1B770F0, v13);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v62 = v19;
  sub_1E134FD1C(v19, v16, &unk_1ECEB4B60);
  memset(v76, 0, sizeof(v76));
  v64 = v5;
  v20 = *(v5 + 16);
  v63 = v13;
  v20(v10, v13, v4);
  v21 = sub_1E1AF4D0C();
  v23 = v22;
  type metadata accessor for FlowAction();
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v25 = v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v26 = 0;
  v26[1] = 0;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 18;
  v58 = v16;
  sub_1E134FD1C(v16, v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
  v27 = (v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  *v27 = 0;
  v27[1] = 0;
  v28 = v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  *v28 = xmmword_1E1B04490;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 40) = 0;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 2;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
  v29 = (v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  *v29 = v21;
  v29[1] = v23;
  sub_1E134FD1C(&v77, &v73, &unk_1ECEB5670);
  v57 = v7;
  v59 = v10;
  v30 = v10;
  v31 = v55;
  v32 = v4;
  v20(v7, v30, v4);
  v33 = sub_1E1AF46DC();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v24 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_1E134FD1C(&v73, &v67, &unk_1ECEB5670);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v35 = v61;
    v36 = v60;
  }

  else
  {
    v37 = v54;
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v40 = v39;
    v36 = v60;
    v41 = v37;
    v35 = v61;
    (*(v60 + 8))(v41, v61);
    v65 = v38;
    v66 = v40;
    sub_1E1AF6F6C();
    sub_1E1308058(&v67, &unk_1ECEB5670);
  }

  sub_1E1308058(&v73, &unk_1ECEB5670);
  v42 = v24 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v43 = v71;
  *v42 = v70;
  *(v42 + 16) = v43;
  *(v42 + 32) = v72;
  sub_1E134B7C8(v31, v24 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  v44 = v64;
  v45 = v32;
  (*(v64 + 32))(v24 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v57, v32);

  FlowAction.setPageData(_:)(v76);

  v46 = *(v44 + 8);
  v46(v59, v45);
  sub_1E1308058(v76, &qword_1ECEB2DF0);
  sub_1E1308058(v58, &unk_1ECEB4B60);
  sub_1E1308058(&v77, &unk_1ECEB5670);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_1E134FD1C(&v77, &v70, &unk_1ECEB5670);
  if (*(&v71 + 1))
  {
    sub_1E1308058(&v77, &unk_1ECEB5670);
    v46(v63, v45);
    sub_1E1308058(v62, &unk_1ECEB4B60);
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {

    v47 = v54;
    sub_1E1AEFE9C();
    v48 = sub_1E1AEFE7C();
    v50 = v49;
    (*(v36 + 8))(v47, v35);
    *&v67 = v48;
    *(&v67 + 1) = v50;
    sub_1E1AF6F6C();

    sub_1E1308058(&v77, &unk_1ECEB5670);
    v46(v63, v45);
    sub_1E1308058(v62, &unk_1ECEB4B60);
    sub_1E1308058(&v70, &unk_1ECEB5670);
  }

  result = *&v73;
  v52 = v74;
  v53 = v56;
  *(v56 + 48) = v73;
  *(v53 + 64) = v52;
  *(v53 + 80) = v75;
  *(v53 + 16) = sub_1E17E7EA0;
  *(v53 + 24) = 0;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 32) = v24;
  *(v53 + 40) = 0;
  return result;
}

double sub_1E17E6454@<D0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v61 = sub_1E1AEFEAC();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v54 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v54 - v3;
  v4 = sub_1E1AF3E1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  sub_1E1AEFCAC();
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x80000001E1B770F0, v13);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v62 = v19;
  sub_1E134FD1C(v19, v16, &unk_1ECEB4B60);
  memset(v76, 0, sizeof(v76));
  v64 = v5;
  v20 = *(v5 + 16);
  v63 = v13;
  v20(v10, v13, v4);
  v21 = sub_1E1AF4D0C();
  v23 = v22;
  type metadata accessor for FlowAction();
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v25 = v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v26 = 0;
  v26[1] = 0;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 18;
  v58 = v16;
  sub_1E134FD1C(v16, v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
  v27 = (v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  *v27 = 0;
  v27[1] = 0;
  v28 = v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  *v28 = xmmword_1E1B04490;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 40) = 0;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 2;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
  v29 = (v24 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  *v29 = v21;
  v29[1] = v23;
  sub_1E134FD1C(&v77, &v73, &unk_1ECEB5670);
  v57 = v7;
  v59 = v10;
  v30 = v10;
  v31 = v55;
  v32 = v4;
  v20(v7, v30, v4);
  v33 = sub_1E1AF46DC();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v24 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_1E134FD1C(&v73, &v67, &unk_1ECEB5670);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v35 = v61;
    v36 = v60;
  }

  else
  {
    v37 = v54;
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v40 = v39;
    v36 = v60;
    v41 = v37;
    v35 = v61;
    (*(v60 + 8))(v41, v61);
    v65 = v38;
    v66 = v40;
    sub_1E1AF6F6C();
    sub_1E1308058(&v67, &unk_1ECEB5670);
  }

  sub_1E1308058(&v73, &unk_1ECEB5670);
  v42 = v24 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v43 = v71;
  *v42 = v70;
  *(v42 + 16) = v43;
  *(v42 + 32) = v72;
  sub_1E134B7C8(v31, v24 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  v44 = v64;
  v45 = v32;
  (*(v64 + 32))(v24 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v57, v32);

  FlowAction.setPageData(_:)(v76);

  v46 = *(v44 + 8);
  v46(v59, v45);
  sub_1E1308058(v76, &qword_1ECEB2DF0);
  sub_1E1308058(v58, &unk_1ECEB4B60);
  sub_1E1308058(&v77, &unk_1ECEB5670);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_1E134FD1C(&v77, &v70, &unk_1ECEB5670);
  if (*(&v71 + 1))
  {
    sub_1E1308058(&v77, &unk_1ECEB5670);
    v46(v63, v45);
    sub_1E1308058(v62, &unk_1ECEB4B60);
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {

    v47 = v54;
    sub_1E1AEFE9C();
    v48 = sub_1E1AEFE7C();
    v50 = v49;
    (*(v36 + 8))(v47, v35);
    *&v67 = v48;
    *(&v67 + 1) = v50;
    sub_1E1AF6F6C();

    sub_1E1308058(&v77, &unk_1ECEB5670);
    v46(v63, v45);
    sub_1E1308058(v62, &unk_1ECEB4B60);
    sub_1E1308058(&v70, &unk_1ECEB5670);
  }

  result = *&v73;
  v52 = v74;
  v53 = v56;
  *(v56 + 48) = v73;
  *(v53 + 64) = v52;
  *(v53 + 80) = v75;
  *(v53 + 16) = sub_1E17E7EA0;
  *(v53 + 24) = 0;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 32) = v24;
  *(v53 + 40) = 0;
  return result;
}

double sub_1E17E6D04@<D0>(uint64_t a1@<X8>)
{
  v55 = sub_1E1AEFEAC();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x80000001E1B770F0, &v50 - v16);
  v18 = sub_1E1AEFCCC();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  memset(v70, 0, sizeof(v70));
  v53 = v9;
  v19 = *(v9 + 16);
  v57 = v17;
  v19(v14, v17, v8);
  v20 = sub_1E1AF4D0C();
  v22 = v21;
  type metadata accessor for FlowAction();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 53;
  v56 = v7;
  sub_1E134FD1C(v7, v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
  v26 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  *v27 = xmmword_1E1B04490;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 2;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  *v28 = v20;
  v28[1] = v22;
  sub_1E134FD1C(&v71, &v67, &unk_1ECEB5670);
  v54 = v11;
  v58 = v8;
  v29 = v8;
  v30 = v52;
  v19(v11, v14, v29);
  v31 = sub_1E1AF46DC();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = (v23 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_1E134FD1C(&v67, &v61, &unk_1ECEB5670);
  if (*(&v62 + 1))
  {
    v64 = v61;
    v65 = v62;
    v66 = v63;
    v33 = v55;
  }

  else
  {
    v34 = v50;
    sub_1E1AEFE9C();
    v35 = sub_1E1AEFE7C();
    v37 = v36;
    v33 = v55;
    (*(v51 + 8))(v34, v55);
    v59 = v35;
    v60 = v37;
    sub_1E1AF6F6C();
    sub_1E1308058(&v61, &unk_1ECEB5670);
  }

  sub_1E1308058(&v67, &unk_1ECEB5670);
  v38 = v23 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v39 = v65;
  *v38 = v64;
  *(v38 + 16) = v39;
  *(v38 + 32) = v66;
  sub_1E134B7C8(v30, v23 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v40 = v53;
  v41 = v58;
  (*(v53 + 32))(v23 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v54, v58);

  FlowAction.setPageData(_:)(v70);

  v42 = *(v40 + 8);
  v42(v14, v41);
  sub_1E1308058(v70, &qword_1ECEB2DF0);
  sub_1E1308058(v56, &unk_1ECEB4B60);
  sub_1E1308058(&v71, &unk_1ECEB5670);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  sub_1E134FD1C(&v71, &v64, &unk_1ECEB5670);
  if (*(&v65 + 1))
  {
    sub_1E1308058(&v71, &unk_1ECEB5670);
    v42(v57, v41);
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {

    v43 = v50;
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v45 = v41;
    v47 = v46;
    (*(v51 + 8))(v43, v33);
    *&v61 = v44;
    *(&v61 + 1) = v47;
    sub_1E1AF6F6C();

    sub_1E1308058(&v71, &unk_1ECEB5670);
    v42(v57, v45);
    sub_1E1308058(&v64, &unk_1ECEB5670);
  }

  result = *&v67;
  v49 = v68;
  *(a1 + 48) = v67;
  *(a1 + 64) = v49;
  *(a1 + 80) = v69;
  *(a1 + 16) = sub_1E17E7EA0;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1E17E7538@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1E17E7DC4(a2, v4);
}

double sub_1E17E75D0@<D0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v14 = sub_1E1595DFC(a2), (v15 & 1) != 0))
  {
    v16 = *(*(a1 + 56) + 8 * v14);
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_1E134FD1C(v30, &v24, &unk_1ECEB5670);
    v17 = *(&v25 + 1);
    swift_retain_n();
    if (v17)
    {
      sub_1E1308058(v30, &unk_1ECEB5670);
      v27 = v24;
      v28 = v25;
      v29 = v26;
    }

    else
    {

      sub_1E1AEFE9C();
      v19 = sub_1E1AEFE7C();
      v21 = v20;
      (*(v11 + 8))(v13, v10);
      v23[1] = v19;
      v23[2] = v21;
      sub_1E1AF6F6C();

      sub_1E1308058(v30, &unk_1ECEB5670);
      sub_1E1308058(&v24, &unk_1ECEB5670);
    }

    result = *&v27;
    v22 = v28;
    *(a5 + 48) = v27;
    *(a5 + 64) = v22;
    *(a5 + 80) = v29;
    *(a5 + 16) = a3;
    *(a5 + 24) = v16;
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 32) = v16;
    *(a5 + 40) = a4;
  }

  else
  {
    *(a5 + 80) = 0;
    result = 0.0;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_1E17E77F0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x80000001E1B770D0;
    v2._countAndFlagsBits = 0xD000000000000011;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

double static AccountSectionLink.addFunds(from:bag:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_1E1595DFC(3u), (v9 & 1) != 0))
  {
    v10 = *(*(a1 + 56) + 8 * v8);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1E134FD1C(v24, &v18, &unk_1ECEB5670);
    v11 = *(&v19 + 1);
    swift_retain_n();
    if (v11)
    {
      sub_1E1308058(v24, &unk_1ECEB5670);
      v21 = v18;
      v22 = v19;
      v23 = v20;
    }

    else
    {

      sub_1E1AEFE9C();
      v13 = sub_1E1AEFE7C();
      v15 = v14;
      (*(v5 + 8))(v7, v4);
      v17[1] = v13;
      v17[2] = v15;
      sub_1E1AF6F6C();

      sub_1E1308058(v24, &unk_1ECEB5670);
      sub_1E1308058(&v18, &unk_1ECEB5670);
    }

    result = *&v21;
    v16 = v22;
    *(a2 + 48) = v21;
    *(a2 + 64) = v16;
    *(a2 + 80) = v23;
    *(a2 + 16) = sub_1E17E7E54;
    *(a2 + 24) = v10;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = v10;
    *(a2 + 40) = 1;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1E17E7A80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v3 = 0x5F544E554F434341;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*(&a2 - 1), v4)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_1E17E7B08(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x80000001E1B770B0;
    v2._countAndFlagsBits = 0xD00000000000001CLL;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_1E17E7B98(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x80000001E1B77090;
    v2._countAndFlagsBits = 0xD000000000000015;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_1E17E7C28(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x80000001E1B77070;
    v2._countAndFlagsBits = 0xD000000000000018;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_1E17E7CB8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2 = sub_1E1AF055C();
    v8[3] = v2;
    v8[4] = sub_1E16F9904();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
    (*(*(v2 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E699C020], v2);
    LOBYTE(v2) = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(v8);
    if (v2)
    {
      v4 = 0xD00000000000001FLL;
      v5 = 0x80000001E1B77050;
    }

    else
    {
      v5 = 0x80000001E1B77030;
      v4 = 0xD000000000000017;
    }

    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*&v4, v6)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t *TodayCardMediaAppIcon.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v52 = *v3;
  v56 = sub_1E1AF39DC();
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v43 - v14;
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v43 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v57 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF37AC();
  v49 = v16;
  v26 = *(v16 + 8);
  v24 = v16 + 8;
  v25 = v26;
  v26(v23, v15);
  if (a1)
  {
    v27 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v28 = 1852793705;
    v28[1] = 0xE400000000000000;
    v28[2] = v52;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    (*(v58 + 8))(v59, v56);
    v25(v57, v15);
  }

  else
  {
    v45 = v24;
    v46 = v25;
    v47 = v15;
    v52 = v3;
    sub_1E1AF46DC();
    v29 = v57;
    sub_1E1AF381C();
    v44 = v20;
    v30 = *(v58 + 16);
    v31 = v59;
    v32 = v56;
    v30(v51, v59, v56);
    v33 = v29;
    sub_1E1AF464C();
    v30(v10, v31, v32);
    type metadata accessor for Artwork();
    v34 = v44;
    sub_1E1AF381C();
    v35 = v53;
    v30(v53, v10, v32);
    v36 = v54;
    v37 = Artwork.__allocating_init(deserializing:using:)(v34, v35);
    if (!v36)
    {
      v54 = v10;
      *(v52 + OBJC_IVAR____TtC11AppStoreKit21TodayCardMediaAppIcon_icon) = v37;
      v39 = v48;
      v40 = v47;
      (*(v49 + 16))(v48, v33, v47);
      v41 = v50;
      v30(v50, v59, v32);
      v20 = TodayCardMedia.init(deserializing:using:)(v39, v41);
      v42 = *(v58 + 8);
      v42(v59, v32);
      v46(v57, v40);
      v42(v54, v32);
      sub_1E1308058(v55, &unk_1ECEB1770);
      return v20;
    }

    v20 = *(v58 + 8);
    (v20)(v59, v32);
    v46(v33, v47);
    (v20)(v10, v32);
    sub_1E1308058(v55, &unk_1ECEB1770);
  }

  type metadata accessor for TodayCardMediaAppIcon();
  swift_deallocPartialClassInstance();
  return v20;
}

uint64_t type metadata accessor for TodayCardMediaAppIcon()
{
  result = qword_1EE1E22B8;
  if (!qword_1EE1E22B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayCardMediaAppIcon.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaAppIcon.__allocating_init(icon:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaAppIcon.init(icon:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaAppIcon.init(icon:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v18 - v11;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit21TodayCardMediaAppIcon_icon) = a1;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1E134FD1C(a2, v18 - v11, &unk_1ECEB1770);
  sub_1E134FD1C(v25, &v19, &unk_1ECEB5670);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(&v19, &unk_1ECEB5670);
  }

  sub_1E1308058(a2, &unk_1ECEB1770);
  sub_1E1308058(v25, &unk_1ECEB5670);
  v16 = v23;
  *(v3 + 32) = v22;
  *(v3 + 48) = v16;
  *(v3 + 64) = v24;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 6;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaAppIcon.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t UnifiedMessagingPlacement.rawValue.getter()
{
  result = 0x636E75614C707061;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
    case 3:
    case 4:
      return 0x6C6576654C707061;
    case 5:
      v5 = 0x507961646F74;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
    case 6:
      v2 = 0x507961646F74;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
    case 7:
      v3 = 0x507961646F74;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
    case 8:
      v5 = 0x5073656D6167;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
    case 9:
      v2 = 0x5073656D6167;
      return v2 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
    case 0xA:
      v3 = 0x5073656D6167;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6761000000000000;
    case 0xB:
    case 0xC:
    case 0xD:
      return 0x6567615073707061;
    case 0xE:
      return 0xD000000000000010;
    case 0xF:
      return 0x6150656461637261;
    case 0x10:
      return 0xD000000000000010;
    case 0x11:
      v4 = 0x547961646F74;
      goto LABEL_18;
    case 0x12:
      v4 = 0x5473656D6167;
LABEL_18:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      break;
    case 0x13:
      result = 0x4262615473707061;
      break;
    case 0x14:
      result = 0xD000000000000010;
      break;
    case 0x15:
      result = 0xD000000000000010;
      break;
    case 0x16:
    case 0x17:
      result = 0xD000000000000012;
      break;
    case 0x18:
    case 0x1C:
    case 0x1D:
      result = 0xD000000000000011;
      break;
    case 0x1B:
      result = 0x50746375646F7270;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

AppStoreKit::UnifiedMessagingPlacement_optional __swiftcall UnifiedMessagingPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF750C();

  v5 = 0;
  v6 = 12;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
    case 11:
      v5 = 11;
LABEL_24:
      v6 = v5;
      break;
    case 12:
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
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    default:
      v6 = 30;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E17E8E1C()
{
  v0 = UnifiedMessagingPlacement.rawValue.getter();
  v2 = v1;
  if (v0 == UnifiedMessagingPlacement.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

unint64_t sub_1E17E8EBC()
{
  result = qword_1ECEB9B38;
  if (!qword_1ECEB9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9B38);
  }

  return result;
}

uint64_t sub_1E17E8F10()
{
  sub_1E1AF762C();
  UnifiedMessagingPlacement.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17E8F78()
{
  UnifiedMessagingPlacement.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E17E8FDC()
{
  sub_1E1AF762C();
  UnifiedMessagingPlacement.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17E904C@<X0>(uint64_t *a1@<X8>)
{
  result = UnifiedMessagingPlacement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UnifiedMessagingPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnifiedMessagingPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E17E91C4(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1E17EA7D0(v5, v7) & 1;
}

double FlowPreviewOfferPresenter.init(displayProperties:offerAction:asPartOf:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 1u && !*(a1 + 16))
  {
    goto LABEL_9;
  }

  v6 = sub_1E1AF74AC();

  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 16) > 2u)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_1E1AF74AC();

  if ((v7 & 1) == 0)
  {

LABEL_8:

    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

LABEL_10:
  *&v20 = a2;
  *(&v20 + 1) = a1;
  *(&v22 + 1) = type metadata accessor for Restrictions();
  *&v23 = &protocol witness table for Restrictions;
  sub_1E1AF421C();

  sub_1E1AF55EC();
  type metadata accessor for ArcadeSubscriptionManager();
  sub_1E1AF55EC();
  *(&v24 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF55EC();
  v9 = v19;
  ObjectType = swift_getObjectType();
  v11 = *(a1 + 32);
  v18 = *(a1 + 24);
  v19 = v11;
  v12 = *(v9 + 56);

  v13 = v12(&v18, ObjectType, v9);
  v15 = v14;
  swift_unknownObjectRelease();

  *(&v23 + 1) = v13;
  *&v24 = v15;
  v16 = v21;
  *a3 = v20;
  a3[1] = v16;
  v17 = v23;
  a3[2] = v22;
  a3[3] = v17;
  result = *&v24;
  a3[4] = v24;
  return result;
}

uint64_t FlowPreviewOfferPresenter.offerTitles.getter()
{
  if (*(*(v0 + 8) + 16) > 2u)
  {
  }

  else
  {
    v1 = sub_1E1AF74AC();

    if ((v1 & 1) == 0)
    {
      return sub_1E17E976C();
    }
  }

  v2 = *(v0 + 72) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  if ((*(v2 + 8) & 0xC0) == 0x80)
  {
    return sub_1E17E976C();
  }

  return sub_1E17E95F0();
}

uint64_t sub_1E17E95F0()
{
  v1 = v0[1];
  if (*(v1 + 122) == 1)
  {
    v2 = v0[8];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v9, ObjectType, v2);
    if ((v9[6] >> 60) < 2)
    {
      return 0;
    }

    sub_1E139CEA8(v9);
  }

  v4 = sub_1E17EA13C();
  v5 = (v0[9] + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState);
  swift_beginAccess();
  v6 = v5[8] >> 6;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (*(*(v1 + 88) + 16))
      {

        sub_1E1595560(10);
        if (v8)
        {
        }
      }

      return v4;
    }

    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:

    return 0;
  }

  sub_1E17EA41C(*v5 == 1);
  return v4;
}

uint64_t sub_1E17E976C()
{
  sub_1E17E9C04(*(v0 + 64), &v6);
  if (!sub_1E17E9888())
  {
    sub_1E17EA748(&v6);
    return 0;
  }

  result = v6;
  if (!v10)
  {
    v4 = v6;

    sub_1E17EA748(&v6);
    return v4;
  }

  if (v10 == 1)
  {
    return result;
  }

  if (!(v8 | v7 | v6 | v9))
  {
    v3 = 0xD000000000000022;
    v2 = 0x80000001E1B77340;
    goto LABEL_12;
  }

  if (v6 != 1 || v8 | v7 | v9)
  {
    return 0;
  }

  v2 = 0x80000001E1B77320;
  v3 = 0xD00000000000001ELL;
LABEL_12:
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v3, v5)._countAndFlagsBits;
}

BOOL sub_1E17E9888()
{
  v1 = v0[1];
  if (*(v1 + 96) == 5)
  {
    return 0;
  }

  if (*(v1 + 16) > 2u)
  {
  }

  else
  {
    v3 = sub_1E1AF74AC();

    if ((v3 & 1) == 0)
    {
LABEL_11:
      sub_1E17E9C04(v0[8], &v11);
      if (!v15)
      {
        __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
        v10 = 0;
        v8 = RestrictionsProtocol.doesAllow(_:properties:)(&v10, v1);
        sub_1E17EA748(&v11);
        return v8;
      }

      if (v15 == 2)
      {
        if (!(v13 | v14 | v11 | v12))
        {
          __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
          v6 = 1;
          goto LABEL_21;
        }

        if (v11 == 1 && !(v13 | v14 | v12))
        {
          __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
          v6 = 2;
LABEL_21:
          v10 = v6;
          v7 = &v10;
          return RestrictionsProtocol.doesAllow(_:properties:)(v7, v1);
        }
      }

      sub_1E17EA748(&v11);
      return 1;
    }
  }

  v4 = v0[9] + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v5 = *(v4 + 8) >> 6;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_11;
    }

LABEL_17:
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
    LOBYTE(v11) = 0;
    v7 = &v11;
    return RestrictionsProtocol.doesAllow(_:properties:)(v7, v1);
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_1E17E9ABC()
{
  if (*(v0[1] + 16) > 2u)
  {
  }

  else
  {
    v1 = sub_1E1AF74AC();

    if ((v1 & 1) == 0)
    {
    }
  }

  v2 = v0[9] + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  if ((*(v2 + 8) & 0xC0) == 0x80)
  {
  }

  if (!*v0)
  {
    return 0;
  }

  type metadata accessor for OfferStateAction();
  result = swift_dynamicCastClass();
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E17E9C04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(a1 + 16))(&v18, ObjectType, a1);
  v6 = *(v2 + 8);
  v7 = v24 >> 60;
  if ((v24 >> 60) <= 3)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v8 = 2;
        result = v24 >> 60;
        v11 = v24 >> 60;
LABEL_14:
        v12 = 2;
        goto LABEL_35;
      }

      if (v18)
      {
        v7 = 0;
        result = 0;
        v11 = 0;
        if (*(v6 + 122))
        {
          v8 = 7;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (v7 == 2)
    {
      sub_1E139CEA8(&v18);
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 1;
      goto LABEL_35;
    }

LABEL_12:
    sub_1E139CEA8(&v18);
LABEL_13:
    v8 = 0;
    v7 = 0;
    result = 0;
    v11 = 0;
    goto LABEL_14;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      sub_1E139CEA8(&v18);
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 3;
      goto LABEL_35;
    }

    goto LABEL_12;
  }

  if (v7 == 6)
  {
    sub_1E139CEA8(&v18);
    v7 = 0;
    result = 0;
    v11 = 0;
    v12 = 2;
    v8 = 4;
    goto LABEL_35;
  }

  if (v7 != 7)
  {
    v13 = *(v6 + 120);
    v14 = (*(&v18 + 1) << 8) | ((*(&v18 + 5) | (HIBYTE(v18) << 16)) << 40) | v18;
    v15 = v22 | v23;
    if (v24 == 0x8000000000000000 && !(v15 | v25 | v21 | v20 | v19 | v14))
    {
      goto LABEL_22;
    }

    v17 = v15 | v21 | v20 | v19;
    if (!v25 && v24 == 0x8000000000000000 && v14 == 1 && !v17)
    {
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 5;
      goto LABEL_35;
    }

    if (v25 || v24 != 0x8000000000000000 || v14 != 2 || v17)
    {
      if (!v25 && v24 == 0x8000000000000000 && v14 == 3 && !v17)
      {
        v7 = 0;
        result = 0;
        v11 = 0;
        v12 = 2;
        v8 = 8;
        goto LABEL_35;
      }

LABEL_22:
      if ((v13 & 1) == 0)
      {
        v8 = sub_1E17E9EB8();
        v7 = v16;
        result = sub_1E17EA01C();
        v12 = 0;
        goto LABEL_35;
      }

      goto LABEL_13;
    }

LABEL_34:
    v7 = 0;
    result = 0;
    v11 = 0;
    v12 = 2;
    v8 = 6;
    goto LABEL_35;
  }

  v8 = sub_1E17EA0A0();
  v7 = v9;
  sub_1E139CEA8(&v18);
  result = 0;
  v11 = 0;
  v12 = 1;
LABEL_35:
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_1E17E9EB8()
{
  v1 = *(v0 + 8);
  if (*(v1 + 122) == 1)
  {
    v2 = *(v1 + 97);
    v3 = v2 > 0xC;
    v4 = (1 << v2) & 0x1380;
    if (!v3 && v4 != 0)
    {
      v6 = *(v1 + 72);
      if (!*(v6 + 16))
      {
LABEL_9:
        v9._countAndFlagsBits = 0xD000000000000031;
        v9._object = 0x80000001E1B77250;
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
      }

      v7 = sub_1E1595560(13);
      if ((v8 & 1) == 0)
      {

        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  v6 = *(v1 + 72);
  if (*(v6 + 16))
  {

    v7 = sub_1E1595560(0);
    if (v12)
    {
LABEL_12:
      countAndFlagsBits = *(*(v6 + 56) + 16 * v7);

LABEL_17:

      return countAndFlagsBits;
    }
  }

  v13 = sub_1E17E9ABC();
  if (!v13 || (countAndFlagsBits = *(v13 + 16), v14 = *(v13 + 24), , , !v14))
  {
    v15._object = 0x80000001E1B77230;
    v15._countAndFlagsBits = 0xD00000000000001BLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v15, v16)._countAndFlagsBits;
    goto LABEL_17;
  }

  return countAndFlagsBits;
}

uint64_t sub_1E17EA01C()
{
  v1 = *(*(v0 + 8) + 88);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1E1595560(0);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 16 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1E17EA0A0()
{
  v1 = *(*(v0 + 8) + 72);
  if (*(v1 + 16))
  {

    v2 = sub_1E1595560(4);
    if (v3)
    {
      v4 = *(*(v1 + 56) + 16 * v2);

      return v4;
    }
  }

  v6._object = 0x80000001E1B77290;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

uint64_t sub_1E17EA13C()
{
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState);
  swift_beginAccess();
  v2 = v1[8] >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v5 = *(*(v0 + 8) + 72);
      if (*(v5 + 16))
      {

        v6 = sub_1E1595560(4);
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v8 = "OfferButton.FlowPreview.Open";
      v9 = 0xD000000000000023;
      goto LABEL_20;
    }

    v12 = *(*(v0 + 8) + 72);
    if (*(v12 + 16))
    {

      v13 = sub_1E1595560(10);
      if (v14)
      {
        countAndFlagsBits = *(*(v12 + 56) + 16 * v13);

        goto LABEL_25;
      }
    }

    v22 = sub_1E17E9ABC();
    if (v22)
    {
      countAndFlagsBits = *(v22 + 16);
      v23 = *(v22 + 24);

      if (v23)
      {
        return countAndFlagsBits;
      }
    }

    v24._object = 0x80000001E1B77230;
    v24._countAndFlagsBits = 0xD00000000000001BLL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v24, v25)._countAndFlagsBits;
LABEL_25:

    return countAndFlagsBits;
  }

  result = 0;
  if (v2)
  {
    return result;
  }

  v4 = *(v0 + 8);
  if (*(v4 + 122) == 1)
  {
    v5 = *(v4 + 72);
    if (!*(v5 + 16))
    {
LABEL_7:
      v8 = "Preview.Arcade.Open";
      v9 = 0xD000000000000034;
LABEL_20:
      v20 = v8 | 0x8000000000000000;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      return localizedString(_:comment:)(*&v9, v21)._countAndFlagsBits;
    }

    v6 = sub_1E1595560(14);
    if ((v7 & 1) == 0)
    {

      goto LABEL_7;
    }

LABEL_11:
    v11 = *(*(v5 + 56) + 16 * v6);

    return v11;
  }

  v16 = *v1;
  v17 = *(v4 + 72);
  v18 = *(v17 + 16);
  if (v16 == 1)
  {
    if (v18)
    {

      v19 = 9;
      goto LABEL_29;
    }

LABEL_32:
    v29 = sub_1E17E9ABC();
    if (!v29 || (v28 = *(v29 + 16), v30 = *(v29 + 24), , , !v30))
    {
      v31._object = 0x80000001E1B77230;
      v31._countAndFlagsBits = 0xD00000000000001BLL;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v28 = localizedString(_:comment:)(v31, v32)._countAndFlagsBits;
    }

    return v28;
  }

  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = 10;
LABEL_29:
  v26 = sub_1E1595560(v19);
  if ((v27 & 1) == 0)
  {

    goto LABEL_32;
  }

  v28 = *(*(v17 + 56) + 16 * v26);

  return v28;
}

uint64_t sub_1E17EA41C(char a1)
{
  v2 = *(*(v1 + 8) + 88);
  v3 = *(v2 + 16);
  if ((a1 & 1) == 0)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = sub_1E1595560(10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v3)
  {

    v4 = sub_1E1595560(9);
    if ((v5 & 1) == 0)
    {
LABEL_4:

      return 0;
    }

LABEL_7:
    v7 = *(*(v2 + 56) + 16 * v4);

    return v7;
  }

  return 0;
}

uint64_t FlowPreviewOfferPresenter.performAction(in:)(uint64_t result, uint64_t a2)
{
  v3 = v2[1];
  if (*(v3 + 96) != 5)
  {
    v5 = result;
    result = sub_1E17E9ABC();
    if (result)
    {
      v6 = result;
      if (*(v3 + 16) > 2u)
      {
      }

      else
      {
        v7 = sub_1E1AF74AC();

        if ((v7 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v8 = v2[9] + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
      swift_beginAccess();
      if ((*(v8 + 8) & 0xC0) != 0x80)
      {
        if (v5)
        {
          ObjectType = swift_getObjectType();
          v19 = swift_getObjectType();
          v16 = v5;
          v14 = *(a2 + 8);
          swift_unknownObjectRetain();
          v14(v6, &v16, ObjectType, a2);

          v12 = &v16;
          return sub_1E13E44F8(v12);
        }
      }

LABEL_8:
      v9 = v2[7];
      sub_1E17E9C04(v2[8], &v16);
      if (v20 >= 2u)
      {
        if (v18 | v19 | v16 | v17 && ((v16 - 1) > 3 || v18 | v19 | v17))
        {
        }
      }

      else
      {
        sub_1E17EA748(&v16);
      }

      type metadata accessor for OfferConfirmationAction();
      if (!swift_dynamicCastClass() && v5)
      {
        v10 = swift_getObjectType();
        v15[3] = swift_getObjectType();
        v15[0] = v9;
        v11 = *(a2 + 8);
        swift_unknownObjectRetain();
        v11(v6, v15, v10, a2);

        v12 = v15;
        return sub_1E13E44F8(v12);
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit29FlowPreviewStandardOfferStateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1E17EA7A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1E17EA7D0(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v7 == 1)
    {
      if (a2[2].i8[0] == 1)
      {
        if (v3 != a2->i64[0] || v4 != a2->i64[1])
        {

          return sub_1E1AF74AC();
        }

        return 1;
      }
    }

    else
    {
      v14 = v5 | v4;
      if (v14 | v3 | v6)
      {
        v15 = v14 | v6;
        if (v3 == 1 && v15 == 0)
        {
          if (a2[2].i8[0] != 2 || a2->i64[0] != 1)
          {
            return 0;
          }
        }

        else if (v3 != 2 || v15)
        {
          if (v3 != 3 || v15)
          {
            if (v3 != 4 || v15)
            {
              if (v3 != 5 || v15)
              {
                if (v3 != 6 || v15)
                {
                  if (v3 != 7 || v15)
                  {
                    if (a2[2].i8[0] != 2 || a2->i64[0] != 8)
                    {
                      return 0;
                    }
                  }

                  else if (a2[2].i8[0] != 2 || a2->i64[0] != 7)
                  {
                    return 0;
                  }
                }

                else if (a2[2].i8[0] != 2 || a2->i64[0] != 6)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 2 || a2->i64[0] != 5)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 2 || a2->i64[0] != 4)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 2 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 2 || a2->i64[0] != 2)
        {
          return 0;
        }

        if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
        {
          return 1;
        }
      }

      else if (a2[2].i8[0] == 2)
      {
        v17 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  v11 = a2[1].i64[0];
  v10 = a2[1].i64[1];
  v12 = v3 == a2->i64[0] && v4 == a2->i64[1];
  if (v12 || (v13 = sub_1E1AF74AC(), result = 0, (v13 & 1) != 0))
  {
    if (v6)
    {
      if (v10 && (v5 == v11 && v6 == v10 || (sub_1E1AF74AC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v10)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void GameCenterReengagementLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t GameCenterReengagementLayout.Metrics.shelfTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 32);

  return sub_1E1308EC0(a1, v1 + 32);
}

uint64_t GameCenterReengagementLayout.Metrics.badgeGlyphSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_1E1308EC0(a1, v1 + 72);
}

uint64_t GameCenterReengagementLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_1E1308EC0(a1, v1 + 112);
}

uint64_t GameCenterReengagementLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 152);

  return sub_1E1308EC0(a1, v1 + 152);
}

uint64_t GameCenterReengagementLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_1E1308EC0(a1, v1 + 192);
}

uint64_t GameCenterReengagementLayout.Metrics.heroContentTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 232);

  return sub_1E1308EC0(a1, v1 + 232);
}

uint64_t GameCenterReengagementLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 272);

  return sub_1E1308EC0(a1, v1 + 272);
}

uint64_t GameCenterReengagementLayout.Metrics.footerTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 312);

  return sub_1E1308EC0(a1, v1 + 312);
}

uint64_t GameCenterReengagementLayout.Metrics.footerBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 352);

  return sub_1E1308EC0(a1, v1 + 352);
}

uint64_t GameCenterReengagementLayout.Metrics.maxColumnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 392);

  return sub_1E1308EC0(a1, v1 + 392);
}

uint64_t GameCenterReengagementLayout.Metrics.columnSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 432);

  return sub_1E1308EC0(a1, v1 + 432);
}

uint64_t GameCenterReengagementLayout.Metrics.maxHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 472);

  return sub_1E1308EC0(a1, v1 + 472);
}

uint64_t GameCenterReengagementLayout.Metrics.init(layoutMargins:shelfTopSpace:badgeGlyphSpace:badgeTopSpace:titleTopSpace:subtitleTopSpace:heroContentTopSpace:separatorTopSpace:footerTopSpace:footerBottomSpace:maxColumnWidth:columnSpace:maxHeight:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_1E1308EC0(a1, (a9 + 4));
  sub_1E1308EC0(a2, (a9 + 9));
  sub_1E1308EC0(a3, (a9 + 14));
  sub_1E1308EC0(a4, (a9 + 19));
  sub_1E1308EC0(a5, (a9 + 24));
  sub_1E1308EC0(a6, (a9 + 29));
  sub_1E1308EC0(a7, (a9 + 34));
  sub_1E1308EC0(a8, (a9 + 39));
  sub_1E1308EC0(a14, (a9 + 44));
  sub_1E1308EC0(a15, (a9 + 49));
  sub_1E1308EC0(a16, (a9 + 54));

  return sub_1E1308EC0(a17, (a9 + 59));
}

uint64_t GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy(a9, __src, 0x200uLL);
  v17 = *(a2 + 16);
  *(a9 + 512) = *a2;
  *(a9 + 528) = v17;
  *(a9 + 544) = *(a2 + 32);
  sub_1E1308EC0(a3, a9 + 552);
  sub_1E1308EC0(a4, a9 + 592);
  sub_1E1308EC0(a5, a9 + 632);
  sub_1E1308EC0(a6, a9 + 672);
  v18 = *(a7 + 16);
  *(a9 + 712) = *a7;
  *(a9 + 728) = v18;
  *(a9 + 744) = *(a7 + 32);

  return sub_1E1308EC0(a8, a9 + 752);
}

double GameCenterReengagementLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    sub_1E1AF6B0C();
    sub_1E17EB528(1, v8);
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    sub_1E1AF11CC();
    a2 = v6;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1E17EB528(v5, v8);
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    __swift_project_boxed_opaque_existential_1Tm(v2 + 49, v2[52]);
    sub_1E1AF12BC();
    sub_1E1AF11CC();
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_project_boxed_opaque_existential_1Tm(v2 + 59, v2[62]);
    sub_1E1AF12BC();
  }

  return a2;
}

uint64_t sub_1E17EB528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a1;
  v104 = a2;
  v103 = sub_1E1AF179C();
  v2 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v97 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v97 - v7;
  v8 = sub_1E1AF175C();
  v137 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1E1AF176C();
  v11 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1E1AF171C();
  v138 = *(v112 - 8);
  v14 = v138;
  MEMORY[0x1EEE9AC00](v112);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B0);
  v125 = *(v2 + 72);
  v110 = v2;
  v17 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E1B05090;
  v109 = v17;
  v100 = v18;
  v107 = v18 + v17;
  v19 = sub_1E1AF196C();
  swift_allocObject();
  v20 = sub_1E1AF195C();
  *(&v144 + 1) = v19;
  v145 = MEMORY[0x1E69ABA68];
  *&v143 = v20;
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v111 = *MEMORY[0x1E69AB998];
  v135 = *(v14 + 104);
  v126 = v14 + 104;
  v135(v16);
  v21 = *MEMORY[0x1E69AB9B0];
  v133 = *(v11 + 104);
  v134 = v11 + 104;
  v105 = v21;
  v22 = v118;
  v133(v13);
  v139 = MEMORY[0x1E69E7CC0];
  v127 = sub_1E152CEEC();
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51C0);
  v131 = sub_1E152CF44();
  v120 = v8;
  sub_1E1AF6EEC();
  v23 = v113;
  v119 = v10;
  sub_1E1AF178C();
  v24 = *(v137 + 8);
  v137 += 8;
  v130 = v24;
  v24(v10, v8);
  v129 = *(v11 + 8);
  v136 = v11 + 8;
  v25 = v13;
  v129(v13, v22);
  v128 = *(v138 + 8);
  v138 += 8;
  v128(v16, v112);
  sub_1E1308058(&v140, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  v26 = v23[72];
  v27 = v23[73];
  v28 = __swift_project_boxed_opaque_existential_1Tm(v23 + 69, v26);
  *(&v144 + 1) = v26;
  v145 = *(v27 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v143);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v28, v26);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v108 = *MEMORY[0x1E69AB990];
  v30 = v16;
  v135(v16);
  v114 = *MEMORY[0x1E69AB9B8];
  v133(v13);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B8);
  v123 = *(v137 + 64);
  v122 = *(v137 + 72);
  v117 = (v122 + 32) & ~v122;
  v31 = swift_allocObject();
  v121 = xmmword_1E1B02CC0;
  *(v31 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF174C();
  v139 = v31;
  v32 = v119;
  v33 = v120;
  sub_1E1AF6EEC();
  v34 = v125;
  v35 = v30;
  sub_1E1AF178C();
  v130(v32, v33);
  v129(v13, v22);
  v116 = v30;
  v36 = v112;
  v128(v30, v112);
  sub_1E1308058(&v140, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  v99 = 2 * v34;
  v37 = v23[77];
  v38 = v23[78];
  v39 = __swift_project_boxed_opaque_existential_1Tm(v23 + 74, v37);
  *(&v144 + 1) = v37;
  v145 = *(v38 + 8);
  v40 = __swift_allocate_boxed_opaque_existential_0(&v143);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  (v135)(v35, v108, v36);
  v41 = v118;
  (v133)(v13, v114, v118);
  v42 = swift_allocObject();
  *(v42 + 16) = v121;
  sub_1E1AF174C();
  v139 = v42;
  v43 = v32;
  sub_1E1AF6EEC();
  v44 = v99;
  v45 = v113;
  v46 = v116;
  v115 = v13;
  sub_1E1AF178C();
  v130(v43, v33);
  v47 = v41;
  v129(v25, v41);
  v48 = v46;
  v49 = v112;
  v128(v46, v112);
  sub_1E1308058(&v140, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  v99 = v44 + v125;
  v50 = v45[82];
  v51 = v45[83];
  v52 = __swift_project_boxed_opaque_existential_1Tm(v45 + 79, v50);
  *(&v144 + 1) = v50;
  v145 = *(v51 + 8);
  v53 = __swift_allocate_boxed_opaque_existential_0(&v143);
  v54 = v52;
  v55 = v47;
  (*(*(v50 - 8) + 16))(v53, v54, v50);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  (v135)(v48, v108, v49);
  v56 = v115;
  (v133)(v115, v114, v55);
  v57 = swift_allocObject();
  *(v57 + 16) = v121;
  sub_1E1AF174C();
  v139 = v57;
  v58 = v119;
  v59 = v120;
  sub_1E1AF6EEC();
  sub_1E1AF178C();
  v130(v58, v59);
  v129(v56, v55);
  v60 = v49;
  v128(v48, v49);
  sub_1E1308058(&v140, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  if (v101 == 1)
  {
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v61 = v116;
    (v135)(v116, v111, v49);
    v62 = v115;
    (v133)(v115, v105, v55);
    v63 = swift_allocObject();
    *(v63 + 16) = v121;
    sub_1E1AF174C();
    *&v140 = v63;
    v64 = v119;
    v65 = v120;
    sub_1E1AF6EEC();
    v66 = v113;
    v67 = v98;
    sub_1E1AF178C();
    v130(v64, v65);
    v129(v62, v55);
    v128(v61, v49);
    sub_1E1308058(&v143, &unk_1ECEB47F0);
    v68 = v100;
    v70 = *(v100 + 2);
    v69 = *(v100 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_1E172D648(v69 > 1, v70 + 1, 1, v100);
    }

    v71 = v103;
    v72 = v110;
    *(v68 + 2) = v70 + 1;
    (*(v72 + 32))(&v68[v109 + v70 * v125], v67, v71);
    v73 = v135;
  }

  else
  {
    v71 = v103;
    v68 = v100;
    v73 = v135;
    v66 = v113;
  }

  sub_1E14F59A8((v66 + 89), &v140);
  v74 = v111;
  if (*(&v141 + 1))
  {
    sub_1E1308EC0(&v140, &v143);
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    v75 = v116;
    v73(v116, v74, v60);
    v76 = v115;
    v77 = v68;
    v78 = v118;
    (v133)(v115, v105, v118);
    v79 = swift_allocObject();
    *(v79 + 16) = v121;
    sub_1E1AF174C();
    v139 = v79;
    v80 = v119;
    v81 = v120;
    sub_1E1AF6EEC();
    sub_1E1AF178C();
    v130(v80, v81);
    v129(v76, v78);
    v128(v75, v60);
    sub_1E1308058(&v140, &unk_1ECEB47F0);
    v83 = *(v77 + 2);
    v82 = *(v77 + 3);
    if (v83 >= v82 >> 1)
    {
      v77 = sub_1E172D648(v82 > 1, v83 + 1, 1, v77);
    }

    __swift_destroy_boxed_opaque_existential_1(&v143);
    *(v77 + 2) = v83 + 1;
    (*(v110 + 32))(&v77[v109 + v83 * v125], v106, v71);
    v74 = v111;
    v73 = v135;
  }

  else
  {
    sub_1E1308058(&v140, &qword_1ECEB4E00);
    v77 = v68;
  }

  sub_1E1300B24((v66 + 44), &v143);
  v84 = v116;
  v73(v116, v74, v60);
  v85 = v115;
  v86 = v118;
  (v133)(v115, v114, v118);
  v87 = swift_allocObject();
  *(v87 + 16) = v121;
  sub_1E1AF174C();
  *&v140 = v87;
  v88 = v119;
  v89 = v120;
  sub_1E1AF6EEC();
  v90 = v102;
  sub_1E1AF178C();
  v130(v88, v89);
  v129(v85, v86);
  v128(v84, v60);
  sub_1E1308058(&v143, &unk_1ECEB47F0);
  v92 = *(v77 + 2);
  v91 = *(v77 + 3);
  if (v92 >= v91 >> 1)
  {
    v77 = sub_1E172D648(v91 > 1, v92 + 1, 1, v77);
  }

  *(v77 + 2) = v92 + 1;
  (*(v110 + 32))(&v77[v109 + v92 * v125], v90, v71);
  v93 = sub_1E1AF17AC();
  v94 = MEMORY[0x1E69AB9C8];
  v95 = v104;
  v104[3] = v93;
  v95[4] = v94;
  v95[5] = MEMORY[0x1E69AB9D0];
  __swift_allocate_boxed_opaque_existential_0(v95);
  return sub_1E1AF177C();
}

uint64_t GameCenterReengagementLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, char *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v14 = sub_1E1AF745C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF111C();
  v73 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v70 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v65 - v21;
  sub_1E1AF106C();
  v23 = [a1 traitCollection];
  v24 = [v23 horizontalSizeClass];

  v72 = v14;
  v71 = v15;
  if (v24 == 1)
  {
    sub_1E1AF6B0C();
    sub_1E17EB528(1, v76);
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF1B7C();
    v25 = v73;
    (*(v73 + 8))(a2, v18);
    (*(v25 + 32))(a2, v22, v18);
  }

  else
  {
    sub_1E17EB528(v24, v76);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 49, v7[52]);
    v69 = a2;
    sub_1E13BC274();
    sub_1E1AF12DC();
    v68 = v18;
    v26 = *(v15 + 8);
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF11CC();
    v28 = v27;
    v78.origin.x = a3;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    v65[1] = (CGRectGetHeight(v78) - v28) * 0.5;
    v79.origin.x = a3;
    v79.origin.y = a4;
    v79.size.width = a5;
    v79.size.height = a6;
    CGRectGetMidX(v79);
    v67 = a4;
    v66 = a3;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 54, v7[57]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 49, v7[52]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF1B7C();
    v80.origin.x = a3;
    v80.origin.y = a4;
    v80.size.width = a5;
    v80.size.height = a6;
    MidX = CGRectGetMidX(v80);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 54, v7[57]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v31 = v30;
    v26(v17, v14);
    v32 = MidX + v31 * 0.5;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 49, v7[52]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v34 = v33;
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 84, v7[87]);
    sub_1E1AF11DC();
    __swift_project_boxed_opaque_existential_1Tm(v7 + 84, v7[87]);
    v81.origin.y = 0.0;
    v81.origin.x = v32;
    v81.size.width = v34;
    v81.size.height = 380.0;
    CGRectGetMidX(v81);
    v82.origin.x = v66;
    v82.origin.y = v67;
    v82.size.width = a5;
    v82.size.height = a6;
    CGRectGetHeight(v82);
    sub_1E1AF116C();
    sub_1E1AF10EC();
    sub_1E1AF10EC();
    v83.origin.y = 0.0;
    v83.origin.x = v32;
    v83.size.width = v34;
    v83.size.height = 380.0;
    CGRectGetMaxX(v83);
    v84.origin.y = 0.0;
    v84.origin.x = v32;
    v84.size.width = v34;
    v84.size.height = 380.0;
    CGRectGetMaxY(v84);
    v35 = v70;
    sub_1E1AF106C();
    v36 = v73;
    v37 = *(v73 + 8);
    v38 = v68;
    v37(v22, v68);
    v39 = v69;
    v37(v69, v38);
    (*(v36 + 32))(v39, v35, v38);
  }

  __swift_destroy_boxed_opaque_existential_1(v76);
  sub_1E14F59A8((v7 + 64), &v74);
  if (!v75)
  {
    return sub_1E1308058(&v74, &qword_1ECEB4E00);
  }

  sub_1E1308EC0(&v74, v76);
  v40 = [a1 traitCollection];
  v41 = sub_1E1AF697C();

  __swift_project_boxed_opaque_existential_1Tm(v76, v77);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 69, v7[72]);
  sub_1E1AF115C();
  v43 = v42;
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF115C();
    v45 = v43 - v44;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 9, v7[12]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v47 = v46;
    (*(v71 + 8))(v17, v72);
    v48 = v45 - v47;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 69, v7[72]);
    sub_1E1AF115C();
    MidY = CGRectGetMidY(v85);
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF115C();
    v50 = MidY + CGRectGetHeight(v86) * -0.5;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v7 + 69, v7[72]);
    sub_1E1AF115C();
    v52 = CGRectGetMidY(v87);
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF115C();
    v53 = v52 + CGRectGetHeight(v88) * -0.5;
    v54 = sub_1E1AF114C();
    *v55 = v43;
    v55[1] = v53;
    v54(&v74, 0);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 69, v7[72]);
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF115C();
    v57 = v56;
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    sub_1E1AF115C();
    v59 = v57 + v58;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 9, v7[12]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v61 = v60;
    (*(v71 + 8))(v17, v72);
    v48 = v59 + v61;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 69, v7[72]);
    sub_1E1AF115C();
    v50 = v62;
  }

  v63 = sub_1E1AF114C();
  *v64 = v48;
  v64[1] = v50;
  v63(&v74, 0);
  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1E17ED178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 792))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E17ED1C0(uint64_t result, int a2, int a3)
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
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
      *(result + 792) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 792) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E17ED2E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E17ED330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
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
      *(result + 512) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[21];
  swift_unknownObjectRetain();
  sub_1E17ED464(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(&v4);
  sub_1E1300B24(&v5, a2);
  return sub_1E17ED464(&v4);
}

uint64_t ShelfBasedCollectionViewController.collectionElementsObserver.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[25];
  swift_unknownObjectRetain();
  sub_1E17ED464(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[23];
  swift_unknownObjectRetain();
  sub_1E17ED464(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.layoutSectionProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_1E1300B24(&v5, a2);
  return sub_1E17ED464(v4);
}

uint64_t ShelfBasedCollectionViewController.shelfLayoutSpacingProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_1E1300B24(&v5, a2);
  return sub_1E17ED464(v4);
}

uint64_t ShelfBasedCollectionViewController.stateStore.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 112))(v4);
  v2 = v4[0];

  sub_1E17ED464(v4);
  return v2;
}

uint64_t ShelfBasedCollectionViewController.pageGridProvider.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 112))(v4);
  sub_1E1300B24(&v5, a2);
  return sub_1E17ED464(v4);
}

uint64_t ShelfBasedCollectionViewController.pageGridProvider.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 128))(v7);
  __swift_assign_boxed_opaque_existential_1((v5 + 88), a1);
  v4(v7, 0);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*ShelfBasedCollectionViewController.pageGridProvider.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x118uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[33] = a3;
  v7[34] = v3;
  v7[32] = a2;
  (*(a3 + 112))(a2, a3);
  sub_1E1300B24(v8 + 88, v8 + 216);
  sub_1E17ED464(v8);
  return sub_1E17ED87C;
}

void sub_1E17ED87C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[33];
  v4 = (*a1)[32];
  v5 = *a1 + 27;
  if (a2)
  {
    sub_1E1300B24(v5, v2);
    ShelfBasedCollectionViewController.pageGridProvider.setter(v2, v4, v3);
    __swift_destroy_boxed_opaque_existential_1((v2 + 27));
  }

  else
  {
    ShelfBasedCollectionViewController.pageGridProvider.setter(v5, v4, v3);
  }

  free(v2);
}

Swift::Void __swiftcall ShelfBasedCollectionViewController.prepareLayoutDependencies()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 160))();
  v5 = *(v2 + 128);
  v6 = v5(v46, v3, v2);
  *v7 = v4;

  v6(v46, 0);
  (*(v2 + 168))(v46, v3, v2);
  v8 = v5(v45, v3, v2);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v9 + 8);
  sub_1E1308EC0(v46, v10 + 8);
  v8(v45, 0);
  (*(v2 + 176))(v46, v3, v2);
  v11 = v5(v45, v3, v2);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(v12 + 88);
  sub_1E1308EC0(v46, v13 + 88);
  v11(v45, 0);
  (*(v2 + 184))(v46, v3, v2);
  v14 = v5(v45, v3, v2);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(v15 + 128);
  sub_1E1308EC0(v46, v16 + 128);
  v14(v45, 0);
  v17 = (*(v2 + 192))(v3, v2);
  v19 = v18;
  v20 = v5(v46, v3, v2);
  *(v21 + 168) = v17;
  *(v21 + 176) = v19;
  swift_unknownObjectRelease();
  v20(v46, 0);
  v22 = (*(v2 + 200))(v3, v2);
  v24 = v23;
  v25 = v5(v46, v3, v2);
  *(v26 + 184) = v22;
  *(v26 + 192) = v24;
  swift_unknownObjectRelease();
  v25(v46, 0);
  v27 = (*(v2 + 208))(v3, v2);
  v29 = v28;
  v30 = v5(v46, v3, v2);
  *(v31 + 200) = v27;
  *(v31 + 208) = v29;
  swift_unknownObjectRelease();
  v30(v46, 0);
  (*(v2 + 216))(v46, v3, v2);
  v32 = v5(v45, v3, v2);
  v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(v33 + 48);
  sub_1E1308EC0(v46, v34 + 48);
  v32(v45, 0);
  v35 = (*(v2 + 136))(v3, v2);
  (*(v2 + 64))(v35, v3, v2);
  v36 = (*(v2 + 144))(v3, v2);
  (*(v2 + 88))(v36, v3, v2);
  v37 = *(v2 + 32);
  v38 = v37(v3, v2);
  if (v38)
  {
    v39 = v38;
    v40 = (*(v2 + 56))(v3, v2);
    [v39 setDataSource_];
  }

  v41 = (*(v2 + 80))(v3, v2);
  if (v41)
  {
    v42 = v41;
    v43 = v37(v3, v2);
    if (v43)
    {
      v44 = v43;
      [v43 setCollectionViewLayout_];
    }
  }
}

unint64_t AppStoreEngagementEvent.rawValue.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  v4 = 0xD000000000000016;
  if (v2 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

AppStoreKit::AppStoreEngagementEvent_optional __swiftcall AppStoreEngagementEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E17EDEA8()
{
  sub_1E1AF5F0C();
}

void sub_1E17EDF90(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = "didSubscribeToArcade";
  v5 = 0xD00000000000001CLL;
  v6 = "didBecomeArcadeTrialEligible";
  v7 = 0xD000000000000016;
  if (v3 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = "didBecomeNonSubscribed";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "arcadeTabDidComeOnScreen";
  if (v3 != 1)
  {
    v2 = 0xD000000000000014;
    v8 = "arcadePageDidAppear";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000018;
    v9 = "";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t AppStoreEngagementTask.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  type metadata accessor for Action();
  sub_1E1AF381C();
  v9 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, a2);
  v10 = sub_1E1AF39DC();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = *(v5 + 8);
  v11(a1, v4);
  v11(v7, v4);
  *(v8 + 16) = v9;
  return v8;
}

uint64_t AppStoreEngagementTask.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Action();
  sub_1E1AF381C();
  v10 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, a2);
  v11 = sub_1E1AF39DC();
  (*(*(v11 - 8) + 8))(a2, v11);
  v12 = *(v7 + 8);
  v12(a1, v6);
  v12(v9, v6);
  *(v3 + 16) = v10;
  return v3;
}

uint64_t AppStoreEngagementTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1E17EE394()
{
  result = qword_1ECEB9B40;
  if (!qword_1ECEB9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9B40);
  }

  return result;
}

uint64_t sub_1E17EE3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStoreEngagementTask();
  v10 = swift_allocObject();
  type metadata accessor for Action();
  sub_1E1AF381C();
  v11 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, a2);
  v12 = sub_1E1AF39DC();
  (*(*(v12 - 8) + 8))(a2, v12);
  v13 = *(v7 + 8);
  v13(a1, v6);
  result = (v13)(v9, v6);
  *(v10 + 16) = v11;
  *a3 = v10;
  return result;
}

const char *sub_1E17EE5E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v37 = a4;
  v38 = a1;
  v41 = a2;
  v6 = sub_1E1AF0FBC();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF0F7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF5AAC();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v16 = MEMORY[0x1E68FD610]();
  if (!v16)
  {
    v23 = v10;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v24 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v24, qword_1EE1F7BE8);
    v25 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    LODWORD(v40) = sub_1E1AF6A0C();
    v26 = v9;
    v27 = v23;
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      v28 = v34;
      if ((*(v34 + 88))(v8, v6) == *MEMORY[0x1E69E93E8])
      {
        v29 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v8, v6);
        v29 = "success=false";
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v25, v40, v31, "TreatmentArea", v29, v30, 2u);
      MEMORY[0x1E6901640](v30, -1, -1);
    }

    (*(v27 + 8))(v12, v26);
    v18 = "TreatmentAreaPromise";
    sub_1E1AF56FC();
    sub_1E17F2470(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    goto LABEL_13;
  }

  v17 = v16;
  v18 = swift_allocObject();
  v19 = v38;
  v20 = v39;
  *(v18 + 2) = v37;
  *(v18 + 3) = v20;
  *(v18 + 4) = v17;
  *(v18 + 5) = a3;
  v21 = v19;

  v22 = v40;
  sub_1E1AF5A8C();
  if (v22)
  {

LABEL_13:
    sub_1E17F0480(v41, "TreatmentAreaPromise");
    return v18;
  }

  v18 = sub_1E1AF5A9C();

  (*(v35 + 8))(v15, v36);
  sub_1E17F0480(v41, "TreatmentAreaPromise");
  return v18;
}

void sub_1E17EEA9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a6;
  v47 = a7;
  v39 = a4;
  v42 = a3;
  v43 = a2;
  v44 = a1;
  v9 = sub_1E1AF364C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v37 = &v36 - v13;
  v15 = [objc_opt_self() defaultTreatmentStore];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = a4;
  v38 = a5;
  *(inited + 40) = a5;

  sub_1E13C4BB8(inited);
  swift_setDeallocating();
  sub_1E1455104(inited + 32);
  v17 = sub_1E1AF658C();

  v41 = [v15 treatmentsForAreas_];

  v18 = v10;
  v19 = *(v10 + 16);
  v20 = v9;
  v19(v14, v42, v9);
  v21 = v40;
  v19(v40, v43, v20);
  v22 = *(v18 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + v25 + 16) & ~v22;
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = v45;
  *(v27 + 24) = v28;
  v29 = *(v18 + 32);
  v29(v27 + v23, v37, v20);
  v30 = v44;
  *(v27 + v24) = v44;
  v31 = (v27 + v25);
  v32 = v38;
  *v31 = v39;
  v31[1] = v32;
  v29(v27 + v26, v21, v20);
  aBlock[4] = sub_1E17F24F8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E14CC840;
  aBlock[3] = &block_descriptor_17_0;
  v33 = _Block_copy(aBlock);

  v34 = v30;

  v35 = v41;
  [v41 resultWithCompletion_];
  _Block_release(v33);
}

uint64_t sub_1E17EEE04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v39 = a8;
  v40 = a3;
  v41 = a6;
  v34 = a4;
  v37 = a1;
  v11 = sub_1E1AF364C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v35 = &v34 - v16;
  v17 = *(v12 + 16);
  v17(v15);
  (v17)(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a9, v11);
  v18 = *(v12 + 80);
  v19 = (v18 + 32) & ~v18;
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v18 + v22 + 16) & ~v18;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a4;
  v25 = *(v12 + 32);
  v25(v24 + v19, v35, v11);
  *(v24 + v20) = v41;
  v27 = v37;
  v26 = v38;
  *(v24 + v21) = v37;
  v28 = (v24 + v22);
  v29 = v39;
  *v28 = v26;
  v28[1] = v29;
  v25(v24 + v23, v36, v11);
  v30 = a2;
  v31 = v27;

  v32 = v41;
  sub_1E1AF48FC();
}

void sub_1E17EF028(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a4;
  v81 = a3;
  *&v86 = a2;
  v80 = sub_1E1AF0FBC();
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  v83 = sub_1E1AF0F7C();
  v85 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v78 - v28;
  if (!a1)
  {
    v81 = a8;
    v78 = v12;
    v79 = v25;
    v39 = v27;
    if (a5)
    {
      v40 = v26;
      v41 = a5;
      v42 = sub_1E1AF5DBC();
      v43 = [v41 valueForKey_];

      if (v43)
      {
        sub_1E1AF6EBC();
        swift_unknownObjectRelease();
      }

      else
      {
        v88 = 0u;
        v89 = 0u;
      }

      v90[0] = v88;
      v90[1] = v89;
      if (*(&v89 + 1))
      {
        sub_1E13006E4(0, &qword_1EE1E34B0);
        if (swift_dynamicCast())
        {
          v49 = v87;
          *&v90[0] = sub_1E17EFD8C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
          v50 = sub_1E1AF755C();
          v51 = [objc_opt_self() valueWithObject:v50 inContext:v84];
          swift_unknownObjectRelease();
          if (v51)
          {
            v52 = v83;
            if (qword_1EE1F7BE0 != -1)
            {
              swift_once();
            }

            v53 = sub_1E1AF0FAC();
            __swift_project_value_buffer(v53, qword_1EE1F7BE8);
            v54 = sub_1E1AF0F8C();
            v55 = v40;
            sub_1E1AF0FCC();
            v56 = sub_1E1AF6A0C();
            if (sub_1E1AF6D6C())
            {
              v84 = v49;

              v57 = v18;
              sub_1E1AF0FFC();

              v58 = v82;
              v59 = v80;
              if ((*(v82 + 88))(v57, v80) == *MEMORY[0x1E69E93E8])
              {
                v60 = "[Error] Interval already ended";
              }

              else
              {
                (*(v58 + 8))(v57, v59);
                v60 = "success=true";
              }

              v75 = swift_slowAlloc();
              *v75 = 0;
              v55 = v40;
              v76 = sub_1E1AF0F5C();
              _os_signpost_emit_with_name_impl(&dword_1E12FC000, v54, v56, v76, "TreatmentArea", v60, v75, 2u);
              MEMORY[0x1E6901640](v75, -1, -1);
              v49 = v84;
            }

            (*(v85 + 8))(v55, v52);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
            v77 = swift_allocObject();
            *(v77 + 16) = xmmword_1E1B02CC0;
            *(v77 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
            *(v77 + 32) = v51;
            v73 = v51;
            v74 = sub_1E1AF363C();

LABEL_33:

            return;
          }

          goto LABEL_38;
        }
      }

      else
      {

        sub_1E1308058(v90, &qword_1ECEB2DF0);
      }
    }

    v61 = [objc_opt_self() valueWithNullInContext_];
    if (v61)
    {
      v62 = v61;
      v63 = v85;
      v64 = v82;
      if (qword_1EE1F7BE0 != -1)
      {
        swift_once();
      }

      v65 = sub_1E1AF0FAC();
      __swift_project_value_buffer(v65, qword_1EE1F7BE8);
      v66 = sub_1E1AF0F8C();
      sub_1E1AF0FCC();
      v67 = sub_1E1AF6A0C();
      if (sub_1E1AF6D6C())
      {

        sub_1E1AF0FFC();

        v68 = v80;
        if ((*(v64 + 88))(v15, v80) == *MEMORY[0x1E69E93E8])
        {
          v69 = "[Error] Interval already ended";
        }

        else
        {
          (*(v64 + 8))(v15, v68);
          v69 = "success=false";
        }

        v70 = swift_slowAlloc();
        *v70 = 0;
        v71 = sub_1E1AF0F5C();
        _os_signpost_emit_with_name_impl(&dword_1E12FC000, v66, v67, v71, "TreatmentArea", v69, v70, 2u);
        MEMORY[0x1E6901640](v70, -1, -1);
      }

      (*(v63 + 8))(v39, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1E1B02CC0;
      *(v72 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
      *(v72 + 32) = v62;
      v73 = v62;
      v74 = sub_1E1AF363C();
      goto LABEL_33;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v30 = a1;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v31 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v31, qword_1EE1F7BE8);
  v32 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v33 = sub_1E1AF6A0C();
  v34 = sub_1E1AF6D6C();
  v35 = v83;
  if (v34)
  {

    sub_1E1AF0FFC();

    v36 = v82;
    v37 = v80;
    if ((*(v82 + 88))(v21, v80) == *MEMORY[0x1E69E93E8])
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v21, v37);
      v38 = "success=false";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v32, v33, v45, "TreatmentArea", v38, v44, 2u);
    MEMORY[0x1E6901640](v44, -1, -1);
  }

  (*(v85 + 8))(v29, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v46 = swift_allocObject();
  v86 = xmmword_1E1B02CC0;
  *(v46 + 16) = xmmword_1E1B02CC0;
  v47 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v48 = MEMORY[0x1E68FF960](a1, v84);
  *(v46 + 56) = v47;
  *(v46 + 32) = v48;
}

unint64_t sub_1E17EFD8C()
{
  v1 = v0;
  v2 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  v3 = [v1 identifier];
  v4 = sub_1E1AF5DFC();
  v6 = v5;

  v16 = MEMORY[0x1E69E6158];
  *&v15 = v4;
  *(&v15 + 1) = v6;
  sub_1E1301CF0(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v14, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v8 = [v1 startDate];
  v9 = sub_1E1AEFE6C();
  v16 = v9;
  __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_1E1AEFE3C();

  sub_1E1301CF0(&v15, v14);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v14, 0x7461447472617473, 0xE900000000000065, v10);
  v11 = [v1 endDate];
  v16 = v9;
  __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_1E1AEFE3C();

  sub_1E1301CF0(&v15, v14);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v14, 0x65746144646E65, 0xE700000000000000, v12);
  return v2;
}

const char *sub_1E17EFFC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a2;
  v37 = a1;
  v5 = sub_1E1AF0FBC();
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF0F7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF5AAC();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v15 = MEMORY[0x1E68FD610]();
  if (!v15)
  {
    v39 = v7;
    v21 = v9;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v22 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v22, qword_1EE1F7BE8);
    v23 = sub_1E1AF0F8C();
    v24 = v11;
    sub_1E1AF0FCC();
    v25 = sub_1E1AF6A0C();
    v26 = v8;
    v27 = v21;
    if (sub_1E1AF6D6C())
    {

      v28 = v39;
      sub_1E1AF0FFC();

      v29 = v34;
      if ((*(v34 + 88))(v28, v5) == *MEMORY[0x1E69E93E8])
      {
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v28, v5);
        v30 = "success=false";
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v23, v25, v32, "TreatmentAreas", v30, v31, 2u);
      MEMORY[0x1E6901640](v31, -1, -1);
    }

    (*(v27 + 8))(v24, v26);
    v17 = "TreatmentAreasPromise";
    sub_1E1AF56FC();
    sub_1E17F2470(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    goto LABEL_13;
  }

  v16 = v15;
  v17 = swift_allocObject();
  v18 = v37;
  *(v17 + 2) = v38;
  *(v17 + 3) = v16;
  *(v17 + 4) = a3;
  v19 = v18;

  v20 = v39;
  sub_1E1AF5A8C();
  if (v20)
  {

LABEL_13:
    sub_1E17F0480(v40, "TreatmentAreasPromise");
    return v17;
  }

  v17 = sub_1E1AF5A9C();

  (*(v35 + 8))(v14, v36);
  sub_1E17F0480(v40, "TreatmentAreasPromise");
  return v17;
}

uint64_t sub_1E17F0480(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1E1AF0FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v10, qword_1EE1F7BE8);
  v11 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v12 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1E17F0710(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a2;
  v34 = a1;
  v6 = sub_1E1AF364C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v27 = &v27 - v10;
  v12 = [objc_opt_self() defaultTreatmentStore];

  sub_1E13C4BB8(v13);

  v14 = sub_1E1AF658C();

  v29 = [v12 treatmentsForAreas_];

  v15 = *(v7 + 16);
  v15(v11, v30, v6);
  v15(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v6);
  v16 = *(v7 + 80);
  v17 = (v16 + 32) & ~v16;
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v16 + v18 + 8) & ~v16;
  v20 = swift_allocObject();
  v21 = v33;
  *(v20 + 16) = v32;
  *(v20 + 24) = v21;
  v22 = *(v7 + 32);
  v22(v20 + v17, v27, v6);
  v23 = v34;
  *(v20 + v18) = v34;
  v22(v20 + v19, v28, v6);
  aBlock[4] = sub_1E17F2304;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E14CC840;
  aBlock[3] = &block_descriptor_75;
  v24 = _Block_copy(aBlock);

  v25 = v23;

  v26 = v29;
  [v29 resultWithCompletion_];
  _Block_release(v24);
}

uint64_t sub_1E17F09F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v35 = a6;
  v36 = a3;
  v33 = a4;
  v34 = a1;
  v31 = a2;
  v10 = sub_1E1AF364C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = *(v11 + 16);
  v17(&v31 - v15, a5, v10, v14);
  (v17)(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v10);
  v18 = *(v11 + 80);
  v19 = (v18 + 32) & ~v18;
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v18 + v21 + 8) & ~v18;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v33;
  v24 = *(v11 + 32);
  v24(v23 + v19, v16, v10);
  v26 = v34;
  v25 = v35;
  *(v23 + v20) = v35;
  *(v23 + v21) = v26;
  v24(v23 + v22, v32, v10);
  v27 = v31;
  v28 = v26;

  v29 = v25;
  sub_1E1AF48FC();
}

void sub_1E17F0BF4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v92 = a4;
  v93 = a3;
  *&v91 = a2;
  v89 = sub_1E1AF0FBC();
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - v15;
  v17 = sub_1E1AF0F7C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - v24;
  if (!a1)
  {
    v85 = v13;
    v87 = a6;
    if (a5)
    {
      v86 = v23;
      v83 = v18;
      v84 = v17;
      v33 = a5;
      v93 = sub_1E159D268(MEMORY[0x1E69E7CC0]);
      v82 = v33;
      v103 = sub_1E1AF67AC();
      v34 = sub_1E1AF67CC();
      v35 = sub_1E17F2470(&qword_1EE1E34A0, MEMORY[0x1E6969E78]);
      sub_1E1AF6DBC();
      if (*(&v100 + 1))
      {
        v36 = MEMORY[0x1E69E6158];
        v37 = &unk_1ECEB9B50;
        v88 = v35;
        do
        {
          v97[0] = v99;
          v97[1] = v100;
          v98[0] = v101;
          v98[1] = v102;
          sub_1E137A5C4(v97, v96);
          if (swift_dynamicCast())
          {
            v44 = v37;
            v45 = v94;
            v46 = v95;
            sub_1E137A5C4(v98, v96);
            sub_1E13006E4(0, &qword_1EE1E34B0);
            if (swift_dynamicCast())
            {
              v38 = v93;
              v39 = v34;
              v40 = v36;
              v41 = v94;
              v42 = sub_1E17EFD8C();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v96[0] = v38;
              sub_1E159BDE4(v42, v45, v46, isUniquelyReferenced_nonNull_native);

              v36 = v40;
              v34 = v39;

              v93 = v96[0];
            }

            else
            {
            }

            v37 = v44;
          }

          sub_1E1308058(v97, v37);
          sub_1E1AF6DBC();
        }

        while (*(&v100 + 1));
      }

      *&v99 = v93;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9B48);
      v47 = sub_1E1AF755C();
      v48 = [objc_opt_self() valueWithObject:v47 inContext:v92];
      swift_unknownObjectRelease();
      v49 = v84;
      v50 = v83;
      if (v48)
      {
        v51 = v90;
        if (qword_1EE1F7BE0 != -1)
        {
          swift_once();
        }

        v52 = sub_1E1AF0FAC();
        __swift_project_value_buffer(v52, qword_1EE1F7BE8);
        v53 = sub_1E1AF0F8C();
        v54 = v86;
        sub_1E1AF0FCC();
        v55 = sub_1E1AF6A0C();
        if (sub_1E1AF6D6C())
        {

          v56 = v85;
          sub_1E1AF0FFC();

          v57 = v89;
          if ((*(v51 + 88))(v56, v89) == *MEMORY[0x1E69E93E8])
          {
            v58 = "[Error] Interval already ended";
          }

          else
          {
            (*(v51 + 8))(v56, v57);
            v58 = "success=true";
          }

          v72 = swift_slowAlloc();
          *v72 = 0;
          v54 = v86;
          v73 = sub_1E1AF0F5C();
          _os_signpost_emit_with_name_impl(&dword_1E12FC000, v53, v55, v73, "TreatmentAreas", v58, v72, 2u);
          MEMORY[0x1E6901640](v72, -1, -1);
        }

        (*(v50 + 8))(v54, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1E1B02CC0;
        *(v74 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
        *(v74 + 32) = v48;
        v75 = v48;
        v76 = sub_1E1AF363C();

LABEL_37:

        return;
      }

      __break(1u);
    }

    else
    {
      v64 = [objc_opt_self() valueWithNewObjectInContext_];
      if (v64)
      {
        v65 = v64;
        if (qword_1EE1F7BE0 != -1)
        {
          swift_once();
        }

        v66 = sub_1E1AF0FAC();
        __swift_project_value_buffer(v66, qword_1EE1F7BE8);
        v67 = sub_1E1AF0F8C();
        sub_1E1AF0FCC();
        v68 = sub_1E1AF6A0C();
        if (sub_1E1AF6D6C())
        {

          sub_1E1AF0FFC();

          v69 = v90;
          v70 = v89;
          if ((*(v90 + 88))(v10, v89) == *MEMORY[0x1E69E93E8])
          {
            v71 = "[Error] Interval already ended";
          }

          else
          {
            (*(v69 + 8))(v10, v70);
            v71 = "success=false";
          }

          v77 = swift_slowAlloc();
          *v77 = 0;
          v78 = sub_1E1AF0F5C();
          _os_signpost_emit_with_name_impl(&dword_1E12FC000, v67, v68, v78, "TreatmentAreas", v71, v77, 2u);
          MEMORY[0x1E6901640](v77, -1, -1);
        }

        (*(v18 + 8))(v20, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1E1B02CC0;
        *(v79 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
        *(v79 + 32) = v65;
        v80 = v65;
        v76 = sub_1E1AF363C();

        goto LABEL_37;
      }
    }

    __break(1u);
    return;
  }

  v26 = a1;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v27 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v27, qword_1EE1F7BE8);
  v28 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v29 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    v30 = v90;
    v31 = v89;
    if ((*(v90 + 88))(v16, v89) == *MEMORY[0x1E69E93E8])
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v16, v31);
      v32 = "success=false";
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v28, v29, v60, "TreatmentAreas", v32, v59, 2u);
    MEMORY[0x1E6901640](v59, -1, -1);
  }

  (*(v18 + 8))(v25, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v61 = swift_allocObject();
  v91 = xmmword_1E1B02CC0;
  *(v61 + 16) = xmmword_1E1B02CC0;
  v62 = sub_1E13006E4(0, &qword_1EE1E32A8);
  v63 = MEMORY[0x1E68FF960](a1, v92);
  *(v61 + 56) = v62;
  *(v61 + 32) = v63;
}

uint64_t sub_1E17F1A4C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v13 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v13, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();

  v14 = sub_1E1AF0F8C();
  v15 = sub_1E1AF6A1C();

  v16 = sub_1E1AF6D6C();
  v47 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v46 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v49 = v5;
    v50 = v19;
    v20 = a2;
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1E1972EA0(a1, v20, &v50);
    v22 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v14, v15, v22, "TreatmentAreaPromise", "area=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v23 = v21;
    a2 = v20;
    v5 = v49;
    MEMORY[0x1E6901640](v23, -1, -1);
    v24 = v18;
    v7 = v46;
    MEMORY[0x1E6901640](v24, -1, -1);
  }

  v45 = *(v5 + 16);
  v45(v48, v12, v4);
  sub_1E1AF0FEC();
  swift_allocObject();
  v46 = sub_1E1AF0FDC();
  v25 = *(v5 + 8);
  v49 = v5 + 8;
  v25(v12, v4);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();

  v26 = sub_1E1AF0F8C();
  v27 = sub_1E1AF6A1C();

  if (sub_1E1AF6D6C())
  {
    v28 = v7;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v4;
    v31 = a2;
    v32 = v30;
    v50 = v30;
    *v29 = 136315138;
    v33 = v47;
    *(v29 + 4) = sub_1E1972EA0(v47, v31, &v50);
    v34 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v26, v27, v34, "TreatmentArea", "area=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v35 = v32;
    a2 = v31;
    v4 = v44;
    MEMORY[0x1E6901640](v35, -1, -1);
    v36 = v29;
    v7 = v28;
    MEMORY[0x1E6901640](v36, -1, -1);
  }

  else
  {

    v33 = v47;
  }

  v45(v48, v7, v4);
  swift_allocObject();
  v37 = sub_1E1AF0FDC();
  v38 = v7;
  v39 = v37;
  v25(v38, v4);
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v40 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v40);
  *(&v43 - 4) = v46;
  *(&v43 - 3) = v39;
  *(&v43 - 2) = v33;
  *(&v43 - 1) = a2;
  v41 = sub_1E1AF6D5C();

  return v41;
}

uint64_t sub_1E17F1F00(uint64_t a1)
{
  v34 = a1;
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v11, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v12 = sub_1E1AF0F8C();
  v13 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v12, v13, v16, "TreatmentAreasPromise", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x1E6901640](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_1E1AF0FEC();
  swift_allocObject();
  v32 = sub_1E1AF0FDC();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v33 = v19;
  v20(v10, v1);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v21 = sub_1E1AF0F8C();
  v22 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v23 = swift_slowAlloc();
    v31 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v21, v22, v25, "TreatmentAreas", "", v24, 2u);
    v26 = v24;
    v1 = v31;
    MEMORY[0x1E6901640](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_1E1AF0FDC();
  v20(v4, v1);
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v28 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v28);
  *(&v31 - 4) = v32;
  *(&v31 - 3) = v27;
  *(&v31 - 2) = v34;
  v29 = sub_1E1AF6D5C();

  return v29;
}

uint64_t sub_1E17F2304(void *a1, void *a2)
{
  v5 = *(sub_1E1AF364C() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v8);

  return sub_1E17F09F4(a1, a2, v9, v10, v2 + v7, v11, v2 + ((v6 + v8 + 8) & ~v6));
}

void sub_1E17F23C4()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);

  sub_1E17F0BF4(v6, v7, v0 + v3, v8, v9, v0 + ((v2 + v5 + 8) & ~v2));
}

uint64_t sub_1E17F2470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E17F24F8(void *a1, void *a2)
{
  v5 = *(sub_1E1AF364C() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E17EEE04(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v7, *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v6 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6));
}

void sub_1E17F25C8()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + v6);
  v12 = *(v0 + v6 + 8);

  sub_1E17EF028(v9, v10, v0 + v3, v7, v8, v11, v12, v0 + ((v2 + v6 + 16) & ~v2));
}

uint64_t (*Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, double a3)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v4 = sub_1E14882C8(sub_1E17F287C, v20, a4);
  v19 = v4[2];
  if (v19)
  {
    v5 = type metadata accessor for CompoundScrollObserver();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children] = MEMORY[0x1E69E7CC0];
    v24.receiver = v6;
    v24.super_class = v5;
    result = objc_msgSendSuper2(&v24, sel_init);
    v8 = result;
    v9 = 0;
    v10 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
    v11 = v4 + 5;
    while (v9 < v4[2])
    {
      v12 = *(v11 - 1);
      v13 = *(*v11 + 8);
      swift_beginAccess();
      v14 = *(v8 + v10);
      swift_unknownObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + v10) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1E172E3E8(0, v14[2] + 1, 1, v14);
        *(v8 + v10) = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1E172E3E8((v16 > 1), v17 + 1, 1, v14);
      }

      ++v9;
      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v12;
      v18[5] = v13;
      *(v8 + v10) = v14;
      swift_endAccess();
      result = swift_unknownObjectRelease();
      v11 += 2;
      if (v19 == v9)
      {

        *(swift_allocObject() + 16) = v8;
        return sub_1E17F2A34;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1E17F287C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 8))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

uint64_t sub_1E17F2900(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v9 = *(a3 + v7);
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = v13;
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 8);
        v18 = *(v17 + 56);
        swift_unknownObjectRetain();
        v18(a1, a2, ObjectType, v17, a4, 0.0);
        swift_unknownObjectRelease();
      }

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t ProductRatingsLayout.init(metrics:averageRatingText:denominatorRatingText:ratingCountText:histogramStarViews:histogramRatingProgressViews:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  sub_1E1308EC0(a2, (a7 + 50));
  sub_1E1308EC0(a3, (a7 + 55));
  result = sub_1E1308EC0(a4, (a7 + 60));
  a7[65] = a5;
  a7[66] = a6;
  return result;
}

uint64_t ProductRatingsLayout.Metrics.init(averageRatingTextSpace:compactDenominatorTextSpace:denominatorLeadingMargin:columnWidth:columnMargin:histogramLeadingMargin:progressBarMargin:histogramStarSpacing:histogramBarHeight:bottomSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, __int128 *a15)
{
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, (a9 + 5));
  sub_1E1308EC0(a3, (a9 + 10));
  sub_1E1308EC0(a4, (a9 + 15));
  sub_1E1308EC0(a5, (a9 + 20));
  sub_1E1308EC0(a6, (a9 + 30));
  sub_1E1308EC0(a7, (a9 + 25));
  sub_1E1308EC0(a8, (a9 + 35));
  a9[40] = a10;
  result = sub_1E1308EC0(a15, (a9 + 41));
  a9[46] = a11;
  a9[47] = a12;
  a9[48] = a13;
  a9[49] = a14;
  return result;
}

uint64_t ProductRatingsLayout.Metrics.averageRatingTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t ProductRatingsLayout.Metrics.compactDenominatorTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t ProductRatingsLayout.Metrics.denominatorLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t ProductRatingsLayout.Metrics.columnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t ProductRatingsLayout.Metrics.columnMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t ProductRatingsLayout.Metrics.progressBarMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t ProductRatingsLayout.Metrics.histogramLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_1E1308EC0(a1, v1 + 240);
}

uint64_t ProductRatingsLayout.Metrics.histogramStarSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 280);

  return sub_1E1308EC0(a1, v1 + 280);
}

uint64_t ProductRatingsLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 328);

  return sub_1E1308EC0(a1, v1 + 328);
}

void ProductRatingsLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[46] = a1;
  v4[47] = a2;
  v4[48] = a3;
  v4[49] = a4;
}

uint64_t ProductRatingsLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v128 = a5;
  v129 = a6;
  v126 = a3;
  v127 = a4;
  v116 = a2;
  v9 = sub_1E1AF745C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v114 = sub_1E1AF695C();

  __swift_project_boxed_opaque_existential_1Tm(v7 + 15, v7[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v117 = v15;
  v16 = *(v10 + 8);
  v16(v13, v9);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 20, v7[23]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v107 = v17;
  v16(v13, v9);
  sub_1E1AF6B0C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 50, v7[53]);
  sub_1E1AF11CC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v130.origin.x = v19;
  v130.origin.y = v21;
  v130.size.width = v23;
  v130.size.height = v25;
  MinX = CGRectGetMinX(v130);
  v121 = v21;
  v122 = v19;
  v131.origin.x = v19;
  v131.origin.y = v21;
  v131.size.width = v23;
  v131.size.height = v25;
  MinY = CGRectGetMinY(v131);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  v115 = v31;
  v113 = v33;
  sub_1E1AF12FC();
  v36 = MinY + v35;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 50, v7[53]);
  v37 = MinX;
  v38 = v25;
  v39 = v29;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 55, v7[58]);
  v40 = v23;
  sub_1E1AF11CC();
  v112 = v41;
  v111 = v42;
  v118 = v43;
  v45 = v44;
  v46 = [a1 traitCollection];
  v47 = sub_1E1AF695C();

  v119 = v39;
  v120 = v27;
  v123 = v36;
  if (v47)
  {
    v132.origin.y = v121;
    v132.origin.x = v122;
    v132.size.width = v23;
    v106 = v23;
    v132.size.height = v38;
    v48 = CGRectGetMinX(v132);
    v49 = v38;
    v110 = v45;
    v50 = v36;
    v51 = v48;
    v133.origin.x = v37;
    v133.origin.y = v50;
    v133.size.width = v27;
    v133.size.height = v39;
    MidX = CGRectGetMidX(v133);
    v53 = v112;
    v54 = floor(MidX + v112 * -0.5);
    if (v51 > v54)
    {
      v55 = v51;
    }

    else
    {
      v55 = v54;
    }

    v134.origin.x = v37;
    v134.origin.y = v50;
    v134.size.width = v27;
    v134.size.height = v39;
    v56 = CGRectGetMaxY(v134) - v113;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
    v57 = v111;
    sub_1E1AF12FC();
    v59 = v56 + v58;
    v60 = v106;
    v61 = v57;
  }

  else
  {
    v135.origin.x = v37;
    v135.origin.y = v36;
    v135.size.width = v27;
    v135.size.height = v39;
    MaxX = CGRectGetMaxX(v135);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v49 = v38;
    v64 = v63;
    v16(v13, v9);
    v55 = MaxX + v64;
    v136.origin.x = v37;
    v136.origin.y = v36;
    v136.size.width = v27;
    v136.size.height = v39;
    v59 = CGRectGetMaxY(v136) - v113 - v118;
    v60 = v40;
    v53 = v112;
    v61 = v111;
  }

  v124 = v49;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 55, v7[58]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 60, v7[63]);
  sub_1E1AF11CC();
  v66 = v65;
  v68 = v67;
  v112 = v69;
  v113 = v70;
  v137.origin.x = v55;
  v137.origin.y = v59;
  v137.size.width = v53;
  v137.size.height = v61;
  v71 = v118 + CGRectGetMinY(v137);
  v72 = v121;
  v73 = v122;
  v138.origin.x = v122;
  v138.origin.y = v121;
  v138.size.width = v60;
  v138.size.height = v49;
  v74 = v117 + CGRectGetMinX(v138) - v66;
  v75 = v71 - v112;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 60, v7[63]);
  v111 = v74;
  v110 = v75;
  v118 = v66;
  v112 = v68;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v139.origin.x = MinX;
  v139.origin.y = v123;
  v77 = v119;
  v76 = v120;
  v139.size.width = v120;
  v139.size.height = v119;
  v109 = CGRectGetMinY(v139);
  v140.origin.x = v73;
  v140.origin.y = v72;
  v140.size.width = v60;
  v140.size.height = v49;
  v108 = CGRectGetMinY(v140);
  v78 = v60;
  v79 = v73;
  v80 = v72;
  if (v114)
  {
    v81 = v76;
    v141.origin.x = v79;
    v141.origin.y = v72;
    v141.size.width = v60;
    v82 = v124;
    v141.size.height = v124;
    v83 = CGRectGetWidth(v141) * 0.5;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 30, v7[33]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v85 = v84;
    v16(v13, v9);
    v86 = v83 + v85;
    v142.origin.x = MinX;
    v142.origin.y = v123;
    v142.size.width = v81;
    v142.size.height = v77;
    v87 = CGRectGetMaxX(v142);
    __swift_project_boxed_opaque_existential_1Tm(v7 + 25, v7[28]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v89 = v88;
    v16(v13, v9);
    v90 = v87 + v89;
    v143.origin.x = v79;
    v143.origin.y = v80;
    v143.size.width = v78;
    v143.size.height = v82;
    if (v90 < CGRectGetMaxX(v143) - v86)
    {
      v144.origin.x = v79;
      v144.origin.y = v80;
      v144.size.width = v78;
      v144.size.height = v124;
      v90 = CGRectGetMaxX(v144) - v86;
    }

    v145.origin.x = v79;
    v145.origin.y = v80;
    v145.size.width = v78;
    v91 = v124;
    v145.size.height = v124;
    v92 = CGRectGetMinY(v145);
    v146.origin.x = v79;
    v146.origin.y = v80;
    v146.size.width = v78;
    v146.size.height = v91;
    v93 = CGRectGetMaxX(v146) - v90;
  }

  else
  {
    v147.origin.x = v73;
    v147.origin.y = v72;
    v147.size.width = v60;
    v94 = v124;
    v147.size.height = v124;
    v95 = CGRectGetMinX(v147);
    v96 = v117;
    v90 = v107 + v117 + v95;
    v97 = v117 + v90;
    v148.origin.x = v79;
    v148.origin.y = v80;
    v148.size.width = v60;
    v148.size.height = v94;
    v98 = CGRectGetMaxX(v148) < v97;
    v93 = v96;
    if (v98)
    {
      v149.origin.x = v79;
      v149.origin.y = v80;
      v149.size.width = v60;
      v149.size.height = v124;
      v93 = CGRectGetMaxX(v149) - v90;
    }

    v150.origin.x = v79;
    v150.origin.y = v80;
    v150.size.width = v60;
    v150.size.height = v124;
    v92 = CGRectGetMinY(v150);
  }

  v99 = v92;
  v101 = v126;
  v100 = v127;
  v103 = v128;
  v102 = v129;
  sub_1E17F3B88(v90, v99, v93, v115 + v109 - v108, v126, v127, v128, v129);
  v151.origin.x = v111;
  v151.origin.y = v110;
  v151.size.width = v118;
  v151.size.height = v112;
  CGRectGetMaxY(v151);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 41, v7[44]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v16(v13, v9);
  v152.origin.x = v101;
  v152.origin.y = v100;
  v152.size.width = v103;
  v152.size.height = v102;
  CGRectGetWidth(v152);
  v153.origin.y = v121;
  v153.origin.x = v122;
  v153.size.width = v78;
  v153.size.height = v124;
  CGRectGetMinY(v153);
  v154.origin.x = MinX;
  v154.origin.y = v123;
  v154.size.height = v119;
  v154.size.width = v120;
  CGRectGetMinY(v154);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 41, v7[44]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v16(v13, v9);
  return sub_1E1AF107C();
}

void sub_1E17F3B88(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, CGFloat a8)
{
  v88 = a8;
  v83 = a7;
  v87 = a6;
  v82 = a5;
  v89 = a4;
  v86 = a2;
  v85 = a1;
  v10 = sub_1E1AF745C();
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 520);
  v16 = *(v15 + 16);
  v71 = *(v8 + 528);
  if (v16)
  {
    v17 = v16 == *(v71 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = 0.0;
  if (v17)
  {
    v81 = v12;
    v84 = v11;
    v73 = v15;
    v19 = v15 + 32;
    v20 = MEMORY[0x1E69E7CC0];
    v21 = 0.0;
    v70 = v15 + 32;
    v22 = v16;
    do
    {
      sub_1E1300B24(v19, &v97);
      __swift_project_boxed_opaque_existential_1Tm(&v97, v99);
      sub_1E1AF11DC();
      v24 = v23;
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v97);
      if (v18 < v24)
      {
        v21 = v26;
        v18 = v24;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1E172E2C0(0, *(v20 + 2) + 1, 1, v20);
      }

      v28 = *(v20 + 2);
      v27 = *(v20 + 3);
      if (v28 >= v27 >> 1)
      {
        v20 = sub_1E172E2C0((v27 > 1), v28 + 1, 1, v20);
      }

      *(v20 + 2) = v28 + 1;
      v29 = &v20[16 * v28 + 32];
      *v29 = v24;
      v29[1] = v26;
      v19 += 40;
      --v22;
    }

    while (v22);
    __swift_project_boxed_opaque_existential_1Tm((v8 + 280), *(v8 + 304));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v31 = v30;
    v80 = *(*&v81 + 8);
    (*&v80)(v14, *&v84);
    v77 = v31;
    v32 = v21 * v16 + v31 * (v16 - 1);
    v33 = v85;
    v103.origin.x = v85;
    v34 = v86;
    v103.origin.y = v86;
    v103.size.width = a3;
    v35 = v89;
    v103.size.height = v89;
    MinX = CGRectGetMinX(v103);
    v104.origin.x = v33;
    v104.origin.y = v34;
    v104.size.width = a3;
    v104.size.height = v35;
    v37 = CGRectGetMaxY(v104) - v32;
    v105.origin.x = v33;
    v105.origin.y = v34;
    v81 = a3;
    v105.size.width = a3;
    v105.size.height = v35;
    Width = CGRectGetWidth(v105);
    v106.origin.x = MinX;
    v39 = MinX;
    v106.origin.y = v37;
    v106.size.width = v18;
    v106.size.height = v32;
    v40 = CGRectGetWidth(v106);
    __swift_project_boxed_opaque_existential_1Tm((v8 + 200), *(v8 + 224));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v42 = v41;
    (*&v80)(v14, *&v84);
    v76 = Width - (v40 + v42);
    v43 = *(v8 + 320);
    v107.origin.x = v39;
    v78 = v39;
    v84 = v37;
    v107.origin.y = v37;
    v80 = v18;
    v107.size.width = v18;
    v79 = v32;
    v107.size.height = v32;
    MinY = CGRectGetMinY(v107);
    v72 = 0;
    v45 = 0;
    v69 = v71 + 32;
    v75 = v43;
    v74 = v43 * 0.5;
LABEL_15:
    v46 = *(v73 + 16);
    if (v45 == v46)
    {
      while (1)
      {
LABEL_19:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0uLL;
        v52 = 1;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
LABEL_20:
        v97 = v48;
        v98 = v51;
        v99 = v49;
        v100 = v53;
        v101[0] = v54;
        v101[1] = v55;
        v102 = v50;
        if (!v53)
        {
          v62 = v85;
          v111.origin.x = v85;
          v63 = v86;
          v111.origin.y = v86;
          v64 = v81;
          v111.size.width = v81;
          v65 = v89;
          v111.size.height = v89;
          v88 = CGRectGetMinX(v111);
          v112.origin.x = v62;
          v112.origin.y = v63;
          v112.size.width = v64;
          v112.size.height = v65;
          CGRectGetMaxY(v112);
          v66 = v78;
          v113.origin.x = v78;
          v113.origin.y = v84;
          v67 = v80;
          v113.size.width = v80;
          v68 = v79;
          v113.size.height = v79;
          CGRectGetHeight(v113);
          v114.origin.x = v62;
          v114.origin.y = v63;
          v114.size.width = v64;
          v114.size.height = v65;
          CGRectGetWidth(v114);
          v115.origin.x = v66;
          v115.origin.y = v84;
          v115.size.width = v67;
          v115.size.height = v68;
          CGRectGetHeight(v115);

          return;
        }

        sub_1E1308EC0(&v98, &v91);
        sub_1E1308EC0(v101, &v94);
        if (v48 >= *(v20 + 2))
        {
          break;
        }

        v56 = &v20[16 * v48 + 32];
        v58 = *v56;
        v57 = v56[1];
        v108.origin.x = v78;
        v108.origin.y = v84;
        v108.size.width = v80;
        v108.size.height = v79;
        v59 = CGRectGetMaxX(v108) - v58;
        __swift_project_boxed_opaque_existential_1Tm(&v91, v93);
        sub_1E1AF6B1C();
        sub_1E1AF116C();
        __swift_destroy_boxed_opaque_existential_1(&v91);
        v109.origin.x = v85;
        v109.origin.y = v86;
        v109.size.width = v81;
        v109.size.height = v89;
        CGRectGetMaxX(v109);
        v110.origin.x = v59;
        v110.origin.y = MinY;
        v110.size.width = v58;
        v110.size.height = v57;
        CGRectGetMidY(v110);
        __swift_project_boxed_opaque_existential_1Tm(&v94, *(&v95 + 1));
        sub_1E1AF6B1C();
        sub_1E1AF116C();
        __swift_destroy_boxed_opaque_existential_1(&v94);
        MinY = MinY + v77 + v57;
        if ((v52 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else if (v45 < v46)
    {
      sub_1E1300B24(v70 + 40 * v45++, v90);
      v47 = *(v71 + 16);
      if (v72 == v47)
      {
        __swift_destroy_boxed_opaque_existential_1(v90);
        goto LABEL_19;
      }

      if (v72 < v47)
      {
        v60 = v72;
        v61 = v69 + 40 * v72;
        sub_1E1308EC0(v90, &v91);
        sub_1E1300B24(v61, &v94);
        v52 = 0;
        v51 = v91;
        v49 = v92;
        v53 = v93;
        v54 = v94;
        v55 = v95;
        v48 = v60;
        v72 = v60 + 1;
        v50 = v96;
        goto LABEL_20;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

double _s11AppStoreKit20ProductRatingsLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, double a3)
{
  v31 = sub_1E1AF745C();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF162C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF165C();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF1A1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E1B02CD0;
  sub_1E1300B24(a1, &v32);
  v19 = MEMORY[0x1E69ABA90];
  *(v18 + 56) = v14;
  *(v18 + 64) = v19;
  __swift_allocate_boxed_opaque_existential_0((v18 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 328, &v32);
  *(v18 + 96) = v14;
  *(v18 + 104) = v19;
  __swift_allocate_boxed_opaque_existential_0((v18 + 72));
  sub_1E1AF1A2C();
  v30 = a2;
  v20 = [a2 traitCollection];
  LOBYTE(v19) = sub_1E1AF695C();

  if (v19)
  {
    sub_1E1300B24(a1 + 40, &v32);
    sub_1E1AF1A2C();
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      v18 = sub_1E172D4BC((v21 > 1), v22 + 1, 1, v18);
    }

    v33 = v14;
    v34 = MEMORY[0x1E69ABA90];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
    (*(v15 + 16))(boxed_opaque_existential_0, v17, v14);
    *(v18 + 16) = v22 + 1;
    sub_1E1308EC0(&v32, v18 + 40 * v22 + 32);
    (*(v15 + 8))(v17, v14);
  }

  (*(v25 + 104))(v10, *MEMORY[0x1E69AB970], v26);
  sub_1E1AF163C();
  sub_1E1AF161C();
  __swift_project_boxed_opaque_existential_1Tm((a1 + 328), *(a1 + 352));
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v29 + 8))(v7, v31);
  (*(v27 + 8))(v13, v28);
  return a3;
}

unint64_t sub_1E17F480C()
{
  result = qword_1ECEB9B58;
  if (!qword_1ECEB9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9B58);
  }

  return result;
}

uint64_t sub_1E17F4870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_1E17F48B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WidgetKind.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1E17F49E8()
{
  result = qword_1ECEB9B60;
  if (!qword_1ECEB9B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9B60);
  }

  return result;
}

uint64_t sub_1E17F4A3C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E17F4AB0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E17F4B04@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

__n128 BatchPurchaseParams.PurchaseItem.init(deserializing:using:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v36 - v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E1AF380C();
  v11 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  sub_1E1AF381C();
  (*(v8 + 16))(v10, a2, v7);
  v17 = v42;
  PurchaseRepresentation.init(deserializing:using:)(v16, v10, v43);
  if (v17)
  {
    (*(v8 + 8))(a2, v7);
    (*(v11 + 8))(a1, v59);
    return result;
  }

  v36 = v8;
  v37 = v7;
  v38 = 0;
  v39 = a2;
  v55 = v43[10];
  v56 = v43[11];
  v57 = v43[12];
  v58 = v44;
  v51 = v43[6];
  v52 = v43[7];
  v53 = v43[8];
  v54 = v43[9];
  v47 = v43[2];
  v48 = v43[3];
  v49 = v43[4];
  v50 = v43[5];
  v45 = v43[0];
  v46 = v43[1];
  v42 = a1;
  sub_1E1AF381C();
  v19 = v40;
  sub_1E1AF368C();
  v20 = *(v11 + 8);
  v21 = v59;
  v20(v13, v59);
  v22 = v20;
  v23 = sub_1E1AF40DC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    sub_1E1308058(v19, &qword_1ECEB2B28);
    v25 = v36;
    v26 = v37;
    v27 = v41;
LABEL_7:
    v28 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
    (*(v25 + 8))(v39, v26);
    v22(v42, v21);

    goto LABEL_8;
  }

  v28 = sub_1E1AF40BC();
  (*(v24 + 8))(v19, v23);
  v25 = v36;
  v26 = v37;
  v27 = v41;
  if (!v28)
  {
    goto LABEL_7;
  }

  (*(v36 + 8))(v39, v37);
  v22(v42, v21);
LABEL_8:
  v29 = v56;
  *(v27 + 160) = v55;
  *(v27 + 176) = v29;
  *(v27 + 192) = v57;
  v30 = v58;
  v31 = v52;
  *(v27 + 96) = v51;
  *(v27 + 112) = v31;
  v32 = v54;
  *(v27 + 128) = v53;
  *(v27 + 144) = v32;
  v33 = v48;
  *(v27 + 32) = v47;
  *(v27 + 48) = v33;
  v34 = v50;
  *(v27 + 64) = v49;
  *(v27 + 80) = v34;
  result = v45;
  v35 = v46;
  *v27 = v45;
  *(v27 + 16) = v35;
  *(v27 + 208) = v30;
  *(v27 + 216) = v28;
  return result;
}

uint64_t BatchPurchaseParams.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BatchPurchaseParams.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t BatchPurchaseParams.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v46 = v3;
  v43 = *v3;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v39 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v39 - v15;
  v17 = sub_1E1AF5A6C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v21 = v16;
  v22 = v10;
  v23 = *(v11 + 8);
  v23(v21, v22);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_1E1308058(v9, &qword_1ECEB1F90);
    v24 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v25 = 0x736D657469;
    v26 = v43;
    v25[1] = 0xE500000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69AB690], v24);
    swift_willThrow();
    v23(v45, v22);
    v27 = v46;
    swift_deallocPartialClassInstance();
    v28 = sub_1E1AF39DC();
    (*(*(v28 - 8) + 8))(v44, v28);
    return v27;
  }

  v40 = v23;
  v42 = v22;
  v29 = (*(v18 + 32))(v20, v9, v17);
  MEMORY[0x1EEE9AC00](v29);
  v39[-2] = v44;
  v39[0] = v20;
  v30 = v39[1];
  v31 = sub_1E1AF59FC();
  if (!v30)
  {
    v46[2] = v31;
    sub_1E1AF381C();
    v32 = v41;
    sub_1E1AF368C();
    v40(v13, v42);
    v33 = sub_1E1AF40DC();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_1E1308058(v32, &qword_1ECEB2B28);
      v35 = v44;
    }

    else
    {
      v36 = sub_1E1AF40BC();
      (*(v34 + 8))(v32, v33);
      v35 = v44;
      if (v36)
      {
        v40(v45, v42);
        (*(v18 + 8))(v39[0], v17);
LABEL_9:
        v27 = v46;
        v46[3] = v36;
        v37 = sub_1E1AF39DC();
        (*(*(v37 - 8) + 8))(v35, v37);
        return v27;
      }
    }

    v36 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
    v40(v45, v42);
    (*(v18 + 8))(v39[0], v17);

    goto LABEL_9;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E17F5694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_1E17F5A58();
  return sub_1E1AF464C();
}

uint64_t BatchPurchaseParams.deinit()
{

  return v0;
}

uint64_t BatchPurchaseParams.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E17F58A0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = BatchPurchaseParams.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E17F5988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1E17F59D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E17F5A58()
{
  result = qword_1ECEB9B68;
  if (!qword_1ECEB9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9B68);
  }

  return result;
}

uint64_t sub_1E17F5AD8()
{
  v7 = sub_1E1AF68DC();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1E1361A80();
  sub_1E1AF323C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1E1AF692C();
  qword_1ECEB9B70 = result;
  return result;
}

uint64_t static AVAudioSession.set(category:mode:options:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AF320C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF324C();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB1260 != -1)
  {
    swift_once();
  }

  v22[1] = qword_1ECEB9B70;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_1E17F62D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_76;
  v18 = _Block_copy(aBlock);
  sub_1E1300E34(a4);
  v19 = a1;
  v20 = a2;
  sub_1E1AF322C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);
}

uint64_t sub_1E17F603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v10 = [objc_opt_self() sharedInstance];
  v18[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v18];

  if (a4)
  {
    v11 = v18[0];
  }

  else
  {
    v12 = v18[0];
    v13 = sub_1E1AEFB2C();

    swift_willThrow();
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v18[3] = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(v17 - 1) + 16))(boxed_opaque_existential_0);
    sub_1E1AF38DC();
    sub_1E13E44F8(v18);
    sub_1E1AF54AC();
  }

  return sub_1E17F62E0(a1, a2);
}

uint64_t sub_1E17F62E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF320C();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF324C();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v10 = sub_1E1AF68EC();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1E16A03BC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_6_3;
  v12 = _Block_copy(aBlock);
  sub_1E1300E34(a1);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

uint64_t ProductRatingsAndReviewsMessage.__allocating_init(id:componentType:messageText:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17[-v9 - 8];
  v11 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v12 = (v11 + OBJC_IVAR____TtC11AppStoreKit31ProductRatingsAndReviewsMessage_messageText);
  *v12 = a3;
  v12[1] = a4;
  sub_1E138853C(a1, v17);
  HIBYTE(v16) = a2;
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = sub_1E1A572C0(v17, &v16 + 7, v10);
  sub_1E1308058(a1, &unk_1ECEB5670);
  return v14;
}

uint64_t ProductRatingsAndReviewsMessage.init(id:componentType:messageText:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17[-v10 - 8];
  LOBYTE(a2) = *a2;
  v12 = (v4 + OBJC_IVAR____TtC11AppStoreKit31ProductRatingsAndReviewsMessage_messageText);
  *v12 = a3;
  v12[1] = a4;
  sub_1E138853C(a1, v17);
  HIBYTE(v16) = a2;
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = sub_1E1A572C0(v17, &v16 + 7, v11);
  sub_1E1308058(a1, &unk_1ECEB5670);
  return v14;
}

uint64_t ProductRatingsAndReviewsMessage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v39 - v4;
  v5 = sub_1E1AEFEAC();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v21 = v17;
  v22 = *(v9 + 8);
  v22(v21, v8);
  v43 = v20;
  if (v20)
  {
    v42 = v18;
    sub_1E1AF381C();
    v23 = sub_1E1AF37CC();
    if (v24)
    {
      v46 = v23;
      v47 = v24;
    }

    else
    {
      sub_1E1AEFE9C();
      v28 = sub_1E1AEFE7C();
      v39 = a1;
      v29 = v22;
      v31 = v30;
      (*(v40 + 8))(v7, v41);
      v46 = v28;
      v47 = v31;
      v22 = v29;
      a1 = v39;
    }

    sub_1E1AF6F6C();
    v22(v14, v8);
    sub_1E1AF381C();
    sub_1E1677A34();
    sub_1E1AF369C();
    v22(v11, v8);
    v32 = v49[1];
    type metadata accessor for ProductRatingsAndReviewsMessage();
    v33 = (swift_allocObject() + OBJC_IVAR____TtC11AppStoreKit31ProductRatingsAndReviewsMessage_messageText);
    v34 = v43;
    *v33 = v42;
    v33[1] = v34;
    sub_1E138853C(v48, &v46);
    v49[0] = v32;
    v35 = sub_1E1AF46DC();
    v36 = v44;
    (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
    v25 = sub_1E1A572C0(&v46, v49, v36);
    v37 = sub_1E1AF39DC();
    (*(*(v37 - 8) + 8))(v45, v37);
    v22(a1, v8);
    sub_1E1308058(v48, &unk_1ECEB5670);
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v26 = 0x546567617373656DLL;
    v26[1] = 0xEB00000000747865;
    v26[2] = v42;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    v27 = sub_1E1AF39DC();
    (*(*(v27 - 8) + 8))(v45, v27);
    v22(a1, v8);
  }

  return v25;
}

uint64_t type metadata accessor for ProductRatingsAndReviewsMessage()
{
  result = qword_1ECEB9B78;
  if (!qword_1ECEB9B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductRatingsAndReviewsMessage.messageText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit31ProductRatingsAndReviewsMessage_messageText);

  return v1;
}

uint64_t ProductRatingsAndReviewsMessage.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t ProductRatingsAndReviewsMessage.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

BOOL NSParagraphStyle.isListItem.getter()
{
  [v0 firstLineHeadIndent];
  if (v1 != 0.0)
  {
    return 0;
  }

  [v0 headIndent];
  if (v2 <= 0.0)
  {
    return 0;
  }

  [v0 defaultTabInterval];
  return v3 > 0.0;
}

id _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0()
{
  v0 = sub_1E1AEFF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFF4C();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v4 setAlignment_];
  sub_1E1AEFEFC();
  v5 = sub_1E1AEFF1C();

  v6 = 1;
  if (v5 != 2)
  {
    v6 = -1;
  }

  if (v5 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [v4 setBaseWritingDirection_];
  sub_1E1AEFEFC();
  v8 = sub_1E1AF602C();

  v9 = 1.3;
  if ((v8 & 1) == 0)
  {
    sub_1E1AEFEFC();
    v10 = sub_1E1AF602C();

    if ((v10 & 1) == 0)
    {
      sub_1E1AEFEFC();
      v11 = sub_1E1AF602C();

      if (v11)
      {
        v9 = 1.3;
      }

      else
      {
        v9 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

id _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0()
{
  v0 = sub_1E1AEFF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFF4C();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_1E17F76B0();
  v5 = sub_1E1AF620C();
  [v4 setTabStops_];

  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  sub_1E1AEFEFC();
  v6 = sub_1E1AF602C();

  v7 = 1.3;
  if ((v6 & 1) == 0)
  {
    sub_1E1AEFEFC();
    v8 = sub_1E1AF602C();

    if ((v8 & 1) == 0)
    {
      sub_1E1AEFEFC();
      v9 = sub_1E1AF602C();

      if (v9)
      {
        v7 = 1.3;
      }

      else
      {
        v7 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  sub_1E1AEFEFC();
  v10 = sub_1E1AEFF1C();

  v11 = 1;
  if (v10 != 2)
  {
    v11 = -1;
  }

  if (v10 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  [v4 setBaseWritingDirection_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

id _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0()
{
  v0 = sub_1E1AEFF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFF4C();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_1E17F76B0();
  v5 = sub_1E1AF620C();
  [v4 setTabStops_];

  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  sub_1E1AEFEFC();
  v6 = sub_1E1AEFF1C();

  v7 = 1;
  if (v6 != 2)
  {
    v7 = -1;
  }

  if (v6 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [v4 setBaseWritingDirection_];
  sub_1E1AEFEFC();
  v9 = sub_1E1AF602C();

  v10 = 1.3;
  if ((v9 & 1) == 0)
  {
    sub_1E1AEFEFC();
    v11 = sub_1E1AF602C();

    if ((v11 & 1) == 0)
    {
      sub_1E1AEFEFC();
      v12 = sub_1E1AF602C();

      if (v12)
      {
        v10 = 1.3;
      }

      else
      {
        v10 = 0.0;
      }
    }
  }

  [v4 setLineHeightMultiple_];
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_1E17F76B0()
{
  result = qword_1EE1E2DB0;
  if (!qword_1EE1E2DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E2DB0);
  }

  return result;
}

uint64_t AnnotationViewModel.init(annotation:objectGraph:forceExpanded:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  sub_1E1500704(a1, a3);
  sub_1E1AF436C();
  type metadata accessor for AnnotationViewModel();
  sub_1E1AF421C();
  sub_1E1AF55EC();

  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  result = sub_1E150073C(a1);
  *(a3 + 152) = v6;
  return result;
}

uint64_t type metadata accessor for AnnotationViewModel()
{
  result = qword_1ECEB9B88;
  if (!qword_1ECEB9B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double AnnotationViewModel.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1E17F7830(v1 + 112, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1E17F7830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E17F78A0()
{
  result = v0[3];
  if (result)
  {
    v2 = v0[2];
LABEL_10:

    return v2;
  }

  v3 = v0[4];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_9:
    v2 = 0;
    goto LABEL_10;
  }

  v4 = v0[3];
  v5 = sub_1E1AF71CC();
  result = v4;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v2 = *(MEMORY[0x1E68FFD80](0, v3) + 40);

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(*(v3 + 32) + 40);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}