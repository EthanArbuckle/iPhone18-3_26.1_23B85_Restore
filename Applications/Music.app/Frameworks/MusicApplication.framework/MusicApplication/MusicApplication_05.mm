id _s16MusicApplication22JSDrivenViewControllerC31lifetimeImpressionsForReporting3for0A6JSCore18JSImpressionsBatchCSgAF011JSComponentE0C_tF_0()
{
  v1 = sub_AB3430();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_4D39CC();
  if (v5)
  {
    v6 = v5;
    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = v7;
      v28 = v0;
      v6;
      goto LABEL_7;
    }
  }

  sub_12B2FC();
  if (!v10)
  {
    sub_12AFE8();
    v22 = v26;
    goto LABEL_10;
  }

  v8 = v9;
  v28 = v0;
  swift_unknownObjectRetain();
LABEL_7:
  ObjectType = swift_getObjectType();
  v12 = *(v8 + 8);
  v12(ObjectType, v8);
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = swift_getObjectType();
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_3B8F68();
  v16 = sub_21CCAC(2, v4, v29, v15, v14);
  (*(v2 + 8))(v4, v1);
  sub_12E1C(v29, &qword_DF2BD0);
  swift_unknownObjectRelease();
  v17 = swift_getObjectType();
  swift_unknownObjectRetain();
  v12(v17, v8);
  v19 = v18;
  swift_unknownObjectRelease();
  v20 = swift_getObjectType();
  (*(v19 + 104))(v20, v19);
  swift_unknownObjectRelease();
  sub_12AFE8();
  v22 = v21;
  if (v16)
  {
    v23 = objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v24 = JSImpressionsBatch.init(impressions:location:pageDetailsProvider:)(v16, 0, v22);
    swift_unknownObjectRelease();
    return v24;
  }

LABEL_10:
  swift_unknownObjectRelease();

  return 0;
}

uint64_t sub_6F29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  if (*(v3 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) == 1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_70D90;
    *(v8 + 24) = v7;
    v9 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers;
    swift_beginAccess();
    v10 = *(v3 + v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_6C468(0, v10[2] + 1, 1, v10, &qword_DEAB08, &unk_AF9250, &qword_E07D90);
      *(v3 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_6C468((v12 > 1), v13 + 1, 1, v10, &qword_DEAB08, &unk_AF9250, &qword_E07D90);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_710F8;
    v14[5] = v8;
    *(v3 + v9) = v10;
    swift_endAccess();
  }

  else
  {

    sub_68DB0(v16, a1, a2);
  }
}

void sub_6F4D0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for MetricsPageProperties();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
  swift_beginAccess();
  sub_15F84(v2 + v16, v11, &unk_DF1330);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_12E1C(v11, &unk_DF1330);
  }

  else
  {
    sub_70CD8(v11, v15);
    v29 = v2;
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    sub_15F84(&v15[*(v12 + 24)], v5, &unk_DF2AE0);
    v19 = *&v15[*(v12 + 28)];

    v20 = v9;
    v21 = v31;

    v22 = v17;
    v23 = v29;
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v30, v21, v22, v18, v5, v19, 0, 0, v20);
    (*(v13 + 56))(v20, 0, 1, v12);
    swift_beginAccess();
    sub_160B4(v20, v23 + v16, &unk_DF1330);
    swift_endAccess();
    v34 = *(v23 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
    v24 = v34;
    sub_13C80(0, &qword_DE7500);
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10);
    if (swift_dynamicCast())
    {
      sub_70DF8(v32, v35);
      sub_15F84(v23 + v16, v20, &unk_DF1330);
      v26 = v36;
      v27 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      (*(v27 + 16))(v20, v26, v27);
      sub_7103C(v15, type metadata accessor for MetricsPageProperties);
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    else
    {
      sub_7103C(v15, type metadata accessor for MetricsPageProperties);
      memset(v32, 0, sizeof(v32));
      v33 = 0;
      sub_12E1C(v32, &qword_DEAB18);
    }
  }
}

void sub_6F8D4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for MetricsPageProperties();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
  swift_beginAccess();
  sub_15F84(v2 + v16, v11, &unk_DF1330);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_12E1C(v11, &unk_DF1330);
  }

  else
  {
    sub_70CD8(v11, v15);
    v29 = v2;
    v17 = *v15;
    v18 = v15[1];
    sub_15F84(v15 + *(v12 + 24), v5, &unk_DF2AE0);
    v19 = *(v15 + *(v12 + 28));

    v20 = v9;
    v21 = v31;

    v22 = v17;
    v23 = v29;
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v22, v18, v30, v21, v5, v19, 0, 0, v20);
    (*(v13 + 56))(v20, 0, 1, v12);
    swift_beginAccess();
    sub_160B4(v20, v23 + v16, &unk_DF1330);
    swift_endAccess();
    v34 = *(v23 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
    v24 = v34;
    sub_13C80(0, &qword_DE7500);
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10);
    if (swift_dynamicCast())
    {
      sub_70DF8(v32, v35);
      sub_15F84(v23 + v16, v20, &unk_DF1330);
      v26 = v36;
      v27 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      (*(v27 + 16))(v20, v26, v27);
      sub_7103C(v15, type metadata accessor for MetricsPageProperties);
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    else
    {
      sub_7103C(v15, type metadata accessor for MetricsPageProperties);
      memset(v32, 0, sizeof(v32));
      v33 = 0;
      sub_12E1C(v32, &qword_DEAB18);
    }
  }
}

void sub_6FCD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v7 = __chkstk_darwin(v6 - 8);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for MetricsPageProperties();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
  swift_beginAccess();
  v30 = v1;
  sub_15F84(v1 + v15, v10, &unk_DF1330);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DF1330);
  }

  else
  {
    sub_70CD8(v10, v14);
    v16 = *v14;
    v17 = v14[1];
    v18 = v14[3];
    v29 = v14[2];
    sub_15F84(a1, v5, &unk_DF2AE0);
    v19 = *(v14 + *(v11 + 28));

    v20 = v31;
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v16, v17, v29, v18, v5, v19, 0, 0, v31);
    (*(v12 + 56))(v20, 0, 1, v11);
    v21 = v30;
    swift_beginAccess();
    sub_160B4(v20, v21 + v15, &unk_DF1330);
    swift_endAccess();
    v34 = *(v21 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
    v22 = v34;
    sub_13C80(0, &qword_DE7500);
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10);
    if (swift_dynamicCast())
    {
      sub_70DF8(v32, v35);
      v24 = v21 + v15;
      v25 = v31;
      sub_15F84(v24, v31, &unk_DF1330);
      v26 = v36;
      v27 = v37;
      __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      (*(v27 + 16))(v25, v26, v27);
      sub_7103C(v14, type metadata accessor for MetricsPageProperties);
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    else
    {
      sub_7103C(v14, type metadata accessor for MetricsPageProperties);
      memset(v32, 0, sizeof(v32));
      v33 = 0;
      sub_12E1C(v32, &qword_DEAB18);
    }
  }
}

void sub_700E8(uint64_t a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for MetricsPageProperties();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
  swift_beginAccess();
  sub_15F84(v1 + v15, v10, &unk_DF1330);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DF1330);
  }

  else
  {
    sub_70CD8(v10, v14);
    v16 = v14[1];
    v30 = *v14;
    v31 = v1;
    v17 = v8;
    v18 = v14[2];
    v19 = v14[3];
    sub_15F84(v14 + *(v11 + 24), v4, &unk_DF2AE0);
    v20 = v32;

    v21 = v16;
    v22 = v17;
    v23 = v20;
    v24 = v31;
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v30, v21, v18, v19, v4, v23, 0, 0, v17);
    (*(v12 + 56))(v17, 0, 1, v11);
    swift_beginAccess();
    sub_160B4(v17, v24 + v15, &unk_DF1330);
    swift_endAccess();
    v35 = *(v24 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
    v25 = v35;
    sub_13C80(0, &qword_DE7500);
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAB10);
    if (swift_dynamicCast())
    {
      sub_70DF8(v33, v36);
      sub_15F84(v24 + v15, v22, &unk_DF1330);
      v27 = v37;
      v28 = v38;
      __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      (*(v28 + 16))(v22, v27, v28);
      sub_7103C(v14, type metadata accessor for MetricsPageProperties);
      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    else
    {
      sub_7103C(v14, type metadata accessor for MetricsPageProperties);
      memset(v33, 0, sizeof(v33));
      v34 = 0;
      sub_12E1C(v33, &qword_DEAB18);
    }
  }
}

void sub_704F0(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = v2;
    v6 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (v7)
    {
      v8 = *&stru_1F8.segname[(swift_isaMask & *v7) + 8];
      v9 = a1;
      v10 = v7;
      v8(0, 0);

      v7 = *(v4 + v6);
    }

    else
    {
      v9 = a1;
    }

    *(v4 + v6) = a1;
    v11 = v9;

    sub_66F8C();
    a2(0);
  }
}

uint64_t sub_70600()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for JSDrivenViewController()
{
  result = qword_DEA800;
  if (!qword_DEA800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s16MusicApplication22JSDrivenViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_forceShowingLargeFixedTitleHeader) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_canShowOfflineMessage) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalParallaxViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_isContentReady) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_ppt_onContentIsReady);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_appearanceState) = 0x80;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerAppearanceState) = 0x80;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_hasInvokedDidLoadPreemptively) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_lifecycleEventQueue) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_presentationSegue) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pushSegue) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_offlineMessageView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_networkConnectivityObserver) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isShowingOfflineMessage) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_viewModelRevision) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_shouldIgnorePromotionalProperties) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isArtistPromotionalLayoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_promotionalLayoutStyleDidChange) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_wantsPromotionalParallaxViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_headerItemRevisionID) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_needsContentOffsetResetOnViewDidAppear) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_artistRadioStationController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_browseContentItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_cancelBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contextBarButtonItem) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_trailingBarButtonItemMap;
  *(v0 + v2) = sub_96C40(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousLeftBarButtonItems) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_previousRightBarButtonItems) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentNavigationItemBinding) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  sub_ABAFD0();
  __break(1u);
}

void sub_7091C()
{
  sub_70A34();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_70A34()
{
  if (!qword_DEA810)
  {
    type metadata accessor for MetricsPageProperties();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEA810);
    }
  }
}

uint64_t getEnumTagSinglePayload for JSDrivenViewController.LifecycleEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7C)
  {
    goto LABEL_17;
  }

  if (a2 + 132 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 132) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 132;
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

      return (*a1 | (v4 << 8)) - 132;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 132;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for JSDrivenViewController.LifecycleEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7C)
  {
    v4 = 0;
  }

  if (a2 > 0x7B)
  {
    v5 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_70BE8(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 5;
  }

  else
  {
    return v1 & 1 | 4u;
  }
}

_BYTE *sub_70C14(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t sub_70CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_70DC0()
{

  return swift_deallocObject();
}

uint64_t sub_70DF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_118Tm()
{

  return swift_deallocObject();
}

unint64_t sub_70E5C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0xFFFFFFFFFFFFFF9);
  }

  return result;
}

uint64_t sub_70E78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_70F68()
{

  return swift_deallocObject();
}

uint64_t sub_70FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7103C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7109C()
{

  return swift_deallocObject();
}

char *sub_710FC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionText];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_forSecureTextEntry] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_keyboardType] = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_placeholder];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_textAlignment] = 4;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocapitilizationType] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocorrectionType] = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField;
  *&v4[v13] = [objc_allocWithZone(MusicTextField) init];
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for TextFieldCell();
  v15 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel;
  v18 = *&v15[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel];

  v19 = sub_AB9260();

  [v18 setText:v19];

  v20 = qword_DE6C98;
  v21 = *&v15[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_E718D8;
  [v21 setTextColor:qword_E718D8];

  [*&v15[v17] setTextAlignment:4];
  [v16 addSubview:*&v15[v17]];
  v23 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField;
  [*&v15[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField] setSecureTextEntry:v15[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_forSecureTextEntry]];
  v24 = *&v15[v23];
  v25 = sub_AB9260();
  [v24 setText:v25];

  [*&v15[v23] setTextColor:v22];
  [*&v15[v23] setTextAlignment:*&v15[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_textAlignment]];
  v26 = *&v15[v23];
  [v26 setTextFieldDelegate:v15];

  [*&v15[v23] setAutocorrectionType:1];
  [*&v15[v23] setAutocapitalizationType:*&v15[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocapitilizationType]];
  [*&v15[v23] setKeyboardType:*&v15[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_keyboardType]];
  [*&v15[v23] setAdjustsFontForContentSizeCategory:1];
  v27 = qword_DE6750;
  v28 = *&v15[v23];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setFont:qword_DEAB40];

  [*&v15[v23] setContentVerticalAlignment:1];
  [v16 addSubview:*&v15[v23]];

  return v15;
}

void sub_71558(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText) == a1 && *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText + 8) == a2;
  if (!v3 && (sub_ABB3C0() & 1) == 0)
  {
    v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText);
    v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText + 8);
    v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField);
    v7 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v10._countAndFlagsBits = v5;
      v10._object = v4;
      sub_AB94A0(v10);
    }

    else
    {
    }

    v8 = sub_AB9260();

    [v6 setText:v8];
  }
}

id sub_71680()
{
  if (qword_DE6750 != -1)
  {
    swift_once();
  }

  v1 = qword_DEAB40;

  return v1;
}

uint64_t sub_717B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v50.receiver = v1;
  v50.super_class = type metadata accessor for TextFieldCell();
  objc_msgSendSuper2(&v50, "layoutSubviews");
  v3 = [v1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 music_inheritedLayoutInsets];
  v13 = v12;
  v15 = v14;
  [v1 effectiveUserInterfaceLayoutDirection];
  v16 = [v1 traitCollection];
  [v16 displayScale];

  if (qword_DE6750 != -1)
  {
    swift_once();
  }

  v17 = qword_DEAB40;
  v18 = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v13, v15);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel];
  v26 = [v25 font];
  if (!v26 || (v27 = v26, v26, v27 != v17))
  {
    [v25 setFont:v17];
  }

  [v25 sizeThatFits:{v22, v24}];
  v30 = v29;
  v48 = v28;
  if (v28 > *&v1[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth])
  {
    v31 = v28;
  }

  else
  {
    v31 = *&v1[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth];
  }

  [v25 setBounds:{0.0, 0.0, v31, v29}];
  v51.origin.x = v18;
  v51.origin.y = v20;
  v51.size.width = v22;
  v51.size.height = v24;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = v18;
  v52.origin.y = v20;
  v52.size.width = v22;
  v52.size.height = v24;
  v49 = v18;
  MinY = CGRectGetMinY(v52);
  v34 = (*(ObjectType + 480))();
  [v34 _scaledValueForValue:30.0];

  sub_AB3A00();
  v36 = MinY + v35;
  [v25 _firstBaselineOffsetFromTop];
  v38 = v36 - v37;
  sub_ABA490();
  sub_ABA4C0();
  [v25 setCenter:?];
  v53.origin.x = MinX;
  v53.origin.y = v38;
  v53.size.width = v31;
  v53.size.height = v30;
  MaxX = CGRectGetMaxX(v53);
  v54.origin.x = v49;
  v54.origin.y = v20;
  v54.size.width = v22;
  v54.size.height = v24;
  v40 = MaxX - CGRectGetMinX(v54) + 16.0;
  v41 = v49 + v40;
  v42 = v22 - v40;
  v43 = *&v1[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField];
  [v43 sizeThatFits:{v42, v24}];
  v55.origin.x = v41;
  v55.origin.y = v20;
  v55.size.width = v42;
  v55.size.height = v24;
  CGRectGetWidth(v55);
  v56.origin.x = v41;
  v56.origin.y = v20;
  v56.size.width = v42;
  v56.size.height = v24;
  CGRectGetMinX(v56);
  sub_ABA490();
  [v43 setFrame:?];
  v44 = &v1[OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = *(v44 + 1);
    v47 = swift_getObjectType();
    (*(v46 + 8))(v1, v47, v46, v48);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_71C84(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = [a1 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_AB92A0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v25 = v9;
  v26 = v11;
  v24[2] = v9;
  v24[3] = v11;
  v12 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText + 8);
  v24[0] = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText);
  v24[1] = v12;
  v13 = sub_AB35C0();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_36A48();

  sub_ABAAE0();
  v15 = v14;
  sub_72894(v6);

  if ((v15 & 1) == 0)
  {
    sub_AB93C0();
  }

  v16 = v25;
  v17 = v26;
  v18 = (v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText);
  if ((*(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText) != v25 || *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText + 8) != v26) && (sub_ABB3C0() & 1) == 0)
  {
    *v18 = v16;
    v18[1] = v17;

    v19 = v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v23 = *(v21 + 16);

    v23(v2, v16, v17, ObjectType, v21);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_71F4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    sub_AB92A0();
  }

  v8 = sub_AB9260();

  v9 = sub_AB9260();
  v10 = [v8 stringByReplacingCharactersInRange:a2 withString:{a3, v9}];

  v11 = sub_AB92A0();
  v13 = v12;

  v14 = (v3 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText);
  v15 = *(v3 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText) == v11 && *(v3 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText + 8) == v13;
  if (v15 || (sub_ABB3C0() & 1) != 0)
  {
    goto LABEL_10;
  }

  *v14 = v11;
  v14[1] = v13;

  v16 = v3 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 16);

    v19(v3, v11, v13, ObjectType, v17);
    swift_unknownObjectRelease();
LABEL_10:
  }

  return 1;
}

double sub_722BC(void *a1, double a2)
{
  v5 = (*(v2 + 480))();
  [v5 _scaledValueForValue:48.0];

  [a1 displayScale];
  sub_AB3A00();
  return a2;
}

void sub_72408()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_DEAB40 = v2;
}

id sub_72474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextFieldCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_72578(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled;
  *(v1 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField);
  [v3 setTextFieldEnabled:(a1 & 1) == 0];
  v4 = 1.0;
  if (*(v1 + v2))
  {
    v4 = 0.5;
  }

  return [v3 setAlpha:v4];
}

void sub_725FC()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionText);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionTextMinimumWidth) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_forSecureTextEntry) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_keyboardType) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_placeholder);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_isDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_textAlignment) = 4;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocapitilizationType) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_autocorrectionType) = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueImmutablePrefixText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_descriptionLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField;
  *(v0 + v5) = [objc_allocWithZone(MusicTextField) init];
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  sub_ABAFD0();
  __break(1u);
}

void sub_72758(uint64_t a1, unint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText) == a1 && *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell__valueText + 8) == a2;
  if (!v5 && (sub_ABB3C0() & 1) == 0)
  {
    *v4 = a1;
    v4[1] = a2;

    v7 = *(v2 + OBJC_IVAR____TtC16MusicApplication13TextFieldCell_valueTextField);
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {

      v11._countAndFlagsBits = a1;
      v11._object = a2;
      sub_AB94A0(v11);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v9 = sub_AB9260();

    [v7 setText:v9];
  }
}

uint64_t sub_72894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_728FC(uint64_t a1, void *a2, char a3, void *a4)
{
  v20 = a4;
  sub_72C6C();
  v8 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC48);
  if (swift_dynamicCast())
  {
    sub_70DF8(v18, v21);
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v8;
    }

    v12 = (*(v10 + 16))(a1, v11, a3 & 1, v9, v10);
    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v12)
    {
      v13 = 1;
      return v13 & 1;
    }
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_72CB8(v18);
  }

  v14 = [v8 parentViewController];
  if (v14)
  {
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = v8;
    }

    v16 = v14;
    v13 = sub_728FC(a1, v15, a3 & 1, v16);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_72A60(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 viewControllers];
  sub_72C6C();
  v8 = sub_AB9760();
  v12 = a1;
  v11[2] = &v12;
  v9 = sub_1B3840(sub_72E3C, v11, v8);

  if (v9)
  {
  }

  else
  {
    [v3 showViewController:a1 sender:a2];
  }

  return 1;
}

