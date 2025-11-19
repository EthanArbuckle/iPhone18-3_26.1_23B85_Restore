uint64_t AccessibilityParagraph.deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue, &unk_1ECEB1780);
  return v0;
}

uint64_t AccessibilityParagraph.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue, &unk_1ECEB1780);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1718FCC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AccessibilityParagraph.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E171907C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AccessibilityParagraph()
{
  result = qword_1EE1EC988;
  if (!qword_1EE1EC988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1719118()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:displayStyle:facetsPresenter:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a3;
  v64 = a6;
  v61 = a5;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = swift_allocObject();
  LODWORD(v65) = *a4;
  v17 = swift_allocObject();
  swift_weakInit();
  v57 = a2;
  sub_1E134FD1C(a2, v15, &unk_1ECEB4B60);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = v18 + v12;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_1E13E23F8(v15, v20 + v18);
  *(v20 + v19) = v65;
  v21 = v66;
  *(v20 + (v19 & 0xFFFFFFFFFFFFFFF8) + 8) = v66;
  *(v20 + (((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v22 = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = a7;
  sub_1E134FD1C(a2, v67, &unk_1ECEB4B60);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1E171A480;
  *(v24 + 24) = v21;
  v62 = v24;
  *(v16 + qword_1EE1E9D48) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v16 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v26 = qword_1EE2166A0;
  v65 = a7;
  swift_retain_n();
  swift_retain_n();
  v27 = v22;

  *(v16 + v26) = sub_1E159D6F0(v25);
  v28 = (v16 + qword_1EE1E9E00);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v16 + qword_1EE1E9EA0);
  *v29 = 0;
  v29[1] = 0;
  v60 = v29;
  v30 = (v16 + qword_1EE1E9E08);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v16 + qword_1EE1E9DF0);
  *v31 = 0;
  v31[1] = 0;
  v59 = v31;
  v32 = (v16 + qword_1EE1E9E98);
  *v32 = 0;
  v32[1] = 0;
  v58 = v32;
  v33 = (v16 + qword_1EE216698);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  *(v16 + qword_1EE2166D0) = 0;
  *(v16 + qword_1EE1E9D50) = 0;
  *(v16 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v16 + qword_1EE2166C8) = 0;
  v34 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3140);
  swift_allocObject();
  *(v16 + v34) = sub_1E1AF5BEC();
  v35 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v16 + v35) = sub_1E1AF5BEC();
  v36 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3158);
  swift_allocObject();
  *(v16 + v36) = sub_1E1AF5BEC();
  v37 = qword_1EE2166B0;
  swift_allocObject();
  *(v16 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v16 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v40 = sub_1E1AF5BEC();

  v41 = v23;

  v42 = v66;

  sub_1E1308058(v57, &unk_1ECEB4B60);
  *(v16 + v39) = v40;
  v43 = qword_1EE1E9DD8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v45 = *(*(v44 - 8) + 56);
  v45(v16 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v63;
  v45(v16 + qword_1EE1E9DE0, 1, 1, v46);
  *(v16 + 16) = v42;
  sub_1E13E23F8(v67, v16 + qword_1EE216678);
  *v28 = sub_1E171A228;
  v28[1] = v27;
  *v30 = 0;
  v30[1] = 0;
  if (v47)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    v49 = sub_1E1445E6C;
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  v50 = v59;
  v51 = v60;
  *v60 = v49;
  v51[1] = v48;
  *v50 = sub_1E171A31C;
  v50[1] = v41;
  v52 = v58;
  v53 = v62;
  *v58 = sub_1E155BA28;
  v52[1] = v53;
  v54 = v65;
  *(v16 + qword_1EE1E9E90) = v64;
  *(v16 + qword_1EE216690) = v54;
  return v16;
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:displayStyle:facetsPresenter:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v66 = a3;
  v67 = a6;
  v65 = a5;
  v69 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  LODWORD(v68) = *a4;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = a2;
  v61 = a2;
  sub_1E134FD1C(a2, v17, &unk_1ECEB4B60);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = v20 + v14;
  v22 = (v20 + v14) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_1E13E23F8(v17, v23 + v20);
  *(v23 + v21) = v68;
  v24 = v69;
  *(v23 + v22 + 8) = v69;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a7;
  sub_1E134FD1C(v19, v70, &unk_1ECEB4B60);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1E171A858;
  *(v26 + 24) = v24;
  v64 = v26;
  *(v8 + qword_1EE1E9D48) = 0;
  v27 = MEMORY[0x1E69E7CC0];
  *(v8 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v28 = qword_1EE2166A0;
  v68 = a7;
  swift_retain_n();
  swift_retain_n();

  *(v8 + v28) = sub_1E159D6F0(v27);
  v29 = (v8 + qword_1EE1E9E00);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v8 + qword_1EE1E9EA0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v8 + qword_1EE1E9E08);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v8 + qword_1EE1E9DF0);
  *v32 = 0;
  v32[1] = 0;
  v62 = v32;
  v33 = (v8 + qword_1EE1E9E98);
  *v33 = 0;
  v33[1] = 0;
  v63 = v33;
  v34 = (v8 + qword_1EE216698);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v8 + qword_1EE2166D0) = 0;
  *(v8 + qword_1EE1E9D50) = 0;
  *(v8 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v8 + qword_1EE2166C8) = 0;
  v35 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3140);
  swift_allocObject();
  *(v8 + v35) = sub_1E1AF5BEC();
  v36 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v8 + v36) = sub_1E1AF5BEC();
  v37 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3158);
  swift_allocObject();
  *(v8 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE2166B0;
  swift_allocObject();
  *(v8 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v8 + v39) = sub_1E1AF5BEC();
  v40 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v41 = sub_1E1AF5BEC();

  v65 = v25;

  v42 = v69;

  sub_1E1308058(v61, &unk_1ECEB4B60);
  *(v8 + v40) = v41;
  v43 = qword_1EE1E9DD8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v45 = *(*(v44 - 8) + 56);
  v45(v8 + v43, 1, 1, v44);
  v46 = v44;
  v47 = v66;
  v45(v8 + qword_1EE1E9DE0, 1, 1, v46);
  *(v8 + 16) = v42;
  sub_1E13E23F8(v70, v8 + qword_1EE216678);
  v48 = *v29;
  *v29 = sub_1E171A854;
  v29[1] = v23;
  sub_1E1300EA8(v48);
  v49 = *v31;
  *v31 = 0;
  v31[1] = 0;
  sub_1E1300EA8(v49);
  if (v47)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    v51 = sub_1E155BD80;
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  v52 = *v30;
  *v30 = v51;
  v30[1] = v50;
  sub_1E1300EA8(v52);
  v53 = v62;
  v54 = *v62;
  v55 = v65;
  *v62 = sub_1E171A884;
  v53[1] = v55;
  sub_1E1300EA8(v54);
  v57 = v63;
  v56 = v64;
  v58 = *v63;
  *v63 = sub_1E171A85C;
  v57[1] = v56;
  sub_1E1300EA8(v58);
  v59 = v68;
  *(v8 + qword_1EE1E9E90) = v67;
  *(v8 + qword_1EE216690) = v59;
  return v8;
}

uint64_t sub_1E1719E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  sub_1E134FD1C(a3, v11, &unk_1ECEB4B60);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1E1308058(v11, &unk_1ECEB4B60);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB84E0);
    sub_1E171A7F0();
    swift_allocError();
    *v16 = 0;
    return sub_1E1AF581C();
  }

  v25 = a6;
  (*(v13 + 32))(v15, v11, v12);
  v18 = sub_1E1AEFBDC();
  v20 = v19;
  if (a4)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1E1AF74AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3060);
  sub_1E1AF690C();
  v22 = _s11AppStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v26);

  *&v26 = 0xD00000000000001BLL;
  *(&v26 + 1) = 0x80000001E1B5BD00;
  v27 = v18;
  v28 = v20;
  v29 = v21 & 1;
  v30 = v22;
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v23 = sub_1E1AF4BFC();

  v24 = sub_1E1368B18(&v26, v23, "AppStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 63, 2);

  sub_1E13BFEF0(&v26);

  (*(v13 + 8))(v15, v12);
  return v24;
}

uint64_t sub_1E171A22C(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v2 = sub_1E1AF4C0C();

  v3 = sub_1E1367B40(a1, v2, "AppStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 63, 2);

  return v3;
}

uint64_t sub_1E171A324(uint64_t a1, uint64_t a2)
{
  sub_1E134FD1C(a1, &v6, &qword_1ECEB2DF0);
  if (v7[1])
  {
    sub_1E1301CF0(&v6, v8);
    sub_1E137A5C4(v8, v7);
    *&v6 = 0xD00000000000001FLL;
    *(&v6 + 1) = 0x80000001E1B5BD60;
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v3 = sub_1E1369384(&v6, a2, "AppStoreKit/ArcadeSeeAllGamesDiffablePageContentPresenter.swift", 63, 2);

    sub_1E13BFFD4(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_1E1308058(&v6, &qword_1ECEB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB84E0);
    sub_1E171A7F0();
    swift_allocError();
    *v5 = 2;
    return sub_1E1AF581C();
  }
}

uint64_t ArcadeSeeAllGamesDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E171A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E171A6BC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1719E5C(a1, v6, v1 + v4, v7, v8, v9);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageContentPresenter()
{
  result = qword_1ECEB84D0;
  if (!qword_1ECEB84D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E171A7F0()
{
  result = qword_1ECEB84E8;
  if (!qword_1ECEB84E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB84E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB84E8);
  }

  return result;
}

double PreorderDisclaimerLayout.measurements(fitting:in:)(double a1)
{
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_1E1AF11DC();
  return a1;
}

uint64_t PreorderDisclaimerLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinX(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  sub_1E1AF6B1C();
  sub_1E1AF116C();

  return sub_1E1AF106C();
}

uint64_t sub_1E171AA48(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinX(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  sub_1E1AF6B1C();
  sub_1E1AF116C();

  return sub_1E1AF106C();
}

double sub_1E171AB80(double a1)
{
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_1E1AF11DC();
  return a1;
}

uint64_t ArcadeSubscribePresenter.__allocating_init(objectGraph:subscriptionManager:url:sidepack:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E171DA10(a1, a2, a3, a4);

  return v8;
}

uint64_t ArcadeSubscribePresenter.init(objectGraph:subscriptionManager:url:sidepack:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E171DA10(a1, a2, a3, a4);

  return v5;
}

void sub_1E171ACD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v1;
    v4 = v2;
    sub_1E1361A40(v1, v2);
    sub_1E171AD64(&v3);

    sub_1E1361A60(v3, v4);
  }
}

uint64_t sub_1E171AD64(uint64_t a1)
{
  v3 = sub_1E1AF320C();
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF326C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  v18 = *(a1 + 8) >> 6;
  if (v18 <= 1)
  {
    if (v18)
    {
      v19 = v1 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v21 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 40))(1, ObjectType, v21);
      return swift_unknownObjectRelease();
    }

LABEL_9:
    v29 = v1 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v30 = *(v29 + 8);
    v31 = swift_getObjectType();
    (*(v30 + 40))(0, v31, v30);
    return swift_unknownObjectRelease();
  }

  if (v18 != 2)
  {
    goto LABEL_9;
  }

  v23 = OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_model;
  v24 = *(v1 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_model);
  if (v24 && *(v24 + 88))
  {
    v25 = v15;
    v57 = v15;
    sub_1E13006E4(0, &qword_1EE1E3430);
    v54 = v1;
    v55 = sub_1E1AF68EC();
    sub_1E1AF325C();
    sub_1E1AF32DC();
    v56 = *(v11 + 8);
    v56(v13, v25);
    v26 = swift_allocObject();
    swift_weakInit();
    v63 = sub_1E171DFD4;
    v64 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1E1302D64;
    v62 = &block_descriptor_21_0;
    v27 = _Block_copy(&aBlock);

    sub_1E1AF322C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1E1302ADC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    v28 = v55;
    MEMORY[0x1E68FF5E0](v17, v9, v5, v27);
    _Block_release(v27);

    (*(v58 + 8))(v5, v3);
    (*(v7 + 8))(v9, v6);
    return (v56)(v17, v57);
  }

  v32 = v1 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v32 + 8);
    v34 = swift_getObjectType();
    (*(v33 + 40))(0, v34, v33);
    swift_unknownObjectRelease();
  }

  v35 = *(v1 + v23);
  if (v35)
  {
    v36 = *(v35 + 96);
    v37 = *(v35 + 104);
    if (v37)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = *(v32 + 8);
        Strong = swift_unknownObjectWeakLoadStrong();
        v40 = Strong;
        if (Strong)
        {
          Strong = swift_getObjectType();
        }

        else
        {
          v60 = 0;
          v61 = 0;
        }

        aBlock = v40;
        v62 = Strong;
        v43 = swift_getObjectType();
        v44 = *(v38 + 8);
        v45 = *(v44 + 8);

        v46 = swift_retain_n();
        v45(v46, &aBlock, v43, v44);

        swift_unknownObjectRelease();
        sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
        if (v36)
        {
LABEL_27:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v47 = *(v32 + 8);
            v48 = swift_getObjectType();
            v49 = *(v47 + 48);

            v49(v48, v47);
            swift_unknownObjectRelease();
          }

          else
          {
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v50 = *(v32 + 8);
            v51 = swift_unknownObjectWeakLoadStrong();
            v52 = v51;
            if (v51)
            {
              v51 = swift_getObjectType();
            }

            else
            {
              v60 = 0;
              v61 = 0;
            }

            aBlock = v52;
            v62 = v51;
            v53 = swift_getObjectType();
            (*(*(v50 + 8) + 8))(v36, &aBlock, v53);

            swift_unknownObjectRelease();
            sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
          }

          else
          {
          }

          if (!v37)
          {
          }
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_27;
        }
      }
    }

    if (v36)
    {
      goto LABEL_27;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = *(v32 + 8);
    v42 = swift_getObjectType();
    (*(v41 + 48))(v42, v41);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E171B484()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_url, &unk_1ECEB4B60);

  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_subscriptionManager);
}

uint64_t ArcadeSubscribePresenter.deinit()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_subscriptionManager);
  v3 = *&v2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];
  v4 = v2;
  [v3 lock];
  swift_beginAccess();
  sub_1E13878AC(0, v0);
  swift_endAccess();
  [v3 unlock];

  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver_];

  v6 = BasePresenter.deinit();
  sub_1E1337DEC(v6 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view);

  sub_1E1308058(v6 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_url, &unk_1ECEB4B60);

  return v6;
}

