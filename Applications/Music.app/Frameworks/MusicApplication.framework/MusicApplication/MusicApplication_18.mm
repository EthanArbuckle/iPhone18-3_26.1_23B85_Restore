void *sub_18B220(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  if (v5)
  {
    goto LABEL_11;
  }

  v6 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  v7 = *(v6 + 1);
  v8 = *v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = &v1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle];
  swift_beginAccess();
  v10 = *(v9 + 1);
  v11 = *v9 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  if (v11 || (v12 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog, swift_beginAccess(), *&v1[v12]))
  {
LABEL_11:
    [v1 layoutIfNeeded];
  }

  [a1 size];
  [a1 setSize:?];
  return a1;
}

id sub_18B370(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = NSFontAttributeName;
  if (a3)
  {
    sub_13C80(0, &qword_DE6EE0);
    v5 = NSFontAttributeName;
    v6 = sub_ABA550();
  }

  else
  {
    v7 = objc_opt_self();
    v8 = NSFontAttributeName;
    v6 = [v7 preferredFontForTextStyle:UIFontTextStyleBody];
  }

  v9 = v6;
  *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
  *(inited + 40) = v9;
  sub_96EB8(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DE6EE8);
  v10 = objc_allocWithZone(NSAttributedString);
  v11 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v13 = [v10 initWithString:v11 attributes:isa];

  return v13;
}

unint64_t sub_18B558(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_6D620(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v26 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEBDE8);
    v5 = (a1 + 40);
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v29[0] = NSFontAttributeName;
      swift_bridgeObjectRetain_n();
      v8 = NSFontAttributeName;
      v9 = [v26 preferredFontForTextStyle:UIFontTextStyleBody];
      v29[4] = sub_13C80(0, &qword_DE6EE0);
      v29[1] = v9;
      v10 = sub_ABB0C0();
      sub_15F84(v29, &v27, &qword_DE6EE8);
      v11 = v27;
      result = sub_2F5AD8(v27);
      if (v13)
      {
        break;
      }

      v10[(result >> 6) + 8] |= 1 << result;
      *(v10[6] + 8 * result) = v11;
      result = sub_9ACFC(&v28, (v10[7] + 32 * result));
      v14 = v10[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      v10[2] = v16;
      sub_12E1C(v29, &qword_DE6EE8);
      v17 = objc_allocWithZone(NSAttributedString);
      v18 = sub_AB9260();

      type metadata accessor for Key(0);
      sub_3FB3C();
      isa = sub_AB8FD0().super.isa;

      v20 = [v17 initWithString:v18 attributes:isa];

      v30 = v3;
      v22 = v3[2];
      v21 = v3[3];
      if (v22 >= v21 >> 1)
      {
        sub_6D620((v21 > 1), v22 + 1, 1);
        v3 = v30;
      }

      v3[2] = v22 + 1;
      v23 = &v3[4 * v22];
      v23[4] = v7;
      v23[5] = v6;
      *(v23 + 48) = 0;
      v23[7] = v20;
      v5 += 2;
      if (!--v2)
      {
        v1 = v25;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    v24 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles;
    swift_beginAccess();
    *(v1 + v24) = v3;
  }

  return result;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B864()
{

  return swift_deallocObject();
}

unint64_t sub_18B8B4()
{
  result = qword_DF35D8;
  if (!qword_DF35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF35D8);
  }

  return result;
}

unint64_t sub_18B90C()
{
  result = qword_DF35E0;
  if (!qword_DF35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF35E0);
  }

  return result;
}

void sub_18B968()
{
  sub_7D678();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for TitleSectionHeaderView.LayoutStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TitleSectionHeaderView.LayoutStyle(uint64_t result, int a2, int a3)
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

uint64_t sub_18BB14(uint64_t a1)
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

uint64_t sub_18BB30(uint64_t result, int a2)
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

uint64_t sub_18BBA0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BBE0()
{

  return swift_deallocObject();
}

uint64_t sub_18BC88()
{
  v1 = v0;
  sub_18C040(v17);
  if (BYTE8(v17[0]))
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    if (BYTE8(v17[0]) != 1)
    {
      sub_12E1C(v17, &unk_DF3640);
    }
  }

  else
  {
    sub_9B150(v17, v22);
  }

  sub_4148FC(v14);
  if (v16 == 1)
  {
    sub_D5B6C();
    if (v2)
    {
      v3 = v2;
      static PresentationSource.topmost(in:)(v17);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      v18 = 1;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    if (v16 != 1)
    {
      sub_12E1C(v14, &unk_DEA520);
    }
  }

  else
  {
    sub_17704(v14, v17);
  }

  sub_1116A8(v17, v14);
  if (v16 == 1)
  {
    sub_12E1C(v14, &unk_DEA520);
LABEL_18:
    if (qword_DE6918 != -1)
    {
      swift_once();
    }

    v6 = sub_AB4BC0();
    __swift_project_value_buffer(v6, qword_DF3628);
    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "[JSUserNotificationAuthorizationSegue] Unable to find a sourceViewController", v9, 2u);
    }

    sub_414AFC(v14);
    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        _s30CollectionViewSelectionHandlerVMa();
        isa = sub_AB3770().super.isa;
        [v11 deselectItemAtIndexPath:isa animated:1];
        sub_12E1C(v17, &unk_DEA520);
        sub_18C7FC(v22);
      }

      else
      {
        sub_12E1C(v17, &unk_DEA520);
        sub_18C7FC(v22);
      }

      return __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      sub_12E1C(v17, &unk_DEA520);
      sub_18C7FC(v22);
      return sub_12E1C(v14, &unk_DE8E30);
    }
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1611C(v14);
  if (!v4)
  {
    goto LABEL_18;
  }

  swift_unknownObjectWeakAssign();
  if (qword_DE6910 != -1)
  {
    swift_once();
  }

  sub_18CEBC(v22, v13);
  v13[8] = 0;
  swift_beginAccess();
  sub_2E5810(v13, v1);
  swift_endAccess();
  sub_18C104(v4);

  sub_12E1C(v17, &unk_DEA520);
  return sub_18C7FC(v22);
}

uint64_t sub_18C040@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE6910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_DF3620;
  if (*(&dword_10 + off_DF3620) && (v4 = sub_2EC7DC(v1), (v5 & 1) != 0))
  {
    sub_18CEBC(*&stru_20.segname[v3 + 16] + 8 * v4, a1);
    v6 = 0;
  }

  else
  {
    *a1 = 0;
    v6 = 1;
  }

  *(a1 + 8) = v6;
  return swift_endAccess();
}

void sub_18C104(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
  v5 = OBJC_IVAR____TtC11MusicJSCore36JSUserNotificationAuthorizationSegue_userInitiated;
  swift_beginAccess();
  [v4 setUserInitiated:*(v2 + v5)];
  v6 = objc_allocWithZone(AMSUserNotificationAuthorizationTask);
  v7 = v4;
  v8 = sub_AB9260();
  v9 = [v6 initWithBundleIdentifier:v8 options:v7];

  [v9 setDelegate:v2];
  v10 = [v9 requestAuthorization];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_18CF6C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_54;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  [v10 addFinishBlock:v13];
  _Block_release(v13);
}

void sub_18C2FC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE6918 != -1)
      {
        swift_once();
      }

      v9 = sub_AB4BC0();
      __swift_project_value_buffer(v9, qword_DF3628);
      swift_errorRetain();
      v10 = sub_AB4BA0();
      v11 = sub_AB9F30();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        swift_getErrorValue();
        v14 = sub_ABB520();
        v16 = sub_425E68(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_0, v10, v11, "[JSUserNotificationAuthorizationSegue] Authorization failed with error: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
      }

      sub_18C4EC(a4);
    }

    if (a1)
    {
      sub_18CB04([a1 authorizationStatus]);
    }

    sub_18C4EC(a4);
  }
}

uint64_t sub_18C4EC(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_13C80(0, &qword_DE8ED0);
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = ObjectType;
  v5 = a1;
  v6 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_18CFCC, v4);
}

uint64_t sub_18C5A0(void *a1, void *a2)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  if (qword_DE6910 != -1)
  {
    swift_once();
  }

  v4 = 0;
  v5 = 1;
  swift_beginAccess();
  sub_2E5810(&v4, a2);
  return swift_endAccess();
}

int *sub_18C64C()
{
  result = sub_98468(_swiftEmptyArrayStorage);
  off_DF3620 = result;
  return result;
}

void JSUserNotificationAuthorizationSegue.handle(_:completion:)(void *a1, void (*a2)(void, id), uint64_t a3)
{
  sub_18C040(v13);
  if (v13[8])
  {
    sub_12E1C(v13, &unk_DF3640);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_18C7FC(v13);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0);
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = Strong;
      v7[4] = a2;
      v7[5] = a3;
      v8 = a1;
      v9 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_18C98C, v7);

      return;
    }
  }

  v10 = sub_AB9260();
  v11 = sub_AB9260();
  v12 = AMSError();

  a2(0, v12);
}

void sub_18C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_13C80(0, &qword_DEE560);
  v8 = static ICStoreRequestContext.storeFlow.getter();
  v9 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v8];

  v10 = [objc_allocWithZone(AMSUIEngagementTask) initWithRequest:a1 bag:v9 presentingViewController:a2];
  v11 = [v10 presentEngagement];
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_311FA0;
  v13[3] = &block_descriptor_19_1;
  v12 = _Block_copy(v13);

  [v11 addFinishBlock:v12];
  _Block_release(v12);
}

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_18CA7C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DF3628);
  __swift_project_value_buffer(v0, qword_DF3628);
  sub_13C80(0, &qword_DED8C0);
  OS_os_log.init(musicCategory:)();
  return sub_AB4BD0();
}

void sub_18CB04(uint64_t a1)
{
  sub_13C80(0, &qword_DF0600);
  v2 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v2)
  {

    oslog = [objc_opt_self() sharedManager];
    [oslog setAccountNotificationsArtistContentFeature:a1 == 2 withCompletionHandler:0];
  }

  else
  {
    if (qword_DE6918 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_DF3628);
    oslog = sub_AB4BA0();
    v4 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, oslog, v4, "Unable to update Music Account settings because there is no active account.", v5, 2u);
    }
  }
}

void sub_18CC5C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_18C040(v14);
  if (v14[8])
  {
    sub_12E1C(v14, &unk_DF3640);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_18C7FC(v14);
    if (Strong)
    {
      sub_13C80(0, &qword_DE8ED0);
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = Strong;
      v7[4] = sub_DB118;
      v7[5] = v5;
      v8 = a1;
      v9 = Strong;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_18CFE4, v7);

      return;
    }
  }

  v10 = sub_AB9260();
  v11 = sub_AB9260();
  v12 = AMSError();

  v13 = sub_AB3040();
  (a3)[2](a3, 0, v13);
}

uint64_t sub_18CE3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t sub_18CEF4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18CF2C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18CF8C()
{

  return swift_deallocObject();
}

void sub_18CFE8(void *a1)
{
  v2 = v1;
  v4 = [v1 viewControllers];
  sub_13C80(0, &qword_DE7500);
  v5 = sub_AB9760();
  v6 = v5;
  if (!(v5 >> 62))
  {
    if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!sub_ABB060())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_35F8D4(0, v6);
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 navigationItem];

  if (!v9 || (sub_13C80(0, &qword_DF37F8), v10 = a1, v11 = sub_ABA790(), v10, v9, (v11 & 1) == 0))
  {
LABEL_11:
    v13 = [v2 viewControllers];
    v14 = sub_AB9760();
    if (v14 >> 62)
    {
      v25 = sub_ABB060();

      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));

      if (v15)
      {
LABEL_13:

        v12 = 1;
        goto LABEL_14;
      }
    }

    v26 = *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
    if (v26)
    {
      v27 = [v26 navigationItem];
      if (v27)
      {
        v28 = v27;
        sub_13C80(0, &qword_DF37F8);
        v29 = a1;
        v30 = sub_ABA790();

        if (v30)
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

  v12 = 3;
LABEL_14:
  v16 = [a1 standardAppearance];
  if (!v16)
  {
    v16 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v17 = [a1 scrollEdgeAppearance];
  if (!v17)
  {
    v17 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v31 = v17;
  v18 = [a1 largeTitleDisplayMode];
  v19 = sub_3878B0();
  if (v18 == &dword_0 + 3)
  {
    v20 = v12;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 > 3;
  v22 = 0x1000202u >> (8 * v20);
  if (v21)
  {
    LOBYTE(v22) = 0;
  }

  if (v19 == 3)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23;
  [v16 _setTitleControlHidden:v23 != 0];
  [v31 _setTitleControlHidden:v24 == 2];
  [a1 setStandardAppearance:v16];
  [a1 setScrollEdgeAppearance:v31];
}

id sub_18D3D8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette] = 0;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

void sub_18D540()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v16, "viewDidLayoutSubviews");
  v1 = [v0 navigationBar];
  v2 = [v1 subviews];
  sub_13C80(0, &qword_DF12A0);
  v3 = sub_AB9760();

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v5 = 0;
    if ((v3 & 0xC000000000000001) != 0)
    {
LABEL_4:
      v6 = sub_3605EC(v5, v3);
      goto LABEL_7;
    }

    while (v5 < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      v6 = *(v3 + 8 * v5 + 32);
LABEL_7:
      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = v7;
        v11 = [v0 view];
        if (!v11)
        {
          __break(1u);
          return;
        }

        v12 = v11;
        [v11 bounds];

        v7 = v10;
        [v9 bounds];
        [v9 frame];
        [v9 setFrame:?];

        v13 = [v9 contentView];
        [v13 frame];
        [v13 setFrame:?];

        [v9 setNeedsLayout];
      }

      if (v5 + 1 == i)
      {
        goto LABEL_17;
      }

      ++v5;
      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v14 = [v0 topViewController];
  v15 = [v14 navigationItem];
}

uint64_t sub_18D824()
{
  swift_getObjectType();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  [v0 setDelegate:v0];
  v1 = [v0 navigationBar];
  [v1 setPrefersLargeTitles:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = sub_AB5080();
  *(v2 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_ABA080();
  swift_unknownObjectRelease();
}

id sub_18DB6C(id result, char a2)
{
  if (result)
  {
    v4 = result;
    if ([result boundaryEdge] == &dword_0 + 2)
    {
      v5 = [v2 topViewController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 navigationItem];
        v8 = [v6 parentViewController];
        if (v8)
        {
          v9 = v8;
          while (1)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            v10 = v9;
            v11 = [v10 navigationItem];

            v9 = [v10 parentViewController];
            v7 = v11;
            if (!v9)
            {
              v9 = v6;
              v7 = v11;
              goto LABEL_11;
            }
          }
        }

        else
        {
          v9 = v6;
        }

LABEL_11:

        v12 = [v7 searchController];
        if (v12)
        {

          v13 = [v2 existingPaletteForEdge:2];
          if (v13)
          {
            v14 = v13;
            if ([v13 isPinned])
            {
              [v2 detachPalette:v14];
            }
          }
        }
      }
    }

    v15.receiver = v2;
    v15.super_class = type metadata accessor for NavigationController();
    return objc_msgSendSuper2(&v15, "attachPalette:isPinned:", v4, a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18DDBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette;
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette];
  if (!a1)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v9 = 0;
    goto LABEL_7;
  }

  if (v5)
  {
    sub_13C80(0, &unk_DF37E0);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      v9 = *&v2[v4];
LABEL_7:
      *&v2[v4] = 0;
    }
  }

LABEL_8:
  v23.receiver = v2;
  v23.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v23, "detachPalette:", a1);
  v10 = [v2 navigationBar];
  v11 = [v10 subviews];
  sub_13C80(0, &qword_DF12A0);
  v12 = sub_AB9760();

  if (v12 >> 62)
  {
    v13 = sub_ABB060();
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_3605EC(i, v12);
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (swift_dynamicCastObjCProtocolConditional() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v17 = v16;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }

    else
    {
    }
  }

LABEL_23:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_35;
  }

  for (j = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)); j; j = sub_ABB060())
  {
    v19 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v20 = sub_3605EC(v19, _swiftEmptyArrayStorage);
      }

      else
      {
        if (v19 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_34;
        }

        v20 = _swiftEmptyArrayStorage[v19 + 4];
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [v20 removeFromSuperview];

      ++v19;
      if (v22 == j)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
}

void sub_18E140(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
  *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController] = a1;
  v6 = a1;

  [v6 loadViewIfNeeded];
  v7 = [v6 navigationItem];
  sub_18CFE8(v7);

  v9.receiver = v2;
  v9.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v9, "pushViewController:animated:", v6, a2 & 1);
  v8 = *&v2[v4];
  *&v2[v4] = 0;
}

void sub_18E27C(void *a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController;
  v7 = *&v3[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
  *&v3[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController] = a1;
  v8 = a1;

  [v8 loadViewIfNeeded];
  v9 = [v8 navigationItem];
  sub_18CFE8(v9);

  v11.receiver = v3;
  v11.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v11, "pushViewController:overrideTraitCollection:animated:", v8, a2, a3 & 1);
  v10 = *&v3[v6];
  *&v3[v6] = 0;
}

void sub_18E58C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette);
}

id sub_18E5CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_18E7B8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTextAlignment:1];
  v1 = objc_opt_self();
  v2 = [v1 secondaryLabelColor];
  [v0 setTextColor:v2];

  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v3];

  [v0 setAdjustsFontForContentSizeCategory:0];
  v4 = v0;
  v5 = [v1 clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

void sub_18E94C(void *a1, id a2)
{
  v3 = [a2 horizontalSizeClass];
  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v3 != v5)
  {
    v6 = [a1 topViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationItem];
      sub_18CFE8(v8);
    }
  }
}

void sub_18EA30(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 existingPaletteForEdge:2];
  if (v4)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!v4)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette];
  v7 = v4;
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_3875B8();
  if (!v4)
  {
    if (!v5)
    {
      return;
    }

    v13 = type metadata accessor for NavigationBarBottomPromptPaletteContentView();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel;

    *&v14[v15] = sub_18E7B8();
    v33.receiver = v14;
    v33.super_class = v13;
    v16 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v17 = OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel;
    v18 = *&v16[OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel];
    v19 = v16;
    v20 = sub_AB9260();
    [v18 setText:v20];

    [v19 addSubview:*&v16[v17]];
    v21 = [v2 navigationBar];
    [v21 bounds];
    v23 = v22;

    v24 = [v2 paletteForEdge:2 size:{v23, 28.0}];
    if (v24)
    {
      v25 = v19;
      v26 = v24;
      v27 = sub_3876A0();
      [v27 removeFromSuperview];

      [v25 setTag:7453282];
      [v26 bounds];
      [v25 setFrame:?];
      [v25 setAutoresizingMask:18];
      [v26 addSubview:v25];
    }

    [v2 attachPalette:v24 isPinned:1];
    swift_bridgeObjectRelease_n();

    goto LABEL_25;
  }

  if (v5)
  {
    v6 = 0;
    goto LABEL_16;
  }

LABEL_8:
  v4 = v4;
  [v4 setPinned:0];
  v8 = [v2 transitionCoordinator];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v4;
    v32[4] = sub_18EE8C;
    v32[5] = v10;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 1107296256;
    v32[2] = sub_CF24C;
    v32[3] = &block_descriptor_55;
    v11 = _Block_copy(v32);
    v4 = v4;
    v12 = v2;

    [v9 animateAlongsideTransition:0 completion:v11];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }

  else
  {
    [v2 detachPalette:v4];
  }

  v6 = 1;
LABEL_16:
  v28 = v4;
  v29 = sub_3876A0();

  if (!v29)
  {

LABEL_22:

    return;
  }

  type metadata accessor for NavigationBarBottomPromptPaletteContentView();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    goto LABEL_22;
  }

  v31 = *(v30 + OBJC_IVAR____TtC16MusicApplication43NavigationBarBottomPromptPaletteContentView_textLabel);
  if (v6)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_AB9260();
  }

  [v31 setText:v24];

LABEL_25:
}

uint64_t sub_18EE4C()
{

  return swift_deallocObject();
}

id sub_18EE8C(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ([a1 isCancelled])
  {
    v4 = "setPinned:";
    v5 = v2;
    v6 = 1;
  }

  else
  {
    v4 = "detachPalette:";
    v5 = v3;
    v6 = v2;
  }

  return [v5 v4];
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_18EF2C(unint64_t a1)
{
  v3 = [v1 existingPaletteForEdge:2];
  if (v3)
  {
    v4 = v3;
    [v1 detachPalette:v3];
  }

  v5 = OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController;
  v21 = *&v1[OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController];
  if (a1 >> 62)
  {
LABEL_17:
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v20 = v21;
  if (v6)
  {
    v7 = 0;
    v19 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v19)
      {
        v9 = sub_35F8D4(v7, a1);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * v7 + 32);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      v11 = *&v1[v5];
      *&v1[v5] = v9;
      v12 = a1;
      v13 = v9;

      v14 = [v13 navigationItem];
      sub_18CFE8(v14);

      v15 = [v13 navigationItem];
      v16 = *&v1[v5];
      *&v1[v5] = v21;
      v17 = v20;

      a1 = v12;
      ++v7;
    }

    while (v10 != v6);
  }

  sub_13C80(0, &qword_DE7500);
  isa = sub_AB9740().super.isa;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for NavigationController();
  objc_msgSendSuper2(&v22, "setViewControllers:", isa);
}

