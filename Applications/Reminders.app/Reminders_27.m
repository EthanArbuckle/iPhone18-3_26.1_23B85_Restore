char *sub_1002EF320(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[qword_10077A998 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_10077A9A0] = &_swiftEmptyDictionarySingleton;
  *&v5[qword_10077A9A8] = &_swiftEmptyDictionarySingleton;
  *&v5[qword_10077A9B0] = &_swiftEmptySetSingleton;
  *&v5[qword_10078A540] = 0;
  *&v5[qword_10078A548] = 0;
  *&v5[qword_10078A550] = 0;
  v5[qword_10078A558] = 0;
  v26.receiver = v5;
  v26.super_class = sub_100058000(&qword_10077B018);
  v11 = objc_msgSendSuper2(&v26, "initWithFrame:", a2, a3, a4, a5);
  [v11 bounds];
  v16 = [objc_allocWithZone(type metadata accessor for TTRITreeTableView()) initWithFrame:a1 style:{v12, v13, v14, v15}];
  v17 = *&v11[qword_10078A540];
  *&v11[qword_10078A540] = v16;
  v18 = v16;

  [v18 setAutoresizingMask:18];
  [v18 setPreservesSuperviewLayoutMargins:1];
  [v11 addSubview:v18];

  objc_allocWithZone(sub_100058000(&qword_10076B8F8));
  v19 = v11;
  v20 = v18;
  v21 = sub_1003BBBAC(v19, v20);
  v22 = qword_10078A548;
  v23 = *&v19[qword_10078A548];
  *&v19[qword_10078A548] = v21;

  v24 = &off_100719448;
  if (!*&v19[v22])
  {
    v24 = 0;
  }

  *&v20[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate + 8] = v24;
  swift_unknownObjectWeakAssign();

  return v19;
}

id sub_1002EF560(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_10077A998 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_10077A9A0] = &_swiftEmptyDictionarySingleton;
  *&v1[qword_10077A9A8] = &_swiftEmptyDictionarySingleton;
  *&v1[qword_10077A9B0] = &_swiftEmptySetSingleton;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1002EF644()
{
  sub_10003B788(v0 + qword_10077A998);
}

uint64_t sub_1002EF6A4(uint64_t a1)
{
  sub_10003B788(a1 + qword_10077A998);
}

uint64_t sub_1002EF7AC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_1003AB730(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = a2(0);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    a3(v18, v15);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a2(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1002EF994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002EF9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  result = a4();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(a3 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a2 + 16))
  {
  }

  __break(1u);
  return result;
}

void sub_1002EFA60(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5, v7);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_4;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (v6 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.account(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_4:
      (*(v3 + 8))(v5, v2);
      return;
    }

    if (v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_100767180 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003E30(v8, qword_10077A980);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
    }
  }
}

uint64_t sub_1002EFDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EFE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EFEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1002EFF1C(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = *(sub_100058000(&qword_10076B858) + 48);
      v13 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = *(sub_100058000(&unk_10076B860) + 48);
      v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
      (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1002F0114(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v6 - 8) + 8))(a1, v6);
      v4 = *(sub_100058000(&qword_10076B858) + 48);
      v5 = type metadata accessor for REMHashtagLabelSpecifier();
      break;
    case 1:
      v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v3 - 8) + 8))(a1, v3);
      v4 = *(sub_100058000(&unk_10076B860) + 48);
      v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
      break;
    case 0:

    default:
      return result;
  }

  v7 = *(*(v5 - 8) + 8);

  return v7(a1 + v4, v5);
}

char *sub_1002F0268(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = *(sub_100058000(&qword_10076B858) + 48);
    v10 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    v6 = *(sub_100058000(&unk_10076B860) + 48);
    v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_1002F0414(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_1002EFEBC(a1, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = *(sub_100058000(&qword_10076B858) + 48);
      v10 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = *(sub_100058000(&unk_10076B860) + 48);
      v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
      (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1002F05E4(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    v11 = *(sub_100058000(&qword_10076B858) + 48);
    v12 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = *(sub_100058000(&unk_10076B860) + 48);
    v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *sub_1002F07B0(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1002EFEBC(a1, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    v11 = *(sub_100058000(&qword_10076B858) + 48);
    v12 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = *(sub_100058000(&unk_10076B860) + 48);
    v9 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_1002F09A0()
{
  v6 = &value witness table for Builtin.BridgeObject + 64;
  result = type metadata accessor for TTRAccountsListsViewModel.Item();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v7 = &v5;
      result = type metadata accessor for REMHashtagLabelSpecifier();
      if (v3 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v8 = &v4;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

void sub_1002F0AEC(unint64_t a1)
{
  sub_100003540(0, &qword_100771DF0);
  v2 = static UIFont.roundedBodyFont.getter();
  v12.super.isa = UIFont.withBoldTrait()().super.isa;

  v11 = static TTRCommonAsset.Color.hashtagTokenTextColor.getter();
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

LABEL_14:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v8 = [v5 attributedText];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    __chkstk_darwin(v8);
    v10 = NSAttributedString.withMutations(_:)();

    [v6 setAttributedText:v10];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_1002F0C8C(void *a1, id a2)
{
  [a2 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [a2 setEdgesPreservingSuperviewLayoutMargins:10];
  [a2 setLayoutMarginsRelativeArrangement:1];
  result = [a1 effectiveUserInterfaceLayoutDirection];
  if (result == 1)
  {
    v5 = [a2 arrangedSubviews];
    sub_100003540(0, &qword_10076B020);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = v12;
          if ([v12 contentMode] == 7)
          {
            [v13 setContentMode:8];
          }
        }

        ++v8;
        if (v11 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return result;
}

void sub_1002F0E80(unint64_t a1)
{
  sub_100003540(0, &qword_10076FCB0);
  v2 = static UIImage.ttr_systemSymbolImage(named:)();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_100003540(0, &qword_100772610);
  v4 = static UIColor.ttrSecondaryLabelColor.getter();
  v5 = [v3 imageWithTintColor:v4];

  v14 = v5;
  if (!v5)
  {
    return;
  }

  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_17:

    return;
  }

LABEL_16:
  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_5:
  v7 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v11 = [v8 attributedText];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    __chkstk_darwin(v11);
    v13 = NSAttributedString.withMutations(_:)();

    [v9 setAttributedText:v13];
    ++v7;
    if (v10 == v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

id sub_1002F10A4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100058000(&qword_100776A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_100058000(&qword_100776A48);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v11 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
  v13 = &v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreEllipsisPlaceholder];
  *v13 = 0xD000000000000024;
  *(v13 + 1) = 0x80000001006708A0;
  v14 = &v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_howToPlaceholder];
  *v14 = 0xD000000000000017;
  *(v14 + 1) = 0x80000001006708D0;
  v15 = &v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreTagsPlaceholder];
  *v15 = 0xD000000000000029;
  *(v15 + 1) = 0x80000001006708F0;
  sub_1002F2808();
  static TTRTypedController.currentArgument.getter();
  *&v2[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_presenter] = v19;
  v18.receiver = v2;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);

  swift_unknownObjectRelease();
  if (v16)
  {
  }

  return v16;
}

void sub_1002F142C()
{
  v1 = v0;
  sub_100058000(&qword_10076AE48);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100633540;
  *(v2 + 32) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 40) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 48) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 56) = swift_unknownObjectWeakLoadStrong();
  *(v2 + 64) = swift_unknownObjectWeakLoadStrong();
  sub_100058000(&qword_10076AE50);
  sub_100003540(0, &unk_10076B090);
  sub_100096990();
  v3 = Sequence.removingNils<A>()();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = 0;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  left = UIEdgeInsetsZero.left;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v3 + 8 * v5 + 32);
    }

    v10 = v9;
    ++v5;
    [v9 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
    v11 = [v10 textContainer];
    [v11 setLineFragmentPadding:0.0];
  }

  while (v4 != v5);
LABEL_10:

  sub_1002F1C60();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D3F0;
  *(v12 + 32) = swift_unknownObjectWeakLoadStrong();
  *(v12 + 40) = swift_unknownObjectWeakLoadStrong();
  v13 = Sequence.removingNils<A>()();

  sub_1002F0AEC(v13);

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  *(v14 + 32) = swift_unknownObjectWeakLoadStrong();
  v15 = Sequence.removingNils<A>()();

  sub_1002F0E80(v15);

  sub_100058000(&unk_10076AE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreTagsPlaceholder];
  v19 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_learnMoreTagsPlaceholder + 8];
  *(inited + 32) = Strong;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  *(inited + 56) = 2;
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_howToPlaceholder];
  v22 = *&v1[OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_howToPlaceholder + 8];
  *(inited + 64) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = v22;
  *(inited + 88) = 0;

  sub_1002F21F8(inited, v1);
  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  sub_1002F0C8C(v24, v25);

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_setDeallocating();
    swift_arrayDestroy();
    v29._object = 0x8000000100680630;
    v30._countAndFlagsBits = 0xD000000000000079;
    v30._object = 0x8000000100680670;
    v29._countAndFlagsBits = 0xD000000000000032;
    TTRLocalizedString(_:comment:)(v29, v30);
    v31 = String._bridgeToObjectiveC()();

    [v28 setAccessibilityLabel:v31];

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1002F1C60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = Strong;
  static TTRLocalizableStrings.LearnMore.whySmartLists.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  static TTRLocalizableStrings.LearnMore.whySmartListsExampleBody.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setText:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  static TTRLocalizableStrings.LearnMore.makeSmartListBody.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  static TTRLocalizableStrings.LearnMore.filteringTags.getter();
  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  static TTRLocalizableStrings.LearnMore.addRemindersToSmartLists.getter();
  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v16 = v15;
  static TTRLocalizableStrings.LearnMore.howToAddRemindersToSmartLists.getter();
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];
}

uint64_t type metadata accessor for TTRILearnMoreCSLViewController()
{
  result = qword_10077B168;
  if (!qword_10077B168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F203C()
{
  result = type metadata accessor for TTRHelpAnchor();
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

void sub_1002F21F8(uint64_t a1, uint64_t a2)
{
  sub_100003540(0, &qword_100772610);
  v18 = static UIColor.ttrLinkColor.getter();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 56);
    while (1)
    {
      v5 = *v4;
      v6 = *(v4 - 3);
      swift_bridgeObjectRetain_n();
      v7 = v6;
      v8 = [v7 text];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10007D420();
      LOBYTE(v9) = StringProtocol.contains<A>(_:)();

      if (v9)
      {
        if (v5)
        {
          if (v5 == 1)
          {
            v10 = 0x1000000000000051;
            v11 = 0x8000000100670760;
            v12 = 0x6F4D206E7261654CLL;
            v13 = 0xAD0000A680E26572;
          }

          else
          {
            v13 = 0x80000001006707C0;
            v10 = 0x100000000000005CLL;
            v11 = 0x80000001006707E0;
            v12 = 0x1000000000000018;
          }
        }

        else
        {
          v11 = 0x8000000100670840;
          v12 = 0x41206F542D776F48;
          v13 = 0xEE00656C63697472;
          v10 = 0xD000000000000052;
        }

        TTRLocalizedString(_:comment:)(*&v12, *&v10);
        [v7 setSelectable:1];
        [v7 _setInteractiveTextSelectionDisabled:1];
        [v7 setDelegate:a2];
        v14 = [v7 attributedText];
        if (!v14)
        {
          goto LABEL_16;
        }

        v15 = v14;
        __chkstk_darwin(v14);
        v16 = NSAttributedString.withMutations(_:)();

        [v7 setAttributedText:v16];
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v4 += 4;
      if (!--v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

uint64_t sub_1002F250C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRLearnMoreContent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, sub_100003540(0, &unk_10076B090), v10 = a1, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) != 0))
  {
    v12 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_presenter);
    if (qword_100766FC0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_1007712B0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    sub_10000C36C((v12 + 48), *(v12 + 72));
    sub_100094F90();
  }

  else
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_100003540(0, &unk_10076B090);
      v16 = a1;
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        v18 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRILearnMoreCSLViewController_presenter);
        (*(v5 + 104))(v7, enum case for TTRLearnMoreContent.hashtags(_:), v4);
        if (qword_100766FC0 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100003E30(v19, qword_1007712B0);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_10000FD44();

        sub_10000C36C((v18 + 48), *(v18 + 72));
        sub_1000950E8(v7);
        (*(v5 + 8))(v7, v4);
      }
    }
  }

  return 0;
}

unint64_t sub_1002F2808()
{
  result = qword_10077B180;
  if (!qword_10077B180)
  {
    type metadata accessor for TTRILearnMoreCSLViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B180);
  }

  return result;
}

