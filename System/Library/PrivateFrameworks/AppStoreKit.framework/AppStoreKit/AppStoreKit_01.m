uint64_t sub_1E1319F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &qword_1ECEB5A88);
}

uint64_t sub_1E131A044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E131A0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E131A120()
{

  return swift_deallocObject();
}

uint64_t sub_1E131A15C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t _s11AppStoreKit16BadgeViewSpacingOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11AppStoreKit16BadgeViewSpacingOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1E131A1FC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E131A218(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1E131A238()
{

  return swift_deallocObject();
}

uint64_t sub_1E131A270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E131A2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E131A374@<X0>(void *a1@<X8>)
{
  sub_1E158C118();
  result = sub_1E1AF24EC();
  *a1 = v3;
  return result;
}

uint64_t sub_1E131A404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E131A4CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5310);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1E131A598@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131A5F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E131A728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E131A948()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131A998@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1E131AA58()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E131AA90()
{

  return swift_deallocObject();
}

uint64_t sub_1E131AAC8()
{
  v1 = sub_1E1AF539C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131ABB8()
{

  return swift_deallocObject();
}

uint64_t sub_1E131ABF0()
{

  return swift_deallocObject();
}

uint64_t sub_1E131AC28()
{

  return swift_deallocObject();
}

uint64_t sub_1E131AC7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 160);
}

uint64_t sub_1E131ACCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E188E438();
  *a1 = result & 1;
  return result;
}

__n128 sub_1E131AD40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E131AD4C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131AD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF4F3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1E1AF430C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E131AEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF4F3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1E1AF430C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E131AFD0()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E131B008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E131B060(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_1E15B8D2C(v5);
}

uint64_t sub_1E131B0C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131B100()
{

  return swift_deallocObject();
}

uint64_t sub_1E131B148()
{

  return swift_deallocObject();
}

uint64_t sub_1E131B180()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131B1B8()
{

  return swift_deallocObject();
}

uint64_t sub_1E131B1F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E131B238()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131B2B8()
{

  return swift_deallocObject();
}

