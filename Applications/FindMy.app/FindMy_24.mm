void sub_100281618(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentStackView);
  [v4 spacing];
  v6 = v5;
  [v4 bounds];
  v8 = v7;
  v10 = v9;
  [*(v2 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_spacerView) bounds];
  Height = CGRectGetHeight(v33);
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v13 = *(v2 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel);
  *(inited + 32) = v13;
  v14 = *(v2 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel);
  *(inited + 40) = v14;
  v15 = v13;
  v16 = v14;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  for (i = v15; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v18 = i;
    if ([i isHidden])
    {
      [v18 sizeThatFits:{v8, v10}];
      v20 = v19;

      v21 = v6 + v20 + 0.0;
    }

    else
    {

      v21 = 0.0;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v22 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v23 = v22;
  if ([v22 isHidden])
  {
    [v23 sizeThatFits:{v8, v10}];
    v25 = v24;

    v26 = v6 + v25;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v21 + v26;
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = a1 < 0.1 || v27 < Height;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005B14(v29, qword_1006D4630);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = a1;
    *(v32 + 12) = 1024;
    *(v32 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v30, v31, "FMUnknownItemsLandingViewController: updateContentVisibility: percent: %f show: %{BOOL}d", v32, 0x12u);
  }

  sub_10028191C(v28, 1);
}

void sub_10028191C(char a1, char a2)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_showsAdditionalContent;
  if (*(v2 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_showsAdditionalContent) != (a1 & 1))
  {
    v5 = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v3;
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    v10 = qword_1006AEBE0;
    v11 = v5;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = a1 & 1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMUnknownItemsLandingViewController: Update additional content visibility: %{BOOL}d, animated: %{BOOL}d", v15, 0xEu);
    }

    if (a1)
    {
      v16 = sub_10028239C;
    }

    else
    {
      v16 = sub_10028232C;
    }

    if (a1)
    {
      v17 = v9;
    }

    else
    {
      v17 = v8;
    }

    if (a1)
    {
      v18 = sub_10028232C;
    }

    else
    {
      v18 = sub_10028239C;
    }

    if (a1)
    {
      v19 = v8;
    }

    else
    {
      v19 = v9;
    }

    *(v5 + v4) = v3;
    v20 = objc_opt_self();
    if (a2)
    {
      v34 = v18;
      v35 = v19;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100004AE4;
      v33 = &unk_100632850;
      v21 = _Block_copy(&v30);
      swift_retain_n();

      v22 = swift_allocObject();
      v22[2] = 0x3FE0000000000000;
      v22[3] = 4;
      v22[4] = v16;
      v22[5] = v17;
      v34 = sub_100282418;
      v35 = v22;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_10037A044;
      v33 = &unk_1006328A0;
      v23 = _Block_copy(&v30);

      [v20 animateWithDuration:4 delay:v21 options:v23 animations:0.25 completion:0.0];

      _Block_release(v23);
      _Block_release(v21);
    }

    else
    {
      v24 = v16;
      v25 = swift_allocObject();
      *(v25 + 16) = v18;
      *(v25 + 24) = v19;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_100009624;
      *(v26 + 24) = v25;
      v34 = sub_10000964C;
      v35 = v26;
      v30 = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_1000095FC;
      v33 = &unk_100632828;
      v27 = _Block_copy(&v30);
      swift_retain_n();

      [v20 performWithoutAnimation:v27];
      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        (v24)(v29);
      }
    }
  }
}

void sub_100281DA8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a1)
  {
    v9 = objc_opt_self();
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100004AE4;
    v11[3] = &unk_1006328C8;
    v10 = _Block_copy(v11);

    [v9 animateWithDuration:a2 delay:v10 options:0 animations:a5 * 0.5 completion:0.0];
    _Block_release(v10);
  }
}

void sub_100281EA8(char a1)
{
  sub_10027C53C(a1);
  if (a1)
  {
    if (a1 == 1)
    {
      v14 = &type metadata for SolariumFeatureFlag;
      v15 = sub_10000BD04();
      v2 = isFeatureEnabled(_:)();
      sub_100006060(v13);
      if (v2)
      {
        v3 = 0.5;
      }

      else
      {
        v3 = 0.64;
      }
    }

    else
    {
      v3 = 1.0;
    }
  }

  else
  {
    v3 = 0.0;
  }

  v14 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v15 = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if (v5)
  {
    v6 = 0.5;
  }

  else
  {
    v6 = 0.64;
  }

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
    *v10 = 134218240;
    if (a1)
    {
      if (a1 == 1)
      {
        v14 = &type metadata for SolariumFeatureFlag;
        v15 = v4;
        v11 = isFeatureEnabled(_:)();
        sub_100006060(v13);
        v12 = 0.5;
        if ((v11 & 1) == 0)
        {
          v12 = 0.64;
        }
      }

      else
      {
        v12 = 1.0;
      }
    }

    else
    {
      v12 = 0.0;
    }

    *(v10 + 4) = v12;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v3 < v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMUnknownItemsLandingViewController: didLockCard: percent: %f show: %{BOOL}d", v10, 0x12u);
  }

  sub_10028191C(v3 < v6, 0);
}

uint64_t sub_1002820C0()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_delegate);

  return swift_unknownObjectRelease();
}

id sub_100282190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002822D8()
{
  result = qword_1006B9338;
  if (!qword_1006B9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B9338);
  }

  return result;
}

id sub_10028232C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel) setHidden:(v2 & 1) == 0];
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel);

  return [v3 setHidden:(v2 & 1) == 0];
}

id sub_10028239C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel) setAlpha:v2];
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel);

  return [v3 setAlpha:v2];
}

unint64_t sub_100282428()
{
  result = qword_1006B9348;
  if (!qword_1006B9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B9348);
  }

  return result;
}

uint64_t sub_10028247C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B6D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002824F4()
{
  v1 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentContainerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_heroImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_primarySubtitleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButton;
  *(v0 + v7) = [objc_allocWithZone(UIButton) init];
  v8 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_spacerView;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  v9 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButtonTopConstraint;
  *(v0 + v9) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v0 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_type) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_cardChangeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_showsAdditionalContent) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100282730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEmptyListView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100282840()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_isFirstLayout) = 1;
  v2 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconViewContainer;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel;
  *(v1 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton;
  v7 = objc_allocWithZone(type metadata accessor for FMEmptyListButton());
  v8 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  v9 = objc_opt_self();
  *&v7[v8] = [v9 systemBlueColor];
  v7[OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled] = 1;
  *(v1 + v6) = sub_100038758([v9 tertiarySystemFillColor], 1, 1, 0);
  v10 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollView;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for FMScrollView()) init];
  v11 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_fixedContainerView;
  *(v1 + v11) = [objc_allocWithZone(UIStackView) init];
  v12 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollableContainerView;
  *(v1 + v12) = [objc_allocWithZone(UIStackView) init];
  v13 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonsStackView;
  *(v1 + v13) = [objc_allocWithZone(UIStackView) init];
  v14 = OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButtonCenteringConstraint;
  *(v1 + v14) = [objc_allocWithZone(NSLayoutConstraint) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100282B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_imageView;
  *&v5[v7] = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_titleLabel;
  *&v5[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_subtitleLabel;
  *&v5[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_imageViewContainer;
  *&v5[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_verticalStackView;
  *&v5[v11] = [objc_allocWithZone(UIStackView) init];
  v19.receiver = v5;
  v19.super_class = type metadata accessor for FMSymbolBulletedListItemView();
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = *&v12[OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_titleLabel];
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();

  [v13 setText:v15];

  v16 = *&v14[OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_subtitleLabel];
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  [*&v14[OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_imageView] setImage:a5];
  sub_100282D04();

  return v14;
}

void sub_100282D04()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  v58 = xmmword_100552F00;
  *(inited + 16) = xmmword_100552F00;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_verticalStackView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_titleLabel);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_subtitleLabel);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_imageViewContainer);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_imageView);
  *(inited + 64) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = inited & 0xFFFFFFFFFFFFFF8;
  v9 = v3;
  v10 = v4;
  p_ivar_lyt = v9;
  v59 = v10;
  v12 = v2;
  v60 = v5;
  v13 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v14 = p_ivar_lyt;
  v15 = v12;
  while (1)
  {
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:{0, v58}];

    if (v7)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 2uLL)
      {
        goto LABEL_27;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 3uLL)
      {
        goto LABEL_27;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 4uLL)
      {
        goto LABEL_27;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v8 + 16) < 5uLL)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    swift_setDeallocating();
    swift_arrayDestroy();
    [v0 setAxis:0];
    [v0 setAlignment:3];
    [v0 setDistribution:0];
    [v0 setSpacing:20.0];
    [v60 addSubview:v13];
    [v0 addArrangedSubview:v60];
    [v0 addArrangedSubview:v12];
    [v13 setContentMode:4];
    LODWORD(v24) = 1148846080;
    [v13 setContentHuggingPriority:0 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [v13 setContentCompressionResistancePriority:0 forAxis:v25];
    v26 = objc_opt_self();
    if (qword_1006AEB98 != -1)
    {
      swift_once();
    }

    v27 = [v26 preferredFontForTextStyle:qword_1006D4368];
    v28 = sub_100039388(2);

    v8 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v14 setFont:v28];

    v29 = objc_opt_self();
    v30 = [v29 labelColor];
    v7 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v14 setTextColor:v30];

    if (qword_1006AEBA0 != -1)
    {
      swift_once();
    }

    v31 = [v26 preferredFontForTextStyle:qword_1006D4370];
    [v59 setFont:v31];

    v32 = [v29 secondaryLabelColor];
    [v59 setTextColor:v32];

    v33 = swift_initStackObject();
    v0 = v33;
    *(v33 + 16) = xmmword_100552EE0;
    *(v33 + 32) = v14;
    inited = v33 + 32;
    *(v33 + 40) = v59;
    p_ivar_lyt = (v33 & 0xFFFFFFFFFFFFFF8);
    v34 = v33 & 0xC000000000000001;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v35 = v14;
    }

    v36 = v35;
    v8 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v35 setNumberOfLines:0];
    v7 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v36 setAdjustsFontForContentSizeCategory:1];

    if (v34)
    {
      break;
    }

    if (*(p_ivar_lyt + 2) >= 2uLL)
    {
      v37 = v0[5];
      goto LABEL_26;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = p_ivar_lyt;
  }

  v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
  v38 = v37;
  [v37 setNumberOfLines:0];
  [v38 setAdjustsFontForContentSizeCategory:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v12 setAxis:1];
  [v12 addArrangedSubview:v14];
  [v12 addArrangedSubview:v59];
  v39 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = v58;
  v41 = [v13 leadingAnchor];
  v42 = v14;
  v43 = [v60 leadingAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];

  *(v40 + 32) = v44;
  v45 = [v13 trailingAnchor];
  v46 = [v60 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v40 + 40) = v47;
  v48 = [v13 topAnchor];
  v49 = [v60 topAnchor];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49];

  *(v40 + 48) = v50;
  v51 = [v13 bottomAnchor];
  v52 = [v60 bottomAnchor];
  v53 = [v51 constraintLessThanOrEqualToAnchor:v52];

  *(v40 + 56) = v53;
  v54 = [v13 centerYAnchor];
  v55 = [v42 firstBaselineAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v40 + 64) = v56;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:isa];
}

id sub_10028354C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSymbolBulletedListItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100283620()
{
  v1 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_subtitleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_imageViewContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy28FMSymbolBulletedListItemView_verticalStackView;
  *(v0 + v5) = [objc_allocWithZone(UIStackView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10028383C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label) text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = v3;
  v6 = [objc_opt_self() mainBundle];
  v11._object = 0x800000010058BBD0;
  v7._object = 0x800000010058BBB0;
  v11._countAndFlagsBits = 0xD000000000000026;
  v7._countAndFlagsBits = 0xD000000000000014;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v11);

  String.append(_:)(v9);

  return v5;
}

id sub_1002839A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEmptyListButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002839E8()
{
  sub_10003D290();
  if (*(v0 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) == 2)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return;
    }
  }

  v2 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v19._object = 0x800000010058BC70;
  v5._countAndFlagsBits = 0xD000000000000018;
  v5._object = 0x800000010058BC50;
  v19._countAndFlagsBits = 0xD00000000000002ALL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v19);

  v7 = String._bridgeToObjectiveC()();

  [v2 setText:v7];

  v8 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v9 = [v3 mainBundle];
  v20._object = 0x800000010058BCC0;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  v10._object = 0x800000010058BCA0;
  v20._countAndFlagsBits = 0xD00000000000002CLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v20);

  v12 = String._bridgeToObjectiveC()();

  [v8 setText:v12];

  v13 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v14 = [v3 mainBundle];
  v21._object = 0x8000000100584530;
  v15._object = 0x8000000100584510;
  v21._countAndFlagsBits = 0xD000000000000023;
  v15._countAndFlagsBits = 0xD000000000000011;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

  v17 = String._bridgeToObjectiveC()();

  [v13 setText:v17];
}

id sub_100283E34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDevicesTerminalView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMLostModeTrackable()
{
  result = qword_1006B94F8;
  if (!qword_1006B94F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100283ED8()
{
  type metadata accessor for FMIPItem();
  if (v0 <= 0x3F)
  {
    sub_100283F4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100283F4C()
{
  if (!qword_1006B9508)
  {
    type metadata accessor for FMIPDevice();
    sub_10007EC08(&qword_1006B07D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006B9508);
    }
  }
}

uint64_t sub_100283FD0()
{
  v1 = type metadata accessor for FMIPFeatures();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v9 + 32))(v11, v14, v8);
    if (FMIPDevice.isLocalFindable.getter())
    {
      (*(v9 + 8))(v11, v8);
      sub_100012DF0(&v14[v15], &qword_1006B07D0);
      v16 = 0;
    }

    else
    {
      FMIPDevice.features.getter();
      static FMIPFeatures.isNotifyWhenDetachedSupported.getter();
      sub_100179F58();
      v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v21 = v15;
      v18 = *(v2 + 8);
      v18(v5, v1);
      v18(v7, v1);
      (*(v9 + 8))(v11, v8);
      v16 = v17 ^ 1;
      sub_100012DF0(&v14[v21], &qword_1006B07D0);
    }
  }

  else
  {
    sub_10009715C(v14);
    v16 = 1;
  }

  return v16 & 1;
}

BOOL sub_1002842B8()
{
  v0 = type metadata accessor for FMIPItem();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = __chkstk_darwin(v0);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v46 = &v44 - v3;
  v4 = type metadata accessor for FMIPFeatures();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = sub_10007EBC0(&qword_1006B07D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = type metadata accessor for FMIPDevice();
  v49 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() currentNotificationCenter];
  v24 = [v23 notificationSettings];

  v25 = [v24 authorizationStatus];
  if ((v25 | 2) == 3)
  {
    return 0;
  }

  else
  {
    v28 = v50;
    v27 = v51;
    v44 = v14;
    v45 = v19;
    v29 = v52;
    sub_1000970F8(v53, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
      v31 = v49;
      v32 = v45;
      (*(v49 + 32))(v45, v22, v17);
      sub_100035318(&v22[v30], v16, &qword_1006B07D0);
      if (FMIPDevice.isLocalFindable.getter())
      {
        sub_100012DF0(v16, &qword_1006B07D0);
        (*(v31 + 8))(v32, v17);
        return 0;
      }

      else
      {
        v50 = v16;
        v53 = v17;
        FMIPDevice.features.getter();
        static FMIPFeatures.isNotifyWhenDetachedSupported.getter();
        sub_100179F58();
        v34 = v47;
        v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v36 = *(v48 + 8);
        v36(v8, v34);
        v36(v10, v34);
        if (v35)
        {
          sub_100012DF0(v50, &qword_1006B07D0);
          (*(v49 + 8))(v32, v53);
          return 0;
        }

        else
        {
          v37 = v50;
          v38 = v44;
          sub_1001104A8(v50, v44);
          v39 = (*(v27 + 48))(v38, 1, v29);
          v40 = v49;
          v41 = v53;
          if (v39 == 1)
          {
            sub_100012DF0(v38, &qword_1006B07D0);
            v42 = v45;
            v26 = FMIPDevice.canEnableNotifyWhenFound()();
            sub_100012DF0(v37, &qword_1006B07D0);
            (*(v40 + 8))(v42, v41);
          }

          else
          {
            v43 = v46;
            (*(v27 + 32))(v46, v38, v29);
            v26 = FMIPItem.canEnableNotifyWhenFound()();
            (*(v27 + 8))(v43, v29);
            sub_100012DF0(v37, &qword_1006B07D0);
            (*(v40 + 8))(v45, v41);
          }
        }
      }
    }

    else
    {
      (*(v27 + 32))(v28, v22, v29);
      v26 = FMIPItem.canEnableNotifyWhenFound()();
      (*(v27 + 8))(v28, v29);
    }
  }

  return v26;
}

uint64_t sub_100284894@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v36 = &v35 - v5;
  v6 = type metadata accessor for FMIPProductType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    sub_100012DF0(&v16[v17], &qword_1006B07D0);
    v19 = type metadata accessor for FMIPDevice();
    return (*(*(v19 - 8) + 8))(v16, v19);
  }

  v21 = a1;
  (*(v11 + 32))(v13, v16, v10);
  FMIPItem.productType.getter();
  v22 = (*(v7 + 88))(v9, v6);
  if (v22 == enum case for FMIPProductType.b389(_:))
  {
    (*(v7 + 96))(v9, v6);
    sub_100012DF0(v9, &qword_1006B1AA8);
  }

  else
  {
    if (v22 != enum case for FMIPProductType.zeus(_:))
    {
      v31 = enum case for FMIPProductType.hawkeye(_:);
      v32 = v22;
      (*(v11 + 8))(v13, v10);
      if (v32 == v31)
      {
        (*(v7 + 96))(v9, v6);
        v33 = type metadata accessor for URL();
        (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
        return sub_100012DF0(v9, &qword_1006C39A0);
      }

      else
      {
        v34 = type metadata accessor for URL();
        (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
        return (*(v7 + 8))(v9, v6);
      }
    }

    (*(v7 + 96))(v9, v6);
    v23 = type metadata accessor for FMIPZeusProductInformation();
    (*(*(v23 - 8) + 8))(v9, v23);
  }

  v24 = [objc_opt_self() mainBundle];
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v27 = [v24 URLForResource:v25 withExtension:v26];

  v28 = v36;
  if (v27)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v11 + 8))(v13, v10);
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v28, v29, 1, v30);
  return sub_100035318(v28, a1, &unk_1006B0120);
}

uint64_t sub_100284E50()
{
  v1 = type metadata accessor for FMIPItem();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v8 + 32))(v10, v13, v7);
    sub_100035318(&v13[v14], v6, &qword_1006B07D0);
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v15._countAndFlagsBits = 0xD00000000000001ELL;
    v15._object = 0x800000010058BD30;
    String.append(_:)(v15);
    _print_unlocked<A, B>(_:_:)();
    v16._countAndFlagsBits = 0x61506D657469202CLL;
    v16._object = 0xEC000000203A7472;
    String.append(_:)(v16);
    _print_unlocked<A, B>(_:_:)();
    v17 = v23;
    sub_100012DF0(v6, &qword_1006B07D0);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v18 = v22;
    (*(v22 + 32))(v3, v13, v1);
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v19._object = 0x800000010058BD10;
    v19._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v19);
    _print_unlocked<A, B>(_:_:)();
    v17 = v23;
    (*(v18 + 8))(v3, v1);
  }

  return v17;
}

uint64_t FMFLocationAlert.localizedPlaceAndScheduleString.getter()
{
  sub_10028536C();
  v0 = FMFLocationAlert.fence.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 localizedSubtitleStringWithLocationName:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

Swift::String __swiftcall FMFLocationAlert.requestNotificationString(follower:)(Swift::String follower)
{
  sub_10028536C();
  v1 = FMFLocationAlert.fence.getter();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 localizedRequestNotificationStringForFollower:v2 locationName:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_10028536C()
{
  v0 = sub_10007EBC0(&qword_1006AF740);
  v1 = __chkstk_darwin(v0 - 8);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v26 - v3;
  v5 = type metadata accessor for FMFLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for FMFLabel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMFLocationAlert.label.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &qword_1006B0038);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v16 = FMFLabel.value.getter();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      countAndFlagsBits = FMFLabel.value.getter();
      (*(v13 + 8))(v15, v12);
      return countAndFlagsBits;
    }

    (*(v13 + 8))(v15, v12);
  }

  FMFLocationAlert.location.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &qword_1006AF740);
    v21 = [objc_opt_self() mainBundle];
    v28._object = 0x800000010058BDA0;
    v22._object = 0x800000010058BD70;
    v28._countAndFlagsBits = 0xD000000000000037;
    v22._countAndFlagsBits = 0xD000000000000025;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v28)._countAndFlagsBits;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v24 = v27;
    (*(v6 + 16))(v27, v8, v5);
    (*(v6 + 56))(v24, 0, 1, v5);
    countAndFlagsBits = sub_1000532F8(v24, 0);
    sub_100012DF0(v24, &qword_1006AF740);
    (*(v6 + 8))(v8, v5);
  }

  return countAndFlagsBits;
}

