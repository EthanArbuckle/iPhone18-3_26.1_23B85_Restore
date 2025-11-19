uint64_t sub_100134DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_100134E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100134EB4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_100134F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_100134FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974808, type metadata accessor for UberCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10013506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10013516C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100538BFC(a1, a2, a3, WitnessTable);
}

uint64_t sub_1001351E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10013526C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10048F4BC(a1, WitnessTable, a2);
}

uint64_t sub_1001352F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10048F75C(a1, a2, a3, a4, WitnessTable, a5);
}

uint64_t sub_1001353F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_1009747C8, type metadata accessor for VideoCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10013553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001355C0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchAdAction();
  sub_100135F00(&unk_100983980, &type metadata accessor for SearchAdAction);
  if (ItemLayoutContext.typedModel<A>(is:)())
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v6 = type metadata accessor for ComponentSeparator();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for ComponentSeparator();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

void (*sub_10013583C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100344008();
  return sub_1000BD370;
}

uint64_t sub_1001358B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, WitnessTable);
}

uint64_t sub_1001359C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100135F00(&qword_100974768, type metadata accessor for ArcadeDownloadPackCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100135A64@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_10009768C(v2 + v4, a2);
}

uint64_t sub_100135AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  sub_10009761C(a1, v4 + v6);
  return swift_endAccess();
}

uint64_t sub_100135BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100135C40(uint64_t a1)
{
  result = sub_100135F00(&qword_100975728, type metadata accessor for TitledParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100135C98(uint64_t a1)
{
  result = sub_100135F00(&qword_100975730, type metadata accessor for ProductDescriptionCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100135CF0(uint64_t a1)
{
  result = sub_100135F00(&qword_100975738, type metadata accessor for ParagraphCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100135D48(uint64_t a1)
{
  result = sub_100135F00(&qword_100975740, type metadata accessor for AnnotationCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100135DA0()
{
  result = qword_100975760;
  if (!qword_100975760)
  {
    sub_10002D1A8(&qword_100975758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975760);
  }

  return result;
}

unint64_t sub_100135E04()
{
  result = qword_100992FF0;
  if (!qword_100992FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992FF0);
  }

  return result;
}

unint64_t sub_100135E58()
{
  result = qword_100975778;
  if (!qword_100975778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975778);
  }

  return result;
}

unint64_t sub_100135EAC()
{
  result = qword_100975788;
  if (!qword_100975788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975788);
  }

  return result;
}

uint64_t sub_100135F00(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100135F78@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_10002849C(&qword_100975868);
  __chkstk_darwin(v1 - 8);
  SmallPlayerCardData.id.getter();
  v12 = SmallPlayerCardData.title.getter();
  v11 = v2;
  v10 = SmallPlayerCardData.subtitle.getter();
  v9 = v3;
  SmallPlayerCardData.buttonText.getter();
  SmallPlayerCardData.avatarArtworkLoaderConfig.getter();
  SmallPlayerCardData.avatarImage.getter();
  SmallPlayerCardData.shouldShowMessagesBadge.getter();
  SmallPlayerCardData.buttonAction.getter();
  SmallPlayerCardData.removeButtonAction.getter();
  v4 = objc_opt_self();
  result = [v4 shared];
  if (result)
  {
    v6 = result;
    v7 = [result isAccountModificationRestricted];

    if (v7)
    {
LABEL_5:
      SmallPlayerCardData.segue.getter();
      return SmallPlayerCardData.init(id:title:subtitle:buttonText:avatarArtworkLoaderConfig:avatarImage:shouldShowMessagesBadge:buttonAction:removeButtonAction:isEnabled:segue:messagesGroupIdentifier:groupRecipients:)();
    }

    result = [v4 shared];
    if (result)
    {
      v8 = result;
      [result isAddingFriendsRestricted];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100136174(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for SmallPlayerCardData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  ImpressionableSmallPlayerCard.data.getter();
  SmallPlayerCardData.buttonAction.getter();
  v13 = *(v7 + 8);
  v13(v12, v6);
  if (!v28[3])
  {
    return sub_10002B894(v28, &qword_100975850);
  }

  sub_10002849C(&unk_100975858);
  type metadata accessor for Action();
  result = swift_dynamicCast();
  if (result)
  {
    v24 = v27;
    type metadata accessor for ASKBagContract();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      ImpressionableSmallPlayerCard.data.getter();
      SmallPlayerCardData.id.getter();
      v13(v9, v6);
      v17 = swift_dynamicCast();
      v18 = v17 == 0;
      if (v17)
      {
        v19 = v25;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

      sub_1005A7DB8(v19, v20);
    }

    v21 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v5, 1, v21) == 1)
    {

      return sub_10002B894(v5, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v24, 1, a2, v5);

      return (*(v22 + 8))(v5, v21);
    }
  }

  return result;
}

uint64_t sub_1001364FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for SmallPlayerCardData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  ImpressionableSmallPlayerCard.data.getter();
  SmallPlayerCardData.removeButtonAction.getter();
  (*(v7 + 8))(v9, v6);
  if (!v16)
  {
    return sub_10002B894(v15, &qword_100975850);
  }

  sub_10002849C(&unk_100975858);
  type metadata accessor for Action();
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v14;
    v12 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {

      return sub_10002B894(v5, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v11, 1, a2, v5);

      return (*(v13 + 8))(v5, v12);
    }
  }

  return result;
}

uint64_t sub_100136768(uint64_t result)
{
  if (result)
  {

    Artwork.config(using:)();
    type metadata accessor for ArtworkLoader();
    type metadata accessor for SmallPlayerCardView();
    static ArtworkLoader.handlerKey<A>(for:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v1, &qword_10096FB90);
  }

  return result;
}

void sub_10013688C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *(v3 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard);

      v6 = dispatch thunk of SmallPlayerCardView.image.getter();
      if (v6)
      {
      }
    }

    dispatch thunk of SmallPlayerCardView.show(image:isAnimationPermitted:)();
  }
}

uint64_t sub_1001369CC()
{
  type metadata accessor for ArtworkLoader();
  type metadata accessor for SmallPlayerCardView();
  static ArtworkLoader.handlerKey<A>(for:)();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
  return sub_10003D614(v1);
}

uint64_t sub_100136A4C()
{
  type metadata accessor for SmallPlayerCardView();
  static SmallPlayerCardView.size(fitting:traitEnvironment:)();
  v1 = [objc_opt_self() absoluteDimension:v0];
  v2 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v2;
}

uint64_t sub_100136B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100136BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SmallPlayerCardData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  ImpressionableSmallPlayerCard.data.getter();
  sub_100135F78(v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  dispatch thunk of SmallPlayerCardView.apply(data:shouldSetImage:)();
  v12(v11, v5);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = v13;

  dispatch thunk of SmallPlayerCardView.buttonActionBlock.setter();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;

  return dispatch thunk of SmallPlayerCardView.closeButtonActionBlock.setter();
}

id sub_100136DEC()
{
  swift_getWitnessTable();
  v0 = LinkPresentationProvider.deinit();

  return v0;
}

uint64_t sub_100136E48()
{
  v1 = type metadata accessor for WhatsNewItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter();
  if (result)
  {
    v6 = WelcomeOnboardingStep.enabledWhatsNewItems.getter();
    v7 = *(v6 + 16);
    if (v7)
    {
      v26 = v1;
      v27 = v0;
      v9 = *(v2 + 16);
      v8 = v2 + 16;
      v10 = *(v8 + 64);
      v22 = v6;
      v11 = v6 + ((v10 + 32) & ~v10);
      v23 = *(v8 + 56);
      v24 = v9;
      v25 = v8;
      v12 = (v8 - 8);
      v9(v4, v11, v1);
      while (1)
      {
        v18 = WhatsNewItem.isCustomSymbol.getter();
        WhatsNewItem.title.getter();
        v19 = String._bridgeToObjectiveC()();

        WhatsNewItem.body.getter();
        v20 = String._bridgeToObjectiveC()();

        WhatsNewItem.symbolName.getter();
        v21 = String._bridgeToObjectiveC()();

        if (v18)
        {
          v14 = [objc_opt_self() imageNamed:{v21, v22}];

          if (v14)
          {
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v21 = v14;
          }

          else
          {
            v21 = [objc_allocWithZone(UIImage) init];
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v14 = v21;
          }

          v15 = v19;
          v16 = v20;
        }

        else
        {
          v13 = &selRef_addBulletedListItemWithTitle_description_symbolName_;
          v14 = v19;
          v15 = v20;
          v16 = v21;
        }

        [v27 *v13];

        v17 = v26;
        (*v12)(v4, v26);
        v11 += v23;
        if (!--v7)
        {
          break;
        }

        v24(v4, v11, v17);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1001370E4()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  WelcomeOnboardingStep.privacyIdentifiers.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 linkWithBundleIdentifiers:isa];

  if (v12)
  {
    v13 = v12;
    static Locale.storefront.getter();
    Locale.identifier.getter();
    (*(v7 + 8))(v9, v6);
    v14 = String._bridgeToObjectiveC()();

    [v13 setDisplayLanguage:v14];
  }

  v15 = [v1 buttonTray];
  [v15 setPrivacyLinkController:v12];

  v16 = [objc_opt_self() boldButton];
  v17._object = 0x8000000100802BB0;
  v17._countAndFlagsBits = 0xD00000000000001FLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  localizedString(_:comment:)(v17, v18);
  v19 = String._bridgeToObjectiveC()();

  [v16 setTitle:v19 forState:0];

  [v16 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  static AutomationSemantics.onboarding(elementName:id:parentId:)();
  sub_10003D444(v21);
  sub_10003D444(v22);
  UIView.setAutomationSemantics(_:)();
  (*(v3 + 8))(v5, v2);
  v20 = [v1 buttonTray];
  [v20 addButton:v16];
}

uint64_t type metadata accessor for OnboardingWelcomeViewController()
{
  result = qword_1009758A8;
  if (!qword_1009758A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100137678()
{
  result = type metadata accessor for WelcomeOnboardingStep();
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

id sub_100137718(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for SystemAppIcon();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore31OnboardingWelcomeViewController_onboardingStep;
  v15 = type metadata accessor for WelcomeOnboardingStep();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v38 = v15;
  v17(&v5[v14], a1);
  v18 = &v5[OBJC_IVAR____TtC8AppStore31OnboardingWelcomeViewController_primaryButtonCallback];
  *v18 = a3;
  *(v18 + 1) = a4;

  v39 = a1;
  if (WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter())
  {
    v19 = "Onboarding.Welcome.Description";
    if (a2)
    {
      v19 = "New.Title.NoArcade";
      v20 = 0xD000000000000019;
    }

    else
    {
      v20 = 0xD000000000000022;
    }

    v21 = v19 | 0x8000000000000000;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v20, v22);
    v23 = String._bridgeToObjectiveC()();

    v40.receiver = v5;
    v40.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v40, "initWithTitle:detailText:icon:contentLayout:", v23, 0, 0, 2);

    v25 = v24;
    sub_100136E48();
  }

  else
  {
    v26._object = 0x8000000100802B20;
    v26._countAndFlagsBits = 0xD000000000000018;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    localizedString(_:comment:)(v26, v27);
    v28._countAndFlagsBits = 0xD00000000000001ELL;
    v28._object = 0x8000000100802B40;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    localizedString(_:comment:)(v28, v29);
    v30 = String._bridgeToObjectiveC()();

    v31 = String._bridgeToObjectiveC()();

    (*(v11 + 104))(v13, enum case for SystemAppIcon.AppStore(_:), v10);
    v32 = [objc_opt_self() mainScreen];
    [v32 scale];

    v33 = SystemAppIcon.uiImage(size:scale:drawBorder:)();
    (*(v11 + 8))(v13, v10);
    v41.receiver = v5;
    v41.super_class = ObjectType;
    v34 = objc_msgSendSuper2(&v41, "initWithTitle:detailText:icon:contentLayout:", v30, v31, v33, 2);

    v25 = v34;
  }

  sub_1001370E4();
  [v25 setModalInPresentation:1];

  (*(v16 + 8))(v39, v38);
  return v25;
}

char *sub_100137AA8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductReviewActionsCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView];
  sub_100005744(0, &qword_100970180);
  v15 = v14;
  v16 = static UIColor.defaultLine.getter();
  [v15 setBackgroundColor:v16];

  [*&v11[v13] setHidden:1];
  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView]];

  return v11;
}

id sub_100137D5C()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewActionsCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v1[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_productReviewActionsView] setFrame:{v4, v6, v8, v10}];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMinX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v11 = *&v1[OBJC_IVAR____TtC8AppStore24ProductReviewActionsCell_separatorView];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v11 setFrame:?];
}

id sub_100137F54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100138044()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Screenshots();
  sub_100138268(&qword_1009758F0, &type metadata accessor for Screenshots);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v12[1])
  {
    return 0.0;
  }

  v12[0] = Screenshots.artwork.getter();
  v4 = Screenshots.mediaPlatform.getter();
  v5 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v8 = v7;
  v6(v3, v0);
  sub_1004D62C0(v12[0], v4, v5, 0.0, 0.0, v8);
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_100138268(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001382B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10002849C(&qword_100975948);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = v59 - v12;
  [a6 pageMarginInsets];
  [v6 setLayoutMargins:?];
  if (qword_10096EAD8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v15 = sub_1000056A8(v14, qword_10098ED30);
  __chkstk_darwin(v15);
  v59[-2] = a6;
  Copyable.copyWithOverrides(in:)();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_100138D5C(v13, &v7[v16]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10002B894(v13, &qword_100975948);
  if (ArcadeFooter.footnote.getter())
  {
    v17 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView];
    v18 = Footnote.presentationStyle.getter();
    v19 = v17[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron];
    v17[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = (v18 & 2) != 0;
    sub_10007B3E8(v19);
    v17[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = (Footnote.presentationStyle.getter() & 4) != 0;
    v20 = *&v17[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
    Footnote.text.getter();
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    [v17 setNeedsLayout];
    v22 = dispatch thunk of Footnote.clickAction.getter();
    if (v22)
    {
      v23 = v22;
      dispatch thunk of Footnote.clickSender.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = v23;
      v25 = &v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v26 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      *v25 = sub_100138E30;
      v25[1] = v24;
      swift_retain_n();

      sub_10001F63C(v26);
      v27 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];

      [v27 setEnabled:1];

      sub_10002B894(v59, &unk_1009711D0);
    }

    else
    {
    }
  }

  else
  {
    v28 = &v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v29 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    *v28 = 0;
    *(v28 + 1) = 0;
    sub_10001F63C(v29);
    [*&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer] setEnabled:0];
  }

  v30 = ArcadeFooter.buttonAction.getter();
  if (v30)
  {
    v31 = v30;
    v32 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView];
    Action.title.getter();
    if (v33)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    [v32 setTitle:v34 forState:0];

    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    *(v35 + 24) = v31;
    v36 = &v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v37 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock];
    *v36 = sub_100138DCC;
    v36[1] = v35;
    swift_retain_n();

    sub_10001F63C(v37);

    [v32 addTarget:v7 action:"buttonTapped" forControlEvents:64];
  }

  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v38 = v59[0];
  sub_100604FD0();
  v39 = ArcadeFooter.icons.getter();
  if (!v39)
  {
    goto LABEL_27;
  }

  v40 = v39;
  v41 = v39 >> 62;
  if (v39 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:
    v53 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
    if (!v53)
    {
      goto LABEL_30;
    }

    v54 = v53;
    v55 = dispatch thunk of RiverView.dataSource.getter();

    *(v55 + 48) = 1;
    goto LABEL_29;
  }

LABEL_16:
  v42 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView;
  v43 = *&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  if (v43 && (v44 = v43, v45 = dispatch thunk of RiverView.dataSource.getter(), v44, *(v45 + 40) = v40, , , , (v46 = *&v7[v42]) != 0))
  {
    v47 = v46;
    v48 = dispatch thunk of RiverView.dataSource.getter();

    if (v41)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v48 + 48) = v49;

    v50 = *&v7[v42];
    if (v50)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v50 = *&v7[v42];
    if (v50)
    {
LABEL_24:
      v51 = v50;
      v52 = dispatch thunk of RiverView.dataSource.getter();

      *(v52 + 56) = v38;

LABEL_29:
    }
  }

