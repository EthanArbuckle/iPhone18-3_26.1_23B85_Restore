uint64_t sub_10017EE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B8740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10017EE7C(uint64_t a1)
{
  v36 = a1;
  updated = type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel();
  v35 = *(updated - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(updated - 8);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v38._object = 0x8000000100579A00;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x8000000100583130;
  v7.value._object = 0x80000001005799E0;
  v38._countAndFlagsBits = 0xD000000000000018;
  v7.value._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v38);

  v9 = String._bridgeToObjectiveC()();

  [v1 setTitle:v9];

  v10 = [v4 mainBundle];
  v39._object = 0x8000000100579A00;
  v11._countAndFlagsBits = 0xD00000000000002FLL;
  v11._object = 0x8000000100583160;
  v12.value._object = 0x80000001005799E0;
  v39._countAndFlagsBits = 0xD000000000000018;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v39);

  v14 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v14];

  v15 = [v4 mainBundle];
  v40._object = 0x8000000100579A00;
  v16._countAndFlagsBits = 0xD000000000000036;
  v16._object = 0x8000000100583190;
  v17.value._object = 0x80000001005799E0;
  v40._countAndFlagsBits = 0xD000000000000018;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v40);

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v34;
  sub_10017F58C(v36, v34);
  v21 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  sub_10017F5F0(v20, v22 + v21);

  v23 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10017F654;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10062AD20;
  v24 = _Block_copy(aBlock);
  v25 = objc_opt_self();

  v26 = [v25 actionWithTitle:v23 style:0 handler:v24];

  _Block_release(v24);

  v27 = [v1 addAction:v26];

  v28 = [objc_opt_self() systemBlueColor];
  v29 = sub_10044CA40(50.0, 0xD00000000000001ALL, 0x80000001005831D0, v28);

  if (v29)
  {
    sub_10007EBC0(&qword_1006AFC30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1005528C0;
    *(v30 + 32) = v29;
    sub_100152B54();
    v31 = v29;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setImages:isa];
  }
}

void sub_10017F350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      v10 = type metadata accessor for FMIPItem();
      (*(*(v10 - 8) + 16))(v6, a3, v10);
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v6);

      sub_10017C894(v6);
    }
  }
}

id sub_10017F4D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryPairingUpdateRequiredCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel()
{
  result = qword_1006B4A40;
  if (!qword_1006B4A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017F58C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_10017F5F0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

void sub_10017F654(uint64_t a1)
{
  v3 = *(type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10017F350(a1, v4, v5);
}

uint64_t sub_10017F6F0()
{
  result = type metadata accessor for FMIPItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10017F75C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconView);
  v4 = 0.0;
  if (a1)
  {
    v5 = 0.5;
  }

  else
  {
    v4 = 1.0;
    v5 = 1.0;
  }

  if (a1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.5;
  }

  if (a1)
  {
    v7 = &selRef_startAnimating;
  }

  else
  {
    v7 = &selRef_stopAnimating;
  }

  [*(v1 + OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconView) setAlpha:v4];
  CGAffineTransformMakeScale(&v10, v5, v5);
  [v3 setTransform:&v10];
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_activityView);
  [v8 setHidden:(a1 & 1) == 0];
  CGAffineTransformMakeScale(&v10, v6, v6);
  [v8 setTransform:&v10];
  return [v8 *v7];
}

char *sub_10017F87C()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_activityView;
  *&v0[v1] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v2 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_titleLabel;
  *&v0[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_subtitleLabel;
  *&v0[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconContainerView;
  *&v0[v5] = [objc_allocWithZone(UIView) init];
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMModernPlatterHeaderView();
  v6 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10017FA78();
  v7 = *&v6[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_titleLabel];
  v8 = String._bridgeToObjectiveC()();
  [v7 setAccessibilityIdentifier:v8];

  v9 = *&v6[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_subtitleLabel];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v10];

  return v6;
}

id sub_10017FA78()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  v76 = xmmword_100552F00;
  *(inited + 16) = xmmword_100552F00;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconContainerView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_activityView];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_titleLabel];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_subtitleLabel];
  *(inited + 64) = v6;
  isa = (inited & 0xC000000000000001);
  v8 = inited & 0xFFFFFFFFFFFFFF8;
  v9 = v2;
  v10 = v5;
  v11 = v6;
  v12 = v9;
  v79 = v10;
  v78 = v11;
  v13 = v3;
  v14 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  for (i = v12; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v16 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:{0, v76}];

    if (isa)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 2uLL)
      {
        goto LABEL_30;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (isa)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 3uLL)
      {
        goto LABEL_30;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (isa)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 4uLL)
      {
        goto LABEL_30;
      }

      v21 = *(inited + 56);
    }

    v22 = v21;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (isa)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 5uLL)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v23 = *(inited + 64);
    }

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    swift_setDeallocating();
    swift_arrayDestroy();
    v81 = &type metadata for SolariumFeatureFlag;
    v82 = sub_10000BD04();
    v25 = isFeatureEnabled(_:)();
    sub_100006060(v80);
    v26 = 16.0;
    if ((v25 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v26 = *&qword_1006D4798;
    }

    [v0 setAxis:1];
    [v0 setAlignment:1];
    [v0 setSpacing:2.0];
    [v0 setLayoutMarginsRelativeArrangement:1];
    [v0 setLayoutMargins:{v26, 0.0, 15.0, 0.0}];
    [v79 setAdjustsFontForContentSizeCategory:1];
    v27 = objc_opt_self();
    v28 = [v27 preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v79 setFont:v28];

    v29 = objc_opt_self();
    v30 = [v29 labelColor];
    [v79 setTextColor:v30];

    [v79 setNumberOfLines:0];
    [v78 setAdjustsFontForContentSizeCategory:1];
    v31 = [v27 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v78 setFont:v31];

    v32 = [v29 secondaryLabelColor];
    [v78 setTextColor:v32];

    [v78 setNumberOfLines:0];
    [v12 addSubview:v13];
    [v12 addSubview:v14];
    v77 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100555280;
    v34 = [v12 topAnchor];
    v35 = [v13 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v33 + 32) = v36;
    v37 = [v12 bottomAnchor];
    v38 = [v13 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v33 + 40) = v39;
    v40 = [v12 leadingAnchor];
    v41 = [v13 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    *(v33 + 48) = v42;
    v43 = [v12 trailingAnchor];
    v44 = [v13 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v33 + 56) = v45;
    v46 = [v12 centerXAnchor];
    v47 = [v14 centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v33 + 64) = v48;
    v49 = [v12 centerYAnchor];
    v50 = [v14 centerYAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v33 + 72) = v51;
    v14 = sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v77 activateConstraints:isa];

    v52 = swift_initStackObject();
    v13 = v52;
    *(v52 + 16) = xmmword_100552EF0;
    *(v52 + 32) = v12;
    *(v52 + 40) = v79;
    *(v52 + 48) = v78;
    v8 = v52 & 0xFFFFFFFFFFFFFF8;
    inited = v52 & 0xC000000000000001;
    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v53 = v12;
    }

    isa = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v0 addArrangedSubview:v53];

    if (inited)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 2uLL)
      {
        goto LABEL_31;
      }

      v54 = v13[5];
    }

    v55 = v54;
    [v0 addArrangedSubview:v54];

    if (inited)
    {
      break;
    }

    if (*(v8 + 16) >= 3uLL)
    {
      v56 = v13[6];
      goto LABEL_29;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_29:
  v57 = v56;
  [v0 addArrangedSubview:v56];

  swift_setDeallocating();
  swift_arrayDestroy();
  v58 = swift_allocObject();
  *(v58 + 16) = v76;
  v59 = [v12 leadingAnchor];
  v60 = [v0 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:14.0];

  *(v58 + 32) = v61;
  v62 = [v79 leadingAnchor];
  v63 = [v0 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:v26];

  *(v58 + 40) = v64;
  v65 = [v79 trailingAnchor];
  v66 = [v0 trailingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:-v26];

  *(v58 + 48) = v67;
  v68 = [v78 leadingAnchor];
  v69 = [v0 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:v26];

  *(v58 + 56) = v70;
  v71 = [v78 trailingAnchor];
  v72 = [v0 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:-v26];

  *(v58 + 64) = v73;
  v74 = Array._bridgeToObjectiveC()().super.isa;

  [v77 activateConstraints:v74];

  return [v0 setCustomSpacing:v12 afterView:10.0];
}

id sub_10018056C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMModernPlatterHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100180640()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_activityView;
  *(v0 + v1) = [objc_allocWithZone(UIActivityIndicatorView) init];
  v2 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_subtitleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMModernPlatterHeaderView_iconContainerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100180794(char *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  if ([a1 tag] == 1)
  {
    type metadata accessor for FMRecipientTableViewCell();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      return v6;
    }

    a1 = v7;
    v2 = *(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts);
    if (!v2)
    {
      goto LABEL_16;
    }

    v8 = v6;
    result = IndexPath.item.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
LABEL_19:
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      v12 = *(v2 + 8 * result + 32);
LABEL_15:
      v13 = v12;

LABEL_17:
      v15 = *&a1[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_recipient];
      *&a1[OBJC_IVAR____TtC6FindMy24FMRecipientTableViewCell_recipient] = v13;
      v16 = v13;

      sub_10048B31C();
      return v6;
    }

    __break(1u);
  }

  if ([a1 tag] != 2)
  {
    return v6;
  }

  type metadata accessor for FMRecipientTableViewCell();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return v6;
  }

  a1 = v10;
  v2 = *(v2 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContacts);
  if (!v2)
  {
LABEL_16:
    v14 = v6;
    v13 = 0;
    goto LABEL_17;
  }

  v11 = v6;
  result = IndexPath.item.getter();
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100180A9C(unint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  v5 = &selRef_pushViewController_animated_;
  if ([a1 tag] != 1)
  {
    goto LABEL_10;
  }

  result = IndexPath.row.getter();
  v7 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts;
  v8 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts];
  if (!v8)
  {
    return result;
  }

  if (v8 >> 62)
  {
    v5 = result;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    result = v5;
    if (v5 >= v17)
    {
      return result;
    }
  }

  else if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  a1 = *&v1[v7];
  if (a1)
  {

    result = IndexPath.row.getter();
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_26;
    }

    if (result < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      v11 = *(a1 + 8 * result + 32);
LABEL_19:
      v12 = v11;

      v13 = *&v12[OBJC_IVAR____TtC6FindMy11FMRecipient_handle];
      v14 = *&v12[OBJC_IVAR____TtC6FindMy11FMRecipient_handle + 8];
      v15 = swift_allocObject();
      *(v15 + 16) = v2;

      v16 = v2;
      sub_100193EAC(v13, v14, sub_100180DFC, v15);
    }

    __break(1u);
LABEL_10:
    result = [a1 v5[440]];
    if (result != 2)
    {
      return result;
    }

    result = IndexPath.row.getter();
    v9 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContacts;
    v10 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContacts];
    if (!v10)
    {
      return result;
    }

    if (v10 >> 62)
    {
      v18 = result;
      v19 = _CocoaArrayWrapper.endIndex.getter();
      result = v18;
      if (v18 >= v19)
      {
        return result;
      }
    }

    else if (result >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    a1 = *&v1[v9];
    if (!a1)
    {
      return result;
    }

    result = IndexPath.row.getter();
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

LABEL_29:
        __break(1u);
        return result;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_26:
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100180DFC()
{
  v1 = *(v0 + 16);
  sub_10019415C();
  v2 = (v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100180E48(void *a1)
{
  if ([a1 tag] == 1)
  {
    v3 = &OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts;
  }

  else
  {
    if ([a1 tag] != 2)
    {
      return 0;
    }

    v3 = &OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContacts;
  }

  v4 = *(v1 + *v3);
  if (!v4)
  {
    return 0;
  }

  if (!(v4 >> 62))
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

id sub_100180F2C(uint64_t a1, double a2, double a3)
{
  sub_10024D538(0, 0.4);
  v6 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView;
  result = *(a1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_passthroughView);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result superview];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  result = *(a1 + v6);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result frame];
  [v8 convertRect:0 toView:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  result = *(a1 + v6);
  if (result)
  {
    [result safeAreaInsets];
    v19 = sub_10010B270(v10, v12, v14, v16, v17, v18);
    v23 = sub_10010B270(v19, v20, v21, v22, a2, a3);
    v27 = sub_10010B270(v23, v24, v25, v26, 0.0, 0.0);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = objc_allocWithZone(RPTScrollViewTestParameters);
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 initWithTestName:v35 scrollBounds:1 amplitude:0 direction:v27 completionHandler:{v29, v31, v33, 300.0}];

    [v36 setIterationDurationFactor:0.7];
    [v36 setPreventSheetDismissal:1];
    [v36 setShouldFlick:0];
    v37 = objc_allocWithZone(RPTScrollViewTestParameters);
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 initWithTestName:v38 scrollBounds:0 amplitude:0 direction:v27 completionHandler:{v29, v31, v33, 400.0}];

    [v39 setIterationDurationFactor:0.5];
    [v39 setPreventSheetDismissal:0];
    [v39 setShouldFlick:1];
    v40 = objc_opt_self();
    v41 = [v36 testName];
    sub_10007EBC0(&qword_1006AFC30);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100552EE0;
    *(v42 + 32) = v36;
    *(v42 + 40) = v39;
    v43 = v36;
    v44 = v39;
    sub_10007EBC0(&unk_1006B4C30);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v46 = [v40 newWithTestName:v41 parameters:isa completionHandler:0];

    return v46;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1001814C4(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FMUTAccessoryInformationViewController();
  result = objc_msgSendSuper2(&v5, "viewWillDisappear:", a1 & 1);
  if (*&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_devicesSubscription])
  {
    v4 = *(*(*&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_mediator] + 24) + 16);

    os_unfair_lock_lock((v4 + 24));
    sub_10008FB6C((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  return result;
}

id sub_1001815E4()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v150 = &v150 - v3;
  v4 = sub_10007EBC0(&unk_1006B4D70);
  v5 = __chkstk_darwin(v4 - 8);
  v160 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v159 = &v150 - v8;
  __chkstk_darwin(v7);
  v165 = &v150 - v9;
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B4DB8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v150 - v19;
  __chkstk_darwin(v18);
  v22 = &v150 - v21;
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"cancelAction"];
  v24 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_cancelButton;
  v25 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_cancelButton];
  *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_cancelButton] = v23;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = result;
  v164 = objc_opt_self();
  v28 = [v164 systemBackgroundColor];
  [v27 setBackgroundColor:v28];

  v29 = [v1 navigationItem];
  v30 = *&v1[v24];
  [v29 setLeftBarButtonItem:v30];

  v31 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  v32 = *(v11 + 16);
  v169 = v31;
  v168 = v11 + 16;
  v167 = v32;
  v32(v13, &v1[v31], v10);
  FMIPUnknownItem.utMetadata.getter();
  v34 = *(v11 + 8);
  v33 = v11 + 8;
  v166 = v34;
  v34(v13, v10);
  v35 = v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_showDisableInfo];
  v154 = v22;
  if (v35 == 1)
  {
    sub_100007204(v22, v20, &qword_1006B4DB8);
    v36 = type metadata accessor for FMIPUnknownItemUTMetadata();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v20, 1, v36);
    v39 = v165;
    if (v38 != 1)
    {
      FMIPUnknownItemUTMetadata.disableInfo.getter();
      (*(v37 + 8))(v20, v36);
      goto LABEL_10;
    }

    v40 = v20;
  }

  else
  {
    sub_100007204(v22, v17, &qword_1006B4DB8);
    v41 = type metadata accessor for FMIPUnknownItemUTMetadata();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v17, 1, v41);
    v39 = v165;
    if (v43 != 1)
    {
      FMIPUnknownItemUTMetadata.learnMoreInfo.getter();
      (*(v42 + 8))(v17, v41);
      goto LABEL_10;
    }

    v40 = v17;
  }

  sub_100012DF0(v40, &qword_1006B4DB8);
  v44 = type metadata accessor for FMIPUnknownItemProductMetadata();
  (*(*(v44 - 8) + 56))(v39, 1, 1, v44);
LABEL_10:
  v167(v13, &v1[v169], v10);
  My = FMIPUnknownItem.isFindMyNetwork.getter();
  v166(v13, v10);
  v46 = v35 ^ 1;
  v163 = v10;
  v161 = v13;
  v162 = v33;
  if (My & 1) != 0 || (v46)
  {
    v53 = v159;
    sub_100007204(v39, v159, &unk_1006B4D70);
    v54 = type metadata accessor for FMIPUnknownItemProductMetadata();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 48))(v53, 1, v54);
    v52 = v160;
    if (v56 == 1)
    {
      sub_100012DF0(v53, &unk_1006B4D70);
      object = 0;
    }

    else
    {
      FMIPUnknownItemProductMetadata.title.getter();
      object = v57;
      (*(v55 + 8))(v53, v54);
    }
  }

  else
  {
    v47 = [objc_opt_self() mainBundle];
    v48.value._countAndFlagsBits = 0xD000000000000010;
    v49._countAndFlagsBits = 0xD000000000000012;
    v172._object = 0x8000000100583630;
    v49._object = 0x8000000100583650;
    v48.value._object = 0x8000000100583610;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v172._countAndFlagsBits = 0xD000000000000015;
    object = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v48, v47, v50, v172)._object;

    v52 = v160;
  }

  v160 = objc_opt_self();
  v58 = [v160 preferredFontForTextStyle:UIFontTextStyleTitle1];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  v156 = xmmword_100552220;
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightBold;
  v60 = UIFontWeightTrait;
  v61 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0);
  v62 = sub_10002ACDC(v61);

  v63 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_titleLabel];
  [v63 setAdjustsFontForContentSizeCategory:1];
  v153 = v62;
  [v63 setFont:v62];
  [v63 setNumberOfLines:0];
  if (object)
  {
    v64 = String._bridgeToObjectiveC()();
  }

  else
  {
    v64 = 0;
  }

  v65 = v165;
  [v63 setText:v64];

  v66 = [v164 labelColor];
  [v63 setTextColor:v66];

  v159 = v63;
  [v63 setTextAlignment:1];
  sub_100007204(v65, v52, &unk_1006B4D70);
  v67 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v52, 1, v67) == 1)
  {
    sub_100012DF0(v52, &unk_1006B4D70);
    v69 = 0;
  }

  else
  {
    v69 = FMIPUnknownItemProductMetadata.moreDescriptionBulletPoints.getter();
    (*(v68 + 8))(v52, v67);
  }

  v70 = v161;
  v71 = v163;
  v167(v161, &v1[v169], v163);
  v72 = FMIPUnknownItem.isFindMyNetwork.getter();
  v166(v70, v71);
  if ((v72 | v46))
  {
    if (v69)
    {
      v73 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel;
      v74 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel];

      v75 = v74;
      sub_100182CE0(v69);

      v76 = *&v1[v73];
      v77 = qword_1006AEC30;
      v78 = v76;
      if (v77 != -1)
      {
        swift_once();
      }

      [v78 setTextAlignment:2 * (qword_1006D47A0 == 1)];
    }
  }

  else
  {
    v79 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel;
    v80 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 mainBundle];
    v84.value._countAndFlagsBits = 0xD000000000000010;
    v173._object = 0x8000000100583630;
    v85._object = 0x80000001005835F0;
    v84.value._object = 0x8000000100583610;
    v85._countAndFlagsBits = 0xD000000000000015;
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    v173._countAndFlagsBits = 0xD000000000000015;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v85, v84, v83, v86, v173);

    v87 = String._bridgeToObjectiveC()();

    [v82 setText:v87];

    [*&v1[v79] setTextAlignment:1];
  }

  v152 = v69;
  v88 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel;
  [*&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel] setNumberOfLines:0];
  v89 = *&v1[v88];
  v90 = v88;
  v158 = v88;
  v91 = v89;
  v92 = v164;
  v93 = [v164 labelColor];
  [v91 setTextColor:v93];

  [*&v1[v90] setAdjustsFontForContentSizeCategory:1];
  v94 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_footnoteLabel;
  v95 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_footnoteLabel];
  v96 = [v92 secondaryLabelColor];
  [v95 setTextColor:v96];

  v97 = *&v1[v94];
  v98 = v160;
  v157 = UIFontTextStyleCaption2;
  v99 = [v160 preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v97 setFont:v99];

  [*&v1[v94] setNumberOfLines:0];
  [*&v1[v94] setTextAlignment:1];
  v155 = v94;
  [*&v1[v94] setAdjustsFontForContentSizeCategory:1];
  v100 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton];
  v101 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v102 = *(v100 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v103 = [v92 systemWhiteColor];
  [v102 setTextColor:v103];

  [*(v100 + v101) setTextAlignment:1];
  v104 = *(v100 + v101);
  v105 = [v98 preferredFontForTextStyle:UIFontTextStyleBody];
  v106 = sub_100039388(2);

  [v104 setFont:v106];
  v151 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImageView];
  [v151 setContentMode:1];
  v107 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_backgroundView];
  v108 = v161;
  v109 = v163;
  v167(v161, &v1[v169], v163);
  LOBYTE(v105) = FMIPUnknownItem.isFindMyNetwork.getter();
  v166(v108, v109);
  v110 = &selRef_clearColor;
  if ((v105 & 1) == 0)
  {
    v110 = &selRef_whiteColor;
  }

  v111 = [v92 *v110];
  [v107 setBackgroundColor:v111];

  v112 = [v107 layer];
  [v112 setCornerRadius:12.0];

  sub_10018859C();
  v113 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollView];
  [v113 setDelegate:v1];
  [v113 setPreservesSuperviewLayoutMargins:1];
  v114 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollContentView];
  [v114 setPreservesSuperviewLayoutMargins:1];
  [v114 addSubview:*&v1[v158]];
  [v114 addSubview:v159];
  [v114 addSubview:v107];
  [v113 addSubview:v114];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_43;
  }

  v115 = result;
  [result addSubview:v113];

  result = [v1 view];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v116 = result;
  [result addSubview:v100];

  result = [v1 view];
  v117 = v157;
  if (!result)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return result;
  }

  v118 = result;
  [result addSubview:*&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView]];

  sub_10007EBC0(&qword_1006B2570);
  v119 = swift_initStackObject();
  *(v119 + 16) = xmmword_100552210;
  *(v119 + 32) = NSForegroundColorAttributeName;
  v120 = NSForegroundColorAttributeName;
  *(v119 + 40) = [v164 systemRedColor];
  *(v119 + 48) = NSFontAttributeName;
  v121 = NSFontAttributeName;
  *(v119 + 56) = [v160 preferredFontForTextStyle:v117];
  v122 = sub_1001535F0(v119);
  swift_setDeallocating();
  sub_10007EBC0(&unk_1006B4DC0);
  swift_arrayDestroy();
  v123 = [objc_allocWithZone(NSTextAttachment) init];
  [v123 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v124 = [objc_opt_self() configurationWithTextStyle:v117];
  v125 = String._bridgeToObjectiveC()();
  v126 = [objc_opt_self() systemImageNamed:v125 withConfiguration:v124];

  v164 = v122;
  if (v126)
  {
    v127 = [v126 imageWithRenderingMode:2];
  }

  else
  {
    v127 = 0;
  }

  [v123 setImage:v127];

  v128 = [objc_opt_self() mainBundle];
  v129.value._countAndFlagsBits = 0xD000000000000013;
  v174._object = 0x8000000100579A00;
  v130._countAndFlagsBits = 0xD00000000000001ALL;
  v130._object = 0x80000001005835D0;
  v129.value._object = 0x80000001005799E0;
  v174._countAndFlagsBits = 0xD000000000000018;
  v131._countAndFlagsBits = 0;
  v131._object = 0xE000000000000000;
  v132 = NSLocalizedString(_:tableName:bundle:value:comment:)(v130, v129, v128, v131, v174);

  v170 = 32;
  v171 = 0xE100000000000000;
  String.append(_:)(v132);

  sub_10007EBC0(&qword_1006B0C40);
  v133 = swift_initStackObject();
  *(v133 + 16) = v156;
  *(v133 + 32) = v121;
  v134 = [v160 preferredFontForTextStyle:v117];
  *(v133 + 64) = sub_10000905C(0, &qword_1006B4DD0);
  *(v133 + 40) = v134;
  sub_10001AC8C(v133);
  swift_setDeallocating();
  sub_100012DF0(v133 + 32, &qword_1006B0C50);
  v135 = objc_allocWithZone(NSAttributedString);
  v136 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_100003FB4(&qword_1006AF370, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v138 = [v135 initWithString:v136 attributes:isa];

  sub_10000905C(0, &unk_1006BA710);
  v139 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v123];
  sub_1000F110C(v164);
  v140 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v139 addAttributes:v140 range:{0, 1}];

  [v139 appendAttributedString:v138];
  v141 = v155;
  [*&v1[v155] setAttributedText:v139];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_46;
  }

  v142 = result;

  [v142 addSubview:*&v1[v141]];

  v143 = v161;
  v144 = v163;
  v167(v161, &v1[v169], v163);
  LOBYTE(v142) = FMIPUnknownItem.isAppleAudioAccessory.getter();
  v166(v143, v144);
  v145 = v165;
  if ((v142 & 1) != 0 && (v146 = v150, sub_100189B48(v150), v147 = type metadata accessor for URL(), v148 = (*(*(v147 - 8) + 48))(v146, 1, v147), sub_100012DF0(v146, &unk_1006B0120), v148 != 1))
  {
    [v114 addSubview:*&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_playerView]];
    sub_10018691C();
  }

  else
  {
    [v114 addSubview:v151];
    sub_100185BAC(v145);
  }

  v149 = v154;

  sub_100012DF0(v145, &unk_1006B4D70);
  return sub_100012DF0(v149, &qword_1006B4DB8);
}

