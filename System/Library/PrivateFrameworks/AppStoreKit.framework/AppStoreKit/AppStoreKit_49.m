uint64_t MetadataRibbonIconWithLabelViewLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v4[8]);
  sub_1E1AF11DC();
  v15 = v14;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v5 + 16, v5[19]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v24[2] = v18;
  (*(v11 + 8))(v13, v10);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetWidth(v25);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF11CC();
  v24[3] = v19;
  v24[1] = v20;
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v22 = CGRectGetMidY(v27) - v17 * 0.5;
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v28.origin.x = MinX;
  v28.origin.y = v22;
  v28.size.width = v15;
  v28.size.height = v17;
  CGRectGetMaxX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetMidY(v29);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

double MetadataRibbonIconWithLabelViewLayout.measurements(fitting:in:)()
{
  v1 = v0;
  v19 = sub_1E1AF1D6C();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v0 + 5, v0[8]);
  sub_1E1AF11DC();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v1 + 16, v1[19]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_1E1AF11CC();
  v14 = v10 + v12 + v13;
  sub_1E1AF1D4C();
  sub_1E1AF1D2C();
  v15 = *(v2 + 8);
  v16 = v19;
  v15(v4, v19);
  sub_1E1AF1D4C();
  sub_1E1AF1CFC();
  v15(v4, v16);
  return v14;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1E17C91D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E17C9220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AppleAccountBranding.localizedString(_:)(uint64_t a1, void *a2)
{
  v4 = sub_1E1AF055C();
  v12 = v4;
  v13 = sub_1E16F9904();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11._countAndFlagsBits);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E699C020], v4);
  LOBYTE(v4) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&v11);
  if (v4)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;

    MEMORY[0x1E68FECA0](0x444E41524245525FLL, 0xE800000000000000);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v11, v6)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }
}

uint64_t ArcadeOfferLabelPresenter.offerLabelText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E17C9400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[7] = a1;
  v2[8] = a2;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = v2[10];
    ObjectType = swift_getObjectType();
    v8 = v2[7];
    v9 = v2[8];
    v10 = *(v6 + 8);

    v10(v8, v9, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ArcadeOfferLabelPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[10];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = v1[7];
    v5 = v1[8];
    v6 = *(v2 + 8);

    v6(v4, v5, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t ArcadeOfferLabelPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[10] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[10];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = v2[7];
    v7 = v2[8];
    v8 = *(v4 + 8);

    v8(v6, v7, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*ArcadeOfferLabelPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 80);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E17C9758;
}

void sub_1E17C9758(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 80) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[10];
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v7 = v4[7];
      v8 = v4[8];
      v9 = *(v5 + 8);

      v9(v7, v8, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t ArcadeOfferLabelPresenter.__allocating_init(subscribedText:nonsubscribedText:subscriptionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5[7] = 0;
  v5[10] = 0;
  v5[8] = 0;
  swift_unknownObjectWeakInit();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];
  v13 = a5;

  [v12 lock];
  sub_1E15F6384(v5, sub_1E17C9B84, v11, v13);
  [v12 unlock];

  v14 = &v13[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[8];
  sub_1E1361A40(v15, v16);

  sub_1E1361A60(v15, v16);
  v17 = 4;
  if ((v16 & 0xC0) == 0x80)
  {
    v17 = 2;
  }

  v18 = 5;
  if ((v16 & 0xC0) == 0x80)
  {
    v18 = 3;
  }

  v19 = v5[v18];
  v20 = v5[v17];
  swift_beginAccess();
  v5[7] = v20;
  v5[8] = v19;

  return v5;
}

uint64_t sub_1E17C9AB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = 32;
      if ((v1 & 0xC0) == 0x80)
      {
        v4 = 16;
      }

      v5 = 40;
      if ((v1 & 0xC0) == 0x80)
      {
        v5 = 24;
      }

      v6 = *(Strong + v4);
      v7 = *(Strong + v5);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    sub_1E17C9400(v6, v7);
  }

  return result;
}

uint64_t ArcadeOfferLabelPresenter.deinit()
{
  v1 = *(v0 + 48);
  v2 = *&v1[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];
  v3 = v1;
  [v2 lock];
  swift_beginAccess();
  sub_1E13878AC(0, v0);
  swift_endAccess();
  [v2 unlock];

  sub_1E1337DEC(v0 + 72);
  return v0;
}

uint64_t ArcadeOfferLabelPresenter.__deallocating_deinit()
{
  ArcadeOfferLabelPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E17C9CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = sub_1E1AEF59C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_1E1AEF65C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1E1AF602C() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1E1AEF5EC();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1E17CA114(v14);
LABEL_17:

    return a2;
  }

  v35 = v5;
  (*(v16 + 32))(v18, v14, v15);
  result = sub_1E1AEF5CC();
  if (!result)
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_17;
  }

  v20 = result;
  v31 = v18;
  v32 = v15;
  v30 = v11;
  v33 = a2;
  v34 = a3;
  v21 = v16;
  v22 = v35;
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_12:

    (*(v16 + 8))(v31, v32);
    a2 = v33;
    goto LABEL_17;
  }

  v23 = 0;
  v37 = v6 + 16;
  while (1)
  {
    if (v23 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v6 + 16))(v8, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v22);
    if (sub_1E1AEF57C() == 0xD000000000000011 && 0x80000001E1B766D0 == v24)
    {
      break;
    }

    v25 = sub_1E1AF74AC();

    if (v25)
    {
      goto LABEL_15;
    }

    ++v23;
    result = (*(v6 + 8))(v8, v22);
    if (v36 == v23)
    {
      goto LABEL_12;
    }
  }

LABEL_15:

  v26 = v30;
  (*(v6 + 32))(v30, v8, v22);
  v27 = sub_1E1AEF58C();
  v29 = v28;
  (*(v21 + 8))(v31, v32);
  (*(v6 + 8))(v26, v22);
  a2 = v33;
  if (!v29)
  {
    goto LABEL_17;
  }

  return v27;
}

uint64_t sub_1E17CA114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PurchasesPresenter.__allocating_init(objectGraph:bag:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_bag;
  v6 = sub_1E1AF539C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4 + v5, a2, v6);
  v8 = sub_1E138C578(a1, 0, 0, 0);

  (*(v7 + 8))(a2, v6);
  return v8;
}

uint64_t PurchasesPresenter.init(objectGraph:bag:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_bag;
  v6 = sub_1E1AF539C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2 + v5, a2, v6);
  v8 = sub_1E138C578(a1, 0, 0, 0);

  (*(v7 + 8))(a2, v6);
  return v8;
}

uint64_t sub_1E17CA3A8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E17CA414(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;
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

uint64_t sub_1E17CA514()
{
  result = swift_beginAccess();
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    v2 = v0 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v3 + 8) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    v5 = [objc_opt_self() shared];
    v6 = sub_1E1AF527C();
    v7 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_1E17CABE4;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E17CA944;
    v9[3] = &block_descriptor_72;
    v8 = _Block_copy(v9);

    [v5 reloadDataWithBag:v6 completion:v8];
    _Block_release(v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E17CA6B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v7 familyMembers];
    sub_1E17CADB0();
    v9 = sub_1E1AF621C();

    if (v9 >> 62)
    {
      v10 = sub_1E1AF71CC();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong || (v12 = Strong + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view, swift_beginAccess(), v13 = swift_unknownObjectWeakLoadStrong(), v14 = *(v12 + 8), , !v13))
      {

        goto LABEL_14;
      }

      ObjectType = swift_getObjectType();
      (*(v14 + 16))(a2, a3, a4, ObjectType, v14);

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = v16 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    v19 = *(v17 + 8);

    if (v18)
    {
      v20 = swift_getObjectType();
      (*(v19 + 24))(v20, v19);
LABEL_13:
      swift_unknownObjectRelease();
    }
  }

LABEL_14:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    swift_beginAccess();
    *(v22 + 32) = 0;
    v23 = v22 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 8);
      v25 = swift_getObjectType();
      (*(*(v24 + 8) + 16))(v25);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E17CA944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_1E1AF5DFC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a2;
  v6(a2, a3, v7, v9);
}

uint64_t sub_1E17CAA1C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;

  return sub_1E1337DEC(v3);
}

uint64_t PurchasesPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view);
  return v0;
}

uint64_t PurchasesPresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_bag;
  v2 = sub_1E1AF539C();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PurchasesPresenter()
{
  result = qword_1ECEB96C8;
  if (!qword_1ECEB96C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17CAC68()
{
  result = sub_1E1AF539C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E17CADB0()
{
  result = qword_1ECEB7950;
  if (!qword_1ECEB7950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB7950);
  }

  return result;
}

_BYTE *GameInfoSummary.__allocating_init(supportsLeaderboards:supportsAchievements:supportsChallenges:)(char a1, char a2, char a3)
{
  result = swift_allocObject();
  result[16] = a1;
  result[17] = a2;
  result[18] = a3;
  return result;
}

_BYTE *GameInfoSummary.init(supportsLeaderboards:supportsAchievements:supportsChallenges:)(char a1, char a2, char a3)
{
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  return v3;
}

id sub_1E17CAE6C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v1 + 16);
  v7 = result;
  result = [v4 valueWithBool:v6 inContext:a1];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1E1AF6C5C();
  result = [v4 valueWithBool:*(v2 + 17) inContext:a1];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1E1AF6C5C();
  result = [v4 valueWithBool:*(v2 + 18) inContext:a1];
  if (result)
  {
    sub_1E1AF6C5C();

    return v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t ScreenshotsDisplayStyle.shouldShowScreenshots.getter()
{
  if (*v0)
  {
    v1 = sub_1E1AF74AC();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

AppStoreKit::ScreenshotsDisplayStyle_optional __swiftcall ScreenshotsDisplayStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t ScreenshotsDisplayStyle.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65657263732D6F6ELL;
  }
}

uint64_t sub_1E17CB1DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000001E1B57830;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001E1B57830;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x65657263732D6F6ELL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0073746F68736ELL;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65657263732D6F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0073746F68736ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E17CB2E0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17CB394()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E17CB434()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E17CB4F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0073746F68736ELL;
  v4 = 0x80000001E1B57830;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65657263732D6F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1E17CB564()
{
  result = qword_1ECEB96D8;
  if (!qword_1ECEB96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB96D8);
  }

  return result;
}

uint64_t TopChartsDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v11 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v12 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BF0);
  swift_allocObject();
  *(v10 + v12) = sub_1E1AF5BEC();
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_1E1AF436C();
  sub_1E1AF421C();

  sub_1E1AF55EC();

  sub_1E13E23F8(a2, v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v10 + v11) = a3;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = a4;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = a5;
  return v10;
}

Swift::Void __swiftcall TopChartsDiffablePageContentPresenter.fetchPage()()
{
  v1 = v0;
  v2 = type metadata accessor for TopChartsPageIntent();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF504C();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  v15 = *(v0 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage);
  if (v15)
  {
    *(v0 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_page) = v15;
    swift_retain_n();

    v30 = v15;
    v31 = 1;

    sub_1E1AF5BCC();

    sub_1E17CC488(v30, v31);
  }

  *(v0 + v14) = 0;

  v16 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage;
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) & 1) == 0)
  {
    sub_1E1307FE8(v1 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageUrl, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1E13ECBA0(v9);
      return;
    }

    (*(v11 + 32))(v13, v9, v10);
    *(v1 + v16) = 1;
    v17 = *(v1 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v19 = *(v18 + 48);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
        return;
      }

      *(v18 + 48) = v21;
      v22 = v21 == 0;
      swift_beginAccess();
      *(v18 + 40) = v22;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics))
    {
      *v6 = 1;
      v23 = v28;
      v28[13](v6, *MEMORY[0x1E69AB450], v4);
      sub_1E1AF509C();
      (v23[1])(v6, v4);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v28 = v30;
    v24 = v29;
    (*(v11 + 16))(v29, v13, v10);
    sub_1E1AF4C1C();

    sub_1E1AF422C();
    sub_1E1AF4BEC();

    v25 = sub_1E1AF4BFC();

    sub_1E13671B0(v24, v25, "AppStoreKit/TopChartsDiffablePageContentPresenter.swift", 55, 2);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v26 = sub_1E1361A80();

    v27 = sub_1E1AF68EC();
    v32 = v26;
    v33 = MEMORY[0x1E69AB720];
    v30 = v27;
    sub_1E1AF57FC();

    sub_1E17CC304(v24);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(&v30);
  }
}