uint64_t ArcadeSubscribePresenter.__deallocating_deinit()
{
  ArcadeSubscribePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t ArcadeSubscribePresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ArcadeSubscribePresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
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

Swift::Void __swiftcall ArcadeSubscribePresenter.didLoad()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1EE1EC290;

    if (v2 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_1EE1EC298;
    v4 = v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v4 = v3;
    *(v4 + 8) = 0;
    v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v5 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  ArcadeSubscribePresenter.update(ignoringCache:)(0);
}

uint64_t sub_1E171BA04(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v1 + 32) != v2)
  {
    if (*(v1 + 32))
    {
      result = swift_beginAccess();
      v8 = *(v1 + 16);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        result = swift_beginAccess();
        v10 = *(v9 + 48);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v9 + 48) = v12;
        v13 = v12 == 0;
        swift_beginAccess();
        *(v9 + 40) = v13;
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {

          sub_1E149DEE8();
        }
      }
    }

    else
    {
      result = swift_beginAccess();
      if (*(v1 + 16))
      {

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v15 = v14;
        (*(v4 + 8))(v6, v3);
        PendingPageRender.initialRequestEndTime.setter(v15, 0);

        if (*(v1 + 16))
        {

          sub_1E1729254();
        }
      }
    }
  }

  return result;
}

uint64_t ArcadeSubscribePresenter.isUpdating.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = v1 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v5 + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 8);
      v8 = swift_getObjectType();
      (*(*(v7 + 24) + 16))(v8);
      goto LABEL_6;
    }
  }

  return sub_1E171BA04(v3);
}

void (*ArcadeSubscribePresenter.isUpdating.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  swift_beginAccess();
  *(v4 + 128) = *(v1 + 32);
  return sub_1E171BDC8;
}

void sub_1E171BDC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v5 = *(v3 + 32);
  *(v3 + 32) = v4;
  v6 = v3 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  if (a2)
  {
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24) + 8);
    goto LABEL_9;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v10 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(v10 + 24) + 16);
LABEL_9:
  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_10:
  sub_1E171BA04(v5);

  free(v2);
}

Swift::Void __swiftcall ArcadeSubscribePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v2 = v1;
  LODWORD(v43) = ignoringCache;
  v41 = type metadata accessor for ArcadeSubscribePageIntent();
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF504C();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1E1AEFCCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_url;
  swift_beginAccess();
  sub_1E1307FE8(v2 + v17, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E1308058(v10, &unk_1ECEB4B60);
LABEL_6:
    swift_beginAccess();
    v18 = *(v2 + 32);
    *(v2 + 32) = 0;
    v19 = v2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v20 + 24) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_1E171BA04(v18);
    return;
  }

  v39 = *(v12 + 32);
  v39(v16, v10, v11);
  if ((v43 & 1) == 0 && *(v2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_model))
  {
    (*(v12 + 8))(v16, v11);
    goto LABEL_6;
  }

  v36 = v12 + 32;
  v37 = v16;
  swift_beginAccess();
  v22 = *(v2 + 32);
  *(v2 + 32) = 1;
  v23 = v2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    v25 = swift_getObjectType();
    (*(*(v24 + 24) + 8))(v25);
    swift_unknownObjectRelease();
  }

  v38 = v4;
  sub_1E171BA04(v22);
  swift_beginAccess();
  if (*(v2 + 24))
  {
    *v7 = 1;
    v26 = v40;
    (*(v40 + 104))(v7, *MEMORY[0x1E69AB450], v5);

    sub_1E1AF509C();

    (*(v26 + 8))(v7, v5);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v43 = v44[0];
  v27 = *(v41 + 20);
  v40 = *(v12 + 16);
  v28 = v38;
  v29 = v37;
  (v40)(v38 + v27, v37, v11);
  *v28 = 0xD000000000000019;
  v28[1] = 0x80000001E1B72930;
  sub_1E1AF4C1C();

  sub_1E1AF422C();

  sub_1E1AF4BEC();

  v30 = sub_1E1AF4BFC();
  v41 = v30;

  sub_1E13685E8(v28, v30, "AppStoreKit/ArcadeSubscribePresenter.swift", 42, 2);
  v31 = v42;
  (v40)(v42, v29, v11);
  v32 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  v39((v33 + v32), v31, v11);
  v34 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_retain_n();
  v35 = sub_1E1AF68EC();
  v44[3] = v34;
  v44[4] = MEMORY[0x1E69AB720];
  v44[0] = v35;
  sub_1E1AF57FC();

  sub_1E171DF6C(v28, type metadata accessor for ArcadeSubscribePageIntent);
  (*(v12 + 8))(v29, v11);
  __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1E171C594(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1AEFE6C();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_sidepack);
  v33 = v10;

  if (v11)
  {
    v10 = sub_1E191073C(v10);
  }

  *(a2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_model) = v10;
  swift_retain_n();

  sub_1E171D8BC(v10, 0, a2);

  swift_beginAccess();
  v12 = *(a2 + 32);
  *(a2 + 32) = 0;
  v13 = a2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = v7;
    v15 = v5;
    v16 = v4;
    v17 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 24);
    v4 = v16;
    v5 = v15;
    v7 = v14;
    (*(v19 + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E171BA04(v12);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v13 + 8);
    v21 = swift_getObjectType();
    (*(v20 + 32))(v10, v21, v20);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v24 = v23;
    (*(v31 + 8))(v9, v32);
    v25 = v22 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v25 = v24;
    *(v25 + 8) = 0;
    v26 = *(v22 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
    swift_beginAccess();
    *(v26 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  swift_beginAccess();
  if (!*(a2 + 24))
  {
  }

  v27 = OBJC_IVAR____TtC11AppStoreKit19ArcadeSubscribePage_pageMetrics;
  v28 = sub_1E1AF3C3C();
  (*(*(v28 - 8) + 16))(v7, v33 + v27, v28);
  (*(v5 + 104))(v7, *MEMORY[0x1E69AB440], v4);

  sub_1E1AF508C();

  return (*(v5 + 8))(v7, v4);
}

void sub_1E171C9FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF503C();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PresenterError();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a2 + 32);
  *(a2 + 32) = 0;
  v13 = a2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v14 + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E171BA04(v12);
  v16 = *(v9 + 20);
  v17 = sub_1E1AEFCCC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v11[v16], a3, v17);
  (*(v18 + 56))(&v11[v16], 0, 1, v17);
  *v11 = a1;
  swift_beginAccess();
  v19 = *(a2 + 16);
  if (v19)
  {
    sub_1E1302ADC(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v37 = swift_allocError();
    sub_1E13614D0(v11, v20);
    v21 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v22 = *(v19 + v21);
    v23 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + v21) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1E172D0E4(0, v22[2] + 1, 1, v22);
      *(v19 + v21) = v22;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_1E172D0E4((v25 > 1), v26 + 1, 1, v22);
    }

    v22[2] = v26 + 1;
    v22[v26 + 4] = v37;
    *(v19 + v21) = v22;
    swift_endAccess();
  }

  else
  {
    v27 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    sub_1E1302ADC(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v28 = swift_allocError();
    sub_1E13614D0(v11, v29);
    *v8 = v28;
    v31 = v38;
    v30 = v39;
    (*(v38 + 104))(v8, *MEMORY[0x1E69AB430], v39);

    sub_1E1AF508C();

    (*(v31 + 8))(v8, v30);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v13 + 8);
    v33 = swift_getObjectType();
    sub_1E1302ADC(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v34 = swift_allocError();
    sub_1E13614D0(v11, v35);
    (*(*(v32 + 24) + 24))(v34, v33);
    swift_unknownObjectRelease();
    sub_1E171DF6C(v11, type metadata accessor for PresenterError);
  }

  else
  {
    sub_1E171DF6C(v11, type metadata accessor for PresenterError);
  }
}

uint64_t sub_1E171CEE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);

      ObjectType = swift_getObjectType();
      (*(v2 + 40))(0, ObjectType, v2);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);

      v7 = swift_getObjectType();
      (*(v6 + 48))(v7, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1E171D050()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_model);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
      v13 = *(v2 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
      v14 = v3;

      AdamId.numberValue.getter();
      v5 = v4;

      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1E1B06D70;
        *(v6 + 32) = v5;
        sub_1E13006E4(0, &qword_1EE1E31F0);
        v7 = v5;
        v8 = sub_1E1AF620C();

        v9 = [objc_opt_self() queryForStoreItemIDs_];

        v10 = swift_allocObject();
        swift_weakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v2;
        v17 = sub_1E171DF5C;
        v18 = v11;
        v13 = MEMORY[0x1E69E9820];
        v14 = 1107296256;
        v15 = sub_1E16C3118;
        v16 = &block_descriptor_59;
        v12 = _Block_copy(&v13);

        [v9 executeQueryWithResultHandler_];
        _Block_release(v12);
      }

      else
      {
      }
    }
  }
}

void sub_1E171D268(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF324C();
  v12 = *(v11 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 >> 62)
    {
      v22 = v13;
      v23 = sub_1E1AF71CC();
      v13 = v22;
      if (!v23)
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v24 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E68FFD80](0, a1, v14);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v17 = *(a1 + 32);
    }

    v25 = v17;
    if ([v17 isArcadeOpenable])
    {
      sub_1E13006E4(0, &qword_1EE1E3430);
      v18 = sub_1E1AF68EC();
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = a4;
      aBlock[4] = sub_1E171DF64;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1302D64;
      aBlock[3] = &block_descriptor_16_1;
      v20 = _Block_copy(aBlock);

      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E1302ADC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      sub_1E1AF6EEC();
      MEMORY[0x1E68FF640](0, v16, v10, v20);
      _Block_release(v20);

      (*(v8 + 8))(v10, v7);
      (*(v12 + 8))(v16, v24);
    }

    else
    {
      v21 = v25;
    }
  }
}

uint64_t sub_1E171D5F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);

      ObjectType = swift_getObjectType();
      (*(v5 + 40))(0, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  if (v7)
  {
    v8 = v7 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = *(v8 + 8);

    if (v9)
    {
      swift_beginAccess();
      v11 = swift_weakLoadStrong();
      v12 = v11;
      if (v11)
      {
        v11 = type metadata accessor for ArcadeSubscribePresenter();
      }

      else
      {
        v18[1] = 0;
        v18[2] = 0;
      }

      v18[0] = v12;
      v18[3] = v11;
      v13 = swift_getObjectType();
      (*(*(v10 + 8) + 8))(a2, v18, v13);
      swift_unknownObjectRelease();
      sub_1E1308058(v18, &qword_1ECEB2DF0);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 8);

      v17 = swift_getObjectType();
      (*(v16 + 48))(v17, v16);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E171D8BC(uint64_t a1, char a2, uint64_t a3)
{
  v8[3] = type metadata accessor for ArcadeSubscribePage();
  v8[4] = &protocol witness table for ArcadeSubscribePage;
  v8[5] = sub_1E1302ADC(&qword_1ECEB8520, type metadata accessor for ArcadeSubscribePage);
  v8[0] = a1;
  sub_1E1383E78(v8, v7);
  swift_beginAccess();

  sub_1E137F8F8(v7, a3 + 40, &qword_1ECEB2588);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(v7, &qword_1ECEB2588);
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      sub_1E1383E78(v8, v7);

      PendingPageRender.use(pageRenderEventFrom:)(v7);

      sub_1E1308058(v7, &qword_1ECEB2588);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1E171DA10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_model) = 0;
  v8 = OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_url;
  v9 = sub_1E1AEFCCC();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_sidepack;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_sidepack) = 0;
  swift_beginAccess();
  sub_1E137F8F8(a3, v4 + v8, &unk_1ECEB4B60);
  swift_endAccess();
  *(v4 + v10) = a4;

  *(v4 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_subscriptionManager) = a2;
  v11 = a2;

  v13 = sub_1E138C578(v12, 0, 0, 0);

  if (a4)
  {
    v19[3] = type metadata accessor for ArcadeSubscribePage();
    v19[4] = &protocol witness table for ArcadeSubscribePage;
    v19[5] = sub_1E1302ADC(&qword_1ECEB8520, type metadata accessor for ArcadeSubscribePage);
    v19[0] = a4;
    sub_1E1383E78(v19, v18);
    swift_beginAccess();
    swift_retain_n();

    sub_1E137F8F8(v18, v13 + 40, &qword_1ECEB2588);
    swift_endAccess();
    sub_1E138B568();

    sub_1E1308058(v18, &qword_1ECEB2588);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = *&v11[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];

  [v15 lock];
  sub_1E15F6384(v13, sub_1E171DFCC, v14, v11);
  [v15 unlock];

  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v13 selector:sel_subscriptionBagDidChange name:*MEMORY[0x1E698B438] object:0];

  sub_1E1308058(a3, &unk_1ECEB4B60);
  return v13;
}

void sub_1E171DD78(void *a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1E171C9FC(a1, v4, v5);
}

