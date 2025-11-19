id sub_1000D3C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];

  [v7 setTextAlignment:a4];
  [v7 setHidden:(a3 == 0) | ((LegacyAppState.isBuyable.getter() & 1) == 0)];

  return [v4 setNeedsLayout];
}

uint64_t sub_1000D3D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for LegacyAppState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    sub_1000D3C2C(v12, a4, a5, a6);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_1000D3E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v149 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v137 = &v131 - v10;
  v11 = type metadata accessor for FontUseCase();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Wordmark();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for PageGrid();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v17 - 8);
  v148 = sub_10002849C(&unk_100973B20);
  v145 = *(v148 - 8);
  __chkstk_darwin(v148);
  v147 = &v131 - v18;
  type metadata accessor for ProductTopLockup();
  sub_1000D7220(&qword_100973AE8, &type metadata accessor for ProductTopLockup);
  v146 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  if (v154)
  {
    v132 = v14;
    v19 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
    v20 = *&v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
    v150 = v154;
    v134 = v11;
    v133 = v12;
    v136 = v5;
    v135 = v6;
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC8AppStore14UberHeaderView_uber);

      v22 = ProductTopLockup.uber.getter();
      if (v21)
      {
        v154 = v21;
        if (v22)
        {
          v151 = v22;
          type metadata accessor for Uber();
          sub_1000D7220(&qword_100973B40, &type metadata accessor for Uber);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();

          v24 = v23 ^ 1;
LABEL_13:
          v131 = v8;
          v26 = *&v3[v19];
          if (v26 && (v27 = *&v26[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView], v28 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer, (v29 = *(*(v27 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents)) != 0))
          {
            type metadata accessor for VideoView();
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              sub_1000D7220(&qword_100973190, type metadata accessor for VideoView);
              v31 = v29;
              v32 = v26;
              v33 = [v30 superview];
              if (v33)
              {
                v30 = v33;
                v34 = *(v27 + v28);
                sub_100005744(0, &qword_100972EB0);
                v35 = v34;
                v36 = static NSObject.== infix(_:_:)();

                LODWORD(v30) = v36 ^ 1;
              }

              else
              {

                LODWORD(v30) = 1;
              }
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v37 = ProductTopLockup.uber.getter();
          if (v37)
          {
            v38 = v37;
            if ((v24 | v30))
            {
              v39 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
              v40 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber;
              v41 = v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber];
              v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] = v39 & 1;
              if ((v39 & 1) != v41)
              {
                sub_1004296B8();
              }

              sub_1000D6CD4(v3, v3);
              sub_10042A1FC();
              sub_10042A450();
              v42 = v146;
              ItemLayoutContext.state.getter();
              StateLens.init(_:)();
              swift_getKeyPath();
              sub_1000D71CC();

              StateLens<A>.subscript.getter();

              v43 = v154;
              v44 = objc_allocWithZone(type metadata accessor for UberHeaderView());
              v45 = v149;

              v46 = sub_100112C00(v38, (v43 & 1) == 0, v45);
              sub_100427B10(v46);
              v47 = *&v3[v19];
              if (v47)
              {
                swift_getKeyPath();
                v48 = v47;
                v49 = v141;
                ItemLayoutContext.subscript.getter();

                PageGrid.horizontalMargins.getter();
                v51 = v50;
                v53 = v52;
                v55 = v54;
                v57 = v56;
                (*(v142 + 8))(v49, v143);
                v58 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
                [*&v48[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] layoutMargins];
                if (v51 == v62 && v53 == v59 && v55 == v60 && v57 == v61 || ([*&v48[v58] setLayoutMargins:{v51, v53, v55, v57, v131}], objc_msgSend(v48, "invalidateIntrinsicContentSize"), (v63 = *&v48[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver]) == 0))
                {
                }

                else
                {

                  v63(v64);

                  sub_10001F63C(v63);
                }
              }

              v65 = sub_10048FF00(v42, v149);
              if (v3[v40] == 1)
              {
                v66 = [v3 contentView];
                [v66 setOverrideUserInterfaceStyle:2];

                sub_100427BCC();
                v67 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow;
                if (!*&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow])
                {
                  v68 = [objc_allocWithZone(type metadata accessor for ChevronView()) init];
                  [v68 setOverrideUserInterfaceStyle:2];
                  v69 = *&v3[v67];
                  if (v69)
                  {
                    [v69 removeFromSuperview];
                    v70 = *&v3[v67];
                  }

                  else
                  {
                    v70 = 0;
                  }

                  *&v3[v67] = v68;
                  v71 = v68;

                  v72 = [v3 contentView];
                  [v72 addSubview:v71];
                }

                v73 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView];
                v74 = v139;
                v75 = v138;
                v76 = v140;
                (*(v139 + 104))(v138, enum case for Wordmark.arcade(_:), v140);
                swift_getKeyPath();
                ItemLayoutContext.subscript.getter();

                v77 = v154;
                WordmarkView.show(wordmark:with:)();

                (*(v74 + 8))(v75, v76);
                [v73 setHidden:0];
                [*&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel] setHidden:1];
                v78 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
                v79 = [v78 text];
                v80 = v79;
                if (v79)
                {
                }

                [v78 setHidden:v80 == 0];
                v81 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
                swift_beginAccess();
                v82 = *&v3[v81];
                if (v82)
                {
                  [v82 removeFromSuperview];
                  v83 = *&v3[v81];
                }

                else
                {
                  v83 = 0;
                }

                *&v3[v81] = 0;

                [v3 setNeedsLayout];
                v84 = [v3 contentView];
                [v84 overrideUserInterfaceStyle];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v85 = String._bridgeToObjectiveC()();

                v86 = [v78 layer];
                [v86 setCompositingFilter:v85];

                v87 = [v73 layer];
                [v87 setCompositingFilter:v85];

                v88 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
                if (v88)
                {
                  [v88 setHidden:1];
                }

                v89 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
                if (v89)
                {
                  v90 = [v89 layer];
                  [v90 setCompositingFilter:v85];
                }

                v91 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
                if (v91)
                {
                  v92 = [v91 layer];
                  [v92 setCompositingFilter:v85];
                }
              }

              type metadata accessor for ArtworkLoader();
              type metadata accessor for BaseObjectGraph();
              inject<A, B>(_:from:)();
              sub_1000D5FD4(v42, v154, v65);

              (*(v145 + 8))(v147, v148);
            }

            else
            {
            }
          }

          if (v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber])
          {
            goto LABEL_83;
          }

          v93 = [v3 contentView];
          [v93 setOverrideUserInterfaceStyle:0];

          v94 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow;
          v95 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow];
          if (v95)
          {
            [v95 removeFromSuperview];
            v96 = *&v3[v94];
          }

          else
          {
            v96 = 0;
          }

          v97 = v136;
          v98 = v135;
          *&v3[v94] = 0;

          ProductTopLockup.tertiaryTitle.getter();
          v99 = static String.isNilOrEmpty(_:)();

          v100 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
          if (v99)
          {
            swift_beginAccess();
            v101 = *&v3[v100];
            if (v101)
            {
              [v101 removeFromSuperview];
              v102 = *&v3[v100];
            }

            else
            {
              v102 = 0;
            }

            *&v3[v100] = 0;

            [v3 setNeedsLayout];
            goto LABEL_72;
          }

          swift_beginAccess();
          v103 = *&v3[v100];
          if (v103)
          {
LABEL_60:
            v104 = v103;
            ProductTopLockup.tertiaryTitle.getter();
            if (v105)
            {
              v106 = String._bridgeToObjectiveC()();
            }

            else
            {
              v106 = 0;
            }

            [v104 setText:{v106, v131}];

            goto LABEL_72;
          }

          if (qword_10096D768 != -1)
          {
            swift_once();
          }

          v107 = sub_10002849C(&unk_100970ED0);
          sub_1000056A8(v107, qword_1009CF648);
          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v153 = v151;
          v108 = v132;
          Conditional.evaluate(with:)();
          swift_unknownObjectRelease();
          if (qword_10096D890 != -1)
          {
            swift_once();
          }

          v109 = sub_10002849C(&unk_100973B30);
          sub_1000056A8(v109, qword_1009CFA00);
          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v152 = v153;
          Conditional.evaluate(with:)();
          swift_unknownObjectRelease();
          v110 = v133;
          v111 = v137;
          v112 = v134;
          (*(v133 + 16))(v137, v108, v134);
          (*(v110 + 56))(v111, 0, 1, v112);
          (*(v98 + 104))(v131, enum case for DirectionalTextAlignment.leading(_:), v97);
          v113 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
          v114 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
          v115 = *&v3[v100];
          if (v115)
          {
            [v115 removeFromSuperview];
            v116 = *&v3[v100];
          }

          else
          {
            v116 = 0;
          }

          *&v3[v100] = v114;
          v126 = v114;

          v127 = [v3 contentView];
          [v127 addSubview:v126];

          [v3 setNeedsLayout];
          swift_beginAccess();
          v128 = *&v3[v100];
          if (v128)
          {
            swift_endAccess();
            sub_100005744(0, &qword_100970180);
            v129 = v128;
            v130 = static UIColor.tertiaryText.getter();
            [v129 setTextColor:v130];

            (*(v133 + 8))(v132, v134);
            v103 = *&v3[v100];
            if (v103)
            {
              goto LABEL_60;
            }
          }

          else
          {
            (*(v133 + 8))(v132, v134);
            swift_endAccess();
            v103 = *&v3[v100];
            if (v103)
            {
              goto LABEL_60;
            }
          }

LABEL_72:
          v117 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView];
          [v117 setHidden:{1, v131}];
          v118 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
          if (v118)
          {
            [v118 removeFromSuperview];
          }

          v119 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
          if (v119)
          {
            [v119 removeFromSuperview];
          }

          v120 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView];
          if (v120)
          {
            [v120 removeFromSuperview];
          }

          v121 = [*&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel] layer];
          [v121 setCompositingFilter:0];

          v122 = [v117 layer];
          [v122 setCompositingFilter:0];

          v123 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
          if (v123)
          {
            [v123 setHidden:0];
          }

          v124 = *&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
          if (v124)
          {
            v125 = [v124 layer];
            [v125 setCompositingFilter:0];
          }

          sub_100427D7C();
LABEL_83:
          [v3 setNeedsLayout];

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v22 = ProductTopLockup.uber.getter();
    }

    if (!v22)
    {
      v24 = 0;
      goto LABEL_13;
    }

LABEL_12:

    v24 = 1;
    goto LABEL_13;
  }

  sub_100427B10(0);
  v25 = v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber];
  v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  if (v25 == 1)
  {
    sub_1004296B8();
  }

  sub_1000D6CD4(v2, v2);
  sub_10042A1FC();
  sub_10042A450();
}