id sub_18F120()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_DF3860;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *&v0[v3] = sub_225174(&off_CF0450, 0, 0);
  *&v0[qword_DF3868] = 0;
  *&v0[qword_DF3870] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MoviesViewController();
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = sub_AB9260();
  [v4 setPlayActivityFeatureName:v5];

  v6 = v4;
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = sub_AB9260();

  [v6 setTitle:v7];

  sub_3B4C14(1);
  return v6;
}

void sub_18F364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  isa = sub_AB9740().super.isa;
  v7 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E03780);
  v8 = sub_10F414();
  v9 = [v7 propertySetByCombiningWithPropertySet:v8];

  v10 = sub_2BAFF8();
  v11 = [v9 propertySetByCombiningWithPropertySet:v10];

  qword_E71118 = v11;
}

uint64_t sub_18F4F0()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_DF3868;
  if (*&v0[qword_DF3868])
  {
    v4 = *&v0[qword_DF3868];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v8 = v0;
    v4 = sub_4309D4(v5, v7);

    *&v0[v3] = v4;
  }

  return v4;
}

uint64_t sub_18F684()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for MoviesViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_13C80(0, &unk_DF12E0);
    v5 = sub_AB9760();

    v2 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = *&v1[qword_DF3860];
  sub_225418();
  sub_AB9730();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v7 = [v1 navigationItem];
  sub_13C80(0, &unk_DF12E0);
  isa = sub_AB9740().super.isa;

  [v7 setRightBarButtonItems:isa animated:0];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v6[8];
  v6[8] = sub_191594;
  v6[9] = v9;

  sub_17654(v10);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v6[6];
  v6[6] = sub_141790;
  v6[7] = v11;

  sub_17654(v12);

  v13 = sub_18F4F0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *(v13 + 88);
  *(v13 + 88) = sub_191668;
  *(v13 + 96) = v14;

  sub_17654(v15);
}

void sub_18F940()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18FB2C();
  }
}

void sub_18F994(void *a1)
{
  v1 = a1;
  sub_18F684();
}

BOOL sub_18F9DC()
{
  v1 = [v0 traitCollection];
  v2 = UITraitCollection.isMediaPicker.getter();

  return !v2;
}

uint64_t sub_18FA28()
{
  v1 = v0;
  sub_1903E0();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_18F4F0();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DF3868) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void sub_18FB2C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &unk_E03780);
  v3 = v2;
  v4 = static MPModelMovie.defaultMusicKind.getter();
  [v3 setItemKind:v4];

  v5 = sub_AB9260();
  [v3 setLabel:v5];

  if (qword_DE6920 != -1)
  {
    swift_once();
  }

  [v3 setItemProperties:qword_E71118];
  sub_13C80(0, &unk_DFDE50);

  isa = sub_AB9740().super.isa;

  [v3 setItemSortDescriptors:isa];

  if (*(*(sub_18F4F0() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v7 = sub_AB9260();
  }

  else
  {
    v7 = 0;
  }

  [v3 setFilterText:v7];

  v8 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v3);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_191534;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_151E0;
  v11[3] = &block_descriptor_56;
  v10 = _Block_copy(v11);

  [v3 performWithResponseHandler:v10];
  _Block_release(v10);
}

uint64_t sub_18FDF8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);
}

id sub_18FE9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  sub_1908C8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_12E1C(v6, &unk_DEA510);
  }

  sub_140E58(v6, v13);
  result = [v1 loadViewIfNeeded];
  v15 = *&v1[qword_DFE2F8];
  if (v15)
  {
    v16 = v15;
    isa = sub_AB3770().super.isa;
    v18 = [v16 cellForItemAtIndexPath:isa];

    if (v18)
    {
      sub_D5958(v33);
      v31 = v33[0];
      v30 = v33[1];
      v19 = v34;
      v20 = v35;
      v21 = v36;

      v22 = v30;
      v23 = v31;
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v23 = 0uLL;
      v20 = 255;
      v22 = 0uLL;
    }

    v37[0] = v23;
    v37[1] = v22;
    v38 = v19;
    v39 = v20;
    v40 = v21;
    v24 = v2;
    PresentationSource.init(viewController:position:)(v24, v37, v32);
    v25 = sub_4A3F1C();
    v26 = *&v24[qword_DFE2F0];
    sub_1912D4(v13, v11);
    v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v28 = swift_allocObject();
    sub_140E58(v11, v28 + v27);
    v29 = v26;
    sub_1109D4(a1, v26, 0, 1, v32, sub_191468, v28);
    sub_1611C(v32);
    sub_1914D8(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1901B8(void *a1)
{
  v7 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 music_inheritedLayoutInsets];

  [a1 setRowHeight:176.0];
  [a1 invalidateLayout];
}

void sub_1902A4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void *sub_1903E0()
{
  v1 = qword_DF3870;
  if (*&v0[qword_DF3870])
  {
    v2 = *&v0[qword_DF3870];
  }

  else
  {
    v2 = sub_190448(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_190448(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v3[27];
    v3[27] = sub_1912CC;
    v3[28] = v6;

    sub_17654(v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = sub_18F4F0();

  v9 = (*(v8 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v10 = v9[1];
  if (!v10)
  {

LABEL_10:
    v20 = *(a1 + 16);
    v50 = *a1;
    v51 = v20;
    v21 = *(a1 + 48);
    v34 = *(a1 + 32);
    v35 = v21;
    v36 = *(a1 + 64);
    v37 = *(a1 + 80);
    sub_576EC(a1, &v44);
    sub_AB91E0();
    sub_AB3550();
    v22 = sub_AB9320();
    v24 = v23;
    sub_12E1C(&v50, &unk_DEE6F0);
    sub_AB91E0();
    sub_AB3550();
    v25 = sub_AB9320();
    v27 = v26;
    sub_12E1C(&v51, &unk_DEE6F0);
    *&v38 = v22;
    *(&v38 + 1) = v24;
    *&v39 = v25;
    *(&v39 + 1) = v27;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    *&v44 = v22;
    *(&v44 + 1) = v24;
    *&v45 = v25;
    *(&v45 + 1) = v27;
    v49 = v37;
    v47 = v35;
    v48 = v36;
    v46 = v34;
    sub_576EC(&v38, &v33);
    result = sub_57748(&v44);
    v13 = v43;
    v17 = v41;
    v19 = v42;
    v15 = v39;
    v18 = v40;
    v16 = v38;
    goto LABEL_11;
  }

  v11 = *v9;

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  if (qword_DE6BD0 != -1)
  {
    swift_once();
  }

  v47 = xmmword_E717A8;
  v48 = xmmword_E717B8;
  v45 = xmmword_E71788;
  v46 = xmmword_E71798;
  v44 = xmmword_E71778;
  v13 = qword_E717C8;
  v49 = qword_E717C8;
  v31 = xmmword_E717A8;
  v32 = xmmword_E717B8;
  v29 = xmmword_E71788;
  v30 = xmmword_E71798;
  v28 = xmmword_E71778;
  result = sub_576EC(&v44, &v38);
  v16 = v28;
  v15 = v29;
  v18 = v30;
  v17 = v31;
  v19 = v32;
LABEL_11:
  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v18;
  *(a2 + 48) = v17;
  *(a2 + 64) = v19;
  *(a2 + 80) = v13;
  return result;
}

void sub_1908C8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[qword_DFE2F0];
  if (v7)
  {
    v8 = v7;
    v9 = [v8 results];
    if (!v9)
    {
      __break(1u);
      goto LABEL_18;
    }

    v10 = v9;
    isa = sub_AB3770().super.isa;
    v12 = [v10 itemAtIndexPath:isa];

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v31 = a1;
      v15 = [objc_allocWithZone(MPModelLibraryRequest) init];
      if (*(*(sub_18F4F0() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
      {

        v16 = sub_AB9260();
      }

      else
      {
        v16 = 0;
      }

      [v15 setFilterText:v16];

      v19 = [v1 traitCollection];
      UITraitCollection.configure<A, B>(libraryRequest:)(v15);

      v32 = v15;
      v20 = [v8 request];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 label];
        [v32 setLabel:v22];

        sub_13C80(0, &unk_E03780);
        v23 = static MPModelMovie.defaultMusicKind.getter();
        [v32 setItemKind:v23];

        v24 = [v14 identifiers];
        v25 = [v32 playbackIntentWithStartItemIdentifiers:v24];

        v26 = v31;
        if (v25)
        {
          *v6 = v25;
          swift_storeEnumTagMultiPayload();
          v36 = 0;
          memset(v35, 0, sizeof(v35));
          v34 = 0;
          memset(v33, 0, sizeof(v33));
          v27 = v2;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v6, v35, 3, 0, 0, 1, 0, 1, v26, v2, v33);

          swift_unknownObjectRelease();
          v28 = type metadata accessor for PlaybackIntentDescriptor(0);
          (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
        }

        else
        {
          v29 = type metadata accessor for PlaybackIntentDescriptor(0);
          (*(*(v29 - 8) + 56))(v26, 1, 1, v29);

          swift_unknownObjectRelease();
          v30 = v32;
        }

        return;
      }

LABEL_18:
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
  }

  v17 = type metadata accessor for PlaybackIntentDescriptor(0);
  v18 = *(*(v17 - 8) + 56);

  v18(a1, 1, 1, v17);
}

uint64_t sub_190D54()
{
}

id sub_190DA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoviesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_190DDC()
{
}

uint64_t type metadata accessor for MoviesViewController()
{
  result = qword_DF38A0;
  if (!qword_DF38A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190EEC()
{
  v1 = *v0;
  [*v0 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 traitCollection];
    [v3 bounds];
  }

  else
  {
    __break(1u);
  }
}

id sub_190FAC()
{
  v0 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  sub_1901B8(v0);
  return v0;
}

id sub_191014(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = [a2 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_AB92A0();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = (a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title);
  v17 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title + 8);
  *v15 = v12;
  v15[1] = v14;
  sub_2DD6C(v16, v17);

  v18 = [a2 releaseDate];
  if (v18)
  {
    v19 = v18;
    sub_AB33F0();

    v20 = sub_AB3430();
    (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  }

  else
  {
    v21 = sub_AB3430();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  }

  v22 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(a1 + v22, v7);
  swift_beginAccess();
  sub_2F0A8(v9, a1 + v22);
  swift_endAccess();
  sub_2E13C(v7);
  sub_12E1C(v7, &unk_E01230);
  sub_12E1C(v9, &unk_E01230);
  result = [a2 duration];
  v25 = a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration;
  v26 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration);
  v27 = *(a1 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration + 8);
  *v25 = v24;
  *(v25 + 8) = 0;
  if ((v27 & 1) != 0 || v26 != v24)
  {
    return sub_2E428();
  }

  return result;
}

uint64_t sub_191294()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1912D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191338()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

void sub_191468(unsigned __int8 a1)
{
  v1 = a1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  if (v1 == 1)
  {
    sub_37D3DC(0);
  }
}

uint64_t sub_1914D8(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191554()
{

  return swift_deallocObject();
}

void sub_1915B0()
{
  v1 = qword_DF3860;
  type metadata accessor for SortOptionsController();
  swift_allocObject();
  *(v0 + v1) = sub_225174(&off_CF0478, 0, 0);
  *(v0 + qword_DF3868) = 0;
  *(v0 + qword_DF3870) = 0;
  sub_ABAFD0();
  __break(1u);
}

char *sub_19166C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlaying] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingSubscription] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingItemHasVideo] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingItemHasTimeSyncedLyrics] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_urlBagObserver] = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager;
  *&v0[v2] = [objc_opt_self() sharedManager];
  *&v0[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, "init");
  BagProvider.shared.unsafeMutableAddressor();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = BagProvider.createObserver(handler:)(sub_194824, v4);

  *&v3[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_urlBagObserver] = v5;

  *&v3[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingSubscription] = 0;

  return v3;
}

void sub_1917F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal];
    *&Strong[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted];
    *&v2[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted] = 0;
  }
}

uint64_t sub_1918AC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider____lazy_storage___musicRecognitionModuleContextProvider);
  }

  else
  {
    type metadata accessor for MusicRecognitionModuleContextProvider();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
    swift_beginAccess();
    *(v2 + 24) = &off_CFE6E8;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_191970(char a1, void *a2)
{
  v3 = v2;
  v6 = sub_AB7C10();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB7C50();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v3[OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager] setAccountNotificationsArtistContentFeature:a1 & 1 withCompletionHandler:0];
  sub_11BA4(&off_CF04A0);
  swift_arrayDestroy();
  isa = sub_AB9B30().super.isa;

  [a2 reportApplicationContextPropertiesDidChange:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3FA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v14 = JSCapabilitiesController.Notifications.UserInfoKeys.userOptInStatus.unsafeMutableAddressor();
  v16 = *v14;
  v15 = v14[1];
  *(inited + 32) = v16;
  *(inited + 40) = v15;
  *(inited + 48) = a1;

  v17 = sub_98594(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DF3FA8);
  sub_13C80(0, &qword_DE8ED0);
  v18 = sub_ABA150();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1947CC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_15_0;
  v20 = _Block_copy(aBlock);
  v21 = v3;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
  _Block_release(v20);
}

void sub_191D08(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = *JSCapabilitiesController.Notifications.libraryBannerOptInDidChangeNotification.unsafeMutableAddressor();
  sub_3E9030(a2);
  isa = sub_AB8FD0().super.isa;

  [v4 postNotificationName:v5 object:a1 userInfo:isa];
}

void sub_191DE0()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = LSApplicationWorkspace.openNotificationSettings()();

    if (!v6)
    {
      v7 = *OS_os_log.scripting.unsafeMutableAddressor();
      sub_AB4BD0();
      v8 = sub_AB4BA0();
      v9 = sub_AB9F30();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_0, v8, v9, "Error opening notification settings", v10, 2u);
      }

      (*(v1 + 8))(v3, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_191F80()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_19209C;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3F80);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_192638;
  v0[21] = &block_descriptor_57;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_19209C()
{

  return _swift_task_switch(sub_19217C, 0, 0);
}

