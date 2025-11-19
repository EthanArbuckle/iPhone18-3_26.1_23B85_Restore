uint64_t sub_10011F2F8(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076BA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10011F380()
{
  v1 = v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 232);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v9 = v0[2];
  v10 = *(v2 + 24);
  v10(v3, v2);
  sub_100003540(0, &qword_10076CAB8);
  if (swift_dynamicCast())
  {
    v11 = v40;
    v12 = [v40 customContext];
    if (v12)
    {
      v13 = v12;
      v14 = REMSmartListCustomContextChangeItem.filter.getter();
    }

    else
    {
      v14 = 0;
    }

    v23 = v14;
    v18 = [v11 accountID];

    goto LABEL_13;
  }

  v10(v3, v2);
  type metadata accessor for TTRListDetailCreationChangeItem(0);
  if (swift_dynamicCast())
  {
    v37 = v9;
    v38 = v10;
    v15 = v40;
    swift_beginAccess();
    v14 = v15[9];
    v16 = v15[3];
    v17 = v14;
    v18 = [v16 objectID];

LABEL_13:
    v24 = v18;
    v38(v3, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v39 + 8))(v7, AssociatedTypeWitness);
    v27 = [v26 store];

    v28 = sub_10000C36C((v1 + *(*v1 + 296)), *(v1 + *(*v1 + 296) + 24));
    v29 = sub_10011E748(v14, *(v1 + *(*v1 + 288)), v24, v27, *(*v28 + 24), v1, &off_100716698);
    v31 = v30;
    v33 = v32;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      [Strong presentViewController:v29 animated:1 completion:0];
    }

    v36 = (v1 + *(*v1 + 312));
    *v36 = v31;
    v36[1] = v33;
    swift_unknownObjectRelease();
    return;
  }

  if (qword_100766F30 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003E30(v19, qword_10076CA18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unable to request filter editor", v22, 2u);
  }
}

uint64_t sub_10011F838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011F898(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10011F8E0(void *a1)
{
  v2 = v1;
  if (qword_100766F30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10076CA18);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v22[0] = a1;
  sub_100058000(&qword_10076CAE0);
  v6 = Optional.descriptionOrNil.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  if (a1)
  {
    v8 = a1;
    REMCustomSmartListFilterDescriptor.postFilterAnalytics()();
  }

  v9 = (v2 + *(*v2 + 312));
  *v9 = 0;
  v9[1] = 0;
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    result = [Strong view];
    if (!result)
    {
      goto LABEL_10;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    v23 = sub_100003540(0, &qword_100771B60);
    v24 = &protocol witness table for UITableView;
    v22[0] = v12;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    swift_unknownObjectRelease();
    sub_100004758(v22);
  }

  v13._countAndFlagsBits = 0x462065676E616843;
  v13._object = 0xED00007265746C69;
  v14._object = 0x8000000100672E70;
  v14._countAndFlagsBits = 0xD000000000000030;
  TTRLocalizedString(_:comment:)(v13, v14);
  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();

  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10011FF10;
  *(v18 + 24) = v17;
  v24 = sub_100026410;
  v25 = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100026440;
  v23 = &unk_100716878;
  v19 = _Block_copy(v22);
  v20 = a1;

  [v15 withActionName:v16 block:v19];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

id sub_10011FC9C()
{
  v1 = (v0 + *(*v0 + 312));
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = [result view];
    if (result)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClassUnconditional();
      v4[3] = sub_100003540(0, &qword_100771B60);
      v4[4] = &protocol witness table for UITableView;
      v4[0] = v3;
      UIViewController.deselectRowsAlongsideTransition(for:animated:)();
      swift_unknownObjectRelease();
      return sub_100004758(v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10011FD9C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 232);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 24))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_100120010(uint64_t a1)
{
  result = sub_100120104(&qword_10076CC58, type metadata accessor for TTRIEditableSectionsPresentationTreeMaker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001200AC(uint64_t a1)
{
  result = sub_100120104(&qword_10076CCA0, type metadata accessor for TTRIDefaultPresentationTreeMaker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100120104(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_10012033C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_ttriAccessibilityGroupListCount];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_collapseTapGestureRecognizer] = 0;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v30.receiver = v3;
  v30.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v30, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = objc_allocWithZone(UITapGestureRecognizer);
  v11 = v9;
  v12 = [v10 initWithTarget:v11 action:"treeCellViewToggleExpandState"];
  v13 = *&v11[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_collapseTapGestureRecognizer];
  *&v11[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_collapseTapGestureRecognizer] = v12;
  v14 = v12;

  v15 = *&v11[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView];
  v16 = v11;
  [v15 addGestureRecognizer:v14];
  [v16 setEditingAccessoryType:4];
  v17 = *&v16[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  sub_100003540(0, &qword_100771DF0);
  v18 = v17;
  v19 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v18 setFont:v19];

  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() imageNamed:v20];

  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];
  v23 = v22;
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 setContentMode:4];

  v24 = [objc_opt_self() secondaryLabelColor];
  [v23 setTintColor:v24];

  v25 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  [*&v16[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView] addSubview:v23];
  v26 = objc_opt_self();
  v27 = *&v16[v25];

  UIView.constraintsEqualTo(_:edges:)();
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];

  return v16;
}

void sub_100120800(char a1, char a2)
{
  v22.receiver = v2;
  v22.super_class = swift_getObjectType();
  v5 = a1 & 1;
  if (a1)
  {
    v6 = &selRef_labelColor;
  }

  else
  {
    v6 = &selRef_tintColor;
  }

  objc_msgSendSuper2(&v22, "setSelected:animated:", v5, a2 & 1);
  v7 = [objc_opt_self() *v6];
  v8 = v7;
  if (a2)
  {
    v9 = objc_opt_self();
    [v2 selectionFadeDuration];
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    *(v12 + 24) = v8;
    v21[4] = sub_100121A70;
    v21[5] = v12;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10001047C;
    v21[3] = &unk_100716960;
    v13 = _Block_copy(v21);
    v14 = v2;
    v15 = v8;

    [v9 animateWithDuration:v13 animations:v11];

    _Block_release(v13);
  }

  else
  {
    v16 = *&v2[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView];
    v17 = *&v16[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor];
    *&v16[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor] = v7;
    v18 = v7;
    v19 = v16;

    v20 = *&v19[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView];
    if (v20)
    {
      [v20 setTintColor:v18];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001209EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView);
  v3 = *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor];
  *&v2[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor] = a2;
  v6 = a2;
  v4 = v2;

  v5 = *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView];
  if (v5)
  {
    [v5 setTintColor:v6];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100120B00()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v17, "accessibilityLabel");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_100058000(&unk_100771E10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D400;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  if ((v0[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_ttriAccessibilityGroupListCount + 8] & 1) == 0)
  {
    v7 = *&v0[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_ttriAccessibilityGroupListCount];
    static TTRAccesibility.AccountsList.Format.ItemCount.getter();
    sub_100058000(&unk_100786CB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10062D400;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v7;
    v9 = String.init(format:_:)();
    v11 = v10;

    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v6 = sub_100546970((v12 > 1), v13 + 1, 1, v6);
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
  }

  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_100120CF4()
{
  v1 = type metadata accessor for TTRITreeViewExpandedState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRITreeViewCellModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_100121990(v0 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100121A00(v7);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  TTRITreeViewCellModel.expandedState.getter();
  v13 = (*(v2 + 88))(v4, v1);
  if (v13 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  if (v13 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v15 = static TTRAccesibility.AccountsList.Attributes.Collapsed.getter();
  }

  else
  {
    if (v13 != enum case for TTRITreeViewExpandedState.expanded(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v15 = static TTRAccesibility.AccountsList.Attributes.Expanded.getter();
  }

  v16 = v15;
  (*(v9 + 8))(v11, v8);
  return v16;
}

id sub_100120FD8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100121058()
{
  if ([v0 isEditing])
  {
    v1 = static TTRAccesibility.AccountsList.Hint.GroupEditing.getter();
  }

  else
  {
    v1 = static TTRAccesibility.AccountsList.Hint.Group.getter();
  }

  v3 = v1;
  v4 = v2;
  sub_100058000(&unk_100771E10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D3F0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = static TTRAccesibility.AccountsList.Hint.DragAndDrop.getter();
  *(v5 + 56) = v6;
  static TTRAccesibility.General.Label.SentenceEnd.getter();
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  v7 = BidirectionalCollection<>.joined(separator:)();

  return v7;
}

uint64_t sub_1001211D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v7 - 8);
  v9 = aBlock - v8;
  v10 = type metadata accessor for TTRITreeViewCellModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_100121990(v1 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100121A00(v9);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  TTRITreeViewCellModel.expandedState.getter();
  v16 = (*(v4 + 88))(v6, v3);
  if (v16 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
LABEL_11:
    if ([v1 isEditing])
    {
      static TTRAccesibility.AccountsList.Action.GroupInfo.getter();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = objc_allocWithZone(UIAccessibilityCustomAction);

      v25 = String._bridgeToObjectiveC()();

      v32 = sub_100121A68;
      v33 = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10044E9F0;
      v31 = &unk_100716910;
      v26 = _Block_copy(aBlock);
      v27 = [v24 initWithName:v25 actionHandler:v26];

      _Block_release(v26);

      v28 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v11 + 8))(v13, v10);
      return v34;
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    return v15;
  }

  if (v16 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v17 = static TTRAccesibility.AccountsList.Action.Expand.getter();
LABEL_8:
    v19 = v17;
    v20 = v18;
    sub_100003540(0, &qword_10076BCE0);
    v31 = ObjectType;
    aBlock[0] = v1;
    v21 = v1;
    v22 = sub_1003338E4(v19, v20, aBlock, "treeCellViewToggleExpandState");
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v15 = v34;
    goto LABEL_11;
  }

  if (v16 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    v17 = static TTRAccesibility.AccountsList.Action.Collapse.getter();
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

BOOL sub_1001216C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C2C60(Strong);
      swift_unknownObjectRelease();
    }
  }

  return Strong != 0;
}

void sub_100121808()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_collapseTapGestureRecognizer);
}

uint64_t type metadata accessor for TTRIAccountListsViewGroupCell()
{
  result = qword_10076CD00;
  if (!qword_10076CD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100121938()
{
  result = qword_10076CFD0;
  if (!qword_10076CFD0)
  {
    type metadata accessor for TTRIAccountListsViewGroupCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076CFD0);
  }

  return result;
}

uint64_t sub_100121990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_1007884E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100121A00(uint64_t a1)
{
  v2 = sub_100058000(&unk_1007884E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TTRIShowSiriFoundInAppsAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIWelcomeNavigationAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWelcomeNavigationAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIWelcomeNavigationAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWelcomeNavigationAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall REMCustomSmartListFilterDescriptor.postFilterAnalytics()()
{
  v0 = sub_100058000(&qword_10076D018);
  __chkstk_darwin(v0 - 8);
  v2 = &v47 - v1;
  v3 = sub_100058000(&qword_10076D020);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v6 = sub_100058000(&qword_10076D028);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_100058000(&qword_10076D030);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_100058000(&qword_10076D038);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  REMCustomSmartListFilterDescriptor.hashtags.getter();
  v15 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15) != 1;
  sub_1000079B4(v14, &qword_10076D038);
  sub_100003540(0, &qword_100780A30);
  isa = NSNumber.init(integerLiteral:)(v16).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = &_swiftEmptyDictionarySingleton;
  sub_100127D20(isa, 0x687361685F736168, 0xEC00000073676174, isUniquelyReferenced_nonNull_native);
  v19 = v48;
  REMCustomSmartListFilterDescriptor.date.getter();
  v20 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v21 = (*(*(v20 - 8) + 48))(v11, 1, v20) != 1;
  sub_1000079B4(v11, &qword_10076D030);
  v22 = NSNumber.init(integerLiteral:)(v21).super.super.isa;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v19;
  sub_100127D20(v22, 0x646575645F736168, 0xEB00000000657461, v23);
  v24 = v48;
  REMCustomSmartListFilterDescriptor.time.getter();
  v25 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v26 = (*(*(v25 - 8) + 48))(v8, 1, v25) != 1;
  sub_1000079B4(v8, &qword_10076D028);
  v27 = NSNumber.init(integerLiteral:)(v26).super.super.isa;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v24;
  sub_100127D20(v27, 0x746575645F736168, 0xEB00000000656D69, v28);
  v29 = v48;
  v30 = REMCustomSmartListFilterDescriptor.priorities.getter();
  if (v30)
  {

    v30 = 1;
  }

  v31 = NSNumber.init(integerLiteral:)(v30).super.super.isa;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v29;
  sub_100127D20(v31, 0x6F6972705F736168, 0xEE00736569746972, v32);
  v33 = v48;
  v34 = REMCustomSmartListFilterDescriptor.flagged.getter() != 2;
  v35 = NSNumber.init(integerLiteral:)(v34).super.super.isa;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v33;
  sub_100127D20(v35, 0x67616C665F736168, 0xEB00000000646567, v36);
  v37 = v48;
  REMCustomSmartListFilterDescriptor.location.getter();
  v38 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v39 = (*(*(v38 - 8) + 48))(v5, 1, v38) != 1;
  sub_1000079B4(v5, &qword_10076D020);
  v40 = NSNumber.init(integerLiteral:)(v39).super.super.isa;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v37;
  sub_100127D20(v40, 0x61636F6C5F736168, 0xEC0000006E6F6974, v41);
  v42 = v48;
  REMCustomSmartListFilterDescriptor.lists.getter();
  v43 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v44 = (*(*(v43 - 8) + 48))(v2, 1, v43) != 1;
  sub_1000079B4(v2, &qword_10076D018);
  v45 = NSNumber.init(integerLiteral:)(v44).super.super.isa;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v42;
  sub_100127D20(v45, 0x7473696C5F736168, 0xE900000000000073, v46);
  type metadata accessor for Analytics();
  static Analytics.postEvent(_:payload:duration:)();
}

uint64_t sub_1001221D8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076D000);
  v1 = sub_100003E30(v0, qword_10076D000);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*TTRSmartListFilterEditorInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100117B50;
}

uint64_t TTRSmartListFilterEditorInteractor.__allocating_init(filter:store:undoManager:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  TTRSmartListFilterEditorInteractor.init(filter:store:undoManager:)(a1, a2, a3);
  return v6;
}

uint64_t TTRSmartListFilterEditorInteractor.init(filter:store:undoManager:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels;
  v9 = type metadata accessor for REMHashtagLabelCollection();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  *(v4 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_undoObservationToken) = 0;
  *(v4 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_listFetchOperationManager) = 0;
  *(v4 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_store) = a2;
  if (a1)
  {
    v10 = a2;
    v11 = a1;
  }

  else
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v12 = a2;
    v11 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  *(v4 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_initialFilter) = v11;
  *(v4 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter) = v11;
  sub_100058000(&qword_10076D070);
  sub_100003540(0, &qword_100777780);
  v13 = a1;
  v14 = v11;
  static OS_dispatch_queue.main.getter();
  type metadata accessor for RDIDispatchQueue();
  static RDIDispatchQueue.utilityQueue.getter();
  *(swift_allocObject() + 16) = a2;
  v15 = a2;
  *(v4 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_listFetchOperationManager) = REMAsyncOperationManager.__allocating_init(queue:backgroundQueue:syncPerformOperationFunc:operationDidFinish:)();

  v16 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v4 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_undoObservationToken) = v16;

  return v4;
}

id sub_1001225D4@<X0>(id a1@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v9 = 0;
  v5 = [a1 fetchListWithObjectID:v4 error:&v9];
  if (v5)
  {
    result = v9;
    v7 = v5;
  }

  else
  {
    v8 = v9;
    v7 = _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  *a3 = v7;
  *(a3 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1001226A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRSmartListFilterEditorInteractor.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_undoObservationToken))
  {
    sub_100003540(0, &qword_100788D40);

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788(v0 + 16);
    sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels, &qword_10076D078);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTRSmartListFilterEditorInteractor.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_undoObservationToken))
  {
    sub_100003540(0, &qword_100788D40);

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788(v0 + 16);
    sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels, &qword_10076D078);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *TTRSmartListFilterEditorInteractor.filter.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter;
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  v4 = REMCustomSmartListFilterDescriptor.isEmpty.getter();

  if (v4)
  {
    return 0;
  }

  v5 = *(v1 + v2);
  v6 = v5;
  return v5;
}

uint64_t TTRSmartListFilterEditorInteractor.selectableHashtagLabels.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_10076D078);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_10076D078);
  v10 = type metadata accessor for REMHashtagLabelCollection();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000079B4(v8, &qword_10076D078);
  sub_100122B68(v1, a1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100127E6C(v6, v1 + v9);
  return swift_endAccess();
}

