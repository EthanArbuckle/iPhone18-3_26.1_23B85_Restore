void sub_1005D1918(void **a1, void *a2, void *a3)
{
  v6 = sub_1005B981C(&unk_1019F4CD0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - v11;
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = *a1;
  type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = v15;
    if ([v17 state] == 1 || *(v17 + OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton_isPresentingPopover) == 1)
    {
      v19 = v18;
      UIButton.configuration.getter();
      v20 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v20 - 8) + 48))(v14, 1, v20))
      {
        sub_10000BE14(v14, v12, &unk_1019F4CD0);
        UIButton.configuration.setter();

        sub_10000CAAC(v14, &unk_1019F4CD0);
      }

      else
      {
        v21 = a2;
        UIButton.Configuration.image.setter();
        UIButton.configuration.setter();
      }
    }

    else
    {
      v22 = v18;
      UIButton.configuration.getter();
      v23 = type metadata accessor for UIButton.Configuration();
      if ((*(*(v23 - 8) + 48))(v9, 1, v23))
      {
        sub_10000BE14(v9, v12, &unk_1019F4CD0);
        UIButton.configuration.setter();

        sub_10000CAAC(v9, &unk_1019F4CD0);
      }

      else
      {
        v24 = a3;
        UIButton.Configuration.image.setter();
        UIButton.configuration.setter();
      }
    }
  }
}

id sub_1005D1BC8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong state] == 1 || v4[OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton_isPresentingPopover] == 1)
    {
      if (qword_1019F12C8 != -1)
      {
        swift_once();
      }

      v5 = qword_101AD5E08;
      goto LABEL_7;
    }

    if (!a3)
    {
      v5 = [objc_opt_self() labelColor];
LABEL_7:
      v6 = v5;

      return v6;
    }

    v8 = a3;
    goto LABEL_14;
  }

  v8 = a3;
  if (a3)
  {
LABEL_14:

    return v8;
  }

  v9 = [objc_opt_self() labelColor];

  return v9;
}

id sub_1005D1D20()
{
  if (qword_1019F1B68 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithPointSize:qword_101AD7118 weight:2 scale:17.0];

  return v0;
}

objc_class *sub_1005D1DAC(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  sub_100006370(0, &qword_1019F6190);
  v14 = swift_allocObject();
  v63 = v7;
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;

  v56 = 0;
  v57 = 0;
  v59 = sub_1005D9230;
  v60 = v15;
  v58 = 0;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6E10);
  v64 = v16;
  v66.value.super.super.isa = v16;
  v17.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v66).super.super.super.super.isa;
  v18 = &selRef_scrollViewDidEndScrollingAnimation_;
  v65 = a2;
  if (!a1)
  {
    v24 = a3;
    v28 = 0;
    v62 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v19 = a1;
  v67.width = 1.0;
  v67.height = 1.0;
  UIGraphicsBeginImageContext(v67);
  [v19 setFill];
  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v69.size.width = 1.0;
  v69.size.height = 1.0;
  UIRectFill(v69);
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(objc_class *)v17.super.super.super.super.isa setBackgroundImage:v20 forState:0];

  v21 = [v19 colorWithAlphaComponent:0.6];
  v68.width = 1.0;
  v68.height = 1.0;
  UIGraphicsBeginImageContext(v68);
  [v21 setFill];
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = 1.0;
  v70.size.height = 1.0;
  UIRectFill(v70);
  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(objc_class *)v17.super.super.super.super.isa setBackgroundImage:v22 forState:1];

  v23 = v17.super.super.super.super.isa;
  v24 = a3;
  v25 = String._bridgeToObjectiveC()();
  [(objc_class *)v23 setAccessibilityLabel:v25];

  v26 = [v19 accessibilityName];
  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v23 setAccessibilityValue:v26];

  v27 = [v19 accessibilityName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v29;

  v18 = &selRef_scrollViewDidEndScrollingAnimation_;
  if (a2)
  {
LABEL_7:
    v61 = v28;
    v30 = a2;
    [(objc_class *)v17.super.super.super.super.isa setImage:v30 forState:0];
    v31 = [v30 crl_imageWithAlpha:0 renderingMode:0.6];
    [(objc_class *)v17.super.super.super.super.isa setImage:v31 forState:1];
    v32 = v17.super.super.super.super.isa;
    v33 = String._bridgeToObjectiveC()();
    [v32 v18[159]];

    v34 = [objc_opt_self() mainBundle];
    v35 = String._bridgeToObjectiveC()();
    v36 = String._bridgeToObjectiveC()();
    v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

    if (!v37)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = String._bridgeToObjectiveC()();
    }

    [(objc_class *)v32 setAccessibilityValue:v37, v56, v57, v58, v59, v60];

    a2 = v65;
    v28 = v61;
  }

LABEL_10:
  v38 = v17.super.super.super.super.isa;
  v39 = [(objc_class *)v38 layer];
  v40 = 5.0;
  if (_UISolariumEnabled())
  {
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    v40 = *&qword_101AD5E10;
  }

  [v39 setCornerRadius:{v40, v56, v57, v58, v59, v60}];

  v41 = [(objc_class *)v38 layer];
  [v41 setMasksToBounds:1];

  v42 = [(objc_class *)v38 layer];
  [v42 setCornerCurve:kCACornerCurveContinuous];

  v43 = [(objc_class *)v38 layer];
  v44 = [objc_opt_self() separatorColor];
  v45 = [v44 CGColor];

  [v43 setBorderColor:v45];
  v46 = [(objc_class *)v38 layer];
  [v46 setBorderWidth:1.0];

  [(objc_class *)v38 setShowsLargeContentViewer:1];
  if (v62)
  {
    sub_1005B981C(&unk_1019F61D0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10146BDE0;
    *(v47 + 32) = v24;
    *(v47 + 40) = a4;
    *(v47 + 48) = v28;
    *(v47 + 56) = v62;

    sub_1005B981C(&unk_1019F4D80);
    sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
    BidirectionalCollection<>.joined(separator:)();

    v48 = String._bridgeToObjectiveC()();
  }

  else
  {
    v48 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v38 setLargeContentTitle:v48];

  [(objc_class *)v38 setLargeContentImage:a2];
  v49 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v63];
  [(objc_class *)v38 addInteraction:v49];

  v50 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_101465920;
  v52 = [(objc_class *)v38 widthAnchor];

  v53 = [v52 constraintEqualToConstant:a6];
  *(v51 + 32) = v53;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v50 activateConstraints:isa];

  return v38;
}

void sub_1005D25F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = a3;
    v56 = a5;
    v11 = Strong + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
    swift_unknownObjectWeakLoadStrong();
    v53 = *(v11 + 8);
    v12 = *&v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element];
    v13 = *&v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController];
    v14 = *&v9[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController];
    v15 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterColorPaletteBuilder());
    v16 = &v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette];
    v17 = qword_1019F1F70;
    v54 = v12;
    v18 = v13;
    v55 = v14;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_101AD79A0;
    *v16 = xmmword_101AD7990;
    *(v16 + 2) = v19;
    v20 = &v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette];
    v21 = qword_1019F1F78;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_101AD79C0;
    *v20 = xmmword_101AD79B0;
    *(v20 + 2) = v22;
    v23 = &v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_singleRowPalette];
    v24 = qword_1019F1F80;

    v52 = v10;
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_101AD79E0;
    *v23 = xmmword_101AD79D0;
    *(v23 + 2) = v25;
    v26 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterShapeFillDataProvider());
    *&v26[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v18;
    v27 = type metadata accessor for CRLMiniFormatterDataProvider();
    v63.receiver = v26;
    v63.super_class = v27;
    v28 = v18;

    *&v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_shapeFillDataProvider] = objc_msgSendSuper2(&v63, "init");
    v29 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterStrokeDataProvider());
    v30 = &v29[OBJC_IVAR____TtC8Freeform34CRLMiniFormatterStrokeDataProvider_strokeChangingState];
    *v30 = 0;
    v30[8] = 1;
    *&v29[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v28;
    v62.receiver = v29;
    v62.super_class = v27;
    v31 = v28;
    *&v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_strokeDataProvider] = objc_msgSendSuper2(&v62, "init");
    v32 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTextDataProvider());
    *&v32[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v31;
    v61.receiver = v32;
    v61.super_class = v27;
    v33 = v31;
    *&v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_textDataProvider] = objc_msgSendSuper2(&v61, "init");
    v34 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTableDataProvider());
    *&v34[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v33;
    v60.receiver = v34;
    v60.super_class = v27;
    v35 = v33;
    *&v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tableDataProvider] = objc_msgSendSuper2(&v60, "init");
    v36 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterCellDataProvider());
    *&v36[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v35;
    v59.receiver = v36;
    v59.super_class = v27;
    v37 = v35;
    *&v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_cellDataProvider] = objc_msgSendSuper2(&v59, "init");
    v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showMoreOptionsButton] = 0;
    v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showHeaderView] = 1;
    v38 = &v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_headerTitle];
    *v38 = v52;
    v38[1] = a4;
    *&v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_buttonSize] = 0x4041000000000000;
    *&v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_rowSpacing] = 0x4028000000000000;
    v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_isEditingText] = 0;
    v15[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tablePaletteType] = v56;
    v39 = &v15[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v40 = &v15[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
    *v40 = 0;
    v40[1] = 0;
    *(v39 + 8) = v53;
    swift_unknownObjectWeakAssign();
    *&v15[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v54;
    *&v15[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v37;
    *&v15[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v14;
    v41 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
    *&v41[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v37;
    v58.receiver = v41;
    v58.super_class = v27;
    v42 = v37;
    v43 = v54;
    v44 = v42;
    v45 = v55;

    *&v15[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v58, "init");
    v46 = [v43 crlaxLabel];
    if (v46)
    {
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    *v40 = v48;
    v40[1] = v50;

    v57.receiver = v15;
    v57.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
    v51 = objc_msgSendSuper2(&v57, "init");
    swift_unknownObjectRelease();

    sub_1005D2B30(v51);
  }
}

void sub_1005D2B30(_BYTE *a1)
{
  v2 = v1;
  if (a1[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showHeaderView] == 1)
  {
    sub_1005B981C(&unk_1019F4D60);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10146CE00;
    *(v4 + 32) = sub_100C61968();
    v5 = [*&a1[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] options];
    v6 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette;
    if ((v5 & 0x1000) != 0)
    {
      v6 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette;
    }

    v7 = &a1[*v6];
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];

    v11 = sub_100C624E4(v8, v9, v10, 34.0);

    *(v4 + 40) = v11;
    v12 = objc_allocWithZone(UIStackView);
    sub_100006370(0, &qword_1019F6D00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35 = [v12 initWithArrangedSubviews:isa];

    [v35 setAxis:1];
    [v35 setSpacing:12.0];
  }

  else
  {
    v14 = [*&a1[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] options];
    v15 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette;
    if ((v14 & 0x1000) != 0)
    {
      v15 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette;
    }

    v16 = &a1[*v15];
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];

    v35 = sub_100C624E4(v17, v18, v19, 34.0);
  }

  v20 = v2 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(v20 + 16);
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 64);
    v26 = v35;
    v27 = v25(ObjectType, v23);
    v28 = (*(v23 + 72))(ObjectType, v23);
    v29 = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
    v30 = objc_allocWithZone(v29);
    v31 = OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder;
    *&v30[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder] = 0;
    *&v30[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint] = 0;
    *&v30[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_contentView] = v26;
    *&v30[v31] = a1;
    v30[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useNavigationControllerWidth] = v27 & 1;
    *&v30[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_bottomPadding] = v28;
    v30[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_useUCBMargins] = 0;
    v32 = &v30[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate];
    *v32 = v22;
    v32[1] = v23;
    v36.receiver = v30;
    v36.super_class = v29;
    v33 = a1;
    swift_unknownObjectRetain();
    v34 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
    if (*&v34[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder])
    {
      swift_unknownObjectWeakAssign();
    }

    (*(v23 + 24))(v34, ObjectType, v23);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1005D2F18(void *a1, void *a2, uint64_t a3)
{
  if ([a1 accessibilityContrast] == 1)
  {
    v4 = [a2 resolvedColorWithTraitCollection:a3];

    return v4;
  }

  else
  {

    return a2;
  }
}

id sub_1005D2FA4(unint64_t a1, void *a2, unint64_t a3, unint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v80 = a5;
  v19 = sub_1005B981C(&unk_1019F4CF0);
  v89 = *(v19 - 8);
  v20 = *(v89 + 64);
  __chkstk_darwin(v19 - 8);
  __chkstk_darwin(v21);
  v23 = &v76 - v22;
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v87 = a8;
  v88 = a2;
  v86 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a3 >> 62)
    {
      v74 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v74 - 1;
      if (!__OFSUB__(v74, 1))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v24 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 - 1;
      if (!__OFSUB__(v24, 1))
      {
LABEL_6:
        v26 = v25 == a1;
        v78 = v25 != a1;
        v27 = 10;
        if (!v26)
        {
          v27 = 0;
        }

        v77 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v78 = 0;
  v77 = 5;
LABEL_10:
  v84 = a7;
  v79 = a12;
  v83 = a11;
  sub_10000BE14(a4, v23, &unk_1019F4CF0);
  v28 = type metadata accessor for IndexSet();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v23, 1, v28);
  v85 = a6;
  v82 = a9;
  v81 = a10;
  if (v30 == 1)
  {
    sub_10000CAAC(v23, &unk_1019F4CF0);
  }

  else
  {
    v31 = IndexSet.contains(_:)(a1);
    (*(v29 + 8))(v23, v28);
    if (v31)
    {
      v80 = sub_1005D6E74(v80, a6);
      v32 = objc_opt_self();
      v33 = 1;
      v34 = &selRef_whiteColor;
      v35 = v89;
      goto LABEL_21;
    }
  }

  v36 = [objc_opt_self() mainScreen];
  v37 = [v36 traitCollection];

  LOBYTE(v36) = [v37 crl_isUserInterfaceStyleDark];
  if ((v36 & 1) == 0)
  {
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v38 = &qword_101AD5DE8;
    goto LABEL_20;
  }

  if (qword_1019F12B0 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v38 = &qword_101AD5DF0;
LABEL_20:
    v35 = v89;
    v39 = *v38;
    v32 = objc_opt_self();
    v80 = v39;
    v40 = v39;
    v33 = 0;
    v34 = &selRef_labelColor;
LABEL_21:
    v41 = [v32 *v34];
    sub_100006370(0, &qword_1019F6190);
    v42 = v86;
    sub_10000BE14(a4, v86, &unk_1019F4CF0);
    a4 = (*(v35 + 80) + 17) & ~*(v35 + 80);
    v43 = &v20[a4];
    v44 = &v20[a4] & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    LODWORD(v89) = v33;
    *(v45 + 16) = v33;
    sub_1005D9088(v42, v45 + a4);
    v43[v45] = v84 & 1;
    v46 = v45 + v44;
    v47 = v82;
    *(v46 + 8) = v87;
    *(v46 + 16) = v47;
    v48 = v45 + ((v44 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v48 = a1;
    *(v48 + 8) = v81 & 1;

    v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v49 = v83;
    if (!v83)
    {
      break;
    }

    v50 = [v88 imageWithTintColor:v41];
    v51 = v85;
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_38:
      __break(1u);
    }

    else if (*(v49 + 16) > a1)
    {
      v52 = v50;
      v53 = v49 + 16 * a1;
      v54 = *(v53 + 32);
      v55 = *(v53 + 40);
      v56 = objc_opt_self();
      v57 = v20;

      v58 = [v56 labelColor];
      v75 = v54;
      v59 = v80;
      v60 = sub_1005D3A94(v52, 0, 0, v20, v80, 0, v41, v58, 0, v77, v78, v75, v55, v51);

      goto LABEL_26;
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v58 = [v88 imageWithTintColor:v41];
  v61 = objc_opt_self();
  v52 = v20;
  v57 = [v61 labelColor];
  v51 = v85;
  v59 = v80;
  v60 = sub_1005D3A94(v58, 0, 0, v20, v80, 0, v41, v57, 0, v77, v78, 0, 0, v85);
LABEL_26:

  v62 = UIAccessibilityTraitSelected;
  v63 = v60;
  v64 = [v63 accessibilityTraits];
  v65 = -1;
  if ((v64 & v62) != 0)
  {
    v65 = ~v62;
  }

  v66 = v65 & v64;
  if ((v64 & v62) == v62)
  {
    v67 = 0;
  }

  else
  {
    v67 = v62;
  }

  v68 = v67 | v64;
  if (v89)
  {
    v69 = v68;
  }

  else
  {
    v69 = v66;
  }

  [v63 setAccessibilityTraits:v69];

  v70 = objc_allocWithZone(UILargeContentViewerInteraction);
  v71 = v63;
  v72 = [v70 initWithDelegate:v51];
  [v71 addInteraction:v72];

  return v71;
}

uint64_t sub_1005D36D8(uint64_t a1, char a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6, Swift::Int a7, char a8)
{
  v34 = a7;
  v35 = a6;
  v36 = a5;
  v33 = a4;
  v11 = sub_1005B981C(&unk_1019F4CF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v32[-v15];
  v17 = type metadata accessor for IndexSet();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v32[-v22];
  __chkstk_darwin(v24);
  v26 = &v32[-v25];
  if (a2)
  {
    sub_10000BE14(a3, v16, &unk_1019F4CF0);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_10000CAAC(v16, &unk_1019F4CF0);
    }

    (*(v18 + 32))(v26, v16, v17);
    if (IndexSet.count.getter() == 1 && (v33 & 1) != 0)
    {
      IndexSet.init()();
LABEL_14:
      (v36)(v23, *(&v29 + 1));
      v30 = *(v18 + 8);
      v30(v23, v17);
      return (v30)(v26, v17);
    }

    if (IndexSet.count.getter() >= 2)
    {
      (*(v18 + 16))(v23, v26, v17);
      *&v29 = IndexSet.remove(_:)(v34);
      goto LABEL_14;
    }

    return (*(v18 + 8))(v26, v17);
  }

  else if (a8)
  {
    sub_10000BE14(a3, v13, &unk_1019F4CF0);
    v28 = *(v18 + 48);
    if (v28(v13, 1, v17) == 1)
    {
      IndexSet.init()();
      if (v28(v13, 1, v17) != 1)
      {
        sub_10000CAAC(v13, &unk_1019F4CF0);
      }
    }

    else
    {
      (*(v18 + 32))(v20, v13, v17);
    }

    memberAfterInsert = IndexSet.insert(_:)(v34).memberAfterInsert;
    (v36)(v20, memberAfterInsert);
    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    IndexSet.init(integer:)();
    v36(v23);
    return (*(v18 + 8))(v23, v17);
  }
}

id sub_1005D3A94(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void *a6, void *a7, void *a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v68 = a8;
  v63 = a7;
  v66 = a4;
  v67 = a6;
  v64 = a11;
  LODWORD(v60) = a9;
  v16 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin(v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UIButton.Configuration.Size();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v23 - 8);
  v25 = &v59 - v24;
  v26 = type metadata accessor for UIButton.Configuration();
  v71 = *(v26 - 8);
  v72 = v26;
  v27 = __chkstk_darwin(v26);
  v65 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v59 - v30;
  __chkstk_darwin(v29);
  v70 = &v59 - v32;
  static UIButton.Configuration.filled()();
  v69 = a1;
  UIButton.Configuration.image.setter();
  v33 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();

  UIButton.Configuration.title.setter();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 17) = v60;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v35 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v35 - 8) + 56))(v25, 0, 1, v35);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v20 + 104))(v22, enum case for UIButton.Configuration.Size.small(_:), v19);
  UIButton.Configuration.buttonSize.setter();
  if (a5)
  {
    v36 = v70;
  }

  else
  {
    v37 = [objc_opt_self() mainScreen];
    v38 = [v37 traitCollection];

    LOBYTE(v37) = [v38 crl_isUserInterfaceStyleDark];
    if (v37)
    {
      v36 = v70;
      if (qword_1019F12B0 != -1)
      {
        swift_once();
      }

      v39 = qword_101AD5DF0;
    }

    else
    {
      v36 = v70;
      if (qword_1019F12A8 != -1)
      {
        swift_once();
      }

      v39 = qword_101AD5DE8;
    }

    v40 = v39;
  }

  v60 = a12;
  v70 = a5;
  v41 = a5;
  UIButton.Configuration.baseBackgroundColor.setter();
  v42 = v63;
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v61 + 104))(v18, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v62);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.contentInsets.setter();
  v43 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v43(aBlock, 0);
  v44 = v36;
  if ((v64 & 1) == 0)
  {
    sub_1004A48FC();
    v45 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration._maskedCorners.setter();
    v45(aBlock, 0);
  }

  v46 = v71;
  v47 = v31;
  v48 = v72;
  (*(v71 + 32))(v44, v47, v72);
  sub_100006370(0, &qword_1019F6E10);
  (*(v46 + 16))(v65, v44, v48);
  v49 = v66;
  v50 = UIButton.init(configuration:primaryAction:)();
  aBlock[4] = sub_1005D46A0(v70, v67, v42, v68);
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_10187BF88;
  v52 = _Block_copy(aBlock);

  [v50 setConfigurationUpdateHandler:v52];
  _Block_release(v52);
  v53 = v50;
  if (a13)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  [v50 setAccessibilityLabel:v54];

  [v50 setPointerInteractionEnabled:1];
  v55 = v50;
  [v55 setShowsLargeContentViewer:1];
  if (a13)
  {
    v56 = String._bridgeToObjectiveC()();
  }

  else
  {
    v56 = 0;
  }

  [v55 setLargeContentTitle:v56];

  [v55 setLargeContentImage:v69];
  v57 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:a14];
  [v55 addInteraction:v57];

  [v55 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  (*(v46 + 8))(v44, v48);
  return v55;
}

