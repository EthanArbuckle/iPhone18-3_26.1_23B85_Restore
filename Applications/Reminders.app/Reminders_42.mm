void sub_100497BB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TTRISeparator.Thickness();
  v6 = *(v80 - 8);
  v7 = __chkstk_darwin(v80);
  v9 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = ObjectType;
  v82.receiver = v0;
  v82.super_class = ObjectType;
  objc_msgSendSuper2(&v82, "containerViewDidLoad", v7);
  v10 = objc_allocWithZone(type metadata accessor for TTRIRemindersListEditableSectionNameTextView());
  v11 = TTRIExpandingTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)();
  v12 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  v13 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
  *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView] = v11;
  v14 = v11;

  sub_100003540(0, &qword_100771DF0);
  v15 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v14 setFont:v15];

  v16 = *&v1[v12];
  if (!v16)
  {
    __break(1u);
    goto LABEL_24;
  }

  v17 = [v16 textContainer];
  [v17 setLineBreakMode:4];

  v18 = *&v1[v12];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v76 = v4;
  v19 = [v18 textContainer];
  [v19 setWidthTracksTextView:1];

  v21 = *&v1[v12];
  if (!v21)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LODWORD(v20) = 1132068864;
  [v21 setLayoutSize:NUIContainerViewSizeUnbounded[0] withContentPriority:{NUIContainerViewSizeUnbounded[1], v20}];
  v22 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListDisclosureView()) init];
  v23 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView;
  v24 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView] = v22;
  v25 = v22;

  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  static CGSize.nuiUseDefault.getter();
  [v25 setLayoutSize:? withContentPriority:?];

  v26 = sub_100058000(&qword_10076B780);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10062D410;
  v28 = *&v1[v12];
  if (!v28)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v77 = xmmword_10062D410;
  v78 = v26;
  v74 = v3;
  *(v27 + 32) = v28;
  v29 = *&v1[v23];
  if (!v29)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v27 + 40) = v29;
  v30 = objc_allocWithZone(NUIContainerStackView);
  v31 = sub_100003540(0, &qword_10076B020);
  v32 = v29;
  v33 = v28;
  v75 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v30 initWithArrangedSubviews:isa];

  v36 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer;
  v37 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer] = v35;
  v38 = v35;

  if (!v38)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v38 setAxis:0];

  v39 = *&v1[v36];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v39 setArrangedSubviewRemovalPolicy:2];
  v40 = *&v1[v36];
  if (!v40)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v40 setSpacing:12.0];
  v41 = *&v1[v36];
  if (!v41)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v41 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  v42 = *&v1[v36];
  if (!v42)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v42 setEdgesPreservingSuperviewLayoutMargins:10];
  v43 = *&v1[v36];
  if (!v43)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v43 setDirectionalLayoutMargins:{12.0, 0.0, 8.0, 0.0}];
  v44 = *&v1[v36];
  if (!v44)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v44 setLayoutMarginsRelativeArrangement:1];
  v45 = *&v1[v36];
  if (!v45)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v45 setDebugBoundingBoxesEnabled:0];
  v46 = objc_allocWithZone(type metadata accessor for TTRISeparator());
  v47 = TTRISeparator.init(axis:)();
  v48 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator;
  v49 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator];
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator] = v47;
  v50 = v47;

  *v9 = 0x4000000000000000;
  (*(v6 + 104))(v9, enum case for TTRISeparator.Thickness.custom(_:), v80);
  TTRISeparator.thickness.setter();

  v51 = *&v1[v48];
  if (!v51)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v1 _setIgnoresMultipleSelectionDuringEditing:1];
  v52 = [v1 containerView];
  [v52 setHorizontalAlignment:0];
  [v52 setVerticalAlignment:0];
  [v52 setPreservesSuperviewLayoutMargins:1];
  v53 = v52;
  [v53 setLayoutMarginsRelativeArrangement:0];
  [v53 setDebugBoundingBoxesEnabled:0];
  v54 = swift_allocObject();
  *(v54 + 16) = v77;
  v55 = *&v1[v48];
  if (!v55)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v54 + 32) = v55;
  v56 = *&v1[v36];
  if (!v56)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v54 + 40) = v56;
  v57 = v56;
  v58 = v55;
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v53 setArrangedSubviews:v59];

  v60 = *&v1[v48];
  if (!v60)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v53 setAlignment:1 forView:v60 inAxis:1];
  v61 = *&v1[v23];
  if (!v61)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_10049C994(&qword_100785AA8, type metadata accessor for TTRIRemindersListEditableSectionCell);
  v62 = v1;
  v63 = v61;
  TTRIRemindersListDisclosureView.actionDelegate.setter();

  v64 = v76;
  v65 = v79;
  v66 = v74;
  (*(v76 + 104))(v79, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v74);
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v64 + 8))(v65, v66);
  v67 = *&v1[v12];
  if (!v67)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_100003540(0, &unk_10076B090);
  v68 = v67;
  UITextDraggable<>.disableDragInteraction_rdar93793341()();
  [v68 setTextDropDelegate:*&v62[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_unsupportedTextDropHandler]];

  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();
  v69 = *&v1[v48];
  if (v69)
  {
    v70 = objc_opt_self();
    v71 = v69;
    v72 = [v70 tertiarySystemFillColor];
    TTRISeparator.backgroundColor.setter();

    sub_100003540(0, &qword_100785AB0);
    static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return;
  }

LABEL_43:
  __break(1u);
}

void sub_10049867C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v77 = a5;
  v82 = a4;
  v83 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v12 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v12 - 8);
  v76 = &v74 - v13;
  v14 = sub_100058000(&qword_100781830);
  v81 = *(v14 - 8);
  __chkstk_darwin(v14);
  v75 = &v74 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  TTRRemindersListViewModel.SectionHeaderTitle.defaultTextColor.getter();
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:))
  {
    v25 = &selRef_labelColor;
  }

  else if (v24 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:))
  {
    v25 = &selRef_secondaryLabelColor;
  }

  else
  {
    if (v24 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:))
    {
LABEL_52:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_53;
    }

    v25 = &selRef_tertiaryLabelColor;
  }

  v26 = [objc_opt_self() *v25];
  v27 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer);
  if (!v27)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v28 = v26;
  [v27 directionalLayoutMargins];
  v30 = v29;
  v32 = v31;
  TTRRemindersListViewModel.SectionHeaderTitle.textSize.getter();
  v33 = (*(v17 + 88))(v19, v16);
  if (v33 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:))
  {
    v34 = 12.0;
    v35 = 8.0;
  }

  else if (v33 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:))
  {
    v35 = 13.0;
    v34 = 13.0;
  }

  else
  {
    if (v33 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:))
    {
LABEL_53:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_54;
    }

    v35 = 12.0;
    v34 = 12.0;
  }

  sub_100003540(0, &qword_100771DF0);
  v36 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  v37.super.isa = UIFont.withBoldTrait()().super.isa;

  v38 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  v39 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
  if (!v39)
  {
    goto LABEL_42;
  }

  [v39 setFont:v37.super.isa];
  v40 = *(a2 + v38);
  if (!v40)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v40 setDirectionalLayoutMargins:{v34, v30, v35, v32}];
  v41 = *(a2 + v38);
  if (!v41)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v41 setTextColor:v28];
  v42 = *(a2 + v38);
  if (!v42)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 clearColor];
  [v44 setBackgroundColor:v45];

  v46 = *(a2 + v38);
  if (!v46)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v47 = v46;
  TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
  v48 = String._bridgeToObjectiveC()();

  [v47 setText:v48];

  v49 = *(a2 + v38);
  if (!v49)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v49 setAttributedPlaceholder:v83];
  v50 = *(a2 + v38);
  if (!v50)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v50 setUserInteractionEnabled:v82 & 1];
  v51 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  swift_beginAccess();
  v52 = v81;
  if (!(*(v81 + 48))(a2 + v51, 1, v14))
  {
    v53 = a2 + v51;
    v54 = v75;
    (*(v52 + 16))(v75, v53, v14);
    TTRRemindersListInCellModule.interface.getter();
    (*(v52 + 8))(v54, v14);
    v55 = v85;
    v56 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
    v57 = *(v56 - 8);
    v58 = v76;
    (*(v57 + 16))(v76, v77, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    sub_100019180(v58, v55 + v59, &unk_100776BC0);
    swift_endAccess();
    sub_1004E49D0();
    swift_unknownObjectRelease();
    sub_1000079B4(v58, &unk_100776BC0);
  }

  v60 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView);
  if (!v60)
  {
    goto LABEL_49;
  }

  isa = v37.super.isa;
  v62 = v60;
  TTRRemindersListViewModel.SectionHeaderTitle.disclosureColor.getter();
  v63 = type metadata accessor for TTRListColors.Color();
  v64 = *(v63 - 8);
  if ((*(v64 + 48))(v11, 1, v63) == 1)
  {
    sub_1000079B4(v11, &unk_10076B060);
  }

  else
  {
    TTRListColors.Color.nativeColor.getter();
    (*(v64 + 8))(v11, v63);
  }

  TTRIRemindersListDisclosureView.tintColor.setter();

  sub_100499088();
  v65 = v78;
  TTRRemindersListViewModel.SectionHeaderTitle.separator.getter();
  v66 = (*(v79 + 88))(v65, v80);
  if (v66 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
  {
    if (qword_100767350 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100003E30(v67, qword_100785958);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v68, v69))
    {
      v72 = v28;
      v28 = isa;
LABEL_40:

      return;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "TTRIRemindersListEditableSectionCell inset separator not supported", v70, 2u);

LABEL_39:
    v72 = isa;
    goto LABEL_40;
  }

  if (v66 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
  {
    v71 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator);
    if (v71)
    {
      v68 = v71;
      [v68 setHidden:1];
      goto LABEL_39;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
  {
    v73 = *(a2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator);
    if (v73)
    {
      v68 = v73;
      [v68 setHidden:0];
      goto LABEL_39;
    }

    goto LABEL_51;
  }

LABEL_54:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100499088()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewCellModel();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076B9C0);
  __chkstk_darwin(v4);
  v41 = v37 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v42 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEditing])
  {
    goto LABEL_6;
  }

  v37[1] = v4;
  v20 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  swift_beginAccess();
  if ((*(v10 + 48))(&v1[v20], 1, v9))
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_5:
    sub_1000079B4(v15, &qword_10076E900);
LABEL_6:
    v21 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
    if (v21)
    {
      [v21 setHidden:1];
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  (*(v10 + 16))(v12, &v1[v20], v9);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v10 + 8))(v12, v9);
  TTRRemindersListViewModel.Item.sectionHeader.getter();
  (*(v43 + 8))(v8, v6);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v22 = v42;
  (*(v17 + 32))(v42, v15, v16);
  if ((TTRRemindersListViewModel.SectionHeader.isCollapsable.getter() & 1) == 0)
  {
LABEL_12:
    (*(v17 + 8))(v22, v16);
    goto LABEL_6;
  }

  v23 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  swift_beginAccess();
  v25 = v39;
  v24 = v40;
  if ((*(v39 + 48))(&v1[v23], 1, v40))
  {
    v26 = type metadata accessor for TTRITreeViewExpandedState();
    (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
    goto LABEL_12;
  }

  v27 = &v1[v23];
  v28 = v38;
  (*(v25 + 16))(v38, v27, v24);
  v29 = v41;
  TTRITreeViewCellModel.expandedState.getter();
  (*(v25 + 8))(v28, v24);
  v30 = type metadata accessor for TTRITreeViewExpandedState();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v29, 0, 1, v30);
  v32 = (*(v31 + 88))(v29, v30);
  if (v32 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
    goto LABEL_12;
  }

  if (v32 != enum case for TTRITreeViewExpandedState.collapsed(_:) && v32 != enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    goto LABEL_21;
  }

  (*(v17 + 8))(v22, v16);
  v33 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView;
  v34 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  if (v34)
  {
    [v34 setHidden:0];
    v35 = *&v1[v33];
    if (v35)
    {
      v36 = v35;
      TTRIRemindersListDisclosureView.isExpanded.setter();

      return;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1004996E4()
{
  v0 = type metadata accessor for SectionEntityID();
  v58 = *(v0 - 8);
  v59 = v0;
  __chkstk_darwin(v0);
  v56 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for AppEntityID();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v61 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v63 = *(v17 - 8);
  v64 = v17;
  __chkstk_darwin(v17);
  v60 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMFeatureFlags();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, enum case for REMFeatureFlags.viewAnnotation(_:), v19, v21);
  v24 = REMFeatureFlags.isEnabled.getter();
  result = (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v26 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
    v27 = v62;
    swift_beginAccess();
    if ((*(v11 + 48))(v27 + v26, 1, v10))
    {
      (*(v63 + 56))(v16, 1, 1, v64);
      return sub_1000079B4(v16, &qword_10076E900);
    }

    (*(v11 + 16))(v13, v27 + v26, v10);
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v11 + 8))(v13, v10);
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    (*(v61 + 8))(v9, v7);
    v29 = v63;
    v28 = v64;
    if ((*(v63 + 48))(v16, 1, v64) == 1)
    {
      return sub_1000079B4(v16, &qword_10076E900);
    }

    v30 = v60;
    (*(v29 + 32))(v60, v16, v28);
    v31 = TTRRemindersListViewModel.SectionHeader.listObjectID.getter();
    if (!v31)
    {
      return (*(v29 + 8))(v30, v28);
    }

    v32 = v31;
    v33 = v48;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v34 = v51;
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v49 + 8))(v33, v50);
    v36 = v52;
    v35 = v53;
    v37 = (*(v52 + 88))(v34, v53);
    if (v37 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v36 + 96))(v34, v35);
      v38 = *v34;
    }

    else
    {
      if (v37 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
      {
        (*(v36 + 96))(v34, v35);
        v38 = *v34;
        v39 = &enum case for SectionEntityID.sectionless(_:);
LABEL_18:
        v40 = v38;
        v41 = v54;
        AppEntityID.init(objectID:)();
        v43 = v55;
        v42 = v56;
        v44 = v57;
        (*(v55 + 16))(v56, v41, v57);
        v46 = v58;
        v45 = v59;
        (*(v58 + 104))(v42, *v39, v59);
        type metadata accessor for SectionEntity();
        sub_10049C994(&qword_10076B078, &type metadata accessor for SectionEntity);
        UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

        (*(v46 + 8))(v42, v45);
        (*(v43 + 8))(v41, v44);
        return (*(v63 + 8))(v60, v64);
      }

      if (v37 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        (*(v36 + 8))(v34, v35);
      }

      else if (v37 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v38 = v32;
    }

    v39 = &enum case for SectionEntityID.sectioned(_:);
    goto LABEL_18;
  }

  return result;
}

id sub_100499F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  v8 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  v10 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  v12 = sub_100058000(&qword_100781830);
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator] = 0;
  v13 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_unsupportedTextDropHandler;
  *&v3[v13] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v14);

  return v15;
}

id sub_10049A168(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  v5 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  v7 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  v9 = sub_100058000(&qword_100781830);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator] = 0;
  v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_unsupportedTextDropHandler;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t type metadata accessor for TTRIRemindersListEditableSectionCell()
{
  result = qword_1007859C8;
  if (!qword_1007859C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049A4B8()
{
  sub_10049A61C(319, &qword_1007859D8, &type metadata accessor for TTRRemindersListEditableSectionNameViewModel);
  if (v0 <= 0x3F)
  {
    sub_10049A61C(319, &qword_100788230, &type metadata accessor for TTRITreeViewCellModel);
    if (v1 <= 0x3F)
    {
      sub_10009C0F8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10049A61C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10049A670@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &unk_1007884E0);
}

uint64_t sub_10049A730(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10049A7A0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_10017D654;
}

void sub_10049A868(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  v7 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.cell(_:))
  {
    [v3 bounds];
    goto LABEL_6;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryText(_:))
  {
    v17 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
    if (v17)
    {
      sub_10049C994(&qword_100785A98, type metadata accessor for TTRIRemindersListEditableSectionCell);
      v18 = v17;
      TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(to:)();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v16 = v26;
      v15 = v24;
      v14 = v22;
      v13 = v20;
      goto LABEL_6;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.primaryTextCaret(_:))
  {
    v32 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
    if (v32)
    {
      sub_10049C994(&qword_100785A98, type metadata accessor for TTRIRemindersListEditableSectionCell);
      v33 = v32;
      TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(toCaretIn:)();
      v34 = *&v39[1];
      v35 = *&v39[2];
      v36 = *&v39[3];
      v37 = *&v39[4];
      v31 = v40;

      if (v40)
      {
        v27 = v34;
        v28 = v35;
        v29 = v36;
        v30 = v37;
        goto LABEL_7;
      }

      v13 = v34;
      v14 = v35;
      v15 = v36;
      v16 = v37;
LABEL_6:
      [a2 convertRect:v3 fromCoordinateSpace:{v13, v14, v15, v16}];
      v31 = 0;
LABEL_7:
      *a3 = v27;
      *(a3 + 8) = v28;
      *(a3 + 16) = v29;
      *(a3 + 24) = v30;
      *(a3 + 32) = v31;
      return;
    }

    goto LABEL_20;
  }

  if (v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryText(_:) || v12 == enum case for TTRIShowRemindersEditableCellScrollingTarget.ResolvedTarget.secondaryTextCaret(_:))
  {
    v31 = 1;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    goto LABEL_7;
  }

LABEL_21:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10049AB64()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
  if (v1)
  {
    type metadata accessor for TTRIRemindersListEditableSectionNameTextView();
    v2 = v1;
    UITextInput<>.ttrBeginEditing()();
  }

  else
  {
    __break(1u);
  }
}

double sub_10049ABD4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10049A868(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

void sub_10049AC1C()
{
  [v0 bounds];
  v5 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator;
  v6 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  if ([v6 isHidden])
  {
    return;
  }

  v11 = *&v0[v5];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v11 bounds];
  [v0 convertRect:*&v0[v5] fromView:?];
  v22.origin.x = v7;
  v22.origin.y = v8;
  v22.size.width = v9;
  v22.size.height = v10;
  v19 = CGRectIntersection(v18, v22);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectIsEmpty(v19))
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MaxY = CGRectGetMaxY(v20);
    v21.origin.x = v7;
    v21.origin.y = v8;
    v21.size.width = v9;
    v21.size.height = v10;
    MinY = CGRectGetMinY(v21);
    sub_100068328(v7, v8, v9, v10, MaxY - MinY, 0.0);
  }
}

id sub_10049ADAC()
{
  ObjectType = swift_getObjectType();
  result = [v0 isEditing];
  v3 = result;
  if (result)
  {
    return (v3 ^ 1u);
  }

  if (*&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView])
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v5[3] = ObjectType;
      v5[4] = sub_10049C994(&qword_100785AA0, type metadata accessor for TTRIRemindersListEditableSectionCell);
      v5[0] = v0;
      v4 = v0;
      dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
      swift_unknownObjectRelease();
      sub_100004758(v5);
    }

    return (v3 ^ 1u);
  }

  __break(1u);
  return result;
}

id sub_10049AF6C()
{
  v1 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v3 = [result text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_13;
  }

  result = [result attributedPlaceholder];
  if (result)
  {
    v9 = result;
    v10 = [result string];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v11;
  }

  return result;
}

