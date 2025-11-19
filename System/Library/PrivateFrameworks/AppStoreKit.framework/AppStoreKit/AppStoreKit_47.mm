uint64_t TitleHeaderLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_1E1AF1D6C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1E178E2D8(&v29);
  if (v30)
  {
    sub_1E1308EC0(&v29, v31);
    __swift_project_boxed_opaque_existential_1Tm(v31, v31[3]);
    sub_1E1AF11CC();
    v14 = v13;
    v15 = a2;
    sub_1E178F7F0(a1, v16, v13, v17, v18, a2, a3, a4, a5);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v14 = *(MEMORY[0x1E69ABBD0] + 8);
    sub_1E1308058(&v29, &qword_1ECEB4E00);
    v15 = a2;
  }

  sub_1E1AF6B1C();
  v23 = v22;
  v24 = *(v5 + 104);
  if (*(v5 + 112))
  {
    v24 = 0.0;
  }

  v25 = sub_1E178FA5C(a1, v15, a3, a4, a5, v14 + v24, v23, v19, v20, v21);
  sub_1E1790F64(a1, v15, a3, a4, a5);
  sub_1E141FAB4(v25);
  v26 = [a1 traitCollection];
  v27 = v26;
  if (*(v6 + 114) == 1)
  {
    sub_1E1AF698C();
  }

  else
  {
  }

  sub_1E1890334(v25);

  sub_1E1AF1D4C();
  return sub_1E1AF10CC();
}

BOOL _s11AppStoreKit17TitleHeaderLayoutV26AccessoryVerticalAlignmentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v3 <= 1uLL)
    {
      if (*&v3 | *&v2)
      {
        if (*(a2 + 16) && !(*&v5 ^ 1 | *&v4))
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 | *&v4))
      {
        return 1;
      }
    }

    else if (*&v3 ^ 2 | *&v2)
    {
      if (*&v3 ^ 3 | *&v2)
      {
        if (*(a2 + 16) && __PAIR128__(*&v4, *&v5) >= 4)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 3 | *&v4))
      {
        return 1;
      }
    }

    else if (*(a2 + 16) && !(*&v5 ^ 2 | *&v4))
    {
      return 1;
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return 0;
}

unint64_t sub_1E1791A64()
{
  result = qword_1ECEB9048;
  if (!qword_1ECEB9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9048);
  }

  return result;
}

unint64_t sub_1E1791ABC()
{
  result = qword_1ECEB9050;
  if (!qword_1ECEB9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9050);
  }

  return result;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E1791B3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 115))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1791B84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1791C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1791C48(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t storeEnumTagSinglePayload for TitleHeaderLayout.AccessoryVerticalAlignment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1E1791D30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1791D4C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t ArcadeDownloadPackSuggestionsPagePresenter.__allocating_init(objectGraph:categories:subscriptionStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_hasAskToBuy) = 2;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_page) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_categories) = a2;
  v9 = (v8 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_subscriptionStatus);
  *v9 = a3;
  v9[1] = a4;
  v10 = sub_1E138C578(a1, 0, 0, 0);

  return v10;
}

uint64_t ArcadeDownloadPackSuggestionsPagePresenter.init(objectGraph:categories:subscriptionStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_hasAskToBuy) = 2;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_page) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_categories) = a2;
  v9 = (v4 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_subscriptionStatus);
  *v9 = a3;
  v9[1] = a4;
  v10 = sub_1E138C578(a1, 0, 0, 0);

  return v10;
}

uint64_t sub_1E1791F88()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB9058);
  __swift_project_value_buffer(v4, qword_1ECEB9058);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E179212C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E1792198(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
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

uint64_t sub_1E1792238()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_hasAskToBuy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E179227C(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_hasAskToBuy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E179238C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_page;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E179243C()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1E1AF504C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  result = swift_beginAccess();
  if ((v1[4] & 1) == 0)
  {
    v31 = v7;
    v32 = v5;
    v33 = v2;
    *(v1 + 32) = 1;
    v15 = v1 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    type metadata accessor for ASKBagContract();
    v18 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    if (qword_1ECEB14F0 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();

    (*(v11 + 8))(v13, v10);
    if (v34 == 1)
    {
      swift_beginAccess();
      if (v1[3])
      {
        *v9 = 1;
        v19 = v31;
        (*(v31 + 104))(v9, *MEMORY[0x1E69AB450], v6);

        sub_1E1AF509C();

        (*(v19 + 8))(v9, v6);
      }
    }

    v20 = *(v1 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_categories);
    v21 = *(v1 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_subscriptionStatus);
    v22 = *(v1 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_subscriptionStatus + 8);
    type metadata accessor for JSIntentDispatcher();

    sub_1E1AF55EC();
    v23 = v34;
    sub_1E13006E4(0, &qword_1EE1E3480);
    sub_1E1AF55EC();
    v24 = v34;
    v25 = sub_1E1AF649C();
    v26 = v32;
    (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v27;
    v28[5] = v23;
    v28[6] = 0xD000000000000027;
    v28[7] = 0x80000001E1B75610;
    v28[8] = v20;
    v28[9] = v21;
    v28[10] = v22;
    v28[11] = v18;
    v29 = v33;
    v28[12] = v24;
    v28[13] = v29;

    sub_1E154AF74(0, 0, v26, &unk_1E1B31448, v28);
  }

  return result;
}

uint64_t sub_1E1792944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1792A1C, 0, 0);
}

uint64_t sub_1E1792A1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v2 + 32);
    v5 = *(v2 + 16);
    *(v0 + 16) = *v2;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v11 = (*(*v3 + 112) + **(*v3 + 112));
    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    v7 = sub_1E16E3A2C();
    *v6 = v0;
    v6[1] = sub_1E1792BE0;
    v8 = *(v0 + 192);

    return v11(v0 + 152, v0 + 16, v8, "", 0, 2, &type metadata for ArcadeDownloadPackSuggestionsPageIntent, v7);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1E1792BE0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1E17930BC;
  }

  else
  {
    *(v2 + 256) = *(v2 + 152);
    v3 = sub_1E1792CFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1792CFC()
{
  if (qword_1ECEB1118 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  v2 = __swift_project_value_buffer(v1, qword_1ECEB9058);
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_1E1792DD8;

  return sub_1E1A793BC(v2);
}

uint64_t sub_1E1792DD8(char a1)
{
  *(*v1 + 297) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E1792ED8, 0, 0);
}

uint64_t sub_1E1792ED8()
{
  v1 = *(v0 + 297);
  v2 = *(v0 + 232);
  v3 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_hasAskToBuy;
  swift_beginAccess();
  *(v2 + v3) = v1;
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();
  if (qword_1ECEB1500 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  sub_1E1AF52FC();
  sub_1E1AF532C();

  (*(v5 + 8))(v4, v6);
  if (*(v0 + 296) == 1)
  {
    v7 = *(v2 + v3);
    if (v7 != 2 && (v7 & 1) != 0)
    {
      v8 = *(v0 + 256);
      swift_beginAccess();
      *(v8 + 64) = 0;
    }
  }

  sub_1E1AF644C();

  *(v0 + 280) = sub_1E1AF643C();
  v10 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E17931CC, v10, v9);
}

uint64_t sub_1E17930BC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  v2 = v0[31];
  if (Strong)
  {
    sub_1E1AF644C();
    v3 = v2;
    v0[36] = sub_1E1AF643C();
    v5 = sub_1E1AF63CC();

    return MEMORY[0x1EEE6DFA0](sub_1E17932C4, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1E17931CC()
{
  v1 = *(v0 + 256);

  sub_1E1793CE0(v1, 0);

  return MEMORY[0x1EEE6DFA0](sub_1E1793250, 0, 0);
}

uint64_t sub_1E1793250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17932C4()
{
  v1 = *(v0 + 248);

  sub_1E1793CE0(v1, 1);

  return MEMORY[0x1EEE6DFA0](sub_1E1793350, 0, 0);
}

uint64_t sub_1E1793350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E17933B8()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_page;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = v0 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v3 + 40);
      v11[3] = type metadata accessor for ArcadeDownloadPackSuggestionsPagePresenter();
      v11[0] = v0;
      v8 = *(v5 + 8);
      v9 = *(v8 + 8);

      v9(v7, v11, ObjectType, v8);
      swift_unknownObjectRelease();
      sub_1E1308058(v11, &qword_1ECEB2DF0);
    }

    else
    {
    }

    sub_1E1793670(v10);
  }

  return result;
}

uint64_t sub_1E17934F8()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_page;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    result = swift_beginAccess();
    v4 = *(v3 + 64);
    if (v4)
    {
      v5 = v0 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        v11[3] = type metadata accessor for ArcadeDownloadPackSuggestionsPagePresenter();
        v11[0] = v0;
        v8 = *(v6 + 8);
        v9 = *(v8 + 8);

        v9(v4, v11, ObjectType, v8);
        swift_unknownObjectRelease();
        sub_1E1308058(v11, &qword_1ECEB2DF0);
      }

      else
      {
      }

      sub_1E1793670(v10);
    }
  }

  return result;
}