void sub_100182CE0(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSNumberFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v47 = v6;
  [v6 setLocale:isa];

  v46 = [objc_allocWithZone(NSMutableAttributedString) init];
  v8 = [objc_opt_self() mainBundle];
  v51._object = 0x8000000100579A00;
  v9._countAndFlagsBits = 0xD000000000000024;
  v9._object = 0x8000000100583670;
  v10.value._object = 0x80000001005799E0;
  v51._countAndFlagsBits = 0xD000000000000018;
  v10.value._countAndFlagsBits = 0xD000000000000013;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v51);
  countAndFlagsBits = v12._countAndFlagsBits;
  object = v12._object;

  sub_10007EBC0(&qword_1006B4DE0);
  inited = swift_initStackObject();
  v48 = xmmword_100552220;
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = NSFontAttributeName;
  v14 = objc_opt_self();
  v15 = NSFontAttributeName;
  *(inited + 40) = [v14 preferredFontForTextStyle:UIFontTextStyleBody];
  v44 = sub_100153B58(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B4DE8);
  v16 = swift_initStackObject();
  *(v16 + 16) = v48;
  *(v16 + 32) = v15;
  v17 = [v14 preferredFontForTextStyle:UIFontTextStyleBody];
  v18 = sub_100039388(2);

  *(v16 + 40) = v18;
  v43 = sub_100153B58(v16);
  swift_setDeallocating();
  sub_100012DF0(v16 + 32, &qword_1006B4DE8);
  v19 = *(a1 + 16);
  if (v19)
  {
    v41 = -v19;
    v20 = (a1 + 40);
    v21 = 1;
    do
    {
      v36 = *v20;
      *&v48 = *(v20 - 1);

      v37 = Int._bridgeToObjectiveC()().super.super.isa;
      v38 = [v47 stringForObjectValue:v37];

      if (v38)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v49 = v22;
      v50 = v24;

      v25._countAndFlagsBits = countAndFlagsBits;
      v25._object = object;
      String.append(_:)(v25);

      sub_1000F0E48(v43);
      v26 = objc_allocWithZone(NSMutableAttributedString);
      v27 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100003FB4(&qword_1006AF370, type metadata accessor for Key);
      v28 = Dictionary._bridgeToObjectiveC()().super.isa;

      v29 = [v26 initWithString:v27 attributes:v28];

      v49 = v48;
      v50 = v36;

      v30._countAndFlagsBits = 10;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);

      sub_1000F0E48(v44);
      v31 = objc_allocWithZone(NSMutableAttributedString);
      v32 = String._bridgeToObjectiveC()();

      v33 = Dictionary._bridgeToObjectiveC()().super.isa;

      v34 = [v31 initWithString:v32 attributes:v33];

      v35 = [objc_allocWithZone(NSMutableAttributedString) init];
      [v35 appendAttributedString:v29];
      [v35 appendAttributedString:v34];
      [v46 appendAttributedString:v35];

      ++v21;
      v20 += 2;
    }

    while (v41 + v21 != 1);
  }

  v39 = v46;
  [v40 setAttributedText:v46];
}

void sub_1001832C8()
{
  v1 = type metadata accessor for FMItemCapabilities();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for FMIPUnknownItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v29 = v12;
  v30 = v0;
  v28 = v13;
  v13(v11, v0 + v12, v8);
  FMIPUnknownItem.capabilities.getter();
  v27 = *(v9 + 8);
  v27(v11, v8);
  static FMItemCapabilities.canBLELookup.getter();
  sub_100003FB4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v2 + 8);
  v15(v5, v1);
  v15(v7, v1);
  if (v14)
  {
    v16 = v30;
    if (*(v30 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_showDisableInfo) == 1)
    {
      v28(v11, v30 + v29, v8);
      My = FMIPUnknownItem.isFindMyNetwork.getter();
      v27(v11, v8);
      v18 = &selRef_continueOnDisableWebsiteAction;
      if (My)
      {
        v18 = &selRef_doneAction;
      }
    }

    else
    {
      v18 = &selRef_continueOnWebsiteAction;
    }

    v26 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v16 action:*v18];
    [*(v16 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton) addGestureRecognizer:v26];
  }

  else
  {
    v19 = v30;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100005B4C(0x7365477075746573, 0xEF29287365727574, &v31);
      _os_log_impl(&_mh_execute_header, v21, v22, "FMUTAccessoryInformationViewController: %s Not supporting BLE Lookup. Adding Done action.", v23, 0xCu);
      sub_100006060(v24);
    }

    v25 = *(v19 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton);
    v26 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"doneAction"];
    [v25 addGestureRecognizer:v26];
  }
}

void sub_100183730()
{
  v1 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v1 - 8);
  v207 = &v205 - v2;
  *&v213 = type metadata accessor for FMIPUnknownItem();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v211 = &v205 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEC30 != -1)
  {
LABEL_24:
    swift_once();
  }

  v4 = *&qword_1006D4798;
  v224 = sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005568E0;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_titleLabel];
  *(inited + 32) = v6;
  *&v218 = inited + 32;
  v215 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel];
  *(inited + 40) = v7;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollView];
  *(inited + 48) = v8;
  v9 = v0;
  v10 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollContentView];
  *(inited + 56) = v10;
  v217 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_footnoteLabel;
  v11 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_footnoteLabel];
  *(inited + 64) = v11;
  v12 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImageView];
  *(inited + 72) = v12;
  v13 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_backgroundView];
  *(inited + 80) = v13;
  v0 = *&v0[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton];
  *(inited + 88) = v0;
  v221 = *&v9[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView];
  *(inited + 96) = v221;
  v219 = v9;
  v222 = *&v9[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_playerView];
  *(inited + 104) = v222;
  v214 = v6;
  v14 = v7;
  v220 = v8;
  v223 = v10;
  v15 = v11;
  v209 = v12;
  v208 = v13;
  v216 = v0;
  v210 = v221;
  v16 = v222;
  for (i = 4; i != 14; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((i - 4) >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v18 = *(inited + 8 * i);
    }

    v19 = v18;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v206 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = swift_allocObject();
  v218 = xmmword_100552EF0;
  *(v20 + 16) = xmmword_100552EF0;
  v21 = v220;
  v22 = [v220 topAnchor];
  v23 = v219;
  v24 = [v219 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_26;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v22 constraintEqualToAnchor:v26];
  *(v20 + 32) = v27;
  v28 = [v21 leadingAnchor];
  v29 = [v23 view];
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v29;
  v31 = [v29 safeAreaLayoutGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v28 constraintEqualToAnchor:v32];

  *(v20 + 40) = v33;
  v34 = [v21 trailingAnchor];
  v35 = [v23 view];
  if (!v35)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = v21;
  v38 = objc_opt_self();
  v39 = [v36 safeAreaLayoutGuide];

  v40 = [v39 trailingAnchor];
  v41 = [v34 constraintEqualToAnchor:v40];

  *(v20 + 48) = v41;
  v42 = sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100552F00;
  v45 = v223;
  v46 = [v223 topAnchor];
  v47 = [v37 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v44 + 32) = v48;
  v49 = [v45 bottomAnchor];
  v50 = [v37 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v44 + 40) = v51;
  v52 = [v45 leadingAnchor];
  v53 = [v37 safeAreaLayoutGuide];
  v54 = [v53 leadingAnchor];

  v55 = [v52 constraintEqualToAnchor:v54];
  *(v44 + 48) = v55;
  v56 = [v45 trailingAnchor];
  v57 = [v37 safeAreaLayoutGuide];
  v58 = [v57 trailingAnchor];

  v59 = [v56 constraintEqualToAnchor:v58];
  *(v44 + 56) = v59;
  v60 = [v45 heightAnchor];
  v61 = [v60 constraintGreaterThanOrEqualToConstant:480.0];

  *(v44 + 64) = v61;
  v221 = v42;
  v62 = Array._bridgeToObjectiveC()().super.isa;

  v222 = v38;
  [v38 activateConstraints:v62];

  v63 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  v64 = v219;
  swift_beginAccess();
  v65 = v212;
  v66 = &v64[v63];
  v67 = v211;
  v68 = v213;
  (v212)[2](v211, v66, v213);
  LOBYTE(v62) = FMIPUnknownItem.isAppleAudioAccessory.getter();
  (v65[1])(v67, v68);
  if ((v62 & 1) != 0 && (v69 = v207, sub_100189B48(v207), v70 = type metadata accessor for URL(), v71 = (*(*(v70 - 8) + 48))(v69, 1, v70), sub_100012DF0(v69, &unk_1006B0120), v71 != 1))
  {
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1005521F0;
    v94 = v206;
    v101 = [v206 heightAnchor];
    v102 = [v101 constraintEqualToConstant:240.0];

    *(v100 + 32) = v102;
    v103 = [v94 widthAnchor];
    v104 = [v94 heightAnchor];
    v105 = [v103 constraintEqualToAnchor:v104];

    *(v100 + 40) = v105;
    v106 = [v94 centerXAnchor];
    v107 = [v45 centerXAnchor];
    v108 = [v106 constraintEqualToAnchor:v107];

    *(v100 + 48) = v108;
    v98 = (v100 + 56);
    v99 = 32.0;
    v91 = v94;
  }

  else
  {
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100555120;
    v73 = v209;
    v74 = [v209 centerXAnchor];
    v75 = [v45 centerXAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];

    *(v72 + 32) = v76;
    v77 = [v73 heightAnchor];
    v78 = [v77 constraintEqualToConstant:160.0];

    *(v72 + 40) = v78;
    v79 = [v73 topAnchor];
    v80 = [v45 safeAreaLayoutGuide];
    v81 = [v80 topAnchor];

    v82 = [v79 constraintEqualToAnchor:v81 constant:32.0];
    *(v72 + 48) = v82;
    v83 = v208;
    v84 = [v208 heightAnchor];
    v85 = [v84 constraintEqualToConstant:180.0];

    *(v72 + 56) = v85;
    v86 = [v83 leadingAnchor];
    v87 = v220;
    v88 = [v220 safeAreaLayoutGuide];
    v89 = [v88 leadingAnchor];

    v90 = [v86 constraintEqualToAnchor:v89 constant:20.0];
    *(v72 + 64) = v90;
    v91 = v83;
    v92 = [v83 trailingAnchor];
    v93 = v87;
    v94 = v73;
    v95 = [v93 safeAreaLayoutGuide];
    v96 = [v95 trailingAnchor];

    v97 = [v92 constraintEqualToAnchor:v96 constant:-20.0];
    *(v72 + 72) = v97;
    v98 = (v72 + 80);
    v99 = 22.0;
  }

  v109 = [v91 topAnchor];
  v110 = [v223 safeAreaLayoutGuide];
  v111 = [v110 topAnchor];

  v112 = [v109 constraintEqualToAnchor:v111 constant:v99];
  *v98 = v112;
  v113 = Array._bridgeToObjectiveC()().super.isa;

  [v222 activateConstraints:v113];

  v114 = [v94 bottomAnchor];
  v115 = swift_allocObject();
  *(v115 + 16) = v218;
  v116 = v114;
  v117 = v214;
  v118 = [v214 leadingAnchor];
  v119 = v223;
  v120 = [v223 layoutMarginsGuide];
  v121 = [v120 leadingAnchor];

  v122 = [v118 constraintEqualToAnchor:v121 constant:4.0];
  *(v115 + 32) = v122;
  v123 = [v117 trailingAnchor];
  v124 = [v119 layoutMarginsGuide];
  v125 = [v124 trailingAnchor];

  v126 = [v123 constraintEqualToAnchor:v125 constant:-4.0];
  *(v115 + 40) = v126;
  v127 = [v117 topAnchor];
  v128 = [v127 constraintEqualToAnchor:v116 constant:64.0];

  v212 = v116;
  *(v115 + 48) = v128;
  v129 = Array._bridgeToObjectiveC()().super.isa;

  [v222 activateConstraints:v129];

  v130 = swift_allocObject();
  v213 = xmmword_1005521F0;
  *(v130 + 16) = xmmword_1005521F0;
  v131 = v219;
  v132 = v215;
  v133 = [*&v219[v215] topAnchor];
  v134 = [v117 bottomAnchor];
  v135 = [v133 constraintEqualToAnchor:v134 constant:8.0];

  *(v130 + 32) = v135;
  v136 = [*&v131[v132] leadingAnchor];
  v137 = v223;
  v138 = [v223 layoutMarginsGuide];
  v139 = [v138 leadingAnchor];

  v140 = [v136 constraintEqualToAnchor:v139 constant:4.0];
  *(v130 + 40) = v140;
  v141 = [*&v131[v132] trailingAnchor];
  v142 = [v137 layoutMarginsGuide];
  v143 = [v142 trailingAnchor];

  v144 = [v141 constraintEqualToAnchor:v143 constant:-4.0];
  *(v130 + 48) = v144;
  v145 = [*&v131[v132] bottomAnchor];
  v146 = [v137 layoutMarginsGuide];
  v147 = [v146 bottomAnchor];

  v148 = [v145 constraintLessThanOrEqualToAnchor:v147];
  *(v130 + 56) = v148;
  v149 = Array._bridgeToObjectiveC()().super.isa;

  [v222 activateConstraints:v149];

  v150 = swift_allocObject();
  *(v150 + 16) = v213;
  v151 = v216;
  v152 = [v216 leadingAnchor];
  v153 = [v131 view];
  if (!v153)
  {
    goto LABEL_28;
  }

  v154 = v153;
  v155 = [v153 layoutMarginsGuide];

  v156 = [v155 leadingAnchor];
  v157 = [v152 constraintEqualToAnchor:v156 constant:4.0];

  *(v150 + 32) = v157;
  v158 = [v151 trailingAnchor];
  v159 = [v131 view];
  v160 = v217;
  if (!v159)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v161 = v159;
  v162 = [v159 layoutMarginsGuide];

  v163 = [v162 trailingAnchor];
  v164 = [v158 constraintEqualToAnchor:v163 constant:-4.0];

  *(v150 + 40) = v164;
  v165 = [v151 bottomAnchor];
  v166 = [*&v131[v160] topAnchor];
  v167 = [v165 constraintEqualToAnchor:v166 constant:-v4];

  *(v150 + 48) = v167;
  v168 = [v151 topAnchor];
  v169 = [v220 bottomAnchor];
  v170 = [v168 constraintEqualToAnchor:v169 constant:v4];

  *(v150 + 56) = v170;
  *&v131[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonShowingConstraints] = v150;

  v171 = swift_allocObject();
  *(v171 + 16) = v218;
  v172 = v210;
  v173 = [v210 centerXAnchor];
  v174 = [v131 view];
  if (!v174)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v175 = v174;
  v176 = [v174 centerXAnchor];

  v177 = [v173 constraintEqualToAnchor:v176];
  *(v171 + 32) = v177;
  v178 = [v172 bottomAnchor];
  v179 = v217;
  v180 = [*&v131[v217] topAnchor];
  v181 = [v178 constraintEqualToAnchor:v180 constant:-v4];

  *(v171 + 40) = v181;
  v182 = [v172 topAnchor];
  v183 = [v220 bottomAnchor];
  v184 = [v182 constraintEqualToAnchor:v183 constant:v4];

  *(v171 + 48) = v184;
  *&v131[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonHiddenConstraints] = v171;

  v185 = swift_allocObject();
  *(v185 + 16) = v218;
  v186 = [*&v131[v179] bottomAnchor];
  v187 = [v131 view];
  if (!v187)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v188 = v187;
  v189 = [v187 safeAreaLayoutGuide];

  v190 = [v189 bottomAnchor];
  v191 = [v186 constraintEqualToAnchor:v190 constant:-20.0];

  *(v185 + 32) = v191;
  v192 = [*&v131[v179] leadingAnchor];
  v193 = [v131 view];
  if (!v193)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v194 = v193;
  v195 = [v193 layoutMarginsGuide];

  v196 = [v195 leadingAnchor];
  v197 = [v192 constraintEqualToAnchor:v196 constant:4.0];

  *(v185 + 40) = v197;
  v198 = [*&v131[v179] trailingAnchor];
  v199 = [v131 view];
  if (v199)
  {
    v200 = v199;
    v201 = [v199 layoutMarginsGuide];

    v202 = [v201 trailingAnchor];
    v203 = [v198 constraintEqualToAnchor:v202 constant:-4.0];

    *(v185 + 48) = v203;
    v204 = Array._bridgeToObjectiveC()().super.isa;

    [v222 activateConstraints:v204];

    sub_10018859C();
    return;
  }

LABEL_33:
  __break(1u);
}

