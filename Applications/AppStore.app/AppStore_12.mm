void sub_10014D46C()
{
  sub_10014D628(319, qword_100984200, sub_100028BB8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FontUseCase();
    if (v1 <= 0x3F)
    {
      sub_10014D5D8();
      if (v2 <= 0x3F)
      {
        sub_10014D628(319, &qword_100975E40, &type metadata accessor for FontUseCase);
        if (v3 <= 0x3F)
        {
          sub_10014D628(319, &unk_100975E48, type metadata accessor for UIContentSizeCategory);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10014D5D8()
{
  if (!qword_100975E38)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100975E38);
    }
  }
}

void sub_10014D628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10014D67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975EC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10014D6EC(uint64_t a1, char *a2)
{
  v46 = a1;
  v3 = sub_10002849C(&qword_100975EC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_10002849C(&unk_1009732B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BreakoutDetailsLayout.Metrics();
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for BreakoutDetailsLayout();
  v16 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v7 + 16))(v9, &a2[v19], v6);
  v65 = a2;
  v20 = a2;
  Conditional.evaluate(with:)();
  (*(v7 + 8))(v9, v6);

  sub_100149418();
  sub_100146D98(v12, v15);
  sub_1000C266C(v12);
  v21 = *&v20[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel];
  v22 = type metadata accessor for CappedSizeDynamicTypeLabel();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v20[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v20[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
  if (v24)
  {
    v25 = &protocol witness table for UILabel;
    v26 = *&v20[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v26 = 0;
    v22 = 0;
    v25 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v26;
  v60 = v22;
  v61 = v25;
  v27 = *&v20[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark];
  if (v27)
  {
    v28 = type metadata accessor for WordmarkView();
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v54 = 0;
    v53 = 0;
  }

  v52 = v27;
  v55 = v28;
  v56 = v29;
  v30 = *&v20[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton];
  v31 = v24;
  v32 = v27;
  v33 = v21;
  v34 = v23;
  v35 = [v30 titleForState:0];
  if (v35)
  {

    v36 = type metadata accessor for CappedSizeDynamicTypeButton();
    v35 = v30;
    v37 = &protocol witness table for UIView;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v49 = 0;
    v48 = 0;
  }

  v47 = v35;
  v50 = v36;
  v51 = v37;
  BreakoutDetailsLayout.init(metrics:titleLabel:descriptionLabel:badgeText:badgeWordmark:callToActionButton:)();
  BreakoutDetailsLayout.measurements(fitting:in:)();
  v39 = v38;
  (*(v16 + 8))(v18, v45);
  v40 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100031660(&v20[v40], v5, &qword_100975EC8);
  v41 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v5, 1, v41) == 1)
  {
    sub_10002B894(v5, &qword_100975EC8);
  }

  else
  {
    (*(v42 + 88))(v5, v41);
    (*(v42 + 8))(v5, v41);
  }

  return v39;
}

uint64_t sub_10014DC88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10014DCD0()
{
  v1 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  v2 = enum case for BreakoutDetails.Badge.none(_:);
  v3 = type metadata accessor for BreakoutDetails.Badge();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badgeWordmark) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailTextAlignment;
  v6 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v7 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  v9 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10014DED8(uint64_t a1)
{
  v191 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  v171 = *(v191 - 8);
  __chkstk_darwin(v191);
  v172 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlatformSelectorViewLayout();
  v176 = *(v4 - 8);
  __chkstk_darwin(v4);
  v175 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DirectionalTextAlignment();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v169 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v166 = &v152 - v8;
  v174 = type metadata accessor for BadgeDisplayStyle();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v182 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v152 - v11;
  __chkstk_darwin(v12);
  v161 = &v152 - v13;
  v165 = type metadata accessor for FloatingPointRoundingRule();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for PageGrid();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v162 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v188 = &v152 - v17;
  v196 = type metadata accessor for ProductMedia.DescriptionPlacement();
  v198 = *(v196 - 8);
  __chkstk_darwin(v196);
  v185 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v177 = (&v152 - v20);
  __chkstk_darwin(v21);
  v194 = &v152 - v22;
  v181 = type metadata accessor for Shelf.ContentType();
  v180 = *(v181 - 1);
  __chkstk_darwin(v181);
  v155 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v24);
  v192 = &v152 - v25;
  v26 = sub_10002849C(&unk_1009731F0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v178 = &v152 - v28;
  v29 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v29);
  v31 = &v152 - v30;
  v32 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v32 - 8);
  v34 = &v152 - v33;
  v35 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v35 - 8);
  v159 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v179 = &v152 - v38;
  __chkstk_darwin(v39);
  v187 = &v152 - v40;
  type metadata accessor for ProductMedia();
  sub_100150108(&qword_1009717E8, &type metadata accessor for ProductMedia);
  v41 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v42 = v203;
  if (!v203)
  {
    return 0.0;
  }

  v158 = v24;
  v154 = v4;
  v184 = ProductMedia.platform.getter();
  v195 = ProductMedia.allPlatforms.getter();
  v153 = ProductMedia.platformDescription.getter();
  v160 = v43;
  v183 = v42;
  v156 = ProductMedia.allPlatformsDescription.getter();
  v186 = v44;
  v197 = sub_100079F24();
  swift_getKeyPath();
  v193 = v41;
  ItemLayoutContext.subscript.getter();

  sub_100094E74(&v31[*(v29 + 48)], v34);
  v45 = v27;
  v46 = v26;
  if ((*(v27 + 48))(v34, 1, v26) == 1)
  {
    sub_10002B894(v31, &unk_10098FFB0);
    sub_10002B894(v34, &unk_10098FFB0);
    v47 = v180;
    v48 = v187;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v187, 1, 1, v181);
  }

  else
  {
    swift_getKeyPath();
    v48 = v187;
    ReadOnlyLens.subscript.getter();

    (*(v27 + 8))(v34, v26);
    v47 = v180;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v48, 0, 1, v181);
    sub_10002B894(v31, &unk_10098FFB0);
  }

  swift_getKeyPath();
  v50 = v178;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  v51 = v179;
  ReadOnlyLens.subscript.getter();

  (*(v45 + 8))(v50, v46);
  v52 = v51;
  v157(v51, 0, 1, v49);
  v53 = *(v158 + 48);
  v54 = v192;
  sub_100094EE4(v48, v192);
  sub_100094EE4(v52, &v54[v53]);
  v55 = *(v47 + 48);
  v56 = v55(v54, 1, v49);
  v181 = (v195 >> 62);
  v57 = v48;
  v58 = v197;
  if (v56 != 1)
  {
    v64 = v159;
    sub_100094EE4(v54, v159);
    v65 = v55(&v54[v53], 1, v49);
    v61 = v196;
    if (v65 != 1)
    {
      v74 = v155;
      (*(v47 + 32))(v155, &v54[v53], v49);
      sub_100150108(&qword_100972720, &type metadata accessor for Shelf.ContentType);
      LODWORD(v180) = dispatch thunk of static Equatable.== infix(_:_:)();
      v75 = *(v47 + 8);
      v75(v74, v49);
      sub_10002B894(v52, &unk_100992460);
      sub_10002B894(v187, &unk_100992460);
      v61 = v196;
      v75(v64, v49);
      sub_10002B894(v54, &unk_100992460);
      v62 = v195;
      v63 = v181;
      if (v180)
      {
        goto LABEL_22;
      }

LABEL_11:
      v66 = v184;
      if (v63)
      {
        v67 = _CocoaArrayWrapper.endIndex.getter();
        if (v67)
        {
LABEL_13:
          v68 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          else if ((v62 & 0xC000000000000001) == 0)
          {
            if ((v68 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v68 < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v69 = *(v62 + 8 * v68 + 32);

              v203 = v66;
              if (v69)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_94;
          }

          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v203 = v66;
          if (v69)
          {
LABEL_18:
            v199 = v69;
            type metadata accessor for MediaPlatform();
            sub_100150108(&qword_100975F18, &type metadata accessor for MediaPlatform);
            v70 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (!v63)
            {
              v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v72 = v71 != 1;
              if (v70)
              {
LABEL_39:
                v76 = 0;
                goto LABEL_40;
              }

              goto LABEL_20;
            }

LABEL_38:
            v71 = _CocoaArrayWrapper.endIndex.getter();
            v72 = v71 != 1;
            if (v70)
            {
              goto LABEL_39;
            }

LABEL_20:
            v73 = v72;
            v66 = v184;
            goto LABEL_29;
          }

LABEL_27:

          if (!v63)
          {
            v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v73 = v71 != 1;
LABEL_29:
            if (v63)
            {
              v77 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v77 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v78 = v198;
            p_base_meths = v177;
            if (v77)
            {
              v76 = v73;
              if ((v62 & 0xC000000000000001) != 0)
              {

                v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v203 = v66;
                if (v80)
                {
LABEL_35:
                  v199 = v80;
                  type metadata accessor for MediaPlatform();
                  sub_100150108(&qword_100975F18, &type metadata accessor for MediaPlatform);
                  v81 = dispatch thunk of static Equatable.== infix(_:_:)();

                  if (v81)
                  {
                    goto LABEL_41;
                  }

                  swift_unknownObjectRelease();

                  goto LABEL_85;
                }
              }

              else
              {
                if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_98;
                }

                v80 = *(v62 + 32);

                v203 = v66;
                if (v80)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {

              v203 = v66;
            }

            swift_unknownObjectRelease();

LABEL_85:

            return 0.0;
          }

          v70 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v67 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
          goto LABEL_13;
        }
      }

      v203 = v66;
      goto LABEL_27;
    }

    sub_10002B894(v52, &unk_100992460);
    v59 = v192;
    sub_10002B894(v187, &unk_100992460);
    (*(v47 + 8))(v64, v49);
    v62 = v195;
LABEL_10:
    sub_10002B894(v59, &qword_100975F10);
    v63 = v181;
    goto LABEL_11;
  }

  sub_10002B894(v52, &unk_100992460);
  v59 = v192;
  sub_10002B894(v57, &unk_100992460);
  v60 = v55(&v59[v53], 1, v49);
  v61 = v196;
  v62 = v195;
  if (v60 != 1)
  {
    goto LABEL_10;
  }

  sub_10002B894(v59, &unk_100992460);
  v63 = v181;
LABEL_22:
  v70 = 1;
  if ((v62 & 0x8000000000000000) != 0 || (v62 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v76 = 0;
  v71 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  v78 = v198;
  p_base_meths = v177;
LABEL_41:
  ProductMedia.descriptionPlacement(when:)();
  v82 = *(v78 + 104);
  v187 = (v78 + 104);
  v181 = v82;
  (v82)(p_base_meths, enum case for ProductMedia.DescriptionPlacement.top(_:), v61);
  v83 = sub_100150108(&qword_100975F20, &type metadata accessor for ProductMedia.DescriptionPlacement);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v180 = v83;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v179 = v71;
  if (v203 == v199 && v204 == v200)
  {
    v84 = 1;
  }

  else
  {
    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v85 = *(v78 + 8);
  (v85)(p_base_meths, v61);

  v1 = 0.0;
  p_base_meths = &TabPlaceholderViewController.base_meths;
  v198 = v78 + 8;
  v192 = v85;
  if ((v84 & 1) == 0)
  {
    goto LABEL_61;
  }

  v177 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v86 = v188;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v189 + 8))(v86, v190);
  LODWORD(v178) = v76;
  if (v76)
  {
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    [qword_1009738D0 size];
  }

  else if (v179 > 1)
  {
    type metadata accessor for MediaPlatform();
    sub_10002849C(&qword_100973210);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1007B0B70;
    *(v87 + 32) = v184;

    v63 = static MediaPlatform.systemImages(platforms:)();

    v159 = v153;
    goto LABEL_53;
  }

  type metadata accessor for MediaPlatform();
  v63 = static MediaPlatform.systemImages(platforms:)();
  v159 = v156;
LABEL_53:
  v195 = v62;

  if (qword_10096CFD0 != -1)
  {
LABEL_94:
    swift_once();
  }

  v88 = sub_1000056A8(v191, qword_1009738D8);
  PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
  sub_10002A400(&v203, v205);
  swift_getObjectType();
  v89 = v163;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v91 = v90;
  (*(v164 + 8))(v89, v165);
  sub_1000CAA9C(v63, v91);
  sub_100007000(&v203);
  if (v63 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v92 = v197;
  static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
  v93 = sub_1000CA78C(v63, v92);

  v177 = v93;
  v94 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for FontUseCase();
  v96 = sub_1000056A8(v95, qword_1009D0A58);
  v97 = *(v95 - 8);
  v98 = v166;
  (*(v97 + 16))(v166, v96, v95);
  (*(v97 + 56))(v98, 0, 1, v95);
  (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
  v99 = type metadata accessor for DynamicTypeLabel();
  v100 = objc_allocWithZone(v99);
  v101 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  [v101 setAttributedText:v94];
  v159 = v94;
  if (qword_10096CFC8 != -1)
  {
    swift_once();
  }

  [qword_1009738D0 size];
  v102 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v103 = LayoutViewPlaceholder.init(representing:)();
  (*(v171 + 16))(v172, v88, v191);
  v104 = v173;
  v105 = v161;
  v106 = v174;
  (*(v173 + 16))(v170, v161, v174);
  v205 = v99;
  v206 = &protocol witness table for UILabel;
  v203 = v101;
  v201 = v102;
  v202 = &protocol witness table for LayoutViewPlaceholder;
  v199 = v103;
  v107 = v101;

  v108 = v175;
  PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
  v58 = v197;
  [v197 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_100150108(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout);
  v109 = v154;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v1 = v110;

  (*(v176 + 8))(v108, v109);
  (*(v104 + 8))(v105, v106);
  v61 = v196;
  v85 = v192;
  v76 = v178;
  p_base_meths = &TabPlaceholderViewController.base_meths;
LABEL_61:
  (v181)(v185, enum case for ProductMedia.DescriptionPlacement.bottom(_:), v61);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v203 == v199 && v204 == v200)
  {
    (v85)(v185, v61);

    goto LABEL_65;
  }

  v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (v85)(v185, v61);

  if (v111)
  {
LABEL_65:
    type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v112 = v188;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v189 + 8))(v112, v190);
    if (!v76)
    {
      if (v179 > 1)
      {

        type metadata accessor for MediaPlatform();
        sub_10002849C(&qword_100973210);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1007B0B70;
        *(v113 + 32) = v184;

        v114 = static MediaPlatform.systemImages(platforms:)();
        v156 = v153;
LABEL_71:

        if (p_base_meths[506] != -1)
        {
          swift_once();
        }

        v115 = sub_1000056A8(v191, qword_1009738D8);
        PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
        sub_10002A400(&v203, v205);
        swift_getObjectType();
        v116 = v163;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v118 = v117;
        (*(v164 + 8))(v116, v165);
        sub_1000CAA9C(v114, v118);
        sub_100007000(&v203);
        if (v114 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
        v119 = sub_1000CA78C(v114, v58);

        v195 = v119;
        v120 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
        if (qword_10096DE48 != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for FontUseCase();
        v122 = sub_1000056A8(v121, qword_1009D0A58);
        v123 = *(v121 - 8);
        v124 = v166;
        (*(v123 + 16))(v166, v122, v121);
        (*(v123 + 56))(v124, 0, 1, v121);
        (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
        v125 = type metadata accessor for DynamicTypeLabel();
        v126 = objc_allocWithZone(v125);
        v127 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
        [v127 setAttributedText:v120];
        v187 = v120;
        if (qword_10096CFC8 != -1)
        {
          swift_once();
        }

        [qword_1009738D0 size];
        v128 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v129 = LayoutViewPlaceholder.init(representing:)();
        (*(v171 + 16))(v172, v115, v191);
        v130 = v173;
        v131 = v182;
        v132 = v174;
        (*(v173 + 16))(v170, v182, v174);
        v205 = v125;
        v206 = &protocol witness table for UILabel;
        v203 = v127;
        v201 = v128;
        v202 = &protocol witness table for LayoutViewPlaceholder;
        v199 = v129;
        v133 = v127;

        v134 = v175;
        PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
        [v197 pageMarginInsets];
        CGSize.subtracting(insets:)();
        sub_100150108(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout);
        v135 = v154;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        CGSize.adding(outsets:)();
        v137 = v136;

        (*(v176 + 8))(v134, v135);
        (*(v130 + 8))(v131, v132);
        goto LABEL_81;
      }

LABEL_70:
      type metadata accessor for MediaPlatform();
      v114 = static MediaPlatform.systemImages(platforms:)();
      goto LABEL_71;
    }

    if (qword_10096CFC8 == -1)
    {
LABEL_67:
      [qword_1009738D0 size];
      goto LABEL_70;
    }

LABEL_98:
    swift_once();
    goto LABEL_67;
  }

  v137 = 0.0;
  v186 = v160;
LABEL_81:

  LODWORD(v195) = v1 > 0.0;
  LODWORD(v191) = v137 > 0.0;
  v138 = sub_100079F24();
  swift_getKeyPath();
  v139 = v188;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v141 = v140;
  v142 = *(v189 + 8);
  v143 = v190;
  v142(v139, v190);
  swift_getKeyPath();
  v144 = v162;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v146 = v145;
  v142(v144, v143);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v148 = v147;
  v142(v139, v143);
  sub_10057C46C(v183, v195, v191, v138, v1, v137, v141, v146, v148);
  v150 = v149;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (v192)(v194, v196);
  return v150;
}

uint64_t sub_100150108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015015C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1001501A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10015020C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100150254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001502C4()
{
  result = qword_100974778;
  if (!qword_100974778)
  {
    type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974778);
  }

  return result;
}

double sub_10015031C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  v4 = ShelfLayoutContext.traitCollection.getter();
  sub_10003B5FC(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppEventCardLayout.Metrics.notifyMePadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 24);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 28);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 32);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 36);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 40);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:notifyMePadding:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  sub_100005A38(a1, a8);
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v16 = v15[5];
  v17 = type metadata accessor for AspectRatio();
  (*(*(v17 - 8) + 32))(a8 + v16, a2, v17);
  sub_100005A38(a3, a8 + v15[6]);
  sub_100005A38(a4, a8 + v15[7]);
  sub_100005A38(a5, a8 + v15[8]);
  sub_100005A38(a6, a8 + v15[9]);
  v18 = a8 + v15[10];

  return sub_100005A38(a7, v18);
}

uint64_t sub_100150A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AppEventCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:videoView:gradientBlurView:notifyMeButton:kindLabel:titleLabel:subtitleLabel:separatorView:lockupContainerView:lockupView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100151060(a1, a9);
  v22 = type metadata accessor for AppEventCardLayout(0);
  sub_100005A38(a2, a9 + v22[5]);
  sub_100005A38(a3, a9 + v22[6]);
  sub_100005A38(a4, a9 + v22[7]);
  sub_100005A38(a5, a9 + v22[8]);
  sub_100005A38(a6, a9 + v22[9]);
  v23 = a9 + v22[10];
  v24 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a7 + 32);
  v25 = a9 + v22[11];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a8 + 32);
  v27 = a9 + v22[12];
  v28 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a10 + 32);
  sub_100005A38(a11, a9 + v22[13]);
  sub_100005A38(a12, a9 + v22[14]);
  v29 = a9 + v22[15];
  v30 = *(a13 + 16);
  *v29 = *a13;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a13 + 32);
  v31 = a9 + v22[16];
  v32 = *(a14 + 16);
  *v31 = *a14;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a14 + 32);
  v33 = a9 + v22[17];
  v34 = *(a15 + 16);
  *v33 = *a15;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a15 + 32);
  v35 = a9 + v22[18];
  result = *a16;
  v37 = *(a16 + 16);
  *v35 = *a16;
  *(v35 + 16) = v37;
  *(v35 + 32) = *(a16 + 32);
  return result;
}

uint64_t sub_100151060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AppEventCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();

  sub_100153D2C(a1, a2, a3, a4, ObjectType);
}

void AppEventCardLayout.measurements(fitting:in:)(void *a1)
{
  ObjectType = swift_getObjectType();

  sub_100152848(a1, v1, ObjectType);
}

uint64_t static AppPromotionCardLayout.prefersAccessibilityLayout(with:)(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = static UIContentSizeCategory.>= infix(_:_:)();

  return v2 & 1;
}

uint64_t AppEventCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v145 = a2;
  v142 = COERCE_DOUBLE(type metadata accessor for SmallLockupLayout.Metrics());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v139 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_10002A400((v6 + v18[5]), *(v6 + v18[5] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v7 + v18[6]), *(v7 + v18[6] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v7 + v18[7]), *(v7 + v18[7] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v7, v7[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v146 = v19;
  v147 = *(v15 + 8);
  (*&v147)(v17, v14);
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v158.origin.x = 0.0;
  v158.origin.y = 0.0;
  v158.size.width = a5;
  v158.size.height = a6;
  CGRectGetWidth(v158);
  AspectRatio.height(fromWidth:)();
  Height = round(v21);
  v159.origin.x = 0.0;
  v159.origin.y = 0.0;
  v159.size.width = a5;
  v151 = a6;
  v159.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v159)) < 1.0)
  {
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = a5;
    v160.size.height = v151;
    Height = CGRectGetHeight(v160);
  }

  v161.origin.x = 0.0;
  v161.origin.y = 0.0;
  v161.size.width = a5;
  v161.size.height = v151;
  Width = CGRectGetWidth(v161);
  sub_10002A400((v6 + v18[8]), *(v6 + v18[8] + 24));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v162.origin.x = 0.0;
  v162.origin.y = 0.0;
  v162.size.width = Width;
  v162.size.height = Height;
  v24 = CGRectGetWidth(v162);
  sub_10002A400((v6 + v18[9]), *(v6 + v18[9] + 24));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660(v6 + v18[10], v156, &qword_100975610);
  if (v157)
  {
    sub_10002A400(v156, v157);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v156);
  }

  else
  {
    sub_10002B894(v156, &qword_100975610);
  }

  sub_100031660(v6 + v18[11], v156, &qword_100975610);
  if (v157)
  {
    sub_10002A400(v156, v157);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v156);
  }

  else
  {
    sub_10002B894(v156, &qword_100975610);
  }

  sub_100031660(v6 + v18[17], &v154, &qword_100975610);
  v148 = a4;
  v149 = a3;
  if (!v155)
  {
    sub_10002B894(&v154, &qword_100975610);
LABEL_17:
    LODWORD(v141) = 1;
    MinX = 0.0;
    v137 = 0.0;
    v136 = 0.0;
    v138 = 0.0;
    goto LABEL_18;
  }

  sub_100005A38(&v154, v156);
  sub_10002A400(v156, v157);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