uint64_t TopChartsDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = sub_1E1AF436C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v13 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v14 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BF0);
  swift_allocObject();
  *(v5 + v14) = sub_1E1AF5BEC();
  *(v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_1E1AF421C();

  sub_1E1AF55EC();

  (*(v10 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline, v12, v9);
  sub_1E13E23F8(a2, v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v5 + v13) = a3;

  v15 = v18;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v17;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v15;
  return v5;
}

uint64_t sub_1E17CBE88(void **a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    *(result + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_page) = v6;

    v11 = v6;
    v12 = 0;

    sub_1E1AF5BCC();
    sub_1E17CC488(v11, v12);
    *(v8 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
    if (*(v8 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender))
    {

      sub_1E1729254();
    }

    if (*(v8 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics))
    {
      v9 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v10 = sub_1E1AF3C3C();
      (*(*(v10 - 8) + 16))(v5, &v6[v9], v10);
      (*(v3 + 104))(v5, *MEMORY[0x1E69AB440], v2);
      sub_1E1AF508C();
      (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_1E17CC0B0(void *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v14 = a1;
    v15 = 0x80;
    v6 = a1;
    sub_1E1AF5BCC();

    sub_1E17CC488(v14, v15);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender);

    if (v9)
    {
      sub_1E1729254();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics);

    if (v11)
    {
      *v5 = a1;
      (*(v3 + 104))(v5, *MEMORY[0x1E69AB430], v2);
      v12 = a1;
      sub_1E1AF508C();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_1E17CC304(uint64_t a1)
{
  v2 = type metadata accessor for TopChartsPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TopChartsDiffablePageContentPresenter.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline;
  v2 = sub_1E1AF436C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E13ECBA0(v0 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);

  return v0;
}

uint64_t TopChartsDiffablePageContentPresenter.__deallocating_deinit()
{
  TopChartsDiffablePageContentPresenter.deinit();

  return swift_deallocClassInstance();
}

void sub_1E17CC488(void *a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for TopChartsDiffablePageContentPresenter()
{
  result = qword_1ECEB9710;
  if (!qword_1ECEB9710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E17CC4E8()
{
  sub_1E1AF436C();
  if (v0 <= 0x3F)
  {
    sub_1E130072C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E17CC614(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 9))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = ((*(a1 + 8) >> 7) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x3F) << 7)))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E17CC688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_1E17CC708(uint64_t result, char a2)
{
  v2 = *(result + 8) & 1 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 8) = v2;
  return result;
}

uint64_t VerticalFlexStackLayout.Metrics.init(fixedChildHeight:minInterChildSpacing:maxInterChildSpacing:layoutMargins:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a10;
  *(a7 + 72) = a11;
  return result;
}

__n128 VerticalFlexStackLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1E17CC798@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double VerticalFlexStackLayout.init(metrics:children:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v3;
  *(a3 + 64) = a1[4];
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 80) = a2;
  v5 = *(a2 + 16);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  result = (v5 - 1);
  *(a3 + 88) = result;
  return result;
}

__n128 VerticalFlexStackLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t VerticalFlexStackLayout.measure(toFit:with:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v21 = *(v0 + 32);
  sub_1E1AF6B5C();
  v10 = v9;
  if (v2)
  {
    v11 = *(v6 + 16);
    if (v11)
    {
      v12 = v6 + 32;
      v13 = 0.0;
      do
      {
        sub_1E1300B24(v12, v22);
        __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
        sub_1E1AF1DAC();
        v13 = v13 + v14;
        __swift_destroy_boxed_opaque_existential_1(v22);
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    v13 = v1 * *(v6 + 16);
  }

  if (v10 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  if (v4)
  {
    v16 = v15;
  }

  else
  {
    v16 = v3 * v7 + v13;
  }

  v8.n128_f64[0] = v21 * v7 + v13;
  if (v13 > v10)
  {
    v17 = v13;
  }

  else
  {
    v17 = v10;
  }

  if (v5)
  {
    v18 = v17;
  }

  else
  {
    v18 = v21 * v7 + v13;
  }

  MEMORY[0x1E68FA410](*&v16, 0, *&v18, 0, v8);
  LOBYTE(v22[0]) = v19 & 1;
  sub_1E1AF16FC();
  return sub_1E1AF6B7C();
}

Swift::Void __swiftcall VerticalFlexStackLayout.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  isa = with.super.isa;
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  v16 = *(v2 + 64);
  v17 = *(v2 + 80);
  v18 = *(v2 + 88);
  v19 = *(v17 + 16);
  v69 = v17;
  v68 = v13;
  v67 = v18;
  if (v19)
  {
    v63 = v16;
    v64 = v14;
    v65 = v12;
    v66 = v15;
    v20 = *v2;
    v71 = *(v2 + 8);
    *&v73[0] = MEMORY[0x1E69E7CC0];
    sub_1E135C440(0, v19, 0);
    v21 = *&v73[0];
    v22 = v17 + 32;
    v23 = *MEMORY[0x1E69E7040];
    v24 = (v8 + 104);
    v25 = (v8 + 8);
    do
    {
      sub_1E1300B24(v22, v74);
      if (v71)
      {
        v70 = v76;
        __swift_project_boxed_opaque_existential_1Tm(v74, v75);
        sub_1E1AF1DAC();
        v27 = v26;
        v29 = v28;
        (*v24)(v10, v23, v7);
        v30 = v10;
        v31 = v27;
        v32 = v29;
      }

      else
      {
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v33 = CGRectGetWidth(v77);
        (*v24)(v10, v23, v7);
        v30 = v10;
        v31 = v33;
        v32 = v20;
      }

      v34 = CGSize.rounded(_:)(v30, v31, v32);
      v36 = v35;
      (*v25)(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v74);
      *&v73[0] = v21;
      v38 = *(v21 + 16);
      v37 = *(v21 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_1E135C440((v37 > 1), v38 + 1, 1);
        v21 = *&v73[0];
      }

      *(v21 + 16) = v39;
      v40 = v21 + 16 * v38;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      v22 += 40;
      --v19;
    }

    while (v19);
    v41 = v69;
    v15 = v66;
    v12 = v65;
    LOBYTE(v14) = v64;
    v16 = v63;
    if (v39 <= 1)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v39 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v39)
  {
    v41 = v69;
    if (v39 <= 1)
    {
LABEL_10:
      v42 = 0;
      v43 = 0.0;
LABEL_16:
      v48 = v39 - v42;
      v49 = 16 * v42 + 40;
      do
      {
        v43 = v43 + *(v21 + v49);
        v49 += 16;
        --v48;
      }

      while (v48);
      goto LABEL_18;
    }

LABEL_13:
    v42 = v39 & 0xFFFFFFFFFFFFFFFELL;
    v44 = (v21 + 56);
    v43 = 0.0;
    v45 = v39 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v46 = *(v44 - 2);
      v47 = *v44;
      v44 += 4;
      v43 = v43 + v46 + v47;
      v45 -= 2;
    }

    while (v45);
    if (v39 == v42)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v43 = 0.0;
  v41 = v69;
LABEL_18:
  v50 = v15 + v16;
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  v51 = (CGRectGetHeight(v78) - v43 - v50) / v67;
  v52 = (v51 < v11) & ~v12 | v14;
  if (((v51 < v11) & ~v12) != 0)
  {
    v53 = v11;
  }

  else
  {
    v53 = v51;
  }

  if (v68 < v51)
  {
    v51 = v68;
  }

  if (v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = v51;
  }

  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  MinY = CGRectGetMinY(v79);
  v56 = *(v41 + 16);
  if (v56)
  {
    v57 = 0;
    v58 = v15 + MinY;
    v59 = v41 + 32;
    v60 = floor(v54);
    v61 = (v21 + 40);
    while (v57 < *(v41 + 16))
    {
      sub_1E1300B24(v59, v73);
      if (v39 == v57)
      {
        __swift_destroy_boxed_opaque_existential_1(v73);
        goto LABEL_34;
      }

      if (v57 >= *(v21 + 16))
      {
        goto LABEL_37;
      }

      ++v57;
      v62 = *v61;
      sub_1E1361B28(v73, v74);
      __swift_project_boxed_opaque_existential_1Tm(v74, v75);
      v80.origin.x = x;
      v80.origin.y = y;
      v80.size.width = width;
      v80.size.height = height;
      CGRectGetMinX(v80);
      v41 = v69;
      sub_1E1AF1D9C();
      __swift_destroy_boxed_opaque_existential_1(v74);
      v58 = v60 + v58 + v62;
      v59 += 40;
      v61 += 2;
      if (v56 == v57)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_34:
  }
}

uint64_t static VerticalFlexStackLayout.estimatedChildFitCount(in:metrics:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1E1AF6B5C();
  if (v2)
  {
    return 0;
  }

  v6 = 0.0;
  if (!v4)
  {
    v6 = v3;
  }

  if (v1 >= v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = v1;
  while (1)
  {
    result = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v8 = v1 + v6 + v8;
    ++v7;
    if (v8 >= v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1E17CCF9C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E17CCFB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E17CD000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E17CD0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v63 = a2;
  v4 = sub_1E1AF3E2C();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_1E1AF330C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = (a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v61 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v62 = a1;
  v17 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  v18 = qword_1ECEB1120;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_1ECEB9098);
  v20 = *(v10 + 16);
  v20(v15, v19, v9);
  v21 = sub_1E1AF649C();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v20(v12, v15, v9);
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v22, v12, v9);
  v25 = (v24 + v23);
  *v25 = v61;
  v25[1] = v17;
  sub_1E17957F8(0, 0, v8, &unk_1E1B04820, v24);

  sub_1E1308058(v8, &qword_1ECEB2D20);
  (*(v10 + 8))(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v26 = sub_1E1AF588C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF421C();
  v27 = v63;
  sub_1E1AF55EC();
  v28 = v69;
  ObjectType = swift_getObjectType();
  v30 = v16[1];
  v68 = *v16;
  v69 = v30;
  v31 = *(v28 + 56);

  v32 = v31(&v68, ObjectType, v28);
  v34 = v33;

  v35 = swift_getObjectType();
  v36 = v62;
  (*(v34 + 40))(&v68, *(v62 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_includeBetaApps), v35, v34);
  v37 = v74 >> 60;
  if ((v74 >> 60) > 3)
  {
    if (v37 <= 6)
    {
      if (v37 == 4)
      {
        sub_1E17D0648(v36);
        sub_1E139CEA8(&v68);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v26;
      }

      if (v37 != 5)
      {
        goto LABEL_23;
      }

      sub_1E17D02C4(v36, v60);
      v43 = sub_1E13006E4(0, &qword_1EE1E3430);
      swift_retain_n();
      v44 = sub_1E1AF68EC();
      v66 = v43;
      v67 = MEMORY[0x1E69AB720];
      v64 = v44;
      goto LABEL_21;
    }

    if (v37 == 7)
    {
      if (*(v36 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) != 1)
      {
        LOBYTE(v64) = v68 & 1;
        sub_1E17D0920(v36, &v64, v27, v60);
        v54 = sub_1E13006E4(0, &qword_1EE1E3430);
        swift_retain_n();
        v55 = sub_1E1AF68EC();
        v66 = v54;
        v67 = MEMORY[0x1E69AB720];
        v64 = v55;
        goto LABEL_21;
      }
    }

    else
    {
      if (v37 != 8)
      {
        goto LABEL_23;
      }

      v45 = (*(&v68 + 1) << 8) | ((*(&v68 + 5) | (HIBYTE(v68) << 16)) << 40) | v68;
      v46 = v73 | v75 | v72;
      if ((v74 != 0x8000000000000000 || v46 | v71 | v70 | v69 | v45) && (v74 != 0x8000000000000000 || v45 != 4 || v46 | v71 | v70 | v69))
      {
        goto LABEL_23;
      }
    }

LABEL_20:
    sub_1E17CDA0C(v36, v32, v34, v27, v60);
    v47 = sub_1E13006E4(0, &qword_1EE1E3430);
    swift_retain_n();
    v48 = sub_1E1AF68EC();
    v66 = v47;
    v67 = MEMORY[0x1E69AB720];
    v64 = v48;
LABEL_21:
    sub_1E1AF57FC();

    sub_1E139CEA8(&v68);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if ((v37 - 2) < 2)
  {
    goto LABEL_20;
  }

  if (v37)
  {
    if (v37 == 1 && (v68 & 1) != 0)
    {
      v38 = v16[1];
      v64 = *v16;
      v65 = v38;
      v39 = *(v28 + 40);

      v39(&v64, ObjectType, v28);

      v41 = v57;
      v40 = v58;
      v42 = v59;
      (*(v58 + 104))(v57, *MEMORY[0x1E69AB010], v59);
      sub_1E1AF586C();
LABEL_24:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v40 + 8))(v41, v42);
      return v26;
    }

LABEL_23:
    v49 = v16[1];
    v64 = *v16;
    v65 = v49;
    v50 = *(v28 + 40);

    v50(&v64, ObjectType, v28);

    v41 = v57;
    v40 = v58;
    v42 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x1E69AB010], v59);
    sub_1E1AF586C();
    sub_1E139CEA8(&v68);
    goto LABEL_24;
  }

  sub_1E17CE668(v36, 1, v32, v34, v60);
  v52 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_retain_n();
  v53 = sub_1E1AF68EC();
  v66 = v52;
  v67 = MEMORY[0x1E69AB720];
  v64 = v53;
  sub_1E1AF57FC();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(&v64);
  return v26;
}

uint64_t sub_1E17CDA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CommerceDialogHandler();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v10 = *&v32[0];

  swift_unknownObjectRetain();
  v11 = CommerceDialogHandler.presentingSceneIdentifier.getter();
  PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)(a1, a3, 0, v11, v12, &v22);
  if (v24)
  {
    v32[6] = v28;
    v32[7] = v29;
    v32[8] = v30;
    v32[9] = v31;
    v32[2] = v24;
    v32[3] = v25;
    v32[4] = v26;
    v32[5] = v27;
    v32[0] = v22;
    v32[1] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    v13 = sub_1E1AF588C();
    if (*(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId + 8) && (objc_allocWithZone(MEMORY[0x1E69635F8]), , v14 = sub_1E17CFD80(), v14))
    {

      sub_1E17CFF70(a1, a2, a3, a4);
      v20 = sub_1E13006E4(0, &qword_1EE1E3430);
      swift_retain_n();
      v21 = sub_1E1AF68EC();
      *(&v23 + 1) = v20;
      *&v24 = MEMORY[0x1E69AB720];
      *&v22 = v21;
      sub_1E1AF57FC();
    }

    else
    {
      type metadata accessor for Commerce();
      sub_1E1AF55EC();
      sub_1E16122C0(v32, a2, a3);
      v15 = swift_allocObject();
      v15[2] = a5;
      v15[3] = v13;
      v15[4] = a1;
      v15[5] = a4;
      v16 = sub_1E13006E4(0, &qword_1EE1E3430);

      v17 = sub_1E1AF68EC();
      *(&v23 + 1) = v16;
      *&v24 = MEMORY[0x1E69AB720];
      *&v22 = v17;
      sub_1E1AF57FC();
    }

    sub_1E16194D4(v32);
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    sub_1E1308058(&v22, qword_1ECEB97A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    type metadata accessor for OfferActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 6;
    v13 = sub_1E1AF581C();
  }

  return v13;
}

void sub_1E17CDDD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF3E2C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v10 = a1[1];
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      (*(v6 + 104))(v9, *MEMORY[0x1E69AB010], v5, v7);
      sub_1E1AF586C();
      (*(v6 + 8))(v9, v5);
      v12 = *(a3 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_buyCompletedAction);
      if (v12)
      {
        v25[3] = type metadata accessor for Action();
        v25[4] = sub_1E17D0F94(qword_1EE1D2F80, type metadata accessor for Action);
        v25[0] = v12;
        type metadata accessor for OfferActionImplementation();
        swift_retain_n();
        swift_getWitnessTable();
        sub_1E1834054(v25);

        __swift_destroy_boxed_opaque_existential_1(v25);
      }
    }

    else
    {
      v18 = v11 | v10;
      v20 = *(a3 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
      v19 = *(a3 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
      type metadata accessor for OfferActionImplementation.ImplementationError();
      swift_getWitnessTable();
      v22 = swift_allocError();
      *v21 = v20;
      *(v21 + 8) = v19;
      if (v18)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      *(v21 + 16) = v23;

      sub_1E1AF584C();
    }
  }

  else
  {
    v13 = objc_opt_self();

    v14 = [v13 defaultCenter];
    if (qword_1EE1E7578 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE1E7580;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    v25[0] = 0x64496D616461;
    v25[1] = 0xE600000000000000;
    sub_1E1AF6F6C();
    *(inited + 96) = &type metadata for AdamId;
    *(inited + 72) = v11;
    *(inited + 80) = v10;
    sub_1E13609A4(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEBCAA0);
    v17 = sub_1E1AF5C6C();

    [v14 postNotificationName:v15 object:0 userInfo:v17];

    (*(v6 + 104))(v9, *MEMORY[0x1E69AB010], v5);
    sub_1E1AF586C();
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1E17CE204()
{
  if (qword_1ECEB12B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

uint64_t sub_1E17CE3D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v9 = v17;
  v10 = v18;
  if (a1)
  {
    v11 = a1;
    sub_1E1AF584C();
    v12.underlyingAdamID._object = swift_getObjectType();
    v17 = a4;
    v18 = a5;
    v12.underlyingAdamID._countAndFlagsBits = &v17;
    AppStateController.clearWaiting(for:)(v12);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v17 = a4;
    v18 = a5;
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = a4;
    v14[5] = a5;
    v14[6] = a3;
    v15 = *(v10 + 24);
    swift_unknownObjectRetain();

    v15(&v17, sub_1E17D0F84, v14, ObjectType, v10);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1E17CE534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E1AF3E2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.underlyingAdamID._object = swift_getObjectType();
  v12[0] = a3;
  v12[1] = a4;
  v10.underlyingAdamID._countAndFlagsBits = v12;
  AppStateController.clearWaiting(for:)(v10);
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB010], v6);
  sub_1E1AF586C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E17CE668(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v59 = sub_1E1AF0F7C();
  v9 = *(v59 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v60 = a1;
  v14 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v15 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  aBlock = v14;
  v63 = v15;
  AdamId.numberValue.getter();
  if (v16)
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    v18 = sub_1E1AF588C();
    v56 = a3;
    v57 = v18;
    ObjectType = swift_getObjectType();
    v55 = a4;
    v20 = (*(a4 + 24))(ObjectType, a4) & a2;
    sub_1E1AF483C();
    sub_1E1AF482C();
    sub_1E1AF0F4C();
    sub_1E1AF6A1C();
    v21 = sub_1E1AF482C();
    v54 = v20 & 1;
    if (v20)
    {
      v22 = "RootActionRunner[ASDAppQuery.BetaApps]:cancelAction";
    }

    else
    {
      v22 = "RootActionRunner[ASDAppQuery]:cancelAction";
    }

    if (v20)
    {
      v23 = 51;
    }

    else
    {
      v23 = 42;
    }

    v51 = v23;
    v52 = v22;
    if (v20)
    {
      v24 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v24 = &selRef_queryForStoreItemIDs_;
    }

    v25 = v13;
    v53 = v13;
    sub_1E1AF0F3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1E1B06D70;
    *(v26 + 32) = v17;
    sub_1E13006E4(0, &qword_1EE1E31F0);
    v49 = v17;
    v27 = sub_1E1AF620C();

    v50 = [objc_opt_self() *v24];

    v28 = v58;
    v29 = v59;
    (*(v9 + 16))(v58, v25, v59);
    v30 = (*(v9 + 80) + 41) & ~*(v9 + 80);
    v31 = v30 + v10;
    v32 = (v30 + v10) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v51;
    v38 = v52;
    *(v36 + 16) = v61;
    *(v36 + 24) = v38;
    *(v36 + 32) = v37;
    *(v36 + 40) = 2;
    (*(v9 + 32))(v36 + v30, v28, v29);
    *(v36 + v31) = v54;
    *(v36 + v32 + 8) = v60;
    v39 = (v36 + v33);
    v40 = v55;
    *v39 = v56;
    v39[1] = v40;
    v41 = v57;
    *(v36 + v34) = v57;
    v42 = v49;
    *(v36 + v35) = v49;
    v66 = sub_1E17D0E80;
    v67 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_1E16C3118;
    v65 = &block_descriptor_24;
    v43 = _Block_copy(&aBlock);
    v44 = v42;

    swift_unknownObjectRetain();

    v45 = v50;
    [v50 executeQueryWithResultHandler_];
    _Block_release(v43);

    (*(v9 + 8))(v53, v29);
    return v41;
  }

  else
  {
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v47 = sub_1E1AF591C();
    __swift_project_value_buffer(v47, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    type metadata accessor for OfferActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    *v48 = v14;
    *(v48 + 8) = v15;
    *(v48 + 16) = 0;

    return sub_1E1AF581C();
  }
}

void sub_1E17CEC30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v39 = a8;
  v40 = a13;
  v38 = a12;
  v41 = a11;
  v15 = sub_1E1AF3E2C();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v18 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (a1 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_4;
    }

LABEL_13:
    if (a7)
    {
      sub_1E17CE668(v39, 0, a9, a10, v40);
      v30 = sub_1E13006E4(0, &qword_1EE1E3430);
      swift_retain_n();
      v31 = sub_1E1AF68EC();
      v43 = v30;
      v44 = MEMORY[0x1E69AB720];
      v42[0] = v31;
      sub_1E1AF57FC();

      __swift_destroy_boxed_opaque_existential_1(v42);
      return;
    }

    if (qword_1ECEB12B0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1E68FFD80](0, a1);
    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(a1 + 32);
LABEL_7:
    v20 = v19;
    v21 = [v19 progress];
    if (v21)
    {
      v22 = v21;
      [v21 cancel];
      v23 = v37;
      (*(v37 + 104))(v17, *MEMORY[0x1E69AB010], v15);
      sub_1E1AF586C();

      (*(v23 + 8))(v17, v15);
      return;
    }

    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1E1AF591C();
    __swift_project_value_buffer(v24, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    v43 = sub_1E13006E4(0, &qword_1EE1E31F0);
    v42[0] = v38;
    v25 = v38;
    sub_1E1AF383C();
    sub_1E1308058(v42, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v27 = *(v39 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
    v26 = *(v39 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
    type metadata accessor for OfferActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v28 = swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v26;
    *(v29 + 16) = 4;

    sub_1E1AF584C();

    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  swift_once();
LABEL_16:
  v32 = sub_1E1AF591C();
  __swift_project_value_buffer(v32, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF382C();
  v43 = sub_1E13006E4(0, &qword_1EE1E31F0);
  v42[0] = v38;
  v33 = v38;
  sub_1E1AF383C();
  sub_1E1308058(v42, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  sub_1E1AF54AC();

  v35 = *(v39 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v34 = *(v39 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  type metadata accessor for OfferActionImplementation.ImplementationError();
  swift_getWitnessTable();
  v28 = swift_allocError();
  *v36 = v35;
  *(v36 + 8) = v34;
  *(v36 + 16) = 4;

  sub_1E1AF584C();
LABEL_17:
}

void sub_1E17CF314(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E1AF3E2C();
  v10 = *(v9 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a4;
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF591C();
    __swift_project_value_buffer(v27, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    v35 = sub_1E13006E4(0, &qword_1EE1E31F0);
    v34[0] = a3;
    v28 = a3;
    sub_1E1AF383C();
    sub_1E1308058(v34, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v29 = *(a5 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
    v30 = *(a5 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
    type metadata accessor for OfferActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v23 = swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 5;

    sub_1E1AF584C();
    goto LABEL_15;
  }

  v25 = v11;
  v26 = sub_1E1AF71CC();
  v11 = v25;
  if (!v26)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = v11;
    v16 = MEMORY[0x1E68FFD80](0, a1, v12);
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 pause];
      (*(v10 + 104))(v14, *MEMORY[0x1E69AB010], v15);
      sub_1E1AF586C();

      (*(v10 + 8))(v14, v15);
      return;
    }

    v33 = a4;
    if (qword_1ECEB12B0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = v11;
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v19 = sub_1E1AF591C();
  __swift_project_value_buffer(v19, qword_1ECEBA3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF382C();
  v35 = sub_1E13006E4(0, &qword_1EE1E31F0);
  v34[0] = a3;
  v20 = a3;
  sub_1E1AF383C();
  sub_1E1308058(v34, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  sub_1E1AF54AC();

  v21 = *(a5 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v22 = *(a5 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  type metadata accessor for OfferActionImplementation.ImplementationError();
  swift_getWitnessTable();
  v23 = swift_allocError();
  *v24 = v21;
  *(v24 + 8) = v22;
  *(v24 + 16) = 5;

  sub_1E1AF584C();

LABEL_15:
}

void sub_1E17CF8F8(unint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_14:
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    v15 = sub_1E13006E4(0, &qword_1EE1E31F0);
    v14[0] = a3;
    v12 = a3;
    sub_1E1AF383C();
    sub_1E1308058(v14, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF54AC();
    goto LABEL_17;
  }

  v3 = a1;
  v10 = sub_1E1AF71CC();
  a1 = v3;
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1E68FFD80](0, a1);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = *(a1 + 32);
  }

  v3 = v6;
  v7 = [v6 progress];
  if (!v7)
  {
    if (qword_1ECEB12B0 == -1)
    {
LABEL_12:
      v8 = sub_1E1AF591C();
      __swift_project_value_buffer(v8, qword_1ECEBA3E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B03760;
      sub_1E1AF382C();
      v15 = sub_1E13006E4(0, &qword_1EE1E31F0);
      v14[0] = a3;
      v9 = a3;
      sub_1E1AF383C();
      sub_1E1308058(v14, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      sub_1E1AF54AC();

LABEL_17:

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v13 = v7;
  [v7 resume];
}

id sub_1E17CFD80()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1E1AF5DBC();

  v6[0] = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1E1AEFB2C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1E17CFE4C(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v7 = sub_1E1AF588C();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = v6;
  v8[5] = v5;
  v11[4] = sub_1E17D0F78;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1306F24;
  v11[3] = &block_descriptor_37_0;
  v9 = _Block_copy(v11);

  [a1 startWithErrorHandler_];
  _Block_release(v9);
  return v7;
}

uint64_t sub_1E17CFF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId + 8);
  if (!v4 || (v9 = objc_allocWithZone(MEMORY[0x1E69635F8]), , v10 = sub_1E17CFD80(), !v10))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    type metadata accessor for OfferActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    *v11 = v5;
    *(v11 + 8) = v4;
    *(v11 + 16) = 3;

    return sub_1E1AF581C();
  }

  v13 = objc_allocWithZone(MEMORY[0x1E698B568]);
  v14 = sub_1E1AF5DBC();
  v15 = [v13 initWithBundleID_];

  v16 = (a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v17 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  v35 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v36 = v17;
  AdamId.numberValue.getter();
  v19 = v18;
  [v15 setStoreItemID_];

  [v15 setUserInitiated_];
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v35, ObjectType, a3);
  v21 = v41 >> 60;
  if (v41 >> 60 == 3)
  {
    goto LABEL_15;
  }

  if (v21 != 8 || ((v22 = v40 | v42, v23 = v38 | v37 | v36, v41 != 0x8000000000000000) || v22 | v35 | v39 | v23) && (v41 != 0x8000000000000000 || v35 != 4 || v22 | v39 | v23))
  {
    LOBYTE(v21) = 0;
LABEL_15:
    sub_1E139CEA8(&v35);
    goto LABEL_16;
  }

  LOBYTE(v21) = 1;
LABEL_16:
  v24 = (*(a3 + 56))(ObjectType, a3);
  if (v24)
  {
    v26 = v25;
    v33 = v24;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v26 = v34;
  }

  v27 = swift_getObjectType();
  v28 = v16[1];
  v33 = *v16;
  v34 = v28;
  v32 = v21;
  v29 = *(v26 + 64);

  v29(&v33, &v32, v27, v26);

  v30 = v16[1];
  v33 = *v16;
  v34 = v30;

  v31 = sub_1E17CFE4C(v15, &v33, a4);
  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_1E17D02C4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  v19 = v5;
  v20 = v4;
  AdamId.numberValue.getter();
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    v8 = sub_1E1AF588C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E1B06D70;
    *(v9 + 32) = v7;
    sub_1E13006E4(0, &qword_1EE1E31F0);
    v10 = v7;
    v11 = sub_1E1AF620C();

    v12 = [objc_opt_self() queryForStoreItemIDs_];

    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = v10;
    v13[4] = v8;
    v13[5] = a1;
    v23 = sub_1E17D0E6C;
    v24 = v13;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1E16C3118;
    v22 = &block_descriptor_73;
    v14 = _Block_copy(&v19);
    v15 = v10;

    [v12 executeQueryWithResultHandler_];
    _Block_release(v14);

    return v8;
  }

  else
  {
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF591C();
    __swift_project_value_buffer(v17, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    type metadata accessor for OfferActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    *v18 = v5;
    *(v18 + 8) = v4;
    *(v18 + 16) = 0;

    return sub_1E1AF581C();
  }
}

void sub_1E17D0648(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v13 = v1;
  AdamId.numberValue.getter();
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E1B06D70;
    *(v4 + 32) = v3;
    sub_1E13006E4(0, &qword_1EE1E31F0);
    v5 = v3;
    v6 = sub_1E1AF620C();

    v7 = [objc_opt_self() queryForStoreItemIDs_];

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v16 = sub_1E17D0E78;
    v17 = v8;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1E16C3118;
    v15 = &block_descriptor_18;
    v9 = _Block_copy(&v12);
    v10 = v5;

    [v7 executeQueryWithResultHandler_];
    _Block_release(v9);
  }

  else
  {
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v11 = sub_1E1AF591C();
    __swift_project_value_buffer(v11, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E17D0920(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v42 = sub_1E1AEFEAC();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_1E1AF3E1C();
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *a2;
  v18 = (a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v20 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v19 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  *&v54 = v20;
  *(&v54 + 1) = v19;
  AdamId.numberValue.getter();
  if (v21)
  {
    v43 = a4;

    v23 = *v18;
    v22 = v18[1];

    sub_1E1AF3DFC();
    v24 = type metadata accessor for OpenAppAction();
    v25 = swift_allocObject();
    v26 = (v25 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
    *v26 = v23;
    v26[1] = v22;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v17;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = 1;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v27 = v44;
    (*(v44 + 16))(v13, v16, v11);
    v28 = sub_1E1AF46DC();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    v29 = (v25 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v29 = 0u;
    v29[1] = 0u;
    sub_1E138853C(&v54, &v48);
    if (*(&v49 + 1))
    {
      v51 = v48;
      v52 = v49;
      v53 = v50;
    }

    else
    {
      v32 = v40;
      sub_1E1AEFE9C();
      v33 = sub_1E1AEFE7C();
      v35 = v34;
      (*(v41 + 8))(v32, v42);
      v46 = v33;
      v47 = v35;
      sub_1E1AF6F6C();
      sub_1E1308058(&v48, &unk_1ECEB5670);
    }

    sub_1E1308058(&v54, &unk_1ECEB5670);
    (*(v27 + 8))(v16, v11);
    v36 = v25 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v37 = v52;
    *v36 = v51;
    *(v36 + 16) = v37;
    *(v36 + 32) = v53;
    sub_1E134B7C8(v10, v25 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    (*(v27 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v13, v11);
    *(&v55 + 1) = v24;
    v56 = sub_1E17D0F94(&qword_1ECEB7388, type metadata accessor for OpenAppAction);
    *&v54 = v25;
    type metadata accessor for OfferActionImplementation();

    swift_getWitnessTable();
    v38 = sub_1E1834054(&v54);

    __swift_destroy_boxed_opaque_existential_1(&v54);
    return v38;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    type metadata accessor for OfferActionImplementation.ImplementationError();
    swift_getWitnessTable();
    swift_allocError();
    *v30 = v20;
    *(v30 + 8) = v19;
    *(v30 + 16) = 0;

    return sub_1E1AF581C();
  }
}

void sub_1E17D0E80(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_1E1AF0F7C() - 8);
  v7 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = ((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1E17CEC30(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v7, *(v2 + v8), *(v2 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t sub_1E17D0F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E17D0FE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit25OfferActionImplementationV0F5ErrorOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1E17D1040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E17D1088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1E17D10CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1E17D1100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v47 - v7;
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - v18;
  if ((sub_1E1AF37AC() & 1) == 0)
  {
    v48 = v8;
    v49 = v9;
    v50 = a2;
    v52 = a3;
    sub_1E1AF381C();
    sub_1E17D3F30();
    sub_1E1AF369C();
    v27 = *(v12 + 8);
    v25 = (v12 + 8);
    v26 = v27;
    v27(v19, v11);
    v28 = v57;
    v29 = v11;
    v30 = a1;
    sub_1E1AF381C();
    sub_1E17D3F84();
    sub_1E1AF369C();
    v51 = v29;
    v27(v19, v29);
    v22 = v57;
    if (v28 <= 3)
    {
      if (v28 > 1)
      {
        (*(v49 + 8))(v50, v48);
        result = v26(v30, v51);
        v22 = 0;
        v23 = 0uLL;
        v24 = 0x8000;
        if (v28 == 2)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        goto LABEL_26;
      }

      v31 = v50;
      if (v28)
      {
        v40 = v53;
        sub_1E1AF381C();
        v21 = JSONObject.appStoreColor.getter();
        (*(v49 + 8))(v31, v48);
        v41 = v51;
        v26(v30, v51);
        result = v26(v40, v41);
        v23 = 0uLL;
        if (v21)
        {
          v24 = 0x2000;
          goto LABEL_26;
        }
      }

      else
      {
        type metadata accessor for Artwork();
        sub_1E1AF381C();
        v32 = v48;
        v33 = v49;
        (*(v49 + 16))(v55, v31, v48);
        sub_1E13ECC08(&qword_1EE1E4BB8, type metadata accessor for Artwork);
        sub_1E1AF464C();
        (*(v33 + 8))(v31, v32);
        result = v26(v30, v51);
        v21 = v57;
        v23 = 0uLL;
        if (v57)
        {
          v24 = 0;
LABEL_26:
          a3 = v52;
          goto LABEL_27;
        }
      }

      v22 = 0;
LABEL_25:
      v24 = 0x8000;
      goto LABEL_26;
    }

    if (v28 > 5)
    {
      if (v28 == 6)
      {
        (*(v49 + 8))(v50, v48);
        result = v26(v30, v51);
        v22 = 0;
        v23 = 0uLL;
        v24 = 0x8000;
        v21 = 3;
        goto LABEL_26;
      }

      (*(v49 + 8))(v50, v48);
      v38 = v30;
      v39 = v51;
    }

    else
    {
      if (v28 != 4)
      {
        sub_1E1AF381C();
        v43 = v49;
        v42 = v50;
        v44 = v48;
        (*(v49 + 16))(v55, v50, v48);
        sub_1E17D3FD8();
        sub_1E1AF464C();
        (*(v43 + 8))(v42, v44);
        result = v26(v30, v51);
        if (v60 != 255)
        {
          v23 = v59;
          v45 = v60 | (v22 << 8);
          v21 = v57;
          v22 = v58;
          v24 = v45 | 0x6000;
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      sub_1E1AF381C();
      v34 = v54;
      sub_1E1AF374C();
      v35 = v51;
      v26(v15, v51);
      v36 = sub_1E1AF5A6C();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v34, 1, v36) != 1)
      {
        sub_1E13006E4(0, &qword_1EE1E3208);
        v55 = v25;
        v21 = sub_1E1AF59FC();
        (*(v37 + 8))(v34, v36);
        sub_1E1AF381C();
        sub_1E17D402C();
        sub_1E1AF369C();
        v26(v19, v35);
        v46 = v57;
        sub_1E1AF381C();
        sub_1E1AF369C();
        (*(v49 + 8))(v50, v48);
        v26(v30, v35);
        result = v26(v19, v35);
        v22 = v46 | (v22 << 16) | (v56 << 8);
        v23 = 0uLL;
        v24 = 0x4000;
        goto LABEL_26;
      }

      sub_1E1308058(v34, &qword_1ECEB1F90);
      (*(v49 + 8))(v50, v48);
      v38 = v30;
      v39 = v35;
    }

    result = v26(v38, v39);
LABEL_23:
    v21 = 0;
    v22 = 0;
    v23 = 0uLL;
    goto LABEL_25;
  }

  (*(v9 + 8))(a2, v8);
  result = (*(v12 + 8))(a1, v11);
  v21 = 0;
  v22 = 0;
  v23 = 0uLL;
  v24 = 0x8000;
LABEL_27:
  *a3 = v21;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  *(a3 + 32) = v24;
  return result;
}

AppStoreKit::ShelfBackgroundStyle_optional __swiftcall ShelfBackgroundStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t ShelfBackgroundStyle.rawValue.getter()
{
  v1 = 0x746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6974616D6F747561;
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

uint64_t sub_1E17D1A60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 0x6974616D6F747561;
    v3 = 0xE900000000000063;
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
    v8 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
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

void sub_1E17D1B68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 0x6974616D6F747561;
    v4 = 0xE900000000000063;
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

uint64_t sub_1E17D1BC0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17D1C5C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E17D1CE4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

AppStoreKit::ShelfBackgroundGradientLocation_optional __swiftcall ShelfBackgroundGradientLocation.init(rawValue:)(Swift::String rawValue)
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

uint64_t ShelfBackgroundGradientLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696461654C706F74;
  v3 = 0x654C6D6F74746F62;
  if (v1 != 6)
  {
    v3 = 0x676E696461656CLL;
  }

  v4 = 0x72546D6F74746F62;
  if (v1 != 4)
  {
    v4 = 0x6D6F74746F62;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C69617254706F74;
  if (v1 != 2)
  {
    v5 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v2 = 7368564;
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

void sub_1E17D1F24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x696461654C706F74;
  v5 = 0xED0000676E696461;
  v6 = 0x654C6D6F74746F62;
  if (v2 != 6)
  {
    v6 = 0x676E696461656CLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEE00676E696C6961;
  v8 = 0x72546D6F74746F62;
  if (v2 != 4)
  {
    v8 = 0x6D6F74746F62;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000676E69;
  v10 = 0x6C69617254706F74;
  if (v2 != 2)
  {
    v10 = 0x676E696C69617274;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 7368564;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1E17D2064()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17D2130()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E17D21E8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17D22B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E17D3EE4();
  *a1 = result;
  return result;
}

void sub_1E17D22E0(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x726F6C6F43656E6FLL;
  v4 = 0xEA0000000000726FLL;
  v5 = 0x6C6F436565726874;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6F4372756F66;
    v4 = 0xE900000000000072;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F436F7774;
    v2 = 0xE800000000000000;
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

uint64_t ShelfBackgroundMaterialGradientColors.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v96 = a2;
  v93 = a3;
  v97 = sub_1E1AF380C();
  v4 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v86 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v86 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v86 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  sub_1E1AF381C();
  sub_1E17D2F00();
  v32 = v95;
  sub_1E1AF36AC();
  if (!v32)
  {
    v87 = v16;
    v88 = v22;
    v37 = v94;
    v95 = 0;
    v38 = v31;
    v39 = v97;
    v40 = *(v4 + 8);
    v40(v38);
    v41 = v98;
    if (v98 > 1u)
    {
      if (v98 != 2)
      {
        v65 = a1;
        sub_1E1AF381C();
        v66 = JSONObject.appStoreColor.getter();
        v67 = v37;
        v53 = v40;
        v49 = v66;
        (v40)(v67, v39);
        if (v49)
        {
          v68 = v92;
          sub_1E1AF381C();
          v69 = JSONObject.appStoreColor.getter();
          (v40)(v68, v39);
          if (v69)
          {
            v92 = v69;
            v70 = v91;
            sub_1E1AF381C();
            v71 = v65;
            v52 = JSONObject.appStoreColor.getter();
            v53(v70, v39);
            if (v52)
            {
              v72 = v89;
              v94 = v71;
              sub_1E1AF381C();
              v51 = JSONObject.appStoreColor.getter();
              v53(v72, v39);
              if (v51)
              {
                v50 = v92;
                goto LABEL_17;
              }

              v49 = v52;
              v65 = v94;
            }

            else
            {

              v49 = v92;
              v65 = v71;
            }
          }
        }

        v83 = sub_1E1AF5A7C();
        sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        *v84 = 0x73726F6C6F63;
        v84[1] = 0xE600000000000000;
        v84[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
        (*(*(v83 - 8) + 104))(v84, *MEMORY[0x1E69AB690], v83);
        swift_willThrow();
        v85 = sub_1E1AF39DC();
        (*(*(v85 - 8) + 8))(v96, v85);
        return (v53)(v65, v39);
      }

      v54 = a1;
      sub_1E1AF381C();
      v55 = JSONObject.appStoreColor.getter();
      v56 = v19;
      v57 = v40;
      v49 = v55;
      (v40)(v56, v39);
      if (v49)
      {
        v58 = v87;
        sub_1E1AF381C();
        v50 = JSONObject.appStoreColor.getter();
        v57(v58, v39);
        v86 = v57;
        if (v50)
        {
          v59 = v90;
          v94 = a1;
          sub_1E1AF381C();
          v51 = JSONObject.appStoreColor.getter();
          v57(v59, v39);
          if (v51)
          {
            v52 = 0;
            v53 = v86;
            v39 = v97;
LABEL_17:
            v63 = sub_1E1AF39DC();
            (*(*(v63 - 8) + 8))(v96, v63);
            result = (v53)(v94, v39);
            v64 = v93;
            *v93 = v49;
            v64[1] = v50;
            v64[2] = v51;
            v64[3] = v52;
            *(v64 + 32) = v41;
            return result;
          }

          v76 = v94;

          v49 = v50;
        }

        else
        {
          v76 = a1;
        }

        v57 = v86;
        v39 = v97;
        v54 = v76;
      }

      v80 = sub_1E1AF5A7C();
      sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v81 = 0x73726F6C6F63;
      v81[1] = 0xE600000000000000;
      v81[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
      (*(*(v80 - 8) + 104))(v81, *MEMORY[0x1E69AB690], v80);
      swift_willThrow();
      v82 = sub_1E1AF39DC();
      (*(*(v82 - 8) + 8))(v96, v82);
      return (v57)(v54, v39);
    }

    if (!v98)
    {
      v42 = v28;
      v43 = a1;
      sub_1E1AF381C();
      v44 = JSONObject.appStoreColor.getter();
      v45 = v42;
      v46 = v39;
      v47 = v39;
      v48 = v40;
      v49 = v44;
      (v40)(v45, v47);
      if (!v49)
      {
        v73 = sub_1E1AF5A7C();
        sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        *v74 = 0x726F6C6F63;
        v74[1] = 0xE500000000000000;
        v74[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
        (*(*(v73 - 8) + 104))(v74, *MEMORY[0x1E69AB690], v73);
        swift_willThrow();
        v75 = sub_1E1AF39DC();
        (*(*(v75 - 8) + 8))(v96, v75);
        return (v40)(v43, v46);
      }

      v94 = a1;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = v48;
      goto LABEL_16;
    }

    sub_1E1AF381C();
    v60 = v40;
    v49 = JSONObject.appStoreColor.getter();
    (v40)(v25, v39);
    if (v49)
    {
      v61 = v88;
      sub_1E1AF381C();
      v50 = JSONObject.appStoreColor.getter();
      v62 = v61;
      v46 = v39;
      v60(v62, v39);
      v53 = v60;
      if (v50)
      {
        v94 = a1;
        v51 = 0;
        v52 = 0;
LABEL_16:
        v39 = v46;
        goto LABEL_17;
      }
    }

    v77 = sub_1E1AF5A7C();
    sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v78 = 0x73726F6C6F63;
    v78[1] = 0xE600000000000000;
    v78[2] = &type metadata for ShelfBackgroundMaterialGradientColors;
    (*(*(v77 - 8) + 104))(v78, *MEMORY[0x1E69AB690], v77);
    swift_willThrow();
    v79 = sub_1E1AF39DC();
    (*(*(v79 - 8) + 8))(v96, v79);
    return (v60)(a1, v39);
  }

  v33 = sub_1E1AF39DC();
  (*(*(v33 - 8) + 8))(v96, v33);
  v34 = *(v4 + 8);
  v35 = v97;
  v34(a1, v97);
  return (v34)(v31, v35);
}

unint64_t sub_1E17D2F00()
{
  result = qword_1ECEB9830;
  if (!qword_1ECEB9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9830);
  }

  return result;
}

uint64_t ShelfBackgroundMaterialGradientColors.hash(into:)()
{
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      MEMORY[0x1E6900360](2);
    }

    else
    {
      MEMORY[0x1E6900360](3);
      sub_1E1AF6D1C();
    }

    sub_1E1AF6D1C();
    sub_1E1AF6D1C();
  }

  else if (*(v0 + 32))
  {
    MEMORY[0x1E6900360](1);
    sub_1E1AF6D1C();
  }

  else
  {
    MEMORY[0x1E6900360](0);
  }

  return sub_1E1AF6D1C();
}

uint64_t ShelfBackgroundMaterialGradientColors.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1E1AF762C();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x1E6900360](2);
    }

    else
    {
      MEMORY[0x1E6900360](3);
      sub_1E1AF6D1C();
    }

    sub_1E1AF6D1C();
    sub_1E1AF6D1C();
  }

  else if (v1)
  {
    MEMORY[0x1E6900360](1);
    sub_1E1AF6D1C();
  }

  else
  {
    MEMORY[0x1E6900360](0);
  }

  sub_1E1AF6D1C();
  return sub_1E1AF767C();
}

uint64_t sub_1E17D3164()
{
  sub_1E1AF762C();
  ShelfBackgroundMaterialGradientColors.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E17D31BC()
{
  sub_1E1AF762C();
  ShelfBackgroundMaterialGradientColors.hash(into:)();
  return sub_1E1AF767C();
}

id sub_1E17D3210@<X0>(void *a1@<X8>)
{
  result = JSONObject.appStoreColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E17D3288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E17D3E98();
  *a1 = result;
  return result;
}

void sub_1E17D32B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6B726F77747261;
  v5 = 0xED00006563696F68;
  v6 = 0x4373726F74696465;
  if (v2 != 6)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746E656964617267;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001E1B57260;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB0000000079616CLL;
  v10 = 0x7265764F6B726164;
  if (v2 != 2)
  {
    v10 = 0x7463617265746E69;
    v9 = 0xEB00000000657669;
  }

  if (*v1)
  {
    v4 = 0x726F6C6F63;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t _s11AppStoreKit37ShelfBackgroundMaterialGradientColorsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = v4;
  v14[3] = v5;
  v15 = v6;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      sub_1E13006E4(0, &qword_1EE1E31E0);
      sub_1E151F15C(v8, v7, v9, v10, 2u);
      sub_1E151F15C(v3, v2, v4, v5, 2u);
      if (sub_1E1AF6D0C() & 1) != 0 && (sub_1E1AF6D0C())
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_18;
      }

      sub_1E13006E4(0, &qword_1EE1E31E0);
      sub_1E151F15C(v8, v7, v9, v10, 3u);
      sub_1E151F15C(v3, v2, v4, v5, 3u);
      if (sub_1E1AF6D0C() & 1) != 0 && (sub_1E1AF6D0C() & 1) != 0 && (sub_1E1AF6D0C())
      {
        goto LABEL_12;
      }
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    if (v11 != 1)
    {
      goto LABEL_18;
    }

    sub_1E13006E4(0, &qword_1EE1E31E0);
    sub_1E151F15C(v8, v7, v9, v10, 1u);
    sub_1E151F15C(v3, v2, v4, v5, 1u);
    if (sub_1E1AF6D0C())
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (v11)
  {
LABEL_18:
    sub_1E151F15C(v8, v7, v9, v10, v11);
    sub_1E151F15C(v3, v2, v4, v5, v6);
    goto LABEL_19;
  }

  sub_1E13006E4(0, &qword_1EE1E31E0);
  sub_1E151F15C(v8, v7, v9, v10, 0);
  sub_1E151F15C(v3, v2, v4, v5, 0);
LABEL_12:
  v12 = sub_1E1AF6D0C();
LABEL_20:
  sub_1E1308058(v14, &qword_1ECEB9860);
  return v12 & 1;
}

uint64_t _s11AppStoreKit15ShelfBackgroundO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v39[0] = v3;
  v39[1] = v2;
  v39[2] = v5;
  v39[3] = v4;
  v40 = v6;
  v41 = v7;
  v42 = v8;
  v43 = v9;
  v44 = v10;
  v12 = v6 >> 13;
  v45 = v11;
  if (v6 >> 13 <= 1)
  {
    if (v12)
    {
      if ((v11 & 0xE000) != 0x2000)
      {
        goto LABEL_73;
      }

      v22 = v7;
      v23 = v9;
      v24 = v11;
      v25 = v10;
      sub_1E13006E4(0, &qword_1EE1E31E0);
      sub_1E151F120(v22, v8, v23, v25, v24);
      sub_1E151F120(v3, v2, v5, v4, v6);
      if ((sub_1E1AF6D0C() & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v11 >= 0x2000)
      {
        goto LABEL_73;
      }

      v19 = v7;
      sub_1E151F120(v7, v8, v9, v10, v11);
      sub_1E151F120(v3, v2, v5, v4, v6);
      if ((_s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v3, v19) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    if (v2)
    {
      if (v2 == 1)
      {
        v21 = 0x746867696CLL;
      }

      else
      {
        v21 = 0x6974616D6F747561;
      }

      if (v2 == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }

      v26 = v8;
      if (!v8)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v21 = 1802658148;
      v26 = v8;
      if (!v8)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_44;
  }

  if (v12 == 2)
  {
    if ((v11 & 0xE000) != 0x4000)
    {
      goto LABEL_73;
    }

    v20 = v7;
    sub_1E151F120(v7, v8, v9, v10, v11);
    sub_1E151F120(v3, v2, v5, v4, v6);
    if ((sub_1E156EF9C(v3, v20) & 1) == 0 || (sub_1E145872C(v2, v8) & 1) == 0 || (sub_1E145872C(BYTE1(v2), BYTE1(v8)) & 1) == 0)
    {
      goto LABEL_74;
    }

    if (BYTE2(v2))
    {
      if (BYTE2(v2) == 1)
      {
        v21 = 0x746867696CLL;
      }

      else
      {
        v21 = 0x6974616D6F747561;
      }

      if (BYTE2(v2) == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v21 = 1802658148;
    }

    v26 = BYTE2(v8);
    if (!BYTE2(v8))
    {
LABEL_67:
      v28 = 0xE400000000000000;
      if (v21 != 1802658148)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }

LABEL_44:
    if (v26 == 1)
    {
      v27 = 0x746867696CLL;
    }

    else
    {
      v27 = 0x6974616D6F747561;
    }

    if (v26 == 1)
    {
      v28 = 0xE500000000000000;
    }

    else
    {
      v28 = 0xE900000000000063;
    }

    if (v21 != v27)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

  if (v12 != 3)
  {
    if (!(v5 | v2 | v3 | v4) && v6 == 0x8000)
    {
      if ((v11 & 0xE000) == 0x8000 && !(v9 | v8 | v7 | v10) && v11 == 0x8000)
      {
        goto LABEL_88;
      }

      goto LABEL_73;
    }

    v29 = v5 | v2 | v4;
    if (v6 == 0x8000 && v3 == 1 && !v29)
    {
      if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v6 == 0x8000 && v3 == 2 && !v29)
    {
      if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 2)
      {
        goto LABEL_73;
      }
    }

    else if ((v11 & 0xE000) != 0x8000 || v11 != 0x8000 || v7 != 3)
    {
      goto LABEL_73;
    }

    if (!(v9 | v8 | v10))
    {
LABEL_88:
      v30 = 1;
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  if ((v11 & 0xE000) != 0x6000)
  {
LABEL_73:
    sub_1E151F120(v7, v8, v9, v10, v11);
    sub_1E151F120(v3, v2, v5, v4, v6);
    goto LABEL_74;
  }

  v37[0] = v3;
  v37[1] = v2;
  v37[2] = v5;
  v37[3] = v4;
  v38 = v6;
  v35[0] = v7;
  v35[1] = v8;
  v35[2] = v9;
  v35[3] = v10;
  v36 = v11;
  v13 = v8;
  v14 = v11;
  sub_1E151F120(v7, v13, v9, v10, v11);
  sub_1E151F120(v3, v2, v5, v4, v6);
  if (_s11AppStoreKit37ShelfBackgroundMaterialGradientColorsO2eeoiySbAC_ACtFZ_0(v37, v35))
  {
    v15 = (v6 >> 8) & 0x1F;
    v16 = (v14 >> 8) & 0x1F;
    if (v15)
    {
      if (v15 == 1)
      {
        v17 = 0x746867696CLL;
      }

      else
      {
        v17 = 0x6974616D6F747561;
      }

      if (v15 == 1)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE900000000000063;
      }
    }

    else
    {
      v18 = 0xE400000000000000;
      v17 = 1802658148;
    }

    v32 = 0xE500000000000000;
    v33 = 0x746867696CLL;
    if (v16 != 1)
    {
      v33 = 0x6974616D6F747561;
      v32 = 0xE900000000000063;
    }

    if (v16)
    {
      v34 = v33;
    }

    else
    {
      v34 = 1802658148;
    }

    if (v16)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    if (v17 != v34)
    {
      goto LABEL_89;
    }

LABEL_86:
    if (v18 == v28)
    {

      goto LABEL_88;
    }

LABEL_89:
    v30 = sub_1E1AF74AC();

    goto LABEL_75;
  }

LABEL_74:
  v30 = 0;
LABEL_75:
  sub_1E1308058(v39, &qword_1ECEB9858);
  return v30 & 1;
}

unint64_t sub_1E17D3BAC()
{
  result = qword_1ECEB9838;
  if (!qword_1ECEB9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9838);
  }

  return result;
}

unint64_t sub_1E17D3C04()
{
  result = qword_1ECEB9840;
  if (!qword_1ECEB9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9840);
  }

  return result;
}

unint64_t sub_1E17D3C5C()
{
  result = qword_1ECEB9848;
  if (!qword_1ECEB9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit15ShelfBackgroundO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 13;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1E17D3D20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFC && *(a1 + 34))
  {
    return (*a1 + 4092);
  }

  v3 = ((*(a1 + 32) >> 13) | (8 * ((*(a1 + 32) >> 4) & 0x1C0 | (*(a1 + 32) >> 2)))) ^ 0xFFF;
  if (v3 >= 0xFFB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E17D3D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 4092;
    *(result + 8) = 0;
    if (a3 >= 0xFFC)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFC)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x1FF) - (a2 << 9);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (16 * v3) & 0xFC00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_1E17D3DF0(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 32) = *(result + 32) & 0x303 | (a2 << 13);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x8000;
  }

  return result;
}

unint64_t sub_1E17D3E44()
{
  result = qword_1ECEB9850;
  if (!qword_1ECEB9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9850);
  }

  return result;
}

uint64_t sub_1E17D3E98()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E17D3EE4()
{
  v0 = sub_1E1AF72FC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E17D3F30()
{
  result = qword_1EE1EE6A0;
  if (!qword_1EE1EE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EE6A0);
  }

  return result;
}

unint64_t sub_1E17D3F84()
{
  result = qword_1EE1ED610;
  if (!qword_1EE1ED610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED610);
  }

  return result;
}

unint64_t sub_1E17D3FD8()
{
  result = qword_1ECEB9868;
  if (!qword_1ECEB9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9868);
  }

  return result;
}

unint64_t sub_1E17D402C()
{
  result = qword_1ECEB9870;
  if (!qword_1ECEB9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9870);
  }

  return result;
}

unint64_t sub_1E17D4094()
{
  result = qword_1ECEB9878;
  if (!qword_1ECEB9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9878);
  }

  return result;
}

uint64_t sub_1E17D40F0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v32 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v6 = sub_1E1AF71CC();
LABEL_3:
    v30 = a2 >> 62;
    if (a2 >> 62)
    {
      v7 = sub_1E1AF71CC();
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v34 = MEMORY[0x1E69E7CC0];
    sub_1E1AF70EC();
    if (v8 < 0)
    {
      __break(1u);
LABEL_60:

      __break(1u);
      return result;
    }

    v9 = v8;
    v27 = v5;
    v28 = a2;
    if (!v8)
    {
      break;
    }

    v31 = v5 & 0xC000000000000001;
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v26 = v3;
    v29 = a2 & 0xC000000000000001;
    v12 = 4;
    v25 = v9;
    v3 = v9;
    while (1)
    {
      v13 = v32 ? sub_1E1AF71CC() : *(v10 + 16);
      v14 = v12 - 4;
      if (v12 - 4 == v13)
      {
        break;
      }

      if (v31)
      {
        v15 = MEMORY[0x1E68FFD80](v12 - 4, v5);
        if (!v30)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_56;
        }

        v15 = *(v5 + 8 * v12);

        if (!v30)
        {
LABEL_17:
          v16 = *(v11 + 16);
          goto LABEL_21;
        }
      }

      v16 = sub_1E1AF71CC();
LABEL_21:
      if (v14 == v16)
      {
        goto LABEL_60;
      }

      if (v29)
      {
        MEMORY[0x1E68FFD80](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_52;
        }
      }

      v33 = *(v15 + 24);

      sub_1E17285A0(v17);
      v18 = v33;
      LOBYTE(v33) = 100;
      Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v18, &v33, 1, 2);

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
      ++v12;
      --v3;
      v5 = v27;
      a2 = v28;
      if (!v3)
      {
        v9 = v25;
        v3 = v26;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v10 = v5 & 0xFFFFFFFFFFFFFF8;
  v31 = v5 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v29 = a2 & 0xC000000000000001;
LABEL_29:
  v19 = v9 + 4;
  if (!v32)
  {
LABEL_30:
    v20 = *(v10 + 16);
    goto LABEL_32;
  }

  while (1)
  {
    v20 = sub_1E1AF71CC();
LABEL_32:
    v21 = v19 - 4;
    if (v19 - 4 == v20)
    {
      return v34;
    }

    if (v31)
    {
      v5 = MEMORY[0x1E68FFD80](v19 - 4, v5);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v21 >= *(v10 + 16))
      {
        goto LABEL_54;
      }

      v5 = *(v5 + 8 * v19);

      if (__OFADD__(v21, 1))
      {
        goto LABEL_53;
      }
    }

    if (v30)
    {
      if (v21 == sub_1E1AF71CC())
      {
LABEL_49:

        return v34;
      }
    }

    else if (v21 == *(v11 + 16))
    {
      goto LABEL_49;
    }

    if (v29)
    {
      MEMORY[0x1E68FFD80](v19 - 4, a2);
    }

    else
    {
      if (v21 >= *(v11 + 16))
      {
        goto LABEL_55;
      }
    }

    v33 = *(v5 + 24);

    sub_1E17285A0(v22);
    v23 = v33;
    LOBYTE(v33) = 100;
    Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v23, &v33, 1, 2);

    sub_1E1AF70BC();
    sub_1E1AF70FC();
    sub_1E1AF710C();
    sub_1E1AF70CC();
    ++v19;
    v5 = v27;
    a2 = v28;
    if (!v32)
    {
      goto LABEL_30;
    }
  }
}

__n128 ShelfHeader.__allocating_init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char *a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v21 = swift_allocObject();
  v22 = *a6;
  v23 = *a11;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5 & 1;
  *(v21 + 49) = v22;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  *(v21 + 72) = a9;
  *(v21 + 88) = a10;
  *(v21 + 96) = v23;
  *(v21 + 120) = a13;
  *(v21 + 104) = a12;
  *(v21 + 136) = a14;
  result = *a15;
  v25 = *(a15 + 16);
  v26 = *(a15 + 32);
  *(v21 + 191) = *(a15 + 47);
  *(v21 + 160) = v25;
  *(v21 + 176) = v26;
  *(v21 + 144) = result;
  return result;
}

AppStoreKit::ShelfHeader::ArtworkType_optional __swiftcall ShelfHeader.ArtworkType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ShelfHeader.ArtworkType.rawValue.getter()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_1E17D46C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1852793705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79726F6765746163;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1852793705;
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

uint64_t sub_1E17D47BC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17D4858()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E17D48E0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E17D4984(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1852793705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ShelfHeader.Configuration.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - v25;
  sub_1E1AF381C();
  v44 = JSONObject.appStoreColor.getter();
  v27 = *(v5 + 8);
  v27(v26, v4);
  sub_1E1AF381C();
  v43 = JSONObject.appStoreColor.getter();
  v27(v23, v4);
  sub_1E1AF381C();
  v41 = JSONObject.appStoreColor.getter();
  v27(v20, v4);
  sub_1E1AF381C();
  v39 = JSONObject.appStoreColor.getter();
  v27(v17, v4);
  v28 = v37;
  sub_1E1AF381C();
  v38 = JSONObject.appStoreColor.getter();
  v27(v28, v4);
  v29 = v40;
  sub_1E1AF381C();
  v37 = JSONObject.appStoreColor.getter();
  v27(v29, v4);
  v30 = v42;
  sub_1E1AF381C();
  LOBYTE(v17) = sub_1E1AF370C();
  v27(v30, v4);
  v31 = v45;
  sub_1E1AF381C();
  LOBYTE(v20) = sub_1E1AF370C();
  v27(v31, v4);
  v32 = v46;
  sub_1E1AF381C();
  v33 = sub_1E1AF370C();
  v34 = sub_1E1AF39DC();
  (*(*(v34 - 8) + 8))(v47, v34);
  v27(a1, v4);
  result = (v27)(v32, v4);
  v36 = v48;
  *v48 = v44;
  v36[1] = v43;
  v36[2] = v41;
  v36[3] = v39;
  v36[4] = v38;
  v36[5] = v37;
  *(v36 + 48) = v17 & 1;
  *(v36 + 49) = v20 & 1;
  *(v36 + 50) = v33;
  return result;
}

uint64_t ShelfHeader.Configuration.init(eyebrowColor:eyebrowImageColor:titleColor:titleImageColor:subtitleColor:accessoryColor:includeSeparator:includeTrailingArtwork:prefersShelfHeader:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 49) = a8 & 1;
  *(a9 + 50) = a10;
  return result;
}

id ShelfHeader.Configuration.eyebrowColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ShelfHeader.Configuration.eyebrowImageColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.titleColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.titleImageColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.subtitleColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.accessoryColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_1E17D500C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v32 = *(a1 + 49);
  v33 = *(a1 + 48);
  v31 = *(a1 + 50);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  v10 = *a1;
  v30 = *(v2 + 40);
  if (*a1)
  {
    v11 = *(a1 + 8);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:
    v24 = v8;
    v11 = v8;
    v12 = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v10 = *v2;
  v23 = *v2;
  v11 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  v12 = v6;
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_13:
  v25 = v9;
  v12 = v9;
LABEL_4:
  v13 = v34;
  if (!v34)
  {
    v13 = v28;
    v14 = v28;
  }

  v15 = v35;
  if (v35)
  {
    v16 = v7;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = v29;
    v26 = v29;
    v16 = v7;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v27 = v30;
  v16 = v30;
LABEL_8:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v33;
  *(a2 + 49) = v32;
  *(a2 + 50) = v31;
  v17 = v7;
  v18 = v5;
  v19 = v4;
  v20 = v6;
  v21 = v34;

  return v35;
}

uint64_t ShelfHeader.init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char *a11, __int128 a12, __int128 a13, uint64_t a14, __int128 *a15)
{
  v16 = *a6;
  v17 = *a11;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5 & 1;
  *(v15 + 49) = v16;
  *(v15 + 56) = a7;
  *(v15 + 64) = a8;
  *(v15 + 72) = a9;
  *(v15 + 88) = a10;
  *(v15 + 96) = v17;
  *(v15 + 120) = a13;
  *(v15 + 104) = a12;
  *(v15 + 136) = a14;
  v18 = *a15;
  v19 = a15[1];
  v20 = a15[2];
  *(v15 + 191) = *(a15 + 47);
  *(v15 + 160) = v19;
  *(v15 + 176) = v20;
  *(v15 + 144) = v18;
  return v15;
}

uint64_t ShelfHeader.eyebrow.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShelfHeader.title.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ShelfHeader.subtitle.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ShelfHeader.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v7[0] = *(v1 + 144);
  v7[1] = v2;
  v8[0] = *(v1 + 176);
  v3 = v8[0];
  *(v8 + 15) = *(v1 + 191);
  v4 = *(v8 + 15);
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 47) = v4;
  return sub_1E17D9298(v7, v6);
}

uint64_t ShelfHeader.shouldUseShelfHeader.getter()
{
  if ((*(v0 + 193) & 1) != 0 || *(v0 + 128))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = *(v0 + 194);
    if (v1 == 2)
    {
      v4 = &type metadata for Feature;
      v5 = sub_1E1309EB0();
      v3[0] = 8;
      LOBYTE(v1) = sub_1E1AF056C();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }
  }

  return v1 & 1;
}

uint64_t ShelfHeader.deinit()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);

  return v0;
}

uint64_t ShelfHeader.__deallocating_deinit()
{
  ShelfHeader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E17D54BC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E17D88A8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s11AppStoreKit11ShelfHeaderC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v36 = *(a2 + 40);
    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v32 = *(a2 + 49);
    v33 = *(a1 + 49);
    v30 = *(a2 + 50);
    v31 = *(a1 + 50);
    sub_1E1355E88();
    v11 = v6;
    v12 = v2;
    v13 = sub_1E1AF6D0C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v36 = *(a2 + 40);
    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v32 = *(a2 + 49);
    v33 = *(a1 + 49);
    v30 = *(a2 + 50);
    v31 = *(a1 + 50);
    if (v6)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1E1355E88();
    v14 = v7;
    v15 = v3;
    v16 = sub_1E1AF6D0C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1E1355E88();
    v17 = v9;
    v18 = v5;
    v19 = sub_1E1AF6D0C();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    sub_1E1355E88();
    v20 = v8;
    v21 = v4;
    v22 = sub_1E1AF6D0C();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v38)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1E1355E88();
    v23 = v10;
    v24 = v38;
    v25 = sub_1E1AF6D0C();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v37)
  {
    result = 0;
    if (v36)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!v36)
  {
    return 0;
  }

  sub_1E1355E88();
  v26 = v36;
  v27 = v37;
  v28 = sub_1E1AF6D0C();

  result = 0;
  if ((v28 & 1) == 0)
  {
    return result;
  }

LABEL_31:
  if (((v35 ^ v34) & 1) == 0 && ((v33 ^ v32) & 1) == 0)
  {
    if (v31 == 2)
    {
      if (v30 != 2)
      {
        return 0;
      }
    }

    else if (v30 == 2 || ((v30 ^ v31) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t _s11AppStoreKit11ShelfHeaderC13deserializing5using13seeAllContextACSg9JetEngine10JSONObjectV_AH11JSONContextVALtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1E1AF380C();
  v110 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87 - v17;
  v19 = type metadata accessor for Artwork();
  sub_1E1AF381C();
  v88 = v6;
  v20 = *(v6 + 16);
  v20(v8, a2, v5);
  v21 = sub_1E17D94B4();
  sub_1E1AF464C();
  v109 = v117;
  sub_1E1AF381C();
  v113 = a2;
  v111 = v5;
  v22 = v5;
  v23 = a1;
  v107 = v6 + 16;
  v106 = v20;
  v20(v8, a2, v22);
  v24 = v110;
  v25 = v8;
  v104 = v21;
  v105 = v19;
  v26 = v103;
  sub_1E1AF464C();
  v108 = v117;
  v27 = v98;
  sub_1E1AF381C();
  v101 = sub_1E1AF37CC();
  v102 = v28;
  v31 = *(v24 + 8);
  v30 = v24 + 8;
  v29 = v31;
  v31(v27, v26);
  v32 = v100;
  sub_1E1AF381C();
  v33 = sub_1E1AF37BC();
  v31(v32, v26);
  if (v33)
  {
    [v33 floatValue];
    v35 = v34;

    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v100 = v33;
  if (v109)
  {
    sub_1E1AF381C();
    sub_1E17D950C();
    sub_1E1AF369C();
    v29(v18, v26);
    v37 = v117;
  }

  else
  {
    v37 = 3;
  }

  LODWORD(v98) = v37;
  v38 = type metadata accessor for Action();
  sub_1E1AF381C();
  v39 = v113;
  v97 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v113);
  v29(v18, v26);
  sub_1E1AF381C();
  v106(v25, v39, v111);
  sub_1E1AF464C();
  v94 = v127;
  v40 = v93;
  sub_1E1AF381C();
  v95 = sub_1E1AF37CC();
  v96 = v41;
  v29(v40, v26);
  if (v108)
  {
    sub_1E1AF381C();
    sub_1E17D950C();
    sub_1E1AF369C();
    v29(v18, v26);
    v42 = v117;
  }

  else
  {
    v42 = 3;
  }

  LODWORD(v93) = v42;
  sub_1E1AF381C();
  v91 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v112);
  v29(v18, v26);
  v43 = v99;
  sub_1E1AF381C();
  v90 = sub_1E1AF37CC();
  v92 = v44;
  v29(v43, v26);
  sub_1E1AF381C();
  v45 = v25;
  v46 = v25;
  v47 = v29;
  v48 = v23;
  v49 = v26;
  v50 = v111;
  v110 = v38;
  v51 = v106;
  v106(v46, v113, v111);
  sub_1E1AF464C();
  v104 = v126;
  sub_1E1AF381C();
  v99 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v112);
  v110 = v30;
  v105 = v47;
  v47(v18, v49);
  v87 = v48;
  sub_1E1AF381C();
  v51(v45, v113, v50);
  sub_1E17D9590();
  sub_1E1AF464C();
  v52 = v117;
  if (v117 == 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v89 = 0;
    v106 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v107) = 2;
  }

  else
  {
    LODWORD(v107) = v125;
    v106 = v122;
    v89 = v121;
    v54 = v119;
    v55 = v120;
    v53 = v118;
    v57 = v124;
    v56 = v123;
  }

  v58 = v100 == 0;
  v59 = v56 & 1;
  v60 = v57 & 1;
  type metadata accessor for ShelfHeader();
  v61 = swift_allocObject();
  v62 = v101;
  v63 = v102;
  *(v61 + 16) = v101;
  *(v61 + 24) = v63;
  *(v61 + 32) = v109;
  *(v61 + 40) = v36;
  *(v61 + 48) = v58;
  *(v61 + 49) = v98;
  v64 = v94;
  *(v61 + 56) = v97;
  *(v61 + 64) = v64;
  v65 = v95;
  v66 = v96;
  *(v61 + 72) = v95;
  *(v61 + 80) = v66;
  *(v61 + 88) = v108;
  *(v61 + 96) = v93;
  v67 = v92;
  v68 = v104;
  *(v61 + 120) = v92;
  *(v61 + 128) = v68;
  v69 = v90;
  *(v61 + 104) = v91;
  *(v61 + 112) = v69;
  *(v61 + 136) = v99;
  *(v61 + 144) = v52;
  *(v61 + 152) = v53;
  *(v61 + 160) = v54;
  v70 = v89;
  *(v61 + 168) = v55;
  *(v61 + 176) = v70;
  *(v61 + 184) = v106;
  *(v61 + 192) = v59;
  *(v61 + 193) = v60;
  *(v61 + 194) = v107;
  v115 = v62;
  v116[0] = v63;
  v116[1] = v65;
  v116[2] = v66;
  v116[3] = v69;
  v116[4] = v67;

  v72 = 0;
  v73 = MEMORY[0x1E69E7CC0];
  v74 = v105;
  do
  {
    if (v72 <= 3)
    {
      v75 = 3;
    }

    else
    {
      v75 = v72;
    }

    v76 = -v75;
    v77 = &v116[2 * v72++];
    while (1)
    {
      if (v76 + v72 == 1)
      {
        __break(1u);
        return result;
      }

      v78 = *v77;
      if (*v77)
      {
        v79 = *(v77 - 1);
        v80 = HIBYTE(v78) & 0xF;
        if ((v78 & 0x2000000000000000) == 0)
        {
          v80 = v79 & 0xFFFFFFFFFFFFLL;
        }

        if (v80)
        {
          break;
        }
      }

      ++v72;
      v77 += 2;
      if (v72 == 4)
      {
        goto LABEL_29;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v114 = v73;
    if ((result & 1) == 0)
    {
      result = sub_1E135C78C(0, *(v73 + 16) + 1, 1);
      v73 = v114;
    }

    v82 = *(v73 + 16);
    v81 = *(v73 + 24);
    if (v82 >= v81 >> 1)
    {
      result = sub_1E135C78C((v81 > 1), v82 + 1, 1);
      v73 = v114;
    }

    *(v73 + 16) = v82 + 1;
    v83 = v73 + 16 * v82;
    *(v83 + 32) = v79;
    *(v83 + 40) = v78;
    v74 = v105;
  }

  while (v72 != 3);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
  swift_arrayDestroy();
  v84 = *(v88 + 8);
  v85 = v111;
  v84(v112, v111);
  v84(v113, v85);
  v74(v87, v103);
  v86 = *(v73 + 16);

  if (!v86)
  {

    return 0;
  }

  return v61;
}

uint64_t sub_1E17D637C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v69 = a2;
  v80 = a1;
  v68 = v86;
  v73 = sub_1E1AF39DC();
  v78 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  sub_1E1AF381C();
  v75 = sub_1E1AF37CC();
  v79 = v10;
  v11 = *(v5 + 8);
  v11(v9, v4);
  sub_1E1AF381C();
  v74 = sub_1E1AF37CC();
  v13 = v12;
  v11(v9, v4);
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v11(v9, v4);
  v17 = type metadata accessor for Action();
  sub_1E1AF381C();
  v63 = v17;
  v71 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v76);
  v70 = v4;
  v77 = v11;
  v76 = v5 + 8;
  v11(v9, v4);
  v85 = v75;
  v86[0] = v79;
  v86[1] = v74;
  v86[2] = v13;
  v65 = v14;
  v86[3] = v14;
  v86[4] = v16;
  v66 = v16;
  v18 = v68;

  v67 = v13;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v20 <= 3)
    {
      v22 = 3;
    }

    else
    {
      v22 = v20;
    }

    v23 = -v22;
    v24 = &v18[2 * v20++];
    while (1)
    {
      if (v23 + v20 == 1)
      {
        __break(1u);
        return result;
      }

      v25 = *v24;
      if (*v24)
      {
        v26 = *(v24 - 1);
        v27 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v27 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          break;
        }
      }

      ++v20;
      v24 += 2;
      if (v20 == 4)
      {
        goto LABEL_17;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v21;
    if ((result & 1) == 0)
    {
      result = sub_1E135C78C(0, *(v21 + 16) + 1, 1);
      v21 = v82[0];
    }

    v29 = *(v21 + 16);
    v28 = *(v21 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_1E135C78C((v28 > 1), v29 + 1, 1);
      v21 = v82[0];
    }

    *(v21 + 16) = v29 + 1;
    v30 = v21 + 16 * v29;
    *(v30 + 32) = v26;
    *(v30 + 40) = v25;
  }

  while (v20 != 3);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
  swift_arrayDestroy();
  v31 = *(v21 + 16);

  if (v31 | v71)
  {
    v32 = type metadata accessor for Artwork();
    sub_1E1AF381C();
    v33 = *(v78 + 16);
    v78 += 16;
    v62 = v33;
    v33(v72, v69, v73);
    v61 = sub_1E17D94B4();
    v60 = v32;
    sub_1E1AF464C();
    v68 = v82[0];
    v34 = v64;
    sub_1E1AF381C();
    v35 = sub_1E1AF37BC();
    v77(v34, v70);
    v59 = v35;
    if (v35)
    {
      [v35 floatValue];
      v37 = v36;

      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    sub_1E1AF381C();
    v39 = v72;
    v40 = v69;
    v41 = v73;
    v42 = v62;
    v62(v72, v69, v73);
    sub_1E1AF464C();
    v64 = v82[0];
    sub_1E1AF381C();
    v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v40);
    v77(v9, v70);
    sub_1E1AF381C();
    v42(v39, v40, v41);
    sub_1E1AF464C();
    v58 = v82[0];
    if (v68)
    {
      sub_1E1AF381C();
      sub_1E17D950C();
      sub_1E1AF369C();
      v43 = v70;
      v77(v9, v70);
      v44 = v82[0];
    }

    else
    {
      v44 = 3;
      v43 = v70;
    }

    v45 = v69;
    v46 = v71;
    if (v64)
    {
      sub_1E1AF381C();
      sub_1E17D950C();
      sub_1E1AF369C();
      v77(v9, v43);
      v47 = v82[0];
    }

    else
    {
      v47 = 3;
    }

    v83 = &type metadata for Feature;
    v48 = sub_1E1309EB0();
    v84 = v48;
    LOBYTE(v82[0]) = 8;
    v49 = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(v82);
    if (v49)
    {

      v50 = v46;
    }

    else
    {
      v50 = 0;
    }

    sub_1E1AF381C();
    v62(v72, v45, v73);
    sub_1E1AF464C();
    v51 = v81;
    v83 = &type metadata for Feature;
    v84 = v48;
    LOBYTE(v82[0]) = 8;
    v52 = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(v82);
    if (v52)
    {

      v46 = 0;
    }

    v53 = v59 == 0;
    type metadata accessor for ShelfHeader();
    result = swift_allocObject();
    v54 = v79;
    *(result + 16) = v75;
    *(result + 24) = v54;
    *(result + 32) = v68;
    *(result + 40) = v38;
    *(result + 48) = v53;
    *(result + 49) = v44;
    v55 = v58;
    *(result + 56) = v63;
    *(result + 64) = v55;
    v56 = v67;
    *(result + 72) = v74;
    *(result + 80) = v56;
    *(result + 88) = v64;
    *(result + 96) = v47;
    *(result + 120) = v66;
    *(result + 128) = v51;
    v57 = v65;
    *(result + 104) = v50;
    *(result + 112) = v57;
    *(result + 136) = v46;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0;
    *(result + 194) = 2;
  }

  else
  {

    return 0;
  }

  return result;
}

void *sub_1E17D6DD0(void *a1, void *a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v176 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF3E1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v151 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v175 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v178 = (&v151 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v179 = (&v151 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v182 = &v151 - v21;
  v22 = sub_1E1AF3C3C();
  v180 = *(v22 - 8);
  v181 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v177 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v151 - v25;
  v27 = a1;
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = &v151 - v25;

    v26 = v28;
    v27 = a2;
    if (!a2)
    {
LABEL_10:

      return v27;
    }
  }

  v173 = v26;
  v174 = type metadata accessor for FlowAction();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    goto LABEL_10;
  }

  if (!a1)
  {
    return v27;
  }

  v172 = v27;
  v30 = v29;
  v171 = swift_dynamicCastClass();
  if (!v171)
  {

    return v172;
  }

  v163 = v5;
  v164 = v4;
  v165 = v13;
  v166 = v8;
  v167 = v7;
  v168 = v10;
  v31 = (v30 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v32 = v31[3];
  if (v32)
  {
    v33 = v31[4];
    v34 = __swift_project_boxed_opaque_existential_1Tm(v31, v31[3]);
    v35 = *(v32 - 8);
    MEMORY[0x1EEE9AC00](v34);
    v37 = &v151 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v37);
    v38 = *(v33 + 8);
    swift_retain_n();

    v38(&v190, v32, v33);
    (*(v35 + 8))(v37, v32);
  }

  else
  {
    v190 = 0u;
    v191 = 0u;
    swift_retain_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
  v39 = type metadata accessor for GenericPage();
  v40 = swift_dynamicCast();
  v41 = MEMORY[0x1E69E7CA8];
  if (v40)
  {
    if (v185)
    {
      v188[0] = v185;
      goto LABEL_19;
    }
  }

  else
  {
    *&v185 = 0;
  }

  *(&v191 + 1) = MEMORY[0x1E69E7CA8] + 8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v188[0] = 0;
  }

LABEL_19:

  if (!v188[0])
  {
    goto LABEL_45;
  }

  v170 = v188[0];
  v42 = (v171 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v43 = v42[3];
  if (v43)
  {
    v44 = v42[4];
    v45 = __swift_project_boxed_opaque_existential_1Tm(v42, v42[3]);
    v46 = *(v43 - 8);
    MEMORY[0x1EEE9AC00](v45);
    v48 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v48);
    v49 = *(v44 + 8);
    v50 = v44;
    v41 = MEMORY[0x1E69E7CA8];
    v49(&v190, v43, v50);
    (*(v46 + 8))(v48, v43);
  }

  else
  {
    v190 = 0u;
    v191 = 0u;
  }

  v51 = v182;
  if (swift_dynamicCast())
  {
    v52 = v170;
    if (v185)
    {
      v188[0] = v185;
      goto LABEL_30;
    }
  }

  else
  {
    *&v185 = 0;
    v52 = v170;
  }

  *(&v191 + 1) = v41 + 8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v188[0] = 0;
  }

LABEL_30:

  v169 = v188[0];
  if (!v188[0])
  {

LABEL_45:

    return v172;
  }

  v160 = v39;
  v53 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v54 = *(v52 + v53);
  v55 = MEMORY[0x1E69E7CC0];
  v188[0] = MEMORY[0x1E69E7CC0];
  v56 = *(v54 + 16);
  v57 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v56)
  {
    v162 = v55;
    goto LABEL_47;
  }

  v58 = 0;
  v59 = v54 + 32;
  v159 = v56 - 1;
  v161 = v54 + 32;
  v162 = MEMORY[0x1E69E7CC0];
  do
  {
    v51 = v59 + 40 * v58;
    v60 = v58;
    v61 = v170;
    while (1)
    {
      if (v60 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_82;
      }

      sub_1E134E724(v51, &v190);
      v62 = *(v61 + v57);
      if (*(v62 + 16))
      {
        break;
      }

LABEL_34:
      ++v60;
      sub_1E134B88C(&v190);
      v51 += 40;
      if (v56 == v60)
      {
        v51 = v182;
        goto LABEL_47;
      }
    }

    v63 = sub_1E135FCF4(&v190);
    if ((v64 & 1) == 0)
    {

      goto LABEL_34;
    }

    v162 = *(*(v62 + 56) + 8 * v63);

    v65 = sub_1E134B88C(&v190);
    MEMORY[0x1E68FEF20](v65);
    if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v58 = v60 + 1;
    sub_1E1AF62AC();
    v162 = v188[0];
    v51 = v182;
    v59 = v161;
  }

  while (v159 != v60);
LABEL_47:

  v66 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  v67 = v169;
  swift_beginAccess();
  v68 = *(v67 + v66);
  v69 = MEMORY[0x1E69E7CC0];
  v188[0] = MEMORY[0x1E69E7CC0];
  v70 = *(v68 + 16);
  v57 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (v70)
  {
    v71 = 0;
    v72 = v68 + 32;
    v158 = v70 - 1;
    v161 = MEMORY[0x1E69E7CC0];
    v159 = v68 + 32;
LABEL_49:
    v51 = v72 + 40 * v71;
    v73 = v71;
    v74 = v169;
    while (v73 < *(v68 + 16))
    {
      sub_1E134E724(v51, &v190);
      v75 = *(v74 + v57);
      if (*(v75 + 16))
      {

        v76 = sub_1E135FCF4(&v190);
        if (v77)
        {
          v161 = *(*(v75 + 56) + 8 * v76);

          v78 = sub_1E134B88C(&v190);
          MEMORY[0x1E68FEF20](v78);
          if (*((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v71 = v73 + 1;
          sub_1E1AF62AC();
          v161 = v188[0];
          v72 = v159;
          v51 = v182;
          if (v158 != v73)
          {
            goto LABEL_49;
          }

          goto LABEL_61;
        }
      }

      ++v73;
      sub_1E134B88C(&v190);
      v51 += 40;
      if (v70 == v73)
      {
        v51 = v182;
        goto LABEL_61;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v79 = sub_1E1AF71CC();
  }

  else
  {
    v161 = v69;
LABEL_61:

    v57 = v162;
    if (v162 >> 62)
    {
      goto LABEL_83;
    }

    v79 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = v180;
  v80 = v181;
  v82 = v161;
  if (v161 >> 62)
  {
    if (v79 != sub_1E1AF71CC())
    {
      goto LABEL_85;
    }

LABEL_65:
    v154 = sub_1E17D40F0(v57, v82);

    v83 = v169;
    v84 = *(v169 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
    v156 = *(v169 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v157 = *(v169 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
    sub_1E134FD1C(v169 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &v190, &qword_1ECEB2DF0);
    v155 = *(v83 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
    v85 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    swift_beginAccess();
    v162 = *(v83 + v85);
    v86 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v153 = *(v81 + 16);
    v153(v173, v83 + v86, v80);
    v152 = *(v83 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    v158 = sub_1E1AF39DC();
    v161 = *(v158 - 8);
    (*(v161 + 56))(v51, 1, 1, v158);
    v87 = swift_allocObject();
    v88 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    *(v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

    v89 = sub_1E175EC2C(v154);
    v91 = v90;

    *(v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v89;
    *(v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v91;
    v92 = (v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v93 = v157;
    *v92 = v156;
    v92[1] = v84;
    *(v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
    *(v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v93;
    sub_1E134FD1C(&v190, v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
    *(v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v155;
    swift_beginAccess();
    *(v87 + v88) = v162;

    *(v87 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
    v94 = v177;
    v95 = v181;
    v96 = v153;
    v153(v177, v173, v181);
    v97 = v179;
    sub_1E134FD1C(v182, v179, &qword_1ECEB3B28);
    *(v87 + 16) = 0;
    v96(v87 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v94, v95);
    v159 = v87;
    *(v87 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v152;
    v98 = v178;
    sub_1E134FD1C(v97, v178, &qword_1ECEB3B28);
    v99 = *(v161 + 48);
    if (v99(v98, 1, v158) == 1)
    {

      sub_1E1308058(v97, &qword_1ECEB3B28);
      v100 = v94;
      v101 = *(v180 + 8);
      v101(v100, v95);
      sub_1E1308058(v182, &qword_1ECEB3B28);
      v101(v173, v95);
      sub_1E1308058(&v190, &qword_1ECEB2DF0);
      sub_1E1308058(v98, &qword_1ECEB3B28);
    }

    else
    {
      v157 = v99;
      v102 = qword_1EE1E3BC8;

      if (v102 != -1)
      {
        swift_once();
      }

      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v103, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v104 = v178;
      sub_1E1AF39EC();
      v105 = v188[0];
      v106 = v179;
      if (v188[0])
      {
      }

      v107 = *(v161 + 8);
      v108 = v104;
      v109 = v158;
      v161 += 8;
      v178 = v107;
      (v107)(v108, v158);
      if (v105)
      {
        v110 = v175;
        sub_1E134FD1C(v106, v175, &qword_1ECEB3B28);
        if (v157(v110, 1, v109) != 1)
        {
          sub_1E15F0974();

          sub_1E1308058(v106, &qword_1ECEB3B28);
          v117 = *(v180 + 8);
          v118 = v109;
          v119 = v181;
          v117(v177, v181);
          sub_1E1308058(v182, &qword_1ECEB3B28);
          v117(v173, v119);
          sub_1E1308058(&v190, &qword_1ECEB2DF0);
          (v178)(v110, v118);
          goto LABEL_77;
        }

        sub_1E1308058(v106, &qword_1ECEB3B28);
        v111 = v181;
        v112 = *(v180 + 8);
        v112(v177, v181);
        sub_1E1308058(v182, &qword_1ECEB3B28);
        v112(v173, v111);
        sub_1E1308058(&v190, &qword_1ECEB2DF0);
        v113 = v110;
        v114 = &qword_1ECEB3B28;
      }

      else
      {

        v115 = v181;
        sub_1E1308058(v106, &qword_1ECEB3B28);
        v116 = *(v180 + 8);
        v116(v94, v115);
        sub_1E1308058(v182, &qword_1ECEB3B28);
        v116(v173, v115);
        v114 = &qword_1ECEB2DF0;
        v113 = &v190;
      }

      sub_1E1308058(v113, v114);
    }

LABEL_77:
    v120 = v166;
    v121 = v167;
    v192 = 0;
    v190 = 0u;
    v191 = 0u;
    v122 = v171;
    v123 = *(v171 + 24);
    v181 = *(v171 + 16);
    LODWORD(v178) = *(v171 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page);
    v124 = v165;
    sub_1E134FD1C(v171 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, v165, &unk_1ECEB4B60);
    v125 = *(v122 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl + 8);
    v177 = *(v122 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
    v189[3] = v160;
    v189[0] = v159;
    v179 = *(v120 + 16);
    (v179)(v168, v122 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v121);
    v126 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
    swift_beginAccess();
    LODWORD(v175) = *(v122 + v126);
    v127 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
    swift_beginAccess();
    LODWORD(v173) = *(v122 + v127);
    v128 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
    swift_beginAccess();
    LODWORD(v162) = *(v122 + v128);
    v180 = *(v122 + 40);

    v182 = v123;

    v129 = sub_1E1AF4D0C();
    v131 = v130;
    v132 = swift_allocObject();
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v133 = v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
    *v133 = 0u;
    *(v133 + 1) = 0u;
    *(v133 + 4) = 0;
    v134 = (v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
    *v134 = 0;
    v134[1] = 0;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = v178;
    sub_1E134FD1C(v124, v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
    v135 = (v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
    *v135 = v177;
    v135[1] = v125;
    v136 = v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
    *v136 = xmmword_1E1B04490;
    v136[40] = 0;
    *(v136 + 3) = 0;
    *(v136 + 4) = 0;
    *(v136 + 2) = 0;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = v175;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = v173;
    *(v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = v162;
    v137 = (v132 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
    *v137 = v129;
    v137[1] = v131;
    v138 = v167;
    sub_1E134FD1C(&v190, v188, &unk_1ECEB5670);
    (v179)(v132 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v168, v138);
    v139 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
    v140 = sub_1E1AF46DC();
    (*(*(v140 - 8) + 56))(v132 + v139, 1, 1, v140);
    v141 = (v132 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v141 = 0u;
    v141[1] = 0u;
    v142 = v132 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    sub_1E134FD1C(v188, &v185, &unk_1ECEB5670);
    if (*(&v186 + 1))
    {
      v143 = v186;
      *v142 = v185;
      *(v142 + 1) = v143;
      *(v142 + 4) = v187;
    }

    else
    {
      v144 = v176;
      sub_1E1AEFE9C();
      v145 = sub_1E1AEFE7C();
      v147 = v146;
      (*(v163 + 8))(v144, v164);
      v183 = v145;
      v184 = v147;
      sub_1E1AF6F6C();
      sub_1E1308058(&v185, &unk_1ECEB5670);
    }

    sub_1E1308058(v188, &unk_1ECEB5670);
    v148 = v182;
    v132[2] = v181;
    v132[3] = v148;
    v149 = v180;
    v132[4] = 0;
    v132[5] = v149;

    v27 = v132;
    FlowAction.setPageData(_:)(v189);

    (*(v166 + 8))(v168, v138);
    sub_1E1308058(v165, &unk_1ECEB4B60);
    sub_1E1308058(&v190, &unk_1ECEB5670);
    sub_1E1308058(v189, &qword_1ECEB2DF0);
    return v27;
  }

  if (v79 == *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_65;
  }

LABEL_85:

  return v172;
}

uint64_t sub_1E17D844C(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = a1;
    if (a2)
    {
      *(&v58 + 1) = &type metadata for Feature;
      *&v59[0] = sub_1E1309EB0();
      LOBYTE(v57) = 8;

      v6 = sub_1E1AF056C();
      __swift_destroy_boxed_opaque_existential_1(&v57);
      if (v6)
      {
        v7 = *(v4 + 104);
        if (a3)
        {
          v8 = *(a2 + 104);

          v10 = sub_1E17D6DD0(v9, v8);

          v7 = v10;
        }

        else
        {
          if (!v7)
          {
            v7 = *(a2 + 104);
          }
        }

        v11 = *(v4 + 136);
        if (!v11)
        {
          v11 = *(a2 + 136);
        }
      }

      else
      {
        v11 = *(v4 + 136);
        if (a3)
        {
          v12 = *(a2 + 136);

          v14 = sub_1E17D6DD0(v13, v12);

          v7 = 0;
          v11 = v14;
        }

        else
        {
          if (!v11)
          {
            v11 = *(a2 + 136);
          }

          v7 = 0;
        }
      }

      if (*(v4 + 24))
      {
        v40 = *(v4 + 24);
        v41 = *(v4 + 16);
      }

      else
      {
        v40 = *(a2 + 24);
        v41 = *(a2 + 16);
      }

      v15 = *(v4 + 32);
      if (!v15)
      {
        v15 = *(a2 + 32);
      }

      v16 = *(v4 + 49);
      if (v16 == 3)
      {
        LOBYTE(v16) = *(a2 + 49);
      }

      v17 = *(v4 + 56);
      if (!v17)
      {
      }

      v39 = v17;
      v18 = *(v4 + 64);
      if (!v18)
      {
      }

      v38 = v18;
      if (*(v4 + 80))
      {
        v36 = *(v4 + 80);
        v37 = *(v4 + 72);
      }

      else
      {
        v36 = *(a2 + 80);
        v37 = *(a2 + 72);
      }

      v19 = *(v4 + 88);
      if (!v19)
      {
      }

      v20 = *(v4 + 96);
      if (v20 == 3)
      {
        LOBYTE(v20) = *(a2 + 96);
      }

      v35 = v19;
      v34 = v20;
      if (*(v4 + 120))
      {
        v32 = *(v4 + 120);
        v33 = *(v4 + 112);
      }

      else
      {
        v32 = *(a2 + 120);
        v33 = *(a2 + 112);
      }

      v42 = *(v4 + 128);
      if (!v42)
      {
        v42 = *(a2 + 128);
      }

      v21 = *(a2 + 160);
      v49[0] = *(a2 + 144);
      v49[1] = v21;
      v23 = *(a2 + 144);
      v22 = *(a2 + 160);
      v50[0] = *(a2 + 176);
      *(v50 + 15) = *(a2 + 191);
      v46 = v23;
      v47 = v22;
      v48[0] = *(a2 + 176);
      *(v48 + 15) = *(a2 + 191);
      v24 = *(v4 + 144);
      v25 = *(v4 + 160);
      *(v52 + 15) = *(v4 + 191);
      v26 = *(v4 + 176);
      v51[1] = *(v4 + 160);
      v52[0] = v26;
      v27 = *(v4 + 144);
      v51[0] = v24;
      v43 = v27;
      v44 = v25;
      v45[0] = *(v4 + 176);
      *(v45 + 15) = *(v4 + 191);
      sub_1E17D500C(&v43, &v57);

      sub_1E17D9298(v49, v55);
      sub_1E17D9298(v51, v55);

      v53[0] = v43;
      v53[1] = v44;
      v54[0] = v45[0];
      *(v54 + 15) = *(v45 + 15);
      sub_1E17D9560(v53);
      v55[0] = v46;
      v55[1] = v47;
      *v56 = v48[0];
      *&v56[15] = *(v48 + 15);
      sub_1E17D9560(v55);
      type metadata accessor for ShelfHeader();
      v4 = swift_allocObject();
      *(v4 + 16) = v41;
      *(v4 + 24) = v40;
      *(v4 + 32) = v15;
      *(v4 + 40) = 0;
      *(v4 + 48) = 1;
      *(v4 + 49) = v16;
      *(v4 + 56) = v39;
      *(v4 + 64) = v38;
      *(v4 + 72) = v37;
      *(v4 + 80) = v36;
      *(v4 + 88) = v35;
      *(v4 + 96) = v34;
      *(v4 + 120) = v32;
      *(v4 + 128) = v42;
      *(v4 + 104) = v7;
      *(v4 + 112) = v33;
      *(v4 + 136) = v11;
      v28 = v57;
      v29 = v58;
      v30 = v59[0];
      *(v4 + 191) = *(v59 + 15);
      *(v4 + 160) = v29;
      *(v4 + 176) = v30;
      *(v4 + 144) = v28;
    }

    else
    {
    }
  }

  else
  {

    return a2;
  }

  return v4;
}

uint64_t sub_1E17D88A8(char *a1, uint64_t a2)
{
  v90 = a2;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v81 = sub_1E1AF380C();
  v91 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v22 = type metadata accessor for Artwork();
  sub_1E1AF381C();
  v80 = v5;
  v23 = *(v5 + 16);
  v23(v9, a2, v4);
  v24 = sub_1E17D94B4();
  sub_1E1AF464C();
  v89 = v96;
  sub_1E1AF381C();
  v92 = v4;
  v85 = v23;
  v86 = v5 + 16;
  v23(v9, v90, v4);
  v25 = a1;
  v87 = v9;
  v83 = v24;
  v84 = v22;
  v26 = v81;
  v27 = v91;
  sub_1E1AF464C();
  v88 = v96;
  v28 = v74;
  sub_1E1AF381C();
  v68 = sub_1E1AF37CC();
  v76 = v29;
  v32 = *(v27 + 8);
  v30 = v27 + 8;
  v31 = v32;
  v32(v28, v26);
  v33 = v82;
  sub_1E1AF381C();
  v34 = sub_1E1AF37BC();
  v32(v33, v26);
  if (v34)
  {
    [v34 floatValue];
    v36 = v35;

    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v67 = v34;
  v38 = v90;
  if (v89)
  {
    sub_1E1AF381C();
    sub_1E17D950C();
    sub_1E1AF369C();
    v31(v21, v26);
    v39 = v96;
  }

  else
  {
    v39 = 3;
  }

  v66 = v39;
  v40 = type metadata accessor for Action();
  sub_1E1AF381C();
  v82 = v40;
  v74 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v31(v21, v26);
  sub_1E1AF381C();
  v85(v87, v38, v92);
  sub_1E1AF464C();
  v72 = v96;
  v41 = v73;
  sub_1E1AF381C();
  v65 = sub_1E1AF37CC();
  v71 = v42;
  v31(v41, v26);
  if (v88)
  {
    sub_1E1AF381C();
    sub_1E17D950C();
    sub_1E1AF369C();
    v31(v21, v26);
    v43 = v95;
  }

  else
  {
    v43 = 3;
  }

  v64 = v43;
  sub_1E1AF381C();
  v73 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v31(v21, v26);
  v44 = v75;
  sub_1E1AF381C();
  v63 = sub_1E1AF37CC();
  v69 = v31;
  v70 = v45;
  v31(v44, v26);
  sub_1E1AF381C();
  v91 = v30;
  v46 = v92;
  v47 = v85;
  v85(v87, v38, v92);
  sub_1E1AF464C();
  v84 = v95;
  sub_1E1AF381C();
  v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v48 = v26;
  v49 = v69;
  v69(v21, v48);
  v50 = v77;
  v87 = v25;
  sub_1E1AF381C();
  v51 = v78;
  v47(v78, v38, v46);
  v52 = v79;
  ShelfHeader.Configuration.init(deserializing:using:)(v50, v51, v93);
  if (v52)
  {

    (*(v80 + 8))(v38, v92);
    return v49(v87, v81);
  }

  else
  {
    v54 = v67 == 0;
    (*(v80 + 8))(v38, v92);
    v49(v87, v81);
    type metadata accessor for ShelfHeader();
    result = swift_allocObject();
    v55 = v76;
    *(result + 16) = v68;
    *(result + 24) = v55;
    *(result + 32) = v89;
    *(result + 40) = v37;
    *(result + 48) = v54;
    *(result + 49) = v66;
    v56 = v72;
    *(result + 56) = v74;
    *(result + 64) = v56;
    v57 = v71;
    *(result + 72) = v65;
    *(result + 80) = v57;
    *(result + 88) = v88;
    *(result + 96) = v64;
    v58 = v84;
    *(result + 120) = v70;
    *(result + 128) = v58;
    v59 = v63;
    *(result + 104) = v73;
    *(result + 112) = v59;
    *(result + 136) = v83;
    v60 = v93[0];
    v61 = v93[1];
    v62 = *v94;
    *(result + 191) = *&v94[15];
    *(result + 160) = v61;
    *(result + 176) = v62;
    *(result + 144) = v60;
  }

  return result;
}

unint64_t sub_1E17D92D4()
{
  result = qword_1ECEB9880;
  if (!qword_1ECEB9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9880);
  }

  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E17D93E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 51))
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

uint64_t sub_1E17D943C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1E17D94B4()
{
  result = qword_1EE1E4BB8;
  if (!qword_1EE1E4BB8)
  {
    type metadata accessor for Artwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4BB8);
  }

  return result;
}

unint64_t sub_1E17D950C()
{
  result = qword_1EE1E0740;
  if (!qword_1EE1E0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0740);
  }

  return result;
}

unint64_t sub_1E17D9590()
{
  result = qword_1EE1E0738;
  if (!qword_1EE1E0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0738);
  }

  return result;
}

uint64_t sub_1E17D9638(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E17D96A4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
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

uint64_t SearchResultsPresenter.term.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term);

  return v1;
}

uint64_t sub_1E17D97E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1E17D9834(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E17D98E4@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1E17D9938(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t SearchResultsPresenter.originatingTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_originatingTerm);

  return v1;
}

uint64_t SearchResultsPresenter.guidedSearchOptimizationTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchOptimizationTerm);

  return v1;
}

uint64_t sub_1E17D9AB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_transparencyLink;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t SearchResultsPresenter.__allocating_init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, char *a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v96 = a1;
  v82 = a19;
  v95 = a18;
  v91 = a17;
  v88 = a16;
  v87 = a15;
  v84 = a14;
  v83 = a13;
  v81 = a12;
  v79 = a11;
  v78[0] = a10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A0);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v75 - v27;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v75 - v28;
  v93 = sub_1E1AF3D0C();
  v80 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v22;
  v31 = swift_allocObject();
  v32 = *a8;
  v33 = *a9;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v34 = (v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage);
  *v34 = 0u;
  v34[1] = 0u;
  v35 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity) = 4;
  v36 = MEMORY[0x1E69E7CC0];
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results) = MEMORY[0x1E69E7CC0];
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_transparencyLink) = 0;
  v37 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStates;
  v38 = sub_1E159DA28(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9898);
  swift_allocObject();
  *(v31 + v37) = sub_1E14C5D90(v38);
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isAutoPlayEnabled) = 0;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isCondensedSearchLockupsEnabled) = 0;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage) = 0;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchPresenter) = a2;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_facetsPresenter) = a3;
  v39 = (v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager);
  v40 = v75;
  *v39 = a4;
  v39[1] = v40;
  v41 = (v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term);
  v42 = v77;
  *v41 = v76;
  v41[1] = v42;
  swift_beginAccess();
  *(v31 + v35) = v32;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin) = v33;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isNetworkConstrained) = v78[0];
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_spellCheckEnabled) = v79;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_excludedTerms) = v81;
  v43 = (v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_originatingTerm);
  v44 = v84;
  *v43 = v83;
  v43[1] = v44;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchTokens) = v87;
  v45 = (v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchOptimizationTerm);
  v46 = v91;
  *v45 = v88;
  v45[1] = v46;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  v84 = a2;

  v87 = a3;

  v88 = a4;
  swift_unknownObjectRetain();
  sub_1E1AF55EC();
  v47 = v98[0];
  if (qword_1EE1D21E8 != -1)
  {
    swift_once();
  }

  v81 = a21;
  v83 = a20;
  v48 = v80;
  v49 = *(v80 + 104);
  v79 = *MEMORY[0x1E69AAFB8];
  v50 = v93;
  *v78 = v49;
  v49(v30);
  v51 = v92;
  sub_1E1AF52AC();
  v80 = *(v48 + 8);
  (v80)(v30, v50);
  v52 = v94;
  sub_1E1AF532C();
  v91 = v47;
  v53 = *(v97 + 8);
  v97 += 8;
  v53(v51, v52);
  v54 = v98[0];
  type metadata accessor for FastImpressionFlushGate();
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55[4] = 0;
  v55[5] = 0;
  v55[2] = v54;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_fastPipeGate) = v55;
  v56 = (v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStateController);
  v57 = v82;
  *v56 = v95;
  v56[1] = v57;
  v58 = qword_1EE1E2FE8;
  swift_unknownObjectRetain();
  if (v58 != -1)
  {
    swift_once();
  }

  v59 = v93;
  (*v78)(v30, v79, v93);
  v60 = v92;
  sub_1E1AF52AC();
  (v80)(v30, v59);
  v61 = v94;
  sub_1E1AF532C();
  v53(v60, v61);
  v62 = v98[0];
  type metadata accessor for FastImpressionsTracker();
  v63 = swift_allocObject();
  v63[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  v63[5] = sub_1E1AF4E8C();
  swift_allocObject();
  v63[6] = sub_1E1AF4E8C();
  v63[4] = v62;
  type metadata accessor for SearchResultsDecorationsProvider();
  *(v31 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_decorationsProvider) = swift_allocObject();
  v64 = sub_1E17E1158(qword_1EE1DA5B0, type metadata accessor for FastImpressionsTracker);
  v65 = v96;

  v66 = sub_1E138C578(v65, v63, v64, 0);

  v67 = (v66 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsAppendixData);
  swift_beginAccess();
  v68 = v81;
  *v67 = v83;
  v67[1] = v68;
  swift_retain_n();
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30D0);
  sub_1E1302CD4(&qword_1EE1D2A68, &qword_1ECEB30D0);

  sub_1E1AF3CDC();
  v69 = v86;
  sub_1E1AF3CEC();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v98);
  (*(v89 + 8))(v69, v90);
  v70 = *(v66 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_fastPipeGate);

  v71 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v72 = *(v70 + 32);
  v73 = *(v70 + 40);
  *(v70 + 32) = sub_1E17DFEB4;
  *(v70 + 40) = v71;

  sub_1E1361B18(v72, v73);

  swift_beginAccess();
  v63[3] = &protocol witness table for SearchResultsPresenter;
  swift_unknownObjectWeakAssign();

  return v66;
}

uint64_t SearchResultsPresenter.init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, char *a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v95 = a1;
  v83 = a19;
  v94 = a18;
  v88 = a17;
  v87 = a16;
  v85 = a15;
  v84 = a14;
  v81 = a13;
  v80 = a12;
  LODWORD(v79) = a11;
  LODWORD(v78) = a10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A0);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v74 - v27;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v96 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v74 - v28;
  v92 = sub_1E1AF3D0C();
  v82 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a8;
  v32 = *a9;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v33 = (v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity) = 4;
  v35 = MEMORY[0x1E69E7CC0];
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results) = MEMORY[0x1E69E7CC0];
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_transparencyLink) = 0;
  v36 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStates;
  v37 = sub_1E159DA28(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9898);
  swift_allocObject();
  *(v22 + v36) = sub_1E14C5D90(v37);
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isAutoPlayEnabled) = 0;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isCondensedSearchLockupsEnabled) = 0;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isPreparingNextPage) = 0;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchPresenter) = a2;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_facetsPresenter) = a3;
  v38 = (v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager);
  v39 = v75;
  *v38 = a4;
  v38[1] = v39;
  v40 = (v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term);
  v41 = v77;
  *v40 = v76;
  v40[1] = v41;
  swift_beginAccess();
  *(v22 + v34) = v31;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin) = v32;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isNetworkConstrained) = v78;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_spellCheckEnabled) = v79;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_excludedTerms) = v80;
  v42 = (v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_originatingTerm);
  v43 = v84;
  *v42 = v81;
  v42[1] = v43;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchTokens) = v85;
  v44 = (v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchOptimizationTerm);
  v45 = v88;
  *v44 = v87;
  v44[1] = v45;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  v85 = a2;

  v87 = a3;

  v88 = a4;
  swift_unknownObjectRetain();
  sub_1E1AF55EC();
  v46 = v97[0];
  if (qword_1EE1D21E8 != -1)
  {
    swift_once();
  }

  v81 = a21;
  v84 = a20;
  v47 = v82;
  v48 = *(v82 + 104);
  LODWORD(v80) = *MEMORY[0x1E69AAFB8];
  v49 = v92;
  v79 = v48;
  v48(v30);
  v50 = v91;
  sub_1E1AF52AC();
  v78 = *(v47 + 8);
  v78(v30, v49);
  v51 = v93;
  sub_1E1AF532C();
  v82 = v46;
  v52 = *(v96 + 8);
  v96 += 8;
  v52(v50, v51);
  v53 = v97[0];
  type metadata accessor for FastImpressionFlushGate();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54[4] = 0;
  v54[5] = 0;
  v54[2] = v53;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_fastPipeGate) = v54;
  v55 = (v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStateController);
  v56 = v83;
  *v55 = v94;
  v55[1] = v56;
  v57 = qword_1EE1E2FE8;
  swift_unknownObjectRetain();
  if (v57 != -1)
  {
    swift_once();
  }

  v83 = "GenericPagePresenter";
  v58 = v92;
  v79(v30, v80, v92);
  v59 = v91;
  sub_1E1AF52AC();
  v78(v30, v58);
  v60 = v93;
  sub_1E1AF532C();
  v52(v59, v60);
  v61 = v97[0];
  type metadata accessor for FastImpressionsTracker();
  v62 = swift_allocObject();
  v62[3] = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  v62[5] = sub_1E1AF4E8C();
  swift_allocObject();
  v62[6] = sub_1E1AF4E8C();
  v62[4] = v61;
  type metadata accessor for SearchResultsDecorationsProvider();
  *(v22 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_decorationsProvider) = swift_allocObject();
  v63 = sub_1E17E1158(qword_1EE1DA5B0, type metadata accessor for FastImpressionsTracker);
  v64 = v95;

  v65 = sub_1E138C578(v64, v62, v63, 0);

  v66 = (v65 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsAppendixData);
  swift_beginAccess();
  v67 = v81;
  *v66 = v84;
  v66[1] = v67;
  swift_retain_n();
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30D0);
  sub_1E1302CD4(&qword_1EE1D2A68, &qword_1ECEB30D0);

  sub_1E1AF3CDC();
  type metadata accessor for SearchResultsPresenter();
  v68 = v86;
  sub_1E1AF3CEC();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v97);
  (*(v89 + 8))(v68, v90);
  v69 = *(v65 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_fastPipeGate);

  v70 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v71 = *(v69 + 32);
  v72 = *(v69 + 40);
  *(v69 + 32) = sub_1E17E11B0;
  *(v69 + 40) = v70;

  sub_1E1361B18(v71, v72);

  swift_beginAccess();
  v62[3] = &protocol witness table for SearchResultsPresenter;
  swift_unknownObjectWeakAssign();

  return v65;
}

uint64_t sub_1E17DB16C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE1D29E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1E1AF3C1C();
    v2 = __swift_project_value_buffer(v1, qword_1EE1D29E8);
    sub_1E183B5D0(v2);
  }

  return result;
}

uint64_t sub_1E17DB208()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isCondensedSearchLockupsEnabled;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    v8 = (v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsAppendixData);
    result = swift_beginAccess();
    if (!*v8)
    {
      return result;
    }

    v10 = v8[1];
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 24);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  v2 = swift_allocObject();
  swift_weakInit();
  v3 = (v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsAppendixData);
  swift_beginAccess();
  if (*v3)
  {
    v4 = v3[1];
    v5 = swift_getObjectType();
    swift_beginAccess();
    v6 = *(v4 + 8);
    swift_unknownObjectRetain();

    v6(v7, sub_1E17E11A0, v2, v5, v4);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1E17DB3C0()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  type metadata accessor for AppSearchResult();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {

    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup);
  v2 = *(v1 + 24);
  *&v9 = *(v1 + 16);
  *(&v9 + 1) = v2;

  sub_1E17DE468(&v9, v7);

  v9 = v7[0];
  v10 = v7[1];
  v11 = v7[2];
  v12 = v8;
  v3 = v8 >> 60;
  v4 = 1;
  if (v8 >> 60 != 2 && v3 != 7)
  {
    if (v3 != 8 || *(&v12 + 1) || v8 != 0x8000000000000000 || v9 != 1 || (v5 = vorrq_s8(v10, v11), *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(&v9 + 1)))
    {
      v4 = 0;
    }
  }

  sub_1E139CEA8(&v9);
  return v4;
}