unint64_t sub_72C6C()
{
  result = qword_DE7500;
  if (!qword_DE7500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE7500);
  }

  return result;
}

uint64_t sub_72CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEAC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_72D20(void *a1)
{
  v2 = v1;
  v4 = [v1 viewControllers];
  sub_72C6C();
  v5 = sub_AB9760();
  v6 = sub_469BE8(a1, v5);
  v8 = v7;

  result = 0;
  if ((v8 & 1) == 0)
  {
    v10 = [v2 viewControllers];
    sub_AB9760();

    isa = sub_AB9740().super.isa;
    [v2 setViewControllers:isa];

    v12 = a1;
    return a1;
  }

  return result;
}

char *sub_72E5C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  *&v0[OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController____lazy_storage___accountButton] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_availabilityBinding] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_landingDrivenViewController] = 0;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v5 = sub_AB9260();

  [v4 setTitle:v5];

  v6 = [v4 navigationItem];
  [v6 setLargeTitleDisplayMode:1];

  v7 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;

  v9 = *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter(v10);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v11;
  *(inited + 40) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = v9;

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v7;
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v16 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_73D64, v15);

  *&v4[OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_availabilityBinding] = v16;

  return v4;
}

void sub_73158()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ApplicationCapabilities.Controller.capabilities.getter(v19);
    v2 = v20;

    sub_70C54(v19);
    v3 = sub_472A84(0, v2);

    v4 = OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_landingDrivenViewController;
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_landingDrivenViewController];
    if (v3)
    {
      if (!v5)
      {
        v6 = [objc_allocWithZone(type metadata accessor for JSDrivenViewController()) init];
        v7 = v1;
        UIViewController.add(_:)(v6);
        v8 = [v7 isViewLoaded];

        if (v8)
        {
          v9 = objc_allocWithZone(type metadata accessor for JSSearchLandingComponentController());
          v10 = JSSearchLandingComponentController.init()();
          v11 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
          swift_beginAccess();
          v12 = *&v6[v11];
          if (v12)
          {
            v13 = *&stru_1F8.segname[(swift_isaMask & *v12) + 8];
            v14 = v12;
            v13(0, 0);

            v15 = *&v6[v11];
          }

          else
          {
            v15 = 0;
          }

          *&v6[v11] = v10;
          v18 = v10;

          sub_66F8C();
        }

        v17 = *&v1[v4];
        *&v1[v4] = v6;
        v1 = v7;
        goto LABEL_12;
      }
    }

    else if (v5)
    {
      v16 = v5;
      UIViewController.remove(_:)(v16);
      v17 = *&v1[v4];
      *&v1[v4] = 0;

LABEL_12:
      v1 = v17;
    }
  }
}

void sub_733F4()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v2 = sub_735D0();
  *&v2[OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate + 8] = &off_CF4728;
  swift_unknownObjectWeakAssign();

  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController____lazy_storage___accountButton];
  sub_8CC40();

  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_landingDrivenViewController];
  if (v4)
  {
    v5 = objc_allocWithZone(type metadata accessor for JSSearchLandingComponentController());
    v6 = v4;
    v7 = JSSearchLandingComponentController.init()();
    v8 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v9 = *&v6[v8];
    if (v9)
    {
      v10 = *&stru_1F8.segname[(swift_isaMask & *v9) + 8];
      v11 = v9;
      v10(0, 0);

      v12 = *&v6[v8];
    }

    else
    {
      v12 = 0;
    }

    *&v6[v8] = v7;
    v13 = v7;

    sub_66F8C();
    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      v16 = [v6 view];
      if (v16)
      {
        v17 = v16;
        [v15 addSubview:v16];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_735D0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController____lazy_storage___accountButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController____lazy_storage___accountButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController____lazy_storage___accountButton);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AccountButton()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_7368C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_landingDrivenViewController;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_landingDrivenViewController);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = sub_4D39CC();

  if (v6)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (!v8)
    {
LABEL_22:

      v12 = *(v2 + v3);
      if (!v12)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    (*(v8 + 8))(ObjectType, v8);
    v10 = v9;

    v11 = swift_getObjectType();
    (*(v10 + 16))(a1 & 1, v11, v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v2 + v3);
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = v12;
  v14 = sub_4D39CC();

  if (v14)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      type metadata accessor for JSVerticalStackViewController();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        *(v15 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_impressionTrackingIsEnabledOverride) = a1 & 1;
      }
    }
  }

LABEL_11:
  v16 = sub_739D0();
  v6 = v16;
  if (v16 >> 62)
  {
    goto LABEL_25;
  }

  v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (v17)
  {
    while (1)
    {
      v18 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v19 = sub_36044C(v18, v6);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_17:
        v19[qword_DF9F88] = (a1 & 1) == 0;

        ++v18;
        if (v20 == v17)
        {
          goto LABEL_26;
        }
      }

      if (v18 < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      __break(1u);
LABEL_25:
      v17 = sub_ABB060();
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    v19 = *(v6 + 8 * v18 + 32);
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

LABEL_26:

  v21 = *(v2 + v3);
  if (a1)
  {
    if (v21)
    {
      v22 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
      swift_beginAccess();
      v23 = *(v21 + v22);
      if (v23)
      {
        v24 = *(&stru_1F8.flags + (swift_isaMask & *v23));
        v25 = v23;
        v24(1);
LABEL_33:
      }
    }
  }

  else if (v21)
  {
    v26 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v27 = *(v21 + v26);
    if (v27)
    {
      v28 = *&stru_248.sectname[swift_isaMask & *v27];
      v25 = v27;
      v28(1);
      goto LABEL_33;
    }
  }
}

void *sub_739D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27SearchLandingViewController_landingDrivenViewController);
  if (v1)
  {
    v2 = v1;
    v3 = sub_4D39CC();

    if (v3)
    {
      v4 = [v3 childViewControllers];
      sub_72C6C();
      v5 = sub_AB9760();

      if (v5 >> 62)
      {
LABEL_22:
        v6 = sub_ABB060();
        if (v6)
        {
LABEL_5:
          v7 = 0;
          do
          {
            v8 = v7;
            while (1)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v9 = sub_35F8D4(v8, v5);
              }

              else
              {
                if (v8 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_21;
                }

                v9 = *(v5 + 8 * v8 + 32);
              }

              v10 = v9;
              v7 = v8 + 1;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

              type metadata accessor for JSSearchLandingViewController();
              if (swift_dynamicCastClass())
              {
                break;
              }

              ++v8;
              if (v7 == v6)
              {
                goto LABEL_23;
              }
            }

            sub_AB9730();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            sub_AB97F0();
          }

          while (v7 != v6);
        }
      }

      else
      {
        v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
        if (v6)
        {
          goto LABEL_5;
        }
      }

LABEL_23:
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_73C74()
{
  v1 = [v0 navigationItem];
  v2 = sub_735D0();
  [v1 _setLargeTitleAccessoryView:v2 alignToBaseline:0];
}

uint64_t sub_73CEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_73D24()
{

  return swift_deallocObject();
}

id JSTabViewController.__allocating_init(identifier:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
  v8 = &v7[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v12.receiver = v7;
  v12.super_class = v3;

  v9 = objc_msgSendSuper2(&v12, "init");
  v10 = sub_AB9260();

  [v9 setTitle:{v10, v12.receiver, v12.super_class}];

  return v9;
}

id JSTabViewController.init(identifier:)(char a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton] = 0;
  v4 = &v3[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 2) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for JSTabViewController();

  v5 = objc_msgSendSuper2(&v8, "init");
  v6 = sub_AB9260();

  [v5 setTitle:{v6, v8.receiver, v8.super_class}];

  return v5;
}

uint64_t type metadata accessor for JSTabViewController()
{
  result = qword_DEACD0;
  if (!qword_DEACD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void JSTabViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton) = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSTabViewController.viewDidLoad()()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for JSTabViewController();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = &v1[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier];
    if (v1[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier] > 1u)
    {
      if (v1[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier] == 2)
      {
        v5 = AccessibilityIdentifier.radioContentView.unsafeMutableAddressor();
      }

      else
      {
        v5 = AccessibilityIdentifier.videosContentView.unsafeMutableAddressor();
      }
    }

    else if (v1[OBJC_IVAR____TtC16MusicApplication19JSTabViewController_identifier])
    {
      v5 = AccessibilityIdentifier.browseContentView.unsafeMutableAddressor();
    }

    else
    {
      v5 = AccessibilityIdentifier.listenNowContentView.unsafeMutableAddressor();
    }

    v6 = *v5;
    v7 = v5[1];

    sub_74390();
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v6, v7);

    v8 = sub_749CC();
    *&v8[OBJC_IVAR____TtC16MusicApplication13AccountButton_delegate + 8] = &off_CF4798;
    swift_unknownObjectWeakAssign();

    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton];
    sub_8CC40();

    v10 = *(v4 + 1);
    v11 = *(v4 + 2);
    LOBYTE(v7) = *v4;
    objc_allocWithZone(type metadata accessor for JSTabComponentController());

    v12 = JSTabComponentController.init(identifier:)(v7, v10, v11);
    static ApplicationCapabilities.shared.getter(v28);

    sub_70C54(v28);
    v13 = ApplicationCapabilities.Tabs.shouldShowLoadingUpsellBanner(for:)((0x5030201u >> (8 * *v4)));

    if (v13)
    {
      v29[0] = _swiftEmptyArrayStorage;
      memset(&v29[1], 0, 24);
      v29[4] = 1;
      v30 = 0;
      v14 = objc_allocWithZone(type metadata accessor for JSUpsellBanner());
      v15 = JSUpsellBanner.init(type:)(v29);
      (*(&stru_B8.offset + (swift_isaMask & *v15)))(0);
      v16 = v12;
      v17 = JSComponentController.headerItem.getter();

      v18 = *(&stru_2E8.offset + (swift_isaMask & *v17));
      v19 = v15;
      v18(v15);
    }

    v20 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (v21)
    {
      v22 = *&stru_1F8.segname[(swift_isaMask & *v21) + 8];
      v23 = v12;
      v24 = v21;
      v22(0, 0);

      v21 = *&v1[v20];
    }

    else
    {
      v25 = v12;
    }

    *&v1[v20] = v12;
    v26 = v12;

    sub_66F8C();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_74390()
{
  result = qword_DF12A0;
  if (!qword_DF12A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF12A0);
  }

  return result;
}

void sub_74424()
{
  v0 = sub_749CC();
  sub_8CC40();
}

void sub_7446C(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (a1)
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    type metadata accessor for PageHeaderContentViewController();
    v5 = v4;
    v6 = a1;
    v7 = sub_ABA790();

    if (v7)
    {
      return;
    }

    v4 = *(v1 + v3);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    return;
  }

  v8 = v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_adjustsFontsForAccessibilitySizes];
  v4[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_adjustsFontsForAccessibilitySizes] = 0;
  if (v8 == 1)
  {
    v9 = v4;
    sub_345A84(0);
    if ([v9 isViewLoaded])
    {
      v10 = [v9 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      [v10 setNeedsLayout];

      v9 = v11;
    }
  }

LABEL_12:
  v12 = sub_749CC();
  sub_8CC40();
}

void *JSTabViewController.pageHeaderContentViewController.getter()
{
  v1 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSTabViewController.pageHeaderContentViewController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_7446C(v4);
}

void (*JSTabViewController.pageHeaderContentViewController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_74724;
}

void sub_74724(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_7446C(v8);

    v8 = *v5;
  }

  else
  {
    sub_7446C(v8);
  }

  free(v3);
}

void sub_747C0(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isMediaPicker.getter();

  if (!v5)
  {
    v6 = [v2 navigationItem];
    v7 = [v6 largeTitleDisplayMode];

    if (v7 == &dword_0 + 2 && (v8 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController, swift_beginAccess(), (v9 = *&v2[v8]) != 0))
    {
      v10 = v9;
      v11 = [v2 navigationItem];
      [v11 _setLargeTitleAccessoryView:0 alignToBaseline:0];

      v12 = *&v10[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView];
      *&v10[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView] = a1;
      v13 = a1;

      v14 = *&v10[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
      v15 = *(v14 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
      *(v14 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = a1;
      v16 = v13;
      sub_34549C(v15);
    }

    else
    {
      v17 = [v2 navigationItem];
      [v17 _setLargeTitleAccessoryView:a1 alignToBaseline:0];

      v18 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_pageHeaderContentViewController;
      swift_beginAccess();
      v19 = *&v2[v18];
      if (!v19)
      {
        return;
      }

      v20 = *&v19[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView];
      *&v19[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_accessoryView] = 0;
      v16 = v19;

      v21 = *&v16[OBJC_IVAR____TtC16MusicApplication31PageHeaderContentViewController_pageHeaderContentView];
      v15 = *(v21 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView);
      *(v21 + OBJC_IVAR____TtC16MusicApplication21PageHeaderContentView_accessoryView) = 0;
      sub_34549C(v15);
    }
  }
}

id sub_749CC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication19JSTabViewController____lazy_storage___accountButton);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AccountButton()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_74AA0()
{
}

id JSTabViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSTabViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_74BC4()
{
  sub_ABAD90(20);

  sub_AB3820();
  sub_7F8F4(&qword_DF9260, &type metadata accessor for IndexPath);
  v4._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 0x3D6C6C656320;
  v5._object = 0xE600000000000000;
  sub_AB94A0(v5);
  type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong description];
    sub_AB92A0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
  v6._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v6);

  return 0x7461507865646E69;
}

void sub_74D38(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_AB3820();
  (*(*(v5 - 8) + 32))(a3, a1, v5);
  type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  swift_unknownObjectWeakInit();
}

void sub_74DD4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  *(v1 + 56) = a1;
  if (!v3)
  {
    goto LABEL_5;
  }

  sub_13C80(0, qword_DFAAC0);
  v9 = a1;
  if ((sub_ABA790() & 1) == 0)
  {
    v6 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v6)
    {

      v6(v7);

      sub_17654(v6);
LABEL_5:
      v8 = v4;
      goto LABEL_7;
    }
  }

  v8 = v9;
LABEL_7:
}

void sub_74EA4(void *a1)
{
  v2 = *(v1 + 64);
  v37 = a1;
  if (v2)
  {
    if (!a1)
    {
      v6 = 0;
LABEL_11:
      *(v1 + 64) = a1;
      v10 = v6;

      goto LABEL_12;
    }

    v38 = a1;
    v3 = v2;
    if ([v3 isArtworkVisuallyIdenticalToCatalog:v38])
    {
      v4 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);

      if (v4)
      {
LABEL_5:
        v5 = v38;
LABEL_17:

        return;
      }

      goto LABEL_12;
    }

LABEL_10:
    v7 = [*(v1 + 112) traitCollection];
    [v7 displayScale];
    v9 = v8;

    [v38 setDestinationScale:v9];
    v6 = v38;
    [v6 setRenderHint:{objc_msgSend(v6, "renderHint") | 1}];

    v2 = *(v1 + 64);
    a1 = v37;
    goto LABEL_11;
  }

  if (a1)
  {
    v38 = a1;
    goto LABEL_10;
  }

  v13 = *(v1 + 176);
  if (!v13)
  {
    return;
  }

  v15 = *(v1 + 152);
  v14 = *(v1 + 160);
  v16 = *(v1 + 168);
  v18 = *(v1 + 184);
  v17 = *(v1 + 192);
  v20 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent);
  v19 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 8);
  v22 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 16);
  v21 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 24);
  v24 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 32);
  v23 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 40);
  v25 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  v42[0] = v15;
  v42[1] = v14;
  v42[2] = v16;
  v42[3] = v13;
  v42[4] = v18;
  v42[5] = v17;
  if (v25 == 255)
  {
    v40 = v23;
    v34 = v21;
    v36 = v24;
    v28 = v22;
    v29 = v16;
    v30 = v13;
    v31 = v15;
    v32 = v14;
    sub_80AA0(v20, v19, v28, v34, v36, v40, 255);
    sub_80AA0(v15, v14, v16, v13, v18, v17, 1);
  }

  else if (v25)
  {
    v41[0] = v20;
    v41[1] = v19;
    v41[2] = v22;
    v41[3] = v21;
    v41[4] = v24;
    v41[5] = v23;
    v26 = v22;
    v27 = v21;
    v35 = v24;
    v39 = v23;
    sub_80C9C(v15, v14, v16, v13);
    sub_80A34(v20, v19, v26, v27, v35, v39, v25);
    v33 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v41, v42);
    sub_2F1C8(v15, v14, v16, v13);
    sub_80AA0(v20, v19, v26, v27, v35, v39, v25);
    if (v33)
    {
      v38 = v37;
      goto LABEL_5;
    }
  }

LABEL_12:
  v11 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (!v11)
  {
    v5 = v37;
    goto LABEL_17;
  }

  v11(v12);

  sub_17654(v11);
}

void sub_751F4(void *a1)
{
  if (!a1)
  {
    v54 = 0u;
    v55 = 0u;
    goto LABEL_6;
  }

  v3 = a1;
  v4 = [v3 token];
  sub_ABAB50();
  swift_unknownObjectRelease();

  if (!*(&v55 + 1))
  {
LABEL_6:
    sub_12E1C(&v54, &unk_DE8E40);
    goto LABEL_7;
  }

  sub_13C80(0, &qword_DEB5E0);
  if (swift_dynamicCast())
  {
    v5 = [v53[0] cropStyle];

    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = v1[17];
  v1[17] = v5;
  v7 = v5;
  sub_75808(v6);

  v8 = v1[9];
  if (v8)
  {
    if (!a1)
    {
      *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 0;
      v12 = 0;
LABEL_18:
      v18 = v1[9];
      v1[9] = a1;
      v19 = v12;

      goto LABEL_19;
    }

    v9 = a1;
    v10 = v8;
    if ([v10 isArtworkVisuallyIdenticalToCatalog:v9])
    {
      v11 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);

      if ((v11 & 2) != 0)
      {
LABEL_12:

        return;
      }

      goto LABEL_19;
    }

    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 0;
LABEL_17:
    v13 = v9;
    [v13 setRenderHint:{objc_msgSend(v13, "renderHint") | 1}];

    v14 = v1[14];
    v12 = v13;
    v15 = [v14 traitCollection];
    [v15 displayScale];
    v17 = v16;

    [v12 setDestinationScale:v17];
    goto LABEL_18;
  }

  if (a1)
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 0;
    v9 = a1;
    goto LABEL_17;
  }

  v23 = v1[22];
  if (!v23)
  {

    return;
  }

  v25 = v1[19];
  v24 = v1[20];
  v26 = v1[21];
  v28 = v1[23];
  v27 = v1[24];
  v30 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent);
  v29 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 8);
  v32 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 16);
  v31 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 24);
  v34 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 32);
  v33 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 40);
  v35 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  *&v54 = v25;
  *(&v54 + 1) = v24;
  *&v55 = v26;
  *(&v55 + 1) = v23;
  v56 = v28;
  v57 = v27;
  if (v35 == 255)
  {
    v44 = v34;
    v46 = v33;
    v50 = v32;
    v52 = v31;
    v48 = v29;
    v38 = v30;
    v39 = v26;
    v40 = v23;
    v41 = v25;
    v42 = v24;
    sub_80AA0(v38, v48, v50, v52, v44, v46, 255);
    sub_80AA0(v25, v24, v26, v23, v28, v27, 1);
  }

  else if (v35)
  {
    v53[0] = v30;
    v53[1] = v29;
    v53[2] = v32;
    v53[3] = v31;
    v53[4] = v34;
    v53[5] = v33;
    v45 = v30;
    v47 = v29;
    v49 = v32;
    v51 = v31;
    v36 = v34;
    v37 = v33;
    sub_80C9C(v25, v24, v26, v23);
    sub_80A34(v45, v47, v49, v51, v36, v37, v35);
    v43 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v53, &v54);
    sub_2F1C8(v25, v24, v26, v23);
    sub_80AA0(v45, v47, v49, v51, v36, v37, v35);
    if (v43)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