uint64_t sub_1E1793670(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (a1 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_11:
    sub_1E13006E4(0, &qword_1EE1E3480);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v19 = v28[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AE8);
    v20 = [v28[0] ams:*MEMORY[0x1E698C4D0] activeiTunesAccountForMediaType:?];
    sub_1E1AF587C();
    v22 = *(v2 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_subscriptionStatus);
    v21 = *(v2 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_subscriptionStatus + 8);
    v23 = swift_allocObject();
    v23[2] = v6;
    v23[3] = v22;
    v23[4] = v21;
    v23[5] = v4;
    v24 = sub_1E13006E4(0, &qword_1EE1E3430);

    v25 = sub_1E1AF68EC();
    v28[3] = v24;
    v28[4] = MEMORY[0x1E69AB720];
    v28[0] = v25;
    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v28[0] = MEMORY[0x1E69E7CC0];
  result = sub_1E1AF70EC();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v26 = v1;
    v27 = v4;
    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E68FFD80](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      ++v8;
      v10 = v9[2];
      v11 = v9[3];
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);
      v14 = v9[4];
      v15 = type metadata accessor for ArcadeDownloadPackApp();
      v16 = objc_allocWithZone(v15);
      v17 = &v16[OBJC_IVAR____TtC11AppStoreKit21ArcadeDownloadPackApp_adamId];
      *v17 = v12;
      *(v17 + 1) = v13;
      v18 = &v16[OBJC_IVAR____TtC11AppStoreKit21ArcadeDownloadPackApp_categoryId];
      *v18 = v11;
      *(v18 + 1) = v14;
      v29.receiver = v16;
      v29.super_class = v15;

      objc_msgSendSuper2(&v29, sel_init);

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
    }

    while (v5 != v8);
    v4 = v27;
    v6 = v28[0];
    v2 = v26;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1E1793980(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*a1 ams_altDSID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E1AF5DFC();
    v11 = v10;

    v18 = [objc_opt_self() standardUserDefaults];
    sub_1E1ABFDBC(a2, a3, a4, v9, v11);

    v12 = [objc_opt_self() defaultCenter];
    if (qword_1EE1D54E0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE1D54E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    v15 = MEMORY[0x1E69E6158];
    sub_1E1AF6F6C();
    *(inited + 96) = v15;
    *(inited + 72) = 0xD000000000000017;
    *(inited + 80) = 0x80000001E1B75760;
    sub_1E13609A4(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEBCAA0);
    v16 = sub_1E1AF5C6C();

    [v12 postNotificationName:v13 object:0 userInfo:v16];
  }

  else
  {
    if (qword_1ECEB1118 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF591C();
    __swift_project_value_buffer(v17, qword_1ECEB9058);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E1793CE0(char *a1, char a2)
{
  v3 = v2;
  v50 = a1;
  v49 = sub_1E1AF503C();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E1AEFE6C();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  swift_beginAccess();
  *(v2 + 32) = 0;
  v13 = v2 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v14 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    if (qword_1ECEB14F0 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();

    (*(v10 + 8))(v12, v9);
    if (v56 == 1)
    {
      swift_beginAccess();
      v16 = *(v2 + 16);
      if (v16)
      {
        v17 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
        swift_beginAccess();
        v18 = *(v16 + v17);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + v17) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1E172D0E4(0, v18[2] + 1, 1, v18);
          *(v16 + v17) = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1E172D0E4((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v22 = v50;
        v18[v21 + 4] = v50;
        *(v16 + v17) = v18;
        swift_endAccess();
        sub_1E1794D2C(v22, 1);
      }

      swift_beginAccess();
      if (*(v3 + 24))
      {
        v23 = v50;
        v24 = v47;
        *v47 = v50;
        v25 = v48;
        v26 = v49;
        (*(v48 + 104))(v24, *MEMORY[0x1E69AB430], v49);
        sub_1E1794D2C(v23, 1);

        sub_1E1AF508C();

        (*(v25 + 8))(v24, v26);
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v28 = *(v13 + 8);
      v29 = swift_getObjectType();
      (*(*(v28 + 16) + 24))(v50, v29);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v30 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_page;
    swift_beginAccess();
    *(v2 + v30) = v50;

    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    if (qword_1ECEB14F0 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();

    (*(v10 + 8))(v12, v9);
    if (v51 == 1)
    {
      v31 = type metadata accessor for ArcadeDownloadPackSuggestionsPage();
      v53 = v31;
      v54 = &protocol witness table for ArcadeDownloadPackSuggestionsPage;
      v32 = sub_1E1794D38();
      v55 = v32;
      v52[0] = v50;
      swift_beginAccess();

      sub_1E13891EC(v52, v2 + 40);
      swift_endAccess();
      sub_1E138B568();
      sub_1E1308058(v52, &qword_1ECEB2588);
      swift_beginAccess();
      if (*(v2 + 16))
      {
        v54 = &protocol witness table for ArcadeDownloadPackSuggestionsPage;
        v55 = v32;
        v53 = v31;
        v52[0] = v50;
        sub_1E1794D2C(v50, 0);

        PendingPageRender.use(pageRenderEventFrom:)(v52);

        sub_1E1308058(v52, &qword_1ECEB2588);
        v33 = *(v2 + 16);
        if (v33)
        {

          sub_1E1AEFE5C();
          sub_1E1AEFE1C();
          v35 = v34;
          (*(v46 + 8))(v8, v6);
          v36 = v33 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
          swift_beginAccess();
          *v36 = v35;
          *(v36 + 8) = 0;
          v37 = *(v33 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
          swift_beginAccess();
          *(v37 + 40) = 1;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_1E149DEE8();
          }
        }
      }

      swift_beginAccess();
      if (*(v3 + 24))
      {
        v38 = OBJC_IVAR____TtC11AppStoreKit33ArcadeDownloadPackSuggestionsPage_pageMetrics;
        v39 = sub_1E1AF3C3C();
        v40 = v47;
        (*(*(v39 - 8) + 16))(v47, &v50[v38], v39);
        v41 = v48;
        v42 = v49;
        (*(v48 + 104))(v40, *MEMORY[0x1E69AB440], v49);

        sub_1E1AF508C();

        (*(v41 + 8))(v40, v42);
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v43 = *(v13 + 8);
      v44 = swift_getObjectType();
      (*(v43 + 24))(v50, v44, v43);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E17945F8()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view);
}

uint64_t ArcadeDownloadPackSuggestionsPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view);

  return v0;
}

uint64_t ArcadeDownloadPackSuggestionsPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC11AppStoreKit42ArcadeDownloadPackSuggestionsPagePresenter_view;

  sub_1E1337DEC(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1794780()
{
  v0 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  if (qword_1ECEB1118 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1ECEB9058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF385C();
  sub_1E1308058(v5, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();
}

uint64_t sub_1E17949B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E130B5DC;

  return sub_1E1792944(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t type metadata accessor for ArcadeDownloadPackSuggestionsPagePresenter()
{
  result = qword_1ECEB9080;
  if (!qword_1ECEB9080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E1794D2C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1E1794D38()
{
  result = qword_1ECEB9090;
  if (!qword_1ECEB9090)
  {
    type metadata accessor for ArcadeDownloadPackSuggestionsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9090);
  }

  return result;
}

uint64_t setStoreKitLastAppAction(adamId:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF330C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1E1AF649C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  sub_1E17957F8(0, 0, v11, &unk_1E1B04820, v14);

  return sub_1E1308058(v11, &qword_1ECEB2D20);
}

uint64_t defaultStoreKitAppAction.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB1120 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF330C();
  v3 = __swift_project_value_buffer(v2, qword_1ECEB9098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E1795068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[26] = a4;
  sub_1E1AF389C();
  v6[29] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[30] = v10;
  *v10 = v6;
  v10[1] = sub_1E179514C;

  return MEMORY[0x1EEDD8F48](a4, a5, a6);
}

uint64_t sub_1E179514C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1E17954E4;
  }

  else
  {
    v2 = sub_1E1795260;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1795260()
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v4 = sub_1E1AF591C();
  __swift_project_value_buffer(v4, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[17] = MEMORY[0x1E69E6158];
  v0[14] = v3;
  v0[15] = v1;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 14), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v5 = sub_1E1AF330C();
  v0[21] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 18);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v2, v5);
  sub_1E1AF385C();
  sub_1E1308058((v0 + 18), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E17954E4()
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[27];
  v5 = sub_1E1AF591C();
  __swift_project_value_buffer(v5, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v4;
  v0[3] = v2;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v6 = sub_1E1AF330C();
  v0[9] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v3, v6);
  sub_1E1AF385C();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  swift_getErrorValue();
  v8 = v0[22];
  v9 = v0[23];
  v0[13] = v9;
  v10 = __swift_allocate_boxed_opaque_existential_0(v0 + 10);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  sub_1E1AF384C();
  sub_1E1308058((v0 + 10), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E17957F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E1795B30(a3, v25 - v10);
  v12 = sub_1E1AF649C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2D20);
  }

  else
  {
    sub_1E1AF648C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E1AF63CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E1AF5EBC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E1795AA8()
{
  v0 = sub_1E1AF330C();
  __swift_allocate_value_buffer(v0, qword_1ECEB9098);
  v1 = __swift_project_value_buffer(v0, qword_1ECEB9098);
  v2 = *MEMORY[0x1E697BA18];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1E1795B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LegacyAppState.hasBeenPurchased.getter()
{
  v1 = *v0;
  v2 = v0[6];
  if (v2 >> 60)
  {
    if (v2 >> 60 == 8)
    {
      v3 = v0[4];
      v4 = v0[5] | v0[7];
      v5 = v0[3] | v0[2] | v0[1];
      v6 = v2 == 0x8000000000000000 && (v4 | v1 | v3 | v5) == 0;
      if (v6 || v2 == 0x8000000000000000 && v1 == 4 && !(v4 | v3 | v5))
      {
        return 0;
      }
    }
  }

  else if (*v0 == 1)
  {
    return 0;
  }

  return 1;
}

uint64_t LegacyAppState.dictionaryKey.getter()
{
  v1 = v0[6];
  v2 = v1 >> 60;
  if ((v1 >> 60) <= 3)
  {
    v4 = 0x676E6974696177;
    v5 = 0x6C62617461647075;
    if (v2 != 2)
    {
      v5 = 0x64616F6C6E776F64;
    }

    if (v2)
    {
      v4 = 0x6573616863727570;
    }

    if (v2 <= 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {
      return 0x646573756170;
    }

    else
    {
      return 0x64616F6C6E776F64;
    }
  }

  else if (v2 == 6)
  {
    return 0x696C6C6174736E69;
  }

  else if (v2 == 7)
  {
    return 0x656C62616E65706FLL;
  }

  else
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[7];
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4] | v0[5];
    if (v1 != 0x8000000000000000 || v11 | v6 | v8 | v9 | v10 | v7)
    {
      v12 = v11 | v9 | v10 | v7;
      if (v8 || v1 != 0x8000000000000000 || v6 != 1 || v12)
      {
        if (v8 || v1 != 0x8000000000000000 || v6 != 2 || v12)
        {
          v13 = v8 == 0;
          v16 = v6 == 3 && v12 == 0 && v1 == 0x8000000000000000;
          if (v13 && v16)
          {
            return 0x7463697274736572;
          }

          else
          {
            return 0x6E776F6E6B6E75;
          }
        }

        else
        {
          return 0x6E4965746F6D6572;
        }
      }

      else
      {
        return 0x656C6C6174736E69;
      }
    }

    else
    {
      return 0x656C6261797562;
    }
  }
}

BOOL LegacyAppState.isBuyable.getter()
{
  v1 = v0[6];
  result = 0;
  if (v1 >> 60 == 8)
  {
    v2 = v0[4];
    v3 = v0[5] | v0[7];
    v4 = v0[3] | v0[2] | v0[1];
    v5 = v1 == 0x8000000000000000 && (v3 | *v0 | v2 | v4) == 0;
    if (v5 || v1 == 0x8000000000000000 && *v0 == 4 && !(v3 | v2 | v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t LegacyAppStateMachine.__allocating_init(adamId:initialState:initialBetaState:rules:appStateController:)(uint64_t *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v13 = *a1;
  v12 = a1[1];
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 192) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v14 = OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime;
  v15 = sub_1E1AEFE6C();
  (*(*(v15 - 8) + 56))(v11 + v14, 1, 1, v15);
  v16 = (v11 + OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  *v16 = 0;
  v16[1] = 0;
  *(v11 + 16) = v13;
  *(v11 + 24) = v12;
  v17 = a2[1];
  *(v11 + 32) = *a2;
  *(v11 + 48) = v17;
  v18 = a2[3];
  *(v11 + 64) = a2[2];
  *(v11 + 80) = v18;
  v19 = a3[1];
  *(v11 + 96) = *a3;
  *(v11 + 112) = v19;
  v20 = a3[3];
  *(v11 + 128) = a3[2];
  *(v11 + 144) = v20;
  *(v11 + 168) = a4;
  swift_beginAccess();
  *(v11 + 184) = a6;
  swift_unknownObjectWeakAssign();
  v21 = qword_1ECEB1138;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1E1AF591C();
  __swift_project_value_buffer(v22, qword_1ECEF4A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  v28 = &type metadata for AdamId;
  v26 = v13;
  v27 = v12;
  sub_1E1AF383C();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v23 = LegacyAppState.dictionaryKey.getter();
  v28 = MEMORY[0x1E69E6158];
  v26 = v23;
  v27 = v24;
  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF549C();
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1E1796284(_OWORD *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, _OWORD *, uint64_t))
{
  v4 = *v2;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v11[2] = a1[2];
  v11[3] = v6;
  v7 = v2[24];
  v8 = v4;
  [v7 lock];
  a2(&v10, v2, v11, v8);
  [v7 unlock];
  return v10;
}

id LegacyAppStateMachine.currentState.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v6 = *(v1 + 80);
  v10 = *(v1 + 64);
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_1E141CF5C(v9, &v8);
  return [v3 unlock];
}

uint64_t LegacyAppState.isLocalApplication.getter()
{
  v1 = v0[3].u64[0];
  v2 = v1 >> 60;
  if (v1 >> 60 == 2 || v2 == 7)
  {
    return 1;
  }

  if (v2 == 8 && !v0[3].i64[1])
  {
    v5 = vorrq_s8(v0[1], v0[2]);
    v6 = *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v0->i64[1];
    v7 = v1 == 0x8000000000000000 && v0->i64[0] == 1;
    if (v7 && v6 == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t InstallationType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x657461647075;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6E776F646572;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
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

double sub_1E17964B0()
{
  qword_1ECEF4A70 = 0;
  result = 0.0;
  xmmword_1ECEF4A38 = 0u;
  unk_1ECEF4A48 = 0u;
  xmmword_1ECEF4A58 = 0u;
  word_1ECEF4A68 = 0;
  return result;
}

void *LegacyAppState.AppInstallationDetails.progress.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.downloadingPhaseProgress.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.installingPhaseProgress.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *LegacyAppState.AppInstallationDetails.postProcessingPhaseProgress.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_1E17965A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setMaximumUnitCount_];
  qword_1ECEB90B0 = v0;
  return result;
}

uint64_t LegacyAppState.estimatedTimeRemaining.getter()
{
  if (v0[6] >> 60 != 5)
  {
    return 0;
  }

  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[4];
  if (v1)
  {
    v4 = v1;
    v5 = [v4 completedUnitCount];
    if (v5 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v6 = [v4 completedUnitCount];
  if (v6 < [v4 totalUnitCount])
  {
LABEL_10:
    v7 = sub_1E1AF677C();

    return v7;
  }

LABEL_8:
  if (v2)
  {
    v4 = v2;
    goto LABEL_10;
  }

  return 0;
}

id LegacyAppState.estimatedTimeRemainingText.getter()
{
  if (v0[6] >> 60 != 5)
  {
    return 0;
  }

  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[4];
  if (v1)
  {
    v4 = v1;
    v5 = [v4 completedUnitCount];
    if (v5 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v4 = v3;
    v6 = [v4 completedUnitCount];
    if (v6 < [v4 totalUnitCount])
    {
      goto LABEL_10;
    }
  }

  if (!v2)
  {
    return 0;
  }

  v4 = v2;
LABEL_10:
  sub_1E1AF677C();
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  if (qword_1ECEB1130 != -1)
  {
    swift_once();
  }

  result = [qword_1ECEB90B0 stringFromTimeInterval_];
  if (result)
  {
    v10 = result;
    v11 = sub_1E1AF5DFC();

    return v11;
  }

  return result;
}

AppStoreKit::InstallationType_optional __swiftcall InstallationType.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1E179691C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17969E0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1796A90()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1796B5C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x657461647075;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6E776F646572;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
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

uint64_t PurchaseType.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

AppStoreKit::OpenableDestination_optional __swiftcall OpenableDestination.init(rawValue:)(Swift::String rawValue)
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

uint64_t OpenableDestination.rawValue.getter()
{
  if (*v0)
  {
    return 0x736567617373656DLL;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_1E1796CE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736567617373656DLL;
  }

  else
  {
    v3 = 7368801;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x736567617373656DLL;
  }

  else
  {
    v5 = 7368801;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1E1796D88()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1796E04()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1796E6C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1796EE4@<X0>(char *a1@<X8>)
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

void sub_1E1796F44(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x736567617373656DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E1796F7C()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF4A78);
  __swift_project_value_buffer(v4, qword_1ECEF4A78);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t LegacyAppStateMachine.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

id LegacyAppStateMachine.startDownloadTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v4, a1, &unk_1ECEBB780);
  return [v3 unlock];
}

uint64_t LegacyAppStateMachine.appStateController.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 184) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LegacyAppStateMachine.appStateController.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 184);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E17972A0;
}

void sub_1E17972A0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 184) = *(*a1 + 32);
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
  }

  free(v3);
}

uint64_t LegacyAppStateMachine.init(adamId:initialState:initialBetaState:rules:appStateController:)(uint64_t *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a1;
  v12 = a1[1];
  *(v7 + 160) = MEMORY[0x1E69E7CC0];
  *(v7 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 192) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v14 = OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime;
  v15 = sub_1E1AEFE6C();
  (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
  v16 = (v7 + OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + 16) = v13;
  *(v7 + 24) = v12;
  v17 = a2[1];
  *(v7 + 32) = *a2;
  *(v7 + 48) = v17;
  v18 = a2[3];
  *(v7 + 64) = a2[2];
  *(v7 + 80) = v18;
  v19 = a3[1];
  *(v7 + 96) = *a3;
  *(v7 + 112) = v19;
  v20 = a3[3];
  *(v7 + 128) = a3[2];
  *(v7 + 144) = v20;
  *(v7 + 168) = a4;
  swift_beginAccess();
  *(v7 + 184) = a6;
  swift_unknownObjectWeakAssign();
  v21 = qword_1ECEB1138;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1E1AF591C();
  __swift_project_value_buffer(v22, qword_1ECEF4A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  v28 = &type metadata for AdamId;
  v26 = v13;
  v27 = v12;
  sub_1E1AF383C();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v23 = LegacyAppState.dictionaryKey.getter();
  v28 = MEMORY[0x1E69E6158];
  v26 = v23;
  v27 = v24;
  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF549C();
  swift_unknownObjectRelease();

  return v7;
}

id LegacyAppStateMachine.currentStateIncludingBeta(_:)@<X0>(char a1@<W0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 192);
  [v5 lock];
  if ((a1 & 1) != 0 && (v6 = *(v2 + 112), v31[0] = *(v2 + 96), v31[1] = v6, v7 = *(v2 + 144), v9 = *(v2 + 96), v8 = *(v2 + 112), v31[2] = *(v2 + 128), v31[3] = v7, v27 = v9, v28 = v8, v10 = *(v2 + 144), v29 = *(v2 + 128), v30 = v10, v22 = 4, v23 = 0u, v24 = 0u, v25 = 0, v26 = xmmword_1E1B11BA0, sub_1E141CF5C(v31, &v21), v11 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v27, &v22), v32 = v27, v33 = v28, v34 = v29, v35 = v30, sub_1E139CEA8(&v32), (v11 & 1) == 0))
  {
    v17 = *(v2 + 112);
    v27 = *(v2 + 96);
    v28 = v17;
    v19 = *(v2 + 144);
    v29 = *(v2 + 128);
    v18 = v29;
    v30 = v19;
    *a2 = v27;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v19;
    v15 = &v27;
    v16 = &v22;
  }

  else
  {
    v12 = *(v2 + 48);
    v32 = *(v2 + 32);
    v33 = v12;
    v14 = *(v2 + 80);
    v34 = *(v2 + 64);
    v13 = v34;
    v35 = v14;
    *a2 = v32;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    v15 = &v32;
    v16 = v31;
  }

  sub_1E141CF5C(v15, v16);
  return [v5 unlock];
}

uint64_t sub_1E179772C@<X0>(char a1@<W0>, _OWORD *a2@<X1>, __int128 *a3@<X8>)
{
  if ((a1 & 1) != 0 && (v5 = a2[7], v30[0] = a2[6], v30[1] = v5, v6 = a2[9], v8 = a2[6], v7 = a2[7], v30[2] = a2[8], v30[3] = v6, v26 = v8, v27 = v7, v9 = a2[9], v28 = a2[8], v29 = v9, v21 = 4, v22 = 0u, v23 = 0u, v24 = 0, v25 = xmmword_1E1B11BA0, sub_1E141CF5C(v30, &v20), v10 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v26, &v21), v31 = v26, v32 = v27, v33 = v28, v34 = v29, sub_1E139CEA8(&v31), (v10 & 1) == 0))
  {
    v16 = a2[7];
    v26 = a2[6];
    v27 = v16;
    v18 = a2[9];
    v28 = a2[8];
    v17 = v28;
    v29 = v18;
    *a3 = v26;
    a3[1] = v16;
    a3[2] = v17;
    a3[3] = v18;
    v14 = &v26;
    v15 = &v21;
  }

  else
  {
    v11 = a2[3];
    v31 = a2[2];
    v32 = v11;
    v13 = a2[5];
    v33 = a2[4];
    v12 = v33;
    v34 = v13;
    *a3 = v31;
    a3[1] = v11;
    a3[2] = v12;
    a3[3] = v13;
    v14 = &v31;
    v15 = v30;
  }

  return sub_1E141CF5C(v14, v15);
}

BOOL LegacyAppStateMachine.hasCurrentBetaState.getter()
{
  v1 = *(v0 + 192);
  [v1 lock];
  v2 = *(v0 + 112);
  v18[0] = *(v0 + 96);
  v18[1] = v2;
  v3 = *(v0 + 144);
  v5 = *(v0 + 96);
  v4 = *(v0 + 112);
  v18[2] = *(v0 + 128);
  v18[3] = v3;
  v14 = v5;
  v15 = v4;
  v6 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = v6;
  v9 = 4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = xmmword_1E1B11BA0;
  sub_1E141CF5C(v18, v19);
  v7 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v14, &v9);
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  sub_1E139CEA8(v19);
  [v1 unlock];
  return (v7 & 1) == 0;
}

uint64_t LegacyAppStateMachine.redownloadBuyParams.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t LegacyAppStateMachine.redownloadBuyParams.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E1797A20@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v13 = *(a1 + 48);
  v89[0] = *(a1 + 32);
  v89[1] = v13;
  v14 = *(a1 + 80);
  v16 = *(a1 + 32);
  v15 = *(a1 + 48);
  v89[2] = *(a1 + 64);
  v89[3] = v14;
  v85 = v16;
  v86 = v15;
  v17 = *(a1 + 80);
  v87 = *(a1 + 64);
  v88 = v17;
  v18 = a2[1];
  v81 = *a2;
  v82 = v18;
  v19 = a2[3];
  v83 = a2[2];
  v84 = v19;
  sub_1E141CF5C(v89, v90);
  v20 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v85, &v81);
  v90[0] = v85;
  v90[1] = v86;
  v90[2] = v87;
  v90[3] = v88;
  result = sub_1E139CEA8(v90);
  if (v20)
  {
LABEL_14:
    *a3 = 1;
    return result;
  }

  v66 = v12;
  v70 = a3;
  v91 = v3;
  v22 = *(a1 + 168);
  v23 = LegacyAppState.dictionaryKey.getter();
  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  v25 = sub_1E13018F8(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_7:
    v65 = v9;
    if (qword_1ECEB1138 != -1)
    {
      swift_once();
    }

    v69 = sub_1E1AF591C();
    v68 = __swift_project_value_buffer(v69, qword_1ECEF4A78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    v67 = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v40 = *(a1 + 16);
    v39 = *(a1 + 24);
    *(&v86 + 1) = &type metadata for AdamId;
    *&v85 = v40;
    *(&v85 + 1) = v39;

    sub_1E1AF383C();
    sub_1E1308058(&v85, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v41 = LegacyAppState.dictionaryKey.getter();
    *(&v86 + 1) = MEMORY[0x1E69E6158];
    *&v85 = v41;
    *(&v85 + 1) = v42;
    sub_1E1AF38BC();
    sub_1E1308058(&v85, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v43 = LegacyAppState.dictionaryKey.getter();
    *(&v86 + 1) = MEMORY[0x1E69E6158];
    *&v85 = v43;
    *(&v85 + 1) = v44;
    sub_1E1AF38BC();
    sub_1E1308058(&v85, &qword_1ECEB2DF0);
    sub_1E1AF549C();

    v45 = *(a1 + 48);
    v85 = *(a1 + 32);
    v86 = v45;
    v46 = *(a1 + 80);
    v87 = *(a1 + 64);
    v88 = v46;
    v47 = a2[1];
    *(a1 + 32) = *a2;
    *(a1 + 48) = v47;
    v48 = a2[3];
    *(a1 + 64) = a2[2];
    *(a1 + 80) = v48;
    sub_1E141CF5C(a2, &v81);
    sub_1E139CEA8(&v85);
    if (*(a2 + 6) >> 60 == 5)
    {
      v49 = OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime;
      swift_beginAccess();
      v50 = v65;
      sub_1E134FD1C(a1 + v49, v65, &unk_1ECEBB780);
      v51 = sub_1E1AEFE6C();
      v52 = *(v51 - 8);
      v53 = (*(v52 + 48))(v50, 1, v51);
      sub_1E1308058(v50, &unk_1ECEBB780);
      a3 = v70;
      if (v53 == 1)
      {
        v54 = v66;
        sub_1E1AEFE5C();
        (*(v52 + 56))(v54, 0, 1, v51);
        swift_beginAccess();
        sub_1E13A92CC(v54, a1 + v49);
        swift_endAccess();
      }
    }

    else
    {
      v55 = sub_1E1AEFE6C();
      v56 = v66;
      (*(*(v55 - 8) + 56))(v66, 1, 1, v55);
      v57 = OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime;
      swift_beginAccess();
      sub_1E13A92CC(v56, a1 + v57);
      swift_endAccess();
      a3 = v70;
    }

    result = sub_1E17982AC();
    goto LABEL_14;
  }

  sub_1E1300B24(*(v22 + 56) + 40 * v25, v77);
  sub_1E1308EC0(v77, v78);
  v28 = v79;
  v29 = v80;
  __swift_project_boxed_opaque_existential_1Tm(v78, v79);
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v33 = *(a1 + 32);
  v32 = *(a1 + 48);
  v83 = *(a1 + 64);
  v84 = v31;
  v73 = v33;
  v74 = v32;
  v34 = *(a1 + 80);
  v75 = *(a1 + 64);
  v76 = v34;
  v35 = a2[1];
  v72[0] = *a2;
  v72[1] = v35;
  v36 = a2[3];
  v72[2] = a2[2];
  v72[3] = v36;
  v37 = *(v29 + 8);
  sub_1E141CF5C(&v81, &v71);
  v38 = v37(&v73, v72, v28, v29);
  v85 = v73;
  v86 = v74;
  v87 = v75;
  v88 = v76;
  sub_1E139CEA8(&v85);
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
    goto LABEL_7;
  }

  if (qword_1ECEB1138 != -1)
  {
    swift_once();
  }

  v69 = sub_1E1AF591C();
  v68 = __swift_project_value_buffer(v69, qword_1ECEF4A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B09FF0;
  v59 = *(a1 + 16);
  v58 = *(a1 + 24);
  *(&v74 + 1) = &type metadata for AdamId;
  *&v73 = v59;
  *(&v73 + 1) = v58;

  sub_1E1AF383C();
  sub_1E1308058(&v73, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v60 = LegacyAppState.dictionaryKey.getter();
  *(&v74 + 1) = MEMORY[0x1E69E6158];
  *&v73 = v60;
  *(&v73 + 1) = v61;
  sub_1E1AF38BC();
  sub_1E1308058(&v73, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v62 = LegacyAppState.dictionaryKey.getter();
  *(&v74 + 1) = MEMORY[0x1E69E6158];
  *&v73 = v62;
  *(&v73 + 1) = v63;
  sub_1E1AF38BC();
  sub_1E1308058(&v73, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  __swift_project_boxed_opaque_existential_1Tm(v78, v79);
  DynamicType = swift_getDynamicType();
  *(&v74 + 1) = swift_getMetatypeMetadata();
  *&v73 = DynamicType;
  sub_1E1AF38BC();
  sub_1E1308058(&v73, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  *v70 = 0;
  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_1E17982AC()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v9 = sub_1E1AF68EC();
  aBlock[4] = sub_1E1799F08;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_65;
  v10 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E179852C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(a1 + 112);
  v33[0] = *(a1 + 96);
  v33[1] = v7;
  v8 = *(a1 + 144);
  v10 = *(a1 + 96);
  v9 = *(a1 + 112);
  v33[2] = *(a1 + 128);
  v33[3] = v8;
  v29 = v10;
  v30 = v9;
  v11 = *(a1 + 144);
  v31 = *(a1 + 128);
  v32 = v11;
  v12 = a2[1];
  v28[0] = *a2;
  v28[1] = v12;
  v13 = a2[3];
  v28[2] = a2[2];
  v28[3] = v13;
  sub_1E141CF5C(v33, v34);
  v14 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v29, v28);
  v34[0] = v29;
  v34[1] = v30;
  v34[2] = v31;
  v34[3] = v32;
  result = sub_1E139CEA8(v34);
  if (v14)
  {
    *a3 = 1;
  }

  else
  {
    v35 = v3;
    if (qword_1ECEB1138 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF591C();
    __swift_project_value_buffer(v27, qword_1ECEF4A78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    *(&v30 + 1) = &type metadata for AdamId;
    *&v29 = v17;
    *(&v29 + 1) = v16;

    sub_1E1AF383C();
    sub_1E1308058(&v29, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v18 = LegacyAppState.dictionaryKey.getter();
    v19 = MEMORY[0x1E69E6158];
    *(&v30 + 1) = MEMORY[0x1E69E6158];
    *&v29 = v18;
    *(&v29 + 1) = v20;
    sub_1E1AF38BC();
    sub_1E1308058(&v29, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v21 = LegacyAppState.dictionaryKey.getter();
    *(&v30 + 1) = v19;
    *&v29 = v21;
    *(&v29 + 1) = v22;
    sub_1E1AF38BC();
    sub_1E1308058(&v29, &qword_1ECEB2DF0);
    sub_1E1AF549C();

    v23 = *(a1 + 112);
    v29 = *(a1 + 96);
    v30 = v23;
    v24 = *(a1 + 144);
    v31 = *(a1 + 128);
    v32 = v24;
    v25 = a2[1];
    *(a1 + 96) = *a2;
    *(a1 + 112) = v25;
    v26 = a2[3];
    *(a1 + 128) = a2[2];
    *(a1 + 144) = v26;
    sub_1E141CF5C(a2, v28);
    sub_1E139CEA8(&v29);
    result = sub_1E17982AC();
    *a3 = 1;
  }

  return result;
}

id LegacyAppStateMachine.addStateTransitionObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 192);
  [v6 lock];
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_1E17999BC(v13, v12);
  swift_beginAccess();
  v7 = *(v3 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 160) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1E172D218(0, v7[2] + 1, 1, v7);
    *(v3 + 160) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1E172D218((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_1E17999F4(v12, &v7[3 * v10 + 4]);
  *(v3 + 160) = v7;
  swift_endAccess();
  sub_1E1799A2C(v13);
  return [v6 unlock];
}

id LegacyAppStateMachine.removeStateTransitionActions(for:)(uint64_t a1)
{
  v2 = v1;
  v15 = *(v1 + 192);
  [v15 lock];
  swift_beginAccess();
  v4 = *(v1 + 160);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 < *(v4 + 16))
    {
      sub_1E17999BC(v8, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
        result = sub_1E1799A2C(v17);
      }

      else
      {
        sub_1E17999F4(v17, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C1CC(0, *(v9 + 16) + 1, 1);
          v9 = v18;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1E135C1CC((v13 > 1), v14 + 1, 1);
          v9 = v18;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_1E17999F4(v16, v9 + 24 * v14 + 32);
      }

      ++v7;
      v8 += 24;
      if (v5 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:

    *(v2 + 160) = v9;

    return [v15 unlock];
  }

  return result;
}

id sub_1E1798B00(uint64_t a1)
{
  v2 = *(a1 + 192);
  [v2 lock];
  sub_1E1798B8C(a1);

  return [v2 unlock];
}

uint64_t sub_1E1798B8C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_1E17999BC(v4, v15);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v16(a1, &protocol witness table for LegacyAppStateMachine);
      }

      sub_1E1799A2C(v15);
      v4 += 24;
      --v3;
    }

    while (v3);

    v5 = *(a1 + 160);
    v6 = *(v5 + 16);

    if (v6)
    {
      v8 = 0;
      v9 = v5 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v5 + 16))
      {
        sub_1E17999BC(v9, v15);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1E17999F4(v15, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E135C1CC(0, *(v10 + 16) + 1, 1);
            v10 = v17;
          }

          v13 = *(v10 + 16);
          v12 = *(v10 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_1E135C1CC((v12 > 1), v13 + 1, 1);
            v10 = v17;
          }

          *(v10 + 16) = v13 + 1;
          result = sub_1E17999F4(v14, v10 + 24 * v13 + 32);
        }

        else
        {
          result = sub_1E1799A2C(v15);
        }

        ++v8;
        v9 += 24;
        if (v6 == v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(a1 + 160) = v10;
}

uint64_t LegacyAppStateMachine.deinit()
{

  sub_1E143F44C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_1E143F44C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_1E1337DEC(v0 + 176);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime, &unk_1ECEBB780);

  return v0;
}

uint64_t LegacyAppStateMachine.__deallocating_deinit()
{
  LegacyAppStateMachine.deinit();

  return swift_deallocClassInstance();
}

id sub_1E1798E78@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v6 = *(v1 + 80);
  v10 = *(v1 + 64);
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_1E141CF5C(v9, &v8);
  return [v3 unlock];
}

uint64_t sub_1E1798EF4()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine_redownloadBuyParams);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_1E1798F4C@<X0>(char a1@<W0>, __int128 *a2@<X8>)
{
  v5 = *(v2 + 192);
  [v5 lock];
  sub_1E179772C(a1, v2, a2);

  return [v5 unlock];
}

id sub_1E1798FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  [v3 lock];
  v4 = OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v4, a1, &unk_1ECEBB780);
  return [v3 unlock];
}

uint64_t sub_1E17990AC(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = *(v1 + 192);
  [v4 lock];
  sub_1E1797A20(v1, v7, &v6);
  [v4 unlock];
  return v6;
}

BOOL _s11AppStoreKit06LegacyA5StateO0A19InstallationDetailsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v2)
  {
    if (!v6)
    {
      return 0;
    }

    v28 = *(a2 + 48);
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    v26 = *(a2 + 49);
    v27 = *(a1 + 49);
    v24 = *(a2 + 56);
    v25 = *(a1 + 56);
    sub_1E13006E4(0, &qword_1ECEB2CB8);
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
    v28 = *(a2 + 48);
    v29 = *(a1 + 48);
    v30 = *(a1 + 40);
    v26 = *(a2 + 49);
    v27 = *(a1 + 49);
    v24 = *(a2 + 56);
    v25 = *(a1 + 56);
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

    sub_1E13006E4(0, &qword_1ECEB2CB8);
    v15 = v7;
    v16 = v3;
    v17 = sub_1E1AF6D0C();

    if ((v17 & 1) == 0)
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

    sub_1E13006E4(0, &qword_1ECEB2CB8);
    v18 = v9;
    v19 = v5;
    v20 = sub_1E1AF6D0C();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v4)
  {
    result = 0;
    if (v8)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (!v8)
  {
    return 0;
  }

  sub_1E13006E4(0, &qword_1ECEB2CB8);
  v21 = v8;
  v22 = v4;
  v23 = sub_1E1AF6D0C();

  result = 0;
  if ((v23 & 1) == 0)
  {
    return result;
  }

LABEL_25:
  if (v30 == v10 && ((v29 ^ v28) & 1) == 0 && ((v27 ^ v26) & 1) == 0)
  {
    return v25 == v24;
  }

  return result;
}

uint64_t _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(__int128 *a1, _OWORD *a2)
{
  v2 = a2[1];
  *v42 = *a2;
  *&v42[16] = v2;
  v3 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  *&v42[32] = a2[2];
  v43 = v3;
  v6 = a1[1];
  v38 = *a1;
  v39 = v6;
  v44[0] = v38;
  v44[1] = v6;
  v7 = a1[3];
  v40 = a1[2];
  v41 = v7;
  v44[2] = v40;
  v44[3] = v7;
  v44[4] = v5;
  v44[5] = v4;
  v8 = a2[3];
  v9 = v38 | ((*(&v38 + 1) | ((*(&v38 + 5) | (BYTE7(v38) << 16)) << 32)) << 8);
  v10 = v7 >> 60;
  v44[6] = a2[2];
  v44[7] = v8;
  if ((v7 >> 60) > 3)
  {
    if (v10 > 5)
    {
      if (v10 != 6)
      {
        if (v10 == 7)
        {
          if (v43 >> 60 == 7)
          {
            if (v38)
            {
              v11 = 0x736567617373656DLL;
            }

            else
            {
              v11 = 7368801;
            }

            if (v38)
            {
              v12 = 0xE800000000000000;
            }

            else
            {
              v12 = 0xE300000000000000;
            }

            if (v42[0])
            {
              v13 = 0x736567617373656DLL;
            }

            else
            {
              v13 = 7368801;
            }

            if (v42[0])
            {
              v14 = 0xE800000000000000;
            }

            else
            {
              v14 = 0xE300000000000000;
            }

            if (v11 == v13 && v12 == v14)
            {
              sub_1E141CF5C(v42, &v33);
              sub_1E141CF5C(&v38, &v33);

LABEL_58:
              sub_1E13006E4(0, &qword_1EE1E31E0);
              v15 = sub_1E1AF6D0C();
              goto LABEL_59;
            }

            v26 = sub_1E1AF74AC();
            sub_1E141CF5C(v42, &v33);
            sub_1E141CF5C(&v38, &v33);

            if (v26)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          v25 = *(&v38 + 1);
          goto LABEL_55;
        }

        v20 = v39 | *(&v38 + 1) | *(&v39 + 1);
        if (v7 != 0x8000000000000000 || v20 | v40 | *(&v40 + 1) | *(&v41 + 1) | v9)
        {
          v24 = v20 | v40 | *(&v40 + 1);
          if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 1 || v24)
          {
            if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 2 || v24)
            {
              if (*(&v41 + 1) || v7 != 0x8000000000000000 || v9 != 3 || v24)
              {
                if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 4)
                {
                  goto LABEL_55;
                }
              }

              else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 3)
              {
                goto LABEL_55;
              }
            }

            else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 2)
            {
              goto LABEL_55;
            }
          }

          else if (v43 >> 60 != 8 || v43 != 0x8000000000000000 || *v42 != 1)
          {
            goto LABEL_55;
          }

          v23 = *&v42[8];
          v27 = vorrq_s8(*&v42[16], *&v42[32]);
          v22 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
        }

        else
        {
          if (v43 >> 60 != 8 || v43 != 0x8000000000000000)
          {
            goto LABEL_55;
          }

          v21 = vorrq_s8(*&v42[8], *&v42[24]);
          v22 = (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *&v42[40]);
          v23 = *(&v43 + 1) | *v42;
        }

        if (!(*&v22 | v23))
        {
LABEL_82:
          sub_1E1308058(v44, &qword_1ECEB4E98);
          v19 = 1;
          return v19 & 1;
        }

LABEL_55:
        sub_1E141CF5C(v42, &v33);
LABEL_56:
        sub_1E1308058(v44, &qword_1ECEB4E98);
        v19 = 0;
        return v19 & 1;
      }

      v16 = v43;
      if (v43 >> 60 == 6)
      {
        goto LABEL_33;
      }

LABEL_31:
      v17 = a1[1];
      v33 = *a1;
      v34 = v17;
      v18 = a1[3];
      v35 = a1[2];
      v37 = *(&v18 + 1);
      v36 = v18 & 0xFFFFFFFFFFFFFFFLL;
      sub_1E134FD1C(&v33, v30, &qword_1ECEB4EA0);
      goto LABEL_55;
    }

    if (v10 == 4)
    {
      v16 = v43;
      if (v43 >> 60 != 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = v43;
      if (v43 >> 60 != 5)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    LOBYTE(v33) = v38;
    *(&v33 + 1) = *(&v38 + 1);
    BYTE7(v33) = (*(&v38 + 1) | ((*(&v38 + 5) | (BYTE7(v38) << 16)) << 32)) >> 48;
    *(&v33 + 5) = *(&v38 + 5);
    *(&v33 + 1) = *(&v38 + 1);
    v34 = v39;
    v35 = v40;
    v36 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v37 = *(&v41 + 1);
    v30[0] = *v42;
    v30[1] = *&v42[16];
    v30[2] = *&v42[32];
    v31 = v16 & 0xFFFFFFFFFFFFFFFLL;
    v32 = *(&v43 + 1);
    sub_1E141CF5C(v42, v29);
    sub_1E141CF5C(&v38, v29);
    sub_1E141CF5C(v42, v29);
    sub_1E141CF5C(&v38, v29);
    v19 = _s11AppStoreKit06LegacyA5StateO0A19InstallationDetailsV2eeoiySbAE_AEtFZ_0(&v33, v30);
    sub_1E1308058(v44, &qword_1ECEB4E98);
    sub_1E139CEA8(v42);
    sub_1E139CEA8(&v38);
    return v19 & 1;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v43 >> 60 == 2)
      {
LABEL_27:
        if (__PAIR128__(*(&v38 + 1), v9) != *v42)
        {
          v19 = sub_1E1AF74AC();
          sub_1E141CF5C(v42, &v33);
          sub_1E141CF5C(&v38, &v33);
LABEL_60:
          sub_1E1308058(v44, &qword_1ECEB4E98);
          return v19 & 1;
        }

        sub_1E141CF5C(v42, &v33);
        sub_1E141CF5C(&v38, &v33);
        goto LABEL_82;
      }
    }

    else if (v43 >> 60 == 3)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  if (!v10)
  {
    if (!(v43 >> 60))
    {
      v15 = sub_1E145B168(v38, v42[0]);
LABEL_59:
      v19 = v15;
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  if (v43 >> 60 != 1)
  {
    goto LABEL_55;
  }

  sub_1E1308058(v44, &qword_1ECEB4E98);
  v19 = v38 ^ v42[0] ^ 1;
  return v19 & 1;
}

unint64_t sub_1E1799A60()
{
  result = qword_1ECEB90C0;
  if (!qword_1ECEB90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB90C0);
  }

  return result;
}

unint64_t sub_1E1799AB8()
{
  result = qword_1ECEB90C8;
  if (!qword_1ECEB90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB90C8);
  }

  return result;
}

unint64_t sub_1E1799B10()
{
  result = qword_1ECEB90D0;
  if (!qword_1ECEB90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB90D0);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_11AppStoreKit06LegacyA5StateO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_1E1799B80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0xFFFFFF80 | (*(a1 + 48) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1E1799BD4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1799C4C(uint64_t result, uint64_t a2)
{
  if (a2 < 8)
  {
    *(result + 48) = *(result + 48) & 0x101 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 8);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = xmmword_1E1B11BA0;
  }

  return result;
}

uint64_t sub_1E1799CA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E1799CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for LegacyAppStateMachine()
{
  result = qword_1ECEB90D8;
  if (!qword_1ECEB90D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1799DF4()
{
  sub_1E13A8B64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1799F10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v7 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a1)
  {
    v8 = [a1 iaps];
    sub_1E13006E4(0, &qword_1EE1E31F0);
    sub_1E13006E4(0, &qword_1EE1E34C8);
    sub_1E16193E0();
    v9 = sub_1E1AF5C7C();
  }

  else
  {
    v9 = sub_1E15A19F0(MEMORY[0x1E69E7CC0]);
  }

  a4(v9, a2);
}

uint64_t sub_1E179A0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = objc_allocWithZone(MEMORY[0x1E698B4D0]);
  sub_1E13006E4(0, &qword_1EE1E31F0);
  v12 = sub_1E1AF620C();
  v13 = [v11 initWithAdamIds_];

  v14 = [objc_allocWithZone(MEMORY[0x1E698B4C8]) initWithOptions_];
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v15 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v23;
  *v18 = a2;
  v18[1] = v19;
  aBlock[4] = sub_1E179A38C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E14CC840;
  aBlock[3] = &block_descriptor_12_1;
  v20 = _Block_copy(aBlock);

  [v14 startWithCompletionBlock_];
  _Block_release(v20);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E179A38C(void *a1, uint64_t a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1799F10(a1, a2, v2 + v6, v7);
}

uint64_t AppStoreLocalizerFactory.localizer(forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[58] = a3;
  v4[59] = v3;
  v4[56] = a1;
  v4[57] = a2;
  v5 = sub_1E1AF4CBC();
  v4[60] = v5;
  v4[61] = *(v5 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E179A514, 0, 0);
}

uint64_t sub_1E179A514()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    v2 = *(v0 + 472);
    v3 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_localizerCache;
    *(v0 + 512) = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_localizerCache;
    swift_beginAccess();
    v4 = *(v2 + v3);
    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = sub_1E13018F8(*(v0 + 456), v1);
      if (v7)
      {
        v8 = *(v0 + 448);
        sub_1E1300B24(*(v4 + 56) + 40 * v6, v0 + 192);
        sub_1E1308EC0((v0 + 192), v8);
        swift_endAccess();

LABEL_8:

        v17 = *(v0 + 8);

        return v17();
      }
    }

    v9 = *(v0 + 504);
    v10 = *(v0 + 472);
    v11 = *(v0 + 456);
    swift_endAccess();
    sub_1E1300B24(v10 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_defaultLanguageSource, v0 + 32);
    *(v0 + 16) = v11;
    *(v0 + 24) = v1;
    *(v0 + 296) = &type metadata for ExtendedLanguageSource;
    *(v0 + 304) = sub_1E179B8E4();
    v12 = swift_allocObject();
    *(v0 + 272) = v12;
    sub_1E179B938(v0 + 16, v12 + 16);

    sub_1E179B2BC(v0 + 272, v9);
    *(v0 + 520) = sub_1E1AF4CDC();
    v13 = swift_task_alloc();
    *(v0 + 528) = v13;
    *v13 = v0;
    v13[1] = sub_1E179A810;
    v14 = *(v0 + 504);
  }

  else
  {
    v15 = *(v0 + 472);
    v16 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    *(v0 + 552) = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    swift_beginAccess();
    sub_1E16A33D4(v15 + v16, v0 + 72);
    if (*(v0 + 96))
    {
      sub_1E1308EC0((v0 + 72), *(v0 + 448));
      goto LABEL_8;
    }

    v19 = *(v0 + 496);
    v20 = *(v0 + 472);
    sub_1E1308058(v0 + 72, &qword_1ECEB2B50);
    sub_1E179B2BC(v20 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_defaultLanguageSource, v19);
    *(v0 + 560) = sub_1E1AF4CDC();
    v21 = swift_task_alloc();
    *(v0 + 568) = v21;
    *v21 = v0;
    v21[1] = sub_1E179AAE4;
    v14 = *(v0 + 496);
  }

  return MEMORY[0x1EEE17070](v14);
}

uint64_t sub_1E179A810(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {

    v5 = sub_1E179AA50;
  }

  else
  {
    *(v4 + 544) = a1;
    v5 = sub_1E179A940;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E179A940()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v5 = *(v0 + 464);
  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = MEMORY[0x1E69AB330];
  *(v0 + 256) = *(v0 + 520);
  *(v0 + 264) = v8;
  *(v0 + 232) = v1;
  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  sub_1E1300B24(v0 + 232, v0 + 312);
  swift_beginAccess();
  sub_1E1387180(v0 + 312, v6, v5);
  swift_endAccess();
  sub_1E179B970(v0 + 16);
  sub_1E1308EC0((v0 + 232), v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E179AA50()
{
  (*(v0[61] + 8))(v0[63], v0[60]);
  sub_1E179B970((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1((v0 + 34));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E179AAE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = sub_1E179ACFC;
  }

  else
  {
    *(v4 + 584) = a1;
    v5 = sub_1E179AC0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E179AC0C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 448);
  v8 = MEMORY[0x1E69AB330];
  *(v0 + 136) = *(v0 + 560);
  *(v0 + 144) = v8;
  *(v0 + 112) = v1;
  (*(v4 + 8))(v3, v5);
  sub_1E1300B24(v0 + 112, v0 + 152);
  swift_beginAccess();
  sub_1E179B620(v0 + 152, v6 + v2);
  swift_endAccess();
  sub_1E1308EC0((v0 + 112), v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E179ACFC()
{
  (*(v0[61] + 8))(v0[62], v0[60]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E179ADA0()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = v1[1];
  *(v2 + 32) = *v1;
  *(v2 + 40) = v3;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v4);

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1E179AEA8;

  return MEMORY[0x1EEE16640](v4, v5);
}

uint64_t sub_1E179AEA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1E179B044;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1E179AFD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E179AFD0()
{
  v3 = v0[3];
  sub_1E17286F4(v0[6]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_1E179B044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E179B0A8()
{

  return sub_1E1AEFEEC();
}

uint64_t AppStoreLocalizerFactory.__allocating_init(jetpackResourceBundle:defaultLanguageSource:objectGraph:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_localizerCache;
  *(v6 + v8) = sub_1E15A2418(MEMORY[0x1E69E7CC0]);
  v9 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v10 = sub_1E1AF4D3C();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  sub_1E1308EC0(a2, v6 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_objectGraph) = a3;
  return v6;
}

uint64_t AppStoreLocalizerFactory.init(jetpackResourceBundle:defaultLanguageSource:objectGraph:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_localizerCache;
  *(v3 + v8) = sub_1E15A2418(MEMORY[0x1E69E7CC0]);
  v9 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v10 = sub_1E1AF4D3C();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  sub_1E1308EC0(a2, v3 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_objectGraph) = a3;
  return v3;
}

uint64_t sub_1E179B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_1E1AF4CBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1E1AF526C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1B12AE0;
  *(v13 + 32) = [objc_opt_self() mainBundle];
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_1EE1E3200;
  *(v13 + 40) = qword_1EE1E3200;
  v15 = v14;
  sub_1E1AF525C();
  v16 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v17 = sub_1E1AF4D3C();
  v27 = v17;
  v28 = MEMORY[0x1E69AB348];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v22 + v16, v17);
  sub_1E1300B24(v23, v25);

  sub_1E1AF4C8C();
  v27 = v9;
  v28 = MEMORY[0x1E69AB4F0];
  v19 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(v10 + 16))(v19, v12, v9);
  sub_1E1AF4CAC();
  v20 = *(v3 + 8);
  v20(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v27 = &type metadata for AppStoreLocalizerPreferences;
  v28 = sub_1E179B9E4();
  sub_1E1AF4C9C();
  v20(v8, v2);
  (*(v10 + 8))(v12, v9);
  return sub_1E1308058(v26, &qword_1ECEB90F0);
}

uint64_t sub_1E179B620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AppStoreLocalizerFactory.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v2 = sub_1E1AF4D3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer, &qword_1ECEB2B50);

  return v0;
}

uint64_t AppStoreLocalizerFactory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle;
  v2 = sub_1E1AF4D3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer, &qword_1ECEB2B50);

  return swift_deallocClassInstance();
}

uint64_t sub_1E179B830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E130B5DC;

  return AppStoreLocalizerFactory.localizer(forLanguage:)(a1, a2, a3);
}

unint64_t sub_1E179B8E4()
{
  result = qword_1ECEB90E8;
  if (!qword_1ECEB90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB90E8);
  }

  return result;
}

unint64_t sub_1E179B9E4()
{
  result = qword_1EE1F8640;
  if (!qword_1EE1F8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8640);
  }

  return result;
}

void __swiftcall MetricsSystemInfo.init()(AppStoreKit::MetricsSystemInfo *__return_ptr retstr)
{
  v2 = sub_1E1AF543C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF542C();
  v6 = sub_1E1AF53EC();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v5, v2);
  retstr->systemName._countAndFlagsBits = v6;
  retstr->systemName._object = v8;
  sub_1E1AF542C();
  v10 = objc_opt_self();
  v11 = [v10 deviceClass];
  v12 = sub_1E1AF5DFC();
  v14 = v13;

  v9(v5, v2);
  retstr->hardwareFamily._countAndFlagsBits = v12;
  retstr->hardwareFamily._object = v14;
  sub_1E1AF542C();
  v15 = [v10 productType];
  v16 = sub_1E1AF5DFC();
  v18 = v17;

  v9(v5, v2);
  retstr->hardwareModel._countAndFlagsBits = v16;
  retstr->hardwareModel._object = v18;
  sub_1E1AF542C();
  v19 = sub_1E1AF540C();
  v21 = v20;
  v9(v5, v2);
  retstr->osBuildNumber._countAndFlagsBits = v19;
  retstr->osBuildNumber._object = v21;
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 systemVersion];

  v24 = sub_1E1AF5DFC();
  v26 = v25;

  retstr->osVersion._countAndFlagsBits = v24;
  retstr->osVersion._object = v26;
}

unint64_t MetricsSystemInfo.dictionaryRepresentation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[9];
  v17 = v0[8];

  v10 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v2, v1, 29551, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v3, v4, 0x6572617764726168, 0xEE00796C696D6146, v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v5, v6, 0x6572617764726168, 0xED00006C65646F4DLL, v13);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v7, v8, 0x4E646C697542736FLL, 0xED00007265626D75, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v17, v9, 0x6F6973726556736FLL, 0xE90000000000006ELL, v15);
  return v10;
}

uint64_t ReviewsDiffablePagePresenter.init(objectGraph:reviewsPage:preferSelectedActionTitles:)(uint64_t a1, uint64_t a2, int a3)
{
  v71 = a1;
  v6 = sub_1E1AF68DC();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = &v61 - v12;
  v13 = (v3 + qword_1ECEF4A98);
  v14._object = 0x80000001E1B75AB0;
  v14._countAndFlagsBits = 0xD000000000000017;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  *v13 = localizedString(_:comment:)(v14, v15);
  v16 = qword_1ECEF4AA0;
  *(v3 + qword_1ECEF4AA0) = 0;
  *(v3 + qword_1ECEF4AA8) = MEMORY[0x1E69E7CC0];
  v17 = v3 + qword_1ECEF4AB0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  *(v3 + qword_1ECEF4AB8) = 0;
  v63 = qword_1ECEF4AC0;
  *(v3 + qword_1ECEF4AC0) = 0;
  v64 = a3;
  *(v3 + qword_1ECEB90F8) = a3;
  v62 = OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions;
  v18 = *(a2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions);
  v73 = a2;
  if (v18 >> 62)
  {
LABEL_20:
    v19 = sub_1E1AF71CC();
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_3:
      v20 = 0;
      v21 = (v73 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E68FFD80](v20, v18);
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            v26 = v73;
            goto LABEL_28;
          }
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v22 = *(v18 + 8 * v20 + 32);

          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_17;
          }
        }

        v24 = v21[1];
        if (v24)
        {
          v25 = *(v22 + 16) == *v21 && v24 == *(v22 + 24);
          if (v25 || (sub_1E1AF74AC() & 1) != 0)
          {
            goto LABEL_18;
          }
        }

        ++v20;
      }

      while (v23 != v19);
    }
  }

  v26 = v73;
  v27 = *(v73 + v62);
  if (!(v27 >> 62))
  {
    result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_23;
    }