id sub_10049B098(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  sub_10049B150(a3, a4);
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10049B150(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  result = [v2 isEditing];
  if (result)
  {
    return 0;
  }

  v6 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  if (v6)
  {
    v7 = v6;
    v8 = TTRIRemindersListDisclosureView.isExpanded.getter();

    if (v8)
    {
      return a1();
    }

    else
    {
      return a2();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10049B24C()
{
  v1 = sub_10049AF6C();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = v2;
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

LABEL_9:
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v6 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100546970((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v3;
  *(v9 + 5) = v4;
LABEL_10:
  result = [v0 isEditing];
  if (result)
  {
    return v6;
  }

  v11 = *&v0[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_disclosureView];
  if (v11)
  {
    v12 = v11;
    v13 = TTRIRemindersListDisclosureView.isExpanded.getter();

    if (v13)
    {
      v14 = static TTRAccesibility.AccountsList.Action.Collapse.getter();
    }

    else
    {
      v14 = static TTRAccesibility.AccountsList.Action.Expand.getter();
    }

    v16 = v14;
    v17 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100546970(0, *(v6 + 2) + 1, 1, v6);
    }

    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      v6 = sub_100546970((v18 > 1), v19 + 1, 1, v6);
    }

    *(v6 + 2) = v19 + 1;
    v20 = &v6[16 * v19];
    *(v20 + 4) = v16;
    *(v20 + 5) = v17;
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_10049B44C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076E900);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = aBlock - v13;
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v31, "accessibilityCustomActions", v12);
  if (v15)
  {
    v16 = v15;
    sub_100003540(0, &qword_10076BCE0);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v32 = v17;
  if (([v1 isEditing] & 1) == 0)
  {
    v18 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
    swift_beginAccess();
    if (!(*(v8 + 48))(&v1[v18], 1, v7))
    {
      (*(v8 + 16))(v10, &v1[v18], v7);
      TTRRemindersListEditableSectionNameViewModel.item.getter();
      (*(v8 + 8))(v10, v7);
      TTRRemindersListViewModel.Item.sectionHeader.getter();
      (*(v4 + 8))(v6, v3);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v14, 1, v19) == 1)
      {
        sub_1000079B4(v14, &qword_10076E900);
      }

      else
      {
        v21 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
        (*(v20 + 8))(v14, v19);
        if (v21)
        {
          v22._countAndFlagsBits = 0x656D616E6552;
          v23._object = 0x8000000100670B80;
          v22._object = 0xE600000000000000;
          v23._countAndFlagsBits = 0xD00000000000003FLL;
          TTRLocalizedString(_:comment:)(v22, v23);
          sub_100003540(0, &qword_10076FCB0);
          v24 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
          v25 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v26 = objc_allocWithZone(UIAccessibilityCustomAction);

          v27 = String._bridgeToObjectiveC()();

          aBlock[4] = sub_10049C89C;
          aBlock[5] = v25;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10044E9F0;
          aBlock[3] = &unk_10072AC68;
          v28 = _Block_copy(aBlock);
          [v26 initWithName:v27 image:v24 actionHandler:v28];

          _Block_release(v28);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          return v32;
        }
      }
    }
  }

  return v17;
}

uint64_t sub_10049BA00()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v1 = result;
  if (!result)
  {
    return v1 != 0;
  }

  v2 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView;
  v3 = *(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
  if (v3)
  {
    type metadata accessor for TTRIRemindersListEditableSectionNameTextView();
    v4 = v3;
    UITextInput<>.ttrBeginEditing()();

    v5 = UIAccessibilityLayoutChangedNotification;
    v6 = *&v1[v2];
    UIAccessibilityPostNotification(v5, v6);

    return v1 != 0;
  }

  __break(1u);
  return result;
}

void sub_10049BBBC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_topSeparator);
  if (v1)
  {
    v2 = objc_opt_self();
    v4 = v1;
    v3 = [v2 tertiarySystemFillColor];
    TTRISeparator.backgroundColor.setter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10049BC40(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v81 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v71 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100058000(&qword_100768B50);
  __chkstk_darwin(v78);
  v5 = &v71 - v4;
  v6 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v6 - 8);
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = &v71 - v9;
  __chkstk_darwin(v10);
  v85 = &v71 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v89 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100058000(&qword_100768B60);
  __chkstk_darwin(v86);
  v15 = &v71 - v14;
  v16 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v16 - 8);
  v76 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v71 - v19;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  __chkstk_darwin(v23);
  v25 = &v71 - v24;
  v26 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v26 - 8);
  v83 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v71 - v29;
  __chkstk_darwin(v31);
  v33 = &v71 - v32;
  v77 = a1;
  sub_10000794C(a1, v25, &unk_100776BC0);
  v34 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v35 = *(v34 - 8);
  v88 = *(v35 + 48);
  v36 = v88(v25, 1, v34);
  v80 = v5;
  v84 = v35;
  if (v36 == 1)
  {
    sub_1000079B4(v25, &unk_100776BC0);
    v37 = 1;
  }

  else
  {
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v35 + 8))(v25, v34);
    v37 = 0;
  }

  v38 = *(v89 + 56);
  v38(v33, v37, 1, v12);
  sub_10000794C(v87, v22, &unk_100776BC0);
  v39 = v88(v22, 1, v34);
  v74 = v34;
  if (v39 == 1)
  {
    sub_1000079B4(v22, &unk_100776BC0);
    v40 = 1;
  }

  else
  {
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v84 + 8))(v22, v34);
    v40 = 0;
  }

  v38(v30, v40, 1, v12);
  v41 = *(v86 + 48);
  sub_10000794C(v33, v15, &qword_100772140);
  sub_10000794C(v30, &v15[v41], &qword_100772140);
  v42 = *(v89 + 48);
  if (v42(v15, 1, v12) == 1)
  {
    sub_1000079B4(v30, &qword_100772140);
    sub_1000079B4(v33, &qword_100772140);
    if (v42(&v15[v41], 1, v12) == 1)
    {
      sub_1000079B4(v15, &qword_100772140);
      goto LABEL_14;
    }

LABEL_12:
    v44 = &qword_100768B60;
    v45 = v15;
LABEL_26:
    sub_1000079B4(v45, v44);
    goto LABEL_27;
  }

  v43 = v83;
  sub_10000794C(v15, v83, &qword_100772140);
  if (v42(&v15[v41], 1, v12) == 1)
  {
    sub_1000079B4(v30, &qword_100772140);
    sub_1000079B4(v33, &qword_100772140);
    (*(v89 + 8))(v43, v12);
    goto LABEL_12;
  }

  v46 = v89;
  v47 = v73;
  (*(v89 + 32))(v73, &v15[v41], v12);
  sub_10049C994(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v46 + 8);
  v49(v47, v12);
  sub_1000079B4(v30, &qword_100772140);
  sub_1000079B4(v33, &qword_100772140);
  v49(v83, v12);
  sub_1000079B4(v15, &qword_100772140);
  if ((v48 & 1) == 0)
  {
LABEL_27:
    v64 = 1;
    return v64 & 1;
  }

LABEL_14:
  v50 = v75;
  sub_10000794C(v77, v75, &unk_100776BC0);
  v51 = v74;
  if (v88(v50, 1, v74) == 1)
  {
    sub_1000079B4(v50, &unk_100776BC0);
    v52 = 1;
    v54 = v80;
    v53 = v81;
    v55 = v79;
    v56 = v85;
  }

  else
  {
    v56 = v85;
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    (*(v84 + 8))(v50, v51);
    v52 = 0;
    v54 = v80;
    v53 = v81;
    v55 = v79;
  }

  v57 = v82;
  v58 = v76;
  v59 = *(v55 + 56);
  v59(v56, v52, 1, v53);
  sub_10000794C(v87, v58, &unk_100776BC0);
  if (v88(v58, 1, v51) == 1)
  {
    sub_1000079B4(v58, &unk_100776BC0);
    v60 = 1;
  }

  else
  {
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    (*(v84 + 8))(v58, v51);
    v60 = 0;
  }

  v59(v57, v60, 1, v53);
  v61 = *(v78 + 48);
  v62 = v85;
  sub_10000794C(v85, v54, &unk_10076B050);
  sub_10000794C(v57, v54 + v61, &unk_10076B050);
  v63 = *(v55 + 48);
  if (v63(v54, 1, v53) != 1)
  {
    v65 = v72;
    sub_10000794C(v54, v72, &unk_10076B050);
    if (v63(v54 + v61, 1, v53) != 1)
    {
      v67 = v54 + v61;
      v68 = v71;
      (*(v55 + 32))(v71, v67, v53);
      sub_10049C994(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle);
      v69 = dispatch thunk of static Equatable.== infix(_:_:)();
      v70 = *(v55 + 8);
      v70(v68, v53);
      sub_1000079B4(v82, &unk_10076B050);
      sub_1000079B4(v85, &unk_10076B050);
      v70(v65, v53);
      sub_1000079B4(v54, &unk_10076B050);
      v64 = v69 ^ 1;
      return v64 & 1;
    }

    sub_1000079B4(v82, &unk_10076B050);
    sub_1000079B4(v85, &unk_10076B050);
    (*(v55 + 8))(v65, v53);
    goto LABEL_25;
  }

  sub_1000079B4(v57, &unk_10076B050);
  sub_1000079B4(v62, &unk_10076B050);
  if (v63(v54 + v61, 1, v53) != 1)
  {
LABEL_25:
    v44 = &qword_100768B50;
    v45 = v54;
    goto LABEL_26;
  }

  sub_1000079B4(v54, &unk_10076B050);
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_10049C7B8()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v4[3] = ObjectType;
    v4[4] = sub_10049C994(&qword_100785AA0, type metadata accessor for TTRIRemindersListEditableSectionCell);
    v4[0] = v0;
    v3 = v0;
    dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
    swift_unknownObjectRelease();
    return sub_100004758(v4);
  }

  return result;
}

void sub_10049C8A4()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = v0 + ((v4 + *(v5 + 80) + 9) & ~*(v5 + 80));

  sub_10049867C(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_10049C994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10049C9E4()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10049CA50@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (*a1)
  {
    static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)();
  }

  else
  {
    static TTRLocalizableStrings.Sections.newSectionActionText(listLayout:)();
  }

  sub_100003540(0, &qword_10076BA60);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = v7;

  result = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  *a4 = result;
  return result;
}

UIMenu sub_10049CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v3 = sub_10007DDE0(sub_10049CC6C, v8, &off_1007125E0);
  if (v3 >> 62)
  {
    sub_100003540(0, &qword_10076C550);
    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    preferredElementSize = v3;
  }

  sub_100003540(0, &unk_10076B890);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v12, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

uint64_t sub_10049CCBC()
{
  v1 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A56AC(v0, v3, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_100058000(&qword_100776AE8);

        v6 = type metadata accessor for Date();
        (*(*(v6 - 8) + 8))(v3, v6);
        return 4;
      }

      else
      {
        sub_100058000(&qword_100776AE8);

        v11 = type metadata accessor for Date();
        (*(*(v11 - 8) + 8))(v3, v11);
        return 5;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_100058000(&qword_100776AE8);

      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 8))(v3, v10);
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v7 = *(sub_100058000(&qword_100776AE0) + 48);

      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 8);
      v9(&v3[v7], v8);
      v9(v3, v8);
      return 6;
    }

    else
    {
      sub_100058000(&qword_100776AD8);

      v12 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v12 - 8) + 8))(v3, v12);
      return 7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return 1;
  }

  else
  {
    return 8;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.DateOptions.Bare.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v1 = 0x7961646F54;
        v3 = 0xD00000000000001DLL;
        v4 = 0x800000010067A6B0;
        v5 = 0xD00000000000002CLL;
        v6 = 0x800000010067A6D0;
        v2 = 0xE500000000000000;
      }

      else
      {
        v1 = 0x7461442061206E4FLL;
        v3 = 0xD00000000000001FLL;
        v4 = 0x800000010067A700;
        v5 = 0xD000000000000030;
        v6 = 0x800000010067A720;
        v2 = 0xE900000000000065;
      }
    }

    else
    {
      if (a1)
      {
        v4 = 0x800000010067A660;
        v5 = 0xD00000000000002ALL;
        v6 = 0x800000010067A680;
        v3 = 0xD00000000000001BLL;
        v1 = 7958081;
      }

      else
      {
        v4 = 0x800000010067A610;
        v5 = 0xD00000000000002ALL;
        v6 = 0x800000010067A630;
        v3 = 0xD00000000000001BLL;
        v1 = 6710863;
      }

      v2 = 0xE300000000000000;
    }

    return TTRLocalizedString(_:value:comment:)(*&v3, *&v1, *&v5)._countAndFlagsBits;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v1 = 0x612065726F666542;
      v2 = 0xED00006574614420;
      v3 = 0xD000000000000023;
      v4 = 0x800000010067A760;
      v5 = 0xD000000000000034;
      v6 = 0x800000010067A790;
    }

    else
    {
      v1 = 0x2061207265746641;
      v2 = 0xEC00000065746144;
      v3 = 0xD000000000000022;
      v4 = 0x800000010067A7D0;
      v5 = 0xD000000000000033;
      v6 = 0x800000010067A800;
    }

    return TTRLocalizedString(_:value:comment:)(*&v3, *&v1, *&v5)._countAndFlagsBits;
  }

  if (a1 == 6)
  {
    v8._countAndFlagsBits = 0x6569666963657053;
    v8._object = 0xEF65676E61522064;
    v9._countAndFlagsBits = 0xD000000000000027;
    v9._object = 0x800000010067A840;
    v10._countAndFlagsBits = 0xD000000000000036;
    v10._object = 0x800000010067A870;
    return TTRLocalizedString(_:value:comment:)(v9, v8, v10)._countAndFlagsBits;
  }

  else
  {
    if (a1 == 7)
    {
      v1 = 0x65766974616C6552;
      v2 = 0xEE0065676E615220;
      v3 = 0xD000000000000026;
      v4 = 0x800000010067A8B0;
      v5 = 0xD000000000000035;
      v6 = 0x800000010067A8E0;
      return TTRLocalizedString(_:value:comment:)(*&v3, *&v1, *&v5)._countAndFlagsBits;
    }

    v11._countAndFlagsBits = 0x65746144206F4ELL;
    v12._countAndFlagsBits = 0xD00000000000001FLL;
    v12._object = 0x800000010067A920;
    v13._countAndFlagsBits = 0xD00000000000002ELL;
    v13._object = 0x800000010067A940;
    v11._object = 0xE700000000000000;
    return TTRLocalizedString(_:value:comment:)(v12, v11, v13)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.TimeOptions.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (!a1)
    {
      v14._countAndFlagsBits = 0xD00000000000001BLL;
      v15._countAndFlagsBits = 0xD00000000000002ALL;
      v14._object = 0x800000010067B100;
      v15._object = 0x800000010067B120;
      v16._countAndFlagsBits = 6710863;
      v16._object = 0xE300000000000000;
      return TTRLocalizedString(_:value:comment:)(v14, v16, v15)._countAndFlagsBits;
    }

    if (a1 == 1)
    {
      v7._countAndFlagsBits = 0xD00000000000001BLL;
      v8._countAndFlagsBits = 0xD00000000000002ALL;
      v7._object = 0x800000010067B150;
      v8._object = 0x800000010067B170;
      v9._countAndFlagsBits = 7958081;
      v9._object = 0xE300000000000000;
      return TTRLocalizedString(_:value:comment:)(v7, v9, v8)._countAndFlagsBits;
    }

    v17 = "in Custom SmartList Detail";
    v18 = "LIST_DETAIL_TIME_OPTION_MORNING";
    v1 = 0xD00000000000001FLL;
    v19 = 1852993357;
    goto LABEL_15;
  }

  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v11._countAndFlagsBits = 0xD00000000000001DLL;
      v12._countAndFlagsBits = 0xD00000000000002CLL;
      v13._countAndFlagsBits = 0x746867694ELL;
      v11._object = 0x800000010067B2B0;
      v12._object = 0x800000010067B2D0;
      v13._object = 0xE500000000000000;
      return TTRLocalizedString(_:value:comment:)(v11, v13, v12)._countAndFlagsBits;
    }

    v17 = "t in Custom SmartList Detail";
    v18 = "LIST_DETAIL_TIME_OPTION_NOTIME";
    v1 = 0xD00000000000001ELL;
    v2 = 0x656D6954206F4ELL;
    goto LABEL_17;
  }

  if (a1 != 3)
  {
    v17 = "SmartList Detail";
    v18 = "LIST_DETAIL_TIME_OPTION_EVENING";
    v1 = 0xD00000000000001FLL;
    v19 = 1852143173;
LABEL_15:
    v2 = v19 | 0x676E6900000000;
LABEL_17:
    v3 = v17 | 0x8000000000000000;
    v5 = v18 | 0x8000000000000000;
    v6 = 0xE700000000000000;
    v4 = 0xD00000000000002ELL;
    return TTRLocalizedString(_:value:comment:)(*&v1, *&v2, *&v4)._countAndFlagsBits;
  }

  v1 = 0xD000000000000021;
  v2 = 0x6F6F6E7265746641;
  v3 = 0x800000010067B1F0;
  v4 = 0xD000000000000030;
  v5 = 0x800000010067B220;
  v6 = 0xE90000000000006ELL;
  return TTRLocalizedString(_:value:comment:)(*&v1, *&v2, *&v4)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.PriorityOptions.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v17._countAndFlagsBits = 0x6D756964654DLL;
      v18._countAndFlagsBits = 0xD000000000000024;
      v18._object = 0x800000010067AE60;
      v19._countAndFlagsBits = 0xD000000000000033;
      v19._object = 0x800000010067AE90;
      v17._object = 0xE600000000000000;
      return TTRLocalizedString(_:value:comment:)(v18, v17, v19)._countAndFlagsBits;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD000000000000022;
        v8 = 0x800000010067AED0;
        v9 = 0xD000000000000031;
        v10 = 0x800000010067AF00;
        v11 = 1751607624;
        v12 = 0xE400000000000000;
      }

      else
      {
        v11 = 0x726F697250206F4ELL;
        v12 = 0xEB00000000797469;
        v7 = 0xD000000000000029;
        v8 = 0x800000010067AF40;
        v9 = 0xD000000000000038;
        v10 = 0x800000010067AF70;
      }

      return TTRLocalizedString(_:value:comment:)(*&v7, *&v11, *&v9)._countAndFlagsBits;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x800000010067AD80;
      v2 = 0xD000000000000030;
      v3 = 0x800000010067ADB0;
      v4 = 0xD000000000000021;
      v5 = 7958081;
    }

    else
    {
      v1 = 0x800000010067ADF0;
      v2 = 0xD000000000000030;
      v3 = 0x800000010067AE20;
      v4 = 0xD000000000000021;
      v5 = 7827276;
    }

    v6 = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(*&v4, *&v5, *&v2)._countAndFlagsBits;
  }

  else
  {
    v14._object = 0x800000010067AD10;
    v15._countAndFlagsBits = 0xD000000000000030;
    v15._object = 0x800000010067AD40;
    v14._countAndFlagsBits = 0xD000000000000021;
    v16._countAndFlagsBits = 6710863;
    v16._object = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(v14, v16, v15)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.FlaggedOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x64656767616C46;
      v2 = 0xD000000000000022;
      v3 = 0x800000010067B020;
      v4 = 0xD000000000000031;
      v5 = 0x800000010067B050;
      v6 = 0xE700000000000000;
    }

    else
    {
      v1 = 0x67616C4620746F4ELL;
      v6 = 0xEB00000000646567;
      v2 = 0xD000000000000026;
      v3 = 0x800000010067B090;
      v4 = 0xD000000000000035;
      v5 = 0x800000010067B0C0;
    }

    return TTRLocalizedString(_:value:comment:)(*&v2, *&v1, *&v4)._countAndFlagsBits;
  }

  else
  {
    v7._object = 0x800000010067AFD0;
    v8._countAndFlagsBits = 0xD00000000000002DLL;
    v8._object = 0x800000010067AFF0;
    v7._countAndFlagsBits = 0xD00000000000001ELL;
    v9._countAndFlagsBits = 6710863;
    v9._object = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(v7, v9, v8)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.LocationOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x6369666963657053;
      v2 = 0xD000000000000024;
      v3 = 0x800000010067AA60;
      v4 = 0xD000000000000033;
      v5 = 0x800000010067AA90;
      v6 = 0xE800000000000000;
    }

    else
    {
      v1 = 0x7461636F4C206F4ELL;
      v6 = 0xEB000000006E6F69;
      v2 = 0xD000000000000027;
      v3 = 0x800000010067AAD0;
      v4 = 0xD000000000000036;
      v5 = 0x800000010067AB00;
    }

    return TTRLocalizedString(_:value:comment:)(*&v2, *&v1, *&v4)._countAndFlagsBits;
  }

  else
  {
    v7._object = 0x800000010067AA10;
    v8._countAndFlagsBits = 0xD00000000000002ELL;
    v8._object = 0x800000010067AA30;
    v7._countAndFlagsBits = 0xD00000000000001FLL;
    v9._countAndFlagsBits = 6710863;
    v9._object = 0xE300000000000000;
    return TTRLocalizedString(_:value:comment:)(v7, v9, v8)._countAndFlagsBits;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.HashtagOptions.localizedOptionString.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = "ag in Custom SmartList Detail";
      v2 = "OPTION_ANY_SELECTED";
      v3 = "Tag option Any Selected Tags in Custom SmartList Detail";
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      v1 = "Custom SmartList Detail";
      v2 = "OPTION_ALL_SELECTED";
      v3 = "Tag option All Selected Tags in Custom SmartList Detail";
LABEL_10:
      v10._countAndFlagsBits = 0xD000000000000023;
      v10._object = (v1 | 0x8000000000000000);
      v11._object = (v2 | 0x8000000000000000);
      v12._countAndFlagsBits = 0xD000000000000037;
      v12._object = ((v3 - 32) | 0x8000000000000000);
      v11._countAndFlagsBits = 0xD000000000000011;
      return TTRLocalizedString(_:value:comment:)(v10, v11, v12)._countAndFlagsBits;
    }

    v14 = "Custom SmartList Detail";
    v15 = "LIST_DETAIL_TAG_OPTION_UNTAGGED";
    v8 = 0x73676154206F4ELL;
    v4 = 0xD00000000000001FLL;
    goto LABEL_13;
  }

  if (a1)
  {
    v14 = "n Custom Smartlist Detail";
    v15 = "LIST_DETAIL_TAG_OPTION_ANY";
    v8 = 0x67615420796E41;
    v4 = 0xD00000000000001ALL;
LABEL_13:
    v5 = v14 | 0x8000000000000000;
    v6 = 0xD00000000000002DLL;
    v7 = v15 | 0x8000000000000000;
    v9 = 0xE700000000000000;
    return TTRLocalizedString(_:value:comment:)(*&v4, *&v8, *&v6)._countAndFlagsBits;
  }

  v4 = 0xD00000000000001ALL;
  v5 = 0x800000010067A3B0;
  v6 = 0xD000000000000029;
  v7 = 0x800000010067A3D0;
  v8 = 6710863;
  v9 = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(*&v4, *&v8, *&v6)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = "S_OPTION_INCLUDE";
      v2 = 0x6564756C636E49;
      v3 = 0x800000010067ABB0;
    }

    else
    {
      v1 = "S_OPTION_EXCLUDE";
      v3 = 0x800000010067AC10;
      v2 = 0x6564756C637845;
    }

    v5 = 0xD00000000000002FLL;
    v6 = v1 | 0x8000000000000000;
    v4 = 0xD000000000000020;
    v7 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xD00000000000001CLL;
    v3 = 0x800000010067AB60;
    v5 = 0xD00000000000002BLL;
    v6 = 0x800000010067AB80;
    v2 = 6710863;
    v7 = 0xE300000000000000;
  }

  return TTRLocalizedString(_:value:comment:)(*(&v3 - 1), *&v2, *&v5)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.FilterOperationOptions.localizedOptionString.getter(char a1)
{
  if (a1)
  {
    v1 = 0x800000010067B3E0;
    v2 = 0xD000000000000044;
    v3 = 0x800000010067B400;
    v4 = 0xD000000000000016;
    v5 = 7105633;
  }

  else
  {
    v1 = 0x800000010067B370;
    v2 = 0xD000000000000045;
    v3 = 0x800000010067B390;
    v4 = 0xD000000000000016;
    v5 = 7958113;
  }

  v6 = 0xE300000000000000;
  return TTRLocalizedString(_:value:comment:)(*&v4, *&v5, *&v2)._countAndFlagsBits;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listsOption.getter()
{
  v1 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A56AC(v0, v3, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_100058000(&qword_100776AA8);
  sub_1000079B4(v3 + *(v6 + 48), &qword_100776AA0);
  return v5;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100058000(&qword_100776AA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1004A56AC(v2, v6, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v12 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {

    v10 = sub_100058000(&qword_100776AA8);
    sub_100016588(v6 + *(v10 + 48), v9, &qword_100776AA0);
    return sub_100016588(v9, a1, &qword_100776AA0);
  }
}

uint64_t static TTRSmartListFilterEditorViewModel.helpAnchor(for:)()
{
  v0 = sub_100058000(&qword_100776A40);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_100058000(&qword_100776A48);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v6 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  TTRHelpAnchor.MacOSHelpAnchor.init(helpAnchor:)();
  v7 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  return TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
}

uint64_t TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)@<X0>(void *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v180 = a2;
  v165 = sub_100058000(&qword_10076D018);
  __chkstk_darwin(v165);
  v187 = &v161 - v5;
  v179 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v179);
  v184 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076D020);
  __chkstk_darwin(v7 - 8);
  v182 = &v161 - v8;
  v183 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v186 = *(v183 - 8);
  __chkstk_darwin(v183);
  v173 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v175 = &v161 - v11;
  v12 = sub_100058000(&qword_100776AB0);
  __chkstk_darwin(v12 - 8);
  v189 = &v161 - v13;
  v14 = sub_100058000(&qword_10076D028);
  __chkstk_darwin(v14 - 8);
  v181 = &v161 - v15;
  v171 = type metadata accessor for Date();
  v172 = *(v171 - 8);
  __chkstk_darwin(v171);
  v166 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  object = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v18 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100058000(&qword_100781C58);
  __chkstk_darwin(v169);
  v170 = (&v161 - v19);
  v20 = sub_100058000(&qword_10076D030);
  __chkstk_darwin(v20 - 8);
  v22 = &v161 - v21;
  v23 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v24 = *(v23 - 1);
  __chkstk_darwin(v23);
  v26 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v177 = &v161 - v28;
  v29 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v29);
  v188 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100058000(&qword_100785B78);
  __chkstk_darwin(v31);
  v33 = &v161 - v32;
  v176 = a3;
  v185 = a1;
  if (!a1)
  {
    v41 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
    v42 = *(*(v41 - 8) + 56);
    v178 = 1;
    v42(v33, 1, 1, v41);
    (*(v24 + 56))(v22, 1, 1, v23);
    goto LABEL_7;
  }

  v174 = v29;
  v34 = a1;
  REMCustomSmartListFilterDescriptor.operation.getter();

  v35 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v33, 0, 1, v35);
  v37 = (*(v36 + 88))(v33, v35);
  if (v37 != enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:) && v37 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