LABEL_19:
  v20 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
  if (v20)
  {
    [v20 invalidate];
  }

  v21 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v21)
  {

    v21(v22);

    sub_17654(v21);
  }

  else
  {
  }
}

uint64_t sub_75614(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  v8 = *(v2 + 80);
  result = sub_AB38D0();
  if (result)
  {
    result = *(v2 + 64);
    if (result)
    {
      result = [result setFittingSize:{*(v2 + 80), *(v2 + 88), v8, *&a1, *&a2}];
    }

    if (*(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) != 1 || (*(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0 || !*(v2 + 72))
    {
      v6 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      if (v6)
      {

        v6(v7);
        return sub_17654(v6);
      }
    }
  }

  return result;
}

void sub_756F8(double a1, double a2)
{
  v3 = v2;
  type metadata accessor for CGSize(0);
  v11 = *(v2 + 96);
  if (sub_AB38D0())
  {
    v6 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork;
    *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 0;
    v7 = *(v3 + 72);
    if (v7)
    {
      [v7 setFittingSize:{*(v3 + 96), *(v3 + 104), v11, *&a1, *&a2}];
    }

    if (*(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v3 + v6) & 1) == 0 && *(v3 + 72))
    {
      v8 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
      *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
      if (v8)
      {
        [v8 invalidate];
      }

      v9 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      if (v9)
      {

        v9(v10);
        sub_17654(v9);
      }
    }
  }
}

void sub_75808(uint64_t a1)
{
  if (!*(v1 + 136))
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a1)
  {
LABEL_10:
    v8 = *(v1 + 120);
    if (v8)
    {
      v9 = *(v1 + 136);
      v10 = v9;
      v11 = v8;
      sub_7F0C8(v9);
    }

    v12 = [*(v1 + 112) image];
    sub_788B8(v12);

    return;
  }

  v2 = sub_AB92A0();
  v4 = v3;
  if (v2 != sub_AB92A0() || v4 != v5)
  {
    v7 = sub_ABB3C0();

    if (v7)
    {
      return;
    }

    goto LABEL_10;
  }
}

void sub_75948(void **a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 168);
  v12 = *(v1 + 176);
  v14 = *(v1 + 184);
  v13 = *(v1 + 192);
  if (v6)
  {
    if (v12)
    {
      v22[0] = *(v1 + 152);
      v22[1] = v9;
      v22[2] = v11;
      v22[3] = v12;
      v22[4] = v14;
      v22[5] = v13;
      v21[0] = v4;
      v21[1] = v3;
      v21[2] = v5;
      v21[3] = v6;
      v21[4] = v8;
      v21[5] = v7;
      sub_80C9C(v10, v9, v11, v12);
      sub_15F84(a1, v20, &unk_DF8690);
      v15 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v21, v22);

      sub_12E1C(a1, &unk_DF8690);
      if (v15)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v12)
  {
    return;
  }

  v18 = a1[1];
  v19 = a1[2];
  sub_80C9C(*(v1 + 152), v9, v11, v12);
  sub_15F84(a1, v22, &unk_DF8690);
  sub_2F1C8(v4, v18, v19, v6);
  sub_2F1C8(v10, v9, v11, v12);
LABEL_7:
  v16 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v16)
  {

    v16(v17);
    sub_17654(v16);
  }
}

uint64_t sub_75AE8(uint64_t a1)
{
  v3 = sub_ABA680();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5E8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_15F84(a1, v12, &unk_DFFBC0);
  sub_15F84(v1 + v13, &v12[v14], &unk_DFFBC0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_12E1C(v12, &unk_DFFBC0);
    }
  }

  else
  {
    sub_15F84(v12, v8, &unk_DFFBC0);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v19 = v22;
      (*(v4 + 32))(v22, &v12[v14], v3);
      sub_7F8F4(&qword_DEB5F0, &type metadata accessor for UIView.Corner);
      v20 = sub_AB91C0();
      v21 = *(v4 + 8);
      v21(v19, v3);
      v21(v8, v3);
      result = sub_12E1C(v12, &unk_DFFBC0);
      if (v20)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  result = sub_12E1C(v12, &qword_DEB5E8);
LABEL_7:
  v17 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v17)
  {

    v17(v18);
    return sub_17654(v17);
  }

  return result;
}

void sub_75E64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment);
  v6 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment);
  v7 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment + 8);
  v8 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  if (!v8)
  {
    if (!a3)
    {
      return;
    }

    v11 = a3;
    goto LABEL_7;
  }

  if (!a3 || (v15 = a2 & 1, v14 = a3, (static UIView.Border.__derived_struct_equals(_:_:)(v6, v7 & 1, v8, a1, v15) & 1) == 0))
  {
LABEL_7:
    v12 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v12)
    {

      v12(v13);

      sub_17654(v12);
    }

    else
    {
    }

    v10 = v8;
    goto LABEL_11;
  }

  v10 = v14;
LABEL_11:
}

void sub_75F8C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor) = a1;
  if (!v2)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_7;
  }

  v6 = a1;
  if (!a1 || (sub_13C80(0, qword_DFAAC0), v6 = v6, v3 = v2, v4 = sub_ABA790(), v3, (v4 & 1) == 0))
  {
LABEL_7:
    sub_79590();

    v5 = v2;
    goto LABEL_8;
  }

  v5 = v6;
LABEL_8:
}

void sub_76070(char a1)
{
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == (a1 & 1))
  {
    return;
  }

  v2 = v1;
  if (!*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed))
  {
    sub_7D1AC();
    v10 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v10)
    {
      [v10 invalidate];
    }

    v11 = *(v2 + 120);
    *(v2 + 120) = 0;
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *(v2 + 120);
      if (v12)
      {
        [*(v2 + 112) insertSubview:v12 atIndex:0];
      }
    }

    v13 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
    if (v13)
    {

      v13(0);
      sub_17654(v13);
    }

    v8 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion);
    *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion) = 0;
    goto LABEL_18;
  }

  v3 = [objc_allocWithZone(type metadata accessor for ArtworkComponentVideoView()) init];
  v4 = *(v1 + 136);
  v5 = v4;
  sub_7F0C8(v4);
  v6 = *(v2 + 120);
  *(v2 + 120) = v3;
  if (!v6)
  {
    v14 = v3;
    v15 = v3;
    if (!v3)
    {
      goto LABEL_17;
    }

LABEL_16:
    [*(v2 + 112) insertSubview:v15 atIndex:0];
    goto LABEL_17;
  }

  v7 = v3;
  v8 = v6;
  v9 = sub_ABA790();

  if (v9)
  {

    goto LABEL_18;
  }

  [v8 removeFromSuperview];
  v15 = *(v2 + 120);
  if (v15)
  {
    goto LABEL_16;
  }

LABEL_17:

  v8 = v6;
LABEL_18:

  v16 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v16)
  {

    v16(v17);

    sub_17654(v16);
  }
}

void sub_7629C()
{
  if (*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v0 + 72))
  {
    *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v1 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v1)
    {
      [v1 invalidate];
    }

    v2 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v2)
    {

      v2(v3);

      sub_17654(v2);
    }
  }
}

double sub_76368(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_ABA680();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5E8);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v52 - v19;
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  v23 = sub_76A38(a1, a2, a3 & 1, v4);
  v25 = v24;
  v26 = v4[14];
  v27 = [v26 image];
  if (!v27 || (v28 = v27, [v27 size], v30 = v29, v32 = v31, v28, v33 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed, *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1) && (*(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v4[9] || (v58 = v30, v59 = 0.0, (sub_AB38D0() & 1) == 0) || (v58 = v32, v59 = 0.0, (sub_AB38D0() & 1) == 0))
  {
LABEL_19:
    sub_ABA4F0();
    goto LABEL_20;
  }

  v52 = v33;
  v53 = v26;
  v34 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v4 + v34, v22, &unk_DFFBC0);
  sub_ABA670();
  v35 = v55;
  v36 = v56;
  (*(v55 + 56))(v20, 0, 1, v56);
  v37 = *(v11 + 48);
  sub_15F84(v22, v13, &unk_DFFBC0);
  v54 = v37;
  sub_15F84(v20, &v13[v37], &unk_DFFBC0);
  v38 = *(v35 + 48);
  if (v38(v13, 1, v36) != 1)
  {
    sub_15F84(v13, v17, &unk_DFFBC0);
    v39 = v54;
    if (v38(&v13[v54], 1, v56) != 1)
    {
      v48 = v55;
      v49 = &v13[v39];
      v50 = v56;
      (*(v55 + 32))(v10, v49, v56);
      sub_7F8F4(&qword_DEB5F0, &type metadata accessor for UIView.Corner);
      LODWORD(v54) = sub_AB91C0();
      v51 = *(v48 + 8);
      v51(v10, v50);
      sub_12E1C(v20, &unk_DFFBC0);
      sub_12E1C(v22, &unk_DFFBC0);
      v51(v17, v50);
      sub_12E1C(v13, &unk_DFFBC0);
      v40 = v53;
      if (v54)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    sub_12E1C(v20, &unk_DFFBC0);
    sub_12E1C(v22, &unk_DFFBC0);
    (*(v55 + 8))(v17, v56);
LABEL_12:
    sub_12E1C(v13, &qword_DEB5E8);
    v40 = v53;
LABEL_13:
    if (v4[18] == 1)
    {
      sub_ABA4F0();
      v42 = v41;
      sub_ABA4F0();
      if (vabdd_f64(v42, v43) > 0.1 && (v30 >= v32 || v25 >= v23))
      {
        v44 = [v40 traitCollection];
        [v44 displayScale];

        v59 = v23 / v30;
        v57 = v25 / v32;
        if (sub_AB38D0())
        {
          sub_AB39F0();
          v23 = v45;
          sub_AB39F0();
        }
      }
    }

    goto LABEL_19;
  }

  sub_12E1C(v20, &unk_DFFBC0);
  sub_12E1C(v22, &unk_DFFBC0);
  if (v38(&v13[v54], 1, v56) != 1)
  {
    goto LABEL_12;
  }

  sub_12E1C(v13, &unk_DFFBC0);
LABEL_22:
  if (v25 < v23)
  {
    v23 = v25;
  }

  v46 = 1.0;
LABEL_20:
  *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio) = v46;
  return v23;
}

double sub_76A38(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3 & 1) == 0 && (sub_AB38D0() & 1) != 0 && (sub_AB38D0())
  {
    return *&a1;
  }

  if (*(a4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(a4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
  {
    v7 = 96;
    if (!*(a4 + 72))
    {
      v7 = 80;
    }
  }

  else
  {
    v7 = 80;
  }

  return *(a4 + v7);
}

uint64_t sub_76B28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v105 - v11;
  v115 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
  if (*(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) != 1 || (*(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0 || (v13 = v4[9]) == 0)
  {
    v13 = v4[8];
  }

  v14 = v13;
  v15 = v4[14];
  v16 = [v15 artworkCatalog];
  v17 = v13 == 0;
  if (v16)
  {
    v18 = v16;
    if (v13)
    {
      sub_13C80(0, &qword_E04530);
      v19 = v13;
      v20 = sub_ABA790();

      if (v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!v13)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_13;
  }

  [v15 clearArtworkCatalogs];
  *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v5[25] = 0;
  v5[26] = 0;

  v21 = 1;
LABEL_13:
  v22 = [v15 traitCollection];
  [v22 displayScale];
  v24 = v23;

  type metadata accessor for CGRect(0);
  [v15 frame];
  *&aBlock = v25;
  *(&aBlock + 1) = v26;
  *&v117 = v27;
  *(&v117 + 1) = v28;
  v121 = a1;
  v122 = a2;
  v123 = a3;
  v124 = a4;
  if (sub_AB38D0())
  {
    [v15 setFrame:{a1, a2, a3, a4}];
  }

  v29 = v5[15];
  if (v29)
  {
    v30 = v29;
    [v30 frame];
    *&aBlock = v31;
    *(&aBlock + 1) = v32;
    *&v117 = v33;
    *(&v117 + 1) = v34;
    v121 = 0.0;
    v122 = 0.0;
    v123 = a3;
    v124 = a4;
    if (sub_AB38D0())
    {
      [v30 setFrame:{0.0, 0.0, a3, a4}];
    }
  }

  v35 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment);
  v36 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment + 8);
  v37 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  v38 = v37;
  UIView.border.setter(v35, v36, v37);
  v39 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_15F84(v5 + v39, v12, &unk_DFFBC0);
  sub_ABA6A0();
  v40 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayView);
  if (v40)
  {
    [v40 setFrame:{0.0, 0.0, a3, a4}];
  }

  sub_79590();
  v41 = v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent;
  v42 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  if (v42 != 255 && (v42 & 1) != 0)
  {
    v43 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v43)
    {
      v44 = v43;
      [v15 bounds];
      [v44 setFrame:?];

      v42 = v41[48];
    }
  }

  v45 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload;
  v46 = v21 | *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload);
  if (v42 == 255)
  {
    if (!(v46 & 1 | (v13 != 0)))
    {
      if (v5[22])
      {
        v17 = 1;
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    v53 = 1;
  }

  else
  {
    v114 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload;
    LODWORD(v113) = v13 == 0;
    v47 = *v41;
    v48 = *(v41 + 1);
    v50 = *(v41 + 2);
    v49 = *(v41 + 3);
    v52 = *(v41 + 4);
    v51 = *(v41 + 5);
    if (v42)
    {
      v121 = *v41;
      v122 = v48;
      v123 = v50;
      v124 = *&v49;
      v125 = v52;
      v126 = v51;
      if (v46)
      {
        v53 = 1;
        sub_80A4C(v47, *&v48, *&v50, v49, v52, v51, 1);
      }

      else
      {
        v60 = v5[19];
        v59 = v5[20];
        v61 = v5[21];
        v62 = v5[22];
        v64 = v5[23];
        v63 = v5[24];
        v112 = v61;
        v111 = v59;
        v110 = v60;
        v109 = v63;
        v108 = v64;
        if (v62)
        {
          v120[0] = v60;
          v120[1] = v59;
          v120[2] = v61;
          v120[3] = v62;
          v120[4] = v64;
          v120[5] = v63;
          sub_80A34(v47, *&v48, *&v50, v49, v52, v51, v42);
          v50 = COERCE_DOUBLE(*&v50);
          v107 = v49;
          v47 = v47;
          v48 = COERCE_DOUBLE(*&v48);
          sub_80C9C(v110, v111, v112, v62);
          LODWORD(v106) = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v120, &v121);

          sub_2F1C8(v110, v111, v112, v62);
          v53 = v106 ^ 1;
        }

        else
        {
          sub_80A34(v47, *&v48, *&v50, v49, v52, v51, v42);
          v107 = *&v50;
          v66 = v49;
          v106 = v47;
          v105 = *&v48;
          sub_2F1C8(v110, v111, v112, 0);
          sub_2F1C8(v47, *&v48, *&v50, v49);
          v53 = 1;
          v50 = *&v107;
          v48 = *&v105;
          v47 = v106;
        }
      }
    }

    else
    {
      v54 = *v41;
      v55 = *(v41 + 1);
      v56 = *(v41 + 2);
      v57 = *(v41 + 3);
      v58 = *(v41 + 4);
      if (v46)
      {
        sub_80A4C(v54, v55, v56, v57, v58, v51, 0);

        v53 = 1;
      }

      else
      {
        if (!v13)
        {
          sub_80A4C(v54, v55, v56, v57, v58, v51, 0);

          v17 = 1;
          v45 = v114;
          goto LABEL_52;
        }

        sub_80A4C(v54, v55, v56, v57, v58, v51, 0);
        v65 = [v13 isArtworkVisuallyIdenticalToCatalog:v47];

        v53 = v65 ^ 1;
      }
    }

    v17 = v113;
    v45 = v114;
  }

  if (!*(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog) || !v13)
  {
    if (v53)
    {
      goto LABEL_52;
    }

LABEL_48:
    v68 = 0;
    goto LABEL_49;
  }

  v67 = [v13 isArtworkVisuallyIdenticalToCatalog:?];
  v68 = v67;
  if (v53)
  {
    if (v67)
    {
      v68 = 1;
      goto LABEL_49;
    }

    v17 = 0;
LABEL_52:
    if (qword_DE6A10 != -1)
    {
      swift_once();
    }

    [*(qword_E713C0 + 16) addObject:v5];
    if (*(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isReusable) == 1)
    {
      [v15 setImage:0];
      sub_7D1AC();
    }

    v70 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v70)
    {
      [v70 setHidden:1];
    }

    [v15 setHidden:0];
    *(v5 + v45) = 0;
    v71 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
    if (v71)
    {

      v71(v72);
      sub_17654(v71);
    }

    v74 = v5[19];
    v73 = v5[20];
    v76 = v5[21];
    v75 = v5[22];
    v77 = v5[23];
    v78 = v5[24];
    if (v17)
    {
      if (v75)
      {
        *&aBlock = v5[19];
        *(&aBlock + 1) = v73;
        *&v117 = v76;
        *(&v117 + 1) = v75;
        *&v118 = v77;
        *(&v118 + 1) = v78;
        v69 = 1;
        v119 = 1;
        sub_80C9C(v74, v73, v76, v75);
        v79 = v76;
        v80 = v75;
        v81 = v74;
        v82 = v73;
        sub_78C54(&aBlock);

        return v69 & 1;
      }

      v118 = 0u;
      v117 = 0u;
      aBlock = 0u;
      v119 = -1;
      sub_78C54(&aBlock);
    }

    else
    {
      if (*(v5 + v115) == 1 && (*(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v5[9])
      {
        v83 = 13;
        v84 = 12;
      }

      else
      {
        v83 = 11;
        v84 = 10;
      }

      v85 = *&v5[v83];
      v86 = *&v5[v84];
      v87 = v5[19];
      v88 = v5[20];
      v89 = v5[21];
      v90 = v5[22];
      v114 = v5[23];
      sub_80C9C(v87, v88, v89, v90);
      [v13 setFittingSize:{v86, v85}];
      [v13 setDestinationScale:v24];

      v91 = sub_AB9260();

      [v13 setCacheIdentifier:v91 forCacheReference:v5[2]];

      if ((v5[6] & 1) == 0)
      {
        v113 = v76;
        v92 = v5[5];

        v93 = sub_AB9260();

        v94 = v5[2];
        v95 = objc_opt_self();
        v76 = v113;
        [v95 setCacheLimit:v92 forCacheIdentifier:v93 cacheReference:v94];
      }

      if (*(v5 + v115) == 1 && (*(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v5[9])
      {
        v96 = [objc_opt_self() defaultController];
        v113 = v76;
        v97 = v96;
        v98 = sub_AB9260();
        v99 = [v97 takeAssertionPreventingResourceReclamationWithReason:v98];

        v76 = v113;
        v100 = 3;
      }

      else
      {
        v99 = 0;
        v100 = 1;
      }

      v101 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion);
      *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion) = v99;

      v102 = swift_allocObject();
      swift_weakInit();
      *&v118 = sub_80D74;
      *(&v118 + 1) = v102;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v117 = sub_78130;
      *(&v117 + 1) = &block_descriptor_261;
      v103 = _Block_copy(&aBlock);

      [v13 setDestination:v15 forRepresentationKinds:v100 configurationBlock:v103];
      _Block_release(v103);
      sub_2F1C8(v74, v73, v76, v75);
    }

    v69 = 1;
    return v69 & 1;
  }

LABEL_49:

  v69 = (v41[48] != 255) | v68;
  return v69 & 1;
}

void sub_77740(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + 112) artworkCatalog];
    if (!v5)
    {
LABEL_42:

      return;
    }

    v6 = v5;
    v7 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
    if ((*(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) & 1) == 0 || (*(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0 || (v8 = v4[9]) == 0)
    {
      v8 = v4[8];
      if (!v8)
      {
        goto LABEL_41;
      }
    }

    v9 = v8;
    v10 = [v9 isArtworkVisuallyIdenticalToCatalog:v6];

    if ((v10 & 1) == 0)
    {
      goto LABEL_41;
    }

    v11 = [a2 imageRepresentation];
    if (v11)
    {

      v12 = 1;
    }

    else
    {
      v13 = [a2 videoRepresentation];

      v12 = v13 != 0;
    }

    if (*(v4 + v7) == 1)
    {
      v14 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork;
      if ((*(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v4[9] != 0 && !v12)
      {
        v36 = *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
        *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
        if (v36)
        {
          [v36 invalidate];
        }

        *(v4 + v14) = 1;
        v37 = *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
        if (!v37)
        {

          return;
        }

        v37(v38);

        sub_17654(v37);
        goto LABEL_42;
      }
    }

    v15 = [v6 visualIdenticalityIdentifier];
    v16 = v15;
    if (v15)
    {
      if ([v15 respondsToSelector:"stringRepresentation"])
      {
        v17 = [v16 stringRepresentation];
        swift_unknownObjectRelease();
        if (v17)
        {
          v16 = sub_AB92A0();
          v19 = v18;

          goto LABEL_21;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v16 = 0;
    }

    v19 = 0;
LABEL_21:
    v4[25] = v16;
    v4[26] = v19;

    v20 = [a2 imageRepresentation];
    v21 = [a2 videoRepresentation];
    if (v20)
    {
      v22 = v20;
      v23 = [v22 image];
      if (v23)
      {
        v24 = v23;
        LOBYTE(aBlock) = 0;
        v25 = sub_80D7C();
        if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v25) & 1) != 0 && ![v22 isImagePrepared])
        {
          v39 = *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog);
          *(v4 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog) = v6;
          v40 = v6;

          v41 = swift_allocObject();
          v41[2] = v40;
          v41[3] = v4;
          v41[4] = v24;
          *&v52 = sub_80E18;
          *(&v52 + 1) = v41;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v51 = sub_780C4;
          *(&v51 + 1) = &block_descriptor_267;
          v42 = _Block_copy(&aBlock);
          v43 = v40;
          v44 = v24;

          [v44 prepareForDisplayWithCompletionHandler:v42];

          _Block_release(v42);
          if (!v21)
          {
            goto LABEL_40;
          }
        }

        else
        {
          *&aBlock = v6;
          *(&aBlock + 1) = v24;
          v51 = 0u;
          v52 = 0u;
          v53 = 0;
          v26 = v6;
          v27 = v24;
          sub_78C54(&aBlock);

          if (!v21)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_29;
      }
    }

    if (!v21)
    {
      v31 = v4[22];
      if (v31)
      {
        v32 = v4[23];
        v47 = v4[24];
        v34 = v4[20];
        v33 = v4[21];
        v35 = v4[19];
        *&aBlock = v35;
        *(&aBlock + 1) = v34;
        *&v51 = v33;
        *(&v51 + 1) = v31;
        *&v52 = v32;
        *(&v52 + 1) = v47;
        v53 = 1;
        sub_80C9C(v35, v34, v33, v31);
        v49 = v33;
        v46 = v31;
        v48 = v35;
        v45 = v34;
        sub_78C54(&aBlock);
        sub_2F1C8(v35, v34, v33, v31);
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
        aBlock = 0u;
        v53 = -1;
        sub_78C54(&aBlock);
      }

      goto LABEL_40;
    }

LABEL_29:
    v28 = v21;
    v29 = [a2 isBestRepresentationForKind:{objc_msgSend(v28, "kind")}];

    if (!v29)
    {
LABEL_40:
      sub_7990C(0);

      goto LABEL_41;
    }

    v30 = [v28 video];
    sub_7990C(v30);

LABEL_41:
    goto LABEL_42;
  }
}

uint64_t sub_77CD0(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = a4;
  v9 = a1;
  v10 = a4;
  v11 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_80E74, v8);
}