uint64_t type metadata accessor for ArcadeSubscribePresenter()
{
  result = qword_1ECEB8510;
  if (!qword_1ECEB8510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E171DE7C()
{
  sub_1E130072C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E171DF6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TopChartsPage.__allocating_init(genreId:ageBandId:segments:initialSegmentIndex:title:categoriesButtonTitle:categories:pageRefreshPolicy:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int (*a8)(void, void, void), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a8;
  v71 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v69 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v68 - v25;
  v76 = sub_1E1AF3C3C();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v75 = &v68 - v28;
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId);
  *v30 = a1;
  v30[1] = a2;
  v31 = (v29 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId);
  *v31 = a3;
  v31[1] = a4;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_segments) = a5;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_initialSegmentIndex) = a6;
  v32 = (v29 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title);
  v33 = v70;
  v34 = v71;
  *v32 = a7;
  v32[1] = v33;
  v35 = (v29 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle);
  *v35 = a9;
  v35[1] = a10;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categories) = v34;
  if (a5 >> 62)
  {
    v36 = sub_1E1AF71CC();
  }

  else
  {
    v36 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = &OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v38 = &OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent;
  v39 = v75;
  v40 = v77;
  if (!v36)
  {
    sub_1E1AF3C2C();
    v46 = 0;
    v43 = *(v74 + 16);
    v47 = v76;
    goto LABEL_13;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {

    v41 = MEMORY[0x1E68FFD80](0, a5);
  }

  else
  {
    if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v41 = *(a5 + 32);
  }

  v42 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v43 = *(v74 + 16);
  v43(v39, v41 + v42, v76);

  if ((a5 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x1E68FFD80](0, a5);

    v46 = *(v45 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();
    swift_unknownObjectRelease();
LABEL_12:
    v47 = v76;
    v40 = v77;
LABEL_13:
    v37 = a13;
    v43(v40, v39, v47);
    v49 = v73;
    sub_1E142CF54(a13, v73);
    *(v29 + 16) = a12;
    v43((v29 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v40, v47);
    *(v29 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v46;
    v50 = v46;
    v51 = v72;
    sub_1E142CF54(v49, v72);
    v38 = sub_1E1AF39DC();
    v52 = *(v38 - 1);
    v70 = *(v52 + 48);
    v71 = v52;
    if (v70(v51, 1, v38) == 1)
    {

      sub_1E142CFC4(a13);
      sub_1E142CFC4(v49);
      v53 = *(v74 + 8);
      v53(v40, v47);
      v53(v75, v47);
      v54 = v51;
      goto LABEL_21;
    }

    v55 = qword_1EE1E3BC8;

    v68 = v50;
    if (v55 == -1)
    {
LABEL_16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v56, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v57 = v72;
      sub_1E1AF39EC();
      v58 = v78;
      v59 = v73;
      if (v78)
      {
      }

      v60 = *(v71 + 8);
      v60(v57, v38);
      v61 = v76;
      if (!v58)
      {

        sub_1E142CFC4(v37);
        sub_1E142CFC4(v59);
        v65 = *(v74 + 8);
        v65(v77, v61);
        v65(v75, v61);
        return v29;
      }

      v62 = v69;
      sub_1E142CF54(v59, v69);
      if (v70(v62, 1, v38) != 1)
      {
        sub_1E15F0974();

        sub_1E142CFC4(v37);
        sub_1E142CFC4(v59);
        v66 = v62;
        v67 = *(v74 + 8);
        v67(v77, v61);
        v67(v75, v61);
        v60(v66, v38);
        return v29;
      }

      sub_1E142CFC4(v37);
      sub_1E142CFC4(v59);
      v63 = v62;
      v64 = *(v74 + 8);
      v64(v77, v61);
      v64(v75, v61);
      v54 = v63;
LABEL_21:
      sub_1E142CFC4(v54);
      return v29;
    }

LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(a5 + 32);

    v46 = *(v48 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t TopChartsPage.init(genreId:ageBandId:segments:initialSegmentIndex:title:categoriesButtonTitle:categories:pageRefreshPolicy:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a8;
  v75 = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v74 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v72 - v26;
  v27 = sub_1E1AF3C3C();
  v80 = *(v27 - 8);
  v81 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v72 - v30;
  v32 = (v13 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId);
  *v32 = a1;
  v32[1] = a2;
  v33 = (v13 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId);
  *v33 = a3;
  v33[1] = a4;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_segments) = a5;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_initialSegmentIndex) = a6;
  v34 = (v13 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title);
  v35 = v79;
  *v34 = a7;
  v34[1] = v35;
  v36 = (v13 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle);
  *v36 = a9;
  v36[1] = a10;
  v79 = v13;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categories) = v75;
  v82 = &v72 - v30;
  if (a5 >> 62)
  {
    v37 = sub_1E1AF71CC();
    v31 = v82;
  }

  else
  {
    v37 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = &OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v39 = v78;
  if (!v37)
  {
    v46 = v31;
    sub_1E1AF3C2C();
    v45 = 0;
    v47 = v81;
    v42 = *(v80 + 16);
    goto LABEL_13;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {

    v40 = MEMORY[0x1E68FFD80](0, a5);
  }

  else
  {
    if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v40 = *(a5 + 32);
  }

  v41 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v42 = *(v80 + 16);
  v42(v82, v40 + v41, v81);

  if ((a5 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x1E68FFD80](0, a5);

    v45 = *(v44 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();
    swift_unknownObjectRelease();
LABEL_12:
    v47 = v81;
    v46 = v82;
LABEL_13:
    v42(v39, v46, v47);
    v49 = v77;
    sub_1E142CF54(a13, v77);
    v50 = v79;
    *(v79 + 16) = a12;
    v42((v50 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v39, v47);
    *(v50 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v45;
    v51 = v76;
    sub_1E142CF54(v49, v76);
    v38 = sub_1E1AF39DC();
    v75 = *(v38 - 1);
    v73 = *(v75 + 48);
    if (v73(v51, 1, v38) == 1)
    {
      v52 = v47;

      sub_1E142CFC4(a13);
      sub_1E142CFC4(v49);
      v53 = *(v80 + 8);
      v53(v39, v52);
      v53(v82, v52);
      v54 = v51;
      goto LABEL_21;
    }

    a3 = a13;
    v55 = qword_1EE1E3BC8;

    v72 = v45;
    if (v55 == -1)
    {
LABEL_16:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v56, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v57 = v76;
      sub_1E1AF39EC();
      v58 = v83;
      v59 = v77;
      v60 = v78;
      v61 = v75;
      if (v83)
      {
      }

      v62 = *(v61 + 8);
      v62(v57, v38);
      if (!v58)
      {

        sub_1E142CFC4(a3);
        sub_1E142CFC4(v59);
        v67 = v81;
        v68 = *(v80 + 8);
        v68(v60, v81);
        v68(v82, v67);
        return v79;
      }

      v63 = v74;
      sub_1E142CF54(v59, v74);
      if (v73(v63, 1, v38) != 1)
      {
        sub_1E15F0974();

        sub_1E142CFC4(a3);
        sub_1E142CFC4(v59);
        v69 = *(v80 + 8);
        v70 = v63;
        v71 = v81;
        v69(v60, v81);
        v69(v82, v71);
        v62(v70, v38);
        return v79;
      }

      sub_1E142CFC4(a3);
      sub_1E142CFC4(v59);
      v64 = *(v80 + 8);
      v65 = v63;
      v66 = v81;
      v64(v60, v81);
      v64(v82, v66);
      v54 = v65;
LABEL_21:
      sub_1E142CFC4(v54);
      return v79;
    }

LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(a5 + 32);

    v45 = *(v48 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    swift_retain_n();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t TopChartsPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v142 = sub_1E1AF3C3C();
  v138 = *(v142 - 8);
  v3 = MEMORY[0x1EEE9AC00](v142);
  v137 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v141 = v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v124 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v125 = v116 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v134 = v116 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v143 = v116 - v13;
  v14 = sub_1E1AF39DC();
  v146 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v130 = v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v144 = v116 - v17;
  v18 = sub_1E1AF380C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v128 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v127 = v116 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v126 = v116 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v139 = v116 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v116 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v116 - v31;
  v33 = a1;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v36 = v35;
  v39 = *(v19 + 8);
  v38 = v19 + 8;
  v37 = v39;
  v39(v32, v18);
  v129 = v36;
  if (!v36)
  {
    v81 = sub_1E1AF5A7C();
    sub_1E171FC18(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v82 = 0x644965726E6567;
    v83 = v135;
    v82[1] = 0xE700000000000000;
    v82[2] = v83;
    (*(*(v81 - 8) + 104))(v82, *MEMORY[0x1E69AB690], v81);
    swift_willThrow();
    (*(v146 + 8))(v145, v14);
    v37(v33, v18);
    return v139;
  }

  v123 = v34;
  v131 = v37;
  v132 = v38;
  v136 = v18;
  v133 = v33;
  v140 = v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
  v41 = swift_allocObject();
  *(v41 + 16) = MEMORY[0x1E69E7CC0];
  v147 = v41;
  if (qword_1EE1E3BC8 != -1)
  {
    swift_once();
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
  v43 = __swift_project_value_buffer(v42, qword_1EE1E3BD0);
  v44 = v144;
  v116[1] = v43;
  v116[2] = v40;
  sub_1E1AF395C();

  sub_1E1AF381C();
  v122 = sub_1E1AF37CC();
  v121 = v45;
  v46 = v30;
  v47 = v136;
  v48 = v131;
  v131(v46, v136);
  sub_1E1AF381C();
  v119 = *(v146 + 16);
  v49 = v130;
  v119(v130, v44, v140);
  type metadata accessor for TopChartSegment();
  sub_1E171FC18(&qword_1ECEB8528, type metadata accessor for TopChartSegment);
  v50 = v49;
  v117 = sub_1E1AF630C();
  v51 = v126;
  sub_1E1AF381C();
  v52 = sub_1E1AF36EC();
  LOBYTE(v49) = v53;
  v48(v51, v47);
  if (v49)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v55 = v127;
  sub_1E1AF381C();
  v126 = sub_1E1AF37CC();
  v120 = v56;
  v48(v55, v47);
  v57 = v128;
  sub_1E1AF381C();
  v127 = sub_1E1AF37CC();
  v118 = v58;
  v48(v57, v47);
  v59 = v117;
  sub_1E1AF381C();
  v60 = v140;
  v61 = v119;
  v119(v50, v144, v140);
  type metadata accessor for TopChartCategory();
  sub_1E171FC18(&qword_1ECEB8530, type metadata accessor for TopChartCategory);
  v62 = sub_1E1AF630C();
  v63 = v143;
  v61(v143, v145, v60);
  v64 = v60;
  (*(v146 + 56))(v63, 0, 1, v60);
  v65 = swift_allocObject();
  v66 = (v65 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId);
  v67 = v129;
  *v66 = v123;
  v66[1] = v67;
  v68 = (v65 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId);
  v69 = v121;
  *v68 = v122;
  v68[1] = v69;
  *(v65 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_segments) = v59;
  *(v65 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_initialSegmentIndex) = v54;
  v70 = (v65 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title);
  v71 = v120;
  *v70 = v126;
  v70[1] = v71;
  v72 = (v65 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle);
  v73 = v118;
  *v72 = v127;
  v72[1] = v73;
  v139 = v65;
  *(v65 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categories) = v62;
  if (v59 >> 62)
  {
    result = sub_1E1AF71CC();
  }

  else
  {
    result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v142;
  if (!result)
  {
    v84 = v141;
    sub_1E1AF3C2C();
    v80 = 0;
    v78 = *(v138 + 16);
    goto LABEL_19;
  }

  if ((v59 & 0xC000000000000001) != 0)
  {

    v76 = MEMORY[0x1E68FFD80](0, v59);
    goto LABEL_13;
  }

  if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v76 = *(v59 + 32);

LABEL_13:
    v77 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v78 = *(v138 + 16);
    v78(v141, v76 + v77, v142);

    if ((v59 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x1E68FFD80](0, v59);

      v80 = *(v79 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = *(v59 + 32);

      v80 = *(v85 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
      swift_retain_n();
    }

    v64 = v140;
    v84 = v141;
    v75 = v142;
LABEL_19:
    v86 = v137;
    v78(v137, v84, v75);
    v87 = v134;
    sub_1E142CF54(v143, v134);
    v88 = v139;
    *(v139 + 2) = 0;
    v78(&v88[OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics], v86, v75);
    *&v88[OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent] = v80;
    v89 = v125;
    sub_1E142CF54(v87, v125);
    v90 = v146;
    v140 = *(v146 + 48);
    v91 = v140(v89, 1, v64);
    v92 = v133;
    if (v91 == 1)
    {

      v93 = *(v90 + 8);
      v93(v145, v64);
      v131(v92, v136);
      sub_1E142CFC4(v87);
      v94 = *(v138 + 8);
      v94(v86, v75);
      v94(v141, v75);
      sub_1E142CFC4(v143);
      v93(v144, v64);
      v95 = v89;
LABEL_26:
      sub_1E142CFC4(v95);
      return v139;
    }

    v135 = v80;
    sub_1E1AF39EC();
    v96 = v148;
    if (v148)
    {
    }

    v97 = *(v90 + 8);
    v98 = v89;
    v99 = v64;
    v97(v98, v64);
    v100 = v136;
    v101 = v137;
    v102 = v124;
    if (v96)
    {
      v103 = v134;
      sub_1E142CF54(v134, v124);
      if (v140(v102, 1, v99) == 1)
      {

        v97(v145, v99);
        v131(v92, v136);
        sub_1E142CFC4(v103);
        v104 = *(v138 + 8);
        v105 = v99;
        v106 = v142;
        v104(v137, v142);
        v104(v141, v106);
        sub_1E142CFC4(v143);
        v97(v144, v105);
        v95 = v102;
        goto LABEL_26;
      }

      v112 = v92;
      v113 = v99;
      sub_1E15F0974();

      v97(v145, v99);
      v131(v112, v136);
      sub_1E142CFC4(v103);
      v114 = *(v138 + 8);
      v115 = v142;
      v114(v137, v142);
      v114(v141, v115);
      sub_1E142CFC4(v143);
      v97(v144, v113);
      v110 = v102;
      v111 = v113;
    }

    else
    {

      v97(v145, v99);
      v131(v92, v100);
      sub_1E142CFC4(v134);
      v107 = *(v138 + 8);
      v108 = v99;
      v109 = v142;
      v107(v101, v142);
      v107(v141, v109);
      sub_1E142CFC4(v143);
      v110 = v144;
      v111 = v108;
    }

    v97(v110, v111);
    return v139;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E171FC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TopChartsPage.genreId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId);

  return v1;
}

uint64_t TopChartsPage.ageBandId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId);

  return v1;
}

uint64_t TopChartsPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title);

  return v1;
}

uint64_t TopChartsPage.categoriesButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle);

  return v1;
}

uint64_t sub_1E171FDB0()
{
}

uint64_t TopChartsPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartsPage.__deallocating_deinit()
{
  TopChartsPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TopChartsPage()
{
  result = qword_1EE1E0010;
  if (!qword_1EE1E0010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopChartsPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t TopChartsPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

JSValue __swiftcall TopChartsPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    v4 = result.super.isa;
    v7 = sub_1E1AEFBDC();
    v6 = [v2 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v7, v5}];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E1AF6C5C();

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for TopChartsPageIntent()
{
  result = qword_1ECEB8548;
  if (!qword_1ECEB8548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17203A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E172041C()
{
  result = sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1720488(uint64_t a1)
{
  sub_1E134FD1C(a1, v6, &unk_1ECEB5670);
  if (!v7)
  {
    sub_1E1308058(v6, &unk_1ECEB5670);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = sub_1E1AF5DBC();
    [v1 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = sub_1E1AF5DBC();

  v4 = sub_1E1AF5DBC();
  [v1 setObject:v3 forKey:v4];

LABEL_6:
  return sub_1E1308058(a1, &unk_1ECEB5670);
}

uint64_t sub_1E17205BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, v6, &unk_1ECEBB780);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &unk_1ECEBB780);
    v11 = sub_1E1AF5DBC();
    [v2 removeObjectForKey_];

    return sub_1E1308058(a1, &unk_1ECEBB780);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1E1AEFD6C();
    v14 = v13;
    v15 = sub_1E1AF5DBC();
    [v2 setDouble:v15 forKey:v14];

    sub_1E1308058(a1, &unk_1ECEBB780);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1E172080C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1E1AF013C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, v6, &qword_1ECEB5AF0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &qword_1ECEB5AF0);
    v11 = sub_1E1AF5DBC();
    [v2 removeObjectForKey_];

    return sub_1E1308058(a1, &qword_1ECEB5AF0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1E1AF010C();
    v13 = sub_1E1AF5DBC();

    v14 = sub_1E1AF5DBC();
    [v2 setObject:v13 forKey:v14];

    sub_1E1308058(a1, &qword_1ECEB5AF0);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1E1720A68()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E1308058(v7, &qword_1ECEB2DF0);
    return 0;
  }
}

uint64_t sub_1E1720B64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF5DBC();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    goto LABEL_8;
  }

  sub_1E1380D6C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_1E1AEFD5C();

  v5 = 0;
LABEL_9:
  v6 = sub_1E1AEFE6C();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

id NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1E1380D6C();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_1E1308058(v8, &qword_1ECEB2DF0);
  }

  return 0;
}

void sub_1E1720DCC(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_1E1380D6C();
  v3 = sub_1E1AF6CEC();
  v4 = sub_1E1AF5DBC();
  [v2 setObject:v3 forKey:v4];
}

void NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.setter()
{
  v1 = v0;
  sub_1E1380D6C();
  v2 = sub_1E1AF6CEC();
  v3 = sub_1E1AF5DBC();
  [v1 setObject:v2 forKey:v3];
}

void (*NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter();
  return sub_1E1720F48;
}

void sub_1E1720F48(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1E1380D6C();
  v3 = sub_1E1AF6CEC();
  v2 = sub_1E1AF5DBC();
  [v1 setObject:v3 forKey:v2];
}

double sub_1E1720FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1E166FB28(a2, &v10 - v7);
  sub_1E166FB28(a3, &v8[*(v6 + 56)]);
  sub_1E166FE18(v8);
  return 0.0;
}

double PageGridProvider.bottomPadding(for:surroundedBy:containerSize:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1E166FB28(a2, &v10 - v7);
  sub_1E166FB28(a3, &v8[*(v6 + 56)]);
  sub_1E166FE18(v8);
  return 0.0;
}

uint64_t sub_1E172112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1E166FB28(a2, &v10 - v7);
  sub_1E166FB28(a3, &v8[*(v6 + 56)]);
  sub_1E166FE18(v8);
  return 0;
}

uint64_t PageGridProvider.shouldAddDividerBelow(shelf:surroundedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1E166FB28(a2, &v10 - v7);
  sub_1E166FB28(a3, &v8[*(v6 + 56)]);
  sub_1E166FE18(v8);
  return 0;
}

double PageGridProvider.dividerPadding(shelf:surroundedBy:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1E166FB28(a2, &v10 - v7);
  sub_1E166FB28(a3, &v8[*(v6 + 56)]);
  sub_1E166FE18(v8);
  return 0.0;
}

uint64_t PageEnvironment.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF227C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PageEnvironment()
{
  result = qword_1EE1F30B8;
  if (!qword_1EE1F30B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageEnvironment.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageEnvironment() + 28);
  v4 = sub_1E1AF228C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v5 = sub_1E1AF228C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  v24 = sub_1E1AF227C();
  v12 = *(v24 - 8);
  v13 = MEMORY[0x1EEE9AC00](v24);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DynamicTypeSize.init(contentSizeCategory:)([a1 preferredContentSizeCategory], v15);
  v23 = sub_1E1AF695C();
  v16 = [a1 verticalSizeClass];
  v17 = [a1 layoutDirection];

  if (v17 + 1 > 2)
  {
    v18 = MEMORY[0x1E697E7D0];
  }

  else
  {
    v18 = qword_1E870EA70[v17 + 1];
  }

  (*(v6 + 104))(v8, *v18, v5);
  v19 = *(v6 + 32);
  v19(v11, v8, v5);
  (*(v12 + 32))(a3, v15, v24);
  v20 = type metadata accessor for PageEnvironment();
  *(a3 + v20[5]) = v23 & 1;
  *(a3 + v20[6]) = v16 == 1;
  result = v19(a3 + v20[7], v11, v5);
  *(a3 + v20[8]) = v25 & 1;
  return result;
}

uint64_t DynamicTypeSize.init(contentSizeCategory:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  if (v4 == sub_1E1AF5DFC() && v6 == v7)
  {
    goto LABEL_29;
  }

  v9 = sub_1E1AF74AC();

  if (v9)
  {
LABEL_6:

LABEL_30:
    v16 = MEMORY[0x1E697E6E8];
    goto LABEL_31;
  }

  v10 = sub_1E1AF5DFC();
  v12 = v11;
  if (v10 == sub_1E1AF5DFC() && v12 == v13)
  {

    goto LABEL_14;
  }

  v15 = sub_1E1AF74AC();

  if (v15)
  {

LABEL_14:
    v16 = MEMORY[0x1E697E718];
    goto LABEL_31;
  }

  v17 = sub_1E1AF5DFC();
  v19 = v18;
  if (v17 == sub_1E1AF5DFC() && v19 == v20)
  {

LABEL_20:
    v16 = MEMORY[0x1E697E6F0];
    goto LABEL_31;
  }

  v21 = sub_1E1AF74AC();

  if (v21)
  {

    goto LABEL_20;
  }

  v22 = sub_1E1AF5DFC();
  v24 = v23;
  if (v22 == sub_1E1AF5DFC() && v24 == v25)
  {

LABEL_26:
    v16 = MEMORY[0x1E697E6F8];
    goto LABEL_31;
  }

  v26 = sub_1E1AF74AC();

  if (v26)
  {

    goto LABEL_26;
  }

  v27 = sub_1E1AF5DFC();
  v29 = v28;
  if (v27 == sub_1E1AF5DFC() && v29 == v30)
  {
LABEL_29:

    goto LABEL_30;
  }

  v35 = sub_1E1AF74AC();

  if (v35)
  {
    goto LABEL_6;
  }

  v36 = sub_1E1AF5DFC();
  v38 = v37;
  if (v36 == sub_1E1AF5DFC() && v38 == v39)
  {

LABEL_40:
    v16 = MEMORY[0x1E697E708];
    goto LABEL_31;
  }

  v40 = sub_1E1AF74AC();

  if (v40)
  {

    goto LABEL_40;
  }

  v41 = sub_1E1AF5DFC();
  v43 = v42;
  if (v41 == sub_1E1AF5DFC() && v43 == v44)
  {

LABEL_46:
    v16 = MEMORY[0x1E697E720];
    goto LABEL_31;
  }

  v45 = sub_1E1AF74AC();

  if (v45)
  {

    goto LABEL_46;
  }

  v46 = sub_1E1AF5DFC();
  v48 = v47;
  if (v46 == sub_1E1AF5DFC() && v48 == v49)
  {

LABEL_52:
    v16 = MEMORY[0x1E697E728];
    goto LABEL_31;
  }

  v50 = sub_1E1AF74AC();

  if (v50)
  {

    goto LABEL_52;
  }

  v51 = sub_1E1AF5DFC();
  v53 = v52;
  if (v51 == sub_1E1AF5DFC() && v53 == v54)
  {

LABEL_58:
    v16 = MEMORY[0x1E697E6C0];
    goto LABEL_31;
  }

  v55 = sub_1E1AF74AC();

  if (v55)
  {

    goto LABEL_58;
  }

  v56 = sub_1E1AF5DFC();
  v58 = v57;
  if (v56 == sub_1E1AF5DFC() && v58 == v59)
  {

LABEL_64:
    v16 = MEMORY[0x1E697E6C8];
    goto LABEL_31;
  }

  v60 = sub_1E1AF74AC();

  if (v60)
  {

    goto LABEL_64;
  }

  v61 = sub_1E1AF5DFC();
  v63 = v62;
  if (v61 == sub_1E1AF5DFC() && v63 == v64)
  {

LABEL_70:
    v16 = MEMORY[0x1E697E6D0];
    goto LABEL_31;
  }

  v65 = sub_1E1AF74AC();

  if (v65)
  {

    goto LABEL_70;
  }

  v66 = sub_1E1AF5DFC();
  v68 = v67;
  if (v66 == sub_1E1AF5DFC() && v68 == v69)
  {

LABEL_76:
    v16 = MEMORY[0x1E697E6D8];
    goto LABEL_31;
  }

  v70 = sub_1E1AF74AC();

  if (v70)
  {

    goto LABEL_76;
  }

  v71 = sub_1E1AF5DFC();
  v73 = v72;
  if (v71 == sub_1E1AF5DFC() && v73 == v74)
  {

    v16 = MEMORY[0x1E697E6E0];
  }

  else
  {
    v75 = sub_1E1AF74AC();

    v16 = MEMORY[0x1E697E6E8];
    if (v75)
    {
      v16 = MEMORY[0x1E697E6E0];
    }
  }

LABEL_31:
  v31 = *v16;
  v32 = sub_1E1AF227C();
  v33 = *(*(v32 - 8) + 104);

  return v33(a2, v31, v32);
}

uint64_t LayoutDirection.init(layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF228C();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 + 1) > 2)
  {
    v6 = MEMORY[0x1E697E7D0];
  }

  else
  {
    v6 = qword_1E870EA70[a1 + 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1E1721FD8()
{
  result = sub_1E1AF227C();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AF228C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = swift_allocObject();
  sub_1E1307FE8(a2, v16);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1E13E23F8(v16, v20 + v18);
  v50 = a1;
  *(v20 + v19) = a1;
  v21 = v13;
  sub_1E1307FE8(a2, v13);
  sub_1E1307FE8(v13, v10);
  *(v17 + qword_1EE1E9D48) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v17 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v23 = qword_1EE2166A0;

  *(v17 + v23) = sub_1E159D6F0(v22);
  v24 = (v17 + qword_1EE1E9E00);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v17 + qword_1EE1E9EA0);
  *v25 = 0;
  v25[1] = 0;
  v52 = v25;
  v26 = (v17 + qword_1EE1E9E08);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v17 + qword_1EE1E9DF0);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v17 + qword_1EE1E9E98);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v17 + qword_1EE216698);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v17 + qword_1EE2166D0) = 0;
  *(v17 + qword_1EE1E9D50) = 0;
  *(v17 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v17 + qword_1EE2166C8) = 0;
  v30 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30F8);
  swift_allocObject();
  *(v17 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v17 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3110);
  swift_allocObject();
  *(v17 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE2166B0;
  swift_allocObject();
  *(v17 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v17 + v34) = sub_1E1AF5BEC();
  v35 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v36 = sub_1E1AF5BEC();

  sub_1E13ECBA0(v49);
  sub_1E13ECBA0(v21);
  *(v17 + v35) = v36;
  v37 = qword_1EE1E9DD8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v39 = *(*(v38 - 8) + 56);
  v39(v17 + v37, 1, 1, v38);
  v40 = v38;
  v41 = v53;
  v39(v17 + qword_1EE1E9DE0, 1, 1, v40);
  v42 = v51;
  *(v17 + 16) = v50;
  sub_1E13E23F8(v42, v17 + qword_1EE216678);
  *v24 = sub_1E1722DE0;
  v24[1] = v20;
  *v26 = 0;
  v26[1] = 0;
  if (v41)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v44 = sub_1E1445E6C;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = v52;
  *v52 = v44;
  v45[1] = v43;
  *v27 = 0;
  v27[1] = 0;
  *v28 = 0;
  v28[1] = 0;
  v46 = v55;
  *(v17 + qword_1EE1E9E90) = v54;
  *(v17 + qword_1EE216690) = v46;
  return v17;
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v56 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  sub_1E1307FE8(a2, &v51 - v16);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_1E13E23F8(v17, v19 + v18);
  v52 = v14;
  v53 = a1;
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v20 = v19;
  sub_1E1307FE8(a2, v14);
  sub_1E1307FE8(v14, &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v6 + qword_1EE1E9D48) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v22 = qword_1EE2166A0;

  *(v6 + v22) = sub_1E159D6F0(v21);
  v23 = (v6 + qword_1EE1E9E00);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v6 + qword_1EE1E9EA0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_1EE1E9E08);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_1EE1E9DF0);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_1EE1E9E98);
  *v27 = 0;
  v27[1] = 0;
  v54 = v27;
  v28 = (v6 + qword_1EE216698);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v6 + qword_1EE2166D0) = 0;
  *(v6 + qword_1EE1E9D50) = 0;
  *(v6 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE2166C8) = 0;
  v29 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30F8);
  swift_allocObject();
  *(v6 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v6 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3110);
  swift_allocObject();
  *(v6 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166B0;
  swift_allocObject();
  *(v6 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v35 = sub_1E1AF5BEC();

  sub_1E13ECBA0(a2);
  sub_1E13ECBA0(v52);
  *(v6 + v34) = v35;
  v36 = qword_1EE1E9DD8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v38 = *(*(v37 - 8) + 56);
  v38(v6 + v36, 1, 1, v37);
  v39 = v37;
  v40 = v56;
  v38(v6 + qword_1EE1E9DE0, 1, 1, v39);
  *(v6 + 16) = v53;
  sub_1E13E23F8(v55, v6 + qword_1EE216678);
  v41 = *v23;
  *v23 = sub_1E17230EC;
  v23[1] = v20;
  sub_1E1300EA8(v41);
  v42 = *v25;
  *v25 = 0;
  v25[1] = 0;
  sub_1E1300EA8(v42);
  if (v40)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    v44 = sub_1E155BD80;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = *v24;
  *v24 = v44;
  v24[1] = v43;
  sub_1E1300EA8(v45);
  v46 = *v26;
  *v26 = 0;
  v26[1] = 0;
  sub_1E1300EA8(v46);
  v47 = v54;
  v48 = *v54;
  *v54 = 0;
  v47[1] = 0;
  sub_1E1300EA8(v48);
  v49 = v58;
  *(v6 + qword_1EE1E9E90) = v57;
  *(v6 + qword_1EE216690) = v49;
  return v6;
}

uint64_t sub_1E1722B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1E1AEFCCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1307FE8(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E13ECBA0(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2958);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8568);
    sub_1E172302C();
    swift_allocError();
    *v15 = 0;
    return sub_1E1AF581C();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    (*(v12 + 16))(&v7[*(v5 + 20)], v14, v11);
    *v7 = 0xD000000000000023;
    *(v7 + 1) = 0x80000001E1B72C00;
    v17 = sub_1E136A8D0(v7, a3, "AppStoreKit/SearchChartsAndCategoriesDiffablePageContentPresenter.swift", 71, 2);

    sub_1E1723090(v7);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t SearchChartsAndCategoriesDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E1722E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E1722ED4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1722B1C(a1, v1 + v4, v5);
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageContentPresenter()
{
  result = qword_1ECEB8558;
  if (!qword_1ECEB8558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E172302C()
{
  result = qword_1ECEB8570;
  if (!qword_1ECEB8570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8570);
  }

  return result;
}

uint64_t sub_1E1723090(uint64_t a1)
{
  v2 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TabBadgingFieldsProvider.init(tabController:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TabBadgingFieldsProvider() + 20);
  v5 = *MEMORY[0x1E69AB4D8];
  v6 = sub_1E1AF524C();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);

  return sub_1E1308EC0(a1, a2);
}

uint64_t type metadata accessor for TabBadgingFieldsProvider()
{
  result = qword_1EE1D90C8;
  if (!qword_1EE1D90C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TabBadgingFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabBadgingFieldsProvider() + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabBadgingFieldsProvider.category.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TabBadgingFieldsProvider() + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void TabBadgingFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if ([objc_opt_self() isMainThread])
  {
    v3 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1Tm(v1, v3);
    v5 = (*(v4 + 8))(v3, v4);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    sub_1E1361A80();
    v6 = sub_1E1AF68EC();
    MEMORY[0x1EEE9AC00](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8578);
    sub_1E1AF690C();

    v5 = v46[0];
    if (!v46[0])
    {
      return;
    }
  }

  v41 = a1;
  v7 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  v8 = *(v5 + 16);
  if (!v8)
  {
LABEL_48:

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
    v46[0] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v41, *(v41 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(v46);
    return;
  }

  v9 = 0;
  v10 = v5 + 32;
  v42 = *(v5 + 16);
  v43 = v5;
  while (v9 < *(v5 + 16))
  {
    sub_1E1300B24(v10, v46);
    v12 = v47;
    v13 = v48;
    __swift_project_boxed_opaque_existential_1Tm(v46, v47);
    (*(v13 + 8))(&v49, v12, v13);
    v14 = v49;
    if (v49 == 9)
    {
      goto LABEL_9;
    }

    v15 = v47;
    v16 = v48;
    __swift_project_boxed_opaque_existential_1Tm(v46, v47);
    v17 = (*(v16 + 16))(v15, v16);
    if (!v18)
    {
      goto LABEL_9;
    }

    v44 = v18;
    v45 = v17;
    if (v14 <= 3)
    {
      v19 = 0x7961646F74;
      if (v14 != 2)
      {
        v19 = 1936748641;
      }

      v22 = 0xE500000000000000;
      v20 = 0xE400000000000000;
      if (v14 == 2)
      {
        v20 = 0xE500000000000000;
      }

      v21 = 0x7265666E69;
      if (v14)
      {
        v21 = 0x64657463656C6573;
        v22 = 0xE800000000000000;
      }

      v23 = v14 <= 1;
    }

    else
    {
      v19 = 0x656461637261;
      if (v14 == 7)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x676E6964616F6CLL;
        v20 = 0xE700000000000000;
      }

      if (v14 == 6)
      {
        v19 = 0x73657461647075;
        v20 = 0xE700000000000000;
      }

      v21 = 0x73656D6167;
      if (v14 != 4)
      {
        v21 = 0x686372616573;
      }

      v22 = 0xE500000000000000;
      if (v14 != 4)
      {
        v22 = 0xE600000000000000;
      }

      v23 = v14 <= 5;
    }

    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = v19;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v20;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v7;
    v27 = v24;
    v29 = sub_1E13018F8(v24, v25);
    v30 = v7[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_51;
    }

    v33 = v28;
    if (v7[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_1E1415E90();
        if ((v33 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      sub_1E1688F9C(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1E13018F8(v27, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_53;
      }

      v29 = v34;
      if ((v33 & 1) == 0)
      {
LABEL_44:
        v7 = v49;
        v49[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v7[6] + 16 * v29);
        *v36 = v27;
        v36[1] = v25;
        v37 = (v7[7] + 16 * v29);
        *v37 = v45;
        v37[1] = v44;
        v38 = v7[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_52;
        }

        v7[2] = v40;
        goto LABEL_8;
      }
    }

    v7 = v49;
    v11 = (v49[7] + 16 * v29);
    *v11 = v45;
    v11[1] = v44;

LABEL_8:
    v8 = v42;
    v5 = v43;
LABEL_9:
    ++v9;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_1E1AF757C();
  __break(1u);
}

uint64_t sub_1E17237E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  result = (*(v5 + 8))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_1E17238B4()
{
  result = sub_1E1723938();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AF524C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E1723938()
{
  result = qword_1EE1DFCB0;
  if (!qword_1EE1DFCB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1DFCB0);
  }

  return result;
}

AppStoreKit::MediaOverlayStyle_optional __swiftcall MediaOverlayStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t MediaOverlayStyle.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x737953686374616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802658148;
  }
}

uint64_t sub_1E1723C8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 0x737953686374616DLL;
    v3 = 0xEB000000006D6574;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1802658148;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 0x737953686374616DLL;
    v7 = 0xEB000000006D6574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1802658148;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

unint64_t sub_1E1723D94()
{
  result = qword_1ECEB8580;
  if (!qword_1ECEB8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8580);
  }

  return result;
}

uint64_t sub_1E1723DE8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1723E88()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1723F14()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1723FBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 0x737953686374616DLL;
    v4 = 0xEB000000006D6574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1802658148;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t UICollectionView.dequeueConfiguredReusableCell<A, B>(using:in:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = sub_1E1AF6D9C();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v43 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v53 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v43 - v11;
  v58 = a4;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF01FC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v49 = *(a1 + 16);
  v47 = v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_1E1AF5DBC();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];

  v22 = sub_1E1AF5DBC();
  v23 = *a2;
  v24 = type metadata accessor for ItemLayoutContext();
  v25 = *(v24 + 32);
  v51 = a2;
  v26 = *&a2[v25 + *(type metadata accessor for ShelfLayoutContext() + 20)];
  v52 = v23;
  v46 = v26;
  MEMORY[0x1E68F8EA0](v23);
  v27 = sub_1E1AF015C();
  v28 = *(v16 + 8);
  v55 = v16 + 8;
  v56 = v15;
  v28(v18, v15);
  v29 = v28;
  v30 = [v5 dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:v27];

  v31 = swift_dynamicCastUnknownClass();
  if (v31)
  {
    v32 = v31;
    (*(v53 + 16))(v50, &v51[*(v24 + 20)], v57);
    v33 = v54;
    v34 = v58;
    v35 = swift_dynamicCast();
    v36 = *(v12 + 56);
    if (v35)
    {
      v36(v33, 0, 1, v34);
      v37 = v48;
      (*(v12 + 32))(v48, v33, v34);
      MEMORY[0x1E68F8EA0](v52, v46);
      v49(v32, v18, v37);
      v29(v18, v56);
      (*(v12 + 8))(v37, v34);
      return v32;
    }

    v36(v33, 1, 1, v34);
    (*(v43 + 8))(v33, v44);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000038, 0x80000001E1B72D00);
    MEMORY[0x1E68F8EA0](v52, v46);
    sub_1E1724608();
    v39 = v56;
    v40 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v40);

    v29(v18, v39);
    MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
    sub_1E1724660();
    v41 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v41);

    MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
    v42 = sub_1E1AF772C();
    MEMORY[0x1E68FECA0](v42);
  }

  else
  {
  }

  result = sub_1E1AF71FC();
  __break(1u);
  return result;
}