id sub_10018504C(const char *a1)
{
  v3 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

void sub_10018519C()
{
  v1 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMUTAccessoryInformationViewController: Continue on Website Button Pressed", v11, 2u);
  }

  v12 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_nfcURL;
  swift_beginAccess();
  sub_100007204(v0 + v12, v3, &unk_1006B0120);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100012DF0(v3, &unk_1006B0120);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMUTAccessoryInformationViewController: No URL information found", v15, 2u);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v18 = v16;
      URL._bridgeToObjectiveC()(v17);
      v20 = v19;
      sub_1000070D4(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v18 openSensitiveURL:v20 withOptions:isa];
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_100185558()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPUnknownItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B4DB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_10007EBC0(&unk_1006B4D70);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for URL();
  v43 = *(v15 - 8);
  v44 = v15;
  __chkstk_darwin(v15);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v42 = sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMUTAccessoryInformationViewController: Continue on Disable Website Button Pressed", v20, 2u);
  }

  v21 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v21, v2);
  FMIPUnknownItem.utMetadata.getter();
  (*(v3 + 8))(v5, v2);
  v22 = type metadata accessor for FMIPUnknownItemUTMetadata();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    v24 = &qword_1006B4DB8;
    v25 = v8;
LABEL_9:
    sub_100012DF0(v25, v24);
    (*(v43 + 56))(v14, 1, 1, v44);
LABEL_10:
    sub_100012DF0(v14, &unk_1006B0120);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "FMUTAccessoryInformationViewController: No URL information found", v30, 2u);
    }

    return;
  }

  FMIPUnknownItemUTMetadata.disableInfo.getter();
  (*(v23 + 8))(v8, v22);
  v26 = type metadata accessor for FMIPUnknownItemProductMetadata();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    v24 = &unk_1006B4D70;
    v25 = v11;
    goto LABEL_9;
  }

  FMIPUnknownItemProductMetadata.disableURL.getter();
  (*(v27 + 8))(v11, v26);
  v32 = v43;
  v31 = v44;
  if ((*(v43 + 48))(v14, 1, v44) == 1)
  {
    goto LABEL_10;
  }

  v33 = v41;
  (*(v32 + 32))(v41, v14, v31);
  v34 = [objc_opt_self() defaultWorkspace];
  if (v34)
  {
    v36 = v34;
    URL._bridgeToObjectiveC()(v35);
    v38 = v37;
    sub_1000070D4(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v36 openSensitiveURL:v38 withOptions:isa];
  }

  (*(v32 + 8))(v33, v31);
}

uint64_t sub_100185BAC(uint64_t a1)
{
  v48 = a1;
  v2 = sub_10007EBC0(&unk_1006B4D70);
  v47 = *(v2 - 8);
  v46 = *(v47 + 64);
  __chkstk_darwin(v2 - 8);
  v45 = v37 - v3;
  v4 = sub_10007EBC0(&qword_1006BF780);
  __chkstk_darwin(v4 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for FMIPUnknownItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&unk_1006B4D80);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  __chkstk_darwin(v11);
  v38 = v37 - v13;
  v14 = sub_10007EBC0(&unk_1006C3980);
  v15 = *(v14 - 8);
  v43 = v14;
  v44 = v15;
  __chkstk_darwin(v14);
  v40 = v37 - v16;
  v17 = *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_showDisableInfo);
  v18 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  v19 = *(v8 + 16);
  v39 = v1;
  v19(v10, v1 + v18, v7);

  if (v17)
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  v21 = sub_1001AFD50(v10, v20);
  v37[1] = v21;

  (*(v8 + 8))(v10, v7);
  v49 = *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_updateQueue);
  v22 = v49;
  v50 = v21;
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v37[0] = v22;
  sub_10007EBC0(&unk_1006B4D90);
  sub_10000905C(0, &qword_1006AEDC0);
  sub_100004098(&qword_1006B7800, &unk_1006B4D90);
  sub_10018B6D4();
  v25 = v38;
  Publisher.subscribe<A>(on:options:)();
  sub_100012DF0(v6, &qword_1006BF780);

  v26 = static OS_dispatch_queue.main.getter();
  v50 = v26;
  v24(v6, 1, 1, v23);
  sub_100004098(&unk_1006C3990, &unk_1006B4D80);
  v28 = v40;
  v27 = v41;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v6, &qword_1006BF780);

  (*(v42 + 8))(v25, v27);
  v29 = swift_allocObject();
  v30 = v39;
  swift_unknownObjectWeakInit();
  v31 = v45;
  sub_100007204(v48, v45, &unk_1006B4D70);
  v32 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  sub_100035318(v31, v33 + v32, &unk_1006B4D70);
  sub_100004098(&qword_1006B4DB0, &unk_1006C3980);
  v34 = v43;
  v35 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v44 + 8))(v28, v34);
  *(v30 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_imageFetchCancellable) = v35;
}

void sub_1001861FC(void **a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v4 = sub_10007EBC0(&unk_1006B4D70);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v75 - v8;
  v9 = type metadata accessor for FMItemCapabilities();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v75 - v14;
  v16 = type metadata accessor for FMIPUnknownItem();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v76 = v7;
    v22 = *(Strong + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImage);
    *(Strong + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImage) = v20;
    v23 = Strong;
    v24 = v20;

    v75 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImageView;
    [*&v23[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImageView] setImage:v24];

    v25 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
    swift_beginAccess();
    v26 = *(v17 + 16);
    v77 = v23;
    v26(v19, &v23[v25], v16);
    FMIPUnknownItem.capabilities.getter();
    (*(v17 + 8))(v19, v16);
    static FMItemCapabilities.canBLELookup.getter();
    sub_100003FB4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
    v27 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v28 = *(v10 + 8);
    v28(v13, v9);
    v28(v15, v9);
    if (v27)
    {
      v30 = v78;
      v29 = v79;
      sub_100007204(v79, v78, &unk_1006B4D70);
      v31 = type metadata accessor for FMIPUnknownItemProductMetadata();
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);
      if (v33(v30, 1, v31) == 1)
      {

        sub_100012DF0(v30, &unk_1006B4D70);
        return;
      }

      v39 = COERCE_DOUBLE(FMIPUnknownItemProductMetadata.heatzonePercentX.getter());
      v41 = v40;
      v42 = *(v32 + 8);
      v42(v30, v31);
      if (v41)
      {
        goto LABEL_12;
      }

      v43 = v29;
      v44 = v76;
      sub_100007204(v43, v76, &unk_1006B4D70);
      if (v33(v44, 1, v31) == 1)
      {

        sub_100012DF0(v44, &unk_1006B4D70);
        return;
      }

      v45 = COERCE_DOUBLE(FMIPUnknownItemProductMetadata.heatzonePercentY.getter());
      v47 = v46;
      v42(v44, v31);
      if (v47)
      {
LABEL_12:

        return;
      }

      v48 = v77;
      if (v39 < 0.0 || v39 > 1.0 || (v49 = v45, v45 < 0.0) || v45 > 1.0)
      {

        return;
      }

      v50 = v75;
      [*&v77[v75] setNeedsLayout];
      [*&v48[v50] layoutIfNeeded];
      v51 = *&v48[v50];
      [v24 size];
      v53 = v52;
      v55 = v54;
      [v51 bounds];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v81.width = v53;
      v81.height = v55;
      v86.origin.x = v57;
      v86.origin.y = v59;
      v86.size.width = v61;
      v86.size.height = v63;
      v82 = AVMakeRectWithAspectRatioInsideRect(v81, v86);
      x = v82.origin.x;
      y = v82.origin.y;
      width = v82.size.width;
      height = v82.size.height;
      v68 = CGRectGetWidth(v82) * v39;
      v83.origin.x = x;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      v69 = v68 + CGRectGetMinX(v83);
      v84.origin.x = x;
      v84.origin.y = y;
      v84.size.width = width;
      v84.size.height = height;
      v70 = CGRectGetHeight(v84) * v49;
      v85.origin.x = x;
      v85.origin.y = y;
      v85.size.width = width;
      v85.size.height = height;
      MinY = CGRectGetMinY(v85);
      v72 = sub_10018B7BC(v69, v70 + MinY, 20.0);
      v73 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_heatZone;
      v74 = *&v48[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_heatZone];
      *&v48[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_heatZone] = v72;

      v35 = [*&v48[v50] layer];
      [v35 addSublayer:*&v48[v73]];
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100005B14(v34, qword_1006D4630);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v80 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_100005B4C(0xD000000000000025, 0x8000000100583580, &v80);
        _os_log_impl(&_mh_execute_header, v35, v36, "FMUTAccessoryInformationViewController: %s Not supporting BLE Lookup. Skip adding heatZone.", v37, 0xCu);
        sub_100006060(v38);
      }
    }
  }
}

void sub_10018691C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - v10;
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = sub_100189990();
  v16 = v15;
  v17 = [objc_opt_self() mainBundle];
  v38 = v14;
  v39 = v16;
  v18._countAndFlagsBits = 0x6D7473756A64415FLL;
  v18._object = 0xEC00000073746E65;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();
  v21 = [v17 URLForResource:v19 withExtension:v20];

  if (v21)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v6 + 32);
    v22(v13, v11, v5);
    sub_100189B48(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      (*(v6 + 8))(v13, v5);
      sub_100012DF0(v4, &unk_1006B0120);
    }

    else
    {
      v23 = v37;
      v22(v37, v4, v5);
      v24 = objc_allocWithZone(SFMediaPlayerItem);
      URL._bridgeToObjectiveC()(v25);
      v27 = v26;
      v28 = [v24 initWithURL:v26];

      [v28 setShouldLoop:1];
      v29 = [v1 traitCollection];
      v30 = [v29 userInterfaceStyle];

      if (v30 == 2)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      v32 = *&v1[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_playerView];
      URL._bridgeToObjectiveC()(OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_playerView);
      v34 = v33;
      [v32 updateViewForAssetType:v31 adjustmentsURL:v33];

      [v32 addMovieItem:v28];
      [v32 play];

      v35 = *(v6 + 8);
      v35(v23, v5);
      v35(v13, v5);
    }
  }
}

void sub_100186CEC(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for FMItemCapabilities();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  v15 = *(v11 + 16);
  v36 = v2;
  v16 = v2 + v14;
  v17 = v15;
  v15(v13, v16, v10);
  FMIPUnknownItem.capabilities.getter();
  (*(v11 + 8))(v13, v10);
  static FMItemCapabilities.canBLELookup.getter();
  sub_100003FB4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  LOBYTE(v14) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18 = *(v4 + 8);
  v18(v7, v3);
  v18(v9, v3);
  if (v14)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "FMUTAccessoryInformationViewController: Start scanning for encrypted payload", v22, 2u);
    }

    if (*(v36 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_findUnknownItem) != 1)
    {
      v17(v13, v35, v10);
      type metadata accessor for FMIPFetchEncryptedPayloadAction();
      swift_allocObject();
      v30 = FMIPFetchEncryptedPayloadAction.init(unknownItem:)();
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1000D6870(v30, sub_10018A820, v31);

      goto LABEL_16;
    }

    if (*(v36 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownAccessoryDiscoveryController))
    {

      v23 = FMIPUnknownItem.unknownBeacon.getter();
      if (v23)
      {
        v24 = v23;
        swift_allocObject();
        swift_unknownObjectWeakInit();

        dispatch thunk of FMIPUnknownAccessoryDiscoveryController.initiateFetchEncryptedPayloadForUnknownBeacon(beacon:completion:)();

LABEL_16:

        return;
      }
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "FMUTAccessoryInformationViewController: fetching encrypted payload completed with error, insuffienct beacon information.", v34, 2u);
    }

    sub_10018AD28();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100005B4C(0xD000000000000027, 0x8000000100583550, &v37);
      _os_log_impl(&_mh_execute_header, v26, v27, "FMUTAccessoryInformationViewController: %s Not supporting BLE Lookup. Not fetching encrypted payload.", v28, 0xCu);
      sub_100006060(v29);
    }
  }
}

uint64_t sub_1001872D8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v34 = v6;
  v35 = v7;
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B4D50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = v29 - v13;
  v33 = sub_10000905C(0, &qword_1006AEDC0);
  v31 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v32 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_100007204(v30, v14, &qword_1006B4D50);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  sub_100035318(v14, v18 + v17, &qword_1006B4D50);
  *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v41 = sub_10018B3F4;
  v42 = v18;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100004AE4;
  v40 = &unk_10062AED0;
  v19 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v30 = sub_100003FB4(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  v29[1] = sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  v21 = *(v36 + 8);
  v36 += 8;
  v21(v5, v3);
  v22 = v34;
  v23 = *(v35 + 8);
  v35 += 8;
  v23(v9, v34);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v41 = sub_10018BA50;
  v42 = v25;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100004AE4;
  v40 = &unk_10062AEF8;
  v27 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  v21(v5, v3);
  return (v23)(v9, v22);
}

void sub_100187848(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for FMIPAccessoryError();
  v54 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v55 = &v51 - v7;
  __chkstk_darwin(v6);
  v9 = &v51 - v8;
  v10 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v10 - 8);
  v53 = (&v51 - v11);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007EBC0(&qword_1006B4D50);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  sub_100007204(a1, &v51 - v17, &qword_1006B4D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v54;
    (*(v54 + 32))(v9, v18, v3);
    v20 = v9;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = *(v19 + 16);
    v23 = v55;
    v22(v55, v20, v3);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v53 = v22;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v51 = v20;
      v28 = v3;
      v29 = v27;
      v30 = swift_slowAlloc();
      v57[0] = v30;
      *v29 = 136315138;
      v22(v52, v23, v3);
      v31 = String.init<A>(describing:)();
      v32 = v23;
      v33 = v31;
      v34 = v19;
      v36 = v35;
      v37 = *(v34 + 8);
      v37(v32, v28);
      v38 = sub_100005B4C(v33, v36, v57);

      *(v29 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMUTAccessoryInformationViewController: fetching encrypted payload completed with error %s", v29, 0xCu);
      sub_100006060(v30);

      v3 = v28;
      v20 = v51;
    }

    else
    {

      v37 = *(v19 + 8);
      v37(v23, v3);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_100003FB4(&qword_1006B4D58, &type metadata accessor for FMIPAccessoryError);
      swift_allocError();
      v53(v50, v20, v3);
      sub_10018AD28();
    }

    v37(v20, v3);
  }

  else
  {
    v39 = *(v13 + 32);
    v39(v15, v18, v12);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "FMUTAccessoryInformationViewController: fetching encrypted payload completed successfully", v43, 2u);
    }

    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      v45 = v44;
      v46 = v53;
      v39(v53, v15, v12);
      (*(v13 + 56))(v46, 0, 1, v12);
      v47 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_nfcURL;
      swift_beginAccess();
      sub_10018B48C(v46, v45 + v47);
      swift_endAccess();
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }
  }
}

void sub_100187EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v54 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v13 - 8);
  v15 = v48 - v14;
  v16 = type metadata accessor for FMIPItemActionStatus();
  __chkstk_darwin(v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_errorRetain();
      sub_10018AD28();
    }
  }

  else
  {
    v22 = v17;
    v48[0] = v15;
    v48[1] = a4;
    v49 = v12;
    v50 = v8;
    v52 = v6;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    (*(v22 + 16))(v19, v54, v16);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v10;
    v51 = v9;
    if (v26)
    {
      v28 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v28 = 136315394;
      sub_100003FB4(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v22 + 8))(v19, v16);
      v32 = sub_100005B4C(v29, v31, aBlock);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      aBlock[9] = 0;
      sub_10007EBC0(&qword_1006B9570);
      v33 = String.init<A>(describing:)();
      v35 = sub_100005B4C(v33, v34, aBlock);

      *(v28 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMUTAccessoryInformationViewController: fetching encrypted payload completed with status: %s, and error %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v22 + 8))(v19, v16);
    }

    v36 = v53;
    v37 = v48[0];
    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    v40 = v49;
    v39 = v50;
    if (v38)
    {
      v41 = v38;
      sub_100007204(v36, v37, &unk_1006B0120);
      v42 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_nfcURL;
      swift_beginAccess();
      sub_10018B48C(v37, v41 + v42);
      swift_endAccess();
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v43 = static OS_dispatch_queue.main.getter();
    v44 = swift_allocObject();
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_10018BA50;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10062AFC0;
    v46 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100003FB4(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v47 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v46);

    (*(v55 + 8))(v39, v47);
    (*(v27 + 8))(v40, v51);
  }
}

void sub_10018859C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v64 = &v62 - v3;
  v4 = type metadata accessor for FMItemCapabilities();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v62 - v9;
  v11 = type metadata accessor for FMIPUnknownItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  v65 = *(v12 + 16);
  v66 = v15;
  v65(v14, v1 + v15, v11);
  FMIPUnknownItem.capabilities.getter();
  v16 = *(v12 + 8);
  v67 = v11;
  v63 = v16;
  v16(v14, v11);
  static FMItemCapabilities.canBLELookup.getter();
  sub_100003FB4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  LOBYTE(v15) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v10, v4);
  if (v15)
  {
    v18 = v1;
    if (*(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_showDisableInfo) == 1)
    {
      v19 = objc_opt_self();
      sub_10000905C(0, &qword_1006B3A70);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v19 activateConstraints:isa];

      v21 = Array._bridgeToObjectiveC()().super.isa;

      [v19 deactivateConstraints:v21];

      v22 = *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton);
      [v22 setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView) setHidden:1];
      v23 = v67;
      v65(v14, v18 + v66, v67);
      LOBYTE(v19) = FMIPUnknownItem.isFindMyNetwork.getter();
      v63(v14, v23);
      v24 = [objc_opt_self() mainBundle];
      if (v19)
      {
        v25 = ".utaccessory.updateQueue";
        v61 = 0x8000000100579A00;
        v26 = 0xD00000000000001ELL;
      }

      else
      {
        v25 = "updateActionButton()";
        v61 = 0x8000000100579A00;
        v26 = 0xD00000000000002FLL;
      }

      v54 = v25 | 0x8000000000000000;
      v55 = 0x80000001005799E0;
      v56 = 0xD000000000000018;
    }

    else
    {
      v45 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_nfcURL;
      swift_beginAccess();
      v46 = v1 + v45;
      v47 = v64;
      sub_100007204(v46, v64, &unk_1006B0120);
      v48 = type metadata accessor for URL();
      v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
      sub_100012DF0(v47, &unk_1006B0120);
      v50 = objc_opt_self();
      sub_10000905C(0, &qword_1006B3A70);
      if (v49 == 1)
      {

        v51 = Array._bridgeToObjectiveC()().super.isa;

        [v50 activateConstraints:v51];

        v52 = Array._bridgeToObjectiveC()().super.isa;

        [v50 deactivateConstraints:v52];

        v22 = *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton);
        [v22 setHidden:1];
        v53 = *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView);
        [v53 setHidden:0];
        [*&v53[OBJC_IVAR____TtC6FindMy13FMWaitingView_activityIndicator] startAnimating];
LABEL_16:
        v39 = *&v22[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
        v44 = String._bridgeToObjectiveC()();
        goto LABEL_17;
      }

      v57 = Array._bridgeToObjectiveC()().super.isa;

      [v50 activateConstraints:v57];

      v58 = Array._bridgeToObjectiveC()().super.isa;

      [v50 deactivateConstraints:v58];

      v22 = *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton);
      [v22 setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView) setHidden:1];
      v24 = [objc_opt_self() mainBundle];
      v61 = 0x8000000100579A00;
      v26 = 0xD00000000000002FLL;
      v54 = 0x8000000100583520;
      v55 = 0x80000001005799E0;
      v56 = 0xD000000000000018;
    }

    v59 = 0xD000000000000013;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v26, *(&v55 - 1), v24, v60, *(&v61 - 1));

    goto LABEL_16;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100005B14(v27, qword_1006D4630);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = v1;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100005B4C(0xD000000000000014, 0x8000000100583500, v68);
    sub_100006060(v32);
  }

  v33 = objc_opt_self();
  sub_10000905C(0, &qword_1006B3A70);

  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:v34];

  v35 = Array._bridgeToObjectiveC()().super.isa;

  [v33 deactivateConstraints:v35];

  v36 = *(v30 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton);
  [v36 setHidden:0];
  [*(v30 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView) setHidden:1];
  v37 = *&v36[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 mainBundle];
  v69._object = 0x8000000100579A00;
  v41._countAndFlagsBits = 0xD00000000000001ELL;
  v41._object = 0x80000001005834E0;
  v42.value._object = 0x80000001005799E0;
  v69._countAndFlagsBits = 0xD000000000000018;
  v42.value._countAndFlagsBits = 0xD000000000000013;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v69);

  v44 = String._bridgeToObjectiveC()();