id sub_1002858D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMutableGestureView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002859C0(void *a1, uint64_t a2)
{
  v141 = type metadata accessor for FMFDefaultLabel();
  v139 = *(v141 - 1);
  __chkstk_darwin(v141);
  v138 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for FMFLabel();
  v5 = *(v143 - 8);
  v6 = __chkstk_darwin(v143);
  v132 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v127 - v9;
  __chkstk_darwin(v8);
  v142 = &v127 - v11;
  v12 = type metadata accessor for FMFLabelSourceType();
  v135 = *(v12 - 8);
  v136 = v12;
  __chkstk_darwin(v12);
  v134 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFLocation();
  v137 = *(v14 - 8);
  __chkstk_darwin(v14);
  v133 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v16 - 8);
  v18 = &v127 - v17;
  v19 = sub_10007EBC0(&qword_1006B0038);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v144 = &v127 - v24;
  __chkstk_darwin(v23);
  v146 = &v127 - v25;
  v26 = IndexPath.section.getter();
  if (v26 <= 2)
  {
    v27 = v26;
    v129 = v22;
    v128 = v10;
    v140 = v5;
    v28 = String._bridgeToObjectiveC()();
    v130 = a2;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v30 = [a1 dequeueReusableCellWithIdentifier:v28 forIndexPath:isa];

    type metadata accessor for FMLabelTableViewCell();
    v31 = swift_dynamicCastClassUnconditional();
    v32 = [a1 allowsSelection];
    [v31 setUserInteractionEnabled:v32];
    v131 = v30;
    v33 = [v31 textLabel];
    if (v33)
    {
      v34 = v33;
      v35 = objc_opt_self();
      v36 = &selRef_labelColor;
      if (!v32)
      {
        v36 = &selRef_secondaryLabelColor;
      }

      v37 = [v35 *v36];
      [v34 setTextColor:v37];
    }

    v38 = [v31 textLabel];
    if (v38)
    {
      v39 = v38;
      v40 = [objc_opt_self() preferredFontForTextStyle:*(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_style)];
      [v39 setFont:v40];
    }

    [v31 setAccessoryType:0];
    v41 = v140;
    if (v27)
    {
      if (v27 != 1)
      {
        v74 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels;
        v75 = *(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels);
        if (v75)
        {
          v76 = *(v75 + 16);
        }

        else
        {
          v76 = 0;
        }

        v83 = v143;
        if (IndexPath.row.getter() >= v76)
        {
          v90 = [v31 textLabel];
          if (v90)
          {
            v91 = v90;
            v92 = [objc_opt_self() mainBundle];
            v148._object = 0x800000010058C040;
            v93._countAndFlagsBits = 0xD00000000000001BLL;
            v93._object = 0x800000010058C020;
            v148._countAndFlagsBits = 0xD00000000000002DLL;
            v94._countAndFlagsBits = 0;
            v94._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v148);

            v95 = String._bridgeToObjectiveC()();

            [v91 setText:v95];
          }

          v96 = [v31 textLabel];
          if (v96)
          {
            v97 = v96;
            v98 = [objc_opt_self() systemBlueColor];
            [v97 setTextColor:v98];
          }

          goto LABEL_72;
        }

        v84 = *(v145 + v74);
        v85 = &selRef_pushViewController_animated_;
        if (v84)
        {

          result = IndexPath.row.getter();
          if ((result & 0x8000000000000000) != 0)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v86 = v140;
          if (result >= *(v84 + 16))
          {
LABEL_106:
            __break(1u);
            return result;
          }

          v87 = v132;
          (*(v140 + 16))(v132, v84 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * result, v83);

          v88 = FMFLabel.localizedValue.getter();
          v84 = v89;
          (*(v86 + 8))(v87, v83);
          v85 = &selRef_pushViewController_animated_;
        }

        else
        {
          v88 = 0;
        }

        v99 = [v31 v85[37]];
        if (v99)
        {
          v100 = v99;
          if (v84)
          {

            v101 = String._bridgeToObjectiveC()();
          }

          else
          {
            v101 = 0;
          }

          [v100 setText:v101];
        }

        v102 = *(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8);
        if (v102)
        {
          if (v84)
          {
            if (*(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue) == v88 && v102 == v84)
            {

              v103 = 3;
LABEL_71:
              [v31 setAccessoryType:v103];
LABEL_72:

              return v31;
            }

            goto LABEL_65;
          }

LABEL_69:
          v103 = 0;
          goto LABEL_71;
        }

        if (!v84)
        {
          goto LABEL_70;
        }

LABEL_68:

        goto LABEL_69;
      }

      v42 = static FMFLabel.defaultLabels(includingOther:)();
      v43 = [v31 textLabel];
      v44 = v141;
      v46 = v138;
      v45 = v139;
      if (v43)
      {
        v47 = v43;
        result = IndexPath.row.getter();
        if ((result & 0x8000000000000000) != 0)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if (result >= *(v42 + 16))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        (*(v45 + 16))(v46, v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * result, v44);
        FMFDefaultLabel.localizedLabel.getter();
        (*(v45 + 8))(v46, v44);
        v49 = String._bridgeToObjectiveC()();

        [v47 setText:v49];
      }

      result = IndexPath.row.getter();
      if ((result & 0x8000000000000000) == 0)
      {
        if (result < *(v42 + 16))
        {
          (*(v45 + 16))(v46, v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * result, v44);

          v50 = FMFDefaultLabel.rawValue.getter();
          v52 = v51;
          (*(v45 + 8))(v46, v44);
          v53 = *(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8);
          if (v53)
          {
            if (*(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue) == v50 && v53 == v52)
            {

LABEL_70:
              v103 = 3;
              goto LABEL_71;
            }

LABEL_65:
            v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v104)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          goto LABEL_68;
        }

        goto LABEL_102;
      }

LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v55 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_location;
    v56 = v145;
    swift_beginAccess();
    sub_100007204(v56 + v55, v18, &qword_1006AF740);
    v57 = v137;
    if ((*(v137 + 48))(v18, 1, v14))
    {
      sub_100012DF0(v18, &qword_1006AF740);
    }

    else
    {
      v77 = v133;
      (*(v57 + 16))(v133, v18, v14);
      sub_100012DF0(v18, &qword_1006AF740);
      v79 = v134;
      v78 = v135;
      v80 = v57;
      v81 = v136;
      (*(v135 + 104))(v134, enum case for FMFLabelSourceType.premises(_:), v136);
      v82 = FMFLocation.labels(with:)();
      (*(v78 + 8))(v79, v81);
      (*(v80 + 8))(v77, v14);
      if (v82)
      {
        v60 = v142;
        v59 = v143;
        if (*(v82 + 16))
        {
          (*(v41 + 16))(v146, v82 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v143);

          v58 = 0;
        }

        else
        {

          v58 = 1;
        }

LABEL_26:
        (*(v41 + 56))(v146, v58, 1, v59);
        v61 = *(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels);
        if (v61)
        {
          v139 = *(v61 + 16);
          if (v139)
          {
            v134 = v31;
            v138 = (v61 + ((*(v41 + 80) + 32) & ~*(v41 + 80)));
            v136 = v41 + 48;
            v137 = v41 + 16;
            v141 = (v41 + 8);

            v62 = 0;
            v135 = result;
            while (v62 < *(result + 16))
            {
              (*(v41 + 16))(v60, &v138[*(v41 + 72) * v62], v59);
              v63 = FMFLabel.localizedValue.getter();
              v65 = v64;
              v66 = v144;
              sub_100007204(v146, v144, &qword_1006B0038);
              if ((*(v41 + 48))(v66, 1, v59) == 1)
              {
                sub_100012DF0(v66, &qword_1006B0038);

                (*v141)(v60, v59);
              }

              else
              {
                v67 = FMFLabel.localizedValue.getter();
                v69 = v68;
                v70 = *v141;
                (*v141)(v66, v59);
                if (v63 == v67 && v65 == v69)
                {

                  v72 = v143;
                  v70(v142);
                  v73 = 1;
                  v41 = v140;
                  goto LABEL_74;
                }

                v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v60 = v142;
                v59 = v143;
                (v70)(v142, v143);
                v41 = v140;
                if (v71)
                {
                  v72 = v59;
                  v73 = 1;
LABEL_74:

                  v31 = v134;
                  goto LABEL_75;
                }
              }

              ++v62;
              result = v135;
              if (v139 == v62)
              {
                v72 = v59;
                v73 = 0;
                goto LABEL_74;
              }
            }

            __break(1u);
            goto LABEL_101;
          }
        }

        v72 = v59;
        v73 = 0;
LABEL_75:
        v105 = v129;
        sub_100007204(v146, v129, &qword_1006B0038);
        if ((*(v41 + 48))(v105, 1, v72) == 1)
        {
          sub_100012DF0(v105, &qword_1006B0038);
LABEL_79:
          v107 = [v31 textLabel];
          if (v107)
          {
            v108 = v107;
            v109 = [objc_opt_self() mainBundle];
            v149._object = 0x800000010058C090;
            v110._countAndFlagsBits = 0xD000000000000015;
            v110._object = 0x800000010058C070;
            v149._countAndFlagsBits = 0xD000000000000027;
            v111._countAndFlagsBits = 0;
            v111._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v110, 0, v109, v111, v149);

            v112 = String._bridgeToObjectiveC()();

            [v108 setText:v112];
          }

          if (*(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8))
          {
            v113 = 0;
          }

          else
          {
            v113 = 3;
          }

          [v31 setAccessoryType:v113];

          goto LABEL_98;
        }

        v106 = v128;
        (*(v41 + 32))(v128, v105, v72);
        if (v73)
        {
          (*(v41 + 8))(v106, v72);
          goto LABEL_79;
        }

        v114 = v31;
        v115 = [v31 textLabel];
        if (v115)
        {
          v116 = v115;
          FMFLabel.localizedValue.getter();
          v117 = String._bridgeToObjectiveC()();

          [v116 setText:v117];
        }

        v118 = v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue;
        v120 = *(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue);
        v119 = *(v145 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8);

        v121 = FMFLabel.localizedValue.getter();
        if (v119)
        {
          if (v120 == v121 && v119 == v122)
          {

            goto LABEL_96;
          }

          v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v123)
          {
            goto LABEL_96;
          }
        }

        else
        {
        }

        if (*(v118 + 8))
        {
          v124 = 0;
LABEL_97:
          v125 = v140;
          v126 = v128;
          v31 = v114;
          [v114 setAccessoryType:v124];

          (*(v125 + 8))(v126, v72);
LABEL_98:
          sub_100012DF0(v146, &qword_1006B0038);
          return v31;
        }

LABEL_96:
        v124 = 3;
        goto LABEL_97;
      }
    }

    v58 = 1;
    v60 = v142;
    v59 = v143;
    goto LABEL_26;
  }

  v54 = objc_allocWithZone(UITableViewCell);

  return [v54 init];
}

void sub_100286CF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFLabel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels];
  if (!v12)
  {
    return;
  }

  if (IndexPath.row.getter() >= *(v12 + 16))
  {

    return;
  }

  v13 = IndexPath.row.getter();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 >= *(v12 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v5;
  (*(v9 + 16))(v11, v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, v8);
  v14 = FMFLabel.localizedValue.getter();
  v5 = v15;
  (*(v9 + 8))(v11, v8);
  v9 = v14;
  sub_10007EBC0(&unk_1006AF770);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100552220;
  *(v16 + 32) = v14;
  *(v16 + 40) = v5;
  type metadata accessor for FMFRemoveLabelsAction();
  swift_allocObject();

  v17 = FMFRemoveLabelsAction.init(labels:)();
  if (v17)
  {
    v8 = v17;
    if (qword_1006AEBE0 == -1)
    {
LABEL_7:
      v18 = type metadata accessor for Logger();
      sub_100005B14(v18, qword_1006D4630);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100005B4C(v9, v5, &v36);
        _os_log_impl(&_mh_execute_header, v19, v20, "🏷 FMLabelViewController: removing label '%s'...", v21, 0xCu);
        sub_100006060(v22);
      }

      sub_100437A74(0);
      if (*&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator])
      {

        v23 = swift_allocObject();
        v23[2] = v9;
        v23[3] = v5;
        v23[4] = v2;
        v24 = v2;
        sub_1000FB600(v8, sub_100288DCC, v23);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_7;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100005B14(v25, qword_1006D4630);
  v26 = v35;
  (*(v35 + 16))(v7, a1, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v31 = IndexPath.description.getter();
    v33 = v32;
    (*(v26 + 8))(v7, v4);
    v34 = sub_100005B4C(v31, v33, &v36);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "🏷 FMLabelViewController: could not label at %s...", v29, 0xCu);
    sub_100006060(v30);
  }

  else
  {

    (*(v26 + 8))(v7, v4);
  }
}

void sub_1002873C4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFLabel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFDefaultLabel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = IndexPath.section.getter();
  if (v12 == 2)
  {
    sub_1003D52F8();
    v20 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels;
    v21 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels);
    if (v21)
    {
      v22 = *(v21 + 16);
    }

    else
    {
      v22 = 0;
    }

    if (IndexPath.row.getter() >= v22)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v28 = [a1 cellForRowAtIndexPath:isa];

      if (v28)
      {
        type metadata accessor for FMLabelTableViewCell();
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = v29;
          v31 = [v29 textLabel];
          if (v31)
          {
            v32 = v31;
            [v31 setHidden:1];
          }

          v30[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textFieldIsEnabled] = 1;
          sub_10036E6F8();
          *&v30[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_delegate + 8] = &off_10063B6F0;
          swift_unknownObjectWeakAssign();
          v33 = *(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText);
          *(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText) = v30;
        }

        else
        {
        }
      }

      goto LABEL_23;
    }

    v23 = *(v1 + v20);
    if (v23)
    {

      v24 = IndexPath.row.getter();
      if ((v24 & 0x8000000000000000) != 0)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v24 >= *(v23 + 16))
      {
LABEL_30:
        __break(1u);
        return;
      }

      (*(v5 + 16))(v7, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v4);

      v25 = FMFLabel.localizedValue.getter();
      v23 = v26;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v25 = 0;
    }

    v34 = (v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue);
    *v34 = v25;
    v34[1] = v23;

    sub_1003D578C();
    [a1 reloadData];
    goto LABEL_23;
  }

  if (v12 == 1)
  {
    sub_1003D52F8();
    v14 = static FMFLabel.defaultLabels(includingOther:)();
    v15 = IndexPath.row.getter();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v14 + 16))
    {
      (*(v9 + 16))(v11, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v8);

      v16 = FMFDefaultLabel.rawValue.getter();
      v18 = v17;
      (*(v9 + 8))(v11, v8);
      v19 = (v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue);
      *v19 = v16;
      v19[1] = v18;

      sub_1003D578C();
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v12)
  {
    return;
  }

  sub_1003D52F8();
  v13 = (v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue);
  *v13 = 0;
  v13[1] = 0;

  sub_1003D578C();
LABEL_23:
  v35 = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:v35 animated:1];

  if (!*(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText))
  {
    [a1 reloadData];
  }
}

char *sub_100287A84(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v12];

    if (v13)
    {
      type metadata accessor for FMLocationLabelHeaderView();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {

        return v10;
      }

      v14 = v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress;
      v15 = *(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress);
      v16 = *(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 8);
      v17 = *(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 16);
      v18 = *(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 24);
      v19 = &v10[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress];
      v20 = *&v10[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress];
      v21 = *&v10[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress + 8];
      v22 = *&v10[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress + 16];
      v23 = *&v10[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_displayAddress + 24];
      v24 = *(v14 + 32);
      *v19 = v15;
      *(v19 + 1) = v16;
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
      *(v19 + 16) = v24;
      sub_10008FAA4(v15, v16, v17, v18);
      sub_10008ECE4(v20, v21, v22, v23);
      sub_1004B11C0();
      v25 = [objc_opt_self() mainBundle];
      v35._object = 0x800000010058BF30;
      v26._countAndFlagsBits = 0xD00000000000001CLL;
      v26._object = 0x800000010058BF10;
      v35._countAndFlagsBits = 0xD00000000000002ELL;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v35);

      *&v10[OBJC_IVAR____TtC6FindMy25FMLocationLabelHeaderView_headerTitle] = v28;

      UITableViewHeaderFooterView.defaultContentConfiguration()();

      UIListContentConfiguration.text.setter();
      v33 = v5;
      v34 = &protocol witness table for UIListContentConfiguration;
      v29 = sub_100008FC0(v32);
      (*(v6 + 16))(v29, v8, v5);
      UIListContentView.configuration.setter();
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 != 1 && a2 != 2)
  {
    return 0;
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 dequeueReusableHeaderFooterViewWithIdentifier:v9];

  if (v10)
  {
    UITableViewHeaderFooterView.defaultContentConfiguration()();
    sub_100288810(a2);
    UIListContentConfiguration.text.setter();
    v33 = v5;
    v34 = &protocol witness table for UIListContentConfiguration;
    v11 = sub_100008FC0(v32);
    (*(v6 + 16))(v11, v8, v5);
    UITableViewHeaderFooterView.contentConfiguration.setter();
LABEL_9:
    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

void sub_100287E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100286CF8(a3);
  }
}

UIMenu sub_100287EC8(uint64_t a1, UIMenuElementSize a2)
{
  sub_10000905C(0, &unk_1006AF720);

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v6, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v5);
}

uint64_t sub_10028804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v30 = v13;
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  sub_10000905C(0, &qword_1006AEDC0);
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v29 = *(v14 + 8);
  v29(v17, v13);
  v20 = swift_allocObject();
  v21 = v28;
  v20[2] = v27;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = v21;
  aBlock[4] = sub_100288DD8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100632A98;
  v22 = _Block_copy(aBlock);

  v23 = a5;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
  return (v29)(v19, v30);
}

uint64_t sub_1002883E4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = &a3[OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue];
  v5 = *&a3[OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8];
  if (v5 && (*v4 == a1 ? (v6 = v5 == a2) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v4 = 0;
    *(v4 + 1) = 0;

    sub_1003D578C();
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1003D35B0();
  v9 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels;
  *&a3[OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels] = v8;

  [*&a3[OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView] reloadData];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  swift_errorRetain();
  v11 = a3;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136315394;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005B4C(v15, v16, &v23);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = *&a3[v9];
    v19 = 0xE000000000000000;
    if (v18)
    {
      type metadata accessor for FMFLabel();

      Array.description.getter();

      sub_100035F3C();
      v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v19 = v20;
    }

    v21 = sub_100005B4C(v18, v19, &v23);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "🏷 FMLabelViewController: remove label completed with error: %s, updated list is %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1003EB538(0);
  if (v7)
  {
    return sub_1003D3D1C(0, 0);
  }

  return result;
}

id sub_1002886FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000905C(0, &unk_1006BAA80);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10028878C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1;
    case 2:
      v4 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels);
      if (v4)
      {
        v4 = *(v4 + 16);
      }

      return v4 + *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_isShowingAddCustomLabel);
    case 1:
      v2 = *(static FMFLabel.defaultLabels(includingOther:)() + 16);

      return v2;
    default:
      return 0;
  }
}

uint64_t sub_100288810(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "g CUSTOM_LABEL_SECTION_HEADER";
      v4 = "FMLocalizedString COMMON_LABEL_SECTION_HEADER";
    }

    else
    {
      v3 = "g DEFAULT_LABEL_SECTION_HEADER";
      v4 = "FMLocalizedString CUSTOM_LABEL_SECTION_HEADER";
    }

    v11 = (v4 - 32) | 0x8000000000000000;
    v6 = v3 | 0x8000000000000000;
    v7 = 0xD00000000000002DLL;
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v11 = 0x800000010058BF30;
    v5 = 0xD00000000000001CLL;
    v6 = 0x800000010058BF10;
    v7 = 0xD00000000000002ELL;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, v8, *&v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_100288928(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  if (IndexPath.section.getter() != 2)
  {
    return 0;
  }

  v7 = *(v2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels);
  if (!v7)
  {
    return 0;
  }

  v8 = IndexPath.row.getter();
  v9 = *(v7 + 16);

  if (v8 >= v9)
  {
    return 0;
  }

  v28 = _swiftEmptyArrayStorage;
  v26 = sub_10000905C(0, &qword_1006AF730);
  v10 = [objc_opt_self() mainBundle];
  v29._object = 0x800000010058BE80;
  v11._countAndFlagsBits = 0x4C5F4554454C4544;
  v11._object = 0xEC0000004C454241;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD00000000000001ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v29);

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v5 + 32))(v17 + v16, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v18 setAttributes:2];
  v19 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = v28;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = objc_opt_self();
  aBlock[4] = sub_100288DC4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002886FC;
  aBlock[3] = &unk_100632A20;
  v23 = _Block_copy(aBlock);

  v24 = [v22 configurationWithIdentifier:0 previewProvider:0 actionProvider:v23];

  _Block_release(v23);

  return v24;
}

void sub_100288D50(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100287E6C(a1, v4, v5);
}

id sub_100288F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEmailUpdatesTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100289124()
{
  v16 = [v0 layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    sub_10007EBC0(&qword_1006B04E8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100552210;
    v4 = objc_opt_self();
    v5 = [v4 whiteColor];
    v6 = [v5 colorWithAlphaComponent:0.0];

    v7 = [v6 CGColor];
    type metadata accessor for CGColor(0);
    v9 = v8;
    *(v3 + 56) = v8;
    *(v3 + 32) = v7;
    v10 = [v4 systemBackgroundColor];
    v11 = [v10 CGColor];

    *(v3 + 88) = v9;
    *(v3 + 64) = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setColors:isa];

    sub_10007EBC0(&qword_1006AFC30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100552EE0;
    sub_10000905C(0, &qword_1006BEF40);
    *(v13 + 32) = NSNumber.init(floatLiteral:)(0.0);
    *(v13 + 40) = NSNumber.init(floatLiteral:)(1.0);
    v14 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setLocations:v14];

    v15 = v14;
  }

  else
  {
    v15 = v16;
  }
}