uint64_t sub_1E17DB4F8()
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

  return sub_1E17DBAE0(0);
}

uint64_t sub_1E17DB644(char a1)
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

uint64_t sub_1E17DB844(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v5 + 32) + 8))(ObjectType);
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
      (*(*(v7 + 32) + 16))(v8);
      goto LABEL_6;
    }
  }

  return sub_1E17DB644(v3);
}

void (*sub_1E17DB948(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_1E17DB9D4;
}

void sub_1E17DB9D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v5 = *(v3 + 32);
  *(v3 + 32) = v4;
  v6 = v3 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
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
    v9 = (*(v7 + 32) + 8);
    goto LABEL_9;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v10 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(v10 + 32) + 16);
LABEL_9:
  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_10:
  sub_1E17DB644(v5);

  free(v2);
}

uint64_t sub_1E17DBAE0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - v6;
  result = swift_beginAccess();
  if (*(v1 + 32))
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    result = sub_1E1AF71CC();
    if (result)
    {
LABEL_4:
      if ((a1 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  v11 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term + 8);
  if (v11)
  {
    v48 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term);
    LODWORD(v12) = *(v1 + 32);
    *(v1 + 32) = 1;
    v13 = v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = v12;
      v12 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      v47 = v5;
      v15 = *(v12 + 32);
      v44 = *(v15 + 8);
      v45 = ObjectType;

      v16 = v15;
      v5 = v47;
      v44(v45, v16);
      LOBYTE(v12) = v46;
      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1E17DB644(v12);
    if (a1)
    {
      *(v1 + v9) = MEMORY[0x1E69E7CC0];

      sub_1E17DB208();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v13 + 8);
        v26 = swift_getObjectType();
        (*(v25 + 56))(v26, v25);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = v5;
        v28 = *(v13 + 8);
        v29 = swift_getObjectType();
        v30 = *(v28 + 24);
        v5 = v27;
        (*(v30 + 8))(v29);
        swift_unknownObjectRelease();
      }
    }

    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v31 = v49[0];
    if (qword_1EE1E3088 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();
    (*(v5 + 8))(v7, v4);
    if (LOBYTE(v49[0]) == 1 && *(v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager))
    {
      v47 = v31;
      v32 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager + 8);
      v33 = swift_getObjectType();
      v34 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStateController);
      v35 = *(v2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_appStateController + 8);
      v36 = *(v32 + 16);
      swift_unknownObjectRetain();
      v37 = v48;
      v36(v48, v11, v34, v35, v33, v32);
      v38 = swift_allocObject();
      v38[2] = v2;
      v38[3] = v37;
      v38[4] = v11;
      v39 = swift_allocObject();
      v39[2] = v2;
      v39[3] = v37;
      v39[4] = v11;
      v40 = sub_1E1361A80();
      swift_retain_n();

      v41 = sub_1E1AF68EC();
      v49[3] = v40;
      v49[4] = MEMORY[0x1E69AB720];
      v49[0] = v41;
      sub_1E1AF57FC();
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    else
    {
      v42 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin;
      swift_beginAccess();
      v50 = *(v2 + v42);
      sub_1E17DFF08(v48, v11, 0, &v50, 0, 0);
    }
  }

  else
  {
    *(v1 + v9) = MEMORY[0x1E69E7CC0];

    sub_1E17DB208();
    v17 = v1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      v19 = swift_getObjectType();
      (*(v18 + 56))(v19, v18);
      swift_unknownObjectRelease();
    }

    v20 = *(v1 + 32);
    *(v1 + 32) = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v17 + 8);
      v22 = swift_getObjectType();
      (*(*(v21 + 32) + 16))(v22);
      swift_unknownObjectRelease();
    }

    sub_1E17DB644(v20);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v23 = *(v17 + 8);
      v24 = swift_getObjectType();
      (*(*(v23 + 24) + 8))(v24);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E17DC0F0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin;
  swift_beginAccess();
  v10 = *(a2 + v8);
  return sub_1E17DFF08(a3, a4, v7, &v10, 0, 0);
}