LABEL_17:

  [v39 setText:v44];
}

uint64_t sub_100188FF0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v41 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B77D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - v15;
  __chkstk_darwin(v14);
  v47 = &v34 - v17;
  v18 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  v19 = *(v11 + 16);
  v38 = v0;
  v19(v16, v0 + v18, v10);

  FMIPUnknownItem.identifier.getter();
  v20 = *(v11 + 8);
  v37 = v11 + 8;
  v36 = v20;
  v20(v16, v10);
  v21 = FMIPManager.unknownItems.getter();
  v49 = v6;
  v22 = sub_100104884(sub_10017014C, v48, v21);
  if (*(v22 + 16))
  {
    v19(v9, v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v11 + 56))(v9, v23, 1, v10);
  (*(v45 + 8))(v6, v46);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100012DF0(v9, &unk_1006B77D0);
  }

  v25 = v47;
  (*(v11 + 32))(v47, v9, v10);
  v26 = v35;
  v19(v35, v25, v10);
  v27 = v38;
  swift_beginAccess();
  (*(v11 + 40))(v27 + v18, v26, v10);
  swift_endAccess();
  sub_10000905C(0, &qword_1006AEDC0);
  v28 = static OS_dispatch_queue.main.getter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10018A804;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062AE80;
  v30 = _Block_copy(aBlock);

  v31 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100003FB4(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v32 = v41;
  v33 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v43 + 8))(v32, v33);
  (*(v40 + 8))(v31, v42);
  return v36(v47, v10);
}

void sub_1001896BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10018859C();
  }
}

void sub_100189710(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(a2, v5, &unk_1006B0120);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(v5, &unk_1006B0120);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = [objc_opt_self() defaultWorkspace];
    if (v10)
    {
      v12 = v10;
      URL._bridgeToObjectiveC()(v11);
      v14 = v13;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v12 openSensitiveURL:v14 withOptions:isa];
    }

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong parentViewController];

    if (v18)
    {
      [v18 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_100189990()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_showDisableInfo);
  v6 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v6, v1);
  v7 = FMIPUnknownItem.unknownBeacon.getter();
  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    v8 = SPUnknownBeacon.productId.getter();
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 0xEA0000000000656CLL;
  }

  else
  {
    v9 = 0xEC00000065726F4DLL;
  }

  if (v5)
  {
    v10 = 0x62617369445F5455;
  }

  else
  {
    v10 = 0x6E7261654C5F5455;
  }

  v15 = v8;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v11;
  v12._countAndFlagsBits = 95;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v10;
  v13._object = v9;
  String.append(_:)(v13);

  return v16;
}

uint64_t sub_100189B48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100189990();
  v4 = v3;
  v5 = [objc_opt_self() mainBundle];

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (v8)
  {

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = 0;
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sub_100005B4C(v2, v4, &v19);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMUTAccessoryInformationViewController: Unable to find a video asset with name: %s", v13, 0xCu);
      sub_100006060(v14);
    }

    else
    {
    }

    v9 = 1;
  }

  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, v9, 1, v16);
}

id sub_100189DE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMUTAccessoryInformationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMUTAccessoryInformationViewController()
{
  result = qword_1006B4D30;
  if (!qword_1006B4D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018A050()
{
  type metadata accessor for FMIPUnknownItem();
  if (v0 <= 0x3F)
  {
    sub_10018A184();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018A184()
{
  if (!qword_1006B4D40)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B4D40);
    }
  }
}

uint64_t sub_10018A1DC(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10001835C(v4);
}

id sub_10018A204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = v6;
  v43 = a5;
  v44 = a6;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v42 = a1;
  v41 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v13 = &v6[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollHandler];
  *v13 = 0;
  v13[1] = 0;
  v40 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_updateQueue;
  v14 = sub_10000905C(0, &qword_1006AEDC0);
  v39[0] = "actionButtonHiddenConstraints";
  v39[1] = v14;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100003FB4(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
  *&v6[v40] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_titleLabel;
  *&v7[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel;
  *&v7[v16] = [objc_allocWithZone(UILabel) init];
  v17 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollView;
  *&v7[v17] = [objc_allocWithZone(UIScrollView) init];
  v18 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollContentView;
  *&v7[v18] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_cancelButton] = 0;
  v19 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_footnoteLabel;
  *&v7[v19] = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_playerView;
  *&v7[v20] = [objc_allocWithZone(SFMediaPlayerView) init];
  v21 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImageView;
  *&v7[v21] = [objc_allocWithZone(UIImageView) init];
  v22 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_backgroundView;
  *&v7[v22] = [objc_allocWithZone(UIView) init];
  v23 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_heatZone;
  *&v7[v23] = [objc_allocWithZone(CAShapeLayer) init];
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImage] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_imageFetchCancellable] = 0;
  v24 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton;
  v25 = [objc_opt_self() systemBlueColor];
  v26 = objc_allocWithZone(type metadata accessor for FMSingleLinePlatterButton());
  *&v7[v24] = sub_100038758(v25, 1, 0, 1);
  v27 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView;
  *&v7[v27] = [objc_allocWithZone(type metadata accessor for FMWaitingView()) init];
  v28 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_nfcURL;
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 56))(&v7[v28], 1, 1, v29);
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownAccessoryDiscoveryController] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonShowingConstraints] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_devicesSubscription] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_mediator] = v42;
  v30 = v44;
  v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_showDisableInfo] = v43;
  v7[OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_findUnknownItem] = v30;
  v31 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownItem;
  v32 = type metadata accessor for FMIPUnknownItem();
  v33 = *(v32 - 8);
  v34 = v45;
  (*(v33 + 16))(&v7[v31], v45, v32);
  v35 = type metadata accessor for FMUTAccessoryInformationViewController();
  v48.receiver = v7;
  v48.super_class = v35;

  v36 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v37 = String._bridgeToObjectiveC()();

  [v36 setTitle:v37];

  sub_1001815E4();
  sub_1001832C8();
  sub_100183730();

  (*(v33 + 8))(v34, v32);
  return v36;
}

void sub_10018A828()
{
  v1 = v0;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = (v0 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollHandler);
  *v7 = 0;
  v7[1] = 0;
  v25 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_updateQueue;
  v8 = sub_10000905C(0, &qword_1006AEDC0);
  v24[1] = "actionButtonHiddenConstraints";
  v24[2] = v8;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100003FB4(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *(v0 + v25) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_titleLabel;
  *(v0 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_subtitleLabel;
  *(v0 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollView;
  *(v0 + v11) = [objc_allocWithZone(UIScrollView) init];
  v12 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_scrollContentView;
  *(v0 + v12) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_cancelButton) = 0;
  v13 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_footnoteLabel;
  *(v0 + v13) = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_playerView;
  *(v1 + v14) = [objc_allocWithZone(SFMediaPlayerView) init];
  v15 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImageView;
  *(v1 + v15) = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_backgroundView;
  *(v1 + v16) = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_heatZone;
  *(v1 + v17) = [objc_allocWithZone(CAShapeLayer) init];
  *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_productImage) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_imageFetchCancellable) = 0;
  v18 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButton;
  v19 = [objc_opt_self() systemBlueColor];
  v20 = objc_allocWithZone(type metadata accessor for FMSingleLinePlatterButton());
  *(v1 + v18) = sub_100038758(v19, 1, 0, 1);
  v21 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_waitingView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for FMWaitingView()) init];
  v22 = OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_nfcURL;
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_unknownAccessoryDiscoveryController) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonShowingConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_actionButtonHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMUTAccessoryInformationViewController_devicesSubscription) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10018AD28()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0120);
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v5 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v58 = v51 - v7;
  __chkstk_darwin(v6);
  v9 = v51 - v8;
  v10 = type metadata accessor for FMIPAlertType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMNetworkUtil();
  (*(v11 + 104))(v13, enum case for FMIPAlertType.networkIssue(_:), v10);
  v14 = static FMNetworkUtil.relevantNetworkAlert(alertType:)();
  (*(v11 + 8))(v13, v10);
  v55 = v1;
  swift_unknownObjectWeakInit();
  FMIPAlert.title.getter();
  v16 = v15;
  v59 = v14;
  FMIPAlert.message.getter();
  v18 = v17;
  if (v16)
  {
    v19 = String._bridgeToObjectiveC()();

    if (v18)
    {
LABEL_3:
      v20 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  v22 = FMIPAlert.okButtonLabel.getter();
  v24 = v23;
  FMIPAlert.okButtonURL.getter();
  v56 = v21;
  v54 = v3;
  if (v24)
  {
    v25 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v51[1] = v22;
    v27 = Strong;
    swift_unknownObjectWeakInit();

    v28 = v9;
    v52 = v9;
    v29 = v58;
    sub_100007204(v28, v58, &unk_1006B0120);
    v30 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v31 = swift_allocObject();
    sub_100035318(v29, v31 + v30, &unk_1006B0120);
    *(v31 + ((v3 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
    v32 = String._bridgeToObjectiveC()();
    v64 = sub_10018BA68;
    v65 = v31;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100017328;
    v63 = &unk_10062AF98;
    v33 = _Block_copy(&aBlock);

    v34 = [objc_opt_self() actionWithTitle:v32 style:0 handler:v33];
    v35 = v33;
    v21 = v56;
    _Block_release(v35);

    sub_100012DF0(v52, &unk_1006B0120);
    v36 = v21;
    [v36 addAction:v34];
  }

  else
  {
    sub_100012DF0(v9, &unk_1006B0120);
  }

  FMIPAlert.cancelButtonLabel.getter();
  v38 = v37;
  FMIPAlert.cancelButtonURL.getter();
  if (v38)
  {
    v39 = swift_allocObject();
    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v53 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v58;
    sub_100007204(v5, v58, &unk_1006B0120);
    v42 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v43 = (v54 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_100035318(v41, v44 + v42, &unk_1006B0120);
    *(v44 + v43) = v39;
    v45 = String._bridgeToObjectiveC()();
    v64 = sub_10018B4FC;
    v65 = v44;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100017328;
    v63 = &unk_10062AF48;
    v46 = _Block_copy(&aBlock);

    v47 = [objc_opt_self() actionWithTitle:v45 style:1 handler:v46];
    v48 = v46;
    v21 = v56;
    _Block_release(v48);

    sub_100012DF0(v53, &unk_1006B0120);
    v49 = v21;
    [v49 addAction:v47];
  }

  else
  {
    sub_100012DF0(v5, &unk_1006B0120);
  }

  [v55 presentViewController:v21 animated:1 completion:0];

  return swift_unknownObjectWeakDestroy();
}

void sub_10018B3F4()
{
  v1 = *(sub_10007EBC0(&qword_1006B4D50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100187848(v0 + v2, v3);
}

uint64_t sub_10018B48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018B500()
{
  v1 = *(sub_10007EBC0(&unk_1006B0120) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_10018B62C(uint64_t a1)
{
  v3 = *(sub_10007EBC0(&unk_1006B0120) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100189710(a1, v4);
}

unint64_t sub_10018B6D4()
{
  result = qword_1006B4DA0;
  if (!qword_1006B4DA0)
  {
    sub_10000905C(255, &qword_1006AEDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4DA0);
  }

  return result;
}

void sub_10018B73C(void **a1)
{
  v3 = *(sub_10007EBC0(&unk_1006B4D70) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1001861FC(a1, v4, v5);
}

id sub_10018B7BC(double a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = [v6 bezierPathWithArcCenter:1 radius:a1 startAngle:a2 endAngle:a3 clockwise:{0.0, 6.28318531}];
  v8 = [objc_allocWithZone(CAShapeLayer) init];
  v9 = [v7 CGPath];
  [v8 setPath:v9];

  v10 = objc_opt_self();
  v11 = [v10 redColor];
  v12 = [v11 colorWithAlphaComponent:0.25];

  v13 = [v12 CGColor];
  [v8 setFillColor:v13];

  v14 = [v6 bezierPathWithArcCenter:1 radius:a1 startAngle:a2 endAngle:a3 * 0.5 clockwise:{0.0, 6.28318531}];
  v15 = [objc_allocWithZone(CAShapeLayer) init];
  v16 = [v14 CGPath];
  [v15 setPath:v16];

  v17 = [v10 systemDarkRedColor];
  v18 = [v17 colorWithAlphaComponent:0.25];

  v19 = [v18 CGColor];
  [v15 setFillColor:v19];

  [v8 addSublayer:v15];
  return v8;
}

void *sub_10018BA6C(uint64_t a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed:v4];

  v7 = String._bridgeToObjectiveC()();
  v56 = v5;
  v51 = [v5 systemImageNamed:v7];

  sub_10000905C(0, &qword_1006AF730);
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v57._object = 0x80000001005796A0;
  v10._countAndFlagsBits = 0xD000000000000026;
  v10._object = 0x8000000100579670;
  v57._countAndFlagsBits = 0xD000000000000038;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v57);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = a1;
  v13[2] = a1;
  v13[3] = a2;
  v15 = a2;
  v13[4] = v12;
  v55 = v6;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v54 = v16;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v17 = [v8 mainBundle];
  v58._object = 0x8000000100579710;
  v18._countAndFlagsBits = 0xD00000000000002ALL;
  v18._object = 0x80000001005796E0;
  v58._countAndFlagsBits = 0xD00000000000003CLL;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v58);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = a2;
  v21[4] = v20;
  v53 = v51;
  v52 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v56 _systemImageNamed:{v22, 0, 0, 0, sub_10018CA7C, v21}];

  v50 = v8;
  v24 = [v8 mainBundle];
  v59._object = 0x80000001005797A0;
  v25._countAndFlagsBits = 0xD00000000000002BLL;
  v25._object = 0x8000000100579750;
  v26.value._object = 0x8000000100579780;
  v59._countAndFlagsBits = 0xD000000000000015;
  v26.value._countAndFlagsBits = 0xD000000000000010;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v59);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v14;
  v29[3] = v15;
  v29[4] = v28;
  v30 = v23;
  v49 = v29;
  v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v32 = [objc_opt_self() currentDevice];
  v33 = [v32 userInterfaceIdiom];

  if (v33 == 1)
  {
    if (qword_1006AECB8 != -1)
    {
      swift_once();
    }

    if (byte_1006D4AD0 == 1)
    {
      v34 = v31;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v35 = String._bridgeToObjectiveC()();
  v36 = MGGetBoolAnswer();

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v56 systemImageNamed:v37];

    if (v38)
    {
      v39 = [objc_opt_self() labelColor];
      v40 = [v38 imageWithTintColor:v39];
    }

    else
    {
      v40 = 0;
    }

    v41 = [v50 mainBundle];
    v60._object = 0x8000000100579840;
    v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v42.value._object = 0xEC00000031656C62;
    v43._countAndFlagsBits = 0xD000000000000031;
    v43._object = 0x8000000100579800;
    v60._countAndFlagsBits = 0xD000000000000043;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v42, v41, v44, v60);

    v45 = v40;
    v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v47 = v52;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return _swiftEmptyArrayStorage;
}

void *sub_10018C298(uint64_t a1, uint64_t a2)
{
  v19 = &type metadata for SolariumFeatureFlag;
  v20 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v18);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
    v5 = [objc_opt_self() configurationWithFont:v6];

    if (v5)
    {
      v5 = v5;
    }
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7 withConfiguration:v5];

  sub_10000905C(0, &qword_1006AF730);
  v9 = [objc_opt_self() mainBundle];
  v21._object = 0x8000000100579630;
  v10._object = 0x8000000100579600;
  v21._countAndFlagsBits = 0xD000000000000033;
  v10._countAndFlagsBits = 0xD000000000000021;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v21);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  v14 = v8;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  (*(a2 + 8))(a1, a2);

  v16 = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  if (v16)
  {

    return 0;
  }

  return v15;
}

uint64_t sub_10018C56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *((*(a4 + 8))(a3, a4) + 56);

    swift_storeEnumTagMultiPayload();
    v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v13 + v14, v9);
    swift_beginAccess();
    sub_100058530(v11, v13 + v14);
    swift_endAccess();
    sub_100058594(v9);

    swift_unknownObjectRelease();
    sub_10005D4E4(v9);
    return sub_10005D4E4(v11);
  }

  return result;
}

uint64_t sub_10018C718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(a4 + 8);
    v25 = result;
    v17 = v16(a3, a4);
    v24 = a3;
    v18 = *(v17 + 56);

    v19 = type metadata accessor for FMSelectionPendingAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
    v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();
    sub_10008EC74(v14, v18 + v20);
    swift_endAccess();

    v21 = *(v16(v24, a4) + 56);

    swift_storeEnumTagMultiPayload();
    v22 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v21 + v22, v9);
    swift_beginAccess();
    sub_100058530(v11, v21 + v22);
    swift_endAccess();
    sub_100058594(v9);

    swift_unknownObjectRelease();
    sub_10005D4E4(v9);
    return sub_10005D4E4(v11);
  }

  return result;
}

void sub_10018C9D4()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = String._bridgeToObjectiveC()();
  CFNotificationCenterPostNotification(v0, v1, 0, 0, 1u);
}

void sub_10018CAC4(Swift::OpaquePointer children, uint64_t a2, uint64_t a3)
{
  v5 = *((*(a3 + 8))(a2, a3) + 16);

  v6 = v5[OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn];

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMActionButtonController: areAccountsSignedIn: %{BOOL}d", v10, 8u);
  }

  v11 = sub_10018BA6C(a2, a3);
  v12 = v11;
  v33 = (v11 >> 62);
  if (v11 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v13 != 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMActionButtonController: hasActions: %{BOOL}d", v17, 8u);
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMActionButtonController: Platform Action Button Visibility: %{BOOL}d", v20, 8u);
  }

  v21 = sub_10018C298(a2, a3);
  if (v21)
  {
    v22 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v23 = [objc_opt_self() mainBundle];
  swift__string._object = 0x80000001005795D0;
  v24._object = 0x80000001005795B0;
  swift__string._countAndFlagsBits = 0xD00000000000002BLL;
  v24._countAndFlagsBits = 0xD000000000000019;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, swift__string);

  if (v33)
  {
    sub_10000905C(0, &unk_1006BAA80);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80);
    preferredElementSize = v12;
  }

  sub_10000905C(0, &unk_1006AF720);
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  v34 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v36, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v37.value.super.isa = 0;
  v37.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v37, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, childrenb).super.super.isa;
  [childrenc setMenu:isa];

  [childrenc setPreferredMenuElementOrder:2];
  [childrenc setHidden:v14 ^ 1u];
}

void sub_10018D020(void *a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for _Glass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v18[3] = v3;
  v18[4] = &protocol witness table for _Glass;
  sub_100008FC0(v18);
  _Glass.flexible(_:)();
  (*(v4 + 8))(v6, v3);
  UIView._background.setter();
  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v9 = UIFontWeightTrait;
  v10 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v11 = sub_10002ACDC(v10);

  v12 = [objc_opt_self() configurationWithFont:v11];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  [a1 setImage:v15 forState:0];
  v16 = [objc_opt_self() labelColor];
  [a1 setTintColor:v16];
}

void sub_10018D310(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, double a6, double a7, double a8)
{
  v59 = a4;
  v60 = a5;
  v56 = a3;
  v64 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v62 = *(v16 - 8);
  __chkstk_darwin(v16);
  v61 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FMIPItem();
  v18 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v19;
  __chkstk_darwin(v20);
  v22 = &v50 - v21;
  v23 = type metadata accessor for FMIPConfigValue();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a6 < 9.22337204e18)
  {
    v52 = v16;
    v53 = v14;
    v54 = v13;
    (*(v24 + 104))(v26, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v23);
    aBlock[7] = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v24 + 8))(v26, v23);
    v50 = aBlock[0];
    v27 = v58;
    v51 = *(v18 + 16);
    v28 = v51(v22, v64, v58);
    v29 = *&a1[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock];
    __chkstk_darwin(v28);
    *(&v50 - 2) = v22;
    v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
    v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v29 + v31));
    sub_100109B60(v29 + v30);
    LOBYTE(v30) = v50 < a6;
    os_unfair_lock_unlock((v29 + v31));

    (*(v18 + 8))(v22, v27);
    v32 = *&a1[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage];
    v33 = v56;
    *&a1[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage] = v56;
    v34 = v33;

    v35 = &a1[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_tempCoordinate];
    *v35 = a7;
    v35[1] = a8;
    *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = a6;
    v36 = &a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    v37 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    v38 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
    v39 = v59;
    v40 = v60;
    *v36 = v59;
    v36[1] = v40;
    sub_10009186C(v39, v40);
    sub_100091880(v37, v38);
    a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v30;
    sub_10000905C(0, &qword_1006AEDC0);
    v41 = static OS_dispatch_queue.main.getter();
    v42 = v57;
    v51(v57, v64, v27);
    v43 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    (*(v18 + 32))(v44 + v43, v42, v27);
    aBlock[4] = sub_10018DE70;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10062B100;
    v45 = _Block_copy(aBlock);
    v46 = a1;

    v47 = v61;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v48 = v63;
    v49 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v53 + 8))(v48, v49);
    (*(v62 + 8))(v47, v52);
    return;
  }