LABEL_16:
    sub_100007000(v156);
    goto LABEL_17;
  }

  sub_100031660(v6 + v18[18], &v152, &qword_100975610);
  if (!v153)
  {
    sub_10002B894(&v152, &qword_100975610);
    goto LABEL_16;
  }

  sub_100005A38(&v152, &v154);
  sub_10002A400(&v154, v155);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_100007000(&v154);
    goto LABEL_16;
  }

  MaxY = v24;
  v109 = sub_1000CC354(0.0, 0.0, a5, v151, 0.0, v146);
  v111 = v110;
  v138 = v112;
  v134 = v113;
  MinX = COERCE_DOUBLE(swift_getObjectType());
  v114 = [a1 traitCollection];
  v115 = [v114 preferredContentSizeCategory];
  v137 = *&UIContentSizeCategoryExtraExtraExtraLarge;
  v116 = static UIContentSizeCategory.>= infix(_:_:)();

  v144 = Height;
  v135 = Width;
  v133 = v20;
  if (v116)
  {
    if (qword_10096EB90 != -1)
    {
      swift_once();
    }

    v117 = qword_1009D3040;
  }

  else
  {
    if (qword_10096EB88 != -1)
    {
      swift_once();
    }

    v117 = qword_1009D3028;
  }

  v118 = v142;
  v119 = sub_1000056A8(*&v142, v117);
  v120 = v139;
  (*(*&v141 + 16))(v139, v119, COERCE_DOUBLE(*&v118));
  v121 = [a1 traitCollection];
  v122 = [v121 preferredContentSizeCategory];
  static UIContentSizeCategory.>= infix(_:_:)();

  type metadata accessor for SmallLockupView();
  v123 = v138;
  v124 = v134;
  sub_10070B598(v120, a1);
  v126 = ceil(v125);
  v181.origin.x = 0.0;
  v181.origin.y = 0.0;
  v181.size.width = a5;
  v127 = v151;
  v181.size.height = v151;
  MinX = CGRectGetMinX(v181);
  v182.origin.x = v109;
  v182.origin.y = v111;
  v182.size.width = v123;
  v182.size.height = v124;
  v128 = v111;
  v129 = v109;
  v130 = CGRectGetHeight(v182) - v126;
  v183.origin.x = 0.0;
  v183.origin.y = 0.0;
  v183.size.width = a5;
  v183.size.height = v127;
  v131 = CGRectGetWidth(v183);
  sub_10002A400(v156, v157);
  v137 = v130;
  v136 = v131;
  dispatch thunk of LayoutView.frame.setter();
  v184.origin.x = v129;
  v184.origin.y = v128;
  v184.size.width = v123;
  v184.size.height = v124;
  v132 = CGRectGetMinX(v184);
  v185.origin.x = v129;
  v185.origin.y = v128;
  v185.size.width = v123;
  v185.size.height = v124;
  CGRectGetMinY(v185);
  v186.origin.x = v129;
  v186.origin.y = v128;
  v186.size.width = v123;
  v186.size.height = v124;
  CGRectGetWidth(v186);
  sub_10002A400(&v154, v155);
  v138 = v126;
  dispatch thunk of LayoutView.frame.setter();
  (*(*&v141 + 8))(v120, COERCE_DOUBLE(*&v142));
  sub_100007000(&v154);
  sub_100007000(v156);
  LODWORD(v141) = 0;
  Height = v144;
  Width = v135;
  v24 = MaxY;
  a4 = v148;
  a3 = v149;
  v20 = v133;