LABEL_85:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_86:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_87;
  }

  v178 = v37 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
  v38 = v34;
  REMCustomSmartListFilterDescriptor.date.getter();

  v39 = v23;
  v40 = (*(v24 + 48))(v22, 1, v23);
  a1 = v185;
  if (v40 != 1)
  {
    v47 = v177;
    (*(v24 + 32))();
    (*(v24 + 16))(v26, v47, v23);
    v48 = (*(v24 + 88))(v26, v23);
    a3 = v176;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:))
    {
      (*(v24 + 8))(v47, v23);
      (*(v24 + 96))(v26, v23);
      v43 = v188;
      *v188 = *v26;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      v44 = v189;
      v45 = v186;
      v39 = v187;
      v46 = v183;
      goto LABEL_32;
    }

    v164 = v38;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:))
    {
      v52 = 0xD000000000000019;
      (*(v24 + 96))(v26, v23);
      v43 = v170;
      sub_100016588(v26, v170, &qword_100781C58);
      v53._countAndFlagsBits = 0xD00000000000001BLL;
      v53._object = 0x80000001006890D0;
      v54._countAndFlagsBits = 0xD000000000000030;
      v54._object = 0x80000001006890F0;
      v55._countAndFlagsBits = 1836020294;
      v55._object = 0xE400000000000000;
      v56 = TTRLocalizedString(_:value:comment:)(v53, v55, v54);
      countAndFlagsBits = v56._countAndFlagsBits;
      object = v56._object;
      if (qword_100767358 != -1)
      {
        goto LABEL_81;
      }

      goto LABEL_15;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:))
    {
      (*(v24 + 96))(v26, v23);
      v81 = object[4];
      (v81)(v18, v26, countAndFlagsBits);
      v82 = v81;
      v83 = _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO30dateOptionRelativeRangeDetailsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
      v85 = v84;
      (*(v24 + 8))(v177, v23);
      v86 = sub_100058000(&qword_100776AD8);
      v87 = &v188[*(v86 + 48)];
      v43 = v188;
      v82();
      *v87 = 0;
      *(v87 + 1) = 0;
      *(v87 + 2) = v83;
      *(v87 + 3) = v85;
      v38 = v164;
      a1 = v185;
      goto LABEL_11;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:))
    {
      (*(v24 + 96))(v26, v23);
      v88 = v166;
      v172 = *(v172 + 32);
      (v172)(v166, v26, v171);
      v170 = v23;
      v39 = v187;
      v43 = v188;
      if (qword_100767358 != -1)
      {
        swift_once();
      }

      v89 = qword_100785B70;
      v90 = v88;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v92 = [v89 stringFromDate:isa];

      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      (*(v24 + 8))(v177, v170);
      v96 = v43 + *(sub_100058000(&qword_100776AE8) + 48);
      (v172)(v43, v90, v171);
      *v96 = 0;
      *(v96 + 1) = 0;
      *(v96 + 2) = v93;
      *(v96 + 3) = v95;
      goto LABEL_30;
    }

    v39 = v187;
    v97 = v172;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:))
    {
      (*(v24 + 96))(v26, v23);
      v98 = *(v97 + 32);
      v172 = v97 + 32;
      v99 = v166;
      v100 = v26;
      v101 = v171;
      v170 = v98;
      (v98)(v166, v100, v171);
      if (qword_100767358 == -1)
      {
LABEL_24:
        v102 = qword_100785B70;
        v103 = Date._bridgeToObjectiveC()().super.isa;
        v104 = [v102 stringFromDate:v103];

        v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = v106;

        (*(v24 + 8))(v177, v23);
        v108 = sub_100058000(&qword_100776AE8);
        v43 = v188;
        v109 = &v188[*(v108 + 48)];
        (v170)(v188, v99, v101);
        *v109 = 0;
        *(v109 + 1) = 0;
        *(v109 + 2) = v105;
        *(v109 + 3) = v107;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        v44 = v189;
        goto LABEL_31;
      }

LABEL_82:
      swift_once();
      goto LABEL_24;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:))
    {
      (*(v24 + 96))(v26, v23);
      v110 = *(v97 + 32);
      v172 = v97 + 32;
      v99 = v166;
      v111 = v26;
      v101 = v171;
      v170 = v110;
      (v110)(v166, v111, v171);
      if (qword_100767358 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_82;
    }

    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:))
    {
      (*(v24 + 8))(v47, v23);
      v43 = v188;
      goto LABEL_30;
    }

    v44 = v189;
    v46 = v183;
    v38 = v164;
    if (v48 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:))
    {
      (*(v24 + 8))(v177, v23);
      v43 = v188;
      swift_storeEnumTagMultiPayload();
      v45 = v186;
      goto LABEL_32;
    }

LABEL_87:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  a3 = v176;
LABEL_7:
  sub_1000079B4(v22, &qword_10076D030);
  v43 = v188;
  swift_storeEnumTagMultiPayload();
  v44 = v189;
  v45 = v186;
  v39 = v187;
  if (!a1)
  {
    v49 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
    v50 = v181;
    (*(*(v49 - 8) + 56))(v181, 1, 1, v49);
    LODWORD(v181) = _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO4timeAE19ReminderKitInternal014REMCustomSmartcD10DescriptorC0dH0OSg_tcfC_0(v50);
    LODWORD(v177) = _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO14priorityLevelsAESaySo011REMReminderH5LevelVGSg_tcfC_0(0);
    v51 = v182;
    (*(v45 + 56))(v182, 1, 1, v183);
    LODWORD(v183) = 0;
    goto LABEL_39;
  }

  v38 = a1;
  v46 = v183;
  while (1)
  {
LABEL_32:
    v112 = v38;
    v113 = v181;
    REMCustomSmartListFilterDescriptor.time.getter();

    LODWORD(v181) = _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO4timeAE19ReminderKitInternal014REMCustomSmartcD10DescriptorC0dH0OSg_tcfC_0(v113);
    v114 = v112;
    v115 = REMCustomSmartListFilterDescriptor.priorities.getter();

    LODWORD(v177) = _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO14priorityLevelsAESaySo011REMReminderH5LevelVGSg_tcfC_0(v115);
    v116 = v114;
    v117 = REMCustomSmartListFilterDescriptor.flagged.getter();

    if (v117)
    {
      v118 = 1;
    }

    else
    {
      v118 = 2;
    }

    if (v117 == 2)
    {
      v118 = 0;
    }

    LODWORD(v183) = v118;
    v119 = v116;
    v120 = v182;
    REMCustomSmartListFilterDescriptor.location.getter();

    if ((*(v45 + 48))(v120, 1, v46) != 1)
    {
      v123 = v175;
      (*(v45 + 32))(v175, v120, v46);
      v124 = v173;
      (*(v45 + 16))(v173, v123, v46);
      v125 = (*(v45 + 88))(v124, v46);
      if (v125 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:))
      {
        (*(v45 + 96))(v124, v46);
        v126 = static TTRLocalizableStrings.LocationPicker.vehicleEventText(_:)();
        v128 = v127;
        v129 = 0;
        v130 = 0;
        v131 = 0x80;
      }

      else
      {
        if (v125 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:))
        {
          v121 = v184;
          if (v125 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.any(_:))
          {
            v24 = 0;
          }

          else
          {
            if (v125 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:))
            {
              goto LABEL_86;
            }

            v24 = 2;
          }

          (*(v186 + 8))(v123, v46);
          v142 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
          (*(*(v142 - 8) + 56))(v44, 1, 1, v142);
          goto LABEL_52;
        }

        (*(v45 + 96))(v124, v46);
        v126 = *v124;
        v128 = *(v124 + 1);
        v133 = *(v124 + 2);
        v134 = *(v124 + 3);
        v135 = *(v124 + 4);
        v130 = *(v124 + 5);
        v136 = objc_allocWithZone(CLCircularRegion);
        v137 = String._bridgeToObjectiveC()();
        v138 = v136;
        v123 = v175;
        v129 = [v138 initWithCenter:v137 radius:v133 identifier:{v134, v135}];

        v45 = v186;
        v131 = 0;
      }

      (*(v45 + 8))(v123, v46);
      v139 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
      v140 = *(v139 + 24);
      v141 = type metadata accessor for TTRLocationQuickPickItem();
      v24 = 1;
      v44 = v189;
      (*(*(v141 - 8) + 56))(&v189[v140], 1, 1, v141);
      *v44 = v126;
      *(v44 + 8) = v128;
      *(v44 + 16) = v129;
      *(v44 + 24) = v130;
      *(v44 + 32) = v131;
      *(v44 + 40) = _swiftEmptyArrayStorage;
      (*(*(v139 - 8) + 56))(v44, 0, 1, v139);
      a3 = v176;
      v121 = v184;
      a1 = v185;
      v39 = v187;
      v43 = v188;
      goto LABEL_52;
    }

    v51 = v120;
LABEL_39:
    v121 = v184;
    sub_1000079B4(v51, &qword_10076D020);
    v122 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
    (*(*(v122 - 8) + 56))(v44, 1, 1, v122);
    if (!a1)
    {
      v132 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
      (*(*(v132 - 8) + 56))(v39, 1, 1, v132);
      LOBYTE(v24) = 0;
      goto LABEL_69;
    }

    v24 = 0;
    v119 = a1;
LABEL_52:
    v143 = v119;
    REMCustomSmartListFilterDescriptor.lists.getter();

    v144 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
    v145 = *(v144 - 8);
    if ((*(v145 + 48))(v39, 1, v144) == 1)
    {
      goto LABEL_69;
    }

    v52 = a1;
    if ((*(v145 + 88))(v39, v144) != enum case for REMCustomSmartListFilterDescriptor.FilterLists.lists(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_85;
    }

    (*(v145 + 96))(v39, v144);
    v147 = *v39;
    v146 = v39[1];
    if (*v39 >> 62)
    {
      break;
    }

    if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

LABEL_63:

    if (v146 >> 62)
    {
      goto LABEL_77;
    }

    a1 = v52;
    if (!*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_78;
    }

LABEL_65:
    if ((v146 & 0xC000000000000001) != 0)
    {
      v152 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_68;
    }

    if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v152 = *(v146 + 32);
LABEL_68:
      v153 = v152;

      v154 = *(sub_100058000(&qword_100776AA8) + 48);
      *v121 = v153;
      v155 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      (*(*(v155 - 8) + 56))(&v121[v154], 1, 1, v155);
      goto LABEL_69;
    }

    __break(1u);
LABEL_81:
    swift_once();
LABEL_15:
    v57 = qword_100785B70;
    v58 = Date._bridgeToObjectiveC()().super.isa;
    v59 = [v57 stringFromDate:v58];

    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v163 = v60;

    v61._object = 0x8000000100689130;
    v62._countAndFlagsBits = v52 + 21;
    v62._object = 0x8000000100689150;
    v61._countAndFlagsBits = 0xD000000000000019;
    v63._countAndFlagsBits = 28500;
    v63._object = 0xE200000000000000;
    v64 = TTRLocalizedString(_:value:comment:)(v61, v63, v62);
    v162 = v64._countAndFlagsBits;
    v161 = v64._object;
    v169 = *(v169 + 36);
    v65 = qword_100785B70;
    v66 = Date._bridgeToObjectiveC()().super.isa;
    v67 = [v65 stringFromDate:v66];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    (*(v24 + 8))(v177, v39);
    v71 = sub_100058000(&qword_100776AE0);
    v72 = v71[12];
    v73 = v188;
    v74 = &v188[v71[16]];
    v75 = &v188[v71[20]];
    v76 = *(v172 + 32);
    v77 = v171;
    v76(v188, v43, v171);
    v76(&v73[v72], (v43 + v169), v77);
    v78 = object;
    *v74 = countAndFlagsBits;
    v74[1] = v78;
    v79 = v163;
    v74[2] = v166;
    v74[3] = v79;
    v43 = v73;
    v80 = v161;
    *v75 = v162;
    v75[1] = v80;
    v75[2] = v68;
    v75[3] = v70;
    swift_storeEnumTagMultiPayload();
    a3 = v176;
    a1 = v185;
    v44 = v189;
    v39 = v187;
LABEL_31:
    v46 = v183;
    v45 = v186;
    v38 = v164;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_63;
  }

LABEL_56:

  if ((v147 & 0xC000000000000001) != 0)
  {
    v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_59;
  }

  if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v148 = *(v147 + 32);
LABEL_59:
    v149 = v148;

    v150 = *(sub_100058000(&qword_100776AA8) + 48);
    *v121 = v149;
    v151 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    (*(*(v151 - 8) + 56))(&v121[v150], 1, 1, v151);
    a1 = v52;
    goto LABEL_69;
  }

  __break(1u);
LABEL_77:
  a1 = v52;
  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_65;
  }

LABEL_78:

LABEL_69:
  swift_storeEnumTagMultiPayload();
  if (v180)
  {

    v156 = 1;
  }

  else if (a1)
  {
    v157 = a1;
    v158 = REMCustomSmartListFilterDescriptor.isEmpty.getter();

    v156 = v158 ^ 1;
  }

  else
  {
    v156 = 0;
  }

  *a3 = v178;
  v159 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  sub_1004A55C0(v43, &a3[v159[5]], type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  a3[v159[6]] = v181;
  a3[v159[7]] = v24;
  sub_100016588(v44, &a3[v159[8]], &qword_100776AB0);
  a3[v159[9]] = v177;
  a3[v159[10]] = v183;
  result = sub_1004A55C0(v121, &a3[v159[11]], type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  a3[v159[12]] = v156 & 1;
  return result;
}

_UNKNOWN **TTRSmartListFilterEditorViewModel.PriorityOptions.priorities.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = &off_100712AE0;
  v3 = &off_100712B08;
  if (a1 != 4)
  {
    v3 = &off_100712B30;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = &off_100712A80;
  if (a1 != 1)
  {
    v4 = &off_100712AB8;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listID.getter()
{
  v1 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A56AC(v0, v3, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  v4 = 0;
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v4 = *v3;
    v5 = sub_100058000(&qword_100776AA8);
    sub_1000079B4(v3 + *(v5 + 48), &qword_100776AA0);
  }

  return v4;
}

uint64_t TTRSmartListFilterEditorViewModel.ListsData.listData.setter(uint64_t a1)
{
  v3 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A56AC(v1, v5, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v9 = a1;
  }

  else
  {
    sub_1004A8100(v1, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    v6 = *v5;
    v7 = *(sub_100058000(&qword_100776AA8) + 48);
    v8 = v5 + v7;
    *v1 = v6;
    sub_100016588(a1, v1 + v7, &qword_100776AA0);
    swift_storeEnumTagMultiPayload();
    v9 = v8;
  }

  return sub_1000079B4(v9, &qword_100776AA0);
}

Reminders::TTRSmartListFilterEditorViewModel::FilterOperationOptions_optional __swiftcall TTRSmartListFilterEditorViewModel.FilterOperationOptions.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = Reminders_TTRSmartListFilterEditorViewModel_FilterOperationOptions_all;
  }

  else
  {
    v1.value = Reminders_TTRSmartListFilterEditorViewModel_FilterOperationOptions_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10049FCB8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9Reminders33TTRSmartListFilterEditorViewModelV11DateOptionsO4BareO8rawValueAGSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10049FD28@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t TTRSmartListFilterEditorViewModel.LocationData.quickPickItems.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

Reminders::TTRSmartListFilterEditorViewModel::ListsOptions_optional __swiftcall TTRSmartListFilterEditorViewModel.ListsOptions.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t TTRSmartListFilterEditorViewModel.ListData.color.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0) + 20);
  v4 = type metadata accessor for TTRListColors.Color();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRSmartListFilterEditorViewModel.listsData.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRSmartListFilterEditorViewModel(0) + 44);

  return sub_1004A5714(a1, v3);
}

Swift::Int TTRSmartListFilterEditorViewModel.HelpTopic.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1004A02F8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_1004A0340()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setDateStyle:1];
  result = [v0 setTimeStyle:0];
  qword_100785B70 = v0;
  return result;
}

void *static TTRSmartListFilterEditorViewModel.FilterOperationOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 2, 0);
  v0._object = 0x800000010067B370;
  v1._countAndFlagsBits = 0xD000000000000045;
  v1._object = 0x800000010067B390;
  v0._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 7958113;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    object = v5._object;
    countAndFlagsBits = v5._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._object = 0x800000010067B3E0;
  v10._countAndFlagsBits = 0xD000000000000044;
  v10._object = 0x800000010067B400;
  v9._countAndFlagsBits = 0xD000000000000016;
  v11._countAndFlagsBits = 7105633;
  v11._object = 0xE300000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v9, v11, v10);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v13 = v14._object;
    v12 = v14._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.HashtagOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 5, 0);
  v0 = 0;
  do
  {
    v1 = *(&off_100712E48 + v0 + 32);
    if (v1 <= 1)
    {
      v2 = 0xD00000000000001ALL;
      if (!*(&off_100712E48 + v0 + 32))
      {
        v3 = 0x800000010067A3B0;
        v5 = 0xD000000000000029;
        v7 = 0x800000010067A3D0;
        v8 = 6710863;
        v4 = 0xE300000000000000;
        goto LABEL_13;
      }

      v3 = 0x800000010067A400;
      v5 = 0xD00000000000002DLL;
      v7 = 0x800000010067A420;
      v8 = 0x67615420796E41;
    }

    else
    {
      if (v1 == 2)
      {
        v2 = 0xD000000000000023;
        v3 = 0x800000010067A450;
        v4 = 0x800000010067A480;
        v5 = 0xD000000000000037;
        v6 = "Any Selected Tags";
        goto LABEL_9;
      }

      if (v1 == 3)
      {
        v2 = 0xD000000000000023;
        v3 = 0x800000010067A4E0;
        v4 = 0x800000010067A510;
        v5 = 0xD000000000000037;
        v6 = "All Selected Tags";
LABEL_9:
        v7 = v6 | 0x8000000000000000;
        v8 = 0xD000000000000011;
        goto LABEL_13;
      }

      v2 = 0xD00000000000001FLL;
      v3 = 0x800000010067A570;
      v5 = 0xD00000000000002DLL;
      v7 = 0x800000010067A590;
      v8 = 0x73676154206F4ELL;
    }

    v4 = 0xE700000000000000;
LABEL_13:
    v11 = TTRLocalizedString(_:value:comment:)(*&v2, *(&v4 - 1), *&v5);
    object = v11._object;
    countAndFlagsBits = v11._countAndFlagsBits;
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_1004A1CD0((v12 > 1), v13 + 1, 1);
      countAndFlagsBits = v11._countAndFlagsBits;
      object = v11._object;
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = countAndFlagsBits;
    v14[5] = object;
  }

  while (v0 != 5);
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.DateOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 9, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = TTRSmartListFilterEditorViewModel.DateOptions.Bare.localizedOptionString.getter(*(&off_100712CB0 + v0 + 32));
    v10 = v1;
    v5 = v1[2];
    v4 = v1[3];
    if (v5 >= v4 >> 1)
    {
      v7 = v2;
      v8 = v3;
      sub_1004A1CD0((v4 > 1), v5 + 1, 1);
      v3 = v8;
      v2 = v7;
      v1 = v10;
    }

    ++v0;
    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v2;
    v6[5] = v3;
  }

  while (v0 != 9);
  return v1;
}

void *static TTRSmartListFilterEditorViewModel.TimeOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 7, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v2 = TTRSmartListFilterEditorViewModel.TimeOptions.localizedOptionString.getter(*(&off_100712CE0 + v0 + 32));
    v10 = v1;
    v5 = v1[2];
    v4 = v1[3];
    if (v5 >= v4 >> 1)
    {
      v7 = v2;
      v8 = v3;
      sub_1004A1CD0((v4 > 1), v5 + 1, 1);
      v3 = v8;
      v2 = v7;
      v1 = v10;
    }

    ++v0;
    v1[2] = v5 + 1;
    v6 = &v1[2 * v5];
    v6[4] = v2;
    v6[5] = v3;
  }

  while (v0 != 7);
  return v1;
}

void *static TTRSmartListFilterEditorViewModel.PriorityOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 6, 0);
  v0 = 0;
  do
  {
    v1 = *(&off_100712E70 + v0 + 32);
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v5 = 0xD000000000000024;
        v2 = 0x800000010067AE60;
        v3 = 0xD000000000000033;
        v4 = 0x800000010067AE90;
        v6 = 0x6D756964654DLL;
        v7 = 0xE600000000000000;
      }

      else if (v1 == 4)
      {
        v5 = 0xD000000000000022;
        v2 = 0x800000010067AED0;
        v3 = 0xD000000000000031;
        v4 = 0x800000010067AF00;
        v6 = 1751607624;
        v7 = 0xE400000000000000;
      }

      else
      {
        v5 = 0xD000000000000029;
        v2 = 0x800000010067AF40;
        v3 = 0xD000000000000038;
        v4 = 0x800000010067AF70;
        v6 = 0x726F697250206F4ELL;
        v7 = 0xEB00000000797469;
      }
    }

    else if (*(&off_100712E70 + v0 + 32))
    {
      if (v1 == 1)
      {
        v2 = 0x800000010067AD80;
        v3 = 0xD000000000000030;
        v4 = 0x800000010067ADB0;
        v5 = 0xD000000000000021;
        v6 = 7958081;
      }

      else
      {
        v2 = 0x800000010067ADF0;
        v3 = 0xD000000000000030;
        v4 = 0x800000010067AE20;
        v5 = 0xD000000000000021;
        v6 = 7827276;
      }

      v7 = 0xE300000000000000;
    }

    else
    {
      v2 = 0x800000010067AD10;
      v3 = 0xD000000000000030;
      v4 = 0x800000010067AD40;
      v5 = 0xD000000000000021;
      v6 = 6710863;
      v7 = 0xE300000000000000;
    }

    v10 = TTRLocalizedString(_:value:comment:)(*&v5, *&v6, *&v3);
    object = v10._object;
    countAndFlagsBits = v10._countAndFlagsBits;
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      sub_1004A1CD0((v11 > 1), v12 + 1, 1);
      countAndFlagsBits = v10._countAndFlagsBits;
      object = v10._object;
    }

    ++v0;
    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = countAndFlagsBits;
    v13[5] = object;
  }

  while (v0 != 6);
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.FlaggedOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 3, 0);
  v0._object = 0x800000010067AFD0;
  v1._countAndFlagsBits = 0xD00000000000002DLL;
  v1._object = 0x800000010067AFF0;
  v0._countAndFlagsBits = 0xD00000000000001ELL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._countAndFlagsBits = 0x64656767616C46;
  v10._countAndFlagsBits = 0xD000000000000022;
  v10._object = 0x800000010067B020;
  v11._countAndFlagsBits = 0xD000000000000031;
  v11._object = 0x800000010067B050;
  v9._object = 0xE700000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v10, v9, v11);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v12 = v14._countAndFlagsBits;
    v13 = v14._object;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  v18._countAndFlagsBits = 0x67616C4620746F4ELL;
  v18._object = 0xEB00000000646567;
  v19._countAndFlagsBits = 0xD000000000000026;
  v19._object = 0x800000010067B090;
  v20._countAndFlagsBits = 0xD000000000000035;
  v20._object = 0x800000010067B0C0;
  v23 = TTRLocalizedString(_:value:comment:)(v19, v18, v20);
  v22 = v23._object;
  v21 = v23._countAndFlagsBits;
  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  if (v25 >= v24 >> 1)
  {
    sub_1004A1CD0((v24 > 1), v25 + 1, 1);
    v22 = v23._object;
    v21 = v23._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v25 + 1;
  v26 = &_swiftEmptyArrayStorage[2 * v25];
  v26[4] = v21;
  v26[5] = v22;
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.LocationOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 3, 0);
  v0._object = 0x800000010067AA10;
  v1._countAndFlagsBits = 0xD00000000000002ELL;
  v1._object = 0x800000010067AA30;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._countAndFlagsBits = 0x6369666963657053;
  v10._countAndFlagsBits = 0xD000000000000024;
  v10._object = 0x800000010067AA60;
  v11._countAndFlagsBits = 0xD000000000000033;
  v11._object = 0x800000010067AA90;
  v9._object = 0xE800000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v10, v9, v11);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v12 = v14._countAndFlagsBits;
    v13 = v14._object;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  v18._countAndFlagsBits = 0x7461636F4C206F4ELL;
  v18._object = 0xEB000000006E6F69;
  v19._countAndFlagsBits = 0xD000000000000027;
  v19._object = 0x800000010067AAD0;
  v20._countAndFlagsBits = 0xD000000000000036;
  v20._object = 0x800000010067AB00;
  v23 = TTRLocalizedString(_:value:comment:)(v19, v18, v20);
  v22 = v23._object;
  v21 = v23._countAndFlagsBits;
  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  if (v25 >= v24 >> 1)
  {
    sub_1004A1CD0((v24 > 1), v25 + 1, 1);
    v22 = v23._object;
    v21 = v23._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v25 + 1;
  v26 = &_swiftEmptyArrayStorage[2 * v25];
  v26[4] = v21;
  v26[5] = v22;
  return _swiftEmptyArrayStorage;
}

void *static TTRSmartListFilterEditorViewModel.ListsOptions.localizedOptionStrings.getter()
{
  sub_1004A1CD0(0, 3, 0);
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  v0._object = 0x800000010067AB60;
  v1._countAndFlagsBits = 0xD00000000000002BLL;
  v1._object = 0x800000010067AB80;
  v2._countAndFlagsBits = 6710863;
  v2._object = 0xE300000000000000;
  v5 = TTRLocalizedString(_:value:comment:)(v0, v2, v1);
  object = v5._object;
  countAndFlagsBits = v5._countAndFlagsBits;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  if (v7 >= v6 >> 1)
  {
    sub_1004A1CD0((v6 > 1), v7 + 1, 1);
    object = v5._object;
    countAndFlagsBits = v5._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v7 + 1;
  v8 = &_swiftEmptyArrayStorage[2 * v7];
  v8[4] = countAndFlagsBits;
  v8[5] = object;
  v9._object = 0x800000010067ABB0;
  v10._countAndFlagsBits = 0xD00000000000002FLL;
  v10._object = 0x800000010067ABE0;
  v9._countAndFlagsBits = 0xD000000000000020;
  v11._countAndFlagsBits = 0x6564756C636E49;
  v11._object = 0xE700000000000000;
  v14 = TTRLocalizedString(_:value:comment:)(v9, v11, v10);
  v13 = v14._object;
  v12 = v14._countAndFlagsBits;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_1004A1CD0((v15 > 1), v16 + 1, 1);
    v13 = v14._object;
    v12 = v14._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = v12;
  v17[5] = v13;
  v18._object = 0x800000010067AC10;
  v19._countAndFlagsBits = 0x6564756C637845;
  v20._countAndFlagsBits = 0xD00000000000002FLL;
  v20._object = 0x800000010067AC40;
  v18._countAndFlagsBits = 0xD000000000000020;
  v19._object = 0xE700000000000000;
  v23 = TTRLocalizedString(_:value:comment:)(v18, v19, v20);
  v22 = v23._object;
  v21 = v23._countAndFlagsBits;
  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  if (v25 >= v24 >> 1)
  {
    sub_1004A1CD0((v24 > 1), v25 + 1, 1);
    v22 = v23._object;
    v21 = v23._countAndFlagsBits;
  }

  _swiftEmptyArrayStorage[2] = v25 + 1;
  v26 = &_swiftEmptyArrayStorage[2 * v25];
  v26[4] = v21;
  v26[5] = v22;
  return _swiftEmptyArrayStorage;
}

void (*TTRSmartListFilterEditorViewModel.ListsData.listData.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  v4[1] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v4[3] = v7;
  v9 = *(*(sub_100058000(&qword_100776AA0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v4[5] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(v9);
    v10 = malloc(v9);
    v4[5] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v4[6] = v11;
  sub_1004A56AC(v1, v8, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v14 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  else
  {

    v13 = sub_100058000(&qword_100776AA8);
    sub_100016588(v8 + *(v13 + 48), v10, &qword_100776AA0);
    sub_100016588(v10, v12, &qword_100776AA0);
  }

  return sub_1004A1914;
}

void sub_1004A1914(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[5];
    v3 = v2[6];
    v6 = v2[3];
    v5 = v2[4];
    v7 = v2[2];
    sub_10000794C(v3, v5, &qword_100776AA0);
    TTRSmartListFilterEditorViewModel.ListsData.listData.setter(v5);
    sub_1000079B4(v3, &qword_100776AA0);
  }

  else
  {
    sub_1004A56AC(*v2, v2[2], type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[6];
    if (EnumCaseMultiPayload <= 1)
    {
      v10 = v2[2];
      v11 = *v2;
      v12 = v2[6];
      sub_1004A8100(*v2, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
      v13 = *v10;
      v14 = *(sub_100058000(&qword_100776AA8) + 48);
      v15 = v10 + v14;
      *v11 = v13;
      sub_100016588(v12, v11 + v14, &qword_100776AA0);
      swift_storeEnumTagMultiPayload();
      v9 = v15;
    }

    sub_1000079B4(v9, &qword_100776AA0);
    v4 = v2[5];
    v3 = v2[6];
    v6 = v2[3];
    v5 = v2[4];
    v7 = v2[2];
  }

  free(v3);
  free(v4);
  free(v5);
  free(v6);
  free(v7);

  free(v2);
}

void *sub_1004A1AC0(void *a1, int64_t a2, char a3)
{
  result = sub_1004A2744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A1AE0(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_10077A7F0, &unk_1006395A0, &type metadata accessor for TTRSectionLite);
  *v3 = result;
  return result;
}

char *sub_1004A1B24(char *a1, int64_t a2, char a3)
{
  result = sub_1004A288C(a1, a2, a3, *v3, &qword_100786098);
  *v3 = result;
  return result;
}

char *sub_1004A1B54(char *a1, int64_t a2, char a3)
{
  result = sub_1004A288C(a1, a2, a3, *v3, &qword_100785FB0);
  *v3 = result;
  return result;
}

size_t sub_1004A1B84(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785FC0, &unk_100641D00, &type metadata accessor for REMRemindersListDataView.SectionLite);
  *v3 = result;
  return result;
}

size_t sub_1004A1BC8(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100785FD8, &unk_100641D28, &unk_100781800);
  *v3 = result;
  return result;
}

size_t sub_1004A1C08(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_1007860A8, &unk_100641E68, &qword_1007860B0);
  *v3 = result;
  return result;
}

size_t sub_1004A1C48(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100772150, &unk_100635D00, &type metadata accessor for TTRRemindersListViewModel.Item);
  *v3 = result;
  return result;
}

size_t sub_1004A1C8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007860A0, &unk_100641E60, &type metadata accessor for TTRRemindersListUncommittedReminder);
  *v3 = result;
  return result;
}

char *sub_1004A1CD0(char *a1, int64_t a2, char a3)
{
  result = sub_1004A2984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A1CF0(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786040, &unk_100641DC8, &unk_100782210);
  *v3 = result;
  return result;
}

size_t sub_1004A1D30(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100769560, &unk_10062E060, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
  *v3 = result;
  return result;
}

void *sub_1004A1D74(void *a1, int64_t a2, char a3)
{
  result = sub_1004A372C(a1, a2, a3, *v3, &qword_100786000, &unk_100641D68, &qword_100773368);
  *v3 = result;
  return result;
}

size_t sub_1004A1DB4(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007845D0, &unk_10062EAB0, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

size_t sub_1004A1DF8(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786048, &unk_100641DD8, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
  *v3 = result;
  return result;
}

void *sub_1004A1E3C(void *a1, int64_t a2, char a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100785FF0, &unk_100641D48, &qword_100781C98);
  *v3 = result;
  return result;
}

void *sub_1004A1E7C(void *a1, int64_t a2, char a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100785FF8, &unk_100641D58, &qword_100781C90);
  *v3 = result;
  return result;
}

void *sub_1004A1EBC(void *a1, int64_t a2, char a3)
{
  result = sub_1004A372C(a1, a2, a3, *v3, &qword_100786008, &unk_100641D78, &qword_100786010);
  *v3 = result;
  return result;
}

char *sub_1004A1EFC(char *a1, int64_t a2, char a3)
{
  result = sub_1004A2BC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A1F1C(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785F78, &unk_100641CA8, &type metadata accessor for TTRLocationQuickPickItem);
  *v3 = result;
  return result;
}

size_t sub_1004A1F60(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785F98, &unk_100645D70, &type metadata accessor for TTRListOrCustomSmartListChangeItem);
  *v3 = result;
  return result;
}

size_t sub_1004A1FA4(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786030, &unk_100641DB0, type metadata accessor for TTRIGroupMembershipViewModel.List);
  *v3 = result;
  return result;
}

size_t sub_1004A1FE8(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100778AD0, &unk_100638348, type metadata accessor for TTRIGroupMembershipViewModel.Item);
  *v3 = result;
  return result;
}