char *sub_100122B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  Style = type metadata accessor for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle();
  v59 = *(Style - 8);
  __chkstk_darwin(Style);
  v60 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMHashtagLabelCollection();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v54 - v9;
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMHashtagLabelDataView();
  v18 = *(a1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_store);
  (*(v14 + 104))(v16, enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:), v13);
  v19 = static REMHashtagLabelDataView.fetchAllHashtagLabels(store:sortingStyle:includeDetails:)();
  v61 = 0;
  v20 = v19;
  v63 = v18;
  v64 = v17;
  v54 = v10;
  v55 = v12;
  v65 = v7;
  (*(v14 + 8))(v16, v13);
  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v55;
  v24 = v59;
  v23 = v60;
  v25 = v65;
  if (v21)
  {
    v66 = _swiftEmptyArrayStorage;
    result = sub_1004A1CD0(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v28 = v66;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v20 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 name];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v66 = v28;
      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        sub_1004A1CD0((v35 > 1), v36 + 1, 1);
        v28 = v66;
      }

      ++v27;
      v28[2] = v36 + 1;
      v37 = &v28[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      v25 = v65;
    }

    while (v21 != v27);

    v22 = v55;
    v24 = v59;
    v23 = v60;
  }

  else
  {
  }

  v38 = Style;
  (*(v24 + 104))(v23, enum case for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.store(_:), Style);
  v39 = v24 + 104;
  v40 = v61;
  static REMHashtagLabelDataView.fetchSmartListHashtagLabels(store:fetchStyle:)();
  v41 = (v39 - 96);
  v43 = v57;
  v42 = v58;
  if (v40)
  {
    (*v41)(v23, v38);

    if (qword_100766F38 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100003E30(v44, qword_10076D000);
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v66 = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = Error.rem_errorDescription.getter();
      v51 = sub_100004060(v49, v50, &v66);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to fetch selectableHashtagLabels {error: %s}", v47, 0xCu);
      sub_100004758(v48);
    }

    REMHashtagLabelCollection.init(labels:)();
  }

  else
  {
    (*v41)(v23, v38);
    v52 = v54;
    REMHashtagLabelCollection.init(labels:)();
    REMHashtagLabelCollection.init(labels:)();
    REMHashtagLabelCollection.union(_:)();
    v53 = *(v43 + 8);
    v53(v25, v42);
    v53(v52, v42);
    REMHashtagLabelCollection.labels.getter();
    REMHashtagLabelCollection.init(labels:)();
    return (v53)(v22, v42);
  }
}

uint64_t TTRSmartListFilterEditorInteractor.selectableHashtagLabels.setter(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076D078);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for REMHashtagLabelCollection();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels;
  swift_beginAccess();
  sub_100127E6C(v5, v1 + v8);
  return swift_endAccess();
}

void (*TTRSmartListFilterEditorInteractor.selectableHashtagLabels.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(sub_100058000(&qword_10076D078) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = type metadata accessor for REMHashtagLabelCollection();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[11] = v10;
  TTRSmartListFilterEditorInteractor.selectableHashtagLabels.getter(v10);
  return sub_100123400;
}

void sub_100123400(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  if (a2)
  {
    (*(v2[9] + 16))(v2[10], v2[11], v2[8]);
    (*(v6 + 32))(v7, v4, v5);
    (*(v6 + 56))(v7, 0, 1, v5);
    v9 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels;
    swift_beginAccess();
    sub_100127E6C(v7, v8 + v9);
    swift_endAccess();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    (*(v2[9] + 32))(v2[7], v2[11], v2[8]);
    (*(v6 + 56))(v7, 0, 1, v5);
    v10 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels;
    swift_beginAccess();
    sub_100127E6C(v7, v8 + v10);
    swift_endAccess();
  }

  free(v3);
  free(v4);
  free(v7);

  free(v2);
}

BOOL TTRSmartListFilterEditorInteractor.hasUnsavedChanges.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_initialFilter);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  v3 = v1;
  v4 = v2;
  v5 = static NSObject.== infix(_:_:)();

  return (v5 & 1) == 0;
}

uint64_t TTRSmartListFilterEditorInteractor.filterUpgradedToSydneyRomeKincaid.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter;
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  v4 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();

  if (REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter() >= v4)
  {
    return 0;
  }

  v5 = *(v1 + v2);
  v6 = REMCustomSmartListFilterDescriptor.requiresSydneyRomeKincaid.getter();

  return v6 & 1;
}

uint64_t TTRSmartListFilterEditorInteractor.list(with:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_listFetchOperationManager))
  {
    v2 = result;

    v3 = v2;
    REMAsyncOperationManager.operationStateStartingIfNeeded(for:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TTRSmartListFilterEditorInteractor.addHashtagLabel(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_100058000(&qword_10076D078);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for REMHashtagLabelCollection();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - v14;
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  TTRSmartListFilterEditorInteractor.selectableHashtagLabels.getter(v15);
  sub_100058000(&unk_100771E10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10062D400;
  *(v18 + 32) = countAndFlagsBits;
  *(v18 + 40) = object;

  REMHashtagLabelCollection.init(labels:)();
  REMHashtagLabelCollection.union(_:)();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  (*(v9 + 32))(v7, v17, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor____lazy_storage___selectableHashtagLabels;
  swift_beginAccess();
  sub_100127E6C(v7, v2 + v20);
  swift_endAccess();
}

void TTRSmartListFilterEditorInteractor.update(operation:)(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  REMCustomSmartListFilterDescriptor.operation.getter();
  sub_10003988C(&qword_10076D080, &type metadata accessor for REMCustomSmartListFilterDescriptor.Operation);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    (*(v4 + 16))(v6, a1, v3);
    v9 = v7;
    v10 = REMCustomSmartListFilterDescriptor.__allocating_init(source:operation:)();
    sub_100123AEC(v10);
  }
}

void sub_100123AEC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter) = a1;
  v3 = a1;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void TTRSmartListFilterEditorInteractor.update(hashtags:)(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D088);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_10076D038);
  v11 = __chkstk_darwin(v10 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v29 = v1;
  v30 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  REMCustomSmartListFilterDescriptor.hashtags.getter();
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_10076D038);
  v28 = a1;
  sub_10000794C(a1, &v9[v18], &qword_10076D038);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D038);
    if (v19(&v9[v18], 1, v3) == 1)
    {

      sub_1000079B4(v9, &qword_10076D038);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v9, v15, &qword_10076D038);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D038);
    (*(v4 + 8))(v15, v3);
LABEL_6:
    sub_1000079B4(v9, &qword_10076D088);
    goto LABEL_7;
  }

  v22 = v26;
  (*(v4 + 32))(v26, &v9[v18], v3);
  sub_10003988C(&qword_10076D090, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v4 + 8);
  v24(v22, v3);
  sub_1000079B4(v17, &qword_10076D038);
  v24(v15, v3);
  sub_1000079B4(v9, &qword_10076D038);
  if (v23)
  {

    return;
  }

LABEL_7:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v28, v27, &qword_10076D038);
  v20 = v30;
  v21 = REMCustomSmartListFilterDescriptor.__allocating_init(source:hashtags:)();
  sub_100123AEC(v21);
}

void TTRSmartListFilterEditorInteractor.update(date:)(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D098);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_10076D030);
  v11 = __chkstk_darwin(v10 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v29 = v1;
  v30 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  REMCustomSmartListFilterDescriptor.date.getter();
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_10076D030);
  v28 = a1;
  sub_10000794C(a1, &v9[v18], &qword_10076D030);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D030);
    if (v19(&v9[v18], 1, v3) == 1)
    {

      sub_1000079B4(v9, &qword_10076D030);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v9, v15, &qword_10076D030);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D030);
    (*(v4 + 8))(v15, v3);
LABEL_6:
    sub_1000079B4(v9, &qword_10076D098);
    goto LABEL_7;
  }

  v22 = v26;
  (*(v4 + 32))(v26, &v9[v18], v3);
  sub_10003988C(&qword_10076D0A0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v4 + 8);
  v24(v22, v3);
  sub_1000079B4(v17, &qword_10076D030);
  v24(v15, v3);
  sub_1000079B4(v9, &qword_10076D030);
  if (v23)
  {

    return;
  }

LABEL_7:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v28, v27, &qword_10076D030);
  v20 = v30;
  v21 = REMCustomSmartListFilterDescriptor.__allocating_init(source:date:)();
  sub_100123AEC(v21);
}

void TTRSmartListFilterEditorInteractor.update(time:)(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D0A8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_10076D028);
  v11 = __chkstk_darwin(v10 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v29 = v1;
  v30 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  REMCustomSmartListFilterDescriptor.time.getter();
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_10076D028);
  v28 = a1;
  sub_10000794C(a1, &v9[v18], &qword_10076D028);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D028);
    if (v19(&v9[v18], 1, v3) == 1)
    {

      sub_1000079B4(v9, &qword_10076D028);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v9, v15, &qword_10076D028);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D028);
    (*(v4 + 8))(v15, v3);
LABEL_6:
    sub_1000079B4(v9, &qword_10076D0A8);
    goto LABEL_7;
  }

  v22 = v26;
  (*(v4 + 32))(v26, &v9[v18], v3);
  sub_10003988C(&qword_10076D0B0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v4 + 8);
  v24(v22, v3);
  sub_1000079B4(v17, &qword_10076D028);
  v24(v15, v3);
  sub_1000079B4(v9, &qword_10076D028);
  if (v23)
  {

    return;
  }

LABEL_7:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v28, v27, &qword_10076D028);
  v20 = v30;
  v21 = REMCustomSmartListFilterDescriptor.__allocating_init(source:time:)();
  sub_100123AEC(v21);
}

Swift::Void __swiftcall TTRSmartListFilterEditorInteractor.update(priorities:)(Swift::OpaquePointer_optional priorities)
{
  rawValue = priorities.value._rawValue;
  v8 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  v3 = REMCustomSmartListFilterDescriptor.priorities.getter();
  if (v3)
  {
    if (rawValue)
    {
      v4 = sub_100126864(v3, rawValue);

      v5 = v8;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    type metadata accessor for REMCustomSmartListFilterDescriptor();

    v6 = v8;
    v7 = REMCustomSmartListFilterDescriptor.__allocating_init(source:priorities:)();
    sub_100123AEC(v7);
    v5 = v8;
    goto LABEL_9;
  }

  v5 = v8;
  if (rawValue)
  {
    goto LABEL_8;
  }

LABEL_9:
}

Swift::Void __swiftcall TTRSmartListFilterEditorInteractor.update(flagged:)(Swift::Bool_optional flagged)
{
  v2 = *&flagged;
  v6 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  v3 = REMCustomSmartListFilterDescriptor.flagged.getter();
  if (v3 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_7;
    }

LABEL_6:
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v4 = v6;
    v5 = REMCustomSmartListFilterDescriptor.__allocating_init(source:flagged:)();
    sub_100123AEC(v5);
    goto LABEL_7;
  }

  if (v2 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

void TTRSmartListFilterEditorInteractor.update(location:)(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D0B8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_10076D020);
  v11 = __chkstk_darwin(v10 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v29 = v1;
  v30 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  REMCustomSmartListFilterDescriptor.location.getter();
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_10076D020);
  v28 = a1;
  sub_10000794C(a1, &v9[v18], &qword_10076D020);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D020);
    if (v19(&v9[v18], 1, v3) == 1)
    {

      sub_1000079B4(v9, &qword_10076D020);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v9, v15, &qword_10076D020);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D020);
    (*(v4 + 8))(v15, v3);
LABEL_6:
    sub_1000079B4(v9, &qword_10076D0B8);
    goto LABEL_7;
  }

  v22 = v26;
  (*(v4 + 32))(v26, &v9[v18], v3);
  sub_10003988C(&qword_10076D0C0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v4 + 8);
  v24(v22, v3);
  sub_1000079B4(v17, &qword_10076D020);
  v24(v15, v3);
  sub_1000079B4(v9, &qword_10076D020);
  if (v23)
  {

    return;
  }

LABEL_7:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v28, v27, &qword_10076D020);
  v20 = v30;
  v21 = REMCustomSmartListFilterDescriptor.__allocating_init(source:location:)();
  sub_100123AEC(v21);
}

void TTRSmartListFilterEditorInteractor.update(lists:)(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D0C8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_10076D018);
  v11 = __chkstk_darwin(v10 - 8);
  v27 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v29 = v1;
  v30 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  REMCustomSmartListFilterDescriptor.lists.getter();
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_10076D018);
  v28 = a1;
  sub_10000794C(a1, &v9[v18], &qword_10076D018);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D018);
    if (v19(&v9[v18], 1, v3) == 1)
    {

      sub_1000079B4(v9, &qword_10076D018);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v9, v15, &qword_10076D018);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_10076D018);
    (*(v4 + 8))(v15, v3);
LABEL_6:
    sub_1000079B4(v9, &qword_10076D0C8);
    goto LABEL_7;
  }

  v22 = v26;
  (*(v4 + 32))(v26, &v9[v18], v3);
  sub_10003988C(&qword_10076D0D0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v4 + 8);
  v24(v22, v3);
  sub_1000079B4(v17, &qword_10076D018);
  v24(v15, v3);
  sub_1000079B4(v9, &qword_10076D018);
  if (v23)
  {

    return;
  }

LABEL_7:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v28, v27, &qword_10076D018);
  v20 = v30;
  v21 = REMCustomSmartListFilterDescriptor.__allocating_init(source:lists:)();
  sub_100123AEC(v21);
}

void *sub_10012520C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter;
  v3 = *(*v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  v4 = REMCustomSmartListFilterDescriptor.isEmpty.getter();

  if (v4)
  {
    return 0;
  }

  v5 = *(v1 + v2);
  v6 = v5;
  return v5;
}

BOOL sub_100125290()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_initialFilter);
  v2 = *(*v0 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_currentFilter);
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  v3 = v1;
  v4 = v2;
  v5 = static NSObject.== infix(_:_:)();

  return (v5 & 1) == 0;
}