uint64_t sub_1002F2874()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  swift_unknownObjectRelease();
  sub_100004758(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F28E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077B248);
  v1 = sub_100003E30(v0, qword_10077B248);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F29B0(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for TTRIRemindersListBarItem(), *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36))))
  {
    v5 = *(a1 + *(v4 + 40)) ^ *(a2 + *(v4 + 40)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1002F2A34(uint64_t a1, Swift::UInt a2, char a3)
{
  v3 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(4uLL);
    }

    else
    {
      v3 = qword_100639C30[a2];
    }
  }

  else
  {
    Hasher._combine(_:)(2uLL);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002F2AD4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1002F2A34(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002F2B30()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1002F2A34(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_1002F2B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  return sub_1001254F0(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t sub_1002F2BF0()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v2 = v0;
    v5[3] = *v0;
    v5[0] = v0;
    type metadata accessor for TTRIAddReminderBarButtonModule();
    swift_allocObject();

    v1 = sub_1001C60D8(1, v5, "newReminderAction:");
    v3 = *(v1 + 48);
    if (v3)
    {
      [v3 setContentHorizontalAlignment:{4, v5[0]}];
    }

    v2[8] = v1;
  }

  return v1;
}

uint64_t sub_1002F2CD4(char a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams();
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v179 - v14;
  v191 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    return sub_1000079B4(&v194, &qword_10077B340);
  }

  v18 = Strong;
  v185 = v15;
  v19 = sub_10037BD64();
  if (v19)
  {
    v20 = v19;
    swift_unknownObjectRelease();
    v21 = &off_10071F0F8;
    v18 = v20;
    v22 = &type metadata for TTRIRemindersListUIToolbarUpdater;
  }

  else
  {
    v21 = &off_10071F110;
    v22 = &type metadata for TTRIRemindersListViewControllerToolbarUpdater;
  }

  *(&v195 + 1) = v22;
  v196 = v21;
  *&v194 = v18;
  sub_100005FD0(&v194, v197);
  v24 = swift_unknownObjectWeakLoadStrong();
  v188 = v6;
  v183 = v9;
  v187 = v7;
  v186 = v13;
  if (a1)
  {
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
      v26 = *(v24 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
      v27 = v24;
      ObjectType = swift_getObjectType();
      v29 = *(v26 + 160);
      v30 = v25;
      v31 = v29(0, ObjectType, v26);

      v32 = *(v27 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v33 = *(v27 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
      sub_10000C36C((v27 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v32);
      v34 = (*(v33 + 424))(v31, v32, v33);
      v36 = v35;
      swift_unknownObjectRelease();

      v37 = v36 & 0x100;
    }

    else
    {
      LOBYTE(v36) = 0;
      v37 = 0;
      v34 = _swiftEmptyArrayStorage;
    }

    v39 = v37 | v36 & 1 | 0xFFFF8000;
  }

  else if (v24)
  {
    v38 = sub_1003903E8();
    swift_unknownObjectRelease();
    v39 = 0;
    v34 = v38 & 1;
  }

  else
  {
    v34 = 0;
    v39 = 0;
  }

  v40 = *(v3 + 56);
  if ((~v40 & 0xFFFFFEFE) == 0)
  {
    sub_1002F6104(v34, v39);
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v41 = *(v3 + 48);
  if ((v40 & 0x80000000) == 0)
  {
    sub_1002F690C(*(v3 + 48), v40);
    if ((v39 & 0x80000000) != 0)
    {
      sub_1002F6104(v34, v39);
LABEL_31:
      v50 = (v39 >> 8) & 1;
      goto LABEL_32;
    }

    if (((v41 ^ v34) & 1) == 0)
    {
      return sub_100004758(v197);
    }

LABEL_22:
    v42 = static REMFeatureFlags.isSolariumEnabled.getter();
    sub_100058000(&qword_10076B780);
    v43 = swift_allocObject();
    if (v42)
    {
      *(v43 + 16) = xmmword_10062D410;
      *(v43 + 32) = [objc_opt_self() flexibleSpaceItem];
      v44 = (v43 + 40);
    }

    else
    {
      *(v43 + 16) = xmmword_10062D420;
      v44 = (v43 + 32);
    }

    v45 = *(sub_1002F2BF0() + 16);

    *v44 = v45;
    *&v194 = v43;
    if (v34)
    {
      if (static REMFeatureFlags.isSolariumEnabled.getter())
      {
        v46 = sub_1002F4138();
        sub_1000F17D0(0, 0, v46);
      }

      else
      {
        sub_100058000(&qword_10076B780);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D410;
        *(inited + 32) = [objc_opt_self() flexibleSpaceItem];
        *(inited + 40) = sub_1002F4138();
        sub_100018520(inited);
      }
    }

    v48 = v198;
    v49 = v199;
    sub_10000C36C(v197, v198);
    (*(v49 + 16))(v194, v4 & 1, v48, v49);

LABEL_159:
    v171 = *(v3 + 48);
    *(v3 + 48) = v34;
    v172 = *(v3 + 56);
    *(v3 + 56) = v39;
    sub_1002F690C(v171, v172);
    return sub_100004758(v197);
  }

  if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  v173 = *(v3 + 56);
  v50 = (v39 >> 8) & 1;
  v174 = sub_1001254F0(*(v3 + 48), v34);
  sub_1002F6104(v34, v39);
  if ((v174 & 1) != 0 && ((v173 ^ v39) & 1) == 0 && (((v173 ^ v39) >> 8) & 1) == 0)
  {
    sub_1002F6104(v34, v39);
    return sub_100004758(v197);
  }

LABEL_32:
  v51 = *(v3 + 56);
  v182 = v34;
  v184 = v39;
  if ((~v51 & 0xFFFFFEFE) != 0 && v51 < 0)
  {
    v52 = *(v3 + 48);
    sub_1002F60E8(v34, v39);
    sub_1002F68F8(v52, v51);
    v53 = sub_1002F6730(v34, v39 & 1, v52, v51 & 1);
    sub_1002F690C(v52, v51);
    if (v53)
    {
      goto LABEL_121;
    }
  }

  else
  {
  }

  v180 = v50;
  v54 = *(v34 + 16);
  v55 = _swiftEmptyArrayStorage;
  v181 = v4;
  if (v54)
  {
    v192 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v56 = (v34 + 40);
    while (1)
    {
      v55 = *(v56 - 1);
      v59 = *v56;
      swift_beginAccess();
      v60 = *(v3 + 40);
      if (*(v60 + 16))
      {
        v61 = sub_1003AB3D4(v55, v59);
        if (v62)
        {
          v63 = *(*(v60 + 56) + 8 * v61);
          swift_endAccess();
          v64 = v63;
          goto LABEL_41;
        }
      }

      swift_endAccess();
      sub_100003540(0, &qword_10076B800);
      sub_100003540(0, &qword_10076BA60);
      v65 = swift_allocObject();
      swift_weakInit();
      v66 = swift_allocObject();
      *(v66 + 16) = v65;
      *(v66 + 24) = v55;
      *(v66 + 32) = v59;
      v203.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v203.value.super.isa = 0;
      v204.value.super.super.isa = 0;
      isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v203, v204, v205).super.super.isa;
      swift_beginAccess();
      v4 = isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193 = *(v3 + 40);
      v69 = v193;
      *(v3 + 40) = 0x8000000000000000;
      v71 = sub_1003AB3D4(v55, v59);
      v72 = v69[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      v75 = v70;
      if (v69[3] >= v74)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v78 = v193;
          if ((v70 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          sub_1003AE29C();
          v78 = v193;
          if ((v75 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        sub_10054945C(v74, isUniquelyReferenced_nonNull_native);
        v76 = sub_1003AB3D4(v55, v59);
        if ((v75 & 1) != (v77 & 1))
        {
          goto LABEL_190;
        }

        v71 = v76;
        v78 = v193;
        if ((v75 & 1) == 0)
        {
LABEL_52:
          v78[(v71 >> 6) + 8] |= 1 << v71;
          v79 = v78[6] + 16 * v71;
          *v79 = v55;
          *(v79 + 8) = v59;
          *(v78[7] + 8 * v71) = v4;
          v80 = v78[2];
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (v81)
          {
            goto LABEL_177;
          }

          v78[2] = v82;
          goto LABEL_40;
        }
      }

      v57 = v78[7];
      v58 = *(v57 + 8 * v71);
      *(v57 + 8 * v71) = v4;

LABEL_40:
      *(v3 + 40) = v78;
      swift_endAccess();
LABEL_41:
      v56 += 16;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v54)
      {
        LOBYTE(v39) = v184;
        sub_1002F6104(v182, v184);
        v55 = v192;
        LOBYTE(v4) = v181;
        break;
      }
    }
  }

  v192 = v55;
  if ((v180 & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v83 = *(v3 + 40);
  if (!*(v83 + 16) || (v84 = sub_1003AB3D4(1uLL, 2), (v85 & 1) == 0))
  {
    swift_endAccess();
LABEL_72:
    sub_1002F45C4();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_75:
    if ((v39 & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v86 = *(*(v83 + 56) + 8 * v84);
  swift_endAccess();
  if (!(v55 >> 62))
  {
    v87 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v87)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  v87 = _CocoaArrayWrapper.endIndex.getter();
  if (!v87)
  {
    goto LABEL_72;
  }

LABEL_62:
  v88 = v4;
  v4 = v55 & 0xC000000000000001;
  v89 = v86;
  v54 = 0;
  while (1)
  {
    if (v4)
    {
      v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v90 == v89)
      {
        break;
      }

      goto LABEL_68;
    }

    if (v54 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_182;
    }

    if (*(v55 + 8 * v54 + 32) == v89)
    {
      break;
    }

LABEL_68:
    v91 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_178;
    }

    ++v54;
    if (v91 == v87)
    {

      LOBYTE(v39) = v184;
      LOBYTE(v4) = v88;
      goto LABEL_72;
    }
  }

  v175 = v54 + 1;
  if (__OFADD__(v54, 1))
  {
    __break(1u);
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v176 = sub_1002F45C4();
  LOBYTE(v4) = v88;
  if (v55 >> 62)
  {
    v177 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v177 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v178 = v184;
  if (v177 < v175)
  {
    goto LABEL_187;
  }

  if ((v175 & 0x8000000000000000) == 0)
  {
    sub_1000F17D0(v175, v175, v176);

    if ((v178 & 1) == 0)
    {
      while (1)
      {
LABEL_78:
        v54 = v192;
        v55 = v192 >> 62;
        if (v192 >> 62)
        {
LABEL_179:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_120;
          }
        }

        else if (!*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v92 = [objc_opt_self() flexibleSpaceItem];
        [v92 setHidesSharedBackground:0];
        v93 = v55 ? _CocoaArrayWrapper.endIndex.getter() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!__OFSUB__(v93, 1))
        {
          break;
        }

        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_77:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (v93 - 1 < 1)
      {
        goto LABEL_119;
      }

      v94 = v93 + 4;
      v95 = 8 * v93 + 24;
      while (2)
      {
        v4 = v94 - 5;
        v96 = v54 < 0 || (v54 & 0x4000000000000000) != 0;
        if (v96)
        {
          if (v54 < 0)
          {
            v55 = v54;
          }

          else
          {
            v55 = v54 & 0xFFFFFFFFFFFFFF8;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < v4)
          {
            goto LABEL_174;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < v4)
          {
            goto LABEL_189;
          }

          v103 = _CocoaArrayWrapper.endIndex.getter();
          v98 = v103 + 1;
          if (__OFADD__(v103, 1))
          {
            goto LABEL_175;
          }
        }

        else
        {
          v97 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v97 < v4)
          {
            goto LABEL_174;
          }

          v98 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_175;
          }
        }

        v55 = v92;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x4000000000000000) == 0)
          {
            v99 = v54 & 0xFFFFFFFFFFFFFF8;
            if (v98 > *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_99:
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v99 = v54 & 0xFFFFFFFFFFFFFF8;
            }

            sub_100003540(0, &qword_10076B800);
            swift_arrayDestroy();
            if (!(v54 >> 62))
            {
              v100 = *(v99 + 16);
              v101 = v100 - v4;
              if (__OFSUB__(v100, v4))
              {
                goto LABEL_118;
              }

              goto LABEL_102;
            }

            v104 = _CocoaArrayWrapper.endIndex.getter();
            v101 = v104 - v4;
            if (!__OFSUB__(v104, v4))
            {
LABEL_102:
              memmove((v99 + 8 * v94), (v99 + v95), 8 * v101);
              if (v54 >> 62)
              {
                v102 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v102 = *(v99 + 16);
              }

              if (__OFADD__(v102, 1))
              {
                goto LABEL_176;
              }

              *(v99 + 16) = v102 + 1;
              *(v99 + v95) = v55;
              --v94;
              v95 -= 8;
              if (v4 <= 1)
              {
                goto LABEL_119;
              }

              continue;
            }

LABEL_118:
            __break(1u);
LABEL_119:

            LOBYTE(v4) = v181;
LABEL_120:
            v105 = v198;
            v106 = v199;
            sub_10000C36C(v197, v198);
            (*(v106 + 16))(v54, v4 & 1, v105, v106);

LABEL_121:
            v107 = sub_1002F4620();
            v108 = swift_unknownObjectWeakLoadStrong();
            v109 = &OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory_accessoryState;
            v127 = v108 && (v110 = *(v108 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController), v111 = *(v108 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8), v112 = v108, v113 = swift_getObjectType(), v114 = *(v111 + 160), v115 = v110, v116 = v114(0, v113, v111), v115, v117 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo, swift_beginAccess(), v118 = v190, v119 = v189, v120 = v191, (*(v190 + 16))(v189, v112 + v117, v191), LOBYTE(v117) = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter(), (*(v118 + 8))(v119, v120), v121 = *(v112 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24), v122 = *(v112 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32), sub_10000C36C((v112 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v121), v123 = (*(v122 + 432))(v116, v117 & 1, v121, v122), v125 = v124, swift_unknownObjectRelease(), , v126 = *(v123 + 16), , v126) && v125 > 0;
            [v107 setEnabled:v127];

            v128 = sub_1002F45C4();
            v129 = swift_unknownObjectWeakLoadStrong();
            if (v129 && (v130 = *(v129 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController), v131 = *(v129 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8), v132 = v129, v133 = swift_getObjectType(), v109 = *(v131 + 160), v134 = v130, v135 = (v109)(0, v133, v131), v134, v136 = *(v132 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24), v137 = *(v132 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32), sub_10000C36C((v132 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v136), v138 = v185, (*(v137 + 440))(v135, v136, v137), swift_unknownObjectRelease(), , v139 = v186, sub_1002F692C(v138, v186, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams), v140 = v188, (*(v187 + 48))(v139, 1, v188) != 1))
            {
              v142 = v139;
              v143 = v183;
              sub_1002F692C(v142, v183, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
              v144 = *(v143 + *(v140 + 40));
              sub_1002F6A28(v143, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
              v141 = v144 > 0;
            }

            else
            {
              v141 = 0;
            }

            v34 = v182;
            LOWORD(v39) = v184;
            [v128 setEnabled:v141];

            v145 = *(v34 + 16);
            if (v145)
            {
              v187 = "$_moveSectionButton";
              v146 = (v34 + 42);
              v190 = v3;
              while (1)
              {
                v147 = *(v146 - 10);
                v148 = *(v146 - 2);
                v149 = *(v146 - 1);
                v150 = *v146;
                swift_beginAccess();
                v151 = *(v3 + 40);
                if (*(v151 + 16))
                {
                  v152 = sub_1003AB3D4(v147, v148);
                  if (v153)
                  {
                    break;
                  }
                }

                swift_endAccess();
LABEL_132:
                v146 += 16;
                if (!--v145)
                {
                  v34 = v182;
                  v170 = v182;
                  LOWORD(v39) = v184;
                  goto LABEL_158;
                }
              }

              v154 = *(*(v151 + 56) + 8 * v152);
              swift_endAccess();
              v155 = v154;
              [v155 setEnabled:v149];
              if (v149)
              {
                v156 = 256;
              }

              else
              {
                v156 = 0;
              }

              if (v150)
              {
                v157 = 0x10000;
              }

              else
              {
                v157 = 0;
              }

              LODWORD(v109) = v109 & 0xFF000000 | v148 | v156 | v157;
              v158 = v155;
              v159 = sub_1002F467C(v147, v109);
              [v158 setImage:v159];

              if (v148)
              {
                if (v148 == 1)
                {
                  v160 = v109;
                  v161 = v189 & 0xFF000000 | 1 | v156 | v157;
                  v162 = v147;
                  v163 = &v202;
                }

                else
                {
                  if (v147 != 4)
                  {
                    [v158 setTitle:0];

                    if (v147 != 1)
                    {
                      goto LABEL_154;
                    }

                    goto LABEL_152;
                  }

                  v160 = v109;
                  v161 = v186 & 0xFF000000 | v148 | v156 | v157;
                  v162 = 4;
                  v163 = &v200;
                }
              }

              else
              {
                v160 = v109;
                v161 = v188 & 0xFF000000 | v156 | v157;
                v162 = v147;
                v163 = &v201;
              }

              *(v163 - 64) = v161;
              sub_1002F56AC(v162, v161);
              v109 = String._bridgeToObjectiveC()();

              [v158 setTitle:v109];

              LODWORD(v109) = v160;
              if (v148)
              {
                if (v148 == 1)
                {
                  v3 = v190;
LABEL_154:
                  v167 = v191 & 0xFF000000 | v148 | v156 | v157;
                  v168 = v158;
                  LODWORD(v191) = v167;
                  sub_1002F56AC(v147, v167);
                  goto LABEL_155;
                }

                v3 = v190;
                if (v147 != 1)
                {
                  goto LABEL_154;
                }
              }

              else
              {
                v3 = v190;
              }

LABEL_152:
              v164 = v158;
              v165._object = (v187 | 0x8000000000000000);
              v166._countAndFlagsBits = 0x206F542065766F4DLL;
              v166._object = 0xEC0000007473694CLL;
              v165._countAndFlagsBits = 0xD00000000000005DLL;
              TTRLocalizedString(_:comment:)(v166, v165);
LABEL_155:
              v169 = String._bridgeToObjectiveC()();

              [v158 setAccessibilityLabel:v169];

              goto LABEL_132;
            }

            v170 = v34;
LABEL_158:
            sub_1002F6104(v170, v39);
            goto LABEL_159;
          }
        }

        else if (!v96)
        {
          goto LABEL_99;
        }

        break;
      }

      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_99;
    }

LABEL_76:
    sub_1002F4620();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_183;
    }

    goto LABEL_77;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002F40A8@<X0>(uint64_t a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = sub_10037BD64();
    if (result)
    {
      v4 = result;
      *(a1 + 24) = &type metadata for TTRIRemindersListUIToolbarUpdater;
      *(a1 + 32) = &off_10071F0F8;
      result = swift_unknownObjectRelease();
      *a1 = v4;
    }

    else
    {
      *(a1 + 24) = &type metadata for TTRIRemindersListViewControllerToolbarUpdater;
      *(a1 + 32) = &off_10071F110;
      *a1 = v3;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_1002F4138()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = sub_1002F4978(v0);
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1002F4194(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002F4208(a3, a4);
  }

  return result;
}

void sub_1002F4208(uint64_t a1, char a2)
{
  v3 = *(v2 + 56);
  if ((~v3 & 0xFFFFFEFE) == 0)
  {
    return;
  }

  if (v3 < 0)
  {
    v4 = *(v2 + 48);
    v6 = a1;
    v7 = a2;
    sub_1002F60E8(v4, *(v2 + 56));
    a1 = v6;
    a2 = v7;
    v5 = v4[2];
    if (!v5)
    {
LABEL_62:

      return;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    v5 = _swiftEmptyArrayStorage[2];
    if (!v5)
    {
      goto LABEL_62;
    }
  }

  v8 = a1 == 7 && a2 == 2;
  v9 = a1 == 6 && a2 == 2;
  v10 = a1 == 5 && a2 == 2;
  v11 = a1 == 4 && a2 == 2;
  v12 = a1 == 3 && a2 == 2;
  v13 = a1 == 2 && a2 == 2;
  v14 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 2;
  }

  v16 = v4 + 42;
  v17 = 1;
  while (1)
  {
    v18 = *(v16 - 10);
    v19 = *(v16 - 2);
    if (*(v16 - 2))
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_33;
    }

LABEL_34:
    v16 += 16;
    if (!--v5)
    {
      goto LABEL_62;
    }
  }

  if (v19 != 1)
  {
    if (v18 > 3)
    {
      if (v18 > 5)
      {
        if (v18 == 6)
        {
          if (v9)
          {
            v17 = 6;
            goto LABEL_66;
          }
        }

        else if (v8)
        {
          v17 = 7;
          goto LABEL_66;
        }
      }

      else if (v18 == 4)
      {
        if (v11)
        {
          v17 = 4;
          goto LABEL_66;
        }
      }

      else if (v10)
      {
        v17 = 5;
        goto LABEL_66;
      }
    }

    else if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v13)
        {
          v17 = 2;
          goto LABEL_66;
        }
      }

      else if (v12)
      {
        v17 = 3;
        goto LABEL_66;
      }
    }

    else if (v18)
    {
      if (v14)
      {
        goto LABEL_66;
      }
    }

    else if (v15)
    {
      v17 = 0;
      goto LABEL_66;
    }

    goto LABEL_34;
  }

  if (a2 != 1)
  {
    goto LABEL_34;
  }

LABEL_33:
  if (v18 != a1)
  {
    goto LABEL_34;
  }

  v17 = a1;
LABEL_66:
  v20 = *(v16 - 1);
  v27 = *v16;

  v21 = swift_beginAccess();
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);

  sub_100058000(&qword_10077B350);
  sub_100003540(0, &qword_10076B800);
  sub_1002F6B48();
  Sequence.firstMap<A>(_:)();

  if (v28)
  {
    if (v20)
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 | v19;
    if (v27)
    {
      v25 = 0x10000;
    }

    else
    {
      v25 = 0;
    }

    v26 = v28;
    sub_1002F5A7C(v17, v24 | v25, v26);
  }
}

id sub_1002F45C4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = sub_1002F50D8();
    v4 = *(v0 + 88);
    *(v0 + 88) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1002F4620()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = sub_1002F4A90();
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1002F467C(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 0)
  {
    return 0;
  }

  if (a1 > 3)
  {
    if (a1 != 4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a1 <= 1 && a1)
  {
    return static TTRCommonAsset.Image.moveToListIcon.getter();
  }

LABEL_11:
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  return v4;
}

uint64_t sub_1002F48F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5 < 0)
  {
    if (v7 < 0)
    {
      v8 = sub_1001254F0(v4, v6) & (v7 ^ v5 ^ 1) & (((v7 & 0x100) == 0) ^ ((v5 & 0x100) >> 8));
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = v6 ^ v4 ^ 1;
    if (v7 < 0)
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8 & 1;
}

id sub_1002F4978(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  v4 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v3 style:0 target:a1 action:"toolbarFileGroceryRadar:"];
  v5 = v4;
  v6._object = 0x80000001006808C0;
  v7._countAndFlagsBits = 0xD000000000000068;
  v7._object = 0x80000001006808F0;
  v6._countAndFlagsBits = 0xD00000000000002BLL;
  TTRLocalizedString(_:comment:)(v6, v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 setAccessibilityLabel:v8];

  return v5;
}

id sub_1002F4A90()
{
  v0 = static TTRCommonAsset.Image.actionMenuIcon.getter();
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v0 style:0 target:0 action:0];
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_1002F6A88;
  v9[5] = v2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10010CA7C;
  v9[3] = &unk_10071EFE0;
  v3 = _Block_copy(v9);

  [v1 _setSecondaryActionsProvider:v3];
  _Block_release(v3);
  v4 = v1;
  v5._countAndFlagsBits = 0x7463412065726F4DLL;
  v5._object = 0xEC000000736E6F69;
  v6._object = 0x8000000100680A20;
  v6._countAndFlagsBits = 0xD000000000000030;
  TTRLocalizedString(_:comment:)(v5, v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityLabel:v7];

  return v4;
}

Class sub_1002F4C18()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  v8 = Strong;
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 160);
  v11 = v6;
  v12 = v10(0, ObjectType, v7);

  v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  (*(v2 + 16))(v4, v8 + v13, v1);
  LOBYTE(v13) = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
  (*(v2 + 8))(v4, v1);
  v46 = v8;
  v14 = *(v8 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v15 = *(v8 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v8 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v14);
  v16 = (*(v15 + 432))(v12, v13 & 1, v14, v15);
  v45 = v17;
  v44 = v18;

  v19 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  v20 = *(v16 + 16);
  if (v20)
  {
    v47 = "$_moveSectionButton";

    v43[1] = v16;
    v21 = (v16 + 42);
    do
    {
      if (*(v21 - 1) == 1)
      {
        v26 = *(v21 - 10);
        v27 = *v21;
        v28 = *(v21 - 2);
        v50 = sub_100003540(0, &qword_10076BA60);
        if (v27)
        {
          v29 = 0x10000;
        }

        else
        {
          v29 = 0;
        }

        v51 = v29 | v51 & 0xFF000000 | v28 | 0x100;
        sub_1002F56AC(v26, v51);
        v52 = v29 | v52 & 0xFF000000 | v28 | 0x100;
        sub_1002F467C(v26, v52);
        v30 = swift_allocObject();
        swift_weakInit();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = v26;
        *(v31 + 32) = v28;
        *(v31 + 33) = 1;
        *(v31 + 34) = v27;
        v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v33 = v32;
        if (v28 && (v28 == 1 || v26 != 1))
        {
          v34 = v48 & 0xFF000000 | v28 | v29 | 0x100;
          v35 = v32;
          v48 = v34;
          sub_1002F56AC(v26, v34);
        }

        else
        {
          v22 = v32;
          v23._object = (v47 | 0x8000000000000000);
          v24._countAndFlagsBits = 0x206F542065766F4DLL;
          v24._object = 0xEC0000007473694CLL;
          v23._countAndFlagsBits = 0xD00000000000005DLL;
          TTRLocalizedString(_:comment:)(v24, v23);
        }

        v25 = String._bridgeToObjectiveC()();

        [v33 setAccessibilityLabel:v25];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = v53;
      }

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  v36 = static TTRLocalizableStrings.Common.remindersCountText(withCount:isForGroceries:)();
  v38 = v37;

  sub_100003540(0, &unk_10076B890);
  v39._countAndFlagsBits = v36;
  v39._object = v38;
  v54.value.super.isa = 0;
  v54.is_nil = 0;
  v40.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v54, 0, 0xFFFFFFFFFFFFFFFFLL, v19, v42).super.super.isa;
  swift_unknownObjectRelease();
  return v40.super.super.isa;
}

id sub_1002F50D8()
{
  v0 = static TTRCommonAsset.Image.moveToSectionIcon.getter();
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v0 style:0 target:0 action:0];

  [v1 setEnabled:0];
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_1002F6994;
  v9[5] = v2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10010CA7C;
  v9[3] = &unk_10071EFB8;
  v3 = _Block_copy(v9);

  [v1 _setSecondaryActionsProvider:v3];
  _Block_release(v3);
  v4 = v1;
  v5._countAndFlagsBits = 0x6365532065766F4DLL;
  v5._object = 0xED0000736E6F6974;
  v6._object = 0x8000000100680A20;
  v6._countAndFlagsBits = 0xD000000000000030;
  TTRLocalizedString(_:comment:)(v5, v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityLabel:v7];

  return v4;
}

uint64_t sub_1002F5278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v5 = a4();

  return v5;
}

uint64_t sub_1002F52E8()
{
  v0 = sub_100058000(&qword_10077B348);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams();
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - v12;
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = v6;
    v35 = result;
    v36 = v10;
    v17 = *(result + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v18 = *(result + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v20 = v15;
    v21 = v3;
    v22 = v2;
    v23 = *(v18 + 160);
    v24 = v17;
    v25 = v23(0, ObjectType, v18);

    v27 = *(v35 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
    v26 = *(v35 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
    sub_10000C36C((v35 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v27);
    (*(v26 + 440))(v25, v27, v26);
    swift_unknownObjectRelease();
    v28 = v36;

    sub_1002F692C(v13, v20, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams);
    sub_1002F69C4(v20, v28);
    v29 = *(v4 + 48);
    v30 = 1;
    if (v29(v28, 1, v21) != 1)
    {
      sub_1002F692C(v28, v22, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      v30 = 0;
    }

    (*(v4 + 56))(v22, v30, 1, v21);
    if (v29(v22, 1, v21) == 1)
    {
      sub_1002F6A28(v20, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams);
      sub_1000079B4(v22, &qword_10077B348);
      return 0;
    }

    else
    {
      v31 = v34;
      sub_1002F692C(v22, v34, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      v32 = sub_100553C24(v31);
      sub_1002F6A28(v31, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      sub_1002F6A28(v20, type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams);
      return v32;
    }
  }

  return result;
}

uint64_t sub_1002F56AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return static TTRLocalizableStrings.Toolbar.moveItemsString(withCount:)();
  }

  if (a2 == 1)
  {
    return static TTRLocalizableStrings.Toolbar.deleteItemsString(withCount:)();
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = 0xE26F542065766F4DLL;
        v6 = 0x8000000100680A20;
        v7 = 0xAA0000000000A680;
      }

      else
      {
        v4 = 0x6574656C6544;
        v6 = 0x8000000100680A20;
        v7 = 0xE600000000000000;
      }
    }

    else
    {
      v4 = 0x2065754420746553;
      v7 = 0xEC00000065746144;
      v6 = 0x8000000100680A20;
    }

    v5 = 0xD000000000000030;
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      if ((a2 & 0x10000) != 0)
      {
        v9._countAndFlagsBits = 0xD000000000000013;
        v9._object = 0x80000001006809A0;
        v10._countAndFlagsBits = 1734437958;
        v10._object = 0xE400000000000000;
        return TTRLocalizedString(_:comment:)(v10, v9)._countAndFlagsBits;
      }

      v8 = "Assign button in menu";
      v5 = 0xD000000000000015;
      v4 = 0x67616C666E55;
    }

    else
    {
      v8 = "sible in internal build.";
      v5 = 0xD000000000000015;
      v4 = 0x6E6769737341;
    }

    v6 = v8 | 0x8000000000000000;
    v7 = 0xE600000000000000;
  }

  else if ((a1 - 3) >= 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x67615420646441;
    v6 = 0x80000001006809C0;
    v7 = 0xE700000000000000;
  }

  else
  {
    if ((a2 & 0x10000) != 0)
    {
      v2 = "ion Mark as Incomplete";
      v3 = "Incomplete button in menu";
      v4 = 0xD000000000000011;
      v5 = 0xD000000000000017;
    }

    else
    {
      v2 = "Reminders List Set Custom Tags";
      v3 = "Add Tag button in menu";
      v4 = 0xD000000000000012;
      v5 = 0xD000000000000019;
    }

    v7 = v2 | 0x8000000000000000;
    v6 = v3 | 0x8000000000000000;
  }

  return TTRLocalizedString(_:comment:)(*&v4, *&v5)._countAndFlagsBits;
}

void sub_1002F5884(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_1002F4620();
    sub_1002F5A7C(a3, a4 & 0x101FF, v6);
  }
}

void *sub_1002F5908(uint64_t a1, char a2, void *a3, uint64_t a4, char a5)
{
  if (a2)
  {
    if (a2 != 1)
    {
      if (a1 > 3)
      {
        if (a1 > 5)
        {
          if (a1 == 6)
          {
            result = 0;
            if (a5 == 2 && a4 == 6)
            {
              goto LABEL_7;
            }
          }

          else
          {
            result = 0;
            if (a5 == 2 && a4 == 7)
            {
              goto LABEL_7;
            }
          }
        }

        else if (a1 == 4)
        {
          result = 0;
          if (a5 == 2 && a4 == 4)
          {
            goto LABEL_7;
          }
        }

        else
        {
          result = 0;
          if (a5 == 2 && a4 == 5)
          {
            goto LABEL_7;
          }
        }
      }

      else if (a1 > 1)
      {
        if (a1 == 2)
        {
          result = 0;
          if (a5 == 2 && a4 == 2)
          {
            goto LABEL_7;
          }
        }

        else
        {
          result = 0;
          if (a5 == 2 && a4 == 3)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        result = 0;
        if (a1)
        {
          if (a5 == 2 && a4 == 1)
          {
            goto LABEL_7;
          }
        }

        else if (a5 == 2 && !a4)
        {
          goto LABEL_7;
        }
      }

      return result;
    }

    result = 0;
    if (a5 != 1)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (a5)
    {
      return result;
    }
  }

  if (a1 == a4)
  {
LABEL_7:
    v8 = a3;
    return a3;
  }

  return result;
}

void sub_1002F5A7C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F40A8(v30);
  v10 = v31;
  if (v31)
  {
    v11 = v32;
    sub_10000C36C(v30, v31);
    v12 = (*(v11 + 8))(v10, v11);
    v29 = a3;
    __chkstk_darwin(v12);
    v28[-2] = &v29;
    v13 = sub_10000C108(sub_1000386DC, &v28[-4], v12);

    sub_100004758(v30);
    if (v13)
    {
      static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
        v16 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
        v17 = Strong;
        ObjectType = swift_getObjectType();
        v28[0] = a1;
        v19 = *(v16 + 160);
        v20 = v15;
        v21 = v19(1, ObjectType, v16);

        v22 = *(v17 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v23 = *(v17 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
        sub_10000C36C((v17 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v22);
        (*(v23 + 448))(v21, v28[0], a2 & 0x101FF, v9, v22, v23);
        swift_unknownObjectRelease();
      }

      (*(v7 + 8))(v9, v6);
      return;
    }
  }

  else
  {
    sub_1000079B4(v30, &qword_10077B340);
  }

  if (qword_100767188 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_10077B248);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "TTRIRemindersListToolbarController#lowLevelPerformAction: unable to determine popoverAnchor", v27, 2u);
  }
}

void sub_1002F5DB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
    v3 = Strong;
    sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
    sub_100207888(0, v1, v2);
    LODWORD(v1) = UIAccessibilityLayoutChangedNotification;
    v4 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v5 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    v8 = v4;
    argument = v7(ObjectType, v5);

    UIAccessibilityPostNotification(v1, argument);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002F5EE0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
    v2 = v1[3];
    v3 = v1[4];
    sub_10000C36C(v1, v2);
    (*(v3 + 920))(v4, v2, v3);
    if (v5)
    {
      sub_10000C36C(v4, v5);
      sub_100537BD4();
      swift_unknownObjectRelease();
      return sub_100004758(v4);
    }

    else
    {
      swift_unknownObjectRelease();
      return sub_1000079B4(v4, &qword_10077B360);
    }
  }

  return result;
}

uint64_t sub_1002F5FBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {

    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  a4(v6);

  return sub_1000079B4(v6, &qword_10076AE40);
}

uint64_t sub_1002F6058()
{
  sub_10003B788(v0 + 16);

  sub_1002F690C(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1002F60E8(uint64_t a1, __int16 a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t sub_1002F6104(uint64_t a1, __int16 a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t assignWithCopy for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1002F60E8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1002F6104(v5, v6);
  return a1;
}

uint64_t initializeWithTake for TTRIRemindersListToolbarEditingConfiguration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t assignWithTake for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1002F6104(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 10))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 8) & 0xFE | (*(a1 + 8) >> 15) | (*(a1 + 8) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListToolbarController.ToolbarConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1002F62CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListToolbarEditingConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for TTRIRemindersListToolbarEditingConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListToolbarEditingConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListToolbarEditingConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002F6450()
{
  result = qword_10077B338;
  if (!qword_10077B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B338);
  }

  return result;
}

void *sub_1002F64C8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  sub_100003540(0, &qword_10076B800);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1002F6548(uint64_t a1, char a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *v5;
  sub_100003540(0, &qword_10076B800);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 *a5];
}

uint64_t sub_1002F65D4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        if (a4 != 2 || a3 != 6)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 7)
      {
        return 0;
      }
    }

    else if (a1 == 4)
    {
      if (a4 != 2 || a3 != 4)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3 != 5)
    {
      return 0;
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (a4 != 2 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3 != 3)
    {
      return 0;
    }
  }

  else if (a1)
  {
    if (a4 != 2 || a3 != 1)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3)
  {
    return 0;
  }

  return 1;
}

uint64_t type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams()
{
  result = qword_10077B3D8;
  if (!qword_10077B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F6730(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = a4;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1004A1B54(0, v7, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 2 * v10;
    v12 = (a1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = _swiftEmptyArrayStorage[3];
      v16 = v10 + 1;
      if (v10 >= v15 >> 1)
      {
        sub_1004A1B54((v15 > 1), v10 + 1, 1);
      }

      v12 += 16;
      _swiftEmptyArrayStorage[2] = v16;
      v17 = &_swiftEmptyArrayStorage[v11];
      v17[4] = v13;
      *(v17 + 40) = v14;
      v11 += 2;
      v10 = v16;
      --v7;
    }

    while (v7);
    v4 = a4;
    v6 = a2;
  }

  v18 = *(a3 + 16);
  if (v18)
  {
    sub_1004A1B54(0, v18, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 2 * v19;
    v21 = (a3 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = _swiftEmptyArrayStorage[3];
      v25 = v19 + 1;
      if (v19 >= v24 >> 1)
      {
        sub_1004A1B54((v24 > 1), v19 + 1, 1);
      }

      v21 += 16;
      _swiftEmptyArrayStorage[2] = v25;
      v26 = &_swiftEmptyArrayStorage[v20];
      v26[4] = v22;
      *(v26 + 40) = v23;
      v20 += 2;
      v19 = v25;
      --v18;
    }

    while (v18);
  }

  v27 = sub_1001265AC(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  return v27 & ~(v6 ^ v4) & 1;
}

uint64_t sub_1002F68F8(uint64_t a1, int a2)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return sub_1002F60E8(a1, a2);
  }

  return a1;
}

uint64_t sub_1002F690C(uint64_t a1, int a2)
{
  if ((~a2 & 0xFEFE) != 0)
  {
    return sub_1002F6104(a1, a2);
  }

  return a1;
}

uint64_t sub_1002F692C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F69C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListToolbarBatchMoveToSectionParams();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002F6AB8(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 32);
  if (*(v1 + 34))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  sub_1002F5884(a1, *(v1 + 16), *(v1 + 24), v3 | v4);
}

uint64_t sub_1002F6AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_1002F6B48()
{
  result = qword_10077B358;
  if (!qword_10077B358)
  {
    sub_10005D20C(&qword_10077B350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B358);
  }

  return result;
}

char *sub_1002F6BCC(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v8 = *(v7 - 1);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v12;
    v13 = *(a2 + 2);
    v14 = a2[24];

    sub_100263EE8(v13, v14);
    *(a1 + 2) = v13;
    a1[24] = v14;
    *(a1 + 25) = *(a2 + 25);
    v15 = v7[9];
    v16 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
    *&a1[v7[10]] = *&a2[v7[10]];
    v17 = v7[11];
    v18 = &a1[v17];
    v19 = &a2[v17];
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    v21 = v7[12];
    v22 = &a1[v21];
    v23 = &a2[v21];
    v24 = *&a2[v21];

    if (v24)
    {
      v25 = *(v23 + 1);
      *v22 = v24;
      *(v22 + 1) = v25;
    }

    else
    {
      *v22 = *v23;
    }

    v26 = v7[13];
    v27 = &a1[v26];
    v28 = &a2[v26];
    if (*v28)
    {
      v29 = *(v28 + 1);
      *v27 = *v28;
      *(v27 + 1) = v29;
    }

    else
    {
      *v27 = *v28;
    }

    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1002F6E14(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  result = (*(*(v2 - 1) + 48))(a1, 1, v2);
  if (!result)
  {

    sub_100263FE4(*(a1 + 16), *(a1 + 24));
    v4 = v2[9];
    v5 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);

    if (*(a1 + v2[12]))
    {
    }

    if (*(a1 + v2[13]))
    {
    }
  }

  return result;
}

void *sub_1002F6F34(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2[2];
    v12 = *(a2 + 24);

    sub_100263EE8(v11, v12);
    a1[2] = v11;
    *(a1 + 24) = v12;
    *(a1 + 25) = *(a2 + 25);
    v13 = v6[9];
    v14 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
    *(a1 + v6[10]) = *(a2 + v6[10]);
    v15 = v6[11];
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
    v19 = v6[12];
    v20 = (a1 + v19);
    v21 = a2 + v19;
    v22 = *(a2 + v19);

    if (v22)
    {
      v23 = *(v21 + 1);
      *v20 = v22;
      v20[1] = v23;
    }

    else
    {
      *v20 = *v21;
    }

    v24 = v6[13];
    v25 = (a1 + v24);
    v26 = (a2 + v24);
    if (*v26)
    {
      v27 = v26[1];
      *v25 = *v26;
      v25[1] = v27;
    }

    else
    {
      *v25 = *v26;
    }

    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

char *sub_1002F7140(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_1002F6A28(a1, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      goto LABEL_7;
    }

    *a1 = *a2;

    *(a1 + 1) = *(a2 + 1);

    v26 = *(a2 + 2);
    v27 = a2[24];
    sub_100263EE8(v26, v27);
    v28 = *(a1 + 2);
    *(a1 + 2) = v26;
    v29 = a1[24];
    a1[24] = v27;
    sub_100263FE4(v28, v29);
    a1[25] = a2[25];
    a1[26] = a2[26];
    v30 = v6[9];
    v31 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v31 - 8) + 24))(&a1[v30], &a2[v30], v31);
    *&a1[v6[10]] = *&a2[v6[10]];
    v32 = v6[11];
    v33 = &a1[v32];
    v34 = &a2[v32];
    v35 = *(v34 + 1);
    *v33 = *v34;
    *(v33 + 1) = v35;

    v36 = v6[12];
    v37 = &a1[v36];
    v38 = &a2[v36];
    v39 = *&a1[v36];
    v40 = *&a2[v36];
    if (v39)
    {
      if (v40)
      {
        v41 = *(v38 + 1);
        *v37 = v40;
        *(v37 + 1) = v41;

        goto LABEL_23;
      }
    }

    else if (v40)
    {
      v46 = *(v38 + 1);
      *v37 = v40;
      *(v37 + 1) = v46;

      goto LABEL_23;
    }

    *v37 = *v38;
LABEL_23:
    v47 = v6[13];
    v48 = &a1[v47];
    v49 = &a2[v47];
    v50 = *&a1[v47];
    v51 = *v49;
    if (v50)
    {
      if (v51)
      {
        v52 = *(v49 + 1);
        *v48 = v51;
        *(v48 + 1) = v52;

        return a1;
      }
    }

    else if (v51)
    {
      v53 = *(v49 + 1);
      *v48 = v51;
      *(v48 + 1) = v53;

      return a1;
    }

    *v48 = *v49;
    return a1;
  }

  if (!v10)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v11 = *(a2 + 2);
    v12 = a2[24];

    sub_100263EE8(v11, v12);
    *(a1 + 2) = v11;
    a1[24] = v12;
    a1[25] = a2[25];
    a1[26] = a2[26];
    v13 = v6[9];
    v14 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    *&a1[v6[10]] = *&a2[v6[10]];
    v15 = v6[11];
    v16 = &a1[v15];
    v17 = &a2[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    v19 = v6[12];
    v20 = &a1[v19];
    v21 = &a2[v19];
    v22 = *&a2[v19];

    if (v22)
    {
      v23 = *(v21 + 1);
      *v20 = v22;
      *(v20 + 1) = v23;
    }

    else
    {
      *v20 = *v21;
    }

    v42 = v6[13];
    v43 = &a1[v42];
    v44 = &a2[v42];
    if (*v44)
    {
      v45 = *(v44 + 1);
      *v43 = *v44;
      *(v43 + 1) = v45;
    }

    else
    {
      *v43 = *v44;
    }

    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

_OWORD *sub_1002F7530(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 25) = *(a2 + 25);
    v10 = v6[9];
    v11 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
    *(a1 + v6[10]) = *(a2 + v6[10]);
    *(a1 + v6[11]) = *(a2 + v6[11]);
    *(a1 + v6[12]) = *(a2 + v6[12]);
    *(a1 + v6[13]) = *(a2 + v6[13]);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

char *sub_1002F76CC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (v10)
    {
      sub_1002F6A28(a1, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);
      goto LABEL_7;
    }

    *a1 = *a2;

    *(a1 + 1) = *(a2 + 1);

    v15 = a2[24];
    v16 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    v17 = a1[24];
    a1[24] = v15;
    sub_100263FE4(v16, v17);
    a1[25] = a2[25];
    a1[26] = a2[26];
    v18 = v6[9];
    v19 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v19 - 8) + 40))(&a1[v18], &a2[v18], v19);
    *&a1[v6[10]] = *&a2[v6[10]];
    *&a1[v6[11]] = *&a2[v6[11]];

    v20 = v6[12];
    v21 = &a1[v20];
    v22 = &a2[v20];
    v23 = *&a1[v20];
    v24 = *&a2[v20];
    if (v23)
    {
      if (v24)
      {
        v25 = *(v22 + 1);
        *v21 = v24;
        *(v21 + 1) = v25;

        goto LABEL_17;
      }
    }

    else if (v24)
    {
      v26 = *(v22 + 1);
      *v21 = v24;
      *(v21 + 1) = v26;
      goto LABEL_17;
    }

    *v21 = *v22;