size_t sub_1004A202C(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786028, &unk_100641DA0, type metadata accessor for TTRIGroupMembershipViewModel.Diff.Move);
  *v3 = result;
  return result;
}

size_t sub_1004A2070(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100776388, &unk_100641E50, &type metadata accessor for TTRRemindersListViewModel.DeleteCompletedMenuItem);
  *v3 = result;
  return result;
}

size_t sub_1004A20B4(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786090, &unk_100641E38, &qword_100776330);
  *v3 = result;
  return result;
}

size_t sub_1004A20F4(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100785F80, &unk_100641CC0, &qword_10076BDF0);
  *v3 = result;
  return result;
}

void *sub_1004A2134(void *a1, int64_t a2, char a3)
{
  result = sub_1004A2CE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A2154(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &unk_10076BAA0, &unk_10062FD90, &type metadata accessor for TTRAccountsListsViewModel.Item);
  *v3 = result;
  return result;
}

size_t sub_1004A2198(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786080, &unk_100641E30, &unk_10076BDA0);
  *v3 = result;
  return result;
}

char *sub_1004A21D8(char *a1, int64_t a2, char a3)
{
  result = sub_1004A2E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A21F8(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786078, &unk_100641E20, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
  *v3 = result;
  return result;
}

char *sub_1004A223C(char *a1, int64_t a2, char a3)
{
  result = sub_1004A2F38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A225C(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100785FA0, &unk_100641CE0, &qword_100785FA8);
  *v3 = result;
  return result;
}

size_t sub_1004A229C(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785FB8, &unk_100641CF8, &type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer);
  *v3 = result;
  return result;
}

size_t sub_1004A22E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100770900, &unk_100632FD0, &type metadata accessor for TTRRemindersListTreeViewModel.Section);
  *v3 = result;
  return result;
}

size_t sub_1004A2324(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100772760, &unk_100634AE0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  *v3 = result;
  return result;
}

void *sub_1004A2368(void *a1, int64_t a2, char a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100786060, &unk_100641E00, &qword_100786068);
  *v3 = result;
  return result;
}

void *sub_1004A23A8(void *a1, int64_t a2, char a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_1007768B0, &unk_1006338A0, &qword_100771230);
  *v3 = result;
  return result;
}

size_t sub_1004A23E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100783BD0, &unk_10063FBC8, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

size_t sub_1004A242C(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100785FD0, &unk_100641D20, &type metadata accessor for TTRRecurrenceRuleModel);
  *v3 = result;
  return result;
}

void *sub_1004A2470(void *a1, int64_t a2, char a3)
{
  result = sub_1004A2A90(a1, a2, a3, *v3, &qword_100785FE8, &unk_100641D40, &qword_100776860);
  *v3 = result;
  return result;
}

void *sub_1004A24B0(void *a1, int64_t a2, char a3)
{
  result = sub_1004A3260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004A24D0(char *a1, int64_t a2, char a3)
{
  result = sub_1004A33A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A24F0(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786058, &unk_100641DF0, &unk_1007818E0);
  *v3 = result;
  return result;
}

char *sub_1004A2530(char *a1, int64_t a2, char a3)
{
  result = sub_1004A34CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A2550(void *a1, int64_t a2, char a3)
{
  result = sub_1004A35E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004A2570(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100782910, &unk_100641CB0, &qword_100782900);
  *v3 = result;
  return result;
}

size_t sub_1004A25B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007831E8, &unk_100641D90, &type metadata accessor for TTRListOrCustomSmartList);
  *v3 = result;
  return result;
}

size_t sub_1004A25F4(size_t a1, int64_t a2, char a3)
{
  result = sub_100038C9C(a1, a2, a3, *v3, &qword_100786038, &unk_100641DC0, &qword_1007842D8);
  *v3 = result;
  return result;
}

void *sub_1004A2634(void *a1, int64_t a2, char a3)
{
  result = sub_1004A372C(a1, a2, a3, *v3, &qword_10076E928, &unk_100631E38, &qword_1007860C0);
  *v3 = result;
  return result;
}

size_t sub_1004A2674(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_100786018, &unk_100641D88, &type metadata accessor for TTRIRemindersListLargeImageAttachmentsView.ViewModel);
  *v3 = result;
  return result;
}

size_t sub_1004A26B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1004A3874(a1, a2, a3, *v3, &qword_1007860B8, &unk_100641E80, &type metadata accessor for REMAccountsListDataView.Model.PinnedList);
  *v3 = result;
  return result;
}

char *sub_1004A26FC(char *a1, int64_t a2, char a3)
{
  result = sub_1004A3A50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004A2744(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_100785F88);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100769AB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A288C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100058000(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_1004A2984(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_100771E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A2A90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_100058000(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
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

    a4[2] = 0;
  }

  else
  {
    sub_100058000(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1004A2BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100774070);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A2CE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_100786510);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&unk_10076BCD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A2E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100785FC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A2F38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007860D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

char *sub_1004A3044(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007812E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A316C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_1007812B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1004A3260(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_1007860D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100773348);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004A33A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100786070);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004A34CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&qword_100786020);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A35E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100058000(&qword_100785FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100058000(&qword_100781C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004A372C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_100058000(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
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
    sub_100058000(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_1004A3874(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100058000(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
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

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1004A3A50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100058000(&unk_10076B9F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV11DateOptionsO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, _BYTE *a2)
{
  v194 = a2;
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v189 = *(v3 - 8);
  v190 = v3;
  __chkstk_darwin(v3);
  v186 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v192 = *(v5 - 8);
  v193 = v5;
  __chkstk_darwin(v5);
  v183 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v185 = &v170 - v8;
  __chkstk_darwin(v9);
  v184 = &v170 - v10;
  __chkstk_darwin(v11);
  v191 = &v170 - v12;
  __chkstk_darwin(v13);
  v15 = &v170 - v14;
  __chkstk_darwin(v16);
  v18 = &v170 - v17;
  v19 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v19);
  v187 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v188 = &v170 - v22;
  __chkstk_darwin(v23);
  v25 = &v170 - v24;
  __chkstk_darwin(v26);
  v28 = &v170 - v27;
  __chkstk_darwin(v29);
  v31 = &v170 - v30;
  __chkstk_darwin(v32);
  v34 = &v170 - v33;
  v35 = sub_100058000(&qword_1007860C8);
  __chkstk_darwin(v35 - 8);
  v37 = &v170 - v36;
  v39 = &v170 + *(v38 + 56) - v36;
  v40 = a1;
  v41 = v39;
  sub_1004A56AC(v40, v37, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v42 = v194;
  v194 = v41;
  sub_1004A56AC(v42, v41, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_66;
        }

        goto LABEL_49;
      }

      if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_66;
        }

        goto LABEL_49;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_49:
        v131 = v37;
LABEL_50:
        sub_1004A8100(v131, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
        v48 = 1;
        return v48 & 1;
      }

LABEL_66:
      sub_1000079B4(v37, &qword_1007860C8);
LABEL_114:
      v48 = 0;
      return v48 & 1;
    }

    v66 = v194;
    if (EnumCaseMultiPayload == 4)
    {
      v182 = v37;
      v67 = v37;
      v68 = v188;
      sub_1004A56AC(v67, v188, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
      v69 = sub_100058000(&qword_100776AE0);
      v70 = v69[16];
      v72 = *(v68 + v70);
      v71 = *(v68 + v70 + 8);
      v190 = v69[12];
      v191 = v71;
      v73 = *(v68 + v70 + 24);
      v189 = *(v68 + v70 + 16);
      v74 = v69[20];
      v75 = *(v68 + v74 + 8);
      v186 = *(v68 + v74);
      v187 = v72;
      v77 = *(v68 + v74 + 16);
      v76 = *(v68 + v74 + 24);
      v78 = v66;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        v152 = v193;
        v153 = *(v192 + 8);
        v153(v68 + v190, v193);
        v153(v68, v152);
        v37 = v182;
        goto LABEL_66;
      }

      v179 = v73;
      v180 = v76;
      v174 = v77;
      v181 = v75;
      v79 = *&v66[v70 + 8];
      v173 = *&v66[v70];
      v178 = v79;
      v80 = *&v66[v70 + 24];
      v175 = *&v66[v70 + 16];
      v81 = *&v66[v74 + 8];
      v171 = *&v66[v74];
      v177 = v81;
      v82 = *&v66[v74 + 24];
      v172 = *&v66[v74 + 16];
      v176 = v82;
      v83 = v192;
      v84 = v193;
      v85 = *(v192 + 32);
      v86 = v184;
      v85(v184, v78, v193);
      v87 = v190;
      v88 = v185;
      v85(v185, (v68 + v190), v84);
      v89 = &v78[v87];
      v90 = v183;
      v85(v183, v89, v84);
      v91 = v86;
      v92 = static Date.== infix(_:_:)();
      v93 = *(v83 + 8);
      v93(v68, v84);
      if ((v92 & 1) == 0)
      {

        v93(v90, v84);
        v93(v88, v84);
        v154 = v91;
        v155 = v84;
LABEL_111:
        v93(v154, v155);
        goto LABEL_112;
      }

      v95 = v177;
      v94 = v178;
      v96 = v176;
      if ((static Date.== infix(_:_:)() & 1) == 0)
      {

        v156 = v193;
        v93(v90, v193);
        v157 = v88;
LABEL_110:
        v93(v157, v156);
        v154 = v91;
        v155 = v156;
        goto LABEL_111;
      }

      if (v191)
      {
        if (v94)
        {
          if ((v187 != v173 || v191 != v94) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

LABEL_108:

LABEL_109:
            v156 = v193;
            v93(v90, v193);
            v157 = v185;
            goto LABEL_110;
          }

LABEL_104:
          if (v189 == v175 && v179 == v80)
          {
          }

          else
          {
            v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v166 & 1) == 0)
            {

              v91 = v184;
              goto LABEL_109;
            }
          }

          if (v181)
          {
            v167 = v193;
            v168 = v174;
            if (!v95)
            {
LABEL_128:

              v93(v90, v167);
              v93(v185, v167);
              v154 = v184;
              v155 = v167;
              goto LABEL_111;
            }

            if ((v186 != v171 || v181 != v95) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {

              goto LABEL_128;
            }
          }

          else
          {
            v167 = v193;
            v168 = v174;
            if (v95)
            {
              goto LABEL_128;
            }
          }

          if (v168 == v172 && v180 == v96)
          {

            v93(v90, v167);
            v93(v185, v167);
            v93(v184, v167);
          }

          else
          {
            v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v93(v90, v167);
            v93(v185, v167);
            v93(v184, v167);
            if ((v169 & 1) == 0)
            {
              goto LABEL_112;
            }
          }

          v131 = v182;
          goto LABEL_50;
        }
      }

      else if (!v94)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v132 = v187;
    sub_1004A56AC(v37, v187, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v133 = *(sub_100058000(&qword_100776AD8) + 48);
    v135 = *(v132 + v133);
    v134 = *(v132 + v133 + 8);
    v137 = *(v132 + v133 + 16);
    v136 = *(v132 + v133 + 24);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v193 = v137;
      v182 = v37;
      v138 = *&v66[v133 + 8];
      v188 = *&v66[v133];
      v139 = *&v66[v133 + 16];
      v140 = *&v66[v133 + 24];
      v191 = v135;
      v192 = v139;
      v141 = v189;
      v142 = v186;
      v143 = v132;
      v144 = v190;
      (*(v189 + 32))(v186, v66, v190);
      v145 = static REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.== infix(_:_:)();
      v146 = *(v141 + 8);
      v146(v143, v144);
      if (v145)
      {
        v147 = v138;
        if (v134)
        {
          v148 = v186;
          if (!v147)
          {
LABEL_93:

            v37 = v182;

            v146(v148, v144);
LABEL_94:
            v159 = v37;
            goto LABEL_113;
          }

          if ((v191 != v188 || v134 != v147) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            goto LABEL_93;
          }
        }

        else
        {
          v148 = v186;
          if (v147)
          {
            goto LABEL_93;
          }
        }

        v37 = v182;
        if (v193 == v192 && v136 == v140)
        {

          v146(v148, v144);
          goto LABEL_49;
        }

        v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v146(v148, v144);
        if (v164)
        {
          goto LABEL_49;
        }

        goto LABEL_94;
      }

      v146(v142, v144);

LABEL_112:
      v159 = v182;
      goto LABEL_113;
    }

    v151 = v190;
    v149 = *(v189 + 8);
    v150 = v132;
LABEL_65:
    v149(v150, v151);
    goto LABEL_66;
  }

  v44 = v15;
  v45 = v191;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v49 = v28;
      sub_1004A56AC(v37, v28, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
      v50 = *(sub_100058000(&qword_100776AE8) + 48);
      v51 = &v28[v50];
      v53 = *&v28[v50];
      v52 = *(v51 + 1);
      v55 = *(v51 + 2);
      v54 = *(v51 + 3);
      v56 = v194;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        v149 = *(v192 + 8);
        v150 = v49;
        goto LABEL_62;
      }

      v182 = v37;
      v57 = *&v56[v50 + 8];
      v188 = *&v56[v50];
      v189 = v53;
      v58 = *&v56[v50 + 24];
      v190 = *&v56[v50 + 16];
      v191 = v57;
      v59 = v192;
      v60 = v56;
      v61 = v193;
      (*(v192 + 32))(v44, v60, v193);
      v62 = static Date.== infix(_:_:)();
      v63 = v49;
      v64 = *(v59 + 8);
      v64(v63, v61);
      if ((v62 & 1) == 0)
      {
        v64(v44, v61);

        goto LABEL_112;
      }

      v65 = v44;
      if (v52)
      {
        if (!v191)
        {
LABEL_89:

          v158 = v182;

          v64(v65, v193);
LABEL_92:
          v159 = v158;
LABEL_113:
          sub_1004A8100(v159, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
          goto LABEL_114;
        }

        if ((v189 != v188 || v52 != v191) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          goto LABEL_89;
        }
      }

      else if (v191)
      {
        goto LABEL_89;
      }

      v158 = v182;
      if (v55 == v190 && v54 == v58)
      {

        v64(v65, v193);
      }

      else
      {
        v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v64(v65, v193);
        if ((v160 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_100;
    }

    v115 = v25;
    sub_1004A56AC(v37, v25, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v116 = *(sub_100058000(&qword_100776AE8) + 48);
    v118 = *&v25[v116];
    v117 = *&v25[v116 + 8];
    v119 = *&v25[v116 + 16];
    v120 = *&v25[v116 + 24];
    v121 = v194;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      v149 = *(v192 + 8);
      v150 = v115;
      goto LABEL_62;
    }

    v189 = v119;
    v190 = v117;
    v182 = v37;
    v122 = *&v121[v116 + 8];
    v186 = *&v121[v116];
    v187 = v118;
    v123 = *&v121[v116 + 24];
    v188 = *&v121[v116 + 16];
    v124 = v192;
    v125 = v115;
    v126 = v193;
    (*(v192 + 32))(v45, v121, v193);
    v127 = static Date.== infix(_:_:)();
    v128 = *(v124 + 8);
    v128(v125, v126);
    if ((v127 & 1) == 0)
    {
      v128(v45, v126);

      goto LABEL_112;
    }

    if (v190)
    {
      v129 = v45;
      v130 = v189;
      if (!v122)
      {
LABEL_91:

        v158 = v182;

        v128(v129, v193);
        goto LABEL_92;
      }

      if ((v187 != v186 || v190 != v122) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_91;
      }
    }

    else
    {
      v129 = v45;
      v130 = v189;
      if (v122)
      {
        goto LABEL_91;
      }
    }

    v158 = v182;
    if (v130 == v188 && v120 == v123)
    {

      v128(v129, v193);
    }

    else
    {
      v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v128(v129, v193);
      if ((v163 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_100;
  }

  if (EnumCaseMultiPayload)
  {
    v97 = v31;
    sub_1004A56AC(v37, v31, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v98 = *(sub_100058000(&qword_100776AE8) + 48);
    v100 = *&v31[v98];
    v99 = *&v31[v98 + 8];
    v101 = v194;
    v103 = *&v31[v98 + 16];
    v102 = *&v31[v98 + 24];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v190 = v100;
      v191 = v103;
      v182 = v37;
      v104 = *&v101[v98 + 8];
      v105 = *&v101[v98 + 16];
      v106 = *&v101[v98 + 24];
      v188 = *&v101[v98];
      v189 = v105;
      v107 = v192;
      v108 = v101;
      v109 = v193;
      (*(v192 + 32))(v18, v108, v193);
      v110 = static Date.== infix(_:_:)();
      v111 = v97;
      v112 = v109;
      v113 = *(v107 + 8);
      v113(v111, v112);
      if ((v110 & 1) == 0)
      {
        v113(v18, v112);

        goto LABEL_112;
      }

      if (v99)
      {
        v114 = v106;
        if (!v104)
        {
LABEL_90:

          v158 = v182;

          v113(v18, v112);
          goto LABEL_92;
        }

        if ((v190 != v188 || v99 != v104) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          goto LABEL_90;
        }
      }

      else
      {
        v114 = v106;
        if (v104)
        {
          goto LABEL_90;
        }
      }

      v158 = v182;
      if (v191 == v189 && v102 == v114)
      {

        v113(v18, v112);
      }

      else
      {
        v161 = v113;
        v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v161(v18, v112);
        if ((v162 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

LABEL_100:
      v131 = v158;
      goto LABEL_50;
    }

    v149 = *(v192 + 8);
    v150 = v97;
LABEL_62:
    v151 = v193;
    goto LABEL_65;
  }

  sub_1004A56AC(v37, v34, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v46 = v194;
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_66;
  }

  v47 = *v34 ^ *v46;
  sub_1004A8100(v37, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v48 = v47 ^ 1;
  return v48 & 1;
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV7DetailsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6)
      {
        goto LABEL_6;
      }

      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v9;
      a4 = v10;
      a7 = v12;
      a8 = v11;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_6:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV11TimeOptionsO4timeAE19ReminderKitInternal014REMCustomSmartcD10DescriptorC0dH0OSg_tcfC_0(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076D028);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000794C(a1, v4, &qword_10076D028);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(a1, &qword_10076D028);
    sub_1000079B4(v4, &qword_10076D028);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.any(_:))
  {
    v12 = 1;
LABEL_15:
    sub_1000079B4(a1, &qword_10076D028);
    (*(v6 + 8))(v11, v5);
    return v12;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.morning(_:))
  {
    v12 = 2;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.afternoon(_:))
  {
    v12 = 3;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.evening(_:))
  {
    v12 = 4;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.night(_:))
  {
    v12 = 5;
    goto LABEL_15;
  }

  if (v13 == enum case for REMCustomSmartListFilterDescriptor.FilterTime.noTime(_:))
  {
    v12 = 6;
    goto LABEL_15;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO14priorityLevelsAESaySo011REMReminderH5LevelVGSg_tcfC_0(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    v2 = 32;
    v3 = v1;
    do
    {
      v4 = v3;
      v5 = v3-- != 0;
      if (!v5)
      {
        break;
      }

      v6 = *(result + v2);
      v2 += 8;
    }

    while (v6);
    v7 = 32;
    v8 = *(result + 16);
    do
    {
      v9 = v8;
      if (!v8)
      {
        break;
      }

      v10 = *(result + v7);
      v7 += 8;
      --v8;
    }

    while (v10 != 1);
    v11 = 32;
    v12 = *(result + 16);
    do
    {
      v13 = v12;
      v5 = v12-- != 0;
      if (!v5)
      {
        break;
      }

      v14 = *(result + v11);
      v11 += 8;
    }

    while (v14 != 2);
    v15 = 32;
    while (v1)
    {
      v16 = *(result + v15);
      v15 += 8;
      --v1;
      if (v16 == 3)
      {

        if (!v9 && !(v4 | v13))
        {
          return 4;
        }

        return 1;
      }
    }

    if (v9)
    {
      if (!(v4 | v13))
      {
        return 2;
      }

      return 1;
    }

    if (v4)
    {
      if (v13)
      {
        return 1;
      }

      return 5;
    }

    else if (v13)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004A55C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV11DateOptionsO4BareO8rawValueAGSgSi_tcfC_0(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV15PriorityOptionsO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_1004A5648(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_100275DE8(*a1, v4, v5, v6, v7);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return a2;
}

uint64_t sub_1004A56AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004A5714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A5918(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004A5970()
{
  result = qword_100785C00;
  if (!qword_100785C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785C00);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRSmartListFilterEditorViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    *a1 = *a2;
    v7 = a3[5];
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
      {
        goto LABEL_14;
      }
    }

    else if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v25 = type metadata accessor for Date();
        v26 = v6;
        v27 = *(*(v25 - 8) + 16);
        v27(v8, v9, v25);
        v28 = sub_100058000(&qword_100776AE0);
        v27(&v8[v28[12]], &v9[v28[12]], v25);
        v6 = v26;
        v29 = v28[16];
        v30 = &v8[v29];
        v31 = &v9[v29];
        v32 = *(v31 + 1);
        *v30 = *v31;
        *(v30 + 1) = v32;
        v33 = *(v31 + 3);
        *(v30 + 2) = *(v31 + 2);
        *(v30 + 3) = v33;
        v34 = v28[20];
        v35 = &v8[v34];
        v36 = &v9[v34];
        v37 = *(v36 + 1);
        *v35 = *v36;
        *(v35 + 1) = v37;
        v38 = *(v36 + 3);
        *(v35 + 2) = *(v36 + 2);
        *(v35 + 3) = v38;

        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v12 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
        (*(*(v12 - 8) + 16))(v8, v9, v12);
        v13 = *(sub_100058000(&qword_100776AD8) + 48);
        v14 = &v8[v13];
        v15 = &v9[v13];
        v16 = *(v15 + 1);
        *v14 = *v15;
        *(v14 + 1) = v16;
        v17 = *(v15 + 3);
        *(v14 + 2) = *(v15 + 2);
        *(v14 + 3) = v17;

        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

LABEL_14:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_15:
      v39 = v6[7];
      *(v4 + v6[6]) = v3[v6[6]];
      *(v4 + v39) = v3[v39];
      v40 = v6[8];
      v41 = (v4 + v40);
      v42 = &v3[v40];
      v43 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43))
      {
        v45 = sub_100058000(&qword_100776AB0);
        memcpy(v41, v42, *(*(v45 - 8) + 64));
      }

      else
      {
        v92 = v6;
        v95 = v3;
        v98 = v4;
        v46 = *v42;
        v47 = *(v42 + 1);
        v48 = *(v42 + 2);
        v49 = *(v42 + 3);
        v50 = v42[32];
        sub_100275DE8(*v42, v47, v48, v49, v50);
        *v41 = v46;
        v41[1] = v47;
        v41[2] = v48;
        v41[3] = v49;
        *(v41 + 32) = v50;
        v41[5] = *(v42 + 5);
        v51 = *(v43 + 24);
        v52 = type metadata accessor for TTRLocationQuickPickItem();
        v53 = *(v52 - 8);
        v54 = *(v53 + 48);

        if (v54(&v42[v51], 1, v52))
        {
          v55 = sub_100058000(&qword_100775720);
          memcpy(v41 + v51, &v42[v51], *(*(v55 - 8) + 64));
        }

        else
        {
          (*(v53 + 16))(v41 + v51, &v42[v51], v52);
          (*(v53 + 56))(v41 + v51, 0, 1, v52);
        }

        (*(v44 + 56))(v41, 0, 1, v43);
        v3 = v95;
        v4 = v98;
        v6 = v92;
      }

      v56 = v6[10];
      *(v4 + v6[9]) = v3[v6[9]];
      *(v4 + v56) = v3[v56];
      v57 = v6[11];
      v58 = (v4 + v57);
      v59 = &v3[v57];
      v60 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
      v61 = swift_getEnumCaseMultiPayload();
      if (v61 == 1)
      {
        v69 = *v59;
        *v58 = *v59;
        v70 = v69;
        v71 = *(sub_100058000(&qword_100776AA8) + 48);
        v65 = v58 + v71;
        v66 = v59 + v71;
        v72 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v66, 1, v72))
        {
          v94 = v6;
          v97 = v3;
          v100 = v4;
          v82 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v82;
          v83 = *(v72 + 20);
          v84 = type metadata accessor for TTRListColors.Color();
          v91 = *(*(v84 - 8) + 16);

          v91(&v65[v83], &v66[v83], v84);
          v85 = *(v72 + 24);
          v86 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
          v87 = *(v86 - 8);
          if ((*(v87 + 48))(&v66[v85], 1, v86))
          {
            v88 = sub_100058000(&qword_100776A28);
            memcpy(&v65[v85], &v66[v85], *(*(v88 - 8) + 64));
          }

          else
          {
            (*(v87 + 16))(&v65[v85], &v66[v85], v86);
            (*(v87 + 56))(&v65[v85], 0, 1, v86);
          }

          (*(v73 + 56))(v65, 0, 1, v72);
          v3 = v97;
          v4 = v100;
          v6 = v94;
          goto LABEL_36;
        }
      }

      else
      {
        if (v61)
        {
          memcpy(v58, v59, *(*(v60 - 8) + 64));
LABEL_37:
          *(v4 + v6[12]) = v3[v6[12]];
          return v4;
        }

        v62 = *v59;
        *v58 = *v59;
        v63 = v62;
        v64 = *(sub_100058000(&qword_100776AA8) + 48);
        v65 = v58 + v64;
        v66 = v59 + v64;
        v67 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
        v68 = *(v67 - 8);
        if (!(*(v68 + 48))(v66, 1, v67))
        {
          v93 = v6;
          v96 = v3;
          v99 = v4;
          v75 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v75;
          v76 = *(v67 + 20);
          v77 = type metadata accessor for TTRListColors.Color();
          v90 = *(*(v77 - 8) + 16);

          v90(&v65[v76], &v66[v76], v77);
          v78 = *(v67 + 24);
          v79 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
          v80 = *(v79 - 8);
          if ((*(v80 + 48))(&v66[v78], 1, v79))
          {
            v81 = sub_100058000(&qword_100776A28);
            memcpy(&v65[v78], &v66[v78], *(*(v81 - 8) + 64));
          }

          else
          {
            (*(v80 + 16))(&v65[v78], &v66[v78], v79);
            (*(v80 + 56))(&v65[v78], 0, 1, v79);
          }

          v3 = v96;
          v4 = v99;
          (*(v68 + 56))(v65, 0, 1, v67);
          v6 = v93;
          goto LABEL_36;
        }
      }

      v74 = sub_100058000(&qword_100776AA0);
      memcpy(v65, v66, *(*(v74 - 8) + 64));
LABEL_36:
      swift_storeEnumTagMultiPayload();
      goto LABEL_37;
    }

    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 16))(v8, v9, v19);
    v20 = *(sub_100058000(&qword_100776AE8) + 48);
    v21 = &v8[v20];
    v22 = &v9[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = *(v22 + 3);
    *(v21 + 2) = *(v22 + 2);
    *(v21 + 3) = v24;

    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  v18 = *a2;
  *v4 = *a2;
  v4 = (v18 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for TTRSmartListFilterEditorViewModel(uint64_t a1, int *a2)
{
  v4 = a1 + a2[5];
  type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 8))(v4, v8);
    v7 = &qword_100776AE8;
    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_8;
    case 4:
      v22 = type metadata accessor for Date();
      v23 = *(*(v22 - 8) + 8);
      v23(v4, v22);
      v24 = sub_100058000(&qword_100776AE0);
      v23(v4 + *(v24 + 48), v22);

      goto LABEL_10;
    case 5:
      v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v6 - 8) + 8))(v4, v6);
      v7 = &qword_100776AD8;
LABEL_9:
      sub_100058000(v7);
LABEL_10:

      break;
  }

LABEL_11:
  v9 = a1 + a2[8];
  v10 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    sub_1004A68D0(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));

    v11 = *(v10 + 24);
    v12 = type metadata accessor for TTRLocationQuickPickItem();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  v14 = (a1 + a2[11]);
  type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {

    v16 = v14 + *(sub_100058000(&qword_100776AA8) + 48);
    v17 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    result = (*(*(v17 - 8) + 48))(v16, 1, v17);
    if (!result)
    {

      v18 = *(v17 + 20);
      v19 = type metadata accessor for TTRListColors.Color();
      (*(*(v19 - 8) + 8))(&v16[v18], v19);
      v20 = *(v17 + 24);
      v21 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v26 = *(v21 - 8);
      result = (*(v26 + 48))(&v16[v20], 1, v21);
      if (!result)
      {
        v25 = *(v26 + 8);

        return v25(&v16[v20], v21);
      }
    }
  }

  return result;
}

void sub_1004A68D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{

  if ((a5 & 0x80) == 0)
  {
  }
}

_BYTE *initializeWithCopy for TTRSmartListFilterEditorViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_12;
    }

LABEL_8:
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 16))(v7, v8, v17);
    v18 = *(sub_100058000(&qword_100776AE8) + 48);
    v19 = &v7[v18];
    v20 = &v8[v18];
    v21 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 1) = v21;
    v22 = *(v20 + 3);
    *(v19 + 2) = *(v20 + 2);
    *(v19 + 3) = v22;

    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_8;
    case 4:
      v23 = type metadata accessor for Date();
      v24 = *(*(v23 - 8) + 16);
      v24(v7, v8, v23);
      v25 = sub_100058000(&qword_100776AE0);
      v24(&v7[v25[12]], &v8[v25[12]], v23);
      v26 = v25[16];
      v27 = &v7[v26];
      v28 = &v8[v26];
      v29 = *(v28 + 1);
      *v27 = *v28;
      *(v27 + 1) = v29;
      v30 = *(v28 + 3);
      *(v27 + 2) = *(v28 + 2);
      *(v27 + 3) = v30;
      v31 = v25[20];
      v32 = &v7[v31];
      v33 = &v8[v31];
      v34 = *(v33 + 1);
      *v32 = *v33;
      *(v32 + 1) = v34;
      v35 = *(v33 + 3);
      *(v32 + 2) = *(v33 + 2);
      *(v32 + 3) = v35;

      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    case 5:
      v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v11 - 8) + 16))(v7, v8, v11);
      v12 = *(sub_100058000(&qword_100776AD8) + 48);
      v13 = &v7[v12];
      v14 = &v8[v12];
      v15 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v15;
      v16 = *(v14 + 3);
      *(v13 + 2) = *(v14 + 2);
      *(v13 + 3) = v16;

      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
  }