uint64_t sub_19217C()
{
  v1 = v0[26];
  v0[28] = v1;
  v2 = [v1 authorizationStatus];
  if ((v2 - 2) >= 3)
  {
    if (v2 == &dword_0 + 1)
    {
      sub_AB9940();
      v0[30] = sub_AB9930();
      v8 = sub_AB98B0();

      return _swift_task_switch(sub_192550, v8, v7);
    }

    else if (v2)
    {
      return sub_ABAFD0();
    }

    else
    {
      v5 = v0[27];
      v0[10] = v0;
      v0[15] = v0 + 26;
      v0[11] = sub_1923E0;
      v6 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF3F88);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_19269C;
      v0[21] = &block_descriptor_5;
      v0[22] = v6;
      [v5 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

      return _swift_continuation_await(v0 + 10);
    }
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1923E0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1925C0;
  }

  else
  {
    v2 = sub_1924F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1924F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192550()
{
  sub_193FE4();

  return _swift_task_switch(sub_1924F0, 0, 0);
}

uint64_t sub_1925C0()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_192638(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_19269C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_192828(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0xD000000000000016;
  v11 = a1 == 0xD00000000000001DLL && 0x8000000000B553A0 == a2;
  if (v11 || (sub_ABB3C0() & 1) != 0)
  {
    v12 = [objc_opt_self() deviceMediaLibrary];
    if (v12)
    {
      v14 = v12;
      v15 = [v12 hasAddedToLibraryAppleMusicContent];
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_64;
  }

  if (a1 == 0xD000000000000014 && 0x8000000000B553C0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v17 = [objc_opt_self() deviceMediaLibrary];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 filterAvailableContentGroups:128 withOptions:2];

      v20 = v19 != 0;
LABEL_16:
      *(a3 + 24) = &type metadata for Bool;
      *a3 = v20;
      return;
    }

    __break(1u);
LABEL_72:
    if (a1 == v5 - 1 && 0x8000000000B55530 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v24 = [*JSAppReviewSegue.storeReview.unsafeMutableAddressor() shouldAttemptPromptReview];
      goto LABEL_34;
    }

    goto LABEL_77;
  }

  if (a1 == 0xD00000000000002BLL && 0x8000000000B553E0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v21 = [objc_opt_self() deviceMediaLibrary];
    if (!v21)
    {
      __break(1u);
LABEL_77:
      if (a1 == v5 + 5 && 0x8000000000B48750 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = [*(v3 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager) cachedAccountNotificationsShowInLibrarySwitch];
        v15 = [v14 isToggled];
        goto LABEL_9;
      }

      v4 = v5 + 10;
      if (a1 == v5 + 10 && 0x8000000000B48770 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = [*(v3 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_notificationSettingsManager) cachedAccountNotificationsShowInLibrarySwitch];
        v15 = [v14 hasBeenPreviouslyToggled];
        goto LABEL_9;
      }

      if (a1 == v5 && 0x8000000000B487A0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        static ApplicationCapabilities.shared.getter(v40);
        sub_70C54(v40);
        LOBYTE(v29) = BYTE1(v40[0]);
        goto LABEL_50;
      }

      v6 = v5 + 9;
      if (a1 == v5 + 9 && 0x8000000000B487C0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v33 = JSBridge.shared.unsafeMutableAddressor();
        v34 = *&stru_108.sectname[swift_isaMask & **v33];
        v35 = *v33;
        v32 = v34();
        *(a3 + 24) = &type metadata for Bool;

        goto LABEL_57;
      }

      goto LABEL_94;
    }

    v14 = v21;
    v15 = [v21 hasUserPlaylistsContainingAppleMusicContent];
LABEL_9:
    v16 = v15;
    *(a3 + 24) = &type metadata for Bool;

LABEL_10:
    *a3 = v16;
    return;
  }

  if (a1 == 0xD000000000000016 && 0x8000000000B55410 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v14 = [objc_opt_self() sharedController];
    v15 = [v14 isCloudLibraryEnabled];
    goto LABEL_9;
  }

  if (a1 == 0xD000000000000016 && 0x8000000000B55430 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    v22 = [objc_opt_self() sharedPrivacyInfo];
    v23 = [v22 privacyAcknowledgementRequiredForMusic];

    v20 = v23 ^ 1;
    goto LABEL_16;
  }

  if (a1 == 0x6961746552736168 && a2 == 0xEE00726566664F6CLL || (sub_ABB3C0() & 1) != 0)
  {
    v24 = [objc_opt_self() deviceOffersContainType:1];
LABEL_34:
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v24;
    return;
  }

  if ((a1 != 0xD00000000000001CLL || 0x8000000000B55450 != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v5 = 0xD000000000000016;
    if ((a1 != 0xD000000000000025 || 0x8000000000B55470 != a2) && (sub_ABB3C0() & 1) == 0)
    {
      if (a1 == 0xD000000000000026 && 0x8000000000B554A0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        LOBYTE(v29) = *(v3 + OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_nowPlayingItemHasTimeSyncedLyrics);
LABEL_50:
        *(a3 + 24) = &type metadata for Bool;
        *a3 = v29;
        return;
      }

      if (a1 == 0xD000000000000019 && 0x8000000000B554D0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        static ApplicationCapabilities.shared.getter(v40);
        v30 = v41;

        sub_70C54(v40);
        v31 = sub_472A84(2, v30);
LABEL_55:
        v32 = v31;
LABEL_56:

        *(a3 + 24) = &type metadata for Bool;
LABEL_57:
        *a3 = v32 & 1;
        return;
      }

      if (a1 == 0xD000000000000016 && 0x8000000000B554F0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        static ApplicationCapabilities.shared.getter(v40);
        sub_70C54(v40);
        v13 = v42;
        if (v42 <= 1u)
        {
LABEL_70:
          v31 = sub_ABB3C0();
          goto LABEL_55;
        }

LABEL_64:
        if (v13 == 2)
        {
          v32 = 1;
          goto LABEL_56;
        }

        goto LABEL_70;
      }

      v10 = 0xD000000000000011;
      if (a1 == 0xD000000000000011 && 0x8000000000B55510 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        ExplicitRestrictionsController.shared.unsafeMutableAddressor();

        v32 = ExplicitRestrictionsController.explicitContentIsAllowed.getter();
        *(a3 + 24) = &type metadata for Bool;

        goto LABEL_57;
      }

      goto LABEL_72;
    }

    v28 = [objc_opt_self() sharedCloudController];
    if (!v28)
    {
      __break(1u);
      goto LABEL_99;
    }

    v26 = v28;
    v27 = [v28 hasSetPreferenceForAutomaticDownloads];
LABEL_40:
    v16 = v27;

    *(a3 + 24) = &type metadata for Bool;
    goto LABEL_10;
  }

  v25 = [objc_opt_self() sharedCloudController];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 isAutomaticDownloadsEnabled];
    goto LABEL_40;
  }

  __break(1u);
LABEL_94:
  if (a1 == v4 && 0x8000000000B48860 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    sub_1918AC();
    v36 = MusicRecognitionModuleContextProvider.enabledState.getter();

    v20 = v36 == 2;
    goto LABEL_16;
  }

LABEL_99:
  if (a1 == v6 && 0x8000000000B55550 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    v29 = (DWORD2(v40[0]) >> 7) & 1;
    goto LABEL_50;
  }

  if (a1 == v4 && 0x8000000000B55570 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    v37 = BYTE8(v40[0]);
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v37 & 1;
  }

  else if (a1 == v5 + 13 && 0x8000000000B555A0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    v38 = BYTE8(v40[0]);
    *(a3 + 24) = &type metadata for Bool;
    *a3 = (v38 & 2) != 0;
  }

  else if (a1 == v10 && 0x8000000000B555D0 == a2 || (sub_ABB3C0() & 1) != 0)
  {
    static ApplicationCapabilities.shared.getter(v40);
    sub_70C54(v40);
    if (v42 > 2u)
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_ABB3C0();
    }

    *(a3 + 24) = &type metadata for Bool;
    *a3 = v39 & 1;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

void sub_19358C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  if (*(a2 + 16))
  {
    v7 = sub_2EBF88(0x696669746E656469, 0xEA00000000007265);
    if (v8)
    {
      sub_808B0(*(a2 + 56) + 32 * v7, v18);
      if (swift_dynamicCast())
      {
        v9 = sub_19442C(v17[0], v17[1]);
        if (v9 > 1)
        {
          if (v9 != 2)
          {
            if (v9 == 3)
            {
              sub_1918AC();
              sub_3120E4();
            }

            return;
          }

          v12 = 0;
LABEL_14:
          sub_191970(v12, a1);
          return;
        }

        if (v9)
        {
          v13 = [objc_opt_self() currentNotificationCenter];
          v14 = sub_AB9990();
          (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
          v15 = swift_allocObject();
          v15[2] = 0;
          v15[3] = 0;
          v15[4] = v13;
          sub_DBDC8(0, 0, v6, &unk_B01C90, v15);

          sub_13C80(0, &qword_DF0600);
          v16 = static ICUserIdentityStore.activeAccountDSID.getter();
          if (!v16)
          {
            return;
          }

          v12 = 1;
          goto LABEL_14;
        }

        v10 = [objc_opt_self() sharedCloudController];
        if (v10)
        {
          v11 = v10;
          [v10 enableAutomaticDownloadsWithCompletionHandler:0];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_193888(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v27) = 4;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v28);
  if (*(&v29 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_12E1C(&v28, &unk_DE8E40);
  }

  if (a1 == 1)
  {
    v5 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted;
  }

  else
  {
    v5 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal;
  }

  v6 = *(v2 + *v5);
  if (v6)
  {

    return v6;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v8 = BagProvider.bag.getter();

  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = [v8 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (v9)
  {
    v10 = v9;
    v11 = sub_AB8FF0();

    v12 = sub_16A5E8(v11);

    if (v12)
    {
      if (!*(v12 + 16) || (v13 = sub_2EBF88(0xD00000000000001FLL, 0x8000000000B551F0), (v14 & 1) == 0) || (sub_808B0(*(v12 + 56) + 32 * v13, &v28), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680), (swift_dynamicCast() & 1) == 0))
      {

LABEL_23:

        goto LABEL_24;
      }

      v15 = sub_193EB8(a1);
      if (v16)
      {
        if (*(*&v27 + 16) && (v17 = sub_2EBF88(v15, v16), (v18 & 1) != 0))
        {
          sub_808B0(*(*&v27 + 56) + 32 * v17, &v28);
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        if (*(&v29 + 1))
        {
          if (swift_dynamicCast())
          {
            if (*(*&v27 + 16))
            {
              v20 = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B55210);
              if (v21)
              {
                sub_808B0(*(*&v27 + 56) + 32 * v20, &v28);
                if (swift_dynamicCast())
                {
                  v22 = [objc_allocWithZone(IAMPresentationPolicy) initWithMinimumIntervalBetweenPresentations:a1 forPresentationPolicyGroup:v27];
                  if (a1 == 1)
                  {
                    v23 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyRestricted;
                  }

                  else
                  {
                    v23 = &OBJC_IVAR____TtC16MusicApplication31MusicApplicationContextProvider_cachedPresentationPolicyNormal;
                  }

                  v24 = *v23;
                  v25 = *(v2 + v24);
                  *(v2 + v24) = v22;
                  v26 = v22;

                  return v26;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          sub_12E1C(&v28, &unk_DE8E40);
        }
      }

LABEL_40:

      goto LABEL_23;
    }
  }

LABEL_24:
  if (a1 == 1)
  {
    v19 = 8600.0;
  }

  else
  {
    v19 = -1.0;
  }

  return [objc_allocWithZone(IAMPresentationPolicy) initWithMinimumIntervalBetweenPresentations:a1 forPresentationPolicyGroup:v19];
}

double sub_193E0C()
{
  v1[0] = 0xD00000000000001CLL;
  v1[1] = 0x8000000000B551D0;
  sub_36A48();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return *v1;
    }
  }

  else
  {
    sub_12E1C(&v2, &unk_DE8E40);
  }

  return 0.0;
}

uint64_t sub_193EB8(uint64_t a1)
{
  if (!a1)
  {
    return 0x6C616D726F6ELL;
  }

  if (a1 == 1)
  {
    return 0x7463697274736572;
  }

  sub_ABAD90(24);
  v2._object = 0x8000000000B4AB80;
  v2._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v2);
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000000B55270;
  sub_AB94A0(v3);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_AB94A0(v4);
  type metadata accessor for IAMPresentationPolicyGroup(0);
  sub_ABAF70();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_193FE4()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v2 = sub_AB9260();

  v3 = sub_AB9260();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  aBlock[4] = sub_191DE0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_8_0;
  v6 = _Block_copy(aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:0 handler:v6];
  _Block_release(v6);

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v9 = sub_AB9260();

  v10 = [v7 actionWithTitle:v9 style:1 handler:0];

  [v4 addAction:v8];
  [v4 addAction:v10];
  [v4 setPreferredAction:v8];
  sub_D5B6C();
  if (!v11)
  {
    memset(v13, 0, sizeof(v13));
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_5;
  }

  v12 = v11;
  static PresentationSource.topmost(in:)(v13);

  if (v14 == 1)
  {
LABEL_5:

    sub_12E1C(v13, &unk_DEA520);
    goto LABEL_6;
  }

  sub_17704(v13, aBlock);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v4, 1, 1, 0, 0);

  sub_1611C(aBlock);
LABEL_6:
}

uint64_t sub_19442C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF04E0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_194478(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6900 != -1)
  {
    swift_once();
  }

  v6 = *(qword_E71090 + OBJC_IVAR____TtC16MusicApplication29ApplicationMessageCoordinator_messageCoordinator);
  if (v6)
  {
    v7 = v6;
    sub_11BA4(&off_CF0560);
    sub_E17A4(&unk_CF0580);
    isa = sub_AB9B30().super.isa;

    [v7 reportApplicationContextPropertiesDidChange:isa];
  }

  v9 = *OS_os_log.scripting.unsafeMutableAddressor();
  sub_AB4BD0();
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_0, v10, v11, "Reporting context property did change for: canShowMusicRecognitionPromotion = %lu", v12, 0xCu);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_194680()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1946C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_191F60(a1, v4, v5, v6);
}

uint64_t sub_19478C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_13_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1947EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1948C4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_DF4018);
  v4 = *(v2 + qword_DF4018);
  *v3 = a1;
  v3[1] = a2;
  return sub_17654(v4);
}

void sub_19490C(char a1, char a2)
{
  v3 = a1 & 1;
  if (v2[qword_DF4030] != (a1 & 1))
  {
    v2[qword_DF4030] = v3;
    if (a2)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      v11[4] = sub_1960A0;
      v11[5] = v5;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1B5EB4;
      v11[3] = &block_descriptor_58;
      v6 = _Block_copy(v11);
      v7 = v2;

      [v4 animateWithDuration:v6 animations:0 completion:0.25];
      _Block_release(v6);
    }

    else
    {
      if (a1)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 1.0;
      }

      if (a1)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      [*&v2[qword_DF4070] setAlpha:v8];
      [*&v2[qword_DF4068] setAlpha:v8];
      v10 = *&v2[qword_DF4078];

      [v10 setAlpha:v9];
    }
  }
}

void (*sub_194AC4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_194B28;
}

void sub_194B28(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_195434();
  }
}

double sub_194B5C(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + 80);
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return (*(v8 + 8))(a1, v7, v8, a2, a3);
  }

  (*(v3 + 352))(a1, a2, a3);
  return a2;
}

char *sub_194C1C(double a1, double a2, double a3, double a4)
{
  v9 = swift_isaMask & *v4;
  v10 = (v4 + qword_DF4018);
  *v10 = 0;
  v10[1] = 0;
  *(v4 + qword_DF4020) = 1;
  *(v4 + qword_DF4028) = 1;
  *(v4 + qword_DF4030) = 0;
  v11 = v4 + qword_DF4038;
  *v11 = 0;
  v11[8] = 1;
  *(v4 + qword_DF4040) = 0;
  v12 = qword_DF4048;
  *(v4 + v12) = [objc_opt_self() buttonWithType:0];
  *(v4 + qword_DF4050) = 0;
  *(v4 + qword_DF4058) = 0;
  *(v4 + qword_DF4060) = 0;
  v13 = qword_DF4068;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  v15 = qword_E718B0;
  [v14 setBackgroundColor:qword_E718B0];
  [v14 setHidden:1];
  *(v4 + v13) = v14;
  v16 = qword_DF4070;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setBackgroundColor:v15];
  [v17 setHidden:1];
  *(v4 + v16) = v17;
  v18 = qword_DF4078;
  v19 = [objc_allocWithZone(UIView) init];
  v20 = [objc_opt_self() tertiarySystemFillColor];
  [v19 setBackgroundColor:v20];

  [v19 setAlpha:0.0];
  *(v4 + v18) = v19;
  v21 = *(v9 + 80);
  *(v4 + qword_DF4010) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{a1, a2, a3, a4}];
  v39.receiver = v4;
  v39.super_class = type metadata accessor for SelectableReusableView();
  v22 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v23 = *&v22[qword_DF4078];
  v24 = v22;
  [v24 addSubview:v23];
  [v24 addSubview:*&v24[qword_DF4010]];
  [v24 addSubview:*&v24[qword_DF4070]];
  [v24 addSubview:*&v24[qword_DF4068]];
  v25 = qword_DF4048;
  [v24 addSubview:*&v24[qword_DF4048]];
  [*&v24[v25] setIsAccessibilityElement:0];
  v26 = *&v24[v25];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  *(v28 + 24) = v27;
  type metadata accessor for ControlEventHandler();
  swift_allocObject();
  v29 = sub_33094();
  v30 = v24;
  *&v30[qword_DF4050] = ControlEventHandler.init<A>(control:events:handler:)(v26, 17, sub_195FE8, v28, v29);

  v31 = *&v24[v25];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v21;
  *(v33 + 24) = v32;
  swift_allocObject();
  *&v30[qword_DF4058] = ControlEventHandler.init<A>(control:events:handler:)(v31, 480, sub_196040, v33, v29);

  v34 = *&v24[v25];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = v34;

  v37 = swift_allocObject();
  *(v37 + 16) = v21;
  *(v37 + 24) = v35;
  swift_allocObject();
  *&v30[qword_DF4060] = ControlEventHandler.init<A>(control:events:handler:)(v36, 64, sub_196060, v37, v29);

  return v30;
}

void sub_195198(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_19490C(a4 & 1, 1);
  }
}

void sub_1951F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_DF4018);
    if (v2)
    {
      sub_307CC(*(Strong + qword_DF4018));
      v2(v1);
      sub_17654(v2);
    }
  }
}

id sub_1952D8(uint64_t a1, char a2)
{
  v3 = *(a1 + qword_DF4070);
  if (a2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (a2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [v3 setAlpha:v4];
  [*(a1 + qword_DF4068) setAlpha:v4];
  v6 = *(a1 + qword_DF4078);

  return [v6 setAlpha:v5];
}

void sub_19536C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SelectableReusableView();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[qword_DF4018];
  v2 = *&v0[qword_DF4018];
  *v1 = 0;
  *(v1 + 1) = 0;
  sub_17654(v2);
  sub_19490C(0, 0);
}

void sub_1953EC(void *a1)
{
  v1 = a1;
  sub_19536C();
}

void sub_195434()
{
  v1 = *(v0 + qword_DF4010);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = v2;
    ObjectType = swift_getObjectType();
    v6 = qword_DF4040;
    swift_beginAccess();
    v7 = *(v0 + v6);
    v8 = *(v4 + 16);

    v9 = v1;
    v8(v7, ObjectType, v4);
  }
}

double sub_195508(double a1, double a2)
{
  swift_getObjectType();
  v5 = [v2 traitCollection];
  v6 = sub_194B5C(v5, a1, a2);

  return v6;
}

double sub_195588(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_195508(a2, a3);

  return v6;
}

id sub_1955DC()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for SelectableReusableView();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 music_inheritedLayoutInsets];
  v29 = v13;
  v30 = v12;
  [v0 effectiveUserInterfaceLayoutDirection];
  [*&v0[qword_DF4010] setFrame:{v5, v7, v9, v11}];
  [*&v0[qword_DF4078] setFrame:{v5, v7, v9, v11}];
  [*&v0[qword_DF4048] setFrame:{v5, v7, v9, v11}];
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  Width = CGRectGetWidth(v32);
  v15 = 1.0 / v3;
  v16 = UIEdgeInsetsInsetRect(0.0, 0.0, Width, v15, v30, v29);
  v27 = v17;
  v28 = v16;
  v19 = v18;
  v26 = v20;
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  Height = CGRectGetHeight(v33);
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = Width;
  v34.size.height = v15;
  v22 = Height - CGRectGetHeight(v34);
  v35.origin.x = v28;
  v35.origin.y = v19;
  v35.size.width = v27;
  v35.size.height = v26;
  CGRectOffset(v35, 0.0, v22);
  v23 = *&v0[qword_DF4070];
  sub_ABA490();
  [v23 setFrame:?];

  v24 = *&v0[qword_DF4068];
  sub_ABA490();
  [v24 setFrame:?];

  [v0 bringSubviewToFront:*&v0[qword_DF4070]];
  [v0 bringSubviewToFront:*&v0[qword_DF4068]];
  [v0 bringSubviewToFront:*&v0[qword_DF4048]];
  return [v0 sendSubviewToBack:*&v0[qword_DF4078]];
}

void sub_195918(void *a1)
{
  v1 = a1;
  sub_1955DC();
}

id sub_195960()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectableReusableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1959BC(uint64_t a1)
{
  sub_17654(*(a1 + qword_DF4018));

  v2 = *(a1 + qword_DF4078);
}

uint64_t getEnumTagSinglePayload for PromotionalParallaxPreferredHeightStyle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PromotionalParallaxPreferredHeightStyle(uint64_t result, int a2, int a3)
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

uint64_t sub_195AF4(uint64_t a1)
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

uint64_t sub_195B10(uint64_t result, int a2)
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

uint64_t sub_195B40()
{
  sub_195D04();
}

uint64_t sub_195B68(uint64_t a1)
{
  sub_195C9C(a1);
}

void (*sub_195BA0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_194AC4(v2);
  return sub_A8F90;
}

BOOL sub_195C14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  sub_7FD28();
  return sub_AB38E0() & 1;
}

void sub_195C9C(uint64_t a1)
{
  v3 = qword_DF4040;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_195434();
}

uint64_t sub_195D04()
{
  v1 = qword_DF4040;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_195D48()
{
  v1 = (v0 + qword_DF4018);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_DF4020) = 1;
  *(v0 + qword_DF4028) = 1;
  *(v0 + qword_DF4030) = 0;
  v2 = v0 + qword_DF4038;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + qword_DF4040) = 0;
  v3 = qword_DF4048;
  *(v0 + v3) = [objc_opt_self() buttonWithType:0];
  *(v0 + qword_DF4050) = 0;
  *(v0 + qword_DF4058) = 0;
  *(v0 + qword_DF4060) = 0;
  v4 = qword_DF4068;
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C70 != -1)
  {
    swift_once();
  }

  v6 = qword_E718B0;
  [v5 setBackgroundColor:qword_E718B0];
  [v5 setHidden:1];
  *(v0 + v4) = v5;
  v7 = qword_DF4070;
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setBackgroundColor:v6];
  [v8 setHidden:1];
  *(v0 + v7) = v8;
  v9 = qword_DF4078;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = [objc_opt_self() tertiarySystemFillColor];
  [v10 setBackgroundColor:v11];

  [v10 setAlpha:0.0];
  *(v0 + v9) = v10;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_195FB0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_196008()
{

  return swift_deallocObject();
}

uint64_t sub_196068()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1960D0(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponseInvalidationObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileDidUpdateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_userSocialProfileDidChangeObserver) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *(v1 + v3) = sub_49F63C(0, 0, 0);
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_lastSeenScrollableHeight) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack) = a1;
  v4 = a1;
  v5 = JSVerticalStack.childViewModelKinds.getter();
  v6 = sub_9F704(v5);
  v7 = &v4[OBJC_IVAR____TtC11MusicJSCore15JSVerticalStack_delegate];
  swift_beginAccess();
  *(v7 + 1) = &off_D0CED8;
  swift_unknownObjectWeakAssign();
  v8 = v6;
  v9 = [v8 navigationItem];
  v10 = [v8 parentViewController];
  if (v10)
  {
    v11 = v10;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v12 = v11;
      v13 = [v12 navigationItem];

      v11 = [v12 parentViewController];
      v9 = v13;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = v9;
LABEL_8:
  v14 = sub_387998();
  if (v14 <= 1)
  {
    if (v14)
    {

      goto LABEL_18;
    }
  }

  else if (v14 != 2 && v14 != 3)
  {
    goto LABEL_14;
  }

  v15 = sub_ABB3C0();

  if ((v15 & 1) == 0)
  {
LABEL_14:
    if (qword_DE6B20 != -1)
    {
      swift_once();
    }

    v16 = qword_E01290;
    v17 = sub_AB9260();
    objc_setAssociatedObject(v13, v16, v17, &dword_0 + 1);

    [v13 _setManualScrollEdgeAppearanceEnabled:0];
    [v13 _setAutoScrollEdgeTransitionDistance:0.0];
    [v13 _setManualScrollEdgeAppearanceEnabled:1];
    [v13 _setManualScrollEdgeAppearanceProgress:0.0];
  }

LABEL_18:
  return v8;
}

void sub_196458()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController];
  v2[6] = &off_CFEA78;
  swift_unknownObjectWeakAssign();
  sub_49D8B4(1);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v2[7];
  v2[7] = sub_199990;
  v2[8] = v3;

  sub_17654(v4);

  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  v5 = qword_E70D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8);
  UnfairLock.locked<A>(_:)(sub_199998);
  if (v24)
  {
    v6 = *JSSocialProfile.NotificationNames.didUpdate.unsafeMutableAddressor();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = v6;
    v9 = v24;
    *&v1[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileDidUpdateObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v8, v24, 1, 1, sub_1999B4, v7);

    type metadata accessor for JSSocialProfileVerticalStack();
    v10 = swift_dynamicCastClassUnconditional();
    v11 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_profile;
    swift_beginAccess();
    v12 = *(v10 + v11);
    if (!v12)
    {
LABEL_11:

      goto LABEL_16;
    }

    v13 = v12;
    v14 = JSSocialProfile.profileID.getter();
    v16 = v15;
    if (v14 == JSSocialProfile.profileID.getter() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_ABB3C0();

      if ((v19 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    if (qword_DE67B0 != -1)
    {
      swift_once();
    }

    v20 = qword_E70D40;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v22 = v20;

    v23 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v22, v5, 1, 1, sub_1999D0, v21);

    *&v1[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_userSocialProfileDidChangeObserver] = v23;
  }

LABEL_16:
  sub_196950();
}

void sub_196818()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
        v4 = [v3 windowScene];

        if (v4)
        {
          swift_beginAccess();
          v5 = swift_unknownObjectWeakLoadStrong();
          if (v5)
          {
            v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack);
            v7 = v5;
            type metadata accessor for JSSocialProfileVerticalStack();
            swift_dynamicCastClassUnconditional();
            v8 = v6;

            sub_414CF0(v4);
            v4 = v8;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_196950()
{
  type metadata accessor for JSSocialProfileVerticalStack();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_profile;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = type metadata accessor for JSSocialProfileModelRequest();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile;
    *&v5[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile] = 0;
    *&v5[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse] = 0;
    *&v5[v6] = v3;
    v19.receiver = v5;
    v19.super_class = v4;
    v7 = v3;
    v8 = objc_msgSendSuper2(&v19, "init");
    sub_13C80(0, &qword_DED7C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = v8;
    v12 = [v10 kindWithModelClass:ObjCClassFromMetadata];
    [v11 setItemKind:v12];

    if (qword_DE6928 != -1)
    {
      swift_once();
    }

    [v11 setItemProperties:qword_DF4100];

    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    *(v13 + 24) = v7;
    aBlock[4] = sub_19992C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_140_0;
    v14 = _Block_copy(aBlock);
    v15 = v7;
    v16 = v0;

    [v11 performWithResponseHandler:v14];
    _Block_release(v14);
  }

  else
  {
    v17 = *&v0[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse];
    *&v0[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse] = 0;

    sub_198000();
  }
}

void sub_196BC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack);
    v2 = Strong;
    type metadata accessor for JSSocialProfileVerticalStack();
    swift_dynamicCastClassUnconditional();
    v3 = v1;

    JSSocialProfileVerticalStack.didUpdateProfile()();
  }
}