uint64_t sub_100125334(uint64_t result)
{
  if (*(*v1 + OBJC_IVAR____TtC9Reminders34TTRSmartListFilterEditorInteractor_listFetchOperationManager))
  {
    v2 = result;

    v3 = v2;
    REMAsyncOperationManager.operationStateStartingIfNeeded(for:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001254F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 42);
    for (i = (a2 + 42); ; i += 16)
    {
      v5 = *(v3 - 10);
      v6 = *(i - 10);
      v7 = *(i - 2);
      if (!*(v3 - 2))
      {
        break;
      }

      if (*(v3 - 2) == 1)
      {
        if (v7 != 1)
        {
          return 0;
        }

        result = 0;
        goto LABEL_10;
      }

      if (v5 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            result = 0;
            if (v7 != 2 || v6 != 6)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (v7 != 2 || v6 != 7)
            {
              return result;
            }
          }
        }

        else if (v5 == 4)
        {
          result = 0;
          if (v7 != 2 || v6 != 4)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (v7 != 2 || v6 != 5)
          {
            return result;
          }
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          result = 0;
          if (v7 != 2 || v6 != 2)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (v7 != 2 || v6 != 3)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if (v5)
        {
          if (v7 != 2 || v6 != 1)
          {
            return result;
          }
        }

        else if (v7 != 2 || v6)
        {
          return result;
        }
      }

LABEL_11:
      if ((*(v3 - 1) ^ *(i - 1)) & 1) != 0 || ((*v3 ^ *i))
      {
        return result;
      }

      v3 += 16;
      if (!--v2)
      {
        return 1;
      }
    }

    result = 0;
    if (*(i - 2))
    {
      return result;
    }

LABEL_10:
    if (v5 != v6)
    {
      return result;
    }

    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_100125684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 34);
  v4 = (a2 + 34);
  do
  {
    v5 = (*(v3 - 2) != *(v4 - 2)) | *(v3 - 1) ^ *(v4 - 1) | *v3 ^ *v4;
    if ((*(v3 - 2) != *(v4 - 2)) | (*(v3 - 1) ^ *(v4 - 1) | *v3 ^ *v4) & 1)
    {
      break;
    }

    v3 += 3;
    v4 += 3;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_10012571C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSharedWithYouHighlight();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100058000(&unk_10076C558);
  __chkstk_darwin(v48);
  v8 = &v39 - v7;
  v9 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  v10 = __chkstk_darwin(v9);
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v19 = &v39 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v41 = v17;
  v42 = v16;
  v43 = v4;
  v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v39 = (v5 + 32);
  v40 = (v5 + 8);
  v46 = *(v15 + 72);
  v47 = v9;
  while (1)
  {
    sub_1001287E8(v22, v19, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    sub_1001287E8(v23, v14, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v24 = &v8[*(v48 + 48)];
    sub_1001287E8(v19, v8, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    sub_1001287E8(v14, v24, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_39;
          }
        }

        else if (swift_getEnumCaseMultiPayload() != 5)
        {
          goto LABEL_39;
        }
      }

      else if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_39;
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_39;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_39;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    v31 = v42;
    sub_1001287E8(v8, v42, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v32 = swift_getEnumCaseMultiPayload();
    v33 = v43;
    if (v32 != 1)
    {
      (*v40)(v31, v43);
      goto LABEL_39;
    }

    v34 = v45;
    (*v39)(v45, v24, v43);
    v44 = static TTRSharedWithYouHighlight.== infix(_:_:)();
    v35 = v34;
    v36 = *v40;
    (*v40)(v35, v33);
    v36(v31, v33);
    if ((v44 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_6:
    sub_10012878C(v8);
    sub_10012878C(v14);
    sub_10012878C(v19);
    v23 += v46;
    v22 += v46;
    if (!--v20)
    {
      return 1;
    }
  }

  v26 = v41;
  sub_1001287E8(v8, v41, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  v28 = *v26;
  v27 = v26[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    v29 = *v24;
    v30 = *(v24 + 1);
    if (v28 == v29 && v27 == v30)
    {
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
LABEL_35:
        sub_10012878C(v8);
        goto LABEL_40;
      }
    }

    goto LABEL_6;
  }

LABEL_39:
  sub_1000079B4(v8, &unk_10076C558);
LABEL_40:
  sub_10012878C(v14);
  sub_10012878C(v19);
  return 0;
}

uint64_t sub_100125C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*v3 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == 1)
        {
          return 0;
        }

        if (v5)
        {
          if (!v6 || (*(v3 - 1) != *(v4 - 1) || v5 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v6)
          {
            return 0;
          }

          sub_1001133CC(*(v4 - 1), 0);
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100125D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 2)
        {
          return 0;
        }

        result = 0;
        v9 = *v4 ^ v5;
        if (v9 & 1) != 0 || ((v9 >> 8))
        {
          return result;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100125E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); *(v3 - 1) == *(i - 1); i += 2)
    {
      v5 = *v3;
      v3 += 2;
      if (v5 != *i)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100125EC0(uint64_t a1, uint64_t a2)
{
  v20 = sub_100058000(&qword_10076B968);
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  type metadata accessor for IndexPath();
  v19 = *(v4 + 72);
  while (1)
  {
    result = sub_10000794C(v12, v9, &qword_10076B968);
    if (!v10)
    {
      break;
    }

    sub_10000794C(v13, v6, &qword_10076B968);
    sub_10003988C(&unk_100772710, &type metadata accessor for IndexPath);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      sub_1000079B4(v6, &qword_10076B968);
      sub_1000079B4(v9, &qword_10076B968);
      return 0;
    }

    v15 = v20;
    v16 = *&v9[*(v20 + 36)];
    sub_1000079B4(v9, &qword_10076B968);
    v17 = *&v6[*(v15 + 36)];
    sub_1000079B4(v6, &qword_10076B968);
    result = v16 == v17;
    v18 = v16 != v17 || v10-- == 1;
    v13 += v19;
    v12 += v19;
    if (v18)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100126130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v7 = sub_100058000(a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v8 + 16);
  v19 = v8 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v7, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v10, v18, v7);
    sub_10012891C(v33, v31);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v10, v7);
    v26(v14, v7);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_100126328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    v4 = a2 + 32;
    while (1)
    {
      sub_10000794C(v3, v9, &qword_100769AB8);
      sub_10000794C(v4, v8, &qword_100769AB8);
      if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v5 = v10;
      sub_1000079B4(v9, &qword_100769AB8);
      v6 = v8[5];
      sub_1000079B4(v8, &qword_100769AB8);
      result = v5 == v6;
      if (v5 == v6)
      {
        v3 += 48;
        v4 += 48;
        if (--v2)
        {
          continue;
        }
      }

      return result;
    }

    sub_1000079B4(v8, &qword_100769AB8);
    sub_1000079B4(v9, &qword_100769AB8);
  }

  return 0;
}

BOOL sub_100126464(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[5];
        v14[4] = v3[4];
        v15[0] = v5;
        *(v15 + 9) = *(v3 + 89);
        v6 = v3[1];
        v14[0] = *v3;
        v14[1] = v6;
        v7 = v3[3];
        v14[2] = v3[2];
        v14[3] = v7;
        v8 = v4[5];
        v16[4] = v4[4];
        v17[0] = v8;
        *(v17 + 9) = *(v4 + 89);
        v9 = v4[1];
        v16[0] = *v4;
        v16[1] = v9;
        v10 = v4[3];
        v16[2] = v4[2];
        v16[3] = v10;
        sub_100103660(v14, v13);
        sub_100103660(v16, v13);
        v11 = sub_1003DF3A8(v14, v16);
        sub_1001036BC(v16);
        sub_1001036BC(v14);
        if (!v11)
        {
          break;
        }

        v4 += 7;
        v3 += 7;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t sub_1001265AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3)
      {
        if (*v3 == 1)
        {
          if (v8 != 1 || v6 != v7)
          {
            return 0;
          }
        }

        else if (v6 > 3)
        {
          if (v6 > 5)
          {
            if (v6 == 6)
            {
              result = 0;
              if (v8 != 2 || v7 != 6)
              {
                return result;
              }
            }

            else
            {
              result = 0;
              if (v8 != 2 || v7 != 7)
              {
                return result;
              }
            }
          }

          else if (v6 == 4)
          {
            result = 0;
            if (v8 != 2 || v7 != 4)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (v8 != 2 || v7 != 5)
            {
              return result;
            }
          }
        }

        else if (v6 > 1)
        {
          if (v6 == 2)
          {
            result = 0;
            if (v8 != 2 || v7 != 2)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (v8 != 2 || v7 != 3)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if (v6)
          {
            if (v8 != 2 || v7 != 1)
            {
              return result;
            }
          }

          else if (v8 != 2 || v7)
          {
            return result;
          }
        }
      }

      else
      {
        if (*v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10012678C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_10002C7C0(v5, v7, &qword_10076B020);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100126864(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001268C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100126978(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1003AB294(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1003AE0EC();
      goto LABEL_7;
    }

    sub_100548DC4(v17, a3 & 1);
    v22 = sub_1003AB294(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10054F4F4(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_100126B44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003B3EDC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1003AE114();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1005491A0(v16, a4 & 1);
    v11 = sub_1003B3EDC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_100058000(&qword_10076BB78);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (*(v21 + 56) + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_1005500A8(v11, a3, a1, a2, v21);
  }
}

unint64_t sub_100126C90(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1003AB368(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1003AE128();
      result = v17;
      goto LABEL_8;
    }

    sub_1005491B4(v14, a3 & 1);
    result = sub_1003AB368(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_10054F50C(result, a2, a1, v19);
  }

  return result;
}

void sub_100126D9C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002613B0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1003AE40C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10054972C(v13, a3 & 1);
    v8 = sub_1002613B0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100003540(0, &qword_10076BA50);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_10054F550(v8, a2, a1, v18);

    v21 = a2;
  }
}

uint64_t sub_100126EE0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003B3EDC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1003AE420();
      result = v19;
      goto LABEL_8;
    }

    sub_100549740(v16, a4 & 1);
    result = sub_1003B3EDC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_100058000(&qword_10076BB78);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56) + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
  }

  else
  {
    sub_1005500AC(result, a3, a1, a2 & 1, v21);
  }

  return result;
}

id sub_100127020(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002613B0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1003AE758();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100549BF4(v13, a3 & 1);
    v8 = sub_1002613B0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_100003540(0, &qword_10076BA50);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_10054F550(v8, a2, a1, v18);

    return a2;
  }
}

id sub_100127168(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1002613B0(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_1003AE8BC();
      v10 = v18;
      goto LABEL_8;
    }

    sub_100549E64(v15, a4 & 1);
    v10 = sub_1002613B0(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_100003540(0, &qword_10076BA50);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_10054F594(v10, a3, a1, a2, v20);

    return a3;
  }
}

uint64_t sub_1001272B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1003AB730(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1003AF450();
      goto LABEL_7;
    }

    sub_10054B560(v17, a3 & 1);
    v22 = sub_1003AB730(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10054F5DC(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_100127484(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003B3EDC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1003AF6F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10054B93C(v16, a4 & 1);
    v11 = sub_1003B3EDC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_100058000(&qword_10076B788);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (*(v21 + 56) + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_1005500A8(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_100127678(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t))
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v8 = v7;
  v12 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1003AB730(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v34();
      goto LABEL_7;
    }

    v35();
    v32 = sub_1003AB730(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return v37(v18, v15, a1, v24);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = *(v24 + 56);
  v26 = v36(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

_BYTE *sub_1001278A8(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1002613B0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_1003AFAA4();
      result = v16;
      goto LABEL_8;
    }

    sub_10054C868(v13, a3 & 1);
    result = sub_1002613B0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_100003540(0, &qword_10076BA50);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    result[v18[7]] = a1 & 1;
  }

  else
  {
    sub_10054F76C(result, a2, a1 & 1, v18);

    return a2;
  }

  return result;
}

uint64_t sub_1001279DC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1003B3EDC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1003AFC00();
      result = v19;
      goto LABEL_8;
    }

    sub_10054CACC(v16, a4 & 1);
    result = sub_1003B3EDC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_100058000(&qword_10076B788);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56) + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
  }

  else
  {
    sub_1005500AC(result, a3, a1, a2 & 1, v21);
  }

  return result;
}

uint64_t sub_100127B1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1003AB804(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1003AFD74();
      goto LABEL_7;
    }

    sub_10054CD80(v17, a3 & 1);
    v28 = sub_1003AB804(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10054F800(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_100127D20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100009044(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1003B010C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10054D228(v16, a4 & 1);
    v11 = sub_100009044(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    sub_10054F92C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100127E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076D078);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TTRSmartListFilterEditorInteractor()
{
  result = qword_10076D100;
  if (!qword_10076D100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100127F30()
{
  sub_100127FE8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100127FE8()
{
  if (!qword_10076D110)
  {
    type metadata accessor for REMHashtagLabelCollection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10076D110);
    }
  }
}

uint64_t sub_10012806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100009044(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1003B0A10();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10054DFF4(v18, a5 & 1);
    v13 = sub_100009044(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_10054FA34(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_1001281BC(uint64_t a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_1003B3ED4(a1, a2 & 1, a6, a7);
  v23 = *(v16 + 16);
  v24 = (v18 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v18;
  v28 = *(v16 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      v29 = result;
      sub_1003B0B88();
      result = v29;
      goto LABEL_8;
    }

    sub_10054E2B4(v26, a3 & 1);
    result = sub_1003B3ED4(a1, a2 & 1, a6, a7);
    if ((v27 & 1) != (v30 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v31 = *v8;
  if (v27)
  {
    v32 = (*(v31 + 56) + 16 * result);
    *v32 = a4;
    v32[1] = a5;
  }

  else
  {
    v19.n128_f64[0] = a6;
    v20.n128_f64[0] = a7;
    v21.n128_f64[0] = a4;
    v22.n128_f64[0] = a5;

    return sub_1005500A4(result, a1, a2 & 1, v31, v19, v20, v21, v22);
  }

  return result;
}

uint64_t sub_100128324(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AnyListEntityID();
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1003AB9AC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1003B0B9C();
      goto LABEL_7;
    }

    sub_10054E2C8(v16, a3 & 1);
    v23 = sub_1003AB9AC(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1001287E8(a2, v10, type metadata accessor for AnyListEntityID);
      return sub_10054FA84(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for AnyListEntity() - 8) + 72) * v13;

  return sub_100128850(a1, v21);
}

uint64_t sub_1001284E4(uint64_t a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_1003B3ED4(a1, a2 & 1, a6, a7);
  v23 = *(v16 + 16);
  v24 = (v18 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v18;
  v28 = *(v16 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      v29 = result;
      sub_1003B0FF4();
      result = v29;
      goto LABEL_8;
    }

    sub_10054EF1C(v26, a3 & 1);
    result = sub_1003B3ED4(a1, a2 & 1, a6, a7);
    if ((v27 & 1) != (v30 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v31 = *v8;
  if (v27)
  {
    v32 = (*(v31 + 56) + 16 * result);
    *v32 = a4;
    v32[1] = a5;
  }

  else
  {
    v19.n128_f64[0] = a6;
    v20.n128_f64[0] = a7;
    v21.n128_f64[0] = a4;
    v22.n128_f64[0] = a5;

    return sub_1005500A4(result, a1, a2 & 1, v31, v19, v20, v21, v22);
  }

  return result;
}

_OWORD *sub_10012864C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1003B3EE0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1003B1164();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10054F224(v13, a3 & 1);
    v8 = sub_1003B3EE0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for OpenURLOptionsKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100004758(v19);

    return sub_100007DD8(a1, v19);
  }

  else
  {
    sub_10054FBC8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_10012878C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001287E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100128850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyListEntity();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001288B4()
{
  result = qword_10076D1D0;
  if (!qword_10076D1D0)
  {
    sub_100003540(255, &qword_10076BA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076D1D0);
  }

  return result;
}

uint64_t sub_10012891C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_100128A40()
{

  return v0;
}

uint64_t sub_100128B90()
{
  sub_100128A40();

  return swift_deallocClassInstance();
}

uint64_t sub_1001291C0()
{

  return v0;
}

uint64_t sub_1001291F8()
{
  sub_1001291C0();

  return swift_deallocClassInstance();
}

uint64_t sub_100129330()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100129388(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001293C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100129400(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static TTRLocalizableStrings.ListDetail.newTab.getter()
{
  v0._countAndFlagsBits = 0x7473694C2077654ELL;
  v1._object = 0x80000001006737D0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x80000001006737F0;
  v1._countAndFlagsBits = 0xD000000000000013;
  v0._object = 0xE800000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.flag.getter()
{
  v0._countAndFlagsBits = 0x6E207265746C6946;
  v0._object = 0xEB00000000656D61;
  v1._object = 0x8000000100673810;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 1734437958;
  v2._object = 0xE400000000000000;
  return TTRLocalizedString(_:value:comment:)(v1, v2, v0)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.other.getter()
{
  v0._countAndFlagsBits = 0x694620726568744FLL;
  v0._object = 0xED0000737265746CLL;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v1._object = 0x8000000100673830;
  v2._object = 0x8000000100673850;
  v2._countAndFlagsBits = 0xD000000000000019;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.documentation.getter()
{
  v0._object = 0x8000000100673870;
  v1._countAndFlagsBits = 0xD000000000000068;
  v1._object = 0x80000001006738A0;
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x8000000100673910;
  v0._countAndFlagsBits = 0xD000000000000020;
  return TTRLocalizedString(_:value:comment:)(v0, v1, v2)._countAndFlagsBits;
}

uint64_t static TTRLocalizableStrings.ListDetail.Filters.disabledFiltersSectionTitle.getter()
{
  v0._countAndFlagsBits = 0x46207463656C6553;
  v0._object = 0xEE00737265746C69;
  v1._object = 0x8000000100673940;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x8000000100673970;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  return TTRLocalizedString(_:value:comment:)(v1, v0, v2)._countAndFlagsBits;
}

char *sub_10012965C(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = sub_100058000(&qword_10077A670);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = sub_100058000(&unk_10077A660);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }
  }

  return a1;
}

uint64_t sub_100129800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_100058000(&qword_10077A670);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 24))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_100058000(&unk_10077A660);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 16))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

uint64_t sub_1001299BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_100058000(&qword_10077A670);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = sub_100058000(&unk_10077A660);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t sub_100129B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = sub_100058000(&qword_10077A670);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_100058000(&unk_10077A660);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void *sub_100129CD0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_65;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_59;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject shareeContext];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 sharees];

        sub_100003540(0, &qword_10076BC70);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
        {
LABEL_14:
          v11 = 0;
          v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        }
      }

      else
      {

        v10 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_14;
        }
      }

      v12 = _CocoaArrayWrapper.endIndex.getter();
      v11 = 1;
      if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
LABEL_16:
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v12;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

LABEL_28:
      isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
      v13 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_60;
      }

LABEL_17:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      v31 = v12;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
        goto LABEL_32;
      }

      _CocoaArrayWrapper.endIndex.getter();
LABEL_32:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_33:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v11)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_37:
          if (((v16 >> 1) - v15) < v31)
          {
            goto LABEL_62;
          }

          v18 = (v14 + 8 * v15 + 32);
          if (v11)
          {
            if (v17 < 1)
            {
              goto LABEL_64;
            }

            v19 = 0;
            if ((v10 & 0xC000000000000001) == 0)
            {
              goto LABEL_43;
            }

            while (1)
            {
              isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
              ++v19;
              *v18 = isUniquelyReferenced_nonNull_bridgeObject;
              if (v19 == v17)
              {
                break;
              }

              while (1)
              {
                ++v18;
                if ((v10 & 0xC000000000000001) != 0)
                {
                  break;
                }

LABEL_43:
                if ((v19 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_57:
                  __break(1u);
                  goto LABEL_58;
                }

                if (v19 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_57;
                }

                v20 = *(v10 + 32 + 8 * v19++);
                *v18 = v20;
                isUniquelyReferenced_nonNull_bridgeObject = v20;
                if (v19 == v17)
                {
                  goto LABEL_50;
                }
              }
            }

LABEL_50:

            v1 = v26;
            v21 = v31;
            if (v31 < 1)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_100003540(0, &qword_10076BC70);
            v21 = v31;
            swift_arrayInitWithCopy();

            if (v31 < 1)
            {
              goto LABEL_6;
            }
          }

          v22 = *(v14 + 16);
          v5 = __OFADD__(v22, v21);
          v23 = v22 + v21;
          if (v5)
          {
            goto LABEL_63;
          }

          *(v14 + 16) = v23;
          goto LABEL_6;
        }
      }

      if (v31 > 0)
      {
        goto LABEL_61;
      }

LABEL_6:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

LABEL_58:
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
    __break(1u);
LABEL_65:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10012A0A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076D958);
  v1 = sub_100003E30(v0, qword_10076D958);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012A16C()
{
  v1 = sub_100058000(&qword_10076C938);
  __chkstk_darwin(v1 - 8);
  v79 = &v56 - v2;
  v80 = sub_100058000(&qword_10076DA60);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = &v56 - v3;
  v4 = sub_100058000(&qword_10076DA68);
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v77 = &v56 - v5;
  v6 = sub_100058000(&qword_10076DA70);
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v81 = &v56 - v7;
  v63 = sub_100058000(&qword_10076DA78);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v56 - v8;
  v67 = sub_100058000(&qword_10076DA80);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v61 = &v56 - v9;
  v69 = sub_100058000(&qword_10076DA88);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v56 - v10;
  v71 = sub_100058000(&qword_10076DA90);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v65 = &v56 - v11;
  v12 = sub_100058000(&qword_10076DA98);
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v68 = &v56 - v13;
  v14 = *(v0 + 32);
  if ((v14 - 1) >= 3)
  {
    sub_10012E7EC(*(v0 + 32));
    v15 = v14;
  }

  else
  {
    v14 = 0;
  }

  if (qword_100766F40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_10076D958);
  v17 = v14;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v76 = v17;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v86 = v14;
    *&v87 = v21;
    *v20 = 136446210;
    sub_100058000(&qword_10076DB18);
    v22 = Optional.descriptionOrNil.getter();
    v24 = sub_100004060(v22, v23, &v87);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "upgradeInfoPublisher: kicks in {preferredCalDAVAccountID: %{public}s}", v20, 0xCu);
    sub_100004758(v21);
  }

  v57 = *(v0 + 104);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v25;
  v27 = swift_allocObject();
  v56 = *(v0 + 40);
  *(v27 + 16) = v56;
  *(v27 + 32) = v0;
  sub_100058000(&qword_10076DAA0);
  swift_allocObject();
  swift_retain_n();
  swift_unknownObjectRetain();
  *&v87 = Future.init(_:)();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v14;
  sub_10000E188(&qword_10076DAA8, &qword_10076DAA0);
  v29 = v26;

  v30 = v60;
  Publisher.compactMap<A>(_:)();

  v31 = swift_allocObject();
  *(v31 + 16) = sub_10012E800;
  *(v31 + 24) = v0;
  v58 = v0;

  static Subscribers.Demand.unlimited.getter();
  sub_100058000(&qword_10076DAB0);
  sub_10000E188(&qword_10076DAB8, &qword_10076DA78);
  sub_10000E188(&qword_10076DAC0, &qword_10076DAB0);
  v32 = v61;
  v33 = v63;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v62 + 8))(v30, v33);
  v34 = swift_allocObject();
  v35 = v57;
  *(v34 + 16) = v57;
  *(v34 + 24) = v29;
  v59 = v29;
  sub_10000E188(&qword_10076DAC8, &qword_10076DA80);

  v36 = v35;
  v37 = v64;
  v38 = v67;
  Publisher.tryMap<A>(_:)();

  (*(v66 + 8))(v32, v38);
  sub_10000E188(&qword_10076DAD0, &qword_10076DA88);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v39 = v65;
  v40 = v69;
  Publisher.replaceError(with:)();
  (*(v70 + 8))(v37, v40);
  sub_10000E188(&qword_10076DAD8, &qword_10076DA90);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v41 = v68;
  v42 = v71;
  Publisher.replaceEmpty(with:)();
  (*(v72 + 8))(v39, v42);
  sub_10000E188(&qword_10076DAE0, &qword_10076DA98);
  v43 = v74;
  v44 = Publisher.eraseToAnyPublisher()();
  (*(v73 + 8))(v41, v43);
  *&v87 = v44;
  sub_100058000(&qword_10076DAE8);
  sub_10000E188(&qword_10076DAF0, &qword_10076DAE8);
  sub_10012E83C();
  v45 = v75;
  Publisher<>.setFailureType<A>(to:)();
  sub_100003540(0, &qword_100777780);
  v46 = static OS_dispatch_queue.main.getter();
  *&v87 = v46;
  v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v48 = v79;
  (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
  sub_10000E188(&qword_10076DB00, &qword_10076DA60);
  sub_1001184EC();
  v49 = v77;
  v50 = v80;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_1000079B4(v48, &qword_10076C938);

  (*(v78 + 8))(v45, v50);
  sub_10000E188(&qword_10076DB08, &qword_10076DA68);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v51 = v81;
  v52 = v83;
  Publisher.replaceError(with:)();
  (*(v82 + 8))(v49, v52);
  sub_10000E188(&qword_10076DB10, &qword_10076DA70);
  v53 = v85;
  v54 = Publisher.eraseToAnyPublisher()();

  (*(v84 + 8))(v51, v53);

  return v54;
}