LABEL_30:
  v56 = ArcadeFooter.backgroundColor.getter();
  if (v56)
  {

    v57 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_100028BB8();
    v57 = static UIColor.placeholderBackgroundStandout.getter();
  }

  v58 = v57;
  [*&v7[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView] _setBackgroundColor:v57];
  [v7 setNeedsLayout];
}

uint64_t sub_1001389A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_100138AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EAD8 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v7, qword_10098ED30);
  __chkstk_darwin(v11);
  *(&v15 - 2) = a6;
  Copyable.copyWithOverrides(in:)();
  type metadata accessor for ArcadeFooterLayout();
  sub_100138DE8(&qword_100973FC0, &type metadata accessor for ArcadeFooterLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_100138D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975948);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100138DE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100138E38()
{
  result = qword_1009747C0;
  if (!qword_1009747C0)
  {
    type metadata accessor for VideoCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009747C0);
  }

  return result;
}

double sub_100138E90()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  ShelfLayoutContext.traitEnvironment.getter();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_1001C2E40(v5);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

double sub_100139004()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfLayoutContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  ShelfLayoutContext.traitEnvironment.getter();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_1001C2E40(v9);
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_100139224(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v4 = type metadata accessor for FamilyCircleLookupTask();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v11 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v11 - 8);
  v13 = v46 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  v61 = 0u;
  v62 = 0u;

  sub_100462678(v21, &v61, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10002B894(v13, &unk_1009796F0);
  }

  else
  {
    sub_10013A05C(v13, v20);
    sub_100118188(v20, v17);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v48 = *v17;
      v49 = a1;
      v22 = sub_10002849C(&qword_100975958);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = v59;
      v26 = *(v59 + 32);
      v46[1] = v59 + 32;
      v47 = v26;
      v54 = v10;
      v26(v10, &v17[v24], v6);
      v27 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v27 - 8) + 8))(&v17[v23], v27);
      sub_10002849C(&qword_1009764A0);
      v28 = Promise.__allocating_init()();
      FamilyCircleLookupTask.init()();
      v51 = FamilyCircleLookupTask.perform()();
      v29 = v55;
      (*(v25 + 16))(v55, v10, v6);
      v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
      v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = v4;
      v53 = v20;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v50 = v6;
      v34 = swift_allocObject();
      v35 = v47;
      *(v34 + 16) = v48;
      v35(v34 + v30, v29, v6);
      v36 = v49;
      *(v34 + v31) = v49;
      v38 = v56;
      v37 = v57;
      *(v34 + v32) = v56;
      *(v34 + v33) = v37;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v28;
      v40 = sub_100005744(0, &qword_1009729E0);

      v41 = v38;

      swift_retain_n();
      swift_retain_n();
      v42 = static OS_dispatch_queue.main.getter();
      *(&v62 + 1) = v40;
      v63 = &protocol witness table for OS_dispatch_queue;
      *&v61 = v42;
      Promise.then(perform:orCatchError:on:)();

      (*(v58 + 8))(v60, v52);
      (*(v59 + 8))(v54, v50);
      sub_10013B6D8(v53, type metadata accessor for FlowDestination);
      sub_100007000(&v61);
      return v28;
    }

    sub_10013B6D8(v20, type metadata accessor for FlowDestination);
    sub_10013B6D8(v17, type metadata accessor for FlowDestination);
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for OSLogger();
  sub_1000056A8(v43, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  *(&v62 + 1) = type metadata accessor for FlowAction();
  *&v61 = a1;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v61, &unk_1009711D0);
  Logger.error(_:)();

  sub_10002849C(&qword_1009764A0);
  sub_10013A008();
  swift_allocError();
  *v44 = 1;
  return Promise.__allocating_init(error:)();
}

uint64_t sub_100139968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v42 = a3;
  v43 = a2;
  v8 = type metadata accessor for FlowDestination();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v44 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FamilyCircleLookupResult();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v41 - v25;
  v27 = *(v11 + 16);
  v27(v19, a1, v10, v24);
  v28 = (*(v11 + 88))(v19, v10);
  if (v28 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (v27)(v13, v19, v10);
    (*(v11 + 96))(v13, v10);
    if (*v13 == 1)
    {
      v29 = sub_10002849C(&qword_100975958);
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.createNewFamily(_:);
LABEL_7:
      v34 = *v32;
      v35 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v35 - 8) + 104))(&v26[v30], v34, v35);
      v36 = type metadata accessor for URL();
      (*(*(v36 - 8) + 16))(&v26[v31], v42, v36);
      v37 = v50;
      swift_storeEnumTagMultiPayload();
      v38 = v49;
      (*(v49 + 56))(v26, 0, 1, v37);

      goto LABEL_9;
    }
  }

  else if (v28 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (v27)(v16, v19, v10);
    (*(v11 + 96))(v16, v10);
    if (*v16 == 1)
    {
      v33 = sub_10002849C(&qword_100975958);
      v30 = *(v33 + 48);
      v31 = *(v33 + 64);
      *v26 = v43;
      v32 = &enum case for ArcadeWelcomePage.ContentType.familyOrganizer(_:);
      goto LABEL_7;
    }
  }

  v38 = v49;
  v37 = v50;
  (*(v49 + 56))(v26, 1, 1, v50);
LABEL_9:
  (*(v11 + 8))(v19, v10);
  sub_100031660(v26, v22, &unk_1009796F0);
  if ((*(v38 + 48))(v22, 1, v37) == 1)
  {
    sub_10002B894(v26, &unk_1009796F0);
  }

  else
  {
    v39 = v44;
    sub_10013A05C(v22, v44);
    sub_10013A664(v39, v45, v46, v47, v48);
    sub_10013B6D8(v39, type metadata accessor for FlowDestination);
    v22 = v26;
  }

  return sub_10002B894(v22, &unk_1009796F0);
}

uint64_t sub_100139E54(uint64_t a1, uint64_t a2)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSLogger();
  sub_1000056A8(v3, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  v5[3] = type metadata accessor for FlowAction();
  v5[0] = a2;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(v5, &unk_1009711D0);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

unint64_t sub_10013A008()
{
  result = qword_100975950;
  if (!qword_100975950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975950);
  }

  return result;
}

uint64_t sub_10013A05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013A0C0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100139968(a1, v10, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_10013A18C()
{
  v0 = type metadata accessor for FlowPage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  FlowAction.page.getter();
  (*(v1 + 104))(v3, enum case for FlowPage.arcadeWelcome(_:), v0);
  sub_10013B754(&qword_1009818A0, &type metadata accessor for FlowPage);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_10013A368(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FlowAnimationBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100005744(0, &qword_1009711C0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_10013B754(&qword_100975978, &type metadata accessor for FlowPresentationContext);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints();
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_10013A664(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v96 = a4;
  v93 = type metadata accessor for ActionOutcome();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v94 = &v90 - v9;
  v10 = type metadata accessor for FlowPresentationContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v90 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = &v90 - v14;
  __chkstk_darwin(v15);
  v17 = &v90 - v16;
  v18 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v18);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();
  v21 = [a3 traitCollection];
  v95 = a1;
  sub_10065DB50(v17);

  v22 = sub_100623FBC(a3);
  if (!v22)
  {
    sub_10013A008();
    swift_allocError();
    *v43 = 0;
    Promise.reject(_:)();
    (*(v11 + 8))(v17, v10);
    sub_10013B6D8(v20, type metadata accessor for FlowPresentationHints);
  }

  v100 = v17;
  v97 = v20;
  v102 = v11;
  v99 = v10;
  v23 = v22;
  v24 = [v23 traitCollection];
  v25 = FlowAction.referrerUrl.getter();
  v27 = v26;
  v28 = v94;
  FlowAction.referrerData.getter();
  *&v103[0] = v23;
  sub_100005744(0, &qword_100975960);
  v29 = v23;
  sub_10002849C(&qword_100975968);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v106 = 0;
    v104 = 0u;
    v105 = 0u;
  }

  sub_1003C1668(v95, v24, v25, v27, v28, &v104, v96, 1);
  v31 = v30;

  sub_10002B894(v28, &unk_1009767C0);
  sub_10002B894(&v104, &unk_100981880);
  if (!v31)
  {

    v45 = v92;
    v46 = v91;
    v47 = v93;
    (*(v92 + 104))(v91, enum case for ActionOutcome.unsupported(_:), v93);
    Promise.resolve(_:)();

    (*(v45 + 8))(v46, v47);
    (*(v102 + 8))(v100, v99);
    return sub_10013B6D8(v97, type metadata accessor for FlowPresentationHints);
  }

  v32 = [v29 presentingViewController];

  v33 = v99;
  v34 = v102;
  v35 = v97;
  v36 = v100;
  if (!v32)
  {
LABEL_24:
    v55 = sub_10013A368(v35, v29);
    v56 = *(v34 + 104);
    v56(v98, enum case for FlowPresentationContext.push(_:), v33);
    sub_10013B754(&qword_100975970, &type metadata accessor for FlowPresentationContext);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    LODWORD(v96) = v55;
    if (v104 == v103[0])
    {
      v57 = 1;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v58 = v34 + 8;
    v24 = *(v34 + 8);
    v34 = v99;
    v102 = v58;
    (v24)(v98, v99);

    if (v57)
    {
      [v31 setModalPresentationCapturesStatusBarAppearance:1];
      v104 = xmmword_100975F30;
      v105 = xmmword_100975F40;
      v106 = xmmword_100975F50;
      v107 = xmmword_100975F60;
      v108 = xmmword_100975F70;
      v59 = qword_100975F80;
      v109 = qword_100975F80;
      v60 = BYTE8(xmmword_100975F50);
      if (BYTE8(xmmword_100975F50) != 255)
      {
        v61 = v104;
        v63 = v105;
        v62 = *&v106;
        v64 = v107;
        v65 = v108;
        v66 = v104;
        v67 = [v31 popoverPresentationController];
        if (v67)
        {
          v68 = v67;
          if (v60)
          {
            sub_100031660(&v104, v103, &unk_10097F520);
            v69 = v68;
            [v69 setSourceView:v61];
            [v69 setSourceRect:{*(&v61 + 1), v63, v62}];
            v34 = v99;
            sub_10002B894(&v104, &unk_10097F520);
          }

          else
          {
            [v67 setBarButtonItem:v61];
          }

          [v68 setPopoverLayoutMargins:{v64, v65}];
          [v68 setPermittedArrowDirections:v59];
        }

        else
        {
          if (qword_10096D120 != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for OSLogger();
          sub_1000056A8(v86, qword_1009CE218);
          sub_10002849C(&unk_100972A10);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B10D0;
          LogMessage.init(stringLiteral:)();
          Logger.warning(_:)();
        }

        sub_10002B894(&v104, &unk_10097F520);
      }

      [v29 pushViewController:v31 animated:v96 & 1];
      goto LABEL_58;
    }

    v70 = v90;
    v56(v90, enum case for FlowPresentationContext.replace(_:), v34);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v104 == v103[0])
    {
      (v24)(v70, v34);
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (v24)(v70, v34);

      if ((v71 & 1) == 0)
      {
LABEL_58:
        v87 = v92;
        v88 = v91;
        v89 = v93;
        (*(v92 + 104))(v91, enum case for ActionOutcome.performed(_:), v93);
        Promise.resolve(_:)();

        (*(v87 + 8))(v88, v89);
        (v24)(v100, v34);
        return sub_10013B6D8(v97, type metadata accessor for FlowPresentationHints);
      }
    }

    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (!v72)
    {
      v79 = [v29 viewControllers];
      sub_100005744(0, &qword_1009711C0);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = (v36 >> 62);
      if (!(v36 >> 62))
      {
        if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_45:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v37 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v36 = sub_100549964(v36);
        }

        v81 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v81)
        {
          v82 = v81 - 1;
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 8 * v82 + 0x20);
          *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) = v82;
          *&v104 = v36;
          v83 = [v37 tabBarItem];
          [v31 setTabBarItem:v83];

          v84 = v31;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_50:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v29 setViewControllers:isa animated:v96 & 1];

            goto LABEL_58;
          }

LABEL_68:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v34 = v99;
          goto LABEL_50;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_65:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    v35 = v72;
    v36 = v31;
    v73 = [v29 viewControllers];
    v37 = sub_100005744(0, &qword_1009711C0);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = v34 >> 62;
    if (!(v34 >> 62))
    {
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_38:
        v74 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v33 || (v74 & 1) == 0)
        {
          v34 = sub_100549964(v34);
        }

        v75 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v75)
        {
          v76 = v75 - 1;
          v77 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v76 + 0x20);
          *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) = v76;

          v78 = Array._bridgeToObjectiveC()().super.isa;

          [v29 setViewControllers:v78];

          [v29 presentViewController:v35 animated:0 completion:0];
          v34 = v99;
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v37 = [v29 viewControllers];
  sub_100005744(0, &qword_1009711C0);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_8:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_62;
    }

    v39 = *(v38 + 32);
  }

  v40 = v39;

  if ((sub_100039CB4(v40) & 1) == 0)
  {
    goto LABEL_14;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v29;
  v42 = v29;
  if (sub_100039CB4(v31))
  {

LABEL_14:

    goto LABEL_24;
  }

  v48 = [v31 navigationItem];
  v49 = [v48 rightBarButtonItems];
  if (v49)
  {
    v50 = v49;
    sub_100005744(0, &qword_100983870);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  *&v104 = v51;
  sub_100005744(0, &qword_100983870);
  sub_100005744(0, &qword_10097CD40);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10013B73C;
  *(v52 + 24) = v41;

  v110.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v110.is_nil = 0;
  v53.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v110, v111).super.super.isa;
  if (!(v51 >> 62) || (result = _CocoaArrayWrapper.endIndex.getter(), (result & 0x8000000000000000) == 0))
  {
    sub_1004A6D30(0, 0, v53.super.super.isa);
    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v48 setRightBarButtonItems:v54];

    v33 = v99;
    v34 = v102;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10013B6D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013B754(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10013B7B0()
{
  result = qword_100975980;
  if (!qword_100975980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975980);
  }

  return result;
}

id sub_10013B804()
{
  v1 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *&v0[v1] = sub_100398C2C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *&v0[v2] = sub_100398D0C(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v3 = objc_msgSendSuper2(&v8, "init");
  sub_100005744(0, &qword_10097F580);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void sub_10013B9FC(double a1, double a2, double a3, double a4)
{
  v52 = type metadata accessor for IndexPath();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v44 - v13;
  v14 = type metadata accessor for ShelfDisplayingFlowLayout();
  v46 = v4;
  v55.receiver = v4;
  v55.super_class = v14;
  v15 = objc_msgSendSuper2(&v55, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  sub_100005744(0, &qword_1009759D0);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v46;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_25:
    v45 = _swiftEmptyArrayStorage;
LABEL_26:
    v53 = v17;
    sub_10039498C(v45);
    return;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = v46;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v20 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
    v21 = v17 & 0xC000000000000001;
    v49 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
    v50 = v11;
    swift_beginAccess();
    v44 = v20;
    swift_beginAccess();
    v22 = 0;
    v48 = "multiColumnOrigins";
    v23 = (v9 + 8);
    v45 = _swiftEmptyArrayStorage;
    v47 = v17 & 0xC000000000000001;
    while (1)
    {
      v24 = v21 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v22 + 32);
      v25 = v24;
      if (![v24 representedElementCategory])
      {
        break;
      }

LABEL_7:
      if (v18 == ++v22)
      {
        goto LABEL_26;
      }
    }

    v26 = [v25 indexPath];
    v27 = v51;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = sub_10013C60C();
    v29 = *v23;
    (*v23)(v27, v52);
    if (v28)
    {
      v30 = v28;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v45 = v54;
      v19 = v46;
    }

    v31 = [v25 indexPath];
    v32 = v50;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *&v19[v49];
    if (*(v33 + 16))
    {

      v34 = sub_1003D7D18(v32);
      if (v35)
      {
        v36 = *(v33 + 56) + 16 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);

        v39 = IndexPath.section.getter();
        v40 = *&v19[v44];
        if (*(v40 + 16))
        {
          v41 = sub_1003D7340(v39);
          if (v42)
          {
            v43 = *(*(v40 + 56) + 8 * v41);

            v29(v32, v52);

            [v25 frame];
            [v25 setFrame:{v37, v38 + v43}];

LABEL_23:
            v21 = v47;
            goto LABEL_7;
          }
        }
      }

      else
      {
      }
    }

    v29(v32, v52);
    goto LABEL_23;
  }

  __break(1u);
}

id sub_10013BF18()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = type metadata accessor for ShelfDisplayingFlowLayout();
  v15.receiver = v0;
  v15.super_class = v6;
  v7 = objc_msgSendSuper2(&v15, "layoutAttributesForItemAtIndexPath:", isa);

  if (v7)
  {
    v8 = [v7 indexPath];
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_10013C900(v4);
    v11 = v10;
    v13 = v12;
    (*(v2 + 8))(v4, v1);
    if ((v13 & 1) == 0)
    {
      [v7 frame];
      [v7 setFrame:{*&v9, v11}];
    }
  }

  return v7;
}

