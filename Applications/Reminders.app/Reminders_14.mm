uint64_t sub_10017020C()
{
  v0 = type metadata accessor for REMHashtagLabelSpecifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = *(v3 + 1);
    v6 = *(*v3 + 16);

    if (v6)
    {

      v7 = 1;
    }

    else
    {
      v9 = *(v5 + 16);

      v7 = v9 != 0;
    }

    v10 = *(sub_100058000(&qword_10076B830) + 64);
    v11 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v11 - 8) + 8))(&v3[v10], v11);
  }

  else
  {
    if (v4 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v4 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    return 0;
  }

  return v7;
}

uint64_t sub_100170420()
{
  v0 = type metadata accessor for REMHashtagLabelSpecifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = *v3;
    v6 = v3[1];
    v7 = *(sub_100058000(&qword_10076B830) + 64);
    v8 = sub_10057D0C0(v6, v5);
    if (*(v8 + 16) == 1)
    {
      sub_1000A9A4C(v8);
      v10 = v9;

      if (v10)
      {
        countAndFlagsBits = String.addingHashtagPrefix()()._countAndFlagsBits;

        v12 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
        (*(*(v12 - 8) + 8))(v3 + v7, v12);
        return countAndFlagsBits;
      }
    }

    else
    {
    }

    v14 = static TTRLocalizableStrings.Hashtags.taggedListName(forSelectedLabelCount:)();
    v15 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v15 - 8) + 8))(v3 + v7, v15);
    return v14;
  }

  else if (v4 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
  {
    return static TTRLocalizableStrings.Hashtags.taggedListNameForAllTags.getter();
  }

  else if (v4 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    return static TTRLocalizableStrings.Hashtags.taggedListNameForUntagged.getter();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001706BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_100792BA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_1007708D8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  sub_100170A54(&v21 - v15);
  if ((*(v1 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) & 1) != 0 || (v17 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription(), v18 = 1, (*(*(v17 - 8) + 48))(v16, 1, v17) != 1))
  {
    v21 = v14;
    swift_getObjectType();
    v22 = a1;
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_unknownObjectRelease();
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.allHashtagLabels.getter();
    a1 = v22;
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    TTRRemindersListViewModel.HashtagLabelSelectorState.init(labels:selection:)();
    (*(v8 + 16))(v5, v10, v7);
    (*(v8 + 56))(v5, 0, 1, v7);
    sub_10000794C(v16, v21, &qword_1007708D8);
    TTRRemindersListViewModel.HashtagsState.init(selectorState:selectionDescription:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v10, v7);
    v18 = 0;
  }

  v19 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
  return sub_1000079B4(v16, &qword_1007708D8);
}

uint64_t sub_100170A54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for REMHashtagLabelCollection();
  v80 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  countAndFlagsBits = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v69 - v6;
  __chkstk_darwin(v5);
  v79 = &v69 - v8;
  v9 = type metadata accessor for REMHashtagLabelSpecifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  swift_unknownObjectRelease();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    goto LABEL_5;
  }

  (*(v10 + 96))(v12, v9);
  v15 = *v12;
  v14 = v12[1];
  v16 = *(*v12 + 16);
  if (v16)
  {
    v17 = sub_1003AC440(*(*v12 + 16), 0);
    v18 = sub_1003B2F84(&v87, v17 + 4, v16, v15);
    v13 = sub_10008BA48();
    if (v18 != v16)
    {
      __break(1u);
LABEL_5:
      if (v13 == enum case for REMHashtagLabelSpecifier.allLabels(_:))
      {
        static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionAllTags.getter();
LABEL_9:
        TTRRemindersListViewModel.HashtagSelectionDescription.init(generic:preferred:)();
        v19 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
        return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
      }

      if (v13 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
      {
        static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionUntagged.getter();
        goto LABEL_9;
      }

      goto LABEL_37;
    }
  }

  else
  {
  }

  REMHashtagLabelCollection.init(labels:)();
  v21 = *(v14 + 16);
  v86 = v14;
  v76 = v12;
  v77 = a1;
  v78 = v2;
  if (v21)
  {
    v22 = sub_1003AC440(v21, 0);
    v23 = sub_1003B2F84(&v87, v22 + 4, v21, v14);

    sub_10008BA48();
    if (v23 != v21)
    {
      __break(1u);
LABEL_37:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v12 = v76;
    v2 = v78;
  }

  v24 = *(sub_100058000(&qword_10076B830) + 64);
  v25 = countAndFlagsBits;
  REMHashtagLabelCollection.init(labels:)();
  v26 = v79;
  REMHashtagLabelCollection.union(_:)();
  v28 = v80 + 8;
  v27 = *(v80 + 8);
  v27(v25, v2);
  v27(v7, v2);
  v29 = *(REMHashtagLabelCollection.labels.getter() + 16);

  v75 = static TTRLocalizableStrings.Hashtags.genericHashtagSelectionWithMenuDescription(forLabelCount:)();
  if (v29 == 2)
  {
    v73 = v27;
    v74 = v24;
    v72 = v30;
    v48 = static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionWithMenuForTwoTagsFormat.getter();
    v71 = v49;
    v87 = REMHashtagLabelCollection.labels.getter();
    sub_100058000(&unk_100781F20);
    sub_10000E188(&qword_10076DB20, &unk_100781F20);
    v50 = static REMHashtagLabelCollection.sortedLabels<A>(from:)();

    v51 = *(v50 + 16);
    if (!v51)
    {

      v35 = v77;
      goto LABEL_32;
    }

    v70 = v48;
    v80 = v28;
    v87 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v69 = v50;
    v52 = (v50 + 40);
    v83 = NSStrikethroughStyleAttributeName;
    v82 = xmmword_10062D400;
    v81 = xmmword_10062D3F0;
    v53 = v86;
    do
    {
      v58 = *(v52 - 1);
      v57 = *v52;

      v84 = sub_1000AA9A4(v58, v57, v53);
      countAndFlagsBits = String.addingHashtagPrefix()()._countAndFlagsBits;
      sub_100058000(&qword_1007708E0);
      inited = swift_initStackObject();
      *(inited + 16) = v82;
      *(inited + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(inited + 40) = 1;
      v60 = sub_100461778(inited);
      swift_setDeallocating();
      sub_1000079B4(inited + 32, &qword_1007708E8);
      sub_100058000(&unk_100776BD0);
      v61 = swift_initStackObject();
      *(v61 + 16) = v81;
      *(v61 + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(v61 + 40) = 1;
      v62 = v83;
      *(v61 + 64) = &type metadata for Bool;
      *(v61 + 72) = v62;
      *(v61 + 104) = &type metadata for Int;
      *(v61 + 80) = 1;
      v63 = v62;
      sub_100460A28(v61);
      swift_setDeallocating();
      sub_100058000(&unk_100776BE0);
      swift_arrayDestroy();
      if ((v84 & 1) == 0)
      {

        sub_1001716E8(v60);
      }

      v54 = objc_allocWithZone(NSAttributedString);
      v55 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100173810(&qword_100778A60, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v54 initWithString:v55 attributes:{isa, v69}];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v52 += 2;
      --v51;
      v53 = v86;
    }

    while (v51);
    goto LABEL_26;
  }

  if (v29 == 1)
  {
    v73 = v27;
    v74 = v24;
    v72 = v30;
    v31 = static TTRLocalizableStrings.Hashtags.hashtagSelectionDescriptionWithMenuForOneTagFormat.getter();
    v71 = v32;
    v87 = REMHashtagLabelCollection.labels.getter();
    sub_100058000(&unk_100781F20);
    sub_10000E188(&qword_10076DB20, &unk_100781F20);
    v33 = static REMHashtagLabelCollection.sortedLabels<A>(from:)();

    v34 = *(v33 + 16);
    v35 = v77;
    if (!v34)
    {

      goto LABEL_32;
    }

    v70 = v31;
    v80 = v28;
    v87 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v69 = v33;
    v36 = (v33 + 40);
    v83 = NSStrikethroughStyleAttributeName;
    v82 = xmmword_10062D400;
    v81 = xmmword_10062D3F0;
    v37 = v86;
    do
    {
      v42 = *(v36 - 1);
      v41 = *v36;

      v84 = sub_1000AA9A4(v42, v41, v37);
      countAndFlagsBits = String.addingHashtagPrefix()()._countAndFlagsBits;
      sub_100058000(&qword_1007708E0);
      v43 = swift_initStackObject();
      *(v43 + 16) = v82;
      *(v43 + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(v43 + 40) = 1;
      v44 = sub_100461778(v43);
      swift_setDeallocating();
      sub_1000079B4(v43 + 32, &qword_1007708E8);
      sub_100058000(&unk_100776BD0);
      v45 = swift_initStackObject();
      *(v45 + 16) = v81;
      *(v45 + 32) = static NSAttributedStringKey.ttrHashtagSelectionDescriptionEmphasized.getter();
      *(v45 + 40) = 1;
      v46 = v83;
      *(v45 + 64) = &type metadata for Bool;
      *(v45 + 72) = v46;
      *(v45 + 104) = &type metadata for Int;
      *(v45 + 80) = 1;
      v47 = v46;
      sub_100460A28(v45);
      swift_setDeallocating();
      sub_100058000(&unk_100776BE0);
      swift_arrayDestroy();
      if ((v84 & 1) == 0)
      {

        sub_1001716E8(v44);
      }

      v38 = objc_allocWithZone(NSAttributedString);
      v39 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100173810(&qword_100778A60, type metadata accessor for Key);
      v40 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v38 initWithString:v39 attributes:{v40, v69}];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v36 += 2;
      --v34;
      v37 = v86;
    }

    while (v34);
LABEL_26:

    v12 = v76;
    v35 = v77;
LABEL_32:
    sub_100003540(0, &qword_1007708F0);
    sub_100460A28(&_swiftEmptyArrayStorage);
    v65 = static NSAttributedString.formattedString(format:formatAttributes:attributedStringsToInsert:)();
    v2 = v78;
    v26 = v79;

    v66 = v65;
    v27 = v73;
    v24 = v74;
    goto LABEL_33;
  }

  v35 = v77;
  if (v29 > 2)
  {
    v65 = 0;
LABEL_33:
    TTRRemindersListViewModel.HashtagSelectionDescription.init(generic:preferred:)();

    v27(v26, v2);
    v67 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
    (*(*(v67 - 8) + 56))(v35, 0, 1, v67);
    goto LABEL_34;
  }

  v27(v26, v2);

  v64 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  (*(*(v64 - 8) + 56))(v35, 1, 1, v64);
LABEL_34:
  v68 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  return (*(*(v68 - 8) + 8))(v12 + v24, v68);
}

uint64_t sub_1001716E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100058000(&qword_1007708F8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_100007DD8((v25 + 8), v23);
    sub_100007DD8(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = sub_100007DD8(v25, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100171980(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100770908);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.TaggedModel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100766FA0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v39 = sub_100003E30(v14, qword_100770200);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = v4;
    v38 = v7;
    v35 = v2;
    v20 = v19;
    v41 = v19;
    *v18 = 136315138;
    if (a1)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    v22 = v11;
    v23 = v5;
    if (a1)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = a1;
    v26 = sub_100004060(v21, v24, &v41);
    v5 = v23;
    v11 = v22;

    *(v18 + 4) = v26;
    a1 = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRShowTaggedViewModelSource: canShowHashtagLabelSelector did change {newValue: %s}", v18, 0xCu);
    sub_100004758(v20);
    v2 = v35;
    v4 = v37;
    v7 = v38;

    v12 = v36;
  }

  if (*(v2 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) = a1 & 1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTaggedDataModelSourceType.latestResult.getter();
    swift_unknownObjectRelease();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000079B4(v10, &qword_100770908);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "TTRShowTaggedViewModelSource: skip refreshing view model; missing last fetch result.", v29, 2u);
      }
    }

    else
    {
      (*(v12 + 32))(v40, v10, v11);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "TTRShowTaggedViewModelSource: refreshing view model due to canShowHashtagLabelSelector change", v32, 2u);
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100599F5C(_swiftEmptyArrayStorage);
        }
      }

      REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
      v33 = v40;
      sub_100171F44(v40, v7, 1);
      (*(v5 + 8))(v7, v4);
      (*(v12 + 8))(v33, v11);
    }
  }
}

uint64_t sub_100171F44(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v87 = a3;
  v88 = a2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v86 = &v73 - v7;
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v84 = &v73 - v9;
  v85 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v94 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v11 - 8);
  v80 = &v73 - v12;
  v77 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v82 = *(v93 - 8);
  v14 = __chkstk_darwin(v93);
  v79 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v91 = &v73 - v16;
  v92 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v81 = *(v92 - 8);
  __chkstk_darwin(v92);
  v96 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v19 = *(v97 - 8);
  v20 = __chkstk_darwin(v97);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v73 - v23;
  v25 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v25 - 8);
  v27 = &v73 - v26;
  v28 = OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList;
  v29 = *(v4 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList);
  v90 = v4;
  if (v29)
  {
    v30 = v19;
    v31 = [v29 sortingStyle];
    v32 = REMRemindersListDataView.TaggedModel.taggedSmartList.getter();
    if (!v32)
    {
      if (!v31)
      {
        v89 = 1;
        v19 = v30;
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v32 = REMRemindersListDataView.TaggedModel.taggedSmartList.getter();
    if (!v32)
    {
      v89 = 1;
      goto LABEL_21;
    }

    v30 = v19;
    v31 = 0;
  }

  v33 = v32;
  v34 = [v32 sortingStyle];

  if (v31)
  {
    if (!v34)
    {
      v4 = v90;
LABEL_15:
      v89 = 0;
      v34 = v31;
LABEL_20:
      v19 = v30;

      goto LABEL_21;
    }

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
    {
      v89 = 1;
    }

    else
    {
      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

LABEL_19:
    v4 = v90;
    goto LABEL_20;
  }

  if (v34)
  {
    v89 = 0;
    goto LABEL_19;
  }

  v89 = 1;
  v4 = v90;
  v19 = v30;
LABEL_21:
  v39 = REMRemindersListDataView.TaggedModel.taggedSmartList.getter();
  v40 = *(v4 + v28);
  v41 = v4;
  *(v4 + v28) = v39;

  v95 = a1;
  REMRemindersListDataView.TaggedModel.flatModel.getter();
  REMRemindersListDataView.FlatModel.remindersCount.getter();
  v42 = *(v19 + 8);
  v42(v24, v97);
  v43 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v27, 1, v43);
  if (v45 == 1)
  {
    sub_1000079B4(v27, &qword_100769378);
    v46 = 0;
  }

  else
  {
    v46 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v44 + 8))(v27, v43);
  }

  v47 = v41 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_completedRemindersCount;
  *v47 = v46;
  *(v47 + 8) = v45 == 1;
  v48 = v96;
  REMRemindersListDataView.TaggedModel.flatModel.getter();
  v49 = REMRemindersListDataView.FlatModel.hasIncompleteOrCompletedReminders.getter();
  v42(v22, v97);
  *(v41 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasIncompleteOrCompletedReminders) = v49;
  if ((v89 & 1) != 0 || (v50 = *(v41 + v28)) == 0)
  {
    sub_10016D8C4(v48);
    if (qword_100766FA8 != -1)
    {
      swift_once();
    }

    v55 = v77;
    v56 = sub_100003E30(v77, qword_100770218);
    (*(v76 + 16))(v78, v56, v55);
    v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
    (*(*(v57 - 8) + 56))(v80, 1, 1, v57);
    v58 = v91;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v59 = v82;
    (*(v82 + 16))(v79, v58, v93);
    REMRemindersListDataView.TaggedModel.flatModel.getter();
    REMRemindersListDataView.FlatModel.reminders.getter();
    v42(v22, v97);
    v60 = v94;
    TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
    v61 = v81;
    v62 = v84;
    v63 = v92;
    (*(v81 + 16))(v84, v48, v92);
    (*(v61 + 56))(v62, 0, 1, v63);
    sub_100058000(&qword_100770900);
    v64 = v83;
    v65 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_10062D400;
    v67 = v85;
    (*(v64 + 16))(v66 + v65, v60, v85);
    v68 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v69 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v70 = type metadata accessor for TTRRemindersListViewModel.Item();
    v71 = v86;
    (*(*(v70 - 8) + 56))(v86, 1, 1, v70);
    v99[3] = v68;
    v99[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v99[0] = v69;
    sub_10000B0D8(v99, v98);
    v72 = swift_allocObject();
    *(v72 + 16) = v66;
    sub_100005FD0(v98, v72 + 24);
    *(v72 + 64) = v90;

    sub_100586238(1, v62, sub_100070528, v72, v88, v87 & 1, v71);

    sub_1000079B4(v71, &qword_100772140);
    sub_1000079B4(v62, &unk_10078A380);
    (*(v64 + 8))(v94, v67);
    (*(v59 + 8))(v91, v93);
    (*(v61 + 8))(v96, v92);

    return sub_100004758(v99);
  }

  else
  {
    v51 = v50;
    v52 = [v51 sortingStyle];
    v53 = v73;
    REMSortingStyle.dataViewSortingStyle.getter();

    sub_10057A85C();
    return (*(v74 + 8))(v53, v75);
  }
}

uint64_t sub_100172AD8()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_100172B28()
{
  v0 = sub_10056FD38();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowTaggedViewModelSource()
{
  result = qword_100770290;
  if (!qword_100770290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100172C94()
{

  sub_100058000(&qword_100769360);
  sub_10000E188(&qword_100769368, &qword_100769360);
  v1 = TTRRemindersListTreeViewModel.reminderItemsToUpdate<A>(forUpdated:)();

  v2 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v1, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100172DBC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10032CA0C(*(v0 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector));
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100172E48()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v5, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v5, v1);
    v15(v7, v1);
    return v14 & 1;
  }

  if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    return v14 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001730F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (qword_100766FA8 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_100770218);
  v6 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_unknownObjectRelease();
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    swift_unknownObjectRelease();
    v7 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_100173314()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001733BC(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 16))(v5, a1, v2);
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1001734CC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  *v4 = v5;
  v6 = *(v5 - 8);
  v4[1] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(v6 + 64));
    v4[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[4] = v8;
  v4[5] = *(v1 + 16);
  v4[6] = *(v1 + 24);
  v4[7] = swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
  return sub_100173610;
}