LABEL_18:
  sub_100031660(v7 + v18[12], &v154, &qword_100975610);
  v150 = a5;
  if (v155)
  {
    sub_100005A38(&v154, v156);
    sub_10002A400(v156, v157);
    v25 = v151;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v144 = Height;
    v142 = v26;
    sub_10002A400((v7 + v20[6]), *(v7 + v20[6] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    MaxY = v24;
    (*&v147)(v17, v14);
    v163.origin.x = a3;
    v163.origin.y = a4;
    v163.size.width = a5;
    v163.size.height = v25;
    CGRectGetMaxX(v163);
    v164.origin.x = a3;
    v164.origin.y = a4;
    v164.size.width = a5;
    v164.size.height = v25;
    CGRectGetMinY(v164);
    sub_10002A400(v156, v157);
    v24 = MaxY;
    Height = v144;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v156);
  }

  else
  {
    sub_10002B894(&v154, &qword_100975610);
  }

  v27 = [a1 traitCollection];
  v28 = [v27 preferredContentSizeCategory];
  v29 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v29)
  {
    v30 = sub_1000CC354(0.0, 0.0, v150, v151, 0.0, v146);
    v147 = v30;
    v32 = v31;
    v146 = v31;
    v34 = v33;
    v36 = v35;
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = v24;
    v165.size.height = Height;
    MaxY = CGRectGetMaxY(v165);
    v37 = (v7 + v18[13]);
    sub_10002A400(v37, v37[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v39 = v38;
    v41 = v40;
    v144 = v42;
    sub_10002A400((v7 + v20[7]), *(v7 + v20[7] + 24));
    AnyDimension.topMargin(from:in:)();
    v44 = v43;
    v166.origin.x = v30;
    v166.origin.y = v32;
    v166.size.width = v34;
    v166.size.height = v36;
    v45 = CGRectGetMinX(v166);
    v46 = MaxY + v44;
    sub_10002A400(v37, v37[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v167.origin.x = v45;
    v167.origin.y = v46;
    v167.size.width = v39;
    v167.size.height = v41;
    v47 = CGRectGetMaxY(v167) - v144;
    v48 = (v7 + v18[14]);
    sub_10002A400(v48, v48[3]);
    v49 = v36;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_10002A400((v7 + v20[8]), *(v7 + v20[8] + 24));
    v142 = v55;
    AnyDimension.topMargin(from:in:)();
    v57 = v56;
    v168.origin.x = v147;
    v168.origin.y = v146;
    v144 = v34;
    v168.size.width = v34;
    MaxY = v49;
    v168.size.height = v49;
    v58 = CGRectGetMinX(v168);
    sub_10002A400(v48, v48[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v169.origin.x = v58;
    v169.origin.y = v47 + v57;
    v169.size.width = v51;
    v169.size.height = v53;
    v59 = CGRectGetMaxY(v169);
    sub_100031660(v7 + v18[15], &v154, &unk_10097E890);
    if (v155)
    {
      sub_100005A38(&v154, v156);
      sub_10002A400(v156, v157);
      if (dispatch thunk of LayoutView.hasContent.getter())
      {
        v60 = v59 - v142;
        sub_10002A400(v156, v157);
        v61 = v144;
        v62 = MaxY;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v64 = v63;
        v66 = v65;
        sub_10002A400((v7 + v20[9]), *(v7 + v20[9] + 24));
        AnyDimension.topMargin(from:in:)();
        v68 = v67;
        v170.origin.x = v147;
        v170.origin.y = v146;
        v170.size.width = v61;
        v170.size.height = v62;
        v69 = CGRectGetMinX(v170);
        sub_10002A400(v156, v157);
        CGRect.withLayoutDirection(in:relativeTo:)();
        dispatch thunk of LayoutView.frame.setter();
        v171.origin.x = v69;
        v171.origin.y = v60 + v68;
        v171.size.width = v64;
        v171.size.height = v66;
        CGRectGetMaxY(v171);
      }

      sub_100007000(v156);
    }

    else
    {
      sub_10002B894(&v154, &unk_10097E890);
    }

    sub_100031660(v7 + v18[16], &v154, &qword_100975610);
    if (v155)
    {
      sub_100005A38(&v154, v156);
      sub_10002A400(v156, v157);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0 && (LOBYTE(v141) & 1) == 0)
      {
        sub_10002A400(v156, v157);
        v102 = v144;
        v103 = MaxY;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v105 = v104;
        v178.origin.x = MinX;
        v178.origin.y = v137;
        v178.size.width = v136;
        v178.size.height = v138;
        v142 = CGRectGetMinY(v178) - v105;
        v106 = v147;
        v179.origin.x = v147;
        v107 = v146;
        v179.origin.y = v146;
        v179.size.width = v102;
        v179.size.height = v103;
        v141 = CGRectGetMinX(v179);
        v180.origin.x = v106;
        v180.origin.y = v107;
        v180.size.width = v102;
        v180.size.height = v103;
        CGRectGetWidth(v180);
        sub_10002A400(v156, v157);
        dispatch thunk of LayoutView.frame.setter();
      }

      sub_100007000(v156);
    }

    else
    {
      sub_10002B894(&v154, &qword_100975610);
    }
  }

  else
  {
    v70 = sub_1000CC354(0.0, 0.0, Width, Height, 0.0, v146);
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_10002A400((v7 + v20[10]), *(v7 + v20[10] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v78 = v77;
    (*&v147)(v17, v14);
    v146 = v70;
    v172.origin.x = v70;
    v144 = v72;
    v172.origin.y = v72;
    v172.size.width = v74;
    v172.size.height = v76;
    v79 = CGRectGetHeight(v172) - v78;
    sub_100031660(v7 + v18[15], &v154, &unk_10097E890);
    if (v155)
    {
      sub_100005A38(&v154, v156);
      sub_10002A400(v156, v157);
      if (dispatch thunk of LayoutView.hasContent.getter())
      {
        sub_10002A400(v156, v157);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v81 = v80;
        v83 = v82;
        v147 = *&v84;
        MaxY = v85;
        v86 = v85 + v79 - v82;
        v173.origin.x = v146;
        v173.origin.y = v144;
        v173.size.width = v74;
        v173.size.height = v76;
        v87 = CGRectGetMinX(v173);
        sub_10002A400(v156, v157);
        CGRect.withLayoutDirection(in:relativeTo:)();
        dispatch thunk of LayoutView.frame.setter();
        sub_10002A400((v7 + v20[9]), *(v7 + v20[9] + 24));
        AnyDimension.topMargin(from:in:)();
        v89 = v88;
        v174.origin.x = v87;
        v174.origin.y = v86;
        v174.size.width = v81;
        v174.size.height = v83;
        v79 = CGRectGetMinY(v174) - v89;
      }

      sub_100007000(v156);
    }

    else
    {
      sub_10002B894(&v154, &unk_10097E890);
    }

    v90 = (v7 + v18[14]);
    sub_10002A400(v90, v90[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v92 = v91;
    v94 = v93;
    v147 = *&v95;
    v96 = v76;
    v97 = v74;
    MaxY = v98;
    v99 = v98 + v79 - v93;
    v175.origin.x = v146;
    v175.origin.y = v144;
    v175.size.width = v97;
    v175.size.height = v96;
    v100 = CGRectGetMinX(v175);
    sub_10002A400(v90, v90[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_10002A400((v7 + v20[8]), *(v7 + v20[8] + 24));
    AnyDimension.topMargin(from:in:)();
    v176.origin.x = v100;
    v176.origin.y = v99;
    v176.size.width = v92;
    v176.size.height = v94;
    CGRectGetMinY(v176);
    v101 = (v7 + v18[13]);
    sub_10002A400(v101, v101[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v177.origin.x = v146;
    v177.origin.y = v144;
    v177.size.width = v97;
    v177.size.height = v96;
    CGRectGetMinX(v177);
    sub_10002A400(v101, v101[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
  }

  return LayoutRect.init(representing:)();
}

void sub_100152848(void *a1, uint64_t a2, int *a3)
{
  v81 = a3;
  v79 = type metadata accessor for FloatingPointRoundingRule();
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v82 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for StackMeasurable.Axis();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for StackMeasurable();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for VerticalSpaceMeasurable();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for OfferButtonMetrics();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v60 - v11;
  v12 = type metadata accessor for SmallLockupLayout.Metrics();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppEventCardLayout(0);
  sub_100031660(a2 + v15[18], &v86, &qword_100975610);
  v16 = v87;
  sub_10002B894(&v86, &qword_100975610);
  v17 = [a1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];
  v19 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v19)
  {
    v60 = v16;
    v80 = a2;
    v20 = v15[13];
    v21 = v15[14];
    v22 = v15[16];
    v63 = v15[15];
    v64 = v22;
    if (qword_10096EB90 != -1)
    {
      swift_once();
    }

    v61 = (v80 + v20);
    v62 = (v80 + v21);
    v23 = sub_1000056A8(v12, qword_1009D3040);
    v81 = type metadata accessor for AppEventCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v25 = v24;
    v26 = [a1 traitCollection];
    v27 = v71;
    (*(v71 + 16))(v14, v23, v12);
    v28 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v30 = v72;
    if ((v31 & 1) == 0 && ((v28 | v29) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v32 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v32 = qword_100991028;
      }

      v33 = v68;
      v34 = sub_1000056A8(v68, v32);
      v35 = v67;
      v36 = v65;
      (*(v67 + 16))(v65, v34, v33);
      v37 = v66;
      (*(v35 + 32))(v66, v36, v33);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v35 + 8))(v37, v33);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v39 = v38;

    (*(v27 + 8))(v14, v12);
    *&v84 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v87 = &type metadata for CGFloat;
    v88 = &protocol witness table for CGFloat;
    *&v86 = v25;
    *(inited + 56) = v30;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((inited + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(inited);
    v41 = v80;
    v42 = v79;
    if (v60)
    {
      v87 = &type metadata for CGFloat;
      v88 = &protocol witness table for CGFloat;
      *&v86 = ceil(v39 + 16.0 + 16.0);
      v43 = v69;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v44 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_100033260(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_100033260((v45 > 1), v46 + 1, 1, v44);
      }

      v87 = v30;
      v88 = &protocol witness table for VerticalSpaceMeasurable;
      v47 = sub_1000056E0(&v86);
      v48 = v70;
      (*(v70 + 16))(v47, v43, v30);
      v44[2] = v46 + 1;
      sub_100005A38(&v86, &v44[5 * v46 + 4]);
      (*(v48 + 8))(v43, v30);
      *&v84 = v44;
    }

    (*(v76 + 104))(v74, enum case for StackMeasurable.Axis.vertical(_:), v78);
    v49 = v73;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    (*(v75 + 8))(v49, v77);
    sub_10002A400(v41, v41[3]);
    v50 = v82;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v51 = *(v83 + 8);
    v83 += 8;
    v51(v50, v42);
    CGSize.subtracting(insets:)();
    sub_10002A400(v61, v61[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v53 = v52;
    v54 = v81;
    sub_10002A400((v41 + v81[7]), *(v41 + v81[7] + 24));
    AnyDimension.topMargin(from:in:)();
    *&v86 = v53;
    AnyDimension.bottomMargin(from:in:)();
    sub_10002A400(v62, v62[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v56 = v55;
    sub_10002A400((v41 + v54[8]), *(v41 + v54[8] + 24));
    AnyDimension.topMargin(from:in:)();
    *&v86 = v56;
    AnyDimension.bottomMargin(from:in:)();
    sub_100031660(v41 + v63, &v84, &unk_10097E890);
    if (v85)
    {
      sub_100005A38(&v84, &v86);
      sub_10002A400(&v86, v87);
      if (dispatch thunk of LayoutView.hasContent.getter())
      {
        sub_10002A400(&v86, v87);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v58 = v57;
        sub_10002A400((v41 + v81[9]), *(v41 + v81[9] + 24));
        AnyDimension.topMargin(from:in:)();
        *&v84 = v58;
        AnyDimension.bottomMargin(from:in:)();
      }

      sub_100007000(&v86);
    }

    else
    {
      sub_10002B894(&v84, &unk_10097E890);
    }

    sub_10002A400((v41 + v81[10]), *(v41 + v81[10] + 24));
    v59 = v82;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v51(v59, v42);
    sub_100031660(v41 + v64, &v84, &qword_100975610);
    if (v85)
    {
      sub_100005A38(&v84, &v86);
      sub_10002A400(&v86, v87);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
      {
        sub_10002A400(&v86, v87);
        dispatch thunk of Measurable.measurements(fitting:in:)();
      }

      sub_100007000(&v86);
    }

    else
    {
      sub_10002B894(&v84, &qword_100975610);
    }
  }

  else
  {
    sub_100153600(a2, v16 != 0, a1);
  }
}

double sub_100153600(uint64_t a1, int a2, void *a3)
{
  v45 = a2;
  v50 = type metadata accessor for StackMeasurable.Axis();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for StackMeasurable();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for VerticalSpaceMeasurable();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OfferButtonMetrics();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for SmallLockupLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EB88 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v14, qword_1009D3028);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  AspectRatio.height(fromWidth:)();
  v20 = v19;
  v52 = a3;
  v21 = [a3 traitCollection];
  (*(v15 + 16))(v17, v18, v14);
  v22 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v24 & 1) == 0 && ((v22 | v23) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v25 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v25 = qword_100991028;
    }

    v26 = sub_1000056A8(v8, v25);
    v27 = v42;
    (*(v42 + 16))(v10, v26, v8);
    (*(v27 + 32))(v13, v10, v8);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v27 + 8))(v13, v8);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v29 = v28;

  (*(v15 + 8))(v17, v14);
  v56 = _swiftEmptyArrayStorage;
  sub_10002849C(&qword_100996330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v20;
  v31 = v46;
  *(inited + 56) = v46;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((inited + 32));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_10039435C(inited);
  if (v45)
  {
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *&v53 = ceil(v29 + 4.0 + 4.0);
    v32 = v43;
    VerticalSpaceMeasurable.init(_:multiplier:)();
    v33 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_100033260(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_100033260((v34 > 1), v35 + 1, 1, v33);
    }

    v54 = v31;
    v55 = &protocol witness table for VerticalSpaceMeasurable;
    v36 = sub_1000056E0(&v53);
    v37 = v44;
    (*(v44 + 16))(v36, v32, v31);
    *(v33 + 2) = v35 + 1;
    sub_100005A38(&v53, &v33[5 * v35 + 4]);
    (*(v37 + 8))(v32, v31);
    v56 = v33;
  }

  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  StackMeasurable.measurements(fitting:in:)();
  v39 = v38;
  (*(v49 + 8))(v6, v51);
  return v39;
}

void sub_100153D2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v27 = a3;
  v19 = a1;
  v26 = type metadata accessor for LegacyAppState();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AdamId();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    do
    {
      sub_10002C0AC(v12, v33);
      sub_100005A38(v33, v31);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for AppEvent();
      if ((swift_dynamicCast() & 1) != 0 && v32)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v34;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  if (v10 >> 62)
  {
LABEL_25:
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v29 = v10 & 0xC000000000000001;
  v22 = (v8 + 8);
  ++v6;
  do
  {
    v14 = v13;
    if (v30 == v13)
    {
      break;
    }

    if (v29)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        break;
      }
    }

    else
    {
      if (v13 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    if ((AppEvent.hideLockupWhenNotInstalled.getter() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    swift_getObjectType();
    AppEvent.lockup.getter();
    v15 = v23;
    Lockup.adamId.getter();

    dispatch thunk of AppStateController.stateMachine(forApp:)();
    (*v22)(v15, v24);
    swift_getObjectType();
    AppEvent.lockup.getter();
    Lockup.includeBetaApps.getter();

    v8 = v25;
    dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
    v16 = LegacyAppState.isLocalApplication.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*v6)(v8, v26);
    v13 = v14 + 1;
  }

  while ((v16 & 1) == 0);
  v17 = v30 != v14;

  sub_100153600(v19, v17, v20);
}

void sub_1001541D0()
{
  type metadata accessor for AppEventCardLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &unk_10098A3C0);
    if (v1 <= 0x3F)
    {
      sub_100154308(319, &qword_10098A3E0, &unk_10097E960);
      if (v2 <= 0x3F)
      {
        sub_100154428(319, &qword_10097E940);
        if (v3 <= 0x3F)
        {
          sub_100154308(319, &unk_10098A3D0, &unk_10097E950);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100154308(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10002D1A8(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100154384()
{
  result = sub_100154428(319, &qword_1009842D0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspectRatio();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100154428(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_100154484(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  if (a3)
  {
    return sub_1001546FC(a1, a2, a3 & 1, a4);
  }

  v22 = v4;
  dispatch thunk of BaseShelfPresenter.contentType(for:)();
  (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyDefinition(_:), v9);
  sub_100154EF0(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v25 == v23 && v26 == v24)
  {
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v15, v9);

    return 0.0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = a2;
    v18 = *(v10 + 8);
    v18(v12, v9);
    v18(v15, v9);
    a2 = v21;

    result = 0.0;
    if ((v20 & 1) == 0)
    {
      return sub_1001546FC(a1, a2, a3 & 1, a4);
    }
  }

  return result;
}

double sub_1001546FC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v37 = a4;
  v36 = a3;
  v35 = a2;
  v4 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  type metadata accessor for GenericPagePresenter();
  sub_100154EF0(&qword_100970C98, &type metadata accessor for GenericPagePresenter);
  dispatch thunk of ShelfPresenter.shelf(for:)();
  v38 = v13;
  Shelf.contentType.getter();
  if (v36)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v14 = 0;
    v15 = v6;
    v16 = v38;
    v17 = v7;
  }

  else
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    (*(v8 + 56))(v6, 0, 1, v7);
    dispatch thunk of ShelfPresenter.title(for:)();
    v15 = v6;
    v17 = v7;
    if (v18)
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v16 = v38;
  }

  v19 = v37;
  (*(v8 + 16))(v10, v16, v17);
  v20 = (*(v8 + 88))(v10, v17);
  if (v20 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v21 = &off_1008D0A88;
  }

  else
  {
    if (v20 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v8 + 8))(v10, v17);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v21 = &off_1008CBB38;
  }

  v22 = (v21[1])();
  if ((v23 & 1) == 0)
  {
LABEL_19:
    v33 = *&v22;

    v32 = v33;
    goto LABEL_20;
  }

LABEL_14:
  if (sub_1005D8420())
  {
    v22 = (*(v24 + 40))(v15, v14, v19);
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for StaticDimension();
  sub_1000056A8(v26, qword_1009D2460);
  v27 = [v19 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B0B70;
  *(v28 + 32) = v27;
  v29 = v27;
  v30 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v32 = v31;

  v16 = v38;
LABEL_20:
  sub_1000CD7FC(v15);
  (*(v8 + 8))(v16, v17);
  return v32;
}

uint64_t sub_100154BA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  dispatch thunk of BaseShelfPresenter.contentType(for:)();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyDefinition(_:), v5);
  sub_100154EF0(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v22 == v20 && v23 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v18 = a2;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      return sub_100645854(a1, v18, v19);
    }
  }

  if (qword_10096D3B8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_1000056A8(v15, qword_1009CE878);
  return sub_100115C40(v16, v19);
}

uint64_t sub_100154E3C()
{
  sub_1006472CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyDefinitionsDataSource()
{
  result = qword_100976120;
  if (!qword_100976120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100154EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100154F38(uint64_t a1)
{
  v105 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = _swiftEmptyArrayStorage;
  sub_100157158();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v6 = swift_allocObject();
  v104 = v1;
  swift_unknownObjectWeakInit();
  v103[2] = type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000014;
  *(v7 + 64) = 0x8000000100803470;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_100157CC4;
  *(v7 + 112) = v6;
  swift_retain_n();
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v3 + 8);
  v103[1] = v3 + 8;
  v11(v5, v2);
  v108 = v8;
  v109 = v10;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v106 = v2;
  v107 = v11;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v12 = sub_100553DF8(0x302E32206F726548, 0xEF74686769654820, sub_1001563A0, 0, sub_1001564CC, 0);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v13 = v105;
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v103[3] = v12;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  v17[7] = 0xD000000000000026;
  v17[8] = 0x8000000100803490;
  v17[10] = 0;
  v17[11] = 0;
  v17[9] = 0;
  v17[12] = sub_100157CCC;
  v17[13] = v15;

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v107(v5, v106);
  v108 = v18;
  v109 = v20;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v13;
  v23 = swift_allocObject();
  v23[7] = 0xD000000000000029;
  v23[8] = 0x80000001008034C0;
  v23[10] = 0;
  v23[11] = 0;
  v23[9] = 0;
  v23[12] = sub_100157CF8;
  v23[13] = v22;

  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  v107(v5, v106);
  v108 = v24;
  v109 = v26;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v13;
  v103[4] = v16;
  v29 = swift_allocObject();
  v29[7] = 0xD000000000000023;
  v29[8] = 0x80000001008034F0;
  v29[10] = 0;
  v29[11] = 0;
  v29[9] = 0;
  v29[12] = sub_100157D24;
  v29[13] = v28;

  UUID.init()();
  v30 = UUID.uuidString.getter();
  v32 = v31;
  v107(v5, v106);
  v108 = v30;
  v109 = v32;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = v105;
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong snapshotPageTraitEnvironment];

    v37 = [v36 traitCollection];
    swift_unknownObjectRelease();
    v38 = [v37 userInterfaceIdiom];

    if (!v38)
    {
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v34;
      v41 = swift_allocObject();
      v41[7] = 0xD00000000000002CLL;
      v41[8] = 0x8000000100803620;
      v41[10] = 0;
      v41[11] = 0;
      v41[9] = 0;
      v41[12] = sub_100157E6C;
      v41[13] = v40;

      UUID.init()();
      v42 = UUID.uuidString.getter();
      v44 = v43;
      v45 = v107;
      v107(v5, v106);
      v108 = v42;
      v109 = v44;
      AnyHashable.init<A>(_:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v34;
      v48 = swift_allocObject();
      v48[7] = 0xD00000000000002FLL;
      v48[8] = 0x8000000100803650;
      v48[10] = 0;
      v48[11] = 0;
      v48[9] = 0;
      v48[12] = sub_100157E98;
      v48[13] = v47;

      UUID.init()();
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v45(v5, v106);
      v108 = v49;
      v109 = v51;
      AnyHashable.init<A>(_:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v34;
      v54 = swift_allocObject();
      v54[7] = 0xD000000000000029;
      v54[8] = 0x8000000100803680;
      v54[10] = 0;
      v54[11] = 0;
      v54[9] = 0;
      v54[12] = sub_100157EC4;
      v54[13] = v53;

      UUID.init()();
      v55 = UUID.uuidString.getter();
      v57 = v56;
      v45(v5, v106);
      v108 = v55;
      v109 = v57;
      AnyHashable.init<A>(_:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v58 = swift_allocObject();
  v58[7] = 0xD00000000000001FLL;
  v58[8] = 0x8000000100803520;
  v58[10] = 0;
  v58[11] = 0;
  v58[9] = 0;
  v58[12] = sub_1001567C8;
  v58[13] = 0;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v62 = v106;
  v63 = v107;
  v107(v5, v106);
  v108 = v59;
  v109 = v61;
  AnyHashable.init<A>(_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v64 = swift_allocObject();
  v64[7] = 0xD000000000000024;
  v64[8] = 0x8000000100803540;
  v64[10] = 0;
  v64[11] = 0;
  v64[9] = 0;
  v64[12] = sub_100156988;
  v64[13] = 0;
  UUID.init()();
  v65 = UUID.uuidString.getter();
  v67 = v66;
  v63(v5, v62);
  v108 = v65;
  v109 = v67;
  AnyHashable.init<A>(_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v68 = swift_allocObject();
  v68[7] = 0xD00000000000001FLL;
  v68[8] = 0x8000000100803570;
  v68[10] = 0;
  v68[11] = 0;
  v68[9] = 0;
  v68[12] = sub_100156B48;
  v68[13] = 0;
  UUID.init()();
  v69 = UUID.uuidString.getter();
  v71 = v70;
  v63(v5, v62);
  v108 = v69;
  v109 = v71;
  AnyHashable.init<A>(_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v72 = swift_allocObject();
  v72[7] = 0xD000000000000043;
  v72[8] = 0x8000000100803590;
  v72[10] = 0;
  v72[11] = 0;
  v72[9] = 0;
  v72[12] = sub_100156D08;
  v72[13] = 0;
  UUID.init()();
  v73 = UUID.uuidString.getter();
  v75 = v74;
  v63(v5, v62);
  v108 = v73;
  v109 = v75;
  AnyHashable.init<A>(_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  type metadata accessor for AppStoreEngagementManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v76 = v108;
  v77 = swift_allocObject();
  v77[7] = 0x4820656461637241;
  v77[8] = 0xE90000000000004FLL;
  v77[9] = 0;
  v77[10] = 0;
  v77[11] = sub_100157D50;
  v77[12] = v76;
  v77[13] = sub_100157DC0;
  v77[14] = v76;
  swift_retain_n();
  UUID.init()();
  v78 = UUID.uuidString.getter();
  v80 = v79;
  v63(v5, v62);
  v108 = v78;
  v109 = v80;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v81 = v62;
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v82 = swift_allocObject();
  v83 = v104;
  *(v82 + 16) = v76;
  *(v82 + 24) = v83;
  v84 = swift_allocObject();
  *(v84 + 56) = 0xD000000000000011;
  *(v84 + 64) = 0x80000001008035E0;
  *(v84 + 72) = 0u;
  *(v84 + 88) = 0u;
  *(v84 + 104) = sub_100157E1C;
  *(v84 + 112) = v82;

  v85 = v83;

  UUID.init()();
  v86 = UUID.uuidString.getter();
  v88 = v87;
  v107(v5, v62);
  v108 = v86;
  v109 = v88;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v89 = swift_allocObject();
  *(v89 + 16) = v76;
  *(v89 + 24) = v85;
  v90 = swift_allocObject();
  *(v90 + 56) = 0xD00000000000001ALL;
  *(v90 + 64) = 0x8000000100803600;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 0u;
  *(v90 + 104) = sub_100157E64;
  *(v90 + 112) = v89;

  v91 = v85;

  UUID.init()();
  v92 = UUID.uuidString.getter();
  v94 = v93;
  v95 = v107;
  v107(v5, v81);
  v108 = v92;
  v109 = v94;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v96 = v110;
  sub_10002849C(&qword_100973210);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1007B0B70;
  type metadata accessor for DebugSection();
  v98 = swift_allocObject();
  UUID.init()();
  v99 = UUID.uuidString.getter();
  v101 = v100;
  v95(v5, v81);
  v98[2] = v99;
  v98[3] = v101;
  v98[4] = 0;
  v98[5] = 0xE000000000000000;
  v98[6] = v96;
  *(v97 + 32) = v98;

  return v97;
}

void sub_100156260()
{
  v0 = type metadata accessor for EntitlementRefeshCondition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      (*(v1 + 104))(v3, enum case for EntitlementRefeshCondition.always(_:), v0);
      ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)();

      (*(v1 + 8))(v3, v0);
    }
  }
}

uint64_t sub_1001563A0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return Double.description.getter();
    }
  }

  else
  {
    sub_10002B894(v6, &unk_1009711D0);
  }

  return 0x746C7561666544;
}

void sub_1001564CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 numberFromString:v6];

  if (v7)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = v7;
    v11 = String._bridgeToObjectiveC()();
    [v8 setValue:v9 forKey:?];

LABEL_5:

    return;
  }

  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_4:
    v9 = [objc_opt_self() standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v9 setValue:0 forKey:?];
    goto LABEL_5;
  }
}

uint64_t sub_100156694(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = type metadata accessor for ArcadeWelcomePage.ContentType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *a4, v8);
    sub_100157EF0(v11, a3, a5);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1001567C8()
{
  v0 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10002B894(v2, &qword_100982460);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100156988()
{
  v0 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10002B894(v2, &qword_100982460);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100156B48()
{
  v0 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10002B894(v2, &qword_100982460);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100156D08()
{
  v0 = type metadata accessor for ArcadeDownloadPackStorage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArcadeDownloadPackStorage.init()();
  ArcadeDownloadPackStorage.clear()();
  return (*(v1 + 8))(v3, v0);
}

void sub_100156DCC()
{
  v0 = AppStoreEngagementManager.properties.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = sub_100035410(*(v0 + 16), 0);
    v4 = sub_10039FBF4(&v12, v3 + 4, v2, v1);
    sub_100081680();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v12 = v3;
  sub_10002849C(&unk_100977380);
  sub_10015872C();
  BidirectionalCollection<>.joined(separator:)();

  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

void sub_100156FC0()
{
  AppStoreEngagementManager.previouslyDisabledProperties.getter();
  sub_10002849C(&unk_100977380);
  sub_10015872C();
  BidirectionalCollection<>.joined(separator:)();

  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v4];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_100157158()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeState();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for ArcadeDebugSubscriptionState();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v51 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static ArcadeDebugSubscriptionState.allCases.getter();
  v17 = *(v16 + 16);
  if (v17)
  {
    v52 = v15;
    v53 = v13;
    v54 = v12;
    v75 = _swiftEmptyArrayStorage;
    v61 = v9;
    v62 = v4;
    v18 = v16;
    specialized ContiguousArray.reserveCapacity(_:)();
    v60 = *(v65 + 16);
    v19 = *(v65 + 80);
    v51 = v18;
    v20 = v18 + ((v19 + 32) & ~v19);
    v58 = *(v65 + 72);
    v57 = (v69 + 8);
    v65 += 16;
    v56 = (v65 + 16);
    v59 = v19;
    v55 = (v19 + 24) & ~v19;
    v68 = v7;
    v70 = v8;
    do
    {
      v69 = v20;
      v21 = v63;
      v60(v63, v20, v8);
      ArcadeDebugSubscriptionState.arcadeState.getter();
      v22 = ArcadeState.shortSummary.getter();
      v24 = v23;
      v25 = *v57;
      (*v57)(v68, v2);
      v71 = v22;
      v72 = v24;
      AnyHashable.init<A>(_:)();
      v26 = v62;
      ArcadeDebugSubscriptionState.arcadeState.getter();
      v27 = ArcadeState.shortSummary.getter();
      v66 = v28;
      v67 = v27;
      v25(v26, v2);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v2;
      v31 = v1;
      v32 = *v56;
      v33 = v17;
      v34 = v64;
      (*v56)(v64, v21, v70);
      v35 = v55;
      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      v37 = v34;
      v38 = v33;
      v32((v36 + v35), v37, v70);
      v1 = v31;
      v2 = v30;
      type metadata accessor for MenuItemDebugSetting();
      v39 = swift_allocObject();
      *(v39 + 72) = 0;
      v40 = v66;
      *(v39 + 56) = v67;
      *(v39 + 64) = v40;
      *(v39 + 80) = sub_100158790;
      *(v39 + 88) = v36;
      v41 = v73[1];
      *(v39 + 16) = v73[0];
      *(v39 + 32) = v41;
      *(v39 + 48) = v74;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v8 = v70;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v20 = v69 + v58;
      v17 = v38 - 1;
    }

    while (v17);

    v42 = v75;
    v12 = v54;
    v13 = v53;
    v15 = v52;
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
  }

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MenuDebugSetting();
  v44 = swift_allocObject();
  strcpy((v44 + 56), "Toggle State");
  *(v44 + 69) = 0;
  *(v44 + 70) = -5120;
  *(v44 + 72) = v42;
  *(v44 + 80) = sub_1001587F4;
  *(v44 + 88) = v43;

  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v48 = *(v13 + 8);

  v48(v15, v12);
  *&v73[0] = v45;
  *(&v73[0] + 1) = v47;
  AnyHashable.init<A>(_:)();
  sub_100157A24(v73);
  __chkstk_darwin(v49);
  *(&v51 - 2) = v73;

  sub_10070DDEC(sub_1001587FC, (&v51 - 4), v42);

  sub_10002B894(v73, &qword_10096FB90);
  return v44;
}

uint64_t sub_100157794(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_100976450);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for ArcadeState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100976458);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = swift_unknownObjectWeakLoadStrong(), v14, v15))
  {
    ArcadeDebugSubscriptionState.arcadeState.getter();
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)();

    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v7 + 56))(v12, v16, 1, v6);
  sub_10002B894(v12, &qword_100976458);
  v17 = type metadata accessor for ArcadeDebugSubscriptionState();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v5, a2, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  return static ArcadeDebugSubscriptionStateManager.state.setter();
}

double sub_100157A24@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArcadeState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = swift_unknownObjectWeakLoadStrong(), v7, v8))
  {
    ArcadeSubscriptionManager.subscriptionState.getter();

    v9 = ArcadeState.shortSummary.getter();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v13[1] = v9;
    v13[2] = v11;
    AnyHashable.init<A>(_:)();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_100157B8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100157BF4()
{
  swift_unknownObjectWeakInit();
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100157D50()
{
  v0._object = 0x80000001008036E0;
  v0._countAndFlagsBits = 0xD000000000000020;
  if (AppStoreEngagementManager.isBadgeEnabled(identifier:)(v0))
  {
    return 0x6C62616C69617641;
  }

  else
  {
    return 0x616C696176616E55;
  }
}

void sub_100157DC0()
{
  v0._object = 0x80000001008036E0;
  v0._countAndFlagsBits = 0xD000000000000020;
  v1 = AppStoreEngagementManager.isBadgeEnabled(identifier:)(v0);
  v2 = 0x80000001008036E0;
  v3 = !v1;
  v4 = 0xD000000000000020;

  AppStoreEngagementManager.setIdentifier(_:isEnabled:)(*&v4, v3);
}

uint64_t sub_100157E24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100157EF0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v50 = a3;
  v58 = a2;
  v54 = a1;
  v3 = type metadata accessor for FlowOrigin();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowAnimationBehavior();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FlowPresentationContext();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v57 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v56 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v11 - 8);
  v55 = v42 - v12;
  v13 = type metadata accessor for FlowPage();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v15 - 8);
  v17 = v42 - v16;
  v18 = sub_10002849C(&qword_100975958);
  __chkstk_darwin(v18);
  v20 = v42 - v19;
  v21 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v21 - 8);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v42 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v31 = &qword_100982460;
    v32 = v26;
    return sub_10002B894(v32, v31);
  }

  v43 = v5;
  (*(v28 + 32))(v30, v26, v27);
  v33 = *(v18 + 48);
  v34 = *(v18 + 64);
  *v20 = 0;
  v35 = type metadata accessor for ArcadeWelcomePage.ContentType();
  (*(*(v35 - 8) + 16))(&v20[v33], v54, v35);
  (*(v28 + 16))(&v20[v34], v30, v27);
  v36 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    sub_10002B894(v20, &qword_100975958);
    (*(v28 + 8))(v30, v27);
    v31 = &unk_100972A00;
    v32 = v17;
    return sub_10002B894(v32, v31);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  (*(v44 + 104))(v53, enum case for FlowPage.arcadeWelcome(_:), v13);
  v39 = *(v28 + 56);
  v42[1] = v23;
  v39(v23, 1, 1, v27);
  v40 = type metadata accessor for ReferrerData();
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v59 = 0u;
  v60 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v45 + 104))(v57, *v50, v46);
  (*(v47 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v48);
  (*(v51 + 104))(v43, enum case for FlowOrigin.inapp(_:), v52);
  static FlowActionPresentation.stackPush.getter();
  v54 = v37;
  type metadata accessor for FlowAction();
  swift_allocObject();
  v41 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v41, 1, v58, v17);

  sub_10002B894(v20, &qword_100975958);
  (*(v28 + 8))(v30, v27);
  return (*(v54 + 8))(v17, v36);
}

unint64_t sub_10015872C()
{
  result = qword_100973110;
  if (!qword_100973110)
  {
    sub_10002D1A8(&unk_100977380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973110);
  }

  return result;
}

uint64_t sub_100158790()
{
  v1 = *(type metadata accessor for ArcadeDebugSubscriptionState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100157794(v2, v3);
}

uint64_t sub_100158818(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  URL.init(string:)();
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(LPLinkView);
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v21 = [v17 initWithURL:v19];

    (*(v15 + 8))(v13, v14);
    *&v5[OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView] = v21;
    v28.receiver = v5;
    v28.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v26 = v22;
    [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    v27 = OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView;
    [*&v26[OBJC_IVAR____TtC8AppStore20PresentationLinkView_linkView] _setApplyCornerRadius:1];
    [*&v26[v27] _setDisableAnimations:1];
    [*&v26[v27] _setDisableTapGesture:1];
    [*&v26[v27] _setForceFlexibleWidth:1];
    [v26 addSubview:*&v26[v27]];

    return v26;
  }

  return result;
}

unint64_t sub_100158C28()
{
  result = qword_100976490;
  if (!qword_100976490)
  {
    type metadata accessor for WriteReviewAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976490);
  }

  return result;
}

void sub_100158C80(uint64_t a1, void **a2)
{
  v99 = a2;
  v104 = a1;
  v3 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v3 - 8);
  v93 = v80 - v4;
  v95 = type metadata accessor for LegacyAppState();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v6 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for AdamId();
  v96 = *(v100 - 8);
  __chkstk_darwin(v100);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Artwork.Format();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v10 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Artwork.URLTemplate();
  v90 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Artwork.Crop();
  v87 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Bag();
  v98 = *(v101 - 8);
  v17 = *(v98 + 64);
  __chkstk_darwin(v101);
  v91 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v102 = v80 - v19;
  v92 = sub_10002849C(&qword_1009764A0);
  v103 = Promise.__allocating_init()();
  v97 = v2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v21 = [Strong view];

  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = [v21 window];

  if (!v22 || (v23 = [v22 windowScene], v22, !v23))
  {
    sub_10015A214();
    swift_allocError();
    Promise.reject(_:)();

    return;
  }

  v86 = v23;
  v24 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_10015A268();
  v84 = v24;
  inject<A, B>(_:from:)();
  v85 = aBlock;
  v25 = WriteReviewAction.appName.getter();
  if (v26)
  {
    v82 = v25;
    v83 = v26;
    v27 = WriteReviewAction.itemDescription.getter();
    if (v28)
    {
      v80[1] = v27;
      v80[2] = v28;
      if (WriteReviewAction.appIcon.getter())
      {
        static ReviewComposerUtility.iconSize(from:)();
        if (WriteReviewAction.appIcon.getter())
        {
          v29 = Artwork.config(using:)();

          ArtworkLoaderConfig.crop.getter();
          v30 = Artwork.Crop.rawValue.getter();
          v80[0] = v31;
          (*(v87 + 8))(v16, v14);
          aBlock = v30;
          v111 = v80[0];
          v87 = v29;
          v32 = ArtworkLoaderConfig.quality.getter();
          if ((v33 & 1) == 0)
          {
            v109._countAndFlagsBits = 45;
            v109._object = 0xE100000000000000;
            v107 = v32;
            v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v34);

            String.append(_:)(v109);
          }

          Artwork.template.getter();
          v35 = Artwork.URLTemplate.rawValue.getter();
          v37 = v36;
          v90[1](v13, v11);
          v109._countAndFlagsBits = v35;
          v109._object = v37;
          v107 = 8217467;
          v108 = 0xE300000000000000;
          v105 = aBlock;
          v106 = v111;
          sub_10007FED4();
          v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v40 = v39;

          v109._countAndFlagsBits = v38;
          v109._object = v40;
          v107 = 8218235;
          v108 = 0xE300000000000000;
          ArtworkLoaderConfig.format.getter();
          v41 = Artwork.Format.rawValue.getter();
          v43 = v42;
          (*(v88 + 8))(v10, v89);
          v105 = v41;
          v106 = v43;
          StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        }

        else
        {
          Artwork.template.getter();
          Artwork.URLTemplate.rawValue.getter();
          v90[1](v13, v11);
        }

        v44 = objc_allocWithZone(type metadata accessor for ReviewLockupDetails());
        v45 = ReviewLockupDetails.init(name:itemDescription:artworkURLTemplate:)();

        v90 = v45;
        v46 = v45;
        goto LABEL_18;
      }
    }
  }

  v90 = 0;
LABEL_18:
  sub_10002849C(&unk_100973AF0);
  inject<A, B>(_:from:)();
  v47 = aBlock;
  swift_getObjectType();
  WriteReviewAction.adamId.getter();
  v99 = v47;
  v48 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v49 = *(v96 + 8);
  v49(v8, v100);
  swift_getObjectType();
  v96 = v48;
  dispatch thunk of AppStateMachine.currentState.getter();
  v50 = v94;
  v51 = v95;
  if ((*(v94 + 88))(v6, v95) == enum case for LegacyAppState.openable(_:))
  {
    (*(v50 + 96))(v6, v51);
    v52 = *&v6[*(sub_10002849C(&unk_100976520) + 48)];
    v53 = type metadata accessor for OpenableDestination();
    (*(*(v53 - 8) + 8))(v6, v53);
    v54 = [v52 stringValue];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    (*(v50 + 8))(v6, v51);
  }

  static ReviewComposerUtility.lockupStyle(from:)();
  v95 = v85;
  WriteReviewAction.adamId.getter();
  AdamId.stringValue.getter();
  v49(v8, v100);
  v55 = objc_allocWithZone(type metadata accessor for ReviewContext());
  v56 = v90;
  v57 = ReviewContext.init(accentColor:lockupStyle:lockupDetails:mediaTaskType:clientInfo:itemIdentifier:itemVersion:)();
  v58 = v97;
  v59 = swift_unknownObjectUnownedLoadStrong();
  v60 = [v59 presentedViewController];

  if (!v60)
  {
    goto LABEL_24;
  }

  if ([v60 isBeingDismissed])
  {

LABEL_24:
    v61 = v102;
    v62 = Bag.amsBag.getter();
    v63 = Promise.__allocating_init()();
    v64 = type metadata accessor for TaskPriority();
    v65 = v93;
    (*(*(v64 - 8) + 56))(v93, 1, 1, v64);
    v66 = swift_allocObject();
    v66[2] = 0;
    v66[3] = 0;
    v67 = v86;
    v66[4] = v86;
    v66[5] = v57;
    v66[6] = v62;
    v66[7] = v63;
    v68 = v67;
    v69 = v57;

    sub_100221B78(0, 0, v65, &unk_1007BAEB8, v66);

    Promise.pipe(to:)();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v98 + 8))(v61, v101);
    return;
  }

  sub_10015A388(v58, &v109);
  v70 = v98;
  v71 = v91;
  v72 = v101;
  (*(v98 + 16))(v91, v102, v101);
  v73 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v74 = (v17 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  sub_10015A3C0(&v109, v75 + 16);
  v76 = v86;
  *(v75 + 24) = v86;
  *(v75 + 32) = v57;
  (*(v70 + 32))(v75 + v73, v71, v72);
  *(v75 + v74) = v103;
  v114 = sub_10015A3F8;
  v115 = v75;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_100007A08;
  v113 = &unk_1008B5E40;
  v77 = _Block_copy(&aBlock);
  v78 = v76;
  v79 = v57;

  [v60 dismissViewControllerAnimated:1 completion:v77];
  _Block_release(v77);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v70 + 8))(v102, v72);
}

uint64_t sub_100159A64(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10002849C(&qword_10098A2E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = Bag.amsBag.getter();
  v9 = Promise.__allocating_init()();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v8;
  v11[7] = v9;
  v12 = a2;
  v13 = a3;

  sub_100221B78(0, 0, v7, &unk_1007BAEC8, v11);

  Promise.pipe(to:)();
}

uint64_t sub_100159BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for ActionOutcome();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for ReviewResult();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_100159D04, 0, 0);
}

uint64_t sub_100159D04()
{
  type metadata accessor for ReviewCoordinator();
  swift_allocObject();
  v0[20] = ReviewCoordinator.init()();
  v7 = (&async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:) + async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100159DD8;
  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  return v7(v2, v5, v3, v4);
}

uint64_t sub_100159DD8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100159FDC;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_100159F04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100159F04()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100159FDC()
{

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000056E0(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  static LogMessage.sensitive(_:)();
  sub_10003D444((v0 + 2));
  Logger.error(_:)();

  Promise.reject(_:)();

  v5 = v0[1];

  return v5();
}

unint64_t sub_10015A214()
{
  result = qword_1009764A8;
  if (!qword_1009764A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009764A8);
  }

  return result;
}

unint64_t sub_10015A268()
{
  result = qword_1009764B0;
  if (!qword_1009764B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009764B0);
  }

  return result;
}

uint64_t sub_10015A2B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10015A5C8;

  return sub_100159BE4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10015A3F8()
{
  type metadata accessor for Bag();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_100159A64(v0 + 16, v1, v2);
}

uint64_t sub_10015A48C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100095E9C;

  return sub_100159BE4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10015A574()
{
  result = qword_100976530;
  if (!qword_100976530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976530);
  }

  return result;
}

double sub_10015A5CC()
{
  sub_10002A400(v0, v0[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  return ceil(v1);
}

uint64_t sub_10015A638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10015A680(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10015A754(uint64_t a1)
{
  v3 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v65 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v54 - v10;
  if (qword_10096D198 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v12 = sub_10002849C(&unk_100970ED0);
    sub_1000056A8(v12, qword_100976588);
    v70 = v1;
    v13 = v1;
    Conditional.evaluate(with:)();

    v14 = *&v13[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingTextLabel];
    ivar_lyt = v7->ivar_lyt;
    p_ivar_lyt = &v7->ivar_lyt;
    v62 = ivar_lyt;
    ivar_lyt(v5, v11, v6);
    weak_ivar_lyt = v7->weak_ivar_lyt;
    p_weak_ivar_lyt = &v7->weak_ivar_lyt;
    v61 = weak_ivar_lyt;
    weak_ivar_lyt(v5, 0, 1, v6);
    v66 = v5;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    if (qword_10096D180 != -1)
    {
      swift_once();
    }

    v17 = sub_10002849C(&unk_100972EC0);
    v18 = sub_1000056A8(v17, qword_100976540);
    v69 = v13;
    v19 = v13;
    v60 = v18;
    Conditional.evaluate(with:)();

    [v14 setTextAlignment:v70];
    AnnotationItem.heading.getter();
    v55 = v11;
    v56 = v7;
    if (v20)
    {
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText:v21];

    v22 = *&v19[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingArtworkView];
    v23 = AnnotationItem.headingArtworkItems.getter();
    sub_100547334(v23);

    if (qword_10096D190 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v12, qword_100976570);
    v70 = v19;
    v24 = v19;
    v25 = v65;
    Conditional.evaluate(with:)();

    v26 = *&v24[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_textLabel];
    v27 = v66;
    v62(v66, v25, v6);
    v61(v27, 0, 1, v6);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    v69 = v24;
    v28 = v24;
    Conditional.evaluate(with:)();

    [v26 setTextAlignment:v70];
    AnnotationItem.text.getter();
    if (v29)
    {
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    AnnotationItem.textPairs.getter();
    type metadata accessor for AnnotationItem.TextPair();
    v31 = Array.isNotEmpty.getter();

    if ((v31 & 1) != 0 && (v32 = [v28 traitCollection], v33 = UITraitCollection.prefersAccessibilityLayouts.getter(), v32, (v33 & 1) == 0))
    {
      v35 = 4;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    [v26 setNumberOfLines:v34];
    [v26 setLineBreakMode:v35];
    v36 = OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
    swift_beginAccess();
    v58 = v36;
    v59 = a1;
    v1 = *(v28 + v36);
    v57 = v6;
    v54[1] = v17;
    if (v1 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = &StringUserDefaultsDebugSetting;
    if (v37)
    {
      v11 = 0;
      v5 = (v1 & 0xC000000000000001);
      v6 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v5)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v38 = *(v1 + 8 * v11 + 32);
        }

        v39 = v38;
        a1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_49;
        }

        [v38 removeFromSuperview];

        ++v11;
      }

      while (a1 != v37);
    }

    v5 = OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
    swift_beginAccess();
    v1 = *&v5[v28];
    if (v1 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v11 = 0;
      v6 = (v1 & 0xC000000000000001);
      a1 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v6)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v41 = *(v1 + 8 * v11 + 32);
        }

        v42 = v41;
        v43 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        [v41 removeFromSuperview];

        ++v11;
      }

      while (v43 != v40);
    }

    v6 = _swiftEmptyArrayStorage;
    *(v28 + v58) = _swiftEmptyArrayStorage;

    *&v5[v28] = _swiftEmptyArrayStorage;

    v44 = AnnotationItem.textPairs.getter();
    v1 = v44;
    if (!(v44 >> 62))
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v66;
      if (!v45)
      {
        break;
      }

      goto LABEL_40;
    }

    v45 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v66;
    if (!v45)
    {
      break;
    }

LABEL_40:
    v11 = 0;
    v7 = (v1 & 0xC000000000000001);
    v5 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (v7)
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_48;
      }