LABEL_7:
  __break(1u);
  os_unfair_lock_unlock(&v26[v13]);
  __break(1u);
}

void sub_10018D9BC(char *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 willChangeValueForKey:v2];

  v3 = FMIPItem.name.getter();
  v4 = &a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v4 = v3;
  v4[1] = v5;

  v6 = String._bridgeToObjectiveC()();
  [a1 didChangeValueForKey:v6];
}

uint64_t sub_10018DAA0()
{
  sub_10000905C(0, &qword_1006BC2B0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

id sub_10018DB24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImage) init];
    v3 = 0;
  }

  *a2 = v4;
  return v3;
}

uint64_t sub_10018DBFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v8 + v10));
  (*(v5 + 16))(v7, v8 + v9, v4);
  os_unfair_lock_unlock((v8 + v10));

  v11 = FMIPItem.identifier.getter();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *a2 = v11;
  a2[1] = v13;
  type metadata accessor for FMAnnotationIdentifier();
  return swift_storeEnumTagMultiPayload();
}

void sub_10018DD90()
{

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue);
}

id sub_10018DDE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018DE70()
{
  type metadata accessor for FMIPItem();
  v1 = *(v0 + 16);

  sub_10018D9BC(v1);
}

uint64_t sub_10018DF0C()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() mainBundle];
  if (v1 == 1)
  {
    v15._object = 0x8000000100579A00;
    v3._countAndFlagsBits = 0xD000000000000021;
    v3._object = 0x8000000100583A10;
    v4.value._countAndFlagsBits = 0xD000000000000013;
    v4.value._object = 0x80000001005799E0;
    v15._countAndFlagsBits = 0xD000000000000018;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v15);

    sub_10007EBC0(&unk_1006B20B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100552220;
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10008EE84();
    *(v6 + 32) = v8;
    *(v6 + 40) = v7;

    v9 = String.init(format:_:)();

    return v9;
  }

  else
  {
    v16._object = 0x8000000100582000;
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    v11._object = 0x80000001005839F0;
    v12.value._object = 0x8000000100581FE0;
    v16._countAndFlagsBits = 0xD000000000000015;
    v12.value._countAndFlagsBits = 0xD000000000000010;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v2, v13, v16)._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

uint64_t sub_10018E0BC()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() mainBundle];
  if (v1 == 1)
  {
    v11 = 0x8000000100579A00;
    v3 = 0xD000000000000023;
    v4 = 0x80000001005839C0;
    v5 = 0xD000000000000013;
    v6 = 0x80000001005799E0;
    v7 = 0xD000000000000018;
  }

  else
  {
    v11 = 0x8000000100582000;
    v3 = 0xD00000000000001ELL;
    v4 = 0x80000001005839A0;
    v6 = 0x8000000100581FE0;
    v7 = 0xD000000000000015;
    v5 = 0xD000000000000010;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v5, v2, v8, *&v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10018E1CC()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() mainBundle];
  if (v1 == 1)
  {
    v18 = 0x8000000100579A00;
    v3 = 0xD00000000000002CLL;
    v4 = 0x8000000100583970;
    v5 = 0x80000001005799E0;
    v6 = 0xD000000000000018;
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xD000000000000010;
    v18 = 0x8000000100582000;
    v3 = 0xD000000000000027;
    v4 = 0x80000001005838C0;
    v5 = 0x8000000100581FE0;
    v6 = 0xD000000000000015;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v7, v2, v8, *&v6)._countAndFlagsBits;

  v10 = *(v0 + 48);
  if ((v10 & 4) != 0)
  {
    v11 = "GNIZED_MESSAGE_DEFAULT";
  }

  else
  {
    v11 = "ELCOME_RECOGNIZED_TITLE";
  }

  if ((v10 & 4) != 0)
  {
    v12 = 0xD00000000000003CLL;
  }

  else
  {
    v12 = 0xD000000000000036;
  }

  v13 = [objc_opt_self() mainBundle];
  v19._object = 0x8000000100579A00;
  v14._object = (v11 | 0x8000000000000000);
  v15.value._object = 0x80000001005799E0;
  v19._countAndFlagsBits = 0xD000000000000018;
  v14._countAndFlagsBits = v12;
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v19);

  return countAndFlagsBits;
}

uint64_t sub_10018E38C()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() mainBundle];
  if (v1 == 1)
  {
    v16 = 0x8000000100579A00;
    v3 = 0xD000000000000030;
    v4 = 0x8000000100583880;
    v5 = 0x80000001005799E0;
    v6 = 0xD000000000000018;
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xD000000000000010;
    v16 = 0x8000000100582000;
    v3 = 0xD00000000000002BLL;
    v4 = 0x80000001005837D0;
    v5 = 0x8000000100581FE0;
    v6 = 0xD000000000000015;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v7, v2, v8, *&v6)._countAndFlagsBits;

  if ((*(v0 + 48) & 2) != 0)
  {
    v10 = "RECOGNIZED_MESSAGE_DEFAULT";
  }

  else
  {
    v10 = "ELCOME_NOT_RECOGNIZED_TITLE";
  }

  v11 = [objc_opt_self() mainBundle];
  v17._object = 0x8000000100579A00;
  v12._countAndFlagsBits = 0xD00000000000003ALL;
  v12._object = (v10 | 0x8000000000000000);
  v13.value._object = 0x80000001005799E0;
  v17._countAndFlagsBits = 0xD000000000000018;
  v13.value._countAndFlagsBits = 0xD000000000000013;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v17);

  return countAndFlagsBits;
}

uint64_t sub_10018E540()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC6FindMy20FMUTWelcomeViewModel___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMUTWelcomeViewModel()
{
  result = qword_1006B4E68;
  if (!qword_1006B4E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018E640()
{
  result = type metadata accessor for ObservationRegistrar();
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

__n128 sub_10018E6DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10018E6F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10018E738(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018E7A4()
{
  result = qword_1006B4EF8;
  if (!qword_1006B4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4EF8);
  }

  return result;
}

unint64_t sub_10018E7FC()
{
  result = qword_1006B4F00;
  if (!qword_1006B4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4F00);
  }

  return result;
}

unint64_t sub_10018E854()
{
  result = qword_1006B4F08;
  if (!qword_1006B4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4F08);
  }

  return result;
}

unint64_t sub_10018E8AC()
{
  result = qword_1006B4F10;
  if (!qword_1006B4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4F10);
  }

  return result;
}

char *sub_10018E900(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v3 - 8);
  v62 = &v53 - v4;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for FMIPFeatures();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  v54 = a2;
  FMIPDevice.features.getter();
  static FMIPFeatures.isEraseAfterLockSupported.getter();
  sub_100179F58();
  v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  v20 = 0xD00000000000001ALL;
  if (v18)
  {
    v20 = 0xD000000000000017;
  }

  v56 = v20;
  if (v18)
  {
    v21 = "DEVICE_LOCK_QUESTION";
  }

  else
  {
    v21 = "DEVICE_LOCK_FOOTER";
  }

  v55 = v21;
  v61 = v6;
  v22 = *(v6 + 16);
  v22(v10, a2, v5);
  v23 = *(v6 + 56);
  v23(v10, 0, 1, v5);
  v59 = v23;
  v60 = v6 + 56;
  v24 = sub_10022F104(0xD000000000000014, 0x8000000100583AE0, v10);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = sub_10022E0A8(v24, v26, v28, v30, 0, 0);
  v57 = v32;
  v58 = v31;

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v10);
  v33 = v54;
  v22(v10, v54, v5);
  v23(v10, 0, 1, v5);
  v34 = sub_10022F104(v56, v55 | 0x8000000000000000, v10);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_10022E0A8(v34, v36, v38, v40, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v10);
  v22(v65, v33, v5);
  v41 = type metadata accessor for FMIPItem();
  v42 = v62;
  (*(*(v41 - 8) + 56))(v62, 1, 1, v41);
  v43 = objc_allocWithZone(v63);
  v44 = String._bridgeToObjectiveC()();

  v45 = String._bridgeToObjectiveC()();

  v46 = [v43 initWithTitle:v44 detailText:v45 icon:0 contentLayout:1];

  v47 = v61;
  (*(v61 + 8))(v33, v5);
  *&v46[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mediator] = v64;
  v48 = v46;

  (*(v47 + 32))(v10, v65, v5);
  v59(v10, 0, 1, v5);
  v49 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  sub_1000BBF40(v10, &v48[v49], &unk_1006BBCE0);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_primaryItemPart;
  swift_beginAccess();
  sub_1000BBF40(v42, &v48[v50], &qword_1006B07D0);
  swift_endAccess();
  v51 = &v48[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_mode];
  *v51 = 1;
  v51[4] = 0;

  return v48;
}

void sub_10018EEF4()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  sub_1003BB990();
  v4 = *&v0[OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_performButton];
  v5 = OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_device;
  swift_beginAccess();
  sub_10018F460(&v0[v5], v3);
  v6 = sub_10022F104(0xD000000000000024, 0x8000000100583A70, v3);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_10022E0A8(v6, v8, v10, v12, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v3);
  v13 = String._bridgeToObjectiveC()();

  [v4 setTitle:v13 forState:0];

  v14 = [v0 buttonTray];
  sub_10018F460(&v0[v5], v3);
  v15 = sub_10022F104(0xD000000000000012, 0x8000000100583AA0, v3);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10022E0A8(v15, v17, v19, v21, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_10018F4D0(v3);
  v22 = String._bridgeToObjectiveC()();

  [v14 setCaptionText:v22];
}

id sub_10018F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for FMDeviceLockViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_10018F39C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceLockViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDeviceLockViewController()
{
  result = qword_1006B4F40;
  if (!qword_1006B4F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018F460(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BBCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018F4D0(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006BBCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10018F658()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPersonAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018F76C()
{
  if ([v0 isCancelled])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "FMItemImageCreationOperation: operation cancelled", v3, 2u);
    }
  }
}

uint64_t sub_10018F8C0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMItemImageCreationOperation();
  v31.receiver = v0;
  v31.super_class = v8;
  objc_msgSendSuper2(&v31, "start");
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    v17 = *&v10[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request + 16];
    v32 = *&v10[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request];
    v33 = v17;
    v34 = *&v10[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request + 32];
    v35 = *&v10[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request + 48];
    v18 = sub_100082674();
    v20 = sub_100005B4C(v18, v19, aBlock);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMItemImageCreationOperation: started for filename: %s", v14, 0xCu);
    sub_100006060(v16);
    v5 = v27;

    v2 = v28;
  }

  sub_100003E90();
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v10;
  aBlock[4] = sub_100190110;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062B208;
  v23 = _Block_copy(aBlock);
  v24 = v10;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v2 + 8))(v4, v1);
  return (*(v29 + 8))(v7, v5);
}

id sub_10018FCAC(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request];
  v3 = *&a1[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request + 16];
  v4 = *&a1[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request + 24];
  v5 = a1[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_request + 48];
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];

  v7 = 33.0;
  if (v5)
  {
    v7 = 66.0;
  }

  v8 = sub_1003F77CC(v3, v4, v5, v7);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 CGImage];
  if (!v10 || (v11 = v10, v12 = sub_1003F6DAC(), v11, !v12))
  {

    goto LABEL_13;
  }

  [v9 scale];
  v14 = [objc_allocWithZone(UIImage) initWithCGImage:v12 scale:objc_msgSend(v9 orientation:{"imageOrientation"), v13}];

  if (!v14)
  {
LABEL_13:
    v27 = *&a1[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_completion];
    sub_100190118();
    v28 = swift_allocError();
    v27(0, v28);

    goto LABEL_14;
  }

  v15 = *&a1[OBJC_IVAR____TtC6FindMy28FMItemImageCreationOperation_completion];
  v16 = v14;
  v15(v14, 0);

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v23 = *(v2 + 1);
    v31 = *v2;
    v32 = v23;
    v33 = *(v2 + 2);
    v34 = *(v2 + 24);
    v24 = sub_100082674();
    v26 = sub_100005B4C(v24, v25, &v30);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMItemImageCreationOperation: image created for: %s", v21, 0xCu);
    sub_100006060(v22);
  }

LABEL_14:

  return [a1 setFinished:1];
}

id sub_100190044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemImageCreationOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100190118()
{
  result = qword_1006B4FB8;
  if (!qword_1006B4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4FB8);
  }

  return result;
}

unint64_t sub_100190180()
{
  result = qword_1006B4FC0;
  if (!qword_1006B4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B4FC0);
  }

  return result;
}

uint64_t sub_1001901D4(uint64_t result, char **a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *a2;
      if (!*a2)
      {
        *a2 = _swiftEmptyArrayStorage;
        v7 = _swiftEmptyArrayStorage;
      }

      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_10008B9E4(0, *(v7 + 2) + 1, 1, v7);
        *a2 = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_10008B9E4((v9 > 1), v10 + 1, 1, v7);
        *a2 = v7;
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v5;

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1001902DC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100190414(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_100190528(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100190628(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = _swiftEmptyArrayStorage;
  sub_10016715C(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_10016715C((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100190750(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v26 = _swiftEmptyArrayStorage;
  sub_1001673AC(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v21 = v8;
    a1(v22, &v21);
    if (v3)
    {
      break;
    }

    v10 = v22[0];
    v9 = v22[1];
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v26 = v5;
    v15 = v5[2];
    v14 = v5[3];
    if (v15 >= v14 >> 1)
    {
      v19 = v25;
      v17 = v23;
      sub_1001673AC((v14 > 1), v15 + 1, 1);
      v13 = v19;
      v11 = v17;
      v5 = v26;
    }

    v5[2] = v15 + 1;
    v16 = &v5[5 * v15];
    v16[4] = v10;
    v16[5] = v9;
    v16[6] = v11;
    v16[7] = v12;
    v16[8] = v13;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100190878(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_10016740C(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      sub_10016740C((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    v6[2] = v12 + 1;
    v6[v12 + 4] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001909A4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for FMItemCellViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_100167598(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for FMIPBeaconShare() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_100167598(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_10019AA14(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100190B8C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(sub_10007EBC0(&qword_1006B50B8) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100190CDC(char *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), char *a4, char *a5)
{
  v70 = a5;
  v71 = a3;
  v63 = a4;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v65);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFFriend();
  v62 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText];
  *v15 = 0;
  v15[1] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView] = 0;
  v16 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer;
  *&v5[v16] = [objc_allocWithZone(UIView) init];
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewHeightConstraint] = 0;
  v17 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView;
  *&v5[v17] = [objc_allocWithZone(UITableView) init];
  v18 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView;
  *&v5[v18] = [objc_allocWithZone(UITableView) init];
  v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_hideSuggestedContactsLabel] = 1;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_excludedSuggestedContactHandles] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_rightActionButtonItem] = 0;
  v19 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_horizontalRuleView;
  *&v5[v19] = [objc_allocWithZone(UIView) init];
  *(&v75 + 1) = &type metadata for SolariumFeatureFlag;
  *&v76 = sub_10000BD04();
  LOBYTE(v19) = isFeatureEnabled(_:)();
  sub_100006060(&v74);
  if (v19)
  {
    if (qword_1006AEAC8 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1006D3F20;
  }

  else
  {
    if (qword_1006AEAC0 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_1006D3E60;
  }

  v21 = v20[9];
  v82 = v20[8];
  v83 = v21;
  v22 = v20[11];
  v84 = v20[10];
  v85 = v22;
  v23 = v20[5];
  v78 = v20[4];
  v79 = v23;
  v24 = v20[7];
  v80 = v20[6];
  v81 = v24;
  v25 = v20[1];
  v74 = *v20;
  v75 = v25;
  v26 = v20[3];
  v76 = v20[2];
  v77 = v26;
  v27 = &v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style];
  v28 = v83;
  v27[8] = v82;
  v27[9] = v28;
  v29 = v85;
  v27[10] = v84;
  v27[11] = v29;
  v30 = v79;
  v27[4] = v78;
  v27[5] = v30;
  v31 = v81;
  v27[6] = v80;
  v27[7] = v31;
  v32 = v75;
  *v27 = v74;
  v27[1] = v32;
  v33 = v77;
  v27[2] = v76;
  v27[3] = v33;
  v34 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_contactStore;
  v35 = objc_allocWithZone(CNContactStore);
  sub_10019A9DC(&v74, &v73);
  *&v5[v34] = [v35 init];
  v36 = &OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView;
  v37 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_operationQueue;
  *&v5[v37] = [objc_allocWithZone(NSOperationQueue) init];
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_alertedOfferOutOfNetworkHandles] = &_swiftEmptySetSingleton;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_reachabilityOperation] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchOperation] = 0;
  v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability] = 0;
  v38 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  v39 = type metadata accessor for MessagingCapability();
  (*(*(v39 - 8) + 56))(&v5[v38], 1, 1, v39);
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContacts] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_mediator] = a1;
  v40 = &v5[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_action];
  v41 = v70;
  *v40 = v63;
  v40[1] = v41;
  v42 = type metadata accessor for FMRecipientsViewController();
  v72.receiver = v5;
  v72.super_class = v42;

  v43 = objc_msgSendSuper2(&v72, "initWithNibName:bundle:", 0, 0);
  v44 = String._bridgeToObjectiveC()();

  [v43 setTitle:v44];
  v63 = v43;

  v70 = a1;
  v45 = dispatch thunk of FMFManager.friends.getter();
  v73 = _swiftEmptyArrayStorage;
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v62 + 16;
    v71 = *(v62 + 16);
    v48 = *(v62 + 80);
    v62 = v45;
    v49 = v45 + ((v48 + 32) & ~v48);
    v50 = *(v47 + 56);
    v51 = (v47 - 8);
    do
    {
      v52 = v12;
      v53 = v12;
      v54 = v47;
      v71(v14, v49, v52);
      v55 = FMFFriend.contactHandles.getter();
      (*v51)(v14, v53);
      sub_100493AC0(v55);
      v47 = v54;
      v12 = v53;
      v49 += v50;
      --v46;
    }

    while (v46);

    v56 = v73;
    v36 = &OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView;
  }

  else
  {

    v56 = _swiftEmptyArrayStorage;
  }

  v57 = v63;
  *&v63[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_excludedSuggestedContactHandles] = v56;

  v58 = *&v57[v36[8]];
  v71 = sub_10000905C(0, &qword_1006AEDC0);
  v59 = v58;
  static DispatchQoS.userInteractive.getter();
  v73 = _swiftEmptyArrayStorage;
  sub_10000A078(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004098(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v68 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v69);
  v60 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  [v59 setUnderlyingQueue:v60];

  return v57;
}

void sub_100191484()
{
  v1 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v1 - 8);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = objc_allocWithZone(UIBarButtonItem);
  v7 = v0;
  v8 = [v6 initWithBarButtonSystemItem:1 target:v7 action:"cancelActionWithSender:"];
  v9 = &selRef_pushViewController_animated_;
  v10 = [v7 navigationItem];
  v100 = v8;
  [v10 setLeftBarButtonItem:v8];

  v11 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v12 = [v4 grayColor];
  v99 = v11;
  [v11 setColor:v12];

  v103 = &type metadata for SolariumFeatureFlag;
  v101 = sub_10000BD04();
  v104 = v101;
  LOBYTE(v12) = isFeatureEnabled(_:)();
  v13 = sub_100006060(v102);
  if (v12)
  {
    v14 = (*((swift_isaMask & *v7) + 0x398))(v13);
    if (v14)
    {
      v15 = v14;

      v106.value.super.super.isa = sub_10000905C(0, &qword_1006B0160);
      v105.value.super.super.isa = 0;
      v105.is_nil = v15;
      v16.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v105, v106).super.super.isa;
    }

    else
    {
      v16.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v7 action:"actionWithSender:"];
    }
  }

  else
  {

    v103 = type metadata accessor for FMRecipientsViewController();
    v102[0] = v7;
    v17 = v7;

    v18 = String._bridgeToObjectiveC()();

    v19 = v103;
    if (v103)
    {
      v20 = sub_1000244BC(v102, v103);
      Description = v19[-1].Description;
      __chkstk_darwin(v20);
      v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      Description[2](v23);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (Description[1])(v23, v19);
      v9 = &selRef_pushViewController_animated_;
      sub_100006060(v102);
    }

    else
    {
      v24 = 0;
    }

    v16.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v18 style:2 target:v24 action:"actionWithSender:"];

    swift_unknownObjectRelease();
  }

  v25 = v16.super.super.isa;
  v26 = [v7 v9[70]];
  [v26 setRightBarButtonItem:v25];

  v27 = *(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_rightActionButtonItem);
  *(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_rightActionButtonItem) = v25;

  v28 = [v7 view];
  if (!v28)
  {
    goto LABEL_33;
  }

  v29 = v28;
  [v28 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v107.origin.x = v31;
  v107.origin.y = v33;
  v107.size.width = v35;
  v107.size.height = v37;
  Width = CGRectGetWidth(v107);
  v39 = objc_opt_self();
  [v39 preferredHeight];
  v41 = [objc_allocWithZone(MFComposeRecipientTextView) initWithFrame:{0.0, 0.0, Width, v40}];
  v42 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v43 = *(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  *(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView) = v41;

  v103 = &type metadata for SolariumFeatureFlag;
  v104 = v101;
  LOBYTE(v29) = isFeatureEnabled(_:)();
  sub_100006060(v102);
  v44 = *(v7 + v42);
  v98 = v25;
  if (v29)
  {
    if (!v44)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v45 = v44;
    v46 = [v4 clearColor];
    [v45 setBackgroundColor:v46];

    v47 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer;
    v48 = *(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer);
    static _Glass._GlassVariant.regular.getter();
    v103 = type metadata accessor for _Glass();
    v104 = &protocol witness table for _Glass;
    sub_100008FC0(v102);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();

    v49 = [*(v7 + v47) layer];
    v50 = *(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style + 160) + *(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style + 176);
    [v39 preferredHeight];
    [v49 setCornerRadius:(v50 + v51) * 0.5];

    v52 = *(v7 + v42);
    if (!v52)
    {
LABEL_43:
      __break(1u);
      return;
    }

    v53 = objc_opt_self();
    v54 = v52;
    v55 = [v53 mainBundle];
    v96 = 0x80000001005840B0;
    v56 = 0xD000000000000021;
    v57 = 0x8000000100584080;
    v58 = 0xD000000000000033;
  }

  else
  {
    if (!v44)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v59 = objc_opt_self();
    v54 = v44;
    v55 = [v59 mainBundle];
    v96 = 0x8000000100584050;
    v56 = 0xD00000000000001ALL;
    v57 = 0x8000000100584030;
    v58 = 0xD00000000000002CLL;
  }

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v56, 0, v55, v60, *&v58);

  v61 = String._bridgeToObjectiveC()();

  [v54 setLabel:v61];

  v62 = *(v7 + v42);
  if (!v62)
  {
    goto LABEL_34;
  }

  [v62 setSeparatorHidden:1];
  v63 = *(v7 + v42);
  if (!v63)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v63 setDelegate:v7];
  v64 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView;
  [*(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView) setHidden:1];
  [*(v7 + v64) setDelegate:v7];
  [*(v7 + v64) setDataSource:v7];
  [*(v7 + v64) setRowHeight:UITableViewAutomaticDimension];
  [*(v7 + v64) setKeyboardDismissMode:1];
  [*(v7 + v64) setTag:1];
  v65 = *(v7 + v64);
  type metadata accessor for FMRecipientTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = v65;
  v68 = String._bridgeToObjectiveC()();
  [v67 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v68];

  [*(v7 + v64) setSectionHeaderTopPadding:0.0];
  v69 = (v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style);
  if ((*(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style + 136) & 1) == 0)
  {
    [*(v7 + v64) setSeparatorInset:{v69[13], v69[14], v69[15], v69[16]}];
  }

  v70 = v69[18];
  v71 = *(v7 + v64);
  [v71 contentInset];
  [v71 setContentInset:v70];

  v72 = [v7 view];
  if (!v72)
  {
    goto LABEL_36;
  }

  v73 = v72;
  [v72 addSubview:*(v7 + v64)];

  v74 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView;
  [*(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView) setHidden:0];
  [*(v7 + v74) setDelegate:v7];
  [*(v7 + v74) setDataSource:v7];
  [*(v7 + v74) setRowHeight:UITableViewAutomaticDimension];
  [*(v7 + v74) setKeyboardDismissMode:1];
  [*(v7 + v74) setTag:2];
  v75 = *(v7 + v74);
  v76 = String._bridgeToObjectiveC()();
  [v75 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v76];

  [*(v7 + v74) setSectionHeaderTopPadding:0.0];
  if ((v69[12] & 1) == 0)
  {
    [*(v7 + v74) setSeparatorInset:{v69[8], v69[9], v69[10], v69[11]}];
  }

  v77 = *(v7 + v74);
  [v77 contentInset];
  [v77 setContentInset:v70];

  v78 = [v7 view];
  if (!v78)
  {
    goto LABEL_37;
  }

  v79 = v78;
  [v78 addSubview:*(v7 + v74)];

  v80 = [v7 view];
  if (!v80)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v81 = v80;
  [v80 addSubview:*(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_horizontalRuleView)];

  v82 = [v7 view];
  if (!v82)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v83 = v82;
  v84 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer;
  [v82 addSubview:*(v7 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer)];

  if (!*(v7 + v42))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [*(v7 + v84) addSubview:?];
  v103 = &type metadata for SolariumFeatureFlag;
  v104 = v101;
  v85 = isFeatureEnabled(_:)();
  sub_100006060(v102);
  if (v85)
  {
    v86 = *(v7 + v64);
    v87 = objc_allocWithZone(UIView);
    v88 = v86;
    v89 = [v87 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v88 setTableFooterView:v89];

    v90 = *(v7 + v74);
    v91 = objc_allocWithZone(UIView);
    v92 = v90;
    v93 = [v91 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v92 setTableFooterView:v93];
  }

  else
  {
    v93 = v99;
  }

  v94 = v100;
  v95 = v98;
}