uint64_t sub_1E131B35C()
{
  v1 = (type metadata accessor for SwiftUIArtworkView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_1E1AF2BAC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E131B484(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E131B540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131B5F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF2BAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6480);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E131B724(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1AF2BAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6480);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E131B85C()
{
  v1 = (type metadata accessor for RemoteArtworkView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1E1AF2BAC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_1E131B998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB65A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E131BA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E131BADC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131BB80()
{

  return swift_deallocObject();
}

uint64_t sub_1E131BBC8()
{

  return swift_deallocObject();
}

uint64_t sub_1E131BC28()
{

  return swift_deallocObject();
}

uint64_t sub_1E131BC60()
{

  return swift_deallocObject();
}

uint64_t sub_1E131BC98()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1E131BCE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF524C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E131BD8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF524C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131BE30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131BE84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131BEBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131BEF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131BF34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131BF70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131BFCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131C030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E131C0E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E131C144()
{

  return swift_deallocObject();
}

uint64_t sub_1E131C184()
{

  return swift_deallocObject();
}

uint64_t sub_1E131C1BC()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E131C1F4()
{

  return swift_deallocObject();
}

uint64_t sub_1E131C248()
{

  return swift_deallocObject();
}

uint64_t sub_1E131C280()
{
  sub_1E1361A60(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E131C2BC()
{

  if (*(v0 + 32))
  {

    if (*(v0 + 48))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E131C31C()
{

  if (*(v0 + 64))
  {

    if (*(v0 + 80))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E131C390()
{
  sub_1E1361A60(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E131C414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E131C480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E131C4F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &qword_1ECEB2DF0);
}

uint64_t sub_1E131C568@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131C5B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131C610()
{

  return swift_deallocObject();
}

uint64_t sub_1E131C648()
{

  return swift_deallocObject();
}

uint64_t sub_1E131C698()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131C75C()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131C834()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131C90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FramedMediaLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E131C9B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FramedMediaLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131CA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF127C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E131CB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF127C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E131CBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFCCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E131CCA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFCCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E131CD64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E131CE20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131CF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E131CF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E131D000()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131D08C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131D0C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131D0FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E131D148()
{

  return swift_deallocObject();
}

uint64_t sub_1E131D180()
{

  return swift_deallocObject();
}

uint64_t sub_1E131D1D8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131D228()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131D280()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E131D330(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1E131D3EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131D4A4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E68FB190]();
  *a1 = result;
  return result;
}

uint64_t sub_1E131D524()
{
  v1 = type metadata accessor for LinkableTextView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 56))
  {
    if (*(v2 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    }
  }

  else
  {
  }

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E1AF0D5C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1E161B3FC(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  sub_1E161B3FC(*(v2 + v1[10]), *(v2 + v1[10] + 8));
  sub_1E161B3FC(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_1E131D6AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E131D6F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_1E131D740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 120, a2, &qword_1ECEB2DF0);
}

uint64_t sub_1E131D7A0()
{
  v1 = sub_1E1AF3C1C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1E1AF436C();
  v6 = *(v5 - 8);
  v7 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E131D93C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131D974()
{
  v1 = sub_1E1AF436C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E1AF3B5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  }

  v9 = (v3 + 112) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_1E131DAF8()
{

  return swift_deallocObject();
}

float64x2_t sub_1E131DB30@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  result = vaddq_f64(vmulq_n_f64(*a1, 1.0 - a4), vmulq_n_f64(*a2, a4));
  *a3 = result;
  return result;
}

uint64_t sub_1E131DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E131DC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131DCA4()
{

  return swift_deallocObject();
}

uint64_t sub_1E131DCE4()
{

  return swift_deallocObject();
}

uint64_t sub_1E131DD1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131DD78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131DDDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E131DE60()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131DF5C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131DF94()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131DFCC()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1E131E06C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

uint64_t sub_1E131E0B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_1E131E0F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 81) = v2;
  return result;
}

uint64_t sub_1E131E144()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E1A4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEB71A8;
  return result;
}

uint64_t sub_1E131E1F0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECEB71A8 = v1;
  return result;
}

uint64_t sub_1E131E238@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE2168C8;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E131E298()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E131E2DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E314()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E35C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E3D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E408()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131E4D4()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131E5AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131E5E4()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131E6D4()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E730()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (((((((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E131E804()
{

  return swift_deallocObject();
}

uint64_t sub_1E131E84C()
{

  return swift_deallocObject();
}

id sub_1E131E884@<X0>(void *a1@<X8>)
{
  result = Paragraph.text.getter();
  *a1 = result;
  return result;
}

void sub_1E131E8B0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_1E131E8F8@<X0>(void *a1@<X8>)
{
  result = Paragraph.collapsedText.getter();
  *a1 = result;
  return result;
}

void sub_1E131E924(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

uint64_t sub_1E131E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1E1AF524C();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 20);

    return v8(v9, a2, v7);
  }
}

void *sub_1E131EA2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = sub_1E1AF524C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1E131EAD4@<D0>(_OWORD *a1@<X8>)
{
  sub_1E16604E8();
  sub_1E1AF24EC();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1E131EB28()
{
  sub_1E1AF229C();
  sub_1E1660820();
  return swift_getWitnessTable();
}

uint64_t sub_1E131EB90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7470);
  sub_1E16611D8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E131EBFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E1661FE4(v1, v2);
}

uint64_t sub_1E131EC64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E131ECDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E131ED58()
{

  return swift_deallocObject();
}

uint64_t sub_1E131ED94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E131EE40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131EEF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131EF30()
{

  return swift_deallocObject();
}

uint64_t sub_1E131F02C()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E131F0C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E131F0FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131F14C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131F2BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 16))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_1E131F310(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E131F31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E131F3E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E131F4A8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E131F51C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1E131F58C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

__n128 sub_1E131F5FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E131F670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131F6CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131F73C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 96);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131F78C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131F7E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131F81C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E131F86C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131F8A4()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E131F8F4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

id sub_1E131F93C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredSymbolConfiguration];
  *a2 = result;
  return result;
}

uint64_t sub_1E131F98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF426C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E131FA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF426C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E131FB00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E131FB38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E131FB94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E131FBF8()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E131FC40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1E131FC90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1E131FCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E131FD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E131FE34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131FE7C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E131FECC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131FF1C()
{

  return swift_deallocObject();
}

uint64_t sub_1E131FF58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1E131FFA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E131FFE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1320040(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit31AppPromotionDetailPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13200A4()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13200DC()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E1320198()
{

  return swift_deallocObject();
}

uint64_t sub_1E13201E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E132023C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13202A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1320300()
{

  return swift_deallocObject();
}

uint64_t sub_1E132033C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132039C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E13203DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1E1320424(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1E1320468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1E13204B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

uint64_t sub_1E13204F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1E132056C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 96, a2, &unk_1ECEB7230);
}

uint64_t sub_1E13205CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_1E1320620()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1320658@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1E13206A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 48, a2, &qword_1ECEB2DF0);
}

uint64_t sub_1E1320708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1E1320750(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

uint64_t sub_1E13207A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF105C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E1320864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF105C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E1320920()
{

  return swift_deallocObject();
}

id sub_1E1320964@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1E1320970()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13209A8()
{

  return swift_deallocObject();
}

uint64_t sub_1E13209E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1320A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1320A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1320B0C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1320B6C()
{
  v12 = sub_1E1AF0F7C();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1E1AF364C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 8 + v3) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + 8 + v8) & ~v6;
  (*(v1 + 8))(v0 + v2, v12);

  v10 = *(v5 + 8);
  v10(v0 + v7, v4);

  v10(v0 + v9, v4);

  return swift_deallocObject();
}

uint64_t sub_1E1320D18()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1320DF0()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + ((v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3), v1);

  return swift_deallocObject();
}

__n128 sub_1E1320F2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E1320FA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E1321064(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E13213A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 264);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E13214CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 264) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E13215F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1321628()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1321688@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E13216E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit40PersonalizationTransparencyPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1321748()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E13217A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E13217F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1E13218C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OfferButtonMetrics();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_1E132197C()
{

  return swift_deallocObject();
}