LABEL_44:
      v68 = v46;
      sub_10015DA74(&v68, v28);

      ++v11;
      if (v6 == v45)
      {
        goto LABEL_58;
      }
    }

    if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v46 = *(v1 + 8 * v11 + 32);

    v6 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_58:

  v47 = *(v28 + OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v48 = v65;
  v49 = v57;
  v62(a1, v65, v57);
  v61(a1, 0, 1, v49);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v67 = v28;
  v50 = v28;
  Conditional.evaluate(with:)();

  [v47 setTextAlignment:v68];
  v51 = sub_10015CFD8(v59, v50);
  [v47 setAttributedText:v51];

  [v50 setNeedsLayout];
  v52 = *&v56->ivar_base_size;
  v52(v48, v49);
  return (v52)(v55, v49);
}

uint64_t sub_10015AFDC()
{
  v0 = type metadata accessor for ProductAnnotationLayout.ItemLayout.Metrics();
  sub_100005644(v0, qword_1009CE430);
  sub_1000056A8(v0, qword_1009CE430);
  return ProductAnnotationLayout.ItemLayout.Metrics.init(headingArtworkTopSpace:headingArtworkBottomSpace:textSpacing:listTextTopSpace:horizontalPairTextSpace:)();
}

uint64_t sub_10015B0B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_10015B154()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_100976570);
  sub_1000056A8(v7, qword_100976570);
  if (qword_10096DEE8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0C38);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0C20);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10015B334()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_100976588);
  sub_1000056A8(v7, qword_100976588);
  if (qword_10096DEF8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0C68);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEF0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0C50);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_10015B514(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_leadingPairLabels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_trailingPairLabels] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView();
  *&v4[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingArtworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingTextLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_textLabel] = v12;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_listTextLabel] = v13;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingArtworkView]];
  v19 = OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingTextLabel;
  [*&v18[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingTextLabel] setNumberOfLines:0];
  v20 = qword_10096D180;
  v21 = *&v18[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v22, qword_100976540);
  v23 = v18;
  Conditional.evaluate(with:)();

  [v21 setTextAlignment:{v31, v18}];
  [v23 addSubview:*&v18[v19]];
  v24 = OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_textLabel;
  [*&v23[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_textLabel] setNumberOfLines:0];
  v25 = *&v23[v24];
  v26 = v23;
  v27 = v25;
  Conditional.evaluate(with:)();

  [v27 setTextAlignment:{v31, v23}];
  [v26 addSubview:*&v23[v24]];
  v28 = OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_listTextLabel;
  [*&v26[OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_listTextLabel] setNumberOfLines:0];
  v29 = *&v26[v28];
  Conditional.evaluate(with:)();

  [v29 setTextAlignment:{v31, v26}];
  [v26 addSubview:*&v26[v28]];

  return v26;
}

uint64_t sub_10015B8D4()
{
  v1 = type metadata accessor for ProductAnnotationLayout.ItemLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10096D178 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v1, qword_1009CE430);
  (*(v2 + 16))(v4, v5, v1);
  v6 = *(v0 + OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingTextLabel);
  v7 = type metadata accessor for DynamicTypeLabel();
  v29 = v7;
  v30 = &protocol witness table for UILabel;
  v28 = v6;
  v8 = *(v0 + OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_headingArtworkView);
  v26 = type metadata accessor for AnnotationImagesView();
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UILabel;
  v25 = v8;
  v9 = *(v0 + OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_textLabel);
  v10 = *(v0 + OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v23 = v7;
  v21 = &protocol witness table for UILabel;
  v22 = v9;
  v20 = v7;
  v19 = v10;
  swift_beginAccess();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  sub_1002A5830(v15);

  swift_beginAccess();

  sub_1002A5830(v16);

  return ProductAnnotationLayout.ItemLayout.init(metrics:headingText:headingArtwork:text:listText:leadingTextPairs:trailingTextPairs:)();
}

void *sub_10015BDFC(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, uint64_t))
{
  v115 = a3;
  v112 = a2;
  v98 = type metadata accessor for ProductAnnotationLayout.ItemLayout.Metrics();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v111 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ProductAnnotationLayout.ItemLayout();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LabelPlaceholderCompatibility();
  v114 = *(v6 - 8);
  __chkstk_darwin(v6);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v94 - v9;
  __chkstk_darwin(v10);
  v99 = &v94 - v11;
  __chkstk_darwin(v12);
  v14 = &v94 - v13;
  v104 = type metadata accessor for FontUseCase();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v113 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v94 - v17;
  if (qword_10096D190 != -1)
  {
    swift_once();
  }

  v19 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v19, qword_100976570);
  v126 = a1;
  Conditional.evaluate(with:)();
  sub_100005744(0, &qword_1009730E0);
  ObjectType = swift_getObjectType();
  v21 = [a1 traitCollection];
  v102 = v18;
  v121 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096D198 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v19, qword_100976588);
  v126 = a1;
  Conditional.evaluate(with:)();
  v22 = [a1 traitCollection];
  v95 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v23 = v115;
  v24 = AnnotationItem.headingArtworkItems.getter();
  sub_1005490D8(v24, a1);

  v96 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v25 = LayoutViewPlaceholder.init(measurements:)();
  AnnotationItem.headingArtworkItems.getter();
  type metadata accessor for Artwork();
  Array.isNotEmpty.getter();

  LayoutViewPlaceholder.hasContent.setter();
  v108 = ObjectType;
  v120 = sub_10015CF48(v23, a1);
  v26 = AnnotationItem.textPairs.getter();
  if (v26 >> 62)
  {
    v67 = v26;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v67;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = v6;
  v110 = a1;
  v109 = v25;
  if (v27)
  {
    v28 = v26;
    v125[0] = _swiftEmptyArrayStorage;
    result = sub_10014436C(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v30 = 0;
    v31 = v125[0];
    v118 = (v28 & 0xC000000000000001);
    LODWORD(v117) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v32 = (v114 + 8);
    v119 = v28;
    v33 = v27;
    do
    {
      if (v118)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      AnnotationItem.TextPair.leadingText.getter();
      v34 = type metadata accessor for Feature();
      v127 = v34;
      v128 = sub_10015DC24(&qword_100972E50, &type metadata accessor for Feature);
      v35 = sub_1000056E0(&v126);
      (*(*(v34 - 8) + 104))(v35, v117, v34);
      v36 = v121;
      isFeatureEnabled(_:)();
      sub_100007000(&v126);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();

      (*v32)(v14, v122);
      v125[0] = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_10014436C((v37 > 1), v38 + 1, 1);
      }

      ++v30;
      v39 = v127;
      v40 = v128;
      v41 = sub_100047650(&v126, v127);
      v42 = __chkstk_darwin(v41);
      v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);
      sub_1000B3484(v38, v44, v125, v39, v40);
      sub_100007000(&v126);
      v31 = v125[0];
    }

    while (v33 != v30);

    v46 = v114;
    v23 = v115;
  }

  else
  {

    v46 = v114;
  }

  v47 = AnnotationItem.textPairs.getter();
  if (v47 >> 62)
  {
    v68 = v47;
    v48 = _CocoaArrayWrapper.endIndex.getter();
    v47 = v68;
    if (v48)
    {
LABEL_20:
      v49 = v47;
      v125[0] = _swiftEmptyArrayStorage;
      result = sub_10014436C(0, v48 & ~(v48 >> 63), 0);
      if ((v48 & 0x8000000000000000) == 0)
      {
        v118 = v14;
        v50 = 0;
        v51 = v125[0];
        v117 = v49 & 0xC000000000000001;
        v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
        v52 = (v46 + 8);
        v119 = v49;
        do
        {
          if (v117)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          AnnotationItem.TextPair.trailingText.getter();
          v53 = type metadata accessor for Feature();
          v127 = v53;
          v128 = sub_10015DC24(&qword_100972E50, &type metadata accessor for Feature);
          v54 = sub_1000056E0(&v126);
          (*(*(v53 - 8) + 104))(v54, v116, v53);
          v55 = v121;
          isFeatureEnabled(_:)();
          sub_100007000(&v126);
          v56 = v118;
          LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
          LabelPlaceholderCompatibility.layoutTextView.getter();

          (*v52)(v56, v122);
          v125[0] = v51;
          v58 = *(v51 + 16);
          v57 = *(v51 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_10014436C((v57 > 1), v58 + 1, 1);
          }

          ++v50;
          v59 = v127;
          v60 = v128;
          v61 = sub_100047650(&v126, v127);
          v62 = __chkstk_darwin(v61);
          v64 = &v94 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v65 + 16))(v64, v62);
          sub_1000B3484(v58, v64, v125, v59, v60);
          sub_100007000(&v126);
          v51 = v125[0];
        }

        while (v48 != v50);

        v66 = v111;
        v23 = v115;
        goto LABEL_32;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_20;
    }
  }

  v66 = v111;
LABEL_32:
  v117 = sub_10015CFD8(v23, v110);
  if (qword_10096D178 != -1)
  {
    swift_once();
  }

  v69 = v98;
  v70 = sub_1000056A8(v98, qword_1009CE430);
  (*(v97 + 16))(v66, v70, v69);
  AnnotationItem.heading.getter();
  v71 = type metadata accessor for Feature();
  v127 = v71;
  v119 = sub_10015DC24(&qword_100972E50, &type metadata accessor for Feature);
  v128 = v119;
  v72 = sub_1000056E0(&v126);
  v73 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v74 = *(*(v71 - 8) + 104);
  v74(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v71);
  v75 = v95;
  isFeatureEnabled(_:)();
  sub_100007000(&v126);
  v76 = v99;
  v118 = v75;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v77 = *(v114 + 8);
  v78 = v76;
  v79 = v122;
  v77(v78, v122);
  v125[3] = v96;
  v125[4] = &protocol witness table for LayoutViewPlaceholder;
  v125[0] = v109;

  AnnotationItem.text.getter();
  v114 = v80;
  v124[3] = v71;
  v124[4] = v119;
  v81 = sub_1000056E0(v124);
  v116 = v73;
  v82 = v73;
  v83 = v77;
  v115 = v74;
  v74(v81, v82, v71);
  v84 = v121;
  isFeatureEnabled(_:)();
  sub_100007000(v124);
  v85 = v100;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v83(v85, v79);
  v86 = v117;
  if (!v117)
  {
    [objc_allocWithZone(NSAttributedString) init];
  }

  v123[3] = v71;
  v123[4] = v119;
  v87 = sub_1000056E0(v123);
  v115(v87, v116, v71);
  v88 = v86;
  v89 = v84;
  isFeatureEnabled(_:)();
  sub_100007000(v123);
  v90 = v101;
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v83(v90, v122);
  v91 = v105;
  ProductAnnotationLayout.ItemLayout.init(metrics:headingText:headingArtwork:text:listText:leadingTextPairs:trailingTextPairs:)();
  ProductAnnotationLayout.ItemLayout.measurements(fitting:in:)();

  (*(v106 + 8))(v91, v107);
  v92 = *(v103 + 8);
  v93 = v104;
  v92(v113, v104);
  return (v92)(v102, v93);
}