void sub_1001920AC()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer;
  [*&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewContainer] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[v1];
  v138 = 0u;
  v139 = 0u;
  v5 = objc_opt_self();
  v6 = v4;
  [v5 preferredHeight];
  v8 = v7;
  v137 = v4;
  v9 = v6;
  sub_10007EBC0(&qword_1006B50F0);
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v136 = objc_opt_self();
  v11 = [v136 constraintWithItem:v10 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v8];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewHeightConstraint;
  v13 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextViewHeightConstraint] = v11;

  v134 = sub_10007EBC0(&qword_1006AFC30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100552200;
  v15 = [*&v0[v3] topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 topAnchor];
  v20 = &v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style];
  v21 = [v15 constraintEqualToAnchor:v19 constant:*&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_style + 152]];

  *(v14 + 32) = v21;
  v22 = *&v0[v12];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v131 = v20;
  v135 = v1;
  *(v14 + 40) = v22;
  v23 = *&v0[v3];
  v24 = v22;
  v25 = [v23 leadingAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = v26;
  v28 = [v26 layoutMarginsGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v14 + 48) = v30;
  v31 = [*&v0[v3] trailingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = v32;
  v34 = [v32 layoutMarginsGuide];

  v35 = [v34 trailingAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v14 + 56) = v36;
  v37 = v135;
  v38 = *&v0[v135];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = [v38 leadingAnchor];
  v40 = [*&v0[v3] leadingAnchor];
  v41 = v131;
  v42 = [v39 constraintEqualToAnchor:v40 constant:v131[21]];

  *(v14 + 64) = v42;
  v43 = *&v0[v37];
  if (!v43)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = [v43 trailingAnchor];
  v45 = [*&v0[v3] trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-v41[23]];

  *(v14 + 72) = v46;
  v47 = *&v0[v37];
  if (!v47)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v48 = [v47 topAnchor];
  v49 = [*&v0[v3] topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:v41[20]];

  *(v14 + 80) = v50;
  v51 = *&v0[v37];
  if (!v51)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v52 = [v51 bottomAnchor];
  v53 = [*&v0[v3] bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:v41[22]];

  *(v14 + 88) = v54;
  v133 = sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v136 activateConstraints:isa];

  v56 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_horizontalRuleView];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = swift_allocObject();
  v132 = xmmword_1005521F0;
  *(v57 + 16) = xmmword_1005521F0;
  v58 = [v56 bottomAnchor];
  v59 = *&v0[v37];
  if (!v59)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor:v60 constant:*v41];

  *(v57 + 32) = v61;
  v62 = [v56 heightAnchor];
  v63 = v41[1];
  v64 = [objc_opt_self() mainScreen];
  [v64 scale];
  v66 = v65;

  v67 = [v62 constraintEqualToConstant:v63 / v66];
  *(v57 + 40) = v67;
  v68 = [v56 leadingAnchor];
  v69 = [v0 view];
  if (!v69)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v70 = v69;
  v71 = [v69 safeAreaLayoutGuide];

  v72 = [v71 leadingAnchor];
  v73 = [v68 constraintEqualToAnchor:v72];

  *(v57 + 48) = v73;
  v74 = [v56 trailingAnchor];
  v75 = [v0 view];
  if (!v75)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v76 = v75;
  v77 = [v75 safeAreaLayoutGuide];

  v78 = [v77 trailingAnchor];
  v79 = [v74 constraintEqualToAnchor:v78];

  *(v57 + 56) = v79;
  v80 = Array._bridgeToObjectiveC()().super.isa;

  [v136 activateConstraints:v80];

  v81 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView;
  [*&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = swift_allocObject();
  *(v82 + 16) = v132;
  v83 = [*&v0[v81] topAnchor];
  v84 = *&v0[v135];
  if (!v84)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v85 = [v84 bottomAnchor];
  v86 = [v83 constraintEqualToAnchor:v85];

  *(v82 + 32) = v86;
  v87 = [*&v0[v81] bottomAnchor];
  v88 = [v0 view];
  if (!v88)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v89 = v88;
  v90 = [v88 safeAreaLayoutGuide];

  v91 = [v90 bottomAnchor];
  v92 = [v87 constraintEqualToAnchor:v91];

  *(v82 + 40) = v92;
  v93 = [*&v0[v81] leadingAnchor];
  v94 = [v0 view];
  if (!v94)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v95 = v94;
  v96 = [v94 safeAreaLayoutGuide];

  v97 = [v96 leadingAnchor];
  v98 = [v93 constraintEqualToAnchor:v97];

  *(v82 + 48) = v98;
  v99 = [*&v0[v81] trailingAnchor];
  v100 = [v0 view];
  if (!v100)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v101 = v100;
  v102 = [v100 safeAreaLayoutGuide];

  v103 = [v102 trailingAnchor];
  v104 = [v99 constraintEqualToAnchor:v103];

  *(v82 + 56) = v104;
  v105 = Array._bridgeToObjectiveC()().super.isa;

  [v136 activateConstraints:v105];

  v106 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView;
  [*&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v107 = swift_allocObject();
  *(v107 + 16) = v132;
  v108 = [*&v0[v106] topAnchor];
  v109 = *&v0[v135];
  if (!v109)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v110 = [v109 bottomAnchor];
  v111 = [v108 constraintEqualToAnchor:v110];

  *(v107 + 32) = v111;
  v112 = [*&v0[v106] bottomAnchor];
  v113 = [v0 view];
  if (!v113)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v114 = v113;
  v115 = [v113 safeAreaLayoutGuide];

  v116 = [v115 bottomAnchor];
  v117 = [v112 constraintEqualToAnchor:v116];

  *(v107 + 40) = v117;
  v118 = [*&v0[v106] leadingAnchor];
  v119 = [v0 view];
  if (!v119)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v120 = v119;
  v121 = [v119 safeAreaLayoutGuide];

  v122 = [v121 leadingAnchor];
  v123 = [v118 constraintEqualToAnchor:v122];

  *(v107 + 48) = v123;
  v124 = [*&v0[v106] trailingAnchor];
  v125 = [v0 view];
  if (v125)
  {
    v126 = v125;
    v127 = [v125 safeAreaLayoutGuide];

    v128 = [v127 trailingAnchor];
    v129 = [v124 constraintEqualToAnchor:v128];

    *(v107 + 56) = v129;
    v130 = Array._bridgeToObjectiveC()().super.isa;

    [v136 activateConstraints:v130];

    return;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_100192F0C(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText + 8];
  if (!v3)
  {
    return 0;
  }

  v4 = *&v2[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = v2;
  type metadata accessor for FMContactsUtilities();

  if ((sub_100476878(v4, v3) & 1) == 0)
  {

    v15 = sub_100477BA0(v4, v3, 0);

    if (v15)
    {
    }

    else
    {
      sub_10000905C(0, &qword_1006B50C0);
      sub_10007EBC0(&unk_1006B20B0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100552220;
      *(v16 + 56) = &type metadata for String;
      v17 = sub_10008EE84();
      *(v16 + 64) = v17;
      *(v16 + 32) = 0xD000000000000029;
      *(v16 + 40) = 0x8000000100580FB0;
      v18 = NSPredicate.init(format:_:)();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 evaluateWithObject:v19];

      if (!v20)
      {
        v21 = objc_opt_self();
        v22 = [v21 mainBundle];
        v42._object = 0x8000000100583E60;
        v23._object = 0x8000000100583E40;
        v42._countAndFlagsBits = 0xD000000000000030;
        v23._countAndFlagsBits = 0xD00000000000001ELL;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v42);

        v25 = [v21 mainBundle];
        v43._object = 0x8000000100583ED0;
        v26._countAndFlagsBits = 0xD000000000000020;
        v26._object = 0x8000000100583EA0;
        v43._countAndFlagsBits = 0xD000000000000032;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v43);

        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100552220;
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = v17;
        *(v28 + 32) = v4;
        *(v28 + 40) = v3;
        String.init(format:_:)();

        v29 = objc_opt_self();
        v30 = String._bridgeToObjectiveC()();

        v31 = String._bridgeToObjectiveC()();

        v32 = swift_allocObject();
        v33 = v8;
        *(v32 + 16) = v8;
        v40 = sub_10019BFB4;
        v41 = v32;
        aBlock = _NSConcreteStackBlock;
        v37 = 1107296256;
        v38 = sub_100004AE4;
        v39 = &unk_10062B870;
        v34 = _Block_copy(&aBlock);
        v35 = v33;

        [v29 showSimpleAlertWithTitle:v30 message:v31 handler:v34];
        _Block_release(v34);

        return 0;
      }
    }

    sub_100193EAC(v4, v3, a1, a2);

    return 1;
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v11 = v8;
  *(v10 + 16) = v8;
  v40 = sub_10019BF6C;
  v41 = v10;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100004AE4;
  v39 = &unk_10062B8C0;
  v12 = _Block_copy(&aBlock);
  v13 = v11;

  [v9 showOfferToSelfErrorInViewController:0 completion:v12];
  _Block_release(v12);
  return 0;
}

uint64_t sub_1001933F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v27 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v24 = *(v12 - 8);
  v25 = v12;
  __chkstk_darwin(v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_alertedOfferOutOfNetworkHandles;
  swift_beginAccess();
  v16 = *(v4 + v15);

  v17 = sub_1001604DC(a1, a2, v16);

  if ((v17 & 1) != 0 && *(v5 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) != 1)
  {
    if (a3)
    {
      return a3(1);
    }
  }

  else
  {
    swift_beginAccess();

    sub_10025457C(&v29, a1, a2);
    swift_endAccess();

    sub_10000905C(0, &qword_1006AEDC0);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = a3;
    v21[6] = v27;
    aBlock[4] = sub_10019BF5C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10062B820;
    v22 = _Block_copy(aBlock);

    sub_100062900(a3);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A078(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v26 + 8))(v11, v9);
    return (*(v24 + 8))(v14, v25);
  }

  return result;
}

uint64_t sub_1001937EC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B3658);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  swift_beginAccess();
  sub_10019BAF8(v2 + v13, v12);
  v14 = type metadata accessor for MessagingCapability();
  LODWORD(v13) = (*(*(v14 - 8) + 48))(v12, 1, v14);
  result = sub_100012DF0(v12, &qword_1006B3658);
  if (v13 != 1)
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v19 = v21;
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = a2;
    aBlock[4] = sub_10019BF50;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10062B7D0;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A078(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v23 + 8))(v6, v4);
    return (*(v7 + 8))(v9, v22);
  }

  return result;
}

void sub_100193BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_operationQueue);
  [v9 cancelAllOperations];
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v12 = *(v4 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (v12)
  {
    v13 = [v12 recipients];
    if (v13)
    {
      v14 = v13;
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = sub_1005373B4(v15);

      if (v16)
      {
        v17 = sub_10019B020(v16);

        *v11 = v17;
      }
    }

    if (*(v4 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_excludedSuggestedContactHandles))
    {

      sub_1001901D4(v18, v11);
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = v19;
    v20[5] = v10;
    v20[6] = a3;
    v20[7] = a4;
    aBlock[4] = sub_10019BF40;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10062B780;
    v21 = _Block_copy(aBlock);
    v22 = objc_opt_self();

    sub_100062900(a3);
    v23 = [v22 blockOperationWithBlock:v21];
    _Block_release(v21);

    v24 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchOperation;
    [*(v4 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchOperation) cancel];
    v25 = *(v4 + v24);
    *(v4 + v24) = v23;
    v26 = v23;

    [v9 addOperation:v26];
  }

  else
  {
    __break(1u);
  }
}

void sub_100193ECC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  ObjectType = swift_getObjectType();
  type metadata accessor for FMContactsUtilities();
  if (sub_100476878(a1, a2))
  {
    v14 = *(v6 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
    if (v14)
    {
      [v14 clearText];
      *(v6 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

      sub_100195F20();
      v15 = objc_opt_self();

      [v15 showOfferToSelfError];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = sub_1004769D8(a1, a2, 0, 0, 0, 0, 0);
      if ((v19 & 1) == 0)
      {
        v20 = v19;
        v28 = v17;
        v29 = v18;
        v21 = objc_allocWithZone(type metadata accessor for FMReachabilityOperation());

        v27 = sub_10048BAB4(a1, a2, 0, 1);
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        *(v23 + 16) = a1;
        *(v23 + 24) = a2;
        *(v23 + 32) = v22;
        *(v23 + 40) = v28;
        *(v23 + 48) = v29;
        *(v23 + 56) = 0;
        *(v23 + 57) = BYTE1(v20) & 1;
        *(v23 + 58) = BYTE2(v20) & 1;
        *(v23 + 64) = v29;
        *(v23 + 72) = a3;
        *(v23 + 80) = a4;
        *(v23 + 88) = ObjectType;
        v24 = &v27[qword_1006B1E58];
        v25 = *&v27[qword_1006B1E58];
        *v24 = a6;
        *(v24 + 1) = v23;

        v30 = v27;
        v26 = v28;
        sub_100062900(a3);
        sub_10001835C(v25);

        sub_100437A74(0);
        [*(v8 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_operationQueue) addOperation:v30];

        v17 = v30;
      }
    }
  }
}

id sub_10019415C()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMRecipientsViewController: updateSendButtonEnabled", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText + 8);
  if (v6)
  {
    if ((v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : *(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText) & 0xFFFFFFFFFFFFLL)
    {
      v8 = 1;
      goto LABEL_14;
    }
  }

  result = *(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  result = [result recipients];
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v11 + 16);

  v8 = v12 != 0;
LABEL_14:
  [*(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_rightActionButtonItem) setEnabled:v8];
  result = [objc_opt_self() authorizationStatusForEntityType:0];
  if (result == 3)
  {
    return result;
  }

  result = *(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (!result)
  {
    goto LABEL_21;
  }

  return [result setShowsAddButtonWhenExpanded:0];
}

void *sub_100194344()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  result = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (result)
  {
    v4 = [result recipients];
    if (v4)
    {
      v5 = v4;
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_1005373B4(v6);

      if (v7)
      {
        v8 = sub_10019B020(v7);

        *v2 = v8;
      }
    }

    if (*&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_excludedSuggestedContactHandles])
    {

      sub_1001901D4(v9, v2);
    }

    v10 = [objc_allocWithZone(type metadata accessor for FMPeopleSuggester()) init];
    v11 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester];
    *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_peopleSuggester] = v10;
    v12 = v10;

    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      *(v13 + 24) = v0;

      v14 = v0;
      sub_1002CB6A4(sub_10019B958, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001944EC()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!v2)
  {
    goto LABEL_45;
  }

  v3 = [v2 recipients];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_1005373B4(v5);

  if (!v6)
  {
    return;
  }

  if (v6 >> 62)
  {
    goto LABEL_42;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v42 = v0;

  if (!v7)
  {
    v15 = 0;
LABEL_20:

    swift_bridgeObjectRelease_n();
    v17 = v42;
LABEL_37:

    return;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_6;
    }

    v13 = *&v0[v1];
    if (!v13)
    {
      goto LABEL_44;
    }

    v44 = v11;
    v14 = [v13 atomViewForRecipient:?];
    if (!v14)
    {
      break;
    }

    v15 = v14;

    v16 = [v15 isSelected];
    if (v16)
    {

      v18 = [v44 contact];
      if (v18)
      {
        v19 = v18;
        v20 = [objc_opt_self() viewControllerForContact:v18];
        v21 = [v44 address];
        if (!v21)
        {
          goto LABEL_46;
        }

        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.isPhoneNumber.getter();

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = [v44 address];
        if (!v23)
        {
          goto LABEL_47;
        }

        v24 = v23;

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        sub_100478940(v25, v27, v19);
        v29 = v28;

        if (!v20)
        {

          return;
        }

        v30 = String._bridgeToObjectiveC()();

        if (v29)
        {
          v31 = String._bridgeToObjectiveC()();
        }

        else
        {
          v31 = 0;
        }

        [v20 highlightPropertyWithKey:v30 identifier:{v31, v42}];
      }

      else
      {

        v32 = [v44 address];
        if (!v32 || (v33 = v32, v34 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v36 = v35, v33, type metadata accessor for FMContactsUtilities(), v37 = sub_1004769D8(v34, v36, 0, 0, 0, 0, 0), , v20 = [objc_opt_self() viewControllerForContact:v37], v37, !v20))
        {

LABEL_36:
          v17 = v44;
          goto LABEL_37;
        }
      }

      [v20 setDisplayMode:{1, v42}];
      [v20 setAllowsActions:1];
      v38 = v20;
      v39 = [v38 navigationItem];
      v40 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v43 action:"cancelActionWithSender:"];
      [v39 setLeftBarButtonItem:v40];

      v41 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v38];
      [v41 setModalPresentationStyle:2];
      [v43 presentViewController:v41 animated:1 completion:0];

      goto LABEL_36;
    }

    ++v8;
    v9 = v15;
    if (v12 == v7)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_100194A48()
{
  v1 = v0;
  v9 = [objc_allocWithZone(CNContactPickerViewController) init];
  [v9 setDelegate:v0];
  [v9 setAllowsEditing:1];
  [v9 setAllowsCancel:1];
  [v9 setModalPresentationStyle:3];
  sub_10000905C(0, &qword_1006B50C0);
  v2 = NSPredicate.init(format:_:)();
  [v9 setPredicateForEnablingContact:v2];

  v3 = NSPredicate.init(format:_:)();
  [v9 setPredicateForSelectionOfContact:v3];

  v4 = NSPredicate.init(format:_:)();
  [v9 setPredicateForSelectionOfProperty:v4];

  sub_10007EBC0(&unk_1006AF770);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100552210;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  *(v5 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 56) = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setDisplayedPropertyKeys:isa];

  [v1 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_100194C74()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMRecipientsViewController: build context menu activated - override in subclass", v3, 2u);
  }

  return 0;
}