LABEL_27:
    v22 = 0;
    goto LABEL_28;
  }

  result = sub_1E1AF71CC();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_23:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1E68FFD80](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v27 + 32);
  }

LABEL_28:
  swift_beginAccess();
  *(v3 + v16) = v22;

  v29 = 0;
  v30 = 0;
  if ((v64 & 1) == 0)
  {
    v29 = *(v26 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  }

  v31 = (v3 + qword_1ECEF4AC8);
  *v31 = v29;
  v31[1] = v30;
  v32 = *(v26 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction);
  v33 = v63;
  swift_beginAccess();
  *(v3 + v33) = v32;

  v34 = sub_1E1AEFCCC();
  (*(*(v34 - 8) + 56))(v72, 1, 1, v34);
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  *(v3 + qword_1EE2169B8) = 0;
  v35 = MEMORY[0x1E69E7CC0];
  *(v3 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v3 + qword_1EE1ED400) = 0;
  v36 = *(*v3 + 640);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3340);
  v38 = *(*(v37 - 8) + 56);
  v38(v3 + v36, 1, 1, v37);
  v39 = *(*v3 + 648);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v40 - 8) + 56))(v3 + v39, 1, 1, v40);
  v41 = *(*v3 + 656);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3338);
  (*(*(v42 - 8) + 56))(v3 + v41, 1, 1, v42);
  v38(v3 + *(*v3 + 664), 1, 1, v37);
  v43 = *(*v3 + 672);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v44 - 8) + 56))(v3 + v43, 1, 1, v44);
  v45 = *(*v3 + 680);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v46 - 8) + 56))(v3 + v45, 1, 1, v46);
  v47 = *(*v3 + 688);
  sub_1E1361A80();

  sub_1E1AF322C();
  v74 = v35;
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1429210();
  v48 = v3;
  sub_1E1AF6EEC();
  (*(v69 + 104))(v68, *MEMORY[0x1E69E8090], v70);
  *(v3 + v47) = sub_1E1AF692C();
  sub_1E13C6184(v48 + *(*v48 + 696));
  v49 = (v48 + *(*v48 + 704));
  *v49 = 0u;
  v49[1] = 0u;
  *(v49 + 25) = 0u;
  v50 = *(*v3 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v3 + v50) = sub_1E1AF5BEC();
  v51 = *(*v3 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v3 + v51) = sub_1E1AF5BEC();
  v52 = *(*v3 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v3 + v52) = sub_1E1AF5BEC();
  *(v3 + *(*v3 + 736)) = 0;
  v53 = (v48 + *(*v48 + 752));
  *v53 = 0;
  v53[1] = 0;
  v54 = v72;
  sub_1E134FD1C(v72, v3 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v75, v48 + *(*v48 + 744), &qword_1ECEB24F8);
  v55 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v3 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v56);

  v58 = sub_1E13C599C(v57, 0, 0, 0);
  v59 = *(*v58 + 1112);

  v60 = v73;
  *(v58 + qword_1EE2169B8) = v59(v73);

  sub_1E13CB694(0);

  sub_1E1308058(v75, &qword_1ECEB24F8);
  sub_1E1308058(v54, &unk_1ECEB4B60);

  sub_1E179C918(v60);

  return v58;
}