uint64_t sub_10015CF48(uint64_t a1, void *a2)
{
  AnnotationItem.textPairs.getter();
  type metadata accessor for AnnotationItem.TextPair();
  v3 = Array.isNotEmpty.getter();

  if (v3)
  {
    v4 = [a2 traitCollection];
    v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_10015CFD8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Locale();
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FloatingPointRoundingRule();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticDimension();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = AnnotationItem.listText.getter();
  if (!v16)
  {
    return 0;
  }

  v40 = v15;
  v39 = v3;
  v41 = v16;
  v38[1] = a2;
  v17 = [a2 traitCollection];
  v18 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v18)
  {
    v50[0] = v40;
    v50[1] = v41;
    v48 = 161644770;
    v49 = 0xA400000000000000;
    v46 = 0x208F80E2A280E2;
    v47 = 0xA700000000000000;
    sub_10007FED4();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v19 = objc_allocWithZone(NSAttributedString);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithString:v20];
  }

  else
  {
    if (qword_10096DEE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for FontUseCase();
    v23 = sub_1000056A8(v22, qword_1009D0C38);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
    v50[3] = v7;
    v50[4] = &protocol witness table for FontSource;
    v24 = sub_1000056E0(v50);
    (*(v8 + 16))(v24, v10, v7);
    StaticDimension.init(_:scaledLike:)();
    (*(v8 + 8))(v10, v7);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v26 = v25;
    (*(v42 + 8))(v6, v43);
    (*(v12 + 8))(v14, v11);
    v27 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v27 setFirstLineHeadIndent:0.0];
    [v27 setHeadIndent:v26];
    [v27 setDefaultTabInterval:v26];
    sub_100005744(0, &unk_100976600);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v27 setTabStops:isa];

    [v27 setParagraphSpacing:0.0];
    v29 = v44;
    static Locale.storefront.getter();
    Locale.paragraphLineHeightMultiple.getter();
    v31 = v30;
    (*(v45 + 8))(v29, v39);
    [v27 setLineHeightMultiple:v31];
    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_100005744(0, &unk_100976610);
    *(inited + 40) = v27;
    v33 = NSParagraphStyleAttributeName;
    v34 = v27;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10005DC58(inited + 32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10015DC24(&qword_100976620, type metadata accessor for Key);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v35 initWithString:v36 attributes:v20];
  }

  return v21;
}

id sub_10015D6F4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a4 traitCollection];
  v15 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (qword_10096D190 != -1)
  {
    swift_once();
  }

  v16 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v16, qword_100976570);
  v26 = a4;
  Conditional.evaluate(with:)();
  if ((v15 | a3))
  {
    if (qword_10096D180 != -1)
    {
      swift_once();
    }

    v17 = sub_10002849C(&unk_100972EC0);
    v18 = qword_100976540;
  }

  else
  {
    if (qword_10096D188 != -1)
    {
      swift_once();
    }

    v17 = sub_10002849C(&unk_100972EC0);
    v18 = qword_100976558;
  }

  sub_1000056A8(v17, v18);
  v25 = a4;
  Conditional.evaluate(with:)();
  v19 = v26;
  type metadata accessor for DynamicTypeLabel();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v21 = v20;
  [v21 setNumberOfLines:(v15 & 1) == 0];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4;
  }

  [v21 setLineBreakMode:v22];

  [v21 setTextAlignment:v19];
  v23 = String._bridgeToObjectiveC()();
  [v21 setText:v23];

  (*(v10 + 8))(v13, v9);
  return v21;
}

void sub_10015DA74(uint64_t a1, void *a2)
{
  v3 = AnnotationItem.TextPair.leadingText.getter();
  v5 = sub_10015D6F4(v3, v4, 1, a2);

  v6 = AnnotationItem.TextPair.trailingText.getter();
  v8 = sub_10015D6F4(v6, v7, 1, a2);

  v9 = OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
  swift_beginAccess();
  v10 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v11 = OBJC_IVAR____TtCC8AppStore28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
  swift_beginAccess();
  v12 = v8;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [a2 addSubview:v10];
  [a2 addSubview:v12];
}

uint64_t sub_10015DC24(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10015DC6C()
{
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  [v0 bounds];
  Height = CGRectGetHeight(v22);
  if (Height < Width)
  {
    Width = Height;
  }

  [v0 bounds];
  v3 = CGRectGetMidX(v23) - Width * 0.5;
  [v0 bounds];
  v4 = CGRectGetMidY(v24) - Width * 0.5;
  [v0 bounds];
  v5 = ceil(CGRectGetHeight(v25) * 0.6 * 0.5);
  [v0 bounds];
  v6 = ceil(CGRectGetHeight(v26) * 0.5) - v5;
  [v0 bounds];
  v7 = ceil(CGRectGetHeight(v27) * 0.6 * 0.5);
  [v0 bounds];
  v8 = ceil(CGRectGetHeight(v28) * 0.5) - v7;
  v29.origin.x = v3;
  v29.origin.y = v4;
  v29.size.width = Width;
  v29.size.height = Width;
  v30 = CGRectInset(v29, v6, v8);
  x = v30.origin.x;
  y = v30.origin.y;
  v11 = v30.size.width;
  v12 = v30.size.height;
  [v0 bounds];
  v13 = ceil(ceil(CGRectGetHeight(v31) * 0.08) * -0.5);
  [v0 bounds];
  v14 = ceil(ceil(CGRectGetHeight(v32) * 0.08) * -0.5);
  v15 = x;
  v16 = y;
  v17 = v11;
  v18 = v12;

  *&result = CGRectInset(*&v15, v13, v14);
  return result;
}

void sub_10015DE1C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 animationForKey:v1];

  if (v2)
  {

    v3 = String._bridgeToObjectiveC()();
    [v0 removeAnimationForKey:v3];
  }

  [v0 removeAllAnimations];
  v4 = sub_10015F07C();
  v5 = String._bridgeToObjectiveC()();
  [v0 addAnimation:v4 forKey:v5];
}

uint64_t sub_10015DF48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6F72507265746E65 && a2 == 0xED00007373657267 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x676F725074697865 && a2 == 0xEC00000073736572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();
  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS____TtC8AppStore20InstallProgressLayer;
  v7 = objc_msgSendSuper2(&v8, "needsDisplayForKey:", v6);

  return v7;
}

id sub_10015E0F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() animationWithKeyPath:v4];

    v6 = [v2 presentationLayer];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 valueForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    v11 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v12 = sub_10002A400(&v21, *(&v22 + 1));
      v13 = *(*(&v20 + 1) - 8);
      v14 = __chkstk_darwin(v12);
      v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v13 + 8))(v16, v11);
      sub_100007000(&v21);
    }

    else
    {
LABEL_13:
      v17 = 0;
    }

    [v5 setFromValue:{v17, v19, v20, v21, v22}];
    swift_unknownObjectRelease();
    [v5 setDuration:0.4];
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v23.receiver = v2;
    v23.super_class = type metadata accessor for InstallProgressLayer();
    v5 = objc_msgSendSuper2(&v23, "actionForKey:", v10);
  }

  return v5;
}

void sub_10015E3F4(CGContext *a1)
{
  CGContextSetFillColorWithColor(a1, *&v1[OBJC_IVAR____TtC8AppStore20InstallProgressLayer_stageColor]);
  [v1 bounds];
  CGContextFillRect(a1, v7);
  [v1 enterProgress];
  if (v3 > COERCE_DOUBLE(1))
  {
    sub_10015E630(a1);
  }

  [v1 progress];
  if (v4 > COERCE_DOUBLE(1))
  {
    sub_10015E824(a1);
  }

  [v1 exitProgress];
  if (v5 > COERCE_DOUBLE(1))
  {

    sub_10015E534(a1);
  }
}

void sub_10015E534(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v12.origin.x = sub_10015DC6C();
  Width = CGRectGetWidth(v12);
  v13.origin.x = sub_10015DC6C();
  Height = CGRectGetHeight(v13);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 exitProgress];
  v7 = v6;
  [v1 bounds];
  v8 = CGRectGetWidth(v14);
  [v1 bounds];
  v9 = CGRectGetHeight(v15);
  if (v8 > v9)
  {
    v9 = v8;
  }

  v10 = v5 - (v5 + v7 * (ceil(sqrt(v9 * 0.5 * (v9 * 0.5) + v9 * 0.5 * (v9 * 0.5))) - v5));
  v16.origin.x = sub_10015DC6C();
  v17 = CGRectInset(v16, v10, v10);
  CGContextFillEllipseInRect(a1, v17);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_10015E630(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v22.origin.x = sub_10015DC6C();
  Width = CGRectGetWidth(v22);
  v23.origin.x = sub_10015DC6C();
  Height = CGRectGetHeight(v23);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 enterProgress];
  v7 = v5 * (1.0 - v6);
  [v1 bounds];
  v8 = CGRectGetWidth(v24);
  [v1 bounds];
  v9 = CGRectGetHeight(v25);
  if (v9 < v8)
  {
    v8 = v9;
  }

  [v1 bounds];
  v10 = CGRectGetMidX(v26) - v8 * 0.5;
  [v1 bounds];
  v11 = CGRectGetMidY(v27) - v8 * 0.5;
  [v1 bounds];
  v12 = ceil(CGRectGetHeight(v28) * 0.6 * 0.5);
  [v1 bounds];
  v13 = ceil(CGRectGetHeight(v29) * 0.5) - v12;
  [v1 bounds];
  v14 = ceil(CGRectGetHeight(v30) * 0.6 * 0.5);
  [v1 bounds];
  v15 = ceil(CGRectGetHeight(v31) * 0.5) - v14;
  v32.origin.x = v10;
  v32.origin.y = v11;
  v32.size.width = v8;
  v32.size.height = v8;
  v33 = CGRectInset(v32, v13, v15);
  v34 = CGRectInset(v33, v7, v7);
  x = v34.origin.x;
  y = v34.origin.y;
  v18 = v34.size.width;
  v19 = v34.size.height;
  [v1 bounds];
  v20 = CGRectGetHeight(v35);
  CGContextSetLineWidth(a1, ceil(v20 * 0.08));
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v18;
  v36.size.height = v19;
  CGContextStrokeEllipseInRect(a1, v36);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_10015E824(CGContext *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  [v2 bounds];
  Width = CGRectGetWidth(v34);
  [v2 bounds];
  Height = CGRectGetHeight(v35);
  if (Height < Width)
  {
    Width = Height;
  }

  [v2 bounds];
  v10 = CGRectGetMidX(v36) - Width * 0.5;
  [v2 bounds];
  v11 = CGRectGetMidY(v37) - Width * 0.5;
  [v2 bounds];
  v12 = ceil(CGRectGetHeight(v38) * 0.6 * 0.5);
  [v2 bounds];
  v13 = ceil(CGRectGetHeight(v39) * 0.5) - v12;
  [v2 bounds];
  v14 = ceil(CGRectGetHeight(v40) * 0.6 * 0.5);
  [v2 bounds];
  v15 = ceil(CGRectGetHeight(v41) * 0.5) - v14;
  v42.origin.x = v10;
  v42.origin.y = v11;
  v42.size.width = Width;
  v42.size.height = Width;
  v43 = CGRectInset(v42, v13, v15);
  CGRectGetMidX(v43);
  [v2 bounds];
  ceil(CGRectGetHeight(v44) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v45) * 0.5);
  [v2 bounds];
  v16 = CGRectGetWidth(v46);
  [v2 bounds];
  v17 = CGRectGetHeight(v47);
  if (v17 < v16)
  {
    v16 = v17;
  }

  [v2 bounds];
  v18 = CGRectGetMidX(v48) - v16 * 0.5;
  [v2 bounds];
  v19 = CGRectGetMidY(v49) - v16 * 0.5;
  [v2 bounds];
  v20 = ceil(CGRectGetHeight(v50) * 0.6 * 0.5);
  [v2 bounds];
  v21 = ceil(CGRectGetHeight(v51) * 0.5) - v20;
  [v2 bounds];
  v22 = ceil(CGRectGetHeight(v52) * 0.6 * 0.5);
  [v2 bounds];
  v23 = ceil(CGRectGetHeight(v53) * 0.5) - v22;
  v54.origin.x = v18;
  v54.origin.y = v19;
  v54.size.width = v16;
  v54.size.height = v16;
  v55 = CGRectInset(v54, v21, v23);
  CGRectGetMidY(v55);
  [v2 bounds];
  ceil(CGRectGetHeight(v56) * 0.6 * 0.5);
  [v2 bounds];
  CGRectGetHeight(v57);
  [v2 bounds];
  ceil(CGRectGetHeight(v58) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v59) * 0.5);
  [v2 bounds];
  v24 = CGRectGetWidth(v60);
  [v2 bounds];
  v25 = CGRectGetHeight(v61);
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  [v2 bounds];
  v27 = CGRectGetMidX(v62) - v26 * 0.5;
  [v2 bounds];
  v28 = CGRectGetMidY(v63) - v26 * 0.5;
  [v2 bounds];
  v29 = ceil(CGRectGetHeight(v64) * 0.6 * 0.5);
  [v2 bounds];
  v30 = ceil(CGRectGetHeight(v65) * 0.5) - v29;
  [v2 bounds];
  v31 = ceil(CGRectGetHeight(v66) * 0.6 * 0.5);
  [v2 bounds];
  v32 = ceil(CGRectGetHeight(v67) * 0.5) - v31;
  v68.origin.x = v27;
  v68.origin.y = v28;
  v68.size.width = v26;
  v68.size.height = v26;
  v69 = CGRectInset(v68, v30, v32);
  CGRectGetMidY(v69);
  [v2 progress];
  CGContextRef.move(to:)();
  CGContextRef.addArc(center:radius:startAngle:endAngle:clockwise:)();
  CGContextClosePath(a1);
  (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
  CGContextRef.fillPath(using:)();
  (*(v5 + 8))(v7, v4);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

id sub_10015EEEC(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v5 = [v4 CGColor];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC8AppStore20InstallProgressLayer_originAngle] = 0x4012D97C7F3321D2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InstallProgressLayer();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10015EFF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallProgressLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10015F07C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v1 setFromValue:isa];

  v3 = Double._bridgeToObjectiveC()().super.super.isa;
  [v1 setToValue:v3];

  v4 = v1;
  [v4 setDuration:0.3];
  [v4 setFillMode:kCAFillModeForwards];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

uint64_t sub_10015F16C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10015F278()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for MetricsViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x68));
  [v0 addChildViewController:v1];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [v4 addSubview:result];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result superview];
  if (v7)
  {
    v8 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_opt_self();
    sub_10002849C(&qword_100973210);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007BB060;
    v11 = [v6 leftAnchor];
    v12 = [v8 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v6 rightAnchor];
    v15 = [v8 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v10 + 40) = v16;
    v17 = [v6 topAnchor];
    v18 = [v8 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v10 + 48) = v19;
    v20 = [v6 bottomAnchor];
    v21 = [v8 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v10 + 56) = v22;
    sub_10015F8AC();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 activateConstraints:isa];
  }

  return [v1 didMoveToParentViewController:v0];
}

void sub_10015F62C(void *a1)
{
  v1 = a1;
  sub_10015F278();
}

void sub_10015F674(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10015F87C();
}

id sub_10015F6E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10015F754(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)]);
  v2 = *&a1[*((swift_isaMask & *a1) + 0x68)];
}

unint64_t sub_10015F8AC()
{
  result = qword_1009766E0;
  if (!qword_1009766E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009766E0);
  }

  return result;
}

uint64_t sub_10015F8F8()
{
  sub_10002849C(&unk_100993620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B23A0;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  v7 = sub_1000836E4(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_1009766E8 = v7;
  return result;
}

id sub_10015FC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10015FD6C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultsContainerViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  ArtworkLoader.isOccluded.setter();
}

void sub_10015FDEC(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchResultsContainerViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  ArtworkLoader.isOccluded.setter();
}

uint64_t sub_10015FE64(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v6 - 8);
  v65 = &v40 - v7;
  v8 = type metadata accessor for SearchOrigin();
  __chkstk_darwin(v8 - 8);
  v64 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_100982AA0);
  __chkstk_darwin(v10 - 8);
  v63 = &v40 - v11;
  v12 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v13 = swift_allocObject();
  type metadata accessor for PromotedContentMetricCollector();
  *(v13 + 16) = static PromotedContentMetricCollector.shared.getter();
  v69 = v12;
  v70 = sub_1001611A4(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
  v67 = v13;
  type metadata accessor for AdvertRotationControllerProvider();
  swift_allocObject();
  v14 = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
  v15 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_objectGraph);
  v56 = v1;
  type metadata accessor for ArtworkIconFetcher();
  swift_allocObject();
  swift_retain_n();
  v16 = ArtworkIconFetcher.init(objectGraph:)();
  sub_10002849C(&qword_1009844F0);
  type metadata accessor for Dependency();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007B1890;
  v67 = v14;
  v59 = v14;

  Dependency.init<A>(satisfying:with:)();
  v67 = v16;
  v58 = v16;

  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for GuidedSearchPresenter();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v55 = v66;
  v54 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_facetsPresenter);
  sub_10002849C(&unk_1009767E0);

  BaseObjectGraph.optional<A>(_:)();
  v53 = v67;
  v52 = v68;
  v51 = SearchAction.term.getter();
  v50 = v17;
  SearchAction.entity.getter();
  SearchAction.origin.getter();
  v49 = SearchAction.source.getter();
  v48 = v18;
  SearchAction.referrerData.getter();
  v47 = SearchAction.spellCheckEnabled.getter();
  v46 = SearchAction.excludedTerms.getter();
  v45 = SearchAction.originatingTerm.getter();
  v44 = v19;
  SearchAction.guidedSearchTokens.getter();
  SearchAction.guidedSearchOptimizationTerm.getter();
  sub_10002849C(&unk_100973AF0);
  inject<A, B>(_:from:)();
  type metadata accessor for ImpressionsAppendixMetricsTracker();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for SearchResultsDiffablePagePresenter();
  swift_allocObject();
  v20 = SearchResultsDiffablePagePresenter.init(objectGraph:guidedSearchPresenter:facetsPresenter:sponsoredSearchSessionManager:term:searchEntity:origin:source:referrerData:isNetworkConstrained:spellCheckEnabled:excludedTerms:originatingTerm:guidedSearchTokens:guidedSearchOptimizationTerm:appStateController:impressionsAppendixDataProvider:)();
  v21 = sub_1001611A4(&unk_1009767F0, &type metadata accessor for SearchResultsDiffablePagePresenter);
  swift_retain_n();
  v22 = sub_10054A47C(v15, v20, v21, v57, 0x6552686372616573, 0xED000073746C7573);

  v23 = objc_allocWithZone(type metadata accessor for SearchResultsDiffablePageViewController());

  v24 = a1;
  v25 = v56;
  v26 = sub_100270BBC(v20, v24, v22);
  v27 = v25 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController;
  v28 = *(v25 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController);
  if (v28)
  {
    v29 = v42;
    v30 = v41;
    v31 = v43;
    (*(v42 + 104))(v41, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v43);
    v32 = v28;
    AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
    (*(v29 + 8))(v30, v31);
  }

  type metadata accessor for PageRenderMetricsEvent();
  v33 = v60;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  (*(v61 + 8))(v33, v62);
  static PageRenderMetricsEvent.lastInteractionTime.setter();
  static PageRenderEvent.willPerformAction()();
  v34 = &off_1008BB3F0;
  if (!v26)
  {
    v34 = 0;
  }

  v35 = *v27;
  *v27 = v26;
  *(v27 + 8) = v34;
  v36 = v26;

  if (v26)
  {
    v37 = v25 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsDelegate;
    swift_unknownObjectWeakLoadStrong();
    v38 = *(v37 + 8);

    *&v36[qword_1009CEB60 + 8] = v38;
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

BOOL sub_1001606D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return *(v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection) == 2;
  }

  if (*(v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection) != 2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = SearchResultsDiffablePagePresenter.term.getter();
  if (v8)
  {
    if (v7 == a1 && v8 == a2)
    {

      return 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_1001607BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController];
  if (!a1)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v10)
  {
    v11 = v10 == a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (!v10)
    {
      v12 = 0;
LABEL_10:
      *v9 = 0;
      v9[1] = 0;

      goto LABEL_11;
    }

LABEL_9:
    (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v4, v6);
    v13 = v10;
    AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
    (*(v5 + 8))(v8, v4);

    v12 = *v9;
    goto LABEL_10;
  }

LABEL_11:
  v14 = OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController];
  if (v15)
  {
    v16 = v15;
    [v16 willMoveToParentViewController:0];
    v17 = [v16 view];
    if (!v17)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v18 = v17;
    [v17 removeFromSuperview];

    [v16 removeFromParentViewController];
  }

  if (!a1)
  {
LABEL_20:
    v35 = *&v2[v14];
    *&v2[v14] = a1;
    v36 = a1;

    return;
  }

  v19 = a1;
  [v2 addChildViewController:v19];
  v20 = [v19 view];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v2 view];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v21 setFrame:{v25, v27, v29, v31}];
  v32 = [v2 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v19 view];

  if (v34)
  {
    [v33 addSubview:v34];

    [v19 didMoveToParentViewController:v2];
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

id sub_100160AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100160C18()
{
  result = qword_1009767A8;
  if (!qword_1009767A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009767A8);
  }

  return result;
}