uint64_t sub_1E17DC178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin;
  swift_beginAccess();
  v9 = *(a2 + v7);
  return sub_1E17DFF08(a3, a4, 0, &v9, 0, 0);
}

uint64_t sub_1E17DC1F4(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v6 = sub_1E1AF503C();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFE6C();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1E134FD1C(*a1 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_nextPage, &v83, &qword_1ECEB2DF0);
  v11 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage;
  swift_beginAccess();
  sub_1E137F818(&v83, a2 + v11);
  swift_endAccess();
  v12 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isAutoPlayEnabled);
  v13 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isAutoPlayEnabled;
  swift_beginAccess();
  *(a2 + v13) = v12;
  v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isCondensedSearchLockupsEnabled);
  v15 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isCondensedSearchLockupsEnabled;
  swift_beginAccess();
  *(a2 + v15) = v14;
  v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_transparencyLink);
  v17 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_transparencyLink;
  swift_beginAccess();
  *(a2 + v17) = v16;

  swift_beginAccess();
  v18 = *(a2 + 32);
  *(a2 + 32) = 0;
  v19 = a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v20 + 32) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E17DB644(v18);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v19 + 8);
    v23 = swift_getObjectType();
    (*(v22 + 128))(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_resultsParentImpressionMetrics, v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, v23, v22);
    swift_unknownObjectRelease();
  }

  v24 = OBJC_IVAR____TtC11AppStoreKit13SearchResults_results;
  v25 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_results);
  if (v25 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_7;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  sub_1E134FD1C(a2 + v11, &v83, &qword_1ECEB2DF0);
  v60 = *(&v84 + 1);
  sub_1E1308058(&v83, &qword_1ECEB2DF0);
  if (v60)
  {
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    swift_beginAccess();
    sub_1E13891EC(&v83, a2 + 40);
    swift_endAccess();
    sub_1E138B568();
    sub_1E1308058(&v83, &qword_1ECEB2588);
    sub_1E17DF23C();
    goto LABEL_33;
  }

LABEL_7:
  v26 = *(v10 + v24);
  if (v26 >> 62)
  {
    v27 = sub_1E1AF71CC();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    if (Strong)
    {
      v29 = *(v19 + 8);
      v30 = swift_getObjectType();
      (*(v29 + 88))(v12, v30, v29);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v19 + 8);
      v32 = swift_getObjectType();
      (*(v31 + 144))(v14, v32, v31);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v19 + 8);
      v34 = swift_getObjectType();
      (*(v33 + 72))(v34, v33);
      swift_unknownObjectRelease();
    }

    v35 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 8);
    v36 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 16);
    v37 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 24);
    *&v83 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets);
    *(&v83 + 1) = v35;
    *&v84 = v36;
    BYTE8(v84) = v37;
    v38._rawValue = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_selectedFacetOptions);
    sub_1E13C0418(v83);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&v83, v38);
    sub_1E13C045C(v83);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = *(v19 + 8);
      v40 = swift_getObjectType();
      (*(v39 + 104))(*(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_message), v40, v39);
      swift_unknownObjectRelease();
    }

    v41 = *(v10 + v24);
    swift_beginAccess();

    sub_1E1728534(v42);
    swift_endAccess();
    sub_1E17DB208();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v19 + 8);
      v44 = swift_getObjectType();
      (*(v43 + 48))(v41, v44, v43);
      swift_unknownObjectRelease();
    }

    *(&v84 + 1) = type metadata accessor for SearchResults();
    *&v85 = &protocol witness table for BasePage;
    *(&v85 + 1) = sub_1E17E1158(qword_1EE1E0178, type metadata accessor for SearchResults);
    *&v83 = v10;
    swift_beginAccess();

    sub_1E13891EC(&v83, a2 + 40);
    swift_endAccess();
    sub_1E138B568();
    sub_1E1308058(&v83, &qword_1ECEB2588);
    swift_beginAccess();
    v45 = *(a2 + 16);
    if (v45)
    {

      v46 = v75;
      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v48 = v47;
      (*(v76 + 8))(v46, v77);
      v49 = v45 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v49 = v48;
      *(v49 + 8) = 0;
      v50 = *(v45 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
      swift_beginAccess();
      *(v50 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }
  }

  else
  {
    if (Strong)
    {
      v51 = *(v19 + 8);
      v52 = *(a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term + 8);
      if (v52)
      {
        v77 = *(a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term);
        v53 = v52;
      }

      else
      {
        v77 = 0;
        v53 = 0xE000000000000000;
      }

      v54 = swift_getObjectType();
      v55 = *(v51 + 40);

      v55(v77, v53, v54, v51);

      swift_unknownObjectRelease();
    }

    v56 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 8);
    v57 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 16);
    v58 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 24);
    *&v83 = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets);
    *(&v83 + 1) = v56;
    *&v84 = v57;
    BYTE8(v84) = v58;
    v59._rawValue = *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_selectedFacetOptions);
    sub_1E13C0418(v83);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&v83, v59);
    sub_1E13C045C(v83);
    *(&v84 + 1) = type metadata accessor for SearchResults();
    *&v85 = &protocol witness table for BasePage;
    *(&v85 + 1) = sub_1E17E1158(qword_1EE1E0178, type metadata accessor for SearchResults);
    *&v83 = v10;
    swift_beginAccess();

    sub_1E13891EC(&v83, a2 + 40);
    swift_endAccess();
    sub_1E138B568();
    sub_1E1308058(&v83, &qword_1ECEB2588);
  }