uint64_t sub_10012AF28(void *a1, void *a2, char a3)
{
  v4 = v3;
  if (qword_100766F40 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10076D958);
  v9 = a1;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "migrationDeviceInfosFuture: Will return a future to fetch ICDeviceListRequest for {calDAVAccountID: %{public}@}", v13, 0xCu);
    sub_1000079B4(v14, &unk_10076DF80);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  *(v16 + 32) = a3 & 1;
  *(v16 + 40) = v4;
  sub_100058000(&qword_10076DB28);
  swift_allocObject();
  v17 = v9;
  v18 = v10;

  return Future.init(_:)();
}

void sub_10012B104(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(*a1 + 16);
  swift_beginAccess();
  *(a2 + 16) = v9;
  p_ivar_lyt = &TTRIRemindersBoardCompletedHeaderView.ivar_lyt;
  if (v9 < 2)
  {
LABEL_6:
    v13 = *(v8 + 16);
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (qword_100766F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_10076D958);

  v12 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    *(v5 + 4) = *(a2 + 16);

    _os_log_impl(&_mh_execute_header, v12, v4, "upgradeInfoPublisher: Got more than 1 eligible accounts for upgrade, currently we handle only 1 at a time {count: %ld}", v5, 0xCu);

    goto LABEL_6;
  }

  v13 = *(v8 + 16);
  if (v13)
  {
LABEL_7:
    v14 = 0;
    v15 = (v8 + 48);
    do
    {
      if (v14 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (a3)
      {
        v16 = *(v15 - 2);
        v17 = *(v15 - 1);
        LOBYTE(a2) = *v15;
        sub_100003540(0, &qword_10076BA50);
        v5 = v17;
        v4 = v16;
        v18 = a3;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
LABEL_19:
          p_ivar_lyt = (&TTRIRemindersBoardCompletedHeaderView + 16);
          goto LABEL_22;
        }
      }

      ++v14;
      v15 += 24;
    }

    while (v13 != v14);
    v20 = 0;
    v21 = (v8 + 48);
    while (v20 < *(v8 + 16))
    {
      v22 = *(v21 - 1);
      LOBYTE(a2) = *v21;
      v4 = *(v21 - 2);
      v5 = v22;
      if ([v4 rem_isPrimaryAppleAccount])
      {
        goto LABEL_19;
      }

      ++v20;
      v21 += 24;
      if (v13 == v20)
      {
        p_ivar_lyt = (&TTRIRemindersBoardCompletedHeaderView + 16);
        if (*(v8 + 16))
        {
          v4 = *(v8 + 32);
          v5 = *(v8 + 40);
          LOBYTE(a2) = *(v8 + 48);
          v23 = v4;
          v24 = v5;
          goto LABEL_22;
        }

        __break(1u);
        return;
      }
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_21:
  v4 = 0;
  v5 = 0;
  LOBYTE(a2) = 0;
LABEL_22:
  if (p_ivar_lyt[488] != -1)
  {
LABEL_28:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003E30(v25, qword_10076D958);
  v26 = a3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v29 = 136446466;
    sub_100058000(&qword_10076DB18);
    v30 = Optional.descriptionOrNil.getter();
    v32 = sub_100004060(v30, v31, &v37);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    sub_100037C44(v4, v5);
    sub_100058000(&qword_10076DB38);
    v33 = String.init<A>(describing:)();
    v35 = sub_100004060(v33, v34, &v37);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "upgradeInfoPublisher: Selected eligible account for upgrade {preferred: %{public}s, selected: %{public}s}", v29, 0x16u);
    swift_arrayDestroy();
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = a2;
}

uint64_t sub_10012B550@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  a2(*a1, *(a1 + 8), *(a1 + 16));
  sub_100058000(&qword_10076DB28);
  sub_10000E188(&qword_10076DB30, &qword_10076DB28);
  v4 = Publisher.eraseToAnyPublisher()();

  *a3 = v4;
  return result;
}

void sub_10012B614(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v87 = *(a1 + 16);
  v109 = *(a1 + 24);
  v7 = v5;
  v8 = v6;
  [v7 rem_isPrimaryAppleAccount];
  v97 = ACAccount.rem_loggableDescription.getter();
  v10 = v9;
  if (qword_100766F40 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_10076D958);
    v12 = v7;
    v13 = v8;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    v89 = v12;
    v99 = v10;
    v100 = v13;
    v88 = a4;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v105 = swift_slowAlloc();
      *v16 = 138543874;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2082;
      v18 = v13;
      v19 = Bool.yesno.getter();
      a4 = v20;
      v13 = sub_100004060(v19, v20, &v105);

      *(v16 + 14) = v13;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_100004060(v97, v10, &v105);
      _os_log_impl(&_mh_execute_header, v14, v15, "upgradeInfoPublisher: Now getting the upgrade info for {calDAVAccountID: %{public}@, isPrimary: %{public}s, accountDesc: %{public}s}", v16, 0x20u);
      sub_1000079B4(v17, &unk_10076DF80);

      swift_arrayDestroy();
    }

    *&v105 = _swiftEmptyArrayStorage;
    v7 = v109;
    v8 = v109 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      v21 = 0;
      v22 = v7 & 0xC000000000000001;
      v23 = v7 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v22)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v23 + 16))
          {
            goto LABEL_51;
          }

          v24 = *(v7 + 8 * v21 + 32);
        }

        a4 = v24;
        v10 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ([v24 upgradedTo2019OSes])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = *(v105 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v109;
        }

        ++v21;
      }

      while (v10 != v8);
      v25 = v105;
      *&v105 = _swiftEmptyArrayStorage;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
      *&v105 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
LABEL_20:
        if ((v25 & 0x4000000000000000) == 0)
        {
          v26 = *(v25 + 16);
          goto LABEL_22;
        }
      }
    }

    v26 = _CocoaArrayWrapper.endIndex.getter();
LABEL_22:
    v27 = _swiftEmptyArrayStorage;
    v28 = &selRef_layoutIfNeeded;
    v92 = v26;
    if (v26)
    {
      v8 = 0;
      v13 = (v25 & 0xC000000000000001);
      while (1)
      {
        if (v13)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v25 + 16))
          {
            goto LABEL_53;
          }

          v29 = *(v25 + 8 * v8 + 32);
        }

        a4 = v29;
        v30 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v29 upgradableTo2019OSes])
        {
          v7 = &v105;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v10 = *(v105 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v8;
        if (v30 == v26)
        {
          v31 = v105;
          v27 = _swiftEmptyArrayStorage;
          v94 = v25;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_59;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v31 = _swiftEmptyArrayStorage;
    v94 = v25;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_36:
      if ((v31 & 0x4000000000000000) == 0)
      {
        a4 = *(v31 + 16);
        if (!a4)
        {
          break;
        }

        goto LABEL_38;
      }
    }

LABEL_59:
    a4 = _CocoaArrayWrapper.endIndex.getter();
    if (!a4)
    {
      break;
    }

LABEL_38:
    *&v105 = _swiftEmptyArrayStorage;
    v7 = &v105;
    sub_1004A1CD0(0, a4 & ~(a4 >> 63), 0);
    if (a4 < 0)
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v8 = 0;
    v28 = v105;
    v109 = v31 & 0xC000000000000001;
    while (1)
    {
      v32 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v109)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          goto LABEL_55;
        }

        v33 = *(v31 + 8 * v8 + 32);
      }

      v7 = v33;
      v34 = [v33 name];
      if (!v34)
      {
        __break(1u);
LABEL_128:
        __break(1u);
        return;
      }

      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v37;

      *&v105 = v28;
      v10 = v28[2];
      v38 = v28[3];
      v39 = v28;
      if (v10 >= v38 >> 1)
      {
        v7 = &v105;
        sub_1004A1CD0((v38 > 1), v10 + 1, 1);
        v39 = v105;
      }

      v39[2] = (v10 + 1);
      v40 = &v39[2 * v10];
      v40[4] = v36;
      v40[5] = v13;
      ++v8;
      v28 = v39;
      if (v32 == a4)
      {

        v25 = v94;
        v27 = _swiftEmptyArrayStorage;
        goto LABEL_61;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_61:
  *&v105 = _swiftEmptyArrayStorage;
  v41 = v92;
  if (!v92)
  {
    v41 = _swiftEmptyArrayStorage;
    v98 = v28;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_93;
    }

LABEL_75:
    if ((v41 & 0x4000000000000000) != 0)
    {
      goto LABEL_93;
    }

    v45 = *(v41 + 16);
    if (v45)
    {
      goto LABEL_77;
    }

    goto LABEL_94;
  }

  v27 = 0;
  v13 = (v25 & 0xC000000000000001);
  do
  {
    if (v13)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v25 + 16))
      {
        goto LABEL_90;
      }

      v42 = *(v25 + 8 * v27 + 32);
    }

    v43 = v42;
    v44 = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if ([v42 upgradableTo2019OSes])
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v27;
  }

  while (v44 != v92);
  v41 = v105;
  v27 = _swiftEmptyArrayStorage;
  v98 = v28;
  if ((v105 & 0x8000000000000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_93:
  while (1)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    if (!v45)
    {
      break;
    }

LABEL_77:
    *&v105 = v27;
    v7 = &v105;
    sub_1004A1CD0(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      goto LABEL_120;
    }

    v27 = 0;
    v46 = v105;
    v109 = v41 & 0xC000000000000001;
    while (1)
    {
      v47 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v109)
      {
        v48 = v46;
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v41 + 16))
        {
          goto LABEL_92;
        }

        v48 = v46;
        v49 = *(v41 + 8 * v27 + 32);
      }

      v50 = v49;
      v51 = [v49 name];
      if (!v51)
      {
        goto LABEL_128;
      }

      v52 = v51;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v53;

      v46 = v48;
      *&v105 = v48;
      v54 = *(v48 + 16);
      v55 = *(v46 + 24);
      if (v54 >= v55 >> 1)
      {
        sub_1004A1CD0((v55 > 1), v54 + 1, 1);
        v46 = v105;
      }

      *(v46 + 16) = v54 + 1;
      v56 = v46 + 16 * v54;
      *(v56 + 32) = v28;
      *(v56 + 40) = v13;
      ++v27;
      if (v47 == v45)
      {
        v28 = v46;

        goto LABEL_95;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

LABEL_94:

  v28 = _swiftEmptyArrayStorage;
LABEL_95:
  v57 = sub_10012E890(v100, a2);
  if (v91)
  {

    return;
  }

  v7 = sub_100129CD0(v57);
  v109 = 0;

  v13 = (v7 & 0xFFFFFFFFFFFFFF8);
  if (!(v7 >> 62))
  {
    v58 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
      goto LABEL_99;
    }

LABEL_122:
    v60 = _swiftEmptyArrayStorage;
    goto LABEL_123;
  }

LABEL_121:
  v58 = _CocoaArrayWrapper.endIndex.getter();
  if (!v58)
  {
    goto LABEL_122;
  }

LABEL_99:
  v59 = 0;
  v60 = _swiftEmptyArrayStorage;
  do
  {
    v61 = v59;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v61 >= v13[2])
        {
          goto LABEL_118;
        }

        v62 = *(v7 + 8 * v61 + 32);
      }

      v63 = v62;
      v59 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v64 = [v62 address];
      if (v64)
      {
        break;
      }

      ++v61;
      if (v59 == v58)
      {
        goto LABEL_123;
      }
    }

    v95 = v60;
    v65 = v64;
    v66 = [v64 rem_removingMailto];

    if (!v66)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = String._bridgeToObjectiveC()();
    }

    v67 = [v66 rem_removingTel];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v69;

    v70 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_100546970(0, *(v95 + 2) + 1, 1, v95);
    }

    v72 = *(v70 + 2);
    v71 = *(v70 + 3);
    v73 = v70;
    if (v72 >= v71 >> 1)
    {
      v73 = sub_100546970((v71 > 1), v72 + 1, 1, v70);
    }

    *(v73 + 2) = v72 + 1;
    v74 = &v73[16 * v72];
    v60 = v73;
    *(v74 + 4) = v68;
    *(v74 + 5) = v93;
  }

  while (v59 != v58);