void sub_100173610(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[1] + 16);
  v4((*a1)[3], v3[4], *v3);
  v5 = v3[4];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *v3;
  v9 = v3[1];
  if (a2)
  {
    v4(v3[2], v3[3], v8);
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    v10 = *(v9 + 8);
    v10(v7, v8);
    v10(v5, v8);
  }

  else
  {
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t sub_100173770(uint64_t a1)
{
  result = sub_100173810(&qword_1007708C8, type metadata accessor for ShowTaggedViewModelSourceHashtagContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100173810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100173858()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_100173AD8()
{
  result = qword_100770920;
  if (!qword_100770920)
  {
    sub_100003540(255, &unk_1007758F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770920);
  }

  return result;
}

id sub_100173B4C(uint64_t *a1, id *a2, uint64_t a3)
{
  v113 = a3;
  v120 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v117 = *(v4 - 8);
  v118 = v4;
  v5 = __chkstk_darwin(v4);
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v119 = &v97 - v8;
  v9 = __chkstk_darwin(v7);
  v98 = &v97 - v10;
  __chkstk_darwin(v9);
  v114 = &v97 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v111 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v109);
  v127 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRListType.SortingCapability();
  v125 = *(v15 - 8);
  v126 = v15;
  v16 = __chkstk_darwin(v15);
  v110 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v124 = &v97 - v18;
  v112 = type metadata accessor for TTRRemindersListDefaultListType();
  v108 = *(v112 - 8);
  __chkstk_darwin(v112);
  v106 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v20 - 8);
  v105 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v22 - 8);
  v107 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v104 = *(v123 - 8);
  v24 = __chkstk_darwin(v123);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v122 = &v97 - v27;
  v28 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = enum case for TTRListType.PredefinedSmartListType.assigned(_:);
  v33 = *(v29 + 104);
  v33(v31, enum case for TTRListType.PredefinedSmartListType.assigned(_:), v28);
  v121 = a2;
  v101 = *a2;
  v34 = TTRListType.PredefinedSmartListType.smartList(in:)();
  v35 = *(v29 + 8);
  v35(v31, v28);
  if (v34)
  {
    v36 = sub_100174F2C();
    v37 = &protocol witness table for REMSmartList;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v133[2] = 0;
    v133[1] = 0;
  }

  v103 = v38;
  v133[4] = v37;
  v100 = v38 != 0;
  v133[3] = v36;
  v133[0] = v38;
  v33(v31, v32, v28);
  v102 = v34;
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  v35(v31, v28);
  v39 = v122;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v40 = v104;
  v41 = v123;
  v115 = *(v104 + 8);
  v116 = v104 + 8;
  v115(v26, v123);
  sub_1000079B4(v133, &unk_100775680);
  v42 = *(v40 + 16);
  v42(v26, v39, v41);
  type metadata accessor for TTRShowAssignedDataModelSource();
  swift_allocObject();
  v43 = v101;
  v44 = TTRShowAssignedDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v45 = v107;
  sub_1001749C4(v121, v107);
  v46 = v105;
  static REMSuggestedAttributesElector.ExcludedAttributes.nonAssignableLists.getter();
  v47 = v106;
  (*(v108 + 104))(v106, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v112);
  sub_10007786C(v45, v46, v47, v133);
  v42(v26, v39, v41);
  v48 = v124;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v49 = v133[0];
  v50 = v110;
  (*(v125 + 16))(v110, v48, v126);
  type metadata accessor for TTRShowAssignedViewModelSource();
  v51 = swift_allocObject();
  v52 = v102;

  v53 = v49;
  v112 = v44;
  v106 = v53;
  v54 = sub_100174A28(v103, v44, v53, v50, 0, v51);
  v110 = v52;

  sub_1001749C4(v121, v45);
  sub_10010BCAC(v133, v130);
  v55 = sub_100174E84(&qword_100770958, type metadata accessor for TTRShowAssignedViewModelSource);
  v56 = v127;
  sub_1001749C4(v45, v127);
  v57 = v109;
  sub_10010BCAC(v130, v56 + *(v109 + 20));
  v58 = (v56 + *(v57 + 24));
  *v58 = v54;
  v58[1] = v55;
  v59 = v130[0];
  sub_100058000(&qword_10076C230);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v132, v129, &qword_100769608);
  v61 = *(v129[5] + 8);
  *(v60 + 32) = v129[4];
  *(v60 + 40) = v61;
  sub_10000794C(&v131, v128, &qword_100769600);
  swift_retain_n();
  v62 = v59;
  swift_unknownObjectRelease();
  *(v60 + 48) = v128[3];
  sub_100004758(v128);
  sub_100004758(v129);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v63 = swift_allocObject();
  v64 = sub_1003A7F90(v62, v54, v60, v63);
  v108 = v54;

  sub_10010BD08(v130);
  sub_100174ECC(v45, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v65 = *(v57 + 28);
  v107 = v64;
  *(v56 + v65) = v64;
  v66 = v111;
  sub_100078BBC(v111);
  v109 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v67 = swift_allocObject();
  v68 = v113;
  swift_unknownObjectRetain();
  v69 = sub_1003A56E4(v66, v68, v67);
  v70 = *(v69 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v70 + 112))(ObjectType, v70))
  {
    swift_getObjectType();
    v72 = v98;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v73 = v117;
    v74 = v114;
    v75 = v72;
    v76 = v118;
    (*(v117 + 32))(v114, v75, v118);
  }

  else
  {
    v73 = v117;
    v76 = v118;
    v74 = v114;
    (*(v117 + 104))(v114, enum case for TTRRemindersListLayout.list(_:), v118);
  }

  v114 = sub_1003A4A1C(v74, v69);
  v117 = v77;
  v79 = v78;
  v81 = v80;
  (*(v73 + 8))(v74, v76);
  v118 = swift_getObjectType();
  *(v69 + 24) = *(v81 + 8);
  v121 = v79;
  swift_unknownObjectWeakAssign();
  v82 = *(v69 + 144);
  v83 = swift_getObjectType();
  v84 = *(v82 + 112);

  if (v84(v83, v82))
  {
    swift_getObjectType();
    v85 = v99;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v86 = v119;
    (*(v73 + 32))(v119, v85, v76);
  }

  else
  {
    v86 = v119;
    (*(v73 + 104))(v119, enum case for TTRRemindersListLayout.list(_:), v76);
  }

  v87 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v88 = v114;
  v119 = v88;
  v89 = sub_1003A7DE0(v69, v88, v117, v86, 0, 1, 0, v87);

  v90 = *(v81 + 32);
  v91 = v89;
  v90(v89, &off_100723D78, v118, v81);
  sub_100174E84(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_100174E84(&qword_100770968, type metadata accessor for TTRShowAssignedViewModelSource);

  v92 = v91;
  dispatch thunk of TTRShowAssignedDataModelSource.delegate.setter();

  sub_10056FEB0(v93, &off_10071A9B0);

  v107[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v134, v130, &qword_100769600);
  v94 = v130[4];
  swift_unknownObjectRelease();
  *(v94 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v130);
  sub_10000794C(&v135, v130, &qword_100769608);
  swift_getObjectType();
  sub_100174E84(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v130);
  v95 = v120;
  v120[3] = v109;
  v95[4] = &off_1007189D8;

  swift_unknownObjectRelease();
  *v95 = v69;
  (*(v125 + 8))(v124, v126);
  v115(v122, v123);
  sub_100174ECC(v127, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v133);
  return v92;
}

id TTRIShowAssignedAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowAssignedAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowAssignedAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowAssignedAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001749C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100174A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v41 = a3;
  v11 = *a6;
  v43 = a4;
  v44 = v11;
  v45 = type metadata accessor for REMAnalyticsEvent();
  v12 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v42 = type metadata accessor for TTRListType.SortingCapability();
  v18 = *(v42 - 8);
  __chkstk_darwin(v42);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList) = 0;
  v22 = a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_completedRemindersCount;
  *v22 = 0;
  v22[8] = 1;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_hasCompletedReminders) = 2;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(a6 + v21) = a1;
  v23 = (a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_assignedDataModelSource);
  *v23 = a2;
  v23[1] = &protocol witness table for TTRShowAssignedDataModelSource;
  *(a6 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_hasDefaultNewReminderButton) = a5;
  (*(v18 + 16))(v20, a4);
  v24 = a1;

  v26 = sub_1003A649C(v25, v41, v20, a6);

  sub_10015026C(v17);
  v27 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v27 - 8) + 56))(v17, 0, 1, v27);
  sub_10056F540(v17);
  sub_1000079B4(v17, &unk_10078A380);
  type metadata accessor for TTRUserDefaults();
  v28 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v29 = sub_100058000(&qword_100770980);
  v30 = &v14[*(v29 + 48)];
  v31 = &v14[*(v29 + 80)];
  v32 = enum case for REMRemindersOpenUserOperation.SmartListType.assigned(_:);
  v33 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v33 - 8) + 104))(v14, v32, v33);
  v34 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v35 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v35 - 8) + 104))(v14, v34, v35);
  *v30 = TTRUserDefaults.activitySessionId.getter();
  v30[1] = v36;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v31 = _typeName(_:qualified:)();
  v31[1] = v37;
  v38 = v45;
  (*(v12 + 104))(v14, enum case for REMAnalyticsEvent.openListUserOperation(_:), v45);
  REMAnalyticsManager.post(event:)();

  (*(v18 + 8))(v43, v42);
  (*(v12 + 8))(v14, v38);
  return v26;
}

uint64_t sub_100174E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100174ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100174F2C()
{
  result = qword_100770978;
  if (!qword_100770978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100770978);
  }

  return result;
}

uint64_t sub_100174F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100174FCC()
{
  v1 = sub_100058000(&qword_100770AA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2];
  v4 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
  swift_beginAccess();
  sub_10000794C(v0 + v7, v3, &qword_100770AA8);
  v8 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v3, 1, v8);
  sub_1000079B4(v3, &qword_100770AA8);
  if (v10 != 1)
  {
    static Date.now.getter();
    v9 = 0;
  }

  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v6, v9, 1, v11);
  v12 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange;
  swift_beginAccess();
  sub_10017734C(v6, v0 + v12);
  return swift_endAccess();
}

uint64_t sub_1001751B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49[1] = a2;
  v5 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49[6] = v7;
  v51 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAutoCategorizationOverlayView();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = __chkstk_darwin(v8);
  v49[0] = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = v49 - v11;
  v12 = type metadata accessor for TTRRemindersListLayout();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100770AA8);
  __chkstk_darwin(v16 - 8);
  v18 = v49 - v17;
  v19 = sub_10057E4BC();
  v49[4] = v20;
  v49[5] = v19;
  v49[2] = v22;
  v49[3] = v21;
  v52 = a1;
  sub_1001770EC(a1, v18);
  v50 = v6;
  (*(v6 + 56))(v18, 0, 1, v5);
  v23 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
  swift_beginAccess();
  sub_100177150(v18, v3 + v23);
  swift_endAccess();
  sub_100174FCC();
  sub_1000079B4(v18, &qword_100770AA8);
  (*(v13 + 104))(v15, enum case for TTRRemindersListLayout.list(_:), v12);
  sub_1001771C0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock != v62 || v57 != v63)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v13 + 8))(v15, v12);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v51;
  sub_1001770EC(v52, v51);
  v26 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  sub_100177218(v25, v27 + v26);
  v28 = v53;
  TTRAutoCategorizationOverlayView.init(titleString:subtitleString:shouldShowArrow:tapHandler:)();
  v29 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController;
  v30 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (v30)
  {
    v32 = v54;
    v31 = v55;
    (*(v54 + 16))(v49[0], v28, v55);
    v33 = v30;
    dispatch thunk of UIHostingController.rootView.setter();
  }

  else
  {
    v34 = sub_100175B10(v28);
    v35 = *(v3 + v29);
    *(v3 + v29) = v34;

    v36 = objc_opt_self();
    v60 = sub_1001772E0;
    v61 = v3;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_10001047C;
    v59 = &unk_100718A38;
    v37 = _Block_copy(&aBlock);

    [v36 animateWithDuration:0 delay:v37 usingSpringWithDamping:0 initialSpringVelocity:0.24 options:0.0 animations:0.2 completion:0.0];
    _Block_release(v37);
    v32 = v54;
    v31 = v55;
  }

  v38 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer;
  v39 = *(v3 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer);
  if (v39)
  {
    [v39 invalidate];
  }

  v40 = 10.0;
  if (!UIAccessibilityIsSwitchControlRunning() && (static UIAccessibility.ttriIsVoiceControlRunning.getter() & 1) == 0)
  {
    if (static UIAccessibility.ttriIsFullKeyboardAccessRunning.getter())
    {
      v40 = 10.0;
    }

    else
    {
      v40 = 3.0;
    }
  }

  v41 = swift_allocObject();
  swift_weakInit();
  v60 = sub_1001772E8;
  v61 = v41;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_1001762CC;
  v59 = &unk_100718A60;
  v42 = _Block_copy(&aBlock);
  v43 = objc_opt_self();

  v44 = [v43 timerWithTimeInterval:0 repeats:v42 block:v40];
  _Block_release(v42);

  v45 = *(v3 + v38);
  *(v3 + v38) = v44;
  v46 = v44;

  v47 = [objc_opt_self() currentRunLoop];
  [v47 addTimer:v46 forMode:NSRunLoopCommonModes];

  return (*(v32 + 8))(v28, v31);
}