unint64_t sub_1E1724608()
{
  result = qword_1ECEB8588;
  if (!qword_1ECEB8588)
  {
    sub_1E1AF01FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8588);
  }

  return result;
}

unint64_t sub_1E1724660()
{
  result = qword_1ECEB8590;
  if (!qword_1ECEB8590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB7E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8590);
  }

  return result;
}

uint64_t static MetricsPipeline.objectGraphWithNewPipelineConfiguredWith(optInProviders:optOutProviders:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF436C();
  v115 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v107 - v10;
  v114 = sub_1E1AF430C();
  v12 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v107 - v15;
  v128 = sub_1E1AF51EC();
  v118 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8598);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v124 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v107 - v21;
  v131 = sub_1E1AF523C();
  v22 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v123 = &v107 - v28;
  v29 = sub_1E1AF4F3C();
  MEMORY[0x1EEE9AC00](v29);
  v135 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v120 = a1;
  if (!*(a1 + 16) && !*(a2 + 16))
  {

    return a3;
  }

  v125 = a2;
  v126 = v26;
  v109 = v12;
  v110 = v8;
  v117 = v16;
  v111 = v11;
  v112 = v6;
  v35 = &v107 - v32;
  v36 = v33;
  v37 = v34;
  v38 = sub_1E1AF421C();
  v136 = v35;
  v116 = a3;
  v134 = v36;
  v107 = v38;
  sub_1E1AF55EC();
  v39 = v120 + 64;
  v40 = 1 << *(v120 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v120 + 64);
  v43 = (v40 + 63) >> 6;
  v119 = v22 + 16;
  v129 = (v22 + 32);
  v122 = (v22 + 8);
  v133 = (v37 + 8);
  v108 = v37;
  v132 = (v37 + 32);

  v45 = 0;
  if (v42)
  {
    while (1)
    {
      v46 = v45;
LABEL_14:
      v50 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v51 = v50 | (v46 << 6);
      v52 = v120;
      (*(v22 + 16))(v130, *(v120 + 48) + *(v22 + 72) * v51, v131);
      sub_1E1300B24(*(v52 + 56) + 40 * v51, &v137);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85A8);
      v54 = *(v53 + 48);
      v49 = v126;
      (*(v22 + 32))();
      sub_1E1308EC0(&v137, v49 + v54);
      (*(*(v53 - 8) + 56))(v49, 0, 1, v53);
      v48 = v46;
LABEL_15:
      v55 = v123;
      sub_1E137F600(v49, v123, &qword_1ECEB85A0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85A8);
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {
        break;
      }

      v57 = *(v56 + 48);
      v58 = v130;
      v59 = v22;
      v60 = v131;
      (*v129)(v130, v55, v131);
      sub_1E1308EC0((v55 + v57), &v137);
      v62 = v135;
      v61 = v136;
      sub_1E1AF4F0C();
      __swift_destroy_boxed_opaque_existential_1(&v137);
      v63 = v60;
      v22 = v59;
      (*v122)(v58, v63);
      v64 = v134;
      (*v133)(v61, v134);
      result = (*v132)(v61, v62, v64);
      v45 = v48;
      if (!v42)
      {
        goto LABEL_7;
      }
    }

    v66 = v125;
    v67 = v125 + 64;
    v68 = 1 << *(v125 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & *(v125 + 64);
    v71 = (v68 + 63) >> 6;
    v131 = (v118 + 32);
    v129 = (v118 + 16);
    v130 = (v118 + 8);

    v72 = 0;
    if (v70)
    {
      while (1)
      {
        v73 = v72;
LABEL_31:
        v77 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v78 = v77 | (v73 << 6);
        v79 = v118;
        v81 = v127;
        v80 = v128;
        (*(v118 + 16))(v127, *(v66 + 48) + *(v118 + 72) * v78, v128);
        sub_1E1300B24(*(v66 + 56) + 40 * v78, &v137);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85B0);
        v83 = *(v82 + 48);
        v84 = *(v79 + 32);
        v76 = v124;
        v84(v124, v81, v80);
        sub_1E1308EC0(&v137, &v76[v83]);
        (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
        v75 = v73;
LABEL_32:
        v85 = v76;
        v86 = v121;
        sub_1E137F600(v85, v121, &qword_1ECEB8598);
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85B0);
        if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
        {
          break;
        }

        v88 = *(v87 + 48);
        v90 = v127;
        v89 = v128;
        (*v131)(v127, v86, v128);
        sub_1E1308EC0((v86 + v88), &v137);
        v91 = v135;
        v92 = v136;
        sub_1E1AF4F1C();
        __swift_destroy_boxed_opaque_existential_1(&v137);
        (*v130)(v90, v89);
        v93 = v134;
        (*v133)(v92, v134);
        result = (*v132)(v92, v91, v93);
        v72 = v75;
        v66 = v125;
        if (!v70)
        {
          goto LABEL_23;
        }
      }

      v95 = v113;
      v96 = v114;
      sub_1E1AF55EC();
      v97 = v117;
      sub_1E1AF42DC();
      v98 = v109;
      v99 = *(v109 + 8);
      v131 = (v109 + 8);
      v132 = v99;
      (v99)(v95, v96);
      v130 = *(v98 + 16);
      (v130)(v95, v97, v96);
      v100 = v111;
      sub_1E1AF432C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
      v129 = (2 * *(*(sub_1E1AF361C() - 8) + 72));
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1E1B03760;
      v102 = v115;
      v103 = v112;
      (*(v115 + 16))(v110, v100, v112);
      sub_1E1AF35FC();
      (v130)(v95, v117, v96);
      sub_1E1AF35FC();
      v104 = v108 + 16;
      v105 = v136;
      v106 = v134;
      (*(v108 + 16))(v135, v136, v134);
      sub_1E1AF35FC();
      *&v137 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8268);
      sub_1E1725460();
      a3 = sub_1E1AF41DC();

      (*(v102 + 8))(v100, v103);
      (v132)(v117, v96);
      (*(v104 - 8))(v105, v106);
      return a3;
    }