id sub_100160C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController] = 0;
  v7 = &v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController];
  *v7 = 0;
  v7[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_objectGraph] = a3;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_artworkLoader] = v15;
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_facetsPresenter] = a1;
  type metadata accessor for SearchGhostHintMetricsTracker();

  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for SearchHintsPresenter();
  swift_allocObject();
  v8 = SearchHintsPresenter.init(objectGraph:searchTextPresenter:searchGhostHintTracker:)();
  v9 = sub_1001611A4(&qword_1009767B0, &type metadata accessor for SearchHintsPresenter);

  v10 = sub_10054A47C(a3, v8, v9, &_swiftEmptyArrayStorage, 0x6948686372616573, 0xEB0000000073746ELL);
  v11 = objc_allocWithZone(type metadata accessor for SearchHintsViewController());
  *&v4[OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchHintsViewController] = sub_100276CD0(v8, v10);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SearchResultsContainerViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);

  return v12;
}

void sub_100160EB4()
{
  *(v0 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100160F74(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection);
  if (v5 != a1)
  {
    v6 = v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    *(v1 + v4) = a1;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      v19 = a1;
      goto LABEL_15;
    }

    v9 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchHintsViewController);
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsViewController);
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = v9;
    v10 = v9;
    goto LABEL_15;
  }

  v9 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v11)
  {
    v12 = v19;
    if (v19)
    {
      sub_100161158();
      v13 = v11;
      v14 = v19;
      v15 = static NSObject.== infix(_:_:)();

      v12 = v19;
      if (v15)
      {
LABEL_18:
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v12 = v19;
    if (!v19)
    {
      goto LABEL_18;
    }
  }

  sub_1001607BC(v12);
LABEL_22:
  v16 = v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    v18 = swift_getObjectType();
    (*(v17 + 16))(*(v2 + v4), v5, v18, v17);
    swift_unknownObjectRelease();
  }

LABEL_24:
}

unint64_t sub_100161158()
{
  result = qword_1009767B8;
  if (!qword_1009767B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009767B8);
  }

  return result;
}

uint64_t sub_1001611A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100161204()
{
  result = qword_100976800;
  if (!qword_100976800)
  {
    type metadata accessor for EngagementToggleAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976800);
  }

  return result;
}

uint64_t sub_10016125C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStoreEngagementManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = EngagementToggleAction.identifier.getter();
  v6 = v5;
  v7 = EngagementToggleAction.value.getter() & 1;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  AppStoreEngagementManager.setIdentifier(_:isEnabled:)(v8, v7);

  sub_10002849C(&qword_1009764A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v9 = Promise.__allocating_init(value:)();

  return v9;
}

uint64_t sub_1001613CC@<X0>(uint64_t *a1@<X8>)
{
  result = ShelfLayoutContext.traitCollection.getter();
  *a1 = result;
  return result;
}

id CondensedEditorialSearchResultContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *CondensedEditorialSearchResultContentView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v10 - 8);
  v58 = &v55 - v11;
  v55 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v12 = *(v55 - 8);
  __chkstk_darwin(v55);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v20 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v5[v21] = DynamicTypeLabel.__allocating_init(frame:)();
  v22 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel;
  *&v5[v22] = DynamicTypeLabel.__allocating_init(frame:)();
  v23 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton;
  *&v5[v23] = [objc_opt_self() buttonWithType:0];
  v24 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v56 = v16;
  v25 = *(v16 + 104);
  v25(&v5[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_configuration], enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v15);
  *&v5[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_action] = 0;
  v26 = &v5[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_buttonHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v5[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkSize];
  v25(v18, v24, v15);
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  v57 = *(v16 + 8);
  v57(v18, v15);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v29 = v28;
  v31 = v30;
  (*(v12 + 8))(v14, v55);
  *v27 = v29;
  *(v27 + 1) = v31;
  v32 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v60.receiver = v5;
  v60.super_class = v32;
  v33 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v38 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel]];
  v39 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel]];
  v40 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton;
  [v37 addSubview:*&v37[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton]];
  [*&v37[v38] setLineBreakMode:4];
  [*&v37[v39] setLineBreakMode:4];
  v41 = *&v37[v40];
  v42 = v41;
  v43 = [v37 traitCollection];
  v44 = v58;
  v45 = ObjectType;
  sub_1001AEEC8(v41, v58);

  v46 = type metadata accessor for UIButton.Configuration();
  (*(*(v46 - 8) + 56))(v44, 0, 1, v46);
  UIButton.configuration.setter();

  v47 = v45;
  v48 = sub_1001AF164();
  sub_100161B08(v48, v49, &OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton);

  v50 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v56 + 16))(v18, &v37[v50], v15);
  v51 = [v37 traitCollection];

  v52.super.isa = v51;
  sub_10016210C(v18, v52);

  v57(v18, v15);
  sub_10002849C(&qword_10097B110);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1007B10D0;
  *(v53 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v53 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v47;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v37;
}

uint64_t type metadata accessor for CondensedEditorialSearchResultContentView()
{
  result = qword_100976898;
  if (!qword_100976898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100161B08(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a3;
  v4 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v4 - 8);
  v43 = &v42 - v5;
  v6 = type metadata accessor for FontSource();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontUseCase();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v42 - v13;
  v14 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for AttributedString();
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  __chkstk_darwin(v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v19 - 8);
  v46 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v42 - v22;
  v45 = *(v3 + *v50);
  UIButton.configuration.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v50 = v3;
  v24 = [v3 traitCollection];
  v25 = String.count.getter();
  if (v24 && (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0)
  {
    if (v25 < 9)
    {
LABEL_4:
      v26 = v44;
      if (qword_10096E0F0 != -1)
      {
        swift_once();
      }

      v27 = qword_1009D1250;
      goto LABEL_11;
    }
  }

  else if (v25 <= 6)
  {
    goto LABEL_4;
  }

  v26 = v44;
  if (qword_10096E0F8 != -1)
  {
    swift_once();
  }

  v27 = qword_1009D1268;
LABEL_11:
  v28 = sub_1000056A8(v9, v27);
  v29 = *(v26 + 16);
  v29(v11, v28, v9);

  v30 = v49;
  (*(v26 + 32))(v49, v11, v9);
  v29(v8, v30, v9);
  v32 = v47;
  v31 = v48;
  (*(v47 + 104))(v8, enum case for FontSource.useCase(_:), v48);
  v33 = [v50 traitCollection];
  isa = FontSource.font(compatibleWith:)(v33).super.isa;

  (*(v32 + 8))(v8, v31);
  v53 = isa;
  sub_1001469E0();
  v35 = isa;
  AttributedString.subscript.setter();
  v36 = type metadata accessor for UIButton.Configuration();
  v37 = (*(*(v36 - 8) + 48))(v23, 1, v36);
  v38 = v51;
  if (!v37)
  {
    v39 = v52;
    v40 = v43;
    (*(v52 + 16))(v43, v18, v51);
    (*(v39 + 56))(v40, 0, 1, v38);
    UIButton.Configuration.attributedTitle.setter();
  }

  sub_100031660(v23, v46, &qword_10097CC90);
  UIButton.configuration.setter();

  (*(v26 + 8))(v30, v9);
  (*(v52 + 8))(v18, v38);
  return sub_10002B894(v23, &qword_10097CC90);
}

void sub_10016210C(uint64_t a1, UITraitCollection a2)
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel);
  [v8 setNumberOfLines:CondensedSearchResultCardLayout.Configuration.headerNumberOfLines.getter()];
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel);
  [v9 setNumberOfLines:CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(a2)];
  sub_100005744(0, &qword_1009730E0);
  CondensedSearchResultCardLayout.Configuration.headerFont.getter();
  v10 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  [v8 setFont:v10];

  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  v12 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v11(v7, v4);
  [v9 setFont:v12];

  v13 = [objc_opt_self() systemBlueColor];
  [v8 setTextColor:v13];
}

id sub_10016230C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001AF164();
  sub_1001AF188(v9, v10, a3, &off_1008B61F0);

  v11 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v6 + 16))(v8, &a1[v11], v5);
  v12 = [a1 traitCollection];
  v13.super.isa = v12;
  sub_10016210C(v8, v13);

  (*(v6 + 8))(v8, v5);
  return [a1 setNeedsLayout];
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_100976848);
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v61 = &v56 - v3;
  v4 = type metadata accessor for CondensedSearchResultCardLayout();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutRect();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  __chkstk_darwin(v18);
  v68 = &v56 - v19;
  v20 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v87.receiver = v0;
  v87.super_class = v20;
  objc_msgSendSuper2(&v87, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v57 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView;
  v21 = *&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView];
  if (v21)
  {
    *(&v85 + 1) = type metadata accessor for ArtworkView();
    v86 = sub_100168384(&qword_100989780, &type metadata accessor for ArtworkView);
    *&v84 = v21;
  }

  else if (*&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid])
  {
    *&v72 = *&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid];
    type metadata accessor for IconArtworkGridView();
    Measurable.placeable.getter();
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
  }

  v22 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid];
  v24 = v21;
  if (v23)
  {
    [v23 _setContinuousCornerRadius:10.0];
  }

  v25 = [v1 traitCollection];
  v26 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v26)
  {
    v27 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v27], v8);
    CondensedSearchResultCardLayout.Configuration.metrics.getter();
    (*(v9 + 8))(v11, v8);
    CondensedSearchResultCardLayout.Metrics.overriddingArtworkSize(with:)();
    v28 = v70;
    v29 = *(v69 + 8);
    v29(v17, v70);
    v30 = *&v1[v57];
    if (v30)
    {
      v73 = type metadata accessor for ArtworkView();
      v74 = &protocol witness table for UIView;
      *&v72 = v30;
      sub_100005A38(&v72, v81);
    }

    else
    {
      v43 = *&v1[v22];
      if (v43)
      {
        v44 = type metadata accessor for IconArtworkGridView();
        v45 = &protocol witness table for UIView;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v81[1] = 0;
        v81[2] = 0;
      }

      v81[0] = v43;
      v82 = v44;
      v83 = v45;
      v46 = v43;
      v30 = 0;
    }

    v47 = *&v1[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel];
    v79 = type metadata accessor for DynamicTypeLabel();
    v80 = &protocol witness table for UIView;
    v78[0] = v47;
    v48 = *&v1[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel];
    v76 = v79;
    v77 = &protocol witness table for UILabel;
    v75[0] = v48;
    v49 = *&v1[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton];
    v71[3] = sub_100005744(0, &qword_1009811E0);
    v71[4] = &protocol witness table for UIView;
    v71[0] = v49;
    v50 = v30;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v68;
    sub_100162D94(v68, v81, v78, v75, v71, &v72);
    v29(v54, v28);
    sub_10002B894(v81, &qword_100975610);
    sub_100007000(v71);
    sub_100007000(v75);
    sub_100007000(v78);
    sub_10002A400(&v72, v73);
    v55 = v62;
    dispatch thunk of Layout.placeChildren(relativeTo:in:)();
    (*(v65 + 8))(v55, v66);
    sub_10002B894(&v84, &unk_10097B860);
    sub_100007000(&v72);
  }

  else
  {
    v31 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v31], v8);
    CondensedSearchResultCardLayout.Configuration.metrics.getter();
    (*(v9 + 8))(v11, v8);
    CondensedSearchResultCardLayout.Metrics.overriddingArtworkSize(with:)();
    (*(v69 + 8))(v14, v70);
    sub_100031660(&v84, &v72, &unk_10097B860);
    v32 = *&v1[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel];
    v82 = type metadata accessor for DynamicTypeLabel();
    v83 = &protocol witness table for UILabel;
    v81[0] = v32;
    v33 = *&v1[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel];
    v79 = v82;
    v80 = &protocol witness table for UILabel;
    v78[0] = v33;
    v34 = *&v1[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton];
    v76 = sub_100005744(0, &qword_1009811E0);
    v77 = &protocol witness table for UIButton;
    v75[0] = v34;
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = v58;
    CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
    v39 = [v1 traitCollection];
    sub_100168384(&qword_100976850, &type metadata accessor for CondensedSearchResultCardLayout);
    v41 = v60;
    v40 = v61;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v42 = v64;
    dispatch thunk of Placeable.place(at:with:)();

    (*(v63 + 8))(v40, v42);
    (*(v59 + 8))(v38, v41);
    sub_10002B894(&v84, &unk_10097B860);
  }
}

uint64_t sub_100162D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v83 = a4;
  v110 = a3;
  v87 = a6;
  v91 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v97 = *(v91 - 8);
  __chkstk_darwin(v91 - 8);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v10 = *(v113 - 8);
  __chkstk_darwin(v113);
  v89 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v115 = *(v12 - 8);
  __chkstk_darwin(v12);
  *&v114 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v81 - v15;
  v93 = type metadata accessor for VerticalFlowLayout.Child();
  v17 = *(v93 - 8);
  __chkstk_darwin(v93);
  v85 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v112 = v81 - v20;
  __chkstk_darwin(v21);
  v111 = v81 - v22;
  __chkstk_darwin(v23);
  v109 = v81 - v24;
  __chkstk_darwin(v25);
  v27 = v81 - v26;
  v123 = _swiftEmptyArrayStorage;
  sub_100031660(a2, &v119, &qword_100975610);
  v90 = a1;
  v92 = v17;
  v84 = v16;
  v88 = v12;
  if (*(&v120 + 1))
  {
    sub_100005A38(&v119, v122);
    CondensedSearchResultCardLayout.Metrics.artworkTopMargin.getter();
    CondensedSearchResultCardLayout.Metrics.artworkAXBottomMargin.getter();
    (*(v115 + 104))(v16, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    sub_10002849C(&unk_10098D820);
    v28 = v89;
    v29 = v10;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    v31 = v97;
    v32 = v91;
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v116 = v30;
    sub_100168384(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    sub_10002849C(&unk_10098D830);
    sub_1000364CC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v31[13])(v9, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v32);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v33 = v31;
    v10 = v29;
    v12 = v88;
    v34 = v33[1];
    v108 = v9;
    v34(v9, v32);
    (*(v10 + 8))(v28, v113);
    (*(v115 + 8))(v16, v12);
    sub_10002B894(v117, &qword_1009799E0);
    sub_100007000(&v119);
    v35 = v92;
    v36 = v109;
    v37 = v93;
    (*(v92 + 16))(v109, v27, v93);
    v38 = sub_1000333F4(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1000333F4(v39 > 1, v40 + 1, 1, v38);
    }

    (*(v35 + 8))(v27, v37);
    sub_100007000(v122);
    *(v38 + 2) = v40 + 1;
    (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v36, v37);
    v123 = v38;
    v9 = v108;
  }

  else
  {
    sub_10002B894(&v119, &qword_100975610);
  }

  CondensedSearchResultCardLayout.Metrics.headerTextSpace.getter();
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  sub_10002C0AC(v110, v117);
  sub_10002849C(&unk_10097E960);
  sub_10002849C(&unk_10097E950);
  v41 = v9;
  if (swift_dynamicCast())
  {
    sub_100007000(&v116);
    v42 = *(v115 + 104);
    v108 = (v115 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v43 = v114;
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v109 = v42;
    (v42)(v114);
  }

  else
  {
    v44 = *(v115 + 104);
    v108 = (v115 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v43 = v114;
    v109 = v44;
    (v44)(v114, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  }

  v45 = v12;
  v107 = sub_10002849C(&unk_10098D820);
  v46 = *(v10 + 72);
  v106 = *(v10 + 80);
  v81[1] = (v106 + 32) & ~v106;
  v105 = 3 * v46;
  v104 = 2 * v46;
  v103 = v46;
  v47 = swift_allocObject();
  v114 = xmmword_1007B1E00;
  *(v47 + 16) = xmmword_1007B1E00;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v117[0] = v47;
  v94 = sub_100168384(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v102 = sub_10002849C(&unk_10098D830);
  v101 = sub_1000364CC();
  v48 = v89;
  v49 = v10;
  v50 = v113;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v100 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v51 = v97;
  v52 = v97[13];
  v98 = (v97 + 13);
  v99 = v52;
  v53 = v91;
  v52(v41);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v110 = v51[1];
  v110(v41, v53);
  v54 = *(v49 + 8);
  v96 = v49 + 8;
  v97 = v54;
  (v54)(v48, v50);
  v55 = *(v115 + 8);
  v115 += 8;
  v95 = v55;
  v55(v43, v45);
  sub_10002B894(&v119, &qword_1009799E0);
  sub_100007000(v122);
  v56 = v83[3];
  v57 = v83[4];
  v58 = v45;
  v59 = sub_10002A400(v83, v56);
  v122[3] = v56;
  v122[4] = *(v57 + 8);
  v60 = sub_1000056E0(v122);
  (*(*(v56 - 8) + 16))(v60, v59, v56);
  CondensedSearchResultCardLayout.Metrics.titleTextSpace.getter();
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v61 = v84;
  (v109)(v84, v82, v58);
  v62 = swift_allocObject();
  *(v62 + 16) = v114;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v116 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v99(v41, v100, v53);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v110(v41, v53);
  (v97)(v48, v50);
  v63 = v88;
  v95(v61, v88);
  sub_10002B894(v117, &qword_1009799E0);
  sub_100007000(&v119);
  sub_100007000(v122);
  CondensedSearchResultCardLayout.Metrics.viewButtonAXTopMargin.getter();
  CondensedSearchResultCardLayout.Metrics.artworkBottomMargin.getter();
  (v109)(v61, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v114;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  *&v117[0] = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v99(v41, v100, v53);
  v65 = v85;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v110(v41, v53);
  (v97)(v48, v50);
  v95(v61, v63);
  sub_10002B894(&v119, &qword_1009799E0);
  sub_100007000(v122);
  sub_10002849C(&qword_10096FC30);
  v66 = v92;
  v67 = *(v92 + 72);
  v68 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v69 = 2 * v67;
  v70 = swift_allocObject();
  *(v70 + 16) = v114;
  v71 = v70 + v68;
  v72 = *(v66 + 16);
  v73 = v111;
  v74 = v93;
  v72(v71, v111, v93);
  v75 = v71 + v67;
  v76 = v112;
  v72(v75, v112, v74);
  v72(v71 + v69, v65, v74);
  sub_100394568(v70);
  v77 = type metadata accessor for VerticalFlowLayout();
  v78 = v87;
  v87[3] = v77;
  v78[4] = &protocol witness table for VerticalFlowLayout;
  v78[5] = &protocol witness table for VerticalFlowLayout;
  sub_1000056E0(v78);
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v79 = *(v66 + 8);
  v79(v65, v74);
  v79(v76, v74);
  return (v79)(v73, v74);
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.prepareForReuse()()
{
  v1 = sub_10002849C(&qword_10097CC90);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  [*&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel] setText:{0, v2}];
  [*&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel] setText:0];
  v5 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  [v0 setNeedsLayout];
  v8 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid];
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *&v0[v8];
  }

  else
  {
    v10 = 0;
  }

  *&v0[v8] = 0;

  [v0 setNeedsLayout];
  v11 = type metadata accessor for UIButton.Configuration();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  UIButton.configuration.setter();
}

double sub_100163EDC(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v65.super.isa = a3;
  v64 = type metadata accessor for FontSource();
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for LabelPlaceholderCompatibility();
  v67 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  AspectRatio.init(_:_:)();
  v55 = a1;
  sub_100165D4C();
  (*(v8 + 8))(v10, v7);
  v18 = *(v12 + 8);
  v60 = v17;
  v62 = v11;
  v18(v17, v11);
  v61 = v18;
  v63 = v12 + 8;
  v19 = a2;
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  CondensedSearchResultCardLayout.Metrics.overriddingArtworkSize(with:)();
  v18(v14, v11);
  v20 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v58 = LayoutViewPlaceholder.init(representing:)();
  v50 = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
  v49 = v21;
  v22 = v56;
  v48 = v19;
  CondensedSearchResultCardLayout.Configuration.headerFont.getter();
  v54 = enum case for FontSource.useCase(_:);
  v23 = v66;
  v53 = *(v66 + 104);
  v24 = v64;
  v53(v22);
  isa = v65.super.isa;
  FontSource.font(compatibleWith:)(v65);
  v26 = *(v23 + 8);
  v66 = v23 + 8;
  v52 = v26;
  v26(v22, v24);
  CondensedSearchResultCardLayout.Configuration.headerNumberOfLines.getter();
  v27 = type metadata accessor for Feature();
  v72 = v27;
  v51 = sub_100168384(&qword_100972E50, &type metadata accessor for Feature);
  v73 = v51;
  v28 = sub_1000056E0(&v71);
  v46 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v29 = *(v27 - 8);
  v45 = *(v29 + 104);
  v47 = v29 + 104;
  v45(v28);
  isFeatureEnabled(_:)();
  sub_100007000(&v71);
  v30 = v57;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v31 = *(v67 + 8);
  v67 += 8;
  v50 = v31;
  v32 = v59;
  v31(v30, v59);
  v55 = EditorialSearchResult.title.getter();
  v49 = v33;
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  v34 = v64;
  (v53)(v22, v54, v64);
  FontSource.font(compatibleWith:)(isa);
  v52(v22, v34);
  CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(isa);
  v72 = v27;
  v73 = v51;
  v35 = sub_1000056E0(&v71);
  (v45)(v35, v46, v27);
  isFeatureEnabled(_:)();
  sub_100007000(&v71);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v50(v30, v32);
  static CondensedSearchResultCardLayout.estimatedSizeForViewButtonInAXLayouts.getter();
  swift_allocObject();
  v36 = LayoutViewPlaceholder.init(representing:)();
  v70[4] = &protocol witness table for LayoutViewPlaceholder;
  v70[3] = v20;
  v70[0] = v58;
  v37 = v76;
  v38 = v77;
  v39 = sub_10002A400(&v75, v76);
  v69[3] = v37;
  v69[4] = *(v38 + 8);
  v40 = sub_1000056E0(v69);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v68[4] = &protocol witness table for LayoutViewPlaceholder;
  v68[3] = v20;
  v68[0] = v36;

  v41 = v60;
  sub_100162D94(v60, v70, v69, &v74, v68, &v71);
  sub_100007000(v68);
  sub_100007000(v69);
  sub_10002B894(v70, &qword_100975610);
  sub_10002A400(&v71, v72);
  Measurable.measurements(fitting:with:)();
  v43 = v42;

  sub_100007000(&v74);
  v61(v41, v62);
  sub_100007000(&v71);
  sub_100007000(&v75);
  return v43;
}

void sub_10016479C(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v13[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = a1 + 32;
    do
    {
      v10 += 16;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v8;
    }

    while (v8);
    v9 = v13[0];
  }

  if (qword_10096CF68 == -1)
  {
    if (a3 <= 0.0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = v9;
    swift_once();
    v9 = v12;
    if (a3 <= 0.0)
    {
      goto LABEL_10;
    }
  }

  if (a4 > 0.0)
  {
    __chkstk_darwin(v9);
    sub_10009A268();
    Copyable.copyWithOverrides(in:)();

    v11 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config;
    swift_beginAccess();
    sub_1001682D4(v13, a2 + v11);
    swift_endAccess();
    sub_100097CF0();
    sub_10009A228(v13);
    sub_10009807C(a3, a4);
    return;
  }

LABEL_10:
}

uint64_t CondensedEditorialSearchResultContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v111 = a2;
  v5 = type metadata accessor for CornerStyle();
  v103 = *(v5 - 8);
  v104 = v5;
  __chkstk_darwin(v5);
  v102 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspectRatio();
  v106 = *(v7 - 8);
  v107 = v7;
  __chkstk_darwin(v7);
  v105 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v109 = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  v115 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditorialSearchResultType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v101 - v16;
  __chkstk_darwin(v18);
  v20 = &v101 - v19;
  v114 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v101 - v24;
  __chkstk_darwin(v26);
  v113 = &v101 - v27;
  type metadata accessor for EditorialSearchResult();
  sub_100168384(&qword_100973D90, &type metadata accessor for EditorialSearchResult);
  v108 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v117)
  {
    return result;
  }

  v112 = v117;
  EditorialSearchResult.type.getter();
  (*(v12 + 32))(v17, v20, v11);
  v29 = (*(v12 + 88))(v17, v11);
  if (v29 == enum case for EditorialSearchResultType.category(_:))
  {
    v30 = v116;
    v31 = v114;
    (*(v116 + 104))(v25, enum case for CondensedSearchResultCardLayout.Configuration.category(_:), v114);
    goto LABEL_9;
  }

  v31 = v114;
  if (v29 == enum case for EditorialSearchResultType.story(_:))
  {
    v32 = &enum case for CondensedSearchResultCardLayout.Configuration.stories(_:);
LABEL_8:
    v30 = v116;
    (*(v116 + 104))(v25, *v32, v114);
    goto LABEL_9;
  }

  if (v29 == enum case for EditorialSearchResultType.developer(_:))
  {
    v32 = &enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
    goto LABEL_8;
  }

  v69 = *(v116 + 104);
  if (v29 == enum case for EditorialSearchResultType.appEventStory(_:))
  {
    v69(v25, enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:), v114);
  }

  else
  {
    v69(v25, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v114);
    (*(v12 + 8))(v17, v11);
  }

  v30 = v116;
LABEL_9:
  v33 = v113;
  (*(v30 + 32))(v113, v25, v31);
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  (*(v30 + 16))(v22, v33, v31);
  v34 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v30 + 24))(&v3[v34], v22, v31);
  swift_endAccess();
  [v3 setNeedsLayout];
  v35 = *(v30 + 8);
  v116 = v30 + 8;
  v101 = v35;
  v35(v22, v31);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v36 = v117;
  v37.super.isa = v117;
  sub_10016210C(v33, v37);

  v38 = dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
  v40 = v39;
  EditorialSearchResult.type.getter();
  sub_10016566C(v38, v40, v14);

  (*(v12 + 8))(v14, v11);
  v41 = *&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel];
  EditorialSearchResult.title.getter();
  if (v42)
  {
    v43 = String._bridgeToObjectiveC()();
  }

  else
  {
    v43 = 0;
  }

  [v41 setText:v43];

  if (EditorialSearchResult.collectionAdamIds.getter())
  {
    type metadata accessor for AdamId();
    v44 = Array.isNotEmpty.getter();

    if (v44)
    {
      type metadata accessor for ASKBagContract();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
      v46 = v45;
      v48 = v47;
      v49 = ASKBagContract.enablePrerenderedIconArtwork.getter();
      v50 = objc_allocWithZone(type metadata accessor for IconArtworkGridView());
      v51 = sub_100097808(v49 & 1, 0.0, 0.0, v46, v48);
      v52 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid;
      v53 = *&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid];
      if (v53)
      {
        [v53 removeFromSuperview];
        v54 = *&v3[v52];
      }

      else
      {
        v54 = 0;
      }

      *&v3[v52] = v51;
      v70 = v51;

      [v3 addSubview:v70];
      [v3 setNeedsLayout];

      CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
      v71 = &v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkSize];
      *v71 = v72;
      *(v71 + 1) = v73;
      [v3 setNeedsLayout];

      goto LABEL_30;
    }
  }

  if (EditorialSearchResult.editorialVideo.getter())
  {
    Video.preview.getter();

LABEL_19:

    v55 = v105;
    AspectRatio.init(_:_:)();
    sub_100165D4C();
    v57 = v56;
    v59 = v58;
    (*(v106 + 8))(v55, v107);
    v60 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v57, v59}];
    v61 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView;
    v62 = *&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView];
    if (v62)
    {
      [v62 removeFromSuperview];
      v63 = *&v3[v61];
    }

    else
    {
      v63 = 0;
    }

    *&v3[v61] = v60;
    v64 = v60;

    if (v64)
    {
      [v3 addSubview:v64];
      v66 = v102;
      v65 = v103;
      v67 = v104;
      (*(v103 + 104))(v102, enum case for CornerStyle.continuous(_:), v104);
      ArtworkView.setCorner(radius:style:)();

      (*(v65 + 8))(v66, v67);
    }

    [v3 setNeedsLayout];

    v68 = &v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkSize];
    *v68 = v57;
    v68[1] = v59;
    goto LABEL_25;
  }

  if (EditorialSearchResult.editorialArtwork.getter())
  {
    goto LABEL_19;
  }

  if (!EditorialSearchResult.iconArtwork.getter())
  {
    goto LABEL_30;
  }

  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v90 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v88, v89}];
  v91 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView;
  v92 = *&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView];
  if (v92)
  {
    [v92 removeFromSuperview];
    v93 = *&v3[v91];
  }

  else
  {
    v93 = 0;
  }

  *&v3[v91] = v90;
  v94 = v90;

  if (v94)
  {
    [v3 addSubview:v94];
    v96 = v102;
    v95 = v103;
    v97 = v104;
    (*(v103 + 104))(v102, enum case for CornerStyle.continuous(_:), v104);
    ArtworkView.setCorner(radius:style:)();

    (*(v95 + 8))(v96, v97);
  }

  [v3 setNeedsLayout];

  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v98 = &v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkSize];
  *v98 = v99;
  *(v98 + 1) = v100;