void sub_1001758A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
    if (v4)
    {
      v5 = Strong;
      v6 = v4;
      v7 = [v6 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 isHidden];

        if ((v9 & 1) == 0)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = *(v10 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
            v12 = *(v10 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
            sub_10000C36C((v10 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v11);
            (*(v12 + 1128))(a2, v11, v12);
            swift_unknownObjectRelease();
          }

          v13 = objc_opt_self();
          v21 = sub_10017743C;
          v22 = v5;
          v14 = v5;
          aBlock = _NSConcreteStackBlock;
          v18 = 1107296256;
          v19 = sub_10001047C;
          v20 = &unk_100718AD8;
          v15 = _Block_copy(&aBlock);

          v21 = sub_100177454;
          v22 = v14;
          aBlock = _NSConcreteStackBlock;
          v18 = 1107296256;
          v19 = sub_100174F78;
          v20 = &unk_100718B00;
          v16 = _Block_copy(&aBlock);

          [v13 animateWithDuration:0 delay:v15 usingSpringWithDamping:v16 initialSpringVelocity:0.24 options:0.0 animations:0.2 completion:0.0];
          _Block_release(v16);
          _Block_release(v15);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_100175B10(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRAutoCategorizationOverlayView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = Strong;
  (*(v6 + 16))(v8, a1, v5);
  v11 = objc_allocWithZone(sub_100058000(&qword_100770AC0));
  v12 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  UIHostingController.safeAreaRegions.setter();
  v13 = v12;
  result = [v13 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v13 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  [result setAlpha:0.0];

  result = [v13 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = result;
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor:v18];

  [v10 addChildViewController:v13];
  result = [v10 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = result;
  result = [v13 view];
  if (result)
  {
    v20 = result;
    [v19 addSubview:result];

    [v13 didMoveToParentViewController:v10];
    v21 = [v13 view];

    if (v21)
    {
      v22 = [v10 view];
      if (v22)
      {
        v23 = v22;
        v24 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround);
        v25 = [v21 bottomAnchor];
        if (v24)
        {
          v26 = [v23 keyboardLayoutGuide];
          v27 = [v26 topAnchor];

          v28 = [v25 constraintEqualToAnchor:v27 constant:-10.0];
        }

        else
        {
          v29 = [v23 layoutMarginsGuide];
          v27 = [v29 bottomAnchor];

          v28 = [v25 constraintEqualToAnchor:v27 constant:-10.0 - *(v2 + 32)];
        }

        v30 = v28;

        v31 = *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint);
        *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint) = v30;
        v32 = v30;

        v48 = objc_opt_self();
        sub_100058000(&qword_10076B780);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_10062D450;
        *(v33 + 32) = v32;
        v34 = [v21 centerXAnchor];
        v35 = [v23 layoutMarginsGuide];
        v36 = [v35 centerXAnchor];

        v37 = [v34 constraintEqualToAnchor:v36];
        *(v33 + 40) = v37;
        v38 = [v21 leadingAnchor];
        v39 = [v23 layoutMarginsGuide];
        v40 = [v39 leadingAnchor];

        v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40];
        *(v33 + 48) = v41;
        v42 = [v21 trailingAnchor];
        v43 = [v23 layoutMarginsGuide];
        v44 = [v43 trailingAnchor];

        v45 = [v42 constraintLessThanOrEqualToAnchor:v44];
        *(v33 + 56) = v45;
        sub_100177300();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v48 activateConstraints:isa];

        swift_unknownObjectRelease();
        return v13;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10017612C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v9 = sub_1001772F0;
    v10 = v1;
    aBlock = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_10001047C;
    v8 = &unk_100718A88;
    v3 = _Block_copy(&aBlock);

    v9 = sub_1001772F8;
    v10 = v1;
    aBlock = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_100174F78;
    v8 = &unk_100718AB0;
    v4 = _Block_copy(&aBlock);

    [v2 animateWithDuration:0 delay:v3 usingSpringWithDamping:v4 initialSpringVelocity:0.24 options:0.0 animations:0.2 completion:0.0];
    _Block_release(v4);
    _Block_release(v3);
  }

  return result;
}

void sub_1001762CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100176334()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController;
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 setHidden:1];

      v7 = [v4 view];
      if (v7)
      {
        [v7 removeFromSuperview];

        [v4 willMoveToParentViewController:0];
        [v4 removeFromParentViewController];

        v8 = *(v0 + v2);
        *(v0 + v2) = 0;

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

void sub_100176458()
{
  v1 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround;
  if ((*(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
    if (v2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = v2;
        v6 = [v4 view];
        if (v6)
        {
          v19 = v6;
          v7 = *(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint);
          if (v7)
          {
            v8 = v7;
            [v8 setActive:0];
            v9 = [v5 view];
            if (v9)
            {
              v10 = v9;
              v11 = [v9 bottomAnchor];

              v12 = [v19 keyboardLayoutGuide];
              v13 = [v12 topAnchor];

              v14 = [v11 constraintEqualToAnchor:v13 constant:-10.0];
              [v14 setActive:1];
              v15 = objc_opt_self();
              v16 = swift_allocObject();
              *(v16 + 16) = v19;
              aBlock[4] = sub_100177418;
              aBlock[5] = v16;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10001047C;
              aBlock[3] = &unk_100718B50;
              v17 = _Block_copy(aBlock);
              v18 = v19;

              [v15 animateWithDuration:v17 animations:0.2];

              swift_unknownObjectRelease();
              _Block_release(v17);
              *(v0 + v1) = 1;
            }

            else
            {
              __break(1u);
            }
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_100176730()
{
  v1 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for Date();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  __chkstk_darwin(v9);
  v40 = &v36 - v10;
  v11 = sub_100058000(&qword_100770AA8);
  __chkstk_darwin(v11 - 8);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
  swift_beginAccess();
  sub_10000794C(v0 + v20, v15, &qword_100770AA8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000079B4(v15, &qword_100770AA8);
LABEL_11:
    v34 = 0;
    return v34 & 1;
  }

  sub_100177218(v15, v19);
  v21 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange;
  swift_beginAccess();
  sub_10000794C(v0 + v21, v3, &qword_1007757F0);
  v23 = v41;
  v22 = v42;
  if ((*(v41 + 48))(v3, 1, v42) == 1)
  {
    sub_1001773BC(v19);
    sub_1000079B4(v3, &qword_1007757F0);
    goto LABEL_11;
  }

  v24 = v40;
  (*(v23 + 32))(v40, v3, v22);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v23 + 8))(v24, v22);
LABEL_10:
    sub_1001773BC(v19);
    goto LABEL_11;
  }

  v37 = Strong;
  static Date.+ infix(_:_:)();
  v26 = v39;
  static Date.now.getter();
  v27 = static Date.> infix(_:_:)();
  v28 = v26;
  v29 = *(v23 + 8);
  v29(v28, v22);
  v29(v8, v22);
  if ((v27 & 1) == 0)
  {
    swift_unknownObjectRelease();
    v29(v40, v22);
    goto LABEL_10;
  }

  v30 = v38;
  (*(v17 + 56))(v38, 1, 1, v16);
  swift_beginAccess();
  sub_100177150(v30, v0 + v20);
  swift_endAccess();
  sub_100174FCC();
  sub_1000079B4(v30, &qword_100770AA8);
  v31 = v22;
  v32 = *(v37 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v33 = *(v37 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v37 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v32);
  v34 = (*(v33 + 1128))(v19, v32, v33);
  swift_unknownObjectRelease();
  v29(v40, v31);
  sub_1001773BC(v19);
  return v34 & 1;
}

void sub_100176C30(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setHidden:0];

  v5 = [v2 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 setAlpha:1.0];
}

void sub_100176D14(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 setAlpha:0.0];
    }
  }
}

void sub_100176D8C(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController;
  v3 = *(a2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController);
  if (!v3)
  {
    return;
  }

  v5 = v3;
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  [v6 setHidden:1];

  v8 = [v5 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  [v8 removeFromSuperview];

  [v5 willMoveToParentViewController:0];
  [v5 removeFromParentViewController];

  v9 = *(a2 + v2);
  *(a2 + v2) = 0;
}

uint64_t sub_100176E9C()
{
  sub_10003B788(v0 + 16);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange, &qword_1007757F0);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary, &qword_100770AA8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIAutoCategorizationOverlayController()
{
  result = qword_1007709E0;
  if (!qword_1007709E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100176FBC()
{
  sub_100004B08(319, &qword_100792E60, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_100004B08(319, &unk_1007709F0, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001770EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177150(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100770AA8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001771C0()
{
  result = qword_100770AB0;
  if (!qword_100770AB0)
  {
    type metadata accessor for TTRRemindersListLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770AB0);
  }

  return result;
}

uint64_t sub_100177218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10017727C()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1001758A0(v2, v3);
}

unint64_t sub_100177300()
{
  result = qword_10076BAD0;
  if (!qword_10076BAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BAD0);
  }

  return result;
}

uint64_t sub_10017734C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007757F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001773BC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017747C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100770AC8);
  v1 = sub_100003E30(v0, qword_100770AC8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void (*TTRListDetailInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

char *TTRListDetailInteractor.__allocating_init(editor:undoManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_10017B700(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

char *TTRListDetailInteractor.init(editor:undoManager:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_10017B700(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1001776DC(uint64_t a1)
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

uint64_t *TTRListDetailInteractor.deinit()
{
  v1 = *v0;
  if (*(v0 + *(*v0 + 112)))
  {
    sub_100003540(0, &qword_100788D40);

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788((v0 + 2));
    (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTRListDetailInteractor.__deallocating_deinit()
{
  TTRListDetailInteractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t TTRListDetailInteractor.hasUnsavedChanges.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v15 - v6;
  v8 = *(v0 + *(v1 + 120));
  v9 = *(v2 + 24);
  swift_unknownObjectRetain();
  v9(v3, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  if (v8)
  {
    v15[0] = v11;
    v15[1] = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v13 = v12 ^ 1;
  }

  else
  {
    swift_unknownObjectRelease();
    v13 = 1;
  }

  return v13 & 1;
}

Swift::Void __swiftcall TTRListDetailInteractor.update(name:)(Swift::String name)
{
  v2 = v1;
  v3 = *v1;
  v4 = String.validatedListName()();
  (*(*(v3 + 88) + 56))(v4);

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v2[3];
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

uint64_t TTRListDetailInteractor.update(color:)(uint64_t a1)
{
  (*(*(*v1 + 88) + 64))(a1, *(*v1 + 80));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTRListDetailInteractor.update(badgeEmblem:)(__C::REMListBadgeEmblem badgeEmblem)
{
  (*(*(*v1 + 88) + 72))(badgeEmblem._rawValue, *(*v1 + 80));
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRListDetailInteractor.update(badgeEmoji:)(Swift::String badgeEmoji)
{
  (*(*(*v1 + 88) + 80))(badgeEmoji._countAndFlagsBits, badgeEmoji._object, *(*v1 + 80));
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor.update(filter:)(uint64_t a1)
{
  (*(*(*v1 + 88) + 32))(&v11, *(*v1 + 80));
  if (v12)
  {
    sub_100005FD0(&v11, v13);
    v3 = v14;
    v4 = v15;
    sub_10000C36C(v13, v14);
    (*(v4 + 8))(a1, v3, v4);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v1[3];
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    sub_100004758(v13);
  }

  else
  {
    sub_1000079B4(&v11, &qword_100770AE0);
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100770AC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRListDetailInteractor: failed to update filter; missing editor.filterEditingContext", v10, 2u);
    }
  }
}

void TTRListDetailInteractor.update(listType:)(uint64_t a1)
{
  (*(*(*v1 + 88) + 40))(&v11, *(*v1 + 80));
  if (v12)
  {
    sub_100005FD0(&v11, v13);
    v3 = v14;
    v4 = v15;
    sub_10000C36C(v13, v14);
    (*(v4 + 8))(a1, v3, v4);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v1[3];
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    sub_100004758(v13);
  }

  else
  {
    sub_1000079B4(&v11, &qword_100770AE8);
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100770AC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRListDetailInteractor: failed to update filter; missing editor.listTypeEditingContext", v10, 2u);
    }
  }
}

Swift::Void __swiftcall TTRListDetailInteractor.removeExistingSections()()
{
  (*(*(*v0 + 88) + 48))(&v7, *(*v0 + 80));
  if (v8)
  {
    sub_100005FD0(&v7, v9);
    v1 = v10;
    v2 = v11;
    sub_10000C36C(v9, v10);
    (*(v2 + 8))(v1, v2);
    sub_100004758(v9);
  }

  else
  {
    sub_1000079B4(&v7, &qword_100770AF0);
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100770AC8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "TTRListDetailInteractor: failed to remove existing sections; missing editor.sectionsEditingContext", v6, 2u);
    }
  }
}

Swift::Int TTRListDetailSavedObjectID.ObjectType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t TTRListDetailSavedObjectID.undoNavigationEditingTarget.getter(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = &qword_100770978;
    }

    else
    {
      v3 = &qword_100770AF8;
    }
  }

  else
  {
    v3 = &qword_10076ABC0;
  }

  sub_100003540(0, v3);
  sub_100003540(0, &qword_10076BA50);
  swift_getMetatypeMetadata();
  v4 = a1;
  return TTRUndoNavigationEditingTarget.init(id:itemType:)();
}

void TTRListEditor.listTypeEditingContext.getter(uint64_t **a1@<X8>)
{
  v3 = *v1;
  v4 = TTRListEditor.changeItem.getter();
  v5 = [v4 accountCapabilities];
  v6 = [v5 supportsGroceriesList];

  if (v6)
  {

    v7 = &protocol witness table for TTRListEditor;
  }

  else
  {
    v3 = 0;
    v7 = 0;
    v1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v3;
  a1[4] = v7;
  *a1 = v1;
}

id REMListChangeItem.canMakeIntoGroceriesList.getter()
{
  v1 = [v0 accountCapabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

void TTRListEditor.sectionsEditingContext.getter(uint64_t **a1@<X8>)
{
  v3 = *v1;
  v4 = TTRListEditor.changeItem.getter();
  v5 = [v4 accountCapabilities];

  LODWORD(v4) = [v5 supportsSections];
  if (v4)
  {

    v6 = &protocol witness table for TTRListEditor;
  }

  else
  {
    v3 = 0;
    v6 = 0;
    v1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v3;
  a1[4] = v6;
  *a1 = v1;
}

id TTRListEditor.listDetailSave(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = TTRListEditor.changeItem.getter();
  v5 = [v4 saveRequest];

  sub_100003540(0, &qword_100777780);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = sub_10017BC44;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100009DE4;
  v12[3] = &unk_100718BA0;
  v8 = _Block_copy(v12);
  sub_10008E7EC(a1);

  [v5 saveWithQueue:v6 completion:v8];
  _Block_release(v8);

  v9 = TTRListEditor.changeItem.getter();
  v10 = [v9 objectID];

  return v10;
}

void TTRListEditor.edit(listType:)()
{
  v0 = TTRRemindersListListType.shouldCategorizeGroceryItems.getter() & 1;

  TTRListEditor.edit(shouldCategorizeGroceryItems:)(v0);
}

uint64_t sub_100178A4C@<X0>(uint64_t *a1@<X8>)
{
  result = TTRListEditor.changeItem.getter();
  *a1 = result;
  return result;
}

void sub_100178A78(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = TTRListEditor.changeItem.getter();
  v7 = [v6 accountCapabilities];
  v8 = [v7 supportsGroceriesList];

  if (v8)
  {

    v9 = &protocol witness table for TTRListEditor;
  }

  else
  {
    a1 = 0;
    v9 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = a1;
  a2[4] = v9;
  *a2 = v5;
}

void sub_100178B18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = TTRListEditor.changeItem.getter();
  v7 = [v6 accountCapabilities];

  LODWORD(v6) = [v7 supportsSections];
  if (v6)
  {

    v8 = &protocol witness table for TTRListEditor;
  }

  else
  {
    a1 = 0;
    v8 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = a1;
  a2[4] = v8;
  *a2 = v5;
}

uint64_t REMListChangeItem.shouldUseItemWording.getter()
{
  REMListChangeItem.ttrGroceryContext.getter();
  ShouldCategorizeGrocery = v3;
  if (v3)
  {
    sub_10000C36C(v2, v3);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v2);
  }

  else
  {
    sub_1000079B4(v2, &qword_1007757E0);
  }

  return ShouldCategorizeGrocery & 1;
}

id REMListChangeItem.hasExistingSections.getter()
{
  v1 = v0;
  result = [v0 sectionsContextChangeItem];
  if (result)
  {
    v3 = result;
    v4 = [v1 saveRequest];
    v5 = [v4 store];

    v19 = 0;
    v6 = [v5 fetchListSectionsForListSectionContextChangeItem:v3 error:&v19];

    v7 = v19;
    if (v6)
    {
      sub_100003540(0, &qword_10076E8E8);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v7;

      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v10 != 0);
    }

    else
    {
      v11 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100766FB0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003E30(v12, qword_100770AC8);
      v13 = v1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = [v13 objectID];
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "REMListChangeItem#hasExistingSections : Failed to fetch sections in list {listID: %@}", v16, 0xCu);
        sub_1000079B4(v17, &unk_10076DF80);
      }

      return 0;
    }
  }

  return result;
}

id sub_10017902C()
{
  v1 = [*v0 accountCapabilities];
  v2 = [v1 supportsGroceriesList];

  return v2;
}

uint64_t sub_10017907C()
{
  REMListChangeItem.ttrGroceryContext.getter();
  ShouldCategorizeGrocery = v3;
  if (v3)
  {
    sub_10000C36C(v2, v3);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v2);
  }

  else
  {
    sub_1000079B4(v2, &qword_1007757E0);
  }

  return ShouldCategorizeGrocery & 1;
}

void TTRSmartListEditor.filterEditingContext.getter(uint64_t **a1@<X8>)
{
  v3 = *v1;
  v4 = TTRSmartListEditor.changeItem.getter();
  v5 = [v4 customContext];

  if (v5)
  {

    v6 = &protocol witness table for TTRSmartListEditor;
  }

  else
  {
    v1 = 0;
    v3 = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v1;
  a1[3] = v3;
  a1[4] = v6;
}

id TTRSmartListEditor.listDetailSave(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = TTRSmartListEditor.changeItem.getter();
  v5 = [v4 saveRequest];

  sub_100003540(0, &qword_100777780);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = sub_10017C0F4;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100009DE4;
  v12[3] = &unk_100718BF0;
  v8 = _Block_copy(v12);
  sub_10008E7EC(a1);

  [v5 saveWithQueue:v6 completion:v8];
  _Block_release(v8);

  v9 = TTRSmartListEditor.changeItem.getter();
  v10 = [v9 objectID];

  return v10;
}

void sub_100179368(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100770AC8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_100004060(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error saving list: %s", v6, 0xCu);
      sub_100004758(v7);
    }

    if (a2)
    {
LABEL_7:
      a2();
    }
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100770AC8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "List saved!", v14, 2u);
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1001795A8@<X0>(uint64_t *a1@<X8>)
{
  result = TTRSmartListEditor.changeItem.getter();
  *a1 = result;
  return result;
}

void sub_1001795D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = TTRSmartListEditor.changeItem.getter();
  v7 = [v6 customContext];

  if (v7)
  {

    v8 = &protocol witness table for TTRSmartListEditor;
  }

  else
  {
    v5 = 0;
    a1 = 0;
    v8 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v5;
  a2[3] = a1;
  a2[4] = v8;
}

uint64_t REMSmartListChangeItem.name.getter()
{
  v1 = [v0 customContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 name];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100179808(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v4 *a2];

  return v5;
}

uint64_t sub_100179880()
{
  v1 = [*v0 customContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 name];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100179930(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = [*v4 *a3];
  v7 = [v6 *a4];

  return v7;
}

void TTRListDetailInteractor<>.update(hashtags:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D088);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D038);
  v10 = __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v29 - v13;
  __chkstk_darwin(v12);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.hashtags.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D038);
  sub_10000794C(v32, &v8[v20], &qword_10076D038);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D038);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D038);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v14, &qword_10076D038);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D038);
    (*(v3 + 8))(v14, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D088);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D090, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D038);
  v28(v14, v2);
  sub_1000079B4(v8, &qword_10076D038);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D038);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:hashtags:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(date:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D098);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D030);
  v10 = __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v29 - v13;
  __chkstk_darwin(v12);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.date.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D030);
  sub_10000794C(v32, &v8[v20], &qword_10076D030);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D030);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D030);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v14, &qword_10076D030);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D030);
    (*(v3 + 8))(v14, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D098);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D0A0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D030);
  v28(v14, v2);
  sub_1000079B4(v8, &qword_10076D030);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D030);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:date:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(time:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D0A8);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D028);
  v10 = __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v29 - v13;
  __chkstk_darwin(v12);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.time.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D028);
  sub_10000794C(v32, &v8[v20], &qword_10076D028);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D028);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D028);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v14, &qword_10076D028);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D028);
    (*(v3 + 8))(v14, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D0A8);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D0B0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D028);
  v28(v14, v2);
  sub_1000079B4(v8, &qword_10076D028);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D028);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:time:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(priorities:)(uint64_t a1)
{
  v2 = v1;
  v4 = TTRSmartListEditor.changeItem.getter();
  v5 = [v4 customContext];

  if (!v5 || (v13 = REMSmartListCustomContextChangeItem.filter.getter(), v5, (v6 = v13) == 0))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v6 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  v14 = v6;
  v7 = REMCustomSmartListFilterDescriptor.priorities.getter();
  if (!v7)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

LABEL_13:
    type metadata accessor for REMCustomSmartListFilterDescriptor();

    v9 = v14;
    v10 = REMCustomSmartListFilterDescriptor.__allocating_init(source:priorities:)();
    TTRSmartListEditor.edit(filter:)();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (!a1)
  {

    goto LABEL_13;
  }

  v8 = sub_100126864(v7, a1);

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
}

void TTRListDetailInteractor<>.update(flagged:)(int a1)
{
  v2 = v1;
  v4 = TTRSmartListEditor.changeItem.getter();
  v5 = [v4 customContext];

  if (!v5 || (v12 = REMSmartListCustomContextChangeItem.filter.getter(), v5, (v6 = v12) == 0))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v6 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  v13 = v6;
  v7 = REMCustomSmartListFilterDescriptor.flagged.getter();
  if (v7 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_12;
    }
  }

  else if (a1 != 2 && ((v7 ^ a1) & 1) == 0)
  {
LABEL_12:

    return;
  }

  type metadata accessor for REMCustomSmartListFilterDescriptor();
  v8 = v13;
  v9 = REMCustomSmartListFilterDescriptor.__allocating_init(source:flagged:)();
  TTRSmartListEditor.edit(filter:)();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

void TTRListDetailInteractor<>.update(location:)(uint64_t a1)
{
  v32 = a1;
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076D0B8);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100058000(&qword_10076D020);
  v10 = __chkstk_darwin(v9 - 8);
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v29 - v13;
  __chkstk_darwin(v12);
  v16 = v29 - v15;
  v31 = v1;
  v29[1] = *(v1 + 32);
  v17 = TTRSmartListEditor.changeItem.getter();
  v18 = [v17 customContext];

  if (!v18 || (v19 = REMSmartListCustomContextChangeItem.filter.getter(), v18, !v19))
  {
    type metadata accessor for REMCustomSmartListFilterDescriptor();
    v19 = REMCustomSmartListFilterDescriptor.__allocating_init()();
  }

  REMCustomSmartListFilterDescriptor.location.getter();
  v20 = *(v6 + 48);
  sub_10000794C(v16, v8, &qword_10076D020);
  sub_10000794C(v32, &v8[v20], &qword_10076D020);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D020);
    if (v21(&v8[v20], 1, v2) == 1)
    {

      sub_1000079B4(v8, &qword_10076D020);
      return;
    }

    goto LABEL_9;
  }

  sub_10000794C(v8, v14, &qword_10076D020);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_1000079B4(v16, &qword_10076D020);
    (*(v3 + 8))(v14, v2);
LABEL_9:
    sub_1000079B4(v8, &qword_10076D0B8);
    goto LABEL_10;
  }

  (*(v3 + 32))(v5, &v8[v20], v2);
  sub_10017BC60(&qword_10076D0C0, &type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v5, v2);
  sub_1000079B4(v16, &qword_10076D020);
  v28(v14, v2);
  sub_1000079B4(v8, &qword_10076D020);
  if (v27)
  {

    return;
  }

LABEL_10:
  type metadata accessor for REMCustomSmartListFilterDescriptor();
  sub_10000794C(v32, v30, &qword_10076D020);
  v22 = v19;
  v23 = REMCustomSmartListFilterDescriptor.__allocating_init(source:location:)();
  TTRSmartListEditor.edit(filter:)();
  v24 = v31;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(ObjectType, v25);
    swift_unknownObjectRelease();
  }
}

double sub_10017AF98@<D0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100766FB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100770AC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id TTRTemplateEditor.listDetailSave(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = TTRTemplateEditor.changeItem.getter();
  v5 = [v4 saveRequest];

  sub_100003540(0, &qword_100777780);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = sub_10017BCA8;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100009DE4;
  v12[3] = &unk_100718C40;
  v8 = _Block_copy(v12);
  sub_10008E7EC(a1);

  [v5 saveWithQueue:v6 completion:v8];
  _Block_release(v8);

  v9 = TTRTemplateEditor.changeItem.getter();
  v10 = [v9 objectID];

  return v10;
}