uint64_t sub_196CAC(void *a1)
{
  v2 = v1;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  result = __chkstk_darwin(v5 - 8);
  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  if (!v7)
  {
    return result;
  }

  v8 = *(v7 + OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_promotionalParallaxContentView);
  if (!v8)
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler;
  *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler) = 0;
  v10 = v8;

  v111 = v10;
  if (a1)
  {
    v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController);
    v12 = a1;
    v109 = a1;
    sub_49D948(a1);
    v13 = *(v11 + 160);
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v110 = v12;
    if ([v12 pendingRequestsCount] >= 1 && (type metadata accessor for JSSocialProfileVerticalStack(), v14 = swift_dynamicCastClassUnconditional(), v15 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_followRequestsLink, swift_beginAccess(), (v16 = *(v14 + v15)) != 0))
    {
      v17 = type metadata accessor for SocialProfileHeaderRow();
      v18 = objc_allocWithZone(v17);
      v108 = v16;
      v19 = [v18 init];
      sub_AB91E0();
      sub_AB3550();
      v20 = sub_AB9320();
      v21 = &v19[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v22 = *&v19[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v23 = *&v19[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8];
      *v21 = v20;
      v21[1] = v24;
      sub_459108(v22, v23);

      v25 = [v12 pendingRequestsCount];
      v26 = *&v19[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue];
      *&v19[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] = v25;
      if (v25 != v26)
      {
        sub_30D14(v25);
        [v19 setNeedsLayout];
      }

      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = v108;
      v28[4] = v12;
      type metadata accessor for ControlEventHandler();
      swift_allocObject();
      v29 = v12;
      v30 = v108;
      v31 = v19;
      *(v2 + v9) = ControlEventHandler.init<A>(control:events:handler:)(v31, 64, sub_1999F0, v28, v17);

      v32 = v31;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v12 = v110;
    }

    else
    {
      *(v2 + v9) = 0;
    }

    if (qword_DE6BE8 != -1)
    {
      swift_once();
    }

    if ((sub_43D968(v12) & 1) == 0)
    {
      goto LABEL_25;
    }

    v33 = [objc_allocWithZone(type metadata accessor for SocialProfileFollowRequestConfirmationView()) init];
    v34 = v12;
    v35 = [v34 name];
    if (v35)
    {
      v36 = v35;
      v37 = sub_AB92A0();
      v39 = v38;
    }

    else
    {

      v40 = [v34 handle];
      if (!v40)
      {
        v37 = 0;
        v39 = 0xE000000000000000;
        goto LABEL_22;
      }

      v36 = v40;
      v37 = sub_AB92A0();
      v39 = v41;
    }

LABEL_22:
    v42 = &v33[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
    v43 = *&v33[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
    v44 = *&v33[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName + 8];
    *v42 = v37;
    v42[1] = v39;
    sub_31E48(v43, v44);

    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v34;
    v47 = &v33[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler];
    v48 = *&v33[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler];
    *v47 = sub_1997DC;
    v47[1] = v46;
    v49 = v34;

    sub_17654(v48);

    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v49;
    v52 = &v33[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler];
    v53 = *&v33[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler];
    *v52 = sub_1997E4;
    v52[1] = v51;
    v54 = v49;

    sub_17654(v53);

    v55 = v33;
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();

    v12 = v110;
LABEL_25:
    type metadata accessor for JSSocialProfileVerticalStack();
    v56 = swift_dynamicCastClassUnconditional();
    v57 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_artistPageLink;
    swift_beginAccess();
    v58 = *(v56 + v57);
    if (v58)
    {
      v59 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_artistPageLinkTitle);
      swift_beginAccess();
      v60 = *v59;
      v61 = v59[1];
      v62 = type metadata accessor for SocialProfileHeaderRow();
      v63 = objc_allocWithZone(v62);
      v64 = v58;

      v65 = [v63 init];
      v66 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v66 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (!v66)
      {

        sub_AB91E0();
        sub_AB3550();
        v60 = sub_AB9320();
        v61 = v67;
      }

      a1 = v109;
      v68 = &v65[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v69 = *&v65[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
      v70 = *&v65[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8];
      *v68 = v60;
      v68[1] = v61;
      sub_459108(v69, v70);

      v71 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = swift_allocObject();
      v72[2] = v71;
      v72[3] = v64;
      v72[4] = v110;
      type metadata accessor for ControlEventHandler();
      swift_allocObject();
      v73 = v110;
      v74 = v64;
      v75 = v65;
      *(v2 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = ControlEventHandler.init<A>(control:events:handler:)(v75, 64, sub_1997B8, v72, v62);

      v76 = v75;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();

      v10 = v111;
    }

    else
    {

      *(v2 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = 0;

      v10 = v111;
      a1 = v109;
    }
  }

  v77 = *&v10[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent];

  v78 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v79 = *v78;
  v80 = v78[1];
  v81 = v78[2];
  v82 = v78[3];
  v83 = *(v78 + 2);
  v84 = *(v77 + 184);
  v85 = *(v77 + 152);
  v112[1] = *(v77 + 168);
  v112[2] = v84;
  v112[0] = v85;
  *(v77 + 152) = v79;
  *(v77 + 160) = v80;
  *(v77 + 168) = v81;
  *(v77 + 176) = v82;
  *(v77 + 184) = v83;
  v86 = v81;
  v87 = v82;
  v88 = v79;
  v89 = v80;
  v90 = v86;
  v91 = v87;
  v92 = v88;
  v93 = v89;
  sub_75948(v112);
  sub_12E1C(v112, &unk_DF8690);

  if (a1)
  {
    a1 = sub_272C0C();
    v95 = v94;
    v97 = v96;
    v99 = v98;
  }

  else
  {
    v95 = 0;
    v97 = 0;
    v99 = 0;
  }

  type metadata accessor for ArtworkComponentImageView();
  v100 = swift_dynamicCastClass();
  if (v100)
  {
    v101 = v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
    v102 = *(v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
    v103 = *(v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
    v104 = *(v100 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
    *v101 = a1;
    *(v101 + 8) = v95;
    *(v101 + 16) = v97;
    v105 = *(v101 + 24);
    *(v101 + 24) = v99;
    sub_7FCB4(a1);
    sub_7D6F4(v102, v103, v104, v105);
    v10 = v111;
    sub_7FCC4(v102);
  }

  sub_7FCC4(a1);

  v106 = *&v10[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_additionalContentStackView];
  v107 = *(v106 + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews);
  *(v106 + OBJC_IVAR____TtC16MusicApplication35PromotionalParallaxContentStackView_arrangedSubviews) = _swiftEmptyArrayStorage;
  sub_34AB20(v107);
}

void sub_197800()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = &v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
    *v3 = sub_1999FC;
    *(v3 + 1) = v2;
    v5 = v1;

    sub_17654(v4);
  }
}

void *sub_1978C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  v2 = v1;
  return v1;
}

void sub_1978FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse);
      if (v4)
      {
        v5 = [v4 results];
        if (!v5)
        {
          __break(1u);
          return;
        }

        v6 = v5;
        v7 = [v5 firstItem];

        if (v7)
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();

          if (!v8)
          {
            swift_unknownObjectRelease();
          }

          goto LABEL_10;
        }
      }
    }

    v8 = 0;
LABEL_10:
    sub_196CAC(v8);
  }
}

void sub_197A0C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController) = a1;
  v3 = a1;
  sub_A1C18(v2);

  sub_197800();
}

void (*sub_197A7C(void *a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_A2354(v3);
  return sub_197AF0;
}

void sub_197AF0(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_promotionalParallaxViewController);
    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = &v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
      v7 = *&v4[OBJC_IVAR____TtC16MusicApplication33PromotionalParallaxViewController_contentViewConfigurationHandler];
      *v6 = sub_199988;
      v6[1] = v5;
      v8 = v4;

      sub_17654(v7);
    }
  }

  free(v3);
}

void sub_197BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  isa = sub_AB9740().super.isa;
  v6 = objc_opt_self();
  v7 = [v6 propertySetWithProperties:isa];

  if (qword_DE6D58 != -1)
  {
    swift_once();
  }

  v8 = qword_E71A80;
  v9 = [v7 propertySetByCombiningWithPropertySet:v8];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF85F0;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_AB92A0();
  *(v10 + 56) = v12;
  v13 = sub_AB9740().super.isa;
  v14 = [v6 propertySetWithProperties:v13];

  v15 = [v9 propertySetByCombiningWithPropertySet:v14];
  qword_DF4100 = v15;
}

uint64_t sub_197DFC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a4;
  v7[4] = a1;
  v8 = a1;

  v9 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_19997C, v7);
}

void sub_197EE0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    type metadata accessor for JSSocialProfileVerticalStack();
    v7 = swift_dynamicCastClassUnconditional();
    v8 = OBJC_IVAR____TtC11MusicJSCore28JSSocialProfileVerticalStack_profile;
    swift_beginAccess();
    v9 = *(v7 + v8);
    if (v9)
    {
      v10 = v9 == a2;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (a3)
      {
        type metadata accessor for JSSocialProfileModelResponse();
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v12 = a3;
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = *&v6[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse];
      *&v6[OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse] = v11;
      v14 = v11;

      sub_198000();
      v6 = v14;
    }
  }
}

void sub_198000()
{
  v1 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse);
  if (v2)
  {
    v3 = v2;
    if ([v3 isValid])
    {
      v4 = MPModelResponseDidInvalidateNotification;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v2, 1, 1, sub_199A00, v5);
    }

    else
    {
      sub_196950();

      v2 = 0;
    }
  }

  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponseInvalidationObserver) = v2;

  v6 = *(v0 + v1);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [v6 results];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 firstItem];

  if (!v9)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v6 = 0;
  }

LABEL_11:
  v10 = v6;
  sub_196CAC(v6);
}

void sub_1981A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_196950();
  }
}

void sub_1981F8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_DE6BE8 != -1)
    {
      v25 = Strong;
      swift_once();
      Strong = v25;
    }

    v10 = qword_E71820;
    v11 = Strong;
    [a1 bounds];
    v37[0] = a1;
    v37[1] = v12;
    v37[2] = v13;
    v37[3] = v14;
    v37[4] = v15;
    v38 = 0;
    PresentationSource.Position.init(source:permittedArrowDirections:)(v37, 15, v29);
    v33[0] = v29[0];
    v33[1] = v29[1];
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v16 = a1;
    PresentationSource.init(viewController:position:)(v11, v33, v28);
    sub_13C80(0, &qword_DE8ED0);
    *v8 = sub_ABA150();
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v17 = sub_AB7CF0();
    (*(v6 + 8))(v8, v5);
    if (v17)
    {
      v18 = *(v10 + 16);
      sub_15F84(v28, v27, &unk_DEA520);
      v19 = swift_allocObject();
      *(v19 + 16) = v10;
      *(v19 + 24) = a3;
      sub_111814(v27, v19 + 32);
      *(v19 + 128) = v18;
      *(v19 + 136) = 0;
      *(v19 + 144) = 0;
      *(v19 + 152) = 0;
      v8 = v18;

      v20 = a3;
      v21 = sub_43D968(v20);
      v27[4] = sub_199A04;
      v27[5] = v19;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = sub_199560;
      v27[3] = &block_descriptor_134;
      v22 = _Block_copy(v27);

      [v8 acceptFollowRequestFromPerson:v20 completion:v22];
      _Block_release(v22);
      if (((v21 ^ sub_43D968(v20)) & 1) == 0)
      {

        sub_12E1C(v28, &unk_DEA520);
        goto LABEL_9;
      }

      v17 = [objc_opt_self() defaultCenter];
      if (qword_DE6BF8 == -1)
      {
LABEL_7:
        [v17 postNotificationName:qword_E71830 object:v10];

        sub_12E1C(v28, &unk_DEA520);

LABEL_9:
        v23 = *&v11[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack];
        type metadata accessor for JSSocialProfileVerticalStack();
        swift_dynamicCastClassUnconditional();
        v24 = v23;
        JSSocialProfileVerticalStack.didSelectApproveButton()();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }
}

void sub_198640(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_DE6BE8 != -1)
    {
      v25 = Strong;
      swift_once();
      Strong = v25;
    }

    v10 = qword_E71820;
    v11 = Strong;
    [a1 bounds];
    v37[0] = a1;
    v37[1] = v12;
    v37[2] = v13;
    v37[3] = v14;
    v37[4] = v15;
    v38 = 0;
    PresentationSource.Position.init(source:permittedArrowDirections:)(v37, 15, v29);
    v33[0] = v29[0];
    v33[1] = v29[1];
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v16 = a1;
    PresentationSource.init(viewController:position:)(v11, v33, v28);
    sub_13C80(0, &qword_DE8ED0);
    *v8 = sub_ABA150();
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v17 = sub_AB7CF0();
    (*(v6 + 8))(v8, v5);
    if (v17)
    {
      v18 = *(v10 + 16);
      sub_15F84(v28, v27, &unk_DEA520);
      v19 = swift_allocObject();
      *(v19 + 16) = v10;
      *(v19 + 24) = a3;
      sub_111814(v27, v19 + 32);
      *(v19 + 128) = v18;
      *(v19 + 136) = 1;
      *(v19 + 144) = 0;
      *(v19 + 152) = 0;
      v8 = v18;

      v20 = a3;
      v21 = sub_43D968(v20);
      v27[4] = sub_1997F0;
      v27[5] = v19;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = sub_199560;
      v27[3] = &block_descriptor_59;
      v22 = _Block_copy(v27);

      [v8 declineFollowRequestFromPerson:v20 completion:v22];
      _Block_release(v22);
      if (((v21 ^ sub_43D968(v20)) & 1) == 0)
      {

        sub_12E1C(v28, &unk_DEA520);
        goto LABEL_9;
      }

      v17 = [objc_opt_self() defaultCenter];
      if (qword_DE6BF8 == -1)
      {
LABEL_7:
        [v17 postNotificationName:qword_E71830 object:v10];

        sub_12E1C(v28, &unk_DEA520);

LABEL_9:
        v23 = *&v11[OBJC_IVAR____TtC16MusicApplication38JSVerticalStackViewModelViewController_verticalStack];
        type metadata accessor for JSSocialProfileVerticalStack();
        swift_dynamicCastClassUnconditional();
        v24 = v23;
        JSSocialProfileVerticalStack.didSelectDeclineButton()();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }
}

void sub_198A8C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v71 = a4;
  v72 = a3;
  v5 = sub_AB3430();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB3820();
  v69 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v70);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v20 - 8);
  v22 = &v63 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = Strong;
  v67 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v25 = v24;
  [a1 bounds];
  v87[0] = a1;
  v87[1] = v26;
  v87[2] = v27;
  v87[3] = v28;
  v87[4] = v29;
  v88 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v87, 15, v79);
  v83[0] = v79[0];
  v83[1] = v79[1];
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v30 = a1;
  v68 = v25;
  PresentationSource.init(viewController:position:)(v25, v83, v78);
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  (*(*(v31 - 8) + 56))(v22, 1, 1, v31);
  sub_15F84(v76, &v73, &unk_DE8E30);
  if (*(&v74 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v32 = _s30CollectionViewSelectionHandlerVMa();
    v33 = swift_dynamicCast();
    v34 = *(v32 - 8);
    (*(v34 + 56))(v13, v33 ^ 1u, 1, v32);
    v35 = (*(v34 + 48))(v13, 1, v32);
    v36 = v69;
    if (v35 != 1)
    {
      (*(v69 + 16))(v19, &v13[*(v32 + 20)], v7);
      sub_2D6C0(v13, _s30CollectionViewSelectionHandlerVMa);
      v37 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v73, &unk_DE8E30);
    v38 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
    v36 = v69;
  }

  sub_12E1C(v13, &qword_E037A0);
  v37 = 1;
LABEL_7:
  (*(v36 + 56))(v19, v37, 1, v7);
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39 && (v40 = v39, sub_12B2FC(), v42 = v41, v44 = v43, v40, v42))
  {
    ObjectType = swift_getObjectType();
    (*(v44 + 8))(ObjectType, v44);
    v47 = v46;
    swift_unknownObjectRelease();
    sub_15F84(v19, v17, &unk_DE8E20);
    if ((*(v36 + 48))(v17, 1, v7) == 1)
    {
      sub_12E1C(v17, &unk_DE8E20);
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    else
    {
      (*(v36 + 32))(v63, v17, v7);
      sub_2D668();
      sub_ABAD10();
    }

    v49 = swift_getObjectType();
    v50 = v64;
    sub_3B8F68();
    v48 = sub_21CCAC(1, v50, &v73, v49, v47);
    (*(v65 + 8))(v50, v66);
    sub_12E1C(&v73, &qword_DF2BD0);
    sub_12E1C(v19, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v19, &unk_DE8E20);
    v48 = 0;
  }

  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v53 = v22;
    sub_12AFE8();
    v55 = v54;
  }

  else
  {
    v53 = v22;
    v55 = 0;
  }

  sub_15F28(v78, &v73);
  sub_15F84(v76, (v10 + 104), &unk_DE8E30);
  v56 = v70;
  sub_15F84(v53, &v10[*(v70 + 28)], &unk_DEA510);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 1;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  *(v10 + 11) = 0;
  sub_2D594(&v73, v10);
  v57 = v56;
  v58 = v71;
  *(v10 + 12) = v71;
  v59 = *v67;
  *(&v74 + 1) = v57;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
  sub_2D604(v10, boxed_opaque_existential_0);
  v61 = v58;
  v62 = v59;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v72, 0, v48, v55, &v73);

  sub_12E1C(v53, &unk_DEA510);
  sub_12E1C(v76, &unk_DE8E30);
  sub_1611C(v78);
  sub_2D6C0(v10, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v73, &unk_DE8E40);
}

uint64_t sub_1992D4()
{
}

uint64_t type metadata accessor for JSSocialProfileVerticalStackViewController()
{
  result = qword_DF4168;
  if (!qword_DF4168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1994CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 160);
  [v4 bounds];
  v18[0] = v4;
  v18[1] = v5;
  v18[2] = v6;
  v18[3] = v7;
  v18[4] = v8;
  v19 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v18, 15, v10);
  v14[0] = v10[0];
  v14[1] = v10[1];
  v15 = v11;
  v16 = v12;
  v17 = v13;
  *&result = PresentationSource.init(viewController:position:)(v2, v14, a2).n128_u64[0];
  return result;
}

void sub_199560(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1995D8()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponseInvalidationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileDidUpdateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_userSocialProfileDidChangeObserver) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *(v0 + v1) = sub_49F63C(0, 0, 0);
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_pendingFollowRequestsControlEventHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_artistPageControlEventHandler) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_1996BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication42JSSocialProfileVerticalStackViewController_profileModelResponse);
  if (v1)
  {
    v2 = [v1 results];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    v4 = [v2 firstItem];

    if (!v4)
    {
      goto LABEL_6;
    }

    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
LABEL_6:
      v1 = 0;
    }
  }

  v5 = v1;
  sub_196CAC(v1);
}

uint64_t sub_19977C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_126Tm()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1998EC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_111Tm()
{

  return swift_deallocObject();
}