uint64_t sub_1E13219E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bootstrap();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 68));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 84);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E1321B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bootstrap();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 84);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E1321C48()
{
  sub_1E1AF21EC();
  sub_1E1AF229C();
  sub_1E1700064(&qword_1ECEB74A0, MEMORY[0x1E697C028]);
  swift_getWitnessTable();
  sub_1E1AF0D9C();
  sub_1E1AF229C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E1321DB4()
{
  v1 = type metadata accessor for BootstrapView();
  v15 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v15 + 64) & ~v15);

  v3 = v2 + *(type metadata accessor for Bootstrap() + 20);
  v4 = type metadata accessor for ASKBootstrapV2(0);
  v5 = v4[5];
  v6 = sub_1E1AF537C();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v3 + v4[7]);
  v7 = v3 + v4[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v3 + v4[9]))
  {
  }

  v8 = v4[13];
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v4[14];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = v2 + *(v1 + 84);
  v13 = sub_1E1AF0C5C();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8);

  MEMORY[0x1E6901750](v2 + *(v1 + 88));

  return swift_deallocObject();
}

uint64_t sub_1E13220D0()
{
  type metadata accessor for AppView.LoadedView();
  sub_1E1AF0BFC();
  sub_1E1AF0BDC();
  swift_getWitnessTable();
  sub_1E170361C(&qword_1ECEB80D0, MEMORY[0x1E69E3A58]);
  sub_1E170361C(qword_1ECEB80D8, MEMORY[0x1E69E3A48]);
  sub_1E1AF0C1C();
  return swift_getWitnessTable();
}

uint64_t sub_1E13221EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB8168);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E1322328(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB8168);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E132249C()
{
  sub_1E1AF6A6C();
  sub_1E1AF229C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E170361C(&qword_1ECEB8208, MEMORY[0x1E6969F20]);
  swift_getOpaqueTypeConformance2();
  sub_1E1AF22FC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8210);
  sub_1E1AF229C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB5D40);
  swift_getWitnessTable();
  sub_1E1703534();
  swift_getWitnessTable();
  sub_1E16610B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E1322690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ASKBootstrapV2(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E132273C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ASKBootstrapV2(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E13227E0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF4FBC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xC)
  {
    return v5 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1322884(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 11);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1E1AF4FBC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E1322908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E13229EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1322A24()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322A64()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322AC8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322B00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1322B38()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E1322B88()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322BC0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322C00()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322C38()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_1E1322C88()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322CD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1322D08()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322D48()
{

  return swift_deallocObject();
}

uint64_t sub_1E1322D90()
{
  v1 = sub_1E1AEFCCC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1322E54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1322EB0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit24ArcadeSubscribePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1322F14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1322F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1322FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1E1323030@<X0>(void *a1@<X8>)
{
  result = NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E1323060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF227C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1E1AF228C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E1323190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF227C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_1E1AF228C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E13232B4()
{

  return swift_deallocObject();
}

uint64_t sub_1E13232F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF524C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E13233A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF524C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1323448()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1323510@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_disappearTime;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &qword_1ECEB24D8);
}

uint64_t sub_1E1323580@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_isLayoutReady);
  result = swift_beginAccess();
  *a2 = (*(v3 + 40) & 1) == 0;
  return result;
}

uint64_t sub_1E1323660@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E13236C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF4FBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1323730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF4FBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E13237A0()
{

  return swift_deallocObject();
}

id sub_1E13237DC@<X0>(void *a1@<X8>)
{
  result = sub_1E1732788();
  *a1 = result;
  return result;
}

void sub_1E1323808(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_1E1323850@<X0>(void *a1@<X8>)
{
  result = sub_1E1732840();
  *a1 = result;
  return result;
}

void sub_1E132387C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

uint64_t sub_1E13238C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_1E1323914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 136, a2, &qword_1ECEB2DF0);
}