uint64_t sub_1E179C918(uint64_t a1)
{
  v47 = sub_1E1AEFEAC();
  v2 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v44 - v5;
  v63 = sub_1E1AF3E1C();
  v6 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v56 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions);
  if (!(v56 >> 62))
  {
    v11 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      v74 = MEMORY[0x1E69E7CC0];
      v48 = v11;
      sub_1E1AF70EC();
LABEL_4:
      v12 = 0;
      v13 = *(v55 + qword_1ECEB90F8);
      v54 = v56 & 0xC000000000000001;
      v53 = (v6 + 16);
      v52 = (v6 + 8);
      v45 = (v2 + 8);
      v51 = (v6 + 32);
      v14 = v13 == 0;
      v15 = 32;
      if (!v14)
      {
        v15 = 48;
      }

      v50 = v15;
      v16 = 40;
      if (!v14)
      {
        v16 = 56;
      }

      v49 = v16;
      v17 = v48;
      v44 = v10;
      do
      {
        v60 = v12;
        if (v54)
        {
          v27 = MEMORY[0x1E68FFD80](v12, v56);
        }

        else
        {
          v27 = *(v56 + 8 * v12 + 32);
        }

        v28 = *(v27 + 24);
        v72[0] = *(v27 + 16);
        v72[1] = v28;

        sub_1E1AF6F6C();
        v58 = *(v27 + v50);
        v59 = *(v27 + v49);

        sub_1E1AF3DFC();
        v29 = swift_allocObject();
        swift_weakInit();
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        *(v30 + 24) = v27;
        type metadata accessor for LocalAction();
        v31 = swift_allocObject();
        v32 = (v31 + OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler);
        *v32 = sub_1E179DBD8;
        v32[1] = v30;
        sub_1E134FD1C(v73, v72, &unk_1ECEB5670);
        (*v53)(v61, v10, v63);
        v33 = sub_1E1AF46DC();
        (*(*(v33 - 8) + 56))(v62, 1, 1, v33);
        v34 = (v31 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
        *v34 = 0u;
        v34[1] = 0u;
        sub_1E134FD1C(v72, &v69, &unk_1ECEB5670);
        v35 = *(&v70 + 1);
        v57 = v29;

        if (v35)
        {
          sub_1E1308058(v72, &unk_1ECEB5670);
          (*v52)(v10, v63);
          sub_1E1308058(v73, &unk_1ECEB5670);
          v66 = v69;
          v67 = v70;
          v68 = v71;
        }

        else
        {

          v18 = v46;
          sub_1E1AEFE9C();
          v19 = sub_1E1AEFE7C();
          v21 = v20;
          (*v45)(v18, v47);
          v64 = v19;
          v22 = v63;
          v10 = v44;
          v65 = v21;
          v17 = v48;
          sub_1E1AF6F6C();

          sub_1E1308058(v72, &unk_1ECEB5670);
          (*v52)(v10, v22);
          sub_1E1308058(v73, &unk_1ECEB5670);
          sub_1E1308058(&v69, &unk_1ECEB5670);
        }

        v12 = v60 + 1;
        v23 = v67;
        v69 = v66;
        v70 = v67;
        v24 = v68;
        v71 = v68;
        v25 = v31 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
        *v25 = v66;
        *(v25 + 1) = v23;
        *(v25 + 4) = v24;
        sub_1E134B7C8(v62, v31 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
        v26 = v59;
        v31[2] = v58;
        v31[3] = v26;
        v31[4] = 0;
        v31[5] = 0;
        (*v51)(v31 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v61, v63);

        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      while (v17 != v12);
      v36 = v74;
      goto LABEL_17;
    }

LABEL_22:
    v41 = qword_1ECEF4AA8;
    v42 = v55;
    swift_beginAccess();
    *(v42 + v41) = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E1AF71CC() < 1)
  {
    goto LABEL_22;
  }

  v39 = sub_1E1AF71CC();
  v36 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v74 = MEMORY[0x1E69E7CC0];
    v40 = v39;
    sub_1E1AF70EC();
    v48 = v40;
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  v37 = qword_1ECEF4AA8;
  v38 = v55;
  swift_beginAccess();
  *(v38 + v37) = v36;
}

uint64_t ReviewsDiffablePagePresenter.title.getter()
{
  v1 = *(v0 + qword_1ECEF4A98);

  return v1;
}

uint64_t sub_1E179D130(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1ECEF4AA0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_1E179D1A0(v5);
}

uint64_t sub_1E179D1A0(uint64_t a1)
{
  v3 = qword_1ECEF4AA0;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (!a1 || ((result = *(v5 + 16), result == *(a1 + 16)) ? (v6 = *(v5 + 24) == *(a1 + 24)) : (v6 = 0), !v6 && (result = sub_1E1AF74AC(), (result & 1) == 0)))
    {
      v7 = qword_1ECEF4AB8;
      swift_beginAccess();
      *(v1 + v7) = 1;

      sub_1E19F7140(1);
    }
  }

  return result;
}

uint64_t ReviewsDiffablePagePresenter.sortMenuTitle.getter()
{
  v1 = *(v0 + qword_1ECEF4AC8);

  return v1;
}

uint64_t ReviewsDiffablePagePresenter.initialFocusedReviewId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ECEF4AB0;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &unk_1ECEB5670);
}

uint64_t ReviewsDiffablePagePresenter.isUpdatingSortOption.getter()
{
  v1 = qword_1ECEF4AB8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ReviewsDiffablePagePresenter.trailingNavBarAction.setter(uint64_t a1)
{
  v3 = qword_1ECEF4AC0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E179D448(uint64_t a1)
{
  v3 = v1[2];
  swift_beginAccess();
  v4 = v1[3];
  swift_beginAccess();
  v5 = v1[4];
  v6 = qword_1ECEF4AA0;
  swift_beginAccess();
  v7 = *(v1 + v6);
  type metadata accessor for ReviewsDiffablePageContentPresenter();
  swift_allocObject();

  return ReviewsDiffablePageContentPresenter.init(objectGraph:sidePackedPage:pendingPageRender:pageRenderMetrics:sortOption:)(v3, a1, v4, v5, v7);
}

uint64_t sub_1E179D530(uint64_t a1, char a2)
{
  sub_1E1A803F0(a1, a2);
  sub_1E179C918(a1);
  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId + 8))
  {

    sub_1E1AF6F6C();
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  v4 = qword_1ECEF4AB0;
  swift_beginAccess();
  sub_1E179DB68(v7, v2 + v4);
  swift_endAccess();
  v5 = qword_1ECEF4AB8;
  result = swift_beginAccess();
  *(v2 + v5) = 0;
  return result;
}

uint64_t sub_1E179D604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = qword_1ECEF4AA0;
    swift_beginAccess();
    v6 = *(v4 + v5);
    *(v4 + v5) = a2;
    if (v6 && (*(a2 + 16) == *(v6 + 16) ? (v7 = *(a2 + 24) == *(v6 + 24)) : (v7 = 0), v7 || (sub_1E1AF74AC() & 1) != 0))
    {
    }

    else
    {
      v8 = qword_1ECEF4AB8;
      swift_beginAccess();
      *(v4 + v8) = 1;

      sub_1E19F7140(1);
    }
  }

  return result;
}

uint64_t ReviewsDiffablePagePresenter.perform(action:sender:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1E134FD1C(a2, &v4, &qword_1ECEB2DF0);

  sub_1E1AF5BCC();
  return sub_1E1308058(&v3, &qword_1ECEB24C8);
}

uint64_t sub_1E179D7BC()
{

  sub_1E1308058(v0 + qword_1ECEF4AB0, &unk_1ECEB5670);
}

uint64_t ReviewsDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DB41C();

  sub_1E1308058(v0 + qword_1ECEF4AB0, &unk_1ECEB5670);

  return v0;
}

uint64_t ReviewsDiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_1E13DB41C();

  sub_1E1308058(v0 + qword_1ECEF4AB0, &unk_1ECEB5670);

  return swift_deallocClassInstance();
}

uint64_t sub_1E179D9E4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_1E134FD1C(a2, &v4, &qword_1ECEB2DF0);

  sub_1E1AF5BCC();
  return sub_1E1308058(&v3, &qword_1ECEB24C8);
}

uint64_t type metadata accessor for ReviewsDiffablePagePresenter()
{
  result = qword_1ECEB9100;
  if (!qword_1ECEB9100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E179DB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E179DBF0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1E1AF644C();
  v2[6] = sub_1E1AF643C();
  v4 = sub_1E1AF63CC();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E179DC8C, v4, v3);
}

uint64_t sub_1E179DC8C()
{
  if ([*(v0[4] + OBJC_IVAR____TtC11AppStoreKit20ViewPresentationTask_request) viewIdentifier])
  {

    sub_1E179E40C();
    swift_allocError();
    swift_willThrow();
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[3];
    v4 = [objc_allocWithZone(type metadata accessor for BackgroundAssetConsentViewController()) init];
    v0[9] = v4;
    v5 = sub_1E1AF643C();
    v0[10] = v5;
    v6 = swift_task_alloc();
    v0[11] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_task_alloc();
    v0[12] = v7;
    v8 = sub_1E179E468();
    *v7 = v0;
    v7[1] = sub_1E179DE48;
    v9 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 2, v5, v9, 0xD000000000000018, 0x80000001E1B75C30, sub_1E179E460, v6, v8);
  }
}

uint64_t sub_1E179DE48()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1E179DFE0;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1E179DF6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E179DF6C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E179DFE0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1E179E068(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1E179E0D4(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9128);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1E179E4B4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E179E068;
  aBlock[3] = &block_descriptor_67;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a3;

  [v14 setResponseBlock_];
  _Block_release(v13);
  return [v15 presentViewController:v14 animated:1 completion:0];
}

void sub_1E179E2BC(void *a1, id a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  if (a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E698B578]);
    v4 = a1;
    [v3 initWithNumber_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9128);
    sub_1E1AF63EC();
  }

  else
  {
    sub_1E15B396C();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9128);
    sub_1E1AF63DC();
  }
}

unint64_t sub_1E179E40C()
{
  result = qword_1ECEB9118;
  if (!qword_1ECEB9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9118);
  }

  return result;
}

unint64_t sub_1E179E468()
{
  result = qword_1ECEB9120;
  if (!qword_1ECEB9120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB9120);
  }

  return result;
}

void sub_1E179E4B4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9128);
  v3 = *(v1 + 16);

  sub_1E179E2BC(a1, v3);
}

unint64_t sub_1E179E548()
{
  result = qword_1ECEB9130;
  if (!qword_1ECEB9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9130);
  }

  return result;
}

uint64_t AnnotationGroup.title.getter()
{
  v1 = *v0;

  return v1;
}

double AnnotationGroup.init(id:title:annotations:forceExpanded:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_1E13E2E98(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v26);
  }

  result = *&v29;
  v24 = v30;
  *(a6 + 32) = v29;
  *(a6 + 48) = v24;
  *(a6 + 64) = v31;
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5 & 1;
  return result;
}

uint64_t AnnotationGroup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v5 = sub_1E1AF39DC();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E1AF380C();
  v11 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v52 = a3;
  if (v22)
  {
    v53 = v21;
    v54 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v53 = v23;
    v54 = v25;
  }

  sub_1E1AF6F6C();
  v26 = *(v11 + 8);
  v26(v20, v55);
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v26(v17, v55);
  if (v29)
  {
    v30 = a1;
    v31 = v52;
    *v52 = v27;
    v31[1] = v29;
    sub_1E1AF381C();
    v33 = v50;
    v32 = v51;
    v34 = *(v50 + 16);
    v45 = v26;
    v35 = v49;
    v34(v48, v49, v51);
    sub_1E179EC68();
    v31[2] = sub_1E1AF630C();
    v36 = v47;
    sub_1E1AF381C();
    v37 = sub_1E1AF370C();
    (*(v33 + 8))(v35, v32);
    v38 = v30;
    v39 = v55;
    v40 = v45;
    v45(v38, v55);
    result = v40(v36, v39);
    *(v31 + 24) = v37 & 1;
  }

  else
  {
    v42 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v43 = 0x656C746974;
    v43[1] = 0xE500000000000000;
    v43[2] = &type metadata for AnnotationGroup;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69AB690], v42);
    swift_willThrow();
    (*(v50 + 8))(v49, v51);
    v26(a1, v55);
    return sub_1E134B88C((v52 + 4));
  }

  return result;
}

unint64_t sub_1E179EC68()
{
  result = qword_1EE1F8420;
  if (!qword_1EE1F8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8420);
  }

  return result;
}

uint64_t AnnotationGroup.hasAnyAnnotationsWithLinks.getter()
{
  v1 = *(v0 + 16);
  result = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = result + 152;
    sub_1E1500704(result, v8);
    v7 = v9;

    sub_1E150073C(v8);
    result = v6;
    if (v7)
    {

      return v5 != -1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E179ED60()
{
  result = qword_1ECEB9138[0];
  if (!qword_1ECEB9138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB9138);
  }

  return result;
}

uint64_t sub_1E179EDD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E179EE20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E179EE80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E179EED8()
{
  result = qword_1ECEB91C0[0];
  if (!qword_1ECEB91C0[0])
  {
    type metadata accessor for GameCenterDashboardAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB91C0);
  }

  return result;
}

void sub_1E179EF30(void *a1, void *a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_1E1AF3E2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1E1AF591C();
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_1EE1E35B0;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v29 + 1) = sub_1E13006E4(0, &qword_1EE1D2518);
    *&v28 = v16;
    v17 = v16;
    sub_1E1AF385C();
    sub_1E13E44F8(&v28);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    (*(v6 + 104))(v8, *MEMORY[0x1E69AB010], v5);
    sub_1E1AF586C();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v18 = v12;
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v11, qword_1EE216158);
    (*(v18 + 16))(v14, v19, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    if (a2)
    {
      swift_getErrorValue();
      v20 = v26[2];
      v21 = v27;
      *(&v29 + 1) = v27;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    sub_1E1AF386C();
    sub_1E13E44F8(&v28);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    (*(v18 + 8))(v14, v11);
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      type metadata accessor for GameCenterDashboardActionImplementation.Error();
      swift_getWitnessTable();
      v23 = swift_allocError();
      *v24 = 0;
    }

    v25 = a2;
    sub_1E1AF584C();
  }
}

void sub_1E179F50C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v4 = sub_1E1AF588C();
  if (a1)
  {
    v5 = a1;
    v6 = [v5 session];
    v7 = [v6 persistentIdentifier];

    v8 = sub_1E1AF5DFC();
    v10 = v9;

    v11 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CD0;
    aBlock = sub_1E1AF5DFC();
    v30 = v13;

    sub_1E1AF6F6C();
    v14 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v15 = sub_1E1AF5DBC();
    v16 = [v14 initWithString_];

    if (v16)
    {

      *(inited + 96) = sub_1E13006E4(0, qword_1ECEB4218);
      *(inited + 72) = v16;
      aBlock = sub_1E1AF5DFC();
      v30 = v17;
      sub_1E1AF6F6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1E1B02CD0;
      strcpy((v18 + 32), "invocationType");
      *(v18 + 47) = -18;
      *(v18 + 48) = 0x72616F6268736164;
      *(v18 + 56) = 0xE900000000000064;
      *(v18 + 64) = 0x656449656E656373;
      *(v18 + 72) = 0xEF7265696669746ELL;
      *(v18 + 80) = v8;
      *(v18 + 88) = v10;
      v19 = sub_1E13017E4(v18);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
      swift_arrayDestroy();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
      *(inited + 144) = v19;
      sub_1E13609A4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0);
      swift_arrayDestroy();
      v20 = sub_1E1AF5C6C();

      v21 = [objc_opt_self() optionsWithDictionary_];

      if (v11)
      {
        v22 = v11;
        v23 = sub_1E1AF5DBC();
        v24 = swift_allocObject();
        *(v24 + 16) = a2;
        *(v24 + 24) = v4;
        v33 = sub_1E179FB20;
        v34 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v30 = 1107296256;
        v31 = sub_1E14CC840;
        v32 = &block_descriptor_68;
        v25 = _Block_copy(&aBlock);

        [v22 openApplication:v23 withOptions:v21 completion:v25];

        _Block_release(v25);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v26 = sub_1E1AF591C();
    __swift_project_value_buffer(v26, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    type metadata accessor for GameCenterDashboardActionImplementation.Error();
    swift_getWitnessTable();
    v27 = swift_allocError();
    *v28 = 1;
    sub_1E1AF584C();
  }
}

uint64_t WaitingAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  WaitingAppStateDataSource.init()();
  return v0;
}

void *WaitingAppStateDataSource.init()()
{
  v10 = sub_1E1AF68DC();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v5);
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_1E1361A80();
  v9[0] = "r Dashboard with process: ";
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v11 = v7;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  v0[5] = sub_1E1AF692C();
  return v0;
}

uint64_t sub_1E179FE68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1E179FF00(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1E179FF84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1E179FFE4(uint64_t *a1))()
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
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E17A0078;
}

uint64_t sub_1E17A0084(uint64_t *a1, _BYTE *a2)
{
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v9 = a1[1];
  LOBYTE(a2) = *a2;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  *(v11 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v17 = v12;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v15 = sub_1E17A0384;
  v16 = v11;
  sub_1E1AF68FC();

  (*(v6 + 8))(v8, v5);
  return 1;
}

uint64_t sub_1E17A02DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  *&v10[0] = a4;
  v11 = 0;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1E159A1B0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_1E17A0394(uint64_t *a1)
{
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v15 = v10;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v13 = sub_1E17A0820;
  v14 = v9;
  sub_1E1AF68FC();

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_1E17A05E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1E1496C84(a2, a3, v6);
  swift_endAccess();
  return sub_1E17A0A2C(v6);
}

uint64_t WaitingAppStateDataSource.deinit()
{

  sub_1E1337DEC(v0 + 24);

  return v0;
}

uint64_t WaitingAppStateDataSource.__deallocating_deinit()
{

  sub_1E1337DEC(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1E17A06D0(uint64_t *a1))()
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
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E17A0A94;
}

void sub_1E17A0764(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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
  }

  free(v3);
}

uint64_t sub_1E17A0A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 SearchResultsPageIntent.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000017;
  *(a2 + 8) = 0x80000001E1B32260;
  v2 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v2;
  *(a2 + 176) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v3;
  v4 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v4;
  v5 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v5;
  result = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = result;
  return result;
}

uint64_t SearchResultsPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultsPageIntent.requestDescriptor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[10];
  v25 = v1[9];
  v26 = v3;
  v4 = v1[10];
  v27 = v1[11];
  v5 = v1[4];
  v6 = v1[6];
  v21 = v1[5];
  v7 = v21;
  v22 = v6;
  v8 = v1[6];
  v9 = v1[8];
  v23 = v1[7];
  v10 = v23;
  v24 = v9;
  v11 = v1[2];
  v18[0] = v1[1];
  v18[1] = v11;
  v12 = v1[4];
  v14 = v1[1];
  v13 = v1[2];
  v19 = v1[3];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[11];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1E17A0BA8(v18, &v17);
}