LABEL_12:
  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_13:
  v36 = v3[7];
  v5[v3[6]] = v4[v3[6]];
  v5[v36] = v4[v36];
  v37 = v3[8];
  v38 = &v5[v37];
  v39 = &v4[v37];
  v40 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v39, 1, v40))
  {
    v42 = sub_100058000(&qword_100776AB0);
    memcpy(v38, v39, *(*(v42 - 8) + 64));
  }

  else
  {
    v89 = v3;
    v92 = v4;
    v95 = v5;
    v43 = *v39;
    v44 = *(v39 + 1);
    v45 = *(v39 + 2);
    v46 = *(v39 + 3);
    v47 = v39[32];
    sub_100275DE8(*v39, v44, v45, v46, v47);
    *v38 = v43;
    v38[1] = v44;
    v38[2] = v45;
    v38[3] = v46;
    *(v38 + 32) = v47;
    v38[5] = *(v39 + 5);
    v48 = *(v40 + 24);
    v49 = type metadata accessor for TTRLocationQuickPickItem();
    v50 = *(v49 - 8);
    v51 = *(v50 + 48);

    if (v51(&v39[v48], 1, v49))
    {
      v52 = sub_100058000(&qword_100775720);
      memcpy(v38 + v48, &v39[v48], *(*(v52 - 8) + 64));
    }

    else
    {
      (*(v50 + 16))(v38 + v48, &v39[v48], v49);
      (*(v50 + 56))(v38 + v48, 0, 1, v49);
    }

    (*(v41 + 56))(v38, 0, 1, v40);
    v4 = v92;
    v5 = v95;
    v3 = v89;
  }

  v53 = v3[10];
  v5[v3[9]] = v4[v3[9]];
  v5[v53] = v4[v53];
  v54 = v3[11];
  v55 = &v5[v54];
  v56 = &v4[v54];
  v57 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  v58 = swift_getEnumCaseMultiPayload();
  if (v58 == 1)
  {
    v66 = *v56;
    *v55 = *v56;
    v67 = v66;
    v68 = *(sub_100058000(&qword_100776AA8) + 48);
    v62 = v55 + v68;
    v63 = v56 + v68;
    v69 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v70 = *(v69 - 8);
    if (!(*(v70 + 48))(v63, 1, v69))
    {
      v91 = v3;
      v94 = v4;
      v97 = v5;
      v79 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v79;
      v80 = *(v69 + 20);
      v81 = type metadata accessor for TTRListColors.Color();
      v88 = *(*(v81 - 8) + 16);

      v88(&v62[v80], &v63[v80], v81);
      v82 = *(v69 + 24);
      v83 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v84 = *(v83 - 8);
      if ((*(v84 + 48))(&v63[v82], 1, v83))
      {
        v85 = sub_100058000(&qword_100776A28);
        memcpy(&v62[v82], &v63[v82], *(*(v85 - 8) + 64));
      }

      else
      {
        (*(v84 + 16))(&v62[v82], &v63[v82], v83);
        (*(v84 + 56))(&v62[v82], 0, 1, v83);
      }

      (*(v70 + 56))(v62, 0, 1, v69);
      v4 = v94;
      v5 = v97;
      v3 = v91;
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  if (!v58)
  {
    v59 = *v56;
    *v55 = *v56;
    v60 = v59;
    v61 = *(sub_100058000(&qword_100776AA8) + 48);
    v62 = v55 + v61;
    v63 = v56 + v61;
    v64 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v65 = *(v64 - 8);
    if (!(*(v65 + 48))(v63, 1, v64))
    {
      v90 = v3;
      v93 = v4;
      v96 = v5;
      v72 = *(v63 + 1);
      *v62 = *v63;
      *(v62 + 1) = v72;
      v73 = *(v64 + 20);
      v74 = type metadata accessor for TTRListColors.Color();
      v87 = *(*(v74 - 8) + 16);

      v87(&v62[v73], &v63[v73], v74);
      v75 = *(v64 + 24);
      v76 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v77 = *(v76 - 8);
      if ((*(v77 + 48))(&v63[v75], 1, v76))
      {
        v78 = sub_100058000(&qword_100776A28);
        memcpy(&v62[v75], &v63[v75], *(*(v78 - 8) + 64));
      }

      else
      {
        (*(v77 + 16))(&v62[v75], &v63[v75], v76);
        (*(v77 + 56))(&v62[v75], 0, 1, v76);
      }

      v4 = v93;
      v5 = v96;
      v3 = v90;
      (*(v65 + 56))(v62, 0, 1, v64);
      goto LABEL_34;
    }

LABEL_24:
    v71 = sub_100058000(&qword_100776AA0);
    memcpy(v62, v63, *(*(v71 - 8) + 64));
LABEL_34:
    swift_storeEnumTagMultiPayload();
    goto LABEL_35;
  }

  memcpy(v55, v56, *(*(v57 - 8) + 64));
LABEL_35:
  v5[v3[12]] = v4[v3[12]];
  return v5;
}

_BYTE *assignWithCopy for TTRSmartListFilterEditorViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  *a1 = *a2;
  if (a1 != a2)
  {
    v6 = a3[5];
    v7 = &a1[v6];
    v8 = &a2[v6];
    sub_1004A8100(&a1[v6], type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v9 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
      {
LABEL_13:
        memcpy(v7, v8, *(*(v9 - 8) + 64));
        goto LABEL_14;
      }
    }

    else if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v19 = type metadata accessor for Date();
        v20 = *(*(v19 - 8) + 16);
        v20(v7, v8, v19);
        v21 = sub_100058000(&qword_100776AE0);
        v20(&v7[v21[12]], &v8[v21[12]], v19);
        v22 = v21[16];
        v23 = &v7[v22];
        v24 = &v8[v22];
        *v23 = *v24;
        *(v23 + 1) = *(v24 + 1);
        *(v23 + 2) = *(v24 + 2);
        *(v23 + 3) = *(v24 + 3);
        v25 = v21[20];
        v26 = &v7[v25];
        v27 = &v8[v25];
        *v26 = *v27;
        *(v26 + 1) = *(v27 + 1);
        *(v26 + 2) = *(v27 + 2);
        *(v26 + 3) = *(v27 + 3);

        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
        (*(*(v11 - 8) + 16))(v7, v8, v11);
        v12 = *(sub_100058000(&qword_100776AD8) + 48);
        v13 = &v7[v12];
        v14 = &v8[v12];
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 1);
        *(v13 + 2) = *(v14 + 2);
        *(v13 + 3) = *(v14 + 3);

        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 16))(v7, v8, v15);
    v16 = *(sub_100058000(&qword_100776AE8) + 48);
    v17 = &v7[v16];
    v18 = &v8[v16];
    *v17 = *v18;
    *(v17 + 1) = *(v18 + 1);
    *(v17 + 2) = *(v18 + 2);
    *(v17 + 3) = *(v18 + 3);

    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v5[v3[6]] = v4[v3[6]];
  v5[v3[7]] = v4[v3[7]];
  v28 = v3[8];
  v29 = &v5[v28];
  v30 = &v4[v28];
  v31 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v29, 1, v31);
  v35 = v33(v30, 1, v31);
  if (!v34)
  {
    if (!v35)
    {
      v102 = v3;
      v106 = v4;
      v49 = *v30;
      v50 = *(v30 + 1);
      v51 = *(v30 + 2);
      v52 = *(v30 + 3);
      v53 = v30[32];
      sub_100275DE8(*v30, v50, v51, v52, v53);
      v54 = *v29;
      v55 = *(v29 + 8);
      v56 = *(v29 + 16);
      v57 = *(v29 + 24);
      *v29 = v49;
      *(v29 + 8) = v50;
      *(v29 + 16) = v51;
      *(v29 + 24) = v52;
      v58 = *(v29 + 32);
      *(v29 + 32) = v53;
      sub_1004A68D0(v54, v55, v56, v57, v58);
      *(v29 + 40) = *(v30 + 5);

      v59 = *(v31 + 24);
      v60 = type metadata accessor for TTRLocationQuickPickItem();
      v61 = *(v60 - 8);
      v62 = *(v61 + 48);
      v63 = v62(v29 + v59, 1, v60);
      v64 = v62(&v30[v59], 1, v60);
      if (v63)
      {
        v3 = v102;
        v4 = v106;
        if (!v64)
        {
          (*(v61 + 16))(v29 + v59, &v30[v59], v60);
          (*(v61 + 56))(v29 + v59, 0, 1, v60);
          goto LABEL_27;
        }
      }

      else
      {
        v3 = v102;
        v4 = v106;
        if (!v64)
        {
          (*(v61 + 24))(v29 + v59, &v30[v59], v60);
          goto LABEL_27;
        }

        (*(v61 + 8))(v29 + v59, v60);
      }

      v46 = *(*(sub_100058000(&qword_100775720) - 8) + 64);
      v47 = (v29 + v59);
      v48 = &v30[v59];
LABEL_21:
      memcpy(v47, v48, v46);
      goto LABEL_27;
    }

    sub_1004A8100(v29, type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData);
LABEL_20:
    v46 = *(*(sub_100058000(&qword_100776AB0) - 8) + 64);
    v47 = v29;
    v48 = v30;
    goto LABEL_21;
  }

  if (v35)
  {
    goto LABEL_20;
  }

  v101 = v3;
  v105 = v4;
  v98 = v5;
  v36 = *v30;
  v37 = *(v30 + 1);
  v38 = *(v30 + 2);
  v39 = *(v30 + 3);
  v40 = v30[32];
  sub_100275DE8(*v30, v37, v38, v39, v40);
  *v29 = v36;
  *(v29 + 8) = v37;
  *(v29 + 16) = v38;
  *(v29 + 24) = v39;
  *(v29 + 32) = v40;
  *(v29 + 40) = *(v30 + 5);
  v41 = *(v31 + 24);
  v42 = type metadata accessor for TTRLocationQuickPickItem();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);

  if (v44(&v30[v41], 1, v42))
  {
    v45 = sub_100058000(&qword_100775720);
    memcpy((v29 + v41), &v30[v41], *(*(v45 - 8) + 64));
  }

  else
  {
    (*(v43 + 16))(v29 + v41, &v30[v41], v42);
    (*(v43 + 56))(v29 + v41, 0, 1, v42);
  }

  v5 = v98;
  v3 = v101;
  v4 = v105;
  (*(v32 + 56))(v29, 0, 1, v31);