id sub_100289398()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMGradientMaskingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100289400(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_items;
  result = swift_beginAccess();
  v8 = *&v2[v6];
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result;
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  if (v9 >= 1)
  {
    v28 = a1;
    v29 = v5;
    v30 = v2;

    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected;
      v11[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected] = 0;
      v14 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
      [*&v11[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button] setSelected:0];
      v15 = v12[v13];
      v16 = *&v12[v14];
      v17 = objc_opt_self();
      v18 = &selRef_systemBlueColor;
      if (!v15)
      {
        v18 = &selRef_labelColor;
      }

      v19 = [v17 *v18];
      [v16 setTintColor:v19];
    }

    while (v9 != v10);

    v5 = v29;
    v2 = v30;
    a1 = v28;
LABEL_13:
    v20 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected;
    *(a1 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected) = 1;
    v21 = *(a1 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button);
    [v21 setSelected:1];
    LODWORD(v20) = *(a1 + v20);
    v22 = objc_opt_self();
    v23 = &selRef_systemBlueColor;
    if (!v20)
    {
      v23 = &selRef_labelColor;
    }

    v24 = [v22 *v23];
    [v21 setTintColor:v24];

    v25 = *(a1 + OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_itemType);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        if (Strong)
        {
          goto LABEL_25;
        }
      }

      else if (Strong)
      {
LABEL_25:
        swift_storeEnumTagMultiPayload();
        sub_100352650(v5);
        swift_unknownObjectRelease();
        sub_10005D4E4(v5);
      }
    }

    else if (v25)
    {
      if (Strong)
      {
        goto LABEL_25;
      }
    }

    else if (Strong)
    {
      goto LABEL_25;
    }

    return [v2 layoutIfNeeded];
  }

  __break(1u);
  return result;
}

id sub_100289718()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabBarButtonsStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabBarButtonsStackView] setAxis:0];
  [*&v0[v1] setDistribution:3];
  v2 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorView;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorView];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 separatorColor];
  [v5 setBackgroundColor:v6];

  sub_10001A110();
  [v0 addSubview:*&v0[v1]];
  v7 = *&v0[v2];

  return [v0 addSubview:v7];
}

void sub_100289804(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem];
  if (v1)
  {
    v6 = v1;
    FMFPreferences.hideLocation.getter();
    v3 = *&a1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 24];
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

    [*&v6[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button] setImage:v5 forState:0];
    [a1 layoutIfNeeded];
  }
}

id sub_100289938(double a1)
{
  v3 = 1.0;
  if (a1 >= 0.8)
  {
    v3 = (a1 + -0.8) / -0.2 + 1.0;
  }

  [*&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorView] setAlpha:v3];
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    sub_1002E6944();
    v7 = v6;
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 80];
  }

  v8 = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewLeadingConstraint];
  if (v8)
  {
    [v8 setConstant:v7 + *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 72]];
  }

  result = *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewTrailingConstraint];
  if (result)
  {
    v10 = -v7 - *&v1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style + 72];

    return [result setConstant:v10];
  }

  return result;
}

id sub_100289AB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEmbeddedTabBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100289C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_100289C70(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100289D7C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMSelectedSection();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  sub_100062074(a1, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_10005B574(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = v19;
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_100062358;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100632E50;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_10028A0F0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFPreferences();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = v19;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_10028A480;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100632D10;
  v16 = _Block_copy(aBlock);
  v17 = v15;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v4, v2);
  return (*(v20 + 8))(v7, v21);
}

void sub_10028A480()
{
  type metadata accessor for FMFPreferences();
  v1 = *(v0 + 16);

  sub_100289804(v1);
}

uint64_t sub_10028A50C(uint64_t a1)
{
  v40 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPConfigValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  (*(v5 + 16))(v10, v40, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v1;
    v16 = v15;
    aBlock = v15;
    *v14 = 136315138;
    v17 = FMIPConfigValue.rawValue.getter();
    v32 = v8;
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v10, v4);
    v21 = sub_100005B4C(v17, v19, &aBlock);
    v8 = v32;

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMEmbeddedTabBar: didReceive serverConfiguration %s", v14, 0xCu);
    sub_100006060(v16);
    v1 = v33;
  }

  else
  {

    v20 = *(v5 + 8);
    v20(v10, v4);
  }

  (*(v5 + 104))(v8, enum case for FMIPConfigValue.itemsTabEnabled(_:), v4);
  sub_10000A108(&unk_1006B6BC0, &type metadata accessor for FMIPConfigValue);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v47 && v42 == v48)
  {
    v20(v8, v4);
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20(v8, v4);

    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v34;
  v45 = sub_10028AE08;
  v46 = v25;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100004AE4;
  v44 = &unk_100632E00;
  v27 = _Block_copy(&aBlock);
  v28 = v26;

  v29 = v35;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v30 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v39 + 8))(v30, v1);
  return (*(v36 + 8))(v29, v38);
}

uint64_t sub_10028AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A108(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

id sub_10028AE2C(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = &a1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style];
  if (v3 == 2)
  {
    v5 = v4[12] + 8.0;
  }

  else
  {
    v5 = v4[11];
  }

  [*&a1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsLeadingConstraint] setConstant:v5];
  result = *&a1[OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsTrailingConstraint];
  if (result)
  {

    return [result setConstant:-v5];
  }

  return result;
}

void sub_10028AF08()
{
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesSubscription) = 0;
  v1 = (v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_selectionSubscription);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_contentDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_items) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesTabItem) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem) = 0;
  v2 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_style;
  if (qword_1006AEBA8 != -1)
  {
    swift_once();
  }

  v6[4] = xmmword_1006D43C0;
  v6[5] = unk_1006D43D0;
  v6[6] = xmmword_1006D43E0;
  v6[0] = xmmword_1006D4380;
  v6[1] = *&qword_1006D4390;
  v6[2] = xmmword_1006D43A0;
  v6[3] = unk_1006D43B0;
  memmove((v0 + v2), &xmmword_1006D4380, 0x70uLL);
  v3 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorView;
  v4 = objc_allocWithZone(UIView);
  sub_10001A0A8(v6, v5);
  *(v0 + v3) = [v4 init];
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_separatorViewTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_tabItemsTrailingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10028B0E0(uint64_t a1)
{
  v22 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for FMIPUnknownItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v20 = v13;
  v21 = v1;
  v19 = v14;
  v14(v12, v1 + v13, v9);
  FMIPUnknownItem.identifier.getter();
  v18 = *(v10 + 8);
  v18(v12, v9);
  FMIPUnknownItem.identifier.getter();
  sub_10000A228(&qword_1006B22F0, &type metadata accessor for UUID);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v3 + 8);
  v16(v6, v2);
  result = (v16)(v8, v2);
  if ((v15 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19(v12, v21 + v20, v9);
      sub_100307B98(v12);
      swift_unknownObjectRelease();
      return (v18)(v12, v9);
    }
  }

  return result;
}

void sub_10028B38C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_updatesEnabled] == 1)
  {
    v11 = *(v1 + 2);
    v12 = *(v11 + 24);
    v36 = v8;
    v37 = v7;
    type metadata accessor for FMDevicesSubscription();
    v13 = swift_allocObject();
    v35 = v3;
    v14 = v13;
    *(v13 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100632F30;
    swift_unknownObjectWeakAssign();
    v15 = *(v12 + 16);

    os_unfair_lock_lock((v15 + 24));
    sub_10000E7C0((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));

    *(v1 + 5) = v14;

    v16 = *(v11 + 56);

    v17 = sub_1003CD3EC(v1, v16);

    *(v1 + 6) = v17;

    v18 = *(v11 + 16);
    v19 = sub_1003CCC58(v1, v18);

    *(v1 + 7) = v19;

    aBlock[4] = sub_10028FEE8;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100633128;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10000A228(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v35 + 8))(v5, v2);
    (*(v36 + 8))(v10, v37);

    return;
  }

  if (*(v1 + 5))
  {
    v21 = *(*(*(v1 + 2) + 24) + 16);

    os_unfair_lock_lock((v21 + 24));
    sub_10008FB6C((v21 + 16));
    os_unfair_lock_unlock((v21 + 24));
  }

  v22 = *(v1 + 6);
  if (v22)
  {
    v23 = *(*(v1 + 2) + 56);
    swift_beginAccess();

    v24 = sub_1003CD53C((v23 + 16), v22);
    v25 = *(v23 + 16);
    if (v25 >> 62)
    {
      v32 = v24;
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v24 = v32;
      if (v26 >= v32)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26 >= v24)
      {
LABEL_8:
        sub_1003CD570(v24, v26);
        swift_endAccess();

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_9:
  v27 = *(v1 + 7);
  if (!v27)
  {
    return;
  }

  v28 = *(*(v1 + 2) + 16);
  v29 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v1 = v28;
  v24 = sub_1003CD738(&v28[v29], v27);
  v30 = *&v28[v29];
  if (v30 >> 62)
  {
LABEL_16:
    v33 = v24;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v33;
    if (v31 >= v33)
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    return;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31 < v24)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_1003CDB08(v24, v31);
  swift_endAccess();
}

uint64_t sub_10028B914(uint64_t a1)
{
  v3 = sub_10007EBC0(&qword_1006B98B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_10028FEEC(a1, v1 + v6);
  swift_endAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_100012DF0(a1, &qword_1006B98B8);
  }

  sub_10028FF5C(v1 + v6, v5);
  v7 = type metadata accessor for FMUTDetailViewModel();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100307B70(v5);
    swift_unknownObjectRelease();
    sub_100012DF0(a1, &qword_1006B98B8);
    return sub_10002A040(v5, type metadata accessor for FMUTDetailViewModel);
  }

  return result;
}

uint64_t sub_10028BA90(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for FMIPUnknownItem();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v35);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = v30 - v7;
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  *(v1 + 4) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FMItemAger();
  *(v1 + 6) = 0;
  *(v1 + 7) = 0;
  *(v1 + 5) = 0;
  swift_allocObject();
  *(v1 + 8) = sub_10002BE70();
  v13 = sub_100003E90();
  v30[1] = "isRangingServiceAvailable";
  v30[2] = v13;
  static DispatchQoS.userInitiated.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_10000A228(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  v14 = v31;
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  v15 = v33;
  *(v1 + 9) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 10) = 0;
  v1[OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_isRangingServiceAvailable] = 1;
  v1[OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_updatesEnabled] = 0;
  v16 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel;
  v17 = type metadata accessor for FMUTDetailViewModel();
  (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
  v18 = *(v15 + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027B10(v18 + v19, v14, type metadata accessor for FMSelectedSection);
  v20 = v34;
  sub_100027B10(v14, v34, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v21 = v36;
    v22 = *(v37 + 32);
    v23 = v38;
    v22(v36, v20, v38);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMUTDetailDataSource: initialized", v27, 2u);
    }

    sub_10002A040(v14, type metadata accessor for FMSelectedSection);
    v22(&v2[OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem], v21, v23);
    *(v2 + 2) = v15;
    *(*(v2 + 8) + 24) = &off_100632F20;
    swift_unknownObjectWeakAssign();
    return v2;
  }

  else
  {
    sub_10002A040(v20, type metadata accessor for FMSelectedSection);
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v29._countAndFlagsBits = 0xD000000000000050;
    v29._object = 0x800000010058C390;
    String.append(_:)(v29);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10028C0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPUnknownItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = *(v5 + 16);
  v11(&v15[-v9], a2, v4);
  v12 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v11(v8, a1 + v12, v4);
  swift_beginAccess();
  (*(v5 + 24))(a1 + v12, v10, v4);
  swift_endAccess();
  sub_10028B0E0(v8);
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  return sub_10028C280();
}

uint64_t sub_10028C280()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B98B8);
  __chkstk_darwin(v2 - 8);
  v53 = v51 - v3;
  v56 = type metadata accessor for FMUTDetailViewModel();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for UUID();
  v5 = *(v65 - 8);
  v6 = __chkstk_darwin(v65);
  v64 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = v51 - v8;
  v9 = type metadata accessor for FMIPUnknownItem();
  v69 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v55 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v67 = v51 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v51 - v15;
  v17 = __chkstk_darwin(v14);
  v51[0] = v51 - v18;
  __chkstk_darwin(v17);
  v54 = v51 - v19;
  v51[1] = *(v0 + 16);

  v20 = v16;
  v21 = FMIPManager.unknownItems.getter();

  v22 = *(v21 + 16);
  v68 = v1;
  v66 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  result = swift_beginAccess();
  v61 = v22;
  if (!v22)
  {
  }

  v24 = 0;
  v62 = v69 + 16;
  v59 = (v5 + 8);
  v60 = v69 + 8;
  v25 = v63;
  while (v24 < *(v21 + 16))
  {
    v26 = v69;
    v27 = v21;
    v28 = *(v69 + 16);
    v28(v20, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v69 + 72) * v24, v9);
    v29 = v20;
    FMIPUnknownItem.identifier.getter();
    v30 = v67;
    v58 = v28;
    v28(v67, v68 + v66, v9);
    v31 = v64;
    FMIPUnknownItem.identifier.getter();
    v70 = *(v26 + 8);
    v70(v30, v9);
    LOBYTE(v30) = static UUID.== infix(_:_:)();
    v32 = *v59;
    v33 = v31;
    v34 = v65;
    (*v59)(v33, v65);
    v32(v25, v34);
    if (v30)
    {

      v35 = *(v69 + 32);
      v36 = v51[0];
      v35(v51[0], v29, v9);
      v37 = v54;
      v35(v54, v36, v9);
      v38 = v67;
      v39 = v58;
      v58(v67, v37, v9);
      v40 = v68;
      LODWORD(v35) = *(v68 + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_isRangingServiceAvailable);

      v42 = v57;
      sub_1004F4CFC(v41, v38, v35, v57);
      v43 = v53;
      sub_100027B10(v42, v53, type metadata accessor for FMUTDetailViewModel);
      v44 = v56;
      (*(v52 + 56))(v43, 0, 1, v56);
      sub_10028B914(v43);
      sub_10007EBC0(&unk_1006B40B0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100552220;
      *(v45 + 56) = v44;
      *(v45 + 64) = &off_100643BC8;
      v46 = sub_100008FC0((v45 + 32));
      v47 = v57;
      sub_100027B10(v57, v46, type metadata accessor for FMUTDetailViewModel);
      sub_100036B80(v45);

      v39(v38, v37, v9);
      v48 = v66;
      v49 = v55;
      v39(v55, (v40 + v66), v9);
      swift_beginAccess();
      (*(v69 + 24))(v40 + v48, v38, v9);
      swift_endAccess();
      sub_10028B0E0(v49);
      v50 = v70;
      v70(v49, v9);
      v50(v38, v9);
      sub_10002A040(v47, type metadata accessor for FMUTDetailViewModel);
      return (v50)(v37, v9);
    }

    ++v24;
    result = (v70)(v29, v9);
    v20 = v29;
    v21 = v27;
    if (v61 == v24)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10028C944()
{

  sub_10005CD20(v0 + 24);

  v1 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  v2 = type metadata accessor for FMIPUnknownItem();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_itemViewModel, &qword_1006B98B8);
  return v0;
}

uint64_t sub_10028CA04()
{
  sub_10028C944();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMUTDetailDataSource()
{
  result = qword_1006B96B0;
  if (!qword_1006B96B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028CAB0()
{
  type metadata accessor for FMIPUnknownItem();
  if (v0 <= 0x3F)
  {
    sub_10028CBBC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10028CBBC()
{
  if (!qword_1006B96C0)
  {
    type metadata accessor for FMUTDetailViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B96C0);
    }
  }
}

uint64_t sub_10028CCB4(int a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v5) = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v5;
    v5 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v5 = 67109378;
    v24 = v15;
    *(v5 + 4) = v15 & 1;
    *(v5 + 8) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = sub_100005B4C(v17, v19, aBlock);

    *(v5 + 10) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMUTDetailDataSource: isRangingServiceAvailable: %{BOOL}d, error: %s", v5, 0x12u);
    sub_100006060(v16);

    LOBYTE(v5) = v24;
  }

  else
  {
  }

  *(v3 + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_isRangingServiceAvailable) = v5 & 1;
  sub_10028C280();
  aBlock[4] = sub_10028FFE4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100633100;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000A228(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v8, v6);
  (*(v25 + 8))(v11, v26);
}

void sub_10028D0E0(uint64_t a1)
{
  v2 = v1;
  v162 = a1;
  v158 = type metadata accessor for FMFindingType();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v154 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v4 - 8);
  v148 = &v146 - v5;
  v6 = type metadata accessor for FMFindingProductType();
  __chkstk_darwin(v6 - 8);
  v147 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for FMFindableObject();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v153 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for FindingExperienceType();
  v160 = *(v156 - 8);
  v9 = __chkstk_darwin(v156);
  v149 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v152 = &v146 - v12;
  v13 = __chkstk_darwin(v11);
  v163 = &v146 - v14;
  v15 = __chkstk_darwin(v13);
  v155 = &v146 - v16;
  __chkstk_darwin(v15);
  v159 = &v146 - v17;
  v174 = type metadata accessor for UUID();
  v18 = *(v174 - 8);
  v19 = __chkstk_darwin(v174);
  v173 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v175 = &v146 - v21;
  v22 = type metadata accessor for FMIPUnknownItem();
  v176 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v172 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v146 - v26;
  v28 = __chkstk_darwin(v25);
  v161 = &v146 - v29;
  __chkstk_darwin(v28);
  v164 = &v146 - v30;

  v31 = FMIPManager.unknownItems.getter();

  v32 = *(v31 + 16);
  v171 = OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_selectedItem;
  swift_beginAccess();
  v168 = v32;
  if (!v32)
  {
LABEL_6:

    return;
  }

  v33 = 0;
  v167 = v176 + 16;
  v170 = v176 + 8;
  v169 = (v18 + 8);
  v165 = v2;
  v166 = v31;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v34 = v176;
    v35 = *(v176 + 2);
    v35(v27, v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v176 + 9) * v33, v22);
    v36 = v175;
    FMIPUnknownItem.identifier.getter();
    v37 = v172;
    v35(v172, v2 + v171, v22);
    v38 = v173;
    FMIPUnknownItem.identifier.getter();
    v39 = *(v34 + 1);
    v39(v37, v22);
    v40 = v22;
    LODWORD(v177) = static UUID.== infix(_:_:)();
    v41 = *v169;
    v42 = v38;
    v43 = v174;
    (*v169)(v42, v174);
    v41(v36, v43);
    if (v177)
    {
      break;
    }

    ++v33;
    v39(v27, v40);
    v2 = v165;
    v22 = v40;
    v31 = v166;
    if (v168 == v33)
    {
      goto LABEL_6;
    }
  }

  v44 = v41;
  v177 = v39;

  v45 = *(v176 + 4);
  v46 = v161;
  v45(v161, v27, v40);
  v33 = v164;
  v2 = v40;
  v45(v164, v46, v40);
  v47 = *(v162 + *(type metadata accessor for FMUTDetailViewModel() + 60));
  v48 = v163;
  if (!*(v47 + 16))
  {
LABEL_17:
    if (qword_1006AEBE0 == -1)
    {
LABEL_18:
      v58 = type metadata accessor for Logger();
      sub_100005B14(v58, qword_1006D4630);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v177;
      if (v61)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "FMUTDetailDataSource: Attempting to prewarm, but finding is not supported", v63, 2u);
      }

      v62(v33, v2);
      return;
    }