LABEL_123:

  *&v105 = v60;
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_10076DB20, &unk_100781F20);
  v75 = Sequence<>.unique()();

  swift_beginAccess();
  v76 = *(a3 + 16) > 1;
  *&v105 = v100;
  *(&v105 + 1) = v97;
  *&v106 = v99;
  BYTE8(v106) = v76;
  BYTE9(v106) = v87;
  *&v107 = v98;
  *(&v107 + 1) = v28;
  v108 = v75;
  v77 = *(&v106 + 1);
  sub_10012EC34(&v105, v103);
  v78 = v100;
  sub_10012EC34(&v105, v103);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();
  sub_10012EC6C(&v105);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v96 = v77;
    v82 = swift_slowAlloc();
    v102 = v82;
    *v81 = 136315138;
    v103[0] = v105;
    v103[1] = v106;
    v103[2] = v107;
    v104 = v108;
    sub_10012EC34(&v105, v101);
    v83 = String.init<A>(describing:)();
    v85 = sub_100004060(v83, v84, &v102);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v79, v80, "upgradeInfoPublisher: Returns proper TTRWelcomeUpgradeInfo {eligibleAccountInfo: %s}", v81, 0xCu);
    sub_100004758(v82);
    v77 = v96;

    sub_10012EC6C(&v105);
  }

  else
  {

    sub_10012EC6C(&v105);
  }

  *v88 = v100;
  v88[1] = v97;
  v88[2] = v99;
  v88[3] = v77;
  v88[4] = v98;
  v88[5] = v28;
  v88[6] = v75;
}

void sub_10012C214(_BYTE *a1@<X8>)
{
  if (qword_100766F40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10076D958);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "upgradeInfoPublisher: Timed out getting upgrade info", v5, 2u);
  }

  *a1 = 1;
}

uint64_t sub_10012C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_100766F40;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_10076D958);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "eligibleAccountsFuture: fetching accountsEligibleForMigration", v15, 2u);
  }

  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = sub_10012EC9C;
  v16[6] = v10;

  swift_unknownObjectRetain();
  dispatch thunk of TTRCloudKitMigrationManager.updateAccountsEligibleForMigration(completion:)();
}

uint64_t sub_10012C4A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void), uint64_t a5)
{
  v117 = a5;
  v139 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v130 = *(v139 - 8);
  __chkstk_darwin(v139 - 8);
  v127 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v109[-v9];
  __chkstk_darwin(v11);
  v128 = &v109[-v12];
  v13 = sub_100058000(&qword_10076DB40);
  __chkstk_darwin(v13 - 8);
  v15 = &v109[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v16);
  v133 = &v109[-v18];
  v19 = [*(a1 + 56) unsafeUntilSystemReady_allICloudACAccounts];
  sub_100003540(0, &qword_10076DB48);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v140 = _swiftEmptyArrayStorage;
  v116 = a4;
  v134 = v15;
  v21 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 >> 62)
  {
LABEL_70:
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  v135 = _swiftEmptyArrayStorage;
  v138 = v10;
  while (v22 != v23)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v21 + 16))
      {
        goto LABEL_69;
      }

      v24 = *(v20 + 8 * v23 + 32);
    }

    v10 = v24;
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v26 = [v24 displayAccount];

    ++v23;
    v10 = v138;
    if (v26)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v138;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v135 = v140;
      v23 = v25;
    }
  }

  v27 = dispatch thunk of TTRCloudKitMigrationManager.accountsEligibleForMigration.getter();
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 64);
  v122 = (v29 + 63) >> 6;
  v136 = (v130 + 16);
  v137 = (v130 + 32);
  v132 = (v130 + 8);
  v126 = (v130 + 88);
  v124 = enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:);
  v125 = enum case for TTRCloudKitMigrationManager.MigrationState.notStarted(_:);
  v123 = enum case for TTRCloudKitMigrationManager.MigrationState.inProgress(_:);
  v121 = enum case for TTRCloudKitMigrationManager.MigrationState.error(_:);
  v120 = enum case for TTRCloudKitMigrationManager.MigrationState.finished(_:);
  v115 = (v130 + 96);
  v129 = v27;

  v21 = 0;
  v118 = _swiftEmptyArrayStorage;
  v32 = &qword_10076DB50;
  v33 = &unk_1006315A8;
  *&v34 = 138543362;
  v119 = v34;
  *&v34 = 136446210;
  v113 = v34;
  v35 = v139;
  v131 = v28;
  while (1)
  {
    if (!v31)
    {
      if (v122 <= v21 + 1)
      {
        v37 = v21 + 1;
      }

      else
      {
        v37 = v122;
      }

      v38 = v37 - 1;
      while (1)
      {
        v36 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v36 >= v122)
        {
          v80 = sub_100058000(v32);
          v20 = v33;
          v46 = v32;
          v47 = v134;
          (*(*(v80 - 8) + 56))(v134, 1, 1, v80);
          v31 = 0;
          v21 = v38;
          goto LABEL_30;
        }

        v31 = *(v28 + 8 * v36);
        ++v21;
        if (v31)
        {
          v21 = v36;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_68;
    }

    v36 = v21;
LABEL_29:
    v39 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v130;
    v42 = *(*(v129 + 48) + 8 * v40);
    v43 = v128;
    v35 = v139;
    (*(v130 + 16))(v128, *(v129 + 56) + *(v130 + 72) * v40, v139);
    v44 = sub_100058000(v32);
    v45 = *(v44 + 48);
    v20 = v33;
    v46 = v32;
    v47 = v134;
    *v134 = v42;
    (*(v41 + 32))(&v47[v45], v43, v35);
    (*(*(v44 - 8) + 56))(v47, 0, 1, v44);
    v48 = v42;
    v10 = v138;
LABEL_30:
    v49 = v47;
    v50 = v133;
    sub_10012ECEC(v49, v133);
    v51 = v46;
    v52 = v46;
    v33 = v20;
    v53 = sub_100058000(v52);
    if ((*(*(v53 - 8) + 48))(v50, 1, v53) == 1)
    {
      break;
    }

    v54 = *v50;
    (*v137)(v10, v50 + *(v53 + 48), v35);
    v55 = sub_10012D274(v54, v135);
    if (v55)
    {
      v56 = v55;
      v57 = v127;
      (*v136)(v127, v10, v139);
      v58 = v57;
      v35 = v139;
      v59 = (*v126)(v58, v139);
      v32 = v51;
      v28 = v131;
      if (v59 == v125)
      {
        v81 = v127;
        (*v115)(v127, v35);
        LODWORD(v114) = *v81;
        if (qword_100766F40 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_100003E30(v82, qword_10076D958);
        v83 = v56;
        v84 = v54;
        v85 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        v110 = v20;
        v86 = os_log_type_enabled(v85, v20);
        v112 = v84;
        v111 = v83;
        if (v86)
        {
          v87 = v84;
          v88 = v83;
          v89 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v143 = v20;
          *v89 = v113;
          v140 = v88;
          v141 = v87;
          v142 = v114;
          v90 = v88;
          v91 = v87;
          v92 = String.init<A>(describing:)();
          v94 = sub_100004060(v92, v93, &v143);
          v10 = v138;

          *(v89 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v85, v110, "eligibleAccountsFuture: found eligible account in .notStarted {eligibleAccountResult: %{public}s}", v89, 0xCu);
          sub_100004758(v20);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v139;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v118 = sub_100547CE0(0, *(v118 + 2) + 1, 1, v118);
        }

        v97 = *(v118 + 2);
        v96 = *(v118 + 3);
        if (v97 >= v96 >> 1)
        {
          v118 = sub_100547CE0((v96 > 1), v97 + 1, 1, v118);
        }

        (*v132)(v10, v35);
        v98 = v118;
        *(v118 + 2) = v97 + 1;
        v99 = &v98[24 * v97];
        v100 = v112;
        *(v99 + 4) = v111;
        *(v99 + 5) = v100;
        v99[48] = v114;
      }

      else
      {
        if (v59 == v124 || v59 == v123)
        {
          goto LABEL_18;
        }

        if (v59 == v121)
        {
          if (qword_100766F40 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_100003E30(v60, qword_10076D958);
          v61 = v54;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v112 = v62;
            v66 = v65;
            *v64 = v119;
            *(v64 + 4) = v61;
            *v65 = v61;
            v67 = v61;
            _os_log_impl(&_mh_execute_header, v112, v63, "eligibleAccountsFuture: found eligible account in .error {calDAVAccountID: %{public}@}", v64, 0xCu);
            sub_1000079B4(v66, &unk_10076DF80);
            v62 = v112;

            v10 = v138;
          }

          v68 = swift_isUniquelyReferenced_nonNull_native();
          v114 = v61;
          if ((v68 & 1) == 0)
          {
            v118 = sub_100547CE0(0, *(v118 + 2) + 1, 1, v118);
          }

          v35 = v139;
          v20 = *(v118 + 2);
          v69 = *(v118 + 3);
          if (v20 >= v69 >> 1)
          {
            v118 = sub_100547CE0((v69 > 1), v20 + 1, 1, v118);
          }

          (*v132)(v10, v35);
          v70 = v118;
          *(v118 + 2) = v20 + 1;
          v71 = &v70[24 * v20];
          v72 = v114;
          *(v71 + 4) = v56;
          *(v71 + 5) = v72;
          v71[48] = 0;
        }

        else
        {
          if (v59 != v120)
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

LABEL_18:
          (*v132)(v10, v35);
        }
      }
    }

    else
    {
      if (qword_100766F40 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_100003E30(v73, qword_10076D958);
      v74 = v54;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v20 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v20 = v119;
        *(v20 + 4) = v74;
        *v77 = v74;
        v78 = v74;
        _os_log_impl(&_mh_execute_header, v75, v76, "eligibleAccountsFuture: cannot match a display iCloud ACAccount with the given eligible CalDAV account {calDAVAccountID: %{public}@}", v20, 0xCu);
        sub_1000079B4(v77, &unk_10076DF80);
        v79 = v139;

        v32 = v51;
      }

      else
      {
        v78 = v75;
        v75 = v74;
        v32 = v51;
        v79 = v139;
      }

      v10 = v138;
      (*v132)(v138, v79);
      v35 = v79;
      v28 = v131;
    }
  }

  if (qword_100766F40 != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_100003E30(v101, qword_10076D958);
  v102 = v118;

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v105 = os_log_type_enabled(v103, v104);
  v106 = v116;
  if (v105)
  {
    v107 = swift_slowAlloc();
    *v107 = 134217984;
    *(v107 + 4) = *(v102 + 2);

    _os_log_impl(&_mh_execute_header, v103, v104, "eligibleAccountsFuture: number of eligible accounts found: %ld", v107, 0xCu);
  }

  else
  {
  }

  v106(v102, 0);
}

void *sub_10012D274(void *a1, unint64_t a2)
{
  v28 = a1;
  v27 = type metadata accessor for UUID();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v25 = a2 & 0xFFFFFFFFFFFFFF8;
    v26 = a2 & 0xC000000000000001;
    v24 = (v3 + 8);
    while (1)
    {
      if (v26)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v25 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = i;
      v12 = ACAccount.rem_childCalDAVAccountEnabledForReminders.getter();
      if (v12 && (v13 = v12, v14 = [v12 identifier], v13, v14))
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v28 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = UUID.uuidString.getter();
      v3 = v20;
      (*v24)(v5, v27);
      if (v17)
      {
        if (v15 == v19 && v17 == v3)
        {

          return v9;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          return v9;
        }
      }

      else
      {
      }

      ++v7;
      i = v11;
      if (v10 == v11)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return 0;
}

void sub_10012D4F0(void (*a1)(void ***), uint64_t a2, void *a3, void *a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = qword_100766F40;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_10076D958);
  v12 = a4;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "migrationDeviceInfosFuture: Fetching ICDeviceListRequest for {calDAVAccountID: %{public}@}", v15, 0xCu);
    sub_1000079B4(v16, &unk_10076DF80);
  }

  v18 = [a3 identifier];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = [objc_allocWithZone(ICDeviceListRequest) initWithAccount:a3];
    if (v23)
    {
      v24 = v23;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        aBlock = v28;
        *v27 = 136446210;
        *(v27 + 4) = sub_100004060(v20, v22, &aBlock);
        _os_log_impl(&_mh_execute_header, v25, v26, "migrationDeviceInfosFuture: Firing ICDeviceListRequest for {appleAccount: %{public}s}", v27, 0xCu);
        sub_100004758(v28);
      }

      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      *(v29 + 24) = v20;
      *(v29 + 32) = v22;
      *(v29 + 40) = sub_10012ED6C;
      *(v29 + 48) = v9;
      *(v29 + 56) = a3;
      *(v29 + 64) = v12;
      *(v29 + 72) = a5 & 1;
      v49 = sub_10012EDB0;
      v50 = v29;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_10001047C;
      v48 = &unk_100717088;
      v30 = _Block_copy(&aBlock);
      v31 = v12;
      v32 = v24;
      v33 = a3;

      [v32 fetchWithCompletionBlock:v30];
      _Block_release(v30);
    }

    else
    {

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock = v37;
        *v36 = 136446210;
        *(v36 + 4) = sub_100004060(v20, v22, &aBlock);
        _os_log_impl(&_mh_execute_header, v34, v35, "migrationDeviceInfosFuture: Error creating ICDeviceListRequest for {appleAccount: %{public}s}", v36, 0xCu);
        sub_100004758(v37);
      }

      v38 = objc_opt_self();
      aBlock = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v39._object = 0x8000000100673A80;
      v39._countAndFlagsBits = 0xD000000000000034;
      String.append(_:)(v39);
      v40._countAndFlagsBits = v20;
      v40._object = v22;
      String.append(_:)(v40);

      v41._countAndFlagsBits = 46;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      v42 = String._bridgeToObjectiveC()();

      v43 = [v38 internalErrorWithDebugDescription:v42];

      aBlock = v43;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      LOBYTE(v49) = 1;
      a1(&aBlock);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10012DA18(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5, void *a6, void *a7, char a8)
{
  v15 = [a1 devices];
  if (v15)
  {
    v16 = v15;
    v43 = a4;
    sub_100003540(0, &qword_10076DB58);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_100766F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_10076D958);

    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v42 = a8;
      v22 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_100004060(a2, a3, &v45);
      *(v22 + 12) = 2080;
      v23 = [v19 devices];
      if (v23)
      {
        v24 = v23;
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v37 = Array.description.getter();
      v39 = v38;

      v40 = sub_100004060(v37, v39, &v45);

      *(v22 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v20, v21, "migrationDeviceInfosFuture: Got devices {appleAccount: %{public}s, devices: %s}", v22, 0x16u);
      swift_arrayDestroy();

      a8 = v42;
    }

    else
    {
    }

    v45 = a6;
    v46 = a7;
    v47 = a8 & 1;
    v48 = v17;
    v49 = 0;
    v44 = a6;
    v41 = a7;
    v43(&v45);
  }

  else
  {
    if (qword_100766F40 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_10076D958);

    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v29 = 136446466;
      *(v29 + 4) = sub_100004060(a2, a3, &v45);
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v30 = v26;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "migrationDeviceInfosFuture: Unable to get devices from iCloud. {appleAccount: %{public}s, request: %@}", v29, 0x16u);
      sub_1000079B4(v30, &unk_10076DF80);

      sub_100004758(v31);
    }

    v33 = objc_opt_self();
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v45 = 0xD000000000000028;
    v46 = 0x8000000100673AC0;
    v34._countAndFlagsBits = a2;
    v34._object = a3;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 46;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = String._bridgeToObjectiveC()();

    v44 = [v33 internalErrorWithDebugDescription:v36];

    v45 = v44;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 1;
    a4(&v45);
  }
}

uint64_t sub_10012DF08()
{
  sub_10003B788((v0 + 2));
  sub_10012EDC8(v0[4]);
  swift_unknownObjectRelease();

  sub_100004758((v0 + 8));
  v1 = OBJC_IVAR____TtC9Reminders20TTRWelcomeInteractor_getUpgradeInfoTimeout;
  v2 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRWelcomeInteractor()
{
  result = qword_10076D9A0;
  if (!qword_10076D9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012E028()
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

id *destroy for TTRWelcomeUpgradeInfo(id *result)
{
  if (*result)
  {
  }

  return result;
}

__n128 initializeWithCopy for TTRWelcomeUpgradeInfo(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v5;
    *(a1 + 48) = *(a2 + 48);
    v6 = v2;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 32);
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  return result;
}

uint64_t assignWithCopy for TTRWelcomeUpgradeInfo(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);

      *(a1 + 24) = *(a2 + 24);
      *(a1 + 25) = *(a2 + 25);
      *(a1 + 32) = *(a2 + 4);

      *(a1 + 40) = *(a2 + 5);

      *(a1 + 48) = *(a2 + 6);
    }

    else
    {
      sub_1000079B4(a1, &qword_10076DA58);
      v9 = a2[1];
      v8 = a2[2];
      v10 = *a2;
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 16) = v9;
      *(a1 + 32) = v8;
      *a1 = v10;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 16) = *(a2 + 2);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 25) = *(a2 + 25);
    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 6);
    v7 = v5;
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 16) = v12;
    *(a1 + 32) = v13;
    *a1 = v11;
  }

  return a1;
}