id sub_1005D42AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100017CD8();
  StringProtocol.localizedUppercase.getter();
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle:{UIFontTextStyleCaption1, a1, a2}];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits:2];

  if (v10)
  {
    [v8 pointSize];
    v11 = [v7 fontWithDescriptor:v10 size:?];
  }

  else
  {
    v11 = 0;
  }

  [v6 setFont:v11];
  v12 = String._bridgeToObjectiveC()();

  [v6 setText:v12];

  v13 = [objc_opt_self() secondaryLabelColor];
  [v6 setTextColor:v13];

  [v6 setTextAlignment:4];
  [v6 setNumberOfLines:0];
  [v6 setAdjustsFontForContentSizeCategory:1];
  v14 = v6;
  [v14 setShowsLargeContentViewer:1];
  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v3];
  [v14 addInteraction:v15];

  sub_1005B981C(&unk_1019F4D60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101465920;
  *(v16 + 32) = v14;
  v17 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithArrangedSubviews:isa];

  [v19 setLayoutMarginsRelativeArrangement:1];
  [v19 setDirectionalLayoutMargins:{0.0, 4.0, 0.0, 0.0}];

  return v19;
}

uint64_t sub_1005D45D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  if (!a2)
  {
    v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  }

  sub_1005D9028();
  v8 = a2;
  return AttributeContainer.subscript.setter();
}

uint64_t (*sub_1005D46A0(void *a1, void *a2, void *a3, void *a4))(void *a1)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = v4;
  v10 = a4;
  v11 = a2;
  v12 = a3;
  v13 = a1;
  return sub_1005D9018;
}

uint64_t sub_1005D472C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributeContainer();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = objc_opt_self();
  if (a2)
  {
    v10 = &selRef_italicSystemFontOfSize_;
    if ((a3 & 1) == 0)
    {
      v10 = &selRef_systemFontOfSize_;
    }

    [v9 *v10];
  }

  else
  {
    v11 = v9;
    v12 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
    v13 = v12;
    if (a3)
    {
      v14 = [v12 fontDescriptor];
      v15 = [v14 fontDescriptorWithSymbolicTraits:1];

      if (v15)
      {
        [v13 pointSize];
        [v11 fontWithDescriptor:v15 size:?];
      }
    }
  }

  sub_1005D9028();
  return AttributeContainer.subscript.setter();
}

uint64_t sub_1005D4A50(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = sub_1005B981C(&unk_1019F4CD0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v39 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v39 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v39 - v21;
  __chkstk_darwin(v20);
  v24 = &v39 - v23;
  if ([a1 state] == 1)
  {
    UIButton.configuration.getter();
    v25 = type metadata accessor for UIButton.Configuration();
    v26 = *(*(v25 - 8) + 48);
    if (v26(v24, 1, v25))
    {
      sub_10000BE14(v24, v22, &unk_1019F4CD0);
      UIButton.configuration.setter();
      sub_10000CAAC(v24, &unk_1019F4CD0);
    }

    else
    {
      v29 = a2;
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v26(v19, 1, v25))
    {
      sub_10000BE14(v19, v22, &unk_1019F4CD0);
      UIButton.configuration.setter();
      return sub_10000CAAC(v19, &unk_1019F4CD0);
    }

    if (!a3)
    {
      sub_1005D6C14();
    }

    v32 = a3;
    UIButton.Configuration.baseBackgroundColor.setter();
  }

  else
  {
    v40 = a5;
    UIButton.configuration.getter();
    v27 = type metadata accessor for UIButton.Configuration();
    v28 = *(*(v27 - 8) + 48);
    if (v28(v16, 1, v27))
    {
      sub_10000BE14(v16, v22, &unk_1019F4CD0);
      UIButton.configuration.setter();
      sub_10000CAAC(v16, &unk_1019F4CD0);
    }

    else
    {
      v31 = a4;
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v28(v13, 1, v27))
    {
      sub_10000BE14(v13, v22, &unk_1019F4CD0);
      UIButton.configuration.setter();
      return sub_10000CAAC(v13, &unk_1019F4CD0);
    }

    v33 = v40;
    if (!v40)
    {
      v34 = [objc_opt_self() mainScreen];
      v35 = [v34 traitCollection];

      LODWORD(v34) = [v35 crl_isUserInterfaceStyleDark];
      if (v34)
      {
        if (qword_1019F12B0 != -1)
        {
          swift_once();
        }

        v36 = qword_101AD5DF0;
      }

      else
      {
        if (qword_1019F12A8 != -1)
        {
          swift_once();
        }

        v36 = qword_101AD5DE8;
      }

      v37 = v36;
    }

    v38 = v33;
    UIButton.Configuration.baseBackgroundColor.setter();
  }

  return UIButton.configuration.setter();
}

uint64_t sub_1005D4EF8(void *a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIButton.Configuration.plain()();
  v10 = a1;
  UIButton.Configuration.image.setter();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.small(_:), v6);
  UIButton.Configuration.buttonSize.setter();
  v11 = [objc_opt_self() configurationWithPointSize:4 weight:15.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v12 = objc_opt_self();
  v13 = [v12 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v14 = [v12 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v3 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v2);
  UIButton.Configuration.cornerStyle.setter();
  v15 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  return v15(v17, 0);
}

void *sub_1005D5138()
{
  v0 = sub_100911E34();
  if (v0)
  {
    sub_1006369C4(v0);
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1005D5190(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v13);
  type metadata accessor for CRLBoardItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = sub_100911E34();
  if (!v3 || (v4 = sub_10079DB40(v12, v3), , (v4 & 1) == 0))
  {

    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v6 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16) && (v8 = sub_1007CF108(12), (v9 & 1) != 0))
  {
    sub_10000BE14(*(v7 + 56) + 32 * v8, v13, &unk_1019F4D00);

    v10 = 1;
  }

  else
  {

    v10 = 0;
    memset(v13, 0, 24);
    v13[3] = 1;
  }

  sub_10000CAAC(v13, &unk_1019F4D50);
  return v10;
}

id sub_1005D5340()
{
  result = *(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController);
  if (!result)
  {
    return result;
  }

  result = [result canvasView];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for CRLiOSBoardView();
  v3 = v2;
  v4 = swift_dynamicCastClass();
  v5 = &selRef_setSizeClassParameters_;
  v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v7 = &selRef_ignoreUrl_;
  v8 = &selRef_isEnumeratingForUserSearch;
  v9 = &static OS_os_log.crlAssert;
  v10 = &type metadata for UInt;
  if (v4)
  {
    goto LABEL_7;
  }

  do
  {

    v11 = [v3 superview];
    if (!v11)
    {
      v13 = objc_opt_self();
      v14 = [v13 _atomicIncrementAssertCount];
      v113[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v113);
      StaticString.description.getter();
      v15 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v21 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v14;
      v23 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v23;
      v24 = sub_1005CF04C();
      *(inited + 104) = v24;
      *(inited + 72) = v15;
      *(inited + 136) = &type metadata for String;
      v25 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v20;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v25;
      *(inited + 152) = 657;
      v26 = v113[0];
      *(inited + 216) = v23;
      *(inited + 224) = v24;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v26;
      v27 = v15;
      v28 = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v30, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v31 = swift_allocObject();
      v31[2] = 8;
      v31[3] = 0;
      v31[4] = 0;
      v31[5] = 0;
      v32 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      [v13 handleFailureInFunction:v33 file:v34 lineNumber:657 isFatal:0 format:v35 args:v32];

      v112 = 0;
      v3 = 0;
LABEL_12:
      v111 = objc_opt_self();
      v36 = [v111 _atomicIncrementAssertCount];
      v113[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v113);
      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      v39 = [v38 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v43 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_10146CA70;
      *(v44 + 56) = &type metadata for Int32;
      *(v44 + 64) = &protocol witness table for Int32;
      *(v44 + 32) = v36;
      v45 = sub_100006370(0, &qword_1019F4D30);
      *(v44 + 96) = v45;
      v46 = sub_1005CF04C();
      *(v44 + 104) = v46;
      *(v44 + 72) = v37;
      *(v44 + 136) = &type metadata for String;
      v47 = sub_1000053B0();
      *(v44 + 112) = v40;
      *(v44 + 120) = v42;
      *(v44 + 176) = &type metadata for UInt;
      *(v44 + 144) = v47;
      *(v44 + 152) = 658;
      v48 = v113[0];
      *(v44 + 216) = v45;
      *(v44 + 224) = v46;
      *(v44 + 184) = &protocol witness table for UInt;
      *(v44 + 192) = v48;
      v49 = v37;
      v50 = v48;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v52 = static os_log_type_t.error.getter();
      v10 = _swiftEmptyArrayStorage;
      sub_100005404(v43, &_mh_execute_header, v52, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v53 = swift_allocObject();
      v53[2] = 8;
      v53[3] = 0;
      v54 = v53 + 3;
      v53[4] = 0;
      v53[5] = 0;
      v9 = _swiftEmptyArrayStorage[2];
      if (!v9)
      {
LABEL_39:
        v73 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v74 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v75 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v76 = String._bridgeToObjectiveC()();

        [v111 handleFailureInFunction:v74 file:v75 lineNumber:658 isFatal:0 format:v76 args:v73];

        v12 = v112;
        if (v112)
        {
          v10 = &type metadata for UInt;
          v9 = &static OS_os_log.crlAssert;
          v8 = &selRef_isEnumeratingForUserSearch;
          v7 = &selRef_ignoreUrl_;
          v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
          v5 = &selRef_setSizeClassParameters_;
          goto LABEL_41;
        }

        v112 = 0;
        v10 = &type metadata for UInt;
        v9 = &static OS_os_log.crlAssert;
        v8 = &selRef_isEnumeratingForUserSearch;
        v7 = &selRef_ignoreUrl_;
        v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
        v5 = &selRef_setSizeClassParameters_;
LABEL_45:
        v111 = objc_opt_self();
        LODWORD(v57) = [v111 v5[325]];
        v113[0] = [objc_allocWithZone(v6[101]) v7[165]];
        sub_100604538(_swiftEmptyArrayStorage, v113);
        StaticString.description.getter();
        v53 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v78 = String._bridgeToObjectiveC()();

        v79 = [v78 v8[321]];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v80;

        if (qword_1019F20A0 != -1)
        {
          goto LABEL_86;
        }

        goto LABEL_46;
      }

      v55 = 0;
      v56 = 40;
      while (1)
      {
        LODWORD(v57) = sub_100020E58(&v10[5 * v55 + 4], v10[5 * v55 + 7]);
        v58 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v59 = *v54;
        v60 = *(v58 + 16);
        v61 = __OFADD__(*v54, v60);
        v62 = *v54 + v60;
        if (v61)
        {
          goto LABEL_81;
        }

        v57 = v53[4];
        if (v57 >= v62)
        {
          goto LABEL_31;
        }

        if (v57 + 0x4000000000000000 < 0)
        {
          goto LABEL_84;
        }

        v63 = v53[5];
        if (2 * v57 > v62)
        {
          v62 = 2 * v57;
        }

        v53[4] = v62;
        if ((v62 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_85;
        }

        v64 = v10;
        v65 = v58;
        v66 = swift_slowAlloc();
        v67 = v66;
        v53[5] = v66;
        if (v63)
        {
          break;
        }

        v58 = v65;
        v10 = v64;
        v56 = 40;
        if (!v67)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_32:
        v69 = *(v58 + 16);
        if (v69)
        {
          v70 = (v58 + 32);
          v71 = *v54;
          while (1)
          {
            v72 = *v70++;
            *&v67[8 * v71] = v72;
            v71 = *v54 + 1;
            if (__OFADD__(*v54, 1))
            {
              break;
            }

            *v54 = v71;
            if (!--v69)
            {
              goto LABEL_16;
            }
          }

          while (2)
          {
            __break(1u);
            while (2)
            {
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              swift_once();
LABEL_46:
              v81 = *v9;
              sub_1005B981C(&qword_1019F54E0);
              v82 = swift_initStackObject();
              *(v82 + 16) = xmmword_10146CA70;
              *(v82 + 56) = &type metadata for Int32;
              *(v82 + 64) = &protocol witness table for Int32;
              *(v82 + 32) = v57;
              v83 = sub_100006370(0, &qword_1019F4D30);
              *(v82 + 96) = v83;
              v84 = sub_1005CF04C();
              *(v82 + 104) = v84;
              *(v82 + 72) = v53;
              *(v82 + 136) = &type metadata for String;
              v85 = sub_1000053B0();
              *(v82 + 112) = v55;
              *(v82 + 120) = v56;
              *(v82 + 176) = v10;
              *(v82 + 144) = v85;
              *(v82 + 152) = 659;
              v86 = v113[0];
              *(v82 + 216) = v83;
              *(v82 + 224) = v84;
              *(v82 + 184) = &protocol witness table for UInt;
              *(v82 + 192) = v86;
              v87 = v53;
              v88 = v86;
              v89 = static os_log_type_t.error.getter();
              sub_100005404(v81, &_mh_execute_header, v89, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v82);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v90 = static os_log_type_t.error.getter();
              v10 = _swiftEmptyArrayStorage;
              sub_100005404(v81, &_mh_execute_header, v90, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

              type metadata accessor for __VaListBuilder();
              v53 = swift_allocObject();
              v53[2] = 8;
              v53[3] = 0;
              v91 = v53 + 3;
              v53[4] = 0;
              v53[5] = 0;
              v9 = _swiftEmptyArrayStorage[2];
              if (!v9)
              {
LABEL_71:
                v106 = __VaListBuilder.va_list()();
                StaticString.description.getter();
                v107 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v108 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v109 = String._bridgeToObjectiveC()();

                [v111 handleFailureInFunction:v107 file:v108 lineNumber:659 isFatal:0 format:v109 args:v106];

                if (v112)
                {
                  goto LABEL_72;
                }

                return 0;
              }

              v55 = 0;
              v56 = 40;
LABEL_49:
              LODWORD(v57) = sub_100020E58(&v10[5 * v55 + 4], v10[5 * v55 + 7]);
              v92 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
              v93 = *v91;
              v94 = *(v92 + 16);
              v61 = __OFADD__(*v91, v94);
              v95 = *v91 + v94;
              if (v61)
              {
                continue;
              }

              break;
            }

            v57 = v53[4];
            if (v57 >= v95)
            {
LABEL_63:
              v100 = v53[5];
              if (!v100)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if (v57 + 0x4000000000000000 < 0)
              {
                goto LABEL_82;
              }

              v96 = v53[5];
              if (2 * v57 > v95)
              {
                v95 = 2 * v57;
              }

              v53[4] = v95;
              if ((v95 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_83;
              }

              v97 = v10;
              v98 = v92;
              v99 = swift_slowAlloc();
              v100 = v99;
              v53[5] = v99;
              if (v96)
              {
                if (v99 != v96 || v99 >= &v96[8 * v93])
                {
                  memmove(v99, v96, 8 * v93);
                }

                LODWORD(v57) = v53;
                __VaListBuilder.deallocStorage(wordCount:storage:)();
                v92 = v98;
                v10 = v97;
                v56 = 40;
                goto LABEL_63;
              }

              v92 = v98;
              v10 = v97;
              v56 = 40;
              if (!v100)
              {
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }
            }

            v102 = *(v92 + 16);
            if (v102)
            {
              v103 = (v92 + 32);
              v104 = *v91;
              while (1)
              {
                v105 = *v103++;
                *&v100[8 * v104] = v105;
                v104 = *v91 + 1;
                if (__OFADD__(*v91, 1))
                {
                  break;
                }

                *v91 = v104;
                if (!--v102)
                {
                  goto LABEL_48;
                }
              }

              __break(1u);
              continue;
            }

            break;
          }

LABEL_48:

          if (++v55 == v9)
          {
            goto LABEL_71;
          }

          goto LABEL_49;
        }

LABEL_16:

        if (++v55 == v9)
        {
          goto LABEL_39;
        }
      }

      if (v66 != v63 || v66 >= &v63[8 * v59])
      {
        memmove(v66, v63, 8 * v59);
      }

      LODWORD(v57) = v53;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v58 = v65;
      v10 = v64;
      v56 = 40;
LABEL_31:
      v67 = v53[5];
      if (!v67)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    v3 = v11;
    v4 = swift_dynamicCastClass();
  }

  while (!v4);
  v10 = &type metadata for UInt;
LABEL_7:
  v112 = v4;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
  v12 = v112;
LABEL_41:
  v112 = v12;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_45;
  }

  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (!v77)
  {
    goto LABEL_45;
  }

LABEL_72:
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

id sub_1005D6500(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterBaseLayerButton_isPresentingPopover] = a1;
  if (a2)
  {

    return [v3 setHighlighted:a1 & 1];
  }

  else
  {
    v21 = v12;
    sub_100006370(0, &qword_1019F2D90);
    v20 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = a1 & 1;
    aBlock[4] = sub_1005D91C4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10187C050;
    v17 = _Block_copy(aBlock);
    v18 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1005D91D8();
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v21);
  }
}

id sub_1005D6A38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1005D6B14()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform44CRLiOSMiniFormatterColorPickerViewController_builder);
  v2 = OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element;
  if (([*(v1 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) options] & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return ([*(v1 + v2) options] >> 19) & 1;
  }
}

id sub_1005D6BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for CRLiOSMiniFormatterColorPickerViewController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Freeform44CRLiOSMiniFormatterColorPickerViewController_builder] = a2;
  v10 = &v9[OBJC_IVAR____TtC8Freeform44CRLiOSMiniFormatterColorPickerViewController_popoverDelegate];
  *v10 = a1;
  *(v10 + 1) = a5;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_1005D6C14()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  v2 = [v1 traitCollection];

  LODWORD(v1) = [v2 crl_isUserInterfaceStyleDark];
  v3 = [v0 mainScreen];
  v4 = [v3 traitCollection];

  v5 = [v4 crl_isUserInterfaceStyleDark];
  if (v1)
  {
    if (v5)
    {
      if (qword_1019F12B0 != -1)
      {
        swift_once();
      }

      v6 = &qword_101AD5DF0;
    }

    else
    {
      if (qword_1019F12A8 != -1)
      {
        swift_once();
      }

      v6 = &qword_101AD5DE8;
    }

    v8 = qword_1019F12C0;
    v9 = *v6;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = &qword_101AD5E00;
  }

  else
  {
    if (v5)
    {
      if (qword_1019F12B0 != -1)
      {
        swift_once();
      }

      v7 = &qword_101AD5DF0;
    }

    else
    {
      if (qword_1019F12A8 != -1)
      {
        swift_once();
      }

      v7 = &qword_101AD5DE8;
    }

    v11 = qword_1019F12B8;
    v9 = *v7;
    if (v11 != -1)
    {
      swift_once();
    }

    v10 = &qword_101AD5DF8;
  }

  v12 = sub_100C9CEC0(*v10);

  return v12;
}

id sub_1005D6E74(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 == 1)
  {
    if (qword_1019F12A0 != -1)
    {
      v19 = a2;
      swift_once();
      a2 = v19;
    }

    v3 = qword_101AD5DE0;
    if (qword_101AD5DE0)
    {
      v5 = *(a2 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController);
      if (v5)
      {
        v6 = qword_101AD5DE0;
        v7 = [v5 canvasView];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 traitCollection];

          if (v9)
          {
            v10 = v9;
            v11 = UITraitCollection.modifyingTraits(_:)();

            v12 = swift_allocObject();
            *(v12 + 16) = v6;
            *(v12 + 24) = v11;
            v13 = objc_allocWithZone(UIColor);
            v20[4] = sub_1005D91BC;
            v20[5] = v12;
            v20[0] = _NSConcreteStackBlock;
            v20[1] = *"";
            v20[2] = sub_1005B9BD8;
            v20[3] = &unk_10187C000;
            v14 = _Block_copy(v20);
            v3 = [v13 initWithDynamicProvider:v14];
            _Block_release(v14);
          }
        }
      }

      else
      {
        v15 = qword_101AD5DE0;
      }
    }

    swift_beginAccess();
    v16 = *a1;
    *a1 = v3;
    v17 = v3;
    sub_1000505D0(v16);
  }

  sub_1000505E0(v2);
  return v3;
}