JSValue __swiftcall SearchResultsPageIntent.makeValue(in:)(JSContext in)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v56 = *(v1 + 81);
  v55 = *(v1 + 82);
  v49 = *(v1 + 96);
  v50 = *(v1 + 56);
  v53 = *(v1 + 104);
  v54 = *(v1 + 88);
  v48 = *(v1 + 168);
  v51 = *(v1 + 176);
  v52 = *(v1 + 112);
  v8 = *(v1 + 184);
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_44;
  }

  isa = result.super.isa;
  v57 = v4;
  v58 = v3;

  v12 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1E1AF6C5C();
  v57 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7450);
  v13 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_1E1AF6C5C();
  if (v7 <= 1)
  {
    if (v7)
    {
      v14 = 0xE500000000000000;
      v15 = 0x79726F7473;
    }

    else
    {
      v14 = 0xE900000000000072;
      v15 = 0x65706F6C65766564;
    }
  }

  else if (v7 == 2)
  {
    v14 = 0xE600000000000000;
    v15 = 0x656461637261;
  }

  else
  {
    if (v7 != 3)
    {
      v16 = in.super.isa;
      v17 = 0;
      goto LABEL_14;
    }

    v14 = 0xE500000000000000;
    v15 = 0x6863746177;
  }

  v57 = v15;
  v58 = v14;
  v18 = in.super.isa;
  v17 = sub_1E1AF748C();
  sub_1E1455104(&v57);