LABEL_33:
  if (*(a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_guidedSearchPresenter))
  {
    v61 = v78[9];
    v91 = v78[8];
    v92 = v61;
    v93 = v78[10];
    v62 = v78[5];
    v87 = v78[4];
    v88 = v62;
    v63 = v78[7];
    v89 = v78[6];
    v90 = v63;
    v64 = v78[1];
    v83 = *v78;
    v84 = v64;
    v65 = v78[3];
    v85 = v78[2];
    v86 = v65;
    GuidedSearchPresenter.searchDidReturn(for:with:queries:)(&v83, *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokens), *(v10 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchQueries));
  }

  if (*(a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager))
  {
    v66 = *(a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager + 8);
    v67 = swift_getObjectType();
    (*(v66 + 32))(v79, v67, v66);
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    *(&v84 + 1) = type metadata accessor for SearchResults();
    *&v85 = &protocol witness table for BasePage;
    *(&v85 + 1) = sub_1E17E1158(qword_1EE1E0178, type metadata accessor for SearchResults);
    *&v83 = v10;

    PendingPageRender.use(pageRenderEventFrom:)(&v83);

    sub_1E1308058(&v83, &qword_1ECEB2588);
  }

  result = swift_beginAccess();
  if (*(a2 + 24))
  {
    v69 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v70 = sub_1E1AF3C3C();
    v71 = v80;
    (*(*(v70 - 8) + 16))(v80, v10 + v69, v70);
    v73 = v81;
    v72 = v82;
    (*(v81 + 104))(v71, *MEMORY[0x1E69AB440], v82);

    sub_1E1AF508C();

    return (*(v73 + 8))(v71, v72);
  }

  return result;
}