char *sub_1005D707C(void *a1, void *a2, void *a3, void *a4)
{
  if (([a1 options] & 4) != 0 || (objc_msgSend(a1, "options") & 0x1000) != 0 || (objc_msgSend(a1, "options") & 0x80000) != 0 || (objc_msgSend(a1, "options") & 0x10000000) != 0)
  {
    v23 = [a1 options];
    v24 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterColorPaletteBuilder());
    v25 = &v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette];
    if (qword_1019F1F70 != -1)
    {
      swift_once();
    }

    v26 = qword_101AD79A0;
    *v25 = xmmword_101AD7990;
    *(v25 + 2) = v26;
    v27 = &v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette];
    v28 = qword_1019F1F78;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_101AD79C0;
    *v27 = xmmword_101AD79B0;
    *(v27 + 2) = v29;
    v30 = &v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_singleRowPalette];
    v31 = qword_1019F1F80;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = qword_101AD79E0;
    *v30 = xmmword_101AD79D0;
    *(v30 + 2) = v32;
    v33 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterShapeFillDataProvider());
    *&v33[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
    v34 = type metadata accessor for CRLMiniFormatterDataProvider();
    v286.receiver = v33;
    v286.super_class = v34;

    v35 = a3;
    *&v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_shapeFillDataProvider] = objc_msgSendSuper2(&v286, "init");
    v36 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterStrokeDataProvider());
    v37 = &v36[OBJC_IVAR____TtC8Freeform34CRLMiniFormatterStrokeDataProvider_strokeChangingState];
    *v37 = 0;
    v37[8] = 1;
    *&v36[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v35;
    v285.receiver = v36;
    v285.super_class = v34;
    v38 = v35;
    *&v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_strokeDataProvider] = objc_msgSendSuper2(&v285, "init");
    v39 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTextDataProvider());
    *&v39[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v38;
    v284.receiver = v39;
    v284.super_class = v34;
    v40 = v38;
    *&v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_textDataProvider] = objc_msgSendSuper2(&v284, "init");
    v41 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTableDataProvider());
    *&v41[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v40;
    v283.receiver = v41;
    v283.super_class = v34;
    v42 = v40;
    *&v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tableDataProvider] = objc_msgSendSuper2(&v283, "init");
    v43 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterCellDataProvider());
    *&v43[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v42;
    v282.receiver = v43;
    v282.super_class = v34;
    v44 = v42;
    *&v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_cellDataProvider] = objc_msgSendSuper2(&v282, "init");
    v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showMoreOptionsButton] = (v23 & 0x80000) != 0;
    v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showHeaderView] = 0;
    v45 = &v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_headerTitle];
    *v45 = 0;
    v45[1] = 0;
    *&v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_buttonSize] = 0x4041000000000000;
    *&v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_rowSpacing] = 0x4028000000000000;
    v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_isEditingText] = 0;
    v24[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tablePaletteType] = 2;
    v46 = &v24[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
    *(v46 + 1) = 0;
    *(v46 + 2) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v47 = &v24[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
    *v47 = 0;
    v47[1] = 0;
    *(v46 + 1) = &off_101884938;
    *(v46 + 2) = &off_101884000;
    swift_unknownObjectWeakAssign();
    *&v24[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
    *&v24[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v44;
    *&v24[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
    v48 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
    *&v48[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v44;
    v281.receiver = v48;
    v281.super_class = v34;
    v49 = v44;
    v50 = a1;
    v51 = a4;
    *&v24[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v281, "init");
    v52 = [v50 crlaxLabel];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    *v47 = v54;
    v47[1] = v56;

    v280.receiver = v24;
    v280.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
    return objc_msgSendSuper2(&v280, "init");
  }

  else
  {
    if (([a1 options] & 8) != 0)
    {
      objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterStrokeBuilder());
      v58 = a4;
      v59 = a2;
      return sub_100B2E8BC(a2, &off_101884938, &off_101884000, a1, a3, a4);
    }

    if (([a1 options] & 0x10) != 0 || (objc_msgSend(a1, "options") & 0x2000) != 0 || (objc_msgSend(a1, "options") & 0x20000) != 0 || (objc_msgSend(a1, "options") & 0x100000) != 0)
    {
      v60 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterTextBuilder());
      v61 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterTextDataProvider());
      *&v61[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
      v62 = type metadata accessor for CRLMiniFormatterDataProvider();
      v279.receiver = v61;
      v279.super_class = v62;
      v63 = a3;
      v64 = objc_msgSendSuper2(&v279, "init");
      *&v60[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_dataProvider] = v64;
      v65 = &v60[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_textSizeManager];
      *v65 = v64;
      v65[1] = &off_101872C50;
      v60[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_showHeaderView] = 0;
      v60[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedStackView] = 0;
      v60[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_displaySimplifiedLandscapeStackView] = 0;
      *&v60[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_headerViewHeight] = 0;
      v60[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterTextBuilder_isEditingText] = 0;
      v66 = &v60[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
      *(v66 + 1) = 0;
      *(v66 + 2) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v67 = a4;
      v68 = &v60[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
      *v68 = 0;
      v68[1] = 0;
      *(v66 + 1) = &off_101884938;
      *(v66 + 2) = &off_101884000;
      swift_unknownObjectWeakAssign();
      *&v60[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
      *&v60[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v63;
      *&v60[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = v67;
      v69 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
      *&v69[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v63;
      v278.receiver = v69;
      v278.super_class = v62;
      v70 = v63;
      v71 = a1;
      v72 = v67;
      v73 = v64;
      *&v60[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v278, "init");
      v74 = [v71 crlaxLabel];
      if (v74)
      {
        v75 = v74;
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      *v68 = v76;
      v68[1] = v78;

      v277.receiver = v60;
      v277.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
      return objc_msgSendSuper2(&v277, "init");
    }

    else if (([a1 options] & 0x20) != 0)
    {
      v79 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterLineEndsBuilder());
      v80 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterLineDataProvider());
      *&v80[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
      v81 = type metadata accessor for CRLMiniFormatterDataProvider();
      v276.receiver = v80;
      v276.super_class = v81;
      v82 = a3;
      *&v79[OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterLineEndsBuilder_lineDataProvider] = objc_msgSendSuper2(&v276, "init");
      v83 = &v79[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
      *(v83 + 1) = 0;
      *(v83 + 2) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v84 = &v79[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
      *v84 = 0;
      v84[1] = 0;
      *(v83 + 1) = &off_101884938;
      *(v83 + 2) = &off_101884000;
      swift_unknownObjectWeakAssign();
      *&v79[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
      *&v79[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v82;
      *&v79[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
      v85 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
      *&v85[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v82;
      v275.receiver = v85;
      v275.super_class = v81;
      v86 = v82;
      v87 = a1;
      v88 = a4;
      *&v79[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v275, "init");
      v89 = [v87 crlaxLabel];
      if (v89)
      {
        v90 = v89;
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;
      }

      else
      {
        v91 = 0;
        v93 = 0;
      }

      *v84 = v91;
      v84[1] = v93;

      v274.receiver = v79;
      v274.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
      return objc_msgSendSuper2(&v274, "init");
    }

    else if (([a1 options] & 0x40) != 0)
    {
      v94 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterConnectionLineBuilder());
      v95 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterLineDataProvider());
      *&v95[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
      v96 = type metadata accessor for CRLMiniFormatterDataProvider();
      v273.receiver = v95;
      v273.super_class = v96;
      v97 = a3;
      *&v94[OBJC_IVAR____TtC8Freeform40CRLiOSMiniFormatterConnectionLineBuilder_lineDataProvider] = objc_msgSendSuper2(&v273, "init");
      v98 = &v94[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
      *(v98 + 1) = 0;
      *(v98 + 2) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v99 = &v94[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
      *v99 = 0;
      v99[1] = 0;
      *(v98 + 1) = &off_101884938;
      *(v98 + 2) = &off_101884000;
      swift_unknownObjectWeakAssign();
      *&v94[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
      *&v94[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v97;
      *&v94[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
      v100 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
      *&v100[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v97;
      v272.receiver = v100;
      v272.super_class = v96;
      v101 = v97;
      v102 = a1;
      v103 = a4;
      *&v94[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v272, "init");
      v104 = [v102 crlaxLabel];
      if (v104)
      {
        v105 = v104;
        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v107;
      }

      else
      {
        v106 = 0;
        v108 = 0;
      }

      *v99 = v106;
      v99[1] = v108;

      v271.receiver = v94;
      v271.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
      return objc_msgSendSuper2(&v271, "init");
    }

    else if (([a1 options] & 0x80) != 0 || (objc_msgSend(a1, "options") & 0x200) != 0)
    {
      v109 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterImageAndMovieBuilder());
      v110 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterMediaDataProvider());
      *&v110[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
      v111 = type metadata accessor for CRLMiniFormatterDataProvider();
      v270.receiver = v110;
      v270.super_class = v111;
      v112 = a3;
      *&v109[OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider] = objc_msgSendSuper2(&v270, "init");
      v113 = &v109[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
      *(v113 + 1) = 0;
      *(v113 + 2) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v114 = &v109[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
      *v114 = 0;
      v114[1] = 0;
      *(v113 + 1) = &off_101884938;
      *(v113 + 2) = &off_101884000;
      swift_unknownObjectWeakAssign();
      *&v109[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
      *&v109[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v112;
      *&v109[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
      v115 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
      *&v115[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v112;
      v269.receiver = v115;
      v269.super_class = v111;
      v116 = v112;
      v117 = a1;
      v118 = a4;
      *&v109[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v269, "init");
      v119 = [v117 crlaxLabel];
      if (v119)
      {
        v120 = v119;
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;
      }

      else
      {
        v121 = 0;
        v123 = 0;
      }

      *v114 = v121;
      v114[1] = v123;

      v268.receiver = v109;
      v268.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
      return objc_msgSendSuper2(&v268, "init");
    }

    else
    {
      if (([a1 options] & 0x100) == 0)
      {
        if (([a1 options] & 0x800) != 0)
        {
          v139 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterURLBuilder());
          v140 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterURLDataProvider());
          *&v140[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
          v141 = type metadata accessor for CRLMiniFormatterDataProvider();
          v264.receiver = v140;
          v264.super_class = v141;
          v142 = a3;
          v143 = a1;
          v144 = a4;
          v145 = a2;
          *&v139[OBJC_IVAR____TtC8Freeform29CRLiOSMiniFormatterURLBuilder_urlDataProvider] = objc_msgSendSuper2(&v264, "init");
          v146 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterMediaDataProvider());
          *&v146[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v142;
          v263.receiver = v146;
          v263.super_class = v141;
          v147 = v142;
          *&v139[OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider] = objc_msgSendSuper2(&v263, "init");
          v148 = &v139[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
          *(v148 + 1) = 0;
          *(v148 + 2) = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          v149 = &v139[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
          *v149 = 0;
          v149[1] = 0;
          *(v148 + 1) = &off_101884938;
          *(v148 + 2) = &off_101884000;
          swift_unknownObjectWeakAssign();
          *&v139[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v143;
          *&v139[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v147;
          *&v139[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
          v150 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
          *&v150[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v147;
          v262.receiver = v150;
          v262.super_class = v141;
          v151 = v147;
          v152 = v143;
          v153 = v144;
          *&v139[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v262, "init");
          v154 = [v152 crlaxLabel];
          if (v154)
          {
            v155 = v154;
            v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v158 = v157;
          }

          else
          {
            v156 = 0;
            v158 = 0;
          }

          *v149 = v156;
          v149[1] = v158;

          v261.receiver = v139;
          v261.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
          v175 = objc_msgSendSuper2(&v261, "init");
        }

        else if (([a1 options] & 0x400) != 0)
        {
          v159 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterFileBuilder());
          v160 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterFileDataProvider());
          *&v160[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
          v161 = type metadata accessor for CRLMiniFormatterDataProvider();
          v260.receiver = v160;
          v260.super_class = v161;
          v162 = a3;
          v163 = a1;
          v164 = a4;
          v145 = a2;
          *&v159[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterFileBuilder_fileDataProvider] = objc_msgSendSuper2(&v260, "init");
          v165 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterMediaDataProvider());
          *&v165[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v162;
          v259.receiver = v165;
          v259.super_class = v161;
          v166 = v162;
          *&v159[OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider] = objc_msgSendSuper2(&v259, "init");
          v167 = &v159[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
          *(v167 + 1) = 0;
          *(v167 + 2) = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          v168 = &v159[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
          *v168 = 0;
          v168[1] = 0;
          *(v167 + 1) = &off_101884938;
          *(v167 + 2) = &off_101884000;
          swift_unknownObjectWeakAssign();
          *&v159[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v163;
          *&v159[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v166;
          *&v159[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
          v169 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
          *&v169[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v166;
          v258.receiver = v169;
          v258.super_class = v161;
          v151 = v166;
          v152 = v163;
          v153 = v164;
          *&v159[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v258, "init");
          v170 = [v152 crlaxLabel];
          if (v170)
          {
            v171 = v170;
            v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v174 = v173;
          }

          else
          {
            v172 = 0;
            v174 = 0;
          }

          *v168 = v172;
          v168[1] = v174;

          v257.receiver = v159;
          v257.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
          v175 = objc_msgSendSuper2(&v257, "init");
        }

        else
        {
          if (([a1 options] & 0x800000) == 0)
          {
            if (([a1 options] & 0x8000000) != 0)
            {
              v192 = type metadata accessor for CRLiOSMiniFormatterBuilder();
              v193 = objc_allocWithZone(v192);
              v194 = &v193[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
              *(v194 + 1) = 0;
              *(v194 + 2) = 0;
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakInit();
              v195 = &v193[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
              *v195 = 0;
              v195[1] = 0;
              *(v194 + 1) = &off_101884938;
              *(v194 + 2) = &off_101884000;
              swift_unknownObjectWeakAssign();
              *&v193[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
              *&v193[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = a3;
              *&v193[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
              v196 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
              *&v196[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
              v252.receiver = v196;
              v252.super_class = type metadata accessor for CRLMiniFormatterDataProvider();
              v197 = a3;
              v198 = a1;
              v199 = a4;
              *&v193[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v252, "init");
              v200 = [v198 crlaxLabel];
              if (v200)
              {
                v201 = v200;
                v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v204 = v203;
              }

              else
              {
                v202 = 0;
                v204 = 0;
              }

              *v195 = v202;
              v195[1] = v204;

              v251.receiver = v193;
              v251.super_class = v192;
              return objc_msgSendSuper2(&v251, "init");
            }

            else if (([a1 options] & 0x4000) != 0)
            {
              v206 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterArrangeBuilder());
              v207 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterArrangeDataProvider());
              *&v207[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
              v208 = type metadata accessor for CRLMiniFormatterDataProvider();
              v250.receiver = v207;
              v250.super_class = v208;
              v209 = a3;
              *&v206[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterArrangeBuilder_arrangeDataProvider] = objc_msgSendSuper2(&v250, "init");
              v210 = &v206[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
              *(v210 + 1) = 0;
              *(v210 + 2) = 0;
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakInit();
              v211 = &v206[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
              *v211 = 0;
              v211[1] = 0;
              *(v210 + 1) = &off_101884938;
              *(v210 + 2) = &off_101884000;
              swift_unknownObjectWeakAssign();
              *&v206[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
              *&v206[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v209;
              *&v206[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
              v212 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
              *&v212[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v209;
              v249.receiver = v212;
              v249.super_class = v208;
              v213 = v209;
              v214 = a1;
              v215 = a4;
              *&v206[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v249, "init");
              v216 = [v214 crlaxLabel];
              if (v216)
              {
                v217 = v216;
                v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v220 = v219;
              }

              else
              {
                v218 = 0;
                v220 = 0;
              }

              *v211 = v218;
              v211[1] = v220;

              v248.receiver = v206;
              v248.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
              return objc_msgSendSuper2(&v248, "init");
            }

            else if (([a1 options] & 0x2000000) != 0)
            {
              v221 = type metadata accessor for CRLiOSMiniFormatterBuilder();
              v222 = objc_allocWithZone(v221);
              v223 = &v222[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
              *(v223 + 1) = 0;
              *(v223 + 2) = 0;
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakInit();
              v224 = &v222[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
              *v224 = 0;
              v224[1] = 0;
              *(v223 + 1) = &off_101884938;
              *(v223 + 2) = &off_101884000;
              swift_unknownObjectWeakAssign();
              *&v222[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
              *&v222[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = a3;
              *&v222[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
              v225 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
              *&v225[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
              v247.receiver = v225;
              v247.super_class = type metadata accessor for CRLMiniFormatterDataProvider();
              v226 = a3;
              v227 = a1;
              v228 = a4;
              *&v222[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v247, "init");
              v229 = [v227 crlaxLabel];
              if (v229)
              {
                v230 = v229;
                v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v233 = v232;
              }

              else
              {
                v231 = 0;
                v233 = 0;
              }

              *v224 = v231;
              v224[1] = v233;

              v246.receiver = v222;
              v246.super_class = v221;
              return objc_msgSendSuper2(&v246, "init");
            }

            else
            {
              v8 = [a1 options];
              v9 = type metadata accessor for CRLiOSMiniFormatterBuilder();
              v10 = objc_allocWithZone(v9);
              v11 = &v10[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
              *(v11 + 1) = 0;
              *(v11 + 2) = 0;
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakInit();
              v12 = &v10[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
              *v12 = 0;
              v12[1] = 0;
              *(v11 + 1) = &off_101884938;
              *(v11 + 2) = &off_101884000;
              swift_unknownObjectWeakAssign();
              *&v10[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
              *&v10[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = a3;
              *&v10[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
              v13 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
              *&v13[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
              v14 = type metadata accessor for CRLMiniFormatterDataProvider();
              if ((v8 & 0x4000000) != 0)
              {
                v245.receiver = v13;
                v245.super_class = v14;
                v234 = a3;
                v235 = a1;
                v236 = a4;
                *&v10[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v245, "init");
                v237 = [v235 crlaxLabel];
                if (v237)
                {
                  v238 = v237;
                  v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v241 = v240;
                }

                else
                {
                  v239 = 0;
                  v241 = 0;
                }

                *v12 = v239;
                v12[1] = v241;

                v244.receiver = v10;
                v244.super_class = v9;
                return objc_msgSendSuper2(&v244, "init");
              }

              else
              {
                v243.receiver = v13;
                v243.super_class = v14;
                v15 = a3;
                v16 = a1;
                v17 = a4;
                *&v10[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v243, "init");
                v18 = [v16 crlaxLabel];
                if (v18)
                {
                  v19 = v18;
                  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v22 = v21;
                }

                else
                {
                  v20 = 0;
                  v22 = 0;
                }

                *v12 = v20;
                v12[1] = v22;

                v242.receiver = v10;
                v242.super_class = v9;
                return objc_msgSendSuper2(&v242, "init");
              }
            }
          }

          v176 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterUSDZBuilder());
          v177 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterUSDZDataProvider());
          *&v177[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
          v178 = type metadata accessor for CRLMiniFormatterDataProvider();
          v256.receiver = v177;
          v256.super_class = v178;
          v179 = a3;
          v180 = a1;
          v181 = a4;
          v145 = a2;
          *&v176[OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterUSDZBuilder_usdzDataProvider] = objc_msgSendSuper2(&v256, "init");
          v182 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterMediaDataProvider());
          *&v182[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v179;
          v255.receiver = v182;
          v255.super_class = v178;
          v183 = v179;
          *&v176[OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider] = objc_msgSendSuper2(&v255, "init");
          v184 = &v176[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
          *(v184 + 1) = 0;
          *(v184 + 2) = 0;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          v185 = &v176[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
          *v185 = 0;
          v185[1] = 0;
          *(v184 + 1) = &off_101884938;
          *(v184 + 2) = &off_101884000;
          swift_unknownObjectWeakAssign();
          *&v176[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = v180;
          *&v176[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v183;
          *&v176[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
          v186 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
          *&v186[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v183;
          v254.receiver = v186;
          v254.super_class = v178;
          v151 = v183;
          v152 = v180;
          v153 = v181;
          *&v176[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v254, "init");
          v187 = [v152 crlaxLabel];
          if (v187)
          {
            v188 = v187;
            v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v191 = v190;
          }

          else
          {
            v189 = 0;
            v191 = 0;
          }

          *v185 = v189;
          v185[1] = v191;

          v253.receiver = v176;
          v253.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
          v175 = objc_msgSendSuper2(&v253, "init");
        }

        v205 = v175;

        return v205;
      }

      v124 = objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterMediaBuilder());
      v125 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterMediaDataProvider());
      *&v125[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = a3;
      v126 = type metadata accessor for CRLMiniFormatterDataProvider();
      v267.receiver = v125;
      v267.super_class = v126;
      v127 = a3;
      *&v124[OBJC_IVAR____TtC8Freeform31CRLiOSMiniFormatterMediaBuilder_mediaDataProvider] = objc_msgSendSuper2(&v267, "init");
      v128 = &v124[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
      *(v128 + 1) = 0;
      *(v128 + 2) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v129 = &v124[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_crlaxAccessibilityFormatterLabel];
      *v129 = 0;
      v129[1] = 0;
      *(v128 + 1) = &off_101884938;
      *(v128 + 2) = &off_101884000;
      swift_unknownObjectWeakAssign();
      *&v124[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element] = a1;
      *&v124[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_editorController] = v127;
      *&v124[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_interactiveCanvasController] = a4;
      v130 = objc_allocWithZone(type metadata accessor for CRLMiniFormatterBoardItemDataProvider());
      *&v130[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController] = v127;
      v266.receiver = v130;
      v266.super_class = v126;
      v131 = v127;
      v132 = a1;
      v133 = a4;
      *&v124[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] = objc_msgSendSuper2(&v266, "init");
      v134 = [v132 crlaxLabel];
      if (v134)
      {
        v135 = v134;
        v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v138 = v137;
      }

      else
      {
        v136 = 0;
        v138 = 0;
      }

      *v129 = v136;
      v129[1] = v138;

      v265.receiver = v124;
      v265.super_class = type metadata accessor for CRLiOSMiniFormatterBuilder();
      return objc_msgSendSuper2(&v265, "init");
    }
  }
}

id sub_1005D8B5C()
{
  result = sub_1005D5340();
  if (!result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      v1 = objc_opt_self();
      v2 = [v1 _atomicIncrementAssertCount];
      v24 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v24);
      StaticString.description.getter();
      v3 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v4 = String._bridgeToObjectiveC()();

      v5 = [v4 lastPathComponent];

      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v2;
      v11 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v11;
      v12 = sub_1005CF04C();
      *(inited + 104) = v12;
      *(inited + 72) = v3;
      *(inited + 136) = &type metadata for String;
      v13 = sub_1000053B0();
      *(inited + 112) = v6;
      *(inited + 120) = v8;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v13;
      *(inited + 152) = 637;
      v14 = v24;
      *(inited + 216) = v11;
      *(inited + 224) = v12;
      *(inited + 192) = v14;
      v15 = v3;
      v16 = v14;
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v18, "No view controller for UILargeContentViewerInteraction. Returning a placeholder.", 80, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v19 = swift_allocObject();
      v19[2] = 8;
      v19[3] = 0;
      v19[4] = 0;
      v19[5] = 0;
      v20 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      [v1 handleFailureInFunction:v21 file:v22 lineNumber:637 isFatal:0 format:v23 args:v20];

      return [objc_allocWithZone(UIViewController) init];
    }
  }

  return result;
}

void sub_1005D8F20()
{
  v1 = v0;
  sub_100C64C48();
  if (v2 != 1)
  {
    if ((v3 & 1) == 0)
    {
      if (!v2)
      {
        return;
      }

      v4 = v2;
      v5 = [v2 referenceColor];
      v2 = v4;
      if (v5)
      {
        v6 = [v5 UIColor];

        v2 = v4;
        if (v6)
        {
          [v1 crl_ifVisuallyDifferentSetSelectedColor:v6 preservingColorSpaceIfPossible:1];

          v2 = v4;
        }
      }
    }

    sub_1000505D0(v2);
  }
}

unint64_t sub_1005D9028()
{
  result = qword_101A0DE50;
  if (!qword_101A0DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0DE50);
  }

  return result;
}

uint64_t sub_1005D9088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F4CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D90F8(uint64_t a1)
{
  v3 = *(sub_1005B981C(&unk_1019F4CF0) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);

  return sub_1005D36D8(a1, v7, v1 + v4, v8, v10, v11, v12, v13);
}

unint64_t sub_1005D91D8()
{
  result = qword_1019F4D10;
  if (!qword_1019F4D10)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4D10);
  }

  return result;
}

uint64_t sub_1005D9254(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1005D92A0()
{
  v1[3] = v0;
  sub_1005B981C(&unk_1019F33C0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005D93BC, v0, 0);
}

uint64_t sub_1005D93BC()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper__assetUUIDsNeedingDownload;
  *(v0 + 88) = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper__assetUUIDsNeedingDownload;
  v3 = *(v1 + v2);
  if (v3)
  {

LABEL_3:

    v4 = *(v0 + 8);

    return v4(v3);
  }

  v6 = *(v1 + 120);
  *(v0 + 96) = v6;
  sub_1005DC7C0(&qword_1019FB870, &type metadata accessor for UUID);
  *(v0 + 16) = Set.init(minimumCapacity:)();
  v7 = *(v6 + 32);
  *(v0 + 152) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 56);

  if (!v10)
  {
    v13 = 0;
    v12 = *(v0 + 96);
    while (((63 - v9) >> 6) - 1 != v13)
    {
      v11 = v13 + 1;
      v10 = *(v12 + 8 * v13++ + 64);
      if (v10)
      {
        goto LABEL_13;
      }
    }

    v35 = *(v0 + 88);
    v36 = *(v0 + 24);

    v3 = *(v0 + 16);
    *(v36 + v35) = v3;

    goto LABEL_3;
  }

  v11 = 0;
  v12 = *(v0 + 96);
LABEL_13:
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v18 = *(v0 + 24);
  v19 = *(v12 + 48) + *(v17 + 72) * (__clz(__rbit64(v10)) | (v11 << 6));
  v20 = *(v17 + 16);
  *(v0 + 120) = v20;
  *(v0 + 128) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v15, v19, v16);
  (*(v17 + 32))(v14, v15, v16);
  v21 = *(v18 + 112);
  v22 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
  os_unfair_lock_lock(*(*&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock] + 16));
  v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v24 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v24)
  {
    v25 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v26 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v27 = v21;
    v28 = sub_10001F1A0(v27);

    v29 = *&v21[v23];
    *&v21[v23] = v28;
    v25 = v28;

    v24 = 0;
  }

  *(v0 + 136) = v25;
  v30 = *(*&v21[v22] + 16);
  v31 = v24;
  os_unfair_lock_unlock(v30);
  v32 = swift_task_alloc();
  *(v0 + 144) = v32;
  *v32 = v0;
  v32[1] = sub_1005D96E4;
  v33 = *(v0 + 72);
  v34 = *(v0 + 32);

  return sub_10108D4EC(v34, v33, 0, 0, 3);
}

uint64_t sub_1005D96E4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 24);

  return _swift_task_switch(sub_1005D980C, v2, 0);
}

uint64_t sub_1005D980C()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for URL();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 120);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    sub_10000CAAC(v1, &unk_1019F33C0);
    v3(v6, v4, v8);
    sub_100E6AF38(v5, v6);
    v9 = *(v7 + 8);
    v9(v5, v8);
    result = (v9)(v4, v8);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 72), *(v0 + 40));
    result = sub_10000CAAC(v1, &unk_1019F33C0);
  }

  v11 = *(v0 + 112);
  v12 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v12)
  {
    result = *(v0 + 96);
LABEL_10:
    *(v0 + 104) = v12;
    *(v0 + 112) = v11;
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = *(v0 + 24);
    v19 = *(result + 48) + *(v17 + 72) * (__clz(__rbit64(v12)) | (v11 << 6));
    v20 = *(v17 + 16);
    *(v0 + 120) = v20;
    *(v0 + 128) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v15, v19, v16);
    (*(v17 + 32))(v14, v15, v16);
    v21 = *(v18 + 112);
    v22 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    os_unfair_lock_lock(*(*&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock] + 16));
    v23 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v24 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v24)
    {
      v25 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v26 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v27 = v21;
      v28 = sub_10001F1A0(v27);

      v29 = *&v21[v23];
      *&v21[v23] = v28;
      v25 = v28;

      v24 = 0;
    }

    *(v0 + 136) = v25;
    v30 = *(*&v21[v22] + 16);
    v31 = v24;
    os_unfair_lock_unlock(v30);
    v32 = swift_task_alloc();
    *(v0 + 144) = v32;
    *v32 = v0;
    v32[1] = sub_1005D96E4;
    v33 = *(v0 + 72);
    v34 = *(v0 + 32);

    return sub_10108D4EC(v34, v33, 0, 0, 3);
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 96);
      if (v13 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v12 = *(result + 8 * v13 + 56);
      ++v11;
      if (v12)
      {
        v11 = v13;
        goto LABEL_10;
      }
    }

    v35 = *(v0 + 88);
    v36 = *(v0 + 24);

    v37 = *(v0 + 16);
    *(v36 + v35) = v37;

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_1005D9BB4()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_isDownloading;
  v0[6] = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_isDownloading;
  if (*(v1 + v2))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1005D9C90;

    return sub_1005D92A0();
  }
}

uint64_t sub_1005D9C90(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1005D9DA8, v2, 0);
}

uint64_t sub_1005D9DA8()
{
  v1 = v0[8];
  if (*(v1 + 16))
  {
    v2 = v0[5];
    *(v2 + v0[6]) = 1;
    *(v2 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_downloadWasCancelled) = 0;
    v3 = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_assetUUIDsBeingDownloaded;
    swift_beginAccess();
    *(v2 + v3) = v1;

    v4 = swift_task_alloc();
    v0[9] = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = sub_1005DC7C0(&qword_1019F4FA8, type metadata accessor for CRLAssetDownloadHelper);
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1005D9F68;
    v7 = v0[5];

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_10146D008, v4, sub_1005DC380, v7, v2, v5, &type metadata for () + 8);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1005D9F68()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1005DA0B0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1005DA098;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005DA0B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005DA11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1005DA140, a3, 0);
}

uint64_t sub_1005DA140()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1005DC7C0(&qword_1019F4FA8, type metadata accessor for CRLAssetDownloadHelper);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1005DA274;
  v6 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0x64616F6C6E776F64, 0xEA00000000002928, sub_1005DC43C, v4, &type metadata for () + 8);
}

uint64_t sub_1005DA274()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_1005DA3B0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1005DA3B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005DA414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = sub_1005DC7C0(&qword_1019F4FA8, type metadata accessor for CRLAssetDownloadHelper);
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = v14;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  (*(v7 + 32))(&v16[v15], v9, v6);
  swift_retain_n();

  sub_10064191C(0, 0, v12, &unk_10146D028, v16);
}

uint64_t sub_1005DA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_1005B981C(&qword_1019FB750);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v6[17] = swift_task_alloc();
  v8 = sub_1005B981C(&unk_101A050F0);
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v6[20] = *(v9 + 64);
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v6[24] = *(v11 + 64);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1005DA824, a5, 0);
}

uint64_t sub_1005DA824()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v3 + 32);
  *(v0 + 308) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v3 + 56);
  *(v0 + 224) = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_downloadObserverIdentifier;

  if (v8)
  {
    v30 = v2;
    v10 = v4;
    v11 = 0;
LABEL_9:
    *(v0 + 232) = v8;
    *(v0 + 240) = v11;
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v29 = *(v0 + 192);
    v27 = *(v0 + 112);
    v28 = *(v0 + 144);
    v17 = *(v9 + 48) + *(v1 + 72) * (__clz(__rbit64(v8)) | (v11 << 6));
    v18 = *(v1 + 16);
    *(v0 + 248) = v18;
    *(v0 + 256) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v13, v17, v15);
    v19 = sub_100DCB394();
    *(v0 + 264) = v19;
    v18(v14, v13, v15);
    (*(v30 + 16))(v16, v27, v28);
    v20 = *(v1 + 80);
    *(v0 + 304) = v20;
    v21 = (v20 + 24) & ~v20;
    v22 = (v29 + *(v30 + 80) + v21) & ~*(v30 + 80);
    v23 = swift_allocObject();
    *(v0 + 272) = v23;
    *(v23 + 16) = v10;
    v24 = *(v1 + 32);
    *(v0 + 280) = v24;
    *(v0 + 288) = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v23 + v21, v14, v15);
    (*(v30 + 32))(v23 + v22, v16, v28);

    return _swift_task_switch(sub_1005DAB18, v19, 0);
  }

  else
  {
    v12 = 0;
    while (((63 - v7) >> 6) - 1 != v12)
    {
      v11 = v12 + 1;
      v8 = *(v9 + 8 * v12++ + 64);
      if (v8)
      {
        v30 = v2;
        v10 = v4;
        goto LABEL_9;
      }
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1005DAB18()
{
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1005DABC4;
  v2 = v0[27];
  v3 = v0[17];

  return sub_10108D4EC(v3, v2, 0, 0, 3);
}

uint64_t sub_1005DABC4()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_1005DACD4, v1, 0);
}

uint64_t sub_1005DACD4()
{
  v1 = v0[17];
  v2 = type metadata accessor for URL();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000CAAC(v1, &unk_1019F33C0);
  if (v3 == 1)
  {
    v4 = v0[34];
    v5 = v0[28];
    v6 = v0[13];
    sub_1007317C0(v0[27]);
    sub_1007319C4(v6 + v5, 10, sub_1005DC554, v4);
  }

  else
  {
    v7 = v0[34];
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1005DC554;
    *(v8 + 24) = v7;
    v0[6] = sub_1005DC638;
    v0[7] = v8;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = *"";
    v0[4] = sub_100007638;
    v0[5] = &unk_10187C2D0;
    v9 = _Block_copy(v0 + 2);

    v10 = v9;
    if (+[NSThread isMainThread])
    {
      v10[2](v10);
    }

    else
    {
      v11 = &_dispatch_main_q;
      dispatch_async(&_dispatch_main_q, v10);
    }

    _Block_release(v10);
  }

  v12 = v0[13];

  return _swift_task_switch(sub_1005DAEF0, v12, 0);
}

uint64_t sub_1005DAEF0()
{
  v48 = *(v0 + 280);
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v46 = *(v0 + 264);
  v5 = *(v0 + 176);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6, 1, 1, v8);
  v2(v4, v3, v5);
  v10 = (v1 + 40) & ~v1;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v46;
  v48(&v11[v10], v4, v5);
  sub_100041E54(v6, v7);
  LODWORD(v4) = (*(v9 + 48))(v7, 1, v8);

  v12 = *(v0 + 120);
  if (v4 == 1)
  {
    sub_10000CAAC(*(v0 + 120), &qword_1019FB750);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v9 + 8))(v12, v8);
  }

  v13 = *(v11 + 2);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_10000CAAC(*(v0 + 128), &qword_1019FB750);
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_101490B60;
  *(v17 + 24) = v11;
  if (v16 | v14)
  {
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = v14;
    *(v0 + 88) = v16;
  }

  v18 = *(v0 + 216);
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  swift_task_create();

  v21 = (*(v20 + 8))(v18, v19);
  v24 = *(v0 + 240);
  v25 = (*(v0 + 232) - 1) & *(v0 + 232);
  if (v25)
  {
    v26 = *(v0 + 96);
LABEL_15:
    *(v0 + 232) = v25;
    *(v0 + 240) = v24;
    v28 = *(v0 + 208);
    v29 = *(v0 + 216);
    v30 = *(v0 + 184);
    v47 = *(v0 + 192);
    v31 = *(v0 + 176);
    v49 = *(v0 + 168);
    v32 = *(v0 + 152);
    v44 = *(v0 + 144);
    v43 = *(v0 + 112);
    v45 = *(v0 + 104);
    v33 = *(v26 + 48) + *(v30 + 72) * (__clz(__rbit64(v25)) | (v24 << 6));
    v34 = *(v30 + 16);
    *(v0 + 248) = v34;
    *(v0 + 256) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v29, v33, v31);
    v35 = sub_100DCB394();
    *(v0 + 264) = v35;
    v34(v28, v29, v31);
    (*(v32 + 16))(v49, v43, v44);
    v36 = *(v30 + 80);
    *(v0 + 304) = v36;
    v37 = (v36 + 24) & ~v36;
    v38 = (v47 + *(v32 + 80) + v37) & ~*(v32 + 80);
    v39 = swift_allocObject();
    *(v0 + 272) = v39;
    *(v39 + 16) = v45;
    v40 = *(v30 + 32);
    *(v0 + 280) = v40;
    *(v0 + 288) = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40(v39 + v37, v28, v31);
    (*(v32 + 32))(v39 + v38, v49, v44);

    v21 = sub_1005DAB18;
    v22 = v35;
    v23 = 0;

    return _swift_task_switch(v21, v22, v23);
  }

  else
  {
    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        return _swift_task_switch(v21, v22, v23);
      }

      if (v27 >= (((1 << *(v0 + 308)) + 63) >> 6))
      {
        break;
      }

      v26 = *(v0 + 96);
      v25 = *(v26 + 8 * v27 + 56);
      ++v24;
      if (v25)
      {
        v24 = v27;
        goto LABEL_15;
      }
    }

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1005DB410(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_10064191C(0, 0, v4, &unk_10146D018, v6);
}

uint64_t sub_1005DB53C()
{
  sub_1005DB59C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005DB59C()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  v2 = __chkstk_darwin(v1 - 8);
  v50 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v58 = &v41 - v4;
  v57 = type metadata accessor for UUID();
  v5 = *(v57 - 8);
  v6 = __chkstk_darwin(v57);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v56 = &v41 - v9;
  v48 = v10;
  __chkstk_darwin(v8);
  v46 = &v41 - v11;
  v52 = sub_100DCB394();
  v12 = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_assetUUIDsBeingDownloaded;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = (v15 + 63) >> 6;
  v43 = v5 + 16;
  v55 = v5 + 32;
  v49 = v5;
  v42 = (v5 + 8);
  v51 = v13;

  v20 = 0;
  v45 = v14;
  v44 = v18;
  v21 = v47;
  while (v17)
  {
LABEL_10:
    v23 = v49;
    v24 = *(v49 + 16);
    v25 = v46;
    v26 = v57;
    v24(v46, *(v51 + 48) + *(v49 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v57);
    v54 = *(v23 + 32);
    v27 = v56;
    v54(v56, v25, v26);
    v28 = type metadata accessor for TaskPriority();
    v53 = *(v28 - 8);
    v29 = v58;
    (*(v53 + 56))(v58, 1, 1, v28);
    v24(v21, v27, v26);
    v30 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v52;
    v32 = v26;
    v33 = v28;
    v34 = v53;
    v54(&v31[v30], v21, v32);
    v35 = v50;
    sub_100041E54(v29, v50);
    LODWORD(v27) = (*(v34 + 48))(v35, 1, v33);

    if (v27 == 1)
    {
      sub_10000CAAC(v35, &qword_1019FB750);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v34 + 8))(v35, v33);
    }

    v36 = *(v31 + 2);
    swift_unknownObjectRetain();

    if (v36)
    {
      swift_getObjectType();
      v37 = dispatch thunk of Actor.unownedExecutor.getter();
      v39 = v38;
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v18 = v44;
    sub_10000CAAC(v58, &qword_1019FB750);
    v40 = swift_allocObject();
    *(v40 + 16) = &unk_10146CFF0;
    *(v40 + 24) = v31;
    if (v39 | v37)
    {
      v59 = 0;
      v60 = 0;
      v61 = v37;
      v62 = v39;
    }

    v14 = v45;
    v17 &= v17 - 1;
    swift_task_create();

    result = (*v42)(v56, v57);
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005DBAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v5 = sub_1005B981C(&unk_101A050F0);
  v23 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v24 = &v22 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v25, v9);
  (*(v6 + 16))(v8, a4, v5);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v6 + 80) + v18 + 8) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v26;
  (*(v10 + 32))(&v20[v17], v12, v9);
  *&v20[v18] = v27;
  (*(v6 + 32))(&v20[v19], v24, v23);

  sub_10064191C(0, 0, v15, &unk_10146D040, v20);
}

uint64_t sub_1005DBDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1005DBDCC, a4, 0);
}

uint64_t sub_1005DBDCC()
{
  sub_1005DBE38(v0[3], v0[4] == 3);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1005DBE38(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  v9 = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_assetUUIDsBeingDownloaded;
  swift_beginAccess();
  sub_100ED6D70(a1, v8);
  sub_10000CAAC(v8, &qword_1019F6990);
  result = swift_endAccess();
  if (a2)
  {
    *(v2 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_downloadWasCancelled) = 1;
  }

  if (!*(*(v2 + v9) + 16))
  {
    if (*(v2 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_downloadWasCancelled) == 1)
    {
      type metadata accessor for CancellationError();
      sub_1005DC7C0(&qword_1019F4FA0, &type metadata accessor for CancellationError);
      v11 = swift_allocError();
      CancellationError.init()();
      v12[1] = v11;
      sub_1005B981C(&unk_101A050F0);
      result = CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1005B981C(&unk_101A050F0);
      result = CheckedContinuation.resume(returning:)();
    }

    *(v3 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_isDownloading) = 0;
  }

  return result;
}

uint64_t sub_1005DC010()
{

  v1 = OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_downloadObserverIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for CRLAssetDownloadHelper()
{
  result = qword_1019F4E50;
  if (!qword_1019F4E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005DC10C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1005DC1DC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10072FF54(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1005DC2D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D3D4;

  return sub_1005DA11C(a1, v5, v4);
}

uint64_t sub_1005DC388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1005DB51C(a1, v4, v5, v6);
}

uint64_t sub_1005DC444(uint64_t a1)
{
  v4 = *(sub_1005B981C(&unk_101A050F0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1005DA650(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1005DC554(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_1005B981C(&unk_101A050F0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1005DBAC8(a1, v7, v1 + v4, v8);
}

uint64_t sub_1005DC640(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1005B981C(&unk_101A050F0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002D3D4;

  return sub_1005DBDA8(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1005DC7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005DC808(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = a1;
  v75 = a3;
  v76 = a4;
  v77 = a5;
  v78 = a6;
  v70 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    LOBYTE(v17) = a2;
    v29 = *(a1 + 32);
    v30 = v29 & 0x3F;
    v16 = ((1 << v29) + 63) >> 6;
    v14 = 8 * v16;

    if (v30 <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

  v11 = _swiftEmptySetSingleton;
  v73 = _swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v12 = __CocoaSet.Iterator.next()();
  if (!v12)
  {
LABEL_21:

LABEL_40:
    LOBYTE(v17) = v70;
    goto LABEL_41;
  }

  v13 = v12;
  v14 = sub_100006370(0, &qword_1019FB7A0);
  v15 = v13;
  v6 = &selRef_geometryWithMask;
  v16 = -1;
  while (1)
  {
    v71 = v15;
    swift_dynamicCast();
    if (([v72 hasBeenRemoved] & 1) == 0)
    {
      [v72 frameInUnscaledCanvas];
      v81.origin.x = a3;
      v81.origin.y = a4;
      v81.size.width = a5;
      v81.size.height = a6;
      if (CGRectIntersectsRect(v79, v81))
      {
        break;
      }
    }

LABEL_5:
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  v17 = v72;
  v18 = v11[2];
  if (v11[3] <= v18)
  {
    sub_100E75374(v18 + 1);
  }

  v11 = v73;
  v19 = NSObject._rawHashValue(seed:)(v73[5]);
  v20 = v73 + 7;
  v21 = -1 << *(v73 + 32);
  v22 = v19 & ~v21;
  v23 = v22 >> 6;
  if (((-1 << v22) & ~v73[(v22 >> 6) + 7]) != 0)
  {
    v24 = __clz(__rbit64((-1 << v22) & ~v73[(v22 >> 6) + 7])) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(v11[6] + 8 * v24) = v17;
    ++v11[2];
    goto LABEL_5;
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = v20[v23];
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_51:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_23:
    v67 = &v67;
    v68 = v16;
    __chkstk_darwin(isStackAllocationSafe);
    v32 = &v67 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v14);
    v69 = 0;
    v16 = 0;
    v33 = 1 << *(v6 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & v6[7];
    v36 = (v33 + 63) >> 6;
    while (v35)
    {
      v37 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
LABEL_34:
      v14 = v37 | (v16 << 6);
      v17 = *&v6[6][8 * v14];
      if ([v17 hasBeenRemoved])
      {
      }

      else
      {
        [v17 frameInUnscaledCanvas];
        v82.origin.x = a3;
        v82.origin.y = a4;
        v82.size.width = a5;
        v82.size.height = a6;
        v40 = CGRectIntersectsRect(v80, v82);

        if (v40)
        {
          *&v32[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          if (__OFADD__(v69++, 1))
          {
            __break(1u);
LABEL_39:
            v11 = sub_1010F4274(v32, v68, v69, v6);
            goto LABEL_40;
          }
        }
      }
    }

    v38 = v16;
    while (1)
    {
      v16 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v16 >= v36)
      {
        goto LABEL_39;
      }

      v39 = v6[v16 + 7];
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v35 = (v39 - 1) & v39;
        goto LABEL_34;
      }
    }
  }

  v66 = swift_slowAlloc();
  v11 = sub_1005DFC38(v66, v16, v6, sub_1005DEF44, v74);

LABEL_41:
  v42 = sub_1005DCF7C(v11);

  v43 = sub_1005DD03C(v42);

  sub_1005E066C(v43, v17, a3, a4, a5, a6);
  v45 = v44;
  v47 = v46;

  if (!v47)
  {
    v48 = objc_opt_self();
    v49 = [v48 mainBundle];
    v50 = String._bridgeToObjectiveC()();
    v51 = String._bridgeToObjectiveC()();
    v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = [v48 mainBundle];
    v54 = String._bridgeToObjectiveC()();
    v55 = String._bridgeToObjectiveC()();
    v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = sub_100120414(a3, a4, a5, a6);
    v59 = sub_100122154(v57, v58);
    v61 = v60;
    sub_1005B981C(&qword_1019F54E0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10146BDE0;
    v63 = round(v59);
    if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v63 > -9.22337204e18)
    {
      if (v63 < 9.22337204e18)
      {
        *(v62 + 56) = &type metadata for Int;
        *(v62 + 64) = &protocol witness table for Int;
        *(v62 + 32) = v63;
        v64 = round(v61);
        if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v64 > -9.22337204e18)
          {
            if (v64 < 9.22337204e18)
            {
              *(v62 + 96) = &type metadata for Int;
              *(v62 + 104) = &protocol witness table for Int;
              *(v62 + 72) = v64;
              v45 = static String.localizedStringWithFormat(_:_:)();

              return v45;
            }

LABEL_58:
            __break(1u);
          }

LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_55;
  }

  return v45;
}

uint64_t sub_1005DCF7C(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v4 = sub_1005DDC74(v2);
    if (!v1)
    {
      v5 = v4;
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter())
        {
          return v5;
        }
      }

      else if (*(v4 + 16))
      {
        return v5;
      }
    }
  }

  return v2;
}

uint64_t sub_1005DD03C(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v4 = sub_1005DD988(v2);
    if (!v1)
    {
      v5 = v4;
      if ((v4 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter())
        {
          return v5;
        }
      }

      else if (*(v4 + 16))
      {
        return v5;
      }
    }
  }

  return v2;
}

uint64_t sub_1005DD0F4()
{
  [v0 frameInUnscaledCanvas];
  v5 = sub_100120414(v1, v2, v3, v4);
  v7 = sub_100122154(v5, v6);
  v9 = v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  result = swift_allocObject();
  *(result + 16) = xmmword_10146BDE0;
  v15 = round(v7);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 56) = &type metadata for Int;
  *(result + 64) = &protocol witness table for Int;
  *(result + 32) = v15;
  v16 = round(v9);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 < 9.22337204e18)
  {
    *(result + 96) = &type metadata for Int;
    *(result + 104) = &protocol witness table for Int;
    *(result + 72) = v16;
    v17 = static String.localizedStringWithFormat(_:_:)();

    return v17;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1005DD2F8(void *a1, uint64_t a2)
{
  v4 = [a1 canvas];
  if (!v4)
  {
    v36 = a2;
    v35 = objc_opt_self();
    v8 = [v35 _atomicIncrementAssertCount];
    *&v41[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v41);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 158;
    v20 = *&v41[0];
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v35 handleFailureInFunction:v27 file:v28 lineNumber:158 isFatal:0 format:v29 args:v26];

    a2 = v36;
    goto LABEL_19;
  }

  v5 = v4;
  if (![v4 isCanvasInteractive] || !objc_msgSend(a1, "respondsToSelector:", Selector.init(_:)()))
  {
    goto LABEL_18;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (!*(&v40 + 1))
  {

    sub_1005E09AC(v41);
LABEL_19:

    return a2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v30 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v30 = *v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {

    goto LABEL_18;
  }

  sub_100017CD8();
  v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v33 = v32;

  *&v41[0] = v31;
  *(&v41[0] + 1) = v33;
  a2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return a2;
}

BOOL sub_1005DD900(id *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *a1;
  if ([*a1 hasBeenRemoved])
  {
    return 0;
  }

  [v9 frameInUnscaledCanvas];
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  return CGRectIntersectsRect(v11, v12);
}

Swift::Int sub_1005DD988(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1005DE1B4(a1);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_100006370(0, &qword_1019FB7A0);
    v1 = &type metadata for Swift.AnyObject;
    v2 = &unk_101A10780;
    v3 = &selRef_editAccessibilityDescription_;
    while (1)
    {
      swift_dynamicCast();
      sub_100006370(0, v2);
      if (![v25 v3[251]])
      {
        break;
      }

      v10 = [v25 info];
      type metadata accessor for CRLBoardItem(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = (*((swift_isaMask & *v11) + 0x1B0))();
        v13 = v3;
        v14 = v2;
        v15 = v1;
        v17 = v16;
        swift_unknownObjectRelease();

        v18 = HIBYTE(v17) & 0xF;
        v19 = (v17 & 0x2000000000000000) == 0;
        v1 = v15;
        v2 = v14;
        v3 = v13;
        if (v19)
        {
          v18 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          break;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_7:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_25;
      }
    }

    v20 = _swiftEmptySetSingleton[2];
    if (_swiftEmptySetSingleton[3] <= v20)
    {
      sub_100E75374(v20 + 1);
    }

    result = NSObject._rawHashValue(seed:)(_swiftEmptySetSingleton[5]);
    v5 = &_swiftEmptySetSingleton[7];
    v6 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
    v7 = result & ~v6;
    v8 = v7 >> 6;
    if (((-1 << v7) & ~_swiftEmptySetSingleton[(v7 >> 6) + 7]) != 0)
    {
      v9 = __clz(__rbit64((-1 << v7) & ~_swiftEmptySetSingleton[(v7 >> 6) + 7])) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = 0;
      v22 = (63 - v6) >> 6;
      do
      {
        if (++v8 == v22 && (v21 & 1) != 0)
        {
          __break(1u);
          return result;
        }

        v23 = v8 == v22;
        if (v8 == v22)
        {
          v8 = 0;
        }

        v21 |= v23;
        v24 = v5[v8];
      }

      while (v24 == -1);
      v9 = __clz(__rbit64(~v24)) + (v8 << 6);
    }

    *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(_swiftEmptySetSingleton[6] + 8 * v9) = v25;
    ++_swiftEmptySetSingleton[2];
    goto LABEL_7;
  }

LABEL_25:

  return _swiftEmptySetSingleton;
}

Swift::Int sub_1005DDC74(uint64_t a1)
{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v1 = _swiftEmptySetSingleton;
    v36 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v9 = v8;
      sub_100006370(0, &qword_1019FB7A0);
      v10 = v9;
      v11 = (v4 + 8);
      do
      {
        v33 = v10;
        swift_dynamicCast();
        v12 = sub_1005DFCDC(v35);
        if (!v13)
        {
          goto LABEL_4;
        }

        v33 = v12;
        v34 = v13;
        static CharacterSet.whitespaces.getter();
        sub_100017CD8();
        v14 = StringProtocol.trimmingCharacters(in:)();
        v16 = v15;
        (*v11)(v7, v3);

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18 = v35;
          v19 = v1[2];
          if (v1[3] <= v19)
          {
            sub_100E75374(v19 + 1);
          }

          v1 = v36;
          result = NSObject._rawHashValue(seed:)(v36[5]);
          v21 = v1 + 7;
          v22 = -1 << *(v1 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          if (((-1 << v23) & ~v1[(v23 >> 6) + 7]) != 0)
          {
            v25 = __clz(__rbit64((-1 << v23) & ~v1[(v23 >> 6) + 7])) | v23 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = 0;
            v27 = (63 - v22) >> 6;
            do
            {
              if (++v24 == v27 && (v26 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v28 = v24 == v27;
              if (v24 == v27)
              {
                v24 = 0;
              }

              v26 |= v28;
              v29 = v21[v24];
            }

            while (v29 == -1);
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          }

          *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          *(v1[6] + 8 * v25) = v18;
          ++v1[2];
        }

        else
        {
LABEL_4:
        }

        v10 = __CocoaSet.Iterator.next()();
      }

      while (v10);
    }
  }

  else
  {
    v30 = v32;
    v31 = sub_1005DE520(v5);
    if (!v30)
    {
      return v31;
    }
  }

  return v1;
}

Swift::Int sub_1005DDF74(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = _swiftEmptySetSingleton;
    v22 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100006370(0, &qword_1019FB7A0);
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v21);
        if (v3)
        {
          break;
        }

        v7 = v21;
        if (v6)
        {
          v8 = v4[2];
          if (v4[3] <= v8)
          {
            sub_100E75374(v8 + 1);
          }

          v4 = v22;
          result = NSObject._rawHashValue(seed:)(v22[5]);
          v10 = v4 + 7;
          v11 = -1 << *(v4 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~v4[(v12 >> 6) + 7]) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~v4[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = v10[v13];
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(v4[6] + 8 * v14) = v7;
          ++v4[2];
        }

        else
        {
        }

        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_21;
        }
      }

      v20 = v21;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v19 = sub_1005DEC94(a1, a2, a3);
    if (!v3)
    {
      return v19;
    }
  }

  return v4;
}

uint64_t sub_1005DE1B4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_26;
  }

  while (2)
  {
    v34 = v4;
    v35 = v1;
    v33 = &v33;
    __chkstk_darwin(a1);
    v36 = &v33 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v5);
    v37 = 0;
    v6 = 0;
    v4 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = &unk_101A10780;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v39 = (v9 - 1) & v9;
LABEL_13:
      v15 = v12 | (v6 << 6);
      v16 = *(v2 + 48);
      v38 = v15;
      v17 = *(v16 + 8 * v15);
      sub_100006370(0, v11);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = v17;
      if ([v19 isKindOfClass:ObjCClassFromMetadata])
      {
        v20 = [v19 info];
        type metadata accessor for CRLBoardItem(0);
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v22 = (*((swift_isaMask & *v21) + 0x1B0))();
          v23 = v11;
          v24 = v2;
          v26 = v25;

          swift_unknownObjectRelease();

          v27 = HIBYTE(v26) & 0xF;
          v28 = (v26 & 0x2000000000000000) == 0;
          v2 = v24;
          v11 = v23;
          if (v28)
          {
            v27 = v22 & 0xFFFFFFFFFFFFLL;
          }

          v9 = v39;
          if (v27)
          {
            goto LABEL_20;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          v9 = v39;
        }
      }

      else
      {

        v9 = v39;
LABEL_20:
        *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
          return sub_1010F4274(v36, v34, v37, v2);
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return sub_1010F4274(v36, v34, v37, v2);
      }

      v14 = *(v4 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();
  v32 = sub_1005DFB38(v31, v4, v2);

  return v32;
}

uint64_t sub_1005DE520(uint64_t a1)
{
  v2 = v1;
  v70 = type metadata accessor for CharacterSet();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v55 - v7;
  v66 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v66);
  v65 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  v10 = __chkstk_darwin(v9 - 8);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
LABEL_31:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v52 = swift_slowAlloc();
      v53 = v2;
      v54 = sub_1005DFBB0(v52, v12, a1);

      if (!v53)
      {
        return v54;
      }

      return result;
    }
  }

  v56 = v12;
  v57 = v2;
  v55 = &v55;
  __chkstk_darwin(v10);
  v58 = &v55 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v58, v13);
  v14 = 0;
  v12 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v2 = v16 & *(a1 + 56);
  v17 = (v15 + 63) >> 6;
  v61 = (v6 + 8);
  v62 = (v6 + 16);
  v59 = 0;
  v60 = (v4 + 8);
  v63 = a1;
  while (1)
  {
    if (v2)
    {
      v32 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      goto LABEL_17;
    }

    v33 = v14;
    do
    {
      v14 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v14 >= v17)
      {
        return sub_1010F4274(v58, v56, v59, a1);
      }

      v34 = *(v12 + 8 * v14);
      ++v33;
    }

    while (!v34);
    v32 = __clz(__rbit64(v34));
    v2 = (v34 - 1) & v34;
LABEL_17:
    v35 = v32 | (v14 << 6);
    v36 = *(a1 + 48);
    v71 = v35;
    v6 = *(v36 + 8 * v35);
    v4 = [v6 info];
    type metadata accessor for CRLWPShapeItem();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    v38 = *(v37 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    v39 = v38;
    swift_unknownObjectRelease();
    if (v38)
    {
      v18 = *&v39[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
      if (v18)
      {
        v19 = v65;
        (*(*v18 + 896))();
        v20 = v64;
        sub_1005E0A78(v19 + *(v66 + 20), v64);
        sub_1005E0ADC(v19, type metadata accessor for CRLWPShapeItemCRDTData);
        v22 = v67;
        v21 = v68;
        (*v62)(v67, v20, v68);
        sub_1005E0ADC(v20, type metadata accessor for CRLWPStorageCRDTData);
        v23 = CRAttributedString.attributedString.getter();
        (*v61)(v22, v21);
        v24 = [v23 string];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        goto LABEL_7;
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

LABEL_21:
    v40 = [v6 info];
    type metadata accessor for CRLWPStorage();
    v41 = swift_dynamicCastClass();
    if (!v41)
    {

      swift_unknownObjectRelease();
      continue;
    }

    v42 = *(v41 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v42)
    {
      goto LABEL_36;
    }

    v43 = v65;
    (*(*v42 + 896))();
    v44 = v64;
    sub_1005E0A78(v43 + *(v66 + 20), v64);
    sub_1005E0ADC(v43, type metadata accessor for CRLWPShapeItemCRDTData);
    v46 = v67;
    v45 = v68;
    (*v62)(v67, v44, v68);
    sub_1005E0ADC(v44, type metadata accessor for CRLWPStorageCRDTData);
    v47 = CRAttributedString.attributedString.getter();
    (*v61)(v46, v45);
    v48 = [v47 string];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v49;

    swift_unknownObjectRelease();
LABEL_7:
    v72 = v25;
    v73 = v27;
    v28 = v69;
    static CharacterSet.whitespaces.getter();
    sub_100017CD8();
    v4 = StringProtocol.trimmingCharacters(in:)();
    v30 = v29;
    (*v60)(v28, v70);

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v4 & 0xFFFFFFFFFFFFLL;
    }

    a1 = v63;
    if (v31)
    {
      *&v58[(v71 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v71;
      if (__OFADD__(v59++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
  return sub_1010F4274(v58, v56, v59, a1);
}

uint64_t sub_1005DEC94(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v30 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v26 = v7;
    v31 = v3;
    v28 = &v26;
    __chkstk_darwin(a1);
    v27 = &v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v8);
    v29 = 0;
    v9 = 0;
    v7 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = v4;
      v32 = *(*(v4 + 48) + 8 * v17);
      v19 = v32;
      v3 = v31;
      v20 = v30(&v32);
      v31 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v21 = v20;

      v4 = v18;
      if (v21)
      {
        *&v27[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_1010F4274(v27, v26, v29, v4);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_1010F4274(v27, v26, v29, v4);
      }

      v16 = *(v7 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_1005DFC38(v24, v7, v4, v30, a2);

  if (!v3)
  {
    return v25;
  }

  return result;
}

void sub_1005DEF68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = &unk_101A10780;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v31 = (v8 - 1) & v8;
LABEL_12:
    v30 = v11 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v30);
    sub_100006370(0, v10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = v14;
    if ([v16 isKindOfClass:ObjCClassFromMetadata])
    {
      v17 = [v16 info];
      type metadata accessor for CRLBoardItem(0);
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = (*((swift_isaMask & *v18) + 0x1B0))();
        v20 = v10;
        v21 = v3;
        v23 = v22;

        swift_unknownObjectRelease();

        v24 = HIBYTE(v23) & 0xF;
        v25 = (v23 & 0x2000000000000000) == 0;
        v3 = v21;
        v10 = v20;
        if (v25)
        {
          v24 = v19 & 0xFFFFFFFFFFFFLL;
        }

        v8 = v31;
        if (v24)
        {
          goto LABEL_19;
        }
      }

      else
      {

        swift_unknownObjectRelease();
        v8 = v31;
      }
    }

    else
    {

      v8 = v31;
LABEL_19:
      *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_22:

        sub_1010F4274(a1, a2, v29, v3);
        return;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_22;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v31 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1005DF1C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a1;
  v70 = type metadata accessor for CharacterSet();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v57 - v7;
  v66 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v66);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  result = __chkstk_darwin(v9 - 8);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v74 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v62 = (v6 + 8);
  v63 = (v6 + 16);
  v60 = 0;
  v61 = (v4 + 8);
  v20 = &selRef_ignoreUrl_;
  while (1)
  {
    while (1)
    {
      if (!v18)
      {
        v37 = v12;
        while (1)
        {
          v12 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v12 >= v19)
          {
            goto LABEL_27;
          }

          v38 = *(v14 + 8 * v12);
          ++v37;
          if (v38)
          {
            v36 = __clz(__rbit64(v38));
            v18 = (v38 - 1) & v38;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      v36 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_16:
      v39 = v36 | (v12 << 6);
      v40 = *(v74 + 48);
      v71 = v39;
      v41 = *(v40 + 8 * v39);
      v42 = [v41 v20[130]];
      type metadata accessor for CRLWPShapeItem();
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = *(v43 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
        v45 = v44;
        result = swift_unknownObjectRelease();
        if (v44)
        {
          v21 = *&v45[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
          if (!v21)
          {
            goto LABEL_29;
          }

          v22 = v65;
          (*(*v21 + 896))();
          v23 = v64;
          sub_1005E0A78(v22 + *(v66 + 20), v64);
          sub_1005E0ADC(v22, type metadata accessor for CRLWPShapeItemCRDTData);
          v25 = v67;
          v24 = v68;
          (*v63)(v67, v23, v68);
          sub_1005E0ADC(v23, type metadata accessor for CRLWPStorageCRDTData);
          v26 = CRAttributedString.attributedString.getter();
          (*v62)(v25, v24);
          v27 = [v26 string];

          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          goto LABEL_6;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v46 = [v41 v20[130]];
      type metadata accessor for CRLWPStorage();
      result = swift_dynamicCastClass();
      if (result)
      {
        break;
      }

      result = swift_unknownObjectRelease();
    }

    v47 = *(result + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v47)
    {
      goto LABEL_30;
    }

    v48 = v65;
    (*(*v47 + 896))();
    v49 = v64;
    sub_1005E0A78(v48 + *(v66 + 20), v64);
    sub_1005E0ADC(v48, type metadata accessor for CRLWPShapeItemCRDTData);
    v51 = v67;
    v50 = v68;
    (*v63)(v67, v49, v68);
    sub_1005E0ADC(v49, type metadata accessor for CRLWPStorageCRDTData);
    v52 = CRAttributedString.attributedString.getter();
    (*v62)(v51, v50);
    v53 = [v52 string];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v54;

    swift_unknownObjectRelease();
LABEL_6:
    v72 = v28;
    v73 = v30;
    v31 = v69;
    static CharacterSet.whitespaces.getter();
    sub_100017CD8();
    v32 = StringProtocol.trimmingCharacters(in:)();
    v34 = v33;
    (*v61)(v31, v70);

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v20 = &selRef_ignoreUrl_;
    if (v35)
    {
      *(v59 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      if (__OFADD__(v60++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_27:
  v56 = v74;

  return sub_1010F4274(v59, v58, v60, v56);
}

void sub_1005DF854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1005DF9C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v22 = a4;
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_100064110(*(a3 + 48) + 40 * v15, v21);
    v16 = v22(v21);
    result = sub_100064234(v21);
    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1010F56E0(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1005DFB38(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1005DEF68(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1005DFBB0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1005DF1C8(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1005DFC38(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1005DF854(result, a2, a3, a4, a5, sub_1010F4274);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_1005DFCDC(void *a1)
{
  v2 = sub_1005B981C(&unk_1019FFD10);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 info];
  type metadata accessor for CRLWPShapeItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    v14 = v13;
    result = swift_unknownObjectRelease();
    if (v13)
    {
      v16 = *&v14[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
      if (v16)
      {
        (*(*v16 + 896))(result);
        sub_1005E0A78(&v7[*(v5 + 20)], v10);
        sub_1005E0ADC(v7, type metadata accessor for CRLWPShapeItemCRDTData);
        v17 = v27;
        (*(v27 + 16))(v4, v10, v2);
        sub_1005E0ADC(v10, type metadata accessor for CRLWPStorageCRDTData);
        v18 = CRAttributedString.attributedString.getter();
        (*(v17 + 8))(v4, v2);
        v19 = [v18 string];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v20;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v21 = [a1 info];
  type metadata accessor for CRLWPStorage();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v22 = *(result + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v22)
  {
    (*(*v22 + 896))();
    sub_1005E0A78(&v7[*(v5 + 20)], v10);
    sub_1005E0ADC(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    v23 = v27;
    (*(v27 + 16))(v4, v10, v2);
    sub_1005E0ADC(v10, type metadata accessor for CRLWPStorageCRDTData);
    v24 = CRAttributedString.attributedString.getter();
    (*(v23 + 8))(v4, v2);
    v25 = [v24 string];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();
    return v20;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1005E0110(void *a1, char a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 accessibilitySupportLoaded];

  result = 0;
  if (!v9)
  {
    return result;
  }

  if (![a1 respondsToSelector:Selector.init(_:)()])
  {
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlFollow;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = 0xD00000000000001ELL;
    *(inited + 40) = 0x80000001015561C0;
    *(inited + 96) = sub_100006370(0, &qword_1019FB7A0);
    *(inited + 104) = sub_10000FDE0(&qword_1019F5050, &qword_1019FB7A0);
    *(inited + 72) = a1;
    v15 = a1;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v13, &_mh_execute_header, v16, "The AX experience coordinator was unable to call %@ on %@", 57, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    return 0;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 valueForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1005E09AC(&v50);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v17 = HIBYTE(*(&v47 + 1)) & 0xFLL;
  if ((*(&v47 + 1) & 0x2000000000000000) == 0)
  {
    v17 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_31;
  }

  v50 = v47;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100017CD8();
  v18 = StringProtocol.components(separatedBy:)();
  (*(v5 + 8))(v7, v4);

  v19 = *(v18 + 16);
  if (v19 >= 6)
  {
    v19 = 6;
  }

  *&v50 = v18;
  *(&v50 + 1) = v18 + 32;
  *&v51 = 0;
  *(&v51 + 1) = (2 * v19) | 1;
  sub_1005B981C(&qword_1019F5058);
  sub_1005E0A14();
  v20 = BidirectionalCollection<>.joined(separator:)();
  v22 = v21;

  v23 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v46 = v25 + 1;
    v41 = sub_100024CBC((v24 > 1), v25 + 1, 1, v23);
    v26 = v46;
    v23 = v41;
  }

  *(v23 + 2) = v26;
  v27 = &v23[16 * v25];
  *(v27 + 4) = v20;
  *(v27 + 5) = v22;
  if (a2 != 2)
  {
    v28 = sub_1005DD0F4();
    v31 = *(v23 + 2);
    v30 = *(v23 + 3);
    if (v31 >= v30 >> 1)
    {
      v42 = v28;
      v43 = v29;
      v44 = sub_100024CBC((v30 > 1), v31 + 1, 1, v23);
      v29 = v43;
      v23 = v44;
      v28 = v42;
    }

    *(v23 + 2) = v31 + 1;
    v32 = &v23[16 * v31];
    *(v32 + 4) = v28;
    *(v32 + 5) = v29;
  }

  v33 = sub_1006400C4(v23);

  v34 = sub_100B2D7F0(v33);
  v36 = v35;

  if (a2 == 2 || (a2 & 1) != 0)
  {
    v34 = sub_1005DD2F8(a1, v34);
    v38 = v37;

    v39 = v38;
  }

  else
  {
    v39 = v36;
  }

  v40 = HIBYTE(v39) & 0xF;
  result = v34;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
LABEL_31:

    return 0;
  }

  return result;
}

void sub_1005E066C(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = sub_100120414(a3, a4, a5, a6);
  v9 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    Set.Iterator.init(_cocoa:)();
    a1 = v42;
    v10 = v43;
    v12 = v44;
    v11 = v45;
    v13 = v46;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v17 = 0;
  while (a1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006370(0, &qword_1019FB7A0), swift_dynamicCast(), (v20 = v41) == 0))
    {
LABEL_26:
      sub_100035F90();
      if (v17)
      {
        sub_1005E0110(v17, a2);
      }

      return;
    }

LABEL_18:
    v21 = sub_1005E0110(v20, a2);
    if (!v22)
    {
      goto LABEL_8;
    }

    v23 = v21;
    v24 = v22;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {
      goto LABEL_8;
    }

    if (!v17)
    {
      goto LABEL_25;
    }

    v26 = v17;
    [v20 frameInUnscaledCanvas];
    v31 = sub_1001200A8(v7, v9, v27, v28, v29, v30);
    [v26 frameInUnscaledCanvas];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    if (v31 < sub_1001200A8(v7, v9, v33, v35, v37, v39))
    {

LABEL_25:
      v17 = v20;
    }

    else
    {
LABEL_8:
    }
  }

  v18 = v11;
  v19 = v13;
  if (v13)
  {
LABEL_14:
    v13 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= ((v12 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v19 = *(v10 + 8 * v11);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1005E09AC(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F4D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005E0A14()
{
  result = qword_1019F5060;
  if (!qword_1019F5060)
  {
    sub_1005C4E5C(&qword_1019F5058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5060);
  }

  return result;
}

uint64_t sub_1005E0A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLWPStorageCRDTData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E0ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1005E0B4C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1005E0C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005E0FBC();
  v7 = sub_1005E0F14();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1005E0C8C()
{
  sub_1005E0FBC();
  sub_1005E0F68();
  return CRValue<>.init(from:)();
}

uint64_t sub_1005E0CF8()
{
  sub_1005E0FBC();
  sub_1005E0F68();
  return CRValue<>.encode(to:)();
}

uint64_t sub_1005E0D54(uint64_t a1)
{
  v2 = sub_1005E0FBC();
  v3 = sub_1005E0F68();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_1005E0E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005E0F68();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_1005E0E64()
{
  result = qword_1019F5068;
  if (!qword_1019F5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5068);
  }

  return result;
}

unint64_t sub_1005E0EBC()
{
  result = qword_1019F5070;
  if (!qword_1019F5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5070);
  }

  return result;
}

unint64_t sub_1005E0F14()
{
  result = qword_1019F5078;
  if (!qword_1019F5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5078);
  }

  return result;
}

unint64_t sub_1005E0F68()
{
  result = qword_1019F5080;
  if (!qword_1019F5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5080);
  }

  return result;
}

unint64_t sub_1005E0FBC()
{
  result = qword_1019F5088;
  if (!qword_1019F5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F5088);
  }

  return result;
}

uint64_t sub_1005E1010(char *a1)
{
  v269 = a1;
  v2 = sub_1005B981C(&qword_1019F5198);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v237 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v267 = &v237 - v6;
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v7 - 8);
  v247 = &v237 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F6990);
  v10 = __chkstk_darwin(v9 - 8);
  v239 = &v237 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v246 = &v237 - v13;
  __chkstk_darwin(v12);
  v253 = &v237 - v14;
  v15 = type metadata accessor for UUID();
  v257 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v238 = &v237 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v245 = &v237 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v237 - v21;
  v23 = __chkstk_darwin(v20);
  v265 = &v237 - v24;
  __chkstk_darwin(v23);
  v252 = &v237 - v25;
  v240 = v1;
  v26 = *(v1 + 32);
  if ((v26 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1005E2AB0();
    result = Set.Iterator.init(_cocoa:)();
    v28 = v278;
    v254 = v277;
    v29 = v279;
    v30 = v280;
    v31 = v281;
  }

  else
  {
    v32 = -1 << *(v26 + 32);
    v28 = (v26 + 56);
    v33 = ~v32;
    v34 = -v32;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v31 = (v35 & *(v26 + 56));
    v254 = v26;

    v29 = v33;
    v30 = 0;
  }

  v251 = v29;
  v36 = (v29 + 64) >> 6;
  v271 = (v257 + 8);
  v249 = (v257 + 48);
  v248 = xmmword_10146D2A0;
  v272 = v15;
  v260 = v5;
  v266 = v22;
  v37 = v254;
  v262 = v28;
  *&v255 = v36;
  while ((v37 & 0x8000000000000000) == 0)
  {
    v39 = v30;
    v40 = v31;
    v41 = v30;
    if (!v31)
    {
      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v41 >= v36)
        {
          goto LABEL_33;
        }

        v40 = *(v28 + v41);
        ++v39;
        if (v40)
        {
          goto LABEL_15;
        }
      }

LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_15:
    v42 = (v40 - 1) & v40;
    v43 = *(*(v37 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));

    if (!v43)
    {
      goto LABEL_33;
    }

LABEL_19:
    v270 = v42;
    v46 = v43[2];
    v45 = v43[3];
    type metadata accessor for CRLBoardItem(0);
    v47 = swift_dynamicCastClass();
    v268 = v43;
    if (!v47)
    {
      swift_unknownObjectRetain();
      v36 = v255;
      goto LABEL_9;
    }

    v48 = v47;
    v261 = v45;
    v49 = qword_1019F22B8;
    swift_unknownObjectRetain_n();
    v263 = v46;
    if (v49 != -1)
    {
      swift_once();
    }

    v259 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = v248;
    v51 = v252;
    (*((swift_isaMask & *v48) + 0x88))();
    v52 = UUID.uuidString.getter();
    v54 = v53;
    i = *v271;
    i(v51, v272);
    *(inited + 56) = &type metadata for String;
    v55 = sub_1000053B0();
    *(inited + 32) = v52;
    v258 = inited + 32;
    *(inited + 64) = v55;
    *(inited + 40) = v54;
    swift_unknownObjectRetain();
    v56 = [v48 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
    v60 = v55;
    swift_unknownObjectRelease();

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v55;
    *(inited + 72) = v57;
    *(inited + 80) = v59;
    v61 = v253;
    (*((swift_isaMask & *v48) + 0xB8))();
    v62 = v272;
    if ((*v249)(v61, 1) == 1)
    {
      v63 = sub_1005C5FFC(v61);
      v64 = (inited + 112);
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v55;
      v65 = i;
    }

    else
    {
      v66 = UUID.uuidString.getter();
      v68 = v67;
      v69 = v61;
      v65 = i;
      v63 = (i)(v69, v62);
      v64 = (inited + 112);
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v60;
      if (v68)
      {
        *v64 = v66;
        goto LABEL_27;
      }
    }

    *v64 = 7104878;
    v68 = 0xE300000000000000;
LABEL_27:
    v46 = v263;
    *(inited + 120) = v68;
    v70 = (*((swift_isaMask & *v48) + 0x380))(v63);
    if (!v70)
    {
      v81 = (inited + 152);
      *(inited + 176) = &type metadata for String;
      *(inited + 184) = v60;
LABEL_31:
      v45 = v261;
      v83 = v259;
      *v81 = 7104878;
      v80 = 0xE300000000000000;
      v36 = v255;
      goto LABEL_32;
    }

    v71 = *(v70 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v263 = v60;
    v72 = v65;
    v73 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v74 = v70;
    swift_beginAccess();
    v75 = v71 + v73;
    v76 = v247;
    sub_1005E2B78(v75, v247);
    sub_1005B981C(&unk_1019F5250);
    v77 = v265;
    CRRegister.wrappedValue.getter();

    sub_1005E2BDC(v76);
    v78 = UUID.uuidString.getter();
    v80 = v79;
    v72(v77, v272);
    v81 = (inited + 152);
    v82 = v263;
    *(inited + 176) = &type metadata for String;
    *(inited + 184) = v82;
    if (!v80)
    {
      goto LABEL_31;
    }

    *v81 = v78;
    v36 = v255;
    v45 = v261;
    v83 = v259;
LABEL_32:
    *(inited + 160) = v80;
    v84 = static os_log_type_t.default.getter();
    sub_100005404(v83, &_mh_execute_header, v84, "➡️🟢 CRLUndoingAction undo() un-delete %{public}@%{public}@ with parentID %{public}@. Board: %{public}@", 109, 0, inited);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = v254;
    v28 = v262;
LABEL_9:
    ObjectType = swift_getObjectType();
    sub_1012DF9AC(v46, 2, v269, ObjectType, v45);

    result = swift_unknownObjectRelease();
    v30 = v41;
    v31 = v270;
    v15 = v272;
  }

  v44 = __CocoaSet.Iterator.next()();
  if (v44)
  {
    v275 = v44;
    type metadata accessor for CRLTransactableHashableWrapper();
    swift_dynamicCast();
    v43 = v276;
    v41 = v30;
    v42 = v31;
    v28 = v262;
    if (v276)
    {
      goto LABEL_19;
    }
  }

LABEL_33:
  sub_100035F90();
  v85 = *&v269[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner];
  v86 = *&v269[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8];
  v241 = &v269[OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner];
  v87 = v240;
  swift_beginAccess();
  v88 = *(v87 + 16);
  v89 = (v88 + 64);
  v90 = 1 << *(v88 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v88 + 64);
  v244 = (v90 + 63) >> 6;
  v254 = v257 + 16;
  v268 = (v257 + 32);
  v258 = v86 + 16;
  v259 = v86;
  v261 = v85;
  swift_unknownObjectRetain();
  *&v255 = v88;

  v93 = 0;
  v243 = xmmword_10146C6B0;
  v95 = v266;
  v94 = v267;
  for (i = (v88 + 64); ; v89 = i)
  {
    if (v92)
    {
      v103 = v15;
      v104 = v93;
      goto LABEL_50;
    }

    v105 = v244 <= v93 + 1 ? v93 + 1 : v244;
    v106 = v105 - 1;
    do
    {
      v104 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        __break(1u);
        goto LABEL_111;
      }

      if (v104 >= v244)
      {
        v118 = v15;
        v144 = sub_1005B981C(&qword_1019F51A0);
        v116 = v260;
        (*(*(v144 - 8) + 56))(v260, 1, 1, v144);
        v92 = 0;
        v93 = v106;
        goto LABEL_51;
      }

      v92 = v89[v104];
      ++v93;
    }

    while (!v92);
    v103 = v15;
    v93 = v104;
LABEL_50:
    v107 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v108 = v107 | (v104 << 6);
    v109 = v255;
    v110 = v257;
    v111 = v265;
    (*(v257 + 16))(v265, *(v255 + 48) + *(v257 + 72) * v108, v103);
    v112 = *(*(v109 + 56) + 8 * v108);
    v113 = sub_1005B981C(&qword_1019F51A0);
    v114 = *(v113 + 48);
    v115 = *(v110 + 32);
    v116 = v260;
    v117 = v111;
    v118 = v103;
    v115(v260, v117, v103);
    *(v116 + v114) = v112;
    (*(*(v113 - 8) + 56))(v116, 0, 1, v113);

    v95 = v266;
    v94 = v267;
LABEL_51:
    sub_1005E2B08(v116, v94);
    v119 = sub_1005B981C(&qword_1019F51A0);
    if ((*(*(v119 - 8) + 48))(v94, 1, v119) == 1)
    {
      break;
    }

    v270 = *(v94 + *(v119 + 48));
    (*v268)(v95, v94, v118);
    v120 = swift_getObjectType();
    v121 = (*(v259 + 16))(v95, v120);
    if (v121)
    {
      v123 = v121;
      v124 = v122;
      type metadata accessor for CRLBoardItem(0);
      v125 = swift_dynamicCastClass();
      if (v125)
      {
        v126 = v125;
        v253 = v124;
        v127 = qword_1019F22B8;
        swift_unknownObjectRetain();
        v262 = v123;
        if (v127 != -1)
        {
          swift_once();
        }

        v252 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0);
        v128 = swift_initStackObject();
        *(v128 + 16) = v248;
        v129 = v245;
        (*((swift_isaMask & *v126) + 0x88))();
        v130 = UUID.uuidString.getter();
        v132 = v131;
        v250 = *v271;
        v250(v129, v272);
        *(v128 + 56) = &type metadata for String;
        v133 = sub_1000053B0();
        v263 = v133;
        *(v128 + 32) = v130;
        v251 = v128 + 32;
        *(v128 + 64) = v133;
        *(v128 + 40) = v132;
        swift_unknownObjectRetain();
        v134 = [v126 description];
        v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v137 = v136;
        v138 = v263;
        swift_unknownObjectRelease();

        *(v128 + 96) = &type metadata for String;
        *(v128 + 104) = v138;
        *(v128 + 72) = v135;
        *(v128 + 80) = v137;
        v139 = v246;
        (*((swift_isaMask & *v126) + 0xB8))();
        v140 = v272;
        if ((*v249)(v139, 1) == 1)
        {
          v141 = sub_1005C5FFC(v139);
          v142 = (v128 + 112);
          *(v128 + 136) = &type metadata for String;
          *(v128 + 144) = v138;
          v143 = v250;
          goto LABEL_61;
        }

        v242 = UUID.uuidString.getter();
        v146 = v145;
        v147 = v139;
        v143 = v250;
        v141 = (v250)(v147, v140);
        v142 = (v128 + 112);
        *(v128 + 136) = &type metadata for String;
        *(v128 + 144) = v138;
        if (v146)
        {
          *v142 = v242;
        }

        else
        {
LABEL_61:
          *v142 = 7104878;
          v146 = 0xE300000000000000;
        }

        v123 = v262;
        *(v128 + 120) = v146;
        v148 = (*((swift_isaMask & *v126) + 0x380))(v141);
        if (v148)
        {
          v149 = *&v148[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
          v150 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          v262 = v148;
          swift_beginAccess();
          v151 = v149 + v150;
          v152 = v247;
          sub_1005E2B78(v151, v247);
          sub_1005B981C(&unk_1019F5250);
          v153 = v143;
          v154 = v265;
          CRRegister.wrappedValue.getter();

          sub_1005E2BDC(v152);
          v155 = UUID.uuidString.getter();
          v157 = v156;
          v153(v154, v272);
          v158 = (v128 + 152);
          v159 = v263;
          *(v128 + 176) = &type metadata for String;
          *(v128 + 184) = v159;
          if (v157)
          {
            *v158 = v155;
            v95 = v266;
            v160 = v252;
            v124 = v253;
            goto LABEL_67;
          }
        }

        else
        {
          v158 = (v128 + 152);
          v161 = v263;
          *(v128 + 176) = &type metadata for String;
          *(v128 + 184) = v161;
        }

        v95 = v266;
        v160 = v252;
        v124 = v253;
        *v158 = 7104878;
        v157 = 0xE300000000000000;
LABEL_67:
        *(v128 + 160) = v157;
        v162 = static os_log_type_t.default.getter();
        sub_100005404(v160, &_mh_execute_header, v162, "➡️ CRLUndoingAction undo() undo mutation of %{public}@%{public}@ with parentID %{public}@. Board: %{public}@", 112, 0, v128);
        swift_unknownObjectRelease();
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v94 = v267;
      }

      v163 = v264;
      sub_1012E0400(v123, v124);
      if (v163)
      {
        (*v271)(v95, v272);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      v164 = swift_getObjectType();
      (*(v124 + 10))(v270, v269, v164, v124);
      v264 = 0;
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1019F20B0 != -1)
      {
        swift_once();
      }

      v96 = static OS_os_log.crlWarning;
      sub_1005B981C(&qword_1019F54E0);
      v97 = swift_initStackObject();
      *(v97 + 16) = v243;
      v98 = UUID.uuidString.getter();
      v100 = v99;
      *(v97 + 56) = &type metadata for String;
      *(v97 + 64) = sub_1000053B0();
      *(v97 + 32) = v98;
      *(v97 + 40) = v100;
      v101 = static os_log_type_t.default.getter();
      sub_100005404(v96, &_mh_execute_header, v101, "Unable to find transactable to apply undoingMutations for %{public}@", 68, 2, v97);

      swift_setDeallocating();
      v102 = v97 + 32;
      v95 = v266;
      sub_100005070(v102);
      v94 = v267;
    }

    v15 = v272;
    result = (*v271)(v95, v272);
  }

  v165 = v240;
  swift_beginAccess();
  v166 = *(v165 + 24);
  if ((v166 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1005E2AB0();
    result = Set.Iterator.init(_cocoa:)();
    v166 = v282;
    v167 = v283;
    v168 = v284;
    v169 = v285;
    v170 = v286;
  }

  else
  {
    v171 = -1 << *(v166 + 32);
    v167 = v166 + 56;
    v172 = ~v171;
    v173 = -v171;
    if (v173 < 64)
    {
      v174 = ~(-1 << v173);
    }

    else
    {
      v174 = -1;
    }

    v170 = (v174 & *(v166 + 56));

    v168 = v172;
    v169 = 0;
  }

  v253 = v168;
  v175 = (v168 + 64) >> 6;
  v255 = xmmword_10146BDE0;
  v257 = v167;
  v258 = v166;
  i = v175;
  while (2)
  {
    if (v166 < 0)
    {
      v185 = __CocoaSet.Iterator.next()();
      if (!v185 || (v287 = v185, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), v184 = v273, v182 = v169, v183 = v170, !v273))
      {
LABEL_108:
        sub_100035F90();
        return swift_unknownObjectRelease();
      }

LABEL_91:
      v266 = v184;
      v267 = v183;
      v186 = *(v184 + 16);
      v187 = *(v184 + 24);
      v188 = *(v241 + 1);
      v270 = swift_getObjectType();
      v189 = swift_getObjectType();
      v190 = v187[4];
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v191 = v265;
      v262 = v187;
      v263 = v186;
      v268 = v189;
      v190(v189, v187);
      v192 = (*(v188 + 16))(v191, v270, v188);
      swift_unknownObjectRelease();
      v193 = *v271;
      (*v271)(v191, v272);
      v270 = v193;
      if (v192)
      {
        type metadata accessor for CRLBoardItem(0);
        v194 = swift_dynamicCastClass();
        if (v194)
        {
          v195 = v194;
          v268 = v192;
          if (qword_1019F22B8 != -1)
          {
            swift_once();
          }

          v260 = static OS_os_log.boardItemLifecycle;
          sub_1005B981C(&qword_1019F54E0);
          v196 = swift_initStackObject();
          *(v196 + 16) = v248;
          v197 = v238;
          (*((swift_isaMask & *v195) + 0x88))();
          v198 = UUID.uuidString.getter();
          v200 = v199;
          v262 = v195;
          v201 = v272;
          v270(v197, v272);
          *(v196 + 56) = &type metadata for String;
          v202 = sub_1000053B0();
          *(v196 + 32) = v198;
          v259 = v196 + 32;
          *(v196 + 64) = v202;
          *(v196 + 40) = v200;
          swift_unknownObjectRetain();
          v203 = [v262 description];
          v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v206 = v205;
          v207 = v201;
          v208 = v262;
          swift_unknownObjectRelease();

          *(v196 + 96) = &type metadata for String;
          *(v196 + 104) = v202;
          v254 = v202;
          *(v196 + 72) = v204;
          *(v196 + 80) = v206;
          v209 = v239;
          (*((swift_isaMask & *v208) + 0xB8))();
          v210 = v207;
          if ((*v249)(v209, 1, v207) == 1)
          {
            v211 = sub_1005C5FFC(v209);
            v212 = (v196 + 112);
            v213 = v254;
            *(v196 + 136) = &type metadata for String;
            *(v196 + 144) = v213;
          }

          else
          {
            v225 = UUID.uuidString.getter();
            v227 = v226;
            v211 = (v270)(v209, v210);
            v212 = (v196 + 112);
            v213 = v254;
            *(v196 + 136) = &type metadata for String;
            *(v196 + 144) = v213;
            if (v227)
            {
              *v212 = v225;
              v207 = v210;
              goto LABEL_105;
            }

            v207 = v210;
          }

          *v212 = 7104878;
          v227 = 0xE300000000000000;
LABEL_105:
          *(v196 + 120) = v227;
          v228 = (*((swift_isaMask & *v208) + 0x380))(v211);
          if (v228)
          {
            v229 = v228;
            v230 = *(v228 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
            v231 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
            swift_beginAccess();
            v232 = v230 + v231;
            v233 = v247;
            sub_1005E2B78(v232, v247);
            sub_1005B981C(&unk_1019F5250);
            v234 = v265;
            CRRegister.wrappedValue.getter();

            sub_1005E2BDC(v233);
            v235 = UUID.uuidString.getter();
            v178 = v236;
            v270(v234, v207);
            v176 = (v196 + 152);
            *(v196 + 176) = &type metadata for String;
            *(v196 + 184) = v213;
            if (v178)
            {
              *v176 = v235;
              v177 = v269;
              goto LABEL_80;
            }
          }

          else
          {
            v176 = (v196 + 152);
            *(v196 + 176) = &type metadata for String;
            *(v196 + 184) = v213;
          }

          v177 = v269;
          *v176 = 7104878;
          v178 = 0xE300000000000000;
LABEL_80:
          v167 = v257;
          *(v196 + 160) = v178;
          v179 = static os_log_type_t.default.getter();
          sub_100005404(v260, &_mh_execute_header, v179, "➡️⭕ CRLUndoingAction undo() un-create %{public}@%{public}@ with parentID %{public}@. Board: %{public}@", 108, 0, v196);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_unknownObjectRetain();
          sub_1012DCC7C(v208, 0, 0, v177);
          swift_unknownObjectRelease_n();

LABEL_81:
          result = swift_unknownObjectRelease();
          v169 = v182;
          v170 = v267;
          v166 = v258;
          v175 = i;
          continue;
        }

        swift_unknownObjectRelease();
      }

      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v260 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      v214 = swift_initStackObject();
      *(v214 + 16) = v255;
      v215 = v265;
      v216 = v262;
      v217 = v263;
      v190(v268, v262);
      v218 = UUID.uuidString.getter();
      v259 = v219;
      v270(v215, v272);
      *(v214 + 56) = &type metadata for String;
      v220 = sub_1000053B0();
      *(v214 + 64) = v220;
      *(v214 + 32) = v218;
      *(v214 + 40) = v259;
      v273 = v217;
      v274 = v216;
      swift_unknownObjectRetain();
      sub_1005B981C(&qword_1019F51A8);
      v221 = String.init<A>(describing:)();
      *(v214 + 96) = &type metadata for String;
      *(v214 + 104) = v220;
      *(v214 + 72) = v221;
      *(v214 + 80) = v222;
      v223 = static os_log_type_t.default.getter();
      sub_100005404(v260, &_mh_execute_header, v223, "➡️⭕ CRLUndoingAction undo() un-create %{public}@%{public}@ from old snapshot.", 83, 0, v214);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v224 = swift_unknownObjectRetain();
      sub_1012DEA8C(v224, 0, 0, v269, v268, v216);

      swift_unknownObjectRelease();
      v167 = v257;
      goto LABEL_81;
    }

    break;
  }

  v180 = v169;
  v181 = v170;
  v182 = v169;
  if (v170)
  {
LABEL_87:
    v183 = (v181 - 1) & v181;

    if (!v184)
    {
      goto LABEL_108;
    }

    goto LABEL_91;
  }

  while (1)
  {
    v182 = v180 + 1;
    if (__OFADD__(v180, 1))
    {
      break;
    }

    if (v182 >= v175)
    {
      goto LABEL_108;
    }

    v181 = *(v167 + 8 * v182);
    ++v180;
    if (v181)
    {
      goto LABEL_87;
    }
  }

LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_1005E2A44()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1005E2AB0()
{
  result = qword_101A22700;
  if (!qword_101A22700)
  {
    type metadata accessor for CRLTransactableHashableWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22700);
  }

  return result;
}

uint64_t sub_1005E2B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F5198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E2B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E2BDC(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1005E2D58(uint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_id;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v8[v9], a1, v10);
  if (a2)
  {
    a2 = a2;
    [a2 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A14D70);
    swift_dynamicCast();
    *&v8[OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_lineEnd] = v14;
  }

  else
  {
    *&v8[OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_lineEnd] = 0;
  }

  *&v8[OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_chirality] = a3;
  v15.receiver = v8;
  v15.super_class = v4;
  v12 = objc_msgSendSuper2(&v15, "init");
  (*(v11 + 8))(a1, v10);

  return v12;
}

void sub_1005E3100(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (!v9)
  {
LABEL_11:
    v19 = objc_opt_self();
    v20 = [v19 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v44);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v20;
    v29 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v29;
    v30 = sub_1005CF04C();
    *(inited + 104) = v30;
    *(inited + 72) = v21;
    *(inited + 136) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 112) = v24;
    *(inited + 120) = v26;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v31;
    *(inited + 152) = 41;
    v32 = v44;
    *(inited + 216) = v29;
    *(inited + 224) = v30;
    *(inited + 192) = v32;
    v33 = v21;
    v34 = v32;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v36 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v36, "Unable to retrieve shape item.", 30, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve shape item.");
    type metadata accessor for __VaListBuilder();
    v37 = swift_allocObject();
    v37[2] = 8;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
    v38 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    [v19 handleFailureInFunction:v39 file:v40 lineNumber:41 isFatal:1 format:v41 args:v38];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v42, v43);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_14;
  }

  type metadata accessor for CRLShapeItem();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = v10;
  v12 = v9;
  sub_1012E0400(v11, &off_10188FE10);

  if (v4)
  {

    return;
  }

  v13 = *(v5 + OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_chirality);
  if (!v13)
  {
    v14 = *(v5 + OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_lineEnd);
    v15 = v14;
    sub_100C35D48(v14);
LABEL_9:
    v18 = v12;
    sub_1012CF6CC(v11, &off_10188FE10, a3);

    return;
  }

  if (v13 == 1)
  {
    v16 = *(v5 + OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_lineEnd);
    v17 = v16;
    sub_100C36568(v16);
    goto LABEL_9;
  }

LABEL_14:
  v44 = v13;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_1005E3638()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_lineEnd);
}

id sub_1005E36B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetLineEnd();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetLineEnd()
{
  result = qword_1019F51D8;
  if (!qword_1019F51D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005E37B8()
{
  result = type metadata accessor for UUID();
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

unint64_t sub_1005E3874()
{
  result = qword_1019F51E8;
  if (!qword_1019F51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F51E8);
  }

  return result;
}

id sub_1005E38C8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_id;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  if (a2)
  {
    v10 = a2;
    [v10 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &qword_101A14D70);
    swift_dynamicCast();
    *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_lineEnd] = v13;
  }

  else
  {
    *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_lineEnd] = 0;
  }

  *&v3[OBJC_IVAR____TtC8Freeform20CRLCommandSetLineEnd_chirality] = a3;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for CRLCommandSetLineEnd();
  v11 = objc_msgSendSuper2(&v14, "init");
  (*(v9 + 8))(a1, v8);
  return v11;
}

uint64_t sub_1005E3A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  type metadata accessor for CRLBoardCRDTData(0);
  v4[38] = swift_task_alloc();
  type metadata accessor for UUID();
  v4[39] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v4[40] = swift_task_alloc();
  v4[41] = type metadata accessor for MainActor();
  v4[42] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[43] = v6;
  v4[44] = v5;

  return _swift_task_switch(sub_1005E3B74, v6, v5);
}

uint64_t sub_1005E3B74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[45] = Strong;
  if (!Strong)
  {

LABEL_11:

    v6 = v0[1];

    return v6();
  }

  v2 = Strong;
  v3 = swift_unknownObjectWeakLoadStrong();
  v0[46] = v3;
  if (!v3)
  {

LABEL_10:

    goto LABEL_11;
  }

  v4 = v3;
  [*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] endEditing];
  if ((v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable] & 1) == 0)
  {

    sub_1005E5B5C();
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSyncAwaitTask;
  v0[47] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSyncAwaitTask;
  if (*&v2[v5 + 8])
  {

LABEL_9:

    goto LABEL_10;
  }

  v8 = v0[40];
  v9 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
  v10 = v0[38];
  v11 = v0[39];
  v12 = *(v9 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v13 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v14 = *&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v15 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v14 + v15, v10);
  v16 = v12;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v10, type metadata accessor for CRLBoardCRDTData);
  v17 = (*&v12[v13] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v18 = *v17;
  v19 = v17[1];

  sub_10084BD4C(v11, v18, v19, v8);

  v0[48] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[49] = v21;
  v0[50] = v20;

  return _swift_task_switch(sub_1005E3E18, v21, v20);
}

uint64_t sub_1005E3E18()
{
  v1 = *(v0 + 320);
  v2 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[1] == 0xE000000000000000;
  }

  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = swift_task_alloc();
    *(v0 + 408) = v4;
    *v4 = v0;
    v4[1] = sub_1005E3F48;
    v5 = *(v0 + 320);

    return sub_1010AB348(v5);
  }

  else
  {

    *(v0 + 465) = 1;
    *(v0 + 416) = swift_allocObject();
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);

    return _swift_task_switch(sub_1005E40F4, v7, v8);
  }
}

uint64_t sub_1005E3F48(char a1)
{
  v2 = *v1;
  *(*v1 + 464) = a1;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);

  return _swift_task_switch(sub_1005E4070, v4, v3);
}

uint64_t sub_1005E4070()
{

  *(v0 + 465) = *(v0 + 464);
  *(v0 + 416) = swift_allocObject();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return _swift_task_switch(sub_1005E40F4, v1, v2);
}

void sub_1005E40F4()
{
  *(v0[52] + 16) = *(v0 + 465);
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = *(v0 + 465);
  type metadata accessor for CRLiOSAppDelegate();
  swift_dynamicCastClassUnconditional();

  swift_unknownObjectRelease();
  v4 = sub_10000A05C();

  if ((v3 & 1) == 0 && v4 == 1)
  {
    v5 = v0[52];
    v6 = (v0[45] + v0[47]);
    v7 = sub_100EFF9E4(v0[40]);
    v0[53] = v7;
    v8 = swift_allocObject();
    v0[54] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v5;
    v9 = *v6;
    v10 = v6[1];
    *v6 = 0x4008000000000000;
    v6[1] = &unk_10146D420;
    v6[2] = v8;
    v11 = v7;

    sub_1005EA848(v9, v10);
    v12 = swift_task_alloc();
    v0[55] = v12;
    *v12 = v0;
    v12[1] = sub_1005E5130;

    sub_1005E68F4(3.0, sub_1005E68F4, &unk_10146D420, v8);
    return;
  }

  if (v4 <= 1u)
  {
    if (v4)
    {
      v13 = v0[52];
      swift_beginAccess();
      if (*(v13 + 16) == 1)
      {
        v14 = sub_101012FD4();
        v15 = [v14 mode];

        LODWORD(v14) = [v15 wantsToEndForNonPopoverPresentations];
        if (v14)
        {
          [*(v0[45] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
        }

        v16 = swift_task_alloc();
        v0[56] = v16;
        *v16 = v0;
        v16[1] = sub_1005E5818;
        v17 = v0[40];

        sub_1010A91B4(v17, 1);
        return;
      }

      v63 = objc_opt_self();
      v64 = [v63 mainBundle];
      v65 = String._bridgeToObjectiveC()();
      v66 = String._bridgeToObjectiveC()();
      v67 = [v64 localizedStringForKey:v65 value:v66 table:0];

      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = [v63 mainBundle];
      v71 = String._bridgeToObjectiveC()();
      v72 = String._bridgeToObjectiveC()();
      v73 = [v70 localizedStringForKey:v71 value:v72 table:0];

      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v75;

      v32 = v69;
      v23 = v74;
      v76 = [v63 mainBundle];
      v77 = String._bridgeToObjectiveC()();
      v78 = String._bridgeToObjectiveC()();
      v79 = [v76 localizedStringForKey:v77 value:v78 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = String._bridgeToObjectiveC()();

      v38 = [objc_opt_self() actionWithTitle:v37 style:0 handler:0];
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v4 != 2)
  {
LABEL_18:

    v39 = objc_opt_self();
    v40 = [v39 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = String._bridgeToObjectiveC()();
    v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v45;

    v119 = sub_100F7B160();
    v47 = v46;
    v48 = [v39 mainBundle];
    v49 = String._bridgeToObjectiveC()();
    v50 = String._bridgeToObjectiveC()();
    v51 = [v48 localizedStringForKey:v49 value:v50 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = String._bridgeToObjectiveC()();

    v0[20] = sub_1005EB41C;
    v0[21] = 0;
    v0[16] = _NSConcreteStackBlock;
    v0[17] = *"";
    v0[18] = sub_10068B39C;
    v0[19] = &unk_10187C438;
    v53 = _Block_copy(v0 + 16);

    v54 = objc_opt_self();
    v55 = [v54 actionWithTitle:v52 style:0 handler:v53];
    _Block_release(v53);

    v56 = [v39 mainBundle];
    v57 = String._bridgeToObjectiveC()();
    v58 = String._bridgeToObjectiveC()();
    v59 = [v56 localizedStringForKey:v57 value:v58 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v44;
    v60 = String._bridgeToObjectiveC()();

    v28 = v117;
    v32 = v47;
    v61 = [v54 actionWithTitle:v60 style:1 handler:0];
    goto LABEL_19;
  }

  if ([objc_opt_self() loggedInUserHasManagedAppleID])
  {
    v18 = objc_opt_self();
    v19 = [v18 mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = [v18 mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = v25;
    v29 = String._bridgeToObjectiveC()();
    v30 = [v26 localizedStringForKey:v27 value:v29 table:0];

    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = [v18 mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();

    v38 = [objc_opt_self() actionWithTitle:v37 style:0 handler:0];
LABEL_21:
    v55 = v38;

    v62 = 0;
    goto LABEL_22;
  }

  v91 = objc_opt_self();
  v92 = [v91 mainBundle];
  v93 = String._bridgeToObjectiveC()();
  v94 = String._bridgeToObjectiveC()();
  v95 = [v92 localizedStringForKey:v93 value:v94 table:0];

  aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v96;

  v97 = [v91 mainBundle];
  v98 = String._bridgeToObjectiveC()();
  v99 = String._bridgeToObjectiveC()();
  v100 = [v97 localizedStringForKey:v98 value:v99 table:0];

  v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v101;

  v102 = [v91 mainBundle];
  v103 = String._bridgeToObjectiveC()();
  v104 = String._bridgeToObjectiveC()();
  v105 = [v102 localizedStringForKey:v103 value:v104 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = String._bridgeToObjectiveC()();

  v0[26] = sub_1005EB41C;
  v0[27] = 0;
  v0[22] = _NSConcreteStackBlock;
  v0[23] = *"";
  v0[24] = sub_10068B39C;
  v0[25] = &unk_10187C460;
  v107 = _Block_copy(v0 + 22);

  v108 = objc_opt_self();
  v55 = [v108 actionWithTitle:v106 style:0 handler:v107];
  _Block_release(v107);

  v109 = [v91 mainBundle];
  v110 = String._bridgeToObjectiveC()();
  v111 = String._bridgeToObjectiveC()();
  v112 = [v109 localizedStringForKey:v110 value:v111 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = aBlock;
  v60 = String._bridgeToObjectiveC()();

  v28 = v118;
  v61 = [v108 actionWithTitle:v60 style:1 handler:0];
LABEL_19:
  v62 = v61;

LABEL_22:
  v80 = String._bridgeToObjectiveC()();
  v81 = String._bridgeToObjectiveC()();
  v82 = [objc_opt_self() alertControllerWithTitle:v80 message:v81 preferredStyle:1];

  [v82 addAction:v55];
  v83 = v23;
  if (v62)
  {
    [v82 addAction:v62];
  }

  v115 = v62;
  v84 = v28;
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v85 = v0[45];
  v113 = v0[46];
  v114 = v0[40];
  v86 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v88 = sub_1000053B0();
  *(inited + 32) = v83;
  *(inited + 40) = v84;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v88;
  *(inited + 64) = v88;
  *(inited + 72) = v119;
  *(inited + 80) = v32;
  v89 = static os_log_type_t.error.getter();
  sub_100005404(v86, &_mh_execute_header, v89, "Presenting alert: %@ %@", 23, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  [v85 presentViewController:v82 animated:1 completion:0];

  sub_10003D45C(v114, type metadata accessor for CRLBoardIdentifier);

  v90 = v0[1];

  v90();
}

uint64_t sub_1005E5130()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_1005EB420;
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_1005E5274;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005E5274()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);

  v3 = (v2 + v1);
  v4 = *(v2 + v1);
  v5 = *(v2 + v1 + 8);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  sub_1005EA848(v4, v5);
  v6 = *(v0 + 416);
  swift_beginAccess();
  if (*(v6 + 16) == 1)
  {
    v7 = sub_101012FD4();
    v8 = [v7 mode];

    LODWORD(v7) = [v8 wantsToEndForNonPopoverPresentations];
    if (v7)
    {
      [*(*(v0 + 360) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
    }

    v9 = swift_task_alloc();
    *(v0 + 448) = v9;
    *v9 = v0;
    v9[1] = sub_1005E5818;
    v10 = *(v0 + 320);

    return sub_1010A91B4(v10, 1);
  }

  else
  {

    v12 = objc_opt_self();
    v13 = [v12 mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v12 mainBundle];
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = [v12 mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = String._bridgeToObjectiveC()();

    v32 = [objc_opt_self() actionWithTitle:v31 style:0 handler:0];

    v46 = v26;
    v33 = String._bridgeToObjectiveC()();
    v47 = v17;
    v34 = v19;
    v35 = String._bridgeToObjectiveC()();
    v36 = [objc_opt_self() alertControllerWithTitle:v33 message:v35 preferredStyle:1];

    v45 = v32;
    [v36 addAction:v32];
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 360);
    v37 = *(v0 + 368);
    v39 = *(v0 + 320);
    v40 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 32) = v24;
    *(inited + 40) = v46;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v42;
    *(inited + 64) = v42;
    *(inited + 72) = v47;
    *(inited + 80) = v34;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v43, "Presenting alert: %@ %@", 23, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    [v38 presentViewController:v36 animated:1 completion:0];

    sub_10003D45C(v39, type metadata accessor for CRLBoardIdentifier);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_1005E5818(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[43];
    v6 = v4[44];
    v7 = sub_1005E5A54;
  }

  else
  {
    v4[57] = a1;
    v5 = v4[43];
    v6 = v4[44];
    v7 = sub_1005E5944;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1005E5944()
{
  v1 = v0[57];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[40];

  v5 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSheetProvider];
  v6 = sub_101013330();
  sub_100700424(v6, v2, v1);

  sub_10003D45C(v4, type metadata accessor for CRLBoardIdentifier);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005E5A54()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[40];

  v4 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSheetProvider];
  v5 = sub_101013330();
  sub_100700424(v5, v1, 0);

  sub_10003D45C(v3, type metadata accessor for CRLBoardIdentifier);

  v6 = v0[1];

  return v6();
}

void sub_1005E5B5C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v0 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  v18 = [v0 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = String._bridgeToObjectiveC()();

  v23 = [objc_opt_self() actionWithTitle:v22 style:1 handler:0];

  [v17 addAction:v23];
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v26 = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v26;
  *(inited + 64) = v26;
  *(inited + 72) = v12;
  *(inited + 80) = v14;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v27, "Presenting alert: %@ %@", 23, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  [v28 presentViewController:v17 animated:1 completion:0];
}

uint64_t sub_1005E5F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v4 = type metadata accessor for Notification();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  sub_1005B981C(&unk_101A0A390);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for MainActor();
  v3[28] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[29] = v7;
  v3[30] = v6;

  return _swift_task_switch(sub_1005E60A8, v7, v6);
}

uint64_t sub_1005E60A8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1019F1AA8 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v0[31] = static MainActor.shared.getter();
  v2 = sub_1005EAAD0();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_1005E61E0;
  v4 = v0[23];
  v5 = v0[24];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1005E61E0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1005E6868;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1005E6378;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1005E6378()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_1005E63DC, v1, v2);
}

uint64_t sub_1005E63DC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

LABEL_3:

    v4 = *(v0 + 8);

    return v4();
  }

  (*(v3 + 32))(*(v0 + 176), v1, v2);
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_17;
  }

  v7 = v6;
  *(v0 + 112) = 0xD00000000000001DLL;
  *(v0 + 120) = 0x8000000101556850;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_1000640CC(v0 + 16), (v9 & 1) == 0))
  {

    sub_100064234(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_15;
  }

  sub_100064288(*(v7 + 56) + 32 * v8, v0 + 56);
  sub_100064234(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_15:
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
LABEL_17:
    sub_10000CAAC(v0 + 56, &unk_1019F4D00);
    goto LABEL_18;
  }

  sub_1005B981C(&unk_1019F52B0);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 136);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = *(v0 + 168);
      v11 = *(v0 + 176);
      v13 = *(v0 + 160);
      v14 = *(v0 + 144);
      v15 = __CocoaSet.contains(_:)();

      (*(v12 + 8))(v11, v13);
      if (v15)
      {
LABEL_13:
        v16 = *(v0 + 152);
        (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

        swift_beginAccess();
        *(v16 + 16) = 1;
        goto LABEL_3;
      }
    }

    else
    {
      if (*(v10 + 16))
      {
        sub_100006370(0, &qword_1019F69D0);
        v21 = NSObject._rawHashValue(seed:)(*(v10 + 40));
        v22 = -1 << *(v10 + 32);
        v23 = v21 & ~v22;
        if ((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = *(*(v10 + 48) + 8 * v23);
            v26 = static NSObject.== infix(_:_:)();

            if (v26)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v31 = *(v0 + 168);
          v30 = *(v0 + 176);
          v32 = *(v0 + 160);

          (*(v31 + 8))(v30, v32);
          goto LABEL_13;
        }
      }

LABEL_27:
      v28 = *(v0 + 168);
      v27 = *(v0 + 176);
      v29 = *(v0 + 160);

      (*(v28 + 8))(v27, v29);
    }
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  }

LABEL_18:
  *(v0 + 248) = static MainActor.shared.getter();
  v17 = sub_1005EAAD0();
  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_1005E61E0;
  v19 = *(v0 + 184);
  v20 = *(v0 + 192);

  return dispatch thunk of AsyncIteratorProtocol.next()(v19, v20, v17);
}

uint64_t sub_1005E6868()
{
  *(v0 + 128) = *(v0 + 264);
  sub_1005B981C(&unk_1019F6B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1005E68F4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_1005E6918, 0, 0);
}

uint64_t sub_1005E6918()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1005B981C(&unk_1019F5260);
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(inited + 48) = &unk_10146D440;
  *(inited + 56) = v5;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *(v6 + 16) = inited;
  v7 = sub_1005B981C(&unk_1019F6B20);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1005E6A90;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 17, &type metadata for () + 8, v7, 0, 0, &unk_10146D450, v6, &type metadata for () + 8);
}

uint64_t sub_1005E6A90()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1005E6C14;
  }

  else
  {
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5270);
    swift_arrayDestroy();

    *(v2 + 137) = *(v2 + 136);
    v3 = sub_1005E6BF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005E6BF0()
{
  if ((*(v0 + 137) & 1) == 0)
  {
    return (*(v0 + 8))();
  }

  __break(1u);
  return result;
}

uint64_t sub_1005E6C14()
{
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5270);
  swift_arrayDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E6CB4()
{
  v1[48] = v0;
  type metadata accessor for CRLBoardCRDTData(0);
  v1[49] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[50] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v1[51] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[52] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[53] = v3;
  v1[54] = v2;

  return _swift_task_switch(sub_1005E6DD0, v3, v2);
}

uint64_t sub_1005E6DD0()
{
  v46 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[55] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[50];
    v3 = v0[51];
    v5 = v0[49];
    v6 = *(v0[48] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
    v0[56] = v6;
    v7 = *(v6 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v8 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v9 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_1005E2B78(v9 + v10, v5);
    v11 = v7;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v5, type metadata accessor for CRLBoardCRDTData);
    v12 = (*&v7[v8] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v13 = *v12;
    v14 = v12[1];

    sub_10084BD4C(v4, v13, v14, v3);

    v15 = *(v2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController);
    v0[57] = v15;
    v16 = *(*(v15 + 112) + 112);
    v0[58] = v16;

    v17 = v16;
    v18 = swift_task_alloc();
    v0[59] = v18;
    *v18 = v0;
    v18[1] = sub_1005E7394;
    v19 = v0[51];

    return sub_1010A91B4(v19, 0);
  }

  else
  {
    v44 = objc_opt_self();
    v21 = [v44 _atomicIncrementAssertCount];
    v45 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v45);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v30;
    v31 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 141;
    v33 = v45;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    [v44 handleFailureInFunction:v40 file:v41 lineNumber:141 isFatal:0 format:v42 args:v39];

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_1005E7394(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 480) = a1;
  *(v4 + 488) = v1;

  v5 = *(v3 + 432);
  v6 = *(v3 + 424);
  if (v1)
  {
    v7 = sub_1005E77B8;
  }

  else
  {
    v7 = sub_1005E74D8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1005E74D8()
{

  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_10146C6B0;
  if (v1)
  {
    v5 = *(v0 + 480);
    *(v0 + 344) = sub_100006370(0, &qword_1019F52C0);
    *(v0 + 352) = sub_10000FE24(&qword_101A1BA40, &qword_1019F52C0);
    *(v0 + 320) = v5;
    sub_100050F74((v0 + 320), v4 + 32);
  }

  else
  {
    *(inited + 56) = &type metadata for String;
    v5 = 0;
    *(inited + 64) = sub_1000053B0();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
  }

  v6 = v5;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Presenting manage share UI for share: %@", 40, 2, v4);
  swift_setDeallocating();
  sub_100005070(v4 + 32);
  v8 = *(v0 + 464);
  if (v1)
  {
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);
    v11 = *(v0 + 408);
    v12 = *(v0 + 384);
    v13 = objc_allocWithZone(UICloudSharingController);
    v14 = v6;
    v15 = [v13 initWithShare:v14 container:v8];
    [v15 setDelegate:v12];
    [v15 setModalPresentationStyle:2];
    v16 = *(v10 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    sub_1008FEE94(0);

    [v12 presentViewController:v15 animated:1 completion:0];

    sub_10003D45C(v11, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    v17 = *(v0 + 440);
    sub_10003D45C(*(v0 + 408), type metadata accessor for CRLBoardIdentifier);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1005E77B8()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[51];

  sub_10003D45C(v3, type metadata accessor for CRLBoardIdentifier);

  v4 = v0[1];

  return v4();
}

void sub_1005E78DC(uint64_t a1, void *a2)
{
  v3 = v2;
  v41 = a1;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v20 = v3;
  v21 = [v3 view];
  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 window];

  if (v23)
  {

    v24 = [a2 zoneID];
    sub_100EE9190(v12);

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10000CAAC(v12, &unk_1019F52D0);
      return;
    }

    sub_1005EB270(v12, v19);
    v25 = v20;
    v26 = *(*&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v27 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v28 = *&v26[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v29 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_1005E2B78(v28 + v29, v7);
    v30 = v26;
    sub_1005B981C(&unk_1019F5250);
    v31 = v42;
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v7, type metadata accessor for CRLBoardCRDTData);
    v32 = (*&v26[v27] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v33 = *v32;
    v34 = v32[1];

    sub_10084BD4C(v31, v33, v34, v17);

    if (static UUID.== infix(_:_:)())
    {
      v35 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v36 = *&v17[v35];
      v37 = *&v17[v35 + 8];
      v38 = &v19[v35];
      if (v36 == *v38 && v37 == *(v38 + 1))
      {
        sub_10003D45C(v17, type metadata accessor for CRLBoardIdentifier);
LABEL_11:
        sub_100F74038(v41, v25);
        goto LABEL_12;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10003D45C(v17, type metadata accessor for CRLBoardIdentifier);
      if (v39)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_10003D45C(v17, type metadata accessor for CRLBoardIdentifier);
    }

LABEL_12:
    sub_10003D45C(v19, type metadata accessor for CRLBoardIdentifier);
  }
}

void sub_1005E7E88(void *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.shareState;
  v48 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v47 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v15 = *(*(*&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v15 + v16, v8);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v8, type metadata accessor for CRLBoardCRDTData);
  v17 = UUID.description.getter();
  v19 = v18;
  v20 = v12;
  v21 = v13;
  (*(v10 + 8))(v20, v9);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Share completed or updated for board %@", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  type metadata accessor for MainActor();
  v24 = v2;
  v25 = v49;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;
  v27[5] = v25;
  sub_100796D64(0, 0, v5, &unk_10146D498, v27);

  v28 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController;
  v29 = *&v24[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
  if (v29)
  {
    v30 = v29;
    sub_100F9F8FC();

    v31 = *&v24[v28];
    if (v31)
    {
      v32 = v31;
      v33 = static os_log_type_t.default.getter();
      sub_100005404(v21, &_mh_execute_header, v33, "Updating collaboration button with new item provider.", 53, 2, _swiftEmptyArrayStorage);
      v34 = sub_100FA1940();
      if (v34)
      {
        v35 = v34;
        v36 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
        swift_beginAccess();
        v37 = *&v32[v36];
        if (v37)
        {
          v38 = v37;
          [v38 setItemProvider:v35];
        }
      }

      v39 = *&v24[v28];
      if (v39)
      {
        v40 = v39;
        sub_100FA1294();
        v41 = sub_100FA0F5C();
        v42 = swift_initStackObject();
        *(v42 + 16) = v47;
        *(v42 + 56) = &type metadata for Int;
        *(v42 + 64) = &protocol witness table for Int;
        *(v42 + 32) = v41;
        v43 = static os_log_type_t.default.getter();
        sub_100005404(v21, &_mh_execute_header, v43, "Updating active participant count to: %d.", 41, 2, v42);
        swift_setDeallocating();
        sub_100005070(v42 + 32);
        v44 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
        swift_beginAccess();
        v45 = *&v40[v44];
        if (v45)
        {
          v46 = v45;
          [v46 setActiveParticipantCount:v41];
        }
      }
    }
  }
}

uint64_t sub_1005E83C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for CRLBoardCRDTData(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for UUID();
  v5[9] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v7;
  v5[13] = v6;

  return _swift_task_switch(sub_1005E84E0, v7, v6);
}

uint64_t sub_1005E84E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(*(*(v0 + 48) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v8 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_1005E2B78(v8 + v9, v5);
    v10 = v6;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v5, type metadata accessor for CRLBoardCRDTData);
    v11 = (*&v6[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v12 = *v11;
    v13 = v11[1];

    sub_10084BD4C(v3, v12, v13, v2);

    v14 = [v4 share];
    *(v0 + 120) = v14;
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_1005E8740;
    v16 = *(v0 + 80);

    return sub_1010A9CB4(v16, v14, 0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 112) == 0;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1005E8740()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  sub_10003D45C(v5, type metadata accessor for CRLBoardIdentifier);

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_1005E8978;
  }

  else
  {
    v8 = sub_1005E88E4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1005E88E4()
{

  **(v0 + 40) = *(v0 + 112) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E8978()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E8A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for CRLBoardCRDTData(0);
  v4[7] = swift_task_alloc();
  type metadata accessor for UUID();
  v4[8] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v6;
  v4[12] = v5;

  return _swift_task_switch(sub_1005E8B84, v6, v5);
}

uint64_t sub_1005E8B84()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(*(*(v0 + 48) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v6 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v7 = *&v5[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_1005E2B78(v7 + v8, v2);
    v9 = v5;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v2, type metadata accessor for CRLBoardCRDTData);
    v10 = (*&v5[v6] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v11 = *v10;
    v12 = v10[1];

    sub_10084BD4C(v4, v11, v12, v3);

    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_1005E8DB4;
    v14 = *(v0 + 72);

    return sub_1010A9CB4(v14, 0, 1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 104) == 0;

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1005E8DB4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  *(*v1 + 120) = v0;

  sub_10003D45C(v4, type metadata accessor for CRLBoardIdentifier);

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1005E8FD4;
  }

  else
  {
    v7 = sub_1005E8F40;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1005E8F40()
{

  **(v0 + 40) = *(v0 + 104) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E8FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005E91B8(char **a1)
{
  v16 = &type metadata for CRLFeatureFlags;
  v17 = sub_100004D60();
  v15[0] = 13;
  v3 = isFeatureEnabled(_:)();
  result = sub_100005070(v15);
  if (v3)
  {
    v5 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    sub_100900650(a1, 0);

    v6 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
    if (v6)
    {
      v7 = qword_1019F22C8;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.shareState;
      v10 = static os_log_type_t.default.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "Dismissing Gelato Interstitial popover", 38, 2, _swiftEmptyArrayStorage);
      v11 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
      swift_beginAccess();
      v12 = *&v8[v11];
      if (v12)
      {
        v13 = v12;
        [v13 dismissPopoverAnimated:1 completion:0];
      }
    }

    if (qword_1019F2BC8 != -1)
    {
      swift_once();
    }

    v14 = sub_1005B981C(&unk_101A287C0);
    sub_1005EB3DC(v14, qword_101AD95B0);
    return Tips.Event.sendDonation<>(_:)();
  }

  return result;
}

void sub_1005E9390()
{
  v12 = &type metadata for CRLFeatureFlags;
  v13 = sub_100004D60();
  v11[0] = 13;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v11);
  if (v1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    sub_1008FEE94(0);

    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
    if (v3)
    {
      v4 = qword_1019F22C8;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.shareState;
      v7 = static os_log_type_t.default.getter();
      sub_100005404(v6, &_mh_execute_header, v7, "Dismissing Gelato Interstitial popover", 38, 2, _swiftEmptyArrayStorage);
      v8 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
      swift_beginAccess();
      v9 = *&v5[v8];
      if (v9)
      {
        v10 = v9;
        [v10 dismissPopoverAnimated:1 completion:0];
      }
    }
  }
}

void sub_1005E9500(uint64_t a1, uint64_t a2)
{
  [*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) scrollToCollaborator:a1 withSelectionPath:a2];
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
  if (v3)
  {
    v4 = qword_1019F22C8;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.shareState;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Dismissing Gelato Interstitial popover", 38, 2, _swiftEmptyArrayStorage);
    v8 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
    swift_beginAccess();
    v9 = *&v5[v8];
    if (v9)
    {
      v10 = v9;
      [v10 dismissPopoverAnimated:1 completion:0];
    }
  }
}

uint64_t sub_1005E961C()
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.crlDefault;
  v1 = static os_log_type_t.default.getter();

  return sub_100005404(v0, &_mh_execute_header, v1, "Finished upgrading security.", 28, 2, _swiftEmptyArrayStorage);
}

void sub_1005E96C8(void *a1, void *a2, void *a3)
{
  v6 = objc_allocWithZone(type metadata accessor for CRLiOSParticipantContactViewController());
  v7 = CRLiOSParticipantContactViewController.init(contact:doneAction:)(a1, a2);
  [v7 setModalPresentationStyle:2];
  [a3 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_1005E9770()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
  if (v4)
  {
    v5 = qword_1019F22C8;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.shareState;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "Dismissing Gelato Interstitial popover", 38, 2, _swiftEmptyArrayStorage);
    v9 = OBJC_IVAR____TtC8Freeform33CRLGelatoInterstitialUIController_collabUIItem;
    swift_beginAccess();
    v10 = *&v6[v9];
    if (v10)
    {
      v11 = v10;
      [v11 dismissPopoverAnimated:1 completion:0];
    }
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v0;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  sub_100641C1C(0, 0, v3, &unk_10146D4A8, v15);
}

uint64_t sub_1005E996C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1005E9A1C;

  return sub_1005E6CB4();
}