LABEL_27:
  v5[v3[9]] = v4[v3[9]];
  v5[v3[10]] = v4[v3[10]];
  if (v5 != v4)
  {
    v65 = v3[11];
    v66 = &v5[v65];
    v67 = &v4[v65];
    sub_1004A8100(&v5[v65], type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    v68 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
    v69 = swift_getEnumCaseMultiPayload();
    if (v69 == 1)
    {
      v77 = *v67;
      *v66 = *v67;
      v78 = v77;
      v79 = *(sub_100058000(&qword_100776AA8) + 48);
      v73 = v66 + v79;
      v74 = v67 + v79;
      v80 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      v81 = *(v80 - 8);
      if (!(*(v81 + 48))(v74, 1, v80))
      {
        v104 = v3;
        v108 = v4;
        v100 = v5;
        *v73 = *v74;
        *(v73 + 1) = *(v74 + 1);
        v89 = *(v80 + 20);
        v90 = type metadata accessor for TTRListColors.Color();
        v97 = *(*(v90 - 8) + 16);

        v97(&v73[v89], &v74[v89], v90);
        v91 = *(v80 + 24);
        v92 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
        v93 = *(v92 - 8);
        if ((*(v93 + 48))(&v74[v91], 1, v92))
        {
          v94 = sub_100058000(&qword_100776A28);
          memcpy(&v73[v91], &v74[v91], *(*(v94 - 8) + 64));
        }

        else
        {
          (*(v93 + 16))(&v73[v91], &v74[v91], v92);
          (*(v93 + 56))(&v73[v91], 0, 1, v92);
        }

        (*(v81 + 56))(v73, 0, 1, v80);
        v5 = v100;
        v3 = v104;
        v4 = v108;
        goto LABEL_46;
      }

      goto LABEL_33;
    }

    if (!v69)
    {
      v70 = *v67;
      *v66 = *v67;
      v71 = v70;
      v72 = *(sub_100058000(&qword_100776AA8) + 48);
      v73 = v66 + v72;
      v74 = v67 + v72;
      v75 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      v76 = *(v75 - 8);
      if (!(*(v76 + 48))(v74, 1, v75))
      {
        v103 = v3;
        v107 = v4;
        v99 = v5;
        *v73 = *v74;
        *(v73 + 1) = *(v74 + 1);
        v83 = *(v75 + 20);
        v84 = type metadata accessor for TTRListColors.Color();
        v96 = *(*(v84 - 8) + 16);

        v96(&v73[v83], &v74[v83], v84);
        v85 = *(v75 + 24);
        v86 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
        v87 = *(v86 - 8);
        if ((*(v87 + 48))(&v74[v85], 1, v86))
        {
          v88 = sub_100058000(&qword_100776A28);
          memcpy(&v73[v85], &v74[v85], *(*(v88 - 8) + 64));
        }

        else
        {
          (*(v87 + 16))(&v73[v85], &v74[v85], v86);
          (*(v87 + 56))(&v73[v85], 0, 1, v86);
        }

        v5 = v99;
        v3 = v103;
        v4 = v107;
        (*(v76 + 56))(v73, 0, 1, v75);
        goto LABEL_46;
      }

LABEL_33:
      v82 = sub_100058000(&qword_100776AA0);
      memcpy(v73, v74, *(*(v82 - 8) + 64));
LABEL_46:
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    }

    memcpy(v66, v67, *(*(v68 - 8) + 64));
  }

LABEL_47:
  v5[v3[12]] = v4[v3[12]];
  return v5;
}

uint64_t sub_1004A8100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRSmartListFilterEditorViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_12;
    }

LABEL_8:
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 32))(v7, v8, v16);
    v17 = *(sub_100058000(&qword_100776AE8) + 48);
    v18 = &v7[v17];
    v19 = &v8[v17];
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_8;
    case 4:
      v21 = type metadata accessor for Date();
      v22 = *(*(v21 - 8) + 32);
      v22(v7, v8, v21);
      v23 = sub_100058000(&qword_100776AE0);
      v22(&v7[v23[12]], &v8[v23[12]], v21);
      v24 = v23[16];
      v25 = &v7[v24];
      v26 = &v8[v24];
      v27 = *(v26 + 1);
      *v25 = *v26;
      *(v25 + 1) = v27;
      v28 = v23[20];
      v29 = &v7[v28];
      v30 = &v8[v28];
      v31 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v31;
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    case 5:
      v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v11 - 8) + 32))(v7, v8, v11);
      v12 = *(sub_100058000(&qword_100776AD8) + 48);
      v13 = &v7[v12];
      v14 = &v8[v12];
      v15 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v15;
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
  }

LABEL_12:
  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_13:
  v32 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v32] = a2[v32];
  v33 = a3[8];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36))
  {
    v38 = sub_100058000(&qword_100776AB0);
    memcpy(v34, v35, *(*(v38 - 8) + 64));
  }

  else
  {
    v39 = v35[1];
    *v34 = *v35;
    v34[1] = v39;
    *(v34 + 32) = *(v35 + 32);
    *(v34 + 5) = *(v35 + 5);
    v40 = *(v36 + 24);
    v41 = type metadata accessor for TTRLocationQuickPickItem();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v35 + v40, 1, v41))
    {
      v43 = sub_100058000(&qword_100775720);
      memcpy(v34 + v40, v35 + v40, *(*(v43 - 8) + 64));
    }

    else
    {
      (*(v42 + 32))(v34 + v40, v35 + v40, v41);
      (*(v42 + 56))(v34 + v40, 0, 1, v41);
    }

    (*(v37 + 56))(v34, 0, 1, v36);
  }

  v44 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v44] = a2[v44];
  v45 = a3[11];
  v46 = &a1[v45];
  v47 = &a2[v45];
  v48 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  v49 = swift_getEnumCaseMultiPayload();
  if (v49 == 1)
  {
    *v46 = *v47;
    v55 = *(sub_100058000(&qword_100776AA8) + 48);
    v51 = (v46 + v55);
    v52 = (v47 + v55);
    v53 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53))
    {
LABEL_24:
      v56 = sub_100058000(&qword_100776AA0);
      memcpy(v51, v52, *(*(v56 - 8) + 64));
LABEL_32:
      swift_storeEnumTagMultiPayload();
      goto LABEL_33;
    }

    *v51 = *v52;
    v62 = *(v53 + 20);
    v63 = type metadata accessor for TTRListColors.Color();
    v70 = v51;
    (*(*(v63 - 8) + 32))(v51 + v62, v52 + v62, v63);
    v59 = *(v53 + 24);
    v64 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v61 = *(v64 - 8);
    v68 = v64;
    v69 = v59;
    if ((*(v61 + 48))(v52 + v59, 1))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (!v49)
  {
    *v46 = *v47;
    v50 = *(sub_100058000(&qword_100776AA8) + 48);
    v51 = (v46 + v50);
    v52 = (v47 + v50);
    v53 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53))
    {
      goto LABEL_24;
    }

    *v51 = *v52;
    v57 = *(v53 + 20);
    v58 = type metadata accessor for TTRListColors.Color();
    v70 = v51;
    (*(*(v58 - 8) + 32))(v51 + v57, v52 + v57, v58);
    v59 = *(v53 + 24);
    v60 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v61 = *(v60 - 8);
    v68 = v60;
    v69 = v59;
    if ((*(v61 + 48))(v52 + v59, 1))
    {
LABEL_29:
      v65 = sub_100058000(&qword_100776A28);
      v66 = v70;
      memcpy(v70 + v69, v52 + v69, *(*(v65 - 8) + 64));
LABEL_31:
      (*(v54 + 56))(v66, 0, 1, v53);
      goto LABEL_32;
    }

LABEL_30:
    (*(v61 + 32))(v70 + v59, v52 + v59, v68);
    v66 = v70;
    (*(v61 + 56))(v70 + v69, 0, 1, v68);
    goto LABEL_31;
  }

  memcpy(v46, v47, *(*(v48 - 8) + 64));
LABEL_33:
  a1[a3[12]] = a2[a3[12]];
  return a1;
}

_BYTE *assignWithTake for TTRSmartListFilterEditorViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v6 = a3[5];
    v7 = &a1[v6];
    v8 = &a2[v6];
    sub_1004A8100(&a1[v6], type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
    v9 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
      {
LABEL_13:
        memcpy(v7, v8, *(*(v9 - 8) + 64));
        goto LABEL_14;
      }
    }

    else if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v21 = type metadata accessor for Date();
        v22 = *(*(v21 - 8) + 32);
        v22(v7, v8, v21);
        v23 = sub_100058000(&qword_100776AE0);
        v22(&v7[v23[12]], &v8[v23[12]], v21);
        v24 = v23[16];
        v25 = &v7[v24];
        v26 = &v8[v24];
        v27 = *(v26 + 1);
        *v25 = *v26;
        *(v25 + 1) = v27;
        v28 = v23[20];
        v29 = &v7[v28];
        v30 = &v8[v28];
        v31 = *(v30 + 1);
        *v29 = *v30;
        *(v29 + 1) = v31;
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
        (*(*(v11 - 8) + 32))(v7, v8, v11);
        v12 = *(sub_100058000(&qword_100776AD8) + 48);
        v13 = &v7[v12];
        v14 = &v8[v12];
        v15 = *(v14 + 1);
        *v13 = *v14;
        *(v13 + 1) = v15;
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 32))(v7, v8, v16);
    v17 = *(sub_100058000(&qword_100776AE8) + 48);
    v18 = &v7[v17];
    v19 = &v8[v17];
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v32 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v32] = a2[v32];
  v33 = a3[8];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(v34, 1, v36);
  v40 = v38(v35, 1, v36);
  if (!v39)
  {
    if (!v40)
    {
      v49 = v35[32];
      v50 = *v34;
      v51 = *(v34 + 8);
      v52 = *(v34 + 16);
      v53 = *(v34 + 24);
      v54 = *(v35 + 1);
      *v34 = *v35;
      *(v34 + 16) = v54;
      v55 = *(v34 + 32);
      *(v34 + 32) = v49;
      sub_1004A68D0(v50, v51, v52, v53, v55);
      *(v34 + 40) = *(v35 + 5);

      v56 = *(v36 + 24);
      v57 = type metadata accessor for TTRLocationQuickPickItem();
      v86 = *(v57 - 8);
      v58 = *(v86 + 48);
      v59 = v58(v34 + v56, 1, v57);
      v60 = v58(&v35[v56], 1, v57);
      if (v59)
      {
        if (!v60)
        {
          (*(v86 + 32))(v34 + v56, &v35[v56], v57);
          (*(v86 + 56))(v34 + v56, 0, 1, v57);
          goto LABEL_27;
        }

        v46 = *(*(sub_100058000(&qword_100775720) - 8) + 64);
        v47 = (v34 + v56);
        v48 = &v35[v56];
      }

      else
      {
        if (!v60)
        {
          (*(v86 + 40))(v34 + v56, &v35[v56], v57);
          goto LABEL_27;
        }

        (*(v86 + 8))(v34 + v56, v57);
        v46 = *(*(sub_100058000(&qword_100775720) - 8) + 64);
        v47 = (v34 + v56);
        v48 = &v35[v56];
      }

LABEL_21:
      memcpy(v47, v48, v46);
      goto LABEL_27;
    }

    sub_1004A8100(v34, type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData);
LABEL_20:
    v46 = *(*(sub_100058000(&qword_100776AB0) - 8) + 64);
    v47 = v34;
    v48 = v35;
    goto LABEL_21;
  }

  if (v40)
  {
    goto LABEL_20;
  }

  v41 = *(v35 + 1);
  *v34 = *v35;
  *(v34 + 16) = v41;
  *(v34 + 32) = v35[32];
  *(v34 + 40) = *(v35 + 5);
  v42 = *(v36 + 24);
  v43 = type metadata accessor for TTRLocationQuickPickItem();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(&v35[v42], 1, v43))
  {
    v45 = sub_100058000(&qword_100775720);
    memcpy((v34 + v42), &v35[v42], *(*(v45 - 8) + 64));
  }

  else
  {
    (*(v44 + 32))(v34 + v42, &v35[v42], v43);
    (*(v44 + 56))(v34 + v42, 0, 1, v43);
  }

  (*(v37 + 56))(v34, 0, 1, v36);
LABEL_27:
  v61 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v61] = a2[v61];
  if (a1 != a2)
  {
    v62 = a3[11];
    v63 = &a1[v62];
    v64 = &a2[v62];
    sub_1004A8100(&a1[v62], type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    v65 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 == 1)
    {
      *v63 = *v64;
      v72 = *(sub_100058000(&qword_100776AA8) + 48);
      v68 = (v63 + v72);
      v69 = (v64 + v72);
      v70 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      v71 = *(v70 - 8);
      if ((*(v71 + 48))(v69, 1, v70))
      {
LABEL_33:
        v73 = sub_100058000(&qword_100776AA0);
        memcpy(v68, v69, *(*(v73 - 8) + 64));
LABEL_44:
        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      *v68 = *v69;
      v79 = *(v70 + 20);
      v80 = type metadata accessor for TTRListColors.Color();
      v88 = v68;
      (*(*(v80 - 8) + 32))(v68 + v79, v69 + v79, v80);
      v76 = *(v70 + 24);
      v81 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v78 = *(v81 - 8);
      v85 = v81;
      v87 = v76;
      if ((*(v78 + 48))(v69 + v76, 1))
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    if (!v66)
    {
      *v63 = *v64;
      v67 = *(sub_100058000(&qword_100776AA8) + 48);
      v68 = (v63 + v67);
      v69 = (v64 + v67);
      v70 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      v71 = *(v70 - 8);
      if ((*(v71 + 48))(v69, 1, v70))
      {
        goto LABEL_33;
      }

      *v68 = *v69;
      v74 = *(v70 + 20);
      v75 = type metadata accessor for TTRListColors.Color();
      v88 = v68;
      (*(*(v75 - 8) + 32))(v68 + v74, v69 + v74, v75);
      v76 = *(v70 + 24);
      v77 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v78 = *(v77 - 8);
      v85 = v77;
      v87 = v76;
      if ((*(v78 + 48))(v69 + v76, 1))
      {
LABEL_38:
        v82 = sub_100058000(&qword_100776A28);
        v83 = v88;
        memcpy(v88 + v87, v69 + v87, *(*(v82 - 8) + 64));
LABEL_43:
        (*(v71 + 56))(v83, 0, 1, v70);
        goto LABEL_44;
      }

LABEL_42:
      (*(v78 + 32))(v88 + v76, v69 + v76, v85);
      v83 = v88;
      (*(v78 + 56))(v88 + v87, 0, 1, v85);
      goto LABEL_43;
    }

    memcpy(v63, v64, *(*(v65 - 8) + 64));
  }

LABEL_45:
  a1[a3[12]] = a2[a3[12]];
  return a1;
}

void sub_1004A9730()
{
  type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(319);
  if (v0 <= 0x3F)
  {
    sub_1004ABD60(319, &unk_100785C70, type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(319);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t destroy for TTRIBoardColumnSelectionRequest()
{
}

void *initializeWithCopy for TTRSmartListFilterEditorViewModel.Details(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TTRSmartListFilterEditorViewModel.Details(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for TTRSmartListFilterEditorViewModel.Details(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.Details(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.Details(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRSmartListFilterEditorViewModel.DateOptions(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_16;
    }

LABEL_13:
    v28 = type metadata accessor for Date();
    (*(*(v28 - 8) + 16))(a1, a2, v28);
    v29 = *(sub_100058000(&qword_100776AE8) + 48);
    v30 = (a1 + v29);
    v31 = (a2 + v29);
    v32 = v31[1];
    *v30 = *v31;
    v30[1] = v32;
    v33 = v31[3];
    v30[2] = v31[2];
    v30[3] = v33;

    goto LABEL_14;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_13;
    case 4:
      v15 = type metadata accessor for Date();
      v16 = *(*(v15 - 8) + 16);
      v16(a1, a2, v15);
      v17 = sub_100058000(&qword_100776AE0);
      v16((a1 + v17[12]), (a2 + v17[12]), v15);
      v18 = v17[16];
      v19 = (a1 + v18);
      v20 = (a2 + v18);
      v21 = v20[1];
      *v19 = *v20;
      v19[1] = v21;
      v22 = v20[3];
      v19[2] = v20[2];
      v19[3] = v22;
      v23 = v17[20];
      v24 = (a1 + v23);
      v25 = (a2 + v23);
      v26 = v25[1];
      *v24 = *v25;
      v24[1] = v26;
      v27 = v25[3];
      v24[2] = v25[2];
      v24[3] = v27;

      goto LABEL_14;
    case 5:
      v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = *(sub_100058000(&qword_100776AD8) + 48);
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      v12 = v11[1];
      *v10 = *v11;
      v10[1] = v12;
      v13 = v11[3];
      v10[2] = v11[2];
      v10[3] = v13;

LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_16:
  v35 = *(v6 + 64);

  return memcpy(a1, a2, v35);
}

uint64_t destroy for TTRSmartListFilterEditorViewModel.DateOptions(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result != 1 && result != 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (result == 3)
  {
LABEL_8:
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 8))(a1, v5);
    v4 = &qword_100776AE8;
    goto LABEL_9;
  }

  if (result == 4)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 8);
    v7(a1, v6);
    v8 = sub_100058000(&qword_100776AE0);
    v7(a1 + *(v8 + 48), v6);

    goto LABEL_10;
  }

  if (result != 5)
  {
    return result;
  }

  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v3 - 8) + 8))(a1, v3);
  v4 = &qword_100776AD8;
LABEL_9:
  sub_100058000(v4);
LABEL_10:
}

char *initializeWithCopy for TTRSmartListFilterEditorViewModel.DateOptions(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 16))(a1, a2, v26);
    v27 = *(sub_100058000(&qword_100776AE8) + 48);
    v28 = &a1[v27];
    v29 = &a2[v27];
    v30 = *(v29 + 1);
    *v28 = *v29;
    *(v28 + 1) = v30;
    v31 = *(v29 + 3);
    *(v28 + 2) = *(v29 + 2);
    *(v28 + 3) = v31;

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_11;
    case 4:
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 16);
      v14(a1, a2, v13);
      v15 = sub_100058000(&qword_100776AE0);
      v14(&a1[v15[12]], &a2[v15[12]], v13);
      v16 = v15[16];
      v17 = &a1[v16];
      v18 = &a2[v16];
      v19 = *(v18 + 1);
      *v17 = *v18;
      *(v17 + 1) = v19;
      v20 = *(v18 + 3);
      *(v17 + 2) = *(v18 + 2);
      *(v17 + 3) = v20;
      v21 = v15[20];
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v24;
      v25 = *(v23 + 3);
      *(v22 + 2) = *(v23 + 2);
      *(v22 + 3) = v25;

      goto LABEL_12;
    case 5:
      v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = *(sub_100058000(&qword_100776AD8) + 48);
      v9 = &a1[v8];
      v10 = &a2[v8];
      v11 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v11;
      v12 = *(v10 + 3);
      *(v9 + 2) = *(v10 + 2);
      *(v9 + 3) = v12;