uint64_t sub_1E17DCD44(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF503C();
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
  swift_beginAccess();
  *(a2 + v11) = MEMORY[0x1E69E7CC0];

  sub_1E17DB208();
  v12 = a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 56))(ObjectType, v13);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v15 = *(a2 + 32);
  *(a2 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v12 + 8);
    v17 = swift_getObjectType();
    (*(*(v16 + 32) + 16))(v17);
    swift_unknownObjectRelease();
  }

  sub_1E17DB644(v15);
  memset(v44, 0, sizeof(v44));
  swift_beginAccess();
  sub_1E13891EC(v44, a2 + 40);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(v44, &qword_1ECEB2588);
  v18 = *(v8 + 20);
  v19 = sub_1E1AEFCCC();
  (*(*(v19 - 8) + 56))(&v10[v18], 1, 1, v19);
  *v10 = a1;
  swift_beginAccess();
  v20 = *(a2 + 16);
  if (v20)
  {
    v40 = v6;
    sub_1E17E1158(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v39 = swift_allocError();
    sub_1E13614D0(v10, v21);
    v22 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v23 = *(v20 + v22);
    v41 = a1;
    v24 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1E172D0E4(0, v23[2] + 1, 1, v23);
      *(v20 + v22) = v23;
    }

    v27 = v23[2];
    v26 = v23[3];
    if (v27 >= v26 >> 1)
    {
      v23 = sub_1E172D0E4((v26 > 1), v27 + 1, 1, v23);
    }

    v23[2] = v27 + 1;
    v23[v27 + 4] = v39;
    *(v20 + v22) = v23;
    swift_endAccess();

    a1 = v41;
    v6 = v40;
  }

  else
  {
    v28 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    v30 = v42;
    v29 = v43;
    *v42 = a1;
    (*(v29 + 104))(v30, *MEMORY[0x1E69AB430], v6);
    v31 = a1;

    sub_1E1AF508C();

    (*(v29 + 8))(v30, v6);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v12 + 8);
    v33 = swift_getObjectType();
    sub_1E17E1158(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v34 = swift_allocError();
    sub_1E13614D0(v10, v35);
    (*(*(v32 + 32) + 24))(v34, v33);
    swift_unknownObjectRelease();
  }

  if (*(a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager))
  {
    v36 = *(a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_sponsoredSearchSessionManager + 8);
    v37 = swift_getObjectType();
    (*(v36 + 40))(a3, a1, v37, v36);
  }

  return sub_1E1361548(v10);
}