LABEL_17:
    v27 = v6[13];
    v28 = &a1[v27];
    v29 = &a2[v27];
    v30 = *&a1[v27];
    v31 = *v29;
    if (v30)
    {
      if (v31)
      {
        v32 = *(v29 + 1);
        *v28 = v31;
        *(v28 + 1) = v32;

        return a1;
      }
    }

    else if (v31)
    {
      v33 = *(v29 + 1);
      *v28 = v31;
      *(v28 + 1) = v33;
      return a1;
    }

    *v28 = *v29;
    return a1;
  }

  if (!v10)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    a1[24] = a2[24];
    *(a1 + 25) = *(a2 + 25);
    v11 = v6[9];
    v12 = type metadata accessor for TTRRemindersListLayout();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    *&a1[v6[10]] = *&a2[v6[10]];
    *&a1[v6[11]] = *&a2[v6[11]];
    *&a1[v6[12]] = *&a2[v6[12]];
    *&a1[v6[13]] = *&a2[v6[13]];
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }

LABEL_7:
  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_1002F7A30(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_1002F7A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_1002F7B08()
{
  result = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_1002F7B80()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1002F7C1C(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 2) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    v11 = v3 + v5;
    *v11 = *(a2 + v5);
    v11[1] = *(a2 + v5 + 1);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t sub_1002F7D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t sub_1002F7F08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1002F807C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1002F82D8(uint64_t a1)
{
  v3 = sub_100058000(&qword_100771588);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel;
  swift_beginAccess();
  sub_1002F8814(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100186D64(v1 + v6, v5);
    sub_100186640(v5);
    swift_unknownObjectRelease();
    sub_100186DD4(a1);
    v7 = v5;
  }

  else
  {
    v7 = a1;
  }

  return sub_100186DD4(v7);
}

uint64_t sub_1002F83D4()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100186DD4(v0 + OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellAutoCompletePresenter()
{
  result = qword_10077B490;
  if (!qword_10077B490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F849C()
{
  sub_1002F8538();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002F8538()
{
  if (!qword_10077B4A0)
  {
    type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077B4A0);
    }
  }
}

uint64_t sub_1002F8590()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack);
    if (v1)
    {
      v2 = v1;
      v3 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)();
    }

    else
    {
      v3 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1002F8614()
{
  v0 = sub_100058000(&qword_10078A3B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_titleModule;
    swift_beginAccess();
    if (!(*(v1 + 48))(v5 + v6, 1, v0))
    {
      (*(v1 + 16))(v3, v5 + v6, v0);
      TTRRemindersListInCellModule.interface.getter();
      (*(v1 + 8))(v3, v0);
      swift_getObjectType();
      dispatch thunk of TTRIReminderCellTitleModuleInterface.requestApply(textEditingSuggestion:)();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1002F8794(uint64_t a1)
{
  result = sub_1002F87BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002F87BC()
{
  result = qword_10077B530;
  if (!qword_10077B530)
  {
    type metadata accessor for TTRIReminderCellAutoCompletePresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077B530);
  }

  return result;
}

uint64_t sub_1002F8814(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771588);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F8884@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2[5];
  v4 = type metadata accessor for TTRReminderListCompletionBehavior.AlertContents();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = enum case for TTRReminderListCompletionBehavior.disallowed(_:);
  v6 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v6 - 8) + 104))(&a1[v3], v5, v6);
  *a1 = 0;
  a1[v2[6]] = 1;
  a1[v2[7]] = 1;
  a1[v2[8]] = 1;
  a1[v2[9]] = 1;
  a1[v2[10]] = 0;
  a1[v2[11]] = 1;
  a1[v2[12]] = 0;
  a1[v2[13]] = 0;
  return result;
}

uint64_t sub_1002F899C()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_1002F8AF8()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.siriFoundInApps(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_1002F8C08()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.siriFoundInApps(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002F8D18()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_1002F8E6C()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100070538();
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50);
  sub_100004758(v30);
  return v25;
}

uint64_t sub_1002F9294@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v1 - 8);
  v41 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v3 - 8);
  v40 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v5 - 8);
  v39 = v32 - v6;
  v7 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v7 - 8);
  v36 = v32 - v8;
  v34 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v43 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v15 - 8);
  v17 = v32 - v16;
  v18 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v18 - 8);
  v20 = v32 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  v26 = *(v25 + 56);
  v37 = v20;
  v26(v20, 0, 1, v24);
  v32[1] = REMSmartListType.title.getter();
  v35 = static TTRListColors.SmartList.siriFoundInApps.getter();
  v27 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v28 = *(*(v27 - 8) + 56);
  v38 = v17;
  v28(v17, 1, 1, v27);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v33 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v11);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  (*(v9 + 104))(v43, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v34);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v44, &qword_1007693C0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  v29 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
  v30 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_1002F9930()
{
  sub_10056FD38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowSiriFoundInAppsViewModelSource()
{
  result = qword_10077B560;
  if (!qword_10077B560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002F9A14()
{
  result = qword_10077BAB8;
  if (!qword_10077BAB8)
  {
    type metadata accessor for TTRShowSiriFoundInAppsViewModelSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077BAB8);
  }

  return result;
}

uint64_t sub_1002F9A6C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v48 = a1;
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v50 = &v41 - v3;
  v4 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v4 - 8);
  v46 = &v41 - v5;
  v49 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v47 = *(v49 - 8);
  v54 = v47;
  __chkstk_darwin(v49);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v44 = v14;
  v45 = *(v14 - 8);
  v15 = v45;
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v52 = &v41 - v19;
  v43 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F9294(v21);
  v22 = enum case for TTRRemindersListViewModel.SectionID.NamedID.siriFoundInAppsSection(_:);
  v23 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v23 - 8) + 104))(v13, v22, v23);
  (*(v11 + 104))(v13, enum case for TTRRemindersListViewModel.SectionID.named(_:), v10);
  v24 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = v52;
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  (*(v15 + 16))(v17, v25, v14);
  REMRemindersListDataView.FlatModel.reminders.getter();
  v26 = v53;
  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  v27 = v42;
  v28 = v46;
  v29 = v43;
  (*(v42 + 16))(v46, v21, v43);
  v30 = v27;
  (*(v27 + 56))(v28, 0, 1, v29);
  sub_100058000(&qword_100770900);
  v31 = v54;
  v32 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10062D400;
  v34 = v49;
  (*(v31 + 16))(v33 + v32, v26, v49);
  v35 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v36 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v37 = type metadata accessor for TTRRemindersListViewModel.Item();
  v38 = v50;
  (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  v57[3] = v35;
  v57[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v57[0] = v36;
  sub_10000B0D8(v57, v56);
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  sub_100005FD0(v56, v39 + 24);
  *(v39 + 64) = v55;

  sub_100586238(1, v28, sub_100070528, v39, v51, 0, v38);

  sub_1000079B4(v38, &qword_100772140);
  sub_1000079B4(v28, &unk_10078A380);
  (*(v54 + 8))(v53, v34);
  (*(v45 + 8))(v52, v44);
  (*(v30 + 8))(v21, v29);

  return sub_100004758(v57);
}

uint64_t sub_1002FA140()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077BAC0);
  v1 = sub_100003E30(v0, qword_10077BAC0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FA208()
{
  v0 = type metadata accessor for TTRListOrCustomSmartList();
  __chkstk_darwin(v0 - 8);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  type metadata accessor for TTRITemplateSavingViewController();
  if ((sub_10037A688() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:
    swift_getObjectType();
    dispatch thunk of TTRTemplateSavingInteractorType.templateName.getter();
    String.validatedListName()();
    goto LABEL_6;
  }

  sub_10037A6EC();
  String.validatedListName()();
  swift_unknownObjectRelease();
LABEL_6:

  swift_getObjectType();
  dispatch thunk of TTRTemplateSavingInteractorType.sourceList.getter();
  dispatch thunk of TTRTemplateSavingInteractorType.templateName.getter();
  dispatch thunk of TTRTemplateSavingInteractorType.templateConfiguration.getter();
  dispatch thunk of TTRTemplateSavingInteractorType.completedReminderCount.getter();
  return TTRTemplateSavingViewModel.init(sourceList:name:templateConfiguration:completedReminderCount:allowsCommit:)();
}

uint64_t sub_1002FA3CC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRITemplateSavingViewController();
    if (sub_10037A688())
    {
      v0 = sub_10037A6EC();
      v2 = v1;
      swift_getObjectType();
      if (v0 == dispatch thunk of TTRTemplateSavingInteractorType.templateName.getter() && v2 == v3)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_unknownObjectRelease();

        if ((v5 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  swift_getObjectType();
  return dispatch thunk of TTRTemplateSavingInteractorType.hasUncommittedChanges.getter() & 1;
}

uint64_t sub_1002FA524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100767190 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_10077BAC0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.renameTemplate.getter();
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();

  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002FB264;
  *(v10 + 24) = v9;
  v14[4] = sub_100068444;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100026440;
  v14[3] = &unk_10071F2C0;
  v11 = _Block_copy(v14);

  [v7 withActionName:v8 block:v11];

  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v13._object = 0x8000000100679110;
    v13._countAndFlagsBits = 0xD000000000000019;
    TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v13);
  }

  return result;
}

uint64_t sub_1002FA774(char a1)
{
  v2 = v1;
  if (qword_100767190 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10077BAC0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.changeTemplate.getter();
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1 & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002FB210;
  *(v8 + 24) = v7;
  v12[4] = sub_100026410;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100026440;
  v12[3] = &unk_10071F248;
  v9 = _Block_copy(v12);

  [v5 withActionName:v6 block:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1002FA994(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767190 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10077BAC0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  if (sub_1002FA3CC())
  {
    v9._countAndFlagsBits = 0xD000000000000033;
    v9._object = 0x8000000100680BB0;
    v10._object = 0x8000000100680BF0;
    v10._countAndFlagsBits = 0xD000000000000026;
    TTRLocalizedString(_:comment:)(v9, v10);
    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() alertControllerWithTitle:0 message:v11 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter();
    v13 = swift_allocObject();
    v28 = a1;
    v14 = v13;
    swift_weakInit();

    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1002FB2C0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001762CC;
    aBlock[3] = &unk_10071F310;
    v16 = _Block_copy(aBlock);

    v17 = objc_opt_self();
    v27 = v4;
    v18 = [v17 actionWithTitle:v15 style:2 handler:v16];
    _Block_release(v16);

    [v12 addAction:v18];
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v17 actionWithTitle:v19 style:1 handler:0];

    [v12 addAction:v20];
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    (*(v5 + 8))(v7, v27);
    sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router), *(v2 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router + 24));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      [Strong presentViewController:v12 animated:1 completion:0];
    }
  }

  else
  {
    sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router + 24));
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v28 = v23;
      v24 = [v23 presentingViewController];
      if (v24)
      {
        v25 = v24;
        [v24 dismissViewControllerAnimated:1 completion:0];
      }

      v26 = v28;
    }
  }
}