LABEL_14:
  v19 = [v9 valueWithObject:v17 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v19)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_1E1AF6C5C();
  if (v8)
  {
    v57 = v8;
    v20 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
    v21 = sub_1E1AF748C();
    sub_1E1308058(&v57, &qword_1ECEB2548);
  }

  else
  {
    v22 = in.super.isa;
    v21 = 0;
  }

  v23 = [v9 valueWithObject:v21 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_47;
  }

  sub_1E1AF6C5C();
  v57 = SearchOrigin.rawValue.getter();
  v58 = v24;
  v25 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v25)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_1E1AF6C5C();
  if (v5)
  {
    v57 = v50;
    v58 = v5;
    v26 = in.super.isa;

    v27 = sub_1E1AF748C();
    sub_1E1455104(&v57);
  }

  else
  {
    v28 = in.super.isa;
    v27 = 0;
  }

  v29 = [v9 valueWithObject:v27 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v29)
  {
    goto LABEL_49;
  }

  sub_1E1AF6C5C();
  LOBYTE(v57) = v56;
  v30 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v30)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1E1AF6C5C();
  LOBYTE(v57) = v55;
  v31 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v31)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1E1AF6C5C();
  v32 = v54;
  if (v54)
  {
    v57 = v54;
    v33 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v32 = sub_1E1AF748C();
    sub_1E1308058(&v57, &unk_1ECEB2D10);
  }

  else
  {
    v34 = in.super.isa;
  }

  v35 = [v9 valueWithObject:v32 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v35)
  {
    goto LABEL_52;
  }

  sub_1E1AF6C5C();
  v36 = v53;
  if (v53)
  {
    v57 = v49;
    v58 = v53;
    v37 = in.super.isa;

    v36 = sub_1E1AF748C();
    sub_1E1455104(&v57);
  }

  else
  {
    v38 = in.super.isa;
  }

  v39 = [v9 valueWithObject:v36 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v39)
  {
    goto LABEL_53;
  }

  sub_1E1AF6C5C();
  v40 = v52;
  if (v52)
  {
    v57 = v52;
    v41 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v40 = sub_1E1AF748C();
    sub_1E1308058(&v57, &unk_1ECEB2D10);
  }

  else
  {
    v42 = in.super.isa;
  }

  v43 = [v9 valueWithObject:v40 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v43)
  {
    goto LABEL_54;
  }

  sub_1E1AF6C5C();
  v44 = v51;
  if (v51)
  {
    v57 = v48;
    v58 = v51;
    v45 = in.super.isa;

    v44 = sub_1E1AF748C();
    sub_1E1455104(&v57);
  }

  else
  {
    v46 = in.super.isa;
  }

  v47 = [v9 valueWithObject:v44 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v47)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_1E17A13FC()
{
  result = qword_1ECEB9248;
  if (!qword_1ECEB9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9248);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1E17A148C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1E17A14D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Shelf.ContentType.init(string:)@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.ContentType.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t Shelf.ContentType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF750C();

  v4 = 0;
  v5 = 82;
  switch(v2)
  {
    case 0:
      goto LABEL_95;
    case 1:
      v4 = 1;
      goto LABEL_95;
    case 2:
      v4 = 2;
      goto LABEL_95;
    case 3:
      v4 = 3;
      goto LABEL_95;
    case 4:
      v4 = 4;
      goto LABEL_95;
    case 5:
      v4 = 5;
      goto LABEL_95;
    case 6:
      v4 = 6;
      goto LABEL_95;
    case 7:
      v4 = 7;
      goto LABEL_95;
    case 8:
      v4 = 8;
      goto LABEL_95;
    case 9:
      v4 = 9;
      goto LABEL_95;
    case 10:
      v4 = 10;
      goto LABEL_95;
    case 11:
      v4 = 11;
      goto LABEL_95;
    case 12:
      v4 = 12;
      goto LABEL_95;
    case 13:
      v4 = 13;
      goto LABEL_95;
    case 14:
      v4 = 14;
      goto LABEL_95;
    case 15:
      v4 = 15;
      goto LABEL_95;
    case 16:
      v4 = 16;
      goto LABEL_95;
    case 17:
      v4 = 17;
      goto LABEL_95;
    case 18:
      v4 = 18;
      goto LABEL_95;
    case 19:
      v4 = 19;
      goto LABEL_95;
    case 20:
      v4 = 20;
      goto LABEL_95;
    case 21:
      v4 = 21;
      goto LABEL_95;
    case 22:
      v4 = 22;
      goto LABEL_95;
    case 23:
      v4 = 23;
      goto LABEL_95;
    case 24:
      v4 = 24;
      goto LABEL_95;
    case 25:
      v4 = 25;
      goto LABEL_95;
    case 26:
      v4 = 26;
      goto LABEL_95;
    case 27:
      v4 = 27;
      goto LABEL_95;
    case 28:
      v4 = 28;
      goto LABEL_95;
    case 29:
      v4 = 29;
      goto LABEL_95;
    case 30:
      v4 = 30;
      goto LABEL_95;
    case 31:
      v4 = 31;
      goto LABEL_95;
    case 32:
      v4 = 32;
      goto LABEL_95;
    case 33:
      v4 = 33;
      goto LABEL_95;
    case 34:
      v4 = 34;
      goto LABEL_95;
    case 35:
      v4 = 35;
      goto LABEL_95;
    case 36:
      v4 = 36;
      goto LABEL_95;
    case 37:
      v4 = 37;
      goto LABEL_95;
    case 38:
      v4 = 38;
      goto LABEL_95;
    case 39:
      v4 = 39;
      goto LABEL_95;
    case 40:
      v4 = 40;
      goto LABEL_95;
    case 41:
      v4 = 41;
      goto LABEL_95;
    case 42:
      v4 = 42;
      goto LABEL_95;
    case 43:
      v4 = 43;
      goto LABEL_95;
    case 44:
      v4 = 44;
      goto LABEL_95;
    case 45:
      v4 = 45;
      goto LABEL_95;
    case 46:
      v4 = 46;
      goto LABEL_95;
    case 47:
      v4 = 47;
      goto LABEL_95;
    case 48:
      v4 = 48;
      goto LABEL_95;
    case 49:
      v4 = 49;
      goto LABEL_95;
    case 50:
      v4 = 50;
      goto LABEL_95;
    case 51:
      v4 = 51;
      goto LABEL_95;
    case 52:
      v4 = 52;
      goto LABEL_95;
    case 53:
      v4 = 53;
      goto LABEL_95;
    case 54:
      v4 = 54;
      goto LABEL_95;
    case 55:
      v4 = 55;
      goto LABEL_95;
    case 56:
      v4 = 56;
      goto LABEL_95;
    case 57:
      v4 = 57;
      goto LABEL_95;
    case 58:
      v4 = 58;
      goto LABEL_95;
    case 59:
      v4 = 59;
      goto LABEL_95;
    case 60:
      v4 = 60;
      goto LABEL_95;
    case 61:
      v4 = 61;
      goto LABEL_95;
    case 62:
      v4 = 62;
      goto LABEL_95;
    case 63:
      v4 = 63;
      goto LABEL_95;
    case 64:
      v4 = 64;
      goto LABEL_95;
    case 65:
      v4 = 65;
      goto LABEL_95;
    case 66:
      v4 = 66;
      goto LABEL_95;
    case 67:
      v4 = 67;
      goto LABEL_95;
    case 68:
      v4 = 68;
      goto LABEL_95;
    case 69:
      v4 = 69;
      goto LABEL_95;
    case 70:
      v4 = 70;
      goto LABEL_95;
    case 71:
      v4 = 71;
      goto LABEL_95;
    case 72:
      v4 = 72;
      goto LABEL_95;
    case 73:
      v4 = 73;
      goto LABEL_95;
    case 74:
      v4 = 74;
      goto LABEL_95;
    case 75:
      v4 = 75;
      goto LABEL_95;
    case 76:
      v4 = 76;
      goto LABEL_95;
    case 77:
      v4 = 77;
      goto LABEL_95;
    case 78:
      v4 = 78;
      goto LABEL_95;
    case 79:
      v4 = 79;
      goto LABEL_95;
    case 80:
      v4 = 80;
      goto LABEL_95;
    case 81:
      v4 = 81;
LABEL_95:
      v5 = v4;
      break;
    case 82:
      break;
    case 83:
      v5 = 83;
      break;
    case 84:
      v5 = 84;
      break;
    case 85:
      v5 = 85;
      break;
    case 86:
      v5 = 86;
      break;
    case 87:
      v5 = 87;
      break;
    case 88:
      v5 = 88;
      break;
    case 89:
      v5 = 89;
      break;
    case 90:
      v5 = 90;
      break;
    case 91:
      v5 = 91;
      break;
    case 92:
      v5 = 92;
      break;
    case 93:
      v5 = 93;
      break;
    case 94:
      v5 = 94;
      break;
    case 95:
      v5 = 95;
      break;
    case 96:
      v5 = 96;
      break;
    case 97:
      v5 = 97;
      break;
    case 98:
      v5 = 98;
      break;
    case 99:
      v5 = 99;
      break;
    default:
      v5 = 100;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t Shelf.ContentType.init(string:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  if (a1)
  {
    result = Shelf.ContentType.init(rawValue:)(&v5);
    v4 = v5;
  }

  else
  {
    v4 = 100;
  }

  *a2 = v4;
  return result;
}

unint64_t Shelf.ContentType.rawValue.getter()
{
  result = 0x72656B72616DLL;
  switch(*v0)
  {
    case 1:
      v2 = 0x4C6C6C616D73;
      return v2 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 2:
      return 0x6573616863727570;
    case 3:
      v5 = 0x6D756964656DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
    case 4:
      v2 = 0x4C656772616CLL;
      return v2 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 5:
      return 0xD000000000000010;
    case 6:
    case 0x2C:
    case 0x3F:
      return 0xD000000000000013;
    case 7:
    case 0x57:
      return 0xD000000000000018;
    case 8:
      return 0xD000000000000029;
    case 9:
      return 0xD000000000000027;
    case 0xA:
      return 0xD000000000000023;
    case 0xB:
      return 0x6E6F69746361;
    case 0xC:
      return 0x6B726F77747261;
    case 0xD:
      return 0x61426E6F62626972;
    case 0xE:
      return 0x6C466E6F62626972;
    case 0xF:
      return 0x7061726761726170;
    case 0x10:
      return 0x697461746F6E6E61;
    case 0x11:
      return 0x65746F6E746F6F66;
    case 0x12:
      return 0x615064656C746974;
    case 0x13:
      return 0x6169726F74696465;
    case 0x14:
      v6 = 0x436F65646976;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 0x15:
      return 0x6B63697262;
    case 0x16:
      return 0x79726F6765746163;
    case 0x17:
    case 0x31:
    case 0x33:
    case 0x39:
    case 0x4E:
    case 0x54:
      return 0xD000000000000011;
    case 0x18:
      return 0x73776569766572;
    case 0x19:
      return 0xD000000000000010;
    case 0x1A:
      return 0x7553776569766572;
    case 0x1B:
      return 0x4373726F74696465;
    case 0x1C:
      v6 = 0x437961646F74;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 0x1D:
      return 0x61646F54696E696DLL;
    case 0x1E:
    case 0x41:
      return 0x6169726F74696465;
    case 0x1F:
      return 0x694C686372616573;
    case 0x20:
      return 0x65746F7571;
    case 0x21:
      return 0x746E6F7A69726F68;
    case 0x22:
      return 0x724164656D617266;
    case 0x23:
      return 0x68736E6565726373;
    case 0x24:
      return 0x4D746375646F7270;
    case 0x25:
      return 0xD000000000000010;
    case 0x26:
      return 0x63776F6853707061;
    case 0x27:
    case 0x49:
    case 0x4A:
    case 0x62:
      v3 = 5;
      goto LABEL_83;
    case 0x28:
      return 0xD000000000000010;
    case 0x29:
      return 0x50746375646F7270;
    case 0x2A:
    case 0x2B:
      return 0x52746375646F7270;
    case 0x2D:
      return 0x656C62616B6E696CLL;
    case 0x2E:
      return 0x695664656D617266;
    case 0x2F:
    case 0x3C:
    case 0x4F:
      return 0xD000000000000012;
    case 0x30:
      return 0x72656E6E6162;
    case 0x32:
      return 0x426465646E756F72;
    case 0x34:
      return 0x7475426567616D69;
    case 0x35:
      v4 = 0x536C6C616D73;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6F74000000000000;
    case 0x36:
      return 0x74536D756964656DLL;
    case 0x37:
      v4 = 0x53656772616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6F74000000000000;
    case 0x38:
      return 0xD000000000000020;
    case 0x3A:
      return 0x72426C6C65737075;
    case 0x3B:
      return 0x6572426C6C616D73;
    case 0x3D:
      return 0xD000000000000010;
    case 0x3E:
      return 0x6F46656461637261;
    case 0x40:
      return 0x6567646162;
    case 0x42:
      return 0x6853656461637261;
    case 0x43:
      v3 = 10;
      goto LABEL_83;
    case 0x44:
    case 0x48:
    case 0x63:
      return 0xD000000000000016;
    case 0x45:
      return 0xD000000000000010;
    case 0x46:
      return 0x6D756C6F436F7774;
    case 0x47:
      return 0x62616C6C6F726373;
    case 0x4B:
      return 0xD000000000000026;
    case 0x4C:
      v5 = 0x726574736F70;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
    case 0x4D:
      return 0xD000000000000010;
    case 0x50:
      return 0x4879636176697270;
    case 0x51:
      return 0x4679636176697270;
    case 0x52:
      return 0x5479636176697270;
    case 0x53:
      return 0x4379636176697270;
    case 0x55:
      return 0x6F6D6F7250707061;
    case 0x56:
      return 0x6552686372616573;
    case 0x58:
      v3 = 9;
LABEL_83:
      result = v3 | 0xD000000000000010;
      break;
    case 0x59:
      result = 0x7362615465676170;
      break;
    case 0x5A:
      result = 0x6F7261436F726568;
      break;
    case 0x5B:
      result = 1919246965;
      break;
    case 0x5C:
      result = 0x42746375646F7270;
      break;
    case 0x5D:
      result = 0x676150616964656DLL;
      break;
    case 0x5E:
      result = 0x6B63697242676174;
      break;
    case 0x5F:
      result = 0x6C6F686563616C70;
      break;
    case 0x60:
      result = 0x6863746566657270;
      break;
    case 0x61:
      result = 0x4D64656966696E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Shelf.ContentType.axString.getter()
{
  v1 = 0;
  v2 = 0xD000000000000013;
  v3 = *v0;
  if (v3 > 0x36)
  {
    if (v3 == 55)
    {
      v5 = "AX_LARGE_STORY_CARD";
    }

    else
    {
      if (v3 != 78)
      {
        return v1;
      }

      v5 = "AX_INFORMATION_CARD";
    }

    v4 = v5 - 32;
    goto LABEL_11;
  }

  if (v3 == 19)
  {
    v4 = "AX_INFORMATION_CARD";
    v2 = 0xD000000000000017;
    goto LABEL_11;
  }

  if (v3 == 54)
  {
    v4 = "AX_EDITORIAL_STORY_CARD";
    v2 = 0xD000000000000014;
LABEL_11:
    v6 = v4 | 0x8000000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    return localizedString(_:comment:)(*&v2, v7)._countAndFlagsBits;
  }

  return v1;
}

uint64_t Shelf.ContentType.isCompatible(with:)(_BYTE *a1)
{
  if (*a1 != 100)
  {
    v3 = *v1;
    if (v3 > 5)
    {
      if (v3 - 6 < 2)
      {
        if (Shelf.ContentType.rawValue.getter() != 0xD000000000000013 || 0x80000001E1B57BD0 != v18)
        {
          v19 = sub_1E1AF74AC();

          if ((v19 & 1) == 0)
          {
            if (Shelf.ContentType.rawValue.getter() != 0xD000000000000018 || 0x80000001E1B57BF0 != v20)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          goto LABEL_40;
        }

        goto LABEL_29;
      }

      if (v3 == 49)
      {
        v21 = Shelf.ContentType.rawValue.getter();
        v23 = v22;
        if (v21 == Shelf.ContentType.rawValue.getter() && v23 == v24)
        {
        }

        else
        {
          v25 = sub_1E1AF74AC();

          if (v25)
          {
            goto LABEL_40;
          }

          if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x80000001E1B57DD0 != v27)
          {
            v28 = sub_1E1AF74AC();

            if ((v28 & 1) == 0)
            {
LABEL_47:
              if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x80000001E1B57F40 != v29)
              {
LABEL_41:
                v2 = sub_1E1AF74AC();
                goto LABEL_42;
              }

LABEL_33:
              v2 = 1;
LABEL_42:

              return v2 & 1;
            }

LABEL_40:
            v2 = 1;
            return v2 & 1;
          }
        }

LABEL_29:

        v2 = 1;
        return v2 & 1;
      }

      if (v3 == 96)
      {
        goto LABEL_40;
      }
    }

    else if (v3 - 1 < 4)
    {
      if (Shelf.ContentType.rawValue.getter() != 0x636F4C6C6C616D73 || v4 != 0xEB0000000070756BLL)
      {
        v5 = sub_1E1AF74AC();

        if (v5)
        {
          goto LABEL_40;
        }

        if (Shelf.ContentType.rawValue.getter() != 0x6F4C6D756964656DLL || v6 != 0xEC00000070756B63)
        {
          v7 = sub_1E1AF74AC();

          if (v7)
          {
            goto LABEL_40;
          }

          if (Shelf.ContentType.rawValue.getter() != 0x636F4C656772616CLL || v8 != 0xEB0000000070756BLL)
          {
            v9 = sub_1E1AF74AC();

            if (v9)
            {
              goto LABEL_40;
            }

            if (Shelf.ContentType.rawValue.getter() != 0xD000000000000011 || 0x80000001E1B57E50 != v10)
            {
              v11 = sub_1E1AF74AC();

              if (v11)
              {
                goto LABEL_40;
              }

              if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x80000001E1B57DD0 != v12)
              {
                v13 = sub_1E1AF74AC();

                if ((v13 & 1) == 0)
                {
                  goto LABEL_47;
                }

                goto LABEL_40;
              }
            }
          }
        }
      }

      goto LABEL_29;
    }

    v14 = Shelf.ContentType.rawValue.getter();
    v16 = v15;
    if (v14 == Shelf.ContentType.rawValue.getter() && v16 == v17)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1E1AF74AC();
    }

    goto LABEL_42;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t sub_1E17A2978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v25 = a3;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *v3;
  switch(v14)
  {
    case 86:
      sub_1E1AF381C();
      sub_1E134B838();
      sub_1E1AF36AC();
      if (v4)
      {
        return (*(v8 + 8))(v13, v7);
      }

      (*(v8 + 8))(v13, v7);
      v26[0] = v26[1];
      v17 = sub_1E134DED4(v26, a1, a2);
      v23 = type metadata accessor for SearchResult();
      v18 = v25;
      v25[3] = v23;
      v19 = &qword_1EE1E0430;
      v20 = type metadata accessor for SearchResult;
      goto LABEL_15;
    case 85:
      sub_1E1AF381C();
      sub_1E14B2CE8();
      sub_1E1AF36AC();
      if (v4)
      {
        return (*(v8 + 8))(v10, v7);
      }

      (*(v8 + 8))(v10, v7);
      v27[0] = v27[1];
      v17 = sub_1E14B39C8(v27, a1, a2);
      v22 = type metadata accessor for AppPromotion();
      v18 = v25;
      v25[3] = v22;
      v19 = qword_1EE1F8B60;
      v20 = type metadata accessor for AppPromotion;
      goto LABEL_15;
    case 11:
      v15 = type metadata accessor for Action();
      result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
      if (v4)
      {
        return result;
      }

      v17 = result;
      v18 = v25;
      v25[3] = v15;
      v19 = &unk_1EE1D2F70;
      v20 = type metadata accessor for Action;
LABEL_15:
      result = sub_1E17A7C70(v19, v20);
      v18[4] = result;
      *v18 = v17;
      return result;
  }

  if (qword_1EE1E54E0 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9250);
  __swift_project_value_buffer(v21, qword_1EE216480);
  v27[2] = v14;
  return sub_1E1AF402C();
}

uint64_t sub_1E17A2D40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9250);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v303 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v303 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v303 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v303 = &v303 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v304 = &v303 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v305 = &v303 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v306 = &v303 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v307 = &v303 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v308 = &v303 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v309 = &v303 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v351 = &v303 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v352 = &v303 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v353 = &v303 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v310 = &v303 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v311 = &v303 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v312 = &v303 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v366 = &v303 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v367 = &v303 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v368 = &v303 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v313 = &v303 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v314 = &v303 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v315 = &v303 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v316 = &v303 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v317 = &v303 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v318 = &v303 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v319 = &v303 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v320 = &v303 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v321 = &v303 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v322 = &v303 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v323 = &v303 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v324 = &v303 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v325 = &v303 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v326 = &v303 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v327 = &v303 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v328 = &v303 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v329 = &v303 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v330 = &v303 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v331 = &v303 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v332 = &v303 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v333 = &v303 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v334 = &v303 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v335 = &v303 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v336 = &v303 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v337 = &v303 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v338 = &v303 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v339 = &v303 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v340 = &v303 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v341 = &v303 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v342 = &v303 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v343 = &v303 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v344 = &v303 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v345 = &v303 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v346 = &v303 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v347 = &v303 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v348 = &v303 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v349 = &v303 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v350 = &v303 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v354 = &v303 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v355 = &v303 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v356 = &v303 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v357 = &v303 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v358 = &v303 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v359 = &v303 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v360 = &v303 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v361 = &v303 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v362 = &v303 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v363 = &v303 - v137;
  MEMORY[0x1EEE9AC00](v138);
  v364 = &v303 - v139;
  MEMORY[0x1EEE9AC00](v140);
  v365 = &v303 - v141;
  MEMORY[0x1EEE9AC00](v142);
  v369 = &v303 - v143;
  MEMORY[0x1EEE9AC00](v144);
  v370 = &v303 - v145;
  MEMORY[0x1EEE9AC00](v146);
  v371 = &v303 - v147;
  MEMORY[0x1EEE9AC00](v148);
  v372 = &v303 - v149;
  MEMORY[0x1EEE9AC00](v150);
  v373 = &v303 - v151;
  MEMORY[0x1EEE9AC00](v152);
  v374 = &v303 - v153;
  MEMORY[0x1EEE9AC00](v154);
  v375 = &v303 - v155;
  MEMORY[0x1EEE9AC00](v156);
  v376 = &v303 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v377 = &v303 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v378 = &v303 - v161;
  MEMORY[0x1EEE9AC00](v162);
  v379 = &v303 - v163;
  MEMORY[0x1EEE9AC00](v164);
  v380 = &v303 - v165;
  MEMORY[0x1EEE9AC00](v166);
  v381 = &v303 - v167;
  MEMORY[0x1EEE9AC00](v168);
  v382 = &v303 - v169;
  MEMORY[0x1EEE9AC00](v170);
  v383 = &v303 - v171;
  MEMORY[0x1EEE9AC00](v172);
  v384 = &v303 - v173;
  MEMORY[0x1EEE9AC00](v174);
  v385 = &v303 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v386 = &v303 - v177;
  MEMORY[0x1EEE9AC00](v178);
  v387 = &v303 - v179;
  MEMORY[0x1EEE9AC00](v180);
  v388 = &v303 - v181;
  MEMORY[0x1EEE9AC00](v182);
  v389 = &v303 - v183;
  MEMORY[0x1EEE9AC00](v184);
  v390 = &v303 - v185;
  MEMORY[0x1EEE9AC00](v186);
  v391 = &v303 - v187;
  MEMORY[0x1EEE9AC00](v188);
  v392 = &v303 - v189;
  MEMORY[0x1EEE9AC00](v190);
  v393 = &v303 - v191;
  MEMORY[0x1EEE9AC00](v192);
  v394 = &v303 - v193;
  MEMORY[0x1EEE9AC00](v194);
  v395 = &v303 - v195;
  MEMORY[0x1EEE9AC00](v196);
  v396 = &v303 - v197;
  MEMORY[0x1EEE9AC00](v198);
  v397 = &v303 - v199;
  __swift_allocate_value_buffer(v200, qword_1EE216480);
  v398 = __swift_project_value_buffer(v0, qword_1EE216480);
  sub_1E17A7B74();
  sub_1E17A7BC8();
  sub_1E1AF403C();
  type metadata accessor for SearchChartOrCategory();
  sub_1E17A7C70(qword_1EE1ECF78, type metadata accessor for SearchChartOrCategory);
  sub_1E17A7C70(&qword_1EE1ECF70, type metadata accessor for SearchChartOrCategory);
  v401 = 88;
  sub_1E1AF401C();
  v201 = *(v1 + 8);
  v201(v3, v0);
  type metadata accessor for Lockup();
  v400 = &protocol conformance descriptor for Lockup;
  sub_1E17A7C70(qword_1EE1E4F68, type metadata accessor for Lockup);
  v399 = &protocol conformance descriptor for Lockup;
  sub_1E17A7C70(&qword_1EE1E4F60, type metadata accessor for Lockup);
  v401 = 1;
  sub_1E1AF401C();
  v201(v6, v0);
  v401 = 2;
  v202 = v303;
  sub_1E1AF401C();
  v201(v9, v0);
  v401 = 3;
  v203 = v304;
  sub_1E1AF401C();
  v201(v202, v0);
  v401 = 4;
  v204 = v305;
  sub_1E1AF401C();
  v201(v203, v0);
  type metadata accessor for InAppPurchaseLockup();
  sub_1E17A7C70(qword_1EE1FAB08, type metadata accessor for InAppPurchaseLockup);
  sub_1E17A7C70(&qword_1EE1FAB00, type metadata accessor for InAppPurchaseLockup);
  v401 = 6;
  v205 = v306;
  sub_1E1AF401C();
  v201(v204, v0);
  v401 = 7;
  v206 = v307;
  sub_1E1AF401C();
  v201(v205, v0);
  type metadata accessor for Artwork();
  sub_1E17A7C70(&qword_1EE1E4BC0, type metadata accessor for Artwork);
  sub_1E17A7C70(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v401 = 12;
  v207 = v308;
  sub_1E1AF401C();
  v201(v206, v0);
  type metadata accessor for Paragraph();
  sub_1E17A7C70(&qword_1EE1E4158, type metadata accessor for Paragraph);
  sub_1E17A7C70(&qword_1EE1E4150, type metadata accessor for Paragraph);
  v401 = 15;
  v208 = v309;
  sub_1E1AF401C();
  v201(v207, v0);
  sub_1E17A7C1C();
  sub_1E179EC68();
  v401 = 16;
  v209 = v351;
  sub_1E1AF401C();
  v201(v208, v0);
  type metadata accessor for Footnote();
  sub_1E17A7C70(&qword_1EE1E46F0, type metadata accessor for Footnote);
  sub_1E17A7C70(&qword_1EE1E46E8, type metadata accessor for Footnote);
  v401 = 17;
  v210 = v352;
  sub_1E1AF401C();
  v201(v209, v0);
  type metadata accessor for TitledParagraph();
  sub_1E17A7C70(&unk_1EE1F2E08, type metadata accessor for TitledParagraph);
  sub_1E17A7C70(&qword_1EE1F2E00, type metadata accessor for TitledParagraph);
  v401 = 18;
  v211 = v353;
  sub_1E1AF401C();
  v201(v210, v0);
  type metadata accessor for EditorialCard();
  sub_1E17A7C70(qword_1EE1F5478, type metadata accessor for EditorialCard);
  sub_1E17A7C70(&qword_1EE1F5470, type metadata accessor for EditorialCard);
  v401 = 19;
  v212 = v310;
  sub_1E1AF401C();
  v201(v211, v0);
  v353 = type metadata accessor for Brick();
  v213 = sub_1E17A7C70(qword_1EE1E5740, type metadata accessor for Brick);
  v214 = sub_1E17A7C70(&qword_1EE1E5738, type metadata accessor for Brick);
  v401 = 21;
  v215 = v311;
  v352 = v213;
  v351 = v214;
  sub_1E1AF401C();
  v201(v212, v0);
  v401 = 22;
  v216 = v312;
  sub_1E1AF401C();
  v201(v215, v0);
  type metadata accessor for ProductCapability();
  sub_1E17A7C70(qword_1EE1F0A10, type metadata accessor for ProductCapability);
  sub_1E17A7C70(&qword_1EE1F0A08, type metadata accessor for ProductCapability);
  v401 = 23;
  v217 = v366;
  sub_1E1AF401C();
  v201(v216, v0);
  type metadata accessor for Review(0);
  sub_1E17A7C70(qword_1EE1E4D28, type metadata accessor for Review);
  sub_1E17A7C70(&qword_1EE1E4D20, type metadata accessor for Review);
  v401 = 24;
  v218 = v367;
  sub_1E1AF401C();
  v201(v217, v0);
  type metadata accessor for ReviewsContainer();
  sub_1E17A7C70(&qword_1EE1F1CC8, type metadata accessor for ReviewsContainer);
  sub_1E17A7C70(&qword_1EE1F1CC0, type metadata accessor for ReviewsContainer);
  v401 = 25;
  v219 = v368;
  sub_1E1AF401C();
  v201(v218, v0);
  type metadata accessor for EditorsChoice();
  sub_1E17A7C70(qword_1EE1F51F8, type metadata accessor for EditorsChoice);
  sub_1E17A7C70(&qword_1EE1F51F0, type metadata accessor for EditorsChoice);
  v401 = 27;
  v220 = v313;
  sub_1E1AF401C();
  v201(v219, v0);
  v368 = type metadata accessor for TodayCard();
  v221 = sub_1E17A7C70(qword_1EE1E3F60, type metadata accessor for TodayCard);
  v222 = sub_1E17A7C70(&qword_1EE1E3F58, type metadata accessor for TodayCard);
  v401 = 28;
  v223 = v314;
  v224 = v222;
  sub_1E1AF401C();
  v201(v220, v0);
  v401 = 29;
  v225 = v315;
  sub_1E1AF401C();
  v201(v223, v0);
  v401 = 53;
  v226 = v316;
  sub_1E1AF401C();
  v201(v225, v0);
  v401 = 54;
  v227 = v317;
  v367 = v221;
  v366 = v224;
  sub_1E1AF401C();
  v201(v226, v0);
  v401 = 55;
  v228 = v318;
  sub_1E1AF401C();
  v201(v227, v0);
  type metadata accessor for EditorialLink();
  sub_1E17A7C70(qword_1EE1F5300, type metadata accessor for EditorialLink);
  sub_1E17A7C70(&qword_1EE1F52F8, type metadata accessor for EditorialLink);
  v401 = 30;
  v229 = v319;
  sub_1E1AF401C();
  v201(v228, v0);
  type metadata accessor for SearchLink();
  sub_1E17A7C70(qword_1EE1F7DA8, type metadata accessor for SearchLink);
  sub_1E17A7C70(&qword_1EE1F7DA0, type metadata accessor for SearchLink);
  v401 = 31;
  v230 = v320;
  sub_1E1AF401C();
  v201(v229, v0);
  type metadata accessor for Quote();
  sub_1E17A7C70(qword_1EE1E55D8, type metadata accessor for Quote);
  sub_1E17A7C70(&qword_1EE1E55D0, type metadata accessor for Quote);
  v401 = 32;
  v231 = v321;
  sub_1E1AF401C();
  v201(v230, v0);
  type metadata accessor for FramedArtwork();
  v320 = &protocol conformance descriptor for FramedMedia;
  sub_1E17A7C70(qword_1EE1F50B8, type metadata accessor for FramedArtwork);
  sub_1E17A7C70(&qword_1EE1F50B0, type metadata accessor for FramedArtwork);
  v401 = 34;
  v232 = v322;
  sub_1E1AF401C();
  v201(v231, v0);
  type metadata accessor for Screenshots();
  sub_1E17A7C70(qword_1EE1F6700, type metadata accessor for Screenshots);
  sub_1E17A7C70(&qword_1EE1F66F8, type metadata accessor for Screenshots);
  v401 = 35;
  v233 = v323;
  sub_1E1AF401C();
  v201(v232, v0);
  type metadata accessor for ProductMedia();
  sub_1E17A7C70(&qword_1EE1F5BB8, type metadata accessor for ProductMedia);
  sub_1E17A7C70(&qword_1EE1F5BB0, type metadata accessor for ProductMedia);
  v401 = 36;
  v234 = v324;
  sub_1E1AF401C();
  v201(v233, v0);
  type metadata accessor for ProductMediaItem();
  sub_1E17A7C70(qword_1EE1F25B8, type metadata accessor for ProductMediaItem);
  sub_1E17A7C70(&qword_1EE1F25B0, type metadata accessor for ProductMediaItem);
  v401 = 37;
  v235 = v325;
  sub_1E1AF401C();
  v201(v234, v0);
  type metadata accessor for AppShowcase();
  sub_1E17A7C70(&qword_1EE1F8C70, type metadata accessor for AppShowcase);
  sub_1E17A7C70(&qword_1EE1F8C68, type metadata accessor for AppShowcase);
  v401 = 38;
  v236 = v326;
  sub_1E1AF401C();
  v201(v235, v0);
  type metadata accessor for InAppPurchaseShowcase();
  sub_1E17A7C70(qword_1EE1FA8A8, type metadata accessor for InAppPurchaseShowcase);
  sub_1E17A7C70(&qword_1EE1FA8A0, type metadata accessor for InAppPurchaseShowcase);
  v401 = 39;
  v237 = v327;
  sub_1E1AF401C();
  v201(v236, v0);
  type metadata accessor for MixedMediaLockup();
  sub_1E17A7C70(qword_1EE1F29D0, type metadata accessor for MixedMediaLockup);
  sub_1E17A7C70(&qword_1EE1F29C8, type metadata accessor for MixedMediaLockup);
  v401 = 40;
  v238 = v328;
  sub_1E1AF401C();
  v201(v237, v0);
  v401 = 49;
  v239 = v329;
  sub_1E1AF401C();
  v201(v238, v0);
  v401 = 61;
  v240 = v330;
  sub_1E1AF401C();
  v201(v239, v0);
  type metadata accessor for ProductPageLink();
  sub_1E17A7C70(&qword_1EE1F2F10, type metadata accessor for ProductPageLink);
  sub_1E17A7C70(&qword_1EE1F2F08, type metadata accessor for ProductPageLink);
  v401 = 41;
  v241 = v331;
  sub_1E1AF401C();
  v201(v240, v0);
  type metadata accessor for FramedVideo();
  sub_1E17A7C70(qword_1EE1F75A8, type metadata accessor for FramedVideo);
  sub_1E17A7C70(&qword_1EE1F75A0, type metadata accessor for FramedVideo);
  v401 = 46;
  v242 = v332;
  sub_1E1AF401C();
  v201(v241, v0);
  type metadata accessor for ProductDescription();
  sub_1E17A7C70(qword_1EE1EF7F0, type metadata accessor for ProductDescription);
  sub_1E17A7C70(&qword_1EE1EF7E8, type metadata accessor for ProductDescription);
  v401 = 47;
  v243 = v333;
  sub_1E1AF401C();
  v201(v242, v0);
  type metadata accessor for Banner();
  sub_1E17A7C70(&qword_1EE1E5070, type metadata accessor for Banner);
  sub_1E17A7C70(&qword_1EE1E5068, type metadata accessor for Banner);
  v401 = 48;
  v244 = v334;
  sub_1E1AF401C();
  v201(v243, v0);
  type metadata accessor for RoundedButton();
  sub_1E17A7C70(qword_1EE1F4908, type metadata accessor for RoundedButton);
  sub_1E17A7C70(&qword_1EE1F4900, type metadata accessor for RoundedButton);
  v401 = 50;
  v245 = v335;
  sub_1E1AF401C();
  v201(v244, v0);
  type metadata accessor for TitledButtonStack();
  sub_1E17A7C70(&qword_1EE1F0728, type metadata accessor for TitledButtonStack);
  sub_1E17A7C70(&qword_1EE1F0720, type metadata accessor for TitledButtonStack);
  v401 = 51;
  v246 = v336;
  sub_1E1AF401C();
  v201(v245, v0);
  type metadata accessor for ImageButton();
  sub_1E17A7C70(qword_1EE1F7308, type metadata accessor for ImageButton);
  sub_1E17A7C70(&qword_1EE1F7300, type metadata accessor for ImageButton);
  v401 = 52;
  v247 = v337;
  sub_1E1AF401C();
  v201(v246, v0);
  type metadata accessor for PersonalizationFeedbackRequest();
  sub_1E17A7C70(qword_1EE1E8200, type metadata accessor for PersonalizationFeedbackRequest);
  sub_1E17A7C70(&qword_1EE1E81F8, type metadata accessor for PersonalizationFeedbackRequest);
  v401 = 56;
  v248 = v338;
  sub_1E1AF401C();
  v201(v247, v0);
  type metadata accessor for LargeHeroBreakout();
  sub_1E17A7C70(&unk_1EE1F1258, type metadata accessor for LargeHeroBreakout);
  sub_1E17A7C70(&qword_1EE1F1250, type metadata accessor for LargeHeroBreakout);
  v401 = 57;
  v249 = v339;
  sub_1E1AF401C();
  v201(v248, v0);
  type metadata accessor for UpsellBreakout();
  sub_1E17A7C70(qword_1EE1F3748, type metadata accessor for UpsellBreakout);
  sub_1E17A7C70(&qword_1EE1F3740, type metadata accessor for UpsellBreakout);
  v401 = 58;
  v250 = v340;
  sub_1E1AF401C();
  v201(v249, v0);
  type metadata accessor for SmallBreakout();
  sub_1E17A7C70(qword_1EE1F46F8, type metadata accessor for SmallBreakout);
  sub_1E17A7C70(&qword_1EE1F46F0, type metadata accessor for SmallBreakout);
  v401 = 59;
  v251 = v341;
  sub_1E1AF401C();
  v201(v250, v0);
  type metadata accessor for EditorialStoryCard();
  sub_1E17A7C70(&qword_1EE1EFF30, type metadata accessor for EditorialStoryCard);
  sub_1E17A7C70(&qword_1EE1EFF28, type metadata accessor for EditorialStoryCard);
  v401 = 60;
  v252 = v342;
  sub_1E1AF401C();
  v201(v251, v0);
  type metadata accessor for ArcadeFooter();
  sub_1E17A7C70(qword_1EE1F6210, type metadata accessor for ArcadeFooter);
  sub_1E17A7C70(&qword_1EE1F6208, type metadata accessor for ArcadeFooter);
  v401 = 62;
  v253 = v343;
  sub_1E1AF401C();
  v201(v252, v0);
  v342 = type metadata accessor for Badge();
  v341 = sub_1E17A7C70(qword_1EE1E58C8, type metadata accessor for Badge);
  sub_1E17A7C70(&qword_1EE1E58C0, type metadata accessor for Badge);
  v401 = 64;
  v254 = v344;
  sub_1E1AF401C();
  v201(v253, v0);
  type metadata accessor for InformationRibbon();
  sub_1E17A7C70(&qword_1EE1F13F8, type metadata accessor for InformationRibbon);
  sub_1E17A7C70(&qword_1EE1F13F0, type metadata accessor for InformationRibbon);
  v401 = 78;
  v255 = v345;
  sub_1E1AF401C();
  v201(v254, v0);
  type metadata accessor for CondensedAdLockupWithIconBackground();
  sub_1E17A7C70(&unk_1EE1E7410, type metadata accessor for CondensedAdLockupWithIconBackground);
  sub_1E17A7C70(&qword_1EE1E7408, type metadata accessor for CondensedAdLockupWithIconBackground);
  v401 = 10;
  v256 = v346;
  sub_1E1AF401C();
  v201(v255, v0);
  type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  sub_1E17A7C70(qword_1EE1E69A0, type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  sub_1E17A7C70(&qword_1EE1E6998, type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  v401 = 9;
  v257 = v347;
  sub_1E1AF401C();
  v201(v256, v0);
  type metadata accessor for MediumAdLockupWithAlignedRegionBackground();
  sub_1E17A7C70(qword_1EE1D3A50, type metadata accessor for MediumAdLockupWithAlignedRegionBackground);
  sub_1E17A7C70(&qword_1EE1D3A48, type metadata accessor for MediumAdLockupWithAlignedRegionBackground);
  v401 = 8;
  v258 = v348;
  sub_1E1AF401C();
  v201(v257, v0);
  type metadata accessor for RibbonBarItem();
  sub_1E17A7C70(qword_1EE1F4A08, type metadata accessor for RibbonBarItem);
  sub_1E17A7C70(&qword_1EE1F4A00, type metadata accessor for RibbonBarItem);
  v401 = 13;
  v259 = v349;
  sub_1E1AF401C();
  v201(v258, v0);
  v401 = 14;
  v260 = v350;
  sub_1E1AF401C();
  v201(v259, v0);
  type metadata accessor for ArcadeDownloadPackCard();
  sub_1E17A7C70(qword_1EE1EC858, type metadata accessor for ArcadeDownloadPackCard);
  sub_1E17A7C70(&qword_1EE1EC850, type metadata accessor for ArcadeDownloadPackCard);
  v401 = 68;
  v261 = v354;
  sub_1E1AF401C();
  v201(v260, v0);
  type metadata accessor for SearchAction();
  sub_1E17A7C70(&qword_1EE1F5AC0, type metadata accessor for SearchAction);
  sub_1E17A7C70(&qword_1EE1F5AB8, type metadata accessor for SearchAction);
  v401 = 71;
  v262 = v355;
  sub_1E1AF401C();
  v201(v261, v0);
  v401 = 70;
  v263 = v356;
  sub_1E1AF401C();
  v201(v262, v0);
  v401 = 69;
  v264 = v357;
  sub_1E1AF401C();
  v201(v263, v0);
  type metadata accessor for SearchResultsContextCard();
  sub_1E17A7C70(qword_1EE1EB3F8, type metadata accessor for SearchResultsContextCard);
  sub_1E17A7C70(&qword_1EE1EB3F0, type metadata accessor for SearchResultsContextCard);
  v401 = 87;
  v265 = v358;
  sub_1E1AF401C();
  v201(v264, v0);
  type metadata accessor for PreorderDisclaimer();
  sub_1E17A7C70(&qword_1EE1EF8D0, type metadata accessor for PreorderDisclaimer);
  sub_1E17A7C70(&qword_1EE1EF8C8, type metadata accessor for PreorderDisclaimer);
  v401 = 79;
  v266 = v359;
  sub_1E1AF401C();
  v201(v265, v0);
  type metadata accessor for PrivacyHeader();
  sub_1E17A7C70(qword_1EE1F4D08, type metadata accessor for PrivacyHeader);
  sub_1E17A7C70(&qword_1EE1F4D00, type metadata accessor for PrivacyHeader);
  v401 = 80;
  v267 = v360;
  sub_1E1AF401C();
  v201(v266, v0);
  type metadata accessor for PrivacyType();
  sub_1E17A7C70(qword_1EE1F6E70, type metadata accessor for PrivacyType);
  sub_1E17A7C70(&qword_1EE1F6E68, type metadata accessor for PrivacyType);
  v401 = 82;
  v268 = v361;
  sub_1E1AF401C();
  v201(v267, v0);
  type metadata accessor for PrivacyCategory();
  sub_1E17A7C70(&qword_1EE1F3000, type metadata accessor for PrivacyCategory);
  sub_1E17A7C70(&qword_1EE1F2FF8, type metadata accessor for PrivacyCategory);
  v401 = 83;
  v269 = v362;
  sub_1E1AF401C();
  v201(v268, v0);
  type metadata accessor for PrivacyDefinition();
  sub_1E17A7C70(qword_1EE1F0AE0, type metadata accessor for PrivacyDefinition);
  sub_1E17A7C70(&qword_1EE1F0AD8, type metadata accessor for PrivacyDefinition);
  v401 = 84;
  v270 = v363;
  sub_1E1AF401C();
  v201(v269, v0);
  type metadata accessor for AppPromotion();
  sub_1E17A7C70(qword_1EE1F8B60, type metadata accessor for AppPromotion);
  sub_1E17A7C70(&qword_1EE1F8B58, type metadata accessor for AppPromotion);
  v401 = 85;
  v271 = v364;
  sub_1E1AF401C();
  v201(v270, v0);
  type metadata accessor for Placeholder();
  sub_1E17A7C70(qword_1EE1F6F40, type metadata accessor for Placeholder);
  sub_1E17A7C70(&qword_1EE1F6F38, type metadata accessor for Placeholder);
  v401 = 95;
  v272 = v365;
  sub_1E1AF401C();
  v201(v271, v0);
  type metadata accessor for PageTabs();
  sub_1E17A7C70(qword_1EE1E44E8, type metadata accessor for PageTabs);
  sub_1E17A7C70(&qword_1EE1E44E0, type metadata accessor for PageTabs);
  v401 = 89;
  v273 = v369;
  sub_1E1AF401C();
  v201(v272, v0);
  v401 = 92;
  v274 = v370;
  sub_1E1AF401C();
  v201(v273, v0);
  type metadata accessor for Ratings();
  sub_1E17A7C70(&qword_1EE1E4A08, type metadata accessor for Ratings);
  sub_1E17A7C70(&qword_1EE1E4A00, type metadata accessor for Ratings);
  v401 = 42;
  v275 = v371;
  sub_1E1AF401C();
  v201(v274, v0);
  type metadata accessor for ProductReview();
  sub_1E17A7C70(&qword_1EE1F4C28, type metadata accessor for ProductReview);
  sub_1E17A7C70(&qword_1EE1F4C20, type metadata accessor for ProductReview);
  v401 = 43;
  v276 = v372;
  sub_1E1AF401C();
  v201(v275, v0);
  type metadata accessor for ProductReviewAction();
  sub_1E17A7C70(&qword_1EE1EEA28, type metadata accessor for ProductReviewAction);
  sub_1E17A7C70(&qword_1EE1EEA20, type metadata accessor for ProductReviewAction);
  v401 = 44;
  v277 = v373;
  sub_1E1AF401C();
  v201(v276, v0);
  type metadata accessor for LinkableText();
  sub_1E17A7C70(qword_1EE1F5FA8, type metadata accessor for LinkableText);
  sub_1E17A7C70(&qword_1EE1F5FA0, type metadata accessor for LinkableText);
  v401 = 45;
  v278 = v374;
  sub_1E1AF401C();
  v201(v277, v0);
  type metadata accessor for MediaPageHeader();
  sub_1E17A7C70(&qword_1EE1F34B0, type metadata accessor for MediaPageHeader);
  sub_1E17A7C70(&qword_1EE1F34A8, type metadata accessor for MediaPageHeader);
  v401 = 93;
  v279 = v375;
  sub_1E1AF401C();
  v201(v278, v0);
  v401 = 94;
  v280 = v376;
  sub_1E1AF401C();
  v201(v279, v0);
  type metadata accessor for GameCenterActivityFeedCard();
  sub_1E17A7C70(qword_1EE1EA9E8, type metadata accessor for GameCenterActivityFeedCard);
  sub_1E17A7C70(&qword_1EE1EA9E0, type metadata accessor for GameCenterActivityFeedCard);
  v401 = 67;
  v281 = v377;
  sub_1E1AF401C();
  v201(v280, v0);
  type metadata accessor for UnifiedMessage();
  sub_1E17A7C70(&qword_1EE1F3850, type metadata accessor for UnifiedMessage);
  sub_1E17A7C70(&qword_1EE1F3848, type metadata accessor for UnifiedMessage);
  v401 = 97;
  v282 = v378;
  sub_1E1AF401C();
  v201(v281, v0);
  type metadata accessor for ReviewSummary();
  sub_1E17A7C70(qword_1EE1F4B10, type metadata accessor for ReviewSummary);
  sub_1E17A7C70(&qword_1EE1F4B08, type metadata accessor for ReviewSummary);
  v401 = 26;
  v283 = v379;
  sub_1E1AF401C();
  v201(v282, v0);
  type metadata accessor for HorizontalRule();
  sub_1E17A7C70(qword_1EE1F3E40, type metadata accessor for HorizontalRule);
  sub_1E17A7C70(&qword_1EE1F3E38, type metadata accessor for HorizontalRule);
  v401 = 33;
  v284 = v380;
  sub_1E1AF401C();
  v201(v283, v0);
  type metadata accessor for ClientControlButton();
  sub_1E17A7C70(qword_1EE1EF198, type metadata accessor for ClientControlButton);
  sub_1E17A7C70(&qword_1EE1EF190, type metadata accessor for ClientControlButton);
  v401 = 63;
  v285 = v381;
  sub_1E1AF401C();
  v201(v284, v0);
  type metadata accessor for ArcadeShowcase();
  sub_1E17A7C70(qword_1EE1F4288, type metadata accessor for ArcadeShowcase);
  sub_1E17A7C70(&qword_1EE1F4280, type metadata accessor for ArcadeShowcase);
  v401 = 66;
  v286 = v382;
  sub_1E1AF401C();
  v201(v285, v0);
  type metadata accessor for VideoCard();
  sub_1E17A7C70(qword_1EE1E3E08, type metadata accessor for VideoCard);
  sub_1E17A7C70(&qword_1EE1E3E00, type metadata accessor for VideoCard);
  v401 = 20;
  v287 = v383;
  sub_1E1AF401C();
  v201(v286, v0);
  type metadata accessor for GameCenterReengagement();
  sub_1E17A7C70(qword_1EE1EC638, type metadata accessor for GameCenterReengagement);
  sub_1E17A7C70(&qword_1EE1EC630, type metadata accessor for GameCenterReengagement);
  v401 = 72;
  v288 = v384;
  sub_1E1AF401C();
  v201(v287, v0);
  type metadata accessor for SmallGameCenterPlayer(0);
  sub_1E17A7C70(qword_1EE1ECBB8, type metadata accessor for SmallGameCenterPlayer);
  sub_1E17A7C70(&qword_1EE1ECBB0, type metadata accessor for SmallGameCenterPlayer);
  v401 = 73;
  v289 = v385;
  sub_1E1AF401C();
  v201(v288, v0);
  type metadata accessor for LargeGameCenterPlayer(0);
  sub_1E17A7C70(qword_1EE1ED178, type metadata accessor for LargeGameCenterPlayer);
  sub_1E17A7C70(&qword_1EE1ED170, type metadata accessor for LargeGameCenterPlayer);
  v401 = 74;
  v290 = v386;
  sub_1E1AF401C();
  v201(v289, v0);
  type metadata accessor for AchievementSummary();
  sub_1E17A7C70(qword_1EE1F0460, type metadata accessor for AchievementSummary);
  sub_1E17A7C70(&qword_1EE1F0458, type metadata accessor for AchievementSummary);
  v401 = 75;
  v291 = v387;
  sub_1E1AF401C();
  v201(v290, v0);
  type metadata accessor for PosterLockup();
  sub_1E17A7C70(qword_1EE1F5E28, type metadata accessor for PosterLockup);
  sub_1E17A7C70(&qword_1EE1F5E20, type metadata accessor for PosterLockup);
  v401 = 76;
  v292 = v388;
  sub_1E1AF401C();
  v201(v291, v0);
  type metadata accessor for PrivacyFooter();
  sub_1E17A7C70(qword_1EE1F4DD8, type metadata accessor for PrivacyFooter);
  sub_1E17A7C70(&qword_1EE1F4DD0, type metadata accessor for PrivacyFooter);
  v401 = 81;
  v293 = v389;
  sub_1E1AF401C();
  v201(v292, v0);
  type metadata accessor for HeroCarousel();
  sub_1E17A7C70(qword_1EE1F6118, type metadata accessor for HeroCarousel);
  sub_1E17A7C70(&qword_1EE1F6110, type metadata accessor for HeroCarousel);
  v401 = 90;
  v294 = v390;
  sub_1E1AF401C();
  v201(v293, v0);
  type metadata accessor for Uber();
  sub_1E17A7C70(&qword_1EE1E5B50, type metadata accessor for Uber);
  sub_1E17A7C70(&qword_1EE1E5B48, type metadata accessor for Uber);
  v401 = 91;
  v295 = v391;
  sub_1E1AF401C();
  v201(v294, v0);
  type metadata accessor for ImpressionableSmallPlayerCard();
  sub_1E17A7C70(qword_1EE1E8A30, type metadata accessor for ImpressionableSmallPlayerCard);
  sub_1E17A7C70(&unk_1EE1E8A20, type metadata accessor for ImpressionableSmallPlayerCard);
  v401 = 77;
  v296 = v392;
  sub_1E1AF401C();
  v201(v295, v0);
  v401 = 53;
  v297 = v393;
  sub_1E1AF401C();
  v201(v296, v0);
  v401 = 54;
  v298 = v394;
  sub_1E1AF401C();
  v201(v297, v0);
  v401 = 55;
  v299 = v395;
  sub_1E1AF401C();
  v201(v298, v0);
  type metadata accessor for EditorialQuote();
  sub_1E17A7C70(qword_1EE1F3F28, type metadata accessor for EditorialQuote);
  sub_1E17A7C70(&qword_1EE1F3F20, type metadata accessor for EditorialQuote);
  v401 = 65;
  v300 = v396;
  sub_1E1AF401C();
  v201(v299, v0);
  type metadata accessor for AccessibilityFeatures();
  sub_1E17A7C70(&qword_1EE1ED518, type metadata accessor for AccessibilityFeatures);
  sub_1E17A7C70(&qword_1EE1ED510, type metadata accessor for AccessibilityFeatures);
  v401 = 98;
  v301 = v397;
  sub_1E1AF401C();
  v201(v300, v0);
  type metadata accessor for AccessibilityParagraph();
  sub_1E17A7C70(qword_1EE1EC9A8, type metadata accessor for AccessibilityParagraph);
  sub_1E17A7C70(&qword_1EE1EC9A0, type metadata accessor for AccessibilityParagraph);
  v401 = 99;
  sub_1E1AF401C();
  return (v201)(v301, v0);
}

uint64_t sub_1E17A77CC()
{
  v0 = Shelf.ContentType.rawValue.getter();
  v2 = v1;
  if (v0 == Shelf.ContentType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

unint64_t sub_1E17A7874@<X0>(unint64_t *a1@<X8>)
{
  result = Shelf.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E17A78A0()
{
  result = qword_1EE1E54B8;
  if (!qword_1EE1E54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E54B8);
  }

  return result;
}

uint64_t sub_1E17A78F4()
{
  sub_1E1AF762C();
  Shelf.ContentType.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17A795C()
{
  Shelf.ContentType.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E17A79C0()
{
  sub_1E1AF762C();
  Shelf.ContentType.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t _s11ContentTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x9D)
  {
    goto LABEL_17;
  }

  if (a2 + 99 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 99) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 99;
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

      return (*a1 | (v4 << 8)) - 99;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 99;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x64;
  v8 = v6 - 100;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContentTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 99 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 99) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x9D)
  {
    v4 = 0;
  }

  if (a2 > 0x9C)
  {
    v5 = ((a2 - 157) >> 8) + 1;
    *result = a2 + 99;
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
    *result = a2 + 99;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E17A7B74()
{
  result = qword_1EE1E54C0;
  if (!qword_1EE1E54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E54C0);
  }

  return result;
}

unint64_t sub_1E17A7BC8()
{
  result = qword_1EE1E54B0;
  if (!qword_1EE1E54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E54B0);
  }

  return result;
}

unint64_t sub_1E17A7C1C()
{
  result = qword_1EE1F8428[0];
  if (!qword_1EE1F8428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F8428);
  }

  return result;
}

uint64_t sub_1E17A7C70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArcadeWelcomeItemViewLayout.Metrics.init(imageAspectRatio:imageWidth:headingTopSpace:bodyTopSpace:textInsets:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = sub_1E1AF127C();
  (*(*(v18 - 8) + 32))(a5, a1, v18);
  v19 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  sub_1E1308EC0(a2, a5 + v19[5]);
  sub_1E1308EC0(a3, a5 + v19[6]);
  result = sub_1E1308EC0(a4, a5 + v19[7]);
  v21 = (a5 + v19[8]);
  *v21 = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a9;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageAspectRatio.setter(uint64_t a1)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.imageWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 20);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.headingTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.bodyTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t ArcadeWelcomeItemViewLayout.Metrics.textInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  v10 = (v4 + *(result + 32));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_1E17A8204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ArcadeWelcomeItemViewLayout.init(metrics:headingText:bodyText:image:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E17A8204(a1, a5);
  v9 = type metadata accessor for ArcadeWelcomeItemViewLayout(0);
  sub_1E1308EC0(a2, a5 + v9[5]);
  sub_1E1308EC0(a3, a5 + v9[6]);
  v10 = a5 + v9[7];

  return sub_1E1308EC0(a4, v10);
}

double ArcadeWelcomeItemViewLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  sub_1E17A83B8(a1, v6);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);
  v4 = v3;

  return v4;
}

uint64_t sub_1E17A83B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_1E1AF745C();
  v20 = v4;
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B03760;
  v25 = type metadata accessor for ArcadeWelcomeItemViewLayout(0);
  v8 = (v2 + v25[7]);
  v9 = v8[3];
  v19[1] = v8[4];
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v24 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(0);
  __swift_project_boxed_opaque_existential_1Tm((v2 + *(v24 + 20)), *(v2 + *(v24 + 20) + 24));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v21 = *(v21 + 8);
  (v21)(v6, v4);
  sub_1E1AF123C();
  sub_1E1AF11AC();
  v30 = MEMORY[0x1E69E63B0];
  v31 = MEMORY[0x1E69ABBA8];
  v28 = MEMORY[0x1E69ABBA8];
  v29[0] = 0;
  *(&v27 + 1) = MEMORY[0x1E69E63B0];
  *&v26 = 0;
  sub_1E1300B24(v32, v7 + 32);
  sub_1E1300B24(v29, v7 + 80);
  sub_1E141E104(&v26, v7 + 120);
  *(v7 + 72) = 256;
  *(v7 + 160) = 8;
  __swift_destroy_boxed_opaque_existential_1(v32);
  sub_1E141E174(&v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_project_boxed_opaque_existential_1Tm((v3 + v25[5]), *(v3 + v25[5] + 24));
  v10 = v24;
  sub_1E1AF119C();
  __swift_project_boxed_opaque_existential_1Tm((v3 + *(v10 + 24)), *(v3 + *(v10 + 24) + 24));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v12 = v11;
  v13 = v20;
  v14 = v21;
  (v21)(v6, v20);
  v30 = MEMORY[0x1E69E7DE0];
  v31 = MEMORY[0x1E69AB858];
  v29[0] = v12;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1E1300B24(v32, v7 + 168);
  sub_1E1300B24(v29, v7 + 216);
  sub_1E141E104(&v26, v7 + 256);
  *(v7 + 208) = 257;
  *(v7 + 296) = 10;
  sub_1E141E174(&v26);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_project_boxed_opaque_existential_1Tm((v3 + v25[6]), *(v3 + v25[6] + 24));
  sub_1E1AF119C();
  __swift_project_boxed_opaque_existential_1Tm((v3 + *(v24 + 28)), *(v3 + *(v24 + 28) + 24));
  sub_1E13BC274();
  sub_1E1AF12DC();
  v16 = v15;
  v14(v6, v13);
  v30 = MEMORY[0x1E69E7DE0];
  v31 = MEMORY[0x1E69AB858];
  v29[0] = v16;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1E1300B24(v32, v7 + 304);
  sub_1E1300B24(v29, v7 + 352);
  sub_1E141E104(&v26, v7 + 392);
  *(v7 + 344) = 257;
  *(v7 + 432) = 10;
  sub_1E141E174(&v26);
  __swift_destroy_boxed_opaque_existential_1(v32);
  result = __swift_destroy_boxed_opaque_existential_1(v29);
  v18 = v23;
  *v23 = 1;
  *(v18 + 1) = v7;
  return result;
}

uint64_t ArcadeWelcomeItemViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_1E17A83B8(a1, v12);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

uint64_t sub_1E17A8924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_1E17A83B8(a1, v12);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, a3, a4, a5, a6);
}