void sub_10017B204(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100770AC8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.rem_errorDescription.getter();
      v10 = sub_100004060(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save template: {error: %s}", v6, 0xCu);
      sub_100004758(v7);

      if (!a2)
      {
        return;
      }
    }

    else
    {

      if (!a2)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (qword_100766FB0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100770AC8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Template saved!", v14, 2u);
  }

  if (a2)
  {
LABEL_12:
    a2();
  }
}

uint64_t sub_10017B474@<X0>(uint64_t *a1@<X8>)
{
  result = TTRTemplateEditor.changeItem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10017B594()
{
  v1 = [*v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10017B5EC()
{
  v1 = [*v0 badge];

  return v1;
}

uint64_t sub_10017B624(const char *a1)
{
  if (qword_100766FB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100770AC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, a1, v5, 2u);
  }

  return 0;
}

char *sub_10017B700(uint64_t a1, void *a2)
{
  v3 = v2;
  v36 = *v3;
  v6 = *(v36 + 88);
  v7 = *(v36 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  *&v3[*(*v3 + 112)] = 0;
  (*(v6 + 24))(v7, v6);
  (*(*(v7 - 8) + 16))(&v3[*(*v3 + 104)], a1, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = AssociatedConformanceWitness[7](AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = &v3[*(*v3 + 128)];
  *v16 = v15;
  v16[1] = v17;
  v3[*(*v3 + 136)] = AssociatedConformanceWitness[11](AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
  [AssociatedConformanceWitness[4](AssociatedTypeWitness AssociatedConformanceWitness)];
  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    v18 = v37;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100770AC8);
    v20 = v35;
    (*(v9 + 16))(v35, v13, AssociatedTypeWitness);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v9;
      v24 = v20;
      v25 = v23;
      v26 = swift_slowAlloc();
      v34 = a2;
      v27 = v26;
      *v25 = 138412290;
      v28 = AssociatedConformanceWitness[5](AssociatedTypeWitness, AssociatedConformanceWitness);
      v29 = v33;
      (*(v33 + 8))(v24, AssociatedTypeWitness);
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v25, 0xCu);
      sub_1000079B4(v27, &unk_10076DF80);
      a2 = v34;

      v18 = 0;
      v9 = v29;
    }

    else
    {

      (*(v9 + 8))(v20, AssociatedTypeWitness);
      v18 = 0;
    }
  }

  *&v3[*(*v3 + 120)] = v18;
  v30 = NSUndoManager.observeChanges<A>(target:handler:)();

  (*(v9 + 8))(v13, AssociatedTypeWitness);
  *&v3[*(*v3 + 112)] = v30;

  return v3;
}

uint64_t sub_10017BC60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10017BCCC()
{
  result = qword_100770B78;
  if (!qword_100770B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770B78);
  }

  return result;
}

uint64_t sub_10017BEB8()
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

uint64_t assignWithCopy for TTRListDetailSavedObjectID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRListDetailSavedObjectID(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListDetailSavedObjectID(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for TTRListDetailSavedObjectID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017C0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v10 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v28 - v15;
  v17 = sub_1000AA040(a1, a2);
  result = 0;
  if (v17)
  {
    v19 = REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()();
    object = v19._object;
    countAndFlagsBits = v19._countAndFlagsBits;
    LOBYTE(v29) = REMRemindersListDataView.SortingStyle.isEqualIgnoringDirection(_:)() & 1;
    v29 = v29;
    v28[1] = sub_100003540(0, &qword_10076BA60);
    v32 = v6;
    v20 = *(v11 + 16);
    v20(v16, a3, v10);
    v20(v13, a1, v10);
    v21 = *(v11 + 80);
    v22 = (v21 + 16) & ~v21;
    v23 = (v12 + v21 + v22) & ~v21;
    v24 = swift_allocObject();
    v25 = *(v11 + 32);
    v25(v24 + v22, v16, v10);
    v25(v24 + v23, v13, v10);
    v26 = (v24 + ((v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v27 = v34;
    *v26 = v33;
    v26[1] = v27;

    result = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  *v35 = result;
  return result;
}

uint64_t sub_10017C34C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v19 = a3;
  v7 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *a6, v11, v13);
  sub_10017D308(&qword_100770EA8);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    REMRemindersListDataView.SortingStyle.flipped()();
    v19(v10);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

UIMenu sub_10017C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100058000(&qword_100770EB0);
  v4 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = 4 * v6;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100633540;
  v8 = *(v5 + 104);
  v8(v18 + v7, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v4);
  v9 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v10 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v11 = *(*(v10 - 8) + 104);
  v11(v18 + v7 + v6, v9, v10);
  v8(v18 + v7 + v6, enum case for REMRemindersListDataView.SortingStyle.displayDate(_:), v4);
  v11(v18 + v7 + 2 * v6, v9, v10);
  v8(v18 + v7 + 2 * v6, enum case for REMRemindersListDataView.SortingStyle.creationDate(_:), v4);
  v6 *= 3;
  v11(v18 + v7 + v6, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v10);
  v8(v18 + v7 + v6, enum case for REMRemindersListDataView.SortingStyle.priority(_:), v4);
  v11(v18 + v7 + v17, v9, v10);
  v8(v18 + v7 + v17, enum case for REMRemindersListDataView.SortingStyle.title(_:), v4);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v12 = sub_10007D894(sub_10017D34C, v23, v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v12 >> 62)
  {
    sub_100003540(0, &qword_10076C550);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    preferredElementSize = v12;
  }

  sub_100003540(0, &unk_10076B890);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v28, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16);
}

Class sub_10017C8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a3;
  v102 = a4;
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v104 = *(v6 - 8);
  v7 = *(v104 + 64);
  __chkstk_darwin(v6);
  v100 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v73 - v9;
  __chkstk_darwin(v10);
  v12 = v73 - v11;
  v13 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v97 = *(v13 - 8);
  v14 = *(v97 + 64);
  __chkstk_darwin(v13);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v73 - v17;
  v19 = a2;
  if (sub_1000AA040(a2, a1))
  {
    v20 = v104;
    v98 = *(v104 + 16);
    v99 = v104 + 16;
    v98(v12, a2, v6);
    v22 = *(v20 + 88);
    v21 = v20 + 88;
    v94 = v22;
    v23 = v22(v12, v6);
    if (v23 == enum case for REMRemindersListDataView.SortingStyle.displayDate(_:) || v23 == enum case for REMRemindersListDataView.SortingStyle.priority(_:) || v23 == enum case for REMRemindersListDataView.SortingStyle.creationDate(_:) || v23 == enum case for REMRemindersListDataView.SortingStyle.title(_:))
    {
      v27 = *(v104 + 96);
      v95 = v6;
      v85 = enum case for REMRemindersListDataView.SortingStyle.priority(_:);
      v27(v12, v6);
      v28 = v97;
      v29 = *(v97 + 32);
      v90 = v97 + 32;
      v91 = v29;
      v86 = v18;
      v29(v18, v12, v13);
      v84 = v21;
      LODWORD(v87) = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
      v30 = *(v28 + 104);
      v89 = v28 + 104;
      v30(v15);
      v82 = v30;
      v31 = v103;
      v96 = v19;
      REMRemindersListDataView.SortingStyle.cloned(withSortingDirection:)();
      v32 = *(v28 + 8);
      v88 = v28 + 8;
      v32(v15, v13);
      v75 = v32;
      v33 = REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()();
      countAndFlagsBits = v33._countAndFlagsBits;
      object = v33._object;
      v34 = *(v104 + 8);
      v92 = v104 + 8;
      v93 = v34;
      v34(v31, v95);
      (v30)(v15, v87, v13);
      v83 = sub_10017D308(&qword_100770EA0);
      v35 = v86;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v32(v15, v13);
      v73[1] = v106 == v105;
      v87 = sub_100003540(0, &qword_10076BA60);
      (*(v28 + 16))(v15, v35, v13);
      v36 = v103;
      v37 = v95;
      v98(v103, v96, v95);
      v38 = *(v28 + 80);
      v39 = (v38 + 16) & ~v38;
      v78 = v39;
      v40 = (v14 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = v104;
      v42 = *(v104 + 80);
      v43 = v40;
      v79 = v40;
      v77 = v38 | v42;
      v44 = (v42 + v40 + 16) & ~v42;
      v74 = v44;
      v45 = swift_allocObject();
      v91(v45 + v39, v15, v13);
      v46 = (v45 + v43);
      v47 = v102;
      *v46 = v101;
      v46[1] = v47;
      v48 = *(v41 + 32);
      v104 = v41 + 32;
      v76 = v48;
      v48(v45 + v44, v36, v37);

      v97 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v49 = enum case for REMRemindersListDataView.SortingDirection.descending(_:);
      v50 = v82;
      (v82)(v15, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v13);
      v51 = v36;
      REMRemindersListDataView.SortingStyle.cloned(withSortingDirection:)();
      v52 = v75;
      v75(v15, v13);
      v53 = REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()();
      countAndFlagsBits = v53._countAndFlagsBits;
      object = v53._object;
      v54 = v51;
      v55 = v95;
      v93(v54, v95);
      v50(v15, v49, v13);
      v56 = v86;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v52(v15, v13);
      v89 = v106 == v105;
      v57 = v91;
      v91(v15, v56, v13);
      v58 = v103;
      v98(v103, v96, v55);
      v59 = v74;
      v60 = swift_allocObject();
      v57(v60 + v78, v15, v13);
      v61 = (v60 + v79);
      v62 = v102;
      *v61 = v101;
      v61[1] = v62;
      v76(v60 + v59, v58, v55);

      v63 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v64 = v100;
      v98(v100, v96, v55);
      v65 = v94(v64, v55);
      if (v65 == v85)
      {
        v66 = v63;
      }

      else
      {
        v66 = v97;
      }

      if (v65 == v85)
      {
        v63 = v97;
      }

      v93(v64, v55);
      sub_100058000(&qword_10076B780);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_10062D410;
      *(v67 + 32) = v66;
      *(v67 + 40) = v63;
      if (!(v67 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if (v23 != enum case for REMRemindersListDataView.SortingStyle.default(_:) && v23 != enum case for REMRemindersListDataView.SortingStyle.manual(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  v67 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
LABEL_26:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    v68 = v67;
    goto LABEL_27;
  }

LABEL_19:
  sub_100003540(0, &qword_10076C550);

  v68 = _bridgeCocoaArray<A>(_:)();

LABEL_27:

  sub_100003540(0, &unk_10076B890);
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v107.value.super.isa = 0;
  v107.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v70, 0, v107, 1, 0xFFFFFFFFFFFFFFFFLL, v68, v72).super.super.isa;
}

uint64_t sub_10017D21C(uint64_t a1, unsigned int *a2)
{
  v5 = *(type metadata accessor for REMRemindersListDataView.SortingDirection() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for REMRemindersListDataView.SortingStyle() - 8);
  return sub_10017C34C(a1, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + ((v7 + *(v8 + 80) + 16) & ~*(v8 + 80)), a2);
}

uint64_t sub_10017D308(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMRemindersListDataView.SortingDirection();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017D36C()
{
  v1 = *(type metadata accessor for REMRemindersListDataView.SortingStyle() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v3 + v2 + ((v2 + 16) & ~v2)) & ~v2;
  v5 = *(v0 + ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = REMRemindersListDataView.SortingStyle.isEqualIgnoringDirection(_:)();
  if ((result & 1) == 0)
  {
    return v5(v0 + v4);
  }

  return result;
}

uint64_t sub_10017D430()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100770EB8);
  v1 = sub_100003E30(v0, qword_100770EB8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRHashtagLabelInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRHashtagLabelInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10017D654;
}

void sub_10017D654(uint64_t a1, char a2)
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
  }

  free(v3);
}

char *TTRHashtagLabelInteractor.init(store:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRDataViewMonitorEnvironmentInfo();
  __chkstk_darwin(v5 - 8);
  *&v2[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_dataViewMonitor] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_store] = a1;
  type metadata accessor for TTRHashtagLabelMonitorableDataView();
  *(swift_allocObject() + 16) = a1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "init");
  sub_1000A96A0();
  v8 = v7;

  static OS_dispatch_queue.main.getter();
  type metadata accessor for RDIDispatchQueue();
  static RDIDispatchQueue.storeQueue.getter();
  static RDIDispatchQueue.storeUserInteractiveQueue.getter();
  TTRDataViewMonitorEnvironmentInfo.init()();
  sub_100058000(&qword_100770EE8);
  swift_allocObject();
  sub_10017E154(&qword_100770EF0, type metadata accessor for TTRHashtagLabelInteractor);
  *&v8[OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_dataViewMonitor] = TTRDataViewMonitor.init<A>(initialData:dataView:delegate:queue:backgroundQueue:userInteractiveBackgroundQueue:environmentInfo:)();

  TTRDataViewMonitor.resume(userInteractive:)(1);

  return v8;
}

uint64_t TTRHashtagLabelMonitorableDataView.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_10017DA74(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return TTRDataViewMonitorDelegate.monitorWillFetch(_:)(a1, ObjectType);
}

uint64_t TTRHashtagLabelMonitorableDataView.fetchData(from:userInteractive:)()
{
  v0 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView();
  (*(v1 + 104))(v3, enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:), v0);
  v4 = static REMHashtagLabelDataView.fetchAllHashtagLabels(store:sortingStyle:includeDetails:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t TTRHashtagLabelMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017DC78(uint64_t *a1)
{
  v3 = type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMHashtagLabelDataView();
  (*(v4 + 104))(v6, enum case for REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.alphabetical(_:), v3);
  v7 = static REMHashtagLabelDataView.fetchAllHashtagLabels(store:sortingStyle:includeDetails:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v9 = v7;
  result = (*(v4 + 8))(v6, v3);
  *a1 = v9;
  return result;
}

uint64_t sub_10017DDC8(uint64_t a1)
{
  v2 = v1;
  if (qword_100766FB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100770EB8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "TTRAccountListsMonitorableDataView did fetch data", v7, 2u);
  }

  v8 = v2 + OBJC_IVAR____TtC9Reminders25TTRHashtagLabelInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v2, a1, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10017DF1C()
{
  if (qword_100766FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100770EB8);
  swift_errorRetain();
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136315394;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100004060(v7, v8, &v12);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    *(v4 + 14) = v2;
    *v5 = v2;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, oslog, v3, "TTRAccountListsMonitorableDataView did hit error {error: %s, interactor: %@}", v4, 0x16u);
    sub_100094164(v5);

    sub_100004758(v6);
  }

  else
  {
  }
}

uint64_t sub_10017E154(unint64_t *a1, void (*a2)(void))
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

void sub_10017E1FC(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v4 - 8);
  sub_10017EBBC(a2, &v10 - v5);
  dispatch thunk of TTRIStaticTableViewStandardCell.icon.setter();
  v6 = TTRIDetailListTableViewCell.listNameLabel.getter();
  type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State(0);
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  v8 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityLabel:v8];

  v9 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityValue:v9];
}

uint64_t sub_10017E32C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10017E394(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t *sub_10017E44C(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRITableCellContentPrototypeCellView();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

uint64_t sub_10017E520(uint64_t a1)
{
  v2 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_10017E598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t sub_10017E620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  return a1;
}

uint64_t sub_10017E6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_10017E738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t sub_10017E88C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100058000(&qword_1007710B0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  v15 = *(v12 + 56);
  sub_10017EBBC(a1, &v25 - v13);
  sub_10017EBBC(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10017EBBC(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10017EC2C(&qword_1007710B8, &type metadata accessor for TTRIStaticTableViewStandardCell.Icon);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v14, &qword_100776880);
      if (v18)
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1000079B4(v14, &qword_1007710B0);
    goto LABEL_7;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v14, &qword_100776880);
LABEL_9:
  v20 = *(type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State(0) + 20);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_10017EBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017EC2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10017EC7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100058000(&qword_100776880);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
  }

  return a1;
}

uint64_t sub_10017EE04(uint64_t a1)
{
  v2 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

char *sub_10017EED4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100776880);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;

  return a1;
}

char *sub_10017F010(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100776880);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);

  return a1;
}

char *sub_10017F1C4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100776880);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_10017F2F4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100776880);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  v16 = *v14;
  v15 = *(v14 + 1);
  *v13 = v16;
  *(v13 + 1) = v15;

  return a1;
}

uint64_t sub_10017F4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_10017F570()
{
  if (!qword_100771128)
  {
    type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100771128);
    }
  }
}

char *sub_10017F5C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___nukeCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___populateCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___pencilAutoCommitDelayCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___collectionViewEnabledCell] = 1;
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell] = 0;
  sub_100182CE0(&qword_100771270);
  static TTRTypedController.currentArgument.getter();
  *&v2[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler] = v7[1];
  v7[0].receiver = v2;
  v7[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v5 = [(objc_super *)v7 initWithCoder:a1];
  swift_unknownObjectRelease();

  if (v5)
  {
    *(*&v5[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler] + 24) = &off_100718F10;
    swift_unknownObjectWeakAssign();
  }

  return v5;
}

void sub_10017F760()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v72 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TTRTableViewAnimations();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v85 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100777BC0);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v86 = &v70 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v70 - v11;
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v95.receiver = v0;
  v95.super_class = ObjectType;
  objc_msgSendSuper2(&v95, "viewDidLoad");
  v88 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = Strong;
  UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006337D0;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v17 = type metadata accessor for TTRITableSectionHeaderFooter();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(v14, 0, 1, v17);
  v19(v12, 1, 1, v17);
  v79 = sub_100058000(&qword_1007768B0);
  v21 = swift_allocObject();
  v78 = xmmword_10062D3F0;
  *(v21 + 16) = xmmword_10062D3F0;
  v22 = sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___nukeCell, sub_100180FFC);
  v23 = sub_10000E188(&qword_1007711F8, &qword_100776850);
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___populateCell, sub_10018123C);
  v25 = sub_10000E188(&qword_100771200, &qword_100771208);
  *(v21 + 48) = v24;
  *(v21 + 56) = v25;
  type metadata accessor for TTRITableSection();
  swift_allocObject();
  v26 = TTRITableSection.init(header:footer:items:)();
  v27 = inited;
  *(inited + 32) = v26;
  v73 = v27 + 32;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v75 = v19;
  v90 = v20;
  v19(v14, 0, 1, v17);
  v19(v12, 1, 1, v17);
  v74 = sub_100058000(&qword_100771210);
  v28 = swift_allocObject();
  v89 = xmmword_10062D400;
  *(v28 + 16) = xmmword_10062D400;
  v29 = sub_100180390();
  v30 = sub_10000E188(&qword_100771218, &qword_100771220);
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v92 = v28;
  v31 = sub_100058000(&qword_100771228);
  v32 = sub_100058000(&qword_100771230);
  sub_10000E188(&qword_100771238, &qword_100771228);
  v77 = v31;
  v76 = v32;
  Sequence.removingNils<A>()();

  swift_allocObject();
  v80 = v14;
  v82 = v12;
  *(inited + 40) = TTRITableSection.init(header:footer:items:)();
  v33 = v86;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v34 = v75;
  v75(v33, 0, 1, v17);
  v81 = v17;
  v35 = v34;
  v34(v87, 1, 1, v17);
  v36 = swift_allocObject();
  *(v36 + 16) = v78;
  v37 = sub_1001803F4();
  v38 = v37;
  if (v37)
  {
    v37 = sub_10000E188(&qword_100777BD0, &qword_100776900);
  }

  *(v36 + 32) = v38;
  *(v36 + 40) = v37;
  v39 = sub_100180460();
  *&v78 = &protocol conformance descriptor for TTRITableCell<A>;
  v40 = sub_10000E188(&qword_100777BD0, &qword_100776900);
  v74 = v40;
  *(v36 + 48) = v39;
  *(v36 + 56) = v40;
  v92 = v36;
  Sequence.removingNils<A>()();

  swift_allocObject();
  *(inited + 48) = TTRITableSection.init(header:footer:items:)();
  v41 = v80;
  TTRITableSectionHeaderFooter.init(title:height:)();
  v42 = v81;
  v43 = v35;
  v35(v41, 0, 1, v81);
  v44 = v82;
  v43(v82, 1, 1, v42);
  v45 = swift_allocObject();
  *(v45 + 16) = v89;
  v46 = sub_100180660();
  v47 = v74;
  *(v45 + 32) = v46;
  *(v45 + 40) = v47;
  swift_allocObject();
  *(inited + 56) = TTRITableSection.init(header:footer:items:)();
  TTRITableSectionHeaderFooter.init(title:height:)();
  v43(v41, 0, 1, v42);
  v43(v44, 1, 1, v42);
  v48 = swift_allocObject();
  *(v48 + 16) = v89;
  v49 = sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___pencilAutoCommitDelayCell, sub_100181990);
  v50 = sub_10000E188(&qword_100771240, &qword_1007711E8);
  *(v48 + 32) = v49;
  *(v48 + 40) = v50;
  swift_allocObject();
  v51 = inited;
  *(v51 + 64) = TTRITableSection.init(header:footer:items:)();
  TTRITableSectionHeaderFooter.init(title:height:)();
  v43(v41, 0, 1, v42);
  v43(v44, 1, 1, v42);
  v52 = sub_1001808D4();
  sub_1003E07FC(v52);

  swift_allocObject();
  *(v51 + 72) = TTRITableSection.init(header:footer:items:)();
  v53 = swift_unknownObjectWeakLoadStrong();
  if (!v53)
  {
    goto LABEL_12;
  }

  v54 = v53;
  v93 = sub_100003540(0, &qword_100771B60);
  v94 = &protocol witness table for UITableView;
  v92 = v54;
  sub_1003E09F0(v51);
  (*(v83 + 104))(v85, enum case for TTRTableViewAnimations.middle(_:), v84);
  v55 = objc_allocWithZone(type metadata accessor for TTRITableDataController());
  v56 = TTRITableDataController.init(tableView:sections:rowInsertionAnimationType:collapseSectionIfItemsAreHidden:)();
  v57 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController;
  v58 = *&v1[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController];
  *&v1[OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController] = v56;
  v59 = v56;

  v60 = swift_unknownObjectWeakLoadStrong();
  if (!v60)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v61 = v60;
  [v60 setDataSource:v59];

  v62 = swift_unknownObjectWeakLoadStrong();
  if (!v62)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v63 = v62;
  swift_setDeallocating();
  swift_arrayDestroy();
  [v63 setDelegate:v59];

  v64 = *&v1[v57];
  if (v64)
  {
    v65 = v70;
    *v70 = 1;
    v66 = v71;
    v67 = v72;
    v68 = (*(v71 + 104))(v65, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v72);
    __chkstk_darwin(v68);
    *(&v70 - 2) = v1;
    v69 = v64;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    (*(v66 + 8))(v65, v67);
  }

  else
  {
  }
}

uint64_t sub_100180390()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___accountsListsCollectionViewEnabledCell);
  }

  else
  {
    v2 = sub_10018203C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001803F4()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___collectionViewEnabledCell;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___collectionViewEnabledCell);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1001824C4();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_100182C28(v4);
  }

  sub_100182C38(v2);
  return v3;
}

uint64_t sub_100180460()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell))
  {
    v7 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___dragAndDropDebugOverlayEnabledCell);
  }

  else
  {
    type metadata accessor for TTRIDebugDropIndicatorView();
    static TTRIDebugDropIndicatorView.isEnabled.getter();
    v8 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
    v9 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
    TTRIToggleCellContent.init(state:)();
    TTRIToggleCellContent.stateChangeBlock.setter();
    sub_100058000(&qword_100776900);
    swift_allocObject();
    v7 = TTRITableCell.init(_:)();
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100180660()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell))
  {
    v7 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___animationSlowModeCell);
  }

  else
  {
    v8 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for TTRUserDefaults();
    v9 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.animationSlowModeEnabled.getter();

    TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
    v10 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
    TTRIToggleCellContent.init(state:)();
    TTRIToggleCellContent.stateChangeBlock.setter();
    sub_100058000(&qword_100776900);
    swift_allocObject();
    v7 = TTRITableCell.init(_:)();
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_10018086C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

void *sub_1001808D4()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___suggestedAttributeModelCells);
  }

  else
  {
    v2 = sub_100181BFC();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001809C8()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___deferredUpdateAction);
  }

  else
  {
    v3 = v0;
    sub_100003540(0, &qword_100777780);
    static OS_dispatch_queue.main.getter();
    type metadata accessor for TTRDeferredAction();
    swift_allocObject();
    v2 = TTRDeferredAction.init(queue:)();
    sub_100182CE0(&qword_1007711F0);
    swift_unknownObjectRetain();
    TTRDeferredAction.delegate.setter();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_100180AA8()
{
  v0 = qword_10077E920;
  sub_10018086C(&OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController____lazy_storage___pencilAutoCommitDelayCell, sub_100181990);
  v1 = TTRITableCell.content.getter();

  v2 = TTRITableCellContent.state.modify();
  TTRISliderCellContentState.value.setter();
  v2(v6, 0);

  v3 = TTRITableCell.content.getter();

  sub_100058000(&unk_100786CB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D400;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = v0;
  String.init(format:_:)();
  v5 = TTRITableCellContent.state.modify();
  TTRISliderCellContentState.subtitle.setter();
  v5(v6, 0);
}

void sub_100180C24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = *(*(a1 + 32) + 32);
  if (a3 <= 1u)
  {
    if (a3)
    {
      v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
      static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
      sub_100003540(0, &qword_100777780);
      v5 = static OS_dispatch_queue.main.getter();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      v16 = sub_100182D50;
      v17 = v10;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v7 = &unk_1007190F8;
    }

    else
    {
      v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
      static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
      sub_100003540(0, &qword_100777780);
      v5 = static OS_dispatch_queue.main.getter();
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      v16 = sub_100182D50;
      v17 = v8;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v7 = &unk_100719148;
    }
  }

  else if (a3 == 2)
  {
    v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
    static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
    sub_100003540(0, &qword_100777780);
    v5 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v16 = sub_100182D50;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v7 = &unk_1007190A8;
  }

  else
  {
    if (a3 != 3)
    {
      sub_1003E0238(2, 10, 0, 0);
      return;
    }

    v4 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v3 + 16)];
    static TTRDebugExampleInserts.makeSomeExampleInserts(saveRequest:accounts:lists:reminders:subtasks:)();
    sub_100003540(0, &qword_100777780);
    v5 = static OS_dispatch_queue.main.getter();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v16 = sub_100182CD0;
    v17 = v6;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v7 = &unk_100719058;
  }

  v14 = sub_100009DE4;
  v15 = v7;
  v11 = _Block_copy(&v12);

  [v4 saveWithQueue:v5 completion:{v11, v12, v13}];
  _Block_release(v11);
}