LABEL_61:
    swift_once();
    goto LABEL_18;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v49 = Hasher._finalize()();
  v50 = v47 + 56;
  v51 = -1 << *(v47 + 32);
  v52 = v49 & ~v51;
  if (((*(v47 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
  {
LABEL_12:
    if (*(v47 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      v54 = Hasher._finalize()();
      v55 = -1 << *(v47 + 32);
      v56 = v54 & ~v55;
      if ((*(v50 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        while (*(*(v47 + 48) + v56) != 3)
        {
          v56 = (v56 + 1) & v57;
          if (((*(v50 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_21;
      }
    }

    goto LABEL_17;
  }

  v53 = ~v51;
  while (*(*(v47 + 48) + v52) != 2)
  {
    v52 = (v52 + 1) & v53;
    if (((*(v50 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  v176 = v44;
  v64 = v165;
  v65 = *(v165 + 80);
  if (v65)
  {
    v66 = v65;
    v67 = v175;
    FMIPUnknownItem.identifier.getter();
    v68 = UUID.uuidString.getter();
    v70 = v69;
    v176(v67, v174);
    v71 = FMConnectionManager.identifiers.getter();
    v178[0] = v68;
    v178[1] = v70;
    __chkstk_darwin(v71);
    *(&v146 - 2) = v178;
    LOBYTE(v68) = sub_10008A40C(sub_10011F7D4, (&v146 - 4), v71);

    if (v68)
    {
      v177(v33, v2);

      return;
    }

    dispatch thunk of FMConnectionManager.disconnect()();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100005B14(v72, qword_1006D4630);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "FMUTDetailDataSource: Prewarming: Existing item connection manager was discarded due to item change", v75, 2u);
    }

    v64 = v165;
    *(v165 + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_isRangingServiceAvailable) = 1;
    sub_10028C280();

    v48 = v163;
  }

  v76 = v159;
  sub_1004F5FF0(*(v64 + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_isRangingServiceAvailable), v159);
  v77 = v160;
  v78 = v155;
  v79 = v76;
  v80 = v156;
  v173 = *(v160 + 16);
  (v173)(v155, v79, v156);
  v81 = *(v77 + 88);
  v82 = v81(v78, v80);
  LODWORD(v172) = enum case for FindingExperienceType.precision(_:);
  if (v82 == enum case for FindingExperienceType.precision(_:))
  {
    v83 = *(v77 + 96);
    v83(v78, v80);
    v84 = sub_10007EBC0(&unk_1006B4210);
    v85 = v80;
    v86 = *(v157 + 8);
    v86(&v78[*(v84 + 48)], v158);
    v87 = type metadata accessor for FindingModel();
    (*(*(v87 - 8) + 8))(v78, v87);
    goto LABEL_31;
  }

  if (v82 == enum case for FindingExperienceType.proximity(_:))
  {
    v117 = v160;
    v119 = v155;
    (*(v160 + 96))(v155, v80);
    v120 = sub_10007EBC0(&unk_1006B4210);
    (*(v157 + 8))(&v119[*(v120 + 48)], v158);
    v121 = type metadata accessor for FindingModel();
    v122 = *(v121 - 8);
    goto LABEL_52;
  }

  if (v82 == enum case for FindingExperienceType.legacy(_:))
  {
    v83 = *(v160 + 96);
    v119 = v155;
    v83(v155, v80);
    v132 = type metadata accessor for FMFindingTechnology();
    v133 = *(v132 - 8);
    v134 = (*(v133 + 88))(v119, v132);
    if (v134 == enum case for FMFindingTechnology.proximity(_:))
    {
      (*(v133 + 96))(v119, v132);
      v122 = v157;
      v121 = v158;
      v117 = v160;
LABEL_52:
      v135 = v154;
      (*(v122 + 8))(v119, v121);
      v118 = v165;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for Logger();
      sub_100005B14(v136, qword_1006D4630);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v137, v138, "FMUTDetailDataSource: Prewarming: Creating new instance of item connection manager for BT connections.", v139, 2u);
        v117 = v160;
      }

      sub_10007EBC0(&qword_1006B32C8);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_100552220;
      *(v140 + 56) = v2;
      *(v140 + 64) = sub_10000A228(&qword_1006B8588, &type metadata accessor for FMIPUnknownItem);
      v141 = sub_100008FC0((v140 + 32));
      v131 = v164;
      v35(v141, v164, v2);
      (*(v157 + 104))(v135, enum case for FMFindingType.ut(_:), v158);
      v142 = objc_allocWithZone(type metadata accessor for FMItemBTConnectionManager());
      v115 = FMItemBTConnectionManager.init(findables:connectionContext:)();
      v105 = v156;
LABEL_57:
      (*(v117 + 8))(v159, v105);
      v177(v131, v2);
      v143 = *(v118 + 80);
      *(v118 + 80) = v115;

      return;
    }

    if (v134 == enum case for FMFindingTechnology.precision(_:))
    {
      v144 = v155;
      (*(v133 + 96))(v155, v132);
      v145 = sub_10007EBC0(&qword_1006C0020);
      v86 = *(v157 + 8);
      v86(&v144[*(v145 + 48)], v158);
      v85 = v156;
LABEL_31:
      (v173)(v48, v159, v85);
      v88 = v81(v48, v85);
      if (v88 == v172)
      {
        v83(v48, v85);
        v89 = sub_10007EBC0(&unk_1006B4210);
        v86(&v48[*(v89 + 48)], v158);
        v90 = type metadata accessor for FindingModel();
        v91 = v48;
        v92 = v90;
        v93 = *(v90 - 8);
        (*(v93 + 8))(v91, v90);
        v94 = objc_opt_self();
        v95 = v175;
        v96 = v164;
        FMIPUnknownItem.identifier.getter();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v176(v95, v174);
        v98 = [v94 generateDiscoveryTokenFromBeaconIdentifier:isa];

        if (v98)
        {
          v176 = v98;
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v99 = type metadata accessor for Logger();
          sub_100005B14(v99, qword_1006D4630);
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&_mh_execute_header, v100, v101, "FMUTDetailDataSource: Prewarming: Creating new instance of item connection manager for NI precision finding.", v102, 2u);
          }

          v103 = *(v89 + 48);
          v104 = v152;
          (*(v93 + 104))(v152, enum case for FindingModel.nearbyInteraction(_:), v92);
          (*(v157 + 104))(&v104[v103], enum case for FMFindingType.ut(_:), v158);
          v105 = v156;
          (*(v160 + 104))(v104, v172, v156);
          FMIPUnknownItem.name.getter();
          FMIPUnknownItem.identifier.getter();
          v106 = v149;
          (v173)(v149, v104, v105);
          FMIPUnknownItem.findingProductType.getter(v147);
          v107 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
          (*(*(v107 - 8) + 56))(v148, 1, 1, v107);
          v176 = v176;
          v108 = v153;
          FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)();
          sub_10007EBC0(&qword_1006B32C8);
          v109 = swift_allocObject();
          *(v109 + 16) = xmmword_100552220;
          v110 = v151;
          *(v109 + 56) = v151;
          *(v109 + 64) = &protocol witness table for FMFindableObject;
          v111 = sub_100008FC0((v109 + 32));
          v112 = v150;
          (*(v150 + 16))(v111, v108, v110);
          v113 = v152;
          (v173)(v106, v152, v105);
          [objc_allocWithZone(ARSession) init];
          v114 = objc_allocWithZone(type metadata accessor for FMItemNIConnectionManager());
          v115 = FMItemNIConnectionManager.init(findables:findingType:arSession:)();
          sub_10000A228(&qword_1006B98B0, type metadata accessor for FMUTDetailDataSource);
          v116 = v165;
          swift_unknownObjectRetain();
          v117 = v160;
          dispatch thunk of FMItemNIConnectionManager.delegate.setter();

          (*(v112 + 8))(v153, v110);
          v118 = v116;
          (*(v117 + 8))(v113, v105);
LABEL_46:
          if (*(v118 + OBJC_IVAR____TtC6FindMy20FMUTDetailDataSource_updatesEnabled) == 1)
          {
            dispatch thunk of FMConnectionManager.connect()();
          }

          v131 = v164;
          goto LABEL_57;
        }
      }

      else
      {
        (*(v160 + 8))(v48, v85);
        v96 = v164;
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v123 = type metadata accessor for Logger();
      sub_100005B14(v123, qword_1006D4630);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      v126 = os_log_type_enabled(v124, v125);
      v118 = v165;
      if (v126)
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&_mh_execute_header, v124, v125, "FMUTDetailDataSource: Prewarming: Creating new instance of item connection manager for R1 connections.", v127, 2u);
      }

      sub_10007EBC0(&qword_1006B32C8);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_100552220;
      *(v128 + 56) = v2;
      *(v128 + 64) = sub_10000A228(&qword_1006B8588, &type metadata accessor for FMIPUnknownItem);
      v129 = sub_100008FC0((v128 + 32));
      v35(v129, v96, v2);
      (*(v157 + 104))(v154, enum case for FMFindingType.ut(_:), v158);
      v130 = objc_allocWithZone(type metadata accessor for FMItemR1ConnectionManager());
      v115 = FMItemR1ConnectionManager.init(findables:connectionContext:)();
      sub_10000A228(&qword_1006B98A8, type metadata accessor for FMUTDetailDataSource);
      swift_unknownObjectRetain();
      dispatch thunk of FMItemR1ConnectionManager.delegate.setter();
      v105 = v156;
      v117 = v160;
      goto LABEL_46;
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10028E84C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FMIPUnknownItem();
  v49 = *(v52 - 8);
  v7 = __chkstk_darwin(v52);
  v46 = v8;
  v47 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = v43 - v9;
  v10 = type metadata accessor for FMSelectedSection();
  v11 = __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v43 - v14;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100005B14(v16, qword_1006D4630);
  sub_100027B10(a1, v15, type metadata accessor for FMSelectedSection);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43[1] = v17;
    v23 = v22;
    v56 = v22;
    aBlock = 0;
    *v21 = 136315138;
    v58 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v44 = v13;
    v24 = a1;
    v25 = v2;
    v27 = aBlock;
    v26 = v58;
    sub_10002A040(v15, type metadata accessor for FMSelectedSection);
    v28 = sub_100005B4C(v27, v26, &v56);
    v2 = v25;
    a1 = v24;
    v13 = v44;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMUTDetailDataSource: didUpdate selectedSection %s", v21, 0xCu);
    sub_100006060(v23);

    v4 = v45;
  }

  else
  {

    sub_10002A040(v15, type metadata accessor for FMSelectedSection);
  }

  sub_100027B10(a1, v13, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v29 = v48;
    v30 = v49;
    v31 = *(v49 + 32);
    v32 = v13;
    v33 = v52;
    v31(v48, v32, v52);
    v45 = *(v2 + 72);
    v34 = v47;
    (*(v30 + 16))(v47, v29, v33);
    v35 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v2;
    v31((v36 + v35), v34, v33);
    v61 = sub_10028F6BC;
    v62 = v36;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100004AE4;
    v60 = &unk_100633088;
    v37 = _Block_copy(&aBlock);

    v38 = v51;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_10000A228(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    v39 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v55 + 8))(v39, v4);
    (*(v53 + 8))(v38, v50);
    (*(v30 + 8))(v29, v33);
  }

  else
  {
    sub_10002A040(v13, type metadata accessor for FMSelectedSection);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "FMUTDetailDataSource: not updating selection...", v42, 2u);
    }
  }
}

uint64_t sub_10028EF44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v12 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v7;
    v19 = v9;
    v20 = v12;
    v21 = a3;
    v22 = a4;
    v23 = v18;
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v16, v17, v28, v23, 0xCu);
    a4 = v22;
    a3 = v21;
    v12 = v20;
    v9 = v19;
    v7 = v27;
  }

  else
  {
  }

  aBlock[4] = a3;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a4;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000A228(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v30 + 8))(v11, v9);
  (*(v12 + 8))(v14, v29);
}

uint64_t sub_10028F2E8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v11 + 4) = v13;
    v12->super.isa = v13.super.isa;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMUTDetailDataSource: itemsDidAge %@", v11, 0xCu);
    sub_100012DF0(v12, &unk_1006AF760);
  }

  aBlock[4] = sub_10028FFE4;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100633038;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10000A228(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

uint64_t sub_10028F6BC()
{
  v1 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10028C0DC(v2, v3);
}

uint64_t sub_10028F720(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      v17 = 28239;
    }

    else
    {
      v17 = 6710863;
    }

    if (a1)
    {
      v18 = 0xE200000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMUTDetailDataSource: Airplane Mode is %s", v14, 0xCu);
    sub_100006060(v16);
    v5 = v24;
  }

  sub_100003E90();
  v20 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10028FFE4;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006330D8;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A228(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  return (*(v25 + 8))(v10, v26);
}

uint64_t sub_10028FB04(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      v17 = 6710863;
    }

    else
    {
      v17 = 28239;
    }

    if (a1)
    {
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = 0xE200000000000000;
    }

    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMUTDetailDataSource: BT is %s", v14, 0xCu);
    sub_100006060(v16);
    v5 = v24;
  }

  sub_100003E90();
  v20 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10028FFE4;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006330B0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A228(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  return (*(v25 + 8))(v10, v26);
}

uint64_t sub_10028FEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B98B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028FF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B98B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100290058()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v19._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x800000010058C420;
  v5.value._object = 0x80000001005799E0;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v19);

  v7 = String._bridgeToObjectiveC()();

  [v0 setTitle:v7];

  v8 = [v2 mainBundle];
  v20._object = 0x8000000100579A00;
  v9._countAndFlagsBits = 0xD000000000000025;
  v9._object = 0x800000010058C450;
  v10.value._object = 0x80000001005799E0;
  v10.value._countAndFlagsBits = 0xD000000000000013;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v20);

  v12 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v12];

  [v0 setDismissalType:3];
  v13 = *&v0[OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer];
  v14 = [v1 traitCollection];
  v15 = [v14 userInterfaceStyle];

  v16 = 0xD000000000000017;
  v17 = "PairingLoopDark-HAWKEYE";
  if (v15 == 1)
  {
    v16 = 0xD000000000000018;
  }

  else
  {
    v17 = "SCOVERY_CARD_SUBTITLE";
  }

  v18 = (v13 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName);
  *v18 = v16;
  v18[1] = v17 | 0x8000000000000000;

  sub_1002E76F0();
}

void sub_100290290(uint64_t a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FMAccessoryDiscoverySearchingCard();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer];
  v5 = [v2 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = "PairingLoopDark-HAWKEYE";
  v8 = 0xD000000000000017;
  if (v6 == 1)
  {
    v8 = 0xD000000000000018;
  }

  else
  {
    v7 = "SCOVERY_CARD_SUBTITLE";
  }

  v9 = (v4 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName);
  *v9 = v8;
  v9[1] = v7 | 0x8000000000000000;

  sub_1002E76F0();
}

id sub_10029041C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoverySearchingCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100290484(int a1)
{
  v14 = a1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + qword_1006C2B90);
  v7 = [v6 indexPathsForSelectedRows];
  if (v7)
  {
    v8 = v7;
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 0;
      while (v11 < *(v9 + 16))
      {
        (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11++, v2);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v6 deselectRowAtIndexPath:isa animated:v14 & 1];

        (*(v3 + 8))(v5, v2);
        if (v10 == v11)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t sub_10029062C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShareState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FMIPBeaconShareState.accepting(_:) || v6 == enum case for FMIPBeaconShareState.declining(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  if (v6 == enum case for FMIPBeaconShareState.unknown(_:))
  {
    v8 = "E_OWNER_USER_CELL_DETAIL";
    v9 = [objc_opt_self() mainBundle];
LABEL_9:
    v10 = v9;
    v31 = 0x800000010057D3F0;
    v11 = 0xD000000000000025;
LABEL_10:
    v12 = v8 | 0x8000000000000000;
    v13.value._object = 0x800000010057D3D0;
    v14 = 0xD000000000000018;
    v13.value._countAndFlagsBits = 0xD000000000000013;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, v13, v10, v15, *(&v31 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v6 == enum case for FMIPBeaconShareState.invitationSent(_:))
  {
    v8 = "E_SHARE_STATE_REQUEST_RECEIVED";
    v9 = [objc_opt_self() mainBundle];
    goto LABEL_9;
  }

  if (v6 == enum case for FMIPBeaconShareState.invitationReceived(_:) || v6 == enum case for FMIPBeaconShareState.requestSent(_:))
  {
    return 0;
  }

  if (v6 == enum case for FMIPBeaconShareState.requestReceived(_:))
  {
    v8 = "E_SHARE_STATE_FAILED";
    v10 = [objc_opt_self() mainBundle];
    v31 = 0x800000010057D3F0;
    v11 = 0xD00000000000002ELL;
    goto LABEL_10;
  }

  if (v6 == enum case for FMIPBeaconShareState.accepted(_:))
  {
    v8 = "E_SHARE_STATE_EXPIRED";
    v10 = [objc_opt_self() mainBundle];
    v31 = 0x800000010057D3F0;
    v11 = 0xD000000000000026;
    goto LABEL_10;
  }

  if (v6 == enum case for FMIPBeaconShareState.expired(_:))
  {
    v8 = "E_SHARE_STATE_PENDING";
    v9 = [objc_opt_self() mainBundle];
    goto LABEL_9;
  }

  if (v6 == enum case for FMIPBeaconShareState.withdrawing(_:))
  {
    return 0;
  }

  v18 = enum case for FMIPBeaconShareState.failed(_:);
  v19 = v6;
  v20 = [objc_opt_self() mainBundle];
  v32 = 0x800000010057D3F0;
  if (v19 == v18)
  {
    v21._countAndFlagsBits = 0xD000000000000024;
    v21._object = 0x800000010058C6A0;
    v22.value._object = 0x800000010057D3D0;
    v23 = 0xD000000000000018;
    v22.value._countAndFlagsBits = 0xD000000000000013;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v24, *(&v32 - 1))._countAndFlagsBits;

    return v25;
  }

  else
  {
    v26._countAndFlagsBits = 0xD000000000000025;
    v26._object = 0x800000010058C670;
    v27.value._object = 0x800000010057D3D0;
    v28 = 0xD000000000000018;
    v27.value._countAndFlagsBits = 0xD000000000000013;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v20, v29, *(&v32 - 1))._countAndFlagsBits;

    (*(v3 + 8))(v5, v2);
    return v30;
  }
}

uint64_t sub_100290AF0()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShareState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FMIPBeaconShareState.accepting(_:))
  {
    (*(v3 + 8))(v5, v2);
    v7 = "E_SHARE_ACTION_FRIEND";
    v8 = [objc_opt_self() mainBundle];
LABEL_3:
    v9 = v8;
    v24 = 0x800000010057D3F0;
    v10 = 0xD000000000000025;
LABEL_11:
    v12 = v7 | 0x8000000000000000;
    v13.value._object = 0x800000010057D3D0;
    v14 = 0xD000000000000018;
    v13.value._countAndFlagsBits = 0xD000000000000013;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, v13, v9, v15, *(&v24 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v6 == enum case for FMIPBeaconShareState.declining(_:))
  {
    (*(v3 + 8))(v5, v2);
    v7 = "E_SHARE_ACTION_WITHDRAW";
    v11 = [objc_opt_self() mainBundle];
LABEL_6:
    v9 = v11;
    v24 = 0x800000010057D3F0;
    v10 = 0xD000000000000026;
    goto LABEL_11;
  }

  if (v6 == enum case for FMIPBeaconShareState.unknown(_:))
  {
LABEL_20:
    v7 = "E_SHARE_ACTION_FRIEND";
    v8 = [objc_opt_self() mainBundle];
    goto LABEL_3;
  }

  if (v6 == enum case for FMIPBeaconShareState.invitationSent(_:))
  {
LABEL_10:
    v7 = "E_SHARE_ACTION_REMOVE";
    v9 = [objc_opt_self() mainBundle];
    v24 = 0x800000010057D3F0;
    v10 = 0xD000000000000027;
    goto LABEL_11;
  }

  if (v6 == enum case for FMIPBeaconShareState.invitationReceived(_:))
  {
    goto LABEL_14;
  }

  if (v6 == enum case for FMIPBeaconShareState.requestSent(_:))
  {
    goto LABEL_10;
  }

  if (v6 == enum case for FMIPBeaconShareState.requestReceived(_:))
  {
LABEL_14:
    v7 = "E_SHARE_ACTION_WITHDRAW";
    v11 = [objc_opt_self() mainBundle];
    goto LABEL_6;
  }

  if (v6 == enum case for FMIPBeaconShareState.accepted(_:) || v6 == enum case for FMIPBeaconShareState.expired(_:) || v6 == enum case for FMIPBeaconShareState.withdrawing(_:))
  {
    goto LABEL_20;
  }

  v18 = enum case for FMIPBeaconShareState.failed(_:);
  v19 = v6;
  v20 = [objc_opt_self() mainBundle];
  v26._object = 0x800000010057D3F0;
  v21._countAndFlagsBits = 0xD000000000000025;
  v21._object = 0x800000010058C960;
  v22.value._object = 0x800000010057D3D0;
  v26._countAndFlagsBits = 0xD000000000000018;
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v26)._countAndFlagsBits;

  if (v19 != v18)
  {
    (*(v3 + 8))(v5, v2);
  }

  return countAndFlagsBits;
}

uint64_t sub_100291070()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShareState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for FMBeaconSharingModuleShareState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A5814(v1, v11, type metadata accessor for FMBeaconSharingModuleShareState);
  v12 = sub_10007EBC0(&qword_1006B9DF8);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    v13 = [objc_opt_self() mainBundle];
    v23._object = 0x800000010057D3F0;
    v14._countAndFlagsBits = 0xD000000000000028;
    v14._object = 0x800000010058C640;
    v15.value._object = 0x800000010057D3D0;
    v23._countAndFlagsBits = 0xD000000000000018;
    v15.value._countAndFlagsBits = 0xD000000000000013;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v23)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  (*(v3 + 32))(v8, v11, v2);
  (*(v3 + 16))(v6, v8, v2);
  v19 = (*(v3 + 88))(v6, v2);
  if (v19 == enum case for FMIPBeaconShareState.accepting(_:) || v19 == enum case for FMIPBeaconShareState.declining(_:))
  {
    goto LABEL_5;
  }

  if (v19 == enum case for FMIPBeaconShareState.unknown(_:))
  {
LABEL_9:
    (*(v3 + 8))(v8, v2);
    return 0;
  }

  if (v19 == enum case for FMIPBeaconShareState.invitationSent(_:))
  {
    goto LABEL_11;
  }

  if (v19 == enum case for FMIPBeaconShareState.invitationReceived(_:) || v19 == enum case for FMIPBeaconShareState.requestSent(_:))
  {
    goto LABEL_9;
  }

  if (v19 == enum case for FMIPBeaconShareState.requestReceived(_:))
  {
    goto LABEL_11;
  }

  if (v19 == enum case for FMIPBeaconShareState.accepted(_:))
  {
    goto LABEL_9;
  }

  if (v19 == enum case for FMIPBeaconShareState.expired(_:))
  {
    goto LABEL_11;
  }

  if (v19 == enum case for FMIPBeaconShareState.withdrawing(_:))
  {
    goto LABEL_9;
  }

  if (v19 == enum case for FMIPBeaconShareState.failed(_:))
  {
LABEL_11:
    v21 = sub_10029062C();
    (*(v3 + 8))(v8, v2);
    return v21;
  }

LABEL_5:
  v20 = *(v3 + 8);
  v20(v8, v2);
  v20(v6, v2);
  return 0;
}

uint64_t sub_100291448()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShareState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMBeaconSharingModuleShareState(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A5814(v1, v8, type metadata accessor for FMBeaconSharingModuleShareState);
  v9 = sub_10007EBC0(&qword_1006B9DF8);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    v10 = [objc_opt_self() mainBundle];
    v17._object = 0x800000010057D3F0;
    v11._countAndFlagsBits = 0xD000000000000025;
    v11._object = 0x800000010058C960;
    v12.value._object = 0x800000010057D3D0;
    v17._countAndFlagsBits = 0xD000000000000018;
    v12.value._countAndFlagsBits = 0xD000000000000013;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17)._countAndFlagsBits;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    countAndFlagsBits = sub_100290AF0();
    (*(v3 + 8))(v5, v2);
  }

  return countAndFlagsBits;
}