double sub_1E17A89C4(uint64_t a1, double a2)
{
  sub_1E17A83B8(a1, v6);
  _VerticalFlowLayout.measurements(fitting:in:)(a2);
  v4 = v3;

  return v4;
}

uint64_t sub_1E17A8A88()
{
  result = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    result = sub_1E138432C(319, &qword_1EE1D2AB0);
    if (v2 <= 0x3F)
    {
      result = sub_1E138432C(319, &qword_1EE1D2AE0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1E17A8CF0()
{
  sub_1E1AF127C();
  if (v0 <= 0x3F)
  {
    sub_1E138432C(319, &qword_1EE1D2AC0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSDirectionalEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1E17A8DA4()
{
  if (qword_1ECEB11A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECEB11B0;
  v1 = qword_1ECEB95C0;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECEB11B8;
  v3 = qword_1ECEB95C8;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECEB0E88;
  v5 = qword_1ECEB95D0;
  if (v4 != -1)
  {
    v9 = v5;
    swift_once();
    v5 = v9;
  }

  v6 = qword_1ECEB5A30;
  v10 = unk_1ECEB5A38;
  qword_1ECEB9278 = v1;
  unk_1ECEB9280 = v3;
  qword_1ECEB9288 = v5;
  unk_1ECEB9290 = qword_1ECEB5A20;
  qword_1ECEB9298 = *algn_1ECEB5A28;
  unk_1ECEB92A0 = qword_1ECEB5A30;
  qword_1ECEB92A8 = unk_1ECEB5A38;

  v7 = v6;

  return v10;
}

id sub_1E17A8F14()
{
  if (qword_1EE1DDCB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1EF8D8;
  v1 = qword_1EE1DDCB8;
  if (v0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EE1EF8E0;
  qword_1EE1D8608 = v1;
  unk_1EE1D8610 = qword_1EE1EF8E0;
  xmmword_1EE1D8618 = 0u;
  *&qword_1EE1D8628 = 0u;
  qword_1EE1D8638 = 0;

  return v2;
}

id sub_1E17A8FD8()
{
  if (qword_1ECEB11A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1EF8D8;
  v1 = qword_1ECEB95C0;
  if (v0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EE1EF8E0;
  qword_1ECEB92B0 = v1;
  *algn_1ECEB92B8 = qword_1EE1EF8E0;
  xmmword_1ECEB92C0 = 0u;
  *&qword_1ECEB92D0 = 0u;
  qword_1ECEB92E0 = 0;

  return v2;
}

id sub_1E17A909C()
{
  if (qword_1EE1DDC50 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECEB1208;
  v1 = qword_1EE1DDC58;
  if (v0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  qword_1ECEB92E8 = v1;
  unk_1ECEB92F0 = qword_1ECEB9620;
  qword_1ECEB92F8 = qword_1ECEB9620;
  unk_1ECEB9300 = 0u;
  unk_1ECEB9310 = 0u;
  v2 = qword_1ECEB9620;

  return v2;
}

id sub_1E17A9168()
{
  if (qword_1ECEB1218 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECEB1220;
  v1 = qword_1ECEB9628;
  if (v0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  qword_1ECEB9320 = v1;
  *algn_1ECEB9328 = qword_1ECEB9630;
  qword_1ECEB9330 = qword_1ECEB9630;
  *algn_1ECEB9338 = 0u;
  *algn_1ECEB9348 = 0u;
  v2 = qword_1ECEB9630;

  return v2;
}

id sub_1E17A9234()
{
  if (qword_1ECEB11D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECEB11C8;
  v1 = qword_1ECEB95E8;
  if (v0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  qword_1ECEB9358 = v1;
  unk_1ECEB9360 = qword_1ECEB95E0;
  qword_1ECEB9368 = qword_1ECEB95E0;
  unk_1ECEB9370 = 0u;
  unk_1ECEB9380 = 0u;
  v2 = qword_1ECEB95E0;

  return v2;
}

double sub_1E17A9300()
{
  if (qword_1EE1DDC38 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1DDC40;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 whiteColor];
  v4 = [v1 whiteColor];
  qword_1ECEB9390 = v2;
  *algn_1ECEB9398 = v3;
  qword_1ECEB93A0 = v4;
  result = 0.0;
  *algn_1ECEB93A8 = 0u;
  *algn_1ECEB93B8 = 0u;
  return result;
}

id sub_1E17A93C0()
{
  if (qword_1ECEB1218 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECEB1228;
  v1 = qword_1ECEB9628;
  if (v0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  qword_1ECEB93C8 = v1;
  unk_1ECEB93D0 = qword_1ECEB9638;
  qword_1ECEB93D8 = qword_1ECEB9638;
  unk_1ECEB93E0 = 0u;
  unk_1ECEB93F0 = 0u;
  v2 = qword_1ECEB9638;

  return v2;
}

uint64_t ProgressConfiguration.init(metrics:progress:alignment:theme:isInstalling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>, double a6@<D0>)
{
  v11 = *(a2 + 4);
  v12 = *a3;
  v13 = a3[1];
  v68 = *(a3 + 1);
  v69 = *(a3 + 2);
  v14 = type metadata accessor for ProgressConfiguration();
  sub_1E16C8F24(a1, &a5[v14[5]]);
  v15 = 0.0;
  if (a6 > 0.0)
  {
    v15 = a6;
  }

  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  *&a5[v14[6]] = v15;
  v16 = &a5[v14[7]];
  *v16 = *a2;
  *(v16 + 2) = v11;
  a5[v14[9]] = v12 == 3;
  a5[v14[11]] = v12 == 6;
  *a5 = a4;
  if ((v13 - 7) < 2 || v13 == 2 && v12 == 4)
  {
    sub_1E139D53C(v68, v69);
    if (qword_1ECEB1170 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECEB9358;
    v18 = unk_1ECEB9360;
    v19 = qword_1ECEB9368;
    v20 = unk_1ECEB9370;
    v21 = qword_1ECEB9378;
    v22 = unk_1ECEB9380;
    v23 = qword_1ECEB9388;
    v24 = &a5[v14[8]];
    *v24 = qword_1ECEB9358;
    v24[1] = v18;
    v24[2] = v19;
    v24[3] = v20;
    v24[4] = v21;
    v24[5] = v22;
    v24[6] = v23;
    v25 = v19;
    v26 = v17;
    v27 = v18;
    sub_1E17A99EC(v20, v21, v22, v23);
  }

  else
  {
    if (v12 == 3)
    {
      v67 = a1;
      if (qword_1ECEB1148 != -1)
      {
        swift_once();
      }

      v28 = qword_1ECEB9278;
      v29 = unk_1ECEB9280;
      v30 = qword_1ECEB9288;
      v31 = unk_1ECEB9290;
      v32 = qword_1ECEB9298;
      v33 = unk_1ECEB92A0;
      v34 = qword_1ECEB92A8;
      v35 = qword_1ECEB9288;
      v36 = v28;
      v37 = v29;
      sub_1E17A99EC(v31, v32, v33, v34);
      sub_1E139D53C(v68, v69);
      v38 = &a5[v14[8]];
      *v38 = v36;
      v38[1] = v37;
      v38[2] = v30;
      v38[3] = v31;
      v38[4] = v32;
      v38[5] = v33;
      v38[6] = v34;
      goto LABEL_45;
    }

    if (v13 > 12)
    {
      if (v13 == 13)
      {
        v67 = a1;
        if (qword_1ECEB1180 != -1)
        {
          swift_once();
        }

        v40 = &qword_1ECEB93C8;
        goto LABEL_44;
      }

      if (v13 != 14)
      {
        if (v13 == 15 && v12 != 4)
        {
          v67 = a1;
          if (qword_1ECEB1178 != -1)
          {
            swift_once();
          }

          v40 = &qword_1ECEB9390;
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (!v13)
      {
        if (v12 == 6)
        {
          v67 = a1;
          if (qword_1ECEB1168 != -1)
          {
            swift_once();
          }

          v40 = &qword_1ECEB9320;
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      if (v13 != 2)
      {
        if (v13 == 6)
        {
          v71 = &type metadata for Feature;
          v72 = sub_1E1309EB0();
          v70[0] = 17;
          v39 = sub_1E1AF056C();
          __swift_destroy_boxed_opaque_existential_1(v70);
          if (v39)
          {
            v67 = a1;
            if (qword_1ECEB1158 != -1)
            {
              swift_once();
            }

            v40 = &qword_1ECEB92B0;
LABEL_44:
            v53 = *v40;
            v54 = v40[1];
            v56 = v40[2];
            v55 = v40[3];
            v57 = v40[4];
            v58 = v40[5];
            v59 = v40[6];
            v60 = v56;
            v61 = v53;
            v62 = v54;
            sub_1E17A99EC(v55, v57, v58, v59);
            sub_1E139D53C(v68, v69);
            v63 = &a5[v14[8]];
            *v63 = v61;
            v63[1] = v62;
            v63[2] = v56;
            v63[3] = v55;
            v63[4] = v57;
            v63[5] = v58;
            v63[6] = v59;
LABEL_45:
            a1 = v67;
            goto LABEL_46;
          }
        }

LABEL_41:
        v67 = a1;
        if (qword_1EE1D8600 != -1)
        {
          swift_once();
        }

        v40 = &qword_1EE1D8608;
        goto LABEL_44;
      }

      if (v12 != 6)
      {
        goto LABEL_41;
      }
    }

    v41 = a1;
    sub_1E139D53C(v68, v69);
    if (qword_1ECEB1160 != -1)
    {
      swift_once();
    }

    v42 = qword_1ECEB92E8;
    v43 = unk_1ECEB92F0;
    v44 = qword_1ECEB92F8;
    v45 = unk_1ECEB9300;
    v46 = qword_1ECEB9308;
    v47 = unk_1ECEB9310;
    v48 = qword_1ECEB9318;
    v49 = &a5[v14[8]];
    *v49 = qword_1ECEB92E8;
    v49[1] = v43;
    v49[2] = v44;
    v49[3] = v45;
    v49[4] = v46;
    v49[5] = v47;
    v49[6] = v48;
    v50 = v44;
    v51 = v42;
    v52 = v43;
    sub_1E17A99EC(v45, v46, v47, v48);
    a1 = v41;
  }

LABEL_46:
  v64 = *(a1 + *(type metadata accessor for OfferButtonMetrics() + 56));
  result = sub_1E17AABEC(a1, type metadata accessor for OfferButtonMetrics);
  v66 = &a5[v14[10]];
  *v66 = v64;
  v66[1] = v64;
  return result;
}

uint64_t type metadata accessor for ProgressConfiguration()
{
  result = qword_1EE1DA870;
  if (!qword_1EE1DA870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E17A99EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {

    v5 = a3;

    v6 = a4;
  }
}

uint64_t ProgressConfiguration.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProgressConfiguration() + 20);

  return sub_1E16C8F24(v3, a1);
}

uint64_t ProgressConfiguration.isEqual(to:with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9400);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for ProgressConfiguration();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_1E17A9DB0(v5, v9);
    if (vabdd_f64(*&v9[v6[6]], *(v1 + v6[6])) <= COERCE_DOUBLE(1) && sub_1E16CAD94(*(v1 + v6[7]) | (*(v1 + v6[7] + 2) << 16), *&v9[v6[7]] | (*&v9[v6[7] + 2] << 16)) && *(v1 + v6[9]) == v9[v6[9]] && *(v1 + v6[11]) == v9[v6[11]])
    {
      v13 = OfferButtonMetrics.isEqual(to:with:)(&v9[v6[5]]);
      sub_1E17AABEC(v9, type metadata accessor for ProgressConfiguration);
      if (v13)
      {
        return 1;
      }
    }

    else
    {
      sub_1E17AABEC(v9, type metadata accessor for ProgressConfiguration);
    }
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_1E17A9D48(v5);
  }

  return 0;
}

uint64_t sub_1E17A9D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E17A9DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ProgressConfiguration.apply<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v75 = AssociatedTypeWitness;
  v76 = v9;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v63 - v10;
  v79 = swift_getAssociatedTypeWitness();
  v82 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v63 - v11;
  v81 = type metadata accessor for ProgressConfiguration();
  v12 = (v4 + v81[10]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v4 + v81[5];
  v73 = type metadata accessor for OfferButtonMetrics();
  v16 = *(v15 + *(v73 + 60));
  v17 = v13 - v16;
  v18 = v14 - v16;
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v20 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v16 * 0.5 cornerRadii:{v16 * 0.5, v17, v18, v19 * 0.5, v19 * 0.5}];
  v21 = [v20 CGPath];

  v22 = (*(a3 + 120))(a2, a3);
  ConfigurableOfferButton.apply(outlineShapePath:isIndeterminateProgress:animated:)(v21, 0, v22 & 1);
  v23 = *(a3 + 72);
  v69 = a3 + 72;
  v68 = v23;
  v24 = v23(a2, a3);
  [v24 setLineWidth_];

  v25 = *(a3 + 64);
  v26 = v25(a2, a3);
  v77 = v21;
  [v26 setPath_];

  v27 = v25(a2, a3);
  v80 = v4;
  [v27 setLineWidth_];

  v71 = a3 + 64;
  v70 = v25;
  v28 = v25(a2, a3);
  v29 = a1;
  v30 = v28;
  [v28 setStrokeEnd_];

  v31 = *(a3 + 96);
  v32 = v78;
  v33 = v31(a2, a3);
  v34 = (v15 + *(v73 + 36));
  v35 = v34[1];
  v73 = *v34;
  v72 = v35;
  v36 = (v73)(v33);
  v37 = v79;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = *(AssociatedConformanceWitness + 16);
  v65 = AssociatedConformanceWitness;
  v39(v36, v37);
  v40 = v82 + 8;
  v41 = *(v82 + 8);
  v41(v32, v37);
  v67 = a3 + 96;
  v66 = v31;
  v31(a2, a3);
  swift_getAssociatedConformanceWitness();
  sub_1E1AF118C();
  v82 = v40;
  v64 = v41;
  v42 = (v41)(v32, v37);
  v43 = (v73)(v42);
  (*(a3 + 208))(v43, a2, a3);
  v44._object = 0x80000001E1B75E10;
  v44._countAndFlagsBits = 0xD000000000000023;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v46 = localizedString(_:comment:)(v44, v45);
  (*(a3 + 232))(v46._countAndFlagsBits, v46._object, a2, a3);
  v47 = v74;
  v48 = v29;
  (*(a3 + 80))(a2, a3);
  v49 = v75;
  swift_getAssociatedConformanceWitness();
  sub_1E1AF118C();
  (*(v76 + 8))(v47, v49);
  v86 = &type metadata for Feature;
  v87 = sub_1E1309EB0();
  LOBYTE(v83) = 17;
  LOBYTE(v36) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  if (v36)
  {
    (*(a3 + 168))(0, a2, a3);
  }

  v50 = v80;
  _s11AppStoreKit21ProgressConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(v48, a2, a3);
  v51 = (v50 + v81[8]);
  v52 = v51[4];
  if (v52)
  {
    v54 = v51[5];
    v53 = v51[6];
    v83 = v51[3];
    v55 = v83;
    v84 = v52;
    v85 = v54;
    v86 = v53;
    v56 = v53;
    v81 = v53;

    v57 = v54;
    v58 = v56;
    v59 = v68(a2, a3);
    LayerVisualEffect.apply(to:)(v59);

    v83 = v55;
    v84 = v52;
    v85 = v57;
    v86 = v58;
    v60 = v70(a2, a3);
    LayerVisualEffect.apply(to:)(v60);

    v61 = v78;
    v66(a2, a3);
    v83 = v55;
    v84 = v52;
    v85 = v57;
    v86 = v58;
    v62 = v79;
    (*(v65 + 64))(&v83, v79);

    v64(v61, v62);
    sub_1E17AA878(v55, v52, v54, v81);
  }

  else
  {
  }
}

uint64_t _s11AppStoreKit21ProgressConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v28 - v8;
  v10 = (*(a3 + 128))(a2, a3, v7);
  v11 = (*(a3 + 64))(a2, a3);
  v12 = type metadata accessor for ProgressConfiguration();
  v13 = *(v12 + 32);
  v31 = v3;
  if (v10 == 2)
  {
    v14 = sub_1E13F78BC();
    v15 = [v14 CGColor];
  }

  else
  {
    v15 = [*(v3 + v13 + 8) CGColor];
  }

  [v11 setStrokeColor_];

  v16 = *(a3 + 72);
  v17 = v16(a2, a3);
  v18 = v31 + *(v12 + 32);
  v19 = [*v18 &selRef_characterIsMember_];
  [v17 setStrokeColor_];

  v20 = v16(a2, a3);
  [v20 setBackgroundColor_];

  (*(a3 + 96))(a2, a3);
  v21 = *(v18 + 16);
  v22 = v21;
  if (v21 || (result = (*(a3 + 112))(a2, a3), (v22 = result) != 0))
  {
    v24 = v30;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = *(AssociatedConformanceWitness + 56);
    v27 = v21;
    v26(v22, v24, AssociatedConformanceWitness);

    return (*(v29 + 8))(v9, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E17AA878(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
  }
}

void ProgressConfiguration.unapply<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v24 - v8;
  v10 = (v3 + *(type metadata accessor for ProgressConfiguration() + 32));
  v11 = v10[4];
  if (v11)
  {
    v13 = v10[5];
    v12 = v10[6];
    v25 = v10[3];
    v26 = AssociatedTypeWitness;
    v30 = v25;
    v31 = v11;
    v32 = v13;
    v33 = v12;
    v14 = v13;
    v28 = v7;
    v29 = v13;
    v15 = v12;
    v27 = v12;
    v16 = *(a3 + 72);

    v17 = v14;
    v18 = v15;
    v19 = v16(a2, a3);
    LayerVisualEffect.unapply(to:)(v19);

    v20 = v25;
    v30 = v25;
    v31 = v11;
    v32 = v17;
    v33 = v18;
    v21 = (*(a3 + 64))(a2, a3);
    LayerVisualEffect.unapply(to:)(v21);

    (*(a3 + 96))(a2, a3);
    v30 = v20;
    v31 = v11;
    v32 = v17;
    v33 = v18;
    v22 = v26;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 72))(&v30, v22, AssociatedConformanceWitness);
    (*(v28 + 8))(v9, v22);
    sub_1E17AA878(v20, v11, v29, v27);
  }
}

uint64_t ProgressConfiguration.alwaysDisableAnimations(whenUpdatingFrom:)(uint64_t a1)
{
  v2 = type metadata accessor for PausedConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = result;
    sub_1E17AABEC(v4, type metadata accessor for PausedConfiguration);
    return v6;
  }

  return result;
}

uint64_t sub_1E17AABEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double ProgressConfiguration.size(in:)(void *a1)
{
  v3 = type metadata accessor for ProgressConfiguration();
  v4 = [a1 traitCollection];
  sub_1E16CAD98(&v8);

  if (v8 == 1)
  {
    v5 = v1 + *(v3 + 40);
    type metadata accessor for OfferButtonMetrics();
  }

  else
  {
    v6 = v1 + *(v3 + 20);
    v5 = v6 + *(type metadata accessor for OfferButtonMetrics() + 52);
  }

  return *v5;
}

double sub_1E17AAD44(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  sub_1E16CAD98(&v8);

  if (v8 == 1)
  {
    v5 = v2 + *(a2 + 40);
    type metadata accessor for OfferButtonMetrics();
  }

  else
  {
    v6 = v2 + *(a2 + 20);
    v5 = v6 + *(type metadata accessor for OfferButtonMetrics() + 52);
  }

  return *v5;
}

uint64_t sub_1E17AAE0C(uint64_t a1)
{
  v2 = type metadata accessor for PausedConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = result;
    sub_1E17AABEC(v4, type metadata accessor for PausedConfiguration);
    return v6;
  }

  return result;
}

uint64_t sub_1E17AAEE8(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  v132 = sub_1E1AF745C();
  v16 = *(v132 - 1);
  MEMORY[0x1EEE9AC00](v132);
  v18 = v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v136 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *&v134 = v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  *&v133 = v129 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v135 = v129 - v23;
  v24 = type metadata accessor for ProgressConfiguration();
  v25 = a1;
  v26 = [a1 traitCollection];
  sub_1E16CAD98(v138);

  v27 = LOBYTE(v138[0]);
  v138[3] = &type metadata for Feature;
  v138[4] = sub_1E1309EB0();
  LOBYTE(v138[0]) = 17;
  LOBYTE(v26) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v138);
  if (v26)
  {
    v28 = v8 + *(v24 + 20);
    v29 = *(v28 + *(type metadata accessor for OfferButtonMetrics() + 52) + 8);
    if (v27)
    {
      v30 = v133;
      v31 = v25;
      v32 = a4;
      v33 = a5;
      v34 = a6;
      v35 = a7;
      if (v27 == 1)
      {
        v36 = CGRectGetMidY(*&v32) + v29 * -0.5;
        v37 = 0.0;
      }

      else
      {
        v37 = CGRectGetMaxX(*&v32) - v29;
        v143.origin.x = a4;
        v143.origin.y = a5;
        v143.size.width = a6;
        v143.size.height = a7;
        v36 = CGRectGetMidY(v143) + v29 * -0.5;
      }
    }

    else
    {
      v139.origin.x = a4;
      v139.origin.y = a5;
      v139.size.width = a6;
      v139.size.height = a7;
      v37 = CGRectGetMidX(v139) - v29 * 0.5;
      v140.origin.x = a4;
      v140.origin.y = a5;
      v140.size.width = a6;
      v140.size.height = a7;
      v36 = CGRectGetMidY(v140) - v29 * 0.5;
      v30 = v133;
      v31 = v25;
    }

    v48 = floor(v37);
    v49 = floor(v36);
    v50 = (*(a3 + 192))(v137, a3);
    if (v50)
    {
      v51 = v50;
      v52 = [v31 traitCollection];
      [v52 layoutDirection];

      sub_1E1AF6B2C();
      [v51 setFrame_];
    }

    v53 = *(a3 + 72);
    v54 = v137;
    v55 = v53(v137, a3);
    v144.origin.x = v48;
    v144.origin.y = v49;
    v144.size.width = v29;
    v144.size.height = v29;
    CGRectGetMidX(v144);
    v145.size.width = v29;
    v133 = a7;
    v134 = v29;
    v145.origin.x = v48;
    v145.origin.y = v49;
    v145.size.height = v29;
    CGRectGetMidY(v145);
    v56 = [v31 traitCollection];
    [v56 layoutDirection];

    sub_1E1AF6B2C();
    [v55 setFrame_];

    v130 = *(a3 + 64);
    v57 = v130(v54, a3);
    v132 = v53;
    v58 = v53(v54, a3);
    [v58 frame];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;

    [v57 setFrame_];
    v67 = *(a3 + 96);
    v68 = v135;
    v67(v54, a3);
    v69 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v71 = (*(AssociatedConformanceWitness + 8))(v69, AssociatedConformanceWitness);
    v72 = v68;
    v73 = *(v136 + 8);
    v73(v72, v69);
    if (v71)
    {
      [v71 size];
    }

    v67(v137, a3);
    swift_getAssociatedConformanceWitness();
    sub_1E1AF116C();
    v73(*&v30, v69);
    v134 = *&v73;
    v135 = v67;
    v74 = v30;
    v75 = v132;
  }

  else
  {
    v130 = v24;
    if (v27)
    {
      v38 = v25;
      v39 = v18;
      v40 = a4;
      v41 = a5;
      v42 = a6;
      v43 = a7;
      if (v27 == 1)
      {
        MidY = CGRectGetMidY(*&v40);
        v45 = (v8 + *(v24 + 40));
        v46 = 0.0;
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v40);
        v45 = (v8 + *(v24 + 40));
        v46 = MaxX - *v45;
        v146.origin.x = a4;
        v146.origin.y = a5;
        v146.size.width = a6;
        v146.size.height = a7;
        MidY = CGRectGetMidY(v146);
      }
    }

    else
    {
      v39 = v18;
      v141.origin.x = a4;
      v141.origin.y = a5;
      v141.size.width = a6;
      v141.size.height = a7;
      MidX = CGRectGetMidX(v141);
      v45 = (v8 + *(v24 + 40));
      v46 = MidX + *v45 * -0.5;
      v142.origin.x = a4;
      v142.origin.y = a5;
      v142.size.width = a6;
      v142.size.height = a7;
      MidY = CGRectGetMidY(v142);
      v38 = v25;
    }

    v77 = MidY + v45[1] * -0.5;
    v78 = *(a3 + 72);
    v79 = v137;
    v80 = v78(v137, a3);
    v81 = v16;
    v82 = *(v16 + 104);
    v83 = v132;
    v82(v39, *MEMORY[0x1E69E7048], v132);
    CGPoint.rounded(_:)(v39, v46, v77);
    (*(v81 + 8))(v39, v83);
    v84 = [v38 traitCollection];
    [v84 layoutDirection];

    sub_1E1AF6B2C();
    [v80 setFrame_];

    v130 = *(a3 + 64);
    v85 = v130(v79, a3);
    v132 = v78;
    v129[1] = a3 + 72;
    v86 = v78(v79, a3);
    [v86 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;

    [v85 setFrame_];
    v95 = v134;
    v135 = *(a3 + 96);
    (v135)(v79, a3);
    v69 = AssociatedTypeWitness;
    v96 = swift_getAssociatedConformanceWitness();
    v97 = (*(v96 + 8))(v69, v96);
    v134 = *(v136 + 8);
    (*&v134)(*&v95, v69);
    if (v97)
    {
      [v97 size];
    }

    v98 = v133;
    v99 = v137;
    (v135)(v137, a3);
    v75 = v132;
    v100 = v132(v99, a3);
    [v100 frame];
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v147.origin.x = v102;
    v147.origin.y = v104;
    v147.size.width = v106;
    v147.size.height = v108;
    CGRectGetMidX(v147);
    v109 = v75(v99, a3);
    [v109 frame];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;

    v148.origin.x = v111;
    v148.origin.y = v113;
    v148.size.width = v115;
    v148.size.height = v117;
    CGRectGetMidY(v148);
    swift_getAssociatedConformanceWitness();
    sub_1E1AF116C();
    (*&v134)(*&v98, v69);
    v74 = v98;
  }

  v118 = v137;
  v119 = (*(a3 + 104))(v137, a3);
  v120 = v75(v118, a3);
  v121 = v120;
  v136 += 8;
  if (v119)
  {
    v122 = 0.22;
  }

  else
  {
    v122 = 1.0;
  }

  HIDWORD(v123) = 1070344437;
  if (v119)
  {
    v124 = 0.22;
  }

  else
  {
    v124 = 1.0;
  }

  *&v123 = v122;
  [v120 setOpacity_];

  v125 = v130(v118, a3);
  *&v126 = v122;
  [v125 setOpacity_];

  (v135)(v118, a3);
  v127 = swift_getAssociatedConformanceWitness();
  (*(v127 + 40))(v69, v127, v124);
  return (*&v134)(COERCE_CGFLOAT(*&v74), v69);
}

void sub_1E17ABB4C()
{
  type metadata accessor for OfferButtonMetrics();
  if (v0 <= 0x3F)
  {
    sub_1E16FD19C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}