void sub_77D90(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_AB4BC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && (v12 = *(a2 + 72)) != 0 || (v12 = *(a2 + 64)) != 0) && (v13 = v12, sub_13C80(0, &qword_E04530), v14 = a1, v15 = sub_ABA790(), v13, v14, (v15))
  {
    if (a3)
    {
      v30 = v14;
      v31 = a3;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      v16 = v14;
      v17 = a3;
      sub_78C54(&v30);
    }

    else
    {
      v21 = Logger.artwork.unsafeMutableAddressor();
      (*(v9 + 16))(v11, v21, v8);
      v22 = a4;
      v23 = sub_AB4BA0();
      v24 = sub_AB9F30();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_0, v23, v24, "Failed to prepare image: %@", v25, 0xCu);
        sub_12E1C(v26, &qword_DF9B20);
      }

      (*(v9 + 8))(v11, v8);

      v30 = v14;
      v31 = v22;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      sub_78C54(&v30);
    }

    v28 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog);
    *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;
  }

  else
  {
    v18 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog);
    *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;

    v19 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v19)
    {

      v19(v20);

      sub_17654(v19);
    }
  }
}

void sub_780C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_78130(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  __swift_destroy_boxed_opaque_existential_0(v8);
}

void sub_781B8()
{
  v1 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor;
  [*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor) alphaComponent];
  v2 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayView;
  v3 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayView);
  if (v4 <= 0.0)
  {
    if (!v3)
    {
      return;
    }

    v5 = v3;
    [v5 removeFromSuperview];
    v17 = *(v0 + v2);
    *(v0 + v2) = 0;
  }

  else
  {
    if (v3)
    {
      v5 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayView);
    }

    else
    {
      v6 = *(v0 + 112);
      [v6 bounds];
      v5 = [objc_allocWithZone(_s9ComponentC11OverlayViewCMa()) initWithFrame:{v7, v8, v9, v10}];
      [v5 setUserInteractionEnabled:0];
      [v6 insertSubview:v5 above:*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component__fadeImageView)];
      v11 = *(v0 + v2);
      *(v0 + v2) = v5;

      v3 = 0;
    }

    v12 = *(v0 + v1);
    v13 = *&v5[OBJC_IVAR____TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView_enforcedBackgroundColor];
    *&v5[OBJC_IVAR____TtCCE16MusicApplicationV11MusicCoreUI7Artwork9ComponentP33_D3E2C4694A53E203D54C2C75409DDB7B11OverlayView_enforcedBackgroundColor] = v12;
    v14 = v3;
    v15 = v12;
    v16 = v14;
    v17 = v15;

    [v5 setBackgroundColor:v17];
  }
}

uint64_t sub_78578()
{
  v7 = sub_ABA140();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_ABA100();
  __chkstk_darwin(v3);
  v4 = sub_AB7C50();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_13C80(0, &qword_DE8ED0);
  sub_AB7C30();
  v8 = _swiftEmptyArrayStorage;
  sub_7F8F4(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_809E0(&qword_DED7A0, &qword_E01270);
  sub_ABABB0();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_ABA180();
  qword_DEACE0 = result;
  return result;
}

void sub_787D8(id a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = a1;
  if (a1)
  {
    if (v2)
    {
      v5 = a1;
      sub_13C80(0, &qword_DEB5D8);
      v6 = v5;
      v3 = v2;
      v4 = sub_ABA790();

      if (v4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    a1 = a1;
  }

  else if (!v2)
  {
    return;
  }

  v6 = a1;
LABEL_9:
  [v2 invalidate];
  v3 = v2;
LABEL_10:
}

id sub_788B8(void *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v10 = *(v2 + 144);
  v11 = *(v2 + 112);
  v12 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
  if (*(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v2 + 72))
  {
    v13 = *(v2 + 136);
    v14 = v13;
    v15 = sub_7FD7C(v13);
    result = [v11 contentMode];
    if (result == v15)
    {
      return result;
    }

    result = [v11 setContentMode:v15];
    goto LABEL_20;
  }

  if (!a1)
  {
    goto LABEL_18;
  }

  [a1 size];
  if (v16 < v17)
  {
    if (*(v2 + v12) == 1 && (*(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
    {
      v25 = *(v2 + 72);
      v26 = 96;
      if (!v25)
      {
        v26 = 80;
      }

      v18 = *(v2 + v26);
      if (v25)
      {
        v19 = 104;
LABEL_13:
        if (*(v2 + v19) < v18)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v18 = *(v2 + 80);
    }

    v19 = 88;
    goto LABEL_13;
  }

LABEL_14:
  if (v10 == 1)
  {
LABEL_15:
    [a1 size];
    sub_ABA4F0();
    v21 = v20;
    sub_ABA4F0();
    if (vabdd_f64(v21, v22) > 0.1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_18:
  result = [v11 contentMode];
  if (result == v10)
  {
    return result;
  }

  result = [v11 setContentMode:v10];
LABEL_20:
  v23 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  if (v23)
  {

    v23(v24);
    return sub_17654(v23);
  }

  return result;
}

uint64_t sub_78BBC(uint64_t a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    if ((a2[3] & 1) == 0)
    {
      v10 = [v3 isArtworkVisuallyIdenticalToCatalog:*a2];
      return v10 & 1;
    }

    goto LABEL_5;
  }

  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = a2[2];
  v9 = *(a1 + 24);
  v12 = v3;
  v13 = *(a1 + 8);
  v14 = v9;
  v15 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  v16 = v4;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v10 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(&v12, &v16);
  return v10 & 1;
}

void sub_78C54(uint64_t a1)
{
  v3 = v1;
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v8 = sub_ABA150();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = sub_AB7CF0();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_39;
  }

  v10 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
  if ((v10 & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v10 | 1;
  }

  v11 = *(v3 + 112);
  v12 = [v11 image];
  sub_788B8(v12);

  v13 = v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent;
  v14 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent);
  v63 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 8);
  v64 = v14;
  v15 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 16);
  v61 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 24);
  v62 = v15;
  v16 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 40);
  v60 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 32);
  v59 = v16;
  v58 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  v17 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 16) = v17;
  *(v13 + 32) = *(a1 + 32);
  *(v13 + 48) = *(a1 + 48);
  sub_15F84(a1, &aBlock, &qword_DEB5C0);
  v18 = AccessibilityIdentifier.artwork.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  sub_13C80(0, &qword_DF0C80);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v19, v20);
  v21 = *(a1 + 48);
  if (v21 == 255)
  {
    [v11 setHidden:1];
    v30 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v30)
    {
      [v30 setHidden:1];
    }

    sub_7D1AC();
    v31 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
    v2 = v58;
    if (v31)
    {

      v31(0);
LABEL_28:
      sub_17654(v31);
    }
  }

  else
  {
    v22 = *(a1 + 8);
    if (v21)
    {
      v57 = *(a1 + 8);
      v23 = *a1;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v71 = *(a1 + 32);
      v26 = v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView;
      v27 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView);
      if (v27)
      {
        v28 = *(v26 + 8);
        v29 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView);
      }

      else
      {
        aBlock = v23;
        v67 = v57;
        v68 = v25;
        v69 = v24;
        v70 = *(a1 + 32);
        sub_80B18();
        v29 = MusicUIContentConfiguration.makeContentView()(&type metadata for Artwork.Placeholder);
        v28 = v33;
        v27 = 0;
      }

      v56[1] = swift_getObjectType();
      v34 = v27;
      v35 = [v29 superview];
      if (v35)
      {
      }

      else
      {
        [v11 insertSubview:v29 atIndex:0];
      }

      v40 = *v26;
      *v26 = v29;
      *(v26 + 8) = v28;
      v41 = v29;

      [v41 setHidden:0];
      v42 = v57;
      v72 = v23;
      v73 = v57;
      v74 = v25;
      v69 = &type metadata for Artwork.Placeholder;
      *&v70 = sub_80B6C();
      v43 = swift_allocObject();
      aBlock = v43;
      *(v43 + 16) = v23;
      *(v43 + 24) = v42;
      *(v43 + 32) = v25;
      *(v43 + 40) = v24;
      *(v43 + 48) = v71;
      v44 = v24;
      sub_15F84(&v72, v65, &unk_DFDE40);
      sub_15F84(&v73, v65, &unk_DFDE40);
      sub_15F84(&v74, v65, &unk_E00030);
      sub_AB4C70();
      v45 = *(v13 + 48);
      if (v45 != 255 && (v45 & 1) != 0 && *v26)
      {
        v46 = *v26;
        [v11 bounds];
        [v46 setFrame:?];
      }

      v31 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      v2 = v58;
      if (v31)
      {

        v31(v47);

        goto LABEL_28;
      }
    }

    else
    {
      [v11 setHidden:0];
      v32 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView);
      if (v32)
      {
        [v32 setHidden:1];
      }

      v2 = v58;
      if (v58 == 255)
      {
        v36 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component__fadeImageView);
        v37 = [v11 image];
        [v36 setImage:v37];

        v38 = [v36 image];
        if (v38)
        {

          v39 = 0;
        }

        else
        {
          v39 = [v11 backgroundColor];
        }

        [v36 setBackgroundColor:v39];

        [v36 setAlpha:1.0];
        [v36 setHidden:0];
        [v11 setImage:v22];
        v48 = objc_opt_self();
        *&v70 = sub_80C10;
        *(&v70 + 1) = v3;
        aBlock = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_1B5EB4;
        v69 = &block_descriptor_242;
        v49 = _Block_copy(&aBlock);

        *&v70 = sub_80C2C;
        *(&v70 + 1) = v3;
        aBlock = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_1811AC;
        v69 = &block_descriptor_245;
        v50 = _Block_copy(&aBlock);

        [v48 animateWithDuration:v49 animations:v50 completion:0.2];
        _Block_release(v50);
        _Block_release(v49);
      }

      else
      {
        [v11 setImage:v22];
      }

      [v22 size];
      sub_ABA4F0();
      sub_ABA4F0();
      sub_ABA4F0();
      aBlock = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio);
      *&v71 = v51;
      if (sub_AB38D0())
      {
        v52 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
        if (v52)
        {

          v52(v53);
          sub_17654(v52);
        }
      }

      sub_788B8(v22);
    }
  }

  sub_79590();
  v54 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  if (v54)
  {

    v54(v55);
    sub_17654(v54);
  }

  if (qword_DE6A10 != -1)
  {
    goto LABEL_41;
  }

LABEL_39:
  sub_273B00(v3);
  sub_80AA0(v64, v63, v62, v61, v60, v59, v2);
}

void sub_79590()
{
  v1 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  v2 = v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent;
  v3 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  v33 = v1;
  if (v3 == 255)
  {
    v13 = v1;
    v12 = v33;
    goto LABEL_5;
  }

  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  if (v3)
  {
    v10 = v1;
    sub_80A34(v5, v4, v6, v7, v9, v8, v3);
    v11 = v10;

    v12 = [objc_opt_self() clearColor];
    goto LABEL_5;
  }

  if (v1)
  {
    v17 = v1;
    sub_80A34(v5, v4, v6, v7, v9, v8, v3);
    v18 = v17;
LABEL_9:
    v12 = v18;

    v14 = *(v0 + 112);
    goto LABEL_10;
  }

  sub_80A4C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), 0);
  [v4 size];
  v20 = v19;
  [v4 size];
  if (v20 >= v21)
  {
    goto LABEL_21;
  }

  if (*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) != 1 || (*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0)
  {
    v22 = *(v0 + 80);
LABEL_18:
    v23 = 88;
    goto LABEL_19;
  }

  v31 = *(v0 + 72);
  v32 = 96;
  if (!v31)
  {
    v32 = 80;
  }

  v22 = *(v0 + v32);
  if (!v31)
  {
    goto LABEL_18;
  }

  v23 = 104;
LABEL_19:
  if (*(v0 + v23) < v22)
  {
LABEL_20:
    v12 = [objc_opt_self() blackColor];

    goto LABEL_5;
  }

LABEL_21:
  v24 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
  if ((v27 & 1) == 0)
  {
    v26 = v24;
    if (v24 < v25)
    {
      goto LABEL_20;
    }
  }

  if ([v5 dataSource] && (objc_opt_self(), v28 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v28) || (v29 = objc_msgSend(v5, "existingColorAnalysisWithAlgorithm:", 1)) == 0)
  {
    v18 = *(v0 + 56);
    goto LABEL_9;
  }

  v30 = v29;
  v12 = [v29 backgroundColor];

LABEL_5:
  v14 = *(v0 + 112);
  if (!v12)
  {
    v15 = [objc_opt_self() clearColor];
    v16 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v15 = v12;
  v16 = v15;
LABEL_11:
  [v14 setBackgroundColor:v15];
}