Swift::Int sub_100291688()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShareState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMBeaconSharingModuleShareState(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1002A5814(v1, v8, type metadata accessor for FMBeaconSharingModuleShareState);
  v9 = sub_10007EBC0(&qword_1006B9DF8);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_1002A5600(&qword_1006B9FB8, &type metadata accessor for FMIPBeaconShareState);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_1002918A4()
{
  v1 = type metadata accessor for FMIPBeaconShareState();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A5814(v0, v7, type metadata accessor for FMBeaconSharingModuleShareState);
  v8 = sub_10007EBC0(&qword_1006B9DF8);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    Hasher._combine(_:)(1uLL);
    sub_1002A5600(&qword_1006B9FB8, &type metadata accessor for FMIPBeaconShareState);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int sub_100291A98()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShareState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1002A5814(v1, v8, type metadata accessor for FMBeaconSharingModuleShareState);
  v9 = sub_10007EBC0(&qword_1006B9DF8);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_1002A5600(&qword_1006B9FB8, &type metadata accessor for FMIPBeaconShareState);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_100291CB4()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002A5814(v1, v12, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    PersonNameComponents.init()();
    if ([v13 isKeyAvailable:CNContactNicknameKey])
    {
      v14 = [v13 nickname];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.nickname.setter();
    }

    if ([v13 isKeyAvailable:CNContactGivenNameKey])
    {
      v15 = [v13 givenName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.givenName.setter();
    }

    if ([v13 isKeyAvailable:CNContactFamilyNameKey])
    {
      v16 = [v13 familyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.familyName.setter();
    }

    v17 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v19 = [v17 localizedStringFromPersonNameComponents:isa style:1 options:0];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    (*(v3 + 8))(v5, v2);
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
    }

    else
    {

      if (qword_1006AEA90 != -1)
      {
        swift_once();
      }

      v25 = [qword_1006D3D28 stringFromContact:v13];
      if (v25)
      {
        v26 = v25;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        return 0;
      }
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v20 = FMFFriend.shortName.getter();
    (*(v7 + 8))(v9, v6);
  }

  return v20;
}

uint64_t sub_1002920D8()
{
  v1 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A5814(v0, v3, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002A587C(v3, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v4 = [objc_opt_self() mainBundle];
    v15._object = 0x800000010057D3F0;
    v5._countAndFlagsBits = 0xD000000000000026;
    v5._object = 0x800000010058C900;
    v6.value._object = 0x800000010057D3D0;
    v15._countAndFlagsBits = 0xD000000000000018;
    v6.value._countAndFlagsBits = 0xD000000000000013;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v15)._countAndFlagsBits;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v16._object = 0x800000010057D3F0;
    v10._countAndFlagsBits = 0xD000000000000025;
    v10._object = 0x800000010058C930;
    v11.value._object = 0x800000010057D3D0;
    v16._countAndFlagsBits = 0xD000000000000018;
    v11.value._countAndFlagsBits = 0xD000000000000013;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v16)._countAndFlagsBits;

    sub_1002A587C(v3, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  }

  return countAndFlagsBits;
}

void sub_1002922E4()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002A5814(v0, v7, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(0);
    sub_1002A5600(&qword_1006B85B0, &type metadata accessor for FMFFriend);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_1002924FC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMBeaconSharingModuleShareState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  v12 = __chkstk_darwin(v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A5814(v2, v19, type metadata accessor for FMBeaconSharingModuleEntry);
  v20 = sub_10007EBC0(&qword_1006B9D48);
  v21 = (*(*(v20 - 8) + 48))(v19, 2, v20);
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = [objc_opt_self() mainBundle];
      v49._object = 0x800000010057D3F0;
      v23._countAndFlagsBits = 0xD00000000000002ALL;
      v23._object = 0x800000010058C610;
      v24.value._object = 0x800000010057D3D0;
      v49._countAndFlagsBits = 0xD000000000000018;
      v24.value._countAndFlagsBits = 0xD000000000000013;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v49);
      countAndFlagsBits = v26._countAndFlagsBits;
      object = v26._object;

      v29 = 0;
      v30 = 0;
      v31 = 3;
    }

    else
    {
      v37 = [objc_opt_self() mainBundle];
      v50._object = 0x800000010057D3F0;
      v38._countAndFlagsBits = 0xD000000000000029;
      v38._object = 0x800000010058C5E0;
      v39.value._object = 0x800000010057D3D0;
      v50._countAndFlagsBits = 0xD000000000000018;
      v39.value._countAndFlagsBits = 0xD000000000000013;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v50);
      countAndFlagsBits = v41._countAndFlagsBits;
      object = v41._object;

      v29 = 0;
      v30 = 0;
      v31 = 0;
    }
  }

  else
  {
    v48 = v5;
    v32 = *(v20 + 48);
    sub_1002A57AC(v19, v16, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    sub_1002A57AC(&v19[v32], v10, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A5814(v16, v14, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v14;
      if (qword_1006AEA90 != -1)
      {
        swift_once();
      }

      v34 = [qword_1006D3D28 stringFromContact:v33];
      if (v34)
      {
        v35 = v34;
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v36;
      }

      else
      {

        countAndFlagsBits = 0;
        object = 0xE000000000000000;
      }
    }

    else
    {
      v42 = v48;
      (*(v48 + 32))(v7, v14, v4);
      countAndFlagsBits = FMFFriend.name.getter();
      object = v43;
      (*(v42 + 8))(v7, v4);
    }

    v44 = *(v20 + 64);
    v29 = sub_100291070();
    v30 = v45;
    sub_1002A587C(v10, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v16, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 8))(&v19[v44], v46);
    v31 = 1;
  }

  *a1 = countAndFlagsBits;
  *(a1 + 8) = object;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v29;
  *(a1 + 40) = v30;
  *(a1 + 48) = v31;
}

void sub_100292A4C(uint64_t a1)
{
  v50 = a1;
  v48 = type metadata accessor for FMIPBeaconShareState();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FMFFriend();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMBeaconSharingModuleShareState(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  v15 = __chkstk_darwin(v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A5814(v1, v22, type metadata accessor for FMBeaconSharingModuleEntry);
  v23 = sub_10007EBC0(&qword_1006B9D48);
  v24 = (*(*(v23 - 8) + 48))(v22, 2, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = 2;
    }

    Hasher._combine(_:)(v25);
  }

  else
  {
    v41 = v5;
    v42 = v11;
    v26 = *(v23 + 48);
    v27 = *(v23 + 64);
    sub_1002A57AC(v22, v19, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    sub_1002A57AC(&v22[v26], v13, type metadata accessor for FMBeaconSharingModuleShareState);
    v28 = v46;
    (*(v46 + 32))(v7, &v22[v27], v49);
    Hasher._combine(_:)(1uLL);
    sub_1002A5814(v19, v17, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v28;
    v43 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v17;
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
    }

    else
    {
      v32 = v44;
      v33 = v41;
      (*(v44 + 32))(v41, v17, v3);
      Hasher._combine(_:)(0);
      sub_1002A5600(&qword_1006B85B0, &type metadata accessor for FMFFriend);
      dispatch thunk of Hashable.hash(into:)();
      (*(v32 + 8))(v33, v3);
    }

    v34 = v45;
    v35 = v42;
    sub_1002A5814(v13, v42, type metadata accessor for FMBeaconSharingModuleShareState);
    v36 = sub_10007EBC0(&qword_1006B9DF8);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v39 = v47;
    v38 = v48;
    if (v37 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      (*(v34 + 32))(v47, v35, v48);
      Hasher._combine(_:)(1uLL);
      sub_1002A5600(&qword_1006B9FB8, &type metadata accessor for FMIPBeaconShareState);
      dispatch thunk of Hashable.hash(into:)();
      (*(v34 + 8))(v39, v38);
    }

    sub_1002A5600(&unk_1006C2410, &type metadata accessor for UUID);
    v40 = v49;
    dispatch thunk of Hashable.hash(into:)();
    (*(v30 + 8))(v7, v40);
    sub_1002A587C(v13, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v43, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  }
}

double sub_1002930CC@<D0>(uint64_t a1@<X8>)
{
  sub_1002924FC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

Swift::Int sub_100293194(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002931F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_10029325C()
{
  sub_1002934E0();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1002932BC()
{
  if (v0[15])
  {
    v1 = *(*(v0[14] + 24) + 16);

    os_unfair_lock_lock((v1 + 24));
    sub_10008FB6C((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  sub_10001835C(v0[16]);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_beaconIdentifier, &unk_1006B20C0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1002933C4()
{
  sub_1002932BC();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100293418()
{
  sub_1002992FC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002934E0()
{
  v1 = v0;
  v2 = *(*(v0 + 112) + 24);
  type metadata accessor for FMDevicesSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100633200;
  swift_unknownObjectWeakAssign();
  v4 = *(v2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_10000E7C0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  *(v1 + 120) = v3;

  v5 = [objc_opt_self() defaultCenter];
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1002AC220;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10046DEDC;
  aBlock[3] = &unk_100633840;
  v7 = _Block_copy(aBlock);

  v8 = [v5 addObserverForName:CNContactStoreDidChangeNotification object:0 queue:0 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

uint64_t sub_1002936D0()
{
  v0 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_100170C90(0, 0, v2, &unk_10055BD98, v6);
  }

  return result;
}

uint64_t sub_1002937F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100293814, v2, 0);
}

uint64_t sub_100293814()
{
  v12 = v0;
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4CD8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100005B4C(0xD000000000000012, 0x800000010058CAE0, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "FMBeaconSharingModuleDataSource: %s", v4, 0xCu);
    sub_100006060(v5);
  }

  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v7 + 128);
  *(v7 + 128) = v0[2];
  *(v7 + 136) = v6;

  sub_10001835C(v8);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1002939E4;

  return sub_100294738(1);
}

uint64_t sub_1002939E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100293AD8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = sub_10007EBC0(&qword_1006B22E8);
  v2[11] = swift_task_alloc();
  sub_10007EBC0(&unk_1006B20C0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100293C30, v1, 0);
}

uint64_t sub_100293C30()
{
  v47 = v0;
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4CD8);
  v45 = *(v3 + 16);
  v45(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100005B4C(0xD000000000000017, 0x800000010058CAC0, &v46);
    *(v12 + 12) = 2080;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    v42 = *(v11 + 8);
    v42(v9, v10);
    v16 = sub_100005B4C(v13, v15, &v46);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMBeaconSharingModuleDataSource: %s - %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v42 = *(v11 + 8);
    v42(v9, v10);
  }

  v17 = v0[15];
  v18 = v0[16];
  v19 = v0[14];
  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[8];
  v23 = v0[9];
  v24 = OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_beaconIdentifier;
  swift_beginAccess();
  v45(v19, v22, v17);
  v43 = *(v18 + 56);
  v43(v19, 0, 1, v17);
  v25 = *(v21 + 48);
  v44 = v23;
  sub_100007204(v23 + v24, v20, &unk_1006B20C0);
  sub_100007204(v19, v20 + v25, &unk_1006B20C0);
  v26 = *(v18 + 48);
  v27 = v26(v20, 1, v17);
  v28 = v0[15];
  if (v27 == 1)
  {
    sub_100012DF0(v0[14], &unk_1006B20C0);
    if (v26(v20 + v25, 1, v28) == 1)
    {
      sub_100012DF0(v0[11], &unk_1006B20C0);
LABEL_16:

      v40 = v0[1];

      return v40();
    }

    goto LABEL_11;
  }

  sub_100007204(v0[11], v0[13], &unk_1006B20C0);
  if (v26(v20 + v25, 1, v28) == 1)
  {
    v29 = v0[15];
    v30 = v0[13];
    sub_100012DF0(v0[14], &unk_1006B20C0);
    v42(v30, v29);
LABEL_11:
    sub_100012DF0(v0[11], &qword_1006B22E8);
    goto LABEL_12;
  }

  v35 = v0[17];
  v36 = v0[15];
  v41 = v0[14];
  v37 = v0[13];
  v38 = v0[11];
  (*(v0[16] + 32))(v35, v20 + v25, v36);
  sub_1002A5600(&qword_1006B22F0, &type metadata accessor for UUID);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42(v35, v36);
  sub_100012DF0(v41, &unk_1006B20C0);
  v42(v37, v36);
  sub_100012DF0(v38, &unk_1006B20C0);
  if (v39)
  {
    goto LABEL_16;
  }

LABEL_12:
  v31 = v0[15];
  v32 = v0[12];
  v45(v32, v0[8], v31);
  v43(v32, 0, 1, v31);
  swift_beginAccess();
  sub_1002AC1B0(v32, v44 + v24);
  swift_endAccess();
  v33 = swift_task_alloc();
  v0[19] = v33;
  *v33 = v0;
  v33[1] = sub_100294230;

  return sub_100294738(1);
}

uint64_t sub_100294230()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002943DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE760;

  return sub_10029446C();
}

uint64_t sub_10029446C()
{
  *(v1 + 16) = v0;
  sub_10007EBC0(&unk_1006BEF30);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100294508, v0, 0);
}

uint64_t sub_100294508()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_currentUpdateTask;
  v3 = v1;
  if (*(v1 + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_currentUpdateTask))
  {

    Task.cancel()();

    v3 = v0[2];
  }

  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1002A5600(&qword_1006B9FE8, type metadata accessor for FMBeaconSharingModuleDataSource);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v3;
  swift_retain_n();
  *(v1 + v2) = sub_100170C90(0, 0, v4, &unk_10055BD90, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002946A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000E3478;

  return sub_100294738(0);
}

uint64_t sub_100294738(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 604) = a1;
  v3 = type metadata accessor for FMItemCapabilities();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v4 = type metadata accessor for FMIPBeaconSharingLimits();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  v5 = sub_10007EBC0(&qword_1006AF920);
  *(v2 + 152) = v5;
  *(v2 + 160) = *(v5 - 8);
  *(v2 + 168) = swift_task_alloc();
  v6 = sub_10007EBC0(&qword_1006AF910);
  *(v2 + 176) = v6;
  *(v2 + 184) = *(v6 - 8);
  *(v2 + 192) = swift_task_alloc();
  sub_10007EBC0(&qword_1006B0050);
  *(v2 + 200) = swift_task_alloc();
  v7 = type metadata accessor for FMFFriend();
  *(v2 + 208) = v7;
  *(v2 + 216) = *(v7 - 8);
  *(v2 + 224) = swift_task_alloc();
  type metadata accessor for FMBeaconSharingModuleShareState(0);
  *(v2 + 232) = swift_task_alloc();
  sub_10007EBC0(&unk_1006B0120);
  *(v2 + 240) = swift_task_alloc();
  sub_10007EBC0(&qword_1006B07D0);
  *(v2 + 248) = swift_task_alloc();
  v8 = type metadata accessor for FMIPItem();
  *(v2 + 256) = v8;
  *(v2 + 264) = *(v8 - 8);
  *(v2 + 272) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v2 + 280) = v9;
  *(v2 + 288) = *(v9 - 8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = sub_10007EBC0(&qword_1006B22E8);
  *(v2 + 344) = swift_task_alloc();
  sub_10007EBC0(&unk_1006B20C0);
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  v10 = type metadata accessor for FMIPBeaconShare();
  *(v2 + 384) = v10;
  *(v2 + 392) = *(v10 - 8);
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();

  return _swift_task_switch(sub_100294C58, v1, 0);
}

uint64_t sub_100294C58()
{
  v205 = v0;
  v2 = *(v0 + 88);
  v3 = *(v2 + 112);
  *(v0 + 424) = v3;
  v4 = *(*(v3 + 24) + 64);
  v5 = *(v4 + 16);
  v6 = OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_beaconIdentifier;

  v193 = v2;
  v191 = v6;
  swift_beginAccess();
  v189 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = *(v0 + 392);
    v9 = *(v0 + 288);
    v183 = *(v0 + 336);
    v182 = (v9 + 56);
    v175 = (v9 + 32);
    v177 = (v9 + 8);
    v178 = (v8 + 8);
    v185 = v8;
    v179 = (v8 + 32);
    v180 = _swiftEmptyArrayStorage;
    v181 = (v9 + 48);
    v187 = v4;
    while (1)
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_107;
      }

      v11 = *(v0 + 376);
      v12 = *(v0 + 344);
      v1 = *(v0 + 280);
      v200 = (*(v185 + 80) + 32) & ~*(v185 + 80);
      v196 = *(v185 + 72);
      (*(v185 + 16))(*(v0 + 416), v4 + v200 + v196 * v7, *(v0 + 384));
      FMIPBeaconShare.beaconIdentifier.getter();
      (*v182)(v11, 0, 1, v1);
      v13 = *(v183 + 48);
      sub_100007204(v11, v12, &unk_1006B20C0);
      sub_100007204(v193 + v191, v12 + v13, &unk_1006B20C0);
      v14 = *v181;
      if ((*v181)(v12, 1, v1) == 1)
      {
        break;
      }

      v16 = *(v0 + 280);
      sub_100007204(*(v0 + 344), *(v0 + 368), &unk_1006B20C0);
      v17 = v14(v12 + v13, 1, v16);
      v1 = *(v0 + 368);
      v18 = *(v0 + 376);
      if (v17 == 1)
      {
        v10 = *(v0 + 280);
        sub_100012DF0(*(v0 + 376), &unk_1006B20C0);
        (*v177)(v1, v10);
LABEL_4:
        sub_100012DF0(*(v0 + 344), &qword_1006B22E8);
        goto LABEL_5;
      }

      v176 = *(v0 + 344);
      v19 = *(v0 + 328);
      v20 = *(v0 + 280);
      (*v175)(v19, v12 + v13, v20);
      sub_1002A5600(&qword_1006B22F0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v177;
      (*v177)(v19, v20);
      sub_100012DF0(v18, &unk_1006B20C0);
      v22(v1, v20);
      sub_100012DF0(v176, &unk_1006B20C0);
      if (v21)
      {
        goto LABEL_13;
      }

LABEL_5:
      (*v178)(*(v0 + 416), *(v0 + 384));
LABEL_6:
      ++v7;
      v4 = v187;
      if (v189 == v7)
      {
        goto LABEL_19;
      }
    }

    v15 = *(v0 + 280);
    sub_100012DF0(*(v0 + 376), &unk_1006B20C0);
    if (v14(v12 + v13, 1, v15) == 1)
    {
      sub_100012DF0(*(v0 + 344), &unk_1006B20C0);
LABEL_13:
      v23 = *v179;
      (*v179)(*(v0 + 408), *(v0 + 416), *(v0 + 384));
      v24 = v180;
      v204[0] = v180;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10016717C(0, v180[2] + 1, 1);
        v24 = v204[0];
      }

      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        sub_10016717C(v25 > 1, v26 + 1, 1);
        v24 = v204[0];
      }

      v27 = *(v0 + 408);
      v28 = *(v0 + 384);
      v24[2] = v26 + 1;
      v180 = v24;
      v23(v24 + v200 + v26 * v196, v27, v28);
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v180 = _swiftEmptyArrayStorage;
LABEL_19:

  v204[0] = v180;

  sub_1002A59C0(v204);
  v29 = *(v0 + 360);
  v30 = *(v0 + 280);
  v31 = *(v0 + 288);

  v32 = v204[0];
  *(v0 + 432) = v204[0];
  swift_beginAccess();
  sub_100007204(v193 + v191, v29, &unk_1006B20C0);
  v33 = *(v31 + 48);
  if (v33(v29, 1, v30) == 1)
  {
    (*(*(v0 + 264) + 56))(*(v0 + 248), 1, 1, *(v0 + 256));
    goto LABEL_22;
  }

  v34 = *(v0 + 360);
  v35 = *(v0 + 328);
  v201 = v33;
  v37 = *(v0 + 280);
  v36 = *(v0 + 288);
  v38 = *(v0 + 264);
  v197 = *(v0 + 256);
  v39 = *(v0 + 248);
  v40 = *(v36 + 32);
  *(v0 + 440) = v40;
  *(v0 + 448) = (v36 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v40(v35, v34, v37);
  v41 = UUID.uuidString.getter();
  v42 = v32;
  v44 = v43;
  (*(v36 + 8))(v35, v37);
  v33 = v201;

  sub_1000E5FF8(v41, v44, v39);
  v45 = v42;
  swift_bridgeObjectRelease_n();

  if ((*(v38 + 48))(v39, 1, v197) == 1)
  {
LABEL_22:
    v46 = *(v0 + 352);
    v47 = *(v0 + 280);
    v48 = *(v0 + 248);

    sub_100012DF0(v48, &qword_1006B07D0);
    sub_100007204(v193 + v191, v46, &unk_1006B20C0);
    v1 = v0;
    if (v33(v46, 1, v47) == 1)
    {
      sub_100012DF0(*(v0 + 352), &unk_1006B20C0);
      if (qword_1006AED68 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100005B14(v49, qword_1006D4CD8);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "FMBeaconSharingModuleDataSource: No beaconIdentifier when calling update", v52, 2u);
      }
    }

    else
    {
      (*(*(v0 + 288) + 32))(*(v0 + 304), *(v0 + 352), *(v0 + 280));
      if (qword_1006AED68 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 296);
      v54 = *(v0 + 304);
      v55 = *(v0 + 280);
      v56 = *(v0 + 288);
      v57 = type metadata accessor for Logger();
      sub_100005B14(v57, qword_1006D4CD8);
      (*(v56 + 16))(v53, v54, v55);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v1[37];
      v62 = v1[38];
      v64 = v1[35];
      v63 = v1[36];
      if (v60)
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v204[0] = v66;
        *v65 = 136315138;
        v202 = v62;
        v67 = v1;
        v68 = UUID.uuidString.getter();
        v70 = v69;
        v71 = *(v63 + 8);
        v71(v61, v64);
        v72 = v68;
        v1 = v67;
        v73 = sub_100005B4C(v72, v70, v204);

        *(v65 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v58, v59, "FMBeaconSharingModuleDataSource: No item found for beacon: %s", v65, 0xCu);
        sub_100006060(v66);

        v71(v202, v64);
      }

      else
      {

        v78 = *(v63 + 8);
        v78(v61, v64);
        v78(v62, v64);
      }
    }

    goto LABEL_90;
  }

  (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  *(v0 + 456) = sub_100005B14(v74, qword_1006D4CD8);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    *(v77 + 4) = v45[2];

    _os_log_impl(&_mh_execute_header, v75, v76, "FMBeaconSharingModuleDataSource: Received shares updates: %ld", v77, 0xCu);
  }

  else
  {
  }

  v79 = FMIPItem.owner.getter();
  v81 = v80;
  v82 = objc_opt_self();
  *(v0 + 464) = v82;
  v83 = [v82 SPOwner];
  v84 = [v83 destination];

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  if (v79 == v85 && v81 == v87)
  {
    v88 = 1;
  }

  else
  {
    v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v0 + 605) = v88 & 1;

  v89 = v45[2];
  *(v0 + 472) = v89;
  if (!v89)
  {
    v107 = v0;

    v90 = 0;
LABEL_58:
    v109 = _swiftEmptyArrayStorage[2];
    v110 = __OFADD__(v109, v109);
    v111 = 2 * v109;
    if (v110)
    {
      __break(1u);
    }

    else
    {
      v194 = v111 + 1;
      if (!__OFADD__(v111, 1))
      {
        v112 = v107;
        v113 = v107[53];
        v114 = v107[18];
        v115 = v112[16];
        v116 = v112[17];
        v118 = v112[14];
        v117 = v112[15];
        v119 = v112[12];
        v120 = v112[13];
        v121 = *(v113 + 24);
        v122 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
        v203 = v112;
        swift_beginAccess();
        (*(v116 + 16))(v114, v121 + v122, v115);
        v123 = FMIPBeaconSharingLimits.maxCircleMembers.getter();
        (*(v116 + 8))(v114, v115);
        FMIPItem.capabilities.getter();
        static FMItemCapabilities.canEnableSharing.getter();
        sub_1002A5600(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
        LOBYTE(v114) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v124 = *(v120 + 8);
        v124(v118, v119);
        v124(v117, v119);
        v126 = (v114 & 1) != 0 && (v194 < 0 || v194 < v123);
        v198 = v126;
        if (*(v203 + 605) == 1)
        {
          v128 = v203[14];
          v127 = v203[15];
          v129 = v203[12];
          FMIPItem.capabilities.getter();
          static FMItemCapabilities.canDisableSharing.getter();
          v130 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v124(v128, v129);
          v124(v127, v129);
        }

        else
        {
          v130 = 0;
        }

        v188 = *(v203 + 604);
        v131 = v203[11] + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel;
        v133 = *v131;
        v132 = *(v131 + 8);
        v134 = *(v131 + 16);
        v195 = *(v131 + 17);
        if (*(v131 + 17))
        {
          v135 = 256;
        }

        else
        {
          v135 = 0;
        }

        v136 = v135 | v134;
        v190 = *(v131 + 18);
        if (*(v131 + 18))
        {
          v137 = 0x10000;
        }

        else
        {
          v137 = 0;
        }

        v138 = sub_100297EE8(v133, v132, v136 | v137);
        if (v198)
        {
          v139 = 256;
        }

        else
        {
          v139 = 0;
        }

        v140 = v139 & 0xFFFFFFFE | v90 & 1;
        v192 = v130;
        v141 = v130 & 1;
        if (v141)
        {
          v142 = 0x10000;
        }

        else
        {
          v142 = 0;
        }

        v186 = v140;
        v184 = v142;
        v143 = sub_100297EE8(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v140 | v142);
        v144 = sub_1002440F4(v138, v143);

        if (((v144 & 1) == 0 || ((v90 ^ v134) & 1) != 0 || ((v198 ^ v195) & 1) != 0 || ((v192 ^ v190) & 1) != 0 || v188) && (static Task<>.isCancelled.getter() & 1) == 0)
        {
          v146 = v90;
          v1 = v203;
          *v131 = _swiftEmptyArrayStorage;
          *(v131 + 8) = _swiftEmptyArrayStorage;
          *(v131 + 16) = v146;
          *(v131 + 17) = v198;
          *(v131 + 18) = v141;
          swift_bridgeObjectRetain_n();

          v147 = Logger.logObject.getter();
          v148 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            *v149 = 134217984;
            v150 = sub_100297EE8(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v186 | v184)[2];

            swift_bridgeObjectRelease_n();
            *(v149 + 4) = v150;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&_mh_execute_header, v147, v148, "FMBeaconSharingModuleDataSource: Received new rows: %ld", v149, 0xCu);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v151 = v203[11];
          v152 = *(v151 + 128);
          v203[70] = v152;
          if (v152)
          {
            v203[71] = *(v151 + 136);
            v153 = *v131;
            v203[72] = *v131;
            v154 = *(v131 + 8);
            v203[73] = v154;
            v155 = *(v131 + 16);
            v156 = *(v131 + 17);
            v157 = *(v131 + 18);
            sub_100062900(v152);

            v199 = (v152 + *v152);
            v158 = swift_task_alloc();
            v203[74] = v158;
            if (v156)
            {
              v159 = 256;
            }

            else
            {
              v159 = 0;
            }

            v160 = v159 | v155;
            if (v157)
            {
              v161 = 0x10000;
            }

            else
            {
              v161 = 0;
            }

            *v158 = v203;
            v158[1] = sub_100297D5C;

            return (v199)(v153, v154, v160 | v161);
          }

LABEL_107:
          (*(v1[33] + 8))(v1[34], v1[32]);
        }

        else
        {
          v1 = v203;
          (*(v203[33] + 8))(v203[34], v203[32]);
          swift_bridgeObjectRelease_n();
        }

LABEL_90:

        v145 = v1[1];

        return v145();
      }
    }

    __break(1u);
    return result;
  }

  v90 = 0;
  v91 = 0;
  v92 = *(v0 + 392);
  *(v0 + 600) = *(v92 + 80);
  *(v0 + 480) = *(v92 + 72);
  *(v0 + 488) = *(v92 + 16);
  while (1)
  {
    *(v0 + 504) = _swiftEmptyArrayStorage;
    *(v0 + 512) = _swiftEmptyArrayStorage;
    *(v0 + 496) = v91;
    *(v0 + 606) = v90 & 1;
    (*(v0 + 488))(*(v0 + 400), *(v0 + 432) + ((*(v0 + 600) + 32) & ~*(v0 + 600)) + *(v0 + 480) * v91, *(v0 + 384));
    if ((FMIPBeaconShare.otherShareeShouldBeHidden.getter() & 1) == 0)
    {
      break;
    }

    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
LABEL_45:
    v91 = *(v0 + 496) + 1;
    if (v91 == *(v0 + 472))
    {
      v107 = v0;

      goto LABEL_58;
    }
  }

  v93 = *(v0 + 464);
  v94 = FMIPBeaconShare.shareeHandle.getter();
  v96 = v95;
  v97 = [v93 SPOwner];
  v98 = [v97 destination];

  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;

  if (v94 == v99 && v96 == v101)
  {

LABEL_55:
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    v90 = 1;
    goto LABEL_45;
  }

  v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v103)
  {
    goto LABEL_55;
  }

  v104 = *(v0 + 240);
  FMIPBeaconShare.delegatedSharesURL.getter();
  v105 = type metadata accessor for URL();
  if ((*(*(v105 - 8) + 48))(v104, 1, v105) != 1)
  {
    v106 = *(v0 + 240);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    sub_100012DF0(v106, &unk_1006B0120);
    goto LABEL_45;
  }

  sub_100012DF0(*(v0 + 240), &unk_1006B0120);
  v162 = FMIPBeaconShare.shareeHandle.getter();
  v164 = v163;
  *(v0 + 520) = v162;
  *(v0 + 528) = v163;
  v165 = FMIPBeaconShare.shareeHandle.getter();
  v167 = v166;
  if (v165 == FMIPBeaconShare.ownerHandle.getter() && v167 == v168)
  {

    v169 = 1;
  }

  else
  {
    v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v170)
    {
      v169 = 1;
    }

    else
    {
      FMIPBeaconShare.state.getter();
      v169 = 0;
    }
  }

  v171 = *(v0 + 232);
  v172 = sub_10007EBC0(&qword_1006B9DF8);
  (*(*(v172 - 8) + 56))(v171, v169, 1, v172);
  v173 = swift_task_alloc();
  *(v0 + 536) = v173;
  *v173 = v0;
  v173[1] = sub_1002961F0;
  v174 = *(v0 + 200);

  return sub_10029870C(v174, v162, v164);
}

uint64_t sub_1002961F0()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100296300, v1, 0);
}