void *sub_10013C470(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v9 = objc_msgSendSuper2(&v18, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 != a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0.0;
    if (a3 != 0.0)
    {
LABEL_6:
      [v10 setInvalidateFlowLayoutAttributes:1];
      [v10 setInvalidateFlowLayoutDelegateMetrics:1];
      return v10;
    }
  }

  if (v16 != a4)
  {
    goto LABEL_6;
  }

  return v10;
}

id sub_10013C60C()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 delegate];

      if (v5)
      {
        v33 = &OBJC_PROTOCOL____TtP8AppStore49UICollectionViewDelegateShelfDisplayingFlowLayout_;
        v6 = swift_dynamicCastObjCProtocolConditional();
        if (!v6)
        {
          goto LABEL_14;
        }

        v7 = [v6 collectionView:v2 layout:v0 shouldProvideBackgroundAtSection:IndexPath.section.getter()];
        swift_unknownObjectRelease();
        if (v7)
        {
          v8 = [v0 collectionView];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 delegate];

            if (v10)
            {
              v32 = &OBJC_PROTOCOL____TtP8AppStore49UICollectionViewDelegateShelfDisplayingFlowLayout_;
              v11 = swift_dynamicCastObjCProtocolConditional();
              if (v11)
              {
                [v11 collectionView:v2 layout:v0 insetForBackgroundAtSection:IndexPath.section.getter()];
                v13 = v12;
                v15 = v14;
                swift_unknownObjectRelease();
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                v31.receiver = v0;
                v31.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
                v17 = objc_msgSendSuper2(&v31, "layoutAttributesForItemAtIndexPath:", isa);

                if (v17)
                {
                  [v17 frame];
                  v19 = v18;
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;
                  v26 = String._bridgeToObjectiveC()();
                  v27 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v28 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v26 withIndexPath:v27];

                  v34.origin.x = v19;
                  v34.origin.y = v21;
                  v34.size.width = v23;
                  v34.size.height = v25;
                  v29 = CGRectGetMinY(v34) - v13;
                  [v2 bounds];
                  Width = CGRectGetWidth(v35);
                  v36.origin.x = v19;
                  v36.origin.y = v21;
                  v36.size.width = v23;
                  v36.size.height = v25;
                  [v28 setFrame:{0.0, v29, Width, v15 + v13 + CGRectGetHeight(v36)}];
                  [v28 setZIndex:-1];

                  return v28;
                }

                goto LABEL_11;
              }

LABEL_14:

              swift_unknownObjectRelease();
              return 0;
            }
          }
        }
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_10013C900(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_1003D7D18(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      v9 = IndexPath.section.getter();
      v10 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
      swift_beginAccess();
      if (*(*(v2 + v10) + 16))
      {
        sub_1003D7340(v9);
        if (v11)
        {
          return v8;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10013CA00()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v91 = *(v2 - 8);
  __chkstk_darwin(v2);
  v104 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v87 - v5;
  v7 = sub_100398C2C(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  swift_beginAccess();
  v90 = v8;
  *&v0[v8] = v7;

  v9 = sub_100398D0C(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC8AppStore25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v102 = v10;
  *&v1[v10] = v9;

  v11 = [v1 collectionView];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 collectionView];
  if (!v13 || (v14 = v13, v15 = [v13 delegate], v14, !v15))
  {
LABEL_55:

    return;
  }

  v107 = &OBJC_PROTOCOL____TtP8AppStore49UICollectionViewDelegateShelfDisplayingFlowLayout_;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (!v16)
  {

    swift_unknownObjectRelease();
    return;
  }

  v17 = v16;
  v18 = [v12 numberOfSections];
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v20 = 0;
  left = UIEdgeInsetsZero.left;
  v101 = (v91 + 8);
  v97 = (v91 + 16);
  v21 = &selRef_loadView;
  v99 = xmmword_1007B1890;
  v22 = &selRef_loadView;
  v94 = v12;
  v92 = v17;
  v93 = v15;
  v88 = v18;
  while (1)
  {
    if ([v17 v21[283]])
    {
      v103 = [v17 collectionView:v12 layout:v1 multiColumnCountAtSection:v20];
      if (v103 >= 2)
      {
        break;
      }
    }

LABEL_10:
    if (++v20 == v19)
    {
      goto LABEL_54;
    }
  }

  v23 = [v17 respondsToSelector:"collectionView:layout:insetForSectionAtIndex:"];
  v24 = left;
  if (v23)
  {
    [v17 collectionView:v12 layout:v1 insetForSectionAtIndex:v20];
    v24 = v25;
  }

  [v17 collectionView:v12 layout:v1 multiColumnMarginAt:v20];
  v27 = v26;
  v28 = [v12 numberOfItemsInSection:v20];
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v28)
  {
    v31 = 1.79769313e308;
LABEL_45:
    v73 = v90;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v73];
    v75 = v106;
    *&v1[v73] = 0x8000000000000000;
    v76 = sub_1003D7340(v20);
    v78 = v75[2];
    v79 = (v77 & 1) == 0;
    v70 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v70)
    {
      goto LABEL_61;
    }

    v81 = v77;
    if (v75[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = v76;
        sub_100054470();
        v76 = v86;
      }
    }

    else
    {
      sub_10004E204(v80, isUniquelyReferenced_nonNull_native);
      v76 = sub_1003D7340(v20);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_65;
      }
    }

    v19 = v88;
    v21 = &selRef_loadView;
    v83 = v106;
    if (v81)
    {
      *(v106[7] + 8 * v76) = v31;
    }

    else
    {
      v106[(v76 >> 6) + 8] |= 1 << v76;
      *(v83[6] + 8 * v76) = v20;
      *(v83[7] + 8 * v76) = v31;
      v84 = v83[2];
      v70 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v83[2] = v85;
    }

    *&v1[v90] = v83;
    swift_endAccess();
    v22 = &selRef_loadView;
    goto LABEL_10;
  }

  v29 = 0;
  v95 = v103 - 1;
  v30 = 0.0;
  v31 = 1.79769313e308;
  v32 = 0.0;
  v96 = v20;
  v33 = v101;
  v100 = v28;
  while (1)
  {
    sub_10002849C(&qword_100980550);
    v34 = swift_allocObject();
    *(v34 + 16) = v99;
    *(v34 + 32) = v20;
    *(v34 + 40) = v29;
    IndexPath.init(arrayLiteral:)();
    if (([v17 respondsToSelector:v22[289]] & 1) == 0)
    {
      (*v33)(v6, v2);
      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v17 v22[289]];
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();

    v40 = IndexPath.item.getter();
    v41 = IndexPath.item.getter();
    if (!(v40 / v103))
    {
      v42 = IndexPath._bridgeToObjectiveC()().super.isa;
      v43 = type metadata accessor for ShelfDisplayingFlowLayout();
      v105.receiver = v1;
      v105.super_class = v43;
      v44 = objc_msgSendSuper2(&v105, "layoutAttributesForItemAtIndexPath:", v42);

      if (v44)
      {
        [v44 frame];
        MinY = CGRectGetMinY(v108);

        if (v31 >= MinY)
        {
          v31 = MinY;
        }
      }
    }

    v46 = *v97;
    v47 = v104;
    v48 = v2;
    (*v97)(v104, v6, v2);
    v49 = v102;
    swift_beginAccess();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v49];
    v51 = v106;
    *&v1[v49] = 0x8000000000000000;
    v53 = sub_1003D7D18(v47);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      v33 = v101;
      if (v50)
      {
        goto LABEL_31;
      }

      sub_1000545BC();
    }

    else
    {
      sub_10004E468(v56, v50);
      v58 = sub_1003D7D18(v104);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_64;
      }

      v53 = v58;
    }

    v33 = v101;
LABEL_31:
    v98 = v41 % v103;
    v60 = v24 + (v27 + v37) * (v41 % v103);
    v61 = v106;
    if (v57)
    {
      v62 = (v106[7] + 16 * v53);
      *v62 = v60;
      v62[1] = v32;
      v63 = *v33;
      v2 = v48;
      (*v33)(v104, v48);
    }

    else
    {
      v64 = v1;
      v65 = v6;
      v106[(v53 >> 6) + 8] |= 1 << v53;
      v66 = v91;
      v67 = v104;
      v46(v61[6] + *(v91 + 72) * v53, v104, v48);
      v68 = (v61[7] + 16 * v53);
      v2 = v48;
      *v68 = v60;
      v68[1] = v32;
      v63 = *(v66 + 8);
      v63(v67, v48);
      v69 = v61[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_59;
      }

      v61[2] = v71;
      v6 = v65;
      v1 = v64;
      v33 = v101;
    }

    *&v1[v102] = v61;

    swift_endAccess();
    v63(v6, v2);
    v72 = v32 + v39;
    if (v30 > v32 + v39)
    {
      v72 = v30;
    }

    if (v98 == v95)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v72;
    }

    if (v98 == v95)
    {
      v32 = v72;
    }

    v12 = v94;
    v17 = v92;
    v20 = v96;
    v22 = &selRef_loadView;
LABEL_19:
    if (v100 == ++v29)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_10013D2EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013D3A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_10096E6D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    v12 = v11;
    v13 = qword_1009D24A8;
LABEL_9:
    v14 = sub_1000056A8(v11, v13);
    a1[3] = v12;
    a1[4] = &protocol witness table for StaticDimension;
    v15 = sub_1000056E0(a1);
    return (*(*(v12 - 8) + 16))(v15, v14, v12);
  }

  if (v10 == enum case for Shelf.ContentType.pageTabs(_:))
  {
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    v12 = v11;
    v13 = qword_1009D2490;
    goto LABEL_9;
  }

  sub_100753A6C(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10013D678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  if ((*(v5 + 88))(v7, v4) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for StaticDimension();
    v13 = sub_1000056A8(v12, qword_1009D2490);
    a2[3] = v12;
    a2[4] = &protocol witness table for StaticDimension;
    v14 = sub_1000056E0(a2);
    return (*(*(v12 - 8) + 16))(v14, v13, v12);
  }

  else
  {
    sub_100754DA8(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10013D8EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10013DAA8(v7);
  v8 = sub_10002849C(&unk_1009731F0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    if (qword_10096E6E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for StaticDimension();
    v10 = sub_1000056A8(v9, qword_1009D24C0);
    a1[3] = v9;
    a1[4] = &protocol witness table for StaticDimension;
    v11 = sub_1000056E0(a1);
    return (*(*(v9 - 8) + 16))(v11, v10, v9);
  }

  else
  {
    sub_10013DB10();
    ShelfLayoutSpacingProvider.bottomContentInset(in:)();
    return sub_10013DAA8(v4);
  }
}

uint64_t sub_10013DAA8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098FFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013DB10()
{
  result = qword_10097F500;
  if (!qword_10097F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F500);
  }

  return result;
}

uint64_t sub_10013DB70()
{
  v1 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002849C(&qword_100975A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  if ([*(*(*(v0 + OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel) + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton) isHidden])
  {
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
  }

  else
  {
    sub_10013E4BC();
    WritableStateLens<A>.updateValue(_:)();
    sub_10002849C(&qword_100975748);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B1E00;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    static SelectableShelfComponentViewReaction.reapply.getter();
  }

  v8 = v6;
  sub_10013E510(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10013DF04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10013DF60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10013E050(uint64_t a1)
{
  result = sub_10013E510(&qword_100975A40, type metadata accessor for ReviewSummaryCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10013E0A8()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v21 = type metadata accessor for ShelfLayoutContext();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&qword_100975A48);
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  type metadata accessor for ReviewSummary();
  sub_10013E510(&qword_100975A50, &type metadata accessor for ReviewSummary);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v14 = v26;
  if (v26)
  {
    ItemLayoutContext.state.getter();
    StateLens.init(_:)();
    ItemLayoutContext.parentShelfLayoutContext.getter();
    ShelfLayoutContext.shelfPresentationHints.getter();
    (*(v6 + 8))(v8, v21);
    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_10013E510(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v16 = *(v22 + 8);
    v16(v2, v0);
    v16(v5, v0);
    v17 = v24;
    swift_getKeyPath();
    sub_10013E4BC();
    StateLens<A>.subscript.getter();

    if (v15)
    {
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v18 = v25;
      v20 = [v17 traitCollection];
      v19 = UITraitCollection.isSizeClassCompact.getter();
    }

    sub_100624488(v14, v18, v19 & 1, v15 & 1);

    return (*(v23 + 8))(v12, v10);
  }

  return result;
}

unint64_t sub_10013E4BC()
{
  result = qword_100975A58;
  if (!qword_100975A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975A58);
  }

  return result;
}

uint64_t sub_10013E510(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10013E56C()
{
  result = qword_100975A68;
  if (!qword_100975A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975A68);
  }

  return result;
}

unint64_t sub_10013E5C4()
{
  result = qword_100975A70;
  if (!qword_100975A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975A70);
  }

  return result;
}

uint64_t sub_10013E714(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OSLogger.Subsystem();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSLogger();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v3, qword_1009CE1D0);
  (*(v4 + 16))(v6, v8, v3);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_10013E864()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ZeroDimension();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v16);
  static ZeroDimension.zero.getter();
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0800);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = type metadata accessor for StaticDimension();
  v15 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_1000056E0(&v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v10);
  static ZeroDimension.zero.getter();
  qword_1009CE2A8 = 0;
  unk_1009CE2B0 = 0;
  sub_100005A38(&v16, &unk_1009CE2B8);
  sub_100005A38(&v13, &unk_1009CE2E0);
  qword_1009CE310 = 0;
  unk_1009CE318 = 0;
  qword_1009CE308 = 2;
  return sub_100005A38(&v10, &unk_1009CE320);
}

uint64_t sub_10013EAA4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v4, qword_1009D3798);
  (*(v5 + 16))(v7, v8, v4);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D0800);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = type metadata accessor for StaticDimension();
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v18);
  (*(v1 + 16))(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v19 = type metadata accessor for ZeroDimension();
  v20 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v18);
  static ZeroDimension.zero.getter();
  qword_1009CE348 = v10;
  unk_1009CE350 = v12;
  sub_100005A38(&v24, &unk_1009CE358);
  sub_100005A38(&v21, &unk_1009CE380);
  qword_1009CE3B0 = 0;
  unk_1009CE3B8 = 0;
  qword_1009CE3A8 = 3;
  return sub_100005A38(&v18, &unk_1009CE3C0);
}