uint64_t sub_1002FADE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router, v5);

    sub_10000C36C(v5, v5[3]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong presentingViewController];
      if (v3)
      {
        v4 = v3;
        [v3 dismissViewControllerAnimated:1 completion:0];
      }
    }

    return sub_100004758(v5);
  }

  return result;
}

uint64_t sub_1002FAEAC()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  v1 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
  v2 = type metadata accessor for TTRTemplateSavingViewModel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_100004758(v0 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRITemplateSavingPresenter()
{
  result = qword_10077BB20;
  if (!qword_10077BB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FAFEC()
{
  result = type metadata accessor for TTRTemplateSavingViewModel();
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

void sub_1002FB0B8()
{
  v0._object = 0x8000000100679110;
  v0._countAndFlagsBits = 0xD000000000000019;
  TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

uint64_t sub_1002FB100()
{
  v1 = type metadata accessor for TTRTemplateSavingViewModel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FA208();
  v5 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10037A37C();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002FB2D8(void *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController) transitionCoordinator];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1;
    aBlock[4] = sub_1002FC7E8;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FB78C;
    aBlock[3] = &unk_10071F418;
    v6 = _Block_copy(aBlock);
    v7 = a1;

    [v3 animateAlongsideTransition:0 completion:v6];

    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1002FB4A4(a1);
  }
}

void sub_1002FB448(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1002FB4A4(a3);
  }
}

void sub_1002FB4A4(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIRootViewEmptyViewController()) init];
  }

  sub_100058000(&qword_10076B780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D420;
  *(v5 + 32) = v4;
  v6 = *(v2 + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
  v7 = a1;
  v8 = v4;
  v9 = [v6 viewControllers];
  sub_100003540(0, &qword_10076AD28);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v9) = sub_100126778(v10, v5);

  if (v9)
  {
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 setViewControllers:isa];

    v12 = [v6 viewControllers];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v12) = sub_100126778(v13, v5);

    if ((v12 & 1) == 0)
    {
      if (qword_100767198 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100003E30(v14, qword_10077BBE0);
      v15 = v8;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Failed to set detailViewController because there's an existing transition or presentation occuring {detailViewController: %@}", v18, 0xCu);
        sub_1000079B4(v19, &unk_10076DF80);
      }
    }
  }

  sub_1002FB7EC(1);
  v21 = sub_100341598();
  sub_10001A06C(v21);
}