void sub_7990C(void *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v9 = *(v2 + 128);
    if (v9)
    {
      v10 = a1;
      v11 = [v9 player];
      v12 = [v11 currentItem];

      if (v12)
      {
        v9 = [v12 asset];

        if (v9)
        {
          sub_13C80(0, &qword_DEB5B8);
          v13 = v10;
          v9 = v9;
          v14 = sub_ABA790();

          if (v14)
          {

LABEL_14:
            return;
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v17 = a1;
    }

    sub_79B70(a1);

    goto LABEL_14;
  }

  v15 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
  if ((v15 & 2) == 0)
  {
    *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v15 | 2;
    v16 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
    if (v16)
    {

      v16(0);
      sub_17654(v16);
    }
  }
}

uint64_t sub_79B70(void *a1)
{
  v26 = *v1;
  v27 = a1;
  v2 = sub_AB7C10();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_AB7C50();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C20();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB7CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v13 = sub_ABA150();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_AB7CF0();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
    if ((v16 & 2) == 0)
    {
      *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v16 | 2;
    }

    (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
    v17 = sub_ABA190();
    (*(v7 + 8))(v9, v6);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v20 = v26;
    v21 = v27;
    v19[2] = v18;
    v19[3] = v21;
    v19[4] = v20;
    aBlock[4] = sub_80930;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_9;
    v22 = _Block_copy(aBlock);

    v23 = v21;
    sub_AB7C30();
    v33 = _swiftEmptyArrayStorage;
    sub_7F8F4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    v24 = v29;
    v25 = v32;
    sub_ABABB0();
    sub_ABA160();
    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v5, v30);
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_7A068(uint64_t a1, void *a2)
{
  v3 = sub_AB4BC0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v100 - v9;
  __chkstk_darwin(v8);
  v12 = v100 - v11;
  v13 = sub_AB7C10();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v110 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB7C50();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v111 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v109 = v16;
    v19 = *(Strong + 72);
    if (!v19)
    {

      return;
    }

    v107 = v15;
    v108 = Strong;
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 auxiliarySession];
    aBlock = 0;
    v23 = [v22 setParticipatesInNowPlayingAppPolicy:0 error:&aBlock];
    v24 = aBlock;
    v106 = v13;
    v105 = v21;
    v104 = v22;
    if ((v23 & 1) == 0)
    {
      v62 = aBlock;
      v63 = sub_AB3050();

      swift_willThrow();
      v64 = Logger.motion.unsafeMutableAddressor();
      (*(v4 + 16))(v12, v64, v3);
      swift_errorRetain();
      v65 = sub_AB4BA0();
      v66 = sub_AB9F30();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock = v68;
        *v67 = 136315138;
        v113 = v63;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
        v69 = sub_AB9350();
        v71 = sub_425E68(v69, v70, &aBlock);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_0, v65, v66, "Error creating non-now-playing session: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
      }

      (*(v4 + 8))(v12, v3);

      sub_13C80(0, &qword_DE8ED0);
      v51 = sub_ABA150();
      v118 = sub_80EB4;
      v119 = v108;
      aBlock = _NSConcreteStackBlock;
      v115 = 1107296256;
      v116 = sub_1B5EB4;
      v117 = &block_descriptor_213;
      v72 = _Block_copy(&aBlock);

      v73 = v111;
      sub_AB7C30();
      aBlock = _swiftEmptyArrayStorage;
      sub_7F8F4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_809E0(&qword_DF06D0, &unk_DE9C30);
      v74 = v110;
      v75 = v106;
      sub_ABABB0();
      sub_ABA160();

      (*(v112 + 8))(v74, v75);
      (*(v109 + 8))(v73, v107);
      v61 = v72;
      goto LABEL_26;
    }

    aBlock = 0;
    v25 = v24;
    v26 = [v22 setCategory:AVAudioSessionCategoryAmbient error:&aBlock];
    v27 = aBlock;
    if (v26)
    {
      aBlock = 0;
      v28 = v27;
      v29 = [v22 setRequiresNoAudioResources:1 error:&aBlock];
      v30 = aBlock;
      if (v29)
      {
        v31 = objc_allocWithZone(MPCScriptedLooper);
        v32 = v30;
        v33 = [v31 initWithAsset:a2 audioSession:v22];
        v34 = [v33 player];
        v35 = [v34 currentItem];
        if (v35)
        {
          v36 = v35;
          [v21 scaledFittingSize];
          [v36 setPreferredMinimumResolution:?];
        }

        [v34 setAutomaticallyWaitsToMinimizeStalling:1];
        [v34 setMuted:1];
        [v34 setAllowsExternalPlayback:0];
        [v34 setPreventsDisplaySleepDuringVideoPlayback:0];
        [v34 _setSuppressesAudioRendering:1];
        if (qword_DE6758 != -1)
        {
          swift_once();
        }

        v101 = qword_DEACE0;
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        *(v38 + 24) = v33;
        v118 = sub_809C4;
        v119 = v38;
        aBlock = _NSConcreteStackBlock;
        v115 = 1107296256;
        v100[1] = &v116;
        v116 = sub_1B5EB4;
        v117 = &block_descriptor_226;
        v39 = _Block_copy(&aBlock);

        v102 = v33;
        v40 = v111;
        sub_AB7C30();
        v113 = _swiftEmptyArrayStorage;
        v41 = sub_7F8F4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
        v43 = sub_809E0(&qword_DF06D0, &unk_DE9C30);
        v44 = v110;
        v100[2] = v42;
        v100[0] = v43;
        v103 = v41;
        sub_ABABB0();
        sub_ABA160();
        v45 = *(v112 + 8);
        v112 += 8;
        v101 = v45;
        v45(v44, v13);
        v46 = *(v109 + 8);
        v109 += 8;
        v46(v40, v107);
        _Block_release(v39);

        v47 = [v34 currentItem];
        if (v47)
        {
          v48 = v47;
          v49 = [a2 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicAudible];
          if (v49)
          {
            v50 = v49;
            [v48 selectMediaOption:0 inMediaSelectionGroup:v49];

            v48 = v50;
          }
        }

        sub_13C80(0, &qword_DE8ED0);
        v51 = sub_ABA150();
        v52 = swift_allocObject();
        v53 = v102;
        v54 = v108;
        v52[2] = v102;
        v52[3] = v54;
        v52[4] = v34;
        v118 = sub_809CC;
        v119 = v52;
        aBlock = _NSConcreteStackBlock;
        v115 = 1107296256;
        v116 = sub_1B5EB4;
        v117 = &block_descriptor_232;
        v55 = _Block_copy(&aBlock);
        v56 = v53;

        v57 = v34;

        v58 = v111;
        sub_AB7C30();
        aBlock = _swiftEmptyArrayStorage;
        v59 = v110;
        v60 = v106;
        sub_ABABB0();
        sub_ABA160();

        v101(v59, v60);
        v46(v58, v107);
        v61 = v55;
        goto LABEL_26;
      }

      v90 = aBlock;
      v91 = sub_AB3050();

      swift_willThrow();
      v92 = Logger.motion.unsafeMutableAddressor();
      (*(v4 + 16))(v7, v92, v3);
      swift_errorRetain();
      v93 = sub_AB4BA0();
      v94 = sub_AB9F30();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock = v96;
        *v95 = 136315138;
        v113 = v91;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
        v97 = sub_AB9350();
        v99 = sub_425E68(v97, v98, &aBlock);

        *(v95 + 4) = v99;
        _os_log_impl(&dword_0, v93, v94, "Error creating audio-resource-less session: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
      }

      (*(v4 + 8))(v7, v3);

      sub_13C80(0, &qword_DE8ED0);
      v51 = sub_ABA150();
      v118 = sub_80EB4;
      v119 = v108;
      aBlock = _NSConcreteStackBlock;
      v115 = 1107296256;
      v116 = sub_1B5EB4;
      v117 = &block_descriptor_219;
      v86 = _Block_copy(&aBlock);

      v87 = v111;
      sub_AB7C30();
      aBlock = _swiftEmptyArrayStorage;
      sub_7F8F4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_809E0(&qword_DF06D0, &unk_DE9C30);
      v88 = v110;
      v89 = v106;
      sub_ABABB0();
      sub_ABA160();
    }

    else
    {
      v76 = aBlock;
      v77 = sub_AB3050();

      swift_willThrow();
      v78 = Logger.motion.unsafeMutableAddressor();
      (*(v4 + 16))(v10, v78, v3);
      swift_errorRetain();
      v79 = sub_AB4BA0();
      v80 = sub_AB9F30();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        aBlock = v82;
        *v81 = 136315138;
        v113 = v77;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
        v83 = sub_AB9350();
        v85 = sub_425E68(v83, v84, &aBlock);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_0, v79, v80, "Error creating ambient audio session: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
      }

      (*(v4 + 8))(v10, v3);

      sub_13C80(0, &qword_DE8ED0);
      v51 = sub_ABA150();
      v118 = sub_80954;
      v119 = v108;
      aBlock = _NSConcreteStackBlock;
      v115 = 1107296256;
      v116 = sub_1B5EB4;
      v117 = &block_descriptor_216;
      v86 = _Block_copy(&aBlock);

      v87 = v111;
      sub_AB7C30();
      aBlock = _swiftEmptyArrayStorage;
      sub_7F8F4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_809E0(&qword_DF06D0, &unk_DE9C30);
      v88 = v110;
      v89 = v106;
      sub_ABABB0();
      sub_ABA160();
    }

    (*(v112 + 8))(v88, v89);
    (*(v109 + 8))(v87, v107);
    v61 = v86;
LABEL_26:
    _Block_release(v61);
  }
}

void sub_7B1D0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
  *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
  if (v2)
  {
    [v2 invalidate];
  }

  *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
  v3 = *(a1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v3)
  {

    v3(v4);

    sub_17654(v3);
  }
}

void sub_7B274(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 128);
    *(Strong + 128) = a2;
    v5 = a2;
  }
}

void sub_7B2E4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    sub_13C80(0, &qword_DEB5A8);
    v7 = a1;
    v8 = v3;
    LOBYTE(a1) = sub_ABA790();

    if (a1)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      swift_weakInit();
      v17[4] = sub_809D8;
      v17[5] = v10;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1546C;
      v17[3] = &block_descriptor_236;
      v11 = _Block_copy(v17);

      v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:8.0];
      _Block_release(v11);
      sub_787D8(v12);
      v13 = *(a2 + 120);
      if (v13)
      {
        v14 = v13;
        v15 = [v14 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setPlayer:a3];
      }

      sub_7B8B0(v7);
      v16 = *(a2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
      if (v16)
      {

        v16(v7);
        sub_17654(v16);
      }
    }
  }
}

uint64_t sub_7B4FC()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v4 = Logger.motion.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);

  v5 = sub_AB4BA0();
  v6 = sub_AB9F10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v7 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
      v10 = Strong;
      swift_beginAccess();
      sub_15F84(v10 + v9, v27, &unk_E03770);
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03770);
    v11 = sub_AB9350();
    v13 = sub_425E68(v11, v12, &v29);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    swift_beginAccess();
    v14 = swift_weakLoadStrong();
    if (v14)
    {
      v15 = *(v14 + 128);
      if (v15)
      {
        v16 = v15;

        v17 = [v16 player];

LABEL_10:
        *&v27[0] = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5B0);
        v18 = sub_AB9350();
        v20 = sub_425E68(v18, v19, &v29);

        *(v7 + 14) = v20;
        _os_log_impl(&dword_0, v5, v6, "Timed out loading video artwork [player was not ready to play]. context=%s player=%s, privacy: .public)", v7, 0x16u);
        swift_arrayDestroy();

        goto LABEL_11;
      }
    }

    v17 = 0;
    goto LABEL_10;
  }

LABEL_11:
  (*(v1 + 8))(v3, v0);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(result + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(result + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v23)
    {
      [v23 invalidate];
    }

    *(v22 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
    v24 = *(v22 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v24)
    {

      v24(v25);
      sub_17654(v24);
    }
  }

  return result;
}

uint64_t sub_7B8B0(void *a1)
{
  v3 = [a1 player];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF93E0;
  type metadata accessor for Whitetail.Binding();
  KeyPath = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB580);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = a1;
  v24 = KeyPath;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  v8 = a1;
  *(v4 + 32) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_806E4, v7);
  v9 = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB588);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v3;
  v24 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = v8;
  v12 = v3;
  *(v4 + 40) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_8076C, v10);
  v13 = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB590);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v12;
  v24 = v13;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = v12;
  *(v4 + 48) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_807B4, v14);
  v16 = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB598);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v15;
  v24 = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = v15;
  v19 = v15;
  v20 = v11;
  v21 = v19;
  *(v4 + 56) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_80808, v18);

  *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoBindings) = v4;
}

void sub_7BBC4(void *a1, uint64_t a2)
{
  v4 = sub_AB4BC0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v55 - v9;
  v11 = [a1 status];
  if (v11 <= 1)
  {
    if (!v11)
    {
      return;
    }

    if (v11 == &dword_0 + 1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
        *(Strong + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
        if (v13)
        {
          [v13 invalidate];
        }

        else
        {
        }
      }

      return;
    }

LABEL_36:
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_ABAD90(25);

    [a1 status];
    *&v60 = 0xD00000000000002CLL;
    *(&v60 + 1) = 0x8000000000B4D2B0;
    [a1 status];
    v63._countAndFlagsBits = sub_ABA3A0();
    sub_AB94A0(v63);

    sub_ABAFD0();
    __break(1u);
    return;
  }

  if (v11 != &dword_0 + 2)
  {
    if (v11 != &dword_0 + 3)
    {
      goto LABEL_36;
    }

    sub_13C80(0, &qword_DE8ED0);

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_8090C, a2);

    v24 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v24, v4);

    v25 = a1;
    v26 = sub_AB4BA0();
    v27 = sub_AB9F30();

    if (os_log_type_enabled(v26, v27))
    {
      v56 = v5;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57[0] = v30;
      *v28 = 138543618;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2082;
      swift_beginAccess();
      v31 = swift_weakLoadStrong();
      if (v31)
      {
        v32 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
        v33 = v31;
        swift_beginAccess();
        sub_15F84(v33 + v32, &v60, &unk_E03770);
        v34 = v25;
      }

      else
      {
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        v35 = v25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03770);
      v36 = sub_AB9350();
      v38 = sub_425E68(v36, v37, v57);

      *(v28 + 14) = v38;
      _os_log_impl(&dword_0, v26, v27, "MPCScriptedLooper was cancelled. videoLooper=%{public}@ context=%{public}s", v28, 0x16u);
      sub_12E1C(v29, &qword_DF9B20);

      __swift_destroy_boxed_opaque_existential_0(v30);

      (*(v56 + 8))(v8, v4);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

LABEL_34:

    return;
  }

  v14 = [a1 error];
  if (!v14 || (*&v60 = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90), type metadata accessor for AVError(0), (swift_dynamicCast() & 1) == 0) || (v15 = v5, v16 = v59, *&v60 = v59, sub_7F8F4(&qword_DE78A8, type metadata accessor for AVError), sub_AB2FF0(), v16, v5 = v15, v59 != -11819))
  {
    v17 = [a1 error];
    if (!v17 || (*&v60 = v17, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90), type metadata accessor for AVError(0), (swift_dynamicCast() & 1) == 0) || (v18 = v5, v19 = v59, *&v60 = v59, sub_7F8F4(&qword_DE78A8, type metadata accessor for AVError), sub_AB2FF0(), v19, v5 = v18, v59 != -11818))
    {
      v20 = [a1 player];
      v21 = [v20 status];

      if (v21 == &dword_0 + 2)
      {
        swift_beginAccess();
        v22 = swift_weakLoadStrong();
        if (v22)
        {
          v23 = *(v22 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
          if (v23)
          {
            sub_3FC34(*(v22 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler));

            v23(a1);
            sub_17654(v23);
          }

          else
          {
          }
        }
      }

      sub_13C80(0, &qword_DE8ED0);

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_80EB0, a2);

      v39 = Logger.motion.unsafeMutableAddressor();
      (*(v5 + 16))(v10, v39, v4);

      v40 = a1;
      v26 = sub_AB4BA0();
      v41 = sub_AB9F30();

      if (os_log_type_enabled(v26, v41))
      {
        v56 = v5;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58 = v55;
        *v42 = 136446722;
        *&v60 = [v40 error];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0);
        v44 = sub_AB9350();
        v46 = sub_425E68(v44, v45, &v58);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2114;
        *(v42 + 14) = v40;
        *v43 = v40;
        *(v42 + 22) = 2082;
        swift_beginAccess();
        v47 = swift_weakLoadStrong();
        if (v47)
        {
          v48 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
          v49 = v47;
          swift_beginAccess();
          sub_15F84(v49 + v48, &v60, &unk_E03770);
          v50 = v40;
        }

        else
        {
          v62 = 0;
          v60 = 0u;
          v61 = 0u;
          v51 = v40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03770);
        v52 = sub_AB9350();
        v54 = sub_425E68(v52, v53, &v58);

        *(v42 + 24) = v54;
        _os_log_impl(&dword_0, v26, v41, "MPCScriptedLooper failed. error=%{public}s videoLooper=%{public}@ context=%{public}s", v42, 0x20u);
        sub_12E1C(v43, &qword_DF9B20);

        swift_arrayDestroy();

        (*(v56 + 8))(v10, v4);
      }

      else
      {
        (*(v5 + 8))(v10, v4);
      }

      goto LABEL_34;
    }
  }
}

uint64_t sub_7C538()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(result + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {

      v3(v4);
      sub_17654(v3);
    }
  }

  return result;
}

void sub_7C600(void *a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 player];
  [v6 rate];
  v8 = v7;

  if (v8 == 1.0)
  {
    v9 = [a1 player];
    v38 = [v9 reasonForWaitingToPlay];

    if (v38)
    {
      v10 = sub_AB92A0();
      v12 = v11;
      if (v10 == sub_AB92A0() && v12 == v13)
      {
        goto LABEL_10;
      }

      v15 = sub_ABB3C0();

      if (v15)
      {
        goto LABEL_11;
      }

      v16 = sub_AB92A0();
      v18 = v17;
      if (v16 == sub_AB92A0() && v18 == v19)
      {
LABEL_10:

        goto LABEL_11;
      }

      v35 = sub_ABB3C0();

      if (v35)
      {
LABEL_11:
        v20 = Logger.motion.unsafeMutableAddressor();
        (*(v3 + 16))(v5, v20, v2);
        v21 = v38;
        v22 = a1;
        v23 = sub_AB4BA0();
        v24 = sub_AB9F50();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v39 = v21;
          v40 = v26;
          *v25 = 136446466;
          type metadata accessor for WaitingReason(0);
          v38 = v3;
          v37 = v21;
          v27 = sub_AB9350();
          v29 = sub_425E68(v27, v28, &v40);

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          v30 = [v22 player];
          v31 = [v30 currentItem];

          v39 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5A0);
          v32 = sub_AB9350();
          v34 = sub_425E68(v32, v33, &v40);

          *(v25 + 14) = v34;
          _os_log_impl(&dword_0, v23, v24, "AVPlayer waiting because %{public}s currentItem=%{public}s", v25, 0x16u);
          swift_arrayDestroy();

          (*(v38 + 1))(v5, v2);
        }

        else
        {
          (*(v3 + 8))(v5, v2);
        }

        return;
      }

      v36 = v38;
    }
  }
}

void sub_7CA48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!*(Strong + 128) || (v1 = Strong, (v2 = [*(Strong + 128) player]) == 0))
    {

      return;
    }

    v3 = v2;
    v4 = [v2 timeControlStatus];
    [v3 rate];
    if (v4)
    {
      if (v4 != &dword_0 + 2)
      {
        goto LABEL_17;
      }

      if (v5 != 1.0)
      {
        goto LABEL_17;
      }

      v6 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlaying);
      *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlaying) = 1;
      if (v6)
      {
        goto LABEL_17;
      }

      v7 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = 1;
    }

    else
    {
      if (v5 != 0.0)
      {
        goto LABEL_17;
      }

      v9 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlaying);
      *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlaying) = 0;
      if (v9 != 1)
      {
        goto LABEL_17;
      }

      v7 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = 0;
    }

    v7(v8);
    sub_17654(v7);
LABEL_17:
  }
}

void sub_7CBC4(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 player];
  v6 = [v5 currentItem];

  if (v6)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = sub_AB9260();
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a2;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v11 = a3;

      *(v8 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_itemFailedToPlayToEndTimeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v9, v6, 1, 1, sub_80854, v10);
    }

    else
    {
    }
  }
}

void sub_7CD1C(uint64_t a1, void *a2)
{
  v3 = sub_AB4BC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB2BC0();
  if (v7)
  {
    v8 = v7;
    *&v39 = sub_AB92A0();
    *(&v39 + 1) = v9;
    sub_ABAD10();
    if (*(v8 + 16) && (v10 = sub_2EC004(v35), (v11 & 1) != 0))
    {
      sub_808B0(*(v8 + 56) + 32 * v10, &v39);
      sub_8085C(v35);
    }

    else
    {
      sub_8085C(v35);
      v39 = 0u;
      v40 = 0u;
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v12 = Logger.motion.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v12, v3);
  sub_15F84(&v39, v38, &unk_DE8E40);
  v13 = a2;

  v14 = sub_AB4BA0();
  v15 = sub_AB9F30();

  if (os_log_type_enabled(v14, v15))
  {
    v33 = v4;
    v34 = v3;
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v16 = 136446722;
    sub_15F84(v38, v35, &unk_DE8E40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40);
    v17 = sub_AB9350();
    v19 = v18;
    sub_12E1C(v38, &unk_DE8E40);
    v20 = sub_425E68(v17, v19, &v37);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *&v35[0] = [v13 currentItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5A0);
    v21 = sub_AB9350();
    v23 = sub_425E68(v21, v22, &v37);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2082;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
      v26 = Strong;
      swift_beginAccess();
      sub_15F84(v26 + v25, v35, &unk_E03770);
    }

    else
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
    }

    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03770);
    v28 = sub_AB9350();
    v30 = sub_425E68(v28, v29, &v37);

    *(v16 + 24) = v30;
    _os_log_impl(&dword_0, v14, v15, "AVPlayerItem failed to play to end. error=%{public}s currentItem=%{public}s context=%{public}s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v27 + 8))(v6, v34);
  }

  else
  {
    sub_12E1C(v38, &unk_DE8E40);
    (*(v4 + 8))(v6, v3);
  }

  sub_12E1C(&v39, &unk_DE8E40);
}