void sub_1E17DD2B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_fastPipeGate);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_1E137A684;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E1367148;
    v9[3] = &block_descriptor_74;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
    _Block_release(v5);

    v8 = [objc_opt_self() mainRunLoop];
    [v8 addTimer:v7 forMode:*MEMORY[0x1E695DA28]];

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_1E17DD468()
{
  v1 = sub_1E1AEF4AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term + 8);
  if (v5)
  {
    v15 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_term);
    v16 = v5;

    sub_1E1AEF49C();
    sub_1E13B8AA4();
    v6 = sub_1E1AF6E0C();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0x745F686372616573;
  *(inited + 40) = 0xEB000000006D7265;
  v15 = 11043298;
  v16 = 0xA300000000000000;
  MEMORY[0x1E68FECA0](v6, v8);

  MEMORY[0x1E68FECA0](11108834, 0xA300000000000000);
  v10 = v16;
  *(inited + 48) = v15;
  *(inited + 56) = v10;
  v11 = sub_1E13017E4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &unk_1ECEB9500);
  v12._object = 0x80000001E1B5C170;
  v12._countAndFlagsBits = 0xD000000000000013;
  countAndFlagsBits = localizedString(_:with:)(v12, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1E17DD68C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isAutoPlayEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E17DD6D0(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isAutoPlayEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E17DD780()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isCondensedSearchLockupsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E17DD7C4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1E17DD82C()
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

    v8 = MEMORY[0x1E68FFD80](v3, v7);

    return v8;
  }

  else if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E17DD918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    result = sub_1E1AF71CC();
    if (a1 < 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 < 0)
    {
LABEL_11:
      v13 = 0uLL;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v14 = xmmword_1E1B0E0F0;
      goto LABEL_12;
    }
  }

  if (result <= a1)
  {
    goto LABEL_11;
  }

  v8 = *(v2 + v5);
  if ((v8 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E68FFD80](a1, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      return result;
    }
  }

  type metadata accessor for AppSearchResult();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    *a2 = 4;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = xmmword_1E1B11BA0;
    return result;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup);
  v11 = *(v10 + 24);
  v15[0] = *(v10 + 16);
  v15[1] = v11;

  sub_1E17DE468(v15, v16);

  v12 = v16[1];
  *a2 = v16[0];
  *(a2 + 16) = v12;
  v13 = v16[2];
  v14 = v16[3];