uint64_t sub_1002FB78C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1002FB7EC(char a1)
{
  if ([v1 isCollapsed] && (v3 = *&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController], v4 = objc_msgSend(v3, "viewControllers"), sub_100003540(0, &qword_10076AD28), v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v4, v6 = *&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController], aBlock[0] = v6, __chkstk_darwin(v7), v16[2] = aBlock, LOBYTE(v4) = sub_10000C108(sub_10001D5BC, v16, v5), , (v4 & 1) != 0))
  {
    v8 = [v3 topViewController];
    if (!v8 || (v9 = v8, v8, v6 != v9))
    {
    }
  }

  else if (a1)
  {
    [v1 showDetailViewController:*&v1[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController] sender:v1];
  }

  else
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1002FC7C8;
    *(v12 + 24) = v11;
    aBlock[4] = sub_100026410;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10071F3A0;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    [v10 performWithoutAnimation:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double sub_1002FBB48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_10000C36C((*&v3[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_presenter] + 48), *(*&v3[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_presenter] + 72));
  sub_1003969FC(a1, a2, &v20);
  if (*(&v21 + 1))
  {
    sub_100007DD8(&v20, a3);
  }

  else
  {
    sub_1000079B4(&v20, &qword_10076AE40);
    sub_1001AAABC(a2, &v20);
    v10 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v11 = sub_10000C36C(&v20, *(&v21 + 1));
      v12 = *(v10 - 8);
      v13 = __chkstk_darwin(v11);
      v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v15, v10);
      sub_100004758(&v20);
    }

    else
    {
      v16 = 0;
    }

    v19.receiver = v4;
    v19.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v19, "targetForAction:withSender:", a1, v16);
    swift_unknownObjectRelease();
    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    result = *&v20;
    v18 = v21;
    *a3 = v20;
    a3[1] = v18;
  }

  return result;
}

uint64_t sub_1002FBEDC(void (*a1)(uint64_t))
{
  sub_100003540(0, &unk_10076BD00);
  v2._object = 0x8000000100680EE0;
  v3._countAndFlagsBits = 1701736270;
  v3._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v3, v2);
  v4 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v4 attributes];
  UIMenuElementAttributes.setDisabled(_:)(1);
  [v4 setAttributes:v8];
  sub_100058000(&qword_10076B780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D420;
  *(v5 + 32) = v4;
  v6 = v4;
  a1(v5);
}

id sub_1002FC234()
{
  v1 = OBJC_IVAR____TtC9Reminders43TTRIRootActivityItemsConfigurationProviding_visibleList;
  if ([*&v0[OBJC_IVAR____TtC9Reminders43TTRIRootActivityItemsConfigurationProviding_visibleList] canBeShared] && (v2 = objc_msgSend(*&v0[v1], "account"), v3 = objc_msgSend(v2, "accountTypeHost"), v2, LODWORD(v2) = objc_msgSend(v3, "isCloudKit"), v3, v2))
  {
    if (qword_100767198 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10077BBE0);
    v5 = v0;
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = [*&v5[v1] displayName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100004060(v12, v14, &v23);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "TTRIRootViewController providing activityItemsConfiguration for list {remList: %s}.", v9, 0xCu);
      sub_100004758(v10);
    }

    v16 = *&v5[v1];
    v17 = _s9Reminders23TTRListSharingUtilitiesC26activityItemsConfiguration3forSo010UIActivityfG0CSo7REMListC_tFZ_0(v16);

    return v17;
  }

  else
  {
    if (qword_100767198 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_10077BBE0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "TTRIRootViewController cannot provide activityItemsConfiguration, list is not shareable.", v22, 2u);
    }

    return 0;
  }
}

uint64_t sub_1002FC56C(void *a1)
{
  v2 = [a1 viewControllerForColumn:2];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = [v4 topViewController]) != 0)
    {
      v11 = v5;
      v6 = v5;
      sub_100003540(0, &qword_10076AD28);
      v7 = v6;
      sub_100058000(&qword_10077BDE8);
      if (swift_dynamicCast())
      {
        sub_100005FD0(v9, v12);
        sub_10000C36C(v12, v12[3]);
        dispatch thunk of TTRIEffectiveNavigationControllerForBarsObserving.effectiveNavigationControllerForBarsDidChange()();

        sub_100004758(v12);
      }

      else
      {

        v10 = 0;
        memset(v9, 0, sizeof(v9));
        sub_1000079B4(v9, &qword_10077BDF0);
      }
    }

    else
    {
    }
  }

  return sub_100010B1C([v1 isCollapsed]);
}

void sub_1002FC7F0()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController) popToRootViewControllerAnimated:*(v0 + 24)];
}

uint64_t sub_1002FC854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_100003540(0, &qword_100775690);
  if (static NSObject.== infix(_:_:)())
  {
    if (v2)
    {
      if (v3)
      {
        sub_100003540(0, &qword_100772610);
        v4 = v3;
        v5 = v2;
        v6 = static NSObject.== infix(_:_:)();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1002FC90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRRectCorners();
  sub_1002FE140();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v8 == v7 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
}

BOOL sub_1002FC9B0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  sub_100003540(0, &qword_100775690);
  v10 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

void sub_1002FCA54(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  v5 = *&v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  if (!v5)
  {
    return;
  }

  v6 = *(v4 + 1);
  if (a1)
  {
    sub_100003540(0, &qword_100775690);
    sub_1002FE2A4(v5, v6);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v6)
    {
      sub_100037C04(v5, 0);
      if (!a2)
      {
        return;
      }

      goto LABEL_9;
    }

    if (a2)
    {
      sub_100003540(0, &qword_100772610);
      v8 = a2;
      v9 = v6;
      v10 = static NSObject.== infix(_:_:)();

      sub_100037C04(v5, v6);
      if (v10)
      {
        return;
      }
    }

    else
    {
LABEL_8:
      sub_100037C04(v5, v6);
    }

LABEL_9:
    v5 = *v4;
    if (!*v4)
    {
      return;
    }

    v6 = *(v4 + 1);
  }

  v11 = v6;
  v12 = v5;
  v19 = [v3 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    if (v6)
    {
      v15 = v11;
      v16 = [v12 _colorBlendedWithColor:v15];
      if (!v16)
      {
        __break(1u);
        return;
      }

      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    v18 = [v17 CGColor];
    [v14 setFillColor:v18];

    v11 = v19;
    v12 = v18;
    v19 = v17;
  }
}

void sub_1002FCC88()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill + 8];
    v3 = v2;
    v4 = v1;
    v11 = [v0 layer];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      if (v2)
      {
        v7 = v3;
        v8 = [v4 _colorBlendedWithColor:v7];
        if (!v8)
        {
          __break(1u);
          return;
        }

        v9 = v8;
      }

      else
      {
        v9 = v4;
      }

      v10 = [v9 CGColor];
      [v6 setFillColor:v10];

      v3 = v11;
      v4 = v10;
      v11 = v9;
    }
  }
}

uint64_t sub_1002FCDE0(uint64_t a1)
{
  v3 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v21[0] = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076C008);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = sub_100058000(&qword_10077BEF0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v13 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_10076C008);
  sub_10000794C(a1, &v12[v14], &qword_10076C008);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1000079B4(v12, &qword_10076C008);
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &qword_10076C008);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_1002FE198(v8);
LABEL_6:
    sub_1000079B4(v12, &qword_10077BEF0);
    return sub_1002FD128();
  }

  v17 = v21[0];
  sub_1002FE1F4(&v12[v14], v21[0]);
  type metadata accessor for TTRRectCorners();
  sub_1002FE140();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v21[2] != v21[1])
  {
    sub_1002FE198(v17);
    sub_1002FE198(v8);
    sub_1000079B4(v12, &qword_10076C008);
    return sub_1002FD128();
  }

  v18 = *(v3 + 20);
  v19 = *&v8[v18];
  v20 = *(v17 + v18);
  sub_1002FE198(v17);
  sub_1002FE198(v8);
  result = sub_1000079B4(v12, &qword_10076C008);
  if (v19 != v20)
  {
    return sub_1002FD128();
  }

  return result;
}

uint64_t sub_1002FD128()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076C008);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
  swift_beginAccess();
  sub_10000794C(&v1[v9], v4, &qword_10076C008);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000079B4(v4, &qword_10076C008);
  }

  sub_1002FE1F4(v4, v8);
  v11 = [v1 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    [v1 bounds];
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    MidX = CGRectGetMidX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MaxX = CGRectGetMaxX(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v21 = CGRectGetMinY(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v38 = CGRectGetMaxX(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    MaxY = CGRectGetMaxY(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    MinX = CGRectGetMinX(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v39 = CGRectGetMaxY(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v42 = CGRectGetMinX(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v41 = CGRectGetMinY(v52);
    v22 = [objc_allocWithZone(UIBezierPath) init];
    [v22 moveToPoint:{MidX, MinY}];
    v23 = TTRRectCorners.cornerMask(layoutDirection:isFlipped:)([v1 effectiveUserInterfaceLayoutDirection], 1);
    v24 = sub_1002FE258(v23);
    v25 = 0.0;
    v26 = 0.0;
    if ((v24 & 2) != 0)
    {
      v26 = *&v8[*(v5 + 20)];
    }

    if (fabs(v26) >= 0.0000000149011612)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v21, v27, v27}];
    if ((v24 & 8) != 0)
    {
      v25 = *&v8[*(v5 + 20)];
    }

    if (fabs(v25) >= 0.0000000149011612)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v38 clockwise:{MaxY, v28, v28}];
    v29 = 0.0;
    v30 = 0.0;
    if ((v24 & 4) != 0)
    {
      v30 = *&v8[*(v5 + 20)];
    }

    if (fabs(v30) >= 0.0000000149011612)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:4 radius:0 corner:MinX clockwise:{v39, v31, v31}];
    if (v24)
    {
      v29 = *&v8[*(v5 + 20)];
    }

    if (fabs(v29) >= 0.0000000149011612)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0.001;
    }

    [v22 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v42 clockwise:{v41, v32, v32}];
    [v22 closePath];
    v33 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_boundsUsedForShapePath];
    *v33 = x;
    v33[1] = y;
    v33[2] = width;
    v33[3] = height;
    *(v33 + 32) = 0;
    v34 = [v22 CGPath];
    [v13 setPath:v34];
    v35 = v11;
    [v13 setShadowPath:v34];
  }

  else
  {
  }

  return sub_1002FE198(v8);
}

void sub_1002FD608(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = &v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
  v5 = *&v2[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
  if (!v5)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_7:
    sub_10000794C(a1, v21, &qword_10076C020);

LABEL_8:
    if (*v4)
    {
      v9 = *(v4 + 3);
      v10 = *(v4 + 4);
      v12 = *(v4 + 1);
      v11 = *(v4 + 2);
      v13 = *v4;
      v14 = [v2 layer];
      v15 = [v13 CGColor];
      [v14 setShadowColor:v15];

      [v14 setShadowOffset:{v12, v11}];
      [v14 setShadowRadius:v9];
      *&v16 = v10;
      [v14 setShadowOpacity:v16];
    }

    return;
  }

  v19 = *(a1 + 8);
  v20 = *(a1 + 24);
  v17 = *(v4 + 8);
  v18 = *(v4 + 24);
  sub_100003540(0, &qword_100775690);
  sub_10000794C(a1, v21, &qword_10076C020);
  v7 = v5;
  v8 = static NSObject.== infix(_:_:)();
  sub_1000079B4(a1, &qword_10076C020);

  if ((v8 & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v17, v19), vceqq_f64(v18, v20)), xmmword_100634150)) & 0xF) != 0)
  {
    goto LABEL_8;
  }
}

id sub_1002FD9F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
  v6 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox] = 0;
  v8 = &v1[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_boundsUsedForShapePath];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

void sub_1002FDBBC()
{
  sub_1002FDC74();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002FDC74()
{
  if (!qword_10077BE50)
  {
    type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10077BE50);
    }
  }
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Fill(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  return a1;
}