LABEL_25:
  [v3 setNeedsLayout];
LABEL_30:
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  swift_weakInit();
  v76 = swift_allocObject();
  *(v76 + 2) = v74;
  *(v76 + 3) = v75;
  *(v76 + 4) = v111;
  v77 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_action;
  v78 = *&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_action];
  if (v78)
  {
    v79 = *&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton];

    [v79 removeAction:v78 forControlEvents:4095];
    v80 = *&v3[v77];
  }

  else
  {

    v80 = 0;
  }

  *&v3[v77] = 0;

  v81 = &v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_buttonHandler];
  v82 = *&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_buttonHandler];
  *v81 = sub_100167B84;
  v81[1] = v76;

  sub_10001F63C(v82);
  sub_100005744(0, &qword_10097CD40);

  v83 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v84 = *&v3[v77];
  if (v84)
  {
    [*&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton] removeAction:v84 forControlEvents:4095];
    v85 = *&v3[v77];
  }

  else
  {
    v85 = 0;
  }

  v86 = v115;
  *&v3[v77] = v83;
  v87 = v83;

  [*&v3[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton] addAction:v87 forControlEvents:64];

  (*(v109 + 8))(v86, v110);
  v101(v113, v114);

  [v3 setNeedsLayout];
}

void sub_10016566C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SystemImage();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EditorialSearchResultType();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v13 + 16))(v16, a3, v12, v14);
    v17 = (*(v13 + 88))(v16, v12);
    if (v17 == enum case for EditorialSearchResultType.category(_:) || v17 == enum case for EditorialSearchResultType.story(_:))
    {
      v19 = &enum case for SystemImage.appstore(_:);
    }

    else
    {
      if (v17 != enum case for EditorialSearchResultType.developer(_:))
      {
        (*(v13 + 8))(v16, v12);
        v30 = objc_allocWithZone(NSMutableAttributedString);
        v31 = String._bridgeToObjectiveC()();
        v32 = [v30 initWithString:v31];

        v29 = v32;
        v22 = 0;
        goto LABEL_12;
      }

      v19 = &enum case for SystemImage.personCropSquare(_:);
    }

    (*(v9 + 104))(v11, *v19, v8);
    v20 = static SystemImage.load(_:with:)();
    (*(v9 + 8))(v11, v8);
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 textAttachmentWithImage:v22];
    v24 = [objc_opt_self() attributedStringWithAttachment:v23];
    v33[0] = 32;
    v33[1] = 0xE100000000000000;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    String.append(_:)(v25);
    v26 = objc_allocWithZone(NSMutableAttributedString);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithString:v27];

    v29 = v28;
    [v29 insertAttributedString:v24 atIndex:0];

LABEL_12:
    [*(v4 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel) setAttributedText:v29];
  }
}

void sub_1001659FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v10 = EditorialSearchResult.clickAction.getter(), , v10))
    {
      v11 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10002B894(v7, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(v10, 1, a4, v7);

        (*(v12 + 8))(v7, v11);
      }
    }

    else
    {
    }
  }
}

id CondensedEditorialSearchResultContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedEditorialSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100165D4C()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!EditorialSearchResult.editorialVideo.getter())
  {
    return CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  }

  Video.preview.getter();

  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  AspectRatio.width(fromHeight:)();
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  AspectRatio.width(fromHeight:)();
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
  CGSize.rounded(_:)();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_100165F88(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v92.super.isa = a3;
  v94 = a1;
  v83 = sub_10002849C(&qword_100976848);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v66 - v4;
  v80 = type metadata accessor for CondensedSearchResultCardLayout();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for LabelPlaceholder();
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v91 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v66 - v8;
  v89 = type metadata accessor for FontUseCase();
  v93 = *(v89 - 8);
  __chkstk_darwin(v89);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DynamicTextAppearance();
  v71 = *(v85 - 8);
  __chkstk_darwin(v85);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v66 - v13;
  __chkstk_darwin(v15);
  v86 = &v66 - v16;
  __chkstk_darwin(v17);
  v90 = &v66 - v18;
  v19 = type metadata accessor for AspectRatio();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v72 = *(v23 - 8);
  v24 = v72;
  __chkstk_darwin(v23);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v66 - v28;
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  AspectRatio.init(_:_:)();
  sub_100165D4C();
  v31 = v30;
  v33 = v32;
  (*(v20 + 8))(v22, v19);
  v34 = *(v24 + 8);
  v70 = v29;
  v69 = v23;
  v34(v29, v23);
  v75 = v34;
  v76 = v24 + 8;
  v68 = v26;
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  CondensedSearchResultCardLayout.Metrics.overriddingArtworkSize(with:)();
  v34(v26, v23);
  DynamicTextAppearance.init()();
  v66 = a2;
  CondensedSearchResultCardLayout.Configuration.headerFont.getter();
  v35 = v86;
  DynamicTextAppearance.withFontUseCase(_:)();
  v36 = *(v93 + 8);
  v93 += 8;
  v67 = v36;
  v36(v10, v89);
  v37 = v71;
  v38 = v71 + 8;
  v39 = *(v71 + 8);
  v40 = v85;
  v39(v14, v85);
  v87 = v38;
  CondensedSearchResultCardLayout.Configuration.headerNumberOfLines.getter();
  v41 = v90;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v42 = v40;
  v39(v35, v40);
  dispatch thunk of EditorialSearchResult.typeDisplayText.getter();
  v71 = *(v37 + 16);
  (v71)(v35, v41, v40);
  LabelPlaceholder.Options.init(rawValue:)();
  v43 = v88;
  v44 = v35;
  LabelPlaceholder.init(_:with:where:)();
  v45 = v74;
  DynamicTextAppearance.init()();
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  DynamicTextAppearance.withFontUseCase(_:)();
  v67(v10, v89);
  v73 = v39;
  v39(v45, v42);
  CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(v92);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v39(v14, v42);
  EditorialSearchResult.title.getter();
  (v71)(v14, v44, v42);
  LabelPlaceholder.Options.init(rawValue:)();
  v46 = v91;
  LabelPlaceholder.init(_:with:where:)();
  v47 = v70;
  v48 = v69;
  (*(v72 + 16))(v68, v70, v69);
  v99[8] = &type metadata for FixedSizedPlaceholder;
  v99[9] = sub_100168330();
  v99[5] = v31;
  v99[6] = v33;
  v49 = v77;
  v99[3] = v77;
  v99[4] = &protocol witness table for LabelPlaceholder;
  v50 = sub_1000056E0(v99);
  v51 = v78;
  v52 = *(v78 + 16);
  v52(v50, v43, v49);
  v98[3] = v49;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v53 = sub_1000056E0(v98);
  v52(v53, v46, v49);
  v54 = type metadata accessor for EmptyPlaceable();
  swift_allocObject();
  v55 = EmptyPlaceable.init()();
  v96 = v54;
  v97 = sub_100168384(&qword_1009768B0, &type metadata accessor for EmptyPlaceable);
  v95 = v55;
  v56 = v79;
  CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
  sub_100168384(&qword_100976850, &type metadata accessor for CondensedSearchResultCardLayout);
  v57 = v81;
  v58 = v80;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v59 = v83;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v61 = v60;
  (*(v84 + 8))(v57, v59);
  (*(v82 + 8))(v56, v58);
  v62 = *(v51 + 8);
  v62(v91, v49);
  v63 = v85;
  v64 = v73;
  v73(v86, v85);
  v62(v88, v49);
  v64(v90, v63);
  v75(v47, v48);
  return v61;
}

double _s8AppStore41CondensedEditorialSearchResultContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0aB3Kit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = type metadata accessor for EditorialSearchResultType();
  v30 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v34 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v11 - 8);
  v33 = type metadata accessor for PageGrid();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialSearchResult();
  sub_100168384(&qword_100973D90, &type metadata accessor for EditorialSearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v14 = v35;
  if (!v35)
  {
    return 0.0;
  }

  v29 = v10;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  EditorialSearchResult.type.getter();
  v15 = v30;
  (*(v30 + 32))(v2, v5, v0);
  v16 = (*(v15 + 88))(v2, v0);
  if (v16 == enum case for EditorialSearchResultType.category(_:))
  {
    v17 = v32;
    v18 = v34;
    (*(v6 + 104))(v32, enum case for CondensedSearchResultCardLayout.Configuration.category(_:), v34);
    v19 = v29;
  }

  else
  {
    v17 = v32;
    if (v16 == enum case for EditorialSearchResultType.story(_:))
    {
      v18 = v34;
      (*(v6 + 104))(v32, enum case for CondensedSearchResultCardLayout.Configuration.stories(_:), v34);
      v19 = v29;
    }

    else
    {
      v19 = v29;
      if (v16 == enum case for EditorialSearchResultType.developer(_:))
      {
        v21 = enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
        v22 = *(v6 + 104);
      }

      else
      {
        v22 = *(v6 + 104);
        if (v16 != enum case for EditorialSearchResultType.appEventStory(_:))
        {
          v18 = v34;
          v22(v32, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v34);
          (*(v15 + 8))(v2, v0);
          goto LABEL_15;
        }

        v21 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
      }

      v18 = v34;
      v22(v32, v21, v34);
    }
  }

LABEL_15:
  (*(v6 + 32))(v19, v17, v18);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v23 = v35;
  PageGrid.componentMeasuringSize(spanning:)();
  v24 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v25 = (v6 + 8);
  v26 = (v31 + 8);
  if (v24)
  {
    v27 = sub_100163EDC(v14, v19, v23);
  }

  else
  {
    v27 = sub_100165F88(v14, v19, v23);
  }

  v20 = v27;

  (*v25)(v19, v18);
  (*v26)(v13, v33);
  return v20;
}

uint64_t _s8AppStore41CondensedEditorialSearchResultContentViewC5fetch3for2in2on8asPartOfy0aB3Kit27ManagedArtworkModelProtocol_p_So6CGRectVAI0R6LoaderC9JetEngine15BaseObjectGraphCtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v78 = a2;
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Artwork.Crop();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspectRatio();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v10 = *(v79 - 8);
  __chkstk_darwin(v79);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = type metadata accessor for EditorialSearchResultType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  __chkstk_darwin(v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v26 = *(v25 - 8);
  v82 = v25;
  v83 = v26;
  __chkstk_darwin(v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v81 = &v65 - v30;
  sub_10002C0AC(a1, v85);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for EditorialSearchResult();
  result = swift_dynamicCast();
  if (result)
  {
    v67 = v3;
    v80 = v15;
    EditorialSearchResult.type.getter();
    (*(v17 + 32))(v21, v24, v16);
    v66 = *(v17 + 88);
    v32 = v66(v21, v16);
    v65 = v17;
    if (v32 == enum case for EditorialSearchResultType.category(_:))
    {
      v33 = enum case for CondensedSearchResultCardLayout.Configuration.category(_:);
      v35 = v82;
      v34 = v83;
    }

    else
    {
      v35 = v82;
      if (v32 == enum case for EditorialSearchResultType.story(_:))
      {
        v36 = &enum case for CondensedSearchResultCardLayout.Configuration.stories(_:);
      }

      else
      {
        if (v32 != enum case for EditorialSearchResultType.developer(_:))
        {
          v64 = *(v83 + 104);
          if (v32 == enum case for EditorialSearchResultType.appEventStory(_:))
          {
            v64(v28, enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:), v82);
          }

          else
          {
            v64(v28, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v82);
            (*(v17 + 8))(v21, v16);
          }

          v34 = v83;
LABEL_10:
          (*(v34 + 32))(v81, v28, v35);
          CondensedSearchResultCardLayout.Configuration.metrics.getter();
          CondensedSearchResultCardLayout.Configuration.metrics.getter();
          CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
          v38 = v37;
          v40 = v39;
          v41 = *(v10 + 8);
          v42 = v79;
          v68 = v10 + 8;
          v41(v12, v79);
          v43 = v41;
          v44 = EditorialSearchResult.collectionAdamIds.getter();
          v45 = v67;
          if (v44)
          {
            v46 = *&v67[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid];
            if (v46)
            {
              type metadata accessor for ArtworkIconFetcher();
              v47 = v46;
              BaseObjectGraph.optional<A>(_:)();
              if (v85[0])
              {
                v48 = swift_allocObject();
                v49 = v78;
                v48[2] = v47;
                v48[3] = v49;
                v48[4] = v38;
                v48[5] = v40;
                v50 = swift_allocObject();
                v50[2] = v47;
                v50[3] = v49;
                v50[4] = v38;
                v50[5] = v40;
                v85[0] = v45;
                type metadata accessor for CondensedEditorialSearchResultContentView();
                v77 = v41;
                sub_100168384(&qword_1009768A8, type metadata accessor for CondensedEditorialSearchResultContentView);
                v51 = v47;
                swift_retain_n();
                v52 = v51;
                v53 = v45;
                AnyHashable.init<A>(_:)();
                dispatch thunk of ArtworkIconFetcher.fetchArtworkIcons(for:partialCompletion:completion:handlerKey:)();

                sub_10002B894(v84, &qword_10096FB90);
                sub_10003D614(v85);
                (v77)(v80, v79);
                return (*(v83 + 8))(v81, v82);
              }
            }

            else
            {
            }
          }

          if (EditorialSearchResult.editorialVideo.getter())
          {
            Video.preview.getter();
          }

          else if (!EditorialSearchResult.editorialArtwork.getter())
          {
            goto LABEL_24;
          }

          v54 = *&v45[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView];
          if (v54)
          {
            v55 = v54;
            v56 = v74;
            AspectRatio.init(_:_:)();
            sub_100165D4C();
            (*(v75 + 8))(v56, v76);
            [v55 setContentMode:0];
            v57 = v77;
            EditorialSearchResult.type.getter();
            v58 = v66(v57, v16);
            if (v58 != enum case for EditorialSearchResultType.developer(_:) && v58 != enum case for EditorialSearchResultType.appEventStory(_:))
            {
              v59 = v70;
              Artwork.crop.getter();
              Artwork.Crop.preferredContentMode.getter();
              (*(v71 + 8))(v59, v72);
              (*(v65 + 8))(v77, v16);
            }

            Artwork.config(_:mode:prefersLayeredImage:)();
            type metadata accessor for ArtworkView();
            sub_100168384(&qword_100970E80, &type metadata accessor for ArtworkView);
            ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

            v43(v80, v42);
            return (*(v83 + 8))(v81, v82);
          }

LABEL_24:
          if (EditorialSearchResult.iconArtwork.getter())
          {
            v60 = *&v45[OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView];
            v61 = v80;
            if (v60)
            {
              v62 = v60;
              CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
              v63 = v70;
              Artwork.crop.getter();
              Artwork.Crop.preferredContentMode.getter();
              (*(v71 + 8))(v63, v72);
              Artwork.config(_:mode:prefersLayeredImage:)();
              Artwork.style.getter();
              ArtworkView.style.setter();
              [v62 setContentMode:Artwork.contentMode.getter()];
              ArtworkLoaderConfig.size.getter();
              ArtworkView.imageSize.setter();
              if (!Artwork.backgroundColor.getter())
              {
                sub_100005744(0, &qword_100970180);
                static UIColor.placeholderBackground.getter();
              }

              ArtworkView.backgroundColor.setter();
              type metadata accessor for ArtworkView();
              sub_100168384(&qword_100970E80, &type metadata accessor for ArtworkView);
              ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
            }

            v41(v61, v42);
          }

          else
          {

            v41(v80, v42);
          }

          return (*(v83 + 8))(v81, v82);
        }

        v36 = &enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
      }

      v33 = *v36;
      v34 = v83;
    }

    (*(v34 + 104))(v28, v33, v35);
    goto LABEL_10;
  }

  return result;
}