__n128 initializeWithTake for TTRIRemindersListCompletedCellContentConfiguration(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TTRWelcomeUpgradeInfo(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    if (*a2)
    {
      *result = *a2;
      v4 = result;

      v5 = *(a2 + 16);
      *(v4 + 8) = *(a2 + 8);
      *(v4 + 16) = v5;

      *(v4 + 24) = *(a2 + 24);
      *(v4 + 25) = *(a2 + 25);
      *(v4 + 32) = *(a2 + 32);

      *(v4 + 40) = *(a2 + 40);

      *(v4 + 48) = *(a2 + 48);
    }

    else
    {
      v4 = result;
      sub_1000079B4(result, &qword_10076DA58);
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 48) = *(a2 + 48);
    }

    return v4;
  }

  else
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRWelcomeUpgradeInfo(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRWelcomeUpgradeInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destroy for TTRWelcomeUpgradeInfo.EligibleAccountInfo(id *a1)
{
}

uint64_t initializeWithCopy for TTRWelcomeUpgradeInfo.EligibleAccountInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for TTRWelcomeUpgradeInfo.EligibleAccountInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for TTRWelcomeUpgradeInfo.EligibleAccountInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRWelcomeUpgradeInfo.EligibleAccountInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for TTRWelcomeUpgradeInfo.EligibleAccountInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10012E7EC(id result)
{
  if (result - 1 >= 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_10012E83C()
{
  result = qword_10076DAF8;
  if (!qword_10076DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076DAF8);
  }

  return result;
}

unint64_t sub_10012E890(uint64_t a1, id a2)
{
  v28 = 0;
  v3 = [a2 fetchAccountWithObjectID:a1 error:&v28];
  v4 = v28;
  if (v3)
  {
    v5 = v3;
    v28 = 0;
    v6 = v4;
    v7 = [v5 fetchListsWithError:&v28];
    v8 = v28;
    if (v7)
    {
      v9 = v7;
      sub_100003540(0, &qword_10076ABC0);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v8;

      v28 = _swiftEmptyArrayStorage;
      if (v10 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v25 = v5;
        v13 = 0;
        v14 = v10 & 0xC000000000000001;
        v15 = v10 & 0xFFFFFFFFFFFFFF8;
        v26 = v10;
        v27 = i;
        while (1)
        {
          if (v14)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *(v15 + 16))
            {
              goto LABEL_20;
            }

            v16 = *(v10 + 8 * v13 + 32);
          }

          v17 = v16;
          v5 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if ([v16 isShared] && objc_msgSend(v17, "sharingStatus") == 1)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v10 = v26;
            i = v27;
          }

          else
          {
          }

          ++v13;
          if (v5 == i)
          {
            v2 = v28;
            v5 = v25;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

      v2 = _swiftEmptyArrayStorage;
LABEL_23:

      if (qword_100766F40 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_10076D958);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v23 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v23 = *(v2 + 16);
        }

        *(v22 + 4) = v23;

        _os_log_impl(&_mh_execute_header, v20, v21, "fetchSharedFromMeLists: Got %ld lists.", v22, 0xCu);
      }

      else
      {
      }
    }

    else
    {
      v2 = v28;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v18 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10012EC9C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_10012ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076DB40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012ED6C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

void sub_10012EDC8(id a1)
{
  if (a1 - 1 >= 3)
  {
  }
}

uint64_t assignWithCopy for TTRWelcomeInteractor.EligibleAccountResult(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRWelcomeInteractor.EligibleAccountResult(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRWelcomeInteractor.EligibleAccountResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TTRWelcomeInteractor.EligibleAccountResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id *destroy for TTRWelcomeUpgradeInfo.Eligibility(id *result)
{
  if (*result >= 0xFFFFFFFF)
  {
  }

  return result;
}

__n128 initializeWithCopy for TTRWelcomeUpgradeInfo.Eligibility(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 32);
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v5;
    *(a1 + 48) = *(a2 + 48);
    v6 = v2;
  }

  return result;
}

uint64_t assignWithCopy for TTRWelcomeUpgradeInfo.Eligibility(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 25) = *(a2 + 25);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);
      v7 = v5;

      return a1;
    }

LABEL_7:
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 16) = v9;
    *(a1 + 32) = v10;
    *a1 = v8;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 4);

  *(a1 + 40) = *(a2 + 5);

  *(a1 + 48) = *(a2 + 6);

  return a1;
}

uint64_t assignWithTake for TTRWelcomeUpgradeInfo.Eligibility(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result < 0xFFFFFFFFuLL)
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v4 = result;

      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 48) = *(a2 + 48);
    }

    else
    {
      *result = *a2;
      v4 = result;

      v5 = *(a2 + 16);
      *(v4 + 8) = *(a2 + 8);
      *(v4 + 16) = v5;

      *(v4 + 24) = *(a2 + 24);
      *(v4 + 25) = *(a2 + 25);

      *(v4 + 32) = *(a2 + 32);

      *(v4 + 48) = *(a2 + 48);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRWelcomeUpgradeInfo.Eligibility(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRWelcomeUpgradeInfo.Eligibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10012F37C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10012F394(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_10012F3D4()
{
  result = qword_10076DB60;
  if (!qword_10076DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076DB60);
  }

  return result;
}

id TTRIAccountsListsAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIAccountsListsAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10012F4F8(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_timeZoneOverrideChangedObserver] = 0;
  v5 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a2[v5], 1, 1, v6);
  v8 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel;
  type metadata accessor for TTRAccountsListsViewModel();
  swift_allocObject();
  *&a2[v8] = TTRAccountsListsViewModel.init()();
  a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition] = 2;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController] = 0;
  v9 = &a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm];
  *v9 = 0;
  v9[1] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___searchButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___timeZoneOverrideButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___editButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuButton] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuWithBadgeButton] = 0;
  a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_needsWorkaround51600172] = 1;
  *&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_accountSpinnerVisibleByAccountID] = &_swiftEmptyDictionarySingleton;
  v10 = &a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration];
  v10[2] = -2;
  *v10 = -258;
  v11 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker;
  type metadata accessor for TTRIAccountsListsDropExceedsMaximumNumberOfPinnedListsTracker();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&a2[v11] = v12;
  v7(&a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_lastAppliedSelection], 1, 1, v6);
  v13 = &a2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
  *v13 = a1;
  v13[1] = &off_100727CF8;
  v16.receiver = a2;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  sub_1000AE568();

  return v14;
}

unint64_t sub_10012F73C()
{
  result = qword_10076DBC0;
  if (!qword_10076DBC0)
  {
    sub_10005D20C(&qword_10076DBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076DBC0);
  }

  return result;
}

char *sub_10012F7A8(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    v3 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 1);
    v7 = *(a2 + 2);
    *a1 = v5;
    *(a1 + 1) = v6;
    *(a1 + 2) = v7;
    v8 = *(a3 + 24);
    v11 = type metadata accessor for TTRIRemindersListCellPresentationStates();
    v12 = *(*(v11 - 8) + 16);
    swift_unknownObjectRetain();

    v12(&v3[v8], &a2[v8], v11);
    v13 = *(a3 + 28);
    v14 = type metadata accessor for TTRRemindersListItemSeparatorStates();
    (*(*(v14 - 8) + 16))(&v3[v13], &a2[v13], v14);
  }

  return v3;
}

uint64_t sub_10012F8E4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();

  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a2 + 28);
  v7 = type metadata accessor for TTRRemindersListItemSeparatorStates();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t sub_10012F9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v8 = *(*(v7 - 8) + 16);
  swift_unknownObjectRetain();

  v8(a1 + v6, a2 + v6, v7);
  v9 = *(a3 + 28);
  v10 = type metadata accessor for TTRRemindersListItemSeparatorStates();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  return a1;
}

char *sub_10012FA9C(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 1) = v6;
  *(a1 + 2) = *(a2 + 2);

  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 28);
  v10 = type metadata accessor for TTRRemindersListItemSeparatorStates();
  (*(*(v10 - 8) + 24))(&a1[v9], &a2[v9], v10);
  return a1;
}

uint64_t sub_10012FB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 28);
  v9 = type metadata accessor for TTRRemindersListItemSeparatorStates();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  return a1;
}

char *sub_10012FC50(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  swift_unknownObjectRelease();
  v7 = *(a2 + 2);
  *(a1 + 1) = v6;
  *(a1 + 2) = v7;

  v8 = *(a3 + 24);
  v9 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 28);
  v11 = type metadata accessor for TTRRemindersListItemSeparatorStates();
  (*(*(v11 - 8) + 40))(&a1[v10], &a2[v10], v11);
  return a1;
}

uint64_t type metadata accessor for TTRIRemindersListPresentationTree()
{
  result = qword_10076DC58;
  if (!qword_10076DC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012FD98()
{
  result = type metadata accessor for TTRIRemindersListCellPresentationStates();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListItemSeparatorStates();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012FEC0@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for TTRIRemindersListCellQuickBarState();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v36 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRIRemindersListCellQuickBarStates();
  __chkstk_darwin(v3 - 8);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRIRemindersListCellInfoButtonState();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListCellInfoButtonStates();
  __chkstk_darwin(v7 - 8);
  v31[2] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076BB50);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v31 - v13;
  v33 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v15 = *(v33 - 8);
  __chkstk_darwin(v33);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = type metadata accessor for TTRRemindersListTreeViewModel();
  v18 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v19 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  ObjectType = v18;
  v42 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v40 = v19;
  v20 = TTRRemindersListTreeViewModel.__allocating_init(sections:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)();
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v22 = *(*(v21 - 8) + 56);
  v22(v14, 1, 1, v21);
  v22(v12, 1, 1, v21);
  (*(v32 + 104))(v6, enum case for TTRIRemindersListCellInfoButtonState.hidden(_:), v34);
  sub_100131E7C(_swiftEmptyArrayStorage);
  TTRIRemindersListCellInfoButtonStates.init(defaultState:stateOverrides:)();
  (*(v37 + 104))(v36, enum case for TTRIRemindersListCellQuickBarState.hidden(_:), v38);
  sub_10013209C(_swiftEmptyArrayStorage);
  TTRIRemindersListCellQuickBarStates.init(defaultState:stateOverrides:)();
  TTRIRemindersListCellPresentationStates.init(isMultiSelectMode:hasActiveDragAndDrop:editingItemID:popoverItemID:infoButtonStates:cellQuickBarStates:itemIDsWithPonderingTextEffect:)();
  v23 = v39;
  *v39 = v20;
  v23[1] = &protocol witness table for TTRRemindersListTreeViewModel;
  v23[2] = &_swiftEmptySetSingleton;
  v24 = v23;
  v25 = type metadata accessor for TTRIRemindersListPresentationTree();
  v26 = v33;
  (*(v15 + 16))(v24 + *(v25 + 24), v17, v33);

  v27 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v29 = v28;
  ObjectType = swift_getObjectType();
  v42 = *(v29 + 8);
  v40 = v27;
  TTRRemindersListItemSeparatorStates.init(remindersListTree:)();

  return (*(v15 + 8))(v17, v26);
}

uint64_t sub_100130388@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v2 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v4 = v3;
  result = swift_getObjectType();
  a1[3] = result;
  a1[4] = *(v4 + 8);
  *a1 = v2;
  return result;
}

uint64_t sub_1001303F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v125 = a1;
  v123 = a2;
  v106 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v111 = *(v106 - 1);
  __chkstk_darwin(v106);
  v124 = v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100058000(&qword_10076DCB8);
  __chkstk_darwin(v98);
  v100 = v93 - v5;
  v6 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v6 - 8);
  v94 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v109 = v93 - v9;
  __chkstk_darwin(v10);
  v110 = v93 - v11;
  v108 = type metadata accessor for TTRIRemindersListCellQuickBarState();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v103 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = v93 - v14;
  v105 = type metadata accessor for TTRIRemindersListCellInfoButtonState();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v132 = v93 - v17;
  v18 = sub_100058000(&unk_10076DCC0);
  __chkstk_darwin(v18 - 8);
  v120 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v131 = v93 - v21;
  v121 = type metadata accessor for TTRRemindersListItemSeparatorFlags();
  v101 = *(v121 - 8);
  __chkstk_darwin(v121);
  v99 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v130 = v93 - v24;
  v25 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v25 - 8);
  v115 = v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v112 = v93 - v28;
  v133 = type metadata accessor for TTRRemindersListViewModel.Item();
  v129 = *(v133 - 8);
  __chkstk_darwin(v133);
  v127 = v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRIRemindersListCellQuickBarStates();
  v118 = *(v30 - 8);
  v119 = v30;
  __chkstk_darwin(v30);
  v32 = v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRIRemindersListCellInfoButtonStates();
  v116 = *(v33 - 8);
  v117 = v33;
  __chkstk_darwin(v33);
  v35 = v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v96 = v40;
  v41 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v42 = *(type metadata accessor for TTRIRemindersListPresentationTree() + 24);
  v113 = v37;
  v43 = v37;
  v44 = v41;
  v45 = *(v43 + 16);
  v97 = v3;
  v114 = v36;
  v45(v39, v3 + v42, v36);
  v126 = v35;
  TTRIRemindersListCellPresentationStates.infoButtonStates.getter();
  v128 = v32;
  v46 = v112;
  TTRIRemindersListCellPresentationStates.cellQuickBarStates.getter();
  swift_getObjectType();
  v134 = v41;
  v47 = v125;
  dispatch thunk of TTRTreeContentsQueryable.item(withID:)();
  v48 = v129;
  v49 = v133;
  if ((*(v129 + 48))(v46, 1, v133) != 1)
  {
    (*(v48 + 32))(v127, v46, v49);
    v50 = TTRRemindersListItemSeparatorStates.sectionsWithHiddenTopSeparator.getter();
    sub_1000A9AF8(v47, v50);
    v51 = v47;

    v52 = TTRRemindersListItemSeparatorStates.sectionDescendantsWithHiddenBottomSeparator.getter();
    sub_1000A9AF8(v47, v52);

    TTRRemindersListItemSeparatorFlags.init(forceTopSeparatorHiddenForSectionHeader:forceBottomSeparatorHiddenForSectionDescendant:)();
    v53 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isTopLevelReminder(_:)();
    v93[1] = v44;
    if (v53)
    {
      v54 = dispatch thunk of TTRRemindersListTreeContentsQueryable.numberOfSubtasks(of:)();
      v55 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel();
      v56 = *(v55 - 8);
      v57 = (v56 + 56);
      v58 = v106;
      v59 = v110;
      v60 = v109;
      if (v54 < 1)
      {
        v61 = &enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithoutSubtasks(_:);
      }

      else
      {
        v61 = &enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithSubtasks(_:);
      }

      v68 = v131;
      (*(v56 + 104))(v131, *v61, v55);
      (*v57)(v68, 0, 1, v55);
    }

    else
    {
      v62 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isSubtask(_:)();
      v58 = v106;
      v59 = v110;
      v60 = v109;
      if (v62)
      {
        v63 = enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.subtask(_:);
        v64 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel();
        v65 = *(v64 - 8);
        v66 = v131;
        (*(v65 + 104))(v131, v63, v64);
        (*(v65 + 56))(v66, 0, 1, v64);
      }

      else
      {
        v67 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel();
        (*(*(v67 - 8) + 56))(v131, 1, 1, v67);
      }
    }

    v69 = v100;
    TTRIRemindersListCellInfoButtonStates.state(for:)();
    TTRIRemindersListCellQuickBarStates.state(for:)();
    v112 = v39;
    TTRIRemindersListCellPresentationStates.editingItemID.getter();
    v70 = v111;
    v106 = *(v111 + 16);
    (v106)(v60, v51, v58);
    (*(v70 + 56))(v60, 0, 1, v58);
    v71 = *(v98 + 48);
    sub_10000794C(v59, v69, &unk_10076BB50);
    sub_10000794C(v60, v69 + v71, &unk_10076BB50);
    v72 = v59;
    v73 = *(v70 + 48);
    if (v73(v69, 1, v58) == 1)
    {
      sub_1000079B4(v60, &unk_10076BB50);
      sub_1000079B4(v72, &unk_10076BB50);
      v74 = v73(v69 + v71, 1, v58);
      v75 = v112;
      v76 = v125;
      if (v74 == 1)
      {
        sub_1000079B4(v69, &unk_10076BB50);
        LODWORD(v100) = 1;
LABEL_18:
        LODWORD(v125) = sub_100131414(v75, v76);
        v82 = TTRIRemindersListCellPresentationStates.itemIDsWithPonderingTextEffect.getter();
        LODWORD(v111) = sub_1000A9AF8(v76, v82);

        (v106)(v124, v76, v58);
        v83 = v129;
        v84 = v115;
        v85 = v133;
        (*(v129 + 16))(v115, v127, v133);
        (*(v83 + 56))(v84, 0, 1, v85);
        sub_10000794C(v131, v120, &unk_10076DCC0);
        v86 = v101;
        (*(v101 + 16))(v99, v130, v121);
        LODWORD(v110) = TTRIRemindersListCellPresentationStates.isUserInteractionEnabledForItems.getter();
        v87 = v104;
        v88 = v105;
        (*(v104 + 16))(v102, v132, v105);
        v89 = v107;
        v90 = v122;
        v91 = v108;
        (*(v107 + 16))(v103, v122, v108);
        v39 = v112;
        TTRIRemindersListItemIntermediateViewModel.init(itemID:item:reminderItemLevel:separatorFlags:isUserInteractionEnabled:isEditingItem:isTargetOfContextualPresentation:infoButtonState:cellQuickBarState:isPonderingTextEffectVisible:)();
        swift_unknownObjectRelease();
        (*(v89 + 8))(v90, v91);
        (*(v87 + 8))(v132, v88);
        sub_1000079B4(v131, &unk_10076DCC0);
        (*(v86 + 8))(v130, v121);
        (*(v83 + 8))(v127, v133);
        goto LABEL_19;
      }
    }

    else
    {
      v77 = v94;
      sub_10000794C(v69, v94, &unk_10076BB50);
      if (v73(v69 + v71, 1, v58) != 1)
      {
        v78 = v111;
        v79 = v69 + v71;
        v80 = v124;
        (*(v111 + 32))(v124, v79, v58);
        sub_1001322BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
        LODWORD(v100) = dispatch thunk of static Equatable.== infix(_:_:)();
        v81 = *(v78 + 8);
        v81(v80, v58);
        sub_1000079B4(v109, &unk_10076BB50);
        sub_1000079B4(v110, &unk_10076BB50);
        v81(v77, v58);
        sub_1000079B4(v69, &unk_10076BB50);
        v75 = v112;
        v76 = v125;
        goto LABEL_18;
      }

      sub_1000079B4(v109, &unk_10076BB50);
      sub_1000079B4(v110, &unk_10076BB50);
      (*(v111 + 8))(v77, v58);
      v75 = v112;
      v76 = v125;
    }

    sub_1000079B4(v69, &qword_10076DCB8);
    LODWORD(v100) = 0;
    goto LABEL_18;
  }

  sub_1000079B4(v46, &qword_100772140);
  static TTRIRemindersListItemIntermediateViewModel.placeholder(itemID:)();
  swift_unknownObjectRelease();