char *sub_10013EDEC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v15] = static ArtworkView.iconArtworkView.getter();
  v46 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_10096DD70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v16, qword_1009D07E8);
  v18 = *(v16 - 8);
  v45 = *(v18 + 16);
  v45(v14, v17, v16);
  v44 = *(v18 + 56);
  v44(v14, 0, 1, v16);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v43 = *(v10 + 104);
  v43(v48, enum case for DirectionalTextAlignment.none(_:), v9);
  v20 = type metadata accessor for DynamicTypeLabel();
  v42 = v9;
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *&v4[v46] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v16, qword_1009D0800);
  v45(v14, v24, v16);
  v44(v14, 0, 1, v16);
  v43(v48, v19, v42);
  v25 = objc_allocWithZone(v21);
  *&v4[v23] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v4[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView();
  *&v4[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v26;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView]];
  [*&v26[v27] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v26[v27]];
  v32 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel;
  v33 = *&v31[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondaryLabelColor];
  [v35 setTextColor:v36];

  [*&v31[v32] setHidden:1];
  [*&v31[v32] setAlpha:0.0];
  [v31 addSubview:*&v31[v32]];
  v37 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel;
  v38 = *&v31[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  v39 = [v34 labelColor];
  [v38 setTextColor:v39];

  [*&v31[v37] setHidden:1];
  [*&v31[v37] setAlpha:0.0];
  [v31 addSubview:*&v31[v37]];

  return v31;
}

uint64_t sub_10013F3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = type metadata accessor for OfferButtonSubtitlePosition();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009701A0);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = type metadata accessor for OfferButtonMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = type metadata accessor for SmallLockupLayout.Metrics();
  v21 = *(*(v20 - 8) + 16);
  v53 = a1;
  v21(a1, v18 + v19, v20);
  v51 = v2;
  v22 = [v2 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v23 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v23 = qword_100991028;
  }

  v24 = sub_1000056A8(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v49 = v17;
  v25(v17, v14, v11);
  v48 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_10002A400(v26, v26[3]);
    v47 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    dispatch thunk of OfferButtonPresenter.offerDisplayProperties.getter();
    (*(v29 + 8))(v32, v27);
    v6 = v47;
  }

  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v56;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v56);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  (*(v33 + 56))(v6, 0, 1, v35);
  sub_100140F54();
  v36 = v50;
  AccessibilityConditional.init(value:axValue:)();
  v37 = v49;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();

  (*(v54 + 8))(v36, v55);
  (*(v12 + 8))(v37, v11);
  v38 = *(v18 + v48);
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v39 = v38 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  if (*(v38 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v40 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(v38 + v40, v57);
    sub_10002A400(v57, v57[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v42 = v41;
    v44 = v43;
    sub_100007000(v57);
    *v39 = v42;
    *(v39 + 8) = v44;
    *(v39 + 16) = 0;
  }

  return SmallLockupLayout.Metrics.offerButtonSize.setter();
}

uint64_t sub_10013FBB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupLayout.Metrics();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  v34[1] = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  sub_10013F3FC(v10);
  v11 = [v1 traitCollection];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v35 = v5;
  if ((v12 & 1) == 0)
  {
    if (qword_10096D150 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_10096D158 != -1)
  {
LABEL_9:
    v13 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v13);
  v34[-2] = v10;
  sub_100140FB4();
  Copyable.copyWithOverrides(in:)();
  v39[6] = v45;
  v39[7] = v46;
  v39[8] = v47;
  v39[9] = v48;
  v39[2] = v41;
  v39[3] = v42;
  v39[4] = v43;
  v39[5] = v44;
  v39[0] = v40[0];
  v39[1] = v40[1];
  (*(v7 + 8))(v10, v6);
  v38 = *&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView];
  v14 = v38;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  *&v43 = type metadata accessor for SmallLockupView();
  *(&v43 + 1) = &protocol witness table for UIView;
  *(&v41 + 1) = v15;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v17 = type metadata accessor for DynamicTypeLabel();
  v18 = *&v1[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v45 + 1) = v17;
  *&v46 = &protocol witness table for UILabel;
  *&v44 = v16;
  *&v48 = v17;
  *(&v48 + 1) = &protocol witness table for UILabel;
  *(&v46 + 1) = v18;
  sub_100141008(v39, &v49);
  type metadata accessor for ArtworkView();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v18;
  LayoutView.withMeasurements(representing:)();
  sub_100141064(v39);

  LayoutMarginsAware<>.layoutFrame.getter();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 traitCollection];
  LOBYTE(v16) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v32 = v35;
  if (v16)
  {
    sub_10055C118(v35, v24, v26, v28, v30);
  }

  else
  {
    sub_10055C65C(v35, v24, v26, v28, v30);
  }

  (*(v36 + 8))(v32, v37);
  [v20 setNeedsLayout];
  return sub_1001410B8(v40);
}

uint64_t sub_10014008C()
{
  v1 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_10002849C(&unk_100985700);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007B5360;
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_1001401A4()
{
  v1 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_10002849C(&qword_100973210);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1007B15F0;
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

void sub_10014024C(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_10014008C();
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v7 = *(v4 + 16);
    while (v7 != v5)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v8 = *(v4 + 8 * v5++ + 32);
      if (v8)
      {
        v9 = v8;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v2 = &v34;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v34;
      }
    }

    v2 = sub_1001401A4();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v6 = sub_1001401A4();
    v10 = sub_10014008C();
    v11 = 0;
    v2 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v12 = *(v10 + 16);
    while (v12 != v11)
    {
      if (v11 >= *(v10 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v13 = *(v10 + 8 * v11++ + 32);
      if (v13)
      {
        v14 = v13;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v34;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v6 >> 62)
      {
        goto LABEL_59;
      }

      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_61:
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    *(v30 + 24) = v2;
    v38 = sub_100140F44;
    v39 = v30;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100007A08;
    v37 = &unk_1008B59C8;
    v31 = _Block_copy(&v34);

    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    v38 = sub_100140F4C;
    v39 = v32;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100504C5C;
    v37 = &unk_1008B5A18;
    v33 = _Block_copy(&v34);

    [v29 animateWithDuration:4 delay:v31 options:v33 animations:0.33 completion:0.0];
    _Block_release(v33);
    _Block_release(v31);
    return;
  }

  v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_61;
  }

LABEL_33:
  v21 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v22 = *(v2 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    [v22 setHidden:0];

    ++v21;
    if (v24 == v20)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_21:
    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v17 = *(v6 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_53;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v2 >> 62)
    {
      break;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_64;
    }

LABEL_43:
    v25 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      [v26 setAlpha:1.0];
      [v27 setHidden:0];

      ++v25;
      if (v28 == v6)
      {
        goto LABEL_64;
      }
    }
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (v6)
  {
    goto LABEL_43;
  }

LABEL_64:
}

void sub_1001407F0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_100140974(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100140A4C(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = static UIContentSizeCategory.< infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_100140B68(void *a1)
{
  SmallLockupLayout.Metrics.offerButtonMargin.getter();
  sub_100007000((a1 + 15));
  sub_100005A38(&v6, (a1 + 15));
  v2 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = SmallLockupLayout.Metrics.numberOfLines.getter();
  a1[12] = result;
  return result;
}

uint64_t sub_100140BC4(void *a1)
{
  SmallLockupLayout.Metrics.artworkSize.getter();
  *a1 = v2;
  a1[1] = v3;
  SmallLockupLayout.Metrics.artworkMargin.getter();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_100007000((a1 + 2));
  sub_100005A38(&v9, (a1 + 2));
  SmallLockupLayout.Metrics.offerButtonMargin.getter();
  sub_100007000((a1 + 15));
  sub_100005A38(&v9, (a1 + 15));
  v5 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = SmallLockupLayout.Metrics.numberOfLines.getter();
  a1[12] = result;
  return result;
}

uint64_t sub_100140D60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_100140E1C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

unint64_t sub_100140F54()
{
  result = qword_100987130;
  if (!qword_100987130)
  {
    type metadata accessor for OfferButtonSubtitlePosition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987130);
  }

  return result;
}

unint64_t sub_100140FB4()
{
  result = qword_100975AE0;
  if (!qword_100975AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975AE0);
  }

  return result;
}

void sub_100141114()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v8) = static ArtworkView.iconArtworkView.getter();
  v22 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_10096DD70 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D07E8);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = type metadata accessor for DynamicTypeLabel();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_10096DD78 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009D0800);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t SubscriptionLockupPresenter.iapAdamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapAdamId;
  v4 = type metadata accessor for AdamId();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionLockupPresenter.isIapVisible.getter()
{
  v1 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100141578(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SubscriptionLockupPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*SubscriptionLockupPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100141804;
}

void sub_100141804(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t SubscriptionLockupPresenter.__allocating_init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

char *SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v60 = a5;
  v62 = a7;
  v63 = a4;
  v65 = a6;
  v61 = a1;
  v53 = *v8;
  v12 = type metadata accessor for AdamId();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = v14;
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InAppPurchaseState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = &v8[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v56 = v13;
  v23 = *(v13 + 16);
  v64 = v12;
  v50 = v23;
  v23(&v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapAdamId], a3, v12);
  swift_beginAccess();
  *(v22 + 1) = v60;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v24 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v25 = &v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapStateMachine];
  *v25 = v24;
  v25[1] = v26;

  InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)();
  v54 = a2;

  v27 = *(v16 + 16);
  v55 = v21;
  v27(v18, v21, v15);
  v58 = v15;
  v59 = v16;
  v28 = (*(v16 + 88))(v18, v15);
  v30 = v28 == enum case for InAppPurchaseState.buyable(_:) || v28 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v28 == enum case for InAppPurchaseState.unknown(_:);
  v31 = v30;
  if (!v30)
  {
    (*(v59 + 8))(v18, v58);
  }

  v49 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible;
  v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_isIapVisible] = v31;
  if (*&v9[OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapStateMachine])
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v52;
  v57 = a3;
  v34 = a3;
  v35 = v64;
  v50(v52, v34, v64);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v33, v35);
  v41 = (v40 + v38);
  v42 = v54;
  *v41 = v61;
  v41[1] = v42;
  *(v40 + v39) = v32;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

  InAppPurchaseStateDataSource.addObserver(_:action:)();

  if (v63)
  {
    ObjectType = swift_getObjectType();
    v44 = v49;
    swift_beginAccess();
    v45 = v9[v44];
    v46 = v60;
    v47 = *(v60 + 32);
    swift_unknownObjectRetain();
    v47(v45, 0, ObjectType, v46);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v57, v64);
  (*(v59 + 8))(v55, v58);
  return v9;
}

uint64_t sub_100141F2C()
{
  v0 = type metadata accessor for LegacyAppState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  if ((*(v1 + 88))(v3, v0) != enum case for LegacyAppState.purchased(_:))
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = type metadata accessor for PurchaseType();
  (*(*(v4 - 8) + 8))(v3, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100141578(0);
  }

  return result;
}

uint64_t sub_1001420C8()
{
  v0 = type metadata accessor for InAppPurchaseState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v1 + 16))(v3, v6, v0);
    v7 = (*(v1 + 88))(v3, v0);
    v9 = v7 == enum case for InAppPurchaseState.buyable(_:) || v7 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v7 == enum case for InAppPurchaseState.unknown(_:);
    v10 = v9;
    if (!v9)
    {
      (*(v1 + 8))(v3, v0);
    }

    sub_100141578(v10);
  }

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1001422AC()
{
  type metadata accessor for AdamId();

  return sub_1001420C8();
}