void sub_7D1AC()
{
  *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoBindings) = _swiftEmptyArrayStorage;

  *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_itemFailedToPlayToEndTimeObserver) = 0;

  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer:0];
  }

  v4 = *(v0 + 128);
  *(v0 + 128) = 0;
}

id *sub_7D27C()
{

  sub_2F1C8(v0[19], v0[20], v0[21], v0[22]);

  sub_12E1C(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment, &unk_DFFBC0);

  sub_17654(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler));
  sub_12E1C(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext, &unk_E03770);

  sub_80AA0(*(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent), *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 8), *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 16), *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 24), *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 32), *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 40), *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48));
  return v0;
}

uint64_t sub_7D494()
{
  sub_7D27C();

  return swift_deallocClassInstance();
}

void sub_7D514()
{
  sub_7D678();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_7D678()
{
  if (!qword_DEAD80)
  {
    sub_ABA680();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DEAD80);
    }
  }
}

void sub_7D6F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v11 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v13 = &v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
  v14 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
  if (a1)
  {
    if (a1 == 1)
    {
      if (v14 == &dword_0 + 1)
      {
        return;
      }
    }

    else if (a1 == 2)
    {
      if (v14 == &dword_0 + 2)
      {
        return;
      }
    }

    else if (v14 >= 3)
    {
      v66 = v12;
      v68 = v13[1];
      v65 = v13[2];
      v15 = *(v13 + 24);
      sub_13C80(0, &qword_DFA720);
      v16 = v14;
      v17 = sub_ABA790();
      sub_7FCC4(v14);
      v12 = v66;
      if (v17)
      {
        if (a4)
        {
          if (v15)
          {
            return;
          }
        }

        else if ((v15 & 1) == 0 && *&a2 == v68 && *&a3 == v65)
        {
          return;
        }
      }
    }
  }

  else if (!v14)
  {
    return;
  }

  v67 = v12;
  v19 = *v13;
  if (*v13 == 2)
  {
    if (qword_DE6B90 != -1)
    {
      swift_once();
    }

    v20 = qword_E05D98;
    if (!qword_E05D98)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *v13;
    if (v19 != &dword_0 + 1)
    {
      goto LABEL_26;
    }

    if (qword_DE6B88 != -1)
    {
      swift_once();
    }

    v20 = qword_E05D90;
    if (!qword_E05D90)
    {
      goto LABEL_26;
    }
  }

  v20 = [objc_opt_self() staticArtworkCatalogWithImage:v20];
LABEL_26:
  v21 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog];
  *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog] = v20;
  sub_7FCB4(v19);
  sub_7FCB4(v19);
  v69 = v20;

  v22 = OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView;
  v23 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (v20)
  {
    if (v23)
    {
      v24 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
    }

    else
    {
      v24 = [objc_allocWithZone(UIImageView) init];
    }

    v25 = v23;
    [v24 setImage:0];
    v26 = v24;
    v27 = [v26 layer];
    [v27 setShadowOpacity:0.0];

    v28 = [v26 layer];
    [v28 setCornerCurve:kCACornerCurveContinuous];

    sub_AB9E10();
    sub_ABA5C0();
    sub_ABA6A0();
    v29 = [v5 traitCollection];
    [v29 displayScale];
    v31 = v30;

    if (v19 >= 3)
    {
      v32 = [objc_opt_self() whiteColor];
      if (v32)
      {
        if (2.0 / fmax(v31, 1.0) > 0.0)
        {
          v33 = v32;
          v34 = OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView;
          v35 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
          if (v35)
          {
            v36 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
          }

          else
          {
            v36 = [objc_allocWithZone(UIView) init];
            v35 = 0;
          }

          v48 = v35;
          [v36 setBackgroundColor:v33];
          v49 = [v36 layer];
          [v49 setCornerCurve:kCACornerCurveContinuous];

          sub_ABA600();
          v50 = sub_ABA680();
          (*(*(v50 - 8) + 56))(v67, 0, 1, v50);
          sub_ABA6A0();
          v51 = *&v5[v34];
          *&v5[v34] = v36;
          v52 = v36;
          sub_7E698(v51);

          goto LABEL_47;
        }
      }
    }

    v37 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
    *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView] = 0;
    sub_7E698(v37);

    if ((v19 - 1) <= 1)
    {
      v38 = [objc_opt_self() blackColor];
      UIView.Shadow.init(color:opacity:radius:offset:)(v38, v71, 0.2, 3.0, 0.0, 3.0);
      [v26 bounds];
      x = v73.origin.x;
      y = v73.origin.y;
      width = v73.size.width;
      height = v73.size.height;
      v43 = CGRectGetWidth(v73) * 0.5;
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      v44 = CGRectGetHeight(v74) * 0.5;
      v75.origin.x = x;
      v75.origin.y = y;
      v75.size.width = width;
      v75.size.height = height;
      v45 = CGPathCreateWithRoundedRect(v75, v43, v44, 0);
      v46 = [v26 layer];
      [v46 setShadowPath:v45];

      v47 = v26;
      UIView.shadow.setter(v71);

LABEL_48:
      v53 = *&v5[v22];
      *&v5[v22] = v26;
      v54 = v26;
      sub_7E540(v53);

      if (*v13 >= 3uLL)
      {
        v55 = v13[1];
        v56 = v13[2];
        if (v13[3])
        {
          v55 = 28.0;
          v56 = 28.0;
        }
      }

      else
      {
        v55 = dbl_AF9910[*v13];
        v56 = v55;
      }

      [v69 setFittingSize:{v55, v56}];
      v57 = [v5 traitCollection];
      [v57 displayScale];
      v59 = v58;

      [v69 setDestinationScale:v59];
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = v60;
      *(v62 + 24) = v61;
      aBlock[4] = sub_80D6C;
      aBlock[5] = v62;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_4175C0;
      aBlock[3] = &block_descriptor_257;
      v63 = _Block_copy(aBlock);
      v64 = v54;

      [v69 setDestination:v64 configurationBlock:v63];
      _Block_release(v63);

      sub_7FCC4(v19);
      return;
    }

LABEL_47:
    v47 = [v26 layer];

    [v47 setShadowOpacity:0.0];
    goto LABEL_48;
  }

  *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView] = 0;
  sub_7E540(v23);

  sub_7FCC4(v19);
}

void sub_7DFC8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_808B0(a1, v14);
    sub_13C80(0, &qword_DF0C80);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog];
        if (v8 && v6 == v8)
        {
          if (a2)
          {
            v9 = a2;
            v10 = v8;
            [v13 setImage:v9];
            sub_7E780();
          }

          else
          {
            v11 = *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
            *&v5[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView] = 0;
            v12 = v8;
            sub_7E540(v11);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_7E158()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ArtworkComponentImageView();
  objc_msgSendSuper2(&v6, "didMoveToSuperview");
  v1 = [v0 superview];
  v2 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      [v1 insertSubview:v3 above:v0];
      v4 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
      if (v4)
      {
        v5 = v4;
        [v1 insertSubview:v5 below:v3];
      }

      else
      {
      }
    }

    else
    {
      [*&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView] removeFromSuperview];
    }
  }

  else
  {
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    [*&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView] removeFromSuperview];
  }
}

void sub_7E420(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ArtworkComponentImageView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    [a1 displayScale];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [v1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (!a1 || v4 != v7)
  {
    sub_7EBEC();
  }
}

void sub_7E540(void *a1)
{
  v2 = OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView;
  v3 = *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      v4 = *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];

      [v4 removeFromSuperview];
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v12 = v3;
  v5 = [v1 superview];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview:v12];
  }

  v7 = v12;
  v8 = *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
  if (v8)
  {
    v13 = v12;
    v9 = v8;
    v10 = [v13 superview];
    if (v10)
    {
      v11 = v10;
      [v10 insertSubview:v9 below:v13];
    }

    v7 = v13;
  }
}

void sub_7E698(void *a1)
{
  v2 = OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView;
  v3 = *(v1 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView);
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  [a1 removeFromSuperview];
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView);
    if (v5)
    {
      v10 = v5;
      v6 = v4;
      v7 = [v10 superview];
      if (v7)
      {
        v8 = v7;
        [v7 insertSubview:v6 below:v10];

        v9 = v6;
      }

      else
      {
        v9 = v10;
        v10 = v6;
      }
    }
  }
}

void sub_7E780()
{
  v1 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    v2 = v1;
    [v2 sizeThatFits:{0.0, 0.0}];
    v5 = v3;
    v6 = v4;
    v7 = &v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
    if (*&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle] < 3uLL || (v7[3] & 1) != 0)
    {
      if (v3 > v4)
      {
        v8 = v3;
      }

      else
      {
        v8 = v4;
      }

      [v0 frame];
      Width = CGRectGetWidth(v42);
      [v0 frame];
      Height = CGRectGetHeight(v43);
      if (Width > Height)
      {
        Height = Width;
      }

      v11 = Height / 3.0;
      if (Height / 3.0 >= v8)
      {
        v12 = v5;
      }

      else
      {
        v39 = v8;
        v36 = v5;
        sub_7FD28();
        if (sub_AB38E0())
        {
          v6 = v6 / v5 * v11;
          v12 = v11;
        }

        else
        {
          v39 = v8;
          v36 = v6;
          v12 = v5;
          if (sub_AB38E0())
          {
            v12 = v5 / v6 * v11;
            v6 = v11;
          }
        }
      }
    }

    else
    {
      v12 = v7[1];
      v6 = v7[2];
    }

    [v0 frame];
    [v0 effectiveUserInterfaceLayoutDirection];
    [v0 bounds];
    sub_ABA4A0();
    x = v44.origin.x;
    y = v44.origin.y;
    v15 = v44.size.width;
    v16 = v44.size.height;
    MaxX = CGRectGetMaxX(v44);
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.width = v12;
    v45.size.height = v6;
    v18 = MaxX - CGRectGetWidth(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = v15;
    v46.size.height = v16;
    CGRectGetMaxY(v46);
    v47.origin.y = 0.0;
    v47.origin.x = v18;
    v47.size.width = v12;
    v47.size.height = v6;
    CGRectGetHeight(v47);
    [v0 effectiveUserInterfaceLayoutDirection];
    [v0 bounds];
    sub_ABA490();
    [v2 setFrame:?];
    v19 = *v7;
    sub_7FCB4(*v7);
    [v2 bounds];
    if (v19)
    {
      v24 = v20;
      v25 = v21;
      v26 = v22;
      v27 = v23;
      v28 = CGRectGetWidth(*&v20) * 0.5;
      v48.origin.x = v24;
      v48.origin.y = v25;
      v48.size.width = v26;
      v48.size.height = v27;
      v29 = CGRectGetHeight(v48) * 0.5;
      v49.origin.x = v24;
      v49.origin.y = v25;
      v49.size.width = v26;
      v49.size.height = v27;
      v30 = CGPathCreateWithRoundedRect(v49, v28, v29, 0);
      sub_7FCC4(v19);
      v31 = [v2 layer];
      [v31 setShadowPath:v30];

      v32 = *v7;
      if ((*v7 - 1) >= 2)
      {
        sub_7FCB4(*v7);

        sub_7FCC4(v32);
        goto LABEL_23;
      }

      v33 = objc_opt_self();
      sub_7FCB4(v32);
      UIView.Shadow.init(color:opacity:radius:offset:)([v33 blackColor], &v36, 0.2, 3.0, 0.0, 3.0);
      v34 = *&v36;
      sub_7FCC4(v32);
      v35 = v12 / v5;
      if (v12 >= v5)
      {
        v35 = 1.0;
      }

      v39 = *&v34;
      v40 = vmulq_n_f64(v37, v35);
      v41 = v38;
      UIView.shadow.setter(&v39);

      sub_7FCD4(&v36);
    }

LABEL_23:
    sub_7EBEC();
  }
}

void sub_7EBEC()
{
  v1 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
      v13 = v2;
      v4 = v1;
      sub_7FCB4(v3);
      v5 = [v0 traitCollection];
      [v5 displayScale];
      v7 = v6;

      sub_7FCC4(v3);
      v8 = 0.0;
      if (v3 >= 3)
      {
        v8 = 2.0 / fmax(v7, 1.0);
      }

      [v4 frame];
      [v13 setFrame:{UIEdgeInsetsInsetRect(v9, v10, v11, v12, -v8, -v8)}];
    }
  }
}

id sub_7EDE8(void *a1, void *a2)
{
  swift_weakInit();
  *&v2[OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog] = 0;
  v5 = &v2[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v5[24] = 0;
  *&v2[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView] = 0;
  *&v2[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ArtworkComponentImageView();
  v6 = objc_msgSendSuper2(&v8, "initWithImage:highlightedImage:", a1, a2);

  return v6;
}

void sub_7F0C8(id a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_cropStyle;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_cropStyle];
  *&v1[OBJC_IVAR____TtC16MusicApplication25ArtworkComponentVideoView_cropStyle] = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v19 = v3;
    goto LABEL_12;
  }

  v19 = v3;
  if (!v3)
  {
    a1 = a1;
LABEL_12:
    v18 = a1;
    goto LABEL_13;
  }

  v17 = a1;
  v4 = sub_AB92A0();
  v6 = v5;
  if (v4 != sub_AB92A0() || v6 != v7)
  {
    v9 = sub_ABB3C0();
    v18 = v17;

    if (v9)
    {

      v10 = v18;
LABEL_14:

      return;
    }

LABEL_13:
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = [v1 layer];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClassUnconditional();
    v14 = *&v1[v2];
    v15 = v14;
    v16 = sub_7F93C(v14);
    [v13 setVideoGravity:v16];

    [v11 commit];
    v10 = v19;
    goto LABEL_14;
  }
}

id sub_7F440(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_7F528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_7F570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_7F5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_7F674(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_7F704()
{
  result = sub_AB3820();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_7F77C(uint64_t a1)
{
  result = sub_7F8F4(&qword_DEB568, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
  *(a1 + 8) = result;
  return result;
}

void *sub_7F7D4()
{
  v1 = *(*v0 + 128);
  v2 = v1;
  return v1;
}

void *sub_7F800()
{
  v1 = *(*v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_7F82C(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_17654(v4);
}

uint64_t sub_7F850(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_17654(v4);
}

uint64_t sub_7F874(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_17654(v4);
}

void sub_7F898(char a1)
{
  v2 = *v1;
  v3 = *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1;
  sub_76070(v3);
}

uint64_t sub_7F8F4(unint64_t *a1, void (*a2)(uint64_t))
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

NSString *sub_7F93C(void *a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_16;
  }

  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {
    goto LABEL_15;
  }

  v11 = sub_ABB3C0();

  if (v11)
  {
LABEL_16:
    v22 = &AVLayerVideoGravityResizeAspectFill;
LABEL_17:
    v23 = *v22;

    return v23;
  }

  v12 = sub_AB92A0();
  v14 = v13;
  if (v12 == sub_AB92A0() && v14 == v15)
  {
LABEL_15:

    goto LABEL_16;
  }

  v17 = sub_ABB3C0();

  if (v17)
  {
    goto LABEL_16;
  }

  v18 = sub_AB92A0();
  v20 = v19;
  if (v18 == sub_AB92A0() && v20 == v21)
  {

LABEL_20:
    v22 = &AVLayerVideoGravityResizeAspect;
    goto LABEL_17;
  }

  v25 = sub_ABB3C0();

  if (v25)
  {
    goto LABEL_20;
  }

  v26 = Logger.motion.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v26, v2);
  v27 = a1;
  v28 = sub_AB4BA0();
  v29 = sub_AB9F30();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = a1;
    v37 = v31;
    *v30 = 136446210;
    v32 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB570);
    v33 = sub_AB9350();
    v35 = sub_425E68(v33, v34, &v37);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_0, v28, v29, "Falling back to AVLayerVideoGravity.resizeAspect [cropStyle is unsupported] cropStyle=%{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  (*(v3 + 8))(v5, v2);

  v23 = AVLayerVideoGravityResizeAspect;
  return v23;
}

id sub_7FCB4(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_7FCC4(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_7FD28()
{
  result = qword_DF12D0;
  if (!qword_DF12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF12D0);
  }

  return result;
}

uint64_t sub_7FD7C(void *a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 2;
  }

  v7 = v4;
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {
    goto LABEL_16;
  }

  v13 = sub_ABB3C0();

  if (v13)
  {
LABEL_7:

    return 2;
  }

  v14 = sub_AB92A0();
  v16 = v15;
  if (v14 == sub_AB92A0() && v16 == v17)
  {
LABEL_16:

    return 2;
  }

  v19 = sub_ABB3C0();

  if (v19)
  {
    goto LABEL_7;
  }

  v20 = sub_AB92A0();
  v22 = v21;
  if (v20 == sub_AB92A0() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_ABB3C0();

    if (v25)
    {
    }

    else
    {
      sub_13C80(0, &qword_DED8C0);
      sub_ABA980();
      sub_AB4BD0();
      v26 = a1;
      v27 = sub_AB4BA0();
      v28 = sub_AB9F30();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v35 = a1;
        v36 = v30;
        *v29 = 136446210;
        v31 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB570);
        v32 = sub_AB9350();
        v34 = sub_425E68(v32, v33, &v36);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_0, v27, v28, "Falling back to UIView.ContentMode.scaleAspectFit [cropStyle is unsupported] cropStyle=%{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);

        (*(v3 + 8))(v6, v7);
      }

      else
      {
        (*(v3 + 8))(v6, v7);
      }
    }
  }

  return 1;
}

uint64_t sub_80104(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  v4 = objc_opt_self();
  *(v2 + 56) = [v4 clearColor];
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  v5 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  v6 = sub_ABA680();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_borderTreatment);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_explicitBackgroundColor) = 0;
  v8 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = 0;
  v15 = v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isReusable) = 1;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;
  v16 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayColor;
  *(v2 + v16) = [v4 clearColor];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio) = 0x3FF0000000000000;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_foregroundOverlayView) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isPlaying) = 0;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoBindings) = &_swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_itemFailedToPlayToEndTimeObserver) = 0;
  v17 = (v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_placeholderView);
  *v17 = 0;
  v17[1] = 0;
  v18 = v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  *(v18 + 48) = -1;
  v19 = a1;
  [v19 setClipsToBounds:1];
  [v19 setHidden:1];
  [v19 setAccessibilityIgnoresInvertColors:1];
  *(v2 + 112) = v19;
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [objc_allocWithZone(UIImageView) init];
  [v28 setFrame:{v21, v23, v25, v27}];
  [v28 setAutoresizingMask:18];
  [v28 setHidden:1];
  [v19 addSubview:v28];
  *(v2 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component__fadeImageView) = v28;
  type metadata accessor for ArtworkComponentImageView();
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
    v29 = v28;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_AF4EC0;
    v31 = v28;
    sub_ABAD90(81);
    v33._countAndFlagsBits = 0xD000000000000028;
    v33._object = 0x8000000000B4D3C0;
    sub_AB94A0(v33);
    v34._countAndFlagsBits = sub_ABB6D0();
    sub_AB94A0(v34);

    v35._object = 0x8000000000B4D3F0;
    v35._countAndFlagsBits = 0xD000000000000027;
    sub_AB94A0(v35);
    *(v30 + 56) = &type metadata for String;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0xE000000000000000;
    sub_ABACD0();
  }

  sub_788B8(0);

  return v2;
}

id sub_805D0(uint64_t a1)
{
  swift_weakInit();
  *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryArtworkCatalog] = 0;
  v3 = &v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 0;
  *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryImageView] = 0;
  *&v1[OBJC_IVAR___MusicArtworkComponentImageView_accessoryStrokeView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ArtworkComponentImageView();
  return objc_msgSendSuper2(&v5, "initWithCoder:", a1);
}