uint64_t sub_1000D513C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a1;
  }

  v27 = a4;

  v11 = sub_100079F24();
  v12 = *(v4 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView);
  if (v12)
  {
    type metadata accessor for BannerCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v30 = v13;
      v15 = v12;
      v16 = 0;
LABEL_7:
      sub_100005744(0, &qword_100970180);
      v20 = v14;
      v21 = static UIColor.defaultBackground.getter();
      [v20 setBackgroundColor:v21];

      goto LABEL_8;
    }
  }

  v30 = 0;
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = &v30;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000D71C4;
  *(v16 + 24) = v18;
  aBlock[4] = sub_10006F094;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000489A8;
  aBlock[3] = &unk_1008B3D70;
  v19 = _Block_copy(aBlock);

  [v17 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = sub_1000D71C4;
  v14 = v30;
  if (v30)
  {
    goto LABEL_7;
  }

LABEL_8:
  v22 = 0.0;
  if ((v28 & 1) == 0)
  {
    if (qword_10096D798 == -1)
    {
LABEL_10:
      sub_10002A400(qword_1009CF708, qword_1009CF720);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v22 = v23;
      (*(v8 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (v30)
  {
    v24 = v30;
    sub_100745438(a1, v28 & 1, v11, v27, v22, 0.0, 0.0);
  }

  swift_unknownObjectRelease();

  a1 = v30;
  sub_10001F63C(v16);
  return a1;
}

uint64_t sub_1000D54FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_10002849C(&unk_100973B10);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  sub_100031660(a1, v9, &qword_100973AC0);
  v13 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    sub_10002B894(v9, &qword_100973AC0);
  }

  else
  {
    v24 = a2;
    ProductTopLockup.PrimaryBanner.hideCriteria.getter();
    (*(v14 + 8))(v9, v13);
    v16 = type metadata accessor for HideCriteria();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_10002B894(v12, &unk_100973B10);
      a2 = v24;
    }

    else
    {
      v18 = HideCriteria.isHidden.getter();
      (*(v17 + 8))(v12, v16);
      a2 = v24;
      if (v18)
      {
        v19 = qword_10096D148;
        goto LABEL_9;
      }
    }
  }

  sub_100031660(a1, v6, &qword_100973AC0);
  if (v15(v6, 1, v13) != 1)
  {
    (*(v14 + 32))(a2, v6, v13);
    v20 = 0;
    if (qword_10096D148 == -1)
    {
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  sub_10002B894(v6, &qword_100973AC0);
  v19 = qword_10096D148;
LABEL_9:
  v20 = 1;
  if (v19 != -1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = type metadata accessor for OSLogger();
  sub_1000056A8(v21, qword_1009CE290);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  return (*(v14 + 56))(a2, v20, 1, v13);
}

char *sub_1000D595C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  sub_100031660(a1, &v44 - v15, &qword_100973AC0);
  v17 = type metadata accessor for ProductTopLockup.PrimaryBanner();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_100031660(v16, v13, &qword_100973AC0);
  v20 = (*(v18 + 88))(v13, v17);
  if (v20 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v20 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v18 + 8))(v13, v17);
LABEL_2:
      sub_10002B894(v16, &qword_100973AC0);
      return 0;
    }

    (*(v18 + 96))(v13, v17);
    v21 = *v13;
    goto LABEL_8;
  }

  (*(v18 + 96))(v13, v17);
  v21 = *v13;
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  if (ASKBagContract.enableNewATBBannerUI.getter())
  {

LABEL_8:

    sub_10002B894(v16, &qword_100973AC0);
    v22 = *(v4 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView);
    v23 = a2;
    if (v22 && (type metadata accessor for BannerCollectionViewCell(), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
    }

    else
    {
      v27 = objc_allocWithZone(type metadata accessor for BannerCollectionViewCell());
      v25 = [v27 initWithFrame:{0.0, 0.0, 0.0, 0.0, v44, v45}];
    }

    v28 = sub_100079F24();
    v29 = 0.0;
    if ((v23 & 1) == 0)
    {
      if (qword_10096D790 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009CF6E0, qword_1009CF6F8);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v29 = v30;
      (*(v8 + 8))(v10, v7);
    }

    sub_100005744(0, &qword_100970180);
    v31 = v25;
    v32 = static UIColor.defaultBackground.getter();
    [v31 setBackgroundColor:v32];

    sub_100745438(v21, v23 & 1, v28, v45, v29, 0.0, v29);
    swift_unknownObjectRelease();

    return v31;
  }

  v33 = *(v4 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView);
  if (v33 && (type metadata accessor for LinkableHeaderCollectionViewCell(), (v34 = swift_dynamicCastClass()) != 0))
  {
    v35 = v34;
    v36 = v33;
  }

  else
  {
    v37 = objc_allocWithZone(type metadata accessor for LinkableHeaderCollectionViewCell());
    v35 = [v37 initWithFrame:{0.0, 0.0, 0.0, 0.0, v44, v45}];
  }

  sub_100005744(0, &qword_100970180);
  v38 = v35;
  v39 = static UIColor.defaultBackground.getter();
  [v38 setBackgroundColor:v39];

  Banner.linkableMessage.getter();
  sub_100079F24();
  swift_unknownObjectRelease();
  v40 = *(*&v38[OBJC_IVAR____TtC8AppStore32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label);
  v41 = LinkableText.linkedSubstrings.getter();
  v42 = sub_1000D6F24(v41, sub_1000C17B0);

  v43 = LinkableText.styledText.getter();
  sub_1002F6004(v43, 0, v42);

  [v38 setNeedsLayout];

  sub_10002B894(v16, &qword_100973AC0);
  return v38;
}

uint64_t sub_1000D5F74(void *a1)
{
  *a1 = [objc_allocWithZone(type metadata accessor for BannerCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return _objc_release_x1();
}

void sub_1000D5FD4(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for Uber.AssetType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView])
  {

    Uber.assetType.getter();
    v11 = (*(v8 + 88))(v10, v7);
    if (v11 == enum case for Uber.AssetType.artwork(_:))
    {
      v12 = [v3 traitCollection];
      v13 = UITraitCollection.isSizeClassCompact.getter();

      if (v13)
      {
        if (!Uber.compactArtwork.getter())
        {
          goto LABEL_11;
        }

LABEL_10:

        sub_1000D622C(v14, a1, a2, a3);

        return;
      }

      if (Uber.artwork.getter())
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if (v11 == enum case for Uber.AssetType.video(_:))
    {
      if (Uber.video.getter())
      {
        Video.preview.getter();

        goto LABEL_10;
      }

LABEL_11:

      return;
    }

    v15 = enum case for Uber.AssetType.icon(_:);
    v16 = v11;

    if (v16 != v15)
    {
      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_1000D6200@<X0>(uint64_t *a1@<X8>)
{
  result = ShelfLayoutContext.traitEnvironment.getter();
  *a1 = result;
  return result;
}

void sub_1000D622C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v74 = a2;
  v8 = type metadata accessor for AspectRatio();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v10 - 8);
  v70 = &v58 - v11;
  v12 = sub_10002849C(&unk_100973B20);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v58 - v14;
  v15 = type metadata accessor for Uber.Style();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v72 = &v58 - v19;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = type metadata accessor for PageGrid();
  __chkstk_darwin(v26);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  v31 = *&v4[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
  if (v31)
  {
    v61 = v28;
    v62 = v27;
    v63 = a1;
    v64 = v13;
    v65 = v12;
    v32 = *&v31[OBJC_IVAR____TtC8AppStore14UberHeaderView_uber];

    v33 = v31;
    v34 = [v33 backgroundColor];
    v60 = v33;
    v35 = *&v33[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView];
    v36 = type metadata accessor for MediaView();
    v81.receiver = v35;
    v81.super_class = v36;
    objc_msgSendSuper2(&v81, "setBackgroundColor:", v34);
    [*(*&v35[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:v34];
    v37 = *&v35[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
    if (v37)
    {
      v38 = v37;
      [v38 setBackgroundColor:v34];
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.containerHeight.getter();
    v40 = v39;
    PageGrid.safeAreaInsets.getter();
    v42 = v40 - v41;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v43 = v80;
    v44 = UITraitCollection.isSizeClassCompact.getter();

    v59 = v17;
    v66 = a3;
    if (v44)
    {
      Uber.style.getter();
      (*(v75 + 104))(v22, enum case for Uber.Style.inline(_:), v15);
      sub_1000D7220(&qword_100973B50, &type metadata accessor for Uber.Style);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v78 == v76 && v79 == v77)
      {
        v45 = v32;
        v46 = 1;
      }

      else
      {
        v45 = v32;
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v47 = *(v75 + 8);
      v47(v22, v15);
      v47(v25, v15);

      if (v46)
      {
        v42 = v42 - a4;
      }

      v32 = v45;
    }

    ItemLayoutContext.state.getter();
    v48 = v73;
    StateLens.init(_:)();
    v49 = v72;
    v74 = v32;
    Uber.style.getter();
    swift_getKeyPath();
    sub_1000D71CC();
    v50 = v65;
    StateLens<A>.subscript.getter();

    v51 = v78;
    PageGrid.componentMeasuringSize(spanning:)();
    v53 = v52;
    v54 = [v71 traitCollection];
    sub_1001158BC(v54, v49, (v51 & 1) == 0, v53, *&v42, 0);
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      (*(v75 + 104))(v59, enum case for Uber.Style.inline(_:), v15);
      sub_1000D7220(&qword_100973B50, &type metadata accessor for Uber.Style);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v78 == v76 && v79 == v77)
      {
        (*(v75 + 8))(v59, v15);

LABEL_18:
        Artwork.config(_:mode:prefersLayeredImage:)();

        (*(v75 + 8))(v49, v15);
        type metadata accessor for UberHeaderView();
        sub_1000D7220(&qword_100973B48, type metadata accessor for UberHeaderView);
        v57 = v60;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        (*(v64 + 8))(v48, v50);
        (*(v61 + 8))(v30, v62);
        return;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v75 + 8))(v59, v15);

      if (v55)
      {
        goto LABEL_18;
      }
    }

    Artwork.size.getter();
    v56 = v67;
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    (*(v68 + 8))(v56, v69);
    goto LABEL_18;
  }
}

uint64_t sub_1000D6AE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0);
}

uint64_t sub_1000D6B54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &unk_1009731E0);
  return swift_endAccess();
}

uint64_t sub_1000D6C34(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = (v2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText + 8);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((result = *v5, *v5 == v4) ? (v7 = v6 == a2) : (v7 = 0), !v7 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
LABEL_10:

    return sub_100427964(v4, a2);
  }

  return result;
}

void sub_1000D6CD4(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber;
  if (*(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    UILabel.alignment.setter();
  }

  else
  {
    if (qword_10096D778 != -1)
    {
      swift_once();
    }

    v5 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v5, qword_1009CF678);
    v13 = a1;
    Conditional.evaluate(with:)();
  }

  UILabel.alignment.setter();
  v6 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer;
  sub_1000D6E90(a1, *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer), a2);
  UILabel.alignment.setter();
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v7)
  {
    v8 = *(a2 + v6);
    v9 = v7;
    v10 = [a1 traitCollection];
    if ((*(a2 + v4) & 1) != 0 || (v8 & 1) != 0 && (UITraitCollection.isSizeClassRegular.getter() & 1) == 0)
    {

      v11 = 1;
    }

    else
    {
      v12 = UITraitCollection.prefersRightToLeftLayouts.getter();

      if (v12)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }
    }

    [v9 setTextAlignment:{v11, v13}];
  }
}