UIFontTextStyle sub_100194D50()
{
  xmmword_1006D3E60 = xmmword_100556E20;
  *algn_1006D3E78 = xmmword_100556E30;
  *(&xmmword_1006D3E80 + 8) = xmmword_100556E40;
  xmmword_1006D3EA0 = 0u;
  unk_1006D3EB0 = 0u;
  *(&xmmword_1006D3EC0 + 8) = 0u;
  *&algn_1006D3ED0[8] = 0u;
  v0 = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_1006D3EF0 = xmmword_100556E50;
  xmmword_1006D3F00 = v0;
  qword_1006D3E70 = UIFontTextStyleFootnote;
  qword_1006D3E98 = 0x4079000000000000;
  LOBYTE(xmmword_1006D3EC0) = 1;
  BYTE8(xmmword_1006D3EE0) = 1;
  xmmword_1006D3F10 = v1;
  return UIFontTextStyleFootnote;
}

UIFontTextStyle sub_100194DE0()
{
  xmmword_1006D3F20 = xmmword_100556E60;
  qword_1006D3F30 = UIFontTextStyleFootnote;
  *algn_1006D3F38 = xmmword_100556E30;
  *(&xmmword_1006D3F40 + 8) = xmmword_100556E40;
  qword_1006D3F58 = 0x4079000000000000;
  xmmword_1006D3F60 = xmmword_100556E70;
  unk_1006D3F70 = xmmword_100556E80;
  LOBYTE(xmmword_1006D3F80) = 0;
  *(&xmmword_1006D3F80 + 8) = xmmword_100556E80;
  *&algn_1006D3F90[8] = xmmword_100556E80;
  BYTE8(xmmword_1006D3FA0) = 0;
  xmmword_1006D3FB0 = xmmword_100556E50;
  xmmword_1006D3FC0 = xmmword_100556E90;
  xmmword_1006D3FD0 = xmmword_100556EA0;
  return UIFontTextStyleFootnote;
}

void sub_100194FA0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMRecipientsViewController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  sub_100191484();
  sub_1001920AC();
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"showSelectedRecipientContactDetails"];
  [v1 setNumberOfTapsRequired:2];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (v2)
  {
    [v2 addGestureRecognizer:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001951A4(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMRecipientsViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v4 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 reflow];
  v5 = *&v1[v3];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v5 setEditable:1];
  v6 = *&v1[v3];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = [v6 textView];
  if (v7)
  {
    v8 = v7;
    [v7 becomeFirstResponder];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100195330(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 setEditable:1];
  v4 = *(a1 + v2);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = [v4 textView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 becomeFirstResponder];
}

uint64_t sub_1001953C8@<X0>(uint64_t *a1@<X8>)
{
  sub_100035F3C();
  StringProtocol.components(separatedBy:)();
  sub_10007EBC0(&qword_1006C0C10);
  sub_100004098(&qword_1006B0700, &qword_1006C0C10);
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001954AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CharacterSet();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v15 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = result;
    sub_10000905C(0, &qword_1006AEDC0);
    v34 = static OS_dispatch_queue.main.getter();
    (*(v12 + 16))(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v11);
    v17 = *(v12 + 80);
    v33 = v7;
    v18 = (v17 + 25) & ~v17;
    v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = v8;
    v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = v35;
    *(v21 + 16) = v35;
    *(v21 + 24) = v15;
    (*(v12 + 32))(v21 + v18, v14, v11);
    v23 = (v21 + v19);
    v24 = v38;
    *v23 = v37;
    v23[1] = v24;
    v25 = v32;
    *(v21 + v20) = v32;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
    aBlock[4] = sub_10019A904;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10062B3E8;
    v26 = _Block_copy(aBlock);
    sub_10019A9B4(v22, v15);

    v27 = v25;

    v28 = v40;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A078(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v29 = v42;
    v30 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v34;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v36 + 8))(v29, v30);
    return (*(v41 + 8))(v28, v43);
  }

  return result;
}

uint64_t sub_100195924(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6, void *a7)
{
  if (a2)
  {
    return a4(a6, a7);
  }

  v13 = _swiftEmptyArrayStorage;
  __chkstk_darwin(a1);
  v12[2] = v10;
  v12[3] = &v13;
  sub_1001902DC(sub_10019A9C0, v12, v11);
  a4(a6, v13);
}

uint64_t sub_1001959F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4._countAndFlagsBits = 980182388;
  v4._object = 0xE400000000000000;
  String.deletingPrefix(_:)(v4);
  v5._countAndFlagsBits = 0x3A6F746C69616DLL;
  v5._object = 0xE700000000000000;
  String.deletingPrefix(_:)(v5);

  sub_100035F3C();
  StringProtocol.components(separatedBy:)();

  sub_10007EBC0(&qword_1006C0C10);
  sub_100004098(&qword_1006B0700, &qword_1006C0C10);
  v6 = BidirectionalCollection<>.joined(separator:)();
  v8 = v7;

  v9 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v9;
  if ((result & 1) == 0)
  {
    result = sub_10008B9E4(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a3 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_10008B9E4((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
    *a3 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 16 * v12;
  *(v13 + 32) = v6;
  *(v13 + 40) = v8;
  return result;
}

void sub_100195BA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL), uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (*((swift_isaMask & *Strong) + 0x368))(a2, a3, a4, a5);
    if (!v11)
    {
      if (a4)
      {
        a4((v10[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability] & 1) == 0);
      }

      goto LABEL_10;
    }

    v12 = v11;
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 keyWindow];

    v15 = [v14 rootViewController];
    v16 = [v15 presentedViewController];
    if (v16)
    {
      do
      {

        v17 = [v15 presentedViewController];
        v16 = [v17 presentedViewController];
        v15 = v17;
      }

      while (v16);
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = v15;
      if (!v15)
      {
        goto LABEL_7;
      }
    }

    [v17 presentViewController:v12 animated:1 completion:0];

LABEL_7:
LABEL_10:
  }
}

void sub_100195D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((swift_isaMask & *Strong) + 0x370))(a2, a3);
    if (!v7)
    {
LABEL_8:

      return;
    }

    v8 = v7;
    v9 = [objc_opt_self() sharedApplication];
    v10 = [v9 keyWindow];

    v11 = [v10 rootViewController];
    v12 = [v11 presentedViewController];
    if (v12)
    {
      do
      {

        v13 = [v11 presentedViewController];
        v12 = [v13 presentedViewController];
        v11 = v13;
      }

      while (v12);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = v11;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    [v13 presentViewController:v8 animated:1 completion:0];

LABEL_7:
    goto LABEL_8;
  }
}

id sub_100195F20()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView;
  [*(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContactsTableView) reloadData];
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts);
  v3 = v2 != 0;
  [*(v0 + v1) setHidden:v2 == 0];
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView);

  return [v4 setHidden:v3];
}

uint64_t sub_100195FA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v85 = a6;
  v90 = a5;
  v83 = a4;
  v89 = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v87 = &v80 - v12;
  v13 = __chkstk_darwin(v11);
  v82 = &v80 - v14;
  v15 = __chkstk_darwin(v13);
  v91 = &v80 - v16;
  v17 = __chkstk_darwin(v15);
  v88 = &v80 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v80 - v20;
  __chkstk_darwin(v19);
  v93 = &v80 - v22;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v84 = v10;
  v23 = type metadata accessor for Logger();
  sub_100005B14(v23, qword_1006D4630);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v94 = v7;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "FMRecipientsViewController: Fetch all the predicates for contacts.", v27, 2u);
    v7 = v94;
  }

  v28 = v93;
  Date.init()();
  v29 = objc_opt_self();
  v30 = String._bridgeToObjectiveC()();
  v92 = [v29 predicateForContactsMatchingString:v30 accountIdentifier:0 containerIdentifier:0 groupIdentifier:0];

  v86 = *(v7 + 16);
  v86(v21, v28, v6);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    v34 = v88;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v36 = v35;
    v37 = *(v7 + 8);
    v37(v34, v6);
    v37(v21, v6);
    *(v33 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "FMRecipientsViewController: Fetch all the predicates completed. Took %f seconds.", v33, 0xCu);
  }

  else
  {

    v37 = *(v7 + 8);
    v37(v21, v6);
  }

  v38 = v91;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "FMRecipientsViewController: Fetch all contacts.", v41, 2u);
  }

  Date.init()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v44 = *(Strong + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_contactStore);
    if (qword_1006AED58 != -1)
    {
      swift_once();
    }

    sub_10007EBC0(&qword_1006AF180);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v95[0] = 0;
    v46 = [v44 unifiedContactsMatchingPredicate:v92 keysToFetch:isa error:v95];

    v47 = v95[0];
    if (v46)
    {
      sub_10000905C(0, &qword_1006BFD00);
      v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v47;

      v50 = v82;
      v86(v82, v38, v6);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = os_log_type_enabled(v51, v52);
      v89 = v43;
      if (v53)
      {
        v54 = swift_slowAlloc();
        v81 = v48;
        v55 = v50;
        v56 = v54;
        *v54 = 134217984;
        v57 = v88;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v59 = v58;
        v37(v57, v6);
        v60 = v55;
        v48 = v81;
        v37(v60, v6);
        *(v56 + 1) = v59;
        _os_log_impl(&_mh_execute_header, v51, v52, "FMRecipientsViewController: Fetch all contacts completed. Took %f seconds.", v56, 0xCu);
      }

      else
      {

        v37(v50, v6);
      }

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = os_log_type_enabled(v62, v63);
      v38 = v91;
      if (v64)
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "FMRecipientsViewController: Fetch all searchedContacts.", v65, 2u);
      }

      v66 = v87;
      Date.init()();
      v67 = v83;
      swift_beginAccess();
      v68 = *(v67 + 16);

      v69 = sub_1001C747C(v48, 0, v68, 0);

      v70 = v84;
      v86(v84, v66, v6);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        v74 = v88;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v76 = v75;
        v37(v74, v6);
        v37(v70, v6);
        *(v73 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v71, v72, "FMRecipientsViewController: Fetch all searchedContacts completed. Took %f seconds.", v73, 0xCu);

        v78 = v89;
        v77 = v90;
        if (!v90)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v37(v70, v6);
        v78 = v89;
        v77 = v90;
        if (!v90)
        {
LABEL_28:

          v37(v87, v6);
          goto LABEL_29;
        }
      }

      v77(v69);
      goto LABEL_28;
    }

    v61 = v95[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (v90)
  {
    v90(_swiftEmptyArrayStorage);
  }

LABEL_29:
  v37(v38, v6);
  return (v37)(v93, v6);
}

void sub_100196914(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v18 - 8);
  v20 = &v29 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v30 = a2;
    v31 = a11;
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
    type metadata accessor for MainActor();
    HIDWORD(v29) = a8;
    v24 = v22;

    v25 = a4;
    sub_100062900(a9);
    v26 = static MainActor.shared.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = &protocol witness table for MainActor;
    v28 = v30;
    *(v27 + 32) = v24;
    *(v27 + 40) = v28;
    *(v27 + 48) = a3;
    *(v27 + 56) = v25;
    *(v27 + 64) = a5;
    *(v27 + 72) = a6 & 1;
    *(v27 + 73) = BYTE1(a6) & 1;
    *(v27 + 74) = BYTE2(a6) & 1;
    *(v27 + 80) = a7;
    *(v27 + 88) = BYTE4(v29) & 1;
    *(v27 + 96) = a9;
    *(v27 + 104) = a10;
    *(v27 + 112) = v31;
    sub_100170C90(0, 0, v20, &unk_100556FF0, v27);
  }
}

uint64_t sub_100196B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = v16;
  *(v7 + 88) = v17;
  *(v7 + 280) = v15;
  *(v7 + 64) = a7;
  *(v7 + 72) = v14;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  sub_10007EBC0(&qword_1006B50E0);
  *(v7 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  *(v7 + 104) = v8;
  *(v7 + 112) = *(v8 - 8);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  sub_10007EBC0(&qword_1006B3658);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v9 = type metadata accessor for MessagingCapability();
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 192) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 200) = v11;
  *(v7 + 208) = v10;

  return _swift_task_switch(sub_100196D14, v11, v10);
}

id sub_100196D14()
{
  v91 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  *(v0 + 216) = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  swift_beginAccess();
  sub_10019BAF8(v4 + v5, v3);
  v6 = *(v2 + 48);
  *(v0 + 224) = v6;
  *(v0 + 232) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_100012DF0(*(v0 + 144), &qword_1006B3658);
    v7 = *(v0 + 280);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 40);
    v11 = objc_allocWithZone(MFComposeRecipient);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithContact:v8 address:v12 kind:v9];

    if (*(v10 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) == 1 && (v7 & 1) == 0)
    {
      v14 = *(v0 + 48);
      v15 = *(v0 + 56);

      sub_1001933F4(v14, v15, 0, 0);
      sub_1003EB538(0);
LABEL_27:

      goto LABEL_28;
    }

    v23 = *(v0 + 224);
    v24 = *(v0 + 152);
    v25 = *(v0 + 136);
    sub_10019BAF8(*(v0 + 40) + *(v0 + 216), v25);
    v23(v25, 1, v24);
    sub_100012DF0(v25, &qword_1006B3658);
    v26 = *(v0 + 40);
    v27 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
    result = *(v26 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
    if (result)
    {
      result = [result addRecipient:v13];
      v29 = *(v26 + v27);
      if (v29)
      {
        v30 = v29;

        v31 = [v30 atomViewForRecipient:v13];

        if (v31)
        {
          v32 = *(v0 + 280);
          v33 = objc_opt_self();
          v34 = &selRef_systemBlueColor;
          if (!v32)
          {
            v34 = &selRef_labelColor;
          }

          v35 = *v34;
          v36 = v31;
          v37 = [v33 v35];
          [v36 setTintColor:v37];
        }

        if (*(v0 + 280) == 1)
        {
          v38 = *(v0 + 80);
          sub_1003EB538(0);
          if (v38)
          {
            (*(v0 + 80))(1);
          }
        }

        else
        {
          v76 = *(v0 + 80);
          v75 = *(v0 + 88);
          v78 = *(v0 + 48);
          v77 = *(v0 + 56);
          v79 = *(v0 + 40);
          v80 = swift_allocObject();
          v80[2] = v79;
          v80[3] = v76;
          v80[4] = v75;
          v79;
          sub_100062900(v76);
          sub_1001933F4(v78, v77, sub_10019BEF0, v80);
        }

        result = *(v26 + v27);
        if (result)
        {
          v81 = *(v0 + 40);
          [result clearText];
          *(v81 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

          sub_100195F20();
          sub_100194344();
          goto LABEL_27;
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  v18 = *(v0 + 96);
  (*(*(v0 + 160) + 32))(*(v0 + 184), *(v0 + 144), *(v0 + 152));
  type metadata accessor for QueryController();
  *(v0 + 240) = QueryController.__allocating_init(serviceName:)();

  Destination.init(string:)();
  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    v19 = *(v0 + 184);
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    v22 = *(v0 + 96);

    sub_100012DF0(v22, &qword_1006B50E0);
    sub_1003EB538(0);

    (*(v20 + 8))(v19, v21);
LABEL_28:

    v82 = *(v0 + 8);

    return v82();
  }

  (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 96), *(v0 + 104));
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 176);
  v39 = *(v0 + 184);
  v41 = *(v0 + 152);
  v42 = *(v0 + 160);
  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  v46 = *(v0 + 104);
  v45 = *(v0 + 112);
  v47 = type metadata accessor for Logger();
  sub_100005B14(v47, qword_1006D4630);
  (*(v45 + 16))(v44, v43, v46);
  v48 = *(v42 + 16);
  v48(v40, v39, v41);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 176);
  if (v51)
  {
    v87 = *(v0 + 160);
    v85 = *(v0 + 168);
    v86 = *(v0 + 152);
    v88 = v50;
    v54 = *(v0 + 112);
    v53 = *(v0 + 120);
    v55 = *(v0 + 104);
    v56 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v56 = 136315394;
    sub_10000A078(&qword_1006B50E8, &type metadata accessor for Destination);
    v83 = v48;
    log = v49;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    v60 = *(v54 + 8);
    v60(v53, v55);
    v61 = sub_100005B4C(v57, v59, &v90);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    v83(v85, v52, v86);
    v62 = String.init<A>(describing:)();
    v64 = v63;
    v65 = *(v87 + 8);
    v65(v52, v86);
    v66 = sub_100005B4C(v62, v64, &v90);

    *(v56 + 14) = v66;
    _os_log_impl(&_mh_execute_header, log, v88, "Checking capability for destination: %s, capability: %s", v56, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v67 = *(v0 + 152);
    v68 = *(v0 + 160);
    v70 = *(v0 + 112);
    v69 = *(v0 + 120);
    v71 = *(v0 + 104);

    v65 = *(v68 + 8);
    v65(v52, v67);
    v60 = *(v70 + 8);
    v60(v69, v71);
  }

  *(v0 + 248) = v65;
  *(v0 + 256) = v60;
  v89 = (&async function pointer to dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:) + async function pointer to dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:));
  v72 = swift_task_alloc();
  *(v0 + 264) = v72;
  *v72 = v0;
  v72[1] = sub_100197554;
  v73 = *(v0 + 184);
  v74 = *(v0 + 128);

  return v89(v74, v73);
}

uint64_t sub_100197554(char a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = *(v4 + 200);
    v6 = *(v4 + 208);
    v7 = sub_100197A6C;
  }

  else
  {
    *(v4 + 281) = a1 & 1;
    v5 = *(v4 + 200);
    v6 = *(v4 + 208);
    v7 = sub_100197680;
  }

  return _swift_task_switch(v7, v5, v6);
}