LABEL_12:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_13:
  v33 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v33);
}

char *assignWithCopy for TTRSmartListFilterEditorViewModel.DateOptions(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1004A8100(a1, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_15;
    }

LABEL_12:
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 16))(a1, a2, v20);
    v21 = *(sub_100058000(&qword_100776AE8) + 48);
    v22 = &a1[v21];
    v23 = &a2[v21];
    *v22 = *v23;
    *(v22 + 1) = *(v23 + 1);
    *(v22 + 2) = *(v23 + 2);
    *(v22 + 3) = *(v23 + 3);

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_12;
    case 4:
      v11 = type metadata accessor for Date();
      v12 = *(*(v11 - 8) + 16);
      v12(a1, a2, v11);
      v13 = sub_100058000(&qword_100776AE0);
      v12(&a1[v13[12]], &a2[v13[12]], v11);
      v14 = v13[16];
      v15 = &a1[v14];
      v16 = &a2[v14];
      *v15 = *v16;
      *(v15 + 1) = *(v16 + 1);
      *(v15 + 2) = *(v16 + 2);
      *(v15 + 3) = *(v16 + 3);
      v17 = v13[20];
      v18 = &a1[v17];
      v19 = &a2[v17];
      *v18 = *v19;
      *(v18 + 1) = *(v19 + 1);
      *(v18 + 2) = *(v19 + 2);
      *(v18 + 3) = *(v19 + 3);

      goto LABEL_13;
    case 5:
      v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = *(sub_100058000(&qword_100776AD8) + 48);
      v9 = &a1[v8];
      v10 = &a2[v8];
      *v9 = *v10;
      *(v9 + 1) = *(v10 + 1);
      *(v9 + 2) = *(v10 + 2);
      *(v9 + 3) = *(v10 + 3);

LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_15:
  v25 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v25);
}

char *initializeWithTake for TTRSmartListFilterEditorViewModel.DateOptions(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 32))(a1, a2, v23);
    v24 = *(sub_100058000(&qword_100776AE8) + 48);
    v25 = &a1[v24];
    v26 = &a2[v24];
    v27 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 1) = v27;
    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_11;
    case 4:
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 32);
      v13(a1, a2, v12);
      v14 = sub_100058000(&qword_100776AE0);
      v13(&a1[v14[12]], &a2[v14[12]], v12);
      v15 = v14[16];
      v16 = &a1[v15];
      v17 = &a2[v15];
      v18 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v18;
      v19 = v14[20];
      v20 = &a1[v19];
      v21 = &a2[v19];
      v22 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v22;
      goto LABEL_12;
    case 5:
      v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = *(sub_100058000(&qword_100776AD8) + 48);
      v9 = &a1[v8];
      v10 = &a2[v8];
      v11 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v11;
LABEL_12:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_13:
  v29 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v29);
}

char *assignWithTake for TTRSmartListFilterEditorViewModel.DateOptions(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1004A8100(a1, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
    {
      goto LABEL_15;
    }

LABEL_12:
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 32))(a1, a2, v23);
    v24 = *(sub_100058000(&qword_100776AE8) + 48);
    v25 = &a1[v24];
    v26 = &a2[v24];
    v27 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 1) = v27;
    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_12;
    case 4:
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 32);
      v13(a1, a2, v12);
      v14 = sub_100058000(&qword_100776AE0);
      v13(&a1[v14[12]], &a2[v14[12]], v12);
      v15 = v14[16];
      v16 = &a1[v15];
      v17 = &a2[v15];
      v18 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v18;
      v19 = v14[20];
      v20 = &a1[v19];
      v21 = &a2[v19];
      v22 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v22;
      goto LABEL_13;
    case 5:
      v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = *(sub_100058000(&qword_100776AD8) + 48);
      v9 = &a1[v8];
      v10 = &a2[v8];
      v11 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v11;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_15:
  v29 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v29);
}

uint64_t sub_1004AAED0()
{
  v9 = &unk_100641988;
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v10 = &v8;
    swift_getTupleTypeLayout2();
    v11 = &v7;
    swift_getTupleTypeLayout2();
    v12 = &v6;
    v4[4] = v2;
    v4[5] = v2;
    v4[6] = " ";
    v4[7] = " ";
    swift_getTupleTypeLayout();
    v13 = &v5;
    result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v14 = v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.DateOptions.Bare(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.DateOptions.Bare(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeWithCopy for TTRSmartListFilterEditorViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_100275DE8(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for TTRSmartListFilterEditorViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_100275DE8(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_1004A68D0(v8, v9, v10, v11, v12);
  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnSelectionRequest(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRSmartListFilterEditorViewModel.LocationState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_1004A68D0(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.LocationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.LocationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for TTRSmartListFilterEditorViewModel.LocationData(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = v17 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    sub_100275DE8(*a2, v8, v9, v10, v11);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = *(a2 + 40);
    v12 = *(a3 + 24);
    v13 = type metadata accessor for TTRLocationQuickPickItem();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);

    if (v15(a2 + v12, 1, v13))
    {
      v16 = sub_100058000(&qword_100775720);
      memcpy((a1 + v12), (a2 + v12), *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(a1 + v12, a2 + v12, v13);
      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }
  }

  return a1;
}

uint64_t destroy for TTRSmartListFilterEditorViewModel.LocationData(uint64_t a1, uint64_t a2)
{
  sub_1004A68D0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));

  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRLocationQuickPickItem();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t initializeWithCopy for TTRSmartListFilterEditorViewModel.LocationData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_100275DE8(*a2, v7, v8, v9, v10);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a3 + 24);
  v12 = type metadata accessor for TTRLocationQuickPickItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);

  if (v14(a2 + v11, 1, v12))
  {
    v15 = sub_100058000(&qword_100775720);
    memcpy((a1 + v11), (a2 + v11), *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(a1 + v11, a2 + v11, v12);
    (*(v13 + 56))(a1 + v11, 0, 1, v12);
  }

  return a1;
}

uint64_t assignWithCopy for TTRSmartListFilterEditorViewModel.LocationData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_100275DE8(*a2, v7, v8, v9, v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v15 = *(a1 + 32);
  *(a1 + 32) = v10;
  sub_1004A68D0(v11, v12, v13, v14, v15);
  *(a1 + 40) = *(a2 + 40);

  v16 = *(a3 + 24);
  v17 = type metadata accessor for TTRLocationQuickPickItem();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  LODWORD(v6) = v19(a1 + v16, 1, v17);
  v20 = v19(a2 + v16, 1, v17);
  if (!v6)
  {
    if (!v20)
    {
      (*(v18 + 24))(a1 + v16, a2 + v16, v17);
      return a1;
    }

    (*(v18 + 8))(a1 + v16, v17);
    goto LABEL_6;
  }

  if (v20)
  {
LABEL_6:
    v21 = sub_100058000(&qword_100775720);
    memcpy((a1 + v16), (a2 + v16), *(*(v21 - 8) + 64));
    return a1;
  }

  (*(v18 + 16))(a1 + v16, a2 + v16, v17);
  (*(v18 + 56))(a1 + v16, 0, 1, v17);
  return a1;
}

uint64_t initializeWithTake for TTRSmartListFilterEditorViewModel.LocationData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRLocationQuickPickItem();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = sub_100058000(&qword_100775720);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t assignWithTake for TTRSmartListFilterEditorViewModel.LocationData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = v6;
  sub_1004A68D0(v7, v8, v9, v10, v12);
  *(a1 + 40) = *(a2 + 40);

  v13 = *(a3 + 24);
  v14 = type metadata accessor for TTRLocationQuickPickItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 40))(a1 + v13, a2 + v13, v14);
      return a1;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100058000(&qword_100775720);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    return a1;
  }

  (*(v15 + 32))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
  return a1;
}

void sub_1004ABCA0()
{
  sub_1004ABD60(319, &unk_100785DD0, &type metadata accessor for TTRLocationQuickPickItem);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1004ABD60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

char *initializeBufferWithCopyOfBuffer for TTRSmartListFilterEditorViewModel.ListData(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = *(a3 + 20);
    v9 = type metadata accessor for TTRListColors.Color();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v7], &a2[v7], v9);
    v11 = *(a3 + 24);
    v12 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = sub_100058000(&qword_100776A28);
      memcpy(&v4[v11], &a2[v11], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(&v4[v11], &a2[v11], v12);
      (*(v13 + 56))(&v4[v11], 0, 1, v12);
    }
  }

  return v4;
}

uint64_t destroy for TTRSmartListFilterEditorViewModel.ListData(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for TTRListColors.Color();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *initializeWithCopy for TTRSmartListFilterEditorViewModel.ListData(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRListColors.Color();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a2[v10], 1, v11))
  {
    v13 = sub_100058000(&qword_100776A28);
    memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(&a1[v10], &a2[v10], v11);
    (*(v12 + 56))(&a1[v10], 0, 1, v11);
  }

  return a1;
}

char *assignWithCopy for TTRSmartListFilterEditorViewModel.ListData(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRListColors.Color();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  LODWORD(v6) = v11(&a1[v8], 1, v9);
  v12 = v11(&a2[v8], 1, v9);
  if (!v6)
  {
    if (!v12)
    {
      (*(v10 + 24))(&a1[v8], &a2[v8], v9);
      return a1;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_100058000(&qword_100776A28);
    memcpy(&a1[v8], &a2[v8], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v10 + 16))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
  return a1;
}

char *initializeWithTake for TTRSmartListFilterEditorViewModel.ListData(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRListColors.Color();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100058000(&qword_100776A28);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  return a1;
}

char *assignWithTake for TTRSmartListFilterEditorViewModel.ListData(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRListColors.Color();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(&a1[v9], 1, v10);
  v13 = v12(&a2[v9], 1, v10);
  if (!v7)
  {
    if (!v13)
    {
      (*(v11 + 40))(&a1[v9], &a2[v9], v10);
      return a1;
    }

    (*(v11 + 8))(&a1[v9], v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100058000(&qword_100776A28);
    memcpy(&a1[v9], &a2[v9], *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 32))(&a1[v9], &a2[v9], v10);
  (*(v11 + 56))(&a1[v9], 0, 1, v10);
  return a1;
}

void sub_1004AC710()
{
  type metadata accessor for TTRListColors.Color();
  if (v0 <= 0x3F)
  {
    sub_1004ABD60(319, &unk_100785E70, &type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRSmartListFilterEditorViewModel.ListsData(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *a2;
    *a1 = *a2;
    v17 = v16;
    v18 = *(sub_100058000(&qword_100776AA8) + 48);
    v11 = &a1[v18];
    v12 = (a2 + v18);
    v13 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13))
    {
LABEL_8:
      v19 = sub_100058000(&qword_100776AA0);
      memcpy(v11, v12, *(*(v19 - 8) + 64));
LABEL_18:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v28 = v12[1];
    *v11 = *v12;
    *(v11 + 1) = v28;
    v29 = *(v13 + 20);
    v30 = type metadata accessor for TTRListColors.Color();
    v33 = *(*(v30 - 8) + 16);

    v33(&v11[v29], v12 + v29, v30);
    v25 = *(v13 + 24);
    v26 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v12 + v25, 1, v26))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    v10 = *(sub_100058000(&qword_100776AA8) + 48);
    v11 = &a1[v10];
    v12 = (a2 + v10);
    v13 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13))
    {
      goto LABEL_8;
    }

    v22 = v12[1];
    *v11 = *v12;
    *(v11 + 1) = v22;
    v23 = *(v13 + 20);
    v24 = type metadata accessor for TTRListColors.Color();
    v32 = *(*(v24 - 8) + 16);

    v32(&v11[v23], v12 + v23, v24);
    v25 = *(v13 + 24);
    v26 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v12 + v25, 1, v26))
    {
LABEL_15:
      v31 = sub_100058000(&qword_100776A28);
      memcpy(&v11[v25], v12 + v25, *(*(v31 - 8) + 64));
LABEL_17:
      (*(v14 + 56))(v11, 0, 1, v13);
      goto LABEL_18;
    }

LABEL_16:
    (*(v27 + 16))(&v11[v25], v12 + v25, v26);
    (*(v27 + 56))(&v11[v25], 0, 1, v26);
    goto LABEL_17;
  }

  v20 = *(v6 + 64);

  return memcpy(a1, a2, v20);
}

uint64_t destroy for TTRSmartListFilterEditorViewModel.ListsData(id *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {

    v3 = a1 + *(sub_100058000(&qword_100776AA8) + 48);
    v4 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    result = (*(*(v4 - 8) + 48))(v3, 1, v4);
    if (!result)
    {

      v5 = *(v4 + 20);
      v6 = type metadata accessor for TTRListColors.Color();
      (*(*(v6 - 8) + 8))(&v3[v5], v6);
      v7 = *(v4 + 24);
      v8 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      v10 = *(v8 - 8);
      result = (*(v10 + 48))(&v3[v7], 1, v8);
      if (!result)
      {
        v9 = *(v10 + 8);

        return v9(&v3[v7], v8);
      }
    }
  }

  return result;
}

void **initializeWithCopy for TTRSmartListFilterEditorViewModel.ListsData(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = v14;
    v16 = *(sub_100058000(&qword_100776AA8) + 48);
    v10 = (a1 + v16);
    v11 = (a2 + v16);
    v12 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
LABEL_6:
      v17 = sub_100058000(&qword_100776AA0);
      memcpy(v10, v11, *(*(v17 - 8) + 64));
LABEL_16:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v26 = v11[1];
    *v10 = *v11;
    v10[1] = v26;
    v27 = *(v12 + 20);
    v28 = type metadata accessor for TTRListColors.Color();
    v31 = *(*(v28 - 8) + 16);

    v31(v10 + v27, v11 + v27, v28);
    v23 = *(v12 + 24);
    v24 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v11 + v23, 1, v24))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
    v9 = *(sub_100058000(&qword_100776AA8) + 48);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      goto LABEL_6;
    }

    v20 = v11[1];
    *v10 = *v11;
    v10[1] = v20;
    v21 = *(v12 + 20);
    v22 = type metadata accessor for TTRListColors.Color();
    v30 = *(*(v22 - 8) + 16);

    v30(v10 + v21, v11 + v21, v22);
    v23 = *(v12 + 24);
    v24 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v11 + v23, 1, v24))
    {
LABEL_13:
      v29 = sub_100058000(&qword_100776A28);
      memcpy(v10 + v23, v11 + v23, *(*(v29 - 8) + 64));
LABEL_15:
      (*(v13 + 56))(v10, 0, 1, v12);
      goto LABEL_16;
    }

LABEL_14:
    (*(v25 + 16))(v10 + v23, v11 + v23, v24);
    (*(v25 + 56))(v10 + v23, 0, 1, v24);
    goto LABEL_15;
  }

  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

void **assignWithCopy for TTRSmartListFilterEditorViewModel.ListsData(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1004A8100(a1, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = v14;
    v16 = *(sub_100058000(&qword_100776AA8) + 48);
    v10 = (a1 + v16);
    v11 = (a2 + v16);
    v12 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
LABEL_7:
      v17 = sub_100058000(&qword_100776AA0);
      memcpy(v10, v11, *(*(v17 - 8) + 64));
LABEL_17:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    *v10 = *v11;
    v10[1] = v11[1];
    v25 = *(v12 + 20);
    v26 = type metadata accessor for TTRListColors.Color();
    v29 = *(*(v26 - 8) + 16);

    v29(v10 + v25, v11 + v25, v26);
    v22 = *(v12 + 24);
    v23 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v11 + v22, 1, v23))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
    v9 = *(sub_100058000(&qword_100776AA8) + 48);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      goto LABEL_7;
    }

    *v10 = *v11;
    v10[1] = v11[1];
    v20 = *(v12 + 20);
    v21 = type metadata accessor for TTRListColors.Color();
    v28 = *(*(v21 - 8) + 16);

    v28(v10 + v20, v11 + v20, v21);
    v22 = *(v12 + 24);
    v23 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v11 + v22, 1, v23))
    {
LABEL_14:
      v27 = sub_100058000(&qword_100776A28);
      memcpy(v10 + v22, v11 + v22, *(*(v27 - 8) + 64));
LABEL_16:
      (*(v13 + 56))(v10, 0, 1, v12);
      goto LABEL_17;
    }

LABEL_15:
    (*(v24 + 16))(v10 + v22, v11 + v22, v23);
    (*(v24 + 56))(v10 + v22, 0, 1, v23);
    goto LABEL_16;
  }

  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

void *initializeWithTake for TTRSmartListFilterEditorViewModel.ListsData(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v12 = *(sub_100058000(&qword_100776AA8) + 48);
    v8 = (a1 + v12);
    v9 = (a2 + v12);
    v10 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
LABEL_6:
      v13 = sub_100058000(&qword_100776AA0);
      memcpy(v8, v9, *(*(v13 - 8) + 64));
LABEL_16:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    *v8 = *v9;
    v21 = *(v10 + 20);
    v22 = type metadata accessor for TTRListColors.Color();
    (*(*(v22 - 8) + 32))(v8 + v21, v9 + v21, v22);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9 + v18, 1, v19))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(sub_100058000(&qword_100776AA8) + 48);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
      goto LABEL_6;
    }

    *v8 = *v9;
    v16 = *(v10 + 20);
    v17 = type metadata accessor for TTRListColors.Color();
    (*(*(v17 - 8) + 32))(v8 + v16, v9 + v16, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9 + v18, 1, v19))
    {
LABEL_13:
      v23 = sub_100058000(&qword_100776A28);
      memcpy(v8 + v18, v9 + v18, *(*(v23 - 8) + 64));
LABEL_15:
      (*(v11 + 56))(v8, 0, 1, v10);
      goto LABEL_16;
    }

LABEL_14:
    (*(v20 + 32))(v8 + v18, v9 + v18, v19);
    (*(v20 + 56))(v8 + v18, 0, 1, v19);
    goto LABEL_15;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void *assignWithTake for TTRSmartListFilterEditorViewModel.ListsData(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1004A8100(a1, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v12 = *(sub_100058000(&qword_100776AA8) + 48);
    v8 = (a1 + v12);
    v9 = (a2 + v12);
    v10 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
LABEL_7:
      v13 = sub_100058000(&qword_100776AA0);
      memcpy(v8, v9, *(*(v13 - 8) + 64));
LABEL_17:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    *v8 = *v9;
    v21 = *(v10 + 20);
    v22 = type metadata accessor for TTRListColors.Color();
    (*(*(v22 - 8) + 32))(v8 + v21, v9 + v21, v22);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9 + v18, 1, v19))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(sub_100058000(&qword_100776AA8) + 48);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10))
    {
      goto LABEL_7;
    }

    *v8 = *v9;
    v16 = *(v10 + 20);
    v17 = type metadata accessor for TTRListColors.Color();
    (*(*(v17 - 8) + 32))(v8 + v16, v9 + v16, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9 + v18, 1, v19))
    {
LABEL_14:
      v23 = sub_100058000(&qword_100776A28);
      memcpy(v8 + v18, v9 + v18, *(*(v23 - 8) + 64));
LABEL_16:
      (*(v11 + 56))(v8, 0, 1, v10);
      goto LABEL_17;
    }

LABEL_15:
    (*(v20 + 32))(v8 + v18, v9 + v18, v19);
    (*(v20 + 56))(v8 + v18, 0, 1, v19);
    goto LABEL_16;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void sub_1004AE254()
{
  sub_1004ABD60(319, &unk_100785F28, type metadata accessor for TTRSmartListFilterEditorViewModel.ListData);
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3 = &v2;
    swift_getTupleTypeLayout2();
    v4 = &v1;
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t getEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.HelpTopic(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.HelpTopic(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}