LABEL_19:
  (*(v118 + 8))(v128, v119);
  (*(v116 + 8))(v126, v117);
  return (*(v113 + 8))(v39, v114);
}

uint64_t sub_100131414(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076DCB8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v10 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  TTRIRemindersListCellPresentationStates.popoverItemID.getter();
  (*(v4 + 16))(v14, a2, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_10000794C(v17, v9, &unk_10076BB50);
  sub_10000794C(v14, &v9[v18], &unk_10076BB50);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_10000794C(v9, v26, &unk_10076BB50);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v18], v3);
      sub_1001322BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v22 = v26;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v21, v3);
      sub_1000079B4(v14, &unk_10076BB50);
      sub_1000079B4(v17, &unk_10076BB50);
      v23(v22, v3);
      sub_1000079B4(v9, &unk_10076BB50);
      return v20 & 1;
    }

    sub_1000079B4(v14, &unk_10076BB50);
    sub_1000079B4(v17, &unk_10076BB50);
    (*(v4 + 8))(v26, v3);
    goto LABEL_6;
  }

  sub_1000079B4(v14, &unk_10076BB50);
  sub_1000079B4(v17, &unk_10076BB50);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_1000079B4(v9, &qword_10076DCB8);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000079B4(v9, &unk_10076BB50);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_100131854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100781800);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = v31 - v9;
  swift_getObjectType();
  v11 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v31[5] = v12;
  v31[6] = swift_getObjectType();
  v38 = v11;
  v13 = TTRRemindersListHighlightTarget.targetItems.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v31[2] = v11;
    v31[3] = a2;
    v31[4] = a3;
    v37 = _swiftEmptyArrayStorage;
    sub_1004A1BC8(0, v14, 0);
    v15 = v37;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 64);
    v31[1] = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v32 = *(v16 + 56);
    v33 = v17;
    v20 = (v16 - 8);
    v21 = v16;
    do
    {
      v22 = v36;
      v23 = v21;
      v33(v7, v19, v36);
      v24 = *(v35 + 48);
      TTRRemindersListHighlightTarget.TargetItem.item.getter();
      v25 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
      (*v20)(v7, v22);
      v10[v24] = v25 & 1;
      v37 = v15;
      v27 = v15[2];
      v26 = v15[3];
      if (v27 >= v26 >> 1)
      {
        sub_1004A1BC8(v26 > 1, v27 + 1, 1);
        v15 = v37;
      }

      v15[2] = v27 + 1;
      sub_100132304(v10, v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27);
      v19 += v32;
      --v14;
      v21 = v23;
    }

    while (v14);
  }

  __chkstk_darwin(v28);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_1001322BC(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v29 = TTRTreeContentsQueryable.ancestorsToExpand<A>(forRevealing:transform:isExpanded:itemExpandedStateIsUnknownIfParentIsCollapsed:)();
  swift_unknownObjectRelease();

  return v29;
}

unint64_t sub_100131C24(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_1001322BC(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100131CBC(a1, v2);
}

unint64_t sub_100131CBC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1001322BC(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100131E7C(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076DCA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_10076DCB0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_10076DCA8);
      result = sub_100131C24(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for TTRIRemindersListCellInfoButtonState();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10013209C(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076DC98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100058000(&qword_10076DCA0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000794C(v9, v5, &qword_10076DC98);
      result = sub_100131C24(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for TTRIRemindersListCellQuickBarState();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001322BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100132304(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100781800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001323A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076DCD0);
  v1 = sub_100003E30(v0, qword_10076DCD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10013246C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v2[4] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[9] = 0;
  type metadata accessor for TTRIActivityAlertRouterCapability();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v2[10] = v5;
  v2[11] = 0;
  v2[5] = a1;
  v2[6] = a2;
  return v2;
}

uint64_t sub_1001324F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 presentedViewController];
      if (v4)
      {
        v5 = v4;
        sub_100003540(0, &qword_10076AD28);
        v6 = static NSObject.== infix(_:_:)();

        if ((v6 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v7 = dispatch thunk of TTRIReminderDetailModuleInterface.userActivityForWindowSceneRestoration.getter();
          swift_unknownObjectRelease();
          return v7;
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

  return 0;
}

id sub_100132640(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v47 = a7;
  v45 = a6;
  v43 = a5;
  v42 = a4;
  v40 = a3;
  v39 = a2;
  v8 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v8 - 8);
  v46 = &v36 - v9;
  v48 = type metadata accessor for TTRIReminderDetailStyle();
  v38 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TTRReminderDetailSubject();
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_10076DF38);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v36 - v16;
  v18 = [a1 store];
  v19 = [a1 objectID];
  v20 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v49[0] = 0;
  v21 = [v18 fetchReminderWithObjectID:v19 fetchOptions:v20 error:v49];

  if (v21)
  {
    v22 = v49[0];
    v23 = [v21 store];
    v24 = [objc_allocWithZone(REMSaveRequest) initWithStore:v23];

    v37 = v24;
    v25 = [v24 updateReminder:v21];
    v26 = REMReminder.parentReminderID.getter();
    if (!v26)
    {
      v26 = [a1 objectID];
    }

    v27 = v26;
    v28 = [v21 list];
    v29 = v17;
    REMList.fetchSectionLite(containingReminderWith:)();

    v30 = v25;
    TTRReminderDetailSubject.init(reminderChangeItem:)();
    v31 = v38;
    (*(v38 + 104))(v11, enum case for TTRIReminderDetailStyle.full(_:), v48);
    v32 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
    v33 = v46;
    (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
    v49[2] = v47;
    v49[3] = v13;
    v49[4] = v39;
    v49[5] = v40;
    v49[6] = v42;
    v49[7] = v43;
    v49[8] = v11;
    v50 = 1;
    v51 = 1;
    v52 = v29;
    v53 = v33;
    v54 = v45;
    v55 = 256;
    v19 = firstly<A>(closure:)();

    sub_1000079B4(v33, &qword_10076DF30);
    (*(v31 + 8))(v11, v48);
    (*(v41 + 8))(v13, v44);
    sub_1000079B4(v29, &qword_10076DF38);
  }

  else
  {
    v34 = v49[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v19;
}

uint64_t sub_100132B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100132C24, v6, v5);
}

uint64_t sub_100132C24()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_100132D7C;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return UIViewController.presentAlert<A>(with:animated:)(v5, v3, 1, v4);
  }

  else
  {

    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    [v6 internalErrorWithDebugDescription:v7];

    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100132D7C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100132F28;
  }

  else
  {
    v5 = sub_100132EB8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100132EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100132F28()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100133054(char a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v7 = Strong;
  v8 = [Strong presentingViewController];
  if (!v8)
  {
    v9 = v7;
LABEL_12:

    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 presentedViewController];
  if (!v10)
  {

    goto LABEL_12;
  }

  v11 = v10;
  sub_100003540(0, &qword_10076AD28);
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 presentingViewController];

      if (v15)
      {
        if (a2)
        {
          v16[4] = a2;
          v16[5] = a3;
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 1107296256;
          v16[2] = sub_10001047C;
          v16[3] = &unk_100717460;
          a2 = _Block_copy(v16);
        }

        [v15 dismissViewControllerAnimated:a1 & 1 completion:a2];
        _Block_release(a2);
      }
    }

    return;
  }

LABEL_13:
  if (a2)
  {
    (a2)();
  }
}

uint64_t sub_100133210(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = [objc_opt_self() sharedPrintController];
    [v6 dismissAnimated:0];

    sub_1001332CC(a2, a3);
  }

  else if (a2)
  {
    return (a2)();
  }

  return result;
}

void sub_1001332CC(void (*a1)(void), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, v6 = [Strong navigationController], v5, !v6))
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_9;
    }

    v6 = v7;
  }

  v8 = [v6 presentedViewController];
  if (v8)
  {

    if (a1)
    {
      v10[4] = a1;
      v10[5] = a2;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10001047C;
      v10[3] = &unk_100717500;
      v9 = _Block_copy(v10);
    }

    else
    {
      v9 = 0;
    }

    [v6 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);

    return;
  }

LABEL_9:
  if (a1)
  {
    a1();
  }
}

void sub_100133418(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(type metadata accessor for TTRIQuickLookPreviewController());

  v5 = TTRIQuickLookPreviewController.init(ttr_previewItems:)();
  [v5 setCurrentPreviewItemIndex:a2];
  swift_unknownObjectRetain();
  TTRIQuickLookPreviewController.transitionDelegate.setter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

void sub_1001334E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRListOrCustomSmartList();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8, v11);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(v13 + v12, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_100139380;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100717438;
  v14 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1001336B0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TTRListOrCustomSmartList();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a1(v7);
  return sub_1000079B4(v7, &unk_10076DF20);
}

void sub_1001337DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v12 = Strong, v13 = [Strong navigationController], v12, !v13))
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      return;
    }

    v13 = v14;
  }

  v15 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v27 = v13;
    v28 = a2;
    v30 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v17 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    do
    {
      sub_100139BF4(v17, v10);
      sub_100139BF4(v10, v7);
      v19 = type metadata accessor for TTRIRemindersListRouter.ActivityItemSource(0);
      v20 = objc_allocWithZone(v19);
      sub_100139BF4(v7, v20 + OBJC_IVAR____TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource_item);
      v29.receiver = v20;
      v29.super_class = v19;
      objc_msgSendSuper2(&v29, "init");
      sub_100137F48(v7);
      sub_100137F48(v10);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += v18;
      --v15;
    }

    while (v15);
    v16 = v30;
    v13 = v27;
    a2 = v28;
  }

  sub_1003E07E4(v16);

  v21 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v21 initWithActivityItems:isa applicationActivities:0];

  v24 = [v23 presentationController];
  if (v24)
  {
    v25 = v24;
    [v24 setSourceView:a2];
  }

  [v13 presentViewController:v23 animated:1 completion:0];
}

void sub_100133A90(void *a1, uint64_t a2)
{
  if ([a1 canBeShared])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v5 = Strong, v6 = [Strong navigationController], v5, !v6))
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v6 = v7;
    }

    _s9Reminders23TTRListSharingUtilitiesC26addCKShareObserverIfNeeded3forySo7REMListC_tFZ_0(a1);
    v8 = _s9Reminders23TTRListSharingUtilitiesC32shareSheetActivityViewController3for13popoverAnchorSo010UIActivityhI0CSo7REMListC_0A6UICore011TTRIPopoverL0VSgtFZ_0(a1, a2);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v12[4] = sub_100139BEC;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1002A4958;
    v12[3] = &unk_1007175A0;
    v10 = _Block_copy(v12);
    v11 = a1;

    [v8 setCompletionWithItemsHandler:v10];
    _Block_release(v10);
    [v6 presentViewController:v8 animated:1 completion:0];
  }
}

void sub_100133C00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((a2 & 1) == 0)
  {
    _s9Reminders23TTRListSharingUtilitiesC11cancelShare3forySo7REMListC_tFZ_0(a5);
    if (a4)
    {
      swift_errorRetain();
      if (qword_100766F50 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003E30(v7, qword_10076DCD0);
      swift_errorRetain();
      v8 = a5;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v11 = 138412546;
        v14 = [v8 objectID];
        *(v11 + 4) = v14;
        *v12 = v14;
        *(v11 + 12) = 2080;
        swift_getErrorValue();
        v15 = Error.rem_errorDescription.getter();
        v17 = sub_100004060(v15, v16, &v18);

        *(v11 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "Share sheet failed, canceling the share request. {list.objectID: %@, error: %s}", v11, 0x16u);
        sub_1000079B4(v12, &unk_10076DF80);

        sub_100004758(v13);
      }

      else
      {
      }
    }
  }
}

void sub_100133E38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRTemplatesListStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v11 = Strong, v12 = [Strong navigationController], v11, !v12))
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {
      return;
    }

    v12 = v13;
  }

  (*(v7 + 104))(v9, enum case for TTRTemplatesListStyle.browser(_:), v6);
  v14 = sub_1004D06B4(v9, a1, a2, a3);
  v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];
  [v15 setModalPresentationStyle:2];

  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  [v12 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_100133FF8(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = sub_100058000(&qword_10076DFA0);
  v6 = *(v5 - 8);
  v20 = v5;
  v21 = v6;
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  v9 = sub_1001C5E88(a1);
  v19[0] = v10;
  v23 = sub_1002C6048();
  v11 = [objc_opt_self() mainRunLoop];
  v22 = v11;
  v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_100058000(&qword_10076DFA8);
  sub_100003540(0, &qword_10076DFB0);
  sub_10000E188(&qword_10076DFB8, &qword_10076DFA8);
  sub_100139DF0();
  Publisher.receive<A>(on:options:)();
  sub_1000079B4(v4, &qword_1007701A0);

  v13 = swift_allocObject();
  v14 = v19[1];
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v13;
  sub_10000E188(&qword_10076DFC8, &qword_10076DFA0);

  v16 = v20;
  v17 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_unknownObjectRelease();

  (*(v21 + 8))(v8, v16);
  *(v14 + 72) = v17;
}

void sub_100134350(void *a1)
{
  if (*a1)
  {
    if (qword_100766F50 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_10076DCD0);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.rem_errorDescription.getter();
      v8 = v7;

      v9 = sub_100004060(v6, v8, &v10);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to show print panel: %s", v4, 0xCu);
      sub_100004758(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100134504(uint64_t a1)
{
  sub_10000794C(a1, &aBlock, &unk_10076DFD0);
  v1 = aBlock;
  sub_100005FD0(&v13, v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3 || (v4 = v3, v5 = [v3 navigationController], v4, !v5))
    {
      v5 = swift_unknownObjectWeakLoadStrong();
    }

    v6 = [v5 viewIfLoaded];

    v7 = [v6 window];
    Strong = [v7 windowScene];
  }

  sub_10000B0D8(v17, v11);
  v8 = swift_allocObject();
  sub_100005FD0(v11, v8 + 16);
  v15 = sub_100139E60;
  v16 = v8;
  aBlock = _NSConcreteStackBlock;
  *&v13 = 1107296256;
  *(&v13 + 1) = sub_100134908;
  v14 = &unk_100717668;
  v9 = _Block_copy(&aBlock);

  [v1 presentAnimated:1 hostingScene:Strong completionHandler:v9];
  _Block_release(v9);

  return sub_100004758(v17);
}

uint64_t sub_1001346FC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  if (qword_100766F50 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10076DCD0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    if (a2)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a2)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_100004060(v11, v12, &v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v14 = Error.rem_errorDescription.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_100004060(v14, v16, &v19);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "printInteractionController completion {isCompleted: %s, error: %s}", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000C36C(a4, a4[3]);
  return dispatch thunk of TTRReminderPrintingTemporaryResourceAssertion.finish()();
}

void sub_100134908(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t sub_10013499C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 presentedViewController];
      if (v4)
      {
        v5 = v4;
        sub_100003540(0, &qword_10076AD28);
        v6 = static NSObject.== infix(_:_:)();

        if ((v6 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v7 = dispatch thunk of TTRIReminderDetailModuleInterface.hasUncommittedChanges.getter();
          swift_unknownObjectRelease();
          return v7 & 1;
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

  return 0;
}

uint64_t sub_100134A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100134AC0, 0, 0);
}

uint64_t sub_100134AC0()
{
  v1 = *(v0[2] + 48);
  ObjectType = swift_getObjectType();
  v8 = (*(v1 + 16) + **(v1 + 16));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_100134BF0;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return v8(v6, v4, v5, ObjectType, v1);
}

uint64_t sub_100134BF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100134CE4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = Strong, v4 = [Strong navigationController], v3, !v4))
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v4 = v5;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    UIViewController.endFirstResponderEditing()();
  }

  v8 = sub_10039BCF8(a1);
  [v4 presentViewController:v8 animated:1 completion:0];
}