id sub_80674@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_806A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_806F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reasonForWaitingToPlay];
  *a2 = result;
  return result;
}

uint64_t sub_80734()
{

  return swift_deallocObject();
}

id sub_80780@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

id sub_807C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t objectdestroy_185Tm()
{

  return swift_deallocObject();
}

uint64_t sub_808B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_209Tm()
{

  return swift_deallocObject();
}

uint64_t sub_809E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_80A34(id result, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_80A4C(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

id sub_80A4C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    v9 = a3;
    v10 = a4;
  }

  v11 = a1;

  return a2;
}

void sub_80AA0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_80AB8(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

void sub_80AB8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    a1 = a2;
  }

  else
  {
    a3 = a2;
  }
}

unint64_t sub_80B18()
{
  result = qword_DEB5C8;
  if (!qword_DEB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB5C8);
  }

  return result;
}

unint64_t sub_80B6C()
{
  result = qword_DEB5D0;
  if (!qword_DEB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB5D0);
  }

  return result;
}

uint64_t sub_80BC0()
{

  return swift_deallocObject();
}

id sub_80C2C()
{
  v1 = *(v0 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component__fadeImageView);
  [v1 setImage:0];
  [v1 setBackgroundColor:0];

  return [v1 setHidden:1];
}

id sub_80C9C(id result, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = result;
    v6 = a3;
    v7 = a4;
    v8 = v5;

    return a2;
  }

  return result;
}

uint64_t sub_80CF4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_80D2C()
{

  return swift_deallocObject();
}

unint64_t sub_80D7C()
{
  result = qword_DF05F0;
  if (!qword_DF05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF05F0);
  }

  return result;
}

uint64_t objectdestroy_202Tm()
{

  return swift_deallocObject();
}

uint64_t sub_80E24()
{

  return swift_deallocObject();
}

uint64_t sub_80F04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArtworkImage.Placeholder(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[15];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB600);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[16];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_810A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ArtworkImage.Placeholder(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB600);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[16];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for MediumPlaylistCell()
{
  result = qword_DEB660;
  if (!qword_DEB660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_81274()
{
  sub_81414();
  if (v0 <= 0x3F)
  {
    sub_81560(319, &qword_DEB670, sub_81464, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ArtworkImage.Placeholder(319);
      if (v2 <= 0x3F)
      {
        sub_81560(319, &qword_DEB678, type metadata accessor for CGSize, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_814B0();
          if (v4 <= 0x3F)
          {
            sub_81560(319, &unk_DEB690, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_81414()
{
  if (!qword_DF0B70)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DF0B70);
    }
  }
}

unint64_t sub_81464()
{
  result = qword_E04530;
  if (!qword_E04530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E04530);
  }

  return result;
}

void sub_814B0()
{
  if (!qword_DEB680)
  {
    sub_8150C();
    v0 = sub_AB5910();
    if (!v1)
    {
      atomic_store(v0, &qword_DEB680);
    }
  }
}

unint64_t sub_8150C()
{
  result = qword_DEB688;
  if (!qword_DEB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB688);
  }

  return result;
}

void sub_81560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_815E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_AB63C0();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_AB6890();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB6F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB6F8);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB700);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB708);
  __chkstk_darwin(v25);
  v19 = &v25 - v18;
  *v10 = sub_AB62E0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB710);
  sub_81A1C(v2, &v10[*(v20 + 44)]);
  if (*(v2 + *(type metadata accessor for MediumPlaylistCell() + 56)))
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 1.0;
  }

  sub_36B0C(v10, v13, &qword_DEB6F0);
  *&v13[*(v11 + 36)] = v21;
  sub_AB6880();
  v22 = sub_84288();
  sub_AB71E0();
  (*(v5 + 8))(v7, v26);
  sub_12E1C(v13, &qword_DEB6F8);
  v23 = v27;
  sub_AB63B0();
  v31 = v11;
  v32 = v22;
  swift_getOpaqueTypeConformance2();
  sub_AB7200();
  (*(v28 + 8))(v23, v29);
  (*(v15 + 8))(v17, v14);
  sub_83CB0();
  sub_AB5D40();
  sub_12E1C(v19, &qword_DEB708);
}

uint64_t sub_81A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB728);
  __chkstk_darwin(v3);
  v5 = v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB730);
  __chkstk_darwin(v6);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB738);
  __chkstk_darwin(v9);
  v11 = v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB740);
  v13 = __chkstk_darwin(v12 - 8);
  v52 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB748);
  v18 = __chkstk_darwin(v17 - 8);
  v51 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v48 - v21;
  __chkstk_darwin(v20);
  v24 = v48 - v23;
  if (sub_8215C())
  {
    v25 = sub_AB62C0();
  }

  else
  {
    v25 = sub_AB62E0();
  }

  *v22 = v25;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB750);
  sub_823E8(a1, &v22[*(v26 + 44)]);
  sub_36B0C(v22, v24, &qword_DEB748);
  v27 = type metadata accessor for MediumPlaylistCell();
  if (*(a1 + *(v27 + 48)) == 1)
  {
    v28 = sub_AB6750();
    strcpy(v54, "person.2.fill");
    HIWORD(v54[1]) = -4864;
    LODWORD(v55) = v28;
    sub_AB6360();
    v29 = sub_AB6F00();
    v31 = v30;
    v49 = v24;
    v50 = v3;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7A0);
    v48[1] = v9;
    sub_84508();
    sub_AB7150();
    sub_36B74(v29, v31, v33 & 1);

    v34 = &qword_DEB738;
    sub_15F84(v11, v8, &qword_DEB738);
    v24 = v49;
    swift_storeEnumTagMultiPayload();
    sub_84454(&qword_DEB790, &qword_DEB738, &unk_AF99E8, sub_84508);
    sub_84454(&qword_DEB7C0, &qword_DEB728, &unk_AF99D8, sub_84348);
    sub_AB6610();
    v35 = v11;
  }

  else
  {
    if (*(a1 + *(v27 + 44)) != 1)
    {
      v39 = 1;
      goto LABEL_10;
    }

    v36 = [objc_opt_self() tertiaryLabelColor];
    v37 = sub_AB7510();
    KeyPath = swift_getKeyPath();
    v50 = v3;
    v54[0] = 0x2E6E6F7276656863;
    v54[1] = 0xEF64726177726F66;
    v55 = KeyPath;
    v56 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB768);
    sub_84348();
    sub_AB71C0();

    v34 = &qword_DEB728;
    sub_15F84(v5, v8, &qword_DEB728);
    swift_storeEnumTagMultiPayload();
    sub_84454(&qword_DEB790, &qword_DEB738, &unk_AF99E8, sub_84508);
    sub_84454(&qword_DEB7C0, &qword_DEB728, &unk_AF99D8, sub_84348);
    sub_AB6610();
    v35 = v5;
  }

  sub_12E1C(v35, v34);
  v39 = 0;
LABEL_10:
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB758);
  (*(*(v40 - 8) + 56))(v16, v39, 1, v40);
  v41 = v51;
  sub_15F84(v24, v51, &qword_DEB748);
  v42 = v52;
  sub_15F84(v16, v52, &qword_DEB740);
  v43 = v16;
  v44 = v53;
  sub_15F84(v41, v53, &qword_DEB748);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB760);
  v46 = v44 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_15F84(v42, v44 + *(v45 + 64), &qword_DEB740);
  sub_12E1C(v43, &qword_DEB740);
  sub_12E1C(v24, &qword_DEB748);
  sub_12E1C(v42, &qword_DEB740);
  return sub_12E1C(v41, &qword_DEB748);
}

uint64_t sub_8215C()
{
  v16 = sub_AB6240();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8A0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_AB5C70();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MediumPlaylistCell();
  sub_15F84(v0 + *(v11 + 64), v6, &qword_DEB8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_AB9F40();
    v12 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();
    (*(v1 + 8))(v3, v16);
  }

  v13 = sub_AB5C60();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_823E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7C8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v32[-v8];
  __chkstk_darwin(v7);
  v11 = &v32[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7D0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v32[-v16];
  *v17 = sub_AB62E0();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7D8);
  sub_82774(a1, &v17[*(v18 + 44)]);
  sub_AB7A30();
  sub_AB5970();
  v36 = v41;
  v37 = v39;
  v34 = v44;
  v35 = v43;
  v47 = 1;
  v46 = v40;
  v45 = v42;
  v19 = sub_AB6450();
  if (sub_8215C())
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    type metadata accessor for MediumPlaylistCell();
    sub_AB6CB0();
    v22 = sub_AB6B80();

    v20 = 0x4000000000000000;
    if ((v22 & 1) == 0)
    {
      v20 = 0;
    }

    v21 = v22 ^ 1;
  }

  *v9 = v19;
  *(v9 + 1) = v20;
  v9[16] = v21 & 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7E0);
  sub_8329C(a1, &v9[*(v23 + 44)]);
  sub_36B0C(v9, v11, &qword_DEB7C8);
  sub_15F84(v17, v15, &qword_DEB7D0);
  v24 = v47;
  v25 = v46;
  v33 = v45;
  sub_15F84(v11, v6, &qword_DEB7C8);
  v26 = v38;
  sub_15F84(v15, v38, &qword_DEB7D0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7E8);
  v28 = v26 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = v24;
  v29 = v36;
  *(v28 + 16) = v37;
  *(v28 + 24) = v25;
  *(v28 + 32) = v29;
  *(v28 + 40) = v33;
  v30 = v34;
  *(v28 + 48) = v35;
  *(v28 + 56) = v30;
  sub_15F84(v6, v26 + *(v27 + 64), &qword_DEB7C8);
  sub_12E1C(v11, &qword_DEB7C8);
  sub_12E1C(v17, &qword_DEB7D0);
  sub_12E1C(v6, &qword_DEB7C8);
  return sub_12E1C(v15, &qword_DEB7D0);
}

uint64_t sub_82774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_AB4780();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB818);
  __chkstk_darwin(v7 - 8);
  v80 = &KeyPath - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB820);
  v83 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &KeyPath - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB828);
  v86 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &KeyPath - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB830);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &KeyPath - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB838);
  v13 = __chkstk_darwin(v12 - 8);
  v92 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &KeyPath - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB840);
  __chkstk_darwin(v16 - 8);
  v18 = &KeyPath - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB848);
  v19 = *(v79 - 8);
  __chkstk_darwin(v79);
  v21 = &KeyPath - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB850);
  v23 = __chkstk_darwin(v22 - 8);
  v81 = &KeyPath - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &KeyPath - v25;
  v27 = type metadata accessor for MediumPlaylistCell();
  if (*(a1 + v27[13]) == 1)
  {
    v74 = sub_AB7530();
    v73 = sub_AB7430();
    KeyPath = swift_getKeyPath();
    v77 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    v78 = v3;
    v75 = v26;
    sub_AB5900();
    v28 = sub_AB6BC0();
    (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
    v29 = sub_AB6C20();
    v76 = v6;
    v30 = a1;
    v31 = v29;
    sub_12E1C(v18, &qword_DEB840);
    v32 = swift_getKeyPath();
    v33 = sub_AB6AD0();
    sub_AB5900();
    sub_AB5690();
    v100 = 0;
    *&v94 = v74;
    *(&v94 + 1) = KeyPath;
    *&v95 = v73;
    *(&v95 + 1) = v32;
    *&v96 = v31;
    BYTE8(v96) = v33;
    *&v97 = v34;
    *(&v97 + 1) = v35;
    *&v98 = v36;
    *(&v98 + 1) = v37;
    v99 = 0;
    v38 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
    v39 = *v38;
    v40 = v38[1];

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB860);
    v42 = sub_845D0();
    v43 = v39;
    v3 = v78;
    v44 = v41;
    v4 = v77;
    View.accessibilityLabel(_:)(v43, v40, v44, v42);
    v101[2] = v96;
    v101[3] = v97;
    v101[4] = v98;
    v102 = v99;
    v101[0] = v94;
    v101[1] = v95;
    sub_12E1C(v101, &qword_DEB860);
    a1 = v30;
    v6 = v76;

    v45 = v75;
    sub_847CC(v21, v75);
    v46 = v45;
    (*(v19 + 56))(v45, 0, 1, v79);
  }

  else
  {
    v46 = v26;
    (*(v19 + 56))(v26, 1, 1, v79);
  }

  v47 = *(a1 + 32);
  v48 = v47;
  v49 = v80;
  ArtworkImage.ViewModel.init(_:)(v47, v80);
  v50 = a1 + v27[8];
  if (*(v50 + 16))
  {
    v51 = 64.0;
LABEL_10:
    *&v52 = v51;
    goto LABEL_11;
  }

  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v53 lineHeight];
  v55 = v54;

  if (v55 + 10.0 > *&v52)
  {
    if (v55 <= 64.0)
    {
      v51 = v55;
    }

    else
    {
      v51 = 64.0;
    }

    goto LABEL_10;
  }

LABEL_11:
  v56 = v27[7];
  ArtworkImage.Size.init(cgSize:)(*&v51, v52, 0, v101);
  (*(v4 + 104))(v6, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v3);
  v57 = v82;
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v49, a1 + v56, v101, v6, v82);
  (*(v4 + 8))(v6, v3);
  sub_12E1C(v49, &qword_DEB818);
  Corner.small.unsafeMutableAddressor();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v84;
  v60 = v87;
  View.corner(_:)();
  (*(v83 + 8))(v57, v60);
  Border.artwork.unsafeMutableAddressor();

  *&v94 = v60;
  *(&v94 + 1) = OpaqueTypeConformance2;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v85;
  v63 = v90;
  View.border(_:corner:)();
  (*(v86 + 8))(v59, v63);

  *&v94 = v63;
  *(&v94 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v64 = v91;
  v65 = v89;
  sub_AB71C0();
  (*(v88 + 8))(v62, v65);
  v66 = v46;
  v67 = v81;
  sub_15F84(v46, v81, &qword_DEB850);
  v68 = v92;
  sub_15F84(v64, v92, &qword_DEB838);
  v69 = v93;
  sub_15F84(v67, v93, &qword_DEB850);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB858);
  sub_15F84(v68, v69 + *(v70 + 48), &qword_DEB838);
  sub_12E1C(v64, &qword_DEB838);
  sub_12E1C(v66, &qword_DEB850);
  sub_12E1C(v68, &qword_DEB838);
  return sub_12E1C(v67, &qword_DEB850);
}

uint64_t sub_8329C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7F0);
  v111 = *(v5 - 8);
  v112 = v5;
  __chkstk_darwin(v5);
  v110 = v102 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB7F8);
  __chkstk_darwin(v109);
  v114 = v102 - v7;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB800);
  v8 = __chkstk_darwin(v113);
  v117 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v115 = v102 - v11;
  __chkstk_darwin(v10);
  v121 = v102 - v12;
  v13 = *a1;
  v14 = a1[1];
  v116 = a1;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v13 = sub_AB9320();
  }

  *&v136 = v13;
  *(&v136 + 1) = v15;
  v16 = sub_36A48();

  v104 = v16;
  v17 = sub_AB6F20();
  v19 = v18;
  v21 = v20;
  sub_AB6B90();
  v22 = sub_AB6E80();
  v24 = v23;
  v26 = v25;

  sub_36B74(v17, v19, v21 & 1);

  v120 = type metadata accessor for MediumPlaylistCell();
  v27 = v116;
  v28 = sub_AB6E10();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;
  v34 = v24;
  v35 = v27;
  sub_36B74(v22, v34, v26 & 1);

  v106 = v28;
  v107 = v30;
  *&v136 = v28;
  *(&v136 + 1) = v30;
  v36 = v19;
  LOBYTE(v137) = v19 & 1;
  v108 = v33;
  *(&v137 + 1) = v33;
  v37 = objc_opt_self();
  v38 = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  [v38 lineHeight];
  v40 = v39;

  v41 = v40 + 10.0;
  v42 = v35 + *(v120 + 32);
  v43 = *v42;
  v44 = *(v42 + 8);
  LODWORD(v42) = *(v42 + 16);
  v105 = v44;
  v119 = v42;
  *&v102[1] = v43;
  if ((v42 & 1) == 0)
  {
    v45 = v43;
    v46 = v44;
    v47 = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
    [v47 lineHeight];
    v49 = v48;

    v50 = 64.0;
    if (v49 <= 64.0)
    {
      v50 = v49;
    }

    if (v49 + 10.0 <= v46)
    {
      v50 = v45;
    }

    if (v50 < v41)
    {
      v51 = [v37 preferredFontForTextStyle:{UIFontTextStyleBody, 0.0}];
      [v51 lineHeight];
    }
  }

  v52 = v110;
  sub_AB7090();
  sub_36B74(v106, v107, v36 & 1);

  KeyPath = swift_getKeyPath();
  v54 = v114;
  (*(v111 + 32))(v114, v52, v112);
  v55 = v54 + *(v109 + 36);
  *v55 = KeyPath;
  *(v55 + 8) = 2;
  *(v55 + 16) = 0;
  v56 = v119 | sub_8215C() ^ 1;
  v103 = v37;
  if ((v56 & 1) == 0)
  {
    v57 = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
    [v57 lineHeight];
  }

  v112 = UIFontTextStyleBody;
  sub_AB7A30();
  sub_AB5E90();
  v58 = v115;
  sub_36B0C(v54, v115, &qword_DEB7F8);
  v59 = (v58 + *(v113 + 36));
  v60 = v141;
  v59[4] = v140;
  v59[5] = v60;
  v59[6] = v142;
  v61 = v137;
  *v59 = v136;
  v59[1] = v61;
  v62 = v139;
  v59[2] = v138;
  v59[3] = v62;
  sub_36B0C(v58, v121, &qword_DEB800);
  v63 = v35[3];
  if (v63)
  {
    v126 = v35[2];
    v127 = v63;

    v64 = sub_AB6F20();
    v66 = v65;
    v68 = v67;
    v69 = sub_AB6E80();
    v71 = v70;
    v73 = v72;
    sub_36B74(v64, v66, v68 & 1);

    sub_AB74E0();
    v115 = sub_AB6E10();
    v75 = v74;
    v77 = v76;
    v79 = v78;

    sub_36B74(v69, v71, v73 & 1);

    v80 = sub_AB6AD0();
    if ((sub_8215C() & 1) != 0 && (v119 & 1) == 0)
    {
      v89 = [v103 preferredFontForTextStyle:{v112, 0.0}];
      [v89 lineHeight];
    }

    sub_AB5690();
    v85 = v90;
    v86 = v91;
    v87 = v92;
    v88 = v93;
    LOBYTE(v126) = v77 & 1;
    LOBYTE(v122) = 0;
    v84 = v77 & 1;
    v83 = v80;
    v81 = v115;
    v120 = v75;
    v82 = v79;
  }

  else
  {
    v81 = 0;
    v120 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
  }

  v94 = v121;
  v95 = v117;
  sub_15F84(v121, v117, &qword_DEB800);
  v96 = v118;
  sub_15F84(v95, v118, &qword_DEB800);
  v97 = (v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB808) + 48));
  v98 = v120;
  *&v122 = v81;
  *(&v122 + 1) = v120;
  *&v123 = v84;
  *(&v123 + 1) = v82;
  *&v124 = v83;
  *(&v124 + 1) = v85;
  *&v125[0] = v86;
  *(&v125[0] + 1) = v87;
  *&v125[1] = v88;
  BYTE8(v125[1]) = 0;
  v99 = v123;
  *v97 = v122;
  v97[1] = v99;
  v100 = v125[0];
  v97[2] = v124;
  v97[3] = v100;
  *(v97 + 57) = *(v125 + 9);
  sub_15F84(&v122, &v126, &qword_DEB810);
  sub_12E1C(v94, &qword_DEB800);
  v126 = v81;
  v127 = v98;
  v128 = v84;
  v129 = v82;
  v130 = v83;
  v131 = v85;
  v132 = v86;
  v133 = v87;
  v134 = v88;
  v135 = 0;
  sub_12E1C(&v126, &qword_DEB810);
  return sub_12E1C(v95, &qword_DEB800);
}