uint64_t sub_100296300()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100012DF0(v3, &qword_1006B0050);
    v4 = swift_task_alloc();
    *(v0 + 544) = v4;
    *v4 = v0;
    v4[1] = sub_100297028;
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);

    return sub_100298F8C(v6, v5);
  }

  v115 = *(v0 + 440);
  v8 = *(v0 + 320);
  v9 = *(v0 + 280);
  v10 = *(v0 + 224);
  v118 = *(v0 + 232);
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);

  (*(v2 + 32))(v10, v3, v1);
  FMIPBeaconShare.identifier.getter();
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v115(v11, v8, v9);
  sub_1002A5814(v118, v11 + v13, type metadata accessor for FMBeaconSharingModuleShareState);
  (*(v2 + 16))(v11 + v14, v10, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10008BED4(0, v16[2] + 1, 1, *(v0 + 512));
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_10008BED4(v17 > 1, v18 + 1, 1, v16);
  }

  v20 = *(v0 + 392);
  v19 = *(v0 + 400);
  v21 = *(v0 + 384);
  v22 = *(v0 + 232);
  v24 = *(v0 + 184);
  v23 = *(v0 + 192);
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  sub_1002A587C(v22, type metadata accessor for FMBeaconSharingModuleShareState);
  (*(v20 + 8))(v19, v21);
  v16[2] = v18 + 1;
  sub_100035318(v23, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, &qword_1006AF910);
  v25 = *(v0 + 606);
  v26 = *(v0 + 504);
  v27 = *(v0 + 496) + 1;
  if (v27 == *(v0 + 472))
  {
LABEL_10:

    v28 = v16[2];
    v29 = *(v26 + 16);
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      v30 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (!v30)
      {
        v113 = v32;
        v116 = v25;
        v117 = v26;
        v119 = v16;
        v34 = *(v0 + 136);
        v33 = *(v0 + 144);
        v35 = *(v0 + 120);
        v36 = *(v0 + 128);
        v38 = *(v0 + 104);
        v37 = *(v0 + 112);
        v39 = *(v0 + 96);
        v40 = *(*(v0 + 424) + 24);
        v41 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
        swift_beginAccess();
        (*(v34 + 16))(v33, v40 + v41, v36);
        v42 = FMIPBeaconSharingLimits.maxCircleMembers.getter();
        (*(v34 + 8))(v33, v36);
        FMIPItem.capabilities.getter();
        static FMItemCapabilities.canEnableSharing.getter();
        sub_1002A5600(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
        LOBYTE(v33) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v43 = *(v38 + 8);
        v43(v37, v39);
        v43(v35, v39);
        if (v33)
        {
          v45 = v113 < 0 || v113 < v42;
          v120 = v45;
        }

        else
        {
          v120 = 0;
        }

        if (*(v0 + 605) == 1)
        {
          v61 = *(v0 + 112);
          v60 = *(v0 + 120);
          v62 = *(v0 + 96);
          FMIPItem.capabilities.getter();
          static FMItemCapabilities.canDisableSharing.getter();
          v63 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v43(v61, v62);
          v43(v60, v62);
          v64 = v63;
        }

        else
        {
          v64 = 0;
        }

        v111 = *(v0 + 604);
        v65 = *(v0 + 88) + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel;
        v67 = *v65;
        v66 = *(v65 + 8);
        v68 = *(v65 + 16);
        v114 = *(v65 + 17);
        if (*(v65 + 17))
        {
          v69 = 256;
        }

        else
        {
          v69 = 0;
        }

        v70 = v69 | v68;
        v112 = *(v65 + 18);
        if (*(v65 + 18))
        {
          v71 = 0x10000;
        }

        else
        {
          v71 = 0;
        }

        v72 = sub_100297EE8(v67, v66, v70 | v71);
        if (v120)
        {
          v73 = 256;
        }

        else
        {
          v73 = 0;
        }

        v74 = v73 & 0xFFFFFFFE | v116 & 1;
        v75 = v64;
        v110 = v64 & 1;
        if (v64)
        {
          v76 = 0x10000;
        }

        else
        {
          v76 = 0;
        }

        v109 = v74;
        v108 = v76;
        v77 = sub_100297EE8(v119, v117, v74 | v76);
        v78 = sub_1002440F4(v72, v77);

        if (((v78 & 1) == 0 || ((v116 ^ v68) & 1) != 0 || ((v120 ^ v114) & 1) != 0 || ((v75 ^ v112) & 1) != 0 || v111) && (static Task<>.isCancelled.getter() & 1) == 0)
        {
          *v65 = v119;
          *(v65 + 8) = v117;
          *(v65 + 16) = v116 & 1;
          *(v65 + 17) = v120;
          *(v65 + 18) = v110;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 134217984;
            v83 = sub_100297EE8(v119, v117, v109 | v108)[2];

            *(v82 + 4) = v83;

            _os_log_impl(&_mh_execute_header, v80, v81, "FMBeaconSharingModuleDataSource: Received new rows: %ld", v82, 0xCu);
          }

          else
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v92 = *(v0 + 88);
          v93 = *(v92 + 128);
          *(v0 + 560) = v93;
          if (v93)
          {
            *(v0 + 568) = *(v92 + 136);
            v94 = *v65;
            *(v0 + 576) = *v65;
            v95 = *(v65 + 8);
            *(v0 + 584) = v95;
            v96 = *(v65 + 16);
            v97 = *(v65 + 17);
            v98 = *(v65 + 18);
            sub_100062900(v93);

            v121 = (v93 + *v93);
            v99 = swift_task_alloc();
            *(v0 + 592) = v99;
            if (v97)
            {
              v100 = 256;
            }

            else
            {
              v100 = 0;
            }

            v101 = v100 | v96;
            if (v98)
            {
              v102 = 0x10000;
            }

            else
            {
              v102 = 0;
            }

            *v99 = v0;
            v99[1] = sub_100297D5C;

            return (v121)(v94, v95, v101 | v102);
          }

          (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
        }

        else
        {
          (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
        }

        v79 = *(v0 + 8);

        return v79();
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
    while (1)
    {
      *(v0 + 504) = v26;
      *(v0 + 512) = v16;
      *(v0 + 496) = v27;
      *(v0 + 606) = v25 & 1;
      (*(v0 + 488))(*(v0 + 400), *(v0 + 432) + ((*(v0 + 600) + 32) & ~*(v0 + 600)) + *(v0 + 480) * v27, *(v0 + 384));
      if ((FMIPBeaconShare.otherShareeShouldBeHidden.getter() & 1) == 0)
      {
        break;
      }

      (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
LABEL_29:
      v27 = *(v0 + 496) + 1;
      if (v27 == *(v0 + 472))
      {
        goto LABEL_10;
      }
    }

    v46 = *(v0 + 464);
    v47 = FMIPBeaconShare.shareeHandle.getter();
    v49 = v48;
    v50 = [v46 SPOwner];
    v51 = [v50 destination];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    if (v47 == v52 && v49 == v54)
    {

      goto LABEL_32;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
      break;
    }

LABEL_32:
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    v27 = *(v0 + 496) + 1;
    v25 = 1;
    if (v27 == *(v0 + 472))
    {
      goto LABEL_10;
    }
  }

  v57 = *(v0 + 240);
  FMIPBeaconShare.delegatedSharesURL.getter();
  v58 = type metadata accessor for URL();
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) != 1)
  {
    v59 = *(v0 + 240);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    sub_100012DF0(v59, &unk_1006B0120);
    goto LABEL_29;
  }

  sub_100012DF0(*(v0 + 240), &unk_1006B0120);
  v84 = FMIPBeaconShare.shareeHandle.getter();
  v86 = v85;
  *(v0 + 520) = v84;
  *(v0 + 528) = v85;
  v87 = FMIPBeaconShare.shareeHandle.getter();
  v89 = v88;
  if (v87 == FMIPBeaconShare.ownerHandle.getter() && v89 == v90)
  {

    v91 = 1;
  }

  else
  {
    v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v103)
    {
      v91 = 1;
    }

    else
    {
      FMIPBeaconShare.state.getter();
      v91 = 0;
    }
  }

  v104 = *(v0 + 232);
  v105 = sub_10007EBC0(&qword_1006B9DF8);
  (*(*(v105 - 8) + 56))(v104, v91, 1, v105);
  v106 = swift_task_alloc();
  *(v0 + 536) = v106;
  *v106 = v0;
  v106[1] = sub_1002961F0;
  v107 = *(v0 + 200);

  return sub_10029870C(v107, v84, v86);
}

uint64_t sub_100297028(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 552) = a1;

  return _swift_task_switch(sub_10029715C, v2, 0);
}

uint64_t sub_10029715C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 440);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);
  v5 = *(v0 + 232);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  FMIPBeaconShare.identifier.getter();
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v2(v6, v3, v4);
  sub_1002A5814(v5, v6 + v8, type metadata accessor for FMBeaconSharingModuleShareState);
  *(v6 + v9) = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 504);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_10008BEB0(0, v11[2] + 1, 1, *(v0 + 504));
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_10008BEB0(v12 > 1, v13 + 1, 1, v11);
  }

  v15 = *(v0 + 392);
  v14 = *(v0 + 400);
  v16 = *(v0 + 384);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  sub_1002A587C(*(v0 + 232), type metadata accessor for FMBeaconSharingModuleShareState);
  (*(v15 + 8))(v14, v16);
  v11[2] = v13 + 1;
  sub_100035318(v17, v11 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v13, &qword_1006AF920);
  v19 = *(v0 + 512);
  v20 = *(v0 + 606);
  v21 = *(v0 + 496) + 1;
  if (v21 == *(v0 + 472))
  {
LABEL_6:

    v23 = *(v19 + 16);
    v24 = v11[2];
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      v25 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (!v25)
      {
        v108 = v27;
        v110 = v20;
        v111 = v19;
        v112 = v11;
        v29 = *(v0 + 136);
        v28 = *(v0 + 144);
        v30 = *(v0 + 120);
        v31 = *(v0 + 128);
        v33 = *(v0 + 104);
        v32 = *(v0 + 112);
        v34 = *(v0 + 96);
        v35 = *(*(v0 + 424) + 24);
        v36 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
        swift_beginAccess();
        (*(v29 + 16))(v28, v35 + v36, v31);
        v37 = FMIPBeaconSharingLimits.maxCircleMembers.getter();
        (*(v29 + 8))(v28, v31);
        FMIPItem.capabilities.getter();
        static FMItemCapabilities.canEnableSharing.getter();
        sub_1002A5600(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
        LOBYTE(v28) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v38 = *(v33 + 8);
        v38(v32, v34);
        v38(v30, v34);
        if (v28)
        {
          v40 = v108 < 0 || v108 < v37;
          v113 = v40;
        }

        else
        {
          v113 = 0;
        }

        if (*(v0 + 605) == 1)
        {
          v56 = *(v0 + 112);
          v55 = *(v0 + 120);
          v57 = *(v0 + 96);
          FMIPItem.capabilities.getter();
          static FMItemCapabilities.canDisableSharing.getter();
          v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v38(v56, v57);
          v38(v55, v57);
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v106 = *(v0 + 604);
        v60 = *(v0 + 88) + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel;
        v62 = *v60;
        v61 = *(v60 + 8);
        v63 = *(v60 + 16);
        v109 = *(v60 + 17);
        if (*(v60 + 17))
        {
          v64 = 256;
        }

        else
        {
          v64 = 0;
        }

        v65 = v64 | v63;
        v107 = *(v60 + 18);
        if (*(v60 + 18))
        {
          v66 = 0x10000;
        }

        else
        {
          v66 = 0;
        }

        v67 = sub_100297EE8(v62, v61, v65 | v66);
        if (v113)
        {
          v68 = 256;
        }

        else
        {
          v68 = 0;
        }

        v69 = v68 & 0xFFFFFFFE | v110 & 1;
        v70 = v59;
        v105 = v59 & 1;
        if (v59)
        {
          v71 = 0x10000;
        }

        else
        {
          v71 = 0;
        }

        v104 = v69;
        v103 = v71;
        v72 = sub_100297EE8(v111, v112, v69 | v71);
        v73 = sub_1002440F4(v67, v72);

        if (((v73 & 1) == 0 || ((v110 ^ v63) & 1) != 0 || ((v113 ^ v109) & 1) != 0 || ((v70 ^ v107) & 1) != 0 || v106) && (static Task<>.isCancelled.getter() & 1) == 0)
        {
          *v60 = v111;
          *(v60 + 8) = v112;
          *(v60 + 16) = v110 & 1;
          *(v60 + 17) = v113;
          *(v60 + 18) = v105;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 134217984;
            v78 = sub_100297EE8(v111, v112, v104 | v103)[2];

            *(v77 + 4) = v78;

            _os_log_impl(&_mh_execute_header, v75, v76, "FMBeaconSharingModuleDataSource: Received new rows: %ld", v77, 0xCu);
          }

          else
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v87 = *(v0 + 88);
          v88 = *(v87 + 128);
          *(v0 + 560) = v88;
          if (v88)
          {
            *(v0 + 568) = *(v87 + 136);
            v89 = *v60;
            *(v0 + 576) = *v60;
            v90 = *(v60 + 8);
            *(v0 + 584) = v90;
            v91 = *(v60 + 16);
            v92 = *(v60 + 17);
            v93 = *(v60 + 18);
            sub_100062900(v88);

            v114 = (v88 + *v88);
            v94 = swift_task_alloc();
            *(v0 + 592) = v94;
            if (v92)
            {
              v95 = 256;
            }

            else
            {
              v95 = 0;
            }

            v96 = v95 | v91;
            if (v93)
            {
              v97 = 0x10000;
            }

            else
            {
              v97 = 0;
            }

            *v94 = v0;
            v94[1] = sub_100297D5C;

            return (v114)(v89, v90, v96 | v97);
          }

          (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
        }

        else
        {
          (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
        }

        v74 = *(v0 + 8);

        return v74();
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
    while (1)
    {
      *(v0 + 504) = v11;
      *(v0 + 512) = v19;
      *(v0 + 496) = v21;
      *(v0 + 606) = v20 & 1;
      (*(v0 + 488))(*(v0 + 400), *(v0 + 432) + ((*(v0 + 600) + 32) & ~*(v0 + 600)) + *(v0 + 480) * v21, *(v0 + 384));
      if ((FMIPBeaconShare.otherShareeShouldBeHidden.getter() & 1) == 0)
      {
        break;
      }

      (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
LABEL_25:
      v21 = *(v0 + 496) + 1;
      if (v21 == *(v0 + 472))
      {
        goto LABEL_6;
      }
    }

    v41 = *(v0 + 464);
    v42 = FMIPBeaconShare.shareeHandle.getter();
    v44 = v43;
    v45 = [v41 SPOwner];
    v46 = [v45 destination];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

      goto LABEL_28;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0)
    {
      break;
    }

LABEL_28:
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    v21 = *(v0 + 496) + 1;
    v20 = 1;
    if (v21 == *(v0 + 472))
    {
      goto LABEL_6;
    }
  }

  v52 = *(v0 + 240);
  FMIPBeaconShare.delegatedSharesURL.getter();
  v53 = type metadata accessor for URL();
  if ((*(*(v53 - 8) + 48))(v52, 1, v53) != 1)
  {
    v54 = *(v0 + 240);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    sub_100012DF0(v54, &unk_1006B0120);
    goto LABEL_25;
  }

  sub_100012DF0(*(v0 + 240), &unk_1006B0120);
  v79 = FMIPBeaconShare.shareeHandle.getter();
  v81 = v80;
  *(v0 + 520) = v79;
  *(v0 + 528) = v80;
  v82 = FMIPBeaconShare.shareeHandle.getter();
  v84 = v83;
  if (v82 == FMIPBeaconShare.ownerHandle.getter() && v84 == v85)
  {

    v86 = 1;
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v98)
    {
      v86 = 1;
    }

    else
    {
      FMIPBeaconShare.state.getter();
      v86 = 0;
    }
  }

  v99 = *(v0 + 232);
  v100 = sub_10007EBC0(&qword_1006B9DF8);
  (*(*(v100 - 8) + 56))(v99, v86, 1, v100);
  v101 = swift_task_alloc();
  *(v0 + 536) = v101;
  *v101 = v0;
  v101[1] = sub_1002961F0;
  v102 = *(v0 + 200);

  return sub_10029870C(v102, v79, v81);
}

uint64_t sub_100297D5C()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 88);

  sub_10001835C(v1);

  return _swift_task_switch(sub_100050ACC, v2, 0);
}