void sub_199A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF4EC0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  v3 = MPModelRelationshipPlaylistEntrySong;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v4;
  sub_13C80(0, &unk_DE8EB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = v3;
  v6 = [ObjCClassFromMetadata requiredStoreLibraryPersonalizationProperties];
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_AF85F0;
  v8 = MPModelRelationshipSongLocalFileAsset;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v9;
  v55 = objc_opt_self();
  v10 = v8;
  *(v7 + 48) = [v55 allSupportedProperties];
  v11 = MPModelRelationshipSongAlbum;
  *(v7 + 56) = sub_AB92A0();
  *(v7 + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF85F0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_AB92A0();
  *(v13 + 56) = v15;
  v16 = v11;
  isa = sub_AB9740().super.isa;
  v18 = [objc_opt_self() propertySetWithProperties:isa];

  *(v7 + 72) = v18;
  sub_96EA4(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MPPropertySet);
  v20 = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550);
  v21 = sub_AB8FD0().super.isa;

  v22 = [v19 initWithProperties:v20 relationships:v21];

  v23 = [v6 propertySetByCombiningWithPropertySet:v22];
  *(inited + 48) = v23;
  v24 = MPModelRelationshipPlaylistEntryMovie;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v25;
  sub_13C80(0, &unk_E03780);
  v26 = swift_getObjCClassFromMetadata();
  v56 = v24;
  v27 = [v26 requiredStoreLibraryPersonalizationProperties];
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_AF4EC0;
  v29 = MPModelRelationshipMovieLocalFileAsset;
  *(v28 + 32) = sub_AB92A0();
  *(v28 + 40) = v30;
  v31 = v29;
  *(v28 + 48) = [v55 allSupportedProperties];

  sub_96EA4(v28);
  swift_setDeallocating();
  sub_12E1C(v28 + 32, &unk_DE8E80);
  v32 = objc_allocWithZone(MPPropertySet);
  v33 = sub_AB9740().super.isa;
  v34 = sub_AB8FD0().super.isa;

  v35 = [v32 initWithProperties:v33 relationships:v34];

  v36 = [v27 propertySetByCombiningWithPropertySet:v35];
  *(inited + 72) = v36;
  v37 = MPModelRelationshipPlaylistEntryTVEpisode;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v38;
  sub_13C80(0, &unk_DE9C00);
  v39 = swift_getObjCClassFromMetadata();
  v54 = v37;
  v40 = [v39 requiredStoreLibraryPersonalizationProperties];
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_AF4EC0;
  v42 = MPModelRelationshipTVEpisodeLocalFileAsset;
  *(v41 + 32) = sub_AB92A0();
  *(v41 + 40) = v43;
  v44 = v42;
  *(v41 + 48) = [v55 allSupportedProperties];

  sub_96EA4(v41);
  swift_setDeallocating();
  sub_12E1C(v41 + 32, &unk_DE8E80);
  v45 = objc_allocWithZone(MPPropertySet);
  v46 = sub_AB9740().super.isa;
  v47 = sub_AB8FD0().super.isa;

  v48 = [v45 initWithProperties:v46 relationships:v47];

  v49 = [v40 propertySetByCombiningWithPropertySet:v48];
  *(inited + 96) = v49;

  sub_96EA4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v50 = objc_allocWithZone(MPPropertySet);
  v51 = sub_AB9740().super.isa;

  v52 = sub_AB8FD0().super.isa;

  v53 = [v50 initWithProperties:v51 relationships:v52];

  qword_DF4180 = v53;
}

uint64_t sub_19A1B8(void *a1)
{
  swift_getObjectType();
  v3 = (v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption) = 13;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled) = 0;

  swift_unknownObjectWeakDestroy();

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_19A2A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v11);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
    v6 = *&v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
    *&v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText + 8];
    v9 = &v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
    *v9 = *&v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
    v9[1] = v8;

    v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = v2[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption];
  }
}

uint64_t sub_19A400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  v13 = *(*a3 + 152);

  v14 = a1;
  swift_errorRetain();
  v13(a4, sub_AAED4, v12);
}

id sub_19A5E0(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = v5;
    if ([v6 storeID])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v13 = v15;
    v14 = v16;

    if (*(&v16 + 1))
    {
      sub_9ACFC(&v13, &v15);
      __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      sub_ABB3A0();
      v7 = MPStoreItemMetadataStringNormalizeStoreIDValue();
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_AB92A0();
        v10 = v9;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_AF4EC0;
        *(v11 + 32) = v8;
        *(v11 + 40) = v10;
        v12 = sub_19A78C(v11, v3);
        __swift_destroy_boxed_opaque_existential_0(&v15);

        return v12;
      }

      __swift_destroy_boxed_opaque_existential_0(&v15);
      return 0;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  sub_12E1C(&v13, &unk_DE8E40);
  return 0;
}

id sub_19A78C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
  [v3 setInGroupSession:0];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    isa = [Strong results];
    [v3 setSectionedModelObjects:isa];
  }

  else
  {
    isa = sub_AB9740().super.isa;
    [v3 setStoreIDs:isa];
  }

  v7 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
  [v7 setRequest:v3];
  [v7 setStartItemIdentifiers:a2];
  v8 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v8 setTracklistToken:v7];
  [v8 setTracklistSource:3];

  return v8;
}

id sub_19A9D0()
{
  result = [objc_allocWithZone(NSOperationQueue) init];
  qword_DF4188 = result;
  return result;
}

void sub_19AA04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_AB29F0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB2A00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isCancelled])
  {
    sub_AB29E0();
    sub_3F2834(_swiftEmptyArrayStorage);
    sub_1A4764();
    sub_AB3030();
    v8 = sub_AB29C0();
    (*(v5 + 8))(v7, v4);
    v9 = sub_AB3040();
    [v1 finishWithError:v9];

    (*&v1[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v8);
LABEL_15:

    return;
  }

  v84.receiver = v0;
  v84.super_class = ObjectType;
  objc_msgSendSuper2(&v84, "execute");
  v10 = *&v0[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_request];
  v11 = *&v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
  if (v11)
  {
    v8 = v11;
    v12 = [v10 sectionKind];
    if (v12)
    {
      v13 = v12;
      v75 = v10;
      [v12 modelClass];
      swift_getObjCClassMetadata();
      sub_13C80(0, &unk_DE8EA0);
      v14 = swift_dynamicCastMetatype();
      if (v14)
      {
        v73 = v5;
        __chkstk_darwin(v14);
        *(&v66 - 2) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40);
        UnfairLock.locked<A>(_:)(sub_1A2E00);
        if (!v79)
        {

          sub_12E1C(&aBlock, &unk_DE8E40);
          goto LABEL_14;
        }

        if (swift_dynamicCast())
        {
          v71 = v82;
          v72 = v83;
          v15 = [objc_allocWithZone(MPModelLibraryRequest) init];
          [v15 setSectionKind:v13];
          v16 = [v75 sectionProperties];
          if (!v16)
          {
            v16 = [objc_opt_self() emptyPropertySet];
          }

          v17 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
          v74 = [v16 propertySetByCombiningWithPropertySet:v17];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_AF4EC0;
          *(v18 + 32) = sub_AB92A0();
          *(v18 + 40) = v19;
          isa = sub_AB9740().super.isa;
          v21 = [objc_opt_self() propertySetWithProperties:isa];

          v22 = v74;
          v23 = [v74 propertySetByCombiningWithPropertySet:v21];

          [v15 setSectionProperties:v23];
          v24 = v75;
          v25 = [v75 itemKind];
          [v15 setItemKind:v25];

          v74 = v15;
          [v15 setWantsDetailedKeepLocalRequestableResponse:1];
          if (*&v24[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText + 8])
          {

            v26 = sub_AB9260();
          }

          else
          {
            v26 = 0;
          }

          v27 = v74;
          [v74 setFilterText:v26];

          v28 = v24[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption];
          if (v28 == 13)
          {
            v29 = 0;
          }

          else
          {
            SortOptions.SortType.sortDescriptors(for:)(194, v28);
            sub_13C80(0, &unk_DFDE50);
            v29 = sub_AB9740().super.isa;
            v27 = v74;
          }

          [v27 setItemSortDescriptors:v29];

          v30 = [v24 itemProperties];
          if (v30)
          {
            v31 = v72;
            if (qword_DE6930 != -1)
            {
              v65 = v30;
              swift_once();
              v30 = v65;
            }

            v32 = v30;
            v33 = [v30 propertySetByCombiningWithPropertySet:qword_DF4180];

            v27 = v74;
          }

          else
          {
            v33 = 0;
            v31 = v72;
          }

          [v27 setItemProperties:v33];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
          v34 = swift_allocObject();
          v69 = &v66;
          v70 = v34;
          v34[1] = xmmword_AF82B0;
          __chkstk_darwin(v34);
          *(&v66 - 2) = v71;
          *(&v66 - 1) = v31;
          v35 = objc_allocWithZone(MPIdentifierSet);
          v36 = swift_allocObject();
          *(v36 + 16) = sub_1A2E1C;
          *(v36 + 24) = &v66 - 4;
          v80 = sub_57B84;
          v81 = v36;
          aBlock = _NSConcreteStackBlock;
          v77 = 1107296256;
          v78 = sub_41A314;
          v79 = &block_descriptor_13_1;
          v37 = _Block_copy(&aBlock);

          v38 = v13;
          v39 = [v35 initWithModelKind:v38 block:v37];
          _Block_release(v37);

          LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

          if (v37)
          {
            __break(1u);
          }

          else
          {
            v70[4] = v39;
            sub_13C80(0, &unk_DE8180);
            v40 = sub_AB9740().super.isa;

            [v27 setAllowedSectionIdentifiers:v40];

            v41 = [v75 label];
            if (v41)
            {
              v42 = v41;
              v43 = sub_AB92A0();
              v39 = v44;
            }

            else
            {
              v39 = 0xE400000000000000;
              v43 = 1701736302;
            }

            v36 = v43;
            v70 = v38;
            if (qword_DE6940 == -1)
            {
              goto LABEL_30;
            }
          }

          swift_once();
LABEL_30:
          v45 = sub_AB4BC0();
          __swift_project_value_buffer(v45, qword_E71120);

          v46 = v72;

          v47 = sub_AB4BA0();
          v48 = sub_AB9F50();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v69 = v39;
            v50 = v49;
            v67 = swift_slowAlloc();
            aBlock = v67;
            *v50 = 136446466;
            v68 = v36;
            *(v50 + 4) = sub_425E68(v36, v69, &aBlock);
            *(v50 + 12) = 2082;
            v51 = v71;
            *(v50 + 14) = sub_425E68(v71, v46, &aBlock);
            _os_log_impl(&dword_0, v47, v48, "Request=(%{public}s) Attempting library request for playlist with storeID: %{public}s", v50, 0x16u);
            swift_arrayDestroy();
            v52 = v75;

            v39 = v69;

            v53 = v68;
          }

          else
          {

            v53 = v36;
            v52 = v75;
            v51 = v71;
          }

          v54 = swift_allocObject();
          v54[2] = v53;
          v54[3] = v39;
          v54[4] = v51;
          v54[5] = v46;
          v54[6] = v1;
          v54[7] = v52;
          v80 = sub_1A3B54;
          v81 = v54;
          aBlock = _NSConcreteStackBlock;
          v77 = 1107296256;
          v78 = sub_151E0;
          v79 = &block_descriptor_19_2;
          v55 = _Block_copy(&aBlock);
          v56 = v1;
          v57 = v52;
          v58 = v56;
          v59 = v57;

          v60 = v74;
          v61 = [v74 newOperationWithResponseHandler:v55];
          _Block_release(v55);
          if ([v58 isCancelled])
          {
            sub_AB29E0();
            sub_3F2834(_swiftEmptyArrayStorage);
            sub_1A4764();
            sub_AB3030();
            v62 = v60;
            v63 = sub_AB29C0();
            (*(v73 + 8))(v7, v4);
            v64 = sub_AB3040();
            [v58 finishWithError:v64];

            (*&v58[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v63);
            v8 = v70;
          }

          else
          {
            if (qword_DE6938 != -1)
            {
              swift_once();
            }

            [qword_DF4188 addOperation:v61];
          }

          goto LABEL_15;
        }
      }
    }

LABEL_14:
    sub_19BCA8();
    goto LABEL_15;
  }

  __break(1u);
}

void sub_19B630(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = v5;
    if ([v6 storeID])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    *a2 = v7;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }
}