void *sub_83CB0()
{
  v1 = *(v0 + 24);
  v25 = *(v0 + 8);
  v26 = v1;

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
LABEL_2:
  v4 = &v25 + v2;
  while (++v2 != 3)
  {
    v5 = v4 + 1;
    v6 = *v4++;
    if (v6)
    {
      v7 = *(v5 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_6B0F0(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_6B0F0((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
  swift_arrayDestroy();
  v11 = *(v3 + 2);
  if (v11)
  {
    sub_6D640(0, v11, 0);
    sub_36A48();
    v12 = v3 + 40;
    do
    {

      v13 = sub_AB6F20();
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        v23 = v14;
        v24 = v13;
        v20 = v15;
        v21 = v16;
        sub_6D640((v17 > 1), v18 + 1, 1);
        v15 = v20;
        v14 = v23;
        v13 = v24;
        v16 = v21;
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[4 * v18];
      v19[4] = v13;
      v19[5] = v14;
      *(v19 + 48) = v15 & 1;
      v19[7] = v16;
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_83EDC@<X0>(uint64_t a1@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8B0);
  __chkstk_darwin(v21);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8B8);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;

  v7 = sub_AB7530();
  v8 = sub_AB6B90();
  KeyPath = swift_getKeyPath();
  *&v22 = v7;
  *(&v22 + 1) = KeyPath;
  *&v23 = v8;
  sub_AB6C10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8C0);
  sub_849E8();
  sub_AB6F80();

  v10 = &v6[*(v4 + 36)];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8D0) + 28);
  v12 = enum case for Image.Scale.small(_:);
  v13 = sub_AB7580();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  v14 = enum case for DynamicTypeSize.accessibility1(_:);
  v15 = sub_AB5C70();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_84B90(&qword_DEB8D8, &type metadata accessor for DynamicTypeSize);
  result = sub_AB91C0();
  if (result)
  {
    sub_84BD8();
    sub_36A00(&qword_DEB8F0, &qword_DEB8B0);
    sub_AB70A0();
    sub_12E1C(v3, &qword_DEB8B0);
    sub_12E1C(v6, &qword_DEB8B8);
    sub_AB7A30();
    sub_AB5970();
    v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB8F8) + 36));
    v18 = v23;
    *v17 = v22;
    v17[1] = v18;
    v17[2] = v24;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB900);
    v19 = a1 + *(result + 36);
    *v19 = 0;
    *(v19 + 8) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_84288()
{
  result = qword_DEB718;
  if (!qword_DEB718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB6F8);
    sub_36A00(&qword_DEB720, &qword_DEB6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB718);
  }

  return result;
}

unint64_t sub_84348()
{
  result = qword_DEB770;
  if (!qword_DEB770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB768);
    sub_84400();
    sub_36A00(&qword_DEB780, &qword_DEB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB770);
  }

  return result;
}

unint64_t sub_84400()
{
  result = qword_DEB778;
  if (!qword_DEB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB778);
  }

  return result;
}

uint64_t sub_84454(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_84B90(&qword_DEB7B8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_84508()
{
  result = qword_DEB798;
  if (!qword_DEB798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB7A0);
    sub_84400();
    sub_36A00(&qword_DEB7A8, &qword_DEB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB798);
  }

  return result;
}

unint64_t sub_845D0()
{
  result = qword_DEB868;
  if (!qword_DEB868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB860);
    sub_8465C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB868);
  }

  return result;
}

unint64_t sub_8465C()
{
  result = qword_DEB870;
  if (!qword_DEB870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB878);
    sub_84714();
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB870);
  }

  return result;
}

unint64_t sub_84714()
{
  result = qword_DEB880;
  if (!qword_DEB880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB888);
    sub_36A00(&qword_DEB780, &qword_DEB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB880);
  }

  return result;
}

uint64_t sub_847CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8483C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_84884(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_848D4()
{
  result = qword_DEB8A8;
  if (!qword_DEB8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB6F8);
    sub_84288();
    swift_getOpaqueTypeConformance2();
    sub_84B90(&qword_DEB7B8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB8A8);
  }

  return result;
}

unint64_t sub_849E8()
{
  result = qword_DEB8C8;
  if (!qword_DEB8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB8C0);
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB8C8);
  }

  return result;
}

uint64_t sub_84AC4(uint64_t a1)
{
  v2 = sub_AB7580();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_AB5F50();
}

uint64_t sub_84B90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_84BD8()
{
  result = qword_DEB8E0;
  if (!qword_DEB8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB8C0);
    sub_849E8();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_DEB8E8, &qword_DEB8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB8E0);
  }

  return result;
}

unint64_t sub_84CD0()
{
  result = qword_DEB908;
  if (!qword_DEB908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB900);
    sub_84D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB908);
  }

  return result;
}

unint64_t sub_84D5C()
{
  result = qword_DEB910;
  if (!qword_DEB910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB8F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEB8B0);
    sub_84BD8();
    sub_36A00(&qword_DEB8F0, &qword_DEB8B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEB910);
  }

  return result;
}

uint64_t sub_84E90(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v67[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v67[-v15];
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTitle];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration];
  *v22 = 0;
  v22[8] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkCatalog] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_textDrawingCache] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_layoutStyle] = 0;
  v23 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v25 = sub_80104(v24);

  *&v5[v23] = v25;
  *&v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent] = 0;
  v26 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextStackView;
  type metadata accessor for TextStackView();
  *&v5[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell____lazy_storage___selectedIndicatorView] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_showDescriptionAndGradient] = 1;
  v27 = &v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextComponents];
  *v27 = sub_89B20();
  v27[1] = v28;
  v27[2] = v29;
  v27[3] = v30;
  v31 = &v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextComponent];
  *v31 = sub_8A390();
  v31[1] = v32;
  v31[2] = v33;
  v34 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextComponent;
  sub_8A174(1u, v69);
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  *&v5[v34] = TextStackView.Component.init(identifier:labelProperties:)(0x6E6F697461727564, 0xE800000000000000, v69);
  *&v5[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell__thumbnailHorizontalAlignment] = 0;
  v68.receiver = v5;
  v68.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v36 = [v35 layer];
  [v36 setAllowsGroupOpacity:0];

  v37 = [v35 layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent;
  v39 = *&v35[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent];

  v40 = UIView.Corner.large.unsafeMutableAddressor();
  v41 = sub_ABA680();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v16, v40, v41);
  (*(v42 + 56))(v16, 0, 1, v41);
  v43 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v39 + v43, v14);
  swift_beginAccess();
  sub_8A01C(v16, v39 + v43);
  swift_endAccess();
  sub_75AE8(v14);
  sub_8A08C(v14);
  sub_8A08C(v16);

  v44 = *&v35[v38];
  *(v44 + 24) = 0x70756B636F6CLL;
  *(v44 + 32) = 0xE600000000000000;

  v45 = *&v35[v38];
  v46 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = (v45 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v48 = *(v45 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  *v47 = sub_8A8C0;
  v47[1] = v46;

  sub_17654(v48);

  v49 = [v35 traitCollection];
  v50 = [v49 userInterfaceStyle];

  v51 = 0;
  v52 = 0;
  v53 = 0;
  if (v50 == &dword_0 + 2)
  {
    v54 = UIView.Border.artwork.unsafeMutableAddressor();
    v51 = *v54;
    v52 = *(v54 + 8);
    v53 = v54[2];
    v55 = v53;
  }

  sub_75E64(v51, v52, v53);
  v56 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextStackView;
  v57 = *&v35[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextStackView];
  v58 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v57[v58] = 0;
  v59 = &v35[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextComponents];
  result = swift_beginAccess();
  v61 = *(v59 + 3);
  if (!(v61 >> 62))
  {
    v62 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
    if (v62)
    {
      goto LABEL_5;
    }

LABEL_12:
    v66 = [v35 contentView];
    [v66 addSubview:*(*&v35[v38] + 112)];
    [v66 addSubview:*&v35[v56]];

    return v35;
  }

  result = sub_ABB060();
  v62 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v62 >= 1)
  {
    v63 = v57;

    for (i = 0; i != v62; ++i)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = sub_36003C(i, v61);
      }

      else
      {
        v65 = *(v61 + 8 * i + 32);
      }

      TextStackView.add(_:)(v65);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_855D0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline] != result || *&v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_856F0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_85784(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextComponents];
      swift_beginAccess();
      v5 = *(v4 + 1);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_8590C(uint64_t result, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle + 8];
  if (!a2)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v3)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_12;
  }

  if (*&v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle] != result || v3 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
LABEL_10:

      v5 = String.trim()();
      countAndFlagsBits = v5._countAndFlagsBits;
      object = v5._object;

LABEL_12:
      v8 = &v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextComponents];
      swift_beginAccess();
      v9 = *(v8 + 2);
      swift_beginAccess();
      *(v9 + 112) = countAndFlagsBits;
      *(v9 + 120) = object;

      sub_2EB704();

      v10 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) == 0)
      {
        v10 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      sub_85A54(v10 != 0);
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

void sub_85A54(char a1)
{
  v2 = v1;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_layoutStyle];
  v4 = a1 & 1;
  v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_layoutStyle] = a1 & 1;
  if (v3 != (a1 & 1))
  {
    v5 = &v2[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_topTextComponents];
    swift_beginAccess();
    sub_89180(v4);
    swift_endAccess();
    v6 = *(v5 + 3);

    TextStackView.removeAll()();
    if (v6 >> 62)
    {
      v7 = sub_ABB060();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_36003C(i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
          }

          TextStackView.add(_:)(v9);
        }
      }
    }

    [v2 setNeedsLayout];
  }
}

id sub_85BCC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTitle + 8];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTitle] & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    sub_85D00();
    sub_85F2C();
    sub_861D4(&dword_0 + 1);
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextComponent];
    v5 = String.trim()();
    swift_beginAccess();
    v4[7] = v5;

    sub_2EB704();
  }

  else
  {
LABEL_6:
    sub_861D4((*&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText + 8] != 0));
    v6 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextComponent];
    swift_beginAccess();
    *(v6 + 112) = 0;
    *(v6 + 120) = 0xE000000000000000;

    sub_2EB704();
  }

  return [v1 setNeedsLayout];
}

void sub_85D00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView];
  if (v3)
  {
    v17 = v3;
    v4 = [v0 contentView];
    v5 = [v17 isDescendantOfView:v4];

    if (v5)
    {
      v6 = v17;
    }

    else
    {
      v16 = [v1 contentView];
      [v16 addSubview:v17];

      v6 = v16;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_AF7C50;
    v8 = objc_opt_self();
    v9 = [v8 blackColor];
    v10 = [v9 colorWithAlphaComponent:0.0];

    *(v7 + 32) = v10;
    v11 = [v8 blackColor];
    v12 = [v11 colorWithAlphaComponent:0.4];

    *(v7 + 40) = v12;
    static Gradient.vertical(colors:locations:interpolations:)(v7, 0, 0, v18);

    v13 = objc_allocWithZone(type metadata accessor for Gradient.View());
    v14 = Gradient.View.init(configuration:)(v18);
    [v14 setHidden:(v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_showDescriptionAndGradient] & 1) == 0];
    v15 = [v1 contentView];
    [v15 addSubview:v14];

    v6 = *&v1[v2];
    *&v1[v2] = v14;
  }
}

void sub_85F2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView];
  if (!v3)
  {
    type metadata accessor for TextStackView();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v8 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_textDrawingCache;
    swift_beginAccess();
    v9 = *&v1[v8];
    v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v11 = *&v7[v10];
    *&v7[v10] = v9;
    swift_retain_n();
    sub_2E6210(v11);

    v12 = *&v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextComponent + 16];
    if (v12 >> 62)
    {
      v13 = sub_ABB060();
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (!v13)
      {
        goto LABEL_17;
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
        v15 = sub_36003C(i, v12);
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      TextStackView.add(_:)(v15);
    }

LABEL_17:
    v16 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    v7[v16] = 2;
    [v7 setHidden:(v1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_showDescriptionAndGradient] & 1) == 0];
    v17 = [v1 contentView];
    [v17 addSubview:v7];

    v18 = *&v1[v2];
    *&v1[v2] = v7;

    return;
  }

  v20 = v3;
  v4 = [v0 contentView];
  v5 = [v20 isDescendantOfView:v4];

  if (v5)
  {
    v6 = v20;
  }

  else
  {
    v19 = [v1 contentView];
    [v19 addSubview:v20];

    v6 = v19;
  }
}

id sub_861D4(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_showDescriptionAndGradient;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_showDescriptionAndGradient);
  *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_showDescriptionAndGradient) = result;
  if (v3 != (result & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView))
    {
      [*(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_gradientView) setHidden:(result & 1) == 0];
    }

    result = *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextStackView);
    if (result)
    {
      v4 = (*(v1 + v2) & 1) == 0;

      return [result setHidden:v4];
    }
  }

  return result;
}

id sub_86288(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_AB9260();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_86314(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    v8 = sub_AB92A0();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = &a1[*a4];
  *v10 = v8;
  v10[1] = v9;
  v12 = a1;

  a5(v11);
}

id sub_863A4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText + 8];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText] & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    sub_85D00();
    sub_85F2C();
    sub_861D4(&dword_0 + 1);
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextComponent + 8];
    v5 = String.trim()();
    swift_beginAccess();
    v4[7] = v5;

    sub_2EB704();
  }

  else
  {
LABEL_6:
    sub_861D4((*&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTitle + 8] != 0));
    v6 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTextComponent + 8];
    swift_beginAccess();
    *(v6 + 112) = 0;
    *(v6 + 120) = 0xE000000000000000;

    sub_2EB704();
  }

  return [v1 setNeedsLayout];
}

void sub_864E0()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent);
      if (v2)
      {
        v3 = *(v2 + 112);
        v4 = v1;

        if ([v4 isDescendantOfView:v3])
        {
          [v4 removeFromSuperview];
        }
      }
    }

    v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextComponent);
    swift_beginAccess();
    *(v5 + 112) = 0;
    *(v5 + 120) = 0xE000000000000000;

    sub_2EB704();
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration);
    v7 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView;
    v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView);
    if (v8)
    {
      v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView);
    }

    else
    {
      type metadata accessor for TextStackView();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
      swift_beginAccess();
      v10[v11] = 2;
      v12 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_textDrawingCache;
      swift_beginAccess();
      v13 = *(v0 + v12);
      v14 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
      swift_beginAccess();
      v15 = *&v10[v14];
      *&v10[v14] = v13;
      swift_retain_n();
      v9 = v10;
      sub_2E6210(v15);

      TextStackView.add(_:)(v16);

      v17 = *(v0 + v7);
      *(v0 + v7) = v9;
    }

    v18 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent);
    if (v18)
    {
      v19 = *(v18 + 112);
      v20 = v8;

      if (([v9 isDescendantOfView:v19] & 1) == 0)
      {
        [*(v18 + 112) addSubview:v9];
      }
    }

    else
    {
      v21 = v8;
    }

    if (*Double.epsilon.unsafeMutableAddressor() >= v6)
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    else
    {
      if (qword_DE6CB0 != -1)
      {
        swift_once();
      }

      v22 = [qword_E718F0 stringFromSeconds:v6];
      v23 = sub_AB92A0();
      v25 = v24;
    }

    v26 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextComponent);
    swift_beginAccess();
    *(v26 + 112) = v23;
    *(v26 + 120) = v25;

    sub_2EB704();
  }
}

void sub_8681C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v41 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkComponent);
    v10 = *(v9 + 112);
    v11 = *(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent);
    if (v11)
    {
      v12 = v8;
      v13 = v10;
      v14 = v11;
    }

    else
    {
      v42 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent;
      type metadata accessor for ArtworkComponentImageView();
      v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v19 = v8;
      v20 = v10;
      v21 = [v18 init];
      _s9ComponentCMa(0);
      swift_allocObject();
      v14 = sub_80104(v21);

      swift_retain_n();
      v22 = UIView.Corner.small.unsafeMutableAddressor();
      v23 = v10;
      v24 = sub_ABA680();
      v25 = *(v24 - 8);
      (*(v25 + 16))(v7, v22, v24);
      v26 = v24;
      v10 = v23;
      (*(v25 + 56))(v7, 0, 1, v26);
      v27 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
      swift_beginAccess();
      sub_89FAC(v14 + v27, v5);
      swift_beginAccess();
      sub_8A01C(v7, v14 + v27);
      swift_endAccess();
      sub_75AE8(v5);
      sub_8A08C(v5);
      sub_8A08C(v7);
      v28 = *(v14 + 80);
      v29 = *(v14 + 88);
      *(v14 + 80) = vdupq_n_s64(0x404D800000000000uLL);
      sub_75614(v28, v29);
      *(v14 + 24) = 0x69616E626D756874;
      *(v14 + 32) = 0xE90000000000006CLL;

      *(v14 + 16) = *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_artworkCachingReference);

      v30 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v31 = (v14 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      v32 = *(v14 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      *v31 = sub_8A12C;
      v31[1] = v30;

      sub_17654(v32);

      *(v1 + v42) = v14;
    }

    v33 = *(v14 + 112);
    swift_retain_n();
    v34 = v33;

    v35 = [v34 isDescendantOfView:*(v9 + 112)];

    if ((v35 & 1) == 0)
    {
      [v10 addSubview:*(v14 + 112)];
    }

    v36 = v8;
    sub_74EA4(v8);
    v37 = *(v1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextStackView);
    if (v37)
    {
      v38 = *(v14 + 112);
      v39 = v37;
      if ([v39 isDescendantOfView:v38])
      {
      }

      else
      {
        v40 = *(v14 + 112);
        [v40 addSubview:v39];
      }
    }

    else
    {
    }
  }

  else
  {
    v15 = OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent;
    if (*(v0 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkComponent))
    {

      sub_74EA4(0);

      v16 = *(v0 + v15);
      if (v16)
      {
        v17 = *(v16 + 112);

        [v17 removeFromSuperview];
      }
    }
  }
}

id sub_86C88()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment];
  if (*&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell__thumbnailHorizontalAlignment] != v1)
  {
    *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell__thumbnailHorizontalAlignment] = v1;
    if (v1 >= 4)
    {
      sub_ABAD90(24);
      v13._object = 0x8000000000B4AB80;
      v13._countAndFlagsBits = 0xD000000000000013;
      sub_AB94A0(v13);
      v14._countAndFlagsBits = 0xD000000000000032;
      v14._object = 0x8000000000B4D7C0;
      sub_AB94A0(v14);
      v15._countAndFlagsBits = 32;
      v15._object = 0xE100000000000000;
      sub_AB94A0(v15);
      type metadata accessor for MusicModelFlowcaseItemThumbnailHorizontalAlignment(0);
      sub_ABAF70();
      result = sub_ABAFD0();
      __break(1u);
    }

    else
    {
      v2 = 0x5040100u >> (8 * v1);
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_durationTextComponent];

      sub_8A174(v2, v12);
      swift_beginAccess();
      v5 = v3[3];
      v4 = v3[4];
      v6 = v3[6];
      v11[3] = v3[5];
      v11[4] = v6;
      v11[2] = v4;
      v11[0] = v3[2];
      v11[1] = v5;
      v7 = v12[4];
      v3[5] = v12[3];
      v3[6] = v7;
      v8 = v12[1];
      v3[2] = v12[0];
      v3[3] = v8;
      v3[4] = v12[2];
      sub_2F118(v12, v10);
      sub_2F174(v11);
      sub_2EB2A8();
      sub_2F174(v12);

      return [v0 setNeedsLayout];
    }
  }

  return result;
}