uint64_t sub_1E1323974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E1323A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFEAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E1323AE8()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = v1 - 8;
  v14 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v14 + 40) & ~v14);
  v4 = *(v1 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v3 + *(v2 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = v6 + *(type metadata accessor for ShelfLayoutContext() + 24);
  v11 = *(v8 + 48);
  if (!v11(v10, 1, v7))
  {
    v9(v10, v7);
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70) + 48);
  if (!v11(v10 + v12, 1, v7))
  {
    v9(v10 + v12, v7);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1323D60()
{

  sub_1E137B778(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1E1323DE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 16, a2, &qword_1ECEB8AD8);
}

uint64_t sub_1E1323E48()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (v1)
  {
    return *(*(v1 + 24) + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1323E6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1323EA4()
{
  v1 = sub_1E1AF01FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1323F68(uint64_t a1)
{
  result = sub_1E174C984(&qword_1ECEB8B48, type metadata accessor for PurchasesContentPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1323FC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E132401C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1324080@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E13240D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return PurchasesContentPresenter.term.setter(v1, v2);
}

uint64_t sub_1E1324118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_showMacOSCompatibleIOSApps;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1324198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1324238()
{

  return swift_deallocObject();
}

uint64_t sub_1E1324278()
{

  return swift_deallocObject();
}

uint64_t sub_1E13242C8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1324308()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1324340()
{

  return swift_deallocObject();
}

__n128 sub_1E132442C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1E1324444@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_1ECEF49E8);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E13244A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1324534()
{

  return swift_deallocObject();
}

uint64_t sub_1E1324574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E13245E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1324654()
{
  v1 = sub_1E1AEFCCC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E1324724()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E132475C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132479C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13248A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 152, a2, &qword_1ECEB2DF0);
}

uint64_t sub_1E132490C()
{

  sub_1E1360914(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E1324960()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E1324A9C()
{

  return swift_deallocObject();
}

id sub_1E1324AE0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_1E1324B50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_1E1324BA4@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_1E1324BF8(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_1E1324C54()
{

  return swift_deallocObject();
}

uint64_t sub_1E1324D24()
{

  return swift_deallocObject();
}

unint64_t sub_1E1324D5C(uint64_t a1)
{
  result = sub_1E177476C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1324D84()
{

  return swift_deallocObject();
}

uint64_t sub_1E1324DC4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1324DFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1324E5C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1324E94(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E1324F48(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1324FF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E13250B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1325160()
{

  return swift_deallocObject();
}

uint64_t sub_1E13251A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13251D8()
{

  return swift_deallocObject();
}

id sub_1E1325220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

id sub_1E132527C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

uint64_t sub_1E13252DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E132531C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEB8F60;
  return result;
}

uint64_t sub_1E1325368(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECEB8F60 = v1;
  return result;
}

uint64_t sub_1E13253B0()
{

  return swift_deallocObject();
}

uint64_t sub_1E132557C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13255B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1325624@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1325680(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13256E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_hasAskToBuy;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E132573C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_hasAskToBuy;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E1325790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_page;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E13257F0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1325830()
{
  v1 = sub_1E1AF330C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132590C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1325948@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 184);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1325998(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13259F0()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1325A90()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E1325AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECEF4AA0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1325B30()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1325B68()
{

  return swift_deallocObject();
}

uint64_t sub_1E1325BA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9128);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1325C80()
{

  return swift_deallocObject();
}

uint64_t sub_1E1325CC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1E1325D18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1325D68(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1326140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E1326200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OfferButtonMetrics();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E13262CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E1AF537C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1E1326404(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E1AF537C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1E132653C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E132657C()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = v1[5];
  v6 = sub_1E1AF537C();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[7]);
  v7 = v0 + v2 + v1[8];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v4 + v1[9]))
  {
  }

  v8 = v1[13];
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = v4 + v1[14];
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E1326780()
{
  v1 = sub_1E1AF539C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  (*(v2 + 8))(v0 + ((v3 + 56) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1326860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF539C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E132692C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF539C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E1326A0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1E17B9AC8(v3 + 16, a2);
}

uint64_t sub_1E1326A5C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1326A94()
{

  return swift_deallocObject();
}

uint64_t sub_1E1326AE4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1326B24()
{

  return swift_deallocObject();
}

uint64_t sub_1E1326B5C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_1EE1FAD88;
}

uint64_t sub_1E1326BB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1326C0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1326C44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1E1326C90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E17BF8EC(v1, v2);
}

uint64_t sub_1E1326CD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1326D20(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return OfferLabelPresenter.view.setter(v2, v1);
}

uint64_t sub_1E1326D68()
{

  return swift_deallocObject();
}

uint64_t sub_1E1326DA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1326DD8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1326E10()
{
  v1 = sub_1E1AEFCCC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1326ED4()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E1326F28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E1327088()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13270C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1327108()
{

  return swift_deallocObject();
}

uint64_t sub_1E1327148()
{
  v1 = sub_1E1AF364C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E13271D0()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1327270()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13272A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1E13272F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E17C9400(v1, v2);
}

uint64_t sub_1E1327334@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 80);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1327384(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return ArcadeOfferLabelPresenter.view.setter(v2, v1);
}

uint64_t sub_1E13273C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13273F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1327454(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit18PurchasesPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13274B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13274F0()
{
  v1 = sub_1E1AF330C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E13275CC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1327614()
{

  return swift_deallocObject();
}

uint64_t sub_1E132764C()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = (((((((v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1327720()
{

  return swift_deallocObject();
}

uint64_t sub_1E1327768()
{

  return swift_deallocObject();
}

uint64_t sub_1E13277B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1327800()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132783C(uint64_t a1)
{
  result = sub_1E17E1158(&qword_1EE1DA3F0, type metadata accessor for SearchResultsPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1327894@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E13278F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1327954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchEntity;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E13279B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_searchOrigin;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1327A1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22SearchResultsPresenter_transparencyLink;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1327AE0()
{

  if (*(v0 + 136) != 1)
  {

    sub_1E137B778(*(v0 + 160), *(v0 + 168));
  }

  return swift_deallocObject();
}

uint64_t sub_1E1327B8C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1327BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ItemLayoutContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E1327C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ItemLayoutContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E1327D48()
{
  v0._object = 0x80000001E1B77110;
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

uint64_t sub_1E1327E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  sub_1E1300B24(a1, v7);
  return ShelfBasedCollectionViewController.pageGridProvider.setter(v7, v5, v4);
}

__n128 sub_1E1327EEC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E1327EF8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1327F40()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + ((v3 + v5 + 8) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1328050()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + ((v3 + v6 + 8) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1328170()
{

  return swift_deallocObject();
}

uint64_t sub_1E13281B8()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + ((v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1E13282DC()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + ((v3 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1328420()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328458()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E13284A8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E13284E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF436C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1328594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF436C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1328640()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328678()
{

  return swift_deallocObject();
}

uint64_t sub_1E13286C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E13286F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1328730()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328768()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

__n128 sub_1E1328814(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

id sub_1E1328828@<X0>(void *a1@<X8>)
{
  v2 = sub_1E1803290();
  *a1 = v2;

  return v2;
}

void sub_1E1328864(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E17FD078(v1);
}

uint64_t sub_1E13288B0()
{

  return swift_deallocObject();
}

uint64_t sub_1E13288E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328920()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328958()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328998()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13289E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1328A38(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1328AA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit6Action_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &qword_1ECEB2DF0);
}

double sub_1E1328B9C@<D0>(uint64_t a1@<X8>)
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

uint64_t sub_1E1328BBC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E1328C04()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E1328C50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1328C88()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1328CD0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1328D44()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328D7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328E48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_1E1328E9C()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1328ED4()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E1328F1C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1328F64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1328F9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E13290D8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1329118()
{

  return swift_deallocObject();
}

uint64_t sub_1E1329150()
{

  return swift_deallocObject();
}

uint64_t sub_1E132918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E132924C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E1329308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E13293B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1329458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E13294C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E1329544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF12AC();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_1E13295C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E1AF12AC();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_1E1329640(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4418);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1E13296FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4418);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1329854()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132988C(uint64_t a1)
{
  result = sub_1E1852EC0(&qword_1EE1F2480, type metadata accessor for ProductPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E13298E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1329940(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13299D8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1329A10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1329A48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1329A9C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1329B08()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1329D0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1329D74()
{

  return swift_deallocObject();
}

uint64_t sub_1E1329DB4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1329E04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1329E5C()
{
  v1 = sub_1E1AEFEAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1329F64()
{
  v1 = (type metadata accessor for ShelfBasedProductPageIntent() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v0 + v2 + v1[9];
  if (*(v5 + 8) != 1)
  {

    sub_1E137B778(*(v5 + 32), *(v5 + 40));
  }

  return swift_deallocObject();
}

id sub_1E132A0E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

uint64_t sub_1E132A11C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF696C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E132A14C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF698C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E132A17C()
{
  v1 = sub_1E1AF105C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (v4 + ((*(v2 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132A244()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 37));
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 42));
  }

  if (v0[50])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 47));
  }

  return swift_deallocObject();
}

uint64_t sub_1E132A2F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E132A36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E132A48C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA518);
  sub_1E1302CD4(&qword_1ECEBA528, &qword_1ECEBA518);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E132A590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E132A63C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E132A6E4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E132A738()
{

  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  }

  if (*(v0 + 184))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E132A7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E132A8B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E132A970(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF166C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E132AA1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF166C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E132AAC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E132AC10()
{

  return swift_deallocObject();
}

uint64_t sub_1E132AC50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132AC88()
{

  return swift_deallocObject();
}

uint64_t sub_1E132ACC0()
{

  return swift_deallocObject();
}

uint64_t sub_1E132AD3C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132AD74()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132ADAC()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132AE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E132AEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E132AF64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 424);
  return result;
}

uint64_t sub_1E132AFAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 424) = v2;
  return result;
}

uint64_t sub_1E132AFF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 432);
}

uint64_t sub_1E132B040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a2, &unk_1ECEB1770);
}

uint64_t sub_1E132B0B0()
{

  return swift_deallocObject();
}

__n128 sub_1E132B148(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E132B154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E18AA304();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E132B1B8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E18AA378();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E132B22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E163B364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E132B29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF105C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E132B348(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF105C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1E132B3EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_accountID];
  *a2 = result;
  return result;
}

uint64_t sub_1E132B428()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132B460()
{
  v1 = sub_1E1AEF55C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132B524()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E132B56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E132B5C4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E132B618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  return sub_1E1300B24(v3 + v4, a2);
}

uint64_t sub_1E132B678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1E132B6D0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

void sub_1E132B73C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 layer];
  [v3 borderWidth];
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_1E132B79C@<X0>(uint64_t *a1@<X8>)
{
  result = BorderView.roundedCorners.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E132B84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E132B904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFEAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E132B9D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E132BA2C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E132BAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAB18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E132BB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnnotationViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E132BC10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnnotationViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E132BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5318);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E132BE08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5318);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E132BF44(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5318);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ScaledSpaceMetric();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1E132C0C8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5318);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ScaledSpaceMetric();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E132C254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF241C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E132C31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TextPairAnnotationItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E132C418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TextPairAnnotationItem(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E132C520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonAnnotationItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E132C5DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonAnnotationItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1E132C758@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF243C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E132C78C()
{
  v1 = (type metadata accessor for AnnotationView.ButtonAnnotationItemView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1E1AEFEAC();
  (*(*(v3 - 8) + 8))(v2, v3);
  type metadata accessor for ButtonAnnotationItem(0);

  sub_1E161B3FC(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1E132C8B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E1AF24AC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E132C95C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBADE0);
  sub_1E1AF22DC();
  sub_1E1302CD4(&qword_1ECEBAE18, &qword_1ECEBADE0);
  sub_1E18C3734(&qword_1ECEB5378, MEMORY[0x1E697C248]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E132CA84()
{

  return swift_deallocObject();
}

uint64_t sub_1E132CABC()
{
  sub_1E1361A60(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E132CAF8()
{

  if (*(v0 + 32))
  {

    if (*(v0 + 48))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E132CB58()
{

  if (*(v0 + 64))
  {

    if (*(v0 + 80))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1E132CBC8()
{

  return swift_deallocObject();
}

__n128 sub_1E132CC20(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E132CC2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF697C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E132CC6C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_1E1AF6D9C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(AssociatedTypeWitness - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, AssociatedTypeWitness))
  {
    (*(v4 + 8))(v0 + v3, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1E132CDA8()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E132CDE0()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E132CEA0()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E132CF30()
{

  return swift_deallocObject();
}

uint64_t sub_1E132CF88()
{
  sub_1E18DFCF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1E132D004()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132D0EC()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132D1B8()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132D2C8()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132D3B0()
{
  sub_1E18DFCF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1E132D3F4()
{

  return swift_deallocObject();
}

uint64_t sub_1E132D440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1E132D4EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E132D590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF127C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E132D5FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1E1AF127C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E132D680(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1E1AF127C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1E132D7F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1E1AF127C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

__n128 sub_1E132D980(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E132D98C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E132D9C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E132DA20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E132DA88()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E132DAC4()
{

  return swift_deallocObject();
}

uint64_t sub_1E132DAFC()
{

  return swift_deallocObject();
}

uint64_t sub_1E132DB3C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132DB74()
{

  return swift_deallocObject();
}

uint64_t sub_1E132DBC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1E132DC34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1E132DCA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 34);
  return result;
}

uint64_t sub_1E132DD28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = ClickableModel<>.linkAction.getter(*(a1 + a2 - 24), *(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_1E132DD98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1E132DDB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

uint64_t sub_1E132DE04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132DE3C()
{
  v1 = sub_1E1AEFCCC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E132DEC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_1EE215AF8);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E132DF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE215B18;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E132E000()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E048()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E09C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E0E4()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E132E11C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E15C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E19C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E1DC()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132E2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E132E364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OfferButtonMetrics();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

__n128 sub_1E132E458@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E132E4CC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[14];
  v4 = sub_1E1AEFEAC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E132E5E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E61C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132E654()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB2C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E132E7BC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[14];
  v8 = sub_1E1AEFEAC();
  (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1E132E948()
{

  return swift_deallocObject();
}

uint64_t sub_1E132E980()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2E50) - 8);
  v2 = (*(*v1 + 80) + 176) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[14];
  v4 = sub_1E1AEFEAC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E132EB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E132EB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E132EBE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_1E132EC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E132ECE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E132ED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF127C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E132EE34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF127C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E132EEF0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1E132EF88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132EFC0()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F008@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E132F05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E132F108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E132F1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF166C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E132F270(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF166C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E132F330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1E1943448(v3);
}

uint64_t sub_1E132F340()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E132F378()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F3B8()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F3F0()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F428()
{

  sub_1E18DFCF8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E132F474()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F4B4()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECEF4C80;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E132F574()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132F5AC()
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

uint64_t sub_1E132F6F0()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F730()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F768()
{

  return swift_deallocObject();
}

uint64_t sub_1E132F7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E132F870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E132F914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E132F980(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E132F9F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E132FA28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_1E13815A4(v3 + v4, a2);
}

uint64_t sub_1E132FAB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E132FB10(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit18MetadataRibbonItem_allowsTruncation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E132FBC4(uint64_t a1)
{
  result = sub_1E1959590(&qword_1EE1E5490, type metadata accessor for Shelf);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E132FC1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E132FC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB6F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E132FD5C()
{

  return swift_deallocObject();
}

uint64_t sub_1E132FD94()
{

  return swift_deallocObject();
}

uint64_t sub_1E132FDD4()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132FEA0()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E132FF64()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1330054()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E1330150()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1330268()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1330364()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E133039C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1E13303EC()
{

  return swift_deallocObject();
}

uint64_t sub_1E133042C()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E1330514()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E1330604()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1330720()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1330820()
{

  return swift_deallocObject();
}

uint64_t sub_1E1330860()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E13308E8()
{
  sub_1E196B454(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1E1330950()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E13309FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1330A3C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1330A8C()
{
  v1 = sub_1E1AF101C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1E1330B7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1330BC4()
{
  v1 = sub_1E1AF101C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1330CC8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1330D08()
{
  v1 = sub_1E1AF101C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1330DF4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1330E34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1330E7C()
{

  return swift_deallocObject();
}

__n128 sub_1E1330EC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E1330EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1330F38()
{

  return swift_deallocObject();
}

uint64_t sub_1E1330F84()
{

  return swift_deallocObject();
}

uint64_t sub_1E133103C()
{

  return swift_deallocObject();
}

id sub_1E133108C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1E13310F8@<X0>(void *a1@<X8>)
{
  result = sub_1E198D200();
  *a1 = result;
  return result;
}

void sub_1E1331124(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = *a1;
  v3 = v2;
}

id sub_1E1331174@<X0>(void *a1@<X8>)
{
  result = sub_1E198D93C();
  *a1 = result;
  return result;
}

void sub_1E13311A0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = *a1;
  v3 = v2;
}

id sub_1E13311F0@<X0>(void *a1@<X8>)
{
  result = sub_1E198DACC();
  *a1 = result;
  return result;
}

void sub_1E133121C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = *a1;
  v3 = v2;
}

id sub_1E133126C@<X0>(void *a1@<X8>)
{
  result = sub_1E198DCFC();
  *a1 = result;
  return result;
}

void sub_1E1331298(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = *a1;
  v3 = v2;
}

id sub_1E13312E8@<X0>(void *a1@<X8>)
{
  result = sub_1E198DF4C();
  *a1 = result;
  return result;
}

void sub_1E1331314(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = *a1;
  v3 = v2;
}

uint64_t sub_1E1331364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E198E328();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1E1331390(__n128 *a1, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  result = *a1;
  *v2 = *a1;
  *(v2 + 16) = 0;
  return result;
}

uint64_t sub_1E13313B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E198E438();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E13313F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E198E538();
  *a1 = result;
  return result;
}

void *sub_1E1331424(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

unint64_t sub_1E1331444@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E198E610();
  *a1 = result;
  return result;
}

void *sub_1E1331470(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1E1331490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E198E760();
  *a1 = result;
  return result;
}

void *sub_1E13314BC(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1E13314DC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEBBB88;
  return result;
}

uint64_t sub_1E1331528(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECEBBB88 = v1;
  return result;
}

uint64_t sub_1E1331570@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEBBB89;
  return result;
}

uint64_t sub_1E13315BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECEBBB89 = v1;
  return result;
}

uint64_t sub_1E1331604@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_1EE1DCDF0;
  return swift_unknownObjectRetain();
}

uint64_t sub_1E1331658@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E198FD44();
  *a1 = result;
  return result;
}

void *sub_1E1331684(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_1E13316A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_1E13316F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E13316FC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1331754()
{

  return swift_deallocObject();
}

uint64_t sub_1E13317A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E1331800()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 8) != 1)
  {

    sub_1E137B778(*(v0 + v3 + 32), *(v0 + v3 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_1E1331984()
{

  return swift_deallocObject();
}

uint64_t sub_1E13319E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1331AA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_1E1331AF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E1331B54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E1331C80()
{

  return swift_deallocObject();
}

void sub_1E1331CB8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1E1AF5DBC();
  v5 = [v3 integerForKey_];

  *a2 = v5;
}

void sub_1E1331D24(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E1AF5DBC();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_1E1331D9C@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.acknowledgedItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1E1331DD0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1E1331E94()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1331F9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1E1331FF8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1332030()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1332068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1332114(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E13321B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF127C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1332264(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF127C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1E1332318(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E1332348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E133240C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OfferButtonMetrics();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E13324CC()
{
  v1 = sub_1E1AEF55C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1332590()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13325C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1332684(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1332738()
{

  return swift_deallocObject();
}

uint64_t sub_1E1332788()
{

  return swift_deallocObject();
}

uint64_t sub_1E13327C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E13327F8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1332838()
{

  return swift_deallocObject();
}

uint64_t sub_1E1332878()
{

  return swift_deallocObject();
}

uint64_t sub_1E13328B8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1332900()
{

  return swift_deallocObject();
}

uint64_t sub_1E1332960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E13329CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1332A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1332AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1332B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1332BC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1332C6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF105C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1E1332D18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF105C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1332DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AEFCCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1332E68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AEFCCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1332F0C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1332F4C()
{
  v1 = sub_1E1AF364C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1332FD4()
{
  v1 = sub_1E1AF364C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1E1333074(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1E1AF5DBC();
  [v2 setText_];
}

id sub_1E13330D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textColor];
  *a2 = result;
  return result;
}

id sub_1E1333128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 textAlignment];
  *a2 = result;
  return result;
}

uint64_t sub_1E1333170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E13331C0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_1E1333218@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

__n128 sub_1E1333260(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E133326C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF698C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E13332B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF696C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E13332FC()
{
  v1 = sub_1E1AF31DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E1333404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EE215750;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E1333460()
{

  return swift_deallocObject();
}

uint64_t sub_1E1333498()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1333520()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1333558()
{

  return swift_deallocObject();
}

uint64_t sub_1E13335AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E13337D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconRowViewLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E1333894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E133394C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF127C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E1333A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AF127C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E1333ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1333B68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1333C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1AF166C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1333CB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1AF166C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1333D5C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E1333D9C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1333DD4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1333E1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1E1333E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFCCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1E1333F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFCCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E1333FE0@<X0>(uint64_t a1@<X8>)
{
  result = DeepLink.referrerKind.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1E1334024(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_1E1A2B040(v3, v1);
  return DeepLink.referrerKind.setter(&v3);
}

uint64_t sub_1E133406C()
{
  sub_1E1AF229C();
  sub_1E1A340F4();
  return swift_getWitnessTable();
}

uint64_t sub_1E13340D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1334118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13341CC()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1334268(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1E1334324(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E13343D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E1334490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E1334540()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E133457C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E13345BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E13345F4()
{

  return swift_deallocObject();
}

uint64_t sub_1E1334644()
{
  sub_1E143F44C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1E1334688()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13346C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E13347B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1334810(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1334874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  return sub_1E1307FE8(v3 + v4, a2);
}

uint64_t sub_1E13348D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E133492C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E13349AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1334A34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1334A70()
{

  return swift_deallocObject();
}

uint64_t sub_1E1334AA8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1334AE4()
{
  v1 = sub_1E1AEFCCC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E1334BE0()
{
  sub_1E1361A60(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E1334C1C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1ECEBCF78;
}

uint64_t sub_1E1334C70()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1334CBC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  __swift_destroy_boxed_opaque_existential_1(v0 + 304);
  __swift_destroy_boxed_opaque_existential_1(v0 + 344);

  return swift_deallocObject();
}

uint64_t sub_1E1334D4C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  __swift_destroy_boxed_opaque_existential_1(v0 + 336);

  return swift_deallocObject();
}

uint64_t sub_1E1334DD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  }

  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 328);
  __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  __swift_destroy_boxed_opaque_existential_1(v0 + 408);
  __swift_destroy_boxed_opaque_existential_1(v0 + 448);
  __swift_destroy_boxed_opaque_existential_1(v0 + 488);

  return swift_deallocObject();
}

uint64_t sub_1E1334E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF1CBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1334EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF1CBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E13351EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E1335224()
{
  v1 = sub_1E1AF380C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E13352AC()
{

  return swift_deallocObject();
}

uint64_t sub_1E1335390()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13353D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E133542C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E1335490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E13354F0()
{

  return swift_deallocObject();
}

uint64_t sub_1E1335528()
{

  return swift_deallocObject();
}

uint64_t sub_1E1335564()
{

  return swift_deallocObject();
}

uint64_t sub_1E13355A4()
{

  return swift_deallocObject();
}

uint64_t sub_1E13355DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E1335648()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1335680()
{
  v1 = (type metadata accessor for GenericAccountPageIntent() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E133579C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E13357E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1335840(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E13358A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E1335904@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1E133595C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1E13359B0()
{

  return swift_deallocObject();
}

uint64_t sub_1E13359E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E1335A68()
{

  return swift_deallocObject();
}

double sub_1E1335AB0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

double sub_1E1335ABC(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1E1335AD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1E1A77100;
  a2[1] = v5;
}

uint64_t sub_1E1335B40()
{

  return swift_deallocObject();
}

uint64_t sub_1E1335B78()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 37));
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 42));
  }

  if (v0[50])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 47));
  }

  return swift_deallocObject();
}

uint64_t sub_1E1335C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44B8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E1335CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44B8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E1335D20()
{

  return swift_deallocObject();
}

uint64_t sub_1E1335D68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1335DB8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E1335F0C()
{

  return swift_deallocObject();
}

uint64_t sub_1E1335F44()
{

  return swift_deallocObject();
}

uint64_t sub_1E133608C()
{
  MEMORY[0x1E6901750](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E13360C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E1336100()
{

  return swift_deallocObject();
}

uint64_t sub_1E13361A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}