uint64_t sub_100180FFC()
{
  v0 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRIActionCellStateAdaptor.State();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  TTRIActionCellStateAdaptor.State.init(title:titleIsTinted:detailText:icon:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRIActionCellContent());
  v6 = TTRIActionCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v6;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_100776850);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_1001811C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(*(*(*(Strong + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler) + 32) + 32) + 16) nukeDatabase];
  }
}

uint64_t sub_10018123C()
{
  v0 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = type metadata accessor for TTRIMenuCellContentState();
  __chkstk_darwin(v3 - 8);
  v25 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_100003540(0, &qword_10076BA60);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 1;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 2;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 3;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = 4;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v14 = v25;
  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    sub_100003540(0, &qword_10076C550);

    v15 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    v15 = v14;
  }

  sub_100003540(0, &unk_10076B890);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v26.value.super.isa = 0;
  v26.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, v15, v23).super.super.isa;
  v18 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  v19 = isa;
  TTRIMenuCellContentState.init(icon:title:titleIsTinted:menu:)();
  v20 = objc_allocWithZone(type metadata accessor for TTRIMenuCellContent());
  TTRIMenuCellContent.init(state:)();
  sub_100058000(&qword_100771208);
  swift_allocObject();
  v21 = TTRITableCell.init(_:)();

  return v21;
}

uint64_t sub_1001818AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_unknownObjectRetain();
    sub_100180C24(v6, v7, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10018192C()
{
  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  TTRIToggleCellContentState.isOn.getter();
  TTRUserDefaults.animationSlowModeEnabled.setter();
}

uint64_t sub_100181990()
{
  v0 = sub_100058000(&qword_1007711E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TTRISliderCellContentState();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRIStaticTableViewStandardCell.RoundRectIcon();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  TTRISliderCellContentState.init(icon:title:subtitle:minimumValue:maximumValue:value:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRISliderCellContent());
  TTRISliderCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRISliderCellContent.stateChangeBlock.setter();

  sub_100058000(&qword_1007711E8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_100181B68()
{
  TTRISliderCellContentState.value.getter();
  *&qword_10077E920 = v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_1001809C8();
    v3._object = 0x80000001006755C0;
    v3._countAndFlagsBits = 0xD000000000000018;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  return result;
}

void *sub_100181BFC()
{
  v0 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v0 - 8);
  v2 = v28 - v1;
  v3 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v3 - 8);
  v39 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  v11 = static REMSuggestedAttributeOutput.Pipeline.allCases.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    v40 = _swiftEmptyArrayStorage;
    v37 = v7;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = type metadata accessor for REMSuggestedAttributesHarvester();
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v35 = v15;
    v36 = v13;
    v16 = *(v14 + 64);
    v17 = v11 + ((v16 + 32) & ~v16);
    v33 = *(v14 + 56);
    v34 = v16;
    v32 = (v16 + 16) & ~v16;
    v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = (v14 + 16);
    v38 = v14;
    v28[1] = v11;
    v29 = (v14 - 8);
    do
    {
      v18 = v35;
      v35(v10, v17, v5);
      static REMSuggestedAttributesHarvester.modelPipelineValueFromUserDefaults(for:)();
      v19 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
      (*(*(v19 - 8) + 56))(v2, 1, 1, v19);
      REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
      v20 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
      TTRIToggleCellContent.init(state:)();
      v21 = v10;
      v22 = v5;
      v23 = v30;
      v18(v30, v21, v22);
      v24 = v32;
      v25 = swift_allocObject();
      v26 = v23;
      v5 = v22;
      v10 = v21;
      (*v31)(v25 + v24, v26, v5);
      TTRIToggleCellContent.stateChangeBlock.setter();
      sub_100058000(&qword_100776900);
      swift_allocObject();
      TTRITableCell.init(_:)();
      (*v29)(v21, v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += v33;
      --v12;
    }

    while (v12);

    return v40;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100181FF0()
{
  type metadata accessor for REMSuggestedAttributesHarvester();
  TTRIToggleCellContentState.isOn.getter();
  return static REMSuggestedAttributesHarvester.setModelPipelineValueInUserDefaults(for:value:)();
}

uint64_t sub_10018203C()
{
  v0 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v0 - 8);
  v17 = &v16 - v1;
  v2 = sub_100058000(&qword_100771248);
  __chkstk_darwin(v2 - 8);
  v18 = &v16 - v3;
  sub_100058000(&qword_100771250);
  v4 = sub_100058000(&qword_100771258);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006337E0;
  v9 = v8 + v7;
  v22 = 2;
  sub_100058000(&qword_10076B298);
  sub_100182C48();
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v10 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v11 = *(v5 + 104);
  v11(v9, enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:), v4);
  v11(v9 + v6, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v4);
  v21 = 0;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v11(v9 + 2 * v6, v10, v4);
  v20 = 1;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v11(v9 + 3 * v6, v10, v4);
  type metadata accessor for TTRUserDefaults();
  v12 = static TTRUserDefaults.appUserDefaults.getter();
  LOBYTE(v9) = TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.getter();

  v13 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  v19 = v9;
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v14 = objc_allocWithZone(sub_100058000(&qword_100771268));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_100771220);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_100182450()
{
  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  sub_100058000(&qword_100771248);
  TTRIOptionMenuCellContentState.selectedItem.getter();
  TTRUserDefaults.legacyTableViewBasedAccountsListsEnabled.setter();
}

uint64_t sub_1001824C4()
{
  v0 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  v3 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for REMFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v7, enum case for REMFeatureFlags.collectionView(_:), v4);
  v8 = REMFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v7, v4);
  result = 0;
  if (v8)
  {
    type metadata accessor for TTRUserDefaults();
    v10 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter();

    TTRUserDefaultsObservableProperty.value.getter();

    v11 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
    v12 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
    TTRIToggleCellContent.init(state:)();
    TTRIToggleCellContent.stateChangeBlock.setter();
    sub_100058000(&qword_100776900);
    swift_allocObject();
    return TTRITableCell.init(_:)();
  }

  return result;
}

uint64_t sub_100182778()
{
  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter();

  TTRIToggleCellContentState.isOn.getter();
  TTRUserDefaultsObservableProperty.value.setter();
}

uint64_t sub_1001827EC()
{
  type metadata accessor for TTRIDebugDropIndicatorView();
  TTRIToggleCellContentState.isOn.getter();
  return static TTRIDebugDropIndicatorView.isEnabled.setter();
}

void sub_1001829CC()
{
  sub_10000C36C((*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler) + 48), *(*(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_eventHandler) + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_100182A48()
{
  v1 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRIDebugMenuViewController_tableDataController);
  if (v6)
  {
    *v5 = 1;
    v7 = (*(v2 + 104))(v5, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v1);
    __chkstk_darwin(v7);
    *(&v9 - 2) = v0;
    v8 = v6;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_100182BB8()
{
  type metadata accessor for REMSuggestedAttributeOutput.Pipeline();

  return sub_100181FF0();
}

uint64_t sub_100182C28(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100182C38(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_100182C48()
{
  result = qword_100771260;
  if (!qword_100771260)
  {
    sub_10005D20C(&qword_10076B298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771260);
  }

  return result;
}

uint64_t sub_100182CE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRIDebugMenuViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100182D54(uint64_t *a1, id *a2, uint64_t a3)
{
  v98 = a3;
  v105 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v108 = *(v4 - 1);
  v109 = v4;
  v5 = __chkstk_darwin(v4);
  v89 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v101 = &v87 - v8;
  v9 = __chkstk_darwin(v7);
  v88 = &v87 - v10;
  __chkstk_darwin(v9);
  v99 = &v87 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v97 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v95);
  v107 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TTRListType.SortingCapability();
  v96 = *(v100 - 8);
  __chkstk_darwin(v100);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for TTRRemindersListDefaultListType();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v17 - 8);
  v92 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v19 - 8);
  v106 = (&v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsStyle();
  v21 = *(v103 - 8);
  __chkstk_darwin(v103);
  v91 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v87 - v32;
  (*(v24 + 104))(v26, enum case for TTRListType.PredefinedSmartListType.scheduled(_:), v23);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v24 + 8))(v26, v23);
  v90 = *a2;
  (*(v21 + 104))(v91, enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.regular(_:), v103);
  v103 = v28;
  v34 = *(v28 + 16);
  v34(v31, v33, v27);
  type metadata accessor for TTRShowScheduledByDateBucketsDataModelSource();
  swift_allocObject();
  v35 = v90;
  v36 = TTRShowScheduledByDateBucketsDataModelSource.init(store:style:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v37 = v106;
  sub_1001749C4(a2, v106);
  v38 = v92;
  static REMSuggestedAttributesElector.ExcludedAttributes.dueDates.getter();
  v39 = v93;
  (*(v102 + 13))(v93, enum case for TTRRemindersListDefaultListType.any(_:), v104);
  sub_10007786C(v37, v38, v39, v115);
  v40 = v115[0];
  v41 = v94;
  v102 = v33;
  v104 = v27;
  v34(v94, v33, v27);
  v42 = v41;
  (v96)[13](v41, enum case for TTRListType.SortingCapability.notSupported(_:), v100);
  type metadata accessor for TTRShowScheduledViewModelSource(0);
  v43 = swift_allocObject();

  v44 = v40;
  v100 = v36;
  v96 = v44;
  v45 = sub_100183B18(v36, v44, v42, 0, v43);
  v46 = v106;
  sub_1001749C4(a2, v106);
  sub_10010BCAC(v115, v112);
  v47 = sub_100183FE0(&qword_1007712A0, type metadata accessor for TTRShowScheduledViewModelSource);
  v48 = v107;
  sub_1001749C4(v46, v107);
  v49 = v95;
  sub_10010BCAC(v112, v48 + *(v95 + 28));
  v50 = (v48 + *(v49 + 32));
  *v50 = v45;
  v50[1] = v47;
  v51 = v112[0];
  sub_100058000(&qword_10076C230);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v114, v111, &qword_100769608);
  v53 = *(v111[5] + 8);
  *(v52 + 32) = v111[4];
  *(v52 + 40) = v53;
  sub_10000794C(&v113, v110, &qword_100769600);
  swift_retain_n();
  v54 = v51;
  swift_unknownObjectRelease();
  *(v52 + 48) = v110[3];
  sub_100004758(v110);
  sub_100004758(v111);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v55 = swift_allocObject();
  v56 = sub_1003A8508(v54, v45, v52, v55);

  sub_10010BD08(v112);
  sub_100174ECC(v46, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v57 = *(v49 + 36);
  v94 = v56;
  *(v48 + v57) = v56;
  v58 = v97;
  sub_100078BBC(v97);
  v95 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v59 = swift_allocObject();
  v60 = v98;
  swift_unknownObjectRetain();
  v61 = sub_1003A56E4(v58, v60, v59);
  v62 = *(v61 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v62 + 112))(ObjectType, v62))
  {
    swift_getObjectType();
    v64 = v88;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v65 = v99;
    (*(v108 + 32))(v99, v64, v109);
  }

  else
  {
    v65 = v99;
    (*(v108 + 104))(v99, enum case for TTRRemindersListLayout.list(_:), v109);
  }

  v66 = sub_1003A4A1C(v65, v61);
  v98 = v67;
  v69 = v68;
  v71 = v70;
  (*(v108 + 8))(v65, v109);
  v99 = swift_getObjectType();
  *(v61 + 24) = *(v71 + 8);
  v106 = v69;
  swift_unknownObjectWeakAssign();
  v72 = *(v61 + 144);
  v73 = swift_getObjectType();
  v74 = *(v72 + 112);

  if (v74(v73, v72))
  {
    swift_getObjectType();
    v75 = v89;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v76 = v101;
    (*(v108 + 32))(v101, v75, v109);
  }

  else
  {
    v76 = v101;
    (*(v108 + 104))(v101, enum case for TTRRemindersListLayout.list(_:), v109);
  }

  v77 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v78 = v66;
  v109 = v78;
  v79 = sub_1003A7DE0(v61, v78, v98, v76, 0, 1, 0, v77);

  v80 = *(v71 + 32);
  v81 = v79;
  v80(v79, &off_100723D78, v99, v71);
  sub_100183FE0(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_100183FE0(&qword_1007712A8, type metadata accessor for TTRShowScheduledViewModelSource);

  v82 = v81;
  dispatch thunk of TTRShowScheduledByDateBucketsDataModelSource.delegate.setter();

  sub_10056FEB0(v83, &off_10071A9B0);

  *(v94 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v116, v112, &qword_100769600);
  v84 = v112[4];
  swift_unknownObjectRelease();
  *(v84 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v112);
  sub_10000794C(&v117, v112, &qword_100769608);
  swift_getObjectType();
  sub_100183FE0(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v112);
  v85 = v105;
  v105[3] = v95;
  v85[4] = &off_1007191F0;

  swift_unknownObjectRelease();
  *v85 = v61;
  (*(v103 + 8))(v102, v104);
  sub_100174ECC(v107, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v115);
  return v82;
}

id TTRIShowScheduledAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowScheduledAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowScheduledAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowScheduledAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100183B18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5)
{
  v42 = a3;
  v39 = a1;
  v40 = a2;
  v44 = *a5;
  v45 = type metadata accessor for REMAnalyticsEvent();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for TTRListType.SortingCapability();
  v41 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_cachedEmptyListMessaging;
  v18 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v19 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v19 - 8) + 104))(&a5[v17], v18, v19);
  v20 = &a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_completedRemindersCount];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID;
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  (*(*(v22 - 8) + 56))(&a5[v21], 1, 1, v22);
  *&a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_sectionHeadersNeedingPlaceholderReminderItems] = &_swiftEmptySetSingleton;
  *&a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_tappedSectionHeaders] = &_swiftEmptySetSingleton;
  *&a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_lastSectionsSnapshot] = 0;
  a5[OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_hasDefaultNewReminderButton] = a4;
  (*(v14 + 16))(v16, a3, v13);
  v23 = sub_1003A649C(v39, v40, v16, a5);

  sub_1002CC038(v12);
  v24 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  sub_10056F540(v12);
  sub_10010BE6C(v12);
  type metadata accessor for TTRUserDefaults();
  v25 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v26 = sub_100058000(&qword_100770980);
  v27 = &v9[*(v26 + 48)];
  v28 = &v9[*(v26 + 80)];
  v29 = enum case for REMRemindersOpenUserOperation.SmartListType.scheduled(_:);
  v30 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v30 - 8) + 104))(v9, v29, v30);
  v31 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v32 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v32 - 8) + 104))(v9, v31, v32);
  *v27 = TTRUserDefaults.activitySessionId.getter();
  v27[1] = v33;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v28 = _typeName(_:qualified:)();
  v28[1] = v34;
  v35 = v43;
  v36 = v45;
  (*(v43 + 104))(v9, enum case for REMAnalyticsEvent.openListUserOperation(_:), v45);
  REMAnalyticsManager.post(event:)();

  (*(v14 + 8))(v42, v41);
  (*(v35 + 8))(v9, v36);
  return v23;
}

uint64_t sub_100183FE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100184028()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007712B0);
  v1 = sub_100003E30(v0, qword_1007712B0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001840F0()
{
  v1 = v0;
  if (qword_100766FC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_1007712B0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10000C36C((v0 + 48), *(v0 + 72));
  if (qword_100766EE0 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_10076AC70);
  sub_1003F99F4(0x6F4D206E7261654CLL, 0xEA00000000006572);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, &off_100719200, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100184290()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRApplicationRunProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRApplicationRunProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1001844D8(uint64_t a1)
{
  v2 = v1;
  sub_10008E6A8(a1, &v12);
  if (!v13)
  {
    sub_1001848DC(&v12);
    [*(v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentHostingView) setHostedView:0];
    v6 = (v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView);
    v7 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView);
    *v6 = 0;
    v6[1] = 0;

    return;
  }

  sub_100005FD0(&v12, v14);
  v3 = v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView);
  if (!v4)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  v5 = v4;
  if ((dispatch thunk of UIContentView.supports(_:)() & 1) == 0)
  {

LABEL_7:
    sub_10000C36C(v14, v14[3]);
    v8 = dispatch thunk of UIContentConfiguration.makeContentView()();
    v10 = v9;
    [*(v2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentHostingView) setHostedView:v8];
    v11 = *v3;
    *v3 = v8;
    *(v3 + 8) = v10;

    goto LABEL_8;
  }

  sub_10000B0D8(v14, &v12);
  dispatch thunk of UIContentView.configuration.setter();

LABEL_8:
  sub_100004758(v14);
}

void sub_10018462C(void *a1, void *a2, void *a3)
{
  [a1 setDirectionalLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [a1 setLayoutMarginsRelativeArrangement:0];
  [a1 setDebugBoundingBoxesEnabled:0];
  [a1 setEdgesPreservingSuperviewLayoutMargins:10];
  [a1 setHorizontalAlignment:0];
  [a1 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D410;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_10014C480();
  v7 = a2;
  v8 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setArrangedSubviews:isa];
}

uint64_t sub_1001848DC(uint64_t a1)
{
  v2 = sub_100058000(&qword_100768868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100184944()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentConfiguration];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentView];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = static REMFeatureFlags.isSolariumEnabled.getter();
  v6 = objc_opt_self();
  v7 = &selRef_clearColor;
  if ((v5 & 1) == 0)
  {
    v7 = &selRef_systemBackgroundColor;
  }

  v8 = [v6 *v7];
  [v4 setBackgroundColor:v8];

  *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_backgroundView] = v4;
  type metadata accessor for TTRIConstraintBasedLayoutHostingView();
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = v4;
  v11 = [v9 init];
  *&v0[OBJC_IVAR____TtC9Reminders31TTRIRemindersBoardTipHeaderView_contentHostingView] = v11;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v12 = v11;
  v13 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100058000(&qword_10076B780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  *(v14 + 32) = v12;
  v15 = objc_allocWithZone(NUIContainerBoxView);
  sub_10014C480();
  v16 = v13;
  v17 = v12;
  v18 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v15 initWithArrangedSubviews:isa];

  [v20 setPreservesSuperviewLayoutMargins:1];
  [v20 setLayoutMarginsRelativeArrangement:1];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v10;
  v21[4] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100184CA0;
  *(v22 + 24) = v21;
  v27[4] = sub_100026410;
  v27[5] = v22;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_100026440;
  v27[3] = &unk_100719318;
  v23 = _Block_copy(v27);
  v24 = v10;
  v25 = v20;

  [v18 performBatchUpdates:v23];

  _Block_release(v23);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t TTRITipContentConfiguration.init(tip:assetColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRITipContentConfiguration(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

id TTRITipContentConfiguration.makeContentView()()
{
  v1 = type metadata accessor for TTRITipContentConfiguration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100184E88(v0, v3);
  v4 = type metadata accessor for TipContentView(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView] = 0;
  sub_100184E88(v3, &v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration]);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setPreservesSuperviewLayoutMargins:1];
  sub_100185050(v3);

  sub_100185444(v3);
  sub_1001862CC(&qword_100771468, type metadata accessor for TipContentView);
  return v6;
}

uint64_t sub_100184E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100184F18(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100184E88(v1, v3);
  v4 = type metadata accessor for TipContentView(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView] = 0;
  sub_100184E88(v3, &v5[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration]);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setPreservesSuperviewLayoutMargins:1];
  sub_100185050(v3);

  sub_100185444(v3);
  sub_1001862CC(&qword_100771468, type metadata accessor for TipContentView);
  return v6;
}