uint64_t SubscriptionLockupPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapStateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    swift_unknownObjectRelease();
  }

  type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
  if (static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.getter())
  {
    InAppPurchaseStateDataSource.removeObserver(_:)();
  }

  v2 = OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_iapAdamId;
  v3 = type metadata accessor for AdamId();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10001F64C(v1 + OBJC_IVAR____TtC8AppStore27SubscriptionLockupPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SubscriptionLockupPresenter.__deallocating_deinit()
{
  SubscriptionLockupPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubscriptionLockupPresenter()
{
  result = qword_100975B18;
  if (!qword_100975B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100142510()
{
  result = type metadata accessor for AdamId();
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

id sub_1001425BC()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_18;
  }

LABEL_10:
  v0[1] = v4;
  v5 = v0[3];
  v6 = *(v0[2] + 16);
  if (v5 == v6)
  {

LABEL_12:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if (v5 < v6)
  {
    v7 = result;
    v0[3] = v5 + 1;

    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

NSString sub_1001426DC()
{
  result = String._bridgeToObjectiveC()();
  qword_100975BB8 = result;
  return result;
}

char *sub_100142988(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v6;
  v59 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 40;
    v14 = _swiftEmptyArrayStorage;
    v57 = a1 + 40;
    while (2)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= v11)
        {
          goto LABEL_41;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v17 = *(v15 - 1);
        v18 = *v15;

        a1 = v17;
        Action.title.getter();
        if (v19)
        {
          break;
        }

        ++v16;
        v15 += 16;
        if (v12 == v11)
        {
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = v63;
        sub_100143FE4(0, *(v14 + 2) + 1, 1);
        v14 = v63[0];
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        a1 = v63;
        sub_100143FE4((v21 > 1), v22 + 1, 1);
        v14 = v63[0];
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[2 * v22];
      *(v23 + 4) = v17;
      *(v23 + 40) = v18;
      v13 = v57;
      if (v12 != v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  a1 = *(v14 + 2);
  v11 = OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v24 = *&v3[v11];
  if (v24 >> 62)
  {
LABEL_44:
    result = _CocoaArrayWrapper.endIndex.getter();
    v26 = a1 - result;
    if (!__OFSUB__(a1, result))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v57 = v14;
  if (v26 <= 0)
  {
    if (v26 < 0)
    {
      for (i = &result[-a1]; i; --i)
      {
        swift_beginAccess();
        a1 = *&v3[v11];
        v14 = (a1 >> 62);
        if (a1 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v3[v11] = a1;
        if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a1 = sub_100549964(a1);
        }

        v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v52)
        {
          goto LABEL_43;
        }

        v53 = v52 - 1;
        v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20);
        *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v53;
        *&v3[v11] = a1;
        swift_endAccess();
        [v54 removeFromSuperview];
        v62 = v54;
        swift_beginAccess();
        sub_10002849C(&qword_100975C20);
        ReusePool.recycle(_:)();
        swift_endAccess();
      }
    }
  }

  else
  {
    do
    {
      swift_beginAccess();
      sub_10002849C(&qword_100975C20);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v27 = v62;
      swift_beginAccess();
      v28 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v3 addSubview:v28];

      --v26;
    }

    while (v26);
  }

  v63[0] = *&v3[v11];
  v63[1] = 0;
  v63[2] = v57;
  v63[3] = 0;
  v64 = 0;

  v29 = sub_1001425BC();
  if (v29)
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v57 = sub_100005744(0, &qword_10097CD40);
    LODWORD(v56) = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
    v55 += 13;
    do
    {
      if (qword_10096D160 != -1)
      {
        swift_once();
      }

      v35 = qword_100975BB8;
      v36 = swift_allocObject();
      *(v36 + 16) = v61;
      *(v36 + 24) = v33;
      v37 = v34 & 1;
      *(v36 + 32) = v34 & 1;
      v38 = v35;

      v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v40 = v32;
      [v40 removeActionForIdentifier:v38 forControlEvents:0x2000];

      Action.title.getter();

      static UIButton.Configuration.gray()();
      UIButton.Configuration.title.setter();
      v41 = objc_opt_self();
      v42 = [v41 tintColor];
      v43 = [v42 colorWithAlphaComponent:0.08];

      UIButton.Configuration.baseBackgroundColor.setter();
      v44 = [v41 tintColor];
      UIButton.Configuration.baseForegroundColor.setter();
      (*v55)(v58, v56, v59);
      UIButton.Configuration.cornerStyle.setter();
      UIButton.Configuration.contentInsets.setter();
      v45 = v60;
      UIConfigurationTextAttributesTransformer.init(_:)();
      v46 = type metadata accessor for UIConfigurationTextAttributesTransformer();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      UIButton.Configuration.titleTextAttributesTransformer.setter();
      v47 = type metadata accessor for UIButton.Configuration();
      (*(*(v47 - 8) + 56))(v10, 0, 1, v47);
      UIButton.configuration.setter();
      [v40 setEnabled:v37];

      [v40 addAction:v39 forControlEvents:0x2000];

      v32 = sub_1001425BC();
      v33 = v48;
      v34 = v49;
    }

    while (v32);
  }

  return [v3 setNeedsLayout];
}

id sub_1001431D4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(UIButton) init];
  *a1 = result;
  return result;
}

uint64_t sub_100143210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &unk_100972A00);
  }

  sub_1005F9AF4(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

uint64_t sub_100143354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1001469E0();
  return AttributeContainer.subscript.setter();
}

void sub_100143414()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v1 = OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews;
  swift_beginAccess();
  sub_100005744(0, &qword_1009811E0);

  v2 = Array.isNotEmpty.getter();

  if (v2)
  {
    [v0 bounds];
    v4 = v3;
    v5 = *&v0[v1];
    if (v5 >> 62)
    {
      goto LABEL_38;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v6 < 1)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = (v4 + (v6 - 1) * -10.0) / v6;
    }

    v7 = *&v0[v1];
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    do
    {
      if (v8 == v9)
      {

        [v0 bounds];
        MinX = CGRectGetMinX(v43);
        v17 = *&v0[v1];
        if (v17 >> 62)
        {
          v18 = _CocoaArrayWrapper.endIndex.getter();
          if (!v18)
          {
            return;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v18)
          {
            return;
          }
        }

        if (v18 >= 1)
        {

          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            [v0 bounds];
            [v21 sizeThatFits:{v22, v23}];
            [v0 bounds];
            CGRectGetMinY(v44);
            [v0 bounds];
            CGRect.withLayoutDirection(in:relativeTo:)();
            [v21 setFrame:?];

            MinX = v4 + 10.0 + MinX;
          }

          while (v18 != v19);
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_45;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      [v0 bounds];
      [v11 sizeThatFits:{v12, v13}];
      v15 = v14;

      ++v9;
    }

    while (v4 >= v15);

    [v0 bounds];
    MinY = CGRectGetMinY(*&v24);
    v29 = *&v0[v1];
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        return;
      }

LABEL_28:
      if (v30 >= 1)
      {

        v31 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v32 = *(v29 + 8 * v31 + 32);
          }

          v33 = v32;
          ++v31;
          [v0 bounds];
          [v33 sizeThatFits:{v34, v35}];
          v37 = v36;
          [v0 bounds];
          v38 = CGRectGetMinX(v45);
          [v0 bounds];
          v40 = v39;
          [v0 bounds];
          CGRect.withLayoutDirection(in:relativeTo:)();
          [v33 setFrame:?];
          v46.origin.x = v38;
          v46.origin.y = MinY;
          v46.size.width = v40;
          v46.size.height = fmax(v37, 30.0);
          MaxY = CGRectGetMaxY(v46);

          MinY = MinY + MaxY + 10.0;
        }

        while (v30 != v31);
LABEL_34:

        return;
      }

LABEL_45:
      __break(1u);
      return;
    }

    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_28;
    }
  }
}

double sub_1001438E8(double a1, double a2)
{
  v5 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = [v2 traitCollection];
  v12 = OBJC_IVAR____TtC8AppStore15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (v13 >> 62)
  {
LABEL_28:
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v15 = 0;
  v37 = v13 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  v33 = v11;
  v36 = v13;
  do
  {
    v34 = v16;
    v17 = v15;
    while (1)
    {
      if (v37)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v18 = *(v13 + 8 * v17 + 32);
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v19 = v18;
      UIButton.configuration.getter();
      v20 = type metadata accessor for UIButton.Configuration();
      v11 = *(v20 - 8);
      if (v11[6](v10, 1, v20) != 1)
      {
        break;
      }

      sub_10002B894(v10, &qword_10097CC90);

LABEL_7:
      ++v17;
      v13 = v36;
      if (v15 == v14)
      {
        v11 = v33;
        v16 = v34;
        goto LABEL_25;
      }
    }

    v21 = v35;
    sub_100146A44(v10, v35);
    v22 = UIButton.Configuration.title.getter();
    v24 = v23;
    v25 = v11[1];
    ++v11;
    (v25)(v21, v20);
    sub_10002B894(v10, &qword_10097CC90);

    if (!v24)
    {
      goto LABEL_7;
    }

    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_100033E38(0, *(v16 + 2) + 1, 1, v16);
    }

    v11 = v33;
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_100033E38((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[2 * v28];
    *(v29 + 4) = v22;
    *(v29 + 5) = v24;
    v13 = v36;
  }

  while (v15 != v14);
LABEL_25:

  v30 = sub_100146340(v11, v16, a1, a2);

  return v30;
}

uint64_t type metadata accessor for BannerButtonRow()
{
  result = qword_100975BF8;
  if (!qword_100975BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100143D90()
{
  sub_100143E30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100143E30()
{
  if (!qword_100975C08)
  {
    sub_10002D1A8(&qword_100975C10);
    sub_100143EA0();
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_100975C08);
    }
  }
}

unint64_t sub_100143EA0()
{
  result = qword_100975C18;
  if (!qword_100975C18)
  {
    sub_10002D1A8(&qword_100975C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975C18);
  }

  return result;
}

void *sub_100143F04(void *a1, int64_t a2, char a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FCD8, &unk_1007B1328, &unk_10097E960);
  *v3 = result;
  return result;
}

double *sub_100143F44(double *a1, int64_t a2, char a3)
{
  result = sub_1001446B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100143F64(void *a1, int64_t a2, char a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_100996330, &unk_1007BAD70, &qword_10096FD60);
  *v3 = result;
  return result;
}

char *sub_100143FA4(char *a1, int64_t a2, char a3)
{
  result = sub_1001447EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100143FC4(double *a1, int64_t a2, char a3)
{
  result = sub_1001448FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100143FE4(double *a1, int64_t a2, char a3)
{
  result = sub_100144A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100144004(size_t a1, int64_t a2, char a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975C48, &unk_1007BA8F8, &qword_100973288);
  *v3 = result;
  return result;
}

size_t sub_100144044(size_t a1, int64_t a2, char a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975C50, &unk_1007BA900, &qword_100975C58);
  *v3 = result;
  return result;
}

double *sub_100144084(double *a1, int64_t a2, char a3)
{
  result = sub_1001460EC(a1, a2, a3, *v3, &qword_100975C60, &unk_1007BA908, &qword_100975C68);
  *v3 = result;
  return result;
}

size_t sub_1001440C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_10096FDA8, &unk_1007B1420, &type metadata accessor for AdamId);
  *v3 = result;
  return result;
}

double *sub_100144108(double *a1, int64_t a2, char a3)
{
  result = sub_100144B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100144128(double *a1, int64_t a2, char a3)
{
  result = sub_100144C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100144148(double *a1, int64_t a2, char a3)
{
  result = sub_100144F68(a1, a2, a3, *v3, &qword_10096FC70, &unk_1007B12B0, &qword_10096FC78);
  *v3 = result;
  return result;
}

double *sub_100144188(double *a1, int64_t a2, char a3)
{
  result = sub_100144D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1001441A8(double *a1, int64_t a2, char a3)
{
  result = sub_100144E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1001441C8(double *a1, int64_t a2, char a3)
{
  result = sub_100144F68(a1, a2, a3, *v3, &qword_10096FC98, &unk_1007B12E0, &qword_10096FCA0);
  *v3 = result;
  return result;
}

double *sub_100144208(double *a1, int64_t a2, char a3)
{
  result = sub_10014509C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100144228(double *a1, int64_t a2, char a3)
{
  result = sub_1001451D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100144248(double *a1, int64_t a2, char a3)
{
  result = sub_1001452D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100144268(size_t a1, int64_t a2, char a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_100975CD8, &unk_1007BA978, &type metadata accessor for PageFacets.Facet.Option);
  *v3 = result;
  return result;
}

double *sub_1001442AC(double *a1, int64_t a2, char a3)
{
  result = sub_1001453F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001442CC(void *a1, int64_t a2, char a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_100975CB0, &unk_1007BA950, &qword_100973D50);
  *v3 = result;
  return result;
}

char *sub_10014430C(char *a1, int64_t a2, char a3)
{
  result = sub_1001454FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10014432C(void *a1, int64_t a2, char a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FCD0, &unk_1007B1318, &unk_10097A950);
  *v3 = result;
  return result;
}

void *sub_10014436C(void *a1, int64_t a2, char a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FCF8, &unk_1007B1358, &unk_10097E950);
  *v3 = result;
  return result;
}

double *sub_1001443AC(double *a1, int64_t a2, char a3)
{
  result = sub_100145624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001443CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_100975C88, &unk_1007BA930, &type metadata accessor for SponsoredSearchAdvert);
  *v3 = result;
  return result;
}

size_t sub_100144410(size_t a1, int64_t a2, char a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975D00, &unk_1007BA9A0, &qword_100975D08);
  *v3 = result;
  return result;
}

void *sub_100144450(void *a1, int64_t a2, char a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_100975CF0, &unk_1007BA990, &qword_100975CF8);
  *v3 = result;
  return result;
}

void *sub_100144490(void *a1, int64_t a2, char a3)
{
  result = sub_100145758(a1, a2, a3, *v3, &qword_10096FDF8, &unk_1007B1470, &qword_10096FE00);
  *v3 = result;
  return result;
}

size_t sub_1001444D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_10096FE68, &unk_1007B1500, &type metadata accessor for DebugMetricsEvent);
  *v3 = result;
  return result;
}

size_t sub_100144514(size_t a1, int64_t a2, char a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975C98, &unk_1007D11F0, &qword_100975CA0);
  *v3 = result;
  return result;
}