uint64_t sub_1000D6E90(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (UITraitCollection.isSizeClassRegular.getter() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

double *sub_1000D6F24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_100143F44(0, v3, 0);
    v37 = _swiftEmptyArrayStorage;
    v5 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v32 = v3;
    v33 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v12 = (*(a1 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v6);

      v16 = a2(v13, v14, v15);
      v35 = v18;
      v36 = v17;
      v20 = v19;

      v21 = v37;
      v23 = *(v37 + 2);
      v22 = *(v37 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_100143F44((v22 > 1), v23 + 1, 1);
        v21 = v37;
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[4 * v23];
      *(v24 + 4) = v16;
      *(v24 + 5) = v36;
      *(v24 + 6) = v35;
      *(v24 + 7) = v20;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v5 = a1 + 64;
      v25 = *(a1 + 64 + 8 * v11);
      if ((v25 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v37 = v21;
      v8 = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v32;
      }

      else
      {
        v27 = v11 << 6;
        v28 = v11 + 1;
        v10 = v32;
        v29 = (a1 + 72 + 8 * v11);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1000CAE24(v6, v33, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1000CAE24(v6, v33, 0);
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v10)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000D71CC()
{
  result = qword_100987140;
  if (!qword_100987140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987140);
  }

  return result;
}

uint64_t sub_1000D7220(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000D7268(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000D727C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000D72D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1000D7344()
{
  result = qword_100973B58;
  if (!qword_100973B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973B58);
  }

  return result;
}

unint64_t sub_1000D739C()
{
  result = qword_100973B60;
  if (!qword_100973B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973B60);
  }

  return result;
}

uint64_t sub_1000D73F0(uint64_t a1)
{
  v47 = a1;
  v36 = type metadata accessor for PageEnterAdEvent();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D130 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = type metadata accessor for OSLogger();
    v48 = sub_1000056A8(v6, qword_1009CE248);
    v7 = sub_10002849C(&unk_100972A10);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007B5350;
    v38 = v10;
    v45 = v1;
    static LogMessage.identity(_:)();
    v41 = "advertHostingPageExited";
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v40 = 2 * v9;
    v11 = SearchAdOpportunity.instanceId.getter();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    static LogMessage.safe(_:)();
    sub_10002B894(&v50, &unk_1009711D0);
    v44 = v6;
    Logger.info(_:)();

    v13 = SearchAdOpportunity.eventPayloads.getter();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageEnter(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1003D7B70(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10002B894(&v50, &unk_1009711D0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007B5360;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v31 = SearchAdOpportunity.instanceId.getter();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      static LogMessage.safe(_:)();
      sub_10002B894(&v50, &unk_1009711D0);
      Logger.error(_:)();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1000DAD74(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    PageEnterAdEvent.init(pageIdentifier:)();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_1000073E8(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_1000073E8(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      PageEnterAdEvent.subscript.setter();
      sub_10002B894(&v50, &qword_100973C10);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  dispatch thunk of PromotedContentMetricCollector.pageEntered(event:)();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_1000D7A84(uint64_t a1)
{
  v47 = a1;
  v36 = type metadata accessor for PageExitAdEvent();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D130 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = type metadata accessor for OSLogger();
    v48 = sub_1000056A8(v6, qword_1009CE248);
    v7 = sub_10002849C(&unk_100972A10);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007B5350;
    v38 = v10;
    v45 = v1;
    static LogMessage.identity(_:)();
    v41 = "duplicatePosition";
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v40 = 2 * v9;
    v11 = SearchAdOpportunity.instanceId.getter();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    static LogMessage.safe(_:)();
    sub_10002B894(&v50, &unk_1009711D0);
    v44 = v6;
    Logger.info(_:)();

    v13 = SearchAdOpportunity.eventPayloads.getter();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageExit(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1003D7B70(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10002B894(&v50, &unk_1009711D0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007B5360;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v31 = SearchAdOpportunity.instanceId.getter();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      static LogMessage.safe(_:)();
      sub_10002B894(&v50, &unk_1009711D0);
      Logger.error(_:)();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1000DAD74(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    PageExitAdEvent.init(pageIdentifier:)();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_1000073E8(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_1000073E8(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      PageExitAdEvent.subscript.setter();
      sub_10002B894(&v50, &qword_100973C10);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  dispatch thunk of PromotedContentMetricCollector.pageExited(event:)();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_1000D8118(uint64_t a1)
{
  v49 = a1;
  v38 = type metadata accessor for PlacedAdEvent();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  v48 = sub_1000056A8(v7, qword_1009CE248);
  v8 = sub_10002849C(&unk_100972A10);
  v9 = *(type metadata accessor for LogMessage() - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (v11 + 32) & ~v11;
  v44 = v8;
  v45 = 4 * v10;
  v42 = v11;
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  v43 = v12;
  v47 = v1;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v41 = 2 * v10;
  v13 = SearchAdOpportunity.instanceId.getter();
  *(&v52[0] + 1) = &type metadata for String;
  *&v51 = v13;
  *(&v51 + 1) = v14;
  v40 = 3 * v10;
  static LogMessage.safe(_:)();
  sub_10002B894(&v51, &unk_1009711D0);
  v46 = v7;
  Logger.info(_:)();

  v15 = SearchAdOpportunity.eventPayloads.getter();
  (*(v4 + 104))(v6, enum case for SearchAdOpportunity.LifecycleEventType.placed(_:), v3);
  if (!*(v15 + 16) || (v16 = sub_1003D7B70(v6), (v17 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    v53 = 0;
    goto LABEL_18;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  v19 = *(v4 + 8);

  v19(v6, v3);

  v53 = v18;
  if (!v18)
  {
LABEL_18:
    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1000DAD74(0x6E6174736E496461, 0xEC00000064496563, &v51);
  if (!*(&v52[0] + 1))
  {
LABEL_19:
    sub_10002B894(&v51, &unk_1009711D0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    *(swift_allocObject() + 16) = xmmword_1007B5360;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v20 = SearchAdOpportunity.instanceId.getter();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v20;
    *(&v51 + 1) = v21;
    static LogMessage.safe(_:)();
    sub_10002B894(&v51, &unk_1009711D0);
    Logger.error(_:)();
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1000DAD74(0x6E65644965676170, 0xEE00726569666974, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1000DAD74(0x6C706D6554644169, 0xEF65707954657461, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (v53)
  {
    sub_1000DAD74(0xD000000000000010, 0x8000000100800EF0, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_30;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10002B894(&v51, &unk_1009711D0);
LABEL_30:
  if (v53)
  {
    sub_1000DAD74(0xD000000000000011, 0x8000000100800F10, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_35;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10002B894(&v51, &unk_1009711D0);
LABEL_35:
  PlacedAdEvent.init(adInstanceId:pageIdentifier:templateType:missedReasonCode:duplicatePosition:)();
  v23 = v53;
  if (!v53)
  {
LABEL_47:
    v35 = v39;
    dispatch thunk of PromotedContentMetricCollector.advertPlaced(event:)();
    (*(v37 + 8))(v35, v38);
  }

  v24 = 1 << *(v53 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v53 + 64);
  v27 = (v24 + 63) >> 6;

  for (i = 0; v26; result = sub_10002B894(&v51, &qword_100973C10))
  {
    v29 = i;
LABEL_44:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v23 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    sub_1000073E8(*(v23 + 56) + 32 * v31, v52);
    *&v51 = v33;
    *(&v51 + 1) = v34;
    sub_1000073E8(v52, &v50);
    swift_bridgeObjectRetain_n();
    PlacedAdEvent.subscript.setter();
  }

  while (1)
  {
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      goto LABEL_47;
    }

    v26 = *(v23 + 64 + 8 * v29);
    ++i;
    if (v26)
    {
      i = v29;
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D8A74(uint64_t a1)
{
  v47 = a1;
  v36 = type metadata accessor for OnScreenAdEvent();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D130 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = type metadata accessor for OSLogger();
    v48 = sub_1000056A8(v6, qword_1009CE248);
    v7 = sub_10002849C(&unk_100972A10);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007B5350;
    v38 = v10;
    v45 = v1;
    static LogMessage.identity(_:)();
    v41 = "advertDidExitView";
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v40 = 2 * v9;
    v11 = SearchAdOpportunity.instanceId.getter();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    static LogMessage.safe(_:)();
    sub_10002B894(&v50, &unk_1009711D0);
    v44 = v6;
    Logger.info(_:)();

    v13 = SearchAdOpportunity.eventPayloads.getter();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.onScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1003D7B70(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10002B894(&v50, &unk_1009711D0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007B5360;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v31 = SearchAdOpportunity.instanceId.getter();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      static LogMessage.safe(_:)();
      sub_10002B894(&v50, &unk_1009711D0);
      Logger.error(_:)();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1000DAD74(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    OnScreenAdEvent.init(adInstanceId:)();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_1000073E8(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_1000073E8(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      OnScreenAdEvent.subscript.setter();
      sub_10002B894(&v50, &qword_100973C10);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  dispatch thunk of PromotedContentMetricCollector.advertOnScreen(event:)();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_1000D9104(uint64_t a1)
{
  v47 = a1;
  v36 = type metadata accessor for OffScreenAdEvent();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D130 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = type metadata accessor for OSLogger();
    v48 = sub_1000056A8(v6, qword_1009CE248);
    v7 = sub_10002849C(&unk_100972A10);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007B5350;
    v38 = v10;
    v45 = v1;
    static LogMessage.identity(_:)();
    v41 = "ered undefined threshold";
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v40 = 2 * v9;
    v11 = SearchAdOpportunity.instanceId.getter();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    static LogMessage.safe(_:)();
    sub_10002B894(&v50, &unk_1009711D0);
    v44 = v6;
    Logger.info(_:)();

    v13 = SearchAdOpportunity.eventPayloads.getter();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.offScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1003D7B70(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10002B894(&v50, &unk_1009711D0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007B5360;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v31 = SearchAdOpportunity.instanceId.getter();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      static LogMessage.safe(_:)();
      sub_10002B894(&v50, &unk_1009711D0);
      Logger.error(_:)();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1000DAD74(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    OffScreenAdEvent.init(adInstanceId:)();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_1000073E8(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_1000073E8(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      OffScreenAdEvent.subscript.setter();
      sub_10002B894(&v50, &qword_100973C10);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  dispatch thunk of PromotedContentMetricCollector.advertOffScreen(event:)();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_1000D9794(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v4 = type metadata accessor for VisibilityAdEvent();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v56 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100973C18);
  __chkstk_darwin(v9 - 8);
  v11 = v50 - v10;
  v12 = type metadata accessor for AdvertVisibilityCalculator.VisibilityThreshold();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DAE18(a2, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10002B894(v11, &qword_100973C18);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = sub_1000DA0E0();
  v19 = v18;
  result = (*(v13 + 8))(v15, v12);
  if ((v19 & 1) == 0)
  {
    result = sub_1000DA0E0();
    if ((v21 & 1) == 0 && result != v17)
    {
      v53 = result;
      if (qword_10096D130 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v51 = type metadata accessor for OSLogger();
        v50[10] = sub_1000056A8(v51, qword_1009CE248);
        v22 = sub_10002849C(&unk_100972A10);
        v23 = *(type metadata accessor for LogMessage() - 8);
        v24 = *(v23 + 72);
        v25 = *(v23 + 80);
        v26 = (v25 + 32) & ~v25;
        v50[9] = 8 * v24;
        v50[6] = v25;
        v50[8] = v22;
        *(swift_allocObject() + 16) = xmmword_1007B5370;
        v50[7] = v26;
        v52 = v2;
        static LogMessage.identity(_:)();
        v50[5] = "advertWasRemoved";
        LogMessage.init(stringLiteral:)();
        LogMessage.init(stringLiteral:)();
        v50[4] = 2 * v24;
        v27 = SearchAdOpportunity.instanceId.getter();
        *(&v62[0] + 1) = &type metadata for String;
        *&v61 = v27;
        *(&v61 + 1) = v28;
        v50[3] = 3 * v24;
        static LogMessage.safe(_:)();
        sub_10002B894(&v61, &unk_1009711D0);
        LogMessage.init(stringLiteral:)();
        v50[2] = 4 * v24;
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v17;
        v50[1] = 5 * v24;
        static LogMessage.safe(_:)();
        sub_10002B894(&v61, &unk_1009711D0);
        LogMessage.init(stringLiteral:)();
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v53;
        static LogMessage.safe(_:)();
        sub_10002B894(&v61, &unk_1009711D0);
        Logger.info(_:)();

        v29 = SearchAdOpportunity.eventPayloads.getter();
        v31 = v57;
        v30 = v58;
        (*(v57 + 104))(v8, enum case for SearchAdOpportunity.LifecycleEventType.visible(_:), v58);
        if (!*(v29 + 16) || (v32 = sub_1003D7B70(v8), (v33 & 1) == 0))
        {

          (*(v31 + 8))(v8, v30);
          v63 = 0;
LABEL_26:
          v61 = 0u;
          v62[0] = 0u;
LABEL_27:
          sub_10002B894(&v61, &unk_1009711D0);
LABEL_28:
          *(swift_allocObject() + 16) = xmmword_1007B5360;
          static LogMessage.identity(_:)();
          LogMessage.init(stringLiteral:)();
          LogMessage.init(stringLiteral:)();
          LogMessage.init(stringLiteral:)();
          v47 = SearchAdOpportunity.instanceId.getter();
          *(&v62[0] + 1) = &type metadata for String;
          *&v61 = v47;
          *(&v61 + 1) = v48;
          static LogMessage.safe(_:)();
          sub_10002B894(&v61, &unk_1009711D0);
          Logger.error(_:)();
        }

        v34 = *(*(v29 + 56) + 8 * v32);
        v35 = *(v31 + 8);

        v35(v8, v30);

        v63 = v34;
        if (!v34)
        {
          goto LABEL_26;
        }

        v2 = &v63;
        sub_1000DAD74(0x6E6174736E496461, 0xEC00000064496563, &v61);
        if (!*(&v62[0] + 1))
        {
          goto LABEL_27;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_28;
        }

        VisibilityAdEvent.init(adInstanceId:threshold:)();
        v36 = v63;
        if (!v63)
        {
          break;
        }

        v37 = 1 << *(v63 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        v39 = v38 & *(v63 + 64);
        v40 = (v37 + 63) >> 6;

        v17 = 0;
        v8 = &unk_1007B5428;
        while (v39)
        {
          v41 = v17;
LABEL_23:
          v42 = __clz(__rbit64(v39));
          v39 &= v39 - 1;
          v43 = v42 | (v41 << 6);
          v44 = (*(v36 + 48) + 16 * v43);
          v45 = *v44;
          v46 = v44[1];
          sub_1000073E8(*(v36 + 56) + 32 * v43, v62);
          *&v61 = v45;
          *(&v61 + 1) = v46;
          sub_1000073E8(v62, &v60);
          swift_bridgeObjectRetain_n();
          v2 = v56;
          VisibilityAdEvent.subscript.setter();
          sub_10002B894(&v61, &qword_100973C10);
        }

        while (1)
        {
          v41 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v41 >= v40)
          {

            goto LABEL_32;
          }

          v39 = *(v36 + 64 + 8 * v41);
          ++v17;
          if (v39)
          {
            v17 = v41;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

LABEL_32:
      v49 = v56;
      dispatch thunk of PromotedContentMetricCollector.advertVisibilityChanged(event:)();
      (*(v54 + 8))(v49, v55);
    }
  }

  return result;
}

uint64_t sub_1000DA0E0()
{
  v0 = type metadata accessor for AdvertVisibilityCalculator.VisibilityThreshold();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOnScreen(_:), v0, v2);
  sub_1000DAE88(&qword_100973C20);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v11[1] == v11[0])
  {
    return 100;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.moreThanHalfOnScreen(_:), v0);
  sub_1000DAE88(&qword_100973C28);
  v8 = dispatch thunk of static Comparable.< infix(_:_:)();
  v6(v4, v0);
  if ((v8 & 1) == 0)
  {
    return 50;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v0);
  v9 = dispatch thunk of static Comparable.< infix(_:_:)();
  v6(v4, v0);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSLogger();
  sub_1000056A8(v10, qword_1009CE248);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return 0;
}

uint64_t sub_1000DA45C(uint64_t a1)
{
  v47 = a1;
  v37 = type metadata accessor for CompletedAdEvent();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SearchAdOpportunity.LifecycleEventType();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D130 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = type metadata accessor for OSLogger();
    v48 = sub_1000056A8(v6, qword_1009CE248);
    v7 = sub_10002849C(&unk_100972A10);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007B5350;
    v39 = v10;
    v45 = v1;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    LogMessage.init(stringLiteral:)();
    v41 = 2 * v9;
    v11 = SearchAdOpportunity.instanceId.getter();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v40 = 3 * v9;
    static LogMessage.safe(_:)();
    sub_10002B894(&v50, &unk_1009711D0);
    v44 = v6;
    Logger.info(_:)();

    v13 = SearchAdOpportunity.eventPayloads.getter();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.completed(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1003D7B70(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10002B894(&v50, &unk_1009711D0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007B5360;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      LogMessage.init(stringLiteral:)();
      v31 = SearchAdOpportunity.instanceId.getter();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      static LogMessage.safe(_:)();
      sub_10002B894(&v50, &unk_1009711D0);
      Logger.error(_:)();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1000DAD74(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    CompletedAdEvent.init(adInstanceId:)();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_1000073E8(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_1000073E8(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      CompletedAdEvent.subscript.setter();
      sub_10002B894(&v50, &qword_100973C10);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v38;
  dispatch thunk of PromotedContentMetricCollector.advertCompleted(event:)();
  (*(v36 + 8))(v34, v37);
}

uint64_t sub_1000DAAE4()
{

  return swift_deallocClassInstance();
}

double sub_1000DAC3C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1003D8ACC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000530B0();
      v9 = v11;
    }

    sub_100056164((*(v9 + 56) + 32 * v7), a2);
    sub_100050334(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000DACDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000072B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100053BF0();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1000506A8(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1000DAD74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000072B8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100053D5C();
      v10 = v12;
    }

    sub_100056164((*(v10 + 56) + 32 * v8), a3);
    sub_100050858(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000DAE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DAE88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdvertVisibilityCalculator.VisibilityThreshold();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DAEFC(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1730);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = type metadata accessor for StaticDimension();
  *a3 = &protocol witness table for StaticDimension;
  sub_1000056E0(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v16);
  (*(v8 + 16))(v13, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  return (*(v8 + 8))(v10, v7);
}

char *sub_1000DB0F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView;
  *&v5[v19] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v21 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D1730);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v16, v23, v22);
  (*(v24 + 56))(v16, 0, 1, v22);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v25 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v21] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_pageTraits] = 0;
  v26 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v27 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v5[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = 1;
  *&v5[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton] = 0;
  v28 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v36.receiver = v5;
  v36.super_class = v28;
  v29 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 addSubview:*&v29[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView]];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView]];

  v32 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_taglineLabel;
  v33 = *&v29[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_taglineLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v34 = [v29 contentView];
  [v34 addSubview:*&v29[v32]];

  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v29;
}

uint64_t sub_1000DB5A8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:);
  v3 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000DB61C(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView);
    v4 = [a1 superview];
    if (v4)
    {
      v5 = v4;
      sub_100005744(0, &qword_100972EB0);
      v6 = v3;
      v7 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1000DB6D0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000DD2F8(&qword_100973190, type metadata accessor for VideoView);
    v5 = v2;
    v6 = [v4 superview];
    if (v6)
    {
      v7 = v6;
      sub_100005744(0, &qword_100972EB0);
      v8 = v5;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          [v10 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v12 = v2;
  }

  swift_unknownObjectWeakAssign();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v2 addSubview:v13];
  }

  sub_1001B8790();
  [v2 setNeedsLayout];
}

void (*sub_1000DB870(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000DB8D4;
}

void sub_1000DB8D4(uint64_t a1, char a2)
{
  v4 = *a1;
  v29 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1000DD2F8(&qword_100973190, type metadata accessor for VideoView);
      v7 = v4;
      v8 = v29;
      v9 = [v6 superview];
      if (v9)
      {
        v10 = v9;
        sub_100005744(0, &qword_100972EB0);
        v11 = v8;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
      v22 = v29;
    }

    swift_unknownObjectWeakAssign();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      [v29 addSubview:v24];
    }

    sub_1001B8790();
    [v29 setNeedsLayout];

    v26 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1000DD2F8(&qword_100973190, type metadata accessor for VideoView);
      v15 = v29;
      v16 = [v6 superview];
      if (v16)
      {
        v17 = v16;
        sub_100005744(0, &qword_100972EB0);
        v18 = v15;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v23 = v29;
    }

    swift_unknownObjectWeakAssign();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v29 addSubview:v27];
    }

    sub_1001B8790();
    [v29 setNeedsLayout];

    v26 = v29;
  }
}

uint64_t sub_1000DBBF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v60 = type metadata accessor for LayoutRect();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for MixedMediaLockupLayout();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_10002849C(&unk_100973CA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v54 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v24 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v67.receiver = v1;
  v67.super_class = v24;
  v51 = v24;
  objc_msgSendSuper2(&v67, "layoutSubviews");
  v61 = v1[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace];
  v25 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_10009AD60(&v1[v25], v19);
  v49 = v19;
  sub_10009AD60(v19, v16);
  v26 = *(v6 + 48);
  if (v26(v16, 1, v5) == 1)
  {
    (*(ObjectType + 224))();
    if (v26(v16, 1, v5) != 1)
    {
      sub_10002B894(v16, &unk_100973CA0);
    }
  }

  else
  {
    (*(v6 + 32))(v13, v16, v5);
  }

  v27 = *(v6 + 16);
  v27(v10, v13, v5);
  v28 = (*(v6 + 88))(v10, v5);
  v29 = v23;
  if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v30 = v50;
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, v66);
  }

  else
  {
    v30 = v50;
    if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10096CFE0 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDD98, v66);
    }

    else
    {
      if (qword_10096CFE8 != -1)
      {
        swift_once();
      }

      sub_10002C0AC(qword_1009CDDC0, v66);
      (*(v6 + 8))(v10, v5);
    }
  }

  v27(v30, v13, v5);
  sub_10002C0AC(v66, v65);
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for FontUseCase();
  sub_1000056A8(v31, qword_1009D1730);
  v32 = [v1 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for StaticDimension();
  v34 = sub_1000056A8(v33, qword_1009D2430);
  v63 = v33;
  v64 = &protocol witness table for StaticDimension;
  v35 = sub_1000056E0(v62);
  (*(*(v33 - 8) + 16))(v35, v34, v33);
  MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
  sub_100007000(v66);
  (*(v6 + 8))(v13, v5);
  sub_10002B894(v49, &unk_100973CA0);
  v36 = v53;
  v37 = v54;
  (*(v53 + 16))(v52, v29, v54);
  v38 = *&v1[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView];
  v66[3] = type metadata accessor for SmallLockupView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v38;
  v39 = *&v1[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView];
  v65[3] = type metadata accessor for LockupMediaView();
  v65[4] = &protocol witness table for UIView;
  v65[0] = v39;
  v40 = *&v1[OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_taglineLabel];
  v41 = v38;
  v42 = v39;
  if ([v40 hasContent])
  {
    v43 = type metadata accessor for DynamicTypeLabel();
    v44 = v40;
    v45 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v40 = 0;
    v62[1] = 0;
    v62[2] = 0;
  }

  v63 = v43;
  v64 = v45;
  v62[0] = v40;
  v46 = v55;
  MixedMediaLockupLayout.init(metrics:lockupView:media:tagline:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v47 = v57;
  MixedMediaLockupLayout.placeChildren(relativeTo:in:)();
  (*(v59 + 8))(v47, v60);
  (*(v56 + 8))(v46, v58);
  return (*(v36 + 8))(v29, v37);
}

uint64_t sub_1000DC53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v12 - 8);
  v14 = &v44[-v13];
  v15 = type metadata accessor for LockupMediaLayout.DisplayType();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v47 = &v44[-v19];
  if (ScreenshotsDisplayStyle.shouldShowScreenshots.getter())
  {
    v46 = a6;
    if (a2 | a1)
    {
      v28 = v47;
      AspectRatio.init(_:_:)();
      (*(v48 + 104))(v28, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v15);
      return (*(v48 + 32))(v46, v28, v15);
    }

    v20 = sub_1001B9B24(a3, a4, 0, 1);
    v21 = v20;
    v22 = v20 >> 62;
    if (v20 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
LABEL_5:
        v24 = Screenshots.mediaPlatform.getter();
        goto LABEL_12;
      }
    }

    v24 = 0;
LABEL_12:
    v45 = sub_1001B9E6C(v24);

    if (a3)
    {
      v29 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v29 = 0;
    }

    v30 = type metadata accessor for ScreenshotsDisplayStyle();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v14, a5, v30);
    (*(v31 + 56))(v14, 0, 1, v30);
    v32 = sub_1001BA394(v29, v14);

    sub_10002B894(v14, &unk_100973C90);
    if (v22)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        v33 = dispatch thunk of Artwork.isLandscape.getter();

        if (v33)
        {
          v34 = v47;
          (*(v48 + 104))(v47, enum case for LockupMediaLayout.DisplayType.landscape(_:), v15);
          return (*(v48 + 32))(v46, v34, v15);
        }

LABEL_24:
        v35 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v36 = *(v48 + 104);
        v36(v17, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v15);
        v37 = LockupMediaLayout.DisplayType.numberOfViews.getter();
        v38 = *(v48 + 8);
        v38(v17, v15);
        if (((v23 >= v37) & v32) != 0 || (v35 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v15), v39 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v38(v17, v15), ((v23 >= v39) & v45) != 0) || (v35 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v15), v40 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v38(v17, v15), v23 >= v40) || (v35 = enum case for LockupMediaLayout.DisplayType.oneUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v15), v41 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v38(v17, v15), v23 == v41))
        {
          v34 = v47;
          v42 = v47;
          v43 = v35;
        }

        else
        {
          v43 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v34 = v47;
          v42 = v47;
        }

        v36(v42, v43, v15);
        return (*(v48 + 32))(v46, v34, v15);
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_24;
  }

  v25 = enum case for LockupMediaLayout.DisplayType.none(_:);
  v26 = *(v48 + 104);

  return v26(a6, v25, v15);
}

uint64_t sub_1000DCAC8()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_15:
    v14 = *(v0 + 144);

    return v14();
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {

      return static AspectRatio.square.getter();
    }
  }

  return AspectRatio.init(_:_:)();
}

uint64_t sub_1000DCC58()
{
  result = Lockup.editorialTagline.getter();
  if (!v1)
  {
    return Lockup.developerTagline.getter();
  }

  return result;
}

id sub_1000DCD68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupCollectionViewCell()
{
  result = qword_100973C58;
  if (!qword_100973C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DCEB0()
{
  sub_1000DCFD8(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1000DCFD8(319, &qword_100973C70, &type metadata accessor for MixedMediaLockupLayout.LockupPosition);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000DCFD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t (*sub_1000DD050(uint64_t **a1))()
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
  v2[4] = sub_1000DB870(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1000DD0C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1000DD114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1000DD180(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1000DD2F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000DD340()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_lockupView;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_mediaView;
  *(v1 + v12) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v13 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D1730);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v13) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v1 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_pageTraits) = 0;
  v18 = OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v19 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000DD6A0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v178 - v9;
  v11 = dispatch thunk of SearchResultsPresenter.result(at:)();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 traitCollection];
    v14 = dispatch thunk of SearchResultsPresenter.shouldResultHaveCondensedAppearance(at:in:)();

    *&v187 = v12;
    type metadata accessor for SearchResult();
    if ((SearchAdOpportunityProviding.isSearchAdOpportunity.getter() & 1) != 0 && *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      dispatch thunk of AdvertRotationController.didApplyCell(_:in:)();
    }

    type metadata accessor for AppSearchResult();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for ContentSearchResultCollectionViewCell();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
LABEL_10:

        return;
      }

      v16 = v15;
      v17 = a2;
      AppSearchResult.lockup.getter();
      goto LABEL_8;
    }

    type metadata accessor for BundleSearchResult();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for BundleSearchResultCollectionViewCell();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        goto LABEL_10;
      }

      v20 = v19;
      v21 = a2;
      v22 = BundleSearchResult.lockup.getter();
      v23 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
      v24 = [*(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v25 = [v24 horizontalSizeClass];

      if (v25 == 1)
      {
        [*(v4 + v23) pageMarginInsets];
        top = v26;
        left = v28;
        bottom = v30;
        right = v32;
      }

      else
      {
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      v50 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
      v51 = [v20 contentView];
      [v51 setLayoutMargins:{top, left, bottom, right}];

      v52 = type metadata accessor for ItemLayoutContext();
      (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
      sub_100279F24(v22, v10, v50);
      sub_10002B894(v10, &unk_1009731E0);
      v53 = Lockup.children.getter();
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
      }

      sub_100209EF0(v54);

      [v20 setNeedsLayout];

      v55 = BundleSearchResult.lockup.getter();
      sub_1005433CC(v55, *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader));

      v56 = BundleSearchResult.lockup.getter();
      sub_1000E0A64(v56, v21, v4);

LABEL_27:

      return;
    }

    type metadata accessor for AdvertsSearchResult();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for EditorialSearchResult();
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v58 = v57;
        type metadata accessor for EditorialSearchResultCollectionViewCell();
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          v61 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          v62 = *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = swift_getObjectType();
          v186 = a2;
          v63 = [swift_unknownObjectRetain() traitCollection];
          v64 = [v63 horizontalSizeClass];

          if (v64 == 1)
          {
            [*(v4 + v61) pageMarginInsets];
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v72 = v71;
          }

          else
          {
            v66 = UIEdgeInsetsZero.top;
            v68 = UIEdgeInsetsZero.left;
            v70 = UIEdgeInsetsZero.bottom;
            v72 = UIEdgeInsetsZero.right;
          }

          v81 = ASKDeviceTypeGetCurrent();
          v82 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
          v83 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkIconFetcher);
          v84 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader);
          swift_unknownObjectRetain();
          sub_1003E10AC(v58, v62, v82, v83, v84, v60, v66, v68, v70, v72);

          swift_unknownObjectRelease_n();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {

            type metadata accessor for VideoPlaybackCoordinator();
            type metadata accessor for BaseObjectGraph();
            inject<A, B>(_:from:)();
            ObjectType = v187;
            v86 = swift_unknownObjectWeakLoadStrong();
            if (v86)
            {
              sub_10000770C(&qword_100973190, type metadata accessor for VideoView);
            }

            sub_10000770C(&qword_100973DD8, type metadata accessor for EditorialSearchResultCollectionViewCell);
            v130 = v186;
            v131 = ObjectType;
            dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
          }
        }

        sub_1000E0F44(v58, a2, v4);
      }

      else
      {
        type metadata accessor for InAppPurchaseSearchResult();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = a2;
            v73 = InAppPurchaseSearchResult.lockup.getter();
            v74 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
            ObjectType = [*(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
            v75 = [*(v3 + v74) traitCollection];
            v76 = [v75 horizontalSizeClass];

            if (v76 == 1)
            {
              [*(v4 + v74) pageMarginInsets];
            }

            else
            {
              v77 = UIEdgeInsetsZero.top;
              v78 = UIEdgeInsetsZero.left;
              v79 = UIEdgeInsetsZero.bottom;
              v80 = UIEdgeInsetsZero.right;
            }

            sub_1003A06E0(v73, *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph), *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader), v77, v78, v79, v80);
          }

          v132 = InAppPurchaseSearchResult.lockup.getter();
          sub_1000E1424(v132, a2, v4);
          goto LABEL_9;
        }

        type metadata accessor for LockupCollectionSearchResult();
        v99 = swift_dynamicCastClass();
        if (v99)
        {
          v100 = v99;
          type metadata accessor for SearchLockupListCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader);
            *&v184 = *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
            v101 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
            v102 = *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
            ObjectType = a2;
            v103 = [swift_unknownObjectRetain() traitCollection];
            v104 = [v103 horizontalSizeClass];

            if (v104 == 1)
            {
              [*(v3 + v101) pageMarginInsets];
            }

            else
            {
              v105 = UIEdgeInsetsZero.top;
              v106 = UIEdgeInsetsZero.left;
              v107 = UIEdgeInsetsZero.bottom;
              v108 = UIEdgeInsetsZero.right;
            }

            sub_10061BEFC(v100, v186, v184, v102, v105, v106, v107, v108);

            swift_unknownObjectRelease();
          }

          sub_1000E1904(v100, a2, v3);
        }

        else
        {
          type metadata accessor for AppEventSearchResult();
          v186 = swift_dynamicCastClass();
          if (!v186)
          {
            goto LABEL_10;
          }

          type metadata accessor for AppEventSearchResultCollectionViewCell();
          v133 = swift_dynamicCastClass();
          if (!v133)
          {
            type metadata accessor for ContentSearchResultCollectionViewCell();
            v150 = swift_dynamicCastClass();
            if (!v150)
            {
              goto LABEL_10;
            }

            v16 = v150;
            v17 = a2;
            AppEventSearchResult.lockup.getter();
LABEL_8:
            v18 = sub_1001A3D6C(v14 & 1);

            sub_1000DEA4C(v18, v16, a3, a1);

LABEL_9:

            goto LABEL_10;
          }

          v134 = v133;
          v135 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          v136 = *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = a2;
          [v136 pageMarginInsets];
          v138 = v137;
          v139 = [*(v4 + v135) traitCollection];
          v140 = [v139 horizontalSizeClass];

          v141 = v134;
          if (v140 == 1)
          {
            [*(v4 + v135) pageMarginInsets];
            v143 = v142;
            v145 = v144;
            v147 = v146;
            v149 = v148;
          }

          else
          {
            v143 = UIEdgeInsetsZero.top;
            v145 = UIEdgeInsetsZero.left;
            v147 = UIEdgeInsetsZero.bottom;
            v149 = UIEdgeInsetsZero.right;
          }

          v151 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
          *&v184 = *(v4 + v135);
          swift_unknownObjectRetain();
          v152 = [v141 contentView];
          [v152 setLayoutMargins:{v143, v145, v147, v149}];

          v153 = *&v141[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView];
          *&v153[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = v138;
          [v153 setNeedsLayout];
          sub_100005744(0, &qword_100970180);
          v154 = static UIColor.defaultBackground.getter();
          [v141 setBackgroundColor:v154];

          v155 = AppEventSearchResult.lockup.getter();
          v156 = type metadata accessor for ItemLayoutContext();
          (*(*(v156 - 8) + 56))(v10, 1, 1, v156);
          sub_100279F24(v155, v10, v151);

          sub_10002B894(v10, &unk_1009731E0);
          v183 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView;
          v157 = AppEventSearchResult.appEvent.getter();
          v158 = v151;
          v159 = v141;
          sub_100168944(v157, v158);

          v160 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v161 = swift_allocObject();
          v162 = v186;
          *(v161 + 2) = v160;
          *(v161 + 3) = v162;
          *(v161 + 4) = v158;
          v163 = &v141[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          v164 = *&v141[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          *v163 = sub_1000E8024;
          v163[1] = v161;

          v182 = v158;

          sub_10001F63C(v164);

          [v141 setNeedsLayout];
          swift_unknownObjectRelease();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v166 = [a1 layoutAttributesForItemAtIndexPath:isa];

          if (v166)
          {
            [v166 frame];
            v180 = v167;
            v181 = v168;
            v179 = v169;
            v184 = v170;

            *&v172 = v179;
            *&v171 = v180;
            *(&v171 + 1) = v181;
            *(&v172 + 1) = v184;
          }

          else
          {
            v171 = 0uLL;
            v172 = 0uLL;
          }

          v173 = ObjectType;
          v187 = v171;
          v188 = v172;
          v189 = v166 == 0;
          sub_1000DFB34(v186, v159, &v187);
          v174 = swift_unknownObjectWeakLoadStrong();
          if (v174)
          {

            type metadata accessor for VideoPlaybackCoordinator();
            type metadata accessor for BaseObjectGraph();
            inject<A, B>(_:from:)();
            v175 = v190;
            v176 = swift_unknownObjectWeakLoadStrong();
            if (v176)
            {
              sub_10000770C(&qword_100973190, type metadata accessor for VideoView);
            }

            sub_10000770C(&unk_100973D68, type metadata accessor for AppEventSearchResultCollectionViewCell);
            v177 = v173;
            dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
          }

          sub_1000E1DE4(v186, v159, v4);
        }
      }

LABEL_59:

      return;
    }

    type metadata accessor for AdvertSearchResultCollectionViewCell();
    v34 = swift_dynamicCastClass();
    if (!v34 || !*(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
    {
      goto LABEL_10;
    }

    v35 = v34;
    v21 = a2;

    dispatch thunk of AdvertRotationController.currentAdvert.getter();

    sub_10002849C(&unk_10097E360);
    type metadata accessor for MixedMediaLockup();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v183 = v21;
    v186 = v190;
    v36 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    v38 = v37;
    v39 = swift_unknownObjectRetain();
    v40 = [v39 traitCollection];
    v41 = [v40 horizontalSizeClass];

    v182 = v36;
    if (v41 == 1)
    {
      [*(v4 + v36) pageMarginInsets];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
    }

    else
    {
      v43 = UIEdgeInsetsZero.top;
      v45 = UIEdgeInsetsZero.left;
      v47 = UIEdgeInsetsZero.bottom;
      v49 = UIEdgeInsetsZero.right;
    }

    v87 = ASKDeviceTypeGetCurrent();
    v88 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
    ObjectType = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
    v89 = *(v35 + OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView);
    *&v181 = v39;
    v90 = [v39 traitCollection];
    *&v184 = v88;
    sub_1006C65C8(v186, v90, v87, v88, v38, v43, v45, v47, v49);

    [v35 setNeedsLayout];
    swift_unknownObjectRelease();

    v91 = IndexPath._bridgeToObjectiveC()().super.isa;
    v92 = [a1 layoutAttributesForItemAtIndexPath:v91];

    if (v92)
    {
      [v92 frame];
      v179 = v93;
      v180 = v94;
      v178 = v95;
      v181 = v96;

      *&v98 = v178;
      *&v97 = v179;
      *(&v97 + 1) = v180;
      *(&v98 + 1) = v181;
    }

    else
    {
      v97 = 0uLL;
      v98 = 0uLL;
    }

    v187 = v97;
    v188 = v98;
    v189 = v92 == 0;
    v109 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader);
    v110 = *(v4 + v182);
    v111 = ObjectType;
    v112 = *&ObjectType[v35];
    swift_unknownObjectRetain();
    v113 = v112;
    v114 = [v110 traitCollection];
    sub_1006C89B8(v186, &v187, v109, v114);
    swift_unknownObjectRelease();

    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v115 = v190;
    v116 = *&v111[v35];
    v117 = swift_unknownObjectWeakLoadStrong();
    if (v117)
    {
      sub_10000770C(&qword_100973190, type metadata accessor for VideoView);
    }

    sub_10000770C(&unk_100973DE0, type metadata accessor for AdvertsSearchResultContentView);
    v118 = v116;
    dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

    v120 = v183;
    sub_1000E0A64(v119, v183, v4);
    v121 = Lockup.searchAdOpportunity.getter();

    if (v121)
    {
      v122 = SearchAdOpportunity.searchAd.getter();

      v123 = *&ObjectType[v35];
      if (v122)
      {
        v124 = objc_opt_self();
        v125 = v123;
        v126 = [v124 clearColor];
        [v125 setBackgroundColor:v126];

LABEL_55:
        sub_10027B8BC(v122, v184);
        [v125 setNeedsLayout];

        [v35 setNeedsLayout];

        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = *&ObjectType[v35];

        v129 = v128;
        sub_10068D354(sub_1000E8030, v127);

        goto LABEL_59;
      }
    }

    else
    {
      v123 = *&ObjectType[v35];
    }

    v125 = v123;
    v122 = 0;
    goto LABEL_55;
  }
}

void sub_1000DE9C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController);
    v2 = Strong;

    if (v1)
    {
      dispatch thunk of AdvertRotationController.didInteractWithAdvert()();
    }
  }
}

void sub_1000DEA4C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v11 = v10;
  v12 = *(v4 + v9);
  v13 = [swift_unknownObjectRetain() traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == 1)
  {
    [*(v5 + v9) pageMarginInsets];
    top = v15;
    left = v17;
    bottom = v19;
    right = v21;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v23 = ASKDeviceTypeGetCurrent();
  sub_1004BC960(a1, v12, v23, *(v5 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph), v11, top, left, bottom, right);
  swift_unknownObjectRelease();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [a4 layoutAttributesForItemAtIndexPath:isa];

  if (v25)
  {
    [v25 frame];
    v36 = v26;
    v37 = v27;
    v35 = v28;
    v38 = v29;

    *&v31 = v35;
    *&v30 = v36;
    *(&v30 + 1) = v37;
    *(&v31 + 1) = v38;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
  }

  v40[0] = v30;
  v40[1] = v31;
  v41 = v25 == 0;
  v32 = *(v5 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader);
  v33 = *(v5 + v9);
  swift_unknownObjectRetain();
  sub_1004BEC78(a1, v40, v32, v33);
  swift_unknownObjectRelease();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10000770C(&qword_100973190, type metadata accessor for VideoView);
  }

  sub_10000770C(&unk_100973D80, type metadata accessor for ContentSearchResultCollectionViewCell);
  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

  sub_1000E0A64(a1, a2, v5);
}

uint64_t sub_1000DED58(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v5 = swift_dynamicCastClass();
  v55 = a2;
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = *(v5 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
  v8 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v10 = *(v7 + v8);
  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      if (v11 < 1)
      {
        __break(1u);
        return result;
      }

      v53 = v2;
      v12 = v55;

      v13 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        ++v13;
        v56 = v14;
        type metadata accessor for BorderedScreenshotView();
        sub_10000770C(&qword_100973D78, type metadata accessor for BorderedScreenshotView);
        v16 = v15;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
        sub_10003D614(v57);
        v17 = *&v16[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
        v58.value.super.isa = 0;
        v58.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v58, v18);
      }

      while (v11 != v13);

      v3 = v53;
      a2 = v55;
      goto LABEL_13;
    }
  }

  a2 = v55;
  v19 = v55;
LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    v56 = v21;
    type metadata accessor for VideoView();
    sub_10000770C(&qword_100992450, type metadata accessor for VideoView);
    v22 = v21;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v57);
  }

  v23 = OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView;
  v24 = *(*(v6 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v59.value.super.isa = 0;
  v59.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v59, v25);

  v26 = *(*(v6 + v23) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_10000770C(&qword_100970E80, &type metadata accessor for ArtworkView);
  v27 = v26;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v28 = v57[0];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    sub_10000770C(&qword_100973190, type metadata accessor for VideoView);
  }

  sub_10000770C(&unk_100973D80, type metadata accessor for ContentSearchResultCollectionViewCell);
  v30 = a2;
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

LABEL_18:
  result = dispatch thunk of SearchResultsPresenter.result(at:)();
  if (!result)
  {
    return result;
  }

  type metadata accessor for AppEventSearchResultCollectionViewCell();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v33 = *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader);
    v34 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView;
    v35 = *(*(v31 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    v54 = a2;
    v36 = v35;
    v60.value.super.isa = 0;
    v60.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v60, v37);

    v38 = *(*(v32 + v34) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    type metadata accessor for ArtworkView();
    sub_10000770C(&qword_100970E80, &type metadata accessor for ArtworkView);
    v39 = v38;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    sub_1004DC1C0(v33, 1, v40);
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v41 = v57[0];
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      sub_10000770C(&qword_100973190, type metadata accessor for VideoView);
    }

    sub_10000770C(&unk_100973D68, type metadata accessor for AppEventSearchResultCollectionViewCell);
    v43 = v54;
    dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

    a2 = v55;
  }

  type metadata accessor for AdvertSearchResultCollectionViewCell();
  if (swift_dynamicCastClass() && *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
  {
    v44 = a2;

    dispatch thunk of AdvertRotationController.didEndDisplaying(_:in:)();
  }

  type metadata accessor for AppSearchResult();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for AdvertsSearchResult();
    if (swift_dynamicCastClass())
    {
      if (!*(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
      {
      }

      dispatch thunk of AdvertRotationController.currentAdvert.getter();

      sub_10002849C(&unk_10097E360);
      type metadata accessor for MixedMediaLockup();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }

      v45 = v56;
      goto LABEL_28;
    }

    type metadata accessor for EditorialSearchResult();
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v47 = v46;

      sub_1000E2CF8(v47, v3);
    }

    else
    {
      type metadata accessor for InAppPurchaseSearchResult();
      if (swift_dynamicCastClass())
      {
        v48 = InAppPurchaseSearchResult.lockup.getter();
        sub_1000E2F5C(v48, v3);
        goto LABEL_29;
      }

      type metadata accessor for BundleSearchResult();
      if (swift_dynamicCastClass())
      {
        v45 = BundleSearchResult.lockup.getter();
        goto LABEL_28;
      }

      type metadata accessor for LockupCollectionSearchResult();
      v49 = swift_dynamicCastClass();
      if (v49)
      {
        v50 = v49;

        sub_1000E31C0(v50, v3);
      }

      else
      {
        type metadata accessor for AppEventSearchResult();
        v51 = swift_dynamicCastClass();
        if (!v51)
        {
        }

        v52 = v51;
        if ((dispatch thunk of SearchResultsPresenter.shouldDisplayAppEvent(for:)() & 1) == 0)
        {
          v45 = AppEventSearchResult.lockup.getter();
          goto LABEL_28;
        }

        sub_1000E3424(v52, v3);
      }
    }
  }

  v45 = AppSearchResult.lockup.getter();
LABEL_28:
  sub_1000E2A94(v45, v3);
LABEL_29:
}

uint64_t sub_1000DF64C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v14, v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_1000DFB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  if ((*(a3 + 32) & 1) == 0)
  {
    v7 = *(v3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader);
    v8 = *(a2 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView);
    v9 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v10 = *(v8 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v24, v11);

    v12 = *(v8 + v9);
    type metadata accessor for ArtworkView();
    sub_10000770C(&qword_100970E80, &type metadata accessor for ArtworkView);
    v13 = v12;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    v14 = *(a2 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView);
    v15 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
    sub_1004DC1C0(v7, 1, v16);
    AppEventSearchResult.lockup.getter();
    v17 = Lockup.icon.getter();

    if (v17)
    {
      v23 = v14;
      v18 = qword_10096EE80;
      v19 = *(v8 + v9);
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v20, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v19 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v19 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v21 = *(v8 + v9);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v14 = v23;
    }

    v22 = AppEventSearchResult.appEvent.getter();
    sub_1003EEA28(v22, v7, *(v14 + v15));
  }
}

void sub_1000DFE88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  v81 = a6;
  v80 = a5;
  v88 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v79 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for DispatchTime();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v70 - v19;
  type metadata accessor for AdvertSearchResultCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v77 = v12;
    sub_10002A39C(a2, aBlock);
    v23 = a1;
    sub_10002849C(&unk_10097E360);
    type metadata accessor for MixedMediaLockup();
    if (swift_dynamicCast())
    {
      v78 = v23;
      v24 = v90[0];
      sub_10002A39C(a3, aBlock);
      if (swift_dynamicCast())
      {
        v25 = v90[0];

        sub_1000E2A94(v26, v6);
        v74 = v24;

        sub_1000E0A64(v27, v78, v6);
        v75 = v25;

        v28 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
        [*(v6 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
        v71 = v29;
        v76 = [*(v6 + v28) traitCollection];
        v30 = [*(v6 + v28) traitCollection];
        v31 = [v30 horizontalSizeClass];

        v72 = v20;
        if (v31 == 1)
        {
          [*(v6 + v28) pageMarginInsets];
          top = v32;
          left = v34;
          bottom = v36;
          right = v38;
        }

        else
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        v40 = ASKDeviceTypeGetCurrent();
        v73 = v40;
        v70 = *(v6 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_artworkLoader);
        [v22 setUserInteractionEnabled:0];
        v41 = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
        [*&v22[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView] frame];
        v46 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v42, v43, v44, v45}];
        v47 = v75;
        v48 = v76;
        v49 = v40;
        v50 = v81;
        sub_1006C65C8(v75, v76, v49, v81, *&v71, top, left, bottom, right);
        [v46 layoutIfNeeded];
        [*&v22[v41] frame];
        v90[0] = v51;
        v90[1] = v52;
        v90[2] = v53;
        v90[3] = v54;
        v91 = 0;
        sub_1006C89B8(v47, v90, v70, v48);
        v55 = (*&v22[v41] + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation);
        swift_beginAccess();
        v56 = *v55;
        v57 = v55[1];
        sub_10000827C(*v55);
        sub_10068D354(v56, v57);
        sub_10001F63C(v56);
        sub_100005744(0, &qword_1009729E0);
        v71 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        v58 = 333;
        if ((v80 & 1) == 0)
        {
          v58 = 0;
        }

        *v15 = v58;
        v59 = v79;
        (*(v79 + 104))(v15, enum case for DispatchTimeInterval.milliseconds(_:), v13);
        v60 = v72;
        + infix(_:_:)();
        (*(v59 + 8))(v15, v13);
        v82 = *(v82 + 8);
        v61 = v83;
        (v82)(v17, v83);
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        v63[2] = v62;
        v63[3] = v46;
        v63[4] = v50;
        aBlock[4] = sub_1000E4028;
        aBlock[5] = v63;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008B3E70;
        v64 = _Block_copy(aBlock);
        v65 = v46;

        v66 = v77;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10000770C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
        sub_10002849C(&unk_1009729F0);
        sub_1000079A4();
        v67 = v85;
        v68 = v88;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v69 = v71;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v64);

        (*(v87 + 8))(v67, v68);
        (*(v84 + 8))(v66, v86);
        (v82)(v60, v61);
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

id sub_1000E0798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultsCollectionViewDelegate()
{
  result = qword_100973D10;
  if (!qword_100973D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E0920()
{
  sub_1000E0A08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000E0A08()
{
  if (!qword_100973D20)
  {
    type metadata accessor for ImpressionMetrics();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100973D20);
    }
  }
}

uint64_t sub_1000E0A64(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ImpressionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = type metadata accessor for MixedMediaLockup();
  v36[3] = v32;
  v36[4] = sub_10000770C(&qword_100973D38, &type metadata accessor for MixedMediaLockup);
  v36[0] = a1;
  sub_100031660(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_100973D30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10002B894(v10, &qword_100973D30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10002C0AC(v36, v35);
  sub_10000770C(&unk_100973D40, &type metadata accessor for MixedMediaLockup);
  dispatch thunk of ViewModel.impressionMetrics.getter();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      ImpressionsCalculator.addElement(_:at:)();
    }

    [v21 frame];
    v28 = sub_10002A400(v35, v35[3]);
    sub_1000E38EC(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_100007000(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1000E27A4(v19, v25, &type metadata accessor for MixedMediaLockup, &unk_100973D40, &type metadata accessor for MixedMediaLockup);
    swift_getObjectType();
    dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
  }

  return sub_100007000(v36);
}

uint64_t sub_1000E0F44(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ImpressionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = type metadata accessor for EditorialSearchResult();
  v36[3] = v32;
  v36[4] = sub_10000770C(&qword_100973D90, &type metadata accessor for EditorialSearchResult);
  v36[0] = a1;
  sub_100031660(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_100973D30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10002B894(v10, &qword_100973D30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10002C0AC(v36, v35);
  sub_10000770C(&qword_100973D98, &type metadata accessor for EditorialSearchResult);
  dispatch thunk of ViewModel.impressionMetrics.getter();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      ImpressionsCalculator.addElement(_:at:)();
    }

    [v21 frame];
    v28 = sub_10002A400(v35, v35[3]);
    sub_1000E4034(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_100007000(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1000E27A4(v19, v25, &type metadata accessor for EditorialSearchResult, &qword_100973D98, &type metadata accessor for EditorialSearchResult);
    swift_getObjectType();
    dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
  }

  return sub_100007000(v36);
}

uint64_t sub_1000E1424(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ImpressionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = type metadata accessor for InAppPurchaseLockup();
  v36[3] = v32;
  v36[4] = sub_10000770C(&qword_100973DA0, &type metadata accessor for InAppPurchaseLockup);
  v36[0] = a1;
  sub_100031660(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_100973D30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10002B894(v10, &qword_100973D30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10002C0AC(v36, v35);
  sub_10000770C(&qword_100973DA8, &type metadata accessor for InAppPurchaseLockup);
  dispatch thunk of ViewModel.impressionMetrics.getter();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      ImpressionsCalculator.addElement(_:at:)();
    }

    [v21 frame];
    v28 = sub_10002A400(v35, v35[3]);
    sub_1000E4770(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_100007000(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1000E27A4(v19, v25, &type metadata accessor for InAppPurchaseLockup, &qword_100973DA8, &type metadata accessor for InAppPurchaseLockup);
    swift_getObjectType();
    dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
  }

  return sub_100007000(v36);
}

uint64_t sub_1000E1904(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ImpressionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = type metadata accessor for LockupCollectionSearchResult();
  v36[3] = v32;
  v36[4] = sub_10000770C(&qword_100973DB0, &type metadata accessor for LockupCollectionSearchResult);
  v36[0] = a1;
  sub_100031660(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_100973D30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10002B894(v10, &qword_100973D30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10002C0AC(v36, v35);
  sub_10000770C(&qword_100973DB8, &type metadata accessor for LockupCollectionSearchResult);
  dispatch thunk of ViewModel.impressionMetrics.getter();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      ImpressionsCalculator.addElement(_:at:)();
    }

    [v21 frame];
    v28 = sub_10002A400(v35, v35[3]);
    sub_1000E4EAC(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_100007000(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1000E27A4(v19, v25, &type metadata accessor for LockupCollectionSearchResult, &qword_100973DB8, &type metadata accessor for LockupCollectionSearchResult);
    swift_getObjectType();
    dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
  }

  return sub_100007000(v36);
}

uint64_t sub_1000E1DE4(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ImpressionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = type metadata accessor for AppEventSearchResult();
  v36[3] = v32;
  v36[4] = sub_10000770C(&qword_100973DC0, &type metadata accessor for AppEventSearchResult);
  v36[0] = a1;
  sub_100031660(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_100973D30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10002B894(v10, &qword_100973D30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10002C0AC(v36, v35);
  sub_10000770C(&unk_100973DC8, &type metadata accessor for AppEventSearchResult);
  dispatch thunk of ViewModel.impressionMetrics.getter();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      ImpressionsCalculator.addElement(_:at:)();
    }

    [v21 frame];
    v28 = sub_10002A400(v35, v35[3]);
    sub_1000E55E8(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_100007000(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1000E27A4(v19, v25, &type metadata accessor for AppEventSearchResult, &unk_100973DC8, &type metadata accessor for AppEventSearchResult);
    swift_getObjectType();
    dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
  }

  return sub_100007000(v36);
}

uint64_t sub_1000E22C4(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ImpressionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = type metadata accessor for LinkableText();
  v36[3] = v32;
  v36[4] = sub_10000770C(&qword_100973290, &type metadata accessor for LinkableText);
  v36[0] = a1;
  sub_100031660(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &qword_100973D30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10002B894(v10, &qword_100973D30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10002C0AC(v36, v35);
  sub_10000770C(&unk_100973DF0, &type metadata accessor for LinkableText);
  dispatch thunk of ViewModel.impressionMetrics.getter();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10002B894(v7, &qword_100973D30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      ImpressionsCalculator.addElement(_:at:)();
    }

    [v21 frame];
    v28 = sub_10002A400(v35, v35[3]);
    sub_1000E8038(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_100007000(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1000E27A4(v19, v25, &type metadata accessor for LinkableText, &unk_100973DF0, &type metadata accessor for LinkableText);
    swift_getObjectType();
    dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
  }

  return sub_100007000(v36);
}

uint64_t sub_1000E27A4(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v24 = a2;
  v9 = type metadata accessor for ImpressionMetrics.ID();
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for ImpressionMetrics();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  a3(0, v17);
  sub_10000770C(a4, a5);
  dispatch thunk of ViewModel.impressionMetrics.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10002B894(v14, &qword_100973D30);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (*(v24 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      ImpressionsCalculator.addElement(_:at:)();
      ImpressionMetrics.id.getter();
      v20 = ImpressionsCalculator.makeChildCalculator(for:)();
      (*(v22 + 8))(v11, v23);
      (*(v16 + 8))(v19, v15);
      return v20;
    }

    (*(v16 + 8))(v19, v15);
  }

  return 0;
}

uint64_t sub_1000E2A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for MixedMediaLockup();
  v15[4] = sub_10000770C(&qword_100973D38, &type metadata accessor for MixedMediaLockup);
  v15[0] = a1;
  sub_10002C0AC(v15, v14);
  sub_10000770C(&unk_100973D40, &type metadata accessor for MixedMediaLockup);

  dispatch thunk of ViewModel.impressionMetrics.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      ImpressionsCalculator.removeElement(_:)();
    }

    v12 = sub_10002A400(v14, v14[3]);
    sub_1000E5D24(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_100007000(v14);
  return sub_100007000(v15);
}

uint64_t sub_1000E2CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for EditorialSearchResult();
  v15[4] = sub_10000770C(&qword_100973D90, &type metadata accessor for EditorialSearchResult);
  v15[0] = a1;
  sub_10002C0AC(v15, v14);
  sub_10000770C(&qword_100973D98, &type metadata accessor for EditorialSearchResult);

  dispatch thunk of ViewModel.impressionMetrics.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      ImpressionsCalculator.removeElement(_:)();
    }

    v12 = sub_10002A400(v14, v14[3]);
    sub_1000E6424(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_100007000(v14);
  return sub_100007000(v15);
}

uint64_t sub_1000E2F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for InAppPurchaseLockup();
  v15[4] = sub_10000770C(&qword_100973DA0, &type metadata accessor for InAppPurchaseLockup);
  v15[0] = a1;
  sub_10002C0AC(v15, v14);
  sub_10000770C(&qword_100973DA8, &type metadata accessor for InAppPurchaseLockup);

  dispatch thunk of ViewModel.impressionMetrics.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      ImpressionsCalculator.removeElement(_:)();
    }

    v12 = sub_10002A400(v14, v14[3]);
    sub_1000E6B24(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_100007000(v14);
  return sub_100007000(v15);
}

uint64_t sub_1000E31C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for LockupCollectionSearchResult();
  v15[4] = sub_10000770C(&qword_100973DB0, &type metadata accessor for LockupCollectionSearchResult);
  v15[0] = a1;
  sub_10002C0AC(v15, v14);
  sub_10000770C(&qword_100973DB8, &type metadata accessor for LockupCollectionSearchResult);

  dispatch thunk of ViewModel.impressionMetrics.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      ImpressionsCalculator.removeElement(_:)();
    }

    v12 = sub_10002A400(v14, v14[3]);
    sub_1000E7224(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_100007000(v14);
  return sub_100007000(v15);
}

uint64_t sub_1000E3424(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for AppEventSearchResult();
  v15[4] = sub_10000770C(&qword_100973DC0, &type metadata accessor for AppEventSearchResult);
  v15[0] = a1;
  sub_10002C0AC(v15, v14);
  sub_10000770C(&unk_100973DC8, &type metadata accessor for AppEventSearchResult);

  dispatch thunk of ViewModel.impressionMetrics.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      ImpressionsCalculator.removeElement(_:)();
    }

    v12 = sub_10002A400(v14, v14[3]);
    sub_1000E7924(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_100007000(v14);
  return sub_100007000(v15);
}

uint64_t sub_1000E3688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for LinkableText();
  v15[4] = sub_10000770C(&qword_100973290, &type metadata accessor for LinkableText);
  v15[0] = a1;
  sub_10002C0AC(v15, v14);
  sub_10000770C(&unk_100973DF0, &type metadata accessor for LinkableText);

  dispatch thunk of ViewModel.impressionMetrics.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      ImpressionsCalculator.removeElement(_:)();
    }

    v12 = sub_10002A400(v14, v14[3]);
    sub_1000E8920(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_100007000(v14);
  return sub_100007000(v15);
}

uint64_t sub_1000E38EC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for MixedMediaLockup();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973D38, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&unk_100973D40, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E4034(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for EditorialSearchResult();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973D90, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&qword_100973D98, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E4770(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for InAppPurchaseLockup();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973DA0, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&qword_100973DA8, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E4EAC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for LockupCollectionSearchResult();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973DB0, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&qword_100973DB8, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E55E8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for AppEventSearchResult();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973DC0, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&unk_100973DC8, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E5D24(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for MixedMediaLockup();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973D38, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&unk_100973D40, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E6424(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for EditorialSearchResult();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973D90, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&qword_100973D98, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E6B24(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for InAppPurchaseLockup();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973DA0, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&qword_100973DA8, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E7224(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for LockupCollectionSearchResult();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973DB0, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&qword_100973DB8, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E7924(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for AppEventSearchResult();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973DC0, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&unk_100973DC8, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

uint64_t sub_1000E8038(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for LinkableText();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973290, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&unk_100973DF0, &type metadata accessor for LinkableText);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

void sub_1000E8774(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SearchTransparencyView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v17 = a1;
    v12 = dispatch thunk of SearchResultsPresenter.transparencyLink.getter();
    if (v12)
    {
      v13 = v12;
      v14 = LinkableText.linkedSubstrings.getter();
      v15 = sub_1000D6F24(v14, sub_1000C17B0);

      v16 = LinkableText.styledText.getter();
      sub_1002F6004(v16, 0, v15);

      [v11 setNeedsLayout];
      sub_1000E22C4(v13, v17, v3);
    }
  }
}

uint64_t sub_1000E8920(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = type metadata accessor for LinkableText();
  v55[3] = v45;
  v55[4] = sub_10000770C(&qword_100973290, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_10002C0AC(v55, v53);

  sub_10002849C(&qword_100973D50);
  sub_10002849C(&qword_100973D58);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v18 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_100990A90;
        v23 = &unk_1007B5670;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10002C0AC(v20, v53);
          sub_10002A400(v53, v53[3]);
          v26 = v50;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10002B894(v50, &qword_100973D30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10000770C(&unk_100973DF0, &type metadata accessor for LinkableText);
            v28 = v48;
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10002B894(v48, &qword_100973D30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              ImpressionMetrics.id.getter();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = type metadata accessor for ImpressionMetrics.ID();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100031660(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10002B894(v33, v25);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10002B894(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10002B894(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10002B894(v51, &qword_100973D60);
  }

  return sub_100007000(v55);
}

void sub_1000E9034()
{
  v0 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100005644(v15, qword_1009CDE70);
  v16 = sub_1000056A8(v15, qword_1009CDE70);
  if (qword_10096E2F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v3, qword_1009D1850);
  v18 = v4[2];
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_10096E300 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v3, qword_1009D1880);
  v40 = v11;
  v18(v11, v19, v3);
  if (qword_10096E308 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v3, qword_1009D1898);
  v18(v2, v20, v3);
  v21 = v4[7];
  v21(v2, 0, 1, v3);
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_1000056A8(v3, qword_1009D18C8);
  v38 = v8;
  v18(v8, v22, v3);
  if (qword_10096E320 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v3, qword_1009D18E0);
  v18(v42, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v24 = v15[12];
  v25 = v16 + v15[11];
  v21((v16 + v24), 1, 1, v3);
  v26 = v16 + v15[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v16 + v15[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v15[23];
  *(v16 + v28) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v16 + v15[9], v39, v3);
  v29(v16 + v15[10], v40, v3);
  *v25 = 3;
  *(v25 + 8) = 0;
  v30 = v37;
  v31 = v37;
  sub_1000EA918(v41, v16 + v24);
  v29(v16 + v15[13], v38, v3);
  v29(v16 + v15[14], v42, v3);
  *(v16 + v15[15]) = 0x4044000000000000;
  *(v16 + v15[16]) = 0x4024000000000000;
  *(v16 + v15[17]) = 0x4042000000000000;
  *(v16 + v15[18]) = 0x403E000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v32 = *v16;
  *v16 = 0;

  v33 = *(v16 + 8);
  *(v16 + 8) = 0;

  v34 = *(v16 + 16);
  *(v16 + 16) = 0;

  v35 = *(v16 + 24);
  *(v16 + 24) = 0;

  *(v16 + v15[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v16 + v28);
  *(v16 + v28) = v30;

  *(v16 + v15[24]) = 0;
}

void sub_1000E9564()
{
  v0 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100005644(v16, qword_1009CDE88);
  v17 = sub_1000056A8(v16, qword_1009CDE88);
  if (qword_10096E2F0 != -1)
  {
    swift_once();
  }

  v42 = v9;
  v18 = sub_1000056A8(v3, qword_1009D1850);
  v19 = v4[2];
  v39 = v15;
  v19(v15, v18, v3);
  if (qword_10096E310 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v3, qword_1009D18B0);
  v40 = v12;
  v19(v12, v20, v3);
  v21 = v4[7];
  v21(v2, 1, 1, v3);
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_1000056A8(v3, qword_1009D18C8);
  v19(v42, v22, v3);
  if (qword_10096E320 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v3, qword_1009D18E0);
  v19(v6, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  v38 = v6;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v24 = v16[12];
  v25 = v17 + v16[11];
  v21((v17 + v24), 1, 1, v3);
  v26 = v17 + v16[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v17 + v16[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v16[23];
  *(v17 + v28) = 0;
  *(v17 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v17 + v16[9], v39, v3);
  v29(v17 + v16[10], v40, v3);
  *v25 = 0;
  *(v25 + 8) = 1;
  v30 = v37;
  v31 = v37;
  sub_1000EA918(v41, v17 + v24);
  v29(v17 + v16[13], v42, v3);
  v29(v17 + v16[14], v38, v3);
  *(v17 + v16[15]) = 0x4044000000000000;
  *(v17 + v16[16]) = 0x4024000000000000;
  *(v17 + v16[17]) = 0x4045000000000000;
  *(v17 + v16[18]) = 0x403E000000000000;
  *(v17 + v16[19]) = 0x4038000000000000;
  v32 = *v17;
  *v17 = 0;

  v33 = *(v17 + 8);
  *(v17 + 8) = 0;

  v34 = *(v17 + 16);
  *(v17 + 16) = 0;

  v35 = *(v17 + 24);
  *(v17 + 24) = 0;

  *(v17 + v16[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v17 + v28);
  *(v17 + v28) = v30;

  *(v17 + v16[24]) = 0;
}

void sub_1000E9A48(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100005644(v21, a3);
  v22 = sub_1000056A8(v21, a3);
  if (qword_10096E2F0 != -1)
  {
    swift_once();
  }

  v47 = v14;
  v23 = sub_1000056A8(v8, qword_1009D1850);
  v24 = v9[2];
  v44 = v20;
  v24(v20, v23, v8);
  if (qword_10096E2F8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v8, qword_1009D1868);
  v45 = v17;
  v24(v17, v25, v8);
  v26 = v9[7];
  v26(v7, 1, 1, v8);
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v46 = v7;
  v27 = sub_1000056A8(v8, qword_1009D18C8);
  v24(v47, v27, v8);
  if (qword_10096E320 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v8, qword_1009D18E0);
  v24(v11, v28, v8);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = v11;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v29 = v21[12];
  v30 = v22 + v21[11];
  v26((v22 + v29), 1, 1, v8);
  v31 = v22 + v21[21];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v22 + v21[22];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v21[23];
  *(v22 + v33) = 0;
  *(v22 + 32) = 0x4030000000000000;
  v34 = v9[4];
  v34(v22 + v21[9], v44, v8);
  v34(v22 + v21[10], v45, v8);
  *v30 = 0;
  *(v30 + 8) = 1;
  v35 = v42;
  v36 = v42;
  sub_1000EA918(v46, v22 + v29);
  v34(v22 + v21[13], v47, v8);
  v34(v22 + v21[14], v43, v8);
  *(v22 + v21[15]) = a1;
  *(v22 + v21[16]) = 0x403C000000000000;
  *(v22 + v21[17]) = 0x403A000000000000;
  *(v22 + v21[18]) = 0x4038000000000000;
  *(v22 + v21[19]) = 0x4038000000000000;
  v37 = *v22;
  *v22 = 0;

  v38 = *(v22 + 8);
  *(v22 + 8) = 0;

  v39 = *(v22 + 16);
  *(v22 + 16) = 0;

  v40 = *(v22 + 24);
  *(v22 + 24) = 0;

  *(v22 + v21[20]) = 0x4034000000000000;
  *v31 = 0;
  *(v31 + 8) = 1;
  *v32 = 0;
  *(v32 + 8) = 1;
  v41 = *(v22 + v33);
  *(v22 + v33) = v35;

  *(v22 + v21[24]) = 0;
}

void sub_1000E9F1C()
{
  v0 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100005644(v15, qword_1009CDEB8);
  v16 = sub_1000056A8(v15, qword_1009CDEB8);
  if (qword_10096E328 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v3, qword_1009D18F8);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_10096E350 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v3, qword_1009D1970);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_10096E360 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_1000056A8(v3, qword_1009D19A0);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_10096E320 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v3, qword_1009D18E0);
  v18(v43, v22, v3);
  sub_100028BB8();
  v34 = static UIColor.primaryText.getter();
  v35 = static UIColor.primaryText.getter();
  v36 = static UIColor.secondaryText.getter();
  v37 = static UIColor.secondaryText.getter();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1000EA918(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x4042000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x4043800000000000;
  *(v16 + v15[18]) = 0x4041000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

void sub_1000EA41C()
{
  v0 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100005644(v15, qword_1009CDED0);
  v16 = sub_1000056A8(v15, qword_1009CDED0);
  if (qword_10096E328 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v3, qword_1009D18F8);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_10096E358 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v3, qword_1009D1988);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_10096E368 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_1000056A8(v3, qword_1009D19B8);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_10096E320 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v3, qword_1009D18E0);
  v18(v43, v22, v3);
  sub_100028BB8();
  v34 = static UIColor.primaryText.getter();
  v35 = static UIColor.primaryText.getter();
  v36 = static UIColor.secondaryText.getter();
  v37 = static UIColor.secondaryText.getter();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x402A000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1000EA918(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x402A000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x403F000000000000;
  *(v16 + v15[18]) = 0x403A000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

uint64_t sub_1000EA918(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972ED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AXArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  v13 = *(a2 + 16);
  *(a7 + 400) = *a2;
  *(a7 + 416) = v13;
  *(a7 + 432) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 440) = *a3;
  *(a7 + 456) = v14;
  *(a7 + 472) = *(a3 + 32);
  sub_100005A38(a4, a7 + 480);
  sub_100005A38(a5, a7 + 520);

  return sub_100005A38(a6, a7 + 560);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.contentMinimumHeight.setter(__int128 *a1)
{
  sub_100007000(v1);

  return sub_100005A38(a1, v1);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.contentMaximumHeight.setter(__int128 *a1)
{
  sub_100007000(v1 + 40);

  return sub_100005A38(a1, v1 + 40);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.contentTopSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 80);

  return sub_100005A38(a1, v1 + 80);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.detailsTopMargin.setter(__int128 *a1)
{
  sub_100007000(v1 + 120);

  return sub_100005A38(a1, v1 + 120);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.detailsHorizontalMargin.setter(__int128 *a1)
{
  sub_100007000(v1 + 160);

  return sub_100005A38(a1, v1 + 160);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.detailsBottomMargin.setter(__int128 *a1)
{
  sub_100007000(v1 + 200);

  return sub_100005A38(a1, v1 + 200);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.offerButtonHeight.setter(__int128 *a1)
{
  sub_100007000(v1 + 240);

  return sub_100005A38(a1, v1 + 240);
}

void AXArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t AXArcadeSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_100007000(v1 + 320);

  return sub_100005A38(a1, v1 + 320);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 360);

  return sub_100005A38(a1, v1 + 360);
}

double AXArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v3, v3[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v11 = *(v8 + 8);
  v11(v10, v7);
  ObjectType = swift_getObjectType();
  sub_1000ECC50(a1, v3, ObjectType, a2, a3);
  sub_10002A400(v3 + 5, v3[8]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v11(v10, v7);
  return a2;
}

uint64_t AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v80 = a2;
  v81 = type metadata accessor for LayoutRect();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v6 + 10, v6[13]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v73 = v18;
  v19 = *(v15 + 8);
  v19(v17, v14);
  sub_10002A400(v7, v7[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v21 = v20;
  v19(v17, v14);
  sub_10002A400(v7 + 5, v7[8]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  *&v78[0] = v19;
  v19(v17, v14);
  ObjectType = swift_getObjectType();
  v24 = sub_1000ECC50(a1, v6, ObjectType, a5, a6);
  if (v21 > v24)
  {
    v24 = v21;
  }

  if (v24 >= v23)
  {
    v24 = v23;
  }

  v71 = v24;
  sub_10005FC74((v6 + 50), &v87);
  v25 = v89;
  if (v89)
  {
    sub_100005A38(&v87, v82);
    sub_10002A400(v82, v83);
    Measurable.measuredSize(fitting:in:)();
    v27 = v26;
    v29 = v28;
    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    v30 = CGRectGetMidX(v95) + v27 * -0.5;
    v96.origin.x = a3;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    MinY = CGRectGetMinY(v96);
    sub_10002A400(v82, v83);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v82);
  }

  else
  {
    sub_10002B894(&v87, &qword_100975610);
    v30 = 0.0;
    MinY = 0.0;
    v27 = 0.0;
    v29 = 0.0;
  }

  *&v75 = v6 + 35;
  sub_10005FC74((v6 + 55), &v87);
  v74 = a6;
  if (v89)
  {
    sub_100005A38(&v87, v82);
    if (v25)
    {
      v97.origin.x = v30;
      v97.origin.y = MinY;
      v97.size.width = v27;
      v97.size.height = v29;
      MaxY = CGRectGetMaxY(v97);
    }

    else
    {
      v98.origin.x = a3;
      v98.origin.y = a4;
      v98.size.width = a5;
      v98.size.height = a6;
      MaxY = CGRectGetMinY(v98);
    }

    v40 = v73 + MaxY;
    v99.origin.x = a3;
    v99.origin.y = a4;
    v99.size.width = a5;
    v99.size.height = a6;
    MinX = CGRectGetMinX(v99);
    v100.origin.x = a3;
    v100.origin.y = a4;
    v100.size.width = a5;
    v100.size.height = a6;
    Width = CGRectGetWidth(v100);
    sub_10002A400(v82, v83);
    v34 = a5;
    v35 = a4;
    v72 = Width;
    v73 = v40;
    v38 = v71;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v82);
  }

  else
  {
    sub_10002B894(&v87, &qword_100975610);
    if (v25)
    {
      v33 = v30;
    }

    else
    {
      v33 = a3;
    }

    v34 = a5;
    v35 = a4;
    if (v25)
    {
      v36 = MinY;
    }

    else
    {
      v36 = a4;
    }

    if (v25)
    {
      v37 = v27;
    }

    else
    {
      v37 = 0.0;
    }

    v72 = v37;
    v73 = v36;
    if (v25)
    {
      v38 = v29;
    }

    else
    {
      v38 = 0.0;
    }

    MinX = v33;
  }

  v71 = MinX;
  sub_10002A400(v6 + 20, v6[23]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v43 = v42;
  v44 = v78[0];
  (*&v78[0])(v17, v14);
  sub_10002A400(v6 + 15, v6[18]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v46 = v45;
  (*&v44)(v17, v14);
  sub_10002A400(v6 + 25, v6[28]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v48 = v47;
  (*&v44)(v17, v14);
  sub_10002C0AC((v6 + 30), v90);
  v49 = *(v75 + 32);
  v50 = *(v75 + 16);
  *v78 = *v75;
  v75 = v50;
  sub_10002C0AC((v6 + 40), &v93);
  sub_10002C0AC((v6 + 45), &v94);
  *&v87 = v46;
  *(&v87 + 1) = v43;
  v88 = v48;
  v89 = v43;
  v91 = v75;
  *&v90[40] = *v78;
  v92 = v49;
  sub_1000ECFFC(&v87, v82);
  sub_10002C0AC((v6 + 60), &v84);
  sub_10002C0AC((v6 + 65), &v85);
  sub_10002C0AC((v6 + 70), &v86);
  v101.origin.x = a3;
  v101.origin.y = v35;
  v101.size.width = v34;
  v51 = v34;
  v52 = v74;
  v101.size.height = v74;
  v53 = CGRectGetMinX(v101);
  v102.origin.x = MinX;
  v55 = v72;
  v54 = v73;
  v102.origin.y = v73;
  v102.size.width = v72;
  v102.size.height = v38;
  v70 = CGRectGetMaxY(v102);
  v103.origin.x = a3;
  v103.origin.y = v35;
  v103.size.width = v51;
  v103.size.height = v52;
  v56 = CGRectGetWidth(v103);
  v78[0] = a3;
  v104.origin.x = a3;
  v57 = v53;
  v58 = v56;
  *&v75 = v35;
  v104.origin.y = v35;
  v104.size.width = v51;
  v104.size.height = v52;
  v59 = CGRectGetMaxY(v104);
  v105.size.height = v38;
  v60 = v59;
  v105.origin.y = v54;
  v105.size.width = v55;
  v61 = v70;
  v105.origin.x = v71;
  v62 = v60 - CGRectGetMaxY(v105);
  sub_1000ED034(v58, a1, v82);
  v64 = v63;
  v106.origin.x = v57;
  v106.origin.y = v61;
  v106.size.width = v58;
  v106.size.height = v62;
  if (v64 <= CGRectGetHeight(v106))
  {
    v65 = v77;
    sub_1000EB9DC(v77, v57, v61, v58, v62);
  }

  else
  {
    v65 = v77;
    sub_1000EBEE8(a1, v77, v57, v61, v58, v62);
  }

  LayoutRect.origin.getter();
  LayoutRect.size.getter();
  v66 = v78[0];
  v107.origin.x = v78[0];
  v67 = *&v75;
  *&v107.origin.y = v75;
  v107.size.width = v51;
  v107.size.height = v52;
  CGRectGetHeight(v107);
  v108.origin.x = v66;
  v108.origin.y = v67;
  v108.size.width = v51;
  v108.size.height = v52;
  CGRectGetMinX(v108);
  v109.origin.x = v66;
  v109.origin.y = v67;
  v109.size.width = v51;
  v109.size.height = v52;
  CGRectGetMinY(v109);
  v110.origin.x = v66;
  v110.origin.y = v67;
  v110.size.width = v51;
  v110.size.height = v52;
  CGRectGetWidth(v110);
  LayoutRect.init(representing:)();
  (*(v79 + 8))(v65, v81);
  sub_1000ED33C(v82);
  return sub_1000ED36C(&v87);
}

uint64_t sub_1000EB9DC@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v22[3] = a1;
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 8);
  v16 = *(v5 + 24);
  sub_10002A400((v5 + 112), *(v5 + 136));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v22[1] = v17;
  v18 = *(v12 + 8);
  v18(v14, v11);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v19 = CGRectGetWidth(v23) - v15 - v16;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  sub_10002A400(v6 + 24, v6[27]);
  *&v22[2] = v19;
  Measurable.measuredSize(fitting:in:)();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinY(v26);
  sub_10002A400(v6 + 24, v6[27]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxY(v27);
  sub_10002A400(v6 + 19, v6[22]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18(v14, v11);
  sub_10002A400(v6 + 34, v6[37]);
  v20 = dispatch thunk of LayoutView.isHidden.getter();
  sub_10002A400(v6 + 34, v6[37]);
  if ((v20 & 1) == 0)
  {
    Measurable.measuredSize(fitting:in:)();
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetMidX(v28);
    sub_10002A400((v5 + 272), *(v5 + 296));
    CGRect.withLayoutDirection(in:relativeTo:)();
  }

  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + 232), *(v5 + 256));
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_10002A400((v5 + 232), *(v5 + 256));
  }

  else
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetWidth(v29);
    sub_10002A400((v5 + 32), *(v5 + 56));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v18(v14, v11);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    CGRectGetMidX(v30);
    sub_10002A400((v5 + 232), *(v5 + 256));
    CGRect.withLayoutDirection(in:relativeTo:)();
  }

  dispatch thunk of LayoutView.frame.setter();
  return LayoutRect.init(representing:)();
}

uint64_t sub_1000EBEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v60 = a1;
  v66 = a2;
  v83 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v75 = *(v83 - 8);
  v88 = v75;
  __chkstk_darwin(v83);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v65 = type metadata accessor for _VerticalFlowLayout();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v6;
  v61 = *(v6 + 8);
  v21 = v61;
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v98.origin.x = a3;
  v98.origin.y = a4;
  v98.size.width = a5;
  v98.size.height = a6;
  v62 = CGRectGetWidth(v98) - v21 - v24;
  v99.origin.x = a3;
  v99.origin.y = a4;
  v99.size.width = a5;
  v99.size.height = a6;
  CGRectGetWidth(v99);
  sub_10002A400((v6 + 32), *(v6 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v18 + 8))(v20, v17);
  sub_10002849C(&qword_10096FE38);
  v25 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v56 = *(v25 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v58 = 2 * v56;
  v27 = swift_allocObject();
  v84 = xmmword_1007B1E00;
  v59 = v27;
  *(v27 + 16) = xmmword_1007B1E00;
  v68 = v27 + v26;
  v80 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v28 = *(v89 + 104);
  v81 = v89 + 104;
  v82 = v28;
  v28(v15);
  v79 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v29 = v87;
  v30 = *(v87 + 104);
  v77 = v87 + 104;
  v78 = v30;
  v31 = v55;
  v32 = v85;
  v30(v55);
  v96 = &type metadata for CGFloat;
  v97 = &protocol witness table for CGFloat;
  v95 = v22;
  v93 = &type metadata for CGFloat;
  v94 = &protocol witness table for CGFloat;
  v92 = v23;
  v76 = sub_10002849C(&unk_10097E8A0);
  v67 = *(v75 + 72);
  v33 = v88;
  v75 = *(v88 + 80);
  v54 = (v75 + 32) & ~v75;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v91 = v34;
  v73 = sub_1000ED7E4();
  v72 = sub_10002849C(&unk_10097E8B0);
  v74 = sub_1000ED83C();
  v35 = v57;
  v36 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v52;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v38 = *(v33 + 8);
  v88 = v33 + 8;
  v69 = v38;
  v39 = v35;
  v38(v35, v36);
  v40 = *(v29 + 8);
  v87 = v29 + 8;
  v71 = v40;
  v40(v31, v32);
  v41 = *(v89 + 8);
  v89 += 8;
  v70 = v41;
  v42 = v86;
  v41(v37, v86);
  sub_10002B894(&v92, &qword_1009799E0);
  sub_100007000(&v95);
  sub_10002A400((v7 + 232), *(v7 + 256));
  LayoutView.withMeasurements(representing:)();
  v82(v37, v80, v42);
  v78(v31, v79, v32);
  v53 = type metadata accessor for ZeroDimension();
  v93 = v53;
  v94 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v92);
  static ZeroDimension.zero.getter();
  sub_10002C0AC(v7 + 112, &v91);
  v43 = swift_allocObject();
  *(v43 + 16) = v84;
  static _VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v90 = v43;
  v44 = v39;
  v45 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v69(v44, v45);
  sub_10002B894(&v91, &qword_1009799E0);
  v46 = v85;
  v71(v31, v85);
  v47 = v86;
  v70(v37, v86);
  sub_100007000(&v95);
  sub_100007000(&v92);
  v82(v37, v80, v47);
  v78(v31, v79, v46);
  v96 = v53;
  v97 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v95);
  static ZeroDimension.zero.getter();
  sub_10002C0AC(v7 + 152, &v92);
  v48 = swift_allocObject();
  *(v48 + 16) = v84;
  static _VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v91 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v69(v44, v45);
  sub_10002B894(&v92, &qword_1009799E0);
  v71(v31, v85);
  v70(v37, v86);
  sub_100007000(&v95);
  v49 = v63;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v100.origin.x = a3;
  v100.origin.y = a4;
  v100.size.width = a5;
  v100.size.height = a6;
  CGRectGetMinX(v100);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetMinY(v101);
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetHeight(v102);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)();
  return (*(v64 + 8))(v49, v65);
}

uint64_t sub_1000ECAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  swift_getObjectType();
  sub_1000ED034(a5, a1, v6);
  v14 = v13;
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (v14 <= CGRectGetHeight(v17))
  {

    return sub_1000EB9DC(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_1000EBEE8(a1, a2, a3, a4, a5, a6);
  }
}

double sub_1000ECBF4(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1000ED034(a2, a1, v2);
}

double sub_1000ECC50(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v34 = a3;
  *&v33 = a2 + 35;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v32 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 20, a2[23]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  sub_10002A400(a2 + 15, a2[18]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v16 = a1;
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  v19 = v32;
  v15(v12, v32);
  sub_10002A400(a2 + 25, a2[28]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v21 = v20;
  v15(v12, v19);
  sub_10002C0AC((a2 + 30), v43);
  v22 = *(v33 + 32);
  v23 = *(v33 + 16);
  v31 = *v33;
  v33 = v23;
  sub_10002C0AC((a2 + 40), &v46);
  sub_10002C0AC((a2 + 45), &v47);
  v42[0] = v18;
  v42[1] = v14;
  v42[2] = v21;
  v42[3] = v14;
  v44 = v33;
  *&v43[40] = v31;
  v45 = v22;
  sub_1000ECFFC(v42, v38);
  sub_10002C0AC((a2 + 60), &v39);
  sub_10002C0AC((a2 + 65), &v40);
  sub_10002C0AC((a2 + 70), &v41);
  sub_10002A400(a2 + 10, a2[13]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v25 = v24;
  v15(v12, v19);
  sub_1000ED034(a4, v16, v38);
  v27 = a5 - v25 - v26;
  sub_10005FC74((a2 + 50), &v35);
  if (v36)
  {
    sub_100005A38(&v35, v37);
    sub_10002A400(v37, v37[3]);
    Measurable.measuredSize(fitting:in:)();
    v29 = v28;
    sub_1000ED33C(v38);
    sub_1000ED36C(v42);
    v27 = v27 - v29;
    sub_100007000(v37);
  }

  else
  {
    sub_1000ED33C(v38);
    sub_1000ED36C(v42);
    sub_10002B894(&v35, &qword_100975610);
  }

  return v27;
}

double sub_1000ED034(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a3 + 24, a3[27]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a3 + 19, a3[22]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10002A400(a3 + 29, a3[32]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 4, a3[7]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v9(v8, v5);
  }

  sub_10002A400(a3 + 34, a3[37]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 34, a3[37]);
    Measurable.measuredSize(fitting:in:)();
  }

  sub_10002A400(a3 + 29, a3[32]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 34, a3[37]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a3 + 14, a3[17]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_1000ED39C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000ED3BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
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

uint64_t sub_1000ED404(uint64_t result, int a2, int a3)
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
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000ED4F8(uint64_t a1, int a2)
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

uint64_t sub_1000ED540(uint64_t result, int a2, int a3)
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

uint64_t sub_1000ED600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_1000ED648(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000ED6E8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000ED71C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1000ED764(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_1000ED7E4()
{
  result = qword_100973E00;
  if (!qword_100973E00)
  {
    type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973E00);
  }

  return result;
}

unint64_t sub_1000ED83C()
{
  result = qword_100973E08;
  if (!qword_100973E08)
  {
    sub_10002D1A8(&unk_10097E8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973E08);
  }

  return result;
}

void sub_1000ED8A0()
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSLogger();
  sub_1000056A8(v2, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x2074736554;
  v3._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v4 = PerformanceTestCase.name.getter();
  v9[3] = &type metadata for String;
  v9[0] = v4;
  v9[1] = v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v9);
  v6._object = 0x8000000100801370;
  v6._countAndFlagsBits = 0xD000000000000046;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  PerformanceTestCase.name.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = PerformanceTestCase.scrollIterations.getter();
  [v0 _performScrollTest:v7 iterations:v8 delta:PerformanceTestCase.scrollDelta.getter()];
}

void UIScrollView.perform(_:using:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PerformanceTestCase();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PerformanceTestType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = objc_opt_self();
  if ([v50 isRecapAvailable] && (v52 = a1, v16 = PerformanceTestCase.useNatural.getter(), v17 = v52, (v16 & 1) != 0))
  {
    PerformanceTestCase.type.getter();
    v18 = (*(v13 + 88))(v15, v12);
    if (v18 == enum case for PerformanceTestType.scroll(_:))
    {
      PerformanceTestCase.name.getter();
      (*(v9 + 16))(&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v8);
      v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v20 = swift_allocObject();
      (*(v9 + 32))(v20 + v19, v11, v8);
      v21 = objc_allocWithZone(RPTScrollViewTestParameters);
      v22 = String._bridgeToObjectiveC()();

      v57 = sub_1000EE824;
      v58 = v20;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_100007A08;
      v56 = &unk_1008B41D8;
      v23 = _Block_copy(&aBlock);

      v24 = [v21 initWithTestName:v22 scrollView:v3 completionHandler:v23];
      _Block_release(v23);

      [v24 setIterationDurationFactor:0.8];
      PerformanceTestCase.name.getter();
      v25._countAndFlagsBits = 0xD000000000000013;
      v25._object = 0x80000001008012D0;
      LOBYTE(v23) = String.hasPrefix(_:)(v25);

      [v24 direction];
      RPTAxisFromScrollDirection();
      if (v23)
      {
        _RPTAmplitudeFromPagesOfView();
        v27 = v26;
        [v24 scrollingContentLength];
        if (v28 >= v27)
        {
          v28 = v27;
        }
      }

      else
      {
        _RPTAmplitudeFromPagesOfView();
      }

      [v24 setScrollingContentLength:v28];
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for OSLogger();
      sub_1000056A8(v44, qword_1009CE278);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v45._countAndFlagsBits = 0x2074736554;
      v45._object = 0xE500000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      v46 = PerformanceTestCase.name.getter();
      v56 = &type metadata for String;
      aBlock = v46;
      v54 = v47;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(&aBlock);
      v48._object = 0x80000001008012F0;
      v48._countAndFlagsBits = 0xD000000000000036;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      [v50 runTestWithParameters:v24];
    }

    else if (v18 == enum case for PerformanceTestType.resize(_:))
    {
      v29 = [v3 window];
      if (v29)
      {
        v30 = v29;
        v31 = v52;
        PerformanceTestCase.name.getter();
        (*(v9 + 16))(&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v8);
        v32 = (*(v9 + 80) + 16) & ~*(v9 + 80);
        v33 = swift_allocObject();
        (*(v9 + 32))(v33 + v32, v11, v8);
        v34 = objc_allocWithZone(RPTResizeTestParameters);
        v35 = v30;
        v36 = String._bridgeToObjectiveC()();

        v57 = sub_1000EE7E8;
        v58 = v33;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_100007A08;
        v56 = &unk_1008B4188;
        v37 = _Block_copy(&aBlock);

        v38 = [v34 initWithTestName:v36 window:v35 completionHandler:v37];
        _Block_release(v37);

        if (qword_10096D140 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for OSLogger();
        sub_1000056A8(v39, qword_1009CE278);
        sub_10002849C(&unk_100972A10);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v40._countAndFlagsBits = 0x2074736554;
        v40._object = 0xE500000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v40);
        v41 = PerformanceTestCase.name.getter();
        v56 = &type metadata for String;
        aBlock = v41;
        v54 = v42;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10003D444(&aBlock);
        v43._object = 0x8000000100801290;
        v43._countAndFlagsBits = 0xD000000000000036;
        LogMessage.StringInterpolation.appendLiteral(_:)(v43);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        [v50 runTestWithParameters:v38];
      }

      else
      {
        sub_10002A400(a2, a2[3]);
        dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }
  }

  else
  {

    sub_1000ED8A0();
  }
}

uint64_t sub_1000EE3F8()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x2074736554;
  v2._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  v3 = PerformanceTestCase.name.getter();
  v7[3] = &type metadata for String;
  v7[0] = v3;
  v7[1] = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v7);
  v5._object = 0x8000000100801330;
  v5._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
}

uint64_t sub_1000EE5F0()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x2074736554;
  v2._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  v3 = PerformanceTestCase.name.getter();
  v7[3] = &type metadata for String;
  v7[0] = v3;
  v7[1] = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v7);
  v5._object = 0x8000000100801350;
  v5._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
}

uint64_t sub_1000EE83C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000EE8B8()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_1009CDEE8);
  sub_1000056A8(v4, qword_1009CDEE8);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000EEA14(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000EFCE4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B42F0;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_1000EECB0(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArcadeStateChange();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  v23 = static OS_dispatch_queue.main.getter();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  v18 = v24;
  v17 = v25;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_1000EFBE4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B42A0;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v28 + 8))(v6, v4);
  return (*(v26 + 8))(v9, v27);
}

uint64_t sub_1000EF030(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_10002849C(&qword_100973ED0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = type metadata accessor for ArcadeState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  ArcadeStateChange.newState.getter();
  v17 = ArcadeState.isSubscribed.getter();
  v18 = objc_allocWithZone(IAMValueEvent);
  v19 = String._bridgeToObjectiveC()();
  v35 = v17 & 1;
  v20 = [v18 initWithName:v19 value:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), v32, v33}];
  swift_unknownObjectRelease();

  [a2 receiveEvent:v20];
  LOBYTE(v19) = ArcadeState.isTrialAvailable.getter();
  v21 = objc_allocWithZone(IAMValueEvent);
  v22 = String._bridgeToObjectiveC()();
  v35 = v19 & 1;
  v23 = [v21 initWithName:v22 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v24 = v34;
  [a2 receiveEvent:v23];

  ArcadeStateChange.oldState.getter();
  ArcadeStateChange.newState.getter();
  v25 = (v24 + *(v5 + 56));
  v26 = *(v8 + 32);
  v26(v24, v13, v7);
  v26(v25, v10, v7);
  v27 = *(v8 + 88);
  if (v27(v24, v7) == enum case for ArcadeState.purchasing(_:) && v27(v25, v7) == enum case for ArcadeState.subscribed(_:))
  {
    (*(v8 + 96))(v25, v7);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100293000();
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    else
    {
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    v30 = *(sub_10002849C(&qword_100973ED8) + 48);
    v31 = type metadata accessor for ArcadeTrialEnrolledState();
    (*(*(v31 - 8) + 8))(v25 + v30, v31);
    return (v28)(v24, v7);
  }

  else
  {
    (*(v8 + 8))(v16, v7);
    return sub_1000EFC7C(v24);
  }
}

void sub_1000EF498()
{
  v1 = v0;
  v2 = type metadata accessor for FamilyCircleLookupTask();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B48F0;
  v7 = type metadata accessor for InAppMessagesGroup();
  v8 = objc_allocWithZone(v7);
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  ASKBagContract.appStoreMessageGroupIdentifier.getter();
  v9 = String._bridgeToObjectiveC()();

  v18.receiver = v8;
  v18.super_class = v7;
  v10 = objc_msgSendSuper2(&v18, "initWithGroupIdentifier:", v9);

  *(inited + 32) = v10;
  *(inited + 40) = [objc_allocWithZone(FAFamilyMessageGroup) init];
  *(inited + 48) = [objc_allocWithZone(AMSUIMessageGroup) init];
  sub_1000838D8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = *(v0 + 16);
  v12 = *(v1 + 24);
  sub_100005744(0, &qword_1009726E8);
  sub_1000EFCF4();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v11 startWithApplicationContext:v12 messageGroups:isa];

  FamilyCircleLookupTask.init()();
  FamilyCircleLookupTask.perform()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_100005744(0, &qword_1009729E0);
  v15 = static OS_dispatch_queue.main.getter();
  v17[3] = v14;
  v17[4] = &protocol witness table for OS_dispatch_queue;
  v17[0] = v15;
  Promise.then(perform:orCatchError:on:)();

  (*(v3 + 8))(v5, v2);
  sub_100007000(v17);
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v12 selector:"familyInfoDidChange" name:FAFamilyUpdateNotification object:0];
}