void _s8AppStore41CondensedEditorialSearchResultContentViewC20cancelArtworkFetches2on8asPartOf014deprioritizingK0y0aB3Kit0J6LoaderC_9JetEngine15BaseObjectGraphCSbtF_0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews];
    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    v5 = v2;

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      type metadata accessor for ArtworkView();
      sub_100168384(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }

    while (v4 != v6);
  }

LABEL_11:
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView);
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    v12 = v10;
    v14.value.super.isa = 0;
    v14.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v14, v11);
    type metadata accessor for ArtworkView();
    sub_100168384(&qword_100970E80, &type metadata accessor for ArtworkView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_100167DA4(uint64_t a1)
{
  *(a1 + 24) = sub_100168384(&qword_100976858, type metadata accessor for CondensedEditorialSearchResultContentView);
  result = sub_100168384(&qword_100976860, type metadata accessor for CondensedEditorialSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

void sub_100167E78()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CondensedSearchResultCardLayout.Configuration();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100167F70()
{
  v1 = v0;
  v2 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_headerLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v12) = DynamicTypeLabel.__allocating_init(frame:)();
  v13 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_titleLabel;
  *(v1 + v13) = DynamicTypeLabel.__allocating_init(frame:)();
  v14 = OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_viewButton;
  *(v1 + v14) = [objc_opt_self() buttonWithType:0];
  v15 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v16 = *(v7 + 104);
  v16(v1 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_configuration, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v6);
  *(v1 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_iconGrid) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_action) = 0;
  v17 = (v1 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_buttonHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC8AppStore41CondensedEditorialSearchResultContentView_artworkSize);
  v16(v9, v15, v6);
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  (*(v7 + 8))(v9, v6);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v20 = v19;
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  *v18 = v20;
  v18[1] = v22;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100168288()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100168330()
{
  result = qword_1009921A0;
  if (!qword_1009921A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009921A0);
  }

  return result;
}

uint64_t sub_100168384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DebugMenuPage.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DebugMenuPage.debugSettingsProviders.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TodayCardGridTracker.TrackedSectionKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100168484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001684CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10016851C(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_10016862C(a2, v11, a7, a5, v7, ObjectType);
}

double sub_10016862C(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = AppEvent.title.getter();
  v11 = v10;
  v12 = AppEvent.kind.getter();
  v14 = v13;
  v15 = AppEvent.subtitle.getter();
  v17 = v16;
  v18 = sub_100287254();
  if (qword_10096D5D8 != -1)
  {
    swift_once();
  }

  sub_100438080(&unk_1009CEDC8, a3);
  v19 = type metadata accessor for AppEventCardView();
  sub_1004DC75C(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, v19, a6);

  return a1;
}

double sub_100168774(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, uint64_t a10, int *a11)
{
  if (qword_10096D5D8 != -1)
  {
    swift_once();
  }

  sub_100438080(&unk_1009CEDC8, a8);
  v20 = type metadata accessor for AppEventCardView();
  sub_1004DC75C(a1, a2, a3, a9, a4, a5, a6, a7 & 1, a8, v20, a11);
  return a9;
}

double *sub_100168884(uint64_t a1, void *a2)
{
  if (qword_10096D5D8 != -1)
  {
    swift_once();
  }

  sub_100438080(&unk_1009CEDC8, a2);
  type metadata accessor for AppEventCardView();

  return sub_1004DF178(a1, a2);
}

void sub_100168944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = AppEvent.formattedDates.getter();
  v10 = *&v3[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView];
  type metadata accessor for AppEventFormattedDatePresenter(0);
  swift_allocObject();
  v11 = v10;
  v12 = sub_1006E6CE8(v9, v10, &off_1008BC738);

  v13 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  v14 = 1;
  swift_beginAccess();
  *&v11[v13] = v12;

  [v3 setNeedsLayout];
  v15 = AppPromotion.clickAction.getter();
  if (v15)
  {
    v24 = v15;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_100168C08(&qword_100992FB0, &type metadata accessor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v14 = 0;
  }

  v16 = sub_10002849C(&unk_10097B3D0);
  (*(*(v16 - 8) + 56))(v8, v14, 1, v16);
  v17 = OBJC_IVAR____TtC8AppStore12AppEventView_clickAction;
  swift_beginAccess();
  sub_100079964(v8, &v3[v17]);
  swift_endAccess();
  sub_1004DD270(a1, a2);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v18 = v24;
  v19 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v20 = *&v11[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  v21 = v20;
  sub_1002C55E4(v18);
  v22 = *&v11[v19];
  *&v11[v19] = v18;
  v23 = v18;

  sub_1002C5748(v20);
}

uint64_t sub_100168C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100168C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  sub_1004DEA40(v12, a2, *(a3 + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView), a4, a5);
  return (*(v9 + 8))(v12, a4);
}

void sub_100168D68(void *a1)
{
  v18 = a1;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10016A474(&qword_100973190, type metadata accessor for VideoView);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_100028004();
    v11 = v6;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (*(v3 + 8))(v5, v2);
    [v6 addSubview:v15];
    [v6 sendSubviewToBack:v15];
    [v6 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

void sub_100168FD8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "prepareForReuse", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = Strong;
  sub_10016A474(&qword_100973190, type metadata accessor for VideoView);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    sub_100028004();
    v12 = v7;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      goto LABEL_7;
    }

    v9 = v14;
    [v14 removeFromSuperview];
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (*(v3 + 8))(v6, v2);
    [v7 addSubview:v16];
    [v7 sendSubviewToBack:v16];
    [v7 setNeedsLayout];
  }
}

char *sub_100169228(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for CornerStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_itemLayoutContext;
  v19 = type metadata accessor for ItemLayoutContext();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for VideoCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase] = 0;
  v21 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 setClipsToBounds:0];

  v25 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView;
  v26 = qword_10096DA60;
  v27 = *&v22[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Shadow();
  v29 = sub_1000056A8(v28, qword_1009CFD80);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v17, v29, v28);
  (*(v30 + 56))(v17, 0, 1, v28);
  dispatch thunk of ShadowView.shadow.setter();

  v31 = *&v22[v25];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v32 = v31;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  (*(v12 + 8))(v14, v11);
  v33 = *&v22[v25];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondarySystemBackgroundColor];
  [v35 setBackgroundColor:v36];

  v37 = [v22 contentView];
  [v37 addSubview:*&v22[v25]];

  v38 = [v22 contentView];
  [v38 addSubview:*&v22[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView]];

  return v22;
}

void sub_1001696DC(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

void (*sub_1001697A4(uint64_t *a1))(void ***a1, char a2)
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
  v5 = type metadata accessor for CornerStyle();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = OBJC_IVAR____TtC8AppStore13VideoCardView_videoView;
  v4[4] = *(v1 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_10016989C;
}

void sub_10016989C(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10016A474(&qword_100973190, type metadata accessor for VideoView);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[4];
        sub_100028004();
        v11 = v10;
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
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v32 = v3[1];
      v33 = v3[2];
      v33[13](v31, enum case for CornerStyle.continuous(_:), v32);
      dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
      (v33[1])(v31, v32);
      [v30 addSubview:v29];
      [v30 sendSubviewToBack:v29];
      [v30 setNeedsLayout];
    }

    v27 = v3[3];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10016A474(&qword_100973190, type metadata accessor for VideoView);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[4];
      sub_100028004();
      v18 = v17;
      v19 = static NSObject.== infix(_:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v25 = v3[1];
    v26 = v3[2];
    v26[13](v24, enum case for CornerStyle.continuous(_:), v25);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (v26[1])(v24, v25);
    [v23 addSubview:v22];
    [v23 sendSubviewToBack:v22];
    [v23 setNeedsLayout];
  }

  v27 = v3[3];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_100169C08()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  [v1 layoutIfNeeded];
  v11 = *&v0[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView];
  v12 = [v0 contentView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 setFrame:{v14, v16, v18, v20}];
  sub_10016A474(&qword_100976958, type metadata accessor for VideoCardCollectionViewCell);
  AvatarShowcaseDisplaying.placeAvatarShowcase()();
}

uint64_t type metadata accessor for VideoCardCollectionViewCell()
{
  result = qword_100976928;
  if (!qword_100976928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100169ED8()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100169FA4(uint64_t **a1))()
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
  v2[4] = sub_1001697A4(v2);
  return sub_1000C2700;
}

double sub_10016A014(double a1)
{
  type metadata accessor for VideoCardView();
  swift_getObjectType();

  return sub_1001C2E40(a1);
}

uint64_t sub_10016A08C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10016A474(&qword_100976950, type metadata accessor for VideoCardCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10016A100(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10016A474(&qword_100976950, type metadata accessor for VideoCardCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10016A18C(uint64_t *a1))()
{
  swift_getObjectType();
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
  sub_10016A474(&qword_100976950, type metadata accessor for VideoCardCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000B4CAC;
}

uint64_t sub_10016A270(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100028004();
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10016A474(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10016A4BC()
{
  v1 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for VideoCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase) = 0;
  v4 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10016A628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10016A6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10016A738()
{
  result = type metadata accessor for DebugMetricsEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016A7C0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for EnabledTextSelectability();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PlainListStyle();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100976B38);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_10002849C(&qword_100976B40);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_10002849C(&qword_100976B48);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_10002849C(&qword_100976B50);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_10002849C(&qword_100976B58);
  sub_100097060(&qword_100976B60, &qword_100976B58);
  List<>.init(content:)();
  PlainListStyle.init()();
  sub_100097060(&qword_100976B68, &qword_100976B38);
  v20 = v44;
  View.listStyle<A>(_:)();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = static Edge.Set.all.getter();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_10002849C(&qword_100976B70);
  v24 = sub_1001708B4();
  v25 = sub_10002D1A8(&qword_100976B90);
  v26 = sub_100097060(&qword_100976B98, &qword_100976B90);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  sub_10000D4CC(v12);
  v28 = v51;
  EnabledTextSelectability.init()();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  View.textSelection<A>(_:)();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = DebugMetricsEvent.title.getter();
  v58 = v35;
  sub_10007FED4();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  View.navigationTitle(_:)();
  sub_100170894(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

uint64_t sub_10016AE50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100976BB0);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v39 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10002849C(&qword_100976BB8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = type metadata accessor for DebugMetricsEvent();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  static VerticalEdge.Set.all.getter();
  sub_100170A04(&qword_100976BC0, type metadata accessor for DebugMetricsEventDetailView.Summary);
  v48 = v17;
  View.listRowSeparator(_:edges:)();
  sub_100170A4C(v13);
  v19 = DebugMetricsEvent.fields.getter();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v39[0] = v4;
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100035410(v20, 0);
  v22 = sub_10039FBF4(&v50, v21 + 4, v20, v19);

  sub_100081680();
  if (v22 == v20)
  {
    v6 = v40;
    v4 = v39[0];
LABEL_5:
    v50 = v21;
    sub_10016FC88(&v50);

    swift_getKeyPath();
    sub_100170AA8(a1, v6);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    sub_100170B0C(v6, v24 + v23);
    sub_10002849C(&unk_100977380);
    sub_100097060(&qword_100976BC8, &unk_100977380);
    sub_100170BF0();
    v25 = v49;
    ForEach<>.init(_:id:content:)();
    v26 = v41;
    v27 = v42;
    v28 = *(v42 + 16);
    v29 = v44;
    v28(v41, v48, v44);
    v30 = v45;
    v31 = v46;
    v40 = *(v46 + 16);
    v32 = v25;
    v33 = v47;
    (v40)(v45, v32, v47);
    v34 = v43;
    v28(v43, v26, v29);
    v35 = sub_10002849C(&qword_100976BD8);
    (v40)(&v34[*(v35 + 48)], v30, v33);
    v36 = *(v31 + 8);
    v36(v49, v33);
    v37 = *(v27 + 8);
    v37(v48, v29);
    v36(v30, v33);
    return (v37)(v26, v29);
  }

  __break(1u);

  __break(1u);
  return result;
}

double sub_10016B3FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = DebugMetricsEvent.fields.getter();
  if (*(v5 + 16) && (v6 = sub_1000072B8(v4, v3), (v7 & 1) != 0))
  {
    sub_1000073E8(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  result = *&v10;
  v9 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_10016B494(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10002849C(&qword_100976B90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v9 = a1;
  sub_10002849C(&qword_100976BA0);
  sub_100097060(&qword_100976BA8, &qword_100976BA0);
  ToolbarItem<>.init(placement:content:)();
  sub_100097060(&qword_100976B98, &qword_100976B90);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10016B700@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10016B740()
{
  v0 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeZone();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10002849C(&qword_100976B28);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_10002849C(&qword_100976B30);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = type metadata accessor for Date.FormatStyle();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_100005644(v33, qword_100976960);
  v48 = sub_1000056A8(v22, qword_100976960);
  static Date.FormatStyle.DateStyle.omitted.getter();
  v34 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  static Date.FormatStyle.TimeStyle.standard.getter();
  v35 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v36 = v52;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.omitted.getter();
  v37 = v51;
  static Date.FormatStyle.Symbol.Hour.twoDigits(amPM:)();
  (*(v55 + 8))(v36, v56);
  Date.FormatStyle.hour(_:)();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  static Date.FormatStyle.Symbol.Minute.twoDigits.getter();
  v40 = v46;
  Date.FormatStyle.minute(_:)();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  static Date.FormatStyle.Symbol.Second.twoDigits.getter();
  v42 = v47;
  Date.FormatStyle.second(_:)();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  static Date.FormatStyle.Symbol.SecondFraction.fractional(_:)();
  Date.FormatStyle.secondFraction(_:)();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_10016BEBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002849C(&qword_100976A98);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_10002849C(&qword_100976AA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10002849C(&qword_100976AA8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_10002849C(&qword_100976AB0);
  sub_10016C264(v1, &v14[*(v15 + 44)]);
  DebugMetricsEvent.issues.getter();
  type metadata accessor for LintedMetricsEvent.Issue();
  v16 = Array.isNotEmpty.getter();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    Image.init(systemName:)();
    static SymbolRenderingMode.multicolor.getter();
    v20 = type metadata accessor for SymbolRenderingMode();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = Image.symbolRenderingMode(_:)();

    sub_10002B894(v8, &qword_100976AA0);
    v21 = type metadata accessor for Font.Design();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = static Font.system(size:weight:design:)();
    sub_10002B894(v5, &qword_100976A98);
    KeyPath = swift_getKeyPath();
  }

  sub_100031660(v14, v11, &qword_100976AA8);
  sub_100031660(v11, a1, &qword_100976AA8);
  v22 = sub_10002849C(&qword_100976AB8);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_10016FBEC(v17);
  sub_10016FC3C(v17);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10002B894(v14, &qword_100976AA8);
  sub_10016FC3C(v17);
  return sub_10002B894(v11, &qword_100976AA8);
}

uint64_t sub_10016C264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_10002849C(&qword_100976AC0);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = static VerticalAlignment.center.getter();
  LOBYTE(v54[0]) = 1;
  sub_10016C6C4(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v54[0] = DebugMetricsEvent.summaryInfo.getter();
  swift_getKeyPath();
  sub_10002849C(&qword_100976AC8);
  sub_10002849C(&qword_100976AD0);
  sub_100097060(&qword_100976AD8, &qword_100976AC8);
  sub_1001706C0();
  v30 = v7;
  ForEach<>.init(_:id:content:)();
  v29 = static VerticalAlignment.center.getter();
  LOBYTE(v54[0]) = 1;
  sub_10016CA58(a1, v42);
  *&v38[7] = v42[0];
  *&v38[23] = v42[1];
  *&v38[39] = v42[2];
  *&v38[55] = v42[3];
  v8 = v54[0];
  v9 = v33;
  v10 = *(v34 + 16);
  v11 = v31;
  v10(v33, v7, v31);
  v43[0] = v37;
  v43[1] = 0;
  LOBYTE(v44[0]) = v36;
  *(v44 + 1) = v39[0];
  *(&v44[1] + 1) = v39[1];
  *(&v44[3] + 1) = v39[3];
  *(&v44[2] + 1) = v39[2];
  v12 = v32;
  *(&v44[4] + 1) = KeyPath;
  v45 = v32;
  v13 = v44[0];
  *a2 = v37;
  *(a2 + 16) = v13;
  v14 = v44[1];
  v15 = v44[2];
  v16 = v44[3];
  v17 = v44[4];
  *(a2 + 96) = v12;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v18 = sub_10002849C(&qword_100976B08);
  v10((a2 + *(v18 + 48)), v9, v11);
  v19 = a2 + *(v18 + 64);
  v20 = v29;
  v46[0] = v29;
  v46[1] = 0;
  v47[0] = v8;
  *&v47[1] = *v38;
  *&v47[17] = *&v38[16];
  *&v47[33] = *&v38[32];
  *&v47[49] = *&v38[48];
  v21 = *&v38[63];
  *&v47[64] = *&v38[63];
  v22 = *v47;
  *v19 = v29;
  *(v19 + 16) = v22;
  v23 = *&v47[16];
  v24 = *&v47[32];
  v25 = *&v47[48];
  *(v19 + 80) = v21;
  *(v19 + 48) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v23;
  sub_100031660(v43, v54, &qword_100976B10);
  sub_100031660(v46, v54, &qword_100976B18);
  v26 = *(v34 + 8);
  v26(v30, v11);
  v48[0] = v20;
  v48[1] = 0;
  v49 = v8;
  v51 = *&v38[16];
  v52 = *&v38[32];
  *v53 = *&v38[48];
  *&v53[15] = *&v38[63];
  v50 = *v38;
  sub_10002B894(v48, &qword_100976B18);
  v26(v33, v11);
  v54[0] = v37;
  v54[1] = 0;
  v55 = v36;
  v56 = v39[0];
  v57 = v39[1];
  v58 = v39[2];
  v59 = v39[3];
  v60 = KeyPath;
  v61 = v32;
  return sub_10002B894(v54, &qword_100976B10);
}

uint64_t sub_10016C6C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002849C(&qword_100976AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  DebugMetricsEvent.iconSymbol.getter();
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v5 = type metadata accessor for SymbolRenderingMode();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = Image.symbolRenderingMode(_:)();

  sub_10002B894(v4, &qword_100976AA0);
  v18 = DebugMetricsEvent.title.getter();
  v19 = v7;
  sub_10007FED4();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v18) = v12;
  v20 = 0;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;

  sub_100170840(v8, v10, v12);

  sub_100170894(v8, v10, v12);
}

uint64_t sub_10016C890@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
    v14._countAndFlagsBits = a3;
    v14._object = a4;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v14);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
    LocalizedStringKey.init(stringInterpolation:)();
    v16 = Text.init(_:tableName:bundle:comment:)();
    v18 = v17;
    v20 = v19;
    static Font.caption.getter();
    v21 = Text.font(_:)();
    a4 = v22;
    v24 = v23;
    v26 = v25;

    sub_100170894(v16, v18, v20 & 1);

    result = swift_getKeyPath();
    v28 = v24 & 1;
    v29 = 1;
  }

  else
  {
    v21 = 0;
    v28 = 0;
    v26 = 0;
    result = 0;
    v29 = 0;
  }

  *a5 = v21;
  *(a5 + 8) = a4;
  *(a5 + 16) = v28;
  *(a5 + 24) = v26;
  *(a5 + 32) = result;
  *(a5 + 40) = v29;
  *(a5 + 48) = 0;
  return result;
}