uint64_t sub_19B6EC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A47F4;
  *(v7 + 24) = v6;
  v10[4] = sub_57B84;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_4522E8;
  v10[3] = &block_descriptor_33;
  v8 = _Block_copy(v10);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_19B84C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char *a7, void *a8)
{
  if (a1)
  {
    v32 = a1;
    v14 = [v32 results];
    if (!v14)
    {
      __break(1u);
      goto LABEL_26;
    }

    v15 = v14;
    v16 = [v14 numberOfSections];

    if (v16 >= 1)
    {
      v17 = [v32 results];

      if (v17)
      {
        v18 = [v17 firstSection];

        if (v18)
        {
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19)
          {
            v20 = v19;
            if (![v19 type] || objc_msgSend(v20, "type") == &dword_4 + 2)
            {
              v21 = objc_allocWithZone(type metadata accessor for JSContainerDetailModelResponse());
              v32 = v32;
              v22 = sub_1A3F30(a8, v32, 1, v21);
              [a7 finishWithError:0];
              (*&a7[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(v22, 0);
              swift_unknownObjectRelease();

LABEL_22:

              return;
            }
          }

          swift_unknownObjectRelease();
        }

        if (qword_DE6940 != -1)
        {
          swift_once();
        }

        v27 = sub_AB4BC0();
        __swift_project_value_buffer(v27, qword_E71120);

        v28 = sub_AB4BA0();
        v29 = sub_AB9F50();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v33 = v31;
          *v30 = 136446210;
          *(v30 + 4) = sub_425E68(a3, a4, &v33);
          _os_log_impl(&dword_0, v28, v29, "Request=(%{public}s) Skipping Library path — playlist type isn't regular or shared.", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
        }

        sub_19BCA8();
        goto LABEL_22;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v23 = sub_AB4BC0();
  __swift_project_value_buffer(v23, qword_E71120);

  v24 = sub_AB4BA0();
  v25 = sub_AB9F30();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v26 = 136446466;
    *(v26 + 4) = sub_425E68(a3, a4, &v33);
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_425E68(a5, a6, &v33);
    _os_log_impl(&dword_0, v24, v25, "Request=(%{public}s) Library request failed, no response or empty section returned for playlist with storeID: %{public}s, falling back to store lookup request", v26, 0x16u);
    swift_arrayDestroy();
  }

  sub_19BCA8();
}

void sub_19BCA8()
{
  v1 = sub_AB29F0();
  __chkstk_darwin(v1 - 8);
  v234 = &v217 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB2A00();
  v4 = __chkstk_darwin(v3);
  v244 = v0;
  v7 = *&v0[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_request];
  v228 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
  v8 = *&v7[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel];
  if (!v8)
  {
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v231 = &v217 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = v6;
  v233 = v4;
  sub_13C80(0, &qword_DE8E90);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v243 = v8;
  v241 = [ObjCClassFromMetadata requiredStoreLibraryPersonalizationProperties];
  sub_13C80(0, &unk_DE8EB0);
  v10 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  v263 = v10;
  v11 = objc_opt_self();
  v12 = [v11 emptyPropertySet];
  sub_13C80(0, &unk_DE9C00);
  v239 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  sub_13C80(0, &unk_E03780);
  v238 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  sub_13C80(0, &unk_DE8EA0);
  v13 = [swift_getObjCClassFromMetadata() requiredStoreLibraryPersonalizationProperties];
  v262 = v13;
  v261 = 0;
  v259 = 0;
  v260 = 0;
  v257 = 0;
  v258 = 0;
  v256 = &_swiftEmptySetSingleton;
  v229 = sub_98690(_swiftEmptyArrayStorage);
  v255 = v229;
  v14 = swift_allocObject();
  v236 = v14;
  v14[2].isa = _swiftEmptyArrayStorage;
  v235 = v14 + 2;
  v246 = v7;
  v15 = [v246 sectionKind];
  v240 = v12;
  v230 = v7;
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v15;
  [v15 modelClass];

  swift_getObjCClassMetadata();
  if (swift_dynamicCastMetatype())
  {
    v17 = v246;
    v18 = [v246 sectionProperties];
    if (v18)
    {
      v19 = v18;
      v20 = v241;
      v21 = [v241 propertySetByCombiningWithPropertySet:v18];

      v241 = v21;
    }

    v259 = sub_19D8E0;
    v260 = 0;
    v22 = [v17 itemKind];
    v237 = v13;
    if (v22)
    {
      v23 = v22;
      [v22 modelClass];

      swift_getObjCClassMetadata();
      if (swift_dynamicCastMetatype())
      {
        v24 = [v17 itemProperties];
        if (v24)
        {
          v25 = v24;
          v26 = [v10 propertySetByCombiningWithPropertySet:v24];

          v263 = v26;
          v226 = sub_19DA54;
          v257 = sub_19DA54;
          v258 = 0;
          v227 = sub_19D8E0;
          v10 = v26;
          goto LABEL_106;
        }

        v53 = sub_19DA54;
LABEL_28:
        v226 = v53;
        v257 = v53;
        v258 = 0;
        v42 = sub_19D8E0;
LABEL_105:
        v227 = v42;
LABEL_106:
        v245 = [objc_allocWithZone(MPMutableSectionedCollection) init];
        v242 = [objc_allocWithZone(MPMutableSectionedCollection) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF8600;
        *(inited + 32) = sub_AB92A0();
        v129 = v241;
        *(inited + 40) = v130;
        *(inited + 48) = v129;
        *(inited + 56) = sub_AB92A0();
        *(inited + 64) = v131;
        v132 = v10;
        *(inited + 72) = v10;
        *(inited + 80) = sub_AB92A0();
        *(inited + 88) = v133;
        v134 = v239;
        *(inited + 96) = v239;
        *(inited + 104) = sub_AB92A0();
        *(inited + 112) = v135;
        v136 = v238;
        *(inited + 120) = v238;
        *(inited + 128) = sub_AB92A0();
        *(inited + 136) = v137;
        v138 = v237;
        *(inited + 144) = v237;
        v241 = v129;
        v225 = v132;
        v139 = v134;
        v140 = v136;
        v141 = v138;
        sub_96EA4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
        swift_arrayDestroy();
        v142 = objc_allocWithZone(MPPropertySet);
        isa = sub_AB9740().super.isa;
        sub_13C80(0, &qword_DEA550);
        v144 = sub_AB8FD0().super.isa;

        v145 = [v142 initWithProperties:isa relationships:v144];

        v146 = v244;
        v147 = [v244 isCancelled];
        if (v147)
        {

          sub_AB29E0();
          sub_3F2834(_swiftEmptyArrayStorage);
          sub_1A4764();
          v148 = v231;
          v149 = v233;
          sub_AB3030();
          v150 = sub_AB29C0();
          (*(v232 + 8))(v148, v149);
          v151 = sub_AB3040();
          [v146 finishWithError:v151];

          (*&v146[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v150);

          sub_17654(v226);
          sub_17654(v227);

          return;
        }

        v229 = v139;
        v237 = v140;
        __chkstk_darwin(v147);
        v152 = v242;
        v154 = v245;
        v153 = v246;
        *(&v217 - 14) = v243;
        *(&v217 - 13) = v153;
        v227 = v155;
        *(&v217 - 12) = v155;
        *(&v217 - 11) = &v261;
        *(&v217 - 10) = v146;
        *(&v217 - 9) = &v259;
        *(&v217 - 8) = v152;
        *(&v217 - 7) = v154;
        *(&v217 - 6) = v235;
        *(&v217 - 5) = &v257;
        *(&v217 - 4) = &v256;
        *(&v217 - 3) = &v255;
        *(&v217 - 2) = &v263;
        *(&v217 - 1) = &v262;
        UnfairLock.locked<A>(_:)(sub_1A4888);
        v156 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v153 unpersonalizedContentDescriptors:v152];

        v157 = v156;
        v158 = [v153 itemProperties];
        if (v158)
        {
          if (qword_DE6930 != -1)
          {
            v216 = v158;
            swift_once();
            v158 = v216;
          }

          v159 = v158;
          v160 = [v158 propertySetByCombiningWithPropertySet:qword_DF4180];
        }

        else
        {
          v160 = 0;
        }

        [v157 setItemProperties:v160];

        [v157 setRepresentedObjects:v154];
        v161 = [v153 label];
        v239 = v157;
        if (v161)
        {
          v162 = v161;
          v238 = sub_AB92A0();
          v164 = v163;
        }

        else
        {
          v164 = 0xE400000000000000;
          v238 = 1701736302;
        }

        v165 = swift_allocObject();
        *(v165 + 16) = 0;
        *(v165 + 24) = 0;
        v166 = swift_allocObject();
        *(v166 + 16) = 0;
        v167 = (v166 + 16);
        *(v166 + 24) = 0;
        v168 = *&v230[v228];
        if (v168)
        {
          v169 = v166;
          v170 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
          swift_beginAccess();
          v171 = *(v168 + v170);
          if (!v171)
          {
LABEL_130:
            v182 = *(v235->isa + 2);
            if (v182)
            {
              v183 = v235->isa + 32;
              while ((*v183 & 1) != 0)
              {
                ++v183;
                if (!--v182)
                {
                  goto LABEL_146;
                }
              }

              if (qword_DE6940 != -1)
              {
                swift_once();
              }

              v184 = sub_AB4BC0();
              __swift_project_value_buffer(v184, qword_E71120);
              v185 = v245;

              v186 = sub_AB4BA0();
              v187 = sub_AB9F50();

              if (os_log_type_enabled(v186, v187))
              {
                v235 = v186;
                v188 = swift_slowAlloc();
                v228 = swift_slowAlloc();
                *&v250 = v228;
                *v188 = 136446978;
                *(v188 + 4) = sub_425E68(v238, v164, &v250);
                *(v188 + 12) = 2082;
                swift_beginAccess();
                v189 = *(v165 + 24);
                LODWORD(v230) = v187;
                if (v189)
                {
                  v190 = *(v165 + 16);
                }

                else
                {
                  v189 = 0xE400000000000000;
                  v190 = 1701736302;
                }

                v191 = sub_425E68(v190, v189, &v250);

                *(v188 + 14) = v191;
                *(v188 + 22) = 2082;
                swift_beginAccess();
                v192 = *(v169 + 24);
                if (v192)
                {
                  v193 = *v167;
                }

                else
                {
                  v192 = 0xE400000000000000;
                  v193 = 1701736302;
                }

                v194 = sub_425E68(v193, v192, &v250);

                *(v188 + 24) = v194;
                *(v188 + 32) = 2048;
                v195 = [v185 totalItemCount];

                *(v188 + 34) = v195;
                v196 = v235;
                _os_log_impl(&dword_0, v235, v230, "Request=(%{public}s) Attempting to personalize track listing for for container with (storeID=%{public}s, libraryID:=%{public}s)), number of represented objects: %ld", v188, 0x2Au);
                swift_arrayDestroy();
              }

              else
              {
              }
            }

LABEL_146:
            v197 = swift_allocObject();
            v198 = v164;
            v199 = v246;
            v197[2] = v246;
            v197[3] = v165;
            v200 = v236;
            v197[4] = v169;
            v197[5] = v200;
            v197[6] = v238;
            v197[7] = v198;
            v201 = v244;
            v197[8] = v244;
            v253 = sub_1A4928;
            v254 = v197;
            *&v250 = _NSConcreteStackBlock;
            *(&v250 + 1) = 1107296256;
            v251 = sub_151E0;
            v252 = &block_descriptor_46_0;
            v202 = _Block_copy(&v250);
            v203 = v199;

            v204 = v201;

            v205 = v239;
            v206 = [v239 newOperationWithResponseHandler:v202];
            _Block_release(v202);
            if ([v204 isCancelled])
            {
              sub_AB29E0();
              sub_3F2834(_swiftEmptyArrayStorage);
              sub_1A4764();
              v207 = v231;
              v208 = v233;
              sub_AB3030();
              v209 = sub_AB29C0();
              (*(v232 + 8))(v207, v208);
              v210 = sub_AB3040();
              [v204 finishWithError:v210];

              (*&v204[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, v209);

              v211 = v245;
            }

            else
            {
              v212 = v240;
              v213 = v241;
              v214 = v237;
              v215 = v229;
              if (qword_DE6938 != -1)
              {
                swift_once();
              }

              [qword_DF4188 addOperation:v206];

              v211 = v243;
            }

            sub_17654(v257);
            sub_17654(v259);

            return;
          }

          v172 = v171;
          if ([v172 storeID])
          {
            sub_ABAB50();
            sub_9ACFC(&v250, &v248);
            swift_unknownObjectRelease();
            if (*(&v249 + 1))
            {
              sub_9ACFC(&v248, &v250);
              __swift_project_boxed_opaque_existential_1(&v250, v252);
              sub_ABB3A0();
              v173 = MPStoreItemMetadataStringNormalizeStoreIDValue();
              swift_unknownObjectRelease();
              if (v173)
              {
                v174 = sub_AB92A0();
                v176 = v175;
              }

              else
              {
                v174 = 0;
                v176 = 0;
              }

              __swift_destroy_boxed_opaque_existential_0(&v250);
              *(v165 + 16) = v174;
              *(v165 + 24) = v176;

              goto LABEL_126;
            }
          }

          else
          {
            v248 = 0u;
            v249 = 0u;
          }

          sub_12E1C(&v248, &unk_DE8E40);
LABEL_126:
          v177 = [v172 cloudUniversalLibraryID];
          if (v177)
          {
            v178 = v177;
            v179 = sub_AB92A0();
            v181 = v180;
          }

          else
          {
            v179 = 0;
            v181 = 0;
          }

          *(v169 + 16) = v179;
          *(v169 + 24) = v181;

          goto LABEL_130;
        }

        goto LABEL_156;
      }
    }

    v27 = [v17 itemKind];
    v28 = sub_19D8E0;
    if (v27)
    {
      v29 = v27;
      [v27 modelClass];

      swift_getObjCClassMetadata();
      sub_13C80(0, &unk_DF1280);
      v30 = swift_dynamicCastMetatype();
      v28 = sub_19D8E0;
      if (v30)
      {
        v31 = [v17 itemProperties];
        if (v31)
        {
          v32 = v31;
          v33 = v240;
          v34 = [v240 propertySetByCombiningWithPropertySet:v31];

          v226 = sub_19DBC8;
          v257 = sub_19DBC8;
          v258 = 0;
          v227 = sub_19D8E0;
          v240 = v34;
          goto LABEL_106;
        }

        v53 = sub_19DBC8;
        goto LABEL_28;
      }
    }

LABEL_24:
    v226 = 0;
    v227 = v28;
    goto LABEL_106;
  }

  if (!swift_dynamicCastMetatype())
  {
LABEL_23:
    v237 = v13;
    v226 = 0;
    v227 = 0;
    goto LABEL_106;
  }

  v35 = [v246 sectionProperties];
  if (v35)
  {
    v36 = v35;
    v37 = [v13 propertySetByCombiningWithPropertySet:v35];

    v262 = v37;
    v13 = v37;
  }

  v259 = sub_19DD3C;
  v260 = 0;
  v38 = [v246 itemKind];
  v237 = v13;
  if (!v38)
  {
    v226 = 0;
    v227 = sub_19DD3C;
    goto LABEL_106;
  }

  v39 = v38;
  [v38 modelClass];

  swift_getObjCClassMetadata();
  sub_13C80(0, &qword_DE9C10);
  v40 = swift_dynamicCastMetatype();
  v28 = sub_19DD3C;
  if (!v40)
  {
    goto LABEL_24;
  }

  v261 = 1;
  v257 = sub_19DEB0;
  v258 = 0;
  v41 = [v246 itemProperties];
  v42 = sub_19DD3C;
  if (!v41)
  {
    v226 = sub_19DEB0;
    goto LABEL_105;
  }

  v43 = v41;
  v44 = [v41 relationships];
  sub_13C80(0, &qword_DEA550);
  v45 = sub_AB8FF0();

  v46 = sub_AB92A0();
  if (*(v45 + 16))
  {
    v48 = sub_2EBF88(v46, v47);
    v49 = v230;
    if (v50)
    {
      v51 = *(*(v45 + 56) + 8 * v48);

      v52 = [v10 propertySetByCombiningWithPropertySet:v51];

      v263 = v52;
      v10 = v52;
    }

    else
    {
    }
  }

  else
  {

    v49 = v230;
  }

  v54 = sub_AB92A0();
  if (*(v45 + 16) && (v56 = sub_2EBF88(v54, v55), (v57 & 1) != 0))
  {
    v58 = *(*(v45 + 56) + 8 * v56);

    v59 = v238;
    v60 = [v238 propertySetByCombiningWithPropertySet:v58];

    v238 = v60;
  }

  else
  {
  }

  v61 = sub_AB92A0();
  if (*(v45 + 16) && (v63 = sub_2EBF88(v61, v62), (v64 & 1) != 0))
  {
    v65 = *(*(v45 + 56) + 8 * v63);

    v66 = v239;
    v67 = [v239 propertySetByCombiningWithPropertySet:v65];

    v239 = v67;
  }

  else
  {
  }

  v68 = sub_AB92A0();
  if (!*(v45 + 16) || (v70 = sub_2EBF88(v68, v69), (v71 & 1) == 0))
  {

LABEL_104:
    v226 = sub_19DEB0;
    v42 = sub_19DD3C;
    goto LABEL_105;
  }

  v219 = v45;
  v220 = *(*(v45 + 56) + 8 * v70);

  v72 = *&v49[v228];
  if (!v72)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v73 = &OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_entries;
  v74 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_entries;
  swift_beginAccess();
  v75 = *(v72 + v74);
  v218 = v43;
  if (!(v75 >> 62))
  {
    if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_45;
    }

LABEL_103:
    sub_1B02C();

    goto LABEL_104;
  }

LABEL_102:
  if (!sub_ABB060())
  {
    goto LABEL_103;
  }

LABEL_45:
  v76 = type metadata accessor for JSModelSocialPersonProfileBuilder();
  v77 = objc_allocWithZone(v76);
  v77[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
  v78 = v220;
  *&v77[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v220;
  v79 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
  v80 = v78;
  v81 = [v79 initWithRequestedPropertySet:v80];
  if (v81)
  {
    *&v77[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v81;
    v247.receiver = v77;
    v247.super_class = v76;
    v225 = objc_msgSendSuper2(&v247, "init");

    v82 = [v11 emptyPropertySet];
    v11 = [objc_allocWithZone(MPStoreModelGenericObjectBuilder) initWithRequestedPropertySet:v82];

    v83 = *&v230[v228];
    if (!v83)
    {
      goto LABEL_160;
    }

    v84 = *v73;
    swift_beginAccess();
    v85 = *(v83 + v84);
    if (v85 >> 62)
    {
      goto LABEL_153;
    }

    v86 = *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8));
    if (v86)
    {
LABEL_49:
      v227 = (v85 & 0xC000000000000001);
      v222 = v85 & 0xFFFFFFFFFFFFFF8;

      v73 = 0;
      v223 = v85;
      v224 = v11;
      v226 = v86;
      while (1)
      {
        if (v227)
        {
          v88 = sub_361094(v73, v85);
        }

        else
        {
          if (v73 >= *(v222 + 16))
          {
            goto LABEL_100;
          }

          v88 = *(v85 + 8 * v73 + 32);
        }

        v245 = (v73 + 1);
        if (__OFADD__(v73, 1))
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v89 = v88;
        v90 = JSSocialMediaItem.accessorySocialProfiles.getter();

        if (v90 >> 62)
        {
          if (!sub_ABB060())
          {
LABEL_50:

            v87 = v245;
            goto LABEL_51;
          }
        }

        else if (!*(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_50;
        }

        if ((v90 & 0xC000000000000001) != 0)
        {
          v91 = sub_36105C(0, v90);
        }

        else
        {
          if (!*(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_99;
          }

          v91 = *(v90 + 32);
        }

        v92 = v91;

        v93 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
        swift_beginAccess();
        v94 = *&v89[v93];
        v242 = v92;
        if (v94)
        {
          if (v11)
          {
            v95 = v94;
            v96 = v11;
            v97 = [v244 userIdentity];
            v98 = [v96 modelObjectWithStoreItemMetadata:v95 userIdentity:v97];

            if (v98)
            {
              v11 = [v98 identifiers];
            }

            else
            {

              v11 = 0;
            }

            v85 = v223;
          }
        }

        else
        {
          v99 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_identifierSet;
          swift_beginAccess();
          v100 = *&v89[v99];
          if (v100)
          {
            v101 = *&stru_158.segname[swift_isaMask & *v100];
            v102 = v100;
            v11 = v101();
          }

          else
          {
            v11 = 0;
          }
        }

        v103 = [v244 userIdentity];
        if (!v103)
        {
          goto LABEL_157;
        }

        v104 = v103;
        v105 = v242;
        v106 = sub_21B8E0(v242, v103);

        if (v106)
        {
          v86 = v226;
          if (v11)
          {
            v107 = [v11 universalStore];
            if (v107)
            {
              v108 = [v107 adamID];
              swift_unknownObjectRelease();
              v229 = v106;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v110 = v255;
              *&v250 = v255;
              v221 = v108;
              v85 = sub_2F5A90(v108);
              v112 = v110[2];
              v113 = (v111 & 1) == 0;
              v114 = v112 + v113;
              if (__OFADD__(v112, v113))
              {
                goto LABEL_101;
              }

              v115 = v111;
              if (v110[3] >= v114)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v118 = v250;
                  if ((v111 & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  sub_332B98();
                  v118 = v250;
                  if ((v115 & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }
              }

              else
              {
                sub_32A424(v114, isUniquelyReferenced_nonNull_native);
                v116 = sub_2F5A90(v221);
                if ((v115 & 1) != (v117 & 1))
                {
                  goto LABEL_161;
                }

                v85 = v116;
                v118 = v250;
                if ((v115 & 1) == 0)
                {
LABEL_92:
                  v118[(v85 >> 6) + 8] |= 1 << v85;
                  *(v118[6] + 8 * v85) = v221;
                  v124 = v229;
                  *(v118[7] + 8 * v85) = v229;

                  v125 = v118[2];
                  v126 = __OFADD__(v125, 1);
                  v127 = v125 + 1;
                  if (v126)
                  {
                    __break(1u);
LABEL_153:
                    v86 = sub_ABB060();
                    if (!v86)
                    {
                      break;
                    }

                    goto LABEL_49;
                  }

                  v118[2] = v127;
                  v122 = v242;
                  v120 = v11;
                  v11 = v224;
                  v123 = v118;
                  goto LABEL_94;
                }
              }

              v119 = v118[7];
              v120 = *(v119 + 8 * v85);
              v121 = v229;
              *(v119 + 8 * v85) = v229;

              v122 = v121;
              v123 = v118;
              v11 = v224;
LABEL_94:
              v86 = v226;
              v87 = v245;
              v85 = v223;

              v229 = v123;
              v255 = v123;
              goto LABEL_51;
            }
          }

          else
          {
          }
        }

        else
        {

          v86 = v226;
        }

        v87 = v245;
        v11 = v224;
LABEL_51:
        ++v73;
        if (v87 == v86)
        {

          break;
        }
      }
    }

    goto LABEL_103;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  sub_ABB4C0();
  __break(1u);
}

uint64_t sub_19D8E0(void *a1)
{
  v10 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49AC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_75_0;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
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

uint64_t sub_19DA54(void *a1)
{
  v10 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A4994;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_55;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
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

uint64_t sub_19DBC8(void *a1)
{
  v10 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49A0;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_65;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
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

uint64_t sub_19DD3C(void *a1)
{
  v10 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49C4;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_95;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
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

uint64_t sub_19DEB0(void *a1)
{
  v10 = 0;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1A49B8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_36C08;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_85_0;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
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

uint64_t sub_19E024(uint64_t isEscapingClosureAtFileLocation, uint64_t a2, unint64_t a3, unsigned __int8 *a4, void *a5, uint64_t a6, void *a7, void *a8, char **a9, uint64_t (**a10)(char **), uint64_t a11, uint64_t a12, void **a13, void **a14)
{
  v15 = v14;
  v269 = a8;
  v266 = a7;
  v22 = a9;
  v23 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
  swift_beginAccess();
  v24 = *(isEscapingClosureAtFileLocation + v23);
  v25 = &selRef_performWithResponseHandler_;
  if (!v24)
  {
    v33 = 0;
    v34 = 0;
    goto LABEL_58;
  }

  v270 = v14;
  v26 = v24;
  v27 = [a2 sectionKind];
  if (!v27)
  {

    goto LABEL_56;
  }

  v264 = v27;
  v268 = v26;
  v265 = [objc_allocWithZone(MPStoreModelGenericObjectBuilder) initWithRequestedPropertySet:a3];
  if (!v265)
  {
    goto LABEL_55;
  }

  [v265 setShouldUsePlaylistEntry:*a4];
  v262 = [a5 userIdentity];
  LODWORD(v263) = JSContainerDetail.hasMusicKitResponse.getter();
  v261 = a2;
  v28 = [a2 label];
  if (v28)
  {
    v29 = v28;
    v30 = sub_AB92A0();
    v32 = v31;
  }

  else
  {
    v32 = 0xE400000000000000;
    v30 = 1701736302;
  }

  if ((v263 & 1) == 0)
  {
    v260 = isEscapingClosureAtFileLocation;
    v259 = [v265 modelObjectWithStoreItemMetadata:v268 userIdentity:v262];
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v48 = sub_AB4BC0();
    __swift_project_value_buffer(v48, qword_E71120);
    v49 = v268;

    v50 = sub_AB4BA0();
    v51 = sub_AB9F50();

    if (!os_log_type_enabled(v50, v51))
    {

      a2 = v261;
      goto LABEL_45;
    }

    v258 = a9;
    v52 = swift_slowAlloc();
    v271[0] = swift_slowAlloc();
    *v52 = 136446466;
    v53 = sub_425E68(v30, v32, v271);

    *(v52 + 4) = v53;
    *(v52 + 12) = 2082;
    if ([v49 storeID])
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v273 = 0u;
      v274 = 0u;
    }

    aBlock = v273;
    v277 = v274;
    if (*(&v274 + 1))
    {
      if (swift_dynamicCast())
      {
        v55 = *(&v272 + 1);
        v54 = v272;
LABEL_36:
        v56 = sub_425E68(v54, v55, v271);

        *(v52 + 14) = v56;
        _os_log_impl(&dword_0, v50, v51, "Request=(%{public}s) Enqueueing JS container detail request with storePlatform response for container with storeID: %{public}s", v52, 0x16u);
        swift_arrayDestroy();

        v22 = v258;
        a2 = v261;
        goto LABEL_44;
      }
    }

    else
    {
      sub_12E1C(&aBlock, &unk_DE8E40);
    }

    v55 = 0xE400000000000000;
    v54 = 1701736302;
    goto LABEL_36;
  }

  if (![v268 storeID])
  {

    aBlock = 0u;
    v277 = 0u;
LABEL_28:
    sub_12E1C(&aBlock, &unk_DE8E40);
LABEL_29:

    v33 = 0;
    v34 = 0;
    a2 = v261;
    goto LABEL_57;
  }

  sub_ABAB50();
  sub_9ACFC(&v272, &aBlock);
  swift_unknownObjectRelease();
  if (!*(&v277 + 1))
  {

    goto LABEL_28;
  }

  v260 = isEscapingClosureAtFileLocation;
  sub_9ACFC(&aBlock, &v273);
  __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
  sub_ABB3A0();
  v35 = MPStoreItemMetadataStringNormalizeStoreIDValue();
  swift_unknownObjectRelease();
  if (!v35)
  {

    __swift_destroy_boxed_opaque_existential_0(&v273);
    v33 = 0;
    v34 = 0;
    a2 = v261;
    isEscapingClosureAtFileLocation = v260;
    goto LABEL_57;
  }

  v36 = sub_AB92A0();
  v38 = v37;

  v39 = v38;
  v40 = HIBYTE(v38) & 0xF;
  v267 = v36;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v36 & 0xFFFFFFFFFFFFLL;
  }

  isEscapingClosureAtFileLocation = v260;
  if (!v40)
  {

    __swift_destroy_boxed_opaque_existential_0(&v273);
    goto LABEL_29;
  }

  v259 = v39;
  if (qword_DE6940 != -1)
  {
    goto LABEL_270;
  }

  while (1)
  {
    v258 = v22;
    v41 = sub_AB4BC0();
    __swift_project_value_buffer(v41, qword_E71120);
    sub_808B0(&v273, &aBlock);

    v42 = sub_AB4BA0();
    v43 = sub_AB9F50();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      v280[0] = v257;
      *v44 = 136446466;
      v45 = sub_425E68(v30, v32, v280);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2082;
      sub_808B0(&aBlock, &v272);
      if (swift_dynamicCast())
      {
        v46 = v271[0];
        v47 = v271[1];
        a2 = v261;
      }

      else
      {
        v47 = 0xE400000000000000;
        a2 = v261;
        v46 = 1701736302;
      }

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v58 = sub_425E68(v46, v47, v280);

      *(v44 + 14) = v58;
      _os_log_impl(&dword_0, v42, v43, "Request=(%{public}s) Enqueueing JS container detail request with mediaAPI response for container with storeID: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&aBlock);

      a2 = v261;
    }

    __chkstk_darwin(v57);
    v22 = v259;
    v238 = v267;
    v239 = v259;
    v59 = objc_allocWithZone(MPIdentifierSet);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1A5A30;
    *(v60 + 24) = v237;
    v278 = sub_C3FB8;
    v279 = v60;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v277 = sub_41A314;
    *(&v277 + 1) = &block_descriptor_154;
    v61 = _Block_copy(&aBlock);
    v25 = v264;

    v62 = [v59 initWithModelKind:v25 block:v61];
    _Block_release(v61);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      break;
    }

    v63 = [objc_opt_self() sharedServerObjectDatabase];
    v259 = [v63 modelObjectMatchingIdentifierSet:v62 propertySet:a3];
    __swift_destroy_boxed_opaque_existential_0(&v273);

    v22 = v258;
LABEL_44:
    v25 = &selRef_performWithResponseHandler_;
LABEL_45:
    isEscapingClosureAtFileLocation = v260;
    a3 = v263;
    v64 = v259;
    if (!v259)
    {

      goto LABEL_55;
    }

    v65 = *a6;
    if (!*a6)
    {

LABEL_55:
LABEL_56:
      v33 = 0;
      v34 = 0;
      goto LABEL_57;
    }

    v66 = v65(v64);
    v67 = v65;
    v34 = v66;
    sub_17654(v67);
    if (!v34)
    {

      v33 = 0;
      goto LABEL_57;
    }

    v249 = a10;
    v68 = objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor);
    v251 = v34;
    v69 = [v68 initWithModel:v34 personalizationStyle:1];
    v70 = v266;
    [v266 appendSection:v69];

    [v269 appendSection:v268];
    v280[0] = _swiftEmptyArrayStorage;
    v267 = sub_987C0(_swiftEmptyArrayStorage);
    v71 = &unk_DF4000;
    v258 = v22;
    if ((a3 & 1) == 0)
    {
      if ([v70 numberOfSections] >= 1)
      {
        v110 = [v268 childrenStoreIDs];
        if (v110)
        {
          v111 = v110;
          v255 = sub_AB9760();

          v62 = *v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v22 = v62;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_105;
          }

          goto LABEL_273;
        }
      }

LABEL_163:
      v256 = 0;
      v254 = 0;
      v252 = _swiftEmptyArrayStorage;
      goto LABEL_176;
    }

    v72 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailMusicKitRelationshipsResponse;
    swift_beginAccess();
    v73 = *(isEscapingClosureAtFileLocation + v72);
    if (!v73)
    {
      v273 = 0u;
      v274 = 0u;
      v71 = &unk_DF4000;
LABEL_162:
      sub_12E1C(&v273, &unk_DE8E40);
      goto LABEL_163;
    }

    *&v272 = 0x736B63617274;
    *(&v272 + 1) = 0xE600000000000000;

    sub_ABAD10();
    v71 = &unk_DF4000;
    if (*(v73 + 16) && (v74 = sub_2EC004(&aBlock), (v75 & 1) != 0))
    {
      sub_808B0(*(v73 + 56) + 32 * v74, &v273);
      sub_8085C(&aBlock);
    }

    else
    {
      sub_8085C(&aBlock);
      v273 = 0u;
      v274 = 0u;
    }

    if (!*(&v274 + 1))
    {
      goto LABEL_162;
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_174;
    }

    v165 = aBlock;
    *&v272 = 1635017060;
    *(&v272 + 1) = 0xE400000000000000;
    sub_ABAD10();
    if (!v165[2] || (v166 = sub_2EC004(&aBlock), (v167 & 1) == 0))
    {
      sub_8085C(&aBlock);
LABEL_167:

      v22 = v258;
      v256 = 0;
      v254 = 0;
      v252 = _swiftEmptyArrayStorage;
      goto LABEL_175;
    }

    sub_808B0(v165[7] + 32 * v166, &v273);
    sub_8085C(&aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_167;
    }

    v255 = v272;
    v168 = [a2 itemKind];
    if (!v168)
    {

LABEL_174:
      v256 = 0;
      v254 = 0;
      v252 = _swiftEmptyArrayStorage;
      v22 = v258;
      goto LABEL_175;
    }

    v169 = v168;
    v254 = [objc_opt_self() emptyPropertySet];
    [v169 modelClass];
    swift_getObjCClassMetadata();
    sub_13C80(0, &unk_DE8EB0);
    v170 = swift_dynamicCastMetatype();
    v253 = v165;
    v248 = v169;
    if (v170)
    {
      v15 = isEscapingClosureAtFileLocation;
      v171 = a13;
    }

    else
    {
      v15 = isEscapingClosureAtFileLocation;
      sub_13C80(0, &qword_DE9C10);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_219;
      }

      v171 = a14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_AF4EC0;
    *(v187 + 32) = sub_AB92A0();
    v188 = *v171;
    *(v187 + 40) = v189;
    *(v187 + 48) = v188;
    v190 = v188;
    sub_96EA4(v187);
    swift_setDeallocating();
    sub_12E1C(v187 + 32, &unk_DE8E80);
    swift_deallocClassInstance();
    v191 = objc_allocWithZone(MPPropertySet);
    isa = sub_AB9740().super.isa;
    sub_13C80(0, &qword_DEA550);
    v193 = sub_AB8FD0().super.isa;

    v194 = [v191 initWithProperties:isa relationships:v193];

    v254 = v194;
LABEL_219:
    v195 = v258;
    v136 = *v258;
    v196 = swift_isUniquelyReferenced_nonNull_native();
    *v195 = v136;
    if ((v196 & 1) == 0)
    {
      goto LABEL_278;
    }

    while (1)
    {
      isEscapingClosureAtFileLocation = v15;
      a3 = v263;
      v198 = v136[2];
      v197 = v136[3];
      if (v198 >= v197 >> 1)
      {
        v136 = sub_6B870((v197 > 1), v198 + 1, 1, v136);
        *v258 = v136;
      }

      v136[2] = v198 + 1;
      *(v136 + v198 + 32) = 0;
      v199 = v255;
      v257 = *(v255 + 16);
      if (!v257)
      {
        break;
      }

      v200 = 0;
      v245 = &v261[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
      v256 = (v255 + 32);
      v71 = &unk_DF4000;
      v244 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption;
      v246 = &v277;
      v252 = _swiftEmptyArrayStorage;
      v77 = v253;
      v260 = v15;
      while (1)
      {
        if (v200 >= *(v199 + 16))
        {
          __break(1u);
LABEL_275:
          v71 = sub_6B870(0, *(v71 + 2) + 1, 1, v71);
          *isEscapingClosureAtFileLocation = v71;
LABEL_74:
          v90 = *(v71 + 2);
          v89 = *(v71 + 3);
          if (v90 >= v89 >> 1)
          {
            v71 = sub_6B870((v89 > 1), v90 + 1, 1, v71);
            *isEscapingClosureAtFileLocation = v71;
          }

          *(v71 + 2) = v90 + 1;
          v71[v90 + 32] = 1;
          v62 = v264[2];
          if (!v62)
          {
LABEL_164:

            v82 = v256;
            return sub_17654(v82);
          }

          a3 = (v264 + 4);
          v263 = &v277;
          v262 = v22;
          while (2)
          {
            v91 = *a3;
            v280[0] = 25705;
            v280[1] = 0xE200000000000000;

            sub_ABAD10();
            if (*(v91 + 16) && (v92 = sub_2EC004(&aBlock), (v93 & 1) != 0))
            {
              sub_808B0(*(v91 + 56) + 32 * v92, &v273);
              sub_8085C(&aBlock);
              if (swift_dynamicCast())
              {
                v94 = HIBYTE(v280[1]) & 0xF;
                if ((v280[1] & 0x2000000000000000) == 0)
                {
                  v94 = v280[0] & 0xFFFFFFFFFFFFLL;
                }

                if (v94)
                {
                  v270 = v15;
                  v267 = &v240;
                  v95 = __chkstk_darwin(v280[1]);
                  v238 = v96;
                  v239 = v95;
                  v265 = v95;
                  v97 = objc_allocWithZone(MPIdentifierSet);
                  isEscapingClosureAtFileLocation = swift_allocObject();
                  *(isEscapingClosureAtFileLocation + 16) = sub_1A4A1C;
                  *(isEscapingClosureAtFileLocation + 24) = v237;
                  v278 = sub_C3FB8;
                  v279 = isEscapingClosureAtFileLocation;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v277 = sub_41A314;
                  *(&v277 + 1) = &block_descriptor_108_2;
                  v98 = _Block_copy(&aBlock);

                  v99 = v77;
                  v22 = [v97 initWithModelKind:v99 block:v98];
                  _Block_release(v98);

                  a2 = swift_isEscapingClosureAtFileLocation();

                  if (a2)
                  {
                    goto LABEL_272;
                  }

                  v100 = [objc_opt_self() sharedServerObjectDatabase];
                  v101 = [v100 modelObjectMatchingIdentifierSet:v22 propertySet:v268];

                  if (v101)
                  {
                    v102 = [v101 recordLabel];
                    v15 = v270;
                    if (v102)
                    {
                      v103 = v102;
                      v104 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v102 personalizationStyle:1];
                      v261 = v22;
                      v267 = v103;
                      v105 = v104;
                      [v266 appendItem:v104];

                      v106 = objc_allocWithZone(MPStoreItemMetadata);
                      v107 = sub_AB8FD0().super.isa;
                      v108 = [v106 initWithStoreMusicAPIDictionary:v107];

                      [v269 appendItem:v108];
                    }

                    else
                    {
                    }
                  }

                  else
                  {

                    v15 = v270;
                  }

                  goto LABEL_82;
                }
              }
            }

            else
            {
              sub_8085C(&aBlock);
            }

LABEL_82:
            a3 += 8;
            if (!--v62)
            {
              goto LABEL_164;
            }

            continue;
          }
        }

        v201 = *(v256 + v200);
        *&v272 = 25705;
        *(&v272 + 1) = 0xE200000000000000;

        sub_ABAD10();
        if (!*(v201 + 16) || (v202 = sub_2EC004(&aBlock), v199 = v255, (v203 & 1) == 0))
        {
          sub_8085C(&aBlock);
LABEL_225:

          goto LABEL_226;
        }

        sub_808B0(*(v201 + 56) + 32 * v202, &v273);
        sub_8085C(&aBlock);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_225;
        }

        v204 = HIBYTE(*(&v272 + 1)) & 0xFLL;
        if ((*(&v272 + 1) & 0x2000000000000000) == 0)
        {
          v204 = v272 & 0xFFFFFFFFFFFFLL;
        }

        if (!v204)
        {

          goto LABEL_225;
        }

        v15 = &v240;
        v205 = __chkstk_darwin(*(&v272 + 1));
        v238 = v206;
        v239 = v205;
        v247 = v205;
        v207 = objc_allocWithZone(MPIdentifierSet);
        v136 = swift_allocObject();
        v136[2] = sub_1A5A28;
        v136[3] = v237;
        v278 = sub_C3FB8;
        v279 = v136;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v277 = sub_41A314;
        *(&v277 + 1) = &block_descriptor_147;
        v208 = _Block_copy(&aBlock);

        v209 = v248;
        v22 = [v207 initWithModelKind:v209 block:v208];
        _Block_release(v208);

        LOBYTE(v207) = swift_isEscapingClosureAtFileLocation();

        if (v207)
        {
          break;
        }

        v210 = [objc_opt_self() sharedServerObjectDatabase];
        v15 = [v210 modelObjectMatchingIdentifierSet:v22 propertySet:v254];

        isEscapingClosureAtFileLocation = v260;
        v77 = v253;
        v199 = v255;
        *&v250 = v15;
        if (v15)
        {
          v211 = *v249;
          if (*v249)
          {

            v212 = v211(v250);
            sub_17654(v211);
            if (v212)
            {
              objc_opt_self();
              v213 = swift_dynamicCastObjCClass();
              if (!v213)
              {
                goto LABEL_249;
              }

              v214 = v213;
              v215 = v245[1];
              if (v215)
              {
                v216 = *v245;
                v15 = v212;

                LOBYTE(v216) = sub_1A4B10(v214, v216, v215);

                if ((v216 & 1) == 0)
                {

                  goto LABEL_263;
                }
              }

              else
              {
                v217 = v212;
              }

              v218 = v261[v244];

              if (v218 != 13)
              {
                v15 = v212;
                sub_AB9730();
                if (*(&dword_10 + (v280[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v280[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_AB97A0();
                }

                sub_AB97F0();
                v252 = v280[0];
                *(&v277 + 1) = v25;
                *&aBlock = v201;
                sub_9ACFC(&aBlock, &v273);
                v223 = v267;
                v224 = swift_isUniquelyReferenced_nonNull_native();
                *&v272 = v223;
                v226 = sub_2EC830(v214);
                v227 = v223[2];
                v228 = (v225 & 1) == 0;
                v229 = v227 + v228;
                if (__OFADD__(v227, v228))
                {
                  __break(1u);
LABEL_280:
                  __break(1u);
                  goto LABEL_281;
                }

                v230 = v225;
                if (v267[3] >= v229)
                {
                  if ((v224 & 1) == 0)
                  {
                    sub_332CF8();
                  }
                }

                else
                {
                  sub_32A698(v229, v224);
                  v231 = sub_2EC830(v214);
                  if ((v230 & 1) != (v232 & 1))
                  {
                    goto LABEL_284;
                  }

                  v226 = v231;
                }

                v267 = v272;
                if (v230)
                {
                  v233 = (v267[7] + 32 * v226);
                  __swift_destroy_boxed_opaque_existential_0(v233);
                  sub_9ACFC(&v273, v233);

                  v22 = v250;
                  *&v250 = v15;
                }

                else
                {
                  v234 = v267;
                  v267[(v226 >> 6) + 8] |= 1 << v226;
                  *(v234[6] + 8 * v226) = v214;
                  sub_9ACFC(&v273, (v234[7] + 32 * v226));
                  v235 = v234[2];
                  v161 = __OFADD__(v235, 1);
                  v236 = v235 + 1;
                  if (v161)
                  {
                    goto LABEL_280;
                  }

                  v267[2] = v236;
                }
              }

              else
              {
LABEL_249:
                v219 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v212 personalizationStyle:1];
                [v266 appendItem:v219];

                v220 = objc_allocWithZone(MPStoreItemMetadata);
                v221 = sub_AB8FD0().super.isa;
                v222 = [v220 initWithStoreMusicAPIDictionary:v221];

                [v269 appendItem:v222];
              }

LABEL_263:
              isEscapingClosureAtFileLocation = v260;
            }

            else
            {
            }

            v71 = &unk_DF4000;
            v77 = v253;
            v199 = v255;
            goto LABEL_226;
          }
        }

        else
        {
        }

        v71 = &unk_DF4000;
LABEL_226:
        ++v200;
        a3 = v263;
        if (v257 == v200)
        {
          goto LABEL_266;
        }
      }

      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      v136 = sub_6B870(0, v136[2] + 1, 1, v136);
      *v258 = v136;
    }

    v252 = _swiftEmptyArrayStorage;
    v71 = &unk_DF4000;
LABEL_266:

    v256 = 0;
    v254 = 0;
    v22 = v258;
    a2 = v261;
LABEL_175:
    v25 = &selRef_performWithResponseHandler_;
LABEL_176:
    v172 = *(a2 + *(v71 + 51));
    v173 = variable initialization expression of Library.Context.useDownloadedContentOnly;
    if (v172 > 6)
    {
      if (v172 > 10)
      {
        if (v172 == 11)
        {
          v173 = sub_1A5CBC;
          LOBYTE(v172) = 1;
        }

        else
        {
          if (v172 != 12)
          {

            v268 = v264;
            goto LABEL_214;
          }

          LOBYTE(v172) = 0;
          v173 = sub_1A5900;
        }
      }

      else
      {
        if ((v172 - 8) < 3)
        {
          goto LABEL_193;
        }

        v173 = sub_1A5908;
      }

      goto LABEL_192;
    }

    if (v172 <= 2)
    {
      if (v172)
      {
        if (v172 == 1)
        {
          LOBYTE(v172) = 0;
          v173 = sub_1A5980;
        }

        else
        {
          v173 = sub_1A5978;
        }
      }

      else
      {
        LOBYTE(v172) = 1;
        v173 = sub_1A5D0C;
      }

LABEL_192:
      *(swift_allocObject() + 16) = v172;
      goto LABEL_193;
    }

    if ((v172 - 3) >= 3)
    {
      v173 = sub_1A5940;
      goto LABEL_192;
    }

LABEL_193:

    *&aBlock = sub_3432CC(v174);
    v175 = v270;
    sub_1A585C(&aBlock, v173);
    a6 = v175;
    if (v175)
    {
      goto LABEL_283;
    }

    v32 = aBlock;
    if ((aBlock & 0x8000000000000000) != 0 || (aBlock & 0x4000000000000000) != 0)
    {
LABEL_268:
      v30 = sub_ABB060();
    }

    else
    {
      v30 = *(aBlock + 16);
    }

    v270 = a6;
    if (!v30)
    {
      goto LABEL_213;
    }

    v22 = v266;
    if (v30 >= 1)
    {
      v176 = 0;
      v260 = isEscapingClosureAtFileLocation;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v177 = sub_361234(v176, v32);
        }

        else
        {
          v177 = *(v32 + 8 * v176 + 32);
        }

        v178 = v177;
        v179 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v177 personalizationStyle:1];
        [v22 appendItem:v179];

        if (a3)
        {
          if (v267[2])
          {
            v180 = sub_2EC830(v178);
            if (v181)
            {
              sub_808B0(v267[7] + 32 * v180, &aBlock);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
              if (swift_dynamicCast())
              {
                v182 = objc_allocWithZone(MPStoreItemMetadata);
                a3 = sub_AB8FD0().super.isa;
                v183 = [v182 initWithStoreMusicAPIDictionary:a3];

                LOBYTE(a3) = v263;
                [v269 appendItem:v183];

                isEscapingClosureAtFileLocation = v260;
              }
            }
          }
        }

        else if (v267[2])
        {
          v184 = sub_2EC830(v178);
          if (v185)
          {
            sub_808B0(v267[7] + 32 * v184, &aBlock);
            sub_13C80(0, &unk_DF43D0);
            if (swift_dynamicCast())
            {
              v186 = v273;
              [v269 appendItem:v186];
            }
          }
        }

        ++v176;
      }

      while (v30 != v176);
LABEL_213:

      v22 = v258;
      a2 = v261;
      v25 = &selRef_performWithResponseHandler_;
LABEL_214:
      v33 = v256;
      v34 = v254;

LABEL_57:
      v15 = v270;
LABEL_58:
      v76 = [a2 v25[250]];
      if (v76)
      {
        v77 = v76;
        v25 = v34;
        [v76 modelClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DF1280);
        if (swift_dynamicCastMetatype())
        {
          v78 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailMusicKitRelationshipsResponse;
          swift_beginAccess();
          v79 = *(isEscapingClosureAtFileLocation + v78);
          if (v79)
          {
            strcpy(v280, "record-labels");
            HIWORD(v280[1]) = -4864;

            sub_ABAD10();
            if (*(v79 + 16) && (v80 = sub_2EC004(&aBlock), (v81 & 1) != 0))
            {
              sub_808B0(*(v79 + 56) + 32 * v80, &v273);
              sub_8085C(&aBlock);
            }

            else
            {
              sub_8085C(&aBlock);
              v273 = 0u;
              v274 = 0u;
            }

            if (*(&v274 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
              if (swift_dynamicCast())
              {
                isEscapingClosureAtFileLocation = v22;
                v22 = aBlock;
                v280[0] = 1635017060;
                v280[1] = 0xE400000000000000;
                sub_ABAD10();
                if (v22[2] && (v83 = sub_2EC004(&aBlock), (v84 & 1) != 0))
                {
                  sub_808B0(&v22[7][32 * v83], &v273);
                  sub_8085C(&aBlock);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E27CA0);
                  if (swift_dynamicCast())
                  {
                    v85 = v280[0];
                    if (*(v280[0] + 16))
                    {
                      v268 = [a2 itemProperties];
                      if (v268)
                      {
                        v264 = v85;
                        v86 = sub_AB9260();
                        [v266 appendSection:v86];

                        v87 = sub_AB9260();
                        [v269 appendSection:v87];

                        v71 = *isEscapingClosureAtFileLocation;
                        v88 = swift_isUniquelyReferenced_nonNull_native();
                        *isEscapingClosureAtFileLocation = v71;
                        v256 = v33;
                        if ((v88 & 1) == 0)
                        {
                          goto LABEL_275;
                        }

                        goto LABEL_74;
                      }
                    }

                    goto LABEL_99;
                  }
                }

                else
                {
                  sub_8085C(&aBlock);
                }
              }

              goto LABEL_99;
            }
          }

          else
          {
            v273 = 0u;
            v274 = 0u;
          }

          sub_12E1C(&v273, &unk_DE8E40);
          goto LABEL_99;
        }

        v82 = v33;
      }

      else
      {
LABEL_99:
        v82 = v33;
      }

      return sub_17654(v82);
    }

    __break(1u);
LABEL_270:
    swift_once();
  }

  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  v62 = sub_6B870(0, *(v62 + 2) + 1, 1, v62);
  *v22 = v62;
LABEL_105:
  v114 = *(v62 + 2);
  v113 = *(v62 + 3);
  if (v114 >= v113 >> 1)
  {
    v62 = sub_6B870((v113 > 1), v114 + 1, 1, v62);
    *v22 = v62;
  }

  *(v62 + 2) = v114 + 1;
  v62[v114 + 32] = 0;
  a6 = v255;
  v115 = *(v255 + 16);
  if (!v115)
  {
    v256 = 0;
    v117 = 0;
    v252 = _swiftEmptyArrayStorage;
LABEL_170:
    v71 = &unk_DF4000;
LABEL_171:
    v275 = 0;
    v273 = 0u;
    v274 = 0u;
    v254 = v117;
LABEL_172:

    goto LABEL_176;
  }

  v116 = 0;
  v117 = 0;
  v256 = 0;
  v247 = (a2 + OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText);
  v244 = a12;
  v243 = a11;
  v242 = &v277;
  v118 = (v255 + 32);
  v245 = (v115 - 1);
  v252 = _swiftEmptyArrayStorage;
  v241 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption;
  v260 = isEscapingClosureAtFileLocation;
  v253 = v115;
  v246 = (v255 + 32);
  while (2)
  {
    v254 = v117;
    while (2)
    {
      v32 = &v118[2 * v116];
      a3 = v116;
      while (2)
      {
        if (a3 >= *(a6 + 16))
        {
          __break(1u);
          goto LABEL_268;
        }

        *&aBlock = a3;
        sub_808B0(v32, &aBlock + 8);
        v273 = aBlock;
        v274 = v277;
        v275 = v278;
        if (!v278)
        {
          a3 = v263;
          v71 = &unk_DF4000;
          goto LABEL_172;
        }

        v250 = aBlock;
        sub_9ACFC((&v273 + 8), &aBlock);
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v277 + 1));
        v119 = sub_ABB3A0();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        v120 = [v268 childStorePlatformDictionaryForStoreID:v119];
        swift_unknownObjectRelease();
        if (!v120)
        {
          goto LABEL_113;
        }

        v257 = a3;
        v15 = &protocol witness table for AnyHashable;
        sub_AB8FF0();

        v121 = objc_allocWithZone(MPStoreItemMetadata);
        v122 = v268;
        v123 = v265;
        v124 = sub_AB8FD0().super.isa;
        v125 = [v121 initWithStorePlatformDictionary:v124 parentStoreItemMetadata:v122];

        v126 = [v123 modelObjectWithStoreItemMetadata:v125 userIdentity:v262];
        if (!v126)
        {
          v22 = v258;
          isEscapingClosureAtFileLocation = v260;
          v25 = &selRef_performWithResponseHandler_;
          a3 = v257;
          goto LABEL_112;
        }

        v22 = v126;
        v127 = *v249;
        a3 = v257;
        if (!*v249)
        {
          goto LABEL_124;
        }

        v248 = v125;

        v128 = v127(v22);
        sub_17654(v127);
        v25 = &selRef_performWithResponseHandler_;
        if (!v128)
        {
          v125 = v248;
          goto LABEL_126;
        }

        objc_opt_self();
        v129 = swift_dynamicCastObjCClass();
        if (!v129)
        {
          isEscapingClosureAtFileLocation = v260;
          goto LABEL_134;
        }

        v130 = v129;
        v131 = v247[1];
        if (!v131)
        {
          v134 = v128;
          goto LABEL_130;
        }

        v132 = *v247;
        v133 = v128;

        if ((sub_1A4B10(v130, v132, v131) & 1) == 0)
        {

          v22 = v133;
          v125 = v133;
          a2 = v261;
LABEL_124:
          v25 = &selRef_performWithResponseHandler_;
LABEL_126:

          v22 = v258;
          isEscapingClosureAtFileLocation = v260;
LABEL_112:

LABEL_113:
          ++a3;
          v32 += 32;
          a6 = v255;
          if (v253 == a3)
          {
            goto LABEL_169;
          }

          continue;
        }

        break;
      }

LABEL_130:
      v25 = [v130 identifiers];
      v135 = swift_allocObject();
      v135[2] = v243;
      v135[3] = v130;
      v135[4] = v244;
      v135[5] = v250;
      v136 = v128;
      sub_17654(v256);
      v137 = swift_allocObject();
      *(v137 + 16) = sub_1A5A1C;
      *(v137 + 24) = v135;
      v254 = v135;
      v278 = sub_57B84;
      v279 = v137;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v277 = sub_41A314;
      *(&v277 + 1) = &block_descriptor_140_1;
      v138 = _Block_copy(&aBlock);

      v128 = [v130 copyWithIdentifiers:v25 block:v138];

      _Block_release(v138);
      v139 = swift_isEscapingClosureAtFileLocation();

      if (v139)
      {
        goto LABEL_277;
      }

      a2 = v261;
      isEscapingClosureAtFileLocation = v260;
      v25 = &selRef_performWithResponseHandler_;
      if (v261[v241] == 13 || (objc_opt_self(), (v140 = swift_dynamicCastObjCClass()) == 0))
      {

        v256 = sub_1A5A1C;
LABEL_134:
        v141 = v269;
        v142 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v128 personalizationStyle:1];
        [v266 appendItem:v142];

        v143 = v248;
        [v141 appendItem:v248];

        v116 = v257 + 1;
        v22 = v258;
        a6 = v255;
        v118 = v246;
        if (v245 != v257)
        {
          continue;
        }

LABEL_169:
        v117 = v254;
        a3 = v263;
        goto LABEL_170;
      }

      break;
    }

    v144 = v140;
    v145 = v128;
    sub_AB9730();
    if (*(&dword_10 + (v280[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v280[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v252 = v280[0];
    *(&v277 + 1) = sub_13C80(0, &unk_DF43D0);
    v146 = v248;
    *&aBlock = v248;
    sub_9ACFC(&aBlock, &v272);
    v147 = v146;
    v148 = v267;
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v271[0] = v148;
    v151 = sub_2EC830(v144);
    v152 = v148[2];
    v153 = (v150 & 1) == 0;
    v154 = v152 + v153;
    if (!__OFADD__(v152, v153))
    {
      v155 = v150;
      if (v267[3] >= v154)
      {
        if ((v149 & 1) == 0)
        {
          sub_332CF8();
        }
      }

      else
      {
        sub_32A698(v154, v149);
        v156 = sub_2EC830(v144);
        if ((v155 & 1) != (v157 & 1))
        {
          goto LABEL_284;
        }

        v151 = v156;
      }

      v267 = v271[0];
      if (v155)
      {
        v158 = (v267[7] + 32 * v151);
        __swift_destroy_boxed_opaque_existential_0(v158);
        sub_9ACFC(&v272, v158);

        v22 = v145;
      }

      else
      {
        v159 = v267;
        v267[(v151 >> 6) + 8] |= 1 << v151;
        *(v159[6] + 8 * v151) = v144;
        sub_9ACFC(&v272, (v159[7] + 32 * v151));

        v160 = v159[2];
        v161 = __OFADD__(v160, 1);
        v162 = v160 + 1;
        if (v161)
        {
          goto LABEL_282;
        }

        v267[2] = v162;
      }

      v163 = v257;
      v116 = v257 + 1;

      v256 = sub_1A5A1C;
      v164 = v245 == v163;
      v22 = v258;
      a2 = v261;
      isEscapingClosureAtFileLocation = v260;
      v25 = &selRef_performWithResponseHandler_;
      a3 = v263;
      v71 = &unk_DF4000;
      a6 = v255;
      v118 = v246;
      v117 = v254;
      if (v164)
      {
        goto LABEL_171;
      }

      continue;
    }

    break;
  }

LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:

  __break(1u);
LABEL_284:
  sub_13C80(0, &qword_DE9C10);
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_1A0EF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A5D10;
  *(v7 + 24) = v6;
  v19 = sub_C3FB8;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4522E8;
  v18 = &block_descriptor_164;
  v8 = _Block_copy(&v15);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
    return;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];
    sub_AB92A0();

    v12 = sub_AB9260();
    v19 = UIScreen.Dimensions.size.getter;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_4522E8;
    v18 = &block_descriptor_167_0;
    v13 = _Block_copy(&v15);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

void sub_1A1180(void *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = sub_486A50(*a2);
    v20 = a1;
    if (v12)
    {
      v13 = [a3 identifiers];
      v14 = [v13 universalStore];

      if (v14)
      {
        v15 = [v14 adamID];
        swift_unknownObjectRelease();
        v16 = *a4;
        if (*(v16 + 16) && (v17 = sub_2F5A90(v15), (v18 & 1) != 0))
        {
          v19 = *(*(v16 + 56) + 8 * v17);
        }

        else
        {
          v19 = 0;
        }

        [v11 setSocialContributor:v19];
      }
    }

    [v11 setPosition:a5];
  }
}

void sub_1A12E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A5A70;
  *(v7 + 24) = v6;
  v19 = sub_C3FB8;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4522E8;
  v18 = &block_descriptor_177;
  v8 = _Block_copy(&v15);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
    return;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];
    sub_AB92A0();

    v12 = sub_AB9260();
    v19 = UIScreen.Dimensions.size.getter;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_4522E8;
    v18 = &block_descriptor_180;
    v13 = _Block_copy(&v15);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

id sub_1A1570(void *a1)
{
  v2 = sub_AB9260();
  v3 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

  [a1 setAdamID:v3];

  return [a1 setSubscriptionAdamID:v3];
}

void sub_1A15E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A5A8C;
  *(v7 + 24) = v6;
  v19 = sub_C3FB8;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_4522E8;
  v18 = &block_descriptor_190;
  v8 = _Block_copy(&v15);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
    return;
  }

  sub_13C80(0, &qword_DF0600);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];
    sub_AB92A0();

    v12 = sub_AB9260();
    v19 = UIScreen.Dimensions.size.getter;
    v20 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_4522E8;
    v18 = &block_descriptor_193;
    v13 = _Block_copy(&v15);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

id sub_1A1878(void *a1)
{
  v2 = sub_AB9260();
  v3 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

  return [a1 setAdamID:v3];
}

void sub_1A18DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, char *a9)
{
  v14 = a9;
  if (a1)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = objc_allocWithZone(type metadata accessor for JSContainerDetailModelResponse());
      v124 = a1;
      v21 = sub_1A42E4(a3, v19, 0, v20);
      swift_beginAccess();
      v123 = a7;
      if (*(a4 + 24) || (swift_beginAccess(), *(a5 + 24)))
      {
        swift_beginAccess();
        v22 = *(a6 + 16);
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = 0;
          v25 = v22 + 32;
          while (*(v25 + v24) == 1)
          {
            if (v23 == ++v24)
            {
              goto LABEL_59;
            }
          }

          v119 = v19;
          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v39 = sub_AB4BC0();
          __swift_project_value_buffer(v39, qword_E71120);
          v40 = v124;

          v41 = sub_AB4BA0();
          v42 = sub_AB9F50();

          v118 = v42;
          if (os_log_type_enabled(v41, v42))
          {
            log = v41;
            v117 = v40;
            v120 = v21;
            v43 = swift_slowAlloc();
            v127[0] = swift_slowAlloc();
            *v43 = 136446978;
            *(v43 + 4) = sub_425E68(v123, a8, v127);
            *(v43 + 12) = 2082;
            swift_beginAccess();
            v19 = v119;
            if (*(a4 + 24))
            {
              v44 = *(a4 + 16);
              v45 = *(a4 + 24);
            }

            else
            {
              v44 = 1701736302;
              v45 = 0xE400000000000000;
            }

            v71 = sub_425E68(v44, v45, v127);

            *(v43 + 14) = v71;
            *(v43 + 22) = 2082;
            swift_beginAccess();
            if (*(a5 + 24))
            {
              v72 = *(a5 + 16);
              v21 = *(a5 + 24);
            }

            else
            {
              v72 = 1701736302;
              v21 = 0xE400000000000000;
            }

            v73 = sub_425E68(v72, v21, v127);

            *(v43 + 24) = v73;
            *(v43 + 32) = 2050;
            v74 = [v119 results];
            if (!v74)
            {

              __break(1u);
LABEL_97:

              __break(1u);
              goto LABEL_98;
            }

            v75 = v74;
            v76 = [v74 numberOfItemsInSection:v24];

            *(v43 + 34) = v76;
            _os_log_impl(&dword_0, log, v118, "Request=(%{public}s) Container detail model request for tracks (storeID=%{public}s, libraryID:=%{public}s) finished with result count=%{public}ld", v43, 0x2Au);
            swift_arrayDestroy();

            v21 = v120;
          }

          else
          {

            v19 = v119;
          }
        }

LABEL_59:
        swift_beginAccess();
        v77 = *(a6 + 16);
        v78 = *(v77 + 16);
        if (v78)
        {
          v79 = 0;
          v80 = v77 + 32;
          while ((*(v80 + v79) & 1) == 0)
          {
            if (v78 == ++v79)
            {
              goto LABEL_95;
            }
          }

          v121 = v21;
          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v81 = sub_AB4BC0();
          __swift_project_value_buffer(v81, qword_E71120);
          v21 = v124;

          v82 = sub_AB4BA0();
          v83 = sub_AB9F50();

          if (!os_log_type_enabled(v82, v83))
          {

LABEL_94:
            v21 = v121;
            goto LABEL_95;
          }

          v84 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v126 = v119;
          *v84 = 136446978;
          *(v84 + 4) = sub_425E68(v123, a8, &v126);
          *(v84 + 12) = 2082;
          swift_beginAccess();
          if (*(a4 + 24))
          {
            v85 = *(a4 + 16);
            v86 = *(a4 + 24);
          }

          else
          {
            v85 = 1701736302;
            v86 = 0xE400000000000000;
          }

          v87 = sub_425E68(v85, v86, &v126);

          *(v84 + 14) = v87;
          *(v84 + 22) = 2082;
          swift_beginAccess();
          if (*(a5 + 24))
          {
            v88 = *(a5 + 16);
            v89 = *(a5 + 24);
          }

          else
          {
            v88 = 1701736302;
            v89 = 0xE400000000000000;
          }

          v90 = sub_425E68(v88, v89, &v126);

          *(v84 + 24) = v90;
          *(v84 + 32) = 2050;
          v91 = [v19 results];
          if (v91)
          {
            v92 = v91;
            v93 = [v91 numberOfItemsInSection:v79];

            *(v84 + 34) = v93;
            _os_log_impl(&dword_0, v82, v83, "Request=(%{public}s) Container detail model request for record labels (storeID=%{public}s, libraryID:=%{public}s) finished with result count=%{public}ld", v84, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_94;
          }

          goto LABEL_97;
        }
      }

      else
      {
        swift_beginAccess();
        v54 = *(a6 + 16);
        v55 = *(v54 + 16);
        if (v55)
        {
          v56 = 0;
          v57 = v54 + 32;
          while (*(v57 + v56) == 1)
          {
            if (v55 == ++v56)
            {
              goto LABEL_82;
            }
          }

          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v94 = sub_AB4BC0();
          __swift_project_value_buffer(v94, qword_E71120);
          v95 = v124;

          v96 = sub_AB4BA0();
          v97 = sub_AB9F50();

          if (os_log_type_enabled(v96, v97))
          {
            v119 = v95;
            v122 = v21;
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v127[0] = v99;
            *v98 = 136446466;
            *(v98 + 4) = sub_425E68(v123, a8, v127);
            *(v98 + 12) = 2050;
            v100 = [v19 results];
            if (!v100)
            {
LABEL_98:

              __break(1u);
              goto LABEL_99;
            }

            v101 = v100;
            v102 = [v100 numberOfItemsInSection:v56];

            *(v98 + 14) = v102;
            _os_log_impl(&dword_0, v96, v97, "Request=(%{public}s) Finished with tracks count=%{public}ld", v98, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v99);

            v21 = v122;
            a7 = v123;
          }

          else
          {

            a7 = v123;
          }
        }

LABEL_82:
        swift_beginAccess();
        v103 = *(a6 + 16);
        v104 = *(v103 + 16);
        if (v104)
        {
          v105 = 0;
          v106 = v103 + 32;
          while ((*(v106 + v105) & 1) == 0)
          {
            if (v104 == ++v105)
            {
              goto LABEL_95;
            }
          }

          v121 = v21;
          if (qword_DE6940 != -1)
          {
            swift_once();
          }

          v107 = sub_AB4BC0();
          __swift_project_value_buffer(v107, qword_E71120);
          v21 = v124;

          v108 = sub_AB4BA0();
          v109 = sub_AB9F50();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v125[0] = v111;
            *v110 = 136446466;
            *(v110 + 4) = sub_425E68(a7, a8, v125);
            *(v110 + 12) = 2050;
            v112 = [v19 results];
            if (!v112)
            {
LABEL_99:

              __break(1u);
              return;
            }

            v113 = v112;
            v114 = [v112 numberOfItemsInSection:v105];

            *(v110 + 14) = v114;
            _os_log_impl(&dword_0, v108, v109, "Request=(%{public}s) Finished with record label count=%{public}ld", v110, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v111);
          }

          else
          {
          }

          v14 = a9;
          goto LABEL_94;
        }
      }

LABEL_95:
      v115 = v21;
      [v14 finishWithError:0];
      (*&v14[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(v115, 0);

      return;
    }
  }

  if (a2)
  {
    swift_beginAccess();
    if (*(a4 + 24) || (swift_beginAccess(), *(a5 + 24)))
    {
      v26 = a7;
      swift_errorRetain();
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v27 = sub_AB4BC0();
      __swift_project_value_buffer(v27, qword_E71120);

      swift_errorRetain();
      v28 = sub_AB4BA0();
      v29 = sub_AB9F30();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v30 = 136446978;
        *(v30 + 4) = sub_425E68(v26, a8, v125);
        *(v30 + 12) = 2082;
        swift_beginAccess();
        if (*(a4 + 24))
        {
          v31 = *(a4 + 16);
          v32 = *(a4 + 24);
        }

        else
        {
          v31 = 1701736302;
          v32 = 0xE400000000000000;
        }

        v46 = sub_425E68(v31, v32, v125);

        *(v30 + 14) = v46;
        *(v30 + 22) = 2082;
        swift_beginAccess();
        v47 = a9;
        if (*(a5 + 24))
        {
          v48 = *(a5 + 16);
          v49 = *(a5 + 24);
        }

        else
        {
          v48 = 1701736302;
          v49 = 0xE400000000000000;
        }

        v50 = sub_425E68(v48, v49, v125);

        *(v30 + 24) = v50;
        *(v30 + 32) = 2082;
        swift_getErrorValue();
        v51 = sub_ABB520();
        v53 = sub_425E68(v51, v52, v125);

        *(v30 + 34) = v53;
        _os_log_impl(&dword_0, v28, v29, "Request=(%{public}s) (storeID=%{public}s, libraryID:=%{public}s failed with error=%{public}s", v30, 0x2Au);
        swift_arrayDestroy();

        goto LABEL_45;
      }
    }

    else
    {
      v58 = a7;
      swift_errorRetain();
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v59 = sub_AB4BC0();
      __swift_project_value_buffer(v59, qword_E71120);

      swift_errorRetain();
      v60 = sub_AB4BA0();
      v61 = sub_AB9F30();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v128[0] = swift_slowAlloc();
        *v62 = 136446466;
        *(v62 + 4) = sub_425E68(v58, a8, v128);
        *(v62 + 12) = 2082;
        swift_getErrorValue();
        v63 = sub_ABB520();
        v65 = sub_425E68(v63, v64, v128);

        *(v62 + 14) = v65;
        _os_log_impl(&dword_0, v60, v61, "Request=(%{public}s) Failed with error=%{public}s", v62, 0x16u);
        swift_arrayDestroy();
      }
    }

    v47 = a9;
LABEL_45:
    swift_errorRetain();
    v66 = sub_AB3040();
    [v47 finishWithError:v66];

    (*&v47[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, a2);

    return;
  }

  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v33 = sub_AB4BC0();
  __swift_project_value_buffer(v33, qword_E71120);

  v34 = sub_AB4BA0();
  v35 = sub_AB9F30();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v36 = 136446722;
    *(v36 + 4) = sub_425E68(a7, a8, v128);
    *(v36 + 12) = 2082;
    swift_beginAccess();
    if (*(a4 + 24))
    {
      v37 = *(a4 + 16);
      v38 = *(a4 + 24);
    }

    else
    {
      v37 = 1701736302;
      v38 = 0xE400000000000000;
    }

    v67 = sub_425E68(v37, v38, v128);

    *(v36 + 14) = v67;
    *(v36 + 22) = 2082;
    swift_beginAccess();
    if (*(a5 + 24))
    {
      v68 = *(a5 + 16);
      v69 = *(a5 + 24);
    }

    else
    {
      v68 = 1701736302;
      v69 = 0xE400000000000000;
    }

    v70 = sub_425E68(v68, v69, v128);

    *(v36 + 24) = v70;
    _os_log_impl(&dword_0, v34, v35, "Request=(%{public}s) Failed with no personalization response and no error, (storeID=%{public}s, libraryID:=%{public}s", v36, 0x20u);
    swift_arrayDestroy();
  }

  [a9 finishWithError:0];
  (*&a9[OBJC_IVAR____TtC16MusicApplication38JSContainerDetailModelRequestOperation_responseHandler])(0, 0);
}