LABEL_23:
    if (v71 <= v72 + 1)
    {
      v74 = v72 + 1;
    }

    else
    {
      v74 = v71;
    }

    v75 = v74 - 1;
    v76 = v124;
    while (1)
    {
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v73 >= v71)
      {
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85B0);
        (*(*(v94 - 8) + 56))(v76, 1, 1, v94);
        v70 = 0;
        goto LABEL_32;
      }

      v70 = *(v67 + 8 * v73);
      ++v72;
      if (v70)
      {
        v66 = v125;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_7:
    if (v43 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    else
    {
      v47 = v43;
    }

    v48 = v47 - 1;
    v49 = v126;
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v43)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85A8);
        (*(*(v65 - 8) + 56))(v49, 1, 1, v65);
        v42 = 0;
        goto LABEL_15;
      }

      v42 = *(v39 + 8 * v46);
      ++v45;
      if (v42)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1725460()
{
  result = qword_1EE1E34F0;
  if (!qword_1EE1E34F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E34F0);
  }

  return result;
}

uint64_t BreakoutDetails.Badge.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  sub_1E1AF381C();
  v12 = sub_1E1AF37CC();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (!v14)
  {
    goto LABEL_13;
  }

  v16 = v12 == 0x6B72616D64726F77 && v14 == 0xE800000000000000;
  if (v16 || (sub_1E1AF74AC() & 1) != 0)
  {

    v17 = sub_1E1AF39DC();
    (*(*(v17 - 8) + 8))(a2, v17);
    result = (v15)(a1, v5);
    v19 = 0;
    v20 = 0;
    goto LABEL_21;
  }

  if (v12 == 1954047348 && v14 == 0xE400000000000000)
  {
  }

  else
  {
    v22 = sub_1E1AF74AC();

    if ((v22 & 1) == 0)
    {
LABEL_13:
      v23 = sub_1E1AF39DC();
      (*(*(v23 - 8) + 8))(a2, v23);
      result = (v15)(a1, v5);
      v19 = 0;
      v20 = 1;
      goto LABEL_21;
    }
  }

  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v26 = v25;
  v27 = sub_1E1AF39DC();
  (*(*(v27 - 8) + 8))(a2, v27);
  v15(a1, v5);
  result = (v15)(v8, v5);
  if (v26)
  {
    v19 = v24;
  }

  else
  {
    v19 = 0;
  }

  if (v26 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v26;
  }