uint64_t *sub_1002FDD64(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRectCorners();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_1002FDE2C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRectCorners();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1002FDE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FDF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FDF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FE004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FE0A8()
{
  result = type metadata accessor for TTRRectCorners();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1002FE140()
{
  result = qword_10077BEE8;
  if (!qword_10077BEE8)
  {
    type metadata accessor for TTRRectCorners();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077BEE8);
  }

  return result;
}

uint64_t sub_1002FE198(uint64_t a1)
{
  v2 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FE1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FE258(char a1)
{
  if (a1)
  {
    if ((a1 & 4) != 0)
    {
      v1 = 5;
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v1 |= 2uLL;
    goto LABEL_5;
  }

  if ((a1 & 4) == 0)
  {
    v1 = 0;
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v1 = 4;
  if ((a1 & 2) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    return v1 | 8;
  }

  return v1;
}

id sub_1002FE2A4(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

uint64_t sub_1002FE2E4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077BF00);
  v1 = sub_100003E30(v0, qword_10077BF00);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002FE450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRRemindersListLayout();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICollectionLayoutListConfiguration();
  v30 = *(v14 - 8);
  v31 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewDidLoad", v15);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v6);
  UICollectionLayoutListConfiguration.footerMode.setter();
  sub_100003540(0, &qword_10077BFE0);
  v18 = static UICollectionViewCompositionalLayout.list(using:)();
  result = [v1 collectionView];
  if (result)
  {
    v20 = result;
    [result setCollectionViewLayout:v18 animated:0];

    result = [v1 collectionView];
    if (result)
    {
      v21 = result;
      [result setAllowsSelection:0];

      sub_1002FE8E8();
      sub_1002FEDCC();
      v22 = [v1 navigationItem];
      sub_10023D8F0(v5);
      static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)();
      (*(v28 + 8))(v5, v29);
      v23 = String._bridgeToObjectiveC()();

      [v22 setTitle:v23];

      v24 = [v1 navigationItem];
      v25 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
      [v24 setLeftBarButtonItem:v25];

      v26 = [v1 navigationItem];
      v27 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController____lazy_storage___doneButton, &selRef_didTapDone_, 0);
      [v26 setRightBarButtonItem:v27];

      return (*(v30 + 8))(v17, v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002FE8E8()
{
  v31 = sub_100058000(&qword_10077FBE0);
  v28 = *(v31 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v31);
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v33 = sub_100058000(&unk_10077BFF0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIEditSectionsCell();
  type metadata accessor for TTREditSectionsViewModel.ItemIdentifier();
  v32 = v10;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100003540(0, &qword_10077FBF0);
  v30 = v4;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v29 = v0;
  if ([v0 collectionView])
  {
    v11 = v33;
    (*(v5 + 16))(v7, v32, v33);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v11);
    v14 = objc_allocWithZone(sub_100058000(&qword_10077C000));
    v15 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v16 = v27;
    v17 = v28;
    v18 = v30;
    v19 = v31;
    (*(v28 + 16))(v27, v30, v31);
    v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v21 = swift_allocObject();
    (*(v17 + 32))(v21 + v20, v16, v19);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    v22 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    sub_100058000(&qword_10077C008);
    UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
    v22(v34, 0);
    swift_allocObject();
    v23 = v29;
    swift_unknownObjectWeakInit();
    v24 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
    v24(v34, 0);
    (*(v17 + 8))(v18, v19);
    (*(v5 + 8))(v32, v33);
    v25 = *&v23[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource];
    *&v23[OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource] = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002FEDCC()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10077BFD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = *(*(v0 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter) + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel);
  v7 = OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_lastConsumedViewModel;
  if (*(v0 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_lastConsumedViewModel))
  {

    TTREditSectionsViewModel.isEmpty.getter();
  }

  else
  {
  }

  TTREditSectionsViewModel.snapshot(previousViewModel:)();

  v9 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v3 + 8))(v5, v2);
    *(v1 + v7) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002FF0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UICellAccessory.Placement();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v8 - 8);
  v65 = &v51 - v9;
  v10 = type metadata accessor for UICellAccessory.ReorderOptions();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.DisplayedState();
  v64 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UICellAccessory();
  v66 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v53 = v13;
    v52 = v4;
    v24 = a1;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    TTREditSectionsViewModel.section(with:)();
    sub_1001185AC(v21);
    v25 = *(a1 + OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField);
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    v27 = v25;
    [v27 setDelegate:v26];

    v28 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
    if ((*(*(v28 - 8) + 48))(v21, 1, v28) == 1)
    {
      v29 = v24;
      swift_beginAccess();
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = [objc_allocWithZone(UISwitch) init];
        [v32 setOn:TTREditSectionsViewModel.shouldHideEmptySections.getter() & 1];
        [v32 addTarget:v31 action:"didToggleHideEmptySections:" forControlEvents:4096];
        [v32 setIsAccessibilityElement:0];
        v33 = sub_100058000(&qword_100779498);
        v34 = v56;
        v35 = &v56[*(v33 + 48)];
        (*(v64 + 104))(v56, enum case for UICellAccessory.DisplayedState.always(_:), v53);
        *v35 = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
        v35[1] = 0;
        (*(v54 + 104))(v34, enum case for UICellAccessory.Placement.trailing(_:), v55);
        v36 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v36 - 8) + 56))(v65, 1, 1, v36);
        v37 = v32;
        v38 = v57;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        sub_100058000(&unk_10077C050);
        *(swift_allocObject() + 16) = xmmword_10062D400;
        static UICellAccessory.customView(configuration:)();
        UICollectionViewListCell.accessories.setter();
        v39 = v60;
        sub_10023D8F0(v60);

        (*(v58 + 8))(v38, v59);
        sub_1000079B4(v21, &unk_10077C040);
        v40 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
        swift_beginAccess();
        (*(v61 + 40))(v29 + v40, v39, v52);
        swift_endAccess();
        *(v29 + OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_accessibilityDelegate + 8) = &off_10071F610;
        swift_unknownObjectWeakAssign();

        return;
      }
    }

    else
    {
      v45 = v64;
      v46 = v53;
      (*(v64 + 104))(v15, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v53);
      v47 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
      UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
      static UICellAccessory.reorder(displayed:options:)();
      (*(v62 + 8))(v12, v63);
      (*(v45 + 8))(v15, v46);
      sub_100058000(&unk_10077C050);
      v48 = v66;
      v49 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10062D400;
      (*(v48 + 16))(v50 + v49, v18, v16);
      UICollectionViewListCell.accessories.setter();

      (*(v48 + 8))(v18, v16);
    }

    sub_1000079B4(v21, &unk_10077C040);
  }

  else
  {
    if (qword_1007671A0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_10077BF00);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "TTRIEditSectionsViewController: No viewModel found for cell registration", v44, 2u);
    }
  }
}

void sub_1002FFAE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002FFB50();
  }
}

uint64_t sub_1002FFB50()
{
  v1 = type metadata accessor for TTRRemindersListLayout();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_10077C030);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewListCell.defaultContentConfiguration()();
  v18 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_dataSource);
  if (v11)
  {
    v12 = v11;
    IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v13 = type metadata accessor for TTREditSectionsViewModel.SectionIdentifier();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) == 1)
    {
LABEL_6:
      v21[3] = v7;
      v21[4] = &protocol witness table for UIListContentConfiguration;
      v16 = sub_1000317B8(v21);
      (*(v8 + 16))(v16, v10, v7);
      UICollectionViewCell.contentConfiguration.setter();
      return (*(v8 + 8))(v10, v7);
    }

    v15 = (*(v14 + 88))(v6, v13);
    if (v15 == enum case for TTREditSectionsViewModel.SectionIdentifier.toggle(_:))
    {
      sub_10023D8F0(v3);
      static TTRLocalizableStrings.Sections.hideEmptySectionsSubtitle(listLayout:)();
      (*(v19 + 8))(v3, v20);
      UIListContentConfiguration.text.setter();
      goto LABEL_6;
    }

    if (v15 == enum case for TTREditSectionsViewModel.SectionIdentifier.items(_:))
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002FFE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_10077C028);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TTREditSectionsViewModel.ItemIdentifier();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  type metadata accessor for TTRIEditSectionsCell();
  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_1000079B4(v6, &qword_10077C028);
  return v9;
}

uint64_t sub_1002FFFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v4 == a3)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100003540(0, &qword_10077FBF0);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

void sub_10030008C()
{
  v0 = sub_100058000(&qword_10077C010);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - v2;
  v4 = sub_100058000(&qword_10077C018);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_100058000(&qword_10077C020);
    v13 = NSDiffableDataSourceTransaction.sectionTransactions.getter();
    if (*(v13 + 16))
    {
      (*(v5 + 16))(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      (*(v5 + 32))(v10, v7, v4);
      NSDiffableDataSourceSectionTransaction.initialSnapshot.getter();
      v14 = NSDiffableDataSourceSectionSnapshot.items.getter();
      v15 = *(v1 + 8);
      v15(v3, v0);
      v16 = sub_100300B18(v14);

      NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
      v17 = NSDiffableDataSourceSectionSnapshot.items.getter();
      v15(v3, v0);
      v18 = sub_100300B18(v17);

      sub_10023E27C(v18, v16);

      (*(v5 + 8))(v10, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_100300560(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIEditSectionsViewController_presenter);
  v3 = [a1 isOn];
  if (qword_100767020 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100775E20);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  TTREditSectionsViewModel.shouldHideEmptySections.setter();

  *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_shouldHideEmptySections) = v3;
  v5._object = 0x8000000100679110;
  v5._countAndFlagsBits = 0xD000000000000019;
  TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v5);
  *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_hideEmptySectionsToggleChanged) = 1;
  sub_10000C36C((v2 + 88), *(v2 + 112));
  return dispatch thunk of TTREditSectionsInteractorType.toggleHideEmptySections(isOn:)();
}

uint64_t sub_1003009D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&unk_10077BFF0);

  return sub_1002FFE78(a1, a2, a3);
}

uint64_t sub_100300A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&qword_10077FBE0);

  return sub_1002FFFC8(a1, a2, a3);
}

uint64_t sub_100300B18(uint64_t a1)
{
  v2 = type metadata accessor for TTREditSectionsViewModel.ItemIdentifier();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v20 = a1;
  v21 = _swiftEmptyArrayStorage;
  v9 = *(a1 + 16);
  v19 = v3 + 16;
  v10 = enum case for TTREditSectionsViewModel.ItemIdentifier.sectionItem(_:);
  v11 = enum case for TTREditSectionsViewModel.ItemIdentifier.toggleItem(_:);
  v18 = (v3 + 96);
  while (1)
  {
    if (v9 == v7)
    {
      return v8;
    }

    if (v7 >= v9)
    {
      break;
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

    (*(v3 + 16))(v6, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v2, v4);
    v13 = (*(v3 + 88))(v6, v2);
    if (v13 == v10)
    {
      (*v18)(v6, v2);
      v14 = *v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = v14;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v17;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v8 = v21;
      v7 = v12;
    }

    else
    {
      ++v7;
      if (v13 != v11)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TTRIRemindersListTemplateStatusCell()
{
  result = qword_10077C078;
  if (!qword_10077C078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100300D88()
{
  result = type metadata accessor for TTRTemplatePublicLinkData();
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

uint64_t sub_100300E3C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRTemplatePublicLinkData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &aBlock[-1] - v9;
  v11 = qword_1007A8568;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &v2[v11], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  v12(v7, &v2[v11], v4);
  sub_1003022A4(&qword_10077C0C8, &type metadata accessor for TTRTemplatePublicLinkData);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v11 & 1) == 0 && (v20 = TTRITableViewContainerCell.containerView.getter(), v14 = swift_allocObject(), *(v14 + 16) = v2, v15 = swift_allocObject(), *(v15 + 16) = sub_10030229C, *(v15 + 24) = v14, aBlock[4] = sub_100026410, aBlock[5] = v15, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_100026440, aBlock[3] = &unk_10071F6F8, v16 = _Block_copy(aBlock), v17 = v2, , , v18 = v20, [v20 performBatchUpdates:v16], v18, _Block_release(v16), LOBYTE(v18) = swift_isEscapingClosureAtFileLocation(), , result = , (v18))
  {
    __break(1u);
  }

  else
  {
    v13(a1, v4);
    return (v13)(v10, v4);
  }

  return result;
}

uint64_t sub_10030117C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40[1] = a2;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v6 - 8);
  v8 = v40 - v7;
  v9 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v9 - 8);
  v11 = v40 - v10;
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[qword_10077C060 + 8] = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatePublicLinkData.init()();
  v16 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100771DF0);
  v17 = static UIFont.roundedBodyFont.getter();
  [v16 setFont:v17];

  v18 = [objc_opt_self() secondaryLabelColor];
  [v16 setTextColor:v18];

  [v16 setAdjustsFontForContentSizeCategory:1];
  v19 = a3;
  v20 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.borderless()();
  static TTRLocalizableStrings.Templates.templateStatusUpdateSharedTemplate.getter();
  UIButton.Configuration.title.setter();
  UIButton.Configuration.contentInsets.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v21 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v13 + 16))(v8, v15, v12);
  v41 = v13;
  v42 = v12;
  (*(v13 + 56))(v8, 0, 1, v12);
  UIButton.configuration.setter();
  *&v4[qword_10077C068] = v16;
  *&v4[qword_10077C070] = v20;
  v22 = v16;
  v23 = v20;
  if (v19)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v46.receiver = v4;
  v46.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v46, "initWithStyle:reuseIdentifier:", v44, v24);

  v26 = v25;
  v27 = TTRITableViewContainerCell.containerView.getter();
  [v27 setHorizontalAlignment:1];
  [v27 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D410;
  *(v28 + 32) = v16;
  *(v28 + 40) = v20;
  sub_100003540(0, &qword_10076B020);
  v29 = v16;
  v30 = v20;
  v31 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 setArrangedSubviews:isa];

  [v30 addTarget:v26 action:"buttonAction:" forControlEvents:0x2000];
  [v26 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v33 = TTRITableViewContainerCell.containerView.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v26;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1003022F0;
  *(v35 + 24) = v34;
  aBlock[4] = sub_100068444;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10071F770;
  v36 = _Block_copy(aBlock);
  v37 = v26;

  [v33 performBatchUpdates:v36];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

    (*(v41 + 8))(v15, v42);
    return v37;
  }

  return result;
}

uint64_t sub_10030179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedBodyFont.getter();
  sub_10008CD14();
  return AttributeContainer.subscript.setter();
}

uint64_t sub_100301850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10030117C(a3, a4, v6);
}

void sub_10030189C()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_10077C060 + 8] = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatePublicLinkData.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100301930(uint64_t a1)
{
  *(a1 + qword_10077C060 + 8) = 0;
  swift_unknownObjectWeakInit();
  TTRTemplatePublicLinkData.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Class sub_1003019BC(void *a1)
{
  v1 = a1;
  v2 = sub_100301A2C();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

char *sub_100301A2C()
{
  v1 = *(v0 + qword_10077C068);
  if ([v1 isHidden])
  {
    v2 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = sub_100003540(0, &qword_100776820);
    *&v11 = v1;
    v3 = v1;
    v2 = sub_1005470E4(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1005470E4((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    sub_100007DD8(&v11, &v2[32 * v5 + 32]);
  }

  v6 = *(v0 + qword_10077C070);
  if (([v6 isHidden] & 1) == 0)
  {
    v12 = sub_100003540(0, &unk_10077A690);
    *&v11 = v6;
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1005470E4(0, *(v2 + 2) + 1, 1, v2);
    }

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_1005470E4((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    sub_100007DD8(&v11, &v2[32 * v9 + 32]);
  }

  return v2;
}

void sub_100301BC8(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v33 - v5;
  v6 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRTemplatePublicLinkData();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = qword_1007A8568;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v40 = a1;
  v17(v15, a1 + v16, v9);
  TTRTemplatePublicLinkData.stateToDisplay.getter();
  v18 = *(v10 + 8);
  v18(v15, v9);
  v19 = *(v41 + 88);
  v38 = v8;
  v39 = v6;
  v20 = v19(v8, v6);
  if (v20 == enum case for TTRTemplatePublicLinkData.StateToDisplay.created(_:))
  {
    v21 = v40;
    v17(v12, v40 + v16, v9);
    v22 = v34;
    TTRTemplatePublicLinkData.capabilities.getter();
    v18(v12, v9);
    v23 = v35;
    static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
    sub_1003022A4(&qword_10076EEC8, &type metadata accessor for TTRTemplatePublicLinkData.Capabilities);
    v24 = v37;
    v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v26 = *(v36 + 8);
    v26(v23, v24);
    v26(v22, v24);
    if (v25)
    {
      v27 = *(v21 + qword_10077C070);
      [v27 setHidden:0];
      [*(v21 + qword_10077C068) setHidden:1];
      [v27 setEnabled:1];
    }

    else
    {
      static TTRLocalizableStrings.Templates.templateStatusSharedTemplate.getter();
      [*(v21 + qword_10077C070) setHidden:1];
      v31 = *(v21 + qword_10077C068);
      [v31 setHidden:0];
      v32 = String._bridgeToObjectiveC()();

      [v31 setText:v32];
    }

    (*(v41 + 8))(v38, v39);
  }

  else
  {
    v28 = v40;
    if (v20 == enum case for TTRTemplatePublicLinkData.StateToDisplay.notRequested(_:))
    {
      static TTRLocalizableStrings.Templates.templateStatusTemplate.getter();
      [*(v28 + qword_10077C070) setHidden:1];
      v29 = *(v28 + qword_10077C068);
      [v29 setHidden:0];
      v30 = String._bridgeToObjectiveC()();

      [v29 setText:v30];
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

uint64_t sub_10030209C(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v5 = a1;
  }

  v6 = &a1[qword_10077C060];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_10000B070(v10);
}

void sub_100302160()
{
  sub_10003B788(v0 + qword_10077C060);
  v1 = qword_1007A8568;
  v2 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_10077C070);
}

void sub_1003021F8(uint64_t a1)
{
  sub_10003B788(a1 + qword_10077C060);
  v2 = qword_1007A8568;
  v3 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_10077C070);
}

uint64_t sub_1003022A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100302364()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077C0D0);
  v1 = sub_100003E30(v0, qword_10077C0D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100302430()
{
  v0 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRITableCellContent.state.getter();
  (*(v1 + 32))(v3, v6, v0);
  return sub_100302550(v3);
}

uint64_t sub_100302550(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.direction.getter();
  (*(v11 + 16))(v13, v16, v10);
  v17 = (*(v11 + 88))(v13, v10);
  if (v17 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:) || v17 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:))
  {
    v19 = v17 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
    (*(v11 + 8))(v16, v10);
    v20 = *(v2 + qword_10077C190);
    *(v2 + qword_10077C190) = v19;
    sub_100303900(v20);
    v21 = REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.magnitude.getter();
    sub_100302E48(v21);
    REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.units.getter();
    v22 = v29;
    (*(v5 + 16))(v29, v9, v4);
    v23 = (*(v5 + 88))(v22, v4);
    if (v23 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:))
    {
      v24 = 0;
    }

    else if (v23 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:))
    {
      v24 = 1;
    }

    else if (v23 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:))
    {
      v24 = 2;
    }

    else if (v23 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:))
    {
      v24 = 3;
    }

    else
    {
      if (v23 != enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:))
      {
        goto LABEL_17;
      }

      v24 = 4;
    }

    (*(v5 + 8))(v9, v4);
    v25 = *(v2 + qword_10077C1A0);
    *(v2 + qword_10077C1A0) = v24;
    sub_1003039D0(v25);
    [*(v2 + qword_10077C180) setOn:REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.includePastDue.getter() & 1];
    v26 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    return (*(*(v26 - 8) + 8))(a1, v26);
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_17:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100302C64()
{
  v1 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v8.n128_f64[0] = __chkstk_darwin(v5);
  v9 = *(v0 + qword_10077C190);
  v10 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if (!v9)
  {
    v10 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v7 + 104))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *v10, v8);
  (*(v2 + 104))(v4, **(&off_10071F9D8 + *(v0 + qword_10077C1A0)), v1);
  if ((v9 & 1) == 0)
  {
    [*(v0 + qword_10077C180) isOn];
  }

  return REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
}