void *sub_100297EE8(uint64_t a1, uint64_t a2, int a3)
{
  v59 = a3;
  v58 = a2;
  v4 = sub_10007EBC0(&qword_1006AF920);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  __chkstk_darwin(v4);
  v7 = &v55 - v6;
  v8 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v64 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v55 = &v55 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v18 = sub_10007EBC0(&qword_1006AF910);
  v19 = __chkstk_darwin(v18);
  v22 = &v55 - v21;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = *(v19 + 48);
    v62 = *(v19 + 64);
    v63 = v24;
    v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v26 = _swiftEmptyArrayStorage;
    v61 = *(v20 + 72);
    do
    {
      sub_100007204(v25, v22, &qword_1006AF910);
      v27 = sub_10007EBC0(&qword_1006B9D48);
      v28 = *(v27 + 48);
      v29 = *(v27 + 64);
      v30 = type metadata accessor for FMFFriend();
      (*(*(v30 - 8) + 32))(v17, &v22[v62], v30);
      type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
      swift_storeEnumTagMultiPayload();
      sub_1002A57AC(&v22[v63], &v17[v28], type metadata accessor for FMBeaconSharingModuleShareState);
      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 32))(&v17[v29], v22, v31);
      (*(*(v27 - 8) + 56))(v17, 0, 2, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10008B9BC(0, v26[2] + 1, 1, v26);
      }

      v33 = v26[2];
      v32 = v26[3];
      if (v33 >= v32 >> 1)
      {
        v26 = sub_10008B9BC(v32 > 1, v33 + 1, 1, v26);
      }

      v26[2] = v33 + 1;
      sub_1002A57AC(v17, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v33, type metadata accessor for FMBeaconSharingModuleEntry);
      v25 += v61;
      --v23;
    }

    while (v23);
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v34 = *(v58 + 16);
  if (v34)
  {
    v35 = *(v56 + 48);
    v62 = *(v56 + 64);
    v63 = v35;
    v36 = v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v37 = *(v57 + 72);
    do
    {
      sub_100007204(v36, v7, &qword_1006AF920);
      v38 = *&v7[v62];
      v39 = sub_10007EBC0(&qword_1006B9D48);
      v40 = *(v39 + 48);
      v41 = *(v39 + 64);
      *v15 = v38;
      type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
      swift_storeEnumTagMultiPayload();
      sub_1002A57AC(&v7[v63], &v15[v40], type metadata accessor for FMBeaconSharingModuleShareState);
      v42 = type metadata accessor for UUID();
      (*(*(v42 - 8) + 32))(&v15[v41], v7, v42);
      (*(*(v39 - 8) + 56))(v15, 0, 2, v39);
      v43 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_10008B9BC(0, v26[2] + 1, 1, v26);
      }

      v45 = v26[2];
      v44 = v26[3];
      if (v45 >= v44 >> 1)
      {
        v26 = sub_10008B9BC(v44 > 1, v45 + 1, 1, v26);
      }

      v26[2] = v45 + 1;
      sub_1002A57AC(v15, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v45, type metadata accessor for FMBeaconSharingModuleEntry);
      v36 += v37;
      --v34;
    }

    while (v34);
  }

  v46 = v59;
  if (v59)
  {
    v47 = sub_10007EBC0(&qword_1006B9D48);
    v48 = v55;
    (*(*(v47 - 8) + 56))(v55, 1, 2, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_10008B9BC(0, v26[2] + 1, 1, v26);
    }

    v50 = v26[2];
    v49 = v26[3];
    if (v50 >= v49 >> 1)
    {
      v26 = sub_10008B9BC(v49 > 1, v50 + 1, 1, v26);
    }

    v26[2] = v50 + 1;
    sub_1002A57AC(v48, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v50, type metadata accessor for FMBeaconSharingModuleEntry);
  }

  if ((v46 & 0x100) != 0)
  {
    v51 = sub_10007EBC0(&qword_1006B9D48);
    (*(*(v51 - 8) + 56))(v60, 2, 2, v51);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_10008B9BC(0, v26[2] + 1, 1, v26);
    }

    v53 = v26[2];
    v52 = v26[3];
    if (v53 >= v52 >> 1)
    {
      v26 = sub_10008B9BC(v52 > 1, v53 + 1, 1, v26);
    }

    v26[2] = v53 + 1;
    sub_1002A57AC(v60, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53, type metadata accessor for FMBeaconSharingModuleEntry);
  }

  v65 = v26;

  sub_1002A58DC(&v65);

  return v65;
}

uint64_t sub_10029870C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10007EBC0(&unk_1006B0670);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for FMFFriend();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10029882C, v3, 0);
}

uint64_t sub_10029882C()
{
  v0[13] = *(v0[5] + 112);

  v1 = dispatch thunk of FMFManager.friends.getter();

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[8];
    v26 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v5 + 16))(v0[10], v26 + *(v5 + 72) * v4, v0[7]);
      v8 = FMFFriend.contactHandles.getter();
      if (*(v8 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v9 = Hasher._finalize()();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }
      }

LABEL_3:
      ++v4;
      v6 = v0[10];
      v7 = v0[7];

      result = (*(v5 + 8))(v6, v7);
      if (v4 == v3)
      {
        goto LABEL_18;
      }
    }

    v12 = ~v10;
    while (1)
    {
      v13 = (*(v8 + 48) + 16 * v11);
      v14 = *v13 == v0[3] && v13[1] == v0[4];
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];
    v20 = v0[2];

    v21 = *(v19 + 32);
    v21(v16, v17, v18);
    v21(v15, v16, v18);
    v21(v20, v15, v18);
    (*(v0[8] + 56))(v0[2], 0, 1, v0[7]);

    v22 = v0[1];

    return v22();
  }

  else
  {
LABEL_18:

    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_100298B64;
    v24 = v0[4];
    v25 = v0[3];

    return sub_100298F8C(v25, v24);
  }
}

uint64_t sub_100298B64(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100298C7C, v2, 0);
}

uint64_t sub_100298C7C()
{

  v1 = dispatch thunk of FMFManager.friends.getter();

  v24 = *(v1 + 16);
  if (v24)
  {
    v3 = 0;
    v4 = *(v0 + 64);
    v23 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v22 = v4 + 16;
    while (v3 < *(v1 + 16))
    {
      v5 = *(v0 + 48);
      (*(v4 + 16))(*(v0 + 72), v23 + *(v4 + 72) * v3, *(v0 + 56));
      FMFFriend.contact.getter();
      v6 = type metadata accessor for FMFContact();
      v7 = *(v6 - 8);
      v8 = (*(v7 + 48))(v5, 1, v6);
      v9 = *(v0 + 48);
      if (v8 == 1)
      {
        sub_100012DF0(*(v0 + 48), &unk_1006B0670);
        v10 = 0;
        v11 = 0;
      }

      else
      {
        v10 = FMFContact.storeUUID.getter();
        v11 = v12;
        (*(v7 + 8))(v9, v6);
      }

      v13 = [*(v0 + 120) identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v11)
      {
        if (v10 == v14 && v11 == v16)
        {
          v18 = *(v0 + 120);

          goto LABEL_16;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          v18 = *(v0 + 120);
LABEL_16:

          (*(*(v0 + 64) + 32))(*(v0 + 16), *(v0 + 72), *(v0 + 56));
          v20 = 0;
          goto LABEL_17;
        }
      }

      else
      {
      }

      ++v3;
      result = (*(v4 + 8))(*(v0 + 72), *(v0 + 56));
      if (v24 == v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v19 = *(v0 + 120);

    v20 = 1;
LABEL_17:
    (*(*(v0 + 64) + 56))(*(v0 + 16), v20, 1, *(v0 + 56));

    v21 = *(v0 + 8);

    return v21();
  }

  return result;
}

uint64_t sub_100298F8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100298FB0, v2, 0);
}

uint64_t sub_100298FB0()
{
  if (qword_1006AEA90 != -1)
  {
    swift_once();
  }

  v0[5] = [qword_1006D3D28 descriptorForRequiredKeys];
  v0[6] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002990A4, v2, v1);
}

uint64_t sub_1002990A4()
{
  v1 = v0[6];
  v2 = v0[4];

  v0[8] = [v1 descriptorForRequiredKeys];

  return _swift_task_switch(sub_10029912C, v2, 0);
}

uint64_t sub_10029912C()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552EF0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = CNContactOrganizationNameKey;
  v4 = CNContactOrganizationNameKey;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  dispatch thunk of FMFManager.contactsController.getter();

  v5 = dispatch thunk of FMFContactsDataController.searchInStore(handle:keysToFetch:)();

  if (!v5)
  {
    goto LABEL_10;
  }

  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v8 = sub_1000EC68C();

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  swift_unknownObjectRelease();

LABEL_11:
  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9(v8);
}

void sub_1002992FC()
{
  if (!qword_1006B7DC8)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B7DC8);
    }
  }
}

uint64_t sub_100299364(uint64_t a1, unint64_t a2)
{
  v92 = a2;
  v3 = sub_10007EBC0(&qword_1006AF920);
  v91 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v85 - v8;
  __chkstk_darwin(v7);
  v11 = &v85 - v10;
  v12 = sub_10007EBC0(&qword_1006AF910);
  v13 = __chkstk_darwin(v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v85 - v17;
  __chkstk_darwin(v16);
  v21 = &v85 - v20;
  v22 = _swiftEmptyArrayStorage;
  v96 = _swiftEmptyArrayStorage;
  v23 = *(a1 + 16);
  v94 = v3;
  if (v23)
  {
    v88 = v11;
    v89 = v9;
    v90 = v6;
    v24 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v93 = *(v19 + 72);
    do
    {
      sub_100007204(v24, v21, &qword_1006AF910);
      sub_100007204(v21, v18, &qword_1006AF910);
      v25 = *(v12 + 48);
      v26 = v12;
      v27 = *(v12 + 64);
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 32))(v15, v18, v28);
      sub_1002A57AC(&v18[v25], &v15[v25], type metadata accessor for FMBeaconSharingModuleShareState);
      v29 = type metadata accessor for FMFFriend();
      (*(*(v29 - 8) + 32))(&v15[v27], &v18[v27], v29);
      v30 = FMFFriend.contactHandles.getter();
      sub_100012DF0(v15, &qword_1006AF910);
      sub_100012DF0(v21, &qword_1006AF910);
      v31 = v30;
      v12 = v26;
      sub_100493AC0(v31);
      v24 += v93;
      --v23;
    }

    while (v23);
    v22 = v96;
    v3 = v94;
    v9 = v89;
    v6 = v90;
    v11 = v88;
  }

  v86 = v22;
  v32 = v92;
  v33 = *(v92 + 16);
  if (v33)
  {
    v96 = _swiftEmptyArrayStorage;
    v34 = v6;
    specialized ContiguousArray.reserveCapacity(_:)();
    v35 = v9;
    v36 = v32 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v93 = *(v91 + 72);
    do
    {
      sub_100007204(v36, v11, &qword_1006AF920);
      sub_100007204(v11, v35, &qword_1006AF920);
      v37 = *(v3 + 48);
      v38 = *(v3 + 64);
      v39 = *(v35 + v38);
      v40 = type metadata accessor for UUID();
      (*(*(v40 - 8) + 32))(v34, v35, v40);
      sub_1002A57AC(v35 + v37, v34 + v37, type metadata accessor for FMBeaconSharingModuleShareState);
      *(v34 + v38) = v39;
      v41 = v39;
      sub_100012DF0(v34, &qword_1006AF920);
      sub_100012DF0(v11, &qword_1006AF920);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v3 = v94;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v36 += v93;
      --v33;
    }

    while (v33);
    v42 = v96;
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v96 = _swiftEmptyArrayStorage;
  if (v42 >> 62)
  {
    goto LABEL_52;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v44 = _swiftEmptyArrayStorage;
  if (v43)
  {
    v45 = 0;
    v90 = v42 & 0xFFFFFFFFFFFFFF8;
    v91 = v42 & 0xC000000000000001;
    v88 = v42;
    v89 = (v42 + 32);
    v87 = v43;
    while (1)
    {
      if (v91)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *(v90 + 16))
        {
          goto LABEL_49;
        }

        v42 = *&v89[8 * v45];
      }

      v46 = v42;
      v47 = __OFADD__(v45, 1);
      v48 = v45 + 1;
      if (v47)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v84 = v42;
        v43 = _CocoaArrayWrapper.endIndex.getter();
        v42 = v84;
        goto LABEL_12;
      }

      v49 = [v42 emailAddresses];
      v50 = sub_10007EBC0(&unk_1006BC970);
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v51 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
        v92 = v48;
        v93 = v46;
        if (!v52)
        {
LABEL_32:

          v54 = _swiftEmptyArrayStorage;
          goto LABEL_33;
        }
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v92 = v48;
        v93 = v46;
        if (!v52)
        {
          goto LABEL_32;
        }
      }

      v95 = _swiftEmptyArrayStorage;
      v42 = sub_10016715C(0, v52 & ~(v52 >> 63), 0);
      if (v52 < 0)
      {
        goto LABEL_50;
      }

      v94 = v50;
      v53 = 0;
      v54 = v95;
      do
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v55 = *(v51 + 8 * v53 + 32);
        }

        v56 = v55;
        v57 = [v56 value];
        v58 = [v57 stringValue];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v95 = v54;
        v63 = v54[2];
        v62 = v54[3];
        if (v63 >= v62 >> 1)
        {
          sub_10016715C((v62 > 1), v63 + 1, 1);
          v54 = v95;
        }

        ++v53;
        v54[2] = v63 + 1;
        v64 = &v54[2 * v63];
        v64[4] = v59;
        v64[5] = v61;
      }

      while (v52 != v53);

      v46 = v93;
LABEL_33:
      v65 = [v46 phoneNumbers];
      v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v66 >> 62)
      {
        v67 = _CocoaArrayWrapper.endIndex.getter();
        if (!v67)
        {
LABEL_45:

          v70 = _swiftEmptyArrayStorage;
          goto LABEL_14;
        }
      }

      else
      {
        v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v67)
        {
          goto LABEL_45;
        }
      }

      v68 = v66;
      v95 = _swiftEmptyArrayStorage;
      v42 = sub_10016715C(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        goto LABEL_51;
      }

      v69 = 0;
      v70 = v95;
      v71 = v66;
      v94 = v66 & 0xC000000000000001;
      do
      {
        if (v94)
        {
          v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v72 = *(v71 + 8 * v69 + 32);
        }

        v73 = v72;
        v74 = [v73 value];
        v75 = [v74 stringValue];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v95 = v70;
        v80 = v70[2];
        v79 = v70[3];
        if (v80 >= v79 >> 1)
        {
          sub_10016715C((v79 > 1), v80 + 1, 1);
          v70 = v95;
        }

        ++v69;
        v70[2] = v80 + 1;
        v81 = &v70[2 * v80];
        v81[4] = v76;
        v81[5] = v78;
        v71 = v68;
      }

      while (v67 != v69);

      v46 = v93;
LABEL_14:
      v95 = v54;
      sub_100493DD4(v70);

      sub_100493DD4(v95);
      v42 = v88;
      v45 = v92;
      if (v92 == v87)
      {
        v44 = v96;
        break;
      }
    }
  }

  v96 = v86;
  sub_100493DD4(v44);
  v82 = sub_1005385A8(v96);

  return v82;
}

uint64_t sub_100299C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 8);
  v19 = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(a2 + 18);
  if (*(a1 + 17))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | v2;
  if (*(a1 + 18))
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100297EE8(*a1, *(a1 + 8), v10 | v11);
  if (v7)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | v6;
  if (v8)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100297EE8(v19, v5, v14 | v15);
  v17 = sub_1002440F4(v12, v16);

  return v17 & ~(v2 ^ v6) & ~(v3 ^ v7) & ~(v4 ^ v8) & 1;
}

id sub_100299D2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  swift_unknownObjectWeakInit();
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4CD8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100005B4C(0x64656D2874696E69, 0xEF293A726F746169, &v21);
    _os_log_impl(&_mh_execute_header, v8, v9, "FMBeaconSharingModuleView: %s", v10, 0xCu);
    sub_100006060(v11);
  }

  *(v2 + qword_1006B9AC0) = a1;
  type metadata accessor for FMBeaconSharingModuleDataSource(0);
  v12 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  *(v12 + 15) = 0;
  *(v12 + 16) = 0;
  *(v12 + 17) = 0;
  v13 = OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_beaconIdentifier;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = &v12[OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel];
  *v15 = _swiftEmptyArrayStorage;
  *(v15 + 1) = _swiftEmptyArrayStorage;
  *(v15 + 8) = 0;
  v15[18] = 0;
  *&v12[OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_currentUpdateTask] = 0;
  *(v12 + 14) = a1;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v12;

  sub_100170C90(0, 0, v6, &unk_10055BC78, v17);

  *(v2 + qword_1006B9AC8) = v12;
  v18 = sub_10037AFAC(0);
  sub_10029A0E8();

  return v18;
}