size_t sub_100144554(size_t a1, int64_t a2, char a3)
{
  result = sub_1001458C8(a1, a2, a3, *v3, &qword_10096FCE8, &unk_1007BCF50, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

double *sub_100144598(double *a1, int64_t a2, char a3)
{
  result = sub_100145AA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1001445B8(double *a1, int64_t a2, char a3)
{
  result = sub_100145BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1001445D8(double *a1, int64_t a2, char a3)
{
  result = sub_100145CE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001445F8(size_t a1, int64_t a2, char a3)
{
  result = sub_100145DE4(a1, a2, a3, *v3, &qword_100975D10, &unk_1007BA9B0, &qword_100975D18);
  *v3 = result;
  return result;
}

double *sub_100144638(double *a1, int64_t a2, char a3)
{
  result = sub_100145FCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100144658(double *a1, int64_t a2, char a3)
{
  result = sub_1001460EC(a1, a2, a3, *v3, &qword_100975CB8, &unk_1007BA958, &qword_100975CC0);
  *v3 = result;
  return result;
}

double *sub_100144698(double *a1, int64_t a2, char a3)
{
  result = sub_100146220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_1001446B8(double *result, int64_t a2, char a3, double *a4)
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
    sub_10002849C(&qword_100975C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10002849C(&qword_100975C40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001447EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_1009701B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1001448FC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100975C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100144A1C(double *result, int64_t a2, char a3, double *a4)
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
    sub_10002849C(&qword_100975C28);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10002849C(&qword_10096F9A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100144B50(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&unk_1009856C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_100144C54(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FC50);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100144D60(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FD18);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_100144E64(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FC90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_100144F68(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10002849C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10002849C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

double *sub_10014509C(double *result, int64_t a2, char a3, double *a4)
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
    sub_10002849C(&qword_100975C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10002849C(&qword_100975C78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1001451D0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100980550);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1001452D4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100975CD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1001453F0(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FD20);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001454FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100975C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100145624(double *result, int64_t a2, char a3, double *a4)
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
    sub_10002849C(&unk_100973100);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10002849C(&unk_100984350);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100145758(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_10002849C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_1001458C8(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10002849C(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_100145AA4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100975CE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100145BC4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100975C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_100145CE4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100975CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_100145DE4(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10002849C(a5);
  v14 = *(sub_10002849C(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10002849C(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_100145FCC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100975CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1001460EC(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10002849C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_10002849C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

double *sub_100146220(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_100975CA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_100146340(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v59[1] = a1;
  v7 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v7 - 8);
  v69 = v59 - v8;
  v68 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v59 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {

    return -10.0;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_100144188(0, v17, 0);
  v18 = v70;
  v65 = objc_opt_self();
  v64 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v62 = (v12 + 16);
  v63 = (v9 + 104);
  v60 = (v12 + 8);
  v61 = (v12 + 32);
  v19 = a2 + 40;
  v20 = 0.0;
  v59[0] = v17;
  v21 = 0.0;
  do
  {

    static UIButton.Configuration.gray()();

    UIButton.Configuration.title.setter();
    v22 = v65;
    v23 = [v65 tintColor];
    v24 = [v23 colorWithAlphaComponent:0.08];

    UIButton.Configuration.baseBackgroundColor.setter();
    v25 = [v22 tintColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*v63)(v67, v64, v68);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.Configuration.contentInsets.setter();
    v26 = v69;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v27 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v28 = v66;
    (*v62)(v66, v16, v11);
    type metadata accessor for ButtonPlaceholder();
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
    (*v61)(v29 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v28, v11);
    v30 = sub_1000AE2C0();
    [v30 sizeThatFits:{a3, a4}];
    v32 = v31;
    v33 = [v30 titleLabel];
    if (!v33)
    {
      goto LABEL_6;
    }

    v34 = v33;
    v35 = [v30 subtitleLabel];
    if (v35)
    {
      v36 = v35;

LABEL_6:
      constrainWidth(of:toFit:)();
      v38 = v37;
      v32 = v39;
      goto LABEL_8;
    }

    UILabel.measure(toFit:with:)();
    constrainWidth(of:toFit:)();
    v38 = v40;

LABEL_8:

    swift_setDeallocating();
    v41 = *v60;
    (*v60)(v29 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v11);

    swift_deallocClassInstance();
    v41(v16, v11);
    v42 = fmax(v32, 30.0);
    if (v20 <= v38)
    {
      v20 = v38;
    }

    if (v21 <= v42)
    {
      v21 = v42;
    }

    v70 = v18;
    v44 = *(v18 + 2);
    v43 = *(v18 + 3);
    if (v44 >= v43 >> 1)
    {
      sub_100144188((v43 > 1), v44 + 1, 1);
      v18 = v70;
    }

    *(v18 + 2) = v44 + 1;
    v45 = &v18[2 * v44];
    v45[4] = v38;
    v45[5] = v42;
    v19 += 16;
    --v17;
  }

  while (v17);
  v46 = v59[0] - 1;
  v47 = a3 + (v59[0] - 1) * -10.0;
  v48 = v59[0];
  if (v47 / v59[0] < v20)
  {
    if (v44)
    {
      v49 = (v44 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v50 = v18 + 7;
      v51 = 0.0;
      v52 = v49;
      do
      {
        v53 = *(v50 - 2);
        v54 = *v50;
        v50 += 4;
        v51 = v51 + v53 + v54;
        v52 -= 2;
      }

      while (v52);
      if (v44 + 1 == v49)
      {
LABEL_26:

        return v20;
      }
    }

    else
    {
      v49 = 0;
      v51 = 0.0;
    }

    v55 = v44 - v49 + 1;
    v56 = &v18[2 * v49 + 5];
    do
    {
      v57 = *v56;
      v56 += 2;
      v51 = v51 + v57;
      --v55;
    }

    while (v55);
    goto LABEL_26;
  }

  return v46 * 10.0 + v20 * v48;
}

unint64_t sub_1001469E0()
{
  result = qword_100984020;
  if (!qword_100984020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984020);
  }

  return result;
}

uint64_t sub_100146A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100146AB4()
{
  v1 = type metadata accessor for BreakoutDetails.Badge();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for BreakoutDetails.TextAlignment();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for BreakoutDetails.TextAlignment.center(_:), v8, v10);
  v13 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for BreakoutDetails.Badge.none(_:), v1);
  v14 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v14, v1);
  swift_beginAccess();
  (*(v2 + 24))(v0 + v14, v7, v1);
  swift_endAccess();
  sub_10014999C();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  [*(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_100146D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v3 - 8);
  v72 = &v58 - v4;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v58 - v9;
  __chkstk_darwin(v10);
  v65 = &v58 - v11;
  v12 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior();
  v75 = *(v12 - 8);
  v76 = v12;
  __chkstk_darwin(v12);
  v73 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v58 - v15;
  v16 = type metadata accessor for FontSource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BreakoutDetailsView.Config(0);
  v80 = v5;
  v81 = v20;
  v21 = *(a1 + *(v20 + 92));
  v68 = v6;
  v22 = v20;
  v23 = *(v20 + 40);
  if (v21)
  {
    v24 = *(v6 + 16);
    v79 = v6 + 16;
    v70 = v24;
    v24(v19, a1 + v23, v5);
    LODWORD(v69) = enum case for FontSource.useCase(_:);
    v64 = v17[13];
    v62 = v16;
    v64(v19);
    v63 = type metadata accessor for CappedSizeStaticDimension();
    v96 = v63;
    v71 = sub_10014DC88(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
    v97 = v71;
    sub_1000056E0(v95);
    v78 = v17 + 13;
    v61 = v21;
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
    v25 = v70;
    v70(v19, a1 + v22[13], v80);
    v26 = v22;
    v27 = v69;
    v28 = v64;
    (v64)(v19, v69, v16);
    v29 = v63;
    v93 = v63;
    v94 = v71;
    sub_1000056E0(v92);
    v30 = v61;
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
    v25(v19, a1 + v26[9], v80);
    v31 = v62;
    v28(v19, v27, v62);
    v32 = v71;
    v90 = v29;
    v91 = v71;
    sub_1000056E0(v89);
    v33 = v30;
    v34 = v80;
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
    v70(v19, a1 + v26[14], v34);
    v28(v19, v69, v31);
    v87 = v29;
    v88 = v32;
    sub_1000056E0(v86);
    CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  }

  else
  {
    v79 = a1;
    v35 = *(v6 + 16);
    v70 = (v6 + 16);
    v63 = v35;
    v35(v19, a1 + v23, v5);
    LODWORD(v71) = enum case for FontSource.useCase(_:);
    v36 = v17[13];
    v61 = v17 + 13;
    v37 = v16;
    v36(v19);
    v60 = type metadata accessor for StaticDimension();
    v96 = v60;
    v97 = &protocol witness table for StaticDimension;
    sub_1000056E0(v95);
    v93 = v16;
    v94 = &protocol witness table for FontSource;
    v38 = sub_1000056E0(v92);
    v39 = v17[2];
    v69 = v17 + 2;
    v39(v38, v19, v37);
    v58 = v39;
    StaticDimension.init(_:scaledLike:)();
    v40 = v17[1];
    v78 = v17 + 1;
    v64 = v40;
    (v40)(v19, v37);
    v41 = v63;
    v63(v19, v79 + v22[13], v80);
    v59 = v36;
    (v36)(v19, v71, v37);
    v42 = v60;
    v93 = v60;
    v94 = &protocol witness table for StaticDimension;
    sub_1000056E0(v92);
    v90 = v37;
    v91 = &protocol witness table for FontSource;
    v43 = sub_1000056E0(v89);
    v39(v43, v19, v37);
    StaticDimension.init(_:scaledLike:)();
    (v64)(v19, v37);
    v41(v19, v79 + v22[9], v80);
    (v36)(v19, v71, v37);
    v90 = v42;
    v91 = &protocol witness table for StaticDimension;
    sub_1000056E0(v89);
    v87 = v37;
    v88 = &protocol witness table for FontSource;
    v44 = sub_1000056E0(v86);
    v45 = v58;
    v58(v44, v19, v37);
    StaticDimension.init(_:scaledLike:)();
    v46 = v64;
    (v64)(v19, v37);
    v63(v19, v79 + v22[14], v80);
    a1 = v79;
    (v59)(v19, v71, v37);
    v87 = v60;
    v88 = &protocol witness table for StaticDimension;
    sub_1000056E0(v86);
    v85[3] = v37;
    v85[4] = &protocol witness table for FontSource;
    v47 = sub_1000056E0(v85);
    v45(v47, v19, v37);
    StaticDimension.init(_:scaledLike:)();
    v46(v19, v37);
    v34 = v80;
  }

  v48 = v72;
  if ((*(a1 + v81[11] + 8) & 1) == 0)
  {
    sub_100031660(a1 + v81[12], v72, &qword_100972ED0);
    v49 = v68;
    if ((*(v68 + 48))(v48, 1, v34) != 1)
    {
      v52 = v65;
      (*(v49 + 32))(v65, v48, v34);
      v53 = *(v49 + 16);
      v53(v66, a1 + v81[10], v34);
      v53(v67, v52, v34);
      v51 = v74;
      BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior.init(lineCountThreshold:standardUseCase:compressedUseCase:)();
      (*(v49 + 8))(v52, v34);
      v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10002B894(v48, &qword_100972ED0);
  }

  v50 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v51 = v74;
LABEL_9:
  v55 = v75;
  v54 = v76;
  (*(v75 + 104))(v51, *v50, v76);
  sub_10002C0AC(v95, v85);
  (*(v55 + 16))(v73, v51, v54);
  sub_10002C0AC(v92, &v84);
  sub_10002C0AC(v89, &v83);
  v56 = *(a1 + v81[15]);
  v82[8] = &type metadata for CGFloat;
  v82[9] = &protocol witness table for CGFloat;
  v82[5] = v56;
  sub_10002C0AC(v86, v82);
  BreakoutDetailsLayout.Metrics.init(titleSpace:titleBehavior:descriptionSpace:badgeTextSpace:badgeWordmarkSpace:callToActionSpace:layoutMargins:)();
  (*(v55 + 8))(v51, v54);
  sub_100007000(v86);
  sub_100007000(v89);
  sub_100007000(v92);
  return sub_100007000(v95);
}

uint64_t sub_100147860(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&qword_100975EE8);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for ContentHorizontalAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_100147904(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v122 = type metadata accessor for ImageAlignedButton.ImageAlignment();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for AutomationSemantics();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v102 - v13;
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  v19 = enum case for BreakoutDetails.Badge.none(_:);
  v20 = type metadata accessor for BreakoutDetails.Badge();
  (*(*(v20 - 8) + 104))(&v2[v18], v19, v20);
  *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark] = 0;
  v21 = &v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
  v23 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v24 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v25 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  v26 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  v28 = sub_10002849C(&unk_1009732B0);
  v118 = *(v28 - 8);
  v29 = *(v118 + 16);
  v125 = v2;
  v123 = a1;
  v119 = v28;
  v29(&v2[v27], a1);
  if (qword_10096E2F8 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v14, qword_1009D1868);
  v31 = *(v15 + 16);
  v32 = v17;
  v130 = v17;
  v31(v17, v30, v14);
  v128 = v31;
  v33 = v14;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v10;
  v126 = v15;
  v127 = v10;
  v36 = *(v10 + 104);
  (v36)(v131, enum case for DirectionalTextAlignment.none(_:), v9);
  v108 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v110 = objc_allocWithZone(v108);
  *&v110[qword_1009902D0] = 0;
  v31(v8, v32, v33);
  v37 = *(v15 + 56);
  v37(v8, 0, 1, v33);
  v38 = v124;
  v113 = v34;
  v39 = v34;
  v40 = v33;
  v112 = v35 + 104;
  v111 = v36;
  (v36)(v124, v39, v9);
  v41 = v38;
  v42 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v43 = v130;
  v129 = v15 + 16;
  v128(v8, v130, v40);
  v110 = (v15 + 56);
  v109 = v37;
  v37(v8, 0, 1, v40);
  v44 = v42;
  v103 = v8;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v45 = v43;
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v44 setNumberOfLines:2];
  v46 = v127;
  v47 = *(v127 + 16);
  v48 = v131;
  v107 = v127 + 16;
  v106 = v47;
  v47(v41, v131, v9);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v49 = *(v46 + 8);
  v127 = v46 + 8;
  v105 = v49;
  v49(v48, v9);
  v50 = *(v126 + 8);
  v126 += 8;
  v104 = v50;
  v50(v45, v40);
  *&v125[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel] = v44;
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v51 = sub_1000056A8(v40, qword_1009D18C8);
  v52 = v128;
  v128(v45, v51, v40);
  v53 = v113;
  v54 = v111;
  (v111)(v131, v113, v9);
  v55 = objc_allocWithZone(v108);
  *&v55[qword_1009902D0] = 0;
  v56 = v103;
  v52(v103, v130, v40);
  v57 = v109;
  v109(v56, 0, 1, v40);
  v58 = v9;
  v59 = v124;
  v60 = v53;
  v61 = v58;
  v54(v124, v60);
  v62 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v52(v56, v130, v40);
  v63 = v130;
  v57(v56, 0, 1, v40);
  v64 = v62;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v64 setNumberOfLines:2];
  v65 = v131;
  v106(v59, v131, v61);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v105(v65, v61);
  v104(v63, v40);
  v66 = v125;
  *&v125[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel] = v64;
  v67 = [objc_opt_self() effectWithStyle:17];
  v68 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v67];

  *&v66[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView] = v68;
  type metadata accessor for CappedSizeDynamicTypeButton();
  if (qword_10096E320 != -1)
  {
    swift_once();
  }

  v69 = sub_1000056A8(v40, qword_1009D18E0);
  v128(v63, v69, v40);
  *&v66[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v136.receiver = v66;
  v136.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v70 setUserInteractionEnabled:0];
  [v70 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v70 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1001487E0();
  v74 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel;
  v75 = *&v70[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v75;
  v77 = v115;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v132, &unk_1009711D0);
  sub_10002B894(&v134, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v78 = *(v116 + 8);
  v79 = v117;
  v78(v77, v117);
  v80 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel;
  v81 = *&v70[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v82 = v81;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v132, &unk_1009711D0);
  sub_10002B894(&v134, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v78(v77, v79);
  v83 = *&v70[v74];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v84 = *&v70[v80];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v70[v74] setLineBreakMode:0];
  [*&v70[v80] setLineBreakMode:0];
  v85 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton;
  [*&v70[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v86 = *&v70[v85];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 whiteColor];
  [v88 setTitleColor:v89 forState:0];

  v90 = *&v70[v85];
  v91 = [v87 whiteColor];
  [v90 setTitleColor:v91 forState:1];

  v92 = *&v70[v85];
  v93 = [v87 whiteColor];
  [v92 setTintColor:v93];

  v94 = *&v70[v85];
  (*(v121 + 104))(v120, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v122);
  v95 = v94;
  dispatch thunk of ImageAlignedButton.imageAlignment.setter();

  v96 = *&v70[v85];
  dispatch thunk of ImageAlignedButton.imageWantsBaselineAlignment.setter();

  v97 = [*&v70[v85] titleLabel];
  [v97 setLineBreakMode:0];

  [*&v70[v85] addTarget:v70 action:"didTapActionButton" forControlEvents:64];
  v98 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView;
  v99 = *&v70[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView];
  v100 = String._bridgeToObjectiveC()();
  [v99 _setGroupName:v100];

  [*&v70[v98] _setContinuousCornerRadius:20.0];
  [*&v70[v98] setClipsToBounds:1];
  [*&v70[v98] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v70[v98] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v118 + 8))(v123, v119);
  return v70;
}

uint64_t sub_1001487E0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v103 = &v98 - v3;
  v4 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v104 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v98 - v7;
  __chkstk_darwin(v8);
  v100 = &v98 - v9;
  __chkstk_darwin(v10);
  v105 = &v98 - v11;
  __chkstk_darwin(v12);
  v14 = &v98 - v13;
  v15 = sub_10002849C(&unk_1009732B0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v98 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v107 = v1;
  Conditional.evaluate(with:)();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_setRequiresColorStatistics_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v104;
      if ((*(v104 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_1001F086C();
        (*(v29 + 8))(v14, v4);
      }
    }

    v30 = v25;
    [v26 setTintColor:v27];
  }

  v31 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
  v32 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
  if (v32)
  {
    v33 = *v21;
    if (*v21)
    {
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v36 = v14;
      v37 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v38 = v104;
      if ((*(v104 + 48))(v1 + v37, 1, v4))
      {
        v34 = v32;
        v35 = 0;
        v14 = v36;
      }

      else
      {
        (*(v38 + 16))(v36, v1 + v37, v4);
        v34 = v32;
        v35 = sub_1001F086C();
        v39 = v38;
        v14 = v36;
        (*(v39 + 8))(v36, v4);
      }

      v24 = &selRef_setRequiresColorStatistics_;
    }

    v40 = v33;
    [v34 setTextColor:v35];
  }

  v106 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel);
  v41 = v21[1];
  isa = v41;
  v102 = v31;
  if (!v41)
  {
    v43 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v43, 1, v4))
    {
      v98 = v14;
      v44 = v104;
      v45 = *(v104 + 16);
      v46 = v1 + v43;
      v47 = v105;
      v45(v105, v46, v4);
      v48 = v100;
      v45(v100, v47, v4);
      v49 = (*(v44 + 88))(v48, v4);
      v50 = (v44 + 8);
      if (v49 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v51 = v49, v49 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v50)(v105, v4);
      }

      else
      {
        v52 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_100028BB8();
        isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v53 = *v50;
        (*v50)(v105, v4);
        if (v51 != v52)
        {
          v53(v100, v4);
        }
      }

      v31 = v102;
      v14 = v98;
      v24 = &selRef_setRequiresColorStatistics_;
    }
  }

  v54 = v41;
  [v106 setTextColor:isa];

  v105 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel);
  v55 = v21[2];
  v56 = v55;
  if (!v55)
  {
    v57 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v57, 1, v4))
    {
      v58 = v14;
      v59 = v104;
      (*(v104 + 16))(v58, v1 + v57, v4);
      v56 = sub_1001F0A44();
      v60 = v58;
      v24 = &selRef_setRequiresColorStatistics_;
      (*(v59 + 8))(v60, v4);
    }
  }

  v61 = v55;
  [v105 setTextColor:v56];

  v62 = v21[3];
  v63 = v62;
  if (!v62)
  {
    v64 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v104 + 48))(v1 + v64, 1, v4))
    {
      v65 = v104;
      v66 = *(v104 + 16);
      v67 = v1 + v64;
      v68 = v99;
      v66(v99, v67, v4);
      v69 = v101;
      v66(v101, v68, v4);
      v70 = (*(v65 + 88))(v69, v4);
      v71 = (v65 + 8);
      if (v70 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v72 = v70, v70 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v63 = [objc_opt_self() whiteColor];
        (*v71)(v68, v4);
      }

      else
      {
        LODWORD(v104) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_100028BB8();
        v73 = v68;
        v63 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v74 = *v71;
        (*v71)(v73, v4);
        if (v72 != v104)
        {
          v74(v101, v4);
        }
      }

      v31 = v102;
      v24 = &selRef_setRequiresColorStatistics_;
    }
  }

  v75 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton);
  v76 = v62;
  [v75 setTitleColor:v63 forState:0];
  [v75 setTitleColor:v63 forState:1];
  v77 = v24[15];
  v101 = v63;
  [v75 v77];
  v104 = v1;
  v78 = *(v1 + v31);
  v79 = v19;
  if (v78)
  {
    v80 = *(v19 + 36);
    v81 = type metadata accessor for FontUseCase();
    v82 = *(v81 - 8);
    v83 = v103;
    (*(v82 + 16))(v103, v21 + v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v19 = v79;
    v84 = v78;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  v85 = *(v19 + 40);
  v86 = type metadata accessor for FontUseCase();
  v87 = *(v86 - 8);
  v88 = *(v87 + 16);
  v89 = v103;
  v88(v103, v21 + v85, v86);
  v90 = *(v87 + 56);
  v90(v89, 0, 1, v86);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v88(v89, v21 + v79[13], v86);
  v90(v89, 0, 1, v86);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v88(v89, v21 + v79[14], v86);
  v90(v89, 0, 1, v86);
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();
  v91 = *(v104 + v102);
  if (v91)
  {
    v92 = *(v21 + v79[23]);
    v93 = v92;
    v94 = v91;
    sub_100635C60(v92);
  }

  v95 = *(v21 + v79[23]);
  v96 = v95;
  sub_100635C60(v95);
  sub_100635C60(v95);
  sub_10025B568(v95);

  return sub_1000C266C(v21);
}

double sub_100149418()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100975EE0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_10002849C(&qword_100975EC8);
  __chkstk_darwin(v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10002849C(&unk_1009732B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v33 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v18;
  v22 = v32;
  (*(v14 + 16))(v16, v20, v13);
  v34 = v1;
  Conditional.evaluate(with:)();
  (*(v14 + 8))(v16, v13);
  v23 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v22 + 104))(v12, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v22 + 56))(v12, 0, 1, v2);
  v24 = *(v5 + 56);
  sub_100031660(v1 + v23, v7, &qword_100975EC8);
  sub_100031660(v12, &v7[v24], &qword_100975EC8);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v26 = v31;
    sub_100031660(v7, v31, &qword_100975EC8);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v28 = v30;
      (*(v22 + 32))(v30, &v7[v24], v2);
      sub_10014DC88(&unk_100975EF0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v22 + 8);
      v29(v28, v2);
      sub_10002B894(v12, &qword_100975EC8);
      v29(v26, v2);
      sub_10002B894(v7, &qword_100975EC8);
      goto LABEL_7;
    }

    sub_10002B894(v12, &qword_100975EC8);
    (*(v22 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_10002B894(v12, &qword_100975EC8);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_10002B894(v7, &qword_100975EE0);
    goto LABEL_7;
  }

  sub_10002B894(v7, &qword_100975EC8);
LABEL_7:
  sub_1000C266C(v21);
  return 0.0;
}

id sub_10014999C()
{
  v90 = type metadata accessor for WordmarkView.Alignment();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10002849C(&unk_1009732B0);
  v87 = *(v88 - 1);
  __chkstk_darwin(v88);
  v85 = &v84 - v2;
  v3 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v3 - 8);
  v84 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v5 - 8);
  v86 = &v84 - v6;
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v92 = &v84 - v8;
  v95 = type metadata accessor for DirectionalTextAlignment();
  v99 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v84 - v11;
  v94 = type metadata accessor for FontUseCase();
  v97 = *(v94 - 8);
  __chkstk_darwin(v94);
  v96 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BreakoutDetails.Badge();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  swift_beginAccess();
  v21 = *(v14 + 16);
  v22 = v0;
  v21(v19, &v0[v20], v13);
  sub_10014DC88(&qword_100975F08, &type metadata accessor for BreakoutDetails.Badge);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = v19;
  v25 = *(v14 + 8);
  result = v25(v24, v13);
  if ((v23 & 1) == 0)
  {
    v21(v16, &v22[v20], v13);
    v27 = (*(v14 + 88))(v16, v13);
    v28 = v22;
    if (v27 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v91 = v22;
      (*(v14 + 96))(v16, v13);
      v29 = v16[1];
      v89 = *v16;
      v90 = v29;
      if (qword_10096E2F0 != -1)
      {
        swift_once();
      }

      v30 = v94;
      v31 = sub_1000056A8(v94, qword_1009D1850);
      v32 = v96;
      v33 = v97;
      v34 = *(v97 + 16);
      v34(v96, v31, v30);
      v35 = v34;
      v88 = v34;
      v36 = enum case for DirectionalTextAlignment.none(_:);
      v87 = *(v99 + 104);
      v37 = v95;
      (v87)(v98, enum case for DirectionalTextAlignment.none(_:), v95);
      v38 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
      *&v38[qword_1009902D0] = 0;
      v39 = v92;
      v35(v92, v32, v30);
      v40 = *(v33 + 56);
      v40(v39, 0, 1, v30);
      v41 = v93;
      (v87)(v93, v36, v37);
      v42 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v43 = v96;
      v88(v39, v96, v30);
      v40(v39, 0, 1, v30);
      v44 = v42;
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      dispatch thunk of DynamicTypeLabel.updateFont(to:)();
      [v44 setNumberOfLines:1];
      v46 = v98;
      v45 = v99;
      (*(v99 + 16))(v41, v98, v37);
      dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
      (*(v45 + 8))(v46, v37);
      (*(v97 + 8))(v43, v30);
      dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();
      v47 = String._bridgeToObjectiveC()();

      [v44 setText:v47];

      v48 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
      v28 = v91;
      v49 = *&v91[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
      v50 = v44;
      if (v49)
      {
        [v49 removeFromSuperview];
        v51 = *&v28[v48];
      }

      else
      {
        v51 = 0;
      }

      *&v28[v48] = v44;
      v73 = v44;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
      v74 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
      v75 = *&v28[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
      if (v75)
      {
        [v75 removeFromSuperview];
        v76 = *&v28[v74];
      }

      else
      {
        v76 = 0;
      }

      *&v28[v74] = 0;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
    }

    else if (v27 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v52 = enum case for Wordmark.arcade(_:);
      v53 = type metadata accessor for Wordmark();
      v54 = *(v53 - 8);
      v55 = v86;
      (*(v54 + 104))(v86, v52, v53);
      (*(v54 + 56))(v55, 0, 1, v53);
      v56 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
      swift_beginAccess();
      v57 = v87;
      v58 = &v28[v56];
      v59 = v85;
      v60 = v88;
      (*(v87 + 16))(v85, v58, v88);
      v100 = v28;
      v61 = v84;
      Conditional.evaluate(with:)();
      (*(v57 + 8))(v59, v60);
      v62 = *(v61 + 32);
      sub_1000C266C(v61);
      (*(v89 + 104))(v91, enum case for WordmarkView.Alignment.center(_:), v90);
      v101 = &type metadata for CGFloat;
      v102 = &protocol witness table for CGFloat;
      v100 = v62;
      v63 = objc_allocWithZone(type metadata accessor for WordmarkView());
      v64 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
      v65 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
      v66 = *&v28[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
      if (v66)
      {
        [v66 removeFromSuperview];
        v67 = *&v28[v65];
      }

      else
      {
        v67 = 0;
      }

      *&v28[v65] = 0;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
      v80 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
      v81 = *&v28[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
      v82 = v64;
      if (v81)
      {
        [v81 removeFromSuperview];
        v81 = *&v28[v80];
      }

      *&v28[v80] = v64;
      v83 = v64;

      sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v68 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
      v69 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
      if (v27 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
        v70 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
        v71 = *&v28[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
        if (v71)
        {
          [v71 removeFromSuperview];
          v72 = *&v28[v70];
        }

        else
        {
          v72 = 0;
        }

        *&v28[v70] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v69)
        {
          [*&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v69 = *&v22[v68];
        }

        *&v22[v68] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel);
        v77 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
        v78 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
        if (v78)
        {
          [v78 removeFromSuperview];
          v79 = *&v22[v77];
        }

        else
        {
          v79 = 0;
        }

        *&v22[v77] = 0;

        sub_10014B4F0(&OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark);
        v25(v16, v13);
      }
    }

    sub_1001487E0();
    sub_10014A590();
    return [v28 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10014A590()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v103 = *(v2 - 8);
  __chkstk_darwin(v2);
  v96 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10002849C(&qword_100975EE0);
  __chkstk_darwin(v102);
  v5 = &v95 - v4;
  v6 = sub_10002849C(&qword_100975EC8);
  __chkstk_darwin(v6 - 8);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v95 - v9;
  v99 = type metadata accessor for WordmarkView.Alignment();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for BreakoutDetails.TextAlignment();
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  __chkstk_darwin(v16);
  v110 = &v95 - v17;
  v18 = sub_10002849C(&unk_1009732B0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - v20;
  v107 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v107);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v1[v24], v18);
  v114 = v1;
  Conditional.evaluate(with:)();
  (*(v19 + 8))(v21, v18);
  v25 = [v1 traitCollection];
  LOBYTE(v18) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v106 = v23;
  if ((v18 & 1) != 0 && v23[*(v107 + 96)] == 1)
  {
    v26 = v109;
    (*(v111 + 104))(v110, enum case for BreakoutDetails.TextAlignment.leading(_:), v109);
  }

  else
  {
    v27 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
    swift_beginAccess();
    v26 = v109;
    (*(v111 + 16))(v110, &v1[v27], v109);
  }

  v28 = BreakoutDetails.TextAlignment.textAlignment(in:)();
  v29 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
  v30 = *&v1[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
  if (v30)
  {
    [v30 setTextAlignment:v28];
  }

  v104 = *&v1[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel];
  [v104 setTextAlignment:v28];
  v108 = *&v1[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel];
  [v108 setTextAlignment:v28];
  v101 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
  v31 = *&v1[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = v111;
    (*(v111 + 16))(v15, v110, v26);
    v33 = (*(v32 + 88))(v15, v26);
    if (v33 == enum case for BreakoutDetails.TextAlignment.leading(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
    }

    else if (v33 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
    {
      (*(v98 + 104))(v100, enum case for WordmarkView.Alignment.trailing(_:), v99);
    }

    else
    {
      v34 = *(v98 + 104);
      if (v33 != enum case for BreakoutDetails.TextAlignment.center(_:))
      {
        v34(v100, enum case for WordmarkView.Alignment.leading(_:), v99);
        v94 = *(v111 + 8);
        v35 = v31;
        v94(v15, v26);
        goto LABEL_15;
      }

      v34(v100, enum case for WordmarkView.Alignment.center(_:), v99);
    }

    v35 = v31;
LABEL_15:
    WordmarkView.alignment.setter();
  }

  v36 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v37 = v103;
  (*(v103 + 104))(v10, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v37 + 56))(v10, 0, 1, v2);
  v38 = *(v102 + 48);
  sub_100031660(&v1[v36], v5, &qword_100975EC8);
  sub_100031660(v10, &v5[v38], &qword_100975EC8);
  v39 = *(v37 + 48);
  v40 = &StringUserDefaultsDebugSetting;
  if (v39(v5, 1, v2) == 1)
  {
    sub_10002B894(v10, &qword_100975EC8);
    v41 = &selRef_setRequiresColorStatistics_;
    if (v39(&v5[v38], 1, v2) == 1)
    {
      sub_10002B894(v5, &qword_100975EC8);
      v42 = v105;
      v43 = v107;
LABEL_28:
      v55 = *&v1[v101];
      if (v55)
      {
        v56 = [v55 v40[43].base_prots];
        [v56 setCompositingFilter:kCAFilterPlusL];
      }

      v57 = *&v1[v29];
      if (v57)
      {
        v58 = [v57 v40[43].base_prots];
        v59 = kCAFilterPlusL;
        [v58 setCompositingFilter:kCAFilterPlusL];
      }

      else
      {
        v59 = kCAFilterPlusL;
      }

      v60 = [v108 v40[43].base_prots];
      [v60 setCompositingFilter:v59];

      v61 = [*&v1[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView] contentView];
      v49 = [v61 v40[43].base_prots];

      [v49 setAllowsGroupBlending:0];
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v44 = v97;
  sub_100031660(v5, v97, &qword_100975EC8);
  if (v39(&v5[v38], 1, v2) == 1)
  {
    sub_10002B894(v10, &qword_100975EC8);
    (*(v37 + 8))(v44, v2);
    v41 = &selRef_setRequiresColorStatistics_;
    v40 = &StringUserDefaultsDebugSetting;
LABEL_21:
    sub_10002B894(v5, &qword_100975EE0);
    v42 = v105;
    v43 = v107;
    goto LABEL_22;
  }

  v50 = v96;
  (*(v37 + 32))(v96, &v5[v38], v2);
  sub_10014DC88(&unk_100975EF0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v102) = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v29;
  v52 = v44;
  v53 = *(v37 + 8);
  v53(v50, v2);
  sub_10002B894(v10, &qword_100975EC8);
  v54 = v52;
  v29 = v51;
  v53(v54, v2);
  sub_10002B894(v5, &qword_100975EC8);
  v42 = v105;
  v41 = &selRef_setRequiresColorStatistics_;
  v43 = v107;
  v40 = &StringUserDefaultsDebugSetting;
  if (v102)
  {
    goto LABEL_28;
  }

LABEL_22:
  v45 = *&v1[v101];
  if (v45)
  {
    v46 = [v45 v40[43].base_prots];
    [v46 setCompositingFilter:0];
  }

  v47 = *&v1[v29];
  if (v47)
  {
    v48 = [v47 v40[43].base_prots];
    [v48 setCompositingFilter:0];
  }

  v49 = [v108 v40[43].base_prots];
  [v49 setCompositingFilter:0];
LABEL_34:

  v62 = v106;
  v63 = &v106[*(v43 + 84)];
  v64 = v109;
  if (v63[8])
  {
    v65 = [v1 v41[35]];
    v66 = UITraitCollection.isSizeClassCompact.getter();

    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    [v104 setNumberOfLines:v67];
  }

  else
  {
    [v104 setNumberOfLines:*v63];
  }

  v68 = v62 + *(v43 + 88);
  if (*(v68 + 8))
  {
    v69 = [v1 v41[35]];
    v70 = UITraitCollection.isSizeClassCompact.getter();

    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    [v108 setNumberOfLines:v71];
  }

  else
  {
    [v108 setNumberOfLines:*v68];
  }

  v72 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v73 = v111;
  (*(v111 + 16))(v42, &v1[v72], v64);
  v74 = (*(v73 + 88))(v42, v64);
  if (v74 == enum case for BreakoutDetails.TextAlignment.leading(_:))
  {
    if (qword_10096D168 != -1)
    {
      swift_once();
    }

    v75 = sub_10002849C(&qword_100975EE8);
    v76 = qword_100975D20;
LABEL_54:
    sub_1000056A8(v75, v76);
    v112 = v1;
    v77 = v1;
    Conditional.evaluate(with:)();

    v78 = v113;
    goto LABEL_55;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
  {
    if (qword_10096D170 != -1)
    {
      swift_once();
    }

    v75 = sub_10002849C(&qword_100975EE8);
    v76 = qword_100975D38;
    goto LABEL_54;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.center(_:))
  {
    v78 = 0;
  }

  else
  {
    if (qword_10096D168 != -1)
    {
      swift_once();
    }

    v91 = sub_10002849C(&qword_100975EE8);
    sub_1000056A8(v91, qword_100975D20);
    v112 = v1;
    v92 = v1;
    Conditional.evaluate(with:)();

    v93 = v113;
    (*(v111 + 8))(v42, v64);
    v78 = v93;
  }

LABEL_55:
  v79 = *&v1[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton];
  [v79 setContentHorizontalAlignment:v78];
  v80 = [v79 titleLabel];
  if (!v80)
  {
    goto LABEL_63;
  }

  v81 = v80;
  v82 = UILabel.stringValue.getter();
  v84 = v83;

  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    v86 = [v1 v41[35]];
    v87 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v87)
    {
      v88 = 0.0;
    }

    else
    {
      v88 = 2.0;
    }

    [v79 setImageEdgeInsets:{0.0, v88}];
    v89 = sub_10032FEB0(0x74756F6B61657242, 0xEF6E6F7276656843, 0);
    [v79 setImage:v89 forState:0];
  }

  else
  {
LABEL_63:
    [v79 setImageEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v79 setImage:0 forState:0];
  }

  sub_10014C52C();
  (*(v111 + 8))(v110, v64);
  return sub_1000C266C(v62);
}

id sub_10014B4F0(void *a1)
{
  v3 = sub_10002849C(&qword_100975EC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *&v1[*a1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    sub_100031660(&v1[v11], v9, &qword_100975EC8);
    v12 = type metadata accessor for BreakoutDetails.BackgroundStyle();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v14 = v10;
    }

    else
    {
      sub_100031660(v9, v5, &qword_100975EC8);
      if ((*(v13 + 88))(v5, v12) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v15 = *&v1[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView];
        v16 = v10;
        v17 = [v15 contentView];
        [v17 addSubview:v16];

LABEL_8:
        sub_10002B894(v9, &qword_100975EC8);
        return [v1 setNeedsLayout];
      }

      v18 = *(v13 + 8);
      v19 = v10;
      v18(v5, v12);
    }

    [v1 addSubview:v10];
    goto LABEL_8;
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_10014B738(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100975EC8);
  __chkstk_darwin(v7 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v39 - v10;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10002849C(&qword_100975EE0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v42 = v18;
  sub_100031660(&v2[v18], v17, &qword_100975EC8);
  sub_100031660(a1, &v17[v19], &qword_100975EC8);
  v20 = v5;
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v19], 1, v4) == 1)
    {
      return sub_10002B894(v17, &qword_100975EC8);
    }

    goto LABEL_6;
  }

  sub_100031660(v17, v13, &qword_100975EC8);
  if (v21(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_10002B894(v17, &qword_100975EE0);
    goto LABEL_7;
  }

  v30 = v40;
  (*(v5 + 32))(v40, &v17[v19], v4);
  sub_10014DC88(&unk_100975EF0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  LODWORD(v39) = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v5 + 8);
  v31(v30, v4);
  v31(v13, v4);
  result = sub_10002B894(v17, &qword_100975EC8);
  if ((v39 & 1) == 0)
  {
LABEL_7:
    v39 = *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView];
    [v39 removeFromSuperview];
    v22 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark;
    v23 = *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
    if (v23)
    {
      [v23 removeFromSuperview];
    }

    v24 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel;
    v25 = *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
    if (v25)
    {
      [v25 removeFromSuperview];
    }

    v26 = *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel];
    [v26 removeFromSuperview];
    v27 = *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel];
    [v27 removeFromSuperview];
    v40 = *&v2[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton];
    [v40 removeFromSuperview];
    v17 = v43;
    sub_100031660(&v2[v42], v43, &qword_100975EC8);
    if (v21(v17, 1, v4) != 1)
    {
      v28 = v41;
      sub_100031660(v17, v41, &qword_100975EC8);
      if ((*(v20 + 88))(v28, v4) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v29 = v39;
        [v2 addSubview:v39];
        if (*&v2[v22])
        {
          [v2 addSubview:?];
        }

        else
        {
          v33 = *&v2[v24];
          if (v33)
          {
            v34 = v33;
            v35 = [v29 contentView];
            [v35 addSubview:v34];
          }
        }

        v36 = [v29 contentView];
        [v36 addSubview:v26];

        v37 = [v29 contentView];
        [v37 addSubview:v27];

        v38 = [v29 contentView];
        [v38 addSubview:v40];

        return sub_10002B894(v17, &qword_100975EC8);
      }

      (*(v20 + 8))(v28, v4);
    }

    if (*&v2[v22] || *&v2[v24])
    {
      [v2 addSubview:?];
    }

    [v2 addSubview:v26];
    [v2 addSubview:v27];
    [v2 addSubview:v40];
    return sub_10002B894(v17, &qword_100975EC8);
  }

  return result;
}

uint64_t sub_10014BE4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v52 = type metadata accessor for LayoutRect();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100975EC8);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - v5;
  v7 = sub_10002849C(&unk_1009732B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BreakoutDetailsLayout.Metrics();
  __chkstk_darwin(v14 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = type metadata accessor for BreakoutDetailsLayout();
  v17 = *(v49[0] - 8);
  *&v18 = __chkstk_darwin(v49[0]).n128_u64[0];
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74.receiver = v1;
  v74.super_class = ObjectType;
  v49[1] = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v18);
  v21 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v21], v7);
  v71 = v1;
  v22 = v1;
  Conditional.evaluate(with:)();
  (*(v8 + 8))(v10, v7);

  sub_100149418();
  sub_100146D98(v13, v16);
  sub_1000C266C(v13);
  v23 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel];
  v24 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v72 = v24;
  v73 = &protocol witness table for UILabel;
  v70 = &protocol witness table for UILabel;
  v71 = v23;
  v25 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel];
  v69 = v24;
  v68 = v25;
  v26 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v28 = 0;
    v24 = 0;
    v27 = 0;
    v65 = 0;
    v64 = 0;
  }

  v63 = v28;
  v66 = v24;
  v67 = v27;
  v29 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
  if (v29)
  {
    v30 = type metadata accessor for WordmarkView();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v60 = 0;
    v59 = 0;
  }

  v58 = v29;
  v61 = v30;
  v62 = v31;
  v32 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton];
  v33 = v26;
  v34 = v29;
  v35 = v23;
  v36 = v25;
  v37 = [v32 titleForState:0];
  if (v37)
  {

    v38 = type metadata accessor for CappedSizeDynamicTypeButton();
    v37 = v32;
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v55 = 0;
    v54 = 0;
  }

  v53 = v37;
  v56 = v38;
  v57 = v39;
  BreakoutDetailsLayout.init(metrics:titleLabel:descriptionLabel:badgeText:badgeWordmark:callToActionButton:)();
  v40 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100031660(&v22[v40], v6, &qword_100975EC8);
  v41 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v6, 1, v41) == 1)
  {
    sub_10002B894(v6, &qword_100975EC8);
LABEL_14:
    LayoutMarginsAware<>.layoutFrame.getter();
    v47 = v50;
    goto LABEL_15;
  }

  v43 = (*(v42 + 88))(v6, v41);
  v44 = enum case for BreakoutDetails.BackgroundStyle.material(_:);
  (*(v42 + 8))(v6, v41);
  if (v43 != v44)
  {
    goto LABEL_14;
  }

  v45 = *&v22[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_backgroundMaterialView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v45 setFrame:?];
  v46 = [v45 contentView];
  [v46 bounds];

  v47 = v50;
LABEL_15:
  BreakoutDetailsLayout.placeChildren(relativeTo:in:)();
  (*(v51 + 8))(v47, v52);
  sub_10014C52C();
  return (*(v17 + 8))(v20, v49[0]);
}

void sub_10014C52C()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel);
  v8 = [v7 font];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v10 = [v7 text];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v47 = v12;
    v48 = v14;

    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    LOBYTE(v11) = v15;
    (*(v3 + 8))(v6, v2);

    if (v11)
    {

      v16 = 0;
    }

    else
    {
      [v9 lineHeight];
      v18 = v17;

      v19 = ceil(v18 * 1.3);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v19 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v19 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v16 = v19;
    }
  }

  else
  {

    v16 = 0;
  }

  sub_100480E28(v16);
  v20 = *(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel);
  v21 = [v20 font];
  if (!v21)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v21;
  v23 = [v20 text];
  if (!v23)
  {

    v29 = 0;
    goto LABEL_19;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v47 = v25;
  v48 = v27;

  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  LOBYTE(v24) = v28;
  (*(v3 + 8))(v6, v2);

  if (v24)
  {

    v29 = 0;
    goto LABEL_19;
  }

  [v22 lineHeight];
  v31 = v30;

  v32 = ceil(v31 * 1.3);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v32;
LABEL_19:
  sub_100480E28(v29);
  v33 = [*(v1 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton) titleLabel];
  if (!v33)
  {
    return;
  }

  v34 = v33;
  v35 = [v33 font];
  if (!v35)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v34 text];
  if (!v37)
  {

    goto LABEL_25;
  }

  v38 = v37;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v47 = v39;
  v48 = v41;

  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  LOBYTE(v38) = v42;
  (*(v3 + 8))(v6, v2);

  if ((v38 & 1) == 0)
  {
    [v36 lineHeight];
    v45 = v44;

    v46 = ceil(v45 * 1.3);
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v46 > -9.22337204e18)
      {
        if (v46 < 9.22337204e18)
        {
          v43 = v46;
          goto LABEL_30;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_25:
  v43 = 0;
LABEL_30:
  sub_100480E28(v43);
}

uint64_t sub_10014CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_10002849C(&qword_100975EC8);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10002849C(&unk_100975ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10002849C(&unk_1009732B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  sub_100031660(a1, v12, &unk_100975ED0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002B894(v12, &unk_100975ED0);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v20 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
    swift_beginAccess();
    (*(v14 + 24))(v3 + v20, v16, v13);
    swift_endAccess();
    sub_1001487E0();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
  }

  v22 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v23 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v23 - 8) + 24))(v3 + v22, v30, v23);
  swift_endAccess();
  v24 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v31, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v27 = v32;
  sub_100031660(v3 + v26, v32, &qword_100975EC8);
  swift_beginAccess();
  sub_10014D67C(v9, v3 + v26);
  swift_endAccess();
  sub_10014B738(v27);
  sub_10002B894(v27, &qword_100975EC8);
  sub_10002B894(v9, &qword_100975EC8);
  sub_1001487E0();
  return sub_10014A590();
}

void sub_10014D22C()
{
  type metadata accessor for BreakoutDetails.Badge();
  if (v0 <= 0x3F)
  {
    sub_10014D3B0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BreakoutDetails.TextAlignment();
      if (v2 <= 0x3F)
      {
        sub_10014D628(319, &unk_100975DC0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10014D3B0()
{
  if (!qword_100975DB0)
  {
    sub_10002D1A8(&qword_100973F50);
    type metadata accessor for BreakoutDetailsView.Config(255);
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, &qword_100975DB0);
    }
  }
}