id sub_100302E48(id result)
{
  v2 = qword_10077C198;
  v3 = *(v1 + qword_10077C198);
  *(v1 + qword_10077C198) = result;
  if (v3 == result)
  {
    return result;
  }

  v4 = *(v1 + qword_10077C170);
  result = [v4 numberOfComponents];
  v5 = *(v1 + qword_10077C188 + 8);
  v6 = v5[2];
  if (v6 < 2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5[5] < result)
  {
    v7 = *(v1 + v2);
    if (__OFSUB__(v7, 1))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    result = [v4 selectRow:v7 - 1 inComponent:? animated:?];
    v6 = v5[2];
  }

  if (v6 < 3)
  {
    goto LABEL_12;
  }

  result = [v4 reloadComponent:v5[6]];
  if (!v5[2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v5[4];

  return [v4 reloadComponent:v8];
}

char *sub_100302F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[qword_10077C168 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[qword_10077C190] = 0;
  *&v3[qword_10077C198] = 1;
  v3[qword_10077C1A0] = 1;
  *&v3[qword_10077C1A8] = 0;
  *&v3[qword_10077C1B0] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(UIPickerView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[qword_10077C170] = v5;
  v6 = objc_allocWithZone(UILabel);
  v7 = v5;
  v8 = [v6 init];
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x800000010067A990;
  v10._countAndFlagsBits = 0xD000000000000037;
  v10._object = 0x800000010067A9B0;
  TTRLocalizedString(_:comment:)(v9, v10);
  v11 = String._bridgeToObjectiveC()();

  [v8 setText:v11];

  v12 = [objc_allocWithZone(UISwitch) init];
  *&v4[qword_10077C180] = v12;
  sub_100058000(&qword_10076B780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D410;
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  sub_100003540(0, &qword_10076B020);
  v48 = v12;
  v44 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() containerStackViewWithAxis:0 arrangedSubviews:isa];

  v16 = v15;
  [v16 setLayoutMargins:{0.0, 8.0, 0.0, 8.0}];
  [v16 setLayoutMarginsRelativeArrangement:1];
  [v16 setPreservesSuperviewLayoutMargins:0];
  *&v4[qword_10077C178] = v16;
  v17 = v16;
  v18._countAndFlagsBits = 0xD000000000000050;
  v18._object = 0x8000000100681460;
  v19._object = 0x80000001006814C0;
  v20._countAndFlagsBits = 0xD000000000000201;
  v20._object = 0x80000001006814E0;
  v19._countAndFlagsBits = 0xD000000000000019;
  v21 = TTRLocalizedString(_:value:comment:)(v18, v19, v20);
  v22 = sub_1003058BC(v21._countAndFlagsBits, v21._object);

  sub_100305E50(v22);
  v23 = &v4[qword_10077C188];
  *v23 = v22;
  v23[1] = v24;
  if (a3)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithStyle:reuseIdentifier:", a1, v25, a2);

  v27 = v26;
  v28 = TTRIStaticTableViewBaseCell.containerView.getter();
  [v28 setAxis:1];

  [v7 setDelegate:v27];
  v29 = v48;
  [v48 addTarget:v27 action:"includePastDueSwitchAction:" forControlEvents:4096];

  v30 = TTRIStaticTableViewBaseCell.containerView.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10062D410;
  *(v31 + 32) = v7;
  *(v31 + 40) = v17;
  v32 = v7;
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setArrangedSubviews:v33];

  v34 = qword_10077C170;
  result = [*&v27[qword_10077C170] numberOfComponents];
  v36 = &v27[qword_10077C188];
  v37 = *&v27[qword_10077C188 + 8];
  if (!*(v37 + 16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v37 + 32) < result)
  {
    [*&v27[v34] selectRow:v27[qword_10077C190] inComponent:? animated:?];
  }

  result = [*&v27[v34] numberOfComponents];
  v38 = *(v36 + 1);
  if (*(v38 + 16) < 2uLL)
  {
    goto LABEL_17;
  }

  if (*(v38 + 40) < result)
  {
    v39 = *&v27[qword_10077C198];
    if (__OFSUB__(v39, 1))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    [*&v27[v34] selectRow:v39 - 1 inComponent:? animated:?];
  }

  result = [*&v27[v34] numberOfComponents];
  v40 = *(v36 + 1);
  if (*(v40 + 16) < 3uLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v40 + 48) >= result)
  {
    v41 = v32;
    v32 = v48;
    v29 = v44;
    v42 = v17;
    v17 = v27;
  }

  else
  {
    [*&v27[v34] selectRow:v27[qword_10077C1A0] inComponent:? animated:?];
    v41 = v27;
    v42 = v44;
  }

  return v27;
}

char *sub_1003034CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100302F4C(a3, a4, v6);
}

void sub_10030354C()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_10077C168 + 8] = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003035C8(char *a1@<X8>)
{
  v19 = a1;
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Substring.lowercased()();
  static CharacterSet.whitespaces.getter();
  sub_10007D420();
  v5 = StringProtocol.trimmingCharacters(in:)();
  v7 = v6;
  (*(v2 + 8))(v4, v1);

  v8 = v5 == 0x6F69746365726964 && v7 == 0xE90000000000006ELL;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = 0;
  }

  else
  {
    v10 = v5 == 0x647574696E67616DLL && v7 == 0xE900000000000065;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v9 = 1;
    }

    else
    {
      v11 = v5 == 0x7374696E75 && v7 == 0xE500000000000000;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v9 = 2;
      }

      else
      {
        if (qword_1007671A8 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100003E30(v12, qword_10077C0D0);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v20._countAndFlagsBits = v16;
          *v15 = 136315138;
          v17 = sub_100004060(v5, v7, &v20._countAndFlagsBits);

          *(v15 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v13, v14, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER elmenents must be one of 'direction', 'magnitude', 'units', but the actual content is %s", v15, 0xCu);
          sub_100004758(v16);
        }

        else
        {
        }

        v9 = 3;
      }
    }
  }

  *v19 = v9;
}