LABEL_21:
  v28 = v30;
  *v30 = v19;
  v28[1] = v20;
  return result;
}

AppStoreKit::BreakoutDetails::BackgroundStyle_optional __swiftcall BreakoutDetails.BackgroundStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t BreakoutDetails.BackgroundStyle.rawValue.getter()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x746867696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6169726574616DLL;
  }
}

uint64_t sub_1E17258A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802658148;
  if (v2 != 1)
  {
    v4 = 0x746867696CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6169726574616DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (*a2 != 1)
  {
    v8 = 0x746867696CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6169726574616DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_1E1725990()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1725A28()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1725AAC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1725B4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (v2 != 1)
  {
    v5 = 0x746867696CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6169726574616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t BreakoutDetails.TextAlignment.textAlignment(in:)(void *a1)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = [a1 traitCollection];
      v3 = sub_1E1AF697C();

      if (v3)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = [a1 traitCollection];
    v6 = sub_1E1AF697C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

AppStoreKit::BreakoutDetails::TextAlignment_optional __swiftcall BreakoutDetails.TextAlignment.init(rawValue:)(Swift::String rawValue)
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

uint64_t BreakoutDetails.TextAlignment.rawValue.getter()
{
  v1 = 0x676E696C69617274;
  if (*v0 != 1)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

__n128 BreakoutDetails.__allocating_init(title:description:badge:callToActionButtonAction:backgroundStyle:textAlignment:badgeColorOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, uint64_t a6, char *a7, char *a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v18 = *a7;
  v19 = *a8;
  result = *a5;
  *(v17 + 16) = *a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 64) = a6;
  *(v17 + 72) = v18;
  *(v17 + 73) = v19;
  *(v17 + 80) = a9;
  return result;
}

uint64_t BreakoutDetails.init(title:description:badge:callToActionButtonAction:backgroundStyle:textAlignment:badgeColorOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, char *a7, char *a8, uint64_t a9)
{
  v10 = *a7;
  v11 = *a8;
  *(v9 + 16) = *a5;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *(v9 + 64) = a6;
  *(v9 + 72) = v10;
  *(v9 + 73) = v11;
  *(v9 + 80) = a9;
  return v9;
}

uint64_t BreakoutDetails.badge.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1E1726548(v2, v3);
}

uint64_t BreakoutDetails.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BreakoutDetails.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *BreakoutDetails.badgeColorOverride.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t BreakoutDetails.deinit()
{
  sub_1E172655C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t BreakoutDetails.__deallocating_deinit()
{
  sub_1E172655C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1E1725F28@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E17260A8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s11AppStoreKit15BreakoutDetailsC5BadgeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1E172655C(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1E172655C(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_1E1AF74AC();
      sub_1E1726548(v4, v5);
      sub_1E1726548(v2, v3);
      sub_1E172655C(v2, v3);
      sub_1E172655C(v4, v5);
      return v11 & 1;
    }

    sub_1E1726548(v9, v3);
    sub_1E1726548(v2, v3);
    sub_1E172655C(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1E1726548(*a2, *(a2 + 8));
    sub_1E1726548(v2, v3);
    sub_1E172655C(v2, v3);
    sub_1E172655C(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_1E172655C(*a1, 1uLL);
  sub_1E172655C(v4, 1uLL);
  return v6;
}

uint64_t sub_1E17260A8(char *a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_1E1AF39DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v41 = v14;
  v42 = v13;
  v15 = *(v8 + 8);
  v15(v12, v7);
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v39 = v17;
  v40 = v16;
  v15(v12, v7);
  sub_1E1AF381C();
  v43 = v4;
  v44 = v3;
  v18 = *(v4 + 16);
  v19 = v45;
  v18(v6, v45, v3);
  sub_1E1726798();
  sub_1E1AF464C();
  v20 = v47;
  v35 = v46;
  type metadata accessor for Action();
  v37 = a1;
  v21 = v34;
  sub_1E1AF381C();
  v22 = v38;
  v23 = static Action.makeInstance(byDeserializing:using:)(v21, v19);
  if (v22)
  {

    v38 = 0;
  }

  else
  {
    v38 = v23;
  }

  if (v20 == 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = v20;
  }

  v25 = v35;
  if (v20 == 2)
  {
    v25 = 0;
  }

  v35 = v25;
  v36 = v24;
  v15(v21, v7);
  v26 = v37;
  sub_1E1AF381C();
  sub_1E17267EC();
  sub_1E1AF369C();
  v15(v12, v7);
  v27 = v46;
  sub_1E1AF381C();
  sub_1E1726840();
  sub_1E1AF369C();
  v15(v12, v7);
  v28 = v48;
  sub_1E1AF381C();
  v29 = JSONObject.appStoreColor.getter();
  (*(v43 + 8))(v45, v44);
  v15(v26, v7);
  v15(v12, v7);
  type metadata accessor for BreakoutDetails();
  result = swift_allocObject();
  v31 = v36;
  *(result + 16) = v35;
  *(result + 24) = v31;
  v32 = v41;
  *(result + 32) = v42;
  *(result + 40) = v32;
  v33 = v39;
  *(result + 48) = v40;
  *(result + 56) = v33;
  *(result + 64) = v38;
  *(result + 72) = v27;
  *(result + 73) = v28;
  *(result + 80) = v29;
  return result;
}

uint64_t sub_1E1726548(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1E172655C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1E1726574()
{
  result = qword_1ECEB85B8;
  if (!qword_1ECEB85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB85B8);
  }

  return result;
}

unint64_t sub_1E17265CC()
{
  result = qword_1ECEB85C0;
  if (!qword_1ECEB85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB85C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit15BreakoutDetailsC5BadgeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E17266B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E172670C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E1726798()
{
  result = qword_1EE1DFB08;
  if (!qword_1EE1DFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFB08);
  }

  return result;
}

unint64_t sub_1E17267EC()
{
  result = qword_1EE1DFB10;
  if (!qword_1EE1DFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFB10);
  }

  return result;
}

unint64_t sub_1E1726840()
{
  result = qword_1EE1DFB18;
  if (!qword_1EE1DFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFB18);
  }

  return result;
}

AppStoreKit::InAppPurchaseTheme_optional __swiftcall InAppPurchaseTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InAppPurchaseTheme.rawValue.getter()
{
  v1 = 0x7265666E69;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x6867696C746F7073;
  }

  if (*v0)
  {
    v1 = 0x746867696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E17269C0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1726A78()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1726B1C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1726BDC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265666E69;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (*v1 != 2)
  {
    v5 = 0x6867696C746F7073;
    v4 = 0xE900000000000074;
  }

  if (*v1)
  {
    v3 = 0x746867696CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t InAppPurchaseLockup.descriptionText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_descriptionText);

  return v1;
}

uint64_t InAppPurchaseLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v54 = a2;
  v49 = *v4;
  v50 = v3;
  v53 = sub_1E1AF39DC();
  v6 = *(v53 - 8);
  v7 = MEMORY[0x1EEE9AC00](v53);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v44 = &v42 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  v24 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF37AC();
  v47 = v14;
  v52 = *(v14 + 8);
  v52(v23, v13);
  v51 = v6;
  if (a1)
  {
    v25 = sub_1E1AF5A7C();
    sub_1E172744C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v26 = 0x746E65726170;
    v27 = v49;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
  }

  else
  {
    sub_1E1AF381C();
    v49 = *(v6 + 16);
    v49(v12, v54, v53);
    type metadata accessor for Lockup();
    v25 = swift_allocObject();
    v28 = v50;
    v29 = Lockup.init(deserializing:using:)(v21, v12);
    if (!v28)
    {
      *&v4[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_parent] = v29;
      sub_1E1AF381C();
      v31 = sub_1E1AF37CC();
      v33 = v32;
      v52(v23, v13);
      v34 = &v4[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_descriptionText];
      *v34 = v31;
      v34[1] = v33;
      sub_1E1AF381C();
      sub_1E17273F8();
      sub_1E1AF369C();
      v52(v23, v13);
      v4[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_theme] = v56;
      type metadata accessor for FlowAction();
      sub_1E1AF381C();
      v49(v45, v54, v53);
      sub_1E172744C(&qword_1EE1E0CA0, type metadata accessor for FlowAction);
      sub_1E1AF464C();
      *&v4[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_productAction] = v55;
      v35 = v44;
      v43 = v24;
      sub_1E1AF381C();
      LOBYTE(v31) = sub_1E1AF370C();
      v52(v35, v13);
      v4[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_isSubscription] = v31 & 1;
      v36 = v46;
      (*(v47 + 16))(v46, v24, v13);
      v37 = v48;
      v39 = v53;
      v38 = v54;
      v49(v48, v54, v53);
      v40 = Lockup.init(deserializing:using:)(v36, v37);
      v41 = v43;
      v25 = v40;
      (*(v51 + 8))(v38, v39);
      v52(v41, v13);
      return v25;
    }
  }

  (*(v51 + 8))(v54, v53);
  v52(v24, v13);
  type metadata accessor for InAppPurchaseLockup();
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t type metadata accessor for InAppPurchaseLockup()
{
  result = qword_1EE1FAAF0;
  if (!qword_1EE1FAAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E17273F8()
{
  result = qword_1EE1E1CF8[0];
  if (!qword_1EE1E1CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E1CF8);
  }

  return result;
}

uint64_t sub_1E172744C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E17274C8()
{
}

uint64_t InAppPurchaseLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t InAppPurchaseLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E1727628()
{
  result = qword_1ECEB85C8;
  if (!qword_1ECEB85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB85C8);
  }

  return result;
}

id PendingPageRender.add(updateError:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1E172D0E4(0, v4[2] + 1, 1, v4);
    *(v1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1E172D0E4((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a1;
  *(v1 + v3) = v4;
  swift_endAccess();
  return a1;
}

void PendingPageRender.initialRequestEndTime.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_initialRequestEndTime;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if (a2)
  {
    if (v8)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v7 != *&a1)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
LABEL_7:
    v9 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasInitialRequestEndTime);
    swift_beginAccess();
    *(v9 + 40) = (a2 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }

    PendingPageRender.tryToEstablishUserReadyTime()();
  }
}

uint64_t PendingPageRender.use(pageRenderEventFrom:)(uint64_t a1)
{
  v2 = v1;
  sub_1E134FD1C(a1, v8, &qword_1ECEB2588);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1E1308058(v8, &qword_1ECEB2588);
    v5 = 0;
  }

  *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_event) = v5;

  v6 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasEvent);
  swift_beginAccess();
  *(v6 + 40) = 1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

uint64_t PendingPageRender.add(requestsFrom:)()
{
  swift_beginAccess();

  sub_1E1728384(v0, &qword_1ECEB55D0, &unk_1E1B2D660, MEMORY[0x1E69AB478], MEMORY[0x1E69AB478]);
  return swift_endAccess();
}

uint64_t PendingPageRender.add(errorsFrom:)()
{
  swift_beginAccess();

  sub_1E1727CD4(v0);
  return swift_endAccess();
}

uint64_t PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1E1AF4FBC();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t PendingPageRender.disappearTime.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  sub_1E1360934(a1, v1 + v3);
  swift_endAccess();
  sub_1E172AF90();
  return sub_1E1308058(a1, &qword_1ECEB24D8);
}

uint64_t sub_1E1727CD4(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1E172D0E4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_1E154615C(&v40, &v4[v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v43 = v23;
          v44 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v38 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v40;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = v4[2];
  v13 = v41;
  v14 = v42;
  v2 = v43;
  v39 = v41;
  if (!v44)
  {
    goto LABEL_19;
  }

  v19 = (v44 - 1) & v44;
  v20 = __clz(__rbit64(v44)) | (v43 << 6);
  v38 = v42;
  v21 = (v42 + 64) >> 6;
LABEL_27:
  v26 = result;
  v27 = *(*(result + 56) + 8 * v20);
  v28 = v27;
  v29 = v39;
LABEL_29:
  while (1)
  {
    v30 = v4[3];
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v12;
  }

  v36 = sub_1E172D0E4((v30 > 1), v12 + 1, 1, v4);
  v29 = v39;
  v4 = v36;
  v31 = v36[3] >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v4[v12++ + 4] = v27;
    if (!v19)
    {
      break;
    }

    result = v26;
LABEL_38:
    v34 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(*(result + 56) + ((v2 << 9) | (8 * v34)));
    v35 = v27;
    v29 = v39;
    if (v12 == v31)
    {
      v12 = v31;
      v4[2] = v31;
      goto LABEL_29;
    }
  }

  v32 = v2;
  result = v26;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v33 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v33);
    ++v32;
    if (v19)
    {
      v2 = v33;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v37 = v2 + 1;
  }

  else
  {
    v37 = v21;
  }

  v42 = v38;
  v43 = v37 - 1;
  v44 = 0;
  v4[2] = v12;
LABEL_13:
  result = sub_1E1337ECC();
  *v1 = v4;
  return result;
}

uint64_t sub_1E1727F84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1E172D234(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_1E15462B0(v38, &v3[v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v20 >= ((v14 + 64) >> 6))
        {
          goto LABEL_13;
        }

        v19 = *(v13 + 8 * v20);
        ++v15;
        if (v19)
        {
          goto LABEL_22;
        }
      }
    }

    *(v3 + 2) = v18;
  }

  if (result != v11)
  {
LABEL_13:
    result = sub_1E1337ECC();
    *v1 = v3;
    return result;
  }

LABEL_16:
  v6 = *(v3 + 2);
  result = v38[0];
  v13 = v38[1];
  v14 = v38[2];
  v15 = v39;
  v19 = v40;
  if (!v40)
  {
    goto LABEL_19;
  }

  v20 = v39;
LABEL_22:
  v21 = (v19 - 1) & v19;
  v22 = *(*(result + 48) + (__clz(__rbit64(v19)) | (v20 << 6)));
  v23 = (v14 + 64) >> 6;
  v24 = v20;
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      v36 = v22;
      v37 = result;
      v35 = v13;
      v30 = v14;
      v31 = v24;
      v32 = v3;
      v33 = v21;
      v34 = sub_1E172D234((v25 > 1), v6 + 1, 1, v32);
      v22 = v36;
      v21 = v33;
      v24 = v31;
      v14 = v30;
      v13 = v35;
      v3 = v34;
      result = v37;
      v26 = *(v3 + 3) >> 1;
    }

    if (v6 < v26)
    {
      break;
    }