void *sub_100134DDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, char a13)
{
  v154 = a8;
  LODWORD(v130) = a7;
  v142 = a6;
  v131 = a5;
  v129 = a4;
  v145 = a3;
  v146 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v143 = *(v146 - 8);
  __chkstk_darwin(v146);
  v122 = v16;
  v137 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRReminderDetailSubject();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v138 = v18;
  v139 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&unk_10076DF40);
  v135 = *(v19 - 8);
  v136 = v19;
  __chkstk_darwin(v19);
  v134 = &v117 - v20;
  v133 = type metadata accessor for TTRIPopoverAnchor();
  v132 = *(v133 - 8);
  v21 = __chkstk_darwin(v133);
  v120 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = &v117 - v23;
  v24 = sub_100058000(&unk_10076FCD0);
  v25 = __chkstk_darwin(v24 - 8);
  v128 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v151 = &v117 - v27;
  v127 = type metadata accessor for TTRReminderDetailPendingMoveInteractorCapability.PendingMoveContext();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v29 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for REMNavigationSpecifier();
  v149 = *(v34 - 8);
  v150 = v34;
  __chkstk_darwin(v34);
  v147 = a1;
  v148 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = TTRReminderDetailSubject.initialReminderChangeItem.getter();
  v37 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v39 = Strong, v40 = [Strong navigationController], v39, v40))
  {
    v144 = v40;
  }

  else
  {
    v41 = swift_unknownObjectWeakLoadStrong();
    if (!v41)
    {
      v57 = objc_opt_self();
      v152 = 0;
      v153 = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      v58._object = 0x8000000100673D60;
      v58._countAndFlagsBits = 0xD00000000000004BLL;
      String.append(_:)(v58);
      v59 = [v36 objectID];
      v60 = [v59 description];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64._countAndFlagsBits = v61;
      v64._object = v63;
      String.append(_:)(v64);

      v65._countAndFlagsBits = 32041;
      v65._object = 0xE200000000000000;
      String.append(_:)(v65);
      v66 = String._bridgeToObjectiveC()();

      [v57 internalErrorWithDebugDescription:v66];

      swift_willThrow();
      return v66;
    }

    v144 = v41;
  }

  v125 = v13;
  v123 = a9;
  v42 = *(sub_100058000(&unk_10076DF50) + 48);
  v124 = v36;
  v43 = [v36 objectID];
  v44 = v148;
  *v148 = v43;
  v45 = *(v143 + 16);
  v119 = v143 + 16;
  v118 = v45;
  v45(&v44[v42], v145, v146);
  v46 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.showDetail(_:);
  v47 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  (*(*(v47 - 8) + 104))(&v44[v42], v46, v47);
  (*(v149 + 104))(v44, enum case for REMNavigationSpecifier.reminder(_:), v150);
  if (qword_100766F50 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100003E30(v48, qword_10076DCD0);
  REMNavigationSpecifier.url.getter();
  sub_1003F9C58(0x7265646E696D6552, 0xEE007473694C2073, 0x7265646E696D6552, 0xEF6C696174654420, v33);
  (*(v31 + 8))(v33, v30);
  v49 = v37;
  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    v52 = [v50 presentingViewController];
    if (v52)
    {
      v53 = v52;
      v54 = [v52 presentedViewController];
      if (v54)
      {
        v55 = v54;
        sub_100003540(0, &qword_10076AD28);
        v56 = static NSObject.== infix(_:_:)();

        v49 = v37;
        if (v56)
        {
          sub_100133054(0, 0, 0);
        }
      }

      else
      {

        v49 = v37;
      }
    }

    else
    {
    }
  }

  type metadata accessor for TTRIReminderDetailAssembly();
  TTRReminderDetailPendingMoveInteractorCapability.PendingMoveContext.init(persistLastSelectedListID:customSmartListToMatch:)();
  v67 = static TTRIReminderDetailAssembly.createViewController(subject:delegate:style:savesOnCommit:itemCount:pendingMoveContext:ttrSectionLite:manualOrdering:)();
  v154 = v68;
  v70 = v69;
  (*(v126 + 8))(v29, v127);
  v71 = objc_allocWithZone(UINavigationController);
  v131 = v67;
  v72 = [v71 initWithRootViewController:v67];
  sub_10000C36C(a11, a11[3]);
  v73 = v151;
  dispatch thunk of TTRIRemindersListDetailPopoverAnchorProviding.acquirePopoverAnchor()();
  v74 = v128;
  sub_10000794C(v73, v128, &unk_10076FCD0);
  v75 = v132;
  v76 = v133;
  v77 = (*(v132 + 48))(v74, 1, v133);
  v142 = v72;
  if (v77 == 1)
  {
    v78 = v72;
    sub_1000079B4(v74, &unk_10076FCD0);
  }

  else
  {
    v130 = *(v75 + 32);
    v79 = v121;
    v130(v121, v74, v76);
    v129 = v72;
    UIPopoverArrowDirection.addingRTLFallback()();
    v80 = v70;
    v81 = v49;
    v82 = v120;
    TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)();
    v83 = *(v75 + 8);
    v83(v79, v76);
    v84 = v82;
    v49 = v81;
    v70 = v80;
    v130(v79, v84, v76);
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    v83(v79, v76);
    v72 = v142;
  }

  swift_unknownObjectWeakAssign();
  *(v49 + 32) = v70;
  swift_unknownObjectWeakAssign();
  v85 = [v72 presentationController];

  if (v85)
  {
    swift_getObjectType();
    dispatch thunk of TTRIReminderDetailModuleInterface.prepareForModalPresentation(by:asHalfSheet:)();
  }

  if (a13)
  {
    v152 = UIViewController.futureForPresenting(_:animated:)();
    sub_100058000(&qword_1007699F0);
    sub_100058000(&qword_10076DF60);
    sub_10000E188(&qword_10076DF68, &qword_10076DF60);
    v86 = v134;
    Publisher<>.setFailureType<A>(to:)();

    sub_10000E188(&qword_10076DF70, &unk_10076DF40);
    v87 = v136;
    v133 = Publisher<>.legacyPromise()();
    (*(v135 + 8))(v86, v87);
    v136 = swift_allocObject();
    swift_weakInit();
    v88 = v139;
    v89 = v140;
    v90 = v141;
    (*(v140 + 16))(v139, v147, v141);
    v118(v137, v145, v146);
    v91 = (*(v89 + 80) + 24) & ~*(v89 + 80);
    v92 = (v138 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
    v94 = v143;
    v95 = *(v143 + 80);
    v147 = v70;
    v96 = (v95 + v93 + 16) & ~v95;
    v97 = swift_allocObject();
    *(v97 + 16) = v136;
    (*(v89 + 32))(v97 + v91, v88, v90);
    v98 = v131;
    *(v97 + v92) = v131;
    v99 = (v97 + v93);
    v100 = v146;
    v101 = v147;
    *v99 = v154;
    v99[1] = v101;
    (*(v94 + 32))(v97 + v96, v137, v100);
    v102 = v98;
    swift_unknownObjectRetain();
    v103 = zalgo.getter();
    v66 = dispatch thunk of Promise.then<A>(on:closure:)();

    swift_unknownObjectRelease();

    v104 = v103;
  }

  else
  {
    swift_getObjectType();
    v146 = dispatch thunk of TTRIReminderDetailModuleInterface.navigate<A>(to:animated:moduleInterfaceType:)();
    v152 = UIViewController.futureForPresenting(_:animated:)();
    sub_100058000(&qword_1007699F0);
    sub_100058000(&qword_10076DF60);
    sub_10000E188(&qword_10076DF68, &qword_10076DF60);
    v105 = v134;
    Publisher<>.setFailureType<A>(to:)();

    sub_10000E188(&qword_10076DF70, &unk_10076DF40);
    v106 = v136;
    Publisher<>.legacyPromise()();
    (*(v135 + 8))(v105, v106);
    v107 = swift_allocObject();
    swift_weakInit();
    v108 = v139;
    v109 = v140;
    v110 = v141;
    (*(v140 + 16))(v139, v147, v141);
    v111 = (*(v109 + 80) + 24) & ~*(v109 + 80);
    v112 = (v138 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    *(v113 + 16) = v107;
    (*(v109 + 32))(v113 + v111, v108, v110);
    v98 = v131;
    *(v113 + v112) = v131;
    *(v113 + ((v112 + 15) & 0xFFFFFFFFFFFFFFF8)) = v146;
    v114 = v98;

    v115 = zalgo.getter();
    v66 = dispatch thunk of Promise.then<A>(on:closure:)();

    swift_unknownObjectRelease();

    v104 = v144;
  }

  sub_1000079B4(v151, &unk_10076FCD0);
  (*(v149 + 8))(v148, v150);
  return v66;
}

void *sub_100135E18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, char a13, uint64_t a14)
{
  v157 = a8;
  LODWORD(v133) = a7;
  v146 = a6;
  v134 = a5;
  v132 = a4;
  v148 = a3;
  v149 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v145 = *(v149 - 8);
  __chkstk_darwin(v149);
  v125 = v17;
  v139 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRReminderDetailSubject();
  v142 = *(v18 - 8);
  v143 = v18;
  __chkstk_darwin(v18);
  v140 = v19;
  v141 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&unk_10076DF40);
  v137 = *(v20 - 8);
  v138 = v20;
  __chkstk_darwin(v20);
  v136 = &v120 - v21;
  v144 = type metadata accessor for TTRIPopoverAnchor();
  v135 = *(v144 - 8);
  __chkstk_darwin(v144);
  v123 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v124 = &v120 - v24;
  v25 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v25 - 8);
  v131 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v154 = &v120 - v28;
  v130 = type metadata accessor for TTRReminderDetailPendingMoveInteractorCapability.PendingMoveContext();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for REMNavigationSpecifier();
  v152 = *(v35 - 8);
  v153 = v35;
  __chkstk_darwin(v35);
  v150 = a1;
  v151 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = TTRReminderDetailSubject.initialReminderChangeItem.getter();
  v38 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v40 = Strong, v41 = [Strong navigationController], v40, v41))
  {
    v147 = v41;
  }

  else
  {
    v42 = swift_unknownObjectWeakLoadStrong();
    if (!v42)
    {
      v58 = objc_opt_self();
      v155 = 0;
      v156 = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      v59._object = 0x8000000100673D60;
      v59._countAndFlagsBits = 0xD00000000000004BLL;
      String.append(_:)(v59);
      v60 = [v37 objectID];
      v61 = [v60 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65._countAndFlagsBits = v62;
      v65._object = v64;
      String.append(_:)(v65);

      v66._countAndFlagsBits = 32041;
      v66._object = 0xE200000000000000;
      String.append(_:)(v66);
      v67 = String._bridgeToObjectiveC()();

      [v58 internalErrorWithDebugDescription:v67];

      swift_willThrow();
      return v67;
    }

    v147 = v42;
  }

  v128 = v14;
  v126 = a9;
  v43 = *(sub_100058000(&unk_10076DF50) + 48);
  v127 = v37;
  v44 = [v37 objectID];
  v45 = v151;
  *v151 = v44;
  v46 = *(v145 + 16);
  v122 = v145 + 16;
  v121 = v46;
  v46(&v45[v43], v148, v149);
  v47 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.showDetail(_:);
  v48 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  (*(*(v48 - 8) + 104))(&v45[v43], v47, v48);
  (*(v152 + 104))(v45, enum case for REMNavigationSpecifier.reminder(_:), v153);
  if (qword_100766F50 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100003E30(v49, qword_10076DCD0);
  REMNavigationSpecifier.url.getter();
  sub_1003F9C58(0x7265646E696D6552, 0xEE007473694C2073, 0x7265646E696D6552, 0xEF6C696174654420, v34);
  (*(v32 + 8))(v34, v31);
  v50 = v38;
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v53 = [v51 presentingViewController];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 presentedViewController];
      if (v55)
      {
        v56 = v55;
        sub_100003540(0, &qword_10076AD28);
        v57 = static NSObject.== infix(_:_:)();

        v50 = v38;
        if (v57)
        {
          sub_100133054(0, 0, 0);
        }
      }

      else
      {

        v50 = v38;
      }
    }

    else
    {
    }
  }

  type metadata accessor for TTRIReminderDetailAssembly();
  TTRReminderDetailPendingMoveInteractorCapability.PendingMoveContext.init(persistLastSelectedListID:customSmartListToMatch:)();
  v68 = static TTRIReminderDetailAssembly.createViewController(subject:delegate:style:savesOnCommit:itemCount:pendingMoveContext:ttrSectionLite:manualOrdering:)();
  v157 = v69;
  v71 = v70;
  (*(v129 + 8))(v30, v130);
  v72 = objc_allocWithZone(UINavigationController);
  v134 = v68;
  v73 = [v72 initWithRootViewController:v68];
  sub_10000C36C(a11, a11[3]);
  v74 = v154;
  dispatch thunk of TTRIRemindersListDetailPopoverAnchorProviding.acquirePopoverAnchor()();
  v75 = v74;
  v76 = v131;
  sub_10000794C(v75, v131, &unk_10076FCD0);
  v77 = v135;
  v78 = v144;
  v79 = (*(v135 + 48))(v76, 1, v144);
  v146 = v73;
  if (v79 == 1)
  {
    v80 = v73;
    sub_1000079B4(v76, &unk_10076FCD0);
  }

  else
  {
    v81 = *(v77 + 32);
    v133 = v50;
    v82 = v124;
    v81(v124, v76, v78);
    v132 = v146;
    UIPopoverArrowDirection.addingRTLFallback()();
    v83 = v71;
    v84 = v123;
    TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)();
    v85 = *(v77 + 8);
    v85(v82, v78);
    v86 = v84;
    v71 = v83;
    v81(v82, v86, v78);
    v73 = v146;
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    v87 = v82;
    v50 = v133;
    v85(v87, v78);
  }

  swift_unknownObjectWeakAssign();
  *(v50 + 32) = v71;
  swift_unknownObjectWeakAssign();
  v88 = [v73 presentationController];

  if (v88)
  {
    swift_getObjectType();
    dispatch thunk of TTRIReminderDetailModuleInterface.prepareForModalPresentation(by:asHalfSheet:)();
  }

  v144 = a14;
  if (a13)
  {
    v155 = UIViewController.futureForPresenting(_:animated:)();
    sub_100058000(&qword_1007699F0);
    sub_100058000(&qword_10076DF60);
    sub_10000E188(&qword_10076DF68, &qword_10076DF60);
    v89 = v136;
    Publisher<>.setFailureType<A>(to:)();

    sub_10000E188(&qword_10076DF70, &unk_10076DF40);
    v90 = v138;
    v135 = Publisher<>.legacyPromise()();
    (*(v137 + 8))(v89, v90);
    v138 = swift_allocObject();
    swift_weakInit();
    v91 = v141;
    v92 = v142;
    v93 = v143;
    (*(v142 + 16))(v141, v150, v143);
    v121(v139, v148, v149);
    v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v95 = (v140 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v150 = v71;
    v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = v145;
    v98 = (*(v145 + 80) + v96 + 16) & ~*(v145 + 80);
    v99 = swift_allocObject();
    v100 = v138;
    *(v99 + 16) = v144;
    *(v99 + 24) = v100;
    (*(v92 + 32))(v99 + v94, v91, v93);
    v101 = v134;
    *(v99 + v95) = v134;
    v102 = (v99 + v96);
    v103 = v149;
    v104 = v150;
    *v102 = v157;
    v102[1] = v104;
    (*(v97 + 32))(v99 + v98, v139, v103);
    v105 = v101;
    swift_unknownObjectRetain();
    v106 = zalgo.getter();
    v67 = dispatch thunk of Promise.then<A>(on:closure:)();

    swift_unknownObjectRelease();

    v107 = v106;
  }

  else
  {
    swift_getObjectType();
    v149 = dispatch thunk of TTRIReminderDetailModuleInterface.navigate<A>(to:animated:moduleInterfaceType:)();
    v155 = UIViewController.futureForPresenting(_:animated:)();
    sub_100058000(&qword_1007699F0);
    sub_100058000(&qword_10076DF60);
    sub_10000E188(&qword_10076DF68, &qword_10076DF60);
    v108 = v136;
    Publisher<>.setFailureType<A>(to:)();

    sub_10000E188(&qword_10076DF70, &unk_10076DF40);
    v109 = v138;
    v148 = Publisher<>.legacyPromise()();
    (*(v137 + 8))(v108, v109);
    v110 = swift_allocObject();
    swift_weakInit();
    v111 = v141;
    v112 = v142;
    v113 = v143;
    (*(v142 + 16))(v141, v150, v143);
    v114 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v115 = (v140 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
    v116 = swift_allocObject();
    *(v116 + 16) = v144;
    *(v116 + 24) = v110;
    (*(v112 + 32))(v116 + v114, v111, v113);
    v101 = v134;
    *(v116 + v115) = v134;
    *(v116 + ((v115 + 15) & 0xFFFFFFFFFFFFFFF8)) = v149;
    v117 = v101;

    v118 = zalgo.getter();
    v67 = dispatch thunk of Promise.then<A>(on:closure:)();

    swift_unknownObjectRelease();

    v107 = v147;
  }

  sub_1000079B4(v154, &unk_10076FCD0);
  (*(v152 + 8))(v151, v153);
  return v67;
}