id sub_100303900(id result)
{
  v2 = qword_10077C190;
  if (*(v1 + qword_10077C190) != (result & 1))
  {
    v3 = *(v1 + qword_10077C170);
    result = [v3 numberOfComponents];
    v4 = *(v1 + qword_10077C188 + 8);
    if (*(v4 + 16))
    {
      if (*(v4 + 32) < result)
      {
        [v3 selectRow:*(v1 + v2) inComponent:? animated:?];
      }

      v5 = *(v1 + v2);
      v6 = *(v1 + qword_10077C178);

      return [v6 setHidden:v5];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1003039D0(id result)
{
  v2 = qword_10077C1A0;
  if (*(v1 + qword_10077C1A0) == result)
  {
    return result;
  }

  v3 = *(v1 + qword_10077C170);
  result = [v3 numberOfComponents];
  v4 = *(v1 + qword_10077C188 + 8);
  if (v4[2] < 3uLL)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4[6] < result)
  {
    result = [v3 selectRow:*(v1 + v2) inComponent:? animated:?];
    if (v4[2] < 2uLL)
    {
      goto LABEL_12;
    }
  }

  result = [v3 reloadComponent:v4[5]];
  if (!v4[2])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  result = [v3 reloadComponent:v4[4]];
  if (*(v1 + qword_10077C198) >= 1000)
  {

    return sub_100302E48(0x3E7);
  }

  return result;
}

id sub_100303AE0()
{
  v1 = *(v0 + qword_10077C170);
  result = [v1 numberOfComponents];
  v3 = *(v0 + qword_10077C188 + 8);
  if (*(v3 + 16))
  {
    if (*(v3 + 32) >= result)
    {
      return 0;
    }

    else
    {
      return ([v1 selectedRowInComponent:?] == 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100303B60()
{
  v1 = *(v0 + qword_10077C170);
  result = [v1 numberOfComponents];
  v3 = *(v0 + qword_10077C188 + 8);
  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
    return result;
  }

  if (*(v3 + 40) >= result)
  {
    return 1;
  }

  v4 = [v1 selectedRowInComponent:?];
  v5 = __OFADD__(v4, 1);
  result = v4 + 1;
  if (v5)
  {
    __break(1u);
    return 1;
  }

  return result;
}

unint64_t sub_100303BE4()
{
  v1 = *(v0 + qword_10077C170);
  result = [v1 numberOfComponents];
  v3 = *(v0 + qword_10077C188 + 8);
  if (*(v3 + 16) < 3uLL)
  {
    __break(1u);
  }

  else if (*(v3 + 48) >= result)
  {
    return 1;
  }

  else
  {
    result = [v1 selectedRowInComponent:?];
    if (result >= 5)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100303C68()
{
  v1 = v0;
  [*(v0 + qword_10077C170) frame];
  v2 = CGRectGetWidth(v15) + -46.0;
  sub_100003540(0, &qword_100771DF0);
  v3 = 23.0;
  v4 = static UIFont.roundedSystemFont(ofSize:weight:)();
  sub_100303E5C(v4);
  v6 = v5;

  v13 = v6;
  sub_100058000(&qword_10077C398);
  sub_10000E188(&qword_10077C3A0, &qword_10077C398);
  sub_100306440();
  Sequence<>.sum()();
  if (v2 < v14)
  {
    do
    {

      v7 = static UIFont.roundedSystemFont(ofSize:weight:)();

      v4 = v7;
      sub_100303E5C(v4);
      v6 = v8;

      Sequence<>.sum()();
      v3 = v3 + -1.0;
    }

    while (v13 >= v2 && v3 > 12.0 && v2 < v13);
  }

  v11 = *(v1 + qword_10077C1A8);
  *(v1 + qword_10077C1A8) = v4;

  *(v1 + qword_10077C1B0) = v6;
}

void sub_100303E5C(uint64_t a1)
{
  v60 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v2 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v7 = *(v56 - 8);
  __chkstk_darwin(v56);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [objc_allocWithZone(UILabel) init];
  [v53 setFont:a1];
  v55 = objc_opt_self();
  v10 = 0;
  v11 = 0;
  v44 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  v54 = *(v4 + 104);
  v57 = v4 + 104;
  v43 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  v48 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.year(_:);
  v52 = (v2 + 104);
  v50 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.month(_:);
  v51 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.week(_:);
  v12 = (v7 + 8);
  v13 = 0.0;
  v47 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:);
  v14 = 0.0;
  v15 = 0.0;
  v49 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.hour(_:);
  do
  {
    v16 = 0;
    v45 = v10;
    v17 = v44;
    if (*(&off_100712968 + v11 + 32))
    {
      v17 = v43;
    }

    v61 = v17;
    do
    {
      v18 = 0;
      v19 = *(&off_100712990 + v16 + 4);
      v46 = v16 + 1;
      do
      {
        v54(v6, v61, v58);
        (*v52)(v59);
        v20 = v6;
        REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
        _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO32dateOptionRelativeRangeDirectionySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
        v21 = String._bridgeToObjectiveC()();

        v22 = v53;
        [v53 setText:v21];

        v23 = v22;
        [v23 intrinsicContentSize];
        v25 = v24;
        v26 = [objc_allocWithZone(NSNumber) initWithInteger:v19];
        v27 = [v55 localizedStringFromNumber:v26 numberStyle:1];

        if (!v27)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = String._bridgeToObjectiveC()();
        }

        ++v18;
        v28 = ceil(v25);
        [v23 setText:v27];

        [v23 intrinsicContentSize];
        v30 = ceil(v29);
        _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO28dateOptionRelativeRangeUnitsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
        v31 = String._bridgeToObjectiveC()();

        [v23 setText:v31];

        [v23 intrinsicContentSize];
        v33 = v32;

        v34 = ceil(v33);
        (*v12)(v9, v56);
        if (v28 > v15)
        {
          v15 = v28;
        }

        if (v30 > v14)
        {
          v14 = v30;
        }

        if (v34 > v13)
        {
          v13 = v34;
        }

        v6 = v20;
      }

      while (v18 != 5);
      v16 = v46;
    }

    while (v46 != 5);
    v10 = 1;
    v11 = &_mh_execute_header.magic + 1;
  }

  while ((v45 & 1) == 0);
  sub_100058000(&qword_10077C3B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10062F800;
  *(v35 + 32) = 0;
  v36 = v35 + 32;
  *(v35 + 40) = 0;
  *(v35 + 48) = 0;
  v37 = *(v42 + qword_10077C188 + 8);
  v38 = v37[2];
  if (!v38)
  {
    __break(1u);
    goto LABEL_26;
  }

  v39 = v37[4];
  if (v39 > 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v36 + 8 * v39) = v15;
  if (v38 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v40 = v37[5];
  if (v40 > 2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v36 + 8 * v40) = v14;
  if (v38 < 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v41 = v37[6];

  if (v41 <= 2)
  {
    *(v36 + 8 * v41) = v13;
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_100304444()
{
  v1 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  __chkstk_darwin(v1 - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v18 = *(v0 + qword_10077C190);
  v19 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if (!v18)
  {
    v19 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v8 + 104))(v10, *v19, v7, v15);
  (*(v4 + 104))(v6, **(&off_10071F9D8 + *(v0 + qword_10077C1A0)), v3);
  if ((v18 & 1) == 0)
  {
    [*(v0 + qword_10077C180) isOn];
  }

  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
  sub_100302550(v17);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_100302C64();
    v22 = *(v21 + qword_10077C0E8);
    if (v22)
    {
      v23 = *(v21 + qword_10077C0E8 + 8);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      (*(v29 + 16))(v28, v13, v30);

      v22(v24);
      sub_10008E7F0(v22, v23);
      swift_unknownObjectRelease();
      sub_1003063E4(v24);
      return (*(v25 + 8))(v13, v26);
    }

    else
    {
      (*(v29 + 8))(v13, v30);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003047E4(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100304444();

  return sub_100004758(&v4);
}

uint64_t sub_100304848()
{
  sub_10003B788(v0 + qword_10077C168);
}

uint64_t sub_1003048EC(uint64_t a1)
{
  sub_10003B788(a1 + qword_10077C168);
}

void sub_1003049A4(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = qword_10077C1B0;
  v7 = *&a1[qword_10077C1B0];
  v8 = *(v7 + 16);
  v9 = a1;
  if (v8 <= 2)
  {
    sub_100303C68();
    v7 = *&a1[v6];
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v7 + 16) > a4)
  {

    return;
  }

  __break(1u);
}

id sub_100304A58(uint64_t a1)
{
  v2 = v1;
  v4 = qword_10077C1A8;
  if (!*(v1 + qword_10077C1A8))
  {
    sub_100303C68();
  }

  v5 = [*(v1 + qword_10077C170) effectiveUserInterfaceLayoutDirection];
  v6 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100772610);
  v7 = static UIColor.ttrLabelColor.getter();
  [v6 setTextColor:v7];

  [v6 setFont:*(v2 + v4)];
  v8 = 1;
  if (!a1)
  {
    v8 = 2 * (v5 != 1);
  }

  if (a1 == 2)
  {
    v9 = 2 * (v5 == 1);
  }

  else
  {
    v9 = v8;
  }

  [v6 setTextAlignment:v9];
  return v6;
}

void sub_100304B6C(unint64_t a1, unint64_t a2)
{
  v4 = sub_100058000(&qword_10077C388);
  __chkstk_darwin(v4 - 8);
  v54 = &v50 - v5;
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v50 - v9;
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v55 = *(v13 - 8);
  v56 = v13;
  __chkstk_darwin(v13);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v18 = sub_100058000(&qword_10077C390);
  __chkstk_darwin(v18 - 8);
  v20 = &v50 - v19;
  v21 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  v29.n128_f64[0] = __chkstk_darwin(v28);
  v31 = &v50 - v30;
  if (a2 > 2)
  {
    goto LABEL_7;
  }

  v32 = *(v59 + qword_10077C188);
  if (*(v32 + 16) <= a2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v33 = *(v32 + a2 + 32);
  if (!v33)
  {
LABEL_7:
    if (a1 == 1)
    {
      v38 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
    }

    else
    {
      if (a1)
      {
        (*(v22 + 56))(v20, 1, 1, v21, v29);
        v39 = &qword_10077C390;
        v40 = v20;
LABEL_20:
        sub_1000079B4(v40, v39);
        return;
      }

      v38 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
    }

    (*(v22 + 104))(v20, *v38, v21, v29);
    (*(v22 + 56))(v20, 0, 1, v21);
    (*(v22 + 32))(v31, v20, v21);
    (*(v22 + 16))(v27, v31, v21);
    (*(v57 + 104))(v12, **(&off_10071F9D8 + *(v59 + qword_10077C1A0)), v58);
    REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
    _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO32dateOptionRelativeRangeDirectionySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
    (*(v55 + 8))(v17, v56);
    (*(v22 + 8))(v31, v21);
    return;
  }

  if (v33 == 1)
  {
    v34 = objc_opt_self();
    if (!__OFADD__(a1, 1))
    {
      v35 = v34;
      v36 = [objc_allocWithZone(NSNumber) initWithInteger:a1 + 1];
      v37 = [v35 localizedStringFromNumber:v36 numberStyle:1];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return;
    }

    goto LABEL_22;
  }

  if (a1 > 4)
  {
    v49 = v54;
    (*(v57 + 56))(v54, 1, 1, v58, v29.n128_f64[0]);
    v39 = &qword_10077C388;
    v40 = v49;
    goto LABEL_20;
  }

  v42 = v57;
  v41 = v58;
  v43 = v54;
  (*(v57 + 104))(v54, **(&off_10071F9D8 + a1), v58, v29.n128_f64[0]);
  (*(v42 + 56))(v43, 0, 1, v41);
  v44 = v53;
  (*(v42 + 32))(v53, v43, v41);
  v45 = v59;
  v46 = *(v59 + qword_10077C190);
  v47 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if (!v46)
  {
    v47 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v22 + 104))(v24, *v47, v21);
  (*(v42 + 16))(v52, v44, v41);
  if ((v46 & 1) == 0)
  {
    [*(v45 + qword_10077C180) isOn];
  }

  v48 = v51;
  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO28dateOptionRelativeRangeUnitsySS19ReminderKitInternal014REMCustomSmartE16FilterDescriptorC0Q4DateO0iJ0VFZ_0();
  (*(v55 + 8))(v48, v56);
  (*(v42 + 8))(v44, v41);
}

id sub_10030525C(void *a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5, void *a6)
{
  if (a6 && (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    v13 = a6;
    v14 = a3;
    v15 = a1;
  }

  else
  {
    v16 = a6;
    v17 = a3;
    v18 = a1;
    v12 = sub_100304A58(a5);
  }

  sub_100304B6C(a4, a5);
  v19 = String._bridgeToObjectiveC()();

  [v12 setText:v19];

  return v12;
}

void sub_100305354(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100306048();
}

uint64_t sub_1003053E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_100305450(uint64_t a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1003054B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_100305518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_10030557C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_1003055E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_10030568C()
{
  result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_10030575C@<X0>(void *result@<X0>, char *a2@<X8>)
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

unint64_t sub_100305790()
{
  result = qword_10077C368;
  if (!qword_10077C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C368);
  }

  return result;
}

unint64_t sub_100305828@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9Reminders33TTRSmartListFilterEditorViewModelV14HashtagOptionsO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100305868()
{
  result = qword_10077C380;
  if (!qword_10077C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C380);
  }

  return result;
}

char *sub_1003058BC(uint64_t a1, unint64_t a2)
{
  *&v45 = a1;
  *(&v45 + 1) = a2;
  sub_10007D420();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = _swiftEmptyArrayStorage;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v45 = *(v7 - 3);
      v46 = v10;
      v47 = v9;
      sub_1003035C8(&v44);
      v11 = v44;
      if (v44 != 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100548184(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_100548184((v12 > 1), v13 + 1, 1, v8);
        }

        *(v8 + 2) = v13 + 1;
        v8[v13 + 32] = v11;
      }

      ++v6;
      v7 += 4;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_12:

  if (*(v8 + 2) != 3)
  {

    if (qword_1007671A8 == -1)
    {
LABEL_33:
      v25 = type metadata accessor for Logger();
      sub_100003E30(v25, qword_10077C0D0);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v45 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100004060(a1, a2, &v45);
        _os_log_impl(&_mh_execute_header, v26, v27, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER needs exactly three elements separated by the '-' character, but the actual content is %s", v28, 0xCu);
        sub_100004758(v29);
      }

      return &off_100712908;
    }

LABEL_56:
    swift_once();
    goto LABEL_33;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v8 + 32;
LABEL_14:
  v19 = v17;
  do
  {
    v17 = v19 + 1;
    v20 = v19 == 2;
    if (v18[v19])
    {
      if (v18[v19] != 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v19 == 2)
      {
LABEL_36:
        if ((v15 & 1) == 0)
        {
LABEL_43:

          if (qword_1007671A8 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_100003E30(v34, qword_10077C0D0);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER must contain 'magnitude' but does not", v37, 2u);
          }

          return &off_1007128B8;
        }

        goto LABEL_37;
      }

      v21 = -2 - v19;
      v22 = &v8[v19 + 33];
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        v20 = v21 == -3;
        if (v24)
        {
          break;
        }

        if (--v21 == -4)
        {
          goto LABEL_36;
        }
      }

      if (v23 != 1)
      {
        v17 = -v21;
        v16 = 1;
LABEL_28:
        v14 = 1;
        if (!v20)
        {
          goto LABEL_14;
        }

        if (v16)
        {
          if (v15)
          {
            return v8;
          }

          goto LABEL_43;
        }

        goto LABEL_50;
      }

      v17 = -v21;
      v16 = 1;
    }

    v15 = 1;
    v19 = v17;
  }

  while (!v20);
  if ((v16 & 1) == 0)
  {
LABEL_50:

    if (qword_1007671A8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100003E30(v39, qword_10077C0D0);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER must contain 'direction' but does not", v42, 2u);
    }

    return &off_1007128E0;
  }

LABEL_37:
  if ((v14 & 1) == 0)
  {

    if (qword_1007671A8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003E30(v30, qword_10077C0D0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "LIST_DETAIL_RELATIVE_RANGE_WHEEL_ORDER must contain 'units' but does not", v33, 2u);
    }

    return &off_100712890;
  }

  return v8;
}

double sub_100305E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    while (*(v3 + v2))
    {
      if (v1 == ++v2)
      {
        return result;
      }
    }

    v4 = 0;
    while (*(v3 + v4) != 1)
    {
      if (v1 == ++v4)
      {
        return result;
      }
    }

    v5 = 0;
    while (*(v3 + v5) != 2)
    {
      if (v1 == ++v5)
      {
        return result;
      }
    }

    sub_100058000(&unk_10076B9F0);
    v6 = swift_allocObject();
    *&result = 3;
    *(v6 + 16) = xmmword_10062F800;
    *(v6 + 32) = v2;
    *(v6 + 40) = v4;
    *(v6 + 48) = v5;
  }

  return result;
}

void sub_100305F38()
{
  *(v0 + qword_10077C168 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_10077C190) = 0;
  *(v0 + qword_10077C198) = 1;
  *(v0 + qword_10077C1A0) = 1;
  *(v0 + qword_10077C1A8) = 0;
  *(v0 + qword_10077C1B0) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t _s9Reminders33TTRSmartListFilterEditorViewModelV14HashtagOptionsO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100306004(unint64_t result)
{
  if (result > 2)
  {
    return 2;
  }

  v2 = *(v1 + qword_10077C188);
  if (*(v2 + 16) > result)
  {
    return qword_10063A7C0[*(v2 + result + 32)];
  }

  __break(1u);
  return result;
}

uint64_t sub_100306048()
{
  v1 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  __chkstk_darwin(v1 - 8);
  v26 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_100303AE0();
  v18 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inPast(_:);
  if ((v17 & 1) == 0)
  {
    v18 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:);
  }

  (*(v8 + 104))(v10, *v18, v7);
  sub_100303B60();
  v19 = sub_100303BE4();
  (*(v4 + 104))(v6, **(&off_10071F9D8 + v19), v3);
  if ((*(v0 + qword_10077C190) & 1) == 0)
  {
    [*(v0 + qword_10077C180) isOn];
  }

  REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
  sub_100302550(v16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_100302C64();
    v22 = *(v21 + qword_10077C0E8);
    if (v22)
    {
      v23 = *(v21 + qword_10077C0E8 + 8);
      v24 = v26;
      v25 = v27;
      (*(v11 + 16))(v26, v13, v27);

      v22(v24);
      sub_10008E7F0(v22, v23);
      swift_unknownObjectRelease();
      sub_1003063E4(v24);
      return (*(v11 + 8))(v13, v25);
    }

    else
    {
      (*(v11 + 8))(v13, v27);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003063E4(uint64_t a1)
{
  v2 = type metadata accessor for TTRISmartListFilterEditorRelativeRangeContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100306440()
{
  result = qword_10077C3A8;
  if (!qword_10077C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C3A8);
  }

  return result;
}

unint64_t sub_1003064A8()
{
  result = qword_10077C3B8;
  if (!qword_10077C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077C3B8);
  }

  return result;
}

uint64_t type metadata accessor for TTRListAppearanceBadgeGridView()
{
  result = qword_10077C3D0;
  if (!qword_10077C3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1003065B8(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&a1[qword_10077C3C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_10077C3C8];
  *v11 = 0;
  v11[8] = 1;
  v17.receiver = a1;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a2, a3, a4, a5);
  v13 = objc_allocWithZone(UITapGestureRecognizer);
  v14 = v12;
  v15 = [v13 initWithTarget:v14 action:"didTap:"];
  [v14 addGestureRecognizer:v15];

  return v14;
}

id sub_1003066C4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_10077C3C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[qword_10077C3C8];
  *v4 = 0;
  v4[8] = 1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  if (v5)
  {
    v6 = objc_allocWithZone(UITapGestureRecognizer);
    v7 = v5;
    v8 = [v6 initWithTarget:v7 action:"didTap:"];
    [v7 addGestureRecognizer:v8];

    a1 = v8;
  }

  return v5;
}

void *sub_1003067E4()
{
  v0 = dispatch thunk of TTRListAppearanceGridView.arrangedSubviews.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for TTRListBadgeView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != v3);
LABEL_20:

  return _swiftEmptyArrayStorage;
}

void sub_100306954(void *a1)
{
  [a1 locationInView:v1];
  v11 = [v1 hitTest:0 withEvent:?];
  if (v11)
  {
    v2 = sub_1003067E4();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_23:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v11 isDescendantOfView:v7];

      if (v9)
      {

        sub_100306AF0(v6);

        return;
      }

      if (__OFADD__(v6++, 1))
      {
        goto LABEL_22;
      }
    }
  }
}

uint64_t sub_100306AF0(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + qword_10077C3C8;
  if ((*(v1 + qword_10077C3C8 + 8) & 1) != 0 || *v4 != a1)
  {
    *v4 = a1;
    *(v4 + 8) = 0;
    v5 = sub_1003067E4();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        dispatch thunk of TTRListBadgeView.selected.setter();

        ++v8;
        if (v11 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    v12 = sub_1003067E4();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_28;
    }

    for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        dispatch thunk of TTRListBadgeView.selected.setter();

        ++v15;
        if (v18 == j)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_29:
  }

  v19 = v2 + qword_10077C3C0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v2, a1, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100306D44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100306954(v4);
}

uint64_t sub_100306DAC(void *a1)
{
  v2 = sub_1003067E4();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [a1 isDescendantOfView:v7];

    if (v9)
    {

      return sub_100306AF0(v6);
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_100307038@<X0>(void **a1@<X0>, void *a2@<X1>, void (*a3)(void)@<X5>, unint64_t *a4@<X6>, void (*a5)(uint64_t)@<X7>, void *a6@<X8>)
{
  v10 = *a1;
  a3(0);
  sub_100307440(a4, a5);
  v11 = v10;
  v12 = a2;
  result = TTRUndoableEditing.init(changeItem:undoManager:)();
  *a6 = v14;
  return result;
}

uint64_t sub_100307104@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a3[3];
  v8 = a3[4];
  v9 = sub_10000C36C(a3, v7);
  result = sub_100307340(v6, a2, v9, v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_100307340(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[3] = a4;
  v19[4] = a5;
  v9 = sub_1000317B8(v19);
  (*(*(a4 - 8) + 16))(v9, a3, a4);
  sub_10000B0D8(v19, v18);
  v10 = type metadata accessor for TTRUserDefaults();
  v11 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for TTRListDetailCreationEditor();
  v12 = swift_allocObject();
  v16 = v10;
  v17 = &protocol witness table for TTRUserDefaults;
  *&v15 = v11;
  *(v12 + 16) = a1;
  sub_100005FD0(v18, v12 + 32);
  *(v12 + 24) = a2;
  sub_100005FD0(&v15, v12 + 72);
  v13 = a2;

  sub_100004758(v19);
  return v12;
}

uint64_t sub_100307440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100307488()
{
  swift_getObjectType();
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 adjustedContentInset];
  v10 = v9;
  v12 = v11;
  v13 = [v0 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v14;

  sub_10030C4A0(&v17);

  sub_100068328(v2, v4, v6, v8, v10, v12);
  __chkstk_darwin(v15);
  sub_100058000(&unk_10078A370);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10000E188(&unk_100771B00, &unk_10078A370);
  Sequence.firstMap<A>(_:)();
}

void sub_1003076AC(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, CGFloat a6@<D0>, CGFloat a7@<D1>, CGFloat a8@<D2>, CGFloat a9@<D3>)
{
  v58 = a4;
  v59 = a3;
  v17 = type metadata accessor for UICellConfigurationState();
  v57 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for IndexPath();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [a2 cellForItemAtIndexPath:isa];

  if (!v23)
  {
    v34 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v34 - 8) + 56))(a5, 1, 1, v34);
    return;
  }

  [v23 bounds];
  [a2 convertRect:v23 fromCoordinateSpace:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v62.origin.x = a6;
  v62.origin.y = a7;
  v62.size.width = a8;
  v62.size.height = a9;
  MinY = CGRectGetMinY(v62);
  v63.origin.x = v25;
  v63.origin.y = v27;
  v63.size.width = v29;
  v63.size.height = v31;
  if (CGRectGetHeight(v63) <= 0.0)
  {
    goto LABEL_9;
  }

  v64.origin.x = v25;
  v64.origin.y = v27;
  v64.size.width = v29;
  v64.size.height = v31;
  if (MinY <= CGRectGetMinY(v64))
  {
    v67.origin.x = v25;
    v67.origin.y = v27;
    v67.size.width = v29;
    v67.size.height = v31;
    Height = CGRectGetHeight(v67);
  }

  else
  {
    v65.origin.x = v25;
    v65.origin.y = v27;
    v65.size.width = v29;
    v65.size.height = v31;
    Height = 0.0;
    if (CGRectGetMaxY(v65) > MinY)
    {
      v66.origin.x = v25;
      v66.origin.y = v27;
      v66.size.width = v29;
      v66.size.height = v31;
      Height = CGRectGetMaxY(v66) - MinY;
    }
  }

  v68.origin.x = v25;
  v68.origin.y = v27;
  v68.size.width = v29;
  v68.size.height = v31;
  if (CGRectGetHeight(v68) * 0.5 > Height)
  {
LABEL_9:
    v35 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v35 - 8) + 56))(a5, 1, 1, v35);

    return;
  }

  v55 = v9;
  v56 = a5;
  IndexPath.section.getter();
  IndexPath.init(row:section:)();
  v36 = UICollectionElementKindSectionHeader;
  v37 = IndexPath._bridgeToObjectiveC()().super.isa;
  v38 = [a2 supplementaryViewForElementKind:v36 atIndexPath:v37];

  if (!v38)
  {
    v39 = 0;
    goto LABEL_20;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39 || (v54 = v38, v40 = [v39 _bridgedConfigurationState], static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)(), v40, LOBYTE(v40) = UICellConfigurationState.isPinned.getter(), (*(v57 + 8))(v19, v17), (v40 & 1) == 0))
  {

    goto LABEL_20;
  }

  [v39 bounds];
  [a2 convertRect:v39 fromCoordinateSpace:?];
  MaxY = CGRectGetMaxY(v69);
  v70.origin.x = v25;
  v70.origin.y = v27;
  v70.size.width = v29;
  v70.size.height = v31;
  if (CGRectGetHeight(v70) > 0.0)
  {
    v71.origin.x = v25;
    v71.origin.y = v27;
    v71.size.width = v29;
    v71.size.height = v31;
    v42 = MaxY > CGRectGetMinY(v71);
    v43 = v54;
    v44 = v25;
    v45 = v27;
    v46 = v29;
    v47 = v31;
    if (v42)
    {
      v48 = CGRectGetMaxY(*&v44);
      v49 = 0.0;
      v50 = v56;
      if (v48 > MaxY)
      {
        v72.origin.x = v25;
        v72.origin.y = v27;
        v72.size.width = v29;
        v72.size.height = v31;
        v49 = CGRectGetMaxY(v72) - MaxY;
      }
    }

    else
    {
      v49 = CGRectGetHeight(*&v44);
      v50 = v56;
    }

    v73.origin.x = v25;
    v73.origin.y = v27;
    v73.size.width = v29;
    v73.size.height = v31;
    v51 = CGRectGetHeight(v73);

    if (v51 * 0.5 > v49)
    {
      goto LABEL_23;
    }

LABEL_20:
    v59(a1);

    (*(v60 + 8))(v21, v61);
    return;
  }

  v43 = v54;

  v50 = v56;
LABEL_23:
  (*(v60 + 8))(v21, v61);

  v52 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v52 - 8) + 56))(v50, 1, 1, v52);
}