LABEL_23:
    *(v3 + 2) = v6;
    if (v22 == 2)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v3[v6++ + 32] = v22 & 1;
    if (!v21)
    {
      break;
    }

    v27 = v24;
LABEL_34:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v22 = *(*(result + 48) + (v29 | (v27 << 6)));
    if (v6 >= v26)
    {
      goto LABEL_23;
    }
  }

  v28 = v24;
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      *(v3 + 2) = v6;
      goto LABEL_13;
    }

    v21 = *(v13 + 8 * v27);
    ++v28;
    if (v21)
    {
      v24 = v27;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E1728220(uint64_t result)
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

  result = sub_1E172D670(result, v11, 1, v3);
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

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

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

uint64_t sub_1E1728384(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1E172FEE4(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E17285C4(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_1E17304B8(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E17286F4(uint64_t result)
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

  result = sub_1E130C06C(result, v10, 1, v3);
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

uint64_t sub_1E1728854(uint64_t result)
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

  result = sub_1E172E854(result, v10, 1, v3);
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

uint64_t sub_1E1728970(uint64_t result)
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

  result = sub_1E172F9A8(result, v11, 1, v3, &qword_1ECEB8628);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

void *sub_1E1728AB4(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_1E172FD88(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E1728BF8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1E1AF71CC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1E1730600(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E1728CF0(uint64_t result)
{
  v4 = *(result + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = sub_1E172DC1C(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = v10 - v12;
  result = sub_1E1546F54(v34, &v5[16 * v12 + 32], v10 - v12, v8);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v14 = *(v5 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
      while (1)
      {
LABEL_19:
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_44;
        }

        if (v18 >= ((v3 + 64) >> 6))
        {
          goto LABEL_42;
        }

        v17 = *(v13 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_22;
        }
      }
    }

    *(v5 + 2) = v16;
  }

  if (result != v13)
  {
LABEL_13:
    result = sub_1E1337ECC();
    *v1 = v5;
    return result;
  }

LABEL_16:
  v2 = *(v5 + 2);
  v13 = v34[1];
  v33 = v34[0];
  v3 = v34[2];
  v16 = v35;
  v17 = v36;
  if (!v36)
  {
    goto LABEL_19;
  }

  v18 = v35;
LABEL_22:
  v19 = (v17 - 1) & v17;
  v20 = (*(v33 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
  v21 = *v20;
  v22 = v20[1];

  if (!v22)
  {
LABEL_42:

    goto LABEL_13;
  }

  v23 = (v3 + 64) >> 6;
  v24 = v18;
  while (1)
  {
    v25 = *(v5 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) >= v2 + 1)
    {
      if (v2 < v26)
      {
        break;
      }

      goto LABEL_24;
    }

    result = sub_1E172DC1C((v25 > 1), v2 + 1, 1, v5);
    v5 = result;
    v26 = *(result + 24) >> 1;
    if (v2 < v26)
    {
      break;
    }

LABEL_24:
    *(v5 + 2) = v2;
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  while (1)
  {
    v30 = &v5[16 * v2 + 32];
    *v30 = v21;
    *(v30 + 1) = v22;
    ++v2;
    if (!v19)
    {
      break;
    }

LABEL_28:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = (*(v33 + 48) + ((v24 << 10) | (16 * v27)));
    v21 = *v28;
    v22 = v28[1];

    if (v22)
    {
      v29 = v2 < v26;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_24;
    }
  }

  v31 = v24;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v23)
    {
      *(v5 + 2) = v2;
      goto LABEL_42;
    }

    v19 = *(v13 + 8 * v32);
    ++v31;
    if (v19)
    {
      v24 = v32;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1E1728FAC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1E1AF706C();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8600);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t PendingPageRender.observeAssets(_:)(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoader);
  if (!*(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoader))
  {
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 32);
    v8 = swift_unknownObjectRetain();
    v7(v8, &protocol witness table for PendingPageRender, ObjectType, a2);
    v9 = *(v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoaderIsIdle);
    v10 = *(a2 + 8);

    v11 = v10(ObjectType, a2);
    swift_beginAccess();
    *(v9 + 40) = (v11 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }

    *v3 = v5;
    v3[1] = a2;
    swift_unknownObjectRelease();
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_1E1729254()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    goto LABEL_5;
  }

  *(v1 + 48) = v4;
  v5 = v4 == 0;
  swift_beginAccess();
  *(v1 + 40) = v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E149DEE8();
  }

  if (!*(v1 + 48))
  {
LABEL_5:
    PendingPageRender.tryToEstablishUserReadyTime()();
  }
}

uint64_t sub_1E1729318()
{
  result = sub_1E1AF5DBC();
  qword_1EE1DE808 = result;
  return result;
}

uint64_t sub_1E1729374()
{
  result = sub_1E1AF5DBC();
  qword_1ECEB85D0 = result;
  return result;
}

char *PendingPageRender.init(bag:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v99 = a2;
  v100 = a1;
  v95 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - v5;
  v96 = sub_1E1AF3D0C();
  v7 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_gate;
  sub_1E13006E4(0, &qword_1EE1E3430);
  v11 = sub_1E1AF68EC();
  type metadata accessor for Gate();
  swift_allocObject();
  v12 = Gate.init(queue:passingDelay:)(v11, 1.0);
  v94 = v10;
  *&v3[v10] = v12;
  v13 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasEvent;
  type metadata accessor for Gate.Condition();
  v14 = swift_allocObject();
  swift_weakInit();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  v93 = v13;
  *&v3[v13] = v14;
  v91 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_event;
  *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_event] = 0;
  v15 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime;
  v16 = swift_allocObject();
  swift_weakInit();
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v92 = v15;
  *&v3[v15] = v16;
  v17 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime];
  *v17 = 0;
  v17[8] = 1;
  v18 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasAppearTime;
  v19 = swift_allocObject();
  swift_weakInit();
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  v90 = v18;
  *&v3[v18] = v19;
  v20 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
  v22 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  v23 = *(*(v22 - 8) + 56);
  v89 = v21;
  v23(&v3[v21], 1, 1, v22);
  v24 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestStartTime];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestOnScreenEndTime];
  *v25 = 0;
  v25[8] = 1;
  v26 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestEndTime];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_userReadyTime];
  *v27 = 0;
  v27[8] = 1;
  v28 = MEMORY[0x1E69E7CC0];
  v87 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requests;
  *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requests] = MEMORY[0x1E69E7CC0];
  v29 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady;
  v30 = swift_allocObject();
  swift_weakInit();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  v88 = v29;
  *&v3[v29] = v30;
  v31 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0];
  v32 = swift_allocObject();
  swift_weakInit();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  v86 = v31;
  *&v3[v31] = v32;
  v33 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime];
  *v33 = 0;
  v33[8] = 1;
  v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLowDataMode] = 2;
  v34 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoaderIsIdle;
  v35 = swift_allocObject();
  swift_weakInit();
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  v85 = v34;
  *&v3[v34] = v35;
  v36 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoader];
  *v36 = 0;
  *(v36 + 1) = 0;
  v83 = v36;
  v37 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasInitialRequestEndTime;
  v38 = swift_allocObject();
  swift_weakInit();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 40) = 0;
  v84 = v37;
  *&v3[v37] = v38;
  v39 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_initialRequestEndTime];
  *v39 = 0;
  v39[8] = 1;
  v40 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests;
  type metadata accessor for Gate.CountingCondition();
  v41 = swift_allocObject();
  *(v41 + 48) = 0;
  swift_weakInit();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 40) = 1;
  v82 = v40;
  *&v3[v40] = v41;
  v42 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasUserReadyTime;
  v43 = swift_allocObject();
  swift_weakInit();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 40) = 0;
  v81 = v42;
  *&v3[v42] = v43;
  v44 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasNetworkQualityReports;
  v45 = swift_allocObject();
  swift_weakInit();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  v80 = v44;
  *&v3[v44] = v45;
  v78 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkQualityReports;
  *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkQualityReports] = 0;
  v46 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkQualityInquiry;
  v47 = [objc_allocWithZone(ASKNetworkQualityInquiry) init];
  v79 = v46;
  *&v3[v46] = v47;
  v48 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkInquiry];
  v49 = _s11AppStoreKit20NWPathNetworkInquiryCACycfC_0();
  *(v48 + 3) = type metadata accessor for NWPathNetworkInquiry();
  *(v48 + 4) = &protocol witness table for NWPathNetworkInquiry;
  *v48 = v49;
  *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors] = v28;
  v50 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider];
  *v50 = sub_1E172C414;
  v50[1] = 0;
  v51 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost];
  *v51 = 0;
  *(v51 + 1) = 0;
  if (qword_1EE1E2F48 != -1)
  {
    swift_once();
  }

  v52 = v96;
  (*(v7 + 104))(v9, *MEMORY[0x1E69AAFB8], v96);
  sub_1E1AF52AC();
  (*(v7 + 8))(v9, v52);
  v53 = v98;
  sub_1E1AF532C();
  (*(v97 + 8))(v6, v53);
  v54 = v101;
  LOBYTE(v101) = 1;
  v102 = 0;
  v103 = v54;
  if (sub_1E153DAB0())
  {
    v55 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_metricsPipeline;
    v56 = sub_1E1AF436C();
    v57 = *(v56 - 8);
    (*(v57 + 16))(&v3[v55], v99, v56);
    v58 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_metricsPageRenderTopic];
    *v58 = 0xD000000000000011;
    *(v58 + 1) = 0x80000001E1B5AD20;
    v59 = &v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_lottery];
    *v59 = 1;
    *(v59 + 1) = 0;
    *(v59 + 2) = v54;
    *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_xpSessionDuration] = v54;
    *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_xpSamplingPercentageUsers] = 0;
    v60 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_gate;
    v61 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_gate];
    swift_beginAccess();
    *(v61 + 32) = 0xD00000000000001DLL;
    *(v61 + 40) = 0x80000001E1B72E40;

    v62 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasEvent];
    swift_beginAccess();
    *(v62 + 24) = 0xD000000000000026;
    *(v62 + 32) = 0x80000001E1B72E60;

    Gate.add(condition:)();

    v63 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime];
    swift_beginAccess();
    *(v63 + 24) = 0xD00000000000002ELL;
    *(v63 + 32) = 0x80000001E1B72E90;

    Gate.add(condition:)();

    v64 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasAppearTime];
    swift_beginAccess();
    *(v64 + 24) = 0xD00000000000002BLL;
    *(v64 + 32) = 0x80000001E1B72EC0;

    Gate.add(condition:)();

    v65 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasInitialRequestEndTime];
    swift_beginAccess();
    *(v65 + 24) = 0xD000000000000037;
    *(v65 + 32) = 0x80000001E1B72EF0;

    Gate.add(condition:)();

    v66 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests];
    swift_beginAccess();
    *(v66 + 24) = 0xD000000000000029;
    *(v66 + 32) = 0x80000001E1B72F30;

    Gate.add(condition:)();

    v67 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasUserReadyTime];
    swift_beginAccess();
    *(v67 + 24) = 0xD00000000000002ELL;
    *(v67 + 32) = 0x80000001E1B72F60;

    Gate.add(condition:)();

    v68 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady];
    swift_beginAccess();
    *(v68 + 24) = 0xD00000000000002BLL;
    *(v68 + 32) = 0x80000001E1B72F90;

    Gate.add(condition:)();

    v69 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]];
    swift_beginAccess();
    *(v69 + 24) = 0xD000000000000018;
    *(v69 + 32) = 0x80000001E1B60C70;

    Gate.add(condition:)();

    v70 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasNetworkQualityReports];
    swift_beginAccess();
    *(v70 + 24) = 0xD000000000000036;
    *(v70 + 32) = 0x80000001E1B72FC0;

    Gate.add(condition:)();

    v71 = *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoaderIsIdle];
    swift_beginAccess();
    *(v71 + 24) = 0xD00000000000002FLL;
    *(v71 + 32) = 0x80000001E1B73000;

    Gate.add(condition:)();

    v72 = *&v3[v60];
    v73 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v74 = *(v72 + 120);
    v75 = *(v72 + 128);
    *(v72 + 120) = sub_1E17319CC;
    *(v72 + 128) = v73;

    sub_1E1361B18(v74, v75);

    sub_1E172AAC8();

    (*(v57 + 8))(v99, v56);
  }

  else
  {
    v76 = sub_1E1AF436C();
    (*(*(v76 - 8) + 8))(v99, v76);

    sub_1E1308058(&v3[v89], &qword_1ECEB24D8);

    swift_unknownObjectRelease();

    sub_1E1308058(v48, &qword_1ECEB85D8);

    sub_1E1361B18(*&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost], *&v3[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost + 8]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_1E172A264()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E172A2BC();
  }

  return result;
}