void sub_100185050(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnyTip();
  v33 = v4;
  v34 = sub_1001862CC(&qword_100771540, &type metadata accessor for AnyTip);
  v5 = sub_1000317B8(v32);
  (*(*(v4 - 8) + 16))(v5, a1, v4);
  v6 = objc_allocWithZone(type metadata accessor for TipUIView());
  v7 = TipUIView.init(_:arrowEdge:actionHandler:)();
  v8 = *(a1 + *(type metadata accessor for TTRITipContentConfiguration(0) + 20));
  if (v8)
  {
    v9 = &protocol witness table for Color;
    v10 = &type metadata for Color;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v32[1] = 0;
    v32[2] = 0;
  }

  v32[0] = v8;
  v33 = v10;
  v34 = v9;

  TipUIView.imageStyle.setter();
  [v7 setIsAccessibilityElement:0];
  v11 = v7;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v11];
  v12 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D450;
  v14 = [v2 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = [v11 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v13 + 32) = v17;
  v18 = [v2 layoutMarginsGuide];
  v19 = [v18 topAnchor];

  v20 = [v11 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v13 + 40) = v21;
  v22 = [v2 layoutMarginsGuide];
  v23 = [v22 trailingAnchor];

  v24 = [v11 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v13 + 48) = v25;
  v26 = [v2 layoutMarginsGuide];
  v27 = [v26 bottomAnchor];

  v28 = [v11 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v13 + 56) = v29;
  sub_100177300();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  v31 = *&v2[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView];
  *&v2[OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView] = v11;
}