void sub_10029A078()
{
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10029A0E8()
{
  v1 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v1 - 8);
  v3 = &v63 - v2;
  v4 = type metadata accessor for FMIPProductType();
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*&v0[qword_1006B9AC0] + 56);
  v15 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_1002A5814(v14 + v15, v9, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1002A587C(v9, type metadata accessor for FMSelectedSection);
    return;
  }

  v70 = v11;
  v16 = *(v11 + 32);
  v71 = v10;
  v16(v13, v9, v10);
  v17 = objc_opt_self();
  v18 = [v17 configurationWithTextStyle:UIFontTextStyleTitle2 scale:3];
  *(&v77 + 1) = &type metadata for SolariumFeatureFlag;
  *&v78 = sub_10000BD04();
  v19 = isFeatureEnabled(_:)();
  sub_100006060(&v76);
  v20 = v13;
  v69 = v19;
  v72 = v3;
  v68 = v18;
  if (v19)
  {
    v21 = v0;
    v22 = v18;
    v23 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

    if (!v24)
    {
      v24 = [objc_allocWithZone(UIImage) init];
    }

    v25 = objc_opt_self();
    v66 = v24;
    v65 = [v25 systemMintColor];
  }

  else
  {
    v21 = v0;
    sub_10007EBC0(&qword_1006AFC30);
    v26 = v18;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100552EE0;
    v28 = objc_opt_self();
    *(v27 + 32) = [v28 whiteColor];
    *(v27 + 40) = [v28 systemGreenColor];
    sub_10000905C(0, &qword_1006C0000);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v17 configurationWithPaletteColors:isa];

    v63 = v30;
    v31 = [v26 configurationByApplyingConfiguration:v30];
    v32 = String._bridgeToObjectiveC()();
    v33 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

    if (!v33)
    {
      __break(1u);
      return;
    }

    v66 = v33;
    v65 = 0;
  }

  FMIPItem.productType.getter();
  v34 = FMIPProductType.isAirTag.getter();
  (*(v73 + 8))(v6, v74);
  if (v34)
  {
    v35 = 0x4741545249415FLL;
  }

  else
  {
    v35 = 0x4D4554495FLL;
  }

  v36 = 0xE700000000000000;
  v67 = v20;
  if (v34)
  {
    v37 = 0xE700000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  v38 = FMIPItem.isOwner.getter();
  if (v38)
  {
    v39 = 0x52454E574F5FLL;
  }

  else
  {
    v39 = 0x4545524148535FLL;
  }

  if (v38)
  {
    v36 = 0xE600000000000000;
  }

  v76._countAndFlagsBits = 0xD000000000000012;
  v76._object = 0x800000010058CA70;
  v40._countAndFlagsBits = v35;
  v40._object = v37;
  String.append(_:)(v40);

  v41._countAndFlagsBits = v39;
  v41._object = v36;
  String.append(_:)(v41);

  v42 = v76;
  v43 = [objc_opt_self() mainBundle];
  v44.value._countAndFlagsBits = 0xD000000000000013;
  v80._object = 0x800000010057D3F0;
  v44.value._object = 0x800000010057D3D0;
  v80._countAndFlagsBits = 0xD000000000000018;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v44, v43, v45, v80);

  v64 = v21;
  v47 = &v21[qword_1006C2B70];
  v48 = *&v21[qword_1006C2B70 + 16];
  v76 = *&v21[qword_1006C2B70];
  v77 = v48;
  v78 = *&v21[qword_1006C2B70 + 32];
  v79 = v21[qword_1006C2B70 + 48];
  v50 = *&v21[qword_1006C2B70];
  v49 = *&v21[qword_1006C2B70 + 8];
  v74 = *&v21[qword_1006C2B70 + 16];
  v51 = v66;
  v52 = v65;
  *v47 = v66;
  *(v47 + 1) = v52;
  *(v47 + 1) = v46;
  *(v47 + 4) = 0;
  *(v47 + 5) = 0;
  v47[48] = 0;
  v53 = v52;
  sub_100007204(&v76, v75, &qword_1006B9FE0);
  v54 = v51;
  v55 = v53;

  sub_1000F0550(v50, v49);
  v56 = v64;
  sub_1003DC48C(&v76);
  sub_100012DF0(&v76, &qword_1006B9FE0);

  v57 = v54;
  v58 = type metadata accessor for TaskPriority();
  v59 = v72;
  (*(*(v58 - 8) + 56))(v72, 1, 1, v58);
  type metadata accessor for MainActor();
  v60 = v56;
  v61 = static MainActor.shared.getter();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = &protocol witness table for MainActor;
  v62[4] = v60;
  sub_100170C90(0, 0, v59, &unk_10055BD70, v62);

  (*(v70 + 8))(v67, v71);
  if ((v69 & 1) == 0)
  {
  }
}

uint64_t sub_10029A990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10029AA28, v6, v5);
}

uint64_t sub_10029AA28()
{
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  swift_unknownObjectWeakInit();

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10029AB18;

  return sub_1002937F0(&unk_10055BD80, v1);
}

uint64_t sub_10029AB18()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10029AC60, v3, v2);
}

uint64_t sub_10029AC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029ACE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10029ADC8;

    return sub_10029AED4();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10029ADC8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10029AED4()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10029AF6C, v3, v2);
}

uint64_t sub_10029AF6C()
{
  v1 = *(*(v0 + 16) + qword_1006B9AC8);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_10029AF98, v1, 0);
}

uint64_t sub_10029AF98()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48) + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel;
  *(v0 + 56) = *v2;
  *(v0 + 64) = *(v2 + 8);
  *(v0 + 72) = *(v2 + 16);
  *(v0 + 73) = *(v2 + 17);
  *(v0 + 74) = *(v2 + 18);
  v3 = *(v0 + 32);

  return _swift_task_switch(sub_10029B04C, v3, v1);
}

uint64_t sub_10029B04C()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 73);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);

  if (v2)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  if (v1)
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100297EE8(v4, v5, v7 | v8 | v3);

  v10 = qword_1006C2B78;
  v11 = *(v6 + qword_1006C2B78);
  *(v6 + qword_1006C2B78) = v9;

  v13 = sub_1002440F4(v12, v11);

  if ((v13 & 1) == 0)
  {

    sub_10037DAF8(v14);
  }

  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 16);
  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4CD8);
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 16);
  if (v20)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(*(v6 + v10) + 16);

    _os_log_impl(&_mh_execute_header, v18, v19, "FMBeaconSharingModuleView: Received new rows: %ld", v22, 0xCu);
  }

  else
  {
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10029B244(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(sub_10029B338, v5, v4);
}

uint64_t sub_10029B338()
{
  v21 = v0;
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4CD8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100005B4C(0xD000000000000027, 0x800000010058CA20, &v20);
    *(v12 + 12) = 2080;
    sub_1002A5600(&qword_1006B7830, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_100005B4C(v13, v15, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMBeaconSharingModuleView: %s - %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_10029B5F4;
  v18 = v0[2];

  return sub_100293AD8(v18);
}

uint64_t sub_10029B5F4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10029B714, v3, v2);
}

uint64_t sub_10029B714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029B77C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1002A5814(a1, v8, type metadata accessor for FMBeaconSharingModuleEntry);
  type metadata accessor for MainActor();
  v13 = a2;
  v14 = v2;
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_1002A57AC(v8, v18 + v16, type metadata accessor for FMBeaconSharingModuleEntry);
  *(v18 + v17) = v14;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_100170C90(0, 0, v11, &unk_10055BCC0, v18);
}

uint64_t sub_10029B99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_10007EBC0(&unk_1006BEF30);
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for FMSelectedSection();
  v6[10] = swift_task_alloc();
  v7 = type metadata accessor for FMIPItem();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v6[13] = *(v8 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v6[19] = v10;
  v6[20] = *(v10 + 64);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = type metadata accessor for MainActor();
  v6[26] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[27] = v12;
  v6[28] = v11;

  return _swift_task_switch(sub_10029BBF4, v12, v11);
}

uint64_t sub_10029BBF4()
{
  v65 = v0;
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4CD8);
  sub_1002A5814(v2, v1, type metadata accessor for FMBeaconSharingModuleEntry);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100005B4C(0xD000000000000023, 0x800000010058C7C0, &v64);
    *(v9 + 12) = 2080;
    sub_1002A5814(v7, v8, type metadata accessor for FMBeaconSharingModuleEntry);
    v10 = sub_10007EBC0(&qword_1006B9D48);
    v11 = (*(*(v10 - 8) + 48))(v8, 2, v10);
    v12 = v0[24];
    if (v11)
    {
      if (v11 == 1)
      {
        sub_1002A587C(v12, type metadata accessor for FMBeaconSharingModuleEntry);
        v13 = 0xE200000000000000;
        v14 = 25933;
      }

      else
      {
        sub_1002A587C(v12, type metadata accessor for FMBeaconSharingModuleEntry);
        v13 = 0xE90000000000006ELL;
        v14 = 0x6F73726550646441;
      }
    }

    else
    {
      v58 = v0[23];
      v15 = v0[17];
      v16 = v0[18];
      v17 = v0[16];
      v62 = *(v10 + 48);
      v18 = v58 + *(v10 + 64);
      v19 = v0[24];
      (*(v15 + 32))(v16, v18, v17);
      v60 = UUID.uuidString.getter();
      v13 = v20;
      (*(v15 + 8))(v16, v17);
      sub_1002A587C(v19, type metadata accessor for FMBeaconSharingModuleEntry);
      sub_1002A587C(v58 + v62, type metadata accessor for FMBeaconSharingModuleShareState);
      sub_1002A587C(v58, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      v14 = v60;
    }

    v21 = sub_100005B4C(v14, v13, &v64);

    *(v9 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMBeaconSharingModuleView: %s - %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1002A587C(v7, type metadata accessor for FMBeaconSharingModuleEntry);
  }

  v22 = *(v0[6] + qword_1006B9AC0);
  v23 = v0[10];
  v0[29] = v22;
  v24 = *(v22 + 56);
  v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_1002A5814(v24 + v25, v23, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v35 = v0[10];

    v36 = type metadata accessor for FMSelectedSection;
LABEL_17:
    sub_1002A587C(v35, v36);
    goto LABEL_18;
  }

  v26 = v0[22];
  v27 = v0[15];
  v28 = v0[11];
  v29 = v0[12];
  v30 = v0[10];
  v31 = v0[5];
  v32 = *(v29 + 32);
  v0[30] = v32;
  v0[31] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v32(v27, v30, v28);
  sub_100290484(1);
  sub_1002A5814(v31, v26, type metadata accessor for FMBeaconSharingModuleEntry);
  v33 = sub_10007EBC0(&qword_1006B9D48);
  v34 = (*(*(v33 - 8) + 48))(v26, 2, v33);
  if (!v34)
  {
    v37 = v0[21];
    v53 = v0[19];
    v54 = v0[20];
    v38 = v0[17];
    v61 = v0[16];
    v63 = v0[22];
    v39 = v0[12];
    v56 = v0[11];
    v57 = v0[15];
    v40 = v0[7];
    v41 = v0[8];
    v43 = v0[5];
    v42 = v0[6];

    v59 = *(v33 + 48);
    v55 = *(v33 + 64);
    v44 = type metadata accessor for TaskPriority();
    (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
    sub_1002A5814(v43, v37, type metadata accessor for FMBeaconSharingModuleEntry);
    v45 = v40;
    v46 = v42;
    v47 = static MainActor.shared.getter();
    v48 = (*(v53 + 80) + 40) & ~*(v53 + 80);
    v49 = swift_allocObject();
    v49[2] = v47;
    v49[3] = &protocol witness table for MainActor;
    v49[4] = v46;
    sub_1002A57AC(v37, v49 + v48, type metadata accessor for FMBeaconSharingModuleEntry);
    *(v49 + ((v54 + v48 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;
    sub_100170C90(0, 0, v41, &unk_10055BCD0, v49);

    (*(v39 + 8))(v57, v56);
    v35 = v63;
    (*(v38 + 8))(v63 + v55, v61);
    sub_1002A587C(v63 + v59, type metadata accessor for FMBeaconSharingModuleShareState);
    v36 = type metadata accessor for FMBeaconSharingModuleRelationshipType;
    goto LABEL_17;
  }

  if (v34 == 1)
  {
    (*(v0[12] + 8))(v0[15], v0[11]);

LABEL_18:

    v50 = v0[1];

    return v50();
  }

  v52 = *(v0[6] + qword_1006B9AC8);
  v0[32] = v52;

  return _swift_task_switch(sub_10029C37C, v52, 0);
}

uint64_t sub_10029C37C()
{
  v1 = *(v0 + 256) + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel;
  *(v0 + 264) = *v1;
  *(v0 + 272) = *(v1 + 8);
  *(v0 + 280) = *(v1 + 16);
  *(v0 + 281) = *(v1 + 17);
  *(v0 + 282) = *(v1 + 18);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);

  return _swift_task_switch(sub_10029C430, v3, v2);
}

uint64_t sub_10029C430()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[29];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[11];
  v6 = v0[12];

  v29 = sub_100299364(v2, v1);

  (*(v6 + 16))(v5, v4, v7);
  v8 = objc_allocWithZone(type metadata accessor for FMItemSharingLandingViewController(0));

  v9 = sub_1003C494C(v5, v3, 0, 0);
  objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v28 = v9;
  v10 = sub_1000CC510(v28, 2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }

  v13 = v0[30];
  v15 = v0[14];
  v14 = v0[15];
  v27 = v10;
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13(v15, v14, v18);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  v13(v22 + v20, v15, v18);
  *(v22 + v21) = v29;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v23 = &v28[qword_1006D48B0];
  v24 = *&v28[qword_1006D48B0];
  *v23 = sub_1002AB37C;
  v23[1] = v22;

  sub_10001835C(v24);

  v25 = v0[1];

  return v25();
}

void sub_10029C6D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v80 = a3;
  v94 = a2;
  v5 = type metadata accessor for FMIPBeaconSharingLimits();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareItemContactPickerView();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v89 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v73 - v11;
  v12 = type metadata accessor for FMIPProductType();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFFriend();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ContactPickerViewModel.Dependencies();
  v96 = *(v18 - 8);
  v97 = v18;
  v19 = __chkstk_darwin(v18);
  v85 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v95 = &v73 - v21;
  v22 = type metadata accessor for FMIPItem();
  v91 = *(v22 - 8);
  v92 = v22;
  __chkstk_darwin(v22);
  v81 = v23;
  v93 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyUI = type metadata accessor for Feature.FindMyUI();
  v25 = *(MyUI - 8);
  __chkstk_darwin(MyUI);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v79 = a4;
    (*(v25 + 104))(v27, enum case for Feature.FindMyUI.newContactPicker(_:), MyUI);
    sub_1002A5600(&qword_1006B9FC0, &type metadata accessor for Feature.FindMyUI);
    v30 = FeatureFlagsKey.isEnabled()();
    (*(v25 + 8))(v27, MyUI);
    if (v30)
    {
      v77 = v8;
      v76 = v29;
      v31 = *&v29[qword_1006B9AC0];
      Controller = type metadata accessor for QueryController();

      v33 = QueryController.__allocating_init(serviceName:)();
      v75 = v31;
      v80 = v33;

      v34 = dispatch thunk of FMFManager.friends.getter();
      v98 = _swiftEmptyArrayStorage;
      v35 = *(v34 + 16);
      v78 = v7;
      if (v35)
      {
        v74 = Controller;
        v38 = *(v15 + 16);
        v36 = v15 + 16;
        v37 = v38;
        v39 = (*(v36 + 64) + 32) & ~*(v36 + 64);
        v73 = v34;
        v40 = v34 + v39;
        v41 = *(v36 + 56);
        do
        {
          v37(v17, v40, v14);
          v42 = FMFFriend.contactHandles.getter();
          (*(v36 - 8))(v17, v14);
          sub_100493AC0(v42);
          v40 += v41;
          --v35;
        }

        while (v35);
      }

      v47 = v95;
      ContactPickerViewModel.Dependencies.init(isReachable:isHandlePartOfSignedInAccount:excludedSuggestedContactHandles:)();
      QueryController.__allocating_init(serviceName:)();

      v48 = v82;
      v49 = v94;
      FMIPItem.productType.getter();
      LODWORD(v74) = FMIPProductType.isAirTag.getter();
      (*(v83 + 8))(v48, v84);
      (*(v96 + 16))(v85, v47, v97);
      v50 = v75;
      v51 = *(v75 + 24);
      v52 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
      swift_beginAccess();
      v54 = v86;
      v53 = v87;
      v55 = v51 + v52;
      v56 = v88;
      (*(v87 + 16))(v86, v55, v88);

      v84 = FMIPBeaconSharingLimits.maxCircleMembers.getter();
      (*(v53 + 8))(v54, v56);
      v58 = v91;
      v57 = v92;
      v59 = v93;
      (*(v91 + 16))(v93, v49, v92);
      v60 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v61 = (v81 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      (*(v58 + 32))(v62 + v60, v59, v57);
      v63 = v76;
      *(v62 + v61) = v76;
      *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
      v64 = swift_allocObject();
      v65 = v79;
      *(v64 + 16) = v79;

      v66 = v63;
      v67 = v65;
      v68 = v90;
      ShareItemContactPickerView.init(dependencies:isCapabilityEnabled:isAirTag:maxCircleMembersSharingLimits:performAction:showOfferSuccess:)();
      v69 = v77;
      v70 = v78;
      (*(v77 + 16))(v89, v68, v78);
      v71 = objc_allocWithZone(sub_10007EBC0(&qword_1006B9FC8));
      v72 = UIHostingController.init(rootView:)();
      [v67 pushViewController:v72 animated:1];

      (*(v69 + 8))(v68, v70);
      (*(v96 + 8))(v95, v97);
    }

    else
    {
      v43 = v93;
      (*(v91 + 16))(v93, v94, v92);
      v44 = *&v29[qword_1006B9AC0];
      objc_allocWithZone(type metadata accessor for FMItemSharingContactPickerViewController());
      v45 = v80;

      v46 = sub_10014D064(v43, v45, v44);
      [v79 pushViewController:v46 animated:1];
    }
  }
}

uint64_t sub_10029D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for FMIPItem();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10029D168, 0, 0);
}

uint64_t sub_10029D168()
{
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4CD8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMItemSharingContactPickerViewController: Will perform sendShareInvite action", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];

  (*(v6 + 16))(v5, v9, v8);
  type metadata accessor for FMIPShareItemAction();
  swift_allocObject();

  v10 = FMIPShareItemAction.init(item:handles:)();
  v0[9] = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v0[10] = v12;
  v12[2] = v7;
  v12[3] = v10;
  v12[4] = v11;

  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_10029D3B4;

  return withTimeout<A>(_:block:)();
}

uint64_t sub_10029D3B4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10029D53C;
  }

  else
  {

    v2 = sub_10029D4D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10029D4D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029D53C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10029D5D8, 0, 0);
}

uint64_t sub_10029D5D8()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_10029D6DC;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000020, 0x800000010058C810, sub_1002AB83C, v2, &type metadata for () + 8);
}

uint64_t sub_10029D6DC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10029D818, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10029D818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029D87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007EBC0(&qword_1006B9FD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v6 + 32))(v12 + v11, v8, v5);

  sub_1000D8B2C(a3, sub_1002AB848, v12);
}

void sub_10029DA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for FMIPItemActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v17 = type metadata accessor for ShareItemError();
    sub_1002A5600(&qword_1006B9FD8, &type metadata accessor for ShareItemError);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, enum case for ShareItemError.generic(_:), v17);
    v63 = v18;
    sub_10007EBC0(&qword_1006B9FD0);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  v59 = Strong;
  if (qword_1006AED68 != -1)
  {
    goto LABEL_40;
  }

LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4CD8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMItemSharingContactPickerViewController: Did perform sendShareInvite action", v15, 2u);
  }

  (*(v8 + 104))(v10, enum case for FMIPItemActionStatus.success(_:), v7);
  sub_1002A5600(&qword_1006C0210, &type metadata accessor for FMIPItemActionStatus);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if ((v16 & 1) == 0)
  {
    v10 = sub_10014CD94(a3);
    v63 = v10;
    sub_10007EBC0(&qword_1006C0C10);
    sub_100004098(&qword_1006B0700, &qword_1006C0C10);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v60 = a5;
    if (v25)
    {
      v10 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63 = v26;
      *v10 = 136315138;
      v27 = sub_100005B4C(v20, v22, &v63);

      *(v10 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMItemSharingContactPickerViewController: sendShareInvite - error: %s", v10, 0xCu);
      sub_100006060(v26);
    }

    else
    {
    }

    a5 = a3 + 64;
    v28 = 1 << *(a3 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(a3 + 64);
    v31 = (v28 + 63) >> 6;
    v7 = SPBeaconSharingErrorDomain;
    v58 = enum case for ShareItemError.sharingCircleSizeLimitReached(_:);
    v57 = enum case for ShareItemError.pendingRequestLimitReached(_:);
    v56 = enum case for ShareItemError.offerLimitReached(_:);
    v55 = enum case for ShareItemError.sharedItemsCountLimitReached(_:);

    v8 = 0;
    while (1)
    {
      if (!v30)
      {
        while (1)
        {
          v35 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v35 >= v31)
          {

            v51 = type metadata accessor for ShareItemError();
            sub_1002A5600(&qword_1006B9FD8, &type metadata accessor for ShareItemError);
            v52 = swift_allocError();
            (*(*(v51 - 8) + 104))(v53, enum case for ShareItemError.generic(_:), v51);
            v63 = v52;
            sub_10007EBC0(&qword_1006B9FD0);
            CheckedContinuation.resume(throwing:)();
            goto LABEL_38;
          }

          v30 = *(a5 + 8 * v35);
          ++v8;
          if (v30)
          {
            v8 = v35;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_40:
        swift_once();
        goto LABEL_3;
      }

LABEL_22:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v10 = *(*(a3 + 56) + ((v8 << 9) | (8 * v36)));
      swift_getErrorValue();
      v37 = v62;
      swift_errorRetain();
      v38 = sub_100271E80(v37);
      v40 = v39;
      if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v43 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      swift_getErrorValue();
      v44 = sub_100271D20(v61);
      if (v44 > 9)
      {
        if (v44 == 10)
        {
          v49 = type metadata accessor for ShareItemError();
          sub_1002A5600(&qword_1006B9FD8, &type metadata accessor for ShareItemError);
          v33 = swift_allocError();
          (*(*(v49 - 8) + 104))(v50, v57, v49);
          goto LABEL_15;
        }

        if (v44 == 11)
        {
          v47 = type metadata accessor for ShareItemError();
          sub_1002A5600(&qword_1006B9FD8, &type metadata accessor for ShareItemError);
          v33 = swift_allocError();
          (*(*(v47 - 8) + 104))(v48, v56, v47);
          goto LABEL_15;
        }
      }

      else
      {
        if (v44 == 6)
        {
          v32 = type metadata accessor for ShareItemError();
          sub_1002A5600(&qword_1006B9FD8, &type metadata accessor for ShareItemError);
          v33 = swift_allocError();
          (*(*(v32 - 8) + 104))(v34, v58, v32);
LABEL_15:
          v63 = v33;
          sub_10007EBC0(&qword_1006B9FD0);
          CheckedContinuation.resume(throwing:)();
          goto LABEL_16;
        }

        if (v44 == 7)
        {
          v45 = type metadata accessor for ShareItemError();
          sub_1002A5600(&qword_1006B9FD8, &type metadata accessor for ShareItemError);
          v33 = swift_allocError();
          (*(*(v45 - 8) + 104))(v46, v55, v45);
          goto LABEL_15;
        }
      }

LABEL_16:
    }
  }

  sub_10007EBC0(&qword_1006B9FD0);
  CheckedContinuation.resume(returning:)();
LABEL_38:
}