uint64_t sub_1E172A2BC()
{
  v1 = v0;
  v2 = sub_1E1AF3ABC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF4A9C();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_event);
  if (v11)
  {
    v52 = v2;
    v53 = v8;
    v54 = result;
    v55 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_event;
    v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_metricsPageRenderTopic);
    v12 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_metricsPageRenderTopic + 8);
    swift_beginAccess();
    *(v11 + 24) = v13;
    *(v11 + 32) = v12;

    v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime);
    swift_beginAccess();
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    swift_beginAccess();
    *(v11 + 40) = v15;
    *(v11 + 48) = v14;
    v16 = (v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime);
    swift_beginAccess();
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    swift_beginAccess();
    *(v11 + 56) = v17;
    *(v11 + 64) = v16;
    v18 = v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
    swift_beginAccess();
    v19 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
    v21 = 0;
    if (!v20)
    {
      v21 = *(v18 + *(v19 + 20));
    }

    v22 = v20 != 0;
    IsPerformanceTesting = 1;
    swift_beginAccess();
    *(v11 + 72) = v21;
    *(v11 + 80) = v22;
    v24 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestStartTime);
    v25 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestStartTime + 8);
    swift_beginAccess();
    *(v11 + 104) = v24;
    *(v11 + 112) = v25;
    v26 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestOnScreenEndTime);
    v27 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestOnScreenEndTime + 8);
    swift_beginAccess();
    *(v11 + 120) = v26;
    *(v11 + 128) = v27;
    v28 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestEndTime);
    v29 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestEndTime + 8);
    swift_beginAccess();
    *(v11 + 136) = v28;
    *(v11 + 144) = v29;
    v30 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_userReadyTime);
    v31 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_userReadyTime + 8);
    swift_beginAccess();
    *(v11 + 152) = v30;
    *(v11 + 160) = v31;
    v32 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requests;
    swift_beginAccess();
    v33 = *(v1 + v32);
    swift_beginAccess();
    *(v11 + 96) = v33;

    v34 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkQualityReports);
    swift_beginAccess();
    *(v11 + 168) = v34;

    v35 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v36 = *(v1 + v35);
    swift_beginAccess();
    *(v11 + 176) = v36;

    v37 = (v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime);
    swift_beginAccess();
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 8);
    swift_beginAccess();
    *(v11 + 216) = v38;
    *(v11 + 224) = v37;
    *(v11 + 257) = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLowDataMode);
    LOBYTE(v56) = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_lottery);
    v57 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_lottery + 8);
    if ((sub_1E153D768() & 1) == 0)
    {
      IsPerformanceTesting = ASKBuildTypeIsPerformanceTesting();
    }

    swift_beginAccess();
    *(v11 + 273) = IsPerformanceTesting;
    v39 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_xpSessionDuration);
    swift_beginAccess();
    *(v11 + 264) = v39;
    *(v11 + 272) = 0;
    swift_beginAccess();
    *(v11 + 280) = 0;
    *(v11 + 288) = 0;
    if (sub_1E153DDDC())
    {
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v40 = sub_1E1AF591C();
      __swift_project_value_buffer(v40, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      v58 = type metadata accessor for PageRenderMetricsEvent();
      v56 = v11;

      sub_1E1AF38BC();
      sub_1E1308058(&v56, &qword_1ECEB2DF0);
      sub_1E1AF548C();
    }

    v41 = (v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider);
    swift_beginAccess();
    v42 = *v41;

    v42(v43);

    PageRenderMetricsEvent.metricsData.getter(v5);
    sub_1E1AF434C();

    (*(v3 + 8))(v5, v52);
    v44 = [objc_opt_self() defaultCenter];
    if (qword_1ECEB0FF0 != -1)
    {
      swift_once();
    }

    [v44 postNotificationName:qword_1EE1DE808 object:v1];

    v45 = v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost;
    swift_beginAccess();
    v46 = *v45;
    if (*v45)
    {
      v47 = *(v45 + 8);
      swift_endAccess();

      v46(v48);
      sub_1E1361B18(v46, v47);

      (*(v53 + 8))(v10, v54);
    }

    else
    {
      (*(v53 + 8))(v10, v54);
      swift_endAccess();
    }

    v49 = *v45;
    v50 = *(v45 + 8);
    *v45 = 0;
    *(v45 + 8) = 0;
    sub_1E1361B18(v49, v50);
    *(v1 + v55) = 0;
  }

  return result;
}

uint64_t sub_1E172AAC8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkQualityInquiry);
  if (v2)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v12 = sub_1E1731CF4;
    v13 = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E172C394;
    v11 = &block_descriptor_60;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    [v5 investigateNetworksWithCompletionBlock_];
    _Block_release(v4);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasNetworkQualityReports);
    swift_beginAccess();
    *(v6 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  sub_1E134FD1C(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkInquiry, &v14, &qword_1ECEB85D8);
  if (!v15)
  {
    return sub_1E1308058(&v14, &qword_1ECEB85D8);
  }

  sub_1E1308EC0(&v14, aBlock);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1Tm(aBlock, v11);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLowDataMode) = (*(v8 + 4))(v7, v8) & 1;
  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1E172ACDC(uint64_t a1, char a2, void *a3, void *a4)
{
  v8 = v4 + *a3;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  v9 = *(v4 + *a4);
  swift_beginAccess();
  *(v9 + 40) = (a2 & 1) == 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

void (*PendingPageRender.appearTime.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1E172AE30;
}

uint64_t PendingPageRender.disappearTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB24D8);
}

uint64_t sub_1E172AEA4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1E134FD1C(a1, &v10 - v5, &qword_1ECEB24D8);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  sub_1E1360934(v6, v7 + v8);
  swift_endAccess();
  sub_1E172AF90();
  return sub_1E1308058(v6, &qword_1ECEB24D8);
}

uint64_t sub_1E172AF90()
{
  v1 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF4FBC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v26 = &v26 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  result = (*(v2 + 48))(v0 + v17, 1, v1);
  if (!result)
  {
    v19 = v0;
    sub_1E1731CFC(v0 + v17, v4);
    v20 = *(v6 + 32);
    v20(v14, v4, v5);
    v20(v16, v14, v5);
    v21 = v26;
    (*(v6 + 16))(v26, v16, v5);
    sub_1E1AF4F9C();
    sub_1E1731D60();
    v22 = sub_1E1AF5DAC();
    v23 = *(v6 + 8);
    v23(v9, v5);
    if (v22)
    {
      v23(v21, v5);
    }

    else
    {
      sub_1E1AF4FAC();
      v24 = sub_1E1AF5DAC();
      v23(v9, v5);
      v23(v21, v5);
      if ((v24 & 1) == 0)
      {
        return (v23)(v16, v5);
      }
    }

    v25 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_event;
    if (!*(v19 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_event))
    {
      type metadata accessor for PageRenderMetricsEvent();
      swift_allocObject();
      *(v19 + v25) = sub_1E14936C0();
    }

    sub_1E172A2BC();
    return (v23)(v16, v5);
  }

  return result;
}

uint64_t (*PendingPageRender.disappearTime.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E172B344;
}

uint64_t sub_1E172B344(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E172AF90();
  }

  return result;
}

BOOL PendingPageRender.isLayoutPending.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady);
  swift_beginAccess();
  return (*(v1 + 40) & 1) == 0;
}

uint64_t sub_1E172B3C8(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady);
  swift_beginAccess();
  *(v3 + 40) = (v2 & 1) == 0;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

uint64_t PendingPageRender.isLayoutPending.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady);
  v3 = a1 ^ 1;
  swift_beginAccess();
  *(v2 + 40) = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

void (*PendingPageRender.isLayoutPending.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady);
  *(v3 + 72) = v5;
  swift_beginAccess();
  *(v4 + 80) = (*(v5 + 40) & 1) == 0;
  return sub_1E172B574;
}

void sub_1E172B574(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 72) + 40) = (*(*a1 + 80) & 1) == 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E149DEE8();
  }

  free(v1);
}

void (*PendingPageRender.rootViewModelPresentTime.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1E172B68C;
}

void sub_1E172B698(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[6];
    v7 = *(v6 + *a3);
    v8 = *(v6 + v5[7] + 8);
    swift_beginAccess();
    *(v7 + 40) = (v8 & 1) == 0;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  free(v5);
}

uint64_t sub_1E172B750()
{
  if (qword_1EE1EC290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EE1EC298;
  v2 = v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
  swift_beginAccess();
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
  swift_beginAccess();
  *(v3 + 40) = 1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

Swift::Void __swiftcall PendingPageRender.didBeginFetchingAssets()()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoaderIsIdle);
  swift_beginAccess();
  *(v5 + 40) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E149DEE8();
  }

  v6 = v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestStartTime;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestStartTime + 8) == 1)
  {
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
    *v6 = v8;
    *(v6 + 8) = 0;
  }
}

Swift::Void __swiftcall PendingPageRender.didFinishFetchingOnScreenAssets()()
{
  v1 = v0;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFE5C();
  sub_1E1AEFE1C();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestOnScreenEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

Swift::Void __swiftcall PendingPageRender.tryToEstablishUserReadyTime()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasUserReadyTime);
  swift_beginAccess();
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasInitialRequestEndTime);
    swift_beginAccess();
    if (*(v2 + 40) == 1)
    {
      v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      if (*(v3 + 40) == 1)
      {
        v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady);
        swift_beginAccess();
        if (*(v4 + 40) == 1)
        {
          if (*(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoader))
          {
            v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoader + 8);
            ObjectType = swift_getObjectType();
            v7 = *(v5 + 16);
            swift_unknownObjectRetain();
            if ((v7(ObjectType, v5) & 1) == 0 && ((*(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestStartTime + 8) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestEndTime + 8) & 1) == 0))
            {
              v8 = (v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_initialRequestEndTime);
              swift_beginAccess();
              if (v8[1])
              {
                v9 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v10 = *v8;
                v9 = sub_1E172CF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
                v12 = *(v9 + 2);
                v11 = *(v9 + 3);
                if (v12 >= v11 >> 1)
                {
                  v9 = sub_1E172CF94((v11 > 1), v12 + 1, 1, v9);
                }

                *(v9 + 2) = v12 + 1;
                *&v9[8 * v12 + 32] = v10;
              }

              if ((*(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestOnScreenEndTime + 8) & 1) == 0)
              {
                v13 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestOnScreenEndTime);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v9 = sub_1E172CF94(0, *(v9 + 2) + 1, 1, v9);
                }

                v15 = *(v9 + 2);
                v14 = *(v9 + 3);
                if (v15 >= v14 >> 1)
                {
                  v9 = sub_1E172CF94((v14 > 1), v15 + 1, 1, v9);
                }

                *(v9 + 2) = v15 + 1;
                *&v9[8 * v15 + 32] = v13;
              }

              v16 = sub_1E141FAB4(v9);
              v18 = v17;

              if (v18)
              {
                if (qword_1EE1D2768 != -1)
                {
                  swift_once();
                }

                v19 = sub_1E1AF591C();
                __swift_project_value_buffer(v19, qword_1EE216140);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
                sub_1E1AF38EC();
                *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
                sub_1E1AF38CC();
                sub_1E1AF382C();
                sub_1E1AF54AC();
              }

              else
              {
                v20 = v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_userReadyTime;
                *v20 = v16;
                *(v20 + 8) = 0;
                *(v1 + 40) = 1;
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  sub_1E149DEE8();
                }

                v21 = [objc_opt_self() defaultCenter];
                if (qword_1ECEB0FF8 != -1)
                {
                  swift_once();
                }

                [v21 postNotificationName:qword_1ECEB85D0 object:v0];
              }
            }

            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall PendingPageRender.didFinishFetchingAllAssets()()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_assetLoaderIsIdle);
  swift_beginAccess();
  *(v5 + 40) = 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E149DEE8();
  }

  sub_1E1AEFE5C();
  sub_1E1AEFE1C();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v8 = v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

uint64_t sub_1E172C0B0(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void (*PendingPageRender.initialRequestEndTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_initialRequestEndTime;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1E172C198;
}

void sub_1E172C198(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    PendingPageRender.initialRequestEndTime.setter(*&v4, v5);
    goto LABEL_12;
  }

  v6 = *(v3 + 88) + *(v3 + 96);
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = v4;
  *(v6 + 8) = v5;
  if (v5)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v7 != v4)
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_9:
    v9 = *(*(v3 + 88) + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasInitialRequestEndTime);
    v10 = v5 ^ 1;
    swift_beginAccess();
    *(v9 + 40) = v10;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }

    PendingPageRender.tryToEstablishUserReadyTime()();
  }

LABEL_12:

  free(v3);
}

uint64_t sub_1E172C28C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkQualityReports;
  *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkQualityReports) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasNetworkQualityReports);
  LOBYTE(v2) = *(v1 + v2) != 0;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E149DEE8();
  }

  return result;
}

uint64_t sub_1E172C330()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1E172C28C(v1);
  }

  return result;
}

uint64_t sub_1E172C394(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8768);
  v2 = sub_1E1AF621C();

  v1(v2);
}

uint64_t sub_1E172C414@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF4A9C();
  v3 = __swift_project_value_buffer(v2, qword_1EE1E3998);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E172C4BC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t PendingPageRender.contextProvider.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PendingPageRender.contextProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E172C640@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E137AFA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E172C6E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E137AFA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1E1300E34(v3);
  return sub_1E1361B18(v8, v9);
}

uint64_t PendingPageRender.didPost.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1);
  return v2;
}

uint64_t PendingPageRender.didPost.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E1361B18(v6, v7);
}

uint64_t PendingPageRender.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_metricsPipeline;
  v2 = sub_1E1AF436C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime, &qword_1ECEB24D8);

  swift_unknownObjectRelease();

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_networkInquiry, &qword_1ECEB85D8);

  sub_1E1361B18(*(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost), *(v0 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost + 8));
  return v0;
}

uint64_t PendingPageRender.__deallocating_deinit()
{
  PendingPageRender.deinit();

  return swift_deallocClassInstance();
}

void sub_1E172CB0C()
{
  v1 = v0;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFE5C();
  sub_1E1AEFE1C();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_resourceRequestOnScreenEndTime;
  *v8 = v7;
  *(v8 + 8) = 0;
  PendingPageRender.tryToEstablishUserReadyTime()();
}

char *sub_1E172CC14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB86E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1E172CD2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172CE74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172CF94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8760);
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

void *sub_1E172D0E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172D234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2840);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E172D374(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172D4E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172D670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB25D0);
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

char *sub_1E172D774(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8850);
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

char *sub_1E172D88C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1E172D988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172DAA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2690);
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

char *sub_1E172DC1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
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

char *sub_1E172DD60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB87D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172DE90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172DFB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E172E0F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}