uint64_t sub_100185444(uint64_t a1)
{
  v2 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRITipContentConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for AnyTip();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for TTRITipContentConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for AnyTip();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t initializeWithCopy for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t assignWithCopy for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t initializeWithTake for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TTRITipContentConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyTip();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_100185810()
{
  result = type metadata accessor for AnyTip();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10018590C(uint64_t a1)
{
  v3 = type metadata accessor for TTRITipContentConfiguration(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v17[-v8];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  v12 = OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration;
  swift_beginAccess();
  sub_100184E88(v1 + v12, v11);
  swift_beginAccess();
  sub_1001863E0(a1, v1 + v12);
  swift_endAccess();
  sub_100184E88(v1 + v12, v9);
  v13 = sub_100186444(v11, v9);
  sub_100185444(v9);
  if (v13)
  {
    sub_100184E88(v1 + v12, v6);
    v14 = *(v1 + OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_tipView);
    if (v14)
    {
      [v14 removeFromSuperview];
    }

    sub_100185050(v6);
    sub_100185444(a1);
    v15 = v6;
  }

  else
  {
    v15 = a1;
  }

  sub_100185444(v15);
  return sub_100185444(v11);
}

uint64_t sub_100185B1C()
{
  result = type metadata accessor for TTRITipContentConfiguration(319);
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

uint64_t sub_100185BB8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771538);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3 - 8];
  v5 = type metadata accessor for TTRITipContentConfiguration(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v16[-v10 - 8];
  sub_10000B0D8(a1, v16);
  sub_100058000(&qword_10077A650);
  v12 = swift_dynamicCast();
  v13 = *(v6 + 56);
  if (v12)
  {
    v13(v4, 0, 1, v5);
    sub_10018637C(v4, v11);
    sub_100184E88(v11, v9);
    sub_10018590C(v9);
    sub_100004758(a1);
    return sub_100185444(v11);
  }

  else
  {
    v13(v4, 1, 1, v5);
    sub_100004758(a1);
    return sub_100186314(v4);
  }
}

void (*sub_100185D98(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *(*(sub_100058000(&qword_100771538) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[19] = v6;
  v7 = type metadata accessor for TTRITipContentConfiguration(0);
  v4[20] = v7;
  v8 = *(v7 - 8);
  v4[21] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[22] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[22] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[23] = v10;
  v11 = OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration;
  swift_beginAccess();
  v4[3] = v7;
  v4[4] = sub_1001862CC(&qword_1007759D0, type metadata accessor for TTRITipContentConfiguration);
  v12 = sub_1000317B8(v4);
  sub_100184E88(v1 + v11, v12);
  return sub_100185F48;
}

void sub_100185F48(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[22];
    v3 = v2[23];
    v5 = v2[19];
    sub_10000B0D8(*a1, (v2 + 5));
    sub_100185BB8((v2 + 5));
    sub_100004758(v2);
  }

  else
  {
    v6 = v2[21];
    sub_10000B0D8(*a1, (v2 + 10));
    sub_100058000(&qword_10077A650);
    v7 = swift_dynamicCast();
    v8 = *(v6 + 56);
    if (v7)
    {
      v10 = v2[22];
      v9 = v2[23];
      v11 = v2[19];
      v8(v11, 0, 1, v2[20]);
      sub_10018637C(v11, v9);
      sub_100184E88(v9, v10);
      sub_10018590C(v10);
      sub_100185444(v9);
      sub_100004758(v2);
    }

    else
    {
      v12 = v2[19];
      v8(v12, 1, 1, v2[20]);
      sub_100004758(v2);
      sub_100186314(v12);
    }

    v4 = v2[22];
    v3 = v2[23];
    v5 = v2[19];
  }

  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1001860A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9RemindersP33_A1F076770714D25C3B77983D252A1B6E14TipContentView_internalConfiguration;
  swift_beginAccess();
  a1[3] = type metadata accessor for TTRITipContentConfiguration(0);
  a1[4] = sub_1001862CC(&qword_1007759D0, type metadata accessor for TTRITipContentConfiguration);
  v4 = sub_1000317B8(a1);
  return sub_100184E88(v1 + v3, v4);
}

void (*sub_10018614C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_100185D98(v2);
  return sub_1001861BC;
}

void sub_1001861BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100186204(uint64_t a1)
{
  v2 = type metadata accessor for TTRITipContentConfiguration(0);
  __chkstk_darwin(v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000B0D8(a1, v8);
  sub_100058000(&qword_10077A650);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = result;
    sub_100185444(v4);
    return v6;
  }

  return result;
}

uint64_t sub_1001862CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100186314(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018637C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001863E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITipContentConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100186444(uint64_t a1, uint64_t a2)
{
  v4 = AnyTip.id.getter();
  v6 = v5;
  if (v4 == AnyTip.id.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v14 = 1;
      return v14 & 1;
    }
  }

  v9 = *(type metadata accessor for TTRITipContentConfiguration(0) + 20);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  v12 = (v10 | v11) == 0;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {

    v12 = static Color.== infix(_:_:)();
  }

  v14 = v12 ^ 1;
  return v14 & 1;
}

void sub_1001865F0(Swift::OpaquePointer a1)
{
  swift_getObjectType();

  TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilityAnnounceAutocompletionSuggestionChanges(_:)(a1);
}

void sub_100186640(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_100058000(&qword_100771588);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack;
  v11 = *(v1 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack);
  if (v11)
  {
    sub_100186D64(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100186DD4(v5);
      v12 = *(v1 + v10);
      if (!v12)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_100186E3C(v5, v9);
    v13 = &v9[*(v6 + 24)];
    v14 = *(v13 + 1);
    if (v14)
    {
      v15._rawValue = *&v9[*(v6 + 28)];
      if (*(v15._rawValue + 2))
      {
        v16 = *v13;
        v17 = v11;
        __chkstk_darwin([v17 setHidden:0]);
        *(&v20 - 6) = v15._rawValue;
        *(&v20 - 5) = v17;
        *(&v20 - 4) = v16;
        *(&v20 - 3) = v14;
        *(&v20 - 2) = v1;
        TTRIRemindersListCellAutoCompleteSuggestionsStackView.performSubviewUpdates(block:)();
        sub_100186D10();
        TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilityAnnounceAutocompletionSuggestionChanges(_:)(v15);

        sub_100186EA0(v9);
        return;
      }
    }

    sub_100186EA0(v9);
    v12 = *(v1 + v10);
    if (v12)
    {
LABEL_9:
      v18 = v12;
      TTRIRemindersListCellAutoCompleteSuggestionsStackView.setExclusiveHighlighted(on:)();

      v19 = *(v1 + v10);
      if (v19)
      {
        [v19 setHidden:1];
      }
    }
  }
}

void sub_1001868B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a4;
  v47 = a1;
  v6 = sub_100058000(&qword_100771590);
  __chkstk_darwin(v6 - 8);
  v43 = &v30 - v7;
  v42 = type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAnyReminderTextEditingSuggestion();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  type metadata accessor for TTRAutoCompleteReminderProvider();
  v15 = static TTRAutoCompleteReminderProvider.resultLimit.getter();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = v15;
    if (v15)
    {
      v17 = 0;
      v38 = a5 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_presenter;
      v39 = v15;
      v18 = v46 + 16;
      v19 = *(v47 + 16);
      v34 = (v8 + 16);
      v35 = v19 - 1;
      v32 = (v8 + 8);
      v33 = (v8 + 56);
      v31 = (v46 + 8);
      v36 = v19;
      v37 = v10;
      do
      {
        if (v17 >= v19)
        {
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeHidden(at:)(v17);
        }

        else
        {
          v20 = *(v46 + 16);
          v20(v14, v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v17, v10);
          type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row();
          v21 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.cachedView<A>(ofType:at:)();
          if (v21)
          {
            v22 = v21;
            v23 = v21;
          }

          else
          {
            v23 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.createRow()();
            v22 = 0;
          }

          v20(v41, v14, v10);
          v24 = v22;

          v25 = v18;
          v26 = v40;
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.RowConfiguration.init(suggestion:query:isLast:leftInset:)();
          v28 = v42;
          v27 = v43;
          (*v34)(v43, v26, v42);
          (*v33)(v27, 0, 1, v28);
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.configuration.setter();
          swift_unknownObjectRetain();
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row.suggestionDelegate.setter();
          TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeVisible(_:at:alignment:beforeSpacing:bottomMarginIfLast:)();

          v10 = v37;
          v29 = v26;
          v18 = v25;
          (*v32)(v29, v28);
          (*v31)(v14, v10);
          v16 = v39;
          v19 = v36;
        }

        ++v17;
      }

      while (v16 != v17);
    }
  }
}

void sub_100186CA4(void *a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack);
  *(v1 + OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack) = a1;

  sub_100186D10();
  v4 = a1;

  TTRAccessibilityReminderAutoCompleteAnnouncing.ttrAccessibilitySetUpAccessibilityStatusChangeObservationForAutoCompleteAnnouncements()();
}

unint64_t sub_100186D10()
{
  result = qword_100771580;
  if (!qword_100771580)
  {
    type metadata accessor for TTRIReminderCellAutoCompleteViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771580);
  }

  return result;
}

uint64_t sub_100186D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100186DD4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100186E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100186EA0(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001870F4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  return sub_1001885B8(v5 + v3, a1);
}

uint64_t sub_1001871BC(uint64_t a1)
{
  v3 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  sub_1001885B8(v1 + v6, v5);
  v7 = sub_100188628(v5, a1);
  sub_1000079B4(v5, &qword_1007708D8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100188918(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &qword_1007708D8);
}

uint64_t sub_1001873A0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  sub_100188918(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100187458@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100187550(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_10001F0E0(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1001877D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100187880(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100187948(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100187AA8()
{
  swift_getKeyPath();
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100187B54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels;
  if (!*(v1 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1 || (sub_1001268C0(*(v1 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_100187CB4()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription, &qword_1007708D8);
  v1 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel()
{
  result = qword_100771620;
  if (!qword_100771620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100187E14()
{
  sub_100187F2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for REMHashtagLabelSpecifier();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100187F2C()
{
  if (!qword_100771630)
  {
    type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100771630);
    }
  }
}

uint64_t sub_100187FB8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels) = *(v0 + 24);
}

uint64_t sub_100187FFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v4 - 8);
  v44 = v38 - v5;
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = v38 - v10;
  __chkstk_darwin(v11);
  v40 = v38 - v12;
  v13 = sub_100058000(&unk_100792BA0);
  __chkstk_darwin(v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v38 - v17;
  v45 = a1;
  TTRRemindersListViewModel.HashtagsState.selectorState.getter();
  v19 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v18, 1, v19);
  v41 = v8;
  if (v22 == 1)
  {
    sub_1000079B4(v18, &unk_100792BA0);
    v23 = 0;
  }

  else
  {
    v23 = TTRRemindersListViewModel.HashtagLabelSelectorState.labels.getter();
    (*(v20 + 8))(v18, v19);
  }

  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel___observationRegistrar;
  v46 = v2;
  sub_10001F0E0(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);

  v38[1] = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v2 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels);

  if (v25)
  {
    if (v23)
    {
      v26 = sub_1001268C0(v25, v23);

      if (v26)
      {

        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_11;
  }

  if (v23)
  {
LABEL_11:

    sub_100187B54(v23);
  }

LABEL_12:
  TTRRemindersListViewModel.HashtagsState.selectorState.getter();
  if (v21(v15, 1, v19) == 1)
  {
    sub_1000079B4(v15, &unk_100792BA0);
  }

  else
  {
    v27 = v39;
    TTRRemindersListViewModel.HashtagLabelSelectorState.selection.getter();
    (*(v20 + 8))(v15, v19);
    v29 = v42;
    v28 = v43;
    v30 = v40;
    (*(v42 + 32))(v40, v27, v43);
    swift_getKeyPath();
    v46 = v2;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
    swift_beginAccess();
    v32 = *(v29 + 16);
    v33 = v41;
    v32(v41, v2 + v31, v28);

    sub_10001F0E0(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
    LOBYTE(v31) = dispatch thunk of static Equatable.== infix(_:_:)();
    v34 = *(v29 + 8);
    v34(v33, v28);
    if ((v31 & 1) == 0)
    {
      v32(v33, v30, v28);

      sub_100187550(v33);
    }

    v34(v30, v28);
  }

  KeyPath = swift_getKeyPath();
  v36 = v44;
  TTRRemindersListViewModel.HashtagsState.selectionDescription.getter();
  sub_1003F28C0(KeyPath, v36);

  return sub_1000079B4(v36, &qword_1007708D8);
}

uint64_t sub_1001885B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007708D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&unk_100781FB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1001885B8(a1, &v21 - v12);
  sub_1001885B8(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1001885B8(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_10001F0E0(&unk_1007716E0, &type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v13, &qword_1007708D8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000079B4(v13, &unk_100781FB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000079B4(v13, &qword_1007708D8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100188918(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007708D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188A78@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t sub_100188D20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100188D74@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v57 = a1;
  v58 = a3;
  v56 = a2;
  v59 = a4;
  v5 = *((swift_isaMask & *v4) + 0x50);
  v6 = type metadata accessor for Optional();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  inserted = type metadata accessor for TTRITreeViewTableAdapter.InsertDestination();
  __chkstk_darwin(inserted);
  v14 = &v52 - v13;
  v15 = *(v5 - 8);
  __chkstk_darwin(v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  __chkstk_darwin(v25);
  v53 = &v52 - v26;
  sub_10019CF8C(v57, v56 & 1, v58, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = v15;
    v29 = *(v15 + 32);
    v29(v24, v14, v5);
    sub_100190AA0(v24, v11);
    if ((*(v38 + 48))(v11, 1, v5) == 1)
    {
      (*(v54 + 8))(v11, v55);
    }

    else
    {
      v29(v21, v11, v5);
      v40 = sub_100190C84(v24);
      v41 = *(v38 + 8);
      if ((v42 & 1) == 0)
      {
        v31 = v40;
        v41(v24, v5);
        v39 = v53;
        v29(v53, v21, v5);
        goto LABEL_21;
      }

      v41(v21, v5);
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100003E30(v43, qword_1007716F0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Missing parent/childIndex", v46, 2u);
    }

    (*(v38 + 8))(v24, v5);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_19:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v59, 1, 1, TupleTypeMetadata2);
  }

  v28 = v15;
  v29 = *(v15 + 32);
  v30 = v18;
  v29(v18, v14, v5);
  (*(v28 + 16))(v8, v18, v5);
  (*(v28 + 56))(v8, 0, 1, v5);
  v31 = sub_100191678(v8);
  v33 = v32;
  (*(v54 + 8))(v8, v55);
  if (v33)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_1007716F0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Missing parent child count", v37, 2u);
    }

    (*(v28 + 8))(v30, v5);
    goto LABEL_19;
  }

  v39 = v53;
  v29(v53, v30, v5);
LABEL_21:
  v49 = swift_getTupleTypeMetadata2();
  v50 = *(v49 + 48);
  v51 = v59;
  v29(v59, v39, v5);
  *&v51[v50] = v31;
  return (*(*(v49 - 8) + 56))(v51, 0, 1, v49);
}

unint64_t sub_100189404(unint64_t result, int64_t a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(int64_t, int64_t, unint64_t, uint64_t), void (*a5)(unint64_t, unint64_t, uint64_t), void (*a6)(uint64_t, int64_t))
{
  v7 = result;
  if (result == a2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (*(*v6 + 16) > result)
      {
        v8 = *(*v6 + 16 * result + 32);

        return v8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = a3(result);
  if (*(*v6 + 16) < a2)
  {
    goto LABEL_14;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v14 = v13;

  result = a4(a2, a2, v8, v14);
  if (v7 < a2)
  {
    v15 = v7 + 1;
    v16 = -1;
    v17 = a2;
LABEL_11:
    a5(v15, v17, v16);
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D420;
    *(inited + 32) = v8;

    a6(inited, a2);
    swift_setDeallocating();
    swift_arrayDestroy();

    a6(v19, a2);

    return v8;
  }

  if (v7 > a2)
  {
    v17 = v7 - 1;
    v16 = 1;
    v15 = a2;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001895B0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007716F0);
  v1 = sub_100003E30(v0, qword_1007716F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100189678(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + *a1);
  if (v3)
  {

    if ((a2(v5) & 1) == 0)
    {

      return 0;
    }
  }

  return v3;
}

id sub_1001896C8(uint64_t *a1, uint64_t a2, const char **a3)
{
  v5 = *a1;
  if (*(v3 + *a1))
  {
    swift_unknownObjectWeakAssign();
    v6 = *(v3 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v3 + qword_100771730);
  v8 = *a3;

  return [v7 v8];
}

uint64_t sub_100189738(uint64_t (*a1)(void))
{
  if (!sub_100189678(&qword_100771758, sub_100128A14))
  {
    return 0;
  }

  v2 = a1();

  return v2;
}

uint64_t sub_1001897A4(uint64_t a1, int a2)
{
  v11 = a2;
  v3 = (v2 + qword_100771778);
  swift_beginAccess();
  v4 = v3[1];

  *v3 = sub_100489B50(v5);
  v3[1] = v4;

  if (v11)
  {
    *(v2 + qword_100771788) = 0;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();

    Set.subtracting(_:)();
    v6 = Set.subtracting(_:)();
    Set.subtracting(_:)();
    v7 = Set.subtracting(_:)();

    __chkstk_darwin(v8);
    v10[2] = v6;
    v10[3] = v2;
    v10[4] = v7;
    v13 = sub_1001A6134;
    v14 = v10;
    sub_10018B568(sub_1001A84C0, v12, 0, 0, 0, 0);

    *(v2 + qword_100771788) = 1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_100189A00()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;

  TTRAnyTreeViewCollapsedStatesPersisting.collapsedTreeViewItemIDsChangePublisher.getter();

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = *((v3 & v2) + 0x50);
  v5[3] = *((v3 & v2) + 0x58);
  v5[4] = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v6 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v1 + qword_100771790) = v6;
}

id sub_100189C20(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[qword_100771708] = 0;
  *&v2[qword_100771710] = 0;
  swift_unknownObjectWeakInit();
  v7 = qword_100771720;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TTRAnyTreeViewCollapsedStatesPersisting();
  type metadata accessor for TTRTreeViewCollapsedStatesInMemoryPersistence();
  v18 = TTRTreeViewCollapsedStatesInMemoryPersistence.__allocating_init()();
  swift_getWitnessTable();
  *&v2[v7] = TTRAnyTreeViewCollapsedStatesPersisting.__allocating_init<A>(base:)();
  *&v2[qword_100771740] = 0;
  *&v2[qword_100771748] = 0;
  *&v2[qword_100771750] = 0;
  *&v2[qword_100771758] = 0;
  v8 = &v2[qword_100771760];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v8[24] = 0;
  v2[qword_100771768] = 0;
  *&v2[qword_100771770] = 0;
  v9 = &v2[qword_100771778];
  *v9 = sub_100489A84();
  v9[1] = v10;
  v11 = qword_100771780;
  *&v3[v11] = sub_100421968();
  v3[qword_100771788] = 1;
  *&v3[qword_100771790] = 0;
  v12 = qword_100771798;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v3[v12] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  swift_unknownObjectUnownedInit();
  *&v3[qword_100771730] = a2;
  v13 = &v3[qword_100771738];
  v13[3] = sub_100003540(0, &qword_100771B60);
  v13[4] = &off_1007320F8;
  *v13 = a2;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v17, "init");
  sub_100189A00();

  return v15;
}

id sub_100189F08()
{
  sub_1001A0254(0);
  *(v0 + qword_100771748) = 0;

  sub_1001A0318(0, &qword_100771750, sub_1002DF79C, &selRef_setPrefetchDataSource_);
  sub_1001A0318(0, &qword_100771758, sub_100128A14, &selRef_setDelegate_);
  sub_1001A03E4(0);

  return sub_1001A043C(0);
}

uint64_t sub_100189FAC()
{
  v1 = v0;
  if (*(v0 + qword_100771768) == 1)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_1007716F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to read sectionMetadata while it is being modified", v5, 2u);
    }
  }

  v6 = *(v1 + qword_100771760);
  if (v6)
  {
    v7 = *(v1 + qword_100771760);
  }

  else
  {
    v7 = sub_10019A418(v1);
  }

  sub_1001008E4(v6);
  return v7;
}

uint64_t sub_10018A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for TTRITreeViewNodeReuseQueue();
  v9 = sub_10059F120();
  v10 = sub_10018A2F8(a3, v9);

  v11 = sub_10023A8CC(v10);

  if (*(a2 + qword_100771788) == 1)
  {
    swift_beginAccess();
    v12 = type metadata accessor for TTRITreeViewCollapsedStates();
    sub_1004893A0(a3, v12);
    swift_endAccess();
  }

  v13 = type metadata accessor for TTRITreeViewSectionsMetadata();
  sub_10015EB58(v11, a4, v13);
  sub_100086F44(a3, 4, 0, 1);
  v17[0] = v11;
  type metadata accessor for TTRITreeViewNode();
  v14 = type metadata accessor for Array();
  swift_getWitnessTable();
  sub_1000872C8(v17, 0, a6, 0, v14);
}

uint64_t sub_10018A2F8(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v4 = *v2;
  v51 = swift_isaMask & *v2;
  v5 = *((swift_isaMask & v4) + 0x50);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = *(v5 - 8);
  v12 = __chkstk_darwin(v8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = *(*a1 + 144);
  swift_beginAccess();
  v45 = v11;
  v20 = *(v11 + 16);
  v19 = v11 + 16;
  v18 = v20;
  v57 = v5;
  v20(v16, (a1 + v17), v5);
  v21 = sub_100189678(&qword_100771740, sub_100128A14);
  if (v21)
  {
    v22 = v21;
    v54 = v16;
    v48 = qword_100771728;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v24 = v57;
    v49 = v18;
    v50 = v19;
    v18(v10, (a1 + v17), v57);
    v25 = v45;
    v26 = v24;
    v27 = v45 + 56;
    v44 = *(v45 + 56);
    v44(v10, 0, 1, v26);
    v28 = v22;
    v29 = sub_1002DF538();

    v30 = v56 + 8;
    v43 = *(v56 + 8);
    v43(v10, v55);
    v53 = v29;
    if (v29 < 1)
    {
      v40 = v57;
      type metadata accessor for TTRITreeViewNode();
      v38 = static Array._allocateUninitialized(_:)();

      (*(v25 + 8))(v54, v40);
    }

    else
    {
      type metadata accessor for TTRITreeViewNode();
      v56 = v30;
      v59 = Array.init()();
      v47 = type metadata accessor for Array();
      Array.reserveCapacity(_:)(v53);
      v31 = 0;
      v51 = v28;
      v45 = v27;
      v46 = a1;
      v32 = (v25 + 8);
      v34 = v43;
      v33 = v44;
      do
      {
        v35 = swift_unknownObjectUnownedLoadStrong();
        v36 = v57;
        v49(v10, v54, v57);
        v33(v10, 0, 1, v36);
        sub_1002DF4E4();

        v34(v10, v55);
        v58 = sub_10018BBC4(v14, v46, v52);
        Array.append(_:)();
        v37 = *v32;
        (*v32)(v14, v36);
        ++v31;
      }

      while (v53 != v31);

      v37(v54, v57);
      return v59;
    }
  }

  else
  {
    v39 = v57;
    type metadata accessor for TTRITreeViewNode();
    v38 = static Array._allocateUninitialized(_:)();
    (*(v45 + 8))(v16, v39);
  }

  return v38;
}

uint64_t sub_10018A798(void (*a1)(__int128 *))
{
  *&v12 = sub_100189FAC();
  *(&v12 + 1) = v3;
  v13 = v4;
  v14 = v5 & 1;
  v6 = qword_100771768;
  *(v1 + qword_100771768) = 1;
  a1(&v12);
  v7 = v13;
  v8 = v14;
  v9 = v1 + qword_100771760;
  v10 = *(v1 + qword_100771760);
  *v9 = v12;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  result = sub_100100898(v10);
  *(v1 + v6) = 0;
  return result;
}

uint64_t sub_10018A844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10023AD08();
  if (*(a3 + qword_100771788) == 1)
  {
    swift_beginAccess();
    v6 = type metadata accessor for TTRITreeViewCollapsedStates();
    sub_1004893A0(a2, v6);
    v5 = swift_endAccess();
  }

  __chkstk_darwin(v5);
  return sub_10018A798(sub_1001A6084);
}

uint64_t sub_10018A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for TTRITreeViewSectionsMetadata();
  v11 = sub_10015ECD8(a2, a3, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_100086F44(a5, 4, 0, 1);
  v20[0] = v11;
  v20[1] = v13;
  v20[2] = v15;
  v20[3] = v17;
  type metadata accessor for TTRITreeViewNode();
  v18 = type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  sub_1000872C8(v20, 1, a6, 0, v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_10018AAA4(uint64_t a1)
{
  v35 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100058000(&unk_100771B50);
  __chkstk_darwin(v37);
  v7 = &v33 - v6;
  v8 = sub_100058000(&qword_10076B9C0);
  v9 = __chkstk_darwin(v8 - 8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v16 = sub_100189FAC();
  v20 = sub_10015F984(v35, v16, v18, v19, v17 & 1, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58));

  if (v20)
  {
    v21 = qword_1007A84C0;
    swift_beginAccess();
    v22 = v36;
    (*(v36 + 16))(v15, v20 + v21, v4);

    v23 = *(v22 + 56);
    v23(v15, 0, 1, v4);
  }

  else
  {
    v22 = v36;
    v23 = *(v36 + 56);
    v23(v15, 1, 1, v4);
  }

  (*(v22 + 104))(v13, enum case for TTRITreeViewExpandedState.notExpandable(_:), v4);
  v23(v13, 0, 1, v4);
  v24 = *(v37 + 48);
  sub_10000794C(v15, v7, &qword_10076B9C0);
  sub_10000794C(v13, &v7[v24], &qword_10076B9C0);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v4) != 1)
  {
    v27 = v34;
    sub_10000794C(v7, v34, &qword_10076B9C0);
    if (v25(&v7[v24], 1, v4) != 1)
    {
      v28 = v33;
      (*(v22 + 32))(v33, &v7[v24], v4);
      sub_1001A670C(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
      v29 = v27;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v22 + 8);
      v31(v28, v4);
      sub_1000079B4(v13, &qword_10076B9C0);
      sub_1000079B4(v15, &qword_10076B9C0);
      v31(v29, v4);
      sub_1000079B4(v7, &qword_10076B9C0);
      v26 = v30 ^ 1;
      return v26 & 1;
    }

    sub_1000079B4(v13, &qword_10076B9C0);
    sub_1000079B4(v15, &qword_10076B9C0);
    (*(v22 + 8))(v27, v4);
    goto LABEL_9;
  }

  sub_1000079B4(v13, &qword_10076B9C0);
  sub_1000079B4(v15, &qword_10076B9C0);
  if (v25(&v7[v24], 1, v4) != 1)
  {
LABEL_9:
    sub_1000079B4(v7, &unk_100771B50);
    v26 = 1;
    return v26 & 1;
  }

  sub_1000079B4(v7, &qword_10076B9C0);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_10018AFFC(uint64_t a1)
{
  v34 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100058000(&unk_100771B50);
  __chkstk_darwin(v36);
  v7 = &v32 - v6;
  v8 = sub_100058000(&qword_10076B9C0);
  v9 = __chkstk_darwin(v8 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_100189FAC();
  v20 = sub_10015F984(v34, v16, v18, v19, v17 & 1, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58));

  if (v20)
  {
    v21 = qword_1007A84C0;
    swift_beginAccess();
    v22 = v35;
    (*(v35 + 16))(v15, v20 + v21, v4);

    v23 = *(v22 + 56);
    v23(v15, 0, 1, v4);
  }

  else
  {
    v22 = v35;
    v23 = *(v35 + 56);
    v23(v15, 1, 1, v4);
  }

  (*(v22 + 104))(v13, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  v23(v13, 0, 1, v4);
  v24 = *(v36 + 48);
  sub_10000794C(v15, v7, &qword_10076B9C0);
  sub_10000794C(v13, &v7[v24], &qword_10076B9C0);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v4) != 1)
  {
    v27 = v33;
    sub_10000794C(v7, v33, &qword_10076B9C0);
    if (v25(&v7[v24], 1, v4) != 1)
    {
      v28 = v32;
      (*(v22 + 32))(v32, &v7[v24], v4);
      sub_1001A670C(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState);
      v29 = v27;
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v22 + 8);
      v30(v28, v4);
      sub_1000079B4(v13, &qword_10076B9C0);
      sub_1000079B4(v15, &qword_10076B9C0);
      v30(v29, v4);
      sub_1000079B4(v7, &qword_10076B9C0);
      return v26 & 1;
    }

    sub_1000079B4(v13, &qword_10076B9C0);
    sub_1000079B4(v15, &qword_10076B9C0);
    (*(v22 + 8))(v27, v4);
    goto LABEL_9;
  }

  sub_1000079B4(v13, &qword_10076B9C0);
  sub_1000079B4(v15, &qword_10076B9C0);
  if (v25(&v7[v24], 1, v4) != 1)
  {
LABEL_9:
    sub_1000079B4(v7, &unk_100771B50);
    v26 = 0;
    return v26 & 1;
  }

  sub_1000079B4(v7, &qword_10076B9C0);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_10018B568(void (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = swift_isaMask & *v6;
  v54 = qword_100771770;
  v11 = *&v6[qword_100771770];
  if (!v11)
  {
    v12 = sub_10019A77C(v6, a3);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = *&v6[qword_100771770];
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_3:
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  swift_beginAccess();
  v14 = *(v12 + 64);

  sub_10003BE34(a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 64) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100547070(0, v14[2] + 1, 1, v14);
    *(v12 + 64) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100547070((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_1001A0210;
  v18[5] = v13;
  *(v12 + 64) = v14;
  swift_endAccess();
LABEL_10:
  a1(v12);
  if (!v11)
  {
    if (*(v12 + 72))
    {
    }

    else
    {
      if (sub_100086DDC())
      {
        swift_beginAccess();
        v19 = *(v52 + 80);
        v20 = *(v52 + 88);

        v21 = sub_100489DAC();

        if ((v21 & 1) == 0)
        {

          TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();
        }

        __chkstk_darwin(v22);
        swift_beginAccess();
        type metadata accessor for TTRITreeViewSoftReloadContext();
        sub_1004219EC();
        swift_endAccess();
        v23 = sub_100189FAC();
        v25 = v24;
        v27 = v26;
        v29 = v28;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v31 = _typeName(_:qualified:)();
        sub_1000874E4(v23, v25, v27, v29 & 1, v31, v32, &v58);

        v65[2] = v60;
        v65[3] = v61;
        v65[4] = v62;
        v51 = v64;
        v66 = v63;
        v65[0] = v58;
        v65[1] = v59;
        if (sub_100189678(&qword_100771748, sub_1002DF79C))
        {

          v33 = swift_allocObject();
          *(v33 + 16) = v7;
          *(v33 + 24) = v12;
          v50 = v33;
          v34 = v7;

          v35 = sub_1001A01D4;
        }

        else
        {
          v35 = 0;
          v50 = 0;
        }

        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        v40[2] = v19;
        v40[3] = v20;
        v40[4] = v39;
        v53 = qword_100771738;
        sub_10000B0D8(&v7[qword_100771738], v55);
        v41 = v56;
        v42 = v57;
        sub_10000C36C(v55, v56);
        v43 = *(v42 + 32);

        v43(v65, sub_1001A01C0, v40, v35, v50, sub_1001A01CC, v12, v41, v42);
        sub_10008B800(&v58);

        sub_100004758(v55);
        v44 = *(v12 + 16);
        v45 = *(v12 + 24);
        v46 = *(v12 + 32);
        LOBYTE(v39) = *(v12 + 40);

        sub_10019B17C(v51, v44, v45, v46, v39);

        sub_10000B0D8(&v7[v53], v55);
        v47 = v56;
        v48 = v57;
        sub_10000C36C(v55, v56);
        (*(v48 + 24))(v47, v48);

        sub_1000301AC(v35);

        v38 = v55;
      }

      else
      {
        sub_10000B0D8(&v6[qword_100771738], &v58);
        v36 = *(&v59 + 1);
        v37 = v60;
        sub_10000C36C(&v58, *(&v59 + 1));
        (*(v37 + 24))(v36, v37);

        v38 = &v58;
      }

      sub_100004758(v38);
    }

    *&v7[v54] = 0;
  }
}

uint64_t *sub_10018BBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a1;
  v5 = *((swift_isaMask & *v3) + 0x58);
  v38 = *((swift_isaMask & *v3) + 0x50);
  v39 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v35 = v32 - v7;
  v8 = type metadata accessor for TTRITreeViewExpandedState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v34 = v32 - v14;
  __chkstk_darwin(v13);
  v16 = v32 - v15;
  v17 = sub_100189678(&qword_100771740, sub_100128A14);
  v40 = v3;
  if (v17 && (Strong = swift_unknownObjectUnownedLoadStrong(), v19 = sub_1002DF50C(), , Strong, (v19 & 1) != 0))
  {
    v20 = (v40 + qword_100771778);
    swift_beginAccess();
    v32[1] = *v20;
    v33 = a2;
    v21 = v39;
    v32[0] = *(v39 + 24);

    v22 = v35;
    (v32[0])(v38, v21);
    a2 = v33;
    LOBYTE(v20) = sub_1004899B8();

    (*(v36 + 8))(v22, v37);
    v23 = *(v9 + 104);
    v24 = &enum case for TTRITreeViewExpandedState.collapsed(_:);
    if ((v20 & 1) == 0)
    {
      v24 = &enum case for TTRITreeViewExpandedState.expanded(_:);
    }

    v25 = v34;
    v23(v34, *v24, v8);
    (*(v9 + 32))(v16, v25, v8);
  }

  else
  {
    v23 = *(v9 + 104);
    v23(v16, enum case for TTRITreeViewExpandedState.notExpandable(_:), v8);
  }

  v26 = sub_10059F1D4(v42, a2, v16);
  v23(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v8);
  v27 = static TTRITreeViewExpandedState.== infix(_:_:)();
  v28 = *(v9 + 8);
  v28(v12, v8);
  if (v27)
  {
    v29 = sub_10018A2F8(v26, v41);
  }

  else
  {
    type metadata accessor for TTRITreeViewNode();
    v29 = static Array._allocateUninitialized(_:)();
  }

  v30 = v29;
  v28(v16, v8);
  swift_beginAccess();
  v26[8] = v30;

  return v26;
}

uint64_t sub_10018C000(char *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v61 = a3;
  v63 = a2;
  v6 = *v3;
  v7 = swift_isaMask;
  v59 = swift_isaMask & v6;
  v8 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v8 - 8);
  v54 = &v53 - v9;
  v10 = type metadata accessor for IndexPath();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRITreeViewExpandedState();
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  v18 = *((v7 & v6) + 0x50);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v53 - v22;
  v24 = *(v18 - 8);
  __chkstk_darwin(v21);
  v62 = &v53 - v25;
  v60 = a1;
  result = IndexSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    (*(v20 + 16))(v23, v63, v19);
    if ((*(v24 + 48))(v23, 1, v18) == 1)
    {
      v27 = (*(v20 + 8))(v23, v19);
      __chkstk_darwin(v27);
      v29 = v60;
      v28 = v61;
      *(&v53 - 4) = v4;
      *(&v53 - 3) = v29;
      *(&v53 - 2) = v28;
      return sub_10018B568(sub_1001A1574, (&v53 - 6), 0, 0, 0, 0);
    }

    else
    {
      v30 = v62;
      (*(v24 + 32))(v62, v23, v18);
      v31 = sub_100189FAC();
      v35 = sub_10015F984(v30, v31, v33, v34, v32 & 1, v18, *(v59 + 88));

      if (v35)
      {
        v36 = qword_1007A84C0;
        swift_beginAccess();
        v37 = v57;
        v38 = v58;
        (*(v57 + 16))(v17, v35 + v36, v58);
        (*(v37 + 104))(v15, enum case for TTRITreeViewExpandedState.expanded(_:), v38);
        LOBYTE(v36) = static TTRITreeViewExpandedState.== infix(_:_:)();
        v39 = *(v37 + 8);
        v39(v15, v38);
        v39(v17, v38);
        if (v36)
        {
          sub_100189FAC();
          v41 = v35;
          v42 = v54;
          sub_1001600E4(v41, v40 & 1, v54);

          v44 = v55;
          v43 = v56;
          if ((*(v55 + 48))(v42, 1, v56) == 1)
          {
            sub_1000079B4(v42, &unk_100771B10);
            if (qword_100766FC8 != -1)
            {
              swift_once();
            }

            v45 = type metadata accessor for Logger();
            sub_100003E30(v45, qword_1007716F0);
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&_mh_execute_header, v46, v47, "Unable to find childrenStartIndexPath", v48, 2u);
            }

            else
            {
            }

            return (*(v24 + 8))(v62, v18);
          }

          else
          {
            v49 = v53;
            v50 = (*(v44 + 32))(v53, v42, v43);
            __chkstk_darwin(v50);
            v52 = v60;
            v51 = v61;
            *(&v53 - 6) = v4;
            *(&v53 - 5) = v52;
            *(&v53 - 4) = v41;
            *(&v53 - 3) = v49;
            *(&v53 - 2) = v51;
            sub_10018B568(sub_1001A15CC, (&v53 - 8), 0, 0, 0, 0);

            (*(v24 + 8))(v62, v18);
            return (*(v44 + 8))(v49, v43);
          }
        }

        else
        {
          (*(v24 + 8))(v62, v18);
        }
      }

      else
      {
        return (*(v24 + 8))(v30, v18);
      }
    }
  }

  return result;
}

uint64_t (*sub_10018C748(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *, void)
{
  v57 = a6;
  v58 = a7;
  v55 = a1;
  v56 = a5;
  v60 = a3;
  v61 = a4;
  v54 = *a3;
  v8 = type metadata accessor for IndexPath();
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for IndexSet.Index();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BA30);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_100058000(&qword_10076BA38);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v19 = type metadata accessor for IndexSet();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v21(v14, a2, v19);
  v21(v18, v14, v19);
  v22 = *(v16 + 44);
  v23 = sub_1001A670C(&qword_10076BA20, &type metadata accessor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  (*(v20 + 8))(v14, v19);
  v49 = qword_100771778;
  ++v62;
  v59 = (v47 + 2);
  ++v47;
  v52 = v19;
  v53 = v18;
  v51 = v10;
  v50 = v23;
  v48 = v8;
  while (1)
  {
    v24 = v63;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001A670C(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v25 = v64;
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v62)(v24, v25);
    if (v26)
    {
      return sub_1000079B4(v18, &qword_10076BA38);
    }

    sub_1001A670C(&qword_10076BA40, &type metadata accessor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v27 = dispatch thunk of Collection.subscript.read();
    v29 = *v28;
    v27(&v65, 0);
    v30 = sub_10023B340(v29);
    v32 = v31;
    (*v59)(v10, v61, v8);
    result = IndexPath.row.modify();
    if (__OFADD__(*v34, v30))
    {
      break;
    }

    *v34 += v30;
    result = result(&v65, 0);
    if (__OFSUB__(v32, v30))
    {
      goto LABEL_8;
    }

    v35 = type metadata accessor for TTRITreeViewSectionsMetadata();
    v36 = sub_10015ECD8(v10, v32 - v30, v35);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v65 = v36;
    v66 = v37;
    v67 = v39;
    v68 = v41;
    swift_beginAccess();
    v43 = v22;
    v44 = type metadata accessor for TTRITreeViewCollapsedStates();
    type metadata accessor for TTRITreeViewNode();
    v45 = type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    v46 = v44;
    v22 = v43;
    sub_10048973C(&v65, v46, v45);
    swift_endAccess();
    v65 = v36;
    v66 = v38;
    v8 = v48;
    v67 = v40;
    v68 = v42;
    v10 = v51;
    v18 = v53;
    sub_1000872C8(&v65, 1, v58, 0, v45);
    (*v47)(v10, v8);
    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10018CD5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29[5] = a4;
  v30 = a5;
  v29[3] = a1;
  v29[4] = a3;
  v29[2] = swift_isaMask & *a3;
  v33 = type metadata accessor for IndexSet.Index();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076BA30);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_100058000(&qword_10076BA38);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for IndexSet();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(v10, a2, v14);
  v16(v13, v10, v14);
  sub_1001A670C(&qword_10076BA20, &type metadata accessor for IndexSet);
  dispatch thunk of Collection.endIndex.getter();
  (*(v15 + 8))(v10, v14);
  v29[1] = qword_100771778;
  v31 = (v6 + 8);
  while (1)
  {
    v17 = v32;
    dispatch thunk of Collection.startIndex.getter();
    sub_1001A670C(&qword_10076BA28, &type metadata accessor for IndexSet.Index);
    v18 = v33;
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v31)(v17, v18);
    if (v19)
    {
      break;
    }

    sub_1001A670C(&qword_10076BA40, &type metadata accessor for IndexSet);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v20 = dispatch thunk of Collection.subscript.read();
    v22 = *v21;
    v20(v34, 0);
    v23 = type metadata accessor for TTRITreeViewSectionsMetadata();
    v24 = sub_10015E454(v22, v23);
    v26 = v25;
    swift_beginAccess();
    v27 = type metadata accessor for TTRITreeViewCollapsedStates();
    sub_10048992C(v24, v26, v27);
    swift_endAccess();
    sub_1000874D4(v24, v26, 1, v30, 0);
  }

  return sub_1000079B4(v13, &qword_10076BA38);
}

uint64_t sub_10018D1A4(void (*a1)(char *, void, uint64_t), void (*a2)(char *, void, uint64_t), uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v150 = a4;
  v151 = a2;
  v134 = a1;
  v8 = *v5;
  v9 = swift_isaMask;
  v149 = swift_isaMask & *v5;
  v10 = type metadata accessor for IndexSet();
  v143 = *(v10 - 8);
  v144 = v10;
  __chkstk_darwin(v10);
  v142 = (&v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100058000(&unk_100771B10);
  v13 = __chkstk_darwin(v12 - 8);
  v136 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v128 - v15;
  v139 = type metadata accessor for IndexPath();
  v140 = *(v139 - 8);
  v16 = __chkstk_darwin(v139);
  v135 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v138 = &v128 - v18;
  v19 = type metadata accessor for TTRITreeViewExpandedState();
  v20 = *(v19 - 8);
  v147 = v19;
  v148 = v20;
  v21 = __chkstk_darwin(v19);
  v146 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v145 = &v128 - v24;
  v156 = v5;
  v25 = *((v9 & v8) + 0x50);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v23);
  v152 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v153 = &v128 - v29;
  v30 = type metadata accessor for Optional();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v141 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v128 - v34;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = __chkstk_darwin(TupleTypeMetadata2 - 8);
  v39 = &v128 - v38;
  v40 = *(v37 + 56);
  v154 = v31;
  v41 = *(v31 + 16);
  v41(&v128 - v38, a3, v30);
  v41(&v39[v40], a5, v30);
  v42 = *(v26 + 48);
  v43 = v42(v39, 1, v25);
  v155 = v30;
  if (v43 != 1)
  {
    v41(v35, v39, v30);
    if (v42(&v39[v40], 1, v25) == 1)
    {
      (*(v26 + 8))(v35, v25);
      goto LABEL_35;
    }

    v48 = v26;
    v49 = *(v26 + 32);
    v50 = v153;
    v49(v153, v35, v25);
    v133 = v39;
    v51 = v152;
    v49(v152, &v39[v40], v25);
    v52 = sub_100189FAC();
    v53 = *(v149 + 88);
    v57 = sub_10015F984(v50, v52, v55, v56, v54 & 1, v25, v53);

    v47 = v154;
    if (!v57)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_100003E30(v78, qword_1007716F0);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.info.getter();
      v81 = os_log_type_enabled(v79, v80);
      v82 = v152;
      if (v81)
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "oldParentNode is not found, nothing to do.", v83, 2u);
      }

      v84 = *(v48 + 8);
      v84(v82, v25);
      v84(v153, v25);
      goto LABEL_28;
    }

    v149 = v57;
    v58 = sub_100189FAC();
    v132 = v25;
    v62 = sub_10015F984(v51, v58, v60, v61, v59 & 1, v25, v53);

    if (v62)
    {
      v63 = qword_1007A84C0;
      swift_beginAccess();
      v64 = v147;
      v65 = v148;
      v66 = *(v148 + 16);
      v67 = v145;
      v131 = v148 + 16;
      v130 = v66;
      v66(v145, v62 + v63, v147);
      v68 = v146;
      v128 = *(v65 + 104);
      v128(v146, enum case for TTRITreeViewExpandedState.expanded(_:), v64);
      LOBYTE(v63) = static TTRITreeViewExpandedState.== infix(_:_:)();
      v70 = *(v65 + 8);
      v69 = v65 + 8;
      v70(v68, v64);
      v129 = v70;
      v70(v67, v64);
      if (v63)
      {
        v144 = v62;
        v148 = v69;
        sub_100189FAC();
        v72 = v137;
        sub_1001600E4(v149, v71 & 1, v137);

        v73 = v140;
        v74 = *(v140 + 48);
        v75 = v139;
        if (v74(v72, 1, v139) == 1)
        {
          sub_1000079B4(v72, &unk_100771B10);
          v76 = v152;
          v77 = v132;
        }

        else
        {
          v142 = *(v73 + 32);
          v143 = v73 + 32;
          v142(v138, v72, v75);
          sub_100189FAC();
          v98 = v136;
          sub_1001600E4(v144, v97 & 1, v136);

          v99 = v74(v98, 1, v75);
          v77 = v132;
          if (v99 != 1)
          {
            v106 = v135;
            v142(v135, v98, v75);
            v107 = qword_1007A84C0;
            v108 = v149;
            swift_beginAccess();
            v109 = v145;
            v110 = v147;
            v130(v145, v108 + v107, v147);
            v111 = v146;
            v128(v146, enum case for TTRITreeViewExpandedState.collapsed(_:), v110);
            LOBYTE(v107) = static TTRITreeViewExpandedState.== infix(_:_:)();
            v112 = v129;
            v129(v111, v110);
            v113 = v112(v109, v110);
            v114 = v152;
            __chkstk_darwin(v113);
            if (v107)
            {
              v115 = v134;
              *(&v128 - 4) = v156;
              *(&v128 - 3) = v115;
              v126 = v144;
              v127 = v150;
              sub_10018B568(sub_1001A1D40, (&v128 - 6), 0, 0, 0, 0);

              v116 = *(v48 + 8);
              v117 = v132;
              v116(v114, v132);
              v116(v153, v117);
              v118 = *(v140 + 8);
              v119 = v139;
              v118(v106, v139);
              v120 = v138;
            }

            else
            {
              *(&v128 - 8) = v156;
              *(&v128 - 7) = v108;
              v121 = v150;
              v122 = v144;
              *(&v128 - 6) = v151;
              *(&v128 - 5) = v122;
              v123 = v138;
              *(&v128 - 4) = v121;
              *(&v128 - 3) = v123;
              v126 = v106;
              sub_10018B568(sub_1001A1CDC, (&v128 - 10), 0, 0, 0, 0);

              v124 = *(v48 + 8);
              v125 = v132;
              v124(v114, v132);
              v124(v153, v125);
              v118 = *(v140 + 8);
              v119 = v139;
              v118(v106, v139);
              v120 = v123;
            }

            v118(v120, v119);
LABEL_28:
            v39 = v133;
            return (*(v47 + 8))(v39, v155);
          }

          sub_1000079B4(v98, &unk_100771B10);
          (*(v140 + 8))(v138, v75);
          v76 = v152;
        }

        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_100003E30(v100, qword_1007716F0);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "Unable to find old/newChildrenStartIndexPath", v103, 2u);
        }

        v104 = *(v48 + 8);
        v104(v76, v77);
        v104(v153, v77);
        goto LABEL_28;
      }
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100003E30(v85, qword_1007716F0);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    v88 = os_log_type_enabled(v86, v87);
    v89 = v132;
    if (v88)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "newParentNode is not found or not expanded, treating this as a delete.", v90, 2u);
    }

    sub_100058000(&unk_10076B9F0);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_10062D400;
    *(v91 + 32) = v151;
    v157 = v91;
    sub_1001A670C(&unk_100771B20, &type metadata accessor for IndexSet);
    sub_100058000(&unk_10076BA00);
    sub_10011763C(&qword_100771B30, &unk_10076BA00);
    v92 = v142;
    v93 = v144;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v94 = v141;
    v95 = v153;
    (*(v48 + 16))(v141, v153, v89);
    (*(v48 + 56))(v94, 0, 1, v89);
    sub_10018C000(v92, v94, 0x64);

    (*(v47 + 8))(v94, v155);
    (*(v143 + 8))(v92, v93);
    v96 = *(v48 + 8);
    v96(v152, v89);
    v96(v95, v89);
    goto LABEL_28;
  }

  v44 = v42(&v39[v40], 1, v25);
  if (v44 == 1)
  {
    __chkstk_darwin(v44);
    v45 = v150;
    v46 = v151;
    *(&v128 - 4) = v156;
    *(&v128 - 3) = v46;
    v126 = v45;
    sub_10018B568(sub_1001A1D98, (&v128 - 6), 0, 0, 0, 0);
    v47 = v154;
    return (*(v47 + 8))(v39, v155);
  }

LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10018E230(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  *&v15 = sub_1000C84C8();
  *(&v15 + 1) = v7;
  v16 = v8;
  v17 = v9 & 1;
  v10 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  v11 = sub_100189404(a3, a4, sub_1000C5CC8, sub_1000EDADC, sub_1000C4548, sub_1000C4C10);
  sub_1001A0B30(v11, 2u, 0, 1);

  v12 = a2 + qword_100771760;
  v13 = *(a2 + qword_100771760);
  *v12 = v15;
  *(v12 + 16) = v16;
  *(v12 + 24) = v17;
  result = sub_100100898(v13);
  *(a2 + v10) = 0;
  return result;
}

uint64_t sub_10018E360(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  *&v15 = sub_1000C8504();
  *(&v15 + 1) = v7;
  v16 = v8;
  v17 = v9 & 1;
  v10 = qword_100771768;
  *(a2 + qword_100771768) = 1;
  v11 = sub_100189404(a3, a4, sub_1000C5D78, sub_1000EDB04, sub_1000C49CC, sub_1000C4FC8);
  sub_1001A0CEC(v11, 2u, 0, 1);

  v12 = a2 + qword_100771760;
  v13 = *(a2 + qword_100771760);
  *v12 = v15;
  *(v12 + 16) = v16;
  *(v12 + 24) = v17;
  result = sub_100100898(v13);
  *(a2 + v10) = 0;
  return result;
}

uint64_t sub_10018E490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRITreeViewSectionsMetadata();
  v6 = sub_10015E918(a2, a3, v5);
  sub_1000874D4(v6, v7, 2, 0, 1);
}

void (*sub_10018E544(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *, void)
{
  v30[2] = a1;
  v30[3] = a6;
  v31 = a5;
  v8 = *a2;
  v9 = swift_isaMask;
  v10 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v10 - 8);
  v12 = v30 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = *((v9 & v8) + 0x50);
  type metadata accessor for TTRITreeViewNodeReuseQueue();
  v17 = sub_10059F120();
  v18 = sub_10018BBC4(a3, a4, v17);

  v30[4] = v18;
  v19 = sub_10023B6B0(v18, v31);
  v31 = v20;
  sub_100189FAC();
  sub_1001600E4(a4, v21 & 1, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1000079B4(v12, &unk_100771B10);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_1007716F0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Can't find indexPath to insert currentItem into", v25, 2u);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    result = IndexPath.row.modify();
    if (__OFADD__(*v27, v31))
    {
      __break(1u);
    }

    else
    {
      *v27 += v31;
      result(v32, 0);
      v28 = type metadata accessor for TTRITreeViewSectionsMetadata();
      sub_10015EB58(v19, v16, v28);
      v32[0] = v19;
      type metadata accessor for TTRITreeViewNode();
      v29 = type metadata accessor for Array();
      swift_getWitnessTable();
      sub_1000872C8(v32, 0, 0, 1, v29);

      (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_10018E958(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = sub_10023BABC(a3, a4, a5);
  v7 = v6;
  v9 = v8;
  result = IndexPath.row.getter();
  v11 = __OFADD__(result, v5);
  v12 = result + v5;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFADD__(result, v7);
  v13 = result + v7;
  if (v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v13 < v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = IndexPath.row.getter();
  v11 = __OFADD__(result, v9);
  v14 = result + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = IndexPath.section.getter();
  result = IndexPath.section.getter();
  if (v15 != result || v12 >= v14)
  {
    goto LABEL_9;
  }

  v16 = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
    goto LABEL_14;
  }

  v11 = __OFSUB__(v14, v16);
  v14 -= v16;
  if (!v11)
  {
LABEL_9:
    v17 = IndexPath.section.getter();
    v18 = IndexPath.section.getter();
    v19 = type metadata accessor for TTRITreeViewSectionsMetadata();
    v24[0] = sub_10015EEAC(v12, v13, v17, v18, v14, v19);
    v24[1] = v20;
    v24[2] = v21;
    v24[3] = v22;
    type metadata accessor for TTRITreeViewNode();
    v23 = type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    sub_1000872C8(v24, 2, 0, 1, v23);
    return swift_unknownObjectRelease();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10018EB2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v89 = a4;
  v109 = a2;
  v103 = type metadata accessor for TTRITreeViewExpandedState();
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  v16 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v16 - 8);
  v106 = &v80 - v17;
  v18 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v18 - 8);
  v20 = &v80 - v19;
  v81 = a1;
  v21 = *a1;
  v22 = *(v21 + 16);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v108 = v9;
  v24 = *(v9 + 56);
  v111.i64[0] = v8;
  v24(v20, 1, 1, v8);
  v25 = (v109[4])(Strong, v20);

  sub_1000079B4(v20, &qword_100772140);
  v113 = _swiftEmptyArrayStorage;
  v114.i64[0] = &_swiftEmptyDictionarySingleton;
  v114.i64[1] = &_swiftEmptyDictionarySingleton;
  v115 = 1;
  v84 = a3;
  v26 = (a3 + qword_100771778);
  swift_beginAccess();
  v80 = v26;
  v27 = *v26;
  v112 = *v26;
  v93 = v22;
  v92 = v25;
  if (v25 <= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v25;
  }

  v91 = v28;
  v105 = v27;
  if (!v28)
  {

    v111 = vdupq_n_s64(&_swiftEmptyDictionarySingleton);
    v76 = _swiftEmptyArrayStorage;
    v77 = 1;
    goto LABEL_46;
  }

  v85 = v21;
  v83 = v21 + 32;
  v109 = v108 + 2;
  ++v108;
  ++v107;
  v101 = (v104 + 16);
  v100 = (v104 + 88);
  v99 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v98 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v96 = enum case for TTRITreeViewExpandedState.expanded(_:);

  v29 = 0;
  v82 = xmmword_10062D420;
  while (1)
  {
    v95 = v29;
    if (v29 < v93)
    {
      break;
    }

    v30 = 0;
    v46 = 0;
    v47 = 0;
    v48 = _swiftEmptyArrayStorage;
    if (v29 < v92)
    {
      goto LABEL_24;
    }

LABEL_7:
    sub_1000301AC(v30);
LABEL_8:
    if (++v29 == v91)
    {

      v76 = v113;
      v111 = v114;
      v77 = v115;
      v105 = v112;
LABEL_46:
      v78 = v81;

      *v78 = v76;
      *(v78 + 1) = v111;
      *(v78 + 24) = v77;
      *v80 = v105;
    }
  }

  if (v29 >= *(v85 + 16))
  {
    goto LABEL_49;
  }

  v94 = *(v83 + 16 * v29);
  v31 = v94;
  v32 = *(*v94 + 144);
  swift_beginAccess();
  v33 = v31 + v32;
  v34 = v111.i64[0];
  *&v105 = *v109;
  (v105)(v11, v33, v111.i64[0]);
  v88 = v31;

  v35 = *(&v94 + 1);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v104 = *v108;
  (v104)(v11, v34);
  v36 = v106;
  sub_1000E992C(v15, v106);
  v37 = *v107;
  (*v107)(v15, v110);
  sub_1000079B4(v36, &unk_10076BB50);
  if (v35 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  if (v38 < 1)
  {
    goto LABEL_50;
  }

  v39 = 0;
  v40 = v35 & 0xC000000000000001;
  v41 = v35;
  do
  {
    if (v40)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(v35 + 8 * v39 + 32);
    }

    ++v39;
    v43 = *(*v42 + 144);
    swift_beginAccess();
    v44 = v111.i64[0];
    (v105)(v11, v42 + v43, v111.i64[0]);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (v104)(v11, v44);
    v45 = v106;
    sub_1000E992C(v15, v106);

    v37(v15, v110);
    sub_1000079B4(v45, &unk_10076BB50);
    v35 = v41;
  }

  while (v38 != v39);
LABEL_22:
  v49 = swift_allocObject();
  *(v49 + 16) = v94;
  v50 = v88;

  sub_1001A0B30(v50, 3u, v90, 0);

  v29 = v95;
  if (v95 >= v92)
  {
    v30 = sub_1001A61A0;
    goto LABEL_7;
  }

  v48 = sub_10019071C(*(v49 + 16), *(v49 + 24), sub_100081578);
  v46 = sub_1001A61A0;
  v47 = v49;
LABEL_24:
  v87 = v47;
  v88 = v46;
  sub_100058000(&unk_10076BBA0);
  swift_allocObject();
  v51 = sub_1000F168C(v48);

  sub_1000DE144(v29, v51);
  v53 = v52;
  *&v94 = v54;
  sub_1000C98A8(v54);
  v86 = v51;
  if (!(v53 >> 62))
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

  v55 = _CocoaArrayWrapper.endIndex.getter();
  if (!v55)
  {
LABEL_40:
    v71 = v113;
    v72 = v113[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v72 >= v71[3] >> 1)
    {
      v71 = sub_10054704C(isUniquelyReferenced_nonNull_native, v72 + 1, 1, v71);
      v113 = v71;
    }

    v29 = v95;
    v74 = v94;
    sub_1000EDC30(v72, v72, 1, v94, v53);
    v113 = v71;
    sub_1000C4308(v72, 1);
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = v82;
    *(inited + 32) = v74;

    sub_1000C4C10(inited, v72);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000C4C10(v53, v72);
    sub_1001A0B30(v74, 3u, v90, 0);
    sub_1000301AC(v88);

    goto LABEL_8;
  }

LABEL_26:
  v56 = 0;
  *&v105 = v53 & 0xC000000000000001;
  v104 = (v53 & 0xFFFFFFFFFFFFFF8);
  v57 = v53;
  while (2)
  {
    if (v105)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v62 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_47;
      }

LABEL_33:
      v63 = qword_1007A84C0;
      swift_beginAccess();
      v64 = v61 + v63;
      v65 = v102;
      v66 = v103;
      (*v101)(v102, v64, v103);
      v67 = (*v100)(v65, v66);
      if (v67 != v99)
      {
        if (v67 == v98)
        {
          v68 = *(*v61 + 144);
          swift_beginAccess();
          v69 = v111.i64[0];
          (*v109)(v11, v61 + v68, v111.i64[0]);
          v70 = v97;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
          (*v108)(v11, v69);
          sub_10058B6B8(v15, v70);

          (*v107)(v15, v110);
LABEL_29:
          ++v56;
          v53 = v57;
          if (v62 == v55)
          {
            goto LABEL_40;
          }

          continue;
        }

        if (v67 != v96)
        {
          goto LABEL_51;
        }
      }

      v58 = *(*v61 + 144);
      swift_beginAccess();
      v59 = v111.i64[0];
      (*v109)(v11, v61 + v58, v111.i64[0]);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v108)(v11, v59);
      v60 = v106;
      sub_1000E992C(v15, v106);

      (*v107)(v15, v110);
      sub_1000079B4(v60, &unk_10076BB50);
      goto LABEL_29;
    }

    break;
  }

  if (v56 >= *(v104 + 2))
  {
    goto LABEL_48;
  }

  v61 = *(v53 + 8 * v56 + 32);

  v62 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_33;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}