LABEL_12:
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  return result;
}

BOOL sub_1E17DDAA0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_isCondensedSearchLockupsEnabled;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return 0;
  }

  v2 = sub_1E1AF018C();
  sub_1E17DD918(v2, v7);
  if ((v8 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    return 0;
  }

  v4 = v8 >> 60;
  v5 = v8 >> 60 == 2 || v4 == 7;
  v6 = v5 || v4 == 8 && !v9 && v8 == 0x8000000000000000 && v7[0] == 1 && !(v7[2] | v7[1] | v7[3] | v7[4] | v7[5]);
  sub_1E1308058(v7, &unk_1ECEB7B50);
  return v6;
}

uint64_t sub_1E17DDBB4(uint64_t a1)
{
  v3 = sub_1E1AF01FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_transparencyLink;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!v8)
  {
    return 0;
  }

  v9 = ASKDeviceTypeGetCurrent();
  v10 = sub_1E1AF5DFC();
  v12 = v11;
  v14 = v10 == sub_1E1AF5DFC() && v12 == v13;
  v15 = &qword_1ECEB9000;
  if (v14)
  {

    goto LABEL_10;
  }

  v16 = sub_1E1AF74AC();

  if ((v16 & 1) == 0)
  {
    v55[1] = v8;
    v25 = sub_1E1AF5DFC();
    v27 = v26;
    if (v25 == sub_1E1AF5DFC() && v27 == v28)
    {

      if (a1 == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v30 = sub_1E1AF74AC();

      if ((v30 & 1) != 0 && a1 == 1)
      {
        goto LABEL_7;
      }
    }

    v31 = sub_1E1AF5DFC();
    v33 = v32;
    if (v31 == sub_1E1AF5DFC() && v33 == v34)
    {
      v35 = v1;

      goto LABEL_33;
    }

    v36 = sub_1E1AF74AC();

    if (v36)
    {
      v35 = v1;

LABEL_33:
      MEMORY[0x1E68F8EA0](0, 0);
      v37 = sub_1E1AF018C();
      v1 = v35;
      v15 = &qword_1ECEB9000;
      if ((v37 & 0x8000000000000000) == 0)
      {
        v38 = v37;
        v39 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_results;
        swift_beginAccess();
        v40 = *(v1 + v39);
        if (v40 >> 62)
        {
          if (v38 < sub_1E1AF71CC())
          {
LABEL_36:
            v41 = *(v1 + v39);
            if ((v41 & 0xC000000000000001) != 0)
            {

              MEMORY[0x1E68FFD80](v38, v41);
            }

            else
            {
              if (v38 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_72;
              }
            }

            (*(v4 + 8))(v6, v3);
            type metadata accessor for AdvertsSearchResult();
            v42 = swift_dynamicCastClass();
            if (!v42)
            {
              goto LABEL_73;
            }

            v6 = *(v42 + OBJC_IVAR____TtC11AppStoreKit19AdvertsSearchResult_lockups);
            if (!(v6 >> 62))
            {
              if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              goto LABEL_73;
            }

LABEL_72:
            if (sub_1E1AF71CC())
            {
LABEL_42:
              if ((v6 & 0xC000000000000001) != 0)
              {

                v43 = MEMORY[0x1E68FFD80](0, v6);
              }

              else
              {
                if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_82;
                }

                v43 = *(v6 + 4);
              }

              v6 = *(v43 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_trailers);
              if (v6 >> 62)
              {
                if (sub_1E1AF71CC())
                {
LABEL_47:
                  if ((v6 & 0xC000000000000001) == 0)
                  {
                    v44 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

                    if (v44)
                    {
                      v17 = 10;
                      goto LABEL_11;
                    }

                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_82:
                  MEMORY[0x1E68FFD80](0, v6);

                  swift_unknownObjectRelease();
                  v17 = 10;
                  goto LABEL_11;
                }
              }

              else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_47;
              }

              v44 = *(v43 + OBJC_IVAR____TtC11AppStoreKit16MixedMediaLockup_screenshots);
              if (!(v44 >> 62))
              {
                result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!result)
                {
LABEL_85:

                  v17 = 11;
                  goto LABEL_11;
                }

                goto LABEL_78;
              }

LABEL_84:
              result = sub_1E1AF71CC();
              if (!result)
              {
                goto LABEL_85;
              }

LABEL_78:
              if ((v44 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1E68FFD80](0, v44);
                swift_unknownObjectRelease();
              }

              else if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }
            }

LABEL_73:

            v17 = 10;
            goto LABEL_11;
          }
        }

        else if (v38 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }
      }

      (*(v4 + 8))(v6, v3);
      v17 = 10;
      goto LABEL_11;
    }

    v45 = sub_1E1AF5DFC();
    v47 = v46;
    v15 = &qword_1ECEB9000;
    if (v45 == sub_1E1AF5DFC() && v47 == v48)
    {
    }

    else
    {
      v49 = sub_1E1AF74AC();

      if ((v49 & 1) == 0)
      {
LABEL_56:
        v50 = sub_1E1AF5DFC();
        v52 = v51;
        if (v50 == sub_1E1AF5DFC() && v52 == v53)
        {

          goto LABEL_60;
        }

        v54 = sub_1E1AF74AC();

        if (v54)
        {
LABEL_60:
          if (a1 == 3)
          {
            v17 = 9;
            goto LABEL_11;
          }
        }

LABEL_10:
        v17 = 5;
        goto LABEL_11;
      }
    }

    if (a1 == 2)
    {

      v17 = 10;
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_7:

  v17 = 5;
  v15 = &qword_1ECEB9000;
LABEL_11:
  v19 = v15[273];
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 >> 62)
  {
    if (sub_1E1AF71CC() >= v17)
    {
      goto LABEL_18;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17)
  {
    goto LABEL_18;
  }

  v21 = *(v1 + v19);
  if (v21 >> 62)
  {
    goto LABEL_65;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_15:
    v22 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_nextPage;
    swift_beginAccess();
    sub_1E134FD1C(v1 + v22, v56, &qword_1ECEB2DF0);
    v23 = v57;
    sub_1E1308058(v56, &qword_1ECEB2DF0);
    if (!v23)
    {
      v24 = *(v1 + v19);
      if (v24 >> 62)
      {
        v17 = sub_1E1AF71CC();
      }

      else
      {
        v17 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }
  }

LABEL_18:
  while (1)
  {
    result = v17 - 1;
    if (!__OFSUB__(v17, 1))
    {
      return result;
    }

    __break(1u);
LABEL_65:
    if (sub_1E1AF71CC() >= 1)
    {
      goto LABEL_15;
    }
  }
}