id sub_100197680()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  v1(v5, v6);
  v2(v3, v4);
  v7 = *(v0 + 281);
  v8 = *(v0 + 280);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  v12 = objc_allocWithZone(MFComposeRecipient);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithContact:v9 address:v13 kind:v10];

  if (*(v11 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) != 1 || (v8 & 1) != 0)
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 152);
    v19 = *(v0 + 136);
    sub_10019BAF8(*(v0 + 40) + *(v0 + 216), v19);
    LODWORD(v18) = v17(v19, 1, v18) == 1;
    sub_100012DF0(v19, &qword_1006B3658);
    if (((v18 | v7) & 1) == 0)
    {
      v33 = *(v0 + 48);
      v34 = *(v0 + 56);

      sub_1001937EC(v33, v34);
      goto LABEL_15;
    }

    v20 = *(v0 + 40);
    v21 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
    result = *(v20 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
    if (result)
    {
      result = [result addRecipient:v14];
      v23 = *(v20 + v21);
      if (v23)
      {
        v24 = v23;

        v25 = [v24 atomViewForRecipient:v14];

        if (v25)
        {
          v26 = *(v0 + 280);
          v27 = objc_opt_self();
          v28 = &selRef_systemBlueColor;
          if (!v26)
          {
            v28 = &selRef_labelColor;
          }

          v29 = *v28;
          v30 = v25;
          v31 = [v27 v29];
          [v30 setTintColor:v31];
        }

        if (*(v0 + 280) == 1)
        {
          v32 = *(v0 + 80);
          sub_1003EB538(0);
          if (v32)
          {
            (*(v0 + 80))(1);
          }
        }

        else
        {
          v36 = *(v0 + 80);
          v35 = *(v0 + 88);
          v38 = *(v0 + 48);
          v37 = *(v0 + 56);
          v39 = *(v0 + 40);
          v40 = swift_allocObject();
          v40[2] = v39;
          v40[3] = v36;
          v40[4] = v35;
          v39;
          sub_100062900(v36);
          sub_1001933F4(v38, v37, sub_10019BEF0, v40);
        }

        result = *(v20 + v21);
        if (result)
        {
          v41 = *(v0 + 40);
          [result clearText];
          *(v41 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

          sub_100195F20();
          sub_100194344();
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v15 = *(v0 + 48);
  v16 = *(v0 + 56);

  sub_1001933F4(v15, v16, 0, 0);
LABEL_15:
  sub_1003EB538(0);
LABEL_19:

  v42 = *(v0 + 8);

  return v42();
}

id sub_100197A6C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  v1(v5, v6);
  v2(v3, v4);

  v7 = *(v0 + 280);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 40);
  v11 = objc_allocWithZone(MFComposeRecipient);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithContact:v8 address:v12 kind:v9];

  if (*(v10 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) != 1 || (v7 & 1) != 0)
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 152);
    v18 = *(v0 + 136);
    sub_10019BAF8(*(v0 + 40) + *(v0 + 216), v18);
    LODWORD(v17) = v16(v18, 1, v17);
    sub_100012DF0(v18, &qword_1006B3658);
    if (v17 != 1)
    {
      v32 = *(v0 + 48);
      v33 = *(v0 + 56);

      sub_1001937EC(v32, v33);
      goto LABEL_15;
    }

    v19 = *(v0 + 40);
    v20 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
    result = *(v19 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
    if (result)
    {
      result = [result addRecipient:v13];
      v22 = *(v19 + v20);
      if (v22)
      {
        v23 = v22;

        v24 = [v23 atomViewForRecipient:v13];

        if (v24)
        {
          v25 = *(v0 + 280);
          v26 = objc_opt_self();
          v27 = &selRef_systemBlueColor;
          if (!v25)
          {
            v27 = &selRef_labelColor;
          }

          v28 = *v27;
          v29 = v24;
          v30 = [v26 v28];
          [v29 setTintColor:v30];
        }

        if (*(v0 + 280) == 1)
        {
          v31 = *(v0 + 80);
          sub_1003EB538(0);
          if (v31)
          {
            (*(v0 + 80))(1);
          }
        }

        else
        {
          v35 = *(v0 + 80);
          v34 = *(v0 + 88);
          v37 = *(v0 + 48);
          v36 = *(v0 + 56);
          v38 = *(v0 + 40);
          v39 = swift_allocObject();
          v39[2] = v38;
          v39[3] = v35;
          v39[4] = v34;
          v38;
          sub_100062900(v35);
          sub_1001933F4(v37, v36, sub_10019BEF0, v39);
        }

        result = *(v19 + v20);
        if (result)
        {
          v40 = *(v0 + 40);
          [result clearText];
          *(v40 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

          sub_100195F20();
          sub_100194344();
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  sub_1001933F4(v14, v15, 0, 0);
LABEL_15:
  sub_1003EB538(0);
LABEL_19:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100197E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = a8;
  v44 = a14;
  v39 = a12;
  v40 = a6;
  v41 = a11;
  v42 = a13;
  v46 = a10;
  v47 = a5;
  v45 = a9;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v48 = *(v21 - 8);
  v49 = v21;
  __chkstk_darwin(v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  if (*(a1 + 8))
  {
    swift_errorRetain();
    sub_10019B990(v24, 1);
LABEL_7:
    v27 = 0;
    goto LABEL_8;
  }

  if (!*(v24 + 16))
  {
    goto LABEL_7;
  }

  v25 = sub_10000726C(a2, a3);
  if ((v26 & 1) == 0)
  {

    goto LABEL_7;
  }

  v27 = *(*(v24 + 56) + v25);

LABEL_8:
  sub_10000905C(0, &qword_1006AEDC0);
  v28 = static OS_dispatch_queue.main.getter();
  v29 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = a2;
  v32 = v47;
  *(v31 + 32) = a3;
  *(v31 + 40) = v32;
  *(v31 + 48) = v40;
  *(v31 + 56) = a7 & 1;
  *(v31 + 57) = BYTE1(a7) & 1;
  *(v31 + 58) = BYTE2(a7) & 1;
  *(v31 + 64) = v43;
  *(v31 + 72) = v27;
  v34 = v45;
  v33 = v46;
  *(v31 + 80) = v45;
  *(v31 + 88) = v33;
  v35 = v42;
  *(v31 + 96) = v41;
  aBlock[4] = v35;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v44;
  v36 = _Block_copy(aBlock);

  v37 = v32;
  sub_100062900(v34);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A078(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v50 + 8))(v20, v18);
  return (*(v48 + 8))(v23, v49);
}

void sub_10019826C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v18 - 8);
  v20 = &v32 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    sub_1003EB538(0);
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v34 = a2;
    v35 = a11;
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    type metadata accessor for MainActor();
    v33 = a7;
    v26 = v24;
    HIDWORD(v32) = a8;
    v27 = v26;

    v28 = a4;
    sub_100062900(a9);
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = &protocol witness table for MainActor;
    v31 = v34;
    *(v30 + 32) = v27;
    *(v30 + 40) = v31;
    *(v30 + 48) = a3;
    *(v30 + 56) = v28;
    *(v30 + 64) = a5;
    *(v30 + 72) = a6 & 1;
    *(v30 + 73) = BYTE1(a6) & 1;
    *(v30 + 74) = BYTE2(a6) & 1;
    *(v30 + 80) = v33;
    *(v30 + 88) = BYTE4(v32) & 1;
    *(v30 + 96) = a9;
    *(v30 + 104) = a10;
    *(v30 + 112) = v35;
    sub_100170C90(0, 0, v20, &unk_100556FD8, v30);
  }
}

uint64_t sub_100198498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = v16;
  *(v7 + 88) = v17;
  *(v7 + 280) = v15;
  *(v7 + 64) = a7;
  *(v7 + 72) = v14;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  sub_10007EBC0(&qword_1006B50E0);
  *(v7 + 96) = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  *(v7 + 104) = v8;
  *(v7 + 112) = *(v8 - 8);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  sub_10007EBC0(&qword_1006B3658);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  v9 = type metadata accessor for MessagingCapability();
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 192) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 200) = v11;
  *(v7 + 208) = v10;

  return _swift_task_switch(sub_1001986A8, v11, v10);
}

id sub_1001986A8()
{
  v82 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  *(v0 + 216) = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiredCapability;
  swift_beginAccess();
  sub_10019BAF8(v4 + v5, v3);
  v6 = *(v2 + 48);
  *(v0 + 224) = v6;
  *(v0 + 232) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_100012DF0(*(v0 + 144), &qword_1006B3658);
    v7 = *(v0 + 280);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 40);
    v11 = objc_allocWithZone(MFComposeRecipient);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithContact:v8 address:v12 kind:v9];

    if (*(v10 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) == 1 && (v7 & 1) == 0)
    {
      v14 = *(v0 + 48);
      v15 = *(v0 + 56);

      sub_1001933F4(v14, v15, 0, 0);
LABEL_18:

      goto LABEL_19;
    }

    v20 = *(v0 + 224);
    v21 = *(v0 + 152);
    v22 = *(v0 + 136);
    sub_10019BAF8(*(v0 + 40) + *(v0 + 216), v22);
    v20(v22, 1, v21);
    sub_100012DF0(v22, &qword_1006B3658);
    v23 = *(v0 + 40);
    v24 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
    result = *(v23 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
    if (result)
    {
      result = [result addRecipient:v13];
      v26 = *(v23 + v24);
      if (v26)
      {
        v27 = v26;

        v28 = [v27 atomViewForRecipient:v13];

        if (v28)
        {
          v29 = *(v0 + 280);
          v30 = objc_opt_self();
          v31 = &selRef_systemBlueColor;
          if (!v29)
          {
            v31 = &selRef_labelColor;
          }

          v32 = *v31;
          v33 = v28;
          v34 = [v30 v32];
          [v33 setTintColor:v34];
        }

        if ((*(v0 + 280) & 1) == 0)
        {
          sub_1001933F4(*(v0 + 48), *(v0 + 56), 0, 0);
        }

        result = *(v23 + v24);
        if (result)
        {
          v35 = *(v0 + 80);
          v36 = *(v0 + 40);
          [result clearText];
          *(v36 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

          sub_100195F20();
          sub_100194344();
          if (v35)
          {
            (*(v0 + 80))(*(v0 + 280));
          }

          goto LABEL_18;
        }

LABEL_32:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  v18 = *(v0 + 96);
  (*(*(v0 + 160) + 32))(*(v0 + 184), *(v0 + 144), *(v0 + 152));
  type metadata accessor for QueryController();
  *(v0 + 240) = QueryController.__allocating_init(serviceName:)();

  Destination.init(string:)();
  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    v19 = *(v0 + 96);
    (*(*(v0 + 160) + 8))(*(v0 + 184), *(v0 + 152));

    sub_100012DF0(v19, &qword_1006B50E0);
LABEL_19:

    v37 = *(v0 + 8);

    return v37();
  }

  (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 96), *(v0 + 104));
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 176);
  v38 = *(v0 + 184);
  v40 = *(v0 + 152);
  v41 = *(v0 + 160);
  v43 = *(v0 + 120);
  v42 = *(v0 + 128);
  v45 = *(v0 + 104);
  v44 = *(v0 + 112);
  v46 = type metadata accessor for Logger();
  sub_100005B14(v46, qword_1006D4630);
  (*(v44 + 16))(v43, v42, v45);
  v47 = *(v41 + 16);
  v47(v39, v38, v40);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 176);
  if (v50)
  {
    v78 = *(v0 + 160);
    v76 = *(v0 + 168);
    v77 = *(v0 + 152);
    v79 = v49;
    v53 = *(v0 + 112);
    v52 = *(v0 + 120);
    v54 = *(v0 + 104);
    v55 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v55 = 136315394;
    sub_10000A078(&qword_1006B50E8, &type metadata accessor for Destination);
    v74 = v47;
    log = v48;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v59 = *(v53 + 8);
    v59(v52, v54);
    v60 = sub_100005B4C(v56, v58, &v81);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    v74(v76, v51, v77);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    v64 = *(v78 + 8);
    v64(v51, v77);
    v65 = sub_100005B4C(v61, v63, &v81);

    *(v55 + 14) = v65;
    _os_log_impl(&_mh_execute_header, log, v79, "Checking capability for destination: %s, capability: %s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v66 = *(v0 + 152);
    v67 = *(v0 + 160);
    v69 = *(v0 + 112);
    v68 = *(v0 + 120);
    v70 = *(v0 + 104);

    v64 = *(v67 + 8);
    v64(v51, v66);
    v59 = *(v69 + 8);
    v59(v68, v70);
  }

  *(v0 + 248) = v64;
  *(v0 + 256) = v59;
  v80 = (&async function pointer to dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:) + async function pointer to dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:));
  v71 = swift_task_alloc();
  *(v0 + 264) = v71;
  *v71 = v0;
  v71[1] = sub_100198E60;
  v72 = *(v0 + 184);
  v73 = *(v0 + 128);

  return v80(v73, v72);
}

uint64_t sub_100198E60(char a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = *(v4 + 200);
    v6 = *(v4 + 208);
    v7 = sub_1001992F8;
  }

  else
  {
    *(v4 + 281) = a1 & 1;
    v5 = *(v4 + 200);
    v6 = *(v4 + 208);
    v7 = sub_100198F8C;
  }

  return _swift_task_switch(v7, v5, v6);
}

id sub_100198F8C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  v1(v5, v6);
  v2(v3, v4);
  v7 = *(v0 + 281);
  v8 = *(v0 + 280);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  v12 = objc_allocWithZone(MFComposeRecipient);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithContact:v9 address:v13 kind:v10];

  if (*(v11 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) != 1 || (v8 & 1) != 0)
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 152);
    v19 = *(v0 + 136);
    sub_10019BAF8(*(v0 + 40) + *(v0 + 216), v19);
    LODWORD(v18) = v17(v19, 1, v18) == 1;
    sub_100012DF0(v19, &qword_1006B3658);
    if (((v18 | v7) & 1) == 0)
    {
      v34 = *(v0 + 48);
      v35 = *(v0 + 56);

      sub_1001937EC(v34, v35);
      goto LABEL_17;
    }

    v20 = *(v0 + 40);
    v21 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
    result = *(v20 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
    if (result)
    {
      result = [result addRecipient:v14];
      v23 = *(v20 + v21);
      if (v23)
      {
        v24 = v23;

        v25 = [v24 atomViewForRecipient:v14];

        if (v25)
        {
          v26 = *(v0 + 280);
          v27 = objc_opt_self();
          v28 = &selRef_systemBlueColor;
          if (!v26)
          {
            v28 = &selRef_labelColor;
          }

          v29 = *v28;
          v30 = v25;
          v31 = [v27 v29];
          [v30 setTintColor:v31];
        }

        if ((*(v0 + 280) & 1) == 0)
        {
          sub_1001933F4(*(v0 + 48), *(v0 + 56), 0, 0);
        }

        result = *(v20 + v21);
        if (result)
        {
          v32 = *(v0 + 80);
          v33 = *(v0 + 40);
          [result clearText];
          *(v33 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

          sub_100195F20();
          sub_100194344();
          if (v32)
          {
            (*(v0 + 80))(*(v0 + 280));
          }

          goto LABEL_17;
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v15 = *(v0 + 48);
  v16 = *(v0 + 56);

  sub_1001933F4(v15, v16, 0, 0);
LABEL_17:

  v36 = *(v0 + 8);

  return v36();
}

id sub_1001992F8()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  v1(v5, v6);
  v2(v3, v4);

  v7 = *(v0 + 280);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 40);
  v11 = objc_allocWithZone(MFComposeRecipient);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithContact:v8 address:v12 kind:v9];

  if (*(v10 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_requiresReachability) != 1 || (v7 & 1) != 0)
  {
    v16 = *(v0 + 224);
    v17 = *(v0 + 152);
    v18 = *(v0 + 136);
    sub_10019BAF8(*(v0 + 40) + *(v0 + 216), v18);
    LODWORD(v17) = v16(v18, 1, v17);
    sub_100012DF0(v18, &qword_1006B3658);
    if (v17 != 1)
    {
      v33 = *(v0 + 48);
      v34 = *(v0 + 56);

      sub_1001937EC(v33, v34);
      goto LABEL_17;
    }

    v19 = *(v0 + 40);
    v20 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
    result = *(v19 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
    if (result)
    {
      result = [result addRecipient:v13];
      v22 = *(v19 + v20);
      if (v22)
      {
        v23 = v22;

        v24 = [v23 atomViewForRecipient:v13];

        if (v24)
        {
          v25 = *(v0 + 280);
          v26 = objc_opt_self();
          v27 = &selRef_systemBlueColor;
          if (!v25)
          {
            v27 = &selRef_labelColor;
          }

          v28 = *v27;
          v29 = v24;
          v30 = [v26 v28];
          [v29 setTintColor:v30];
        }

        if ((*(v0 + 280) & 1) == 0)
        {
          sub_1001933F4(*(v0 + 48), *(v0 + 56), 0, 0);
        }

        result = *(v19 + v20);
        if (result)
        {
          v31 = *(v0 + 80);
          v32 = *(v0 + 40);
          [result clearText];
          *(v32 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = 0;

          sub_100195F20();
          sub_100194344();
          if (v31)
          {
            (*(v0 + 80))(*(v0 + 280));
          }

          goto LABEL_17;
        }

LABEL_22:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  sub_1001933F4(v14, v15, 0, 0);
LABEL_17:

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100199670(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
LABEL_9:
    swift_beginAccess();
    v18 = *(a2 + 16);

    v19 = sub_1001C747C(v12, v16, v18, 1);

    sub_10000905C(0, &qword_1006AEDC0);
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = v19;
    aBlock[4] = sub_10019B960;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10062B5A0;
    v22 = _Block_copy(aBlock);
    v23 = a3;

    v24 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A078(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v25 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v7 + 8))(v25, v6);
    return (*(v33 + 8))(v24, v9);
  }

  v28 = a2;
  v29 = a3;
  v30 = v9;
  v31 = v7;
  v12 = sub_10008FC98(v11, 0);
  v13 = sub_1004A7F2C(aBlock, v12 + 4, v11, a1);

  result = sub_10000BEC8();
  if (v13 == v11)
  {
    v15 = *(a1 + 16);
    if (!v15)
    {
      v16 = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }

    v27 = v6;
    v16 = sub_10002E21C(v15, 0);
    v17 = sub_1004A2D50(aBlock, v16 + 4, v15, a1);

    result = sub_10000BEC8();
    if (v17 == v15)
    {
      v6 = v27;
LABEL_8:
      v9 = v30;
      v7 = v31;
      a2 = v28;
      a3 = v29;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100199AD4(uint64_t a1, unint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContacts) = a2;

  [*(a1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_suggestedContactsTableView) reloadData];
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(a1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_hideSuggestedContactsLabel) = result == 0;
  return result;
}

void sub_100199C1C(uint64_t a1)
{
  v22.receiver = v1;
  v22.super_class = type metadata accessor for FMRecipientsViewController();
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", a1);
  v20 = &type metadata for SolariumFeatureFlag;
  v21 = sub_10000BD04();
  LOBYTE(a1) = isFeatureEnabled(_:)();
  sub_100006060(v19);
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_horizontalRuleView];
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v4];
  }

  else
  {
    v5 = [v1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    v7 = objc_opt_self();
    if (v6 == 2)
    {
      v8 = [v7 systemGray5Color];
    }

    else
    {
      v9 = [v7 systemLightGrayColor];
      v8 = [v9 colorWithAlphaComponent:0.25];
    }

    v10 = [v1 navigationController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 navigationBar];

      [v12 setBackgroundColor:v8];
    }

    v13 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
    if (!v13)
    {
      goto LABEL_13;
    }

    [v13 setBackgroundColor:v8];
    v14 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_horizontalRuleView];
    v4 = [objc_opt_self() separatorColor];
    [v14 setBackgroundColor:v4];
  }

  v15 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (v15)
  {
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 labelColor];
    [v17 setTypingTextColor:v18];

    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

id sub_100199F34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMRecipientsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMRecipientsViewController()
{
  result = qword_1006B5098;
  if (!qword_1006B5098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019A184()
{
  sub_10019A288();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10019A288()
{
  if (!qword_1006B50A8)
  {
    type metadata accessor for MessagingCapability();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B50A8);
    }
  }
}

__n128 sub_10019A2E0(uint64_t a1, __int128 *a2)
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

uint64_t sub_10019A314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_10019A35C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

char *sub_10019A3DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v42 = v7;
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v40 - v8;
  isUniquelyReferenced_nonNull_native = CharacterSet.init(charactersIn:)();
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v5;
    v47 = v4;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
  v10 = isUniquelyReferenced_nonNull_native;
  v46 = v5;
  v47 = v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = 0;
  v5 = a1 & 0xC000000000000001;
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v13 = v11;
    while (1)
    {
      if (v5)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v16 = [v14 normalizedAddress];
      if (v16)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        goto LABEL_23;
      }
    }

    v17 = v16;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10008B9E4(0, *(v12 + 2) + 1, 1, v12);
      v12 = isUniquelyReferenced_nonNull_native;
    }

    v4 = *(v12 + 2);
    v20 = *(v12 + 3);
    if (v4 >= v20 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10008B9E4((v20 > 1), v4 + 1, 1, v12);
      v12 = isUniquelyReferenced_nonNull_native;
    }

    *(v12 + 2) = v4 + 1;
    v21 = &v12[16 * v4];
    *(v21 + 4) = v41;
    *(v21 + 5) = v19;
  }

  while (v11 != v10);
LABEL_23:
  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v22 = v48;
  *(&v40 - 2) = v48;
  v23 = sub_100190628(sub_10019A828, (&v40 - 4), v12);

  v24 = objc_allocWithZone(type metadata accessor for FMReachabilityOperation());

  v26 = sub_10048BE48(v25, 0, 1);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v46;
  v28 = v47;
  v30 = v43;
  (*(v46 + 16))(v43, v22, v47);
  v31 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v32 = (v42 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  (*(v29 + 32))(v33 + v31, v30, v28);
  v34 = (v33 + v32);
  v35 = v45;
  *v34 = v44;
  v34[1] = v35;
  *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v36 = &v26[qword_1006B1E58];
  v37 = *&v26[qword_1006B1E58];
  *v36 = sub_10019A848;
  v36[1] = v33;
  v38 = v26;

  sub_10001835C(v37);

  if (qword_1006AEAD8 != -1)
  {
    swift_once();
  }

  [*(static FMTaskScheduler.shared + 24) addOperation:v38];
  (*(v29 + 8))(v48, v28);
  return v38;
}