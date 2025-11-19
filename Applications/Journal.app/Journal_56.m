void sub_100601D08()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v4 = 5;
    goto LABEL_7;
  }

  v4 = 10;
LABEL_7:
  v8 = v1;
  v5 = [v8 textContainer];
  v6 = [v5 maximumNumberOfLines];

  if (v6 != v4)
  {
    v7 = [v8 textContainer];
    [v7 setMaximumNumberOfLines:v4];

    [v8 invalidateIntrinsicContentSize];
  }
}

id sub_100601E20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10060204C()
{
  v1 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date.FormatStyle.DateStyle();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v12)
  {
    return 0;
  }

  v13 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  (*(v9 + 16))(v11, v12 + v13, v8);

  static Date.FormatStyle.DateStyle.complete.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v14 = Date.formatted(date:time:)();
  v17 = v8;

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v18);
  (*(v9 + 8))(v11, v17);
  return v14;
}

void sub_100602354()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v41 - v7;
  v9 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry;
  v10 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry];
  if (!v10)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v11 = sub_1000819F8();

  if (!v11)
  {
    v13 = 0;
    v10 = 0;
    v15 = *&v1[v9];
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_6:
    v16 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v12 = [v11 string];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v14;

  v15 = *&v1[v9];
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_8:
  v18 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  (*(v3 + 16))(v8, v15 + v18, v2);
  static Date.now.getter();
  v16 = sub_10048FF40(0, 0, v5);
  v17 = v19;
  v20 = *(v3 + 8);
  v20(v5, v2);
  v20(v8, v2);
LABEL_9:
  v21 = type metadata accessor for JournalEntryCollectionViewCell();
  v42.receiver = v1;
  v42.super_class = v21;
  v22 = objc_msgSendSuper2(&v42, "accessibilityUserInputLabels");
  if (v22)
  {
    v23 = v22;
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41[5] = v13;
    v41[6] = v10;
    v41[7] = v16;
    v41[8] = v17;
    v25 = [v1 accessibilityLabel];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = 0;
    v41[9] = v27;
    v41[10] = v29;
    v31 = _swiftEmptyArrayStorage;
LABEL_14:
    if (v30 <= 3)
    {
      v32 = 3;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 + 1;
    v34 = 16 * v30 + 40;
    while (1)
    {
      if (v30 == 3)
      {
        sub_1000F24EC(&unk_100AE4870);
        swift_arrayDestroy();
        v41[0] = v24;
        sub_1006AD7E8(v31);
        return;
      }

      if (v33 == ++v30)
      {
        break;
      }

      v35 = v34 + 16;
      v36 = *(&v41[1] + v34);
      v34 += 16;
      if (v36)
      {
        v37 = *(&v41[-2] + v35);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_10009BCC8(0, *(v31 + 2) + 1, 1, v31);
        }

        v39 = *(v31 + 2);
        v38 = *(v31 + 3);
        if (v39 >= v38 >> 1)
        {
          v31 = sub_10009BCC8((v38 > 1), v39 + 1, 1, v31);
        }

        *(v31 + 2) = v39 + 1;
        v40 = &v31[16 * v39];
        *(v40 + 4) = v37;
        *(v40 + 5) = v36;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100602880()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry] || (, v7 = sub_10005AAB0(4), , (v7 & 1) == 0))
  {
    v8 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v8) = UICellConfigurationState.isEditing.getter();
    (*(v3 + 8))(v6, v2);
    if ((v8 & 1) == 0)
    {
      return [*&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] accessibilityActivate];
    }
  }

  v9 = [v1 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 5)
  {
    v11 = &v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      (*(v12 + 56))(v1, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    return 1;
  }

  else
  {
    v15 = type metadata accessor for JournalEntryCollectionViewCell();
    v16.receiver = v1;
    v16.super_class = v15;
    return objc_msgSendSuper2(&v16, "accessibilityActivate");
  }
}

id sub_100602BB4()
{
  [*&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] layoutIfNeeded];
  [v0 invalidateIntrinsicContentSize];

  return [v0 invalidateIntrinsicContentSize];
}

uint64_t sub_100602C10()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100602CA0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100602D38()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100602DD0(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = *&v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry];
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
      if (v6 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v7 = &v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
        if (!swift_unknownObjectWeakLoadStrong())
        {

          goto LABEL_20;
        }

        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 16);

        LOBYTE(v8) = v10(ObjectType, v8);
        swift_unknownObjectRelease();
        if ((v8 & 1) == 0)
        {
LABEL_20:
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            v30 = "Ignoring focus toggle to asset grid, entry collection view is not focusable, so the asset grid should be focused already.";
LABEL_25:
            _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

            goto LABEL_26;
          }

          goto LABEL_26;
        }

LABEL_14:

        return 1;
      }
    }

    goto LABEL_30;
  }

  if (static Selector.== infix(_:_:)())
  {
    v11 = *&v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry];
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
      if (v12 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_30;
        }
      }

      else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v13 = &v2[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 1);
        v15 = swift_getObjectType();
        v16 = *(v14 + 16);

        LOBYTE(v14) = v16(v15, v14);
        swift_unknownObjectRelease();
        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "Ignoring focus toggle to timeline cell, entry collection view is focusable, so the timeline should be focused already.";
        goto LABEL_25;
      }

LABEL_26:

      return 0;
    }

LABEL_30:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Ignoring focus toggle selector, no asset grid present!", v33, 2u);
    }

    return 0;
  }

  sub_10005D974(a2, v35);
  v18 = v36;
  if (v36)
  {
    v19 = sub_10000CA14(v35, v36);
    v20 = *(v18 - 8);
    v21 = __chkstk_darwin(v19);
    v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v20 + 8))(v23, v18);
    sub_10000BA7C(v35);
  }

  else
  {
    v24 = 0;
  }

  v25 = type metadata accessor for JournalEntryCollectionViewCell();
  v34.receiver = v2;
  v34.super_class = v25;
  v26 = objc_msgSendSuper2(&v34, "canPerformAction:withSender:", a1, v24);
  swift_unknownObjectRelease();
  return v26;
}

void sub_1006033CC()
{
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_enforceShowCompressedAssetGrid) = 0;
  v1 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_contentStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetStackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textStackView;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_photoMemoriesBannerView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView) = 0;
  v5 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView;
  type metadata accessor for CanvasGridView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView;
  type metadata accessor for TimelineTextView();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_bundleTitle;
  type metadata accessor for TimelineMomentsTitleView();
  *(v0 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_gridMargin) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textViewMarginNoAssets) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryCellHeight) = 0x4069000000000000;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint) = 0;
  v9 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_chinView;
  type metadata accessor for JournalEntryCellChinView();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_numCollapsedLinesWithAssets) = 5;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_numCollapsedLinesNoAssets) = 10;
  v10 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100603670(char *a1)
{
  v2 = [a1 traitCollection];
  sub_10002FE80();
  UITraitCollection.subscript.getter();

  v3 = v5 - 3 < 0xFFFFFFFE;
  a1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_enforceShowCompressedAssetGrid] = v3;
  *(*&a1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView] + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid) = v3;
  sub_100585C6C();
  return [a1 invalidateIntrinsicContentSize];
}

id sub_10060371C(const char *a1, char a2, const char *a3)
{
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
  }

  v11 = &v7[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(a2 & 1, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a3, v16, 2u);
  }

  return [v7 _setNeedsNonDeferredFocusUpdate];
}

void sub_1006038A8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset);
    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      sub_1000F24EC(&unk_100AD8A90);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100940050;
      *(v11 + 32) = 0;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else
      {
        *(v11 + 40) = v7 - 1;
        IndexPath.init(arrayLiteral:)();
        (*(v9 + 40))(v0, v4, ObjectType, v9);
        swift_unknownObjectRelease();
        (*(v2 + 8))(v4, v1);
      }
    }
  }
}

uint64_t sub_100603A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100603AAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SubviewsCollection();
  sub_10008D1A8(&qword_100AD27E0, &type metadata accessor for SubviewsCollection);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for Subview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for Subview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_100603C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_100611C40(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1000F24EC(&qword_100AE4290);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_100603D0C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  sub_10008D1A8(&qword_100AEB870, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for LayoutSubview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for LayoutSubview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_100603EA4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100603F00(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_100603FA0(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.startIndex.getter();
    v7 = v6;
    v8 = __CocoaSet.endIndex.getter();
    v10 = v9;
    v11 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000A96C(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_10000A96C(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = _HashTable.startBucket.getter();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100611D14(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_10000A96C(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_1006040D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_100611F2C(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_100604190(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1003E63BC(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1003E63BC(v4 > 1, v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  result = sub_100617828(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, type metadata accessor for PendingPhotoAsset);
  *v1 = v3;
  return result;
}

uint64_t sub_1006042A0()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);
}

double *sub_100604300(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE9D28);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TranscriptViewModelSegment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for TranscriptionSegment() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = _swiftEmptyArrayStorage;
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_100004F84(v8, &qword_100AE9D28);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1003E4DF4(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1003E4DF4(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

double *sub_10060462C(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = *v6;
    a1(v16, &v17);
    if (v3)
    {
      break;
    }

    if (*&v16[0])
    {
      v15 = v16[0];
      v14 = v16[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1003E5BEC(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      v9 = v15;
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1003E5BEC((v11 > 1), v12 + 1, 1, v7);
        v9 = v15;
        v7 = v8;
      }

      *(v7 + 2) = v12 + 1;
      v10 = &v7[4 * v12];
      *(v10 + 2) = v9;
      *(v10 + 3) = v14;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

double *sub_10060476C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = sub_1000F24EC(&qword_100AEB668);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1000F24EC(&qword_100AD64E8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = _swiftEmptyArrayStorage;
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_100004F84(v8, &qword_100AEB668);
    }

    else
    {
      v19 = v26;
      sub_100021CEC(v8, v26, &qword_100AD64E8);
      sub_100021CEC(v19, v28, &qword_100AD64E8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1003E5D98(0, *(v18 + 2) + 1, 1, v18);
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1003E5D98(v20 > 1, v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      sub_100021CEC(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_100AD64E8);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_100604AA0(void *a1)
{
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  sub_10008D1A8(&qword_100AD1C18, type metadata accessor for MOSuggestionAssetMetadataKey);
  v2 = a1;
  return AnyHashable.init<A>(_:)();
}

void *sub_100604B34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          type metadata accessor for JournalMO();
          sub_1000F24EC(&qword_100AEB678);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        type metadata accessor for JournalMO();
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1000F24EC(&qword_100AEB678);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

double *sub_100604CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100199C54(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_100086C04(v4, v16);
      sub_1000F24EC(&unk_100AD68B0);
      sub_1000F24EC(&qword_100AD6668);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_100199C54((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_100186174(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_1001A69E8(v6, v12, &v20, v7, v8);
      sub_10000BA7C(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double *sub_100604ED0(uint64_t a1)
{
  v2 = type metadata accessor for CoreSpotlightSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C54(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      v17 = v7;
      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100199C54((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A71788;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      *(v7 + 2) = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_100605098(uint64_t a1)
{
  v2 = type metadata accessor for CustomTokenSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomTokenSearchSuggestionItem);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A717B0;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomTokenSearchSuggestionItem);
      v7[2] = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomTokenSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_100605260(uint64_t a1)
{
  v2 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomJournalSearchSuggestionItem);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A717E8;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomJournalSearchSuggestionItem);
      v7[2] = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomJournalSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_100605428(uint64_t a1)
{
  v2 = type metadata accessor for CustomPlaceSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A71820;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v7[2] = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1006055F0(uint64_t a1)
{
  v2 = type metadata accessor for CustomActivityTypeSearchSuggestionItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100199C14(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_100614C94(v8, v5, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100199C14((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_100A71858;
      v12 = sub_10001A770(&v14);
      sub_100614C94(v5, v12, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
      v7[2] = v11 + 1;
      sub_100018480(&v14, &v7[5 * v11 + 4]);
      sub_100614EE4(v5, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1006057B8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_10002430C(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_10002430C((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      v7[2] = v14 + 1;
      sub_10002432C(&v17, &v7[4 * v14 + 4]);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

double *sub_1006059B8(unint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100199FA4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (*&v11 >= *&v10 >> 1)
        {
          sub_100199FA4((*&v10 > 1uLL), *&v11 + 1, 1);
        }

        ++v8;
        v12 = sub_10008D1A8(a2, a3);
        *&_swiftEmptyArrayStorage[2] = *&v11 + 1;
        v13 = &_swiftEmptyArrayStorage[2 * *&v11];
        *(v13 + 4) = v9;
        *(v13 + 5) = v12;
      }

      while (v6 != v8);
    }

    else
    {
      v14 = (a1 + 32);
      do
      {
        v15 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        v17 = *v14;
        if (*&v15 >= *&v16 >> 1)
        {
          sub_100199FA4((*&v16 > 1uLL), *&v15 + 1, 1);
        }

        v18 = sub_10008D1A8(a2, a3);
        *&_swiftEmptyArrayStorage[2] = *&v15 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * *&v15];
        *(v19 + 4) = v17;
        *(v19 + 5) = v18;
        ++v14;
        --v6;
      }

      while (v6);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

double *sub_100605B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100199FA4(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      sub_1000F24EC(&qword_100ADFAD0);
      sub_1000F24EC(&qword_100AD6628);
      swift_dynamicCast();
      v5 = v9;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (*&v7 >= *&v6 >> 1)
      {
        sub_100199FA4((*&v6 > 1uLL), *&v7 + 1, 1);
        v5 = v9;
      }

      *&_swiftEmptyArrayStorage[2] = *&v7 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v7 + 4] = v5;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_100605CC4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_1000065A8(0, &qword_100AD4C70);
          sub_1000F24EC(&qword_100AE9A00);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_1000065A8(0, &qword_100AD4C70);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1000F24EC(&qword_100AE9A00);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

double *sub_100605EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100605F60(uint64_t result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = _CocoaArrayWrapper.endIndex.getter();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_100606084(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100032ECC;

  return v9(a2, a3);
}

uint64_t sub_100606198(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 538976288;
  v28 = 0xE400000000000000;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [a3 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v27;
  sub_1000082B4(a2, v7, &unk_100AD4790);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100004F84(v7, &unk_100AD4790);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v26._countAndFlagsBits = 2108704;
    v26._object = 0xE300000000000000;
    v19 = Date._bridgeToObjectiveC()().super.isa;
    v20 = [a3 stringFromDate:v19];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    String.append(_:)(v26);

    (*(v9 + 8))(v11, v8);
    return v27;
  }

  return v18;
}

uint64_t sub_100606440()
{
  type metadata accessor for Date();
  sub_10008D1A8(&qword_100AD2698, &type metadata accessor for Date);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000F24EC(&qword_100AE0D70);
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t sub_100606500(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for VisitAssetMetadata();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VisitDuration(0);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v8 - 8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v35 - v11;
  v12 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v14, &unk_100AD4790);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100004F84(v14, &unk_100AD4790);
    return 0;
  }

  (*(v16 + 32))(v18, v14, v15);
  v19 = v40;
  v20 = *(v40 + 16);
  if (!v20)
  {
LABEL_16:
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  v35 = *(v42 + 56);
  v36 = v3;
  v35(v41, 1, 1, v3);
  v21 = v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v22 = *(v38 + 72);
  while (1)
  {
    sub_100614C94(v21, v7, type metadata accessor for VisitDuration);
    if ((*&v7[*(v5 + 20)])(v18))
    {
      break;
    }

    sub_100614EE4(v7, type metadata accessor for VisitDuration);
    v21 += v22;
    if (!--v20)
    {
      goto LABEL_9;
    }
  }

  v23 = v41;
  sub_100004F84(v41, &unk_100AEED20);
  v24 = v36;
  (*(v42 + 16))(v23, v7, v36);
  sub_100614EE4(v7, type metadata accessor for VisitDuration);
  v35(v23, 0, 1, v24);
LABEL_9:
  v25 = v41;
  v26 = v39;
  sub_1000082B4(v41, v39, &unk_100AEED20);
  v27 = v42;
  v28 = v36;
  if ((*(v42 + 48))(v26, 1, v36) == 1)
  {
    sub_100004F84(v25, &unk_100AEED20);
    (*(v16 + 8))(v18, v15);
    sub_100004F84(v26, &unk_100AEED20);
    return 0;
  }

  v29 = v37;
  (*(v27 + 32))(v37, v26, v28);
  v30 = VisitAssetMetadata.latitude.getter();
  if (v31)
  {
    (*(v27 + 8))(v29, v28);
LABEL_15:
    sub_100004F84(v25, &unk_100AEED20);
    goto LABEL_16;
  }

  v32 = v30;
  VisitAssetMetadata.longitude.getter();
  if (v33)
  {
    (*(v27 + 8))(v29, v36);
    goto LABEL_15;
  }

  VisitAssetMetadata.placeName.getter();
  (*(v27 + 8))(v29, v36);
  sub_100004F84(v25, &unk_100AEED20);
  (*(v16 + 8))(v18, v15);
  return v32;
}

uint64_t sub_100606AE0(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(unint64_t, unint64_t))
{
  _StringGuts.grow(_:)(43);

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a3;
  v12._object = a4;
  String.append(_:)(v12);
  a5(0xD000000000000025, 0x80000001008FEF10);
}

uint64_t sub_100606BC4(void *a1, void *a2, void *a3)
{
  sub_100606C74(a2);
  swift_beginAccess();
  v5 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100606C74(void *a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&qword_100AD1420);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v17 - v8;
  v10 = [a1 suggestionIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100AD1420);
  swift_endAccess();
  v13 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  swift_beginAccess();
  sub_100014318(v5, v1 + v15, &unk_100AD4790);
  return swift_endAccess();
}

uint64_t sub_100606EAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) != 0 || (a1 - 2) > 6)
  {
    v4 = &enum case for MediaViewType.song(_:);
  }

  else
  {
    v4 = *(&off_100A76190 + a1 - 2);
  }

  v5 = *v4;
  v6 = type metadata accessor for MediaViewType();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

uint64_t sub_100606F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) > 2)
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }

  else
  {
    v9 = **(&off_100A761C8 + a1 - 1);
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v8, v9, v4, v6);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1006070AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[14] = v9;
  v8[15] = v11;

  return _swift_task_switch(sub_10060714C, v9, v11);
}

uint64_t sub_10060714C()
{
  if (qword_100AD0A20 != -1)
  {
    swift_once();
  }

  v4 = v1[10];
  v5 = qword_100B30F68;
  v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v7 = *(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = qword_100B30F68 - v8;
    if (!__OFSUB__(qword_100B30F68, v8))
    {
      goto LABEL_5;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v84 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v5 - v84;
  if (__OFSUB__(v5, v84))
  {
    goto LABEL_77;
  }

LABEL_5:
  v10 = v1[9];
  v3 = v10[2];
  v5 = v10[4];
  v11 = v5 >> 62;
  v115 = v5 >> 62;
  v116 = v5;
  if (v3 == 1)
  {
    if (v11)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (v26)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_11:
        v113 = v9;
        v0 = _swiftEmptyArrayStorage;
        goto LABEL_14;
      }
    }

    v85 = v1[6];
    v86 = type metadata accessor for SuggestionMergeConflict(v26);
    (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
    goto LABEL_103;
  }

  v12 = v1[10];
  v13 = v10[3];
  v15 = *v10;
  v14 = v10[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v15;
  *(v16 + 32) = v14 & 1;
  *(v16 + 40) = v3;
  *(v16 + 48) = v13;

  sub_1003A7574(v15, v14, v3, v13);
  v17 = v13;
  v18 = v3;
  v19 = sub_100049F2C();
  if (v19)
  {
    v20 = v1[11];
    sub_10053256C(v19);
    v22 = v21;

    if ((v20 & 1) == 0)
    {
      v24 = v1[6];

      v25 = type metadata accessor for SuggestionMergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
LABEL_103:
      v110 = v1[1];

      return v110();
    }
  }

  v117 = v17;
  v113 = v9;
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1009606E8;
  *(v27 + 24) = v16;
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1009606F0;
  *(v5 + 24) = v27;

  v0 = sub_1003E5F28(0, 1, 1, _swiftEmptyArrayStorage);
  v29 = *(v0 + 2);
  v28 = *(v0 + 3);
  v2 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {

    *(v0 + 2) = v2;
    v30 = &v0[2 * v29];
    *(v30 + 4) = &unk_1009606F8;
    *(v30 + 5) = v5;
    v11 = v115;
    v5 = v116;
LABEL_14:
    v31 = v1[10];
    v1[2] = v0;
    v117 = *(v31 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    v114 = v3;
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v11)
    {
LABEL_78:
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = _swiftEmptyArrayStorage;
    v111 = v6;
    v112 = v4;
    if (!v29)
    {
      v32 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    if (v29 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_82:
    v0 = sub_1003E5F28((v28 > 1), v2, 1, v0);
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v32 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      v34 = v1[10];
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v34;
      type metadata accessor for MultiPinMapAsset();
      if (swift_dynamicCastClass() && v117)
      {
        v37 = swift_allocObject();
        *(v37 + 16) = &unk_100960668;
        *(v37 + 24) = v36;
        v38 = swift_allocObject();
        *(v38 + 16) = &unk_1009606A8;
        *(v38 + 24) = v37;

        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1003E5F28(0, *(v18 + 2) + 1, 1, v18);
        }

        v40 = *(v18 + 2);
        v39 = *(v18 + 3);
        if (v40 >= v39 >> 1)
        {
          v18 = sub_1003E5F28((v39 > 1), v40 + 1, 1, v18);
        }

        swift_unknownObjectRelease();

        *(v18 + 2) = v40 + 1;
        v41 = &v18[2 * v40];
        *(v41 + 4) = &unk_1009606B0;
        *(v41 + 5) = v38;
      }

      else
      {
        v42 = swift_allocObject();
        *(v42 + 16) = &unk_100960668;
        *(v42 + 24) = v36;
        v43 = swift_allocObject();
        *(v43 + 16) = &unk_100952210;
        *(v43 + 24) = v42;

        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1003E5F4C(0, *(v32 + 2) + 1, 1, v32);
        }

        v45 = *(v32 + 2);
        v44 = *(v32 + 3);
        if (v45 >= v44 >> 1)
        {
          v32 = sub_1003E5F4C((v44 > 1), v45 + 1, 1, v32);
        }

        *(v32 + 2) = v45 + 1;
        v33 = &v32[3 * v45];
        *(v33 + 4) = v35;
        *(v33 + 5) = &unk_100960680;
        *(v33 + 6) = v43;
      }

      v3 = (v3 + 1);
    }

    while (v29 != v3);
  }

  else
  {
    v3 = (v5 + 32);
    v32 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    do
    {
      v54 = v1[10];
      v55 = *v3;
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v54;
      type metadata accessor for MultiPinMapAsset();
      if (swift_dynamicCastClass())
      {
        v57 = v117 == 0;
      }

      else
      {
        v57 = 1;
      }

      if (v57)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = &unk_1009606B8;
        *(v58 + 24) = v56;
        v59 = swift_allocObject();
        *(v59 + 16) = &unk_1009606C0;
        *(v59 + 24) = v58;
        v60 = v55;

        v61 = v60;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1003E5F4C(0, *(v32 + 2) + 1, 1, v32);
        }

        v63 = *(v32 + 2);
        v62 = *(v32 + 3);
        if (v63 >= v62 >> 1)
        {
          v32 = sub_1003E5F4C((v62 > 1), v63 + 1, 1, v32);
        }

        *(v32 + 2) = v63 + 1;
        v64 = &v32[3 * v63];
        *(v64 + 4) = v61;
        *(v64 + 5) = &unk_1009606C8;
        *(v64 + 6) = v59;
      }

      else
      {
        v65 = swift_allocObject();
        *(v65 + 16) = &unk_1009606B8;
        *(v65 + 24) = v56;
        v66 = swift_allocObject();
        *(v66 + 16) = &unk_1009606D0;
        *(v66 + 24) = v65;
        v67 = v55;

        v68 = v67;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1003E5F28(0, *(v18 + 2) + 1, 1, v18);
        }

        v71 = *(v18 + 2);
        v70 = *(v18 + 3);
        if (v71 >= v70 >> 1)
        {
          v18 = sub_1003E5F28((v70 > 1), v71 + 1, 1, v18);
        }

        *(v18 + 2) = v71 + 1;
        v53 = &v18[2 * v71];
        *(v53 + 4) = &unk_1009606D8;
        *(v53 + 5) = v66;
      }

      ++v3;
      --v29;
    }

    while (v29);
  }

LABEL_34:
  v46 = v113;
  if (v113)
  {
    v47 = v114;
    if (v113 >= 1)
    {
      v48 = *(v32 + 2);
      if (v113 < v48)
      {
        if (v115)
        {
          v49 = _CocoaArrayWrapper.endIndex.getter();
          v48 = *(v32 + 2);
        }

        else
        {
          v49 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v81 = v48 - v113;
        if ((v1[11] & 4) == 0)
        {
          v77 = v1[6];

          *v77 = v49;
          v77[1] = v81;
          v80 = type metadata accessor for SuggestionMergeConflict(0);
          goto LABEL_69;
        }

        if (__OFSUB__(v48, v81))
        {
          __break(1u);
        }

        else if ((v113 & 0x8000000000000000) == 0)
        {
          if (v48 >= v113)
          {
            if (v48 == v113)
            {
              goto LABEL_92;
            }

            sub_1006102F0(v32, (v32 + 4), 0, (2 * v113) | 1);
            v83 = v82;
            goto LABEL_91;
          }

          goto LABEL_85;
        }

        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }
  }

  else
  {
    v50 = *(v32 + 2);
    v47 = v114;
    if (v50 >= 2)
    {
      v51 = v1[6];

      v52 = type metadata accessor for SuggestionMergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
LABEL_102:

      goto LABEL_103;
    }

    if (v50 == 1)
    {
      v3 = *(v32 + 4);
      v46 = *(v112 + v111);
      if (!(v46 >> 62))
      {
        result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v73 = result - 1;
        if (!__OFSUB__(result, 1))
        {
          goto LABEL_61;
        }

        goto LABEL_88;
      }

LABEL_86:
      result = _CocoaArrayWrapper.endIndex.getter();
      v73 = result - 1;
      if (!__OFSUB__(result, 1))
      {
LABEL_61:
        if ((v46 & 0xC000000000000001) == 0)
        {
          if ((v73 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v73 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v74 = *(v46 + 8 * v73 + 32);
            v75 = v3;
            v76 = v74;
            if ((v1[11] & 2) == 0)
            {
LABEL_65:
              v77 = v1[6];

              v78 = OBJC_IVAR____TtC7Journal5Asset_type;
              v79 = type metadata accessor for AssetType();
              (*(*(v79 - 8) + 16))(v77, v3 + v78, v79);

              v80 = type metadata accessor for SuggestionMergeConflict(0);
LABEL_69:
              swift_storeEnumTagMultiPayload();
              (*(*(v80 - 8) + 56))(v77, 0, 1, v80);
              goto LABEL_102;
            }

LABEL_90:
            v88 = v1[10];
            sub_1000F24EC(&qword_100AE0D90);
            v83 = swift_allocObject();
            *(v83 + 16) = xmmword_100940080;
            v89 = swift_allocObject();
            v89[2] = v3;
            v89[3] = v88;
            v89[4] = v76;
            v90 = swift_allocObject();
            *(v90 + 16) = &unk_100960698;
            *(v90 + 24) = v89;
            *(v83 + 32) = v3;
            *(v83 + 40) = &unk_1009606A0;
            *(v83 + 48) = v90;

            v91 = v3;
LABEL_91:

            v32 = v83;
            goto LABEL_92;
          }

          __break(1u);
          return result;
        }

LABEL_89:
        v87 = v3;

        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        if ((v1[11] & 2) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_90;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }
  }

LABEL_92:
  v92 = v47 != 1;
  v1[16] = v32;
  v93 = v1[12];
  _StringGuts.grow(_:)(75);
  v94._countAndFlagsBits = 0xD000000000000024;
  v94._object = 0x80000001008FEAB0;
  String.append(_:)(v94);
  v1[3] = v92;
  v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v95);

  v96._countAndFlagsBits = 0xD000000000000011;
  v96._object = 0x80000001008FEAE0;
  String.append(_:)(v96);
  v1[4] = *(v18 + 2);

  v97._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v97);

  v98._object = 0x80000001008FEB00;
  v98._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v98);
  v99 = *(v32 + 2);
  v1[5] = v99;
  v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v100);

  v93(0, 0xE000000000000000);

  sub_1006ADDA4(v18);
  if (v99)
  {
    sub_10019A060(0, v99, 0);
    v101 = _swiftEmptyArrayStorage[2];
    v102 = (v32 + 5);
    do
    {
      v103 = _swiftEmptyArrayStorage[3];
      v118 = *v102;

      if (*&v101 >= *&v103 >> 1)
      {
        sub_10019A060((*&v103 > 1uLL), *&v101 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v101 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v101 + 4] = v118;
      v102 = (v102 + 24);
      ++*&v101;
      --v99;
    }

    while (v99);
  }

  sub_1006ADDA4(_swiftEmptyArrayStorage);
  v104 = v1[2];
  v1[17] = v104;
  v105 = v104[2];
  v1[18] = v105;
  if (!v105)
  {

    v108 = v1[6];
    v109 = type metadata accessor for SuggestionMergeConflict(0);
    (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
    goto LABEL_102;
  }

  v1[19] = 0;
  v106 = v104[4];
  v1[20] = v104[5];

  v119 = (v106 + *v106);
  v107 = swift_task_alloc();
  v1[21] = v107;
  *v107 = v1;
  v107[1] = sub_1006080A8;

  return v119();
}

uint64_t sub_1006080A8()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1006081C8, v3, v2);
}

uint64_t sub_1006081C8()
{
  v1 = v0[19];
  v2 = v0[18];

  if (v1 + 1 == v2)
  {

    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_100608380;
    v5 = v0[7];
    v4 = v0[8];

    return (sub_10062833C)(v5, v4);
  }

  else
  {
    v7 = v0[19] + 1;
    v0[19] = v7;
    v8 = v0[17] + 16 * v7;
    v9 = *(v8 + 32);
    v0[20] = *(v8 + 40);

    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_1006080A8;

    return v11();
  }
}

uint64_t sub_100608380()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1006084A0, v3, v2);
}

uint64_t sub_1006084A0()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for SuggestionMergeConflict(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100608548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 80) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for AssetSource();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100608610, 0, 0);
}

uint64_t sub_100608610()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for AssetSource.suggestionSheet(_:), *(v0 + 48));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100398650;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  return sub_100530984(0, 0, v6, v1 & 1, v4, v5, v3);
}

uint64_t sub_1006086E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AssetPlacement();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1006087A4, 0, 0);
}

uint64_t sub_1006087A4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v1 = static AssetPlacement.maxGridCount.getter();
  (*(v2 + 104))(v1, enum case for AssetPlacement.grid(_:), v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100398968;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return sub_10044C1DC(0, 0, v6, v7, 0, v5, 1);
}

uint64_t sub_100608898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for AssetPlacement();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[10] = v8;
  v5[11] = v10;

  return _swift_task_switch(sub_100608990, v8, v10);
}

uint64_t sub_100608990()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  *v1 = static AssetPlacement.maxGridCount.getter();
  (*(v2 + 104))(v1, enum case for AssetPlacement.grid(_:), v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100398CC0;
  v6 = v0[9];
  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];

  return sub_10044C1DC(v10, v9, v7, v8, v4, v6, 1);
}

uint64_t sub_100608A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[43] = a6;
  v7[44] = v6;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a2;
  v7[40] = a3;
  v7[38] = a1;
  v7[45] = type metadata accessor for PendingPhotoAsset(0);
  v7[46] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[50] = v10;
  v7[51] = v12;

  return _swift_task_switch(sub_100608BC0, v10, v12);
}

uint64_t sub_100608BC0()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[42];
  v8 = v0[40];
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v10 = v9;
  v0[52] = v9;
  v11 = *(v2 + 8);
  v0[53] = v11;
  v0[54] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v3);
  v0[35] = v10;
  v0[29] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[30] = 0;
  sub_100614C94(v8, v4, type metadata accessor for PendingPhotoAsset);
  v12 = swift_task_alloc();
  v0[55] = v12;
  v12[2] = v0 + 35;
  v12[3] = v8;
  v12[4] = v0 + 29;
  v12[5] = v7;
  v12[6] = v5;
  v12[7] = v6;
  v13 = swift_task_alloc();
  v0[56] = v13;
  v14 = type metadata accessor for Asset();
  *v13 = v0;
  v13[1] = sub_100608D58;
  v15 = v0[38];
  v16 = v0[39];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 36, v15, v16, 0xD000000000000020, 0x80000001008FEA70, sub_100614ED4, v12, v14);
}

uint64_t sub_100608D58()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_10060AA4C;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_100608E74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100608E74()
{
  v1 = *(v0 + 288);
  *(v0 + 464) = v1;
  if (static Task<>.isCancelled.getter())
  {
    sub_100614EE4(*(v0 + 368), type metadata accessor for PendingPhotoAsset);
    type metadata accessor for CancellationError();
    sub_10008D1A8(&qword_100AE0D58, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 456);
  v5 = *(v0 + 424);
  v6 = *(v0 + 392);
  v7 = *(v0 + 376);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  *(v0 + 472) = v8;
  v5(v6, v7);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  if (*(v0 + 680))
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 368) + *(*(v0 + 360) + 20);
    swift_beginAccess();
    v12 = *(v10 + v9);
    v13 = swift_task_alloc();
    *(v13 + 16) = v11;

    v14 = sub_100068DDC(sub_100068DC0, v13, v12);
    *(v0 + 600) = v14;

    if (v14)
    {
      sub_1000F24EC(&unk_100AE1A40);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100940080;
      (*(v16 + 16))(v18 + v17, v14 + OBJC_IVAR____TtC7Journal5Asset_id, v15);
      v19 = sub_1004960D4(v18);
      *(v0 + 608) = v19;
      swift_setDeallocating();
      (*(v16 + 8))(v18 + v17, v15);
      swift_deallocClassInstance();
      v20 = swift_task_alloc();
      *(v0 + 616) = v20;
      *v20 = v0;
      v21 = sub_10060A63C;
LABEL_15:
      v20[1] = v21;
      v43 = *(v0 + 304);
      v42 = *(v0 + 312);

      return sub_10056824C(v43, v42, v19);
    }

    v31 = 0xD000000000000047;
    v32 = "ace placeholder asset.";
    v33 = 1;
LABEL_19:
    v44 = v32 | 0x8000000000000000;
    v45 = *(v0 + 464);
    v46 = *(v0 + 416);
    v47 = *(v0 + 368);
    swift_beginAccess();
    v49 = *(v0 + 232);
    v48 = *(v0 + 240);
    type metadata accessor for PhotoFetchError();
    v50 = swift_allocObject();
    v51 = v50;
    *(v50 + 56) = v31;
    *(v50 + 64) = v44;
    *(v50 + 72) = v33;
    *(v50 + 16) = v46;
    if (v48)
    {
      v52 = v49;
    }

    else
    {
      v52 = 0x3030302E30;
    }

    if (v48)
    {
      v53 = v48;
    }

    else
    {
      v53 = 0xE500000000000000;
    }

    *(v50 + 24) = v52;
    *(v50 + 32) = v53;
    *(v50 + 40) = 0x3030302E30;
    *(v50 + 48) = 0xE500000000000000;

    sub_100614EE4(v47, type metadata accessor for PendingPhotoAsset);

    v54 = *(v0 + 8);

    return v54(v51);
  }

  v22 = *(v0 + 360);
  v23 = *(v0 + 328);
  v24 = *(v0 + 320) + *(v22 + 20);
  *(v0 + 480) = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v25 = *(v23 + v9);
  v26 = swift_task_alloc();
  *(v26 + 16) = v24;

  v27 = sub_100068DDC(sub_100068DC0, v26, v25);
  *(v0 + 488) = v27;
  *(v0 + 496) = v4;

  if (!v27)
  {
    v34 = *(v0 + 368) + *(v22 + 20);
    v35 = *(v23 + v9);
    v36 = swift_task_alloc();
    *(v36 + 16) = v34;

    v37 = sub_100068DDC(sub_100068DC0, v36, v35);
    *(v0 + 568) = v37;

    if (v37)
    {
      sub_1000F24EC(&unk_100AE1A40);
      v38 = type metadata accessor for UUID();
      v39 = *(v38 - 8);
      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100940080;
      (*(v39 + 16))(v41 + v40, v37 + OBJC_IVAR____TtC7Journal5Asset_id, v38);
      v19 = sub_1004960D4(v41);
      *(v0 + 576) = v19;
      swift_setDeallocating();
      (*(v39 + 8))(v41 + v40, v38);
      swift_deallocClassInstance();
      v20 = swift_task_alloc();
      *(v0 + 584) = v20;
      *v20 = v0;
      v21 = sub_10060A230;
      goto LABEL_15;
    }

    v33 = 0;
    v32 = "ivate.swiftinterface";
    v31 = 0xD00000000000004FLL;
    goto LABEL_19;
  }

  v28 = swift_task_alloc();
  *(v0 + 504) = v28;
  *v28 = v0;
  v28[1] = sub_1006095FC;
  v30 = *(v0 + 304);
  v29 = *(v0 + 312);

  return sub_100566FD4(v30, v29, v27, v1);
}

uint64_t sub_1006095FC(char a1)
{
  v2 = *v1;
  *(*v1 + 681) = a1;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);

  return _swift_task_switch(sub_100609724, v4, v3);
}

uint64_t sub_100609724()
{
  v1 = *(v0 + 681);
  v2 = *(v0 + 472);
  v3 = *(v0 + 424);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);
  sub_1000F24EC(&unk_100AD5B10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v8 = v7;
  v3(v4, v5);
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = v8 - v2;
  v9 = String.init(format:_:)();
  v11 = v10;
  *(v0 + 512) = v9;
  *(v0 + 520) = v10;
  swift_beginAccess();
  *(v0 + 248) = v9;
  *(v0 + 256) = v11;
  if (v1)
  {
    sub_100614EE4(*(v0 + 368), type metadata accessor for PendingPhotoAsset);
    v12 = swift_task_alloc();
    *(v0 + 560) = v12;
    *v12 = v0;
    v12[1] = sub_10060A010;
    v13 = *(v0 + 304);
    v14 = sub_10062833C;

    return v14(v13);
  }

  v15 = *(v0 + 368) + *(*(v0 + 360) + 20);
  v16 = *(*(v0 + 328) + *(v0 + 480));
  v17 = swift_task_alloc();
  *(v17 + 16) = v15;

  v18 = sub_100068DDC(sub_100068DC0, v17, v16);
  *(v0 + 528) = v18;

  if (!v18)
  {
    v28 = *(v0 + 520);
    v29 = *(v0 + 512);
    v30 = *(v0 + 488);
    v31 = *(v0 + 464);
    v32 = *(v0 + 416);
    v33 = *(v0 + 368);
    swift_beginAccess();
    v35 = *(v0 + 232);
    v34 = *(v0 + 240);
    type metadata accessor for PhotoFetchError();
    v36 = swift_allocObject();
    v37 = v36;
    *(v36 + 56) = 0xD000000000000046;
    *(v36 + 64) = 0x80000001008ED0F0;
    *(v36 + 72) = 0;
    *(v36 + 16) = v32;
    v38 = 0x3030302E30;
    if (v34)
    {
      v38 = v35;
    }

    v39 = 0xE500000000000000;
    if (v34)
    {
      v39 = v34;
    }

    *(v36 + 24) = v38;
    *(v36 + 32) = v39;
    *(v36 + 40) = v29;
    *(v36 + 48) = v28;

    sub_100614EE4(v33, type metadata accessor for PendingPhotoAsset);

    v14 = *(v0 + 8);
    v13 = v37;

    return v14(v13);
  }

  sub_1000F24EC(&unk_100AE1A40);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100940080;
  (*(v20 + 16))(v22 + v21, v18 + OBJC_IVAR____TtC7Journal5Asset_id, v19);
  v23 = sub_1004960D4(v22);
  *(v0 + 536) = v23;
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v24 = swift_task_alloc();
  *(v0 + 544) = v24;
  *v24 = v0;
  v24[1] = sub_100609BEC;
  v26 = *(v0 + 304);
  v25 = *(v0 + 312);

  return sub_10056824C(v26, v25, v23);
}

uint64_t sub_100609BEC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 552) = v3;
  *v3 = v2;
  v3[1] = sub_100609D90;
  v4 = *(v1 + 304);

  return sub_10062833C(v4);
}

uint64_t sub_100609D90()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_100609EB0, v3, v2);
}

uint64_t sub_100609EB0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v5 = *(v0 + 416);
  v6 = *(v0 + 368);
  swift_beginAccess();
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 56) = 0xD000000000000046;
  *(v9 + 64) = 0x80000001008ED0F0;
  *(v9 + 72) = 0;
  *(v9 + 16) = v5;
  v11 = 0x3030302E30;
  if (v7)
  {
    v11 = v8;
  }

  v12 = 0xE500000000000000;
  if (v7)
  {
    v12 = v7;
  }

  *(v9 + 24) = v11;
  *(v9 + 32) = v12;
  *(v9 + 40) = v2;
  *(v9 + 48) = v1;

  sub_100614EE4(v6, type metadata accessor for PendingPhotoAsset);

  v13 = *(v0 + 8);

  return v13(v10);
}

uint64_t sub_10060A010()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060A130, v3, v2);
}

uint64_t sub_10060A130()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[52];
  swift_beginAccess();
  v6 = v0[29];
  v7 = v0[30];
  type metadata accessor for PhotoFetchResult();
  v8 = swift_allocObject();
  v8[2] = v5;

  v9 = 0x3030302E30;
  if (v7)
  {
    v9 = v6;
  }

  v10 = 0xE500000000000000;
  if (v7)
  {
    v10 = v7;
  }

  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v2;
  v8[6] = v1;

  v11 = v0[1];

  return v11(v8);
}

uint64_t sub_10060A230()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 592) = v3;
  *v3 = v2;
  v3[1] = sub_10060A3D4;
  v4 = *(v1 + 304);

  return sub_10062833C(v4);
}

uint64_t sub_10060A3D4()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060A4F4, v3, v2);
}

uint64_t sub_10060A4F4()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  swift_beginAccess();
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 56) = 0xD00000000000004FLL;
  *(v6 + 64) = 0x80000001008ED0A0;
  *(v6 + 72) = 0;
  *(v6 + 16) = v2;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x3030302E30;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = 0x3030302E30;
  *(v6 + 48) = 0xE500000000000000;

  sub_100614EE4(v3, type metadata accessor for PendingPhotoAsset);

  v10 = *(v0 + 8);

  return v10(v7);
}

uint64_t sub_10060A63C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 624) = v3;
  *v3 = v2;
  v3[1] = sub_10060A7E0;
  v4 = *(v1 + 304);

  return sub_10062833C(v4);
}

uint64_t sub_10060A7E0()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060A900, v3, v2);
}

uint64_t sub_10060A900()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  swift_beginAccess();
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 56) = 0xD000000000000047;
  *(v6 + 64) = 0x80000001008ED140;
  *(v6 + 72) = 1;
  *(v6 + 16) = v2;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x3030302E30;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = 0x3030302E30;
  *(v6 + 48) = 0xE500000000000000;

  sub_100614EE4(v3, type metadata accessor for PendingPhotoAsset);

  v10 = *(v0 + 8);

  return v10(v7);
}

uint64_t sub_10060AA4C()
{
  v1 = v0[57];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[41];

  v0[33] = 0;
  v0[34] = 0xE000000000000000;
  v0[37] = v1;
  sub_1000F24EC(&qword_100AD5BC0);
  _print_unlocked<A, B>(_:_:)();
  v5 = v0[34];
  v0[79] = v0[33];
  v0[80] = v5;
  v6 = v2 + *(v3 + 20);
  v7 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;

  v10 = sub_100068DDC(sub_100069618, v9, v8);
  v0[81] = v10;

  if (v10)
  {
    sub_1000F24EC(&unk_100AE1A40);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100940080;
    (*(v12 + 16))(v14 + v13, v10 + OBJC_IVAR____TtC7Journal5Asset_id, v11);
    v15 = sub_1004960D4(v14);
    v0[82] = v15;
    swift_setDeallocating();
    (*(v12 + 8))(v14 + v13, v11);
    swift_deallocClassInstance();
    v16 = swift_task_alloc();
    v0[83] = v16;
    *v16 = v0;
    v16[1] = sub_10060ADF0;
    v18 = v0[38];
    v17 = v0[39];

    return sub_10056824C(v18, v17, v15);
  }

  else
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[52];
    v23 = v0[46];
    swift_beginAccess();
    v25 = v0[29];
    v24 = v0[30];
    type metadata accessor for PhotoFetchError();
    v26 = swift_allocObject();
    v27 = v26;
    *(v26 + 56) = v21;
    *(v26 + 64) = v20;
    *(v26 + 72) = 0;
    *(v26 + 16) = v22;
    if (v24)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0x3030302E30;
    }

    if (v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    *(v26 + 24) = v28;
    *(v26 + 32) = v29;
    *(v26 + 40) = 0x3030302E30;
    *(v26 + 48) = 0xE500000000000000;

    sub_100614EE4(v23, type metadata accessor for PendingPhotoAsset);

    v30 = v0[1];

    return v30(v27);
  }
}

uint64_t sub_10060ADF0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 672) = v3;
  *v3 = v2;
  v3[1] = sub_10060AF94;
  v4 = *(v1 + 304);

  return sub_10062833C(v4);
}

uint64_t sub_10060AF94()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_10060B0B4, v3, v2);
}

uint64_t sub_10060B0B4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 416);
  v4 = *(v0 + 368);
  swift_beginAccess();
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  type metadata accessor for PhotoFetchError();
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 56) = v2;
  *(v7 + 64) = v1;
  *(v7 + 72) = 0;
  *(v7 + 16) = v3;
  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x3030302E30;
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  *(v7 + 40) = 0x3030302E30;
  *(v7 + 48) = 0xE500000000000000;

  sub_100614EE4(v4, type metadata accessor for PendingPhotoAsset);

  v11 = *(v0 + 8);

  return v11(v8);
}

void sub_10060B1F0(uint64_t a1, double *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v76 = a6;
  v77 = a7;
  v75 = a5;
  v78 = a2;
  v79 = a4;
  v80 = a1;
  v73 = sub_1000F24EC(&qword_100AE0D78);
  v9 = *(v73 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v73);
  v72 = &v65 - v11;
  v12 = type metadata accessor for PendingPhotoAsset(0);
  v13 = v12 - 8;
  v71 = *(v12 - 8);
  v14 = *(v71 + 64);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = [objc_allocWithZone(NSFileCoordinator) init];
  v83 = 0;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v21 = v20;
  v22 = *(v17 + 8);
  v65 = v19;
  v68 = v16;
  v67 = v17 + 8;
  v66 = v22;
  v22(v19, v16);
  *a2 = v21;
  URL._bridgeToObjectiveC()(*(v13 + 32));
  v74 = v23;
  sub_100614C94(a3, v15, type metadata accessor for PendingPhotoAsset);
  v24 = v9;
  v69 = v9;
  v25 = *(v9 + 16);
  v26 = v72;
  v27 = v73;
  v25(v72, v80, v73);
  v28 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v24 + 80) + v31 + 8) & ~*(v24 + 80);
  v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v78;
  *(v34 + 16) = v79;
  *(v34 + 24) = v35;
  v36 = v34 + v28;
  v37 = v27;
  sub_100617828(v15, v36, type metadata accessor for PendingPhotoAsset);
  v39 = v75;
  v38 = v76;
  *(v34 + v29) = v75;
  *(v34 + v30) = v38;
  v40 = v70;
  *(v34 + v31) = v77;
  (*(v69 + 32))(v34 + v32, v26, v37);
  *(v34 + v33) = &v83;
  v41 = swift_allocObject();
  v41[2] = sub_100614F44;
  v41[3] = v34;
  aBlock[4] = sub_10029A69C;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10060ED1C;
  aBlock[3] = &unk_100A75E30;
  v42 = _Block_copy(aBlock);
  v43 = v39;

  aBlock[0] = 0;
  v44 = v74;
  [v40 coordinateReadingItemAtURL:v74 options:0 error:aBlock byAccessor:v42];
  _Block_release(v42);

  v45 = aBlock[0];
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  if (v45)
  {
    v46 = *v78;
    sub_1000F24EC(&unk_100AD5B10);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100940080;
    v48 = v65;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = v49;
    v66(v48, v68);
    *(v47 + 56) = &type metadata for Double;
    *(v47 + 64) = &protocol witness table for Double;
    *(v47 + 32) = v50 - v46;
    v51 = String.init(format:_:)();
    v53 = v52;
    v54 = v79;
    swift_beginAccess();
    *v54 = v51;
    v54[1] = v53;

    v81 = v45;
LABEL_6:
    CheckedContinuation.resume(throwing:)();
    goto LABEL_7;
  }

  v55 = v83;
  if (v83)
  {
    v56 = *v78;
    sub_1000F24EC(&unk_100AD5B10);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100940080;
    swift_errorRetain();
    v58 = v65;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v60 = v59;
    v66(v58, v68);
    *(v57 + 56) = &type metadata for Double;
    *(v57 + 64) = &protocol witness table for Double;
    *(v57 + 32) = v60 - v56;
    v61 = String.init(format:_:)();
    v63 = v62;
    v64 = v79;
    swift_beginAccess();
    *v64 = v61;
    v64[1] = v63;

    v81 = v55;
    goto LABEL_6;
  }

LABEL_7:
}

void sub_10060B8B8(char *a1, uint64_t *a2, double *a3, void **a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v391 = a8;
  v390 = a7;
  v389 = a5;
  v397 = a1;
  v12 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v12 - 8);
  *&v401 = &v371[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  *&v410 = &v371[-v15];
  v409 = type metadata accessor for UTType();
  v375 = *(v409 - 8);
  __chkstk_darwin(v409);
  *&v405 = &v371[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v418 = &v371[-v18];
  __chkstk_darwin(v19);
  v398 = &v371[-v20];
  v387 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v387);
  v388 = &v371[-v21];
  v386 = type metadata accessor for PhotoLibraryAssetMetadata();
  v385 = *(v386 - 8);
  __chkstk_darwin(v386);
  v376 = &v371[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v371[-v24];
  v403 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v403);
  v404 = &v371[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v420 = type metadata accessor for URL();
  v414 = *(v420 - 8);
  __chkstk_darwin(v420);
  v411 = &v371[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v379 = &v371[-v29];
  __chkstk_darwin(v30);
  *&v377 = &v371[-v31];
  __chkstk_darwin(v32);
  *&v381 = &v371[-v33];
  v413 = type metadata accessor for UUID();
  v408 = *(v413 - 8);
  __chkstk_darwin(v413);
  v395 = &v371[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v419 = &v371[-v36];
  v417 = type metadata accessor for AssetType();
  v400 = *(v417 - 1);
  __chkstk_darwin(v417);
  v394 = &v371[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v406 = &v371[-v39];
  v40 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v40 - 8);
  v380 = &v371[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v382 = &v371[-v43];
  __chkstk_darwin(v44);
  v396 = &v371[-v45];
  __chkstk_darwin(v46);
  v412 = &v371[-v47];
  v48 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v48 - 8);
  v378 = &v371[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v50);
  v384 = &v371[-v51];
  __chkstk_darwin(v52);
  *&v393 = &v371[-v53];
  __chkstk_darwin(v54);
  v416 = &v371[-v55];
  v56 = type metadata accessor for AssetSource();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v383 = &v371[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v59);
  *&v392 = &v371[-v60];
  __chkstk_darwin(v61);
  v399 = &v371[-v62];
  __chkstk_darwin(v63);
  v415 = &v371[-v64];
  v65 = type metadata accessor for Date();
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v68 = &v371[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = *a3;
  sub_1000F24EC(&unk_100AD5B10);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100940080;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v72 = v71;
  (*(v66 + 8))(v68, v65);
  *(v70 + 56) = &type metadata for Double;
  *(v70 + 64) = &protocol witness table for Double;
  *(v70 + 32) = v72 - v69;
  v73 = String.init(format:_:)();
  v75 = v74;
  swift_beginAccess();
  *a2 = v73;
  a2[1] = v75;

  v76 = *a4;
  v77 = [v76 assetType];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v407 = v56;
  if (v78 != v81 || v80 != v82)
  {
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v83)
    {
      v398 = v25;

      goto LABEL_6;
    }

    v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v191 = v190;
    if (v189 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v191 == v192)
    {
    }

    else
    {
      v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v216 & 1) == 0)
      {
        sub_100170130();
        v332 = swift_allocError();
        *v333 = 0;
        swift_willThrow();
LABEL_128:
        *a9 = v332;

        return;
      }
    }

    (*(v57 + 104))(v383, enum case for AssetSource.suggestionSheet(_:), v56);
    v217 = v414;
    v218 = *(v414 + 16);
    v219 = v384;
    v220 = v420;
    v416 = (v414 + 16);
    v415 = v218;
    (v218)(v384, v397, v420);
    (*(v217 + 56))(v219, 0, 1, v220);
    v221 = [v76 metadata];
    v222 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v223 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
    v424 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
    type metadata accessor for MOSuggestionAssetMetadataKey(0);
    sub_10008D1A8(&qword_100AD1C18, type metadata accessor for MOSuggestionAssetMetadataKey);
    v224 = v223;
    AnyHashable.init<A>(_:)();
    if (*(v222 + 16) && (v225 = sub_100361EDC(&v423), (v226 & 1) != 0))
    {
      sub_10000BA20(*(v222 + 56) + 32 * v225, &v424);
      sub_100177B94(&v423);

      v227 = swift_dynamicCast();
      v228 = v421;
      if (!v227)
      {
        v228 = 0;
      }

      v394 = v228;
      if (v227)
      {
        v229 = v422;
      }

      else
      {
        v229 = 0;
      }

      v395 = v229;
    }

    else
    {

      sub_100177B94(&v423);
      v394 = 0;
      v395 = 0;
    }

    v230 = [v76 metadata];
    v231 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v421 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
    v232 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
    AnyHashable.init<A>(_:)();
    if (*(v231 + 16) && (v233 = sub_100361EDC(&v423), (v234 & 1) != 0))
    {
      sub_10000BA20(*(v231 + 56) + 32 * v233, &v424);
      sub_100177B94(&v423);

      v235 = v382;
      v236 = swift_dynamicCast();
      (*(v66 + 56))(v235, v236 ^ 1u, 1, v65);
    }

    else
    {

      sub_100177B94(&v423);
      (*(v66 + 56))(v382, 1, 1, v65);
    }

    v237 = [v76 metadata];
    v238 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v421 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
    v239 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
    AnyHashable.init<A>(_:)();
    if (*(v238 + 16) && (v240 = sub_100361EDC(&v423), (v241 & 1) != 0))
    {
      sub_10000BA20(*(v238 + 56) + 32 * v240, &v424);
      sub_100177B94(&v423);

      sub_1000065A8(0, &qword_100AEB650);
      if (swift_dynamicCast())
      {
        v242 = v421;
        [v421 cgRect];
        v393 = *&v243;
        v392 = *&v244;
        v381 = *&v245;
        v377 = *&v246;

        v247 = 0;
        v248 = v76;
LABEL_77:
        v249 = [v248 metadata];
        v250 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v421 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
        v251 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
        AnyHashable.init<A>(_:)();
        if (*(v250 + 16) && (v252 = sub_100361EDC(&v423), (v253 & 1) != 0))
        {
          sub_10000BA20(*(v250 + 56) + 32 * v252, &v424);
          sub_100177B94(&v423);

          sub_1000065A8(0, &qword_100AEB650);
          if (swift_dynamicCast())
          {
            v254 = v421;
            [v421 cgRect];
            v256 = v255;
            v258 = v257;
            v260 = v259;
            v262 = v261;

            v263 = 0;
            v264 = v76;
LABEL_83:
            v265 = [v264 metadata];
            v266 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v421 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
            v267 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
            AnyHashable.init<A>(_:)();
            if (*(v266 + 16) && (v268 = sub_100361EDC(&v423), (v269 & 1) != 0))
            {
              sub_10000BA20(*(v266 + 56) + 32 * v268, &v424);
              sub_100177B94(&v423);

              sub_1000065A8(0, &qword_100AEB650);
              v270 = swift_dynamicCast();
              v271 = v418;
              if (v270)
              {
                v272 = v421;
                [v421 cgRect];
                v274 = v273;
                v276 = v275;
                v278 = v277;
                v280 = v279;

                LODWORD(v374) = 0;
                goto LABEL_89;
              }
            }

            else
            {

              sub_100177B94(&v423);
              v271 = v418;
            }

            LODWORD(v374) = 1;
            v274 = 0.0;
            v276 = 0.0;
            v278 = 0.0;
            v280 = 0.0;
LABEL_89:
            v281 = v406;
            (v400[13])(v406, enum case for AssetType.livePhoto(_:), v417);
            v282 = v399;
            (*(v57 + 16))(v399, v383, v56);
            v283 = v419;
            UUID.init()();
            v284 = objc_allocWithZone(type metadata accessor for LivePhotoAsset());
            v397 = sub_100116748(v283, v281, v282);
            v285 = v378;
            sub_1000082B4(v384, v378, &unk_100AD6DD0);
            v286 = v414;
            v287 = v420;
            if ((*(v414 + 48))(v285, 1, v420) == 1)
            {
              sub_100004F84(v285, &unk_100AD6DD0);
LABEL_135:
              sub_1000082B4(v382, v380, &unk_100AD4790);
              x = v393;
              y = v392;
              width = v381;
              height = v377;
              if (v247)
              {
                x = CGRectZero.origin.x;
                y = CGRectZero.origin.y;
                width = CGRectZero.size.width;
                height = CGRectZero.size.height;
              }

              v361 = NSStringFromCGRect(*&x);
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (v263)
              {
                v256 = CGRectZero.origin.x;
                v258 = CGRectZero.origin.y;
                v260 = CGRectZero.size.width;
                v262 = CGRectZero.size.height;
              }

              v429.origin.x = v256;
              v429.origin.y = v258;
              v429.size.width = v260;
              v429.size.height = v262;
              v362 = NSStringFromCGRect(v429);
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (v374)
              {
                v274 = CGRectZero.origin.x;
                v276 = CGRectZero.origin.y;
                v278 = CGRectZero.size.width;
                v280 = CGRectZero.size.height;
              }

              v430.origin.x = v274;
              v430.origin.y = v276;
              v430.size.width = v278;
              v430.size.height = v280;
              v363 = NSStringFromCGRect(v430);
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v364 = v376;
              PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
              sub_100004F84(v384, &unk_100AD6DD0);
              (*(v57 + 8))(v383, v407);
              sub_100004F84(v382, &unk_100AD4790);
              v365 = v388;
              (*(v385 + 32))(v388, v364, v386);
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0);
              v366 = swift_allocObject();
              v367 = *(*v366 + 104);
              v368 = sub_1000F24EC(&qword_100AD5B20);
              (*(*(v368 - 8) + 56))(v366 + v367, 1, 1, v368);
              *(v366 + *(*v366 + 112)) = xmmword_100941EE0;
              sub_100021CEC(v365, v366 + *(*v366 + 120), &unk_100AEE0A0);
              v323 = v397;
              *&v397[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata] = v366;
              goto LABEL_142;
            }

            v372 = v263;
            LODWORD(v373) = v247;
            (*(v286 + 32))(v379, v285, v287);
            v288 = v397;
            v289 = sub_10011446C();
            v290 = *(v289 + 2);
            v402 = v57;
            if (v290)
            {
              v291 = (*(v286 + 80) + 32) & ~*(v286 + 80);
              v378 = v289;
              v292 = v289 + v291;
              v412 = *(v286 + 72);
              v417 = v375 + 48;
              v400 = (v375 + 32);
              v396 = (v408 + 8);
              v406 = (v286 + 8);
              v293 = v420;
              v294 = *&v401;
              v295 = v411;
              v399 = v375 + 8;
              while (1)
              {
                (v415)(v295, v292, v293);
                URL.pathExtension.getter();
                static UTType.data.getter();
                v296 = *&v410;
                UTType.init(filenameExtension:conformingTo:)();
                v297 = *v417;
                v298 = v409;
                if ((*v417)(v296, 1, v409) == 1)
                {
                  sub_100004F84(v296, &unk_100AD7C40);
                  v299 = v298;
                }

                else
                {
                  v300 = v398;
                  (*v400)(v398, v296, v298);
                  static UTType.image.getter();
                  v301 = UTType.conforms(to:)();
                  v302 = *v399;
                  (*v399)(v271, v298);
                  v302(v300, v298);
                  v299 = v298;
                  if (v301)
                  {
                    v303 = v404;
                    v295 = v411;
                    v293 = v420;
                    (v415)(v404, v411, v420);
                    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
                    swift_storeEnumTagMultiPayload();
                    goto LABEL_104;
                  }
                }

                v295 = v411;
                URL.pathExtension.getter();
                v271 = v418;
                static UTType.data.getter();
                UTType.init(filenameExtension:conformingTo:)();
                v304 = v297(v294, 1, v299);
                v305 = v405;
                if (v304 == 1)
                {
                  v293 = v420;
                  (*v406)(v295, v420);
                  sub_100004F84(v294, &unk_100AD7C40);
                }

                else
                {
                  (*v400)(COERCE_CGFLOAT(*&v405), v294, v299);
                  static UTType.video.getter();
                  v306 = UTType.conforms(to:)();
                  v307 = *v399;
                  (*v399)(v271, v299);
                  if (v306)
                  {
                    v307(*&v305, v299);
LABEL_103:
                    v303 = v404;
                    v293 = v420;
                    (v415)(v404, v295, v420);
                    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
                    swift_storeEnumTagMultiPayload();
LABEL_104:
                    swift_storeEnumTagMultiPayload();
                    v309 = v419;
                    UUID.init()();
                    v310 = UUID.uuidString.getter();
                    v312 = v311;
                    (*v396)(v309, v413);
                    type metadata accessor for AssetAttachment(0);
                    v313 = swift_allocObject();
                    *(v313 + 16) = 0;
                    sub_100617828(v303, v313 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
                    v314 = (v313 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
                    *v314 = v310;
                    v314[1] = v312;
                    v315 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
                    v316 = v397;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((*&v316[v315] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v316[v315] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v375 = *((*&v316[v315] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    (*v406)(v295, v293);
                    v294 = *&v401;
                    v271 = v418;
                    goto LABEL_94;
                  }

                  static UTType.movie.getter();
                  v308 = UTType.conforms(to:)();
                  v307(v271, v299);
                  v307(*&v305, v299);
                  if (v308)
                  {
                    goto LABEL_103;
                  }

                  v293 = v420;
                  (*v406)(v295, v420);
                }

LABEL_94:
                v292 += v412;
                if (!--v290)
                {

                  v56 = v407;
                  v57 = v402;
                  v286 = v414;
                  v288 = v397;
                  goto LABEL_122;
                }
              }
            }

            v293 = v420;
LABEL_122:
            v334 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            v335 = *&v288[v334];
            if (v335 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter() <= 1)
              {
                goto LABEL_124;
              }
            }

            else if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
            {
LABEL_124:

              sub_100170130();
              v332 = swift_allocError();
              *v336 = 0;
              swift_willThrow();

              (*(v286 + 8))(v379, v293);
              sub_100004F84(v384, &unk_100AD6DD0);
              (*(v57 + 8))(v383, v56);
              v337 = &v414;
LABEL_127:
              sub_100004F84(*(v337 - 32), &unk_100AD4790);
              goto LABEL_128;
            }

            if (qword_100ACF938 != -1)
            {
              swift_once();
            }

            v339 = type metadata accessor for Logger();
            sub_10000617C(v339, qword_100AD3270);
            v340 = v288;
            v341 = Logger.logObject.getter();
            v342 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v341, v342))
            {
              v343 = swift_slowAlloc();
              v344 = swift_slowAlloc();
              v418 = swift_slowAlloc();
              v424 = v418;
              *v343 = 138412802;
              *(v343 + 4) = v340;
              *v344 = v340;
              *(v343 + 12) = 2080;
              v345 = v408;
              v346 = v419;
              v347 = v413;
              (*(v408 + 16))(v419, &v340[OBJC_IVAR____TtC7Journal5Asset_id], v413);
              sub_10008D1A8(&qword_100AE19B0, &type metadata accessor for UUID);
              v348 = v340;
              v349 = dispatch thunk of CustomStringConvertible.description.getter();
              v351 = v350;
              (*(v345 + 8))(v346, v347);
              v352 = sub_100008458(v349, v351, &v424);

              *(v343 + 14) = v352;
              *(v343 + 22) = 2080;
              type metadata accessor for AssetAttachment(0);

              v353 = Array.description.getter();
              v355 = v354;

              v356 = sub_100008458(v353, v355, &v424);

              *(v343 + 24) = v356;
              _os_log_impl(&_mh_execute_header, v341, v342, "%@[%s] init self.sourceAttachments=%s", v343, 0x20u);
              sub_100004F84(v344, &unk_100AD4BB0);

              swift_arrayDestroy();
            }

            (*(v414 + 8))(v379, v420);
            v57 = v402;
            v247 = v373;
            v263 = v372;
            goto LABEL_135;
          }
        }

        else
        {

          sub_100177B94(&v423);
        }

        v264 = v76;
        v263 = 1;
        v256 = 0.0;
        v258 = 0.0;
        v260 = 0.0;
        v262 = 0.0;
        goto LABEL_83;
      }
    }

    else
    {

      sub_100177B94(&v423);
    }

    v248 = v76;
    v247 = 1;
    v393 = 0.0;
    v392 = 0.0;
    v381 = 0.0;
    v377 = 0.0;
    goto LABEL_77;
  }

  v398 = v25;

LABEL_6:
  (*(v57 + 104))(v415, enum case for AssetSource.suggestionSheet(_:), v56);
  v84 = v414;
  v85 = *(v414 + 16);
  v86 = v416;
  v87 = v420;
  v376 = (v414 + 16);
  v375 = v85;
  (v85)(v416, v397, v420);
  (*(v84 + 56))(v86, 0, 1, v87);
  v88 = [v76 metadata];
  v89 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v90 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
  v424 = MOSuggestionAssetMetadataKeyPhotoLocalIdentifier;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  sub_10008D1A8(&qword_100AD1C18, type metadata accessor for MOSuggestionAssetMetadataKey);
  v91 = v90;
  AnyHashable.init<A>(_:)();
  if (*(v89 + 16) && (v92 = sub_100361EDC(&v423), (v93 & 1) != 0))
  {
    sub_10000BA20(*(v89 + 56) + 32 * v92, &v424);
    sub_100177B94(&v423);

    v94 = swift_dynamicCast();
    v95 = v421;
    if (!v94)
    {
      v95 = 0;
    }

    v397 = v95;
    if (v94)
    {
      v96 = v422;
    }

    else
    {
      v96 = 0;
    }

    v418 = v96;
  }

  else
  {

    sub_100177B94(&v423);
    v397 = 0;
    v418 = 0;
  }

  v97 = [v76 metadata];
  v98 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
  v99 = MOSuggestionAssetMetadataKeyPhotoTakenDate;
  AnyHashable.init<A>(_:)();
  if (*(v98 + 16) && (v100 = sub_100361EDC(&v423), (v101 & 1) != 0))
  {
    sub_10000BA20(*(v98 + 56) + 32 * v100, &v424);
    sub_100177B94(&v423);

    v102 = v412;
    v103 = swift_dynamicCast();
    (*(v66 + 56))(v102, v103 ^ 1u, 1, v65);
  }

  else
  {

    sub_100177B94(&v423);
    (*(v66 + 56))(v412, 1, 1, v65);
  }

  v104 = [v76 metadata];
  v105 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v424 = MOSuggestionAssetMetadataKeyPhotoMomentResolution;
  v106 = MOSuggestionAssetMetadataKeyPhotoMomentResolution;
  AnyHashable.init<A>(_:)();
  if (*(v105 + 16) && (v107 = sub_100361EDC(&v423), (v108 & 1) != 0))
  {
    sub_10000BA20(*(v105 + 56) + 32 * v107, &v424);
    sub_100177B94(&v423);

    type metadata accessor for CGSize(0);
    v109 = swift_dynamicCast();
    v110 = v421;
    if (!v109)
    {
      v110 = 0;
    }

    v384 = v110;
    if (v109)
    {
      v111 = v422;
    }

    else
    {
      v111 = 0;
    }

    v383 = v111;
    v112 = v109 ^ 1;
  }

  else
  {

    sub_100177B94(&v423);
    v384 = 0;
    v383 = 0;
    v112 = 1;
  }

  LODWORD(v382) = v112;
  v113 = [v76 metadata];
  v114 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
  v115 = MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect;
  AnyHashable.init<A>(_:)();
  if (!*(v114 + 16) || (v116 = sub_100361EDC(&v423), (v117 & 1) == 0))
  {

    sub_100177B94(&v423);
    goto LABEL_33;
  }

  sub_10000BA20(*(v114 + 56) + 32 * v116, &v424);
  sub_100177B94(&v423);

  sub_1000065A8(0, &qword_100AEB650);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    LODWORD(v380) = 1;
    v410 = 0.0;
    v409 = 0;
    v405 = 0.0;
    v401 = 0.0;
    goto LABEL_34;
  }

  v118 = v421;
  [v421 cgRect];
  v410 = v119;
  v409 = v120;
  v405 = v121;
  v401 = *&v122;

  LODWORD(v380) = 0;
LABEL_34:
  v123 = [v76 metadata];
  v124 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
  v125 = MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect;
  AnyHashable.init<A>(_:)();
  if (!*(v124 + 16) || (v126 = sub_100361EDC(&v423), (v127 & 1) == 0))
  {

    sub_100177B94(&v423);
    goto LABEL_39;
  }

  sub_10000BA20(*(v124 + 56) + 32 * v126, &v424);
  sub_100177B94(&v423);

  sub_1000065A8(0, &qword_100AEB650);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    LODWORD(v379) = 1;
    v130 = 0.0;
    v132 = 0.0;
    v134 = 0.0;
    v136 = 0.0;
    goto LABEL_40;
  }

  v128 = v421;
  [v421 cgRect];
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;

  LODWORD(v379) = 0;
LABEL_40:
  v137 = [v76 metadata];
  v138 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v421 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
  v139 = MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect;
  AnyHashable.init<A>(_:)();
  if (*(v138 + 16) && (v140 = sub_100361EDC(&v423), (v141 & 1) != 0))
  {
    sub_10000BA20(*(v138 + 56) + 32 * v140, &v424);
    sub_100177B94(&v423);

    sub_1000065A8(0, &qword_100AEB650);
    v142 = swift_dynamicCast();
    v143 = v407;
    if (v142)
    {
      v144 = v421;
      [v421 cgRect];
      v146 = v145;
      v148 = v147;
      v150 = v149;
      v152 = v151;

      LODWORD(v378) = 0;
      goto LABEL_46;
    }
  }

  else
  {

    sub_100177B94(&v423);
    v143 = v407;
  }

  LODWORD(v378) = 1;
  v146 = 0.0;
  v148 = 0.0;
  v150 = 0.0;
  v152 = 0.0;
LABEL_46:
  v402 = v57;
  v153 = v400;
  v154 = v406;
  (v400[13])(v406, enum case for AssetType.photo(_:), v417);
  v411 = *(v57 + 16);
  v155 = v399;
  (v411)(v399, v415, v143);
  v156 = v419;
  UUID.init()();
  v157 = objc_allocWithZone(type metadata accessor for PhotoAsset());
  *&v157[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = 0;
  v158 = v408;
  v159 = *(v408 + 16);
  v160 = v395;
  v161 = v156;
  v162 = v413;
  v374 = v408 + 16;
  v373 = v159;
  v159(v395, v161, v413);
  v163 = v394;
  (v153[2])(v394, v154, v417);
  v164 = *&v392;
  (v411)(*&v392, v155, v143);
  v165 = v163;
  v166 = v402;
  v167 = sub_100285908(v160, v165, v164);
  v168 = *(v158 + 8);
  v408 = v158 + 8;
  v168(v419, v162);
  v170 = *(v166 + 8);
  v169 = v166 + 8;
  v411 = v170;
  (v170)(v155, v143);
  (v153[1])(v406, v417);
  v171 = v393;
  sub_1000082B4(v416, *&v393, &unk_100AD6DD0);
  v172 = v414;
  v173 = v420;
  if ((*(v414 + 48))(COERCE_DOUBLE(*&v171), 1, v420) == 1)
  {
    sub_100004F84(*&v171, &unk_100AD6DD0);
  }

  else
  {
    v174 = v381;
    (*(v172 + 32))(COERCE_DOUBLE(*&v381), COERCE_DOUBLE(*&v171), v173);
    v175 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v176 = String._bridgeToObjectiveC()();

    v177 = [v175 fileExistsAtPath:v176];

    if (v177)
    {
      sub_1000F24EC(&unk_100AD4780);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_100941D50;
      v179 = v404;
      (v375)(v404, *&v174, v173);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v180 = v174;
      v181 = v168;
      v182 = v419;
      UUID.init()();
      v183 = UUID.uuidString.getter();
      v185 = v184;
      v181(v182, v413);
      type metadata accessor for AssetAttachment(0);
      v186 = swift_allocObject();
      *(v186 + 16) = 0;
      sub_100617828(v179, v186 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v187 = (v186 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v187 = v183;
      v187[1] = v185;
      *(v178 + 32) = v186;
      (*(v172 + 8))(COERCE_DOUBLE(*&v180), v420);
      v188 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      *&v167[v188] = v178;

      v143 = v407;
    }

    else
    {
      v417 = v168;
      v402 = v169;
      if (qword_100ACFE08 != -1)
      {
        swift_once();
      }

      v193 = type metadata accessor for Logger();
      sub_10000617C(v193, qword_100AE55E0);
      v194 = v377;
      v195 = v420;
      (v375)(*&v377, *&v174, v420);
      v196 = v167;
      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v404 = v200;
        v406 = swift_slowAlloc();
        v423 = v406;
        *v199 = 138412802;
        *(v199 + 4) = v196;
        *v200 = v196;
        *(v199 + 12) = 2080;
        v201 = v419;
        v403 = v197;
        v202 = v413;
        v373(v419, &v196[OBJC_IVAR____TtC7Journal5Asset_id], v413);
        sub_10008D1A8(&qword_100AE19B0, &type metadata accessor for UUID);
        v203 = v196;
        v204 = v198;
        v205 = dispatch thunk of CustomStringConvertible.description.getter();
        v207 = v206;
        (v417)(v201, v202);
        v208 = sub_100008458(v205, v207, &v423);

        *(v199 + 14) = v208;
        *(v199 + 22) = 2080;
        sub_10008D1A8(&qword_100ADEFD0, &type metadata accessor for URL);
        v209 = dispatch thunk of CustomStringConvertible.description.getter();
        v211 = v210;
        v212 = v194;
        v213 = *(v414 + 8);
        v213(*&v212, v195);
        v214 = sub_100008458(v209, v211, &v423);

        *(v199 + 24) = v214;
        v215 = v403;
        _os_log_impl(&_mh_execute_header, v403, v204, "%@[%s] failed init imageFile does not exist: %s", v199, 0x20u);
        sub_100004F84(v404, &unk_100AD4BB0);

        swift_arrayDestroy();

        v213(*&v174, v195);
      }

      else
      {

        v317 = *(v414 + 8);
        v317(*&v194, v195);
        v317(*&v174, v195);
      }

      v143 = v407;
    }
  }

  v318 = v396;
  v319 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  v320 = *&v167[v319];
  if (v320 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

  if (!*((v320 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_126:

    sub_100170130();
    v332 = swift_allocError();
    *v338 = 0;
    swift_willThrow();

    sub_100004F84(v416, &unk_100AD6DD0);
    (v411)(v415, v143);
    v337 = &v425;
    goto LABEL_127;
  }

LABEL_112:
  sub_1000082B4(v412, v318, &unk_100AD4790);
  if (v380)
  {
    v321 = CGRectZero.origin.y;
    v410 = CGRectZero.origin.x;
    v409 = *&v321;
    v322 = CGRectZero.size.height;
    v405 = CGRectZero.size.width;
    v401 = v322;
  }

  v323 = v167;
  v426.origin.x = v410;
  *&v426.origin.y = v409;
  v426.size.width = v405;
  v426.size.height = v401;
  v324 = NSStringFromCGRect(v426);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v379)
  {
    v130 = CGRectZero.origin.x;
    v132 = CGRectZero.origin.y;
    v134 = CGRectZero.size.width;
    v136 = CGRectZero.size.height;
  }

  v427.origin.x = v130;
  v427.origin.y = v132;
  v427.size.width = v134;
  v427.size.height = v136;
  v325 = NSStringFromCGRect(v427);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v378)
  {
    v146 = CGRectZero.origin.x;
    v148 = CGRectZero.origin.y;
    v150 = CGRectZero.size.width;
    v152 = CGRectZero.size.height;
  }

  v428.origin.x = v146;
  v428.origin.y = v148;
  v428.size.width = v150;
  v428.size.height = v152;
  v326 = NSStringFromCGRect(v428);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v327 = v398;
  PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
  sub_100004F84(v416, &unk_100AD6DD0);
  (v411)(v415, v407);
  sub_100004F84(v412, &unk_100AD4790);
  v328 = v388;
  (*(v385 + 32))(v388, v327, v386);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&unk_100AEE0B0);
  v329 = swift_allocObject();
  v330 = *(*v329 + 104);
  v331 = sub_1000F24EC(&qword_100AD5B20);
  (*(*(v331 - 8) + 56))(v329 + v330, 1, 1, v331);
  *(v329 + *(*v329 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v328, v329 + *(*v329 + 120), &unk_100AEE0A0);
  *&v323[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v329;

LABEL_142:

  v369 = v323;
  sub_100606C74(v389);
  sub_1000F24EC(&unk_100AD4780);
  v370 = swift_allocObject();
  *(v370 + 16) = xmmword_100941D50;
  *(v370 + 32) = v369;
  sub_1006167D4(v390, v370);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v421 = v369;
  sub_1000F24EC(&qword_100AE0D78);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_10060ED1C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10060EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v13;
  *(v8 + 384) = v12;
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 336) = a3;
  *(v8 + 344) = a4;
  *(v8 + 328) = a2;
  v9 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  *(v8 + 408) = v9;
  *(v8 + 416) = *(v9 + 64);
  *(v8 + 424) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_10060EF28, 0, 0);
}

uint64_t sub_10060EF28()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 408);
    v32 = **(v0 + 328);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v31 = (v4 + 40) & ~v4;
    v30 = (*(v0 + 416) + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v3 + 72);
    do
    {
      v36 = v2;
      v8 = *(v0 + 440);
      v9 = *(v0 + 424);
      v10 = *(v0 + 368);
      v34 = *(v0 + 360);
      v35 = *(v0 + 432);
      v11 = *(v0 + 344);
      v33 = *(v0 + 352);
      static TaskPriority.userInitiated.getter();
      v12 = type metadata accessor for TaskPriority();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v8, 0, 1, v12);
      sub_100614C94(v5, v9, type metadata accessor for PendingPhotoAsset);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v11;
      sub_100617828(v9, v14 + v31, type metadata accessor for PendingPhotoAsset);
      *(v14 + v30) = v33;
      *(v14 + v29) = v34;
      v15 = (v14 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
      v16 = v10[1];
      v17 = v10[2];
      v18 = v10[4];
      v15[3] = v10[3];
      v15[4] = v18;
      v15[1] = v16;
      v15[2] = v17;
      *v15 = *v10;
      sub_1000082B4(v8, v35, &qword_100AD5170);
      LODWORD(v9) = (*(v13 + 48))(v35, 1, v12);

      v19 = v34;
      v20 = *(v0 + 432);
      v21 = *(v0 + 368);
      if (v9 == 1)
      {
        sub_100614E54(v21, v0 + 16);
        sub_100004F84(v20, &qword_100AD5170);
      }

      else
      {
        sub_100614E54(v21, v0 + 96);
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v20, v12);
      }

      if (v14[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      type metadata accessor for PhotoFetchOutcome();

      if (v24 | v22)
      {
        v6 = v0 + 176;
        *(v0 + 176) = 0;
        *(v0 + 184) = 0;
        *(v0 + 192) = v22;
        *(v0 + 200) = v24;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 440);
      *(v0 + 208) = 1;
      *(v0 + 216) = v6;
      *(v0 + 224) = v32;
      swift_task_create();

      sub_100004F84(v7, &qword_100AD5170);
      v5 += v28;
      v2 = v36 - 1;
    }

    while (v36 != 1);
  }

  v25 = swift_task_alloc();
  *(v0 + 448) = v25;
  v26 = sub_1000F24EC(&qword_100AEB648);
  *v25 = v0;
  v25[1] = sub_10060F33C;

  return ThrowingTaskGroup.nextResult()(v0 + 312, v26);
}

uint64_t sub_10060F33C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_10060F84C;
  }

  else
  {
    *(v2 + 464) = *(v2 + 312);
    *(v2 + 321) = *(v2 + 320);
    v3 = sub_10060F460;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10060F460()
{
  v1 = *(v0 + 321);
  if (v1 != 255)
  {
    v2 = *(v0 + 464);
    if (v1)
    {
      v3 = *(v0 + 464);
    }

    else
    {
      *(v0 + 248) = 0;
      *(v0 + 256) = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      v6 = *(v0 + 256);
      *(v0 + 232) = *(v0 + 248);
      *(v0 + 240) = v6;
      v7._countAndFlagsBits = 0x4164657472617473;
      v7._object = 0xEA00000000003D74;
      String.append(_:)(v7);
      Double.write<A>(to:)();
      v8._object = 0x80000001008FEA00;
      v8._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v8);
      v9 = v2[3];
      v10 = v2[4];

      v11._countAndFlagsBits = v9;
      v11._object = v10;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 0xD000000000000018;
      v12._object = 0x80000001008FEA20;
      String.append(_:)(v12);
      v13 = v2[5];
      v14 = v2[6];

      v15._countAndFlagsBits = v13;
      v15._object = v14;
      String.append(_:)(v15);

      v16._countAndFlagsBits = 0x73646E6F63657320;
      v16._object = 0xE90000000000002ELL;
      String.append(_:)(v16);
      v18 = *(v0 + 232);
      v17 = *(v0 + 240);
      type metadata accessor for PhotoFetchResult();
      if (swift_dynamicCastClass())
      {
        v19 = *(v0 + 464);
        v20 = *(v0 + 376);
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        v21 = *(v0 + 321);
        _StringGuts.grow(_:)(49);

        *(v0 + 280) = 0xD00000000000002FLL;
        *(v0 + 288) = 0x80000001008FEA40;
        v22._countAndFlagsBits = v18;
        v22._object = v17;
        String.append(_:)(v22);

        v20(*(v0 + 280), *(v0 + 288));
        sub_100614E8C(v19, v21);

LABEL_16:
        v31 = swift_task_alloc();
        *(v0 + 448) = v31;
        v32 = sub_1000F24EC(&qword_100AEB648);
        *v31 = v0;
        v31[1] = sub_10060F33C;

        return ThrowingTaskGroup.nextResult()(v0 + 312, v32);
      }

      type metadata accessor for PhotoFetchError();
      v23 = swift_dynamicCastClass();
      v24 = *(v0 + 321);
      v25 = *(v0 + 464);
      if (v23)
      {
        v26 = *(v0 + 392);
        v27 = *(v23 + 64);
        *(v0 + 264) = *(v23 + 56);
        *(v0 + 272) = v27;
        v28 = v23;
        sub_100614EB0(v25, v24);

        v29._countAndFlagsBits = 32;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        v30._countAndFlagsBits = v18;
        v30._object = v17;
        String.append(_:)(v30);

        v26(*(v0 + 264), *(v0 + 272));

        v24 = *(v0 + 321);
        v25 = *(v0 + 464);
        if (*(v28 + 72) == 1)
        {
          type metadata accessor for PhotoFetchOutcome();
          sub_1000F24EC(&qword_100AD5BC0);
          ThrowingTaskGroup.cancelAll()();
        }

        sub_100614E8C(v25, v24);
      }

      else
      {
      }

      v3 = v25;
      LOBYTE(v1) = v24;
    }

    sub_100614E8C(v3, v1);
    goto LABEL_16;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10060F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_10060F890, 0, 0);
}

uint64_t sub_10060F890()
{
  v1 = *(v0[7] + 48);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10060F938;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  return sub_100608A88(0, 0, v5, v3, v4, v1);
}

uint64_t sub_10060F938(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10060FA84, 0, 0);
  }
}

uint64_t sub_10060FAF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10060FB60()
{

  return swift_deallocClassInstance();
}

void sub_10060FBCC(void **a1)
{
  v2 = *(sub_1000F24EC(&qword_100AD64E8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100205098(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100610880(v5);
  *a1 = v3;
}

double *sub_10060FC80(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_1003E7494(*(a1 + 16), 0);
  v6 = sub_1001C156C(v8, (v5 + 4), v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_10060FD24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AD9A60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10060FDFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for DataAggregator.EntryPlace(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AD4780);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

double *sub_10060FEE0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1003E7998(v2, 0);

    v1 = sub_100605F60(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

double *sub_10060FF8C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1003E7998(v2, 0);

    v1 = sub_1001C21A0(&v5, (v3 + 32), v2, v1);
    sub_100014FF8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_10061003C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000065A8(0, &qword_100AD4C80);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AD4780);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100610130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100ADDBE8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100610218(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100AD6618);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1006102F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100AE0D90);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        sub_1000F24EC(&qword_100AE2B50);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1006103EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000F24EC(&unk_100AE1A40);
      v7 = *(type metadata accessor for UUID() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for UUID();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

double *sub_10061058C(uint64_t *a1)
{
  v2 = sub_1000F24EC(&qword_100AE4BE0);
  __chkstk_darwin(v2);
  v4 = v16 - v3;
  v5 = sub_1000F24EC(&qword_100AE4BD8);
  __chkstk_darwin(v5 - 8);
  v7 = v16 - v6;
  v8 = *a1;
  v16[0] = a1[1];
  v16[1] = v8;
  sub_1000F24EC(&qword_100AE4BC0);
  sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
  v9 = dispatch thunk of Collection.distance(from:to:)();
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v9;
  v11 = sub_1003E7524(v9, 0);
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  sub_1000082B4(a1, v4, &qword_100AE4BE0);
  v14 = sub_100611FEC(v7, &v11[v13], v10);
  sub_100004F84(v7, &qword_100AE4BD8);
  if (v14 != v10)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v11;
}

void sub_100610784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000F24EC(&qword_100AD6660);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_1000F24EC(&qword_100AD6668);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100610880(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F24EC(&qword_100AD64E8);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_1000F24EC(&qword_100AD64E8) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100610C14(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1006109C4(0, v2, 1, a1);
  }
}

void sub_1006109C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_1000F24EC(&qword_100AD64E8);
  __chkstk_darwin(v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v30 = v18;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_1000082B4(v21, v15, &qword_100AD64E8);
      sub_1000082B4(v18, v11, &qword_100AD64E8);
      v22 = Date.compare(_:)();
      sub_100004F84(v11, &qword_100AD64E8);
      sub_100004F84(v15, &qword_100AD64E8);
      if (v22 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v18 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = v33;
      sub_100021CEC(v21, v33, &qword_100AD64E8);
      swift_arrayInitWithTakeFrontToBack();
      sub_100021CEC(v23, v18, &qword_100AD64E8);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100610C14(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v96 = a1;
  v109 = sub_1000F24EC(&qword_100AD64E8);
  v105 = *(v109 - 8);
  __chkstk_darwin(v109);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v108 = &v92 - v11;
  __chkstk_darwin(v12);
  v111 = &v92 - v13;
  __chkstk_darwin(v14);
  v110 = &v92 - v15;
  v16 = a3[1];
  if (v16 >= 1)
  {
    v93 = a4;
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    v97 = a3;
    while (1)
    {
      v19 = v17;
      v101 = v18;
      if (v17 + 1 >= v16)
      {
        v25 = v17 + 1;
      }

      else
      {
        v106 = v16;
        v95 = v6;
        v20 = *a3;
        v21 = *(v105 + 72);
        a4 = v20 + v21 * (v17 + 1);
        v4 = v110;
        sub_1000082B4(a4, v110, &qword_100AD64E8);
        v22 = v111;
        sub_1000082B4(v20 + v21 * v17, v111, &qword_100AD64E8);
        v104 = Date.compare(_:)();
        sub_100004F84(v22, &qword_100AD64E8);
        sub_100004F84(v4, &qword_100AD64E8);
        v94 = v17;
        v23 = v17 + 2;
        v107 = v21;
        v24 = v20 + v21 * (v17 + 2);
        while (1)
        {
          v25 = v106;
          if (v106 == v23)
          {
            break;
          }

          v26 = v104 == -1;
          v27 = v110;
          sub_1000082B4(v24, v110, &qword_100AD64E8);
          v28 = v111;
          sub_1000082B4(a4, v111, &qword_100AD64E8);
          v4 = Date.compare(_:)();
          sub_100004F84(v28, &qword_100AD64E8);
          sub_100004F84(v27, &qword_100AD64E8);
          ++v23;
          v24 += v107;
          a4 += v107;
          if (((v26 ^ (v4 != -1)) & 1) == 0)
          {
            v25 = v23 - 1;
            break;
          }
        }

        a3 = v97;
        v19 = v94;
        v6 = v95;
        if (v104 == -1)
        {
          if (v25 < v94)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            return;
          }

          if (v94 < v25)
          {
            v29 = v25;
            v4 = v107 * (v25 - 1);
            v30 = v25 * v107;
            a4 = v94 * v107;
            do
            {
              if (v19 != --v29)
              {
                v31 = *v97;
                if (!*v97)
                {
                  goto LABEL_132;
                }

                sub_100021CEC(v31 + a4, v98, &qword_100AD64E8);
                if (a4 < v4 || v31 + a4 >= v31 + v30)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a4 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_100021CEC(v98, v31 + v4, &qword_100AD64E8);
              }

              ++v19;
              v4 -= v107;
              v30 -= v107;
              a4 += v107;
            }

            while (v19 < v29);
            v19 = v94;
            v6 = v95;
            a3 = v97;
          }
        }
      }

      v32 = a3[1];
      if (v25 >= v32)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v25, v19))
      {
        goto LABEL_124;
      }

      if (v25 - v19 >= v93)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v19, v93))
      {
        goto LABEL_125;
      }

      if (v19 + v93 >= v32)
      {
        v33 = a3[1];
      }

      else
      {
        v33 = v19 + v93;
      }

      if (v33 < v19)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (v25 == v33)
      {
LABEL_32:
        v17 = v25;
        if (v25 < v19)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v94 = v19;
        v95 = v6;
        v78 = *a3;
        v79 = *(v105 + 72);
        v80 = *a3 + v79 * (v25 - 1);
        v81 = -v79;
        v82 = v19 - v25;
        v107 = v78;
        v99 = v79;
        v100 = v33;
        a4 = v78 + v25 * v79;
        do
        {
          v106 = v25;
          v102 = a4;
          v103 = v82;
          v104 = v80;
          v83 = v80;
          do
          {
            v4 = v110;
            sub_1000082B4(a4, v110, &qword_100AD64E8);
            v84 = v111;
            sub_1000082B4(v83, v111, &qword_100AD64E8);
            v85 = Date.compare(_:)();
            sub_100004F84(v84, &qword_100AD64E8);
            sub_100004F84(v4, &qword_100AD64E8);
            if (v85 != -1)
            {
              break;
            }

            if (!v107)
            {
              goto LABEL_129;
            }

            v4 = v108;
            sub_100021CEC(a4, v108, &qword_100AD64E8);
            swift_arrayInitWithTakeFrontToBack();
            sub_100021CEC(v4, v83, &qword_100AD64E8);
            v83 += v81;
            a4 += v81;
          }

          while (!__CFADD__(v82++, 1));
          v25 = v106 + 1;
          v17 = v100;
          v80 = v104 + v99;
          v82 = v103 - 1;
          a4 = v102 + v99;
        }

        while (v106 + 1 != v100);
        v19 = v94;
        v6 = v95;
        a3 = v97;
        if (v100 < v94)
        {
          goto LABEL_123;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v18 = v101;
      }

      else
      {
        v18 = sub_1003E4B80(0, *(v101 + 2) + 1, 1, v101);
      }

      a4 = *(v18 + 2);
      v34 = *(v18 + 3);
      v4 = a4 + 1;
      if (a4 >= v34 >> 1)
      {
        v18 = sub_1003E4B80((v34 > 1), a4 + 1, 1, v18);
      }

      *(v18 + 2) = v4;
      v35 = &v18[16 * a4];
      *(v35 + 4) = v19;
      *(v35 + 5) = v17;
      v36 = *v96;
      if (!*v96)
      {
        goto LABEL_133;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v4 - 1;
          if (v4 >= 4)
          {
            break;
          }

          if (v4 == 3)
          {
            v37 = *(v18 + 4);
            v38 = *(v18 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_52:
            if (v40)
            {
              goto LABEL_112;
            }

            v53 = &v18[16 * v4];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_115;
            }

            v59 = &v18[16 * a4 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_119;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                a4 = v4 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v63 = &v18[16 * v4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_66:
          if (v58)
          {
            goto LABEL_114;
          }

          v66 = &v18[16 * a4];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_117;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_73:
          v74 = a4 - 1;
          if (a4 - 1 >= v4)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*a3)
          {
            goto LABEL_130;
          }

          v75 = v18;
          v4 = *&v18[16 * v74 + 32];
          v76 = *&v18[16 * a4 + 40];
          sub_100611538(*a3 + *(v105 + 72) * v4, *a3 + *(v105 + 72) * *&v18[16 * a4 + 32], *a3 + *(v105 + 72) * v76, v36);
          if (v6)
          {
            goto LABEL_106;
          }

          if (v76 < v4)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_100204C44(v75);
          }

          if (v74 >= *(v75 + 2))
          {
            goto LABEL_109;
          }

          v77 = &v75[16 * v74];
          *(v77 + 4) = v4;
          *(v77 + 5) = v76;
          v112 = v75;
          sub_100204BB8(a4);
          v18 = v112;
          v4 = *(v112 + 2);
          if (v4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v18[16 * v4 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_110;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_111;
        }

        v48 = &v18[16 * v4];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_113;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_116;
        }

        if (v52 >= v44)
        {
          v70 = &v18[16 * a4 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_120;
          }

          if (v39 < v73)
          {
            a4 = v4 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v16 = a3[1];
      if (v17 >= v16)
      {
        goto LABEL_95;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_95:
  a4 = *v96;
  if (!*v96)
  {
    goto LABEL_134;
  }

  v4 = v18;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v87 = v4;
  }

  else
  {
LABEL_127:
    v87 = sub_100204C44(v4);
  }

  v112 = v87;
  v4 = *(v87 + 2);
  if (v4 >= 2)
  {
    while (*a3)
    {
      v88 = *&v87[16 * v4];
      v89 = v87;
      v90 = *&v87[16 * v4 + 24];
      sub_100611538(*a3 + *(v105 + 72) * v88, *a3 + *(v105 + 72) * *&v87[16 * v4 + 16], *a3 + *(v105 + 72) * v90, a4);
      if (v6)
      {
        goto LABEL_106;
      }

      if (v90 < v88)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100204C44(v89);
      }

      if (v4 - 2 >= *(v89 + 2))
      {
        goto LABEL_122;
      }

      v91 = &v89[16 * v4];
      *v91 = v88;
      *(v91 + 1) = v90;
      v112 = v89;
      sub_100204BB8(v4 - 1);
      v87 = v112;
      v4 = *(v112 + 2);
      if (v4 <= 1)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_131;
  }

LABEL_106:
}

void sub_100611538(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = sub_1000F24EC(&qword_100AD64E8);
  __chkstk_darwin(v40);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_59;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v14 = (a2 - a1) / v12;
  v45 = a1;
  v44 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v16;
    if (v16 >= 1)
    {
      v22 = -v12;
      v23 = a4 + v16;
      v36 = v22;
      v37 = a1;
      do
      {
        v34 = v21;
        v24 = a2 + v22;
        v38 = a2;
        v39 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v45 = a2;
            v21 = v34;
            goto LABEL_56;
          }

          v25 = a3;
          v35 = v21;
          v26 = a4;
          v27 = a3 + v22;
          v28 = v23 + v22;
          v29 = v41;
          v30 = v23;
          sub_1000082B4(v23 + v22, v41, &qword_100AD64E8);
          v31 = v24;
          v32 = v42;
          sub_1000082B4(v31, v42, &qword_100AD64E8);
          v33 = Date.compare(_:)();
          sub_100004F84(v32, &qword_100AD64E8);
          sub_100004F84(v29, &qword_100AD64E8);
          if (v33 == -1)
          {
            break;
          }

          v21 = v28;
          a3 = v27;
          a4 = v26;
          if (v25 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v21 = v28;
            v24 = v39;
            a1 = v37;
          }

          else
          {
            v24 = v39;
            a1 = v37;
            if (v25 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
              v21 = v28;
            }
          }

          v23 = v21;
          v22 = v36;
          a2 = v38;
          if (v28 <= a4)
          {
            goto LABEL_54;
          }
        }

        v23 = v30;
        a3 = v27;
        a4 = v26;
        if (v25 < v38 || a3 >= v38)
        {
          a2 = v39;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v36;
          a1 = v37;
        }

        else
        {
          a2 = v39;
          v22 = v36;
          a1 = v37;
          if (v25 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v21 = v35;
      }

      while (v23 > a4);
    }

LABEL_54:
    v45 = a2;
LABEL_56:
    v43 = v21;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a3;
    v39 = a4 + v15;
    v43 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = v41;
        sub_1000082B4(a2, v41, &qword_100AD64E8);
        v19 = v42;
        sub_1000082B4(a4, v42, &qword_100AD64E8);
        v20 = Date.compare(_:)();
        sub_100004F84(v19, &qword_100AD64E8);
        sub_100004F84(v18, &qword_100AD64E8);
        if (v20 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v45 = a1;
      }

      while (a4 < v39 && a2 < v38);
    }
  }

  sub_100204CCC(&v45, &v44, &v43);
}

void sub_100611A40(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for JournalMO();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for JournalMO();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100611C40@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = sub_1000F24EC(&qword_100AE4290);
    return sub_1000082B4(v6 + *(*(v7 - 8) + 72) * v4, a4, &qword_100AE4290);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100611D14(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000065A8(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000065A8(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_100611F2C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_100611FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v28 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  __chkstk_darwin(v7);
  v35 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE4BD8);
  __chkstk_darwin(v10);
  v12 = (&v28 - v11);
  v42 = a2;
  v43 = a3;
  v34 = sub_1000F24EC(&qword_100AE4BE0);
  v38 = v3;
  v39 = sub_100622844;
  v40 = &v41;
  v13 = sub_1000F24EC(&qword_100AE4BC0);
  sub_10000B58C(&qword_100AE4BF0, &qword_100AE4BC0);
  sub_1000F24EC(&qword_100AEB670);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if ((v45 & 1) == 0)
  {
LABEL_11:
    a3 = v44[2];
    v44[0] = *v4;
    sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
    v24 = v28;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v25 = &qword_100AE4BE0;
    v26 = v4;
    v27 = v24;
LABEL_13:
    sub_100021CEC(v26, v27, v25);
    return a3;
  }

  v14 = v28;
  v33 = v13;
  sub_1000082B4(v3, v12, &qword_100AE4BE0);
  v15 = *(v10 + 36);
  v16 = *v3;
  result = sub_100004F84(v3, &qword_100AE4BE0);
  *(v12 + v15) = v16;
  if (!a2)
  {
    sub_100021CEC(v12, v14, &qword_100AE4BD8);
    return 0;
  }

  if (!a3)
  {
LABEL_12:
    v25 = &qword_100AE4BD8;
    v26 = v12;
    v27 = v28;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = (v37 + 16);
    v30 = (v37 + 32);
    v18 = v12[1];
    v19 = 1;
    v32 = a3;
    v29 = v18;
    v20 = v35;
    while (*(v12 + v15) != v18)
    {
      v44[0] = *v12;
      v44[1] = v18;
      sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      v21 = dispatch thunk of Collection.subscript.read();
      v4 = a2;
      v22 = v36;
      (*v31)(v20);
      v21(v44, 0);
      a3 = v32;
      dispatch thunk of Collection.formIndex(after:)();
      (*v30)(a2, v20, v22);
      if (a3 == v19)
      {
        goto LABEL_12;
      }

      a2 = (a2 + *(v37 + 72));
      v23 = __OFADD__(v19++, 1);
      v18 = v29;
      if (v23)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_100021CEC(v12, v28, &qword_100AE4BD8);
    return v19 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006124A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = a2;
    }

    v6 = type metadata accessor for UUID();
    swift_arrayInitWithCopy();
    v4 += *(*(v6 - 8) + 72) * v5;
  }

  else if (a1)
  {
    type metadata accessor for UUID();
  }

  return v4;
}

uint64_t sub_100612570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetType();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SuggestionMergeConflict(0);
  __chkstk_darwin(v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_1000F24EC(&qword_100AEB640);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v17 = (&v26 + *(v16 + 56) - v14);
  sub_100614C94(a1, &v26 - v14, type metadata accessor for SuggestionMergeConflict);
  sub_100614C94(a2, v17, type metadata accessor for SuggestionMergeConflict);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100614C94(v15, v9, type metadata accessor for SuggestionMergeConflict);
      v19 = v9[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_12;
      }

      if (*v9 == *v17)
      {
        v20 = v19 == v17[1];
        sub_100614EE4(v15, type metadata accessor for SuggestionMergeConflict);
        return v20;
      }
    }

    else
    {
      sub_100614C94(v15, v12, type metadata accessor for SuggestionMergeConflict);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v27 + 8))(v12, v4);
LABEL_12:
        sub_100004F84(v15, &qword_100AEB640);
        return 0;
      }

      v22 = v27;
      (*(v27 + 32))(v6, v17, v4);
      sub_10008D1A8(&qword_100AD5B40, &type metadata accessor for AssetType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v30 == v28 && v31 == v29)
      {
        v23 = *(v22 + 8);
        v23(v6, v4);

        v23(v12, v4);
        goto LABEL_18;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v25 = *(v22 + 8);
      v25(v6, v4);

      v25(v12, v4);
      if (v24)
      {
        goto LABEL_18;
      }
    }

    sub_100614EE4(v15, type metadata accessor for SuggestionMergeConflict);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_12;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_12;
  }

LABEL_18:
  sub_100614EE4(v15, type metadata accessor for SuggestionMergeConflict);
  return 1;
}

uint64_t sub_1006129CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  v6 = type metadata accessor for EntryDateSource();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[39] = v7;
  v4[40] = *(v7 - 8);
  v4[41] = swift_task_alloc();
  v8 = type metadata accessor for SettingsKey();
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[45] = v9;
  v4[46] = *(v9 - 8);
  v4[47] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[48] = v10;
  v11 = *(v10 - 8);
  v4[49] = v11;
  v4[50] = *(v11 + 64);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v12 = *(sub_1000F24EC(&unk_100AD4790) - 8);
  v4[53] = v12;
  v4[54] = *(v12 + 64);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v4[63] = v13;
  v4[64] = v15;

  return _swift_task_switch(sub_100612D38, v13, v15);
}

uint64_t sub_100612D38()
{
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 384);
    v4 = *(v0 + 392);
    v5 = *(v0 + 280);
    v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId;
    swift_beginAccess();
    v113 = v6;
    v114 = v5;
    sub_1000082B4(v5 + v6, v2, &qword_100AD1420);
    LODWORD(v4) = (*(v4 + 48))(v2, 1, v3);
    v7 = v1;
    sub_100004F84(v2, &qword_100AD1420);
    if (v4 == 1 || (v8 = *(v0 + 480), v9 = *(v0 + 312), v10 = *(v0 + 320), v11 = *(v0 + 280), v12 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate, swift_beginAccess(), sub_1000082B4(v11 + v12, v8, &unk_100AD4790), v13 = *(v10 + 48), LODWORD(v9) = v13(v8, 1, v9), sub_100004F84(v8, &unk_100AD4790), v9 == 1) || (v14 = *(v0 + 472), v15 = *(v0 + 312), v16 = *(v0 + 280), v17 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate, swift_beginAccess(), sub_1000082B4(v16 + v17, v14, &unk_100AD4790), LODWORD(v15) = v13(v14, 1, v15), sub_100004F84(v14, &unk_100AD4790), v15 == 1))
    {
      v18 = *(v0 + 488);
      v19 = *(v0 + 464);
      v101 = *(v0 + 456);
      v105 = *(v0 + 448);
      v106 = *(v0 + 440);
      v108 = *(v0 + 424);
      v109 = *(v0 + 432);
      v20 = *(v0 + 416);
      v107 = *(v0 + 400);
      v103 = *(v0 + 392);
      v104 = *(v0 + 408);
      v115 = *(v0 + 384);
      v110 = *(v0 + 368);
      v111 = *(v0 + 360);
      v112 = *(v0 + 376);
      v21 = *(v0 + 312);
      v22 = *(v0 + 320);
      v23 = *(v0 + 280);
      v24 = [v7 suggestionIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v7 startDate];
      v102 = v19;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v22 + 56);
      v26(v19, 0, 1, v21);
      v27 = [v7 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26(v101, 0, 1, v21);
      v28 = *(v103 + 16);
      v28(v18, v20, v115);
      (*(v103 + 56))(v18, 0, 1, v115);
      swift_beginAccess();
      sub_100014318(v18, v114 + v113, &qword_100AD1420);
      swift_endAccess();
      v29 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
      swift_beginAccess();
      sub_100221D8C(v102, v23 + v29);
      swift_endAccess();
      v30 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate;
      swift_beginAccess();
      sub_100221D8C(v101, v23 + v30);
      swift_endAccess();
      v31 = swift_allocObject();
      swift_weakInit();
      v28(v104, v20, v115);
      sub_1000082B4(v102, v105, &unk_100AD4790);
      sub_1000082B4(v101, v106, &unk_100AD4790);
      v32 = (*(v103 + 80) + 24) & ~*(v103 + 80);
      v33 = *(v108 + 80);
      v34 = (v107 + v33 + v32) & ~v33;
      v35 = (v109 + v33 + v34) & ~v33;
      v36 = swift_allocObject();
      *(v0 + 520) = v36;
      *(v36 + 16) = v31;
      (*(v103 + 32))(v36 + v32, v104, v115);
      sub_100021CEC(v105, v36 + v34, &unk_100AD4790);
      sub_100021CEC(v106, v36 + v35, &unk_100AD4790);
      (*(v110 + 104))(v112, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v111);
      v37 = swift_task_alloc();
      *(v0 + 528) = v37;
      *v37 = v0;
      *(v37 + 8) = sub_100613A8C;
      v38 = *(v0 + 376);
      v39 = sub_1003A9920;
      v40 = &type metadata for () + 8;
      v41 = v36;

      return NSManagedObjectContext.perform<A>(schedule:_:)(v37, v38, v39, v41, v40);
    }

    v45 = *(v0 + 344);
    v44 = *(v0 + 352);
    v46 = *(v0 + 336);
    sub_1000065A8(0, &qword_100AE1A30);
    v47 = static NSUserDefaults.shared.getter();
    (*(v45 + 104))(v44, enum case for SettingsKey.alwaysUseMomentDate(_:), v46);
    SettingsKey.rawValue.getter();
    (*(v45 + 8))(v44, v46);
    v48 = String._bridgeToObjectiveC()();

    LODWORD(v44) = [v47 BOOLForKey:v48];

    if (!v44 || (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16) & 1) != 0)
    {
      if (sub_100554A40() == 2)
      {
        goto LABEL_21;
      }

      v49 = sub_1000819F8();
      if (v49)
      {
        v50 = v49;
        v51 = [v49 string];

        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        if ((v54 & 0x2000000000000000) == 0)
        {
          v55 = v52 & 0xFFFFFFFFFFFFLL;
          goto LABEL_20;
        }
      }

      else
      {
        v54 = 0xE000000000000000;
      }

      v55 = HIBYTE(v54) & 0xF;
LABEL_20:
      if (!v55)
      {
        v69 = [*(v0 + 272) title];
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;

        v73 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v73 = v70 & 0xFFFFFFFFFFFFLL;
        }

        if (v73 && [*(v0 + 272) type] != 11)
        {
          v74 = *(v0 + 280);
          v75 = [*(v0 + 272) title];
          v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v77;

          sub_10077F5F8(v76, v78);

          *(v74 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
          v79 = *(v74 + 24);
          v80 = swift_allocObject();
          swift_weakInit();
          *(v0 + 96) = sub_1003A9A34;
          *(v0 + 104) = v80;
          *(v0 + 64) = _NSConcreteStackBlock;
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_100006C7C;
          *(v0 + 88) = &unk_100A75D90;
          v81 = _Block_copy((v0 + 64));

          [v79 performBlock:v81];
          _Block_release(v81);
        }
      }

LABEL_21:
      v56 = *(*(v0 + 280) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
      if (v56)
      {
        v57 = [v56 string];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        if ((v60 & 0x2000000000000000) == 0)
        {
          v61 = v58 & 0xFFFFFFFFFFFFLL;
          goto LABEL_26;
        }
      }

      else
      {
        v60 = 0xE000000000000000;
      }

      v61 = HIBYTE(v60) & 0xF;
LABEL_26:
      if (!v61)
      {
        v62 = [*(v0 + 272) writingPrompts];
        v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = *(v63 + 16);
        if (!v64)
        {
          goto LABEL_34;
        }

        v37 = sub_1001C2FA4(v64);
        if ((v37 & 0x8000000000000000) != 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v37 >= *(v63 + 16))
        {
LABEL_52:
          __break(1u);
          return NSManagedObjectContext.perform<A>(schedule:_:)(v37, v38, v39, v41, v40);
        }

        v65 = v63 + 16 * v37;
        v66 = *(v65 + 32);
        v67 = *(v65 + 40);

        v68 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v68 = v66 & 0xFFFFFFFFFFFFLL;
        }

        if (v68 && [*(v0 + 272) type] != 11)
        {
          v91 = objc_allocWithZone(NSAttributedString);
          v92 = String._bridgeToObjectiveC()();

          v93 = [v91 initWithString:v92];

          sub_100786300(v93);
        }

        else
        {
LABEL_34:
        }
      }

      if ([*(v0 + 272) type] != 10 || (v94 = *(v0 + 280), *(v94 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1, v95 = *(v94 + 24), v96 = swift_allocObject(), *(v96 + 16) = sub_1003A9A2C, *(v96 + 24) = v94, *(v0 + 48) = sub_100028ECC, *(v0 + 56) = v96, *(v0 + 16) = _NSConcreteStackBlock, *(v0 + 24) = 1107296256, *(v0 + 32) = sub_10001A7D4, *(v0 + 40) = &unk_100A75D68, v97 = _Block_copy((v0 + 16)), , , , objc_msgSend(v95, "performBlockAndWait:", v97), _Block_release(v97), LOBYTE(v95) = swift_isEscapingClosureAtFileLocation(), , v37 = , (v95 & 1) == 0))
      {
        v98 = swift_task_alloc();
        *(v0 + 544) = v98;
        *v98 = v0;
        v98[1] = sub_100614A1C;
        v100 = *(v0 + 256);
        v99 = *(v0 + 264);

        return (sub_10062833C)(v100, v99);
      }

      __break(1u);
      goto LABEL_51;
    }

    v83 = *(v0 + 296);
    v82 = *(v0 + 304);
    v84 = *(v0 + 288);
    v85 = [*(v0 + 272) startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v83 + 104))(v82, enum case for EntryDateSource.moment(_:), v84);
    v86 = swift_task_alloc();
    *(v0 + 536) = v86;
    *v86 = v0;
    v86[1] = sub_100614310;
    v87 = *(v0 + 328);
    v88 = *(v0 + 304);
    v90 = *(v0 + 256);
    v89 = *(v0 + 264);

    return sub_10078281C(v90, v89, v87, v88);
  }

  else
  {

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_100613A8C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[46] + 8))(v2[47], v2[45]);

    v4 = v2[63];
    v5 = v2[64];

    return _swift_task_switch(sub_100613BE0, v4, v5);
  }
}

unint64_t sub_100613BE0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 416);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  sub_100004F84(*(v0 + 456), &unk_100AD4790);
  sub_100004F84(v1, &unk_100AD4790);
  (*(v4 + 8))(v2, v3);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 336);
  sub_1000065A8(0, &qword_100AE1A30);
  v8 = static NSUserDefaults.shared.getter();
  (*(v6 + 104))(v5, enum case for SettingsKey.alwaysUseMomentDate(_:), v7);
  SettingsKey.rawValue.getter();
  (*(v6 + 8))(v5, v7);
  v9 = String._bridgeToObjectiveC()();

  LODWORD(v5) = [v8 BOOLForKey:v9];

  if (!v5 || (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16) & 1) != 0)
  {
    if (sub_100554A40() == 2)
    {
      goto LABEL_16;
    }

    v10 = sub_1000819F8();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 string];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((v15 & 0x2000000000000000) == 0)
      {
        if ((v13 & 0xFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_16;
        }

LABEL_11:
        v16 = [*(v0 + 272) title];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v20 && [*(v0 + 272) type] != 11)
        {
          v21 = *(v0 + 280);
          v22 = [*(v0 + 272) title];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          sub_10077F5F8(v23, v25);

          *(v21 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
          v26 = *(v21 + 24);
          v27 = swift_allocObject();
          swift_weakInit();
          *(v0 + 96) = sub_1003A9A34;
          *(v0 + 104) = v27;
          *(v0 + 64) = _NSConcreteStackBlock;
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_100006C7C;
          *(v0 + 88) = &unk_100A75D90;
          v28 = _Block_copy((v0 + 64));

          [v26 performBlock:v28];
          _Block_release(v28);
        }

LABEL_16:
        v29 = *(*(v0 + 280) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
        if (v29)
        {
          v30 = [v29 string];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if ((v33 & 0x2000000000000000) == 0)
          {
            if ((v31 & 0xFFFFFFFFFFFFLL) != 0)
            {
              goto LABEL_35;
            }

LABEL_22:
            v34 = [*(v0 + 272) writingPrompts];
            v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v36 = *(v35 + 16);
            if (!v36)
            {
              goto LABEL_29;
            }

            result = sub_1001C2FA4(v36);
            if ((result & 0x8000000000000000) != 0)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            if (result >= *(v35 + 16))
            {
LABEL_42:
              __break(1u);
              return result;
            }

            v38 = v35 + 16 * result;
            v39 = *(v38 + 32);
            v40 = *(v38 + 40);

            v41 = HIBYTE(v40) & 0xF;
            if ((v40 & 0x2000000000000000) == 0)
            {
              v41 = v39 & 0xFFFFFFFFFFFFLL;
            }

            if (v41 && [*(v0 + 272) type] != 11)
            {
              v51 = objc_allocWithZone(NSAttributedString);
              v52 = String._bridgeToObjectiveC()();

              v53 = [v51 initWithString:v52];

              sub_100786300(v53);
            }

            else
            {
LABEL_29:
            }

LABEL_35:
            if ([*(v0 + 272) type] != 10 || (v54 = *(v0 + 280), *(v54 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1, v55 = *(v54 + 24), v56 = swift_allocObject(), *(v56 + 16) = sub_1003A9A2C, *(v56 + 24) = v54, *(v0 + 48) = sub_100028ECC, *(v0 + 56) = v56, *(v0 + 16) = _NSConcreteStackBlock, *(v0 + 24) = 1107296256, *(v0 + 32) = sub_10001A7D4, *(v0 + 40) = &unk_100A75D68, v57 = _Block_copy((v0 + 16)), , , , objc_msgSend(v55, "performBlockAndWait:", v57), _Block_release(v57), LOBYTE(v55) = swift_isEscapingClosureAtFileLocation(), , result = , (v55 & 1) == 0))
            {
              v58 = swift_task_alloc();
              *(v0 + 544) = v58;
              *v58 = v0;
              v58[1] = sub_100614A1C;
              v60 = *(v0 + 256);
              v59 = *(v0 + 264);

              return (sub_10062833C)(v60, v59);
            }

            __break(1u);
            goto LABEL_41;
          }
        }

        else
        {
          v33 = 0xE000000000000000;
        }

        if ((v33 & 0xF00000000000000) != 0)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    if ((v15 & 0xF00000000000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v43 = *(v0 + 296);
  v42 = *(v0 + 304);
  v44 = *(v0 + 288);
  v45 = [*(v0 + 272) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v43 + 104))(v42, enum case for EntryDateSource.moment(_:), v44);
  v46 = swift_task_alloc();
  *(v0 + 536) = v46;
  *v46 = v0;
  v46[1] = sub_100614310;
  v47 = *(v0 + 328);
  v48 = *(v0 + 304);
  v50 = *(v0 + 256);
  v49 = *(v0 + 264);

  return sub_10078281C(v50, v49, v47, v48);
}

uint64_t sub_100614310()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 320);
  v4 = *(*v0 + 312);
  v5 = *(*v0 + 304);
  v6 = *(*v0 + 296);
  v7 = *(*v0 + 288);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 512);
  v9 = *(v1 + 504);

  return _swift_task_switch(sub_1006144F0, v9, v8);
}

unint64_t sub_1006144F0()
{
  if (sub_100554A40() == 2)
  {
    goto LABEL_13;
  }

  v1 = sub_1000819F8();
  if (!v1)
  {
    v6 = 0xE000000000000000;
LABEL_7:
    if ((v6 & 0xF00000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 string];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v4 & 0xFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v7 = [*(v0 + 272) title];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 && [*(v0 + 272) type] != 11)
  {
    v12 = *(v0 + 280);
    v13 = [*(v0 + 272) title];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10077F5F8(v14, v16);

    *(v12 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
    v17 = *(v12 + 24);
    v18 = swift_allocObject();
    swift_weakInit();
    *(v0 + 96) = sub_1003A9A34;
    *(v0 + 104) = v18;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_100006C7C;
    *(v0 + 88) = &unk_100A75D90;
    v19 = _Block_copy((v0 + 64));

    [v17 performBlock:v19];
    _Block_release(v19);
  }

LABEL_13:
  v20 = *(*(v0 + 280) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
  if (v20)
  {
    v21 = [v20 string];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if ((v24 & 0x2000000000000000) == 0)
    {
      if ((v22 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  if ((v24 & 0xF00000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  v25 = [*(v0 + 272) writingPrompts];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = *(v26 + 16);
  if (!v27)
  {
    goto LABEL_26;
  }

  result = sub_1001C2FA4(v27);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (result >= *(v26 + 16))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v29 = v26 + 16 * result;
  v30 = *(v29 + 32);
  v31 = *(v29 + 40);

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v32 && [*(v0 + 272) type] != 11)
  {
    v33 = objc_allocWithZone(NSAttributedString);
    v34 = String._bridgeToObjectiveC()();

    v35 = [v33 initWithString:v34];

    sub_100786300(v35);
  }

  else
  {
LABEL_26:
  }

LABEL_29:
  if ([*(v0 + 272) type] == 10)
  {
    v36 = *(v0 + 280);
    *(v36 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1;
    v37 = *(v36 + 24);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_1003A9A2C;
    *(v38 + 24) = v36;
    *(v0 + 48) = sub_100028ECC;
    *(v0 + 56) = v38;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A7D4;
    *(v0 + 40) = &unk_100A75D68;
    v39 = _Block_copy((v0 + 16));

    [v37 performBlockAndWait:v39];
    _Block_release(v39);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
      goto LABEL_35;
    }
  }

  v40 = swift_task_alloc();
  *(v0 + 544) = v40;
  *v40 = v0;
  v40[1] = sub_100614A1C;
  v42 = *(v0 + 256);
  v41 = *(v0 + 264);

  return (sub_10062833C)(v42, v41);
}

uint64_t sub_100614A1C()
{
  v1 = *v0;

  v2 = *(v1 + 512);
  v3 = *(v1 + 504);

  return _swift_task_switch(sub_100614B3C, v3, v2);
}

uint64_t sub_100614B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100614C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100614CFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100032ECC;

  return sub_10060F868(a1, v10, v11, v12, v1 + v6, v13, v14, v1 + v9);
}

uint64_t sub_100614E8C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100614EA4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100614EA4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100614EB0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100614EC8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100614EC8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100614EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100614F44(char *a1)
{
  v3 = *(type metadata accessor for PendingPhotoAsset(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000F24EC(&qword_100AE0D78) - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  sub_10060B8B8(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), v1 + v9, *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100615084(void *a1)
{
  result = [a1 reflectionType];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_100532560();
    v4 = v3;
    v5 = [a1 reflectionPrompts];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v6 + 16))
    {

      v7 = objc_allocWithZone(NSAttributedString);
      v8 = String._bridgeToObjectiveC()();

      [v7 initWithString:v8];
    }

    else
    {
    }

    return v4;
  }

  return result;
}

uint64_t sub_10061518C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void (*a6)(unint64_t, unint64_t))
{
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v13._countAndFlagsBits = a3;
  v13._object = a4;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 2108704;
  v14._object = 0xE300000000000000;
  String.append(_:)(v14);
  if ([a5 respondsToSelector:"debugDescription"])
  {
    v15 = [a5 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v17;

    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = v12;
  String.append(_:)(*&v18);

  sub_100606AE0(a1, a2, 0xD000000000000012, 0x80000001008FEE10, a6);
}

double *sub_1006152DC(uint64_t a1, void *a2, void (*a3)(unint64_t, unint64_t), uint64_t a4, void (*a5)(unint64_t, unint64_t, __n128), uint64_t a6)
{
  v173 = a4;
  v172 = a3;
  v162 = a2;
  v167 = type metadata accessor for VisitDuration(0);
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v161 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v171 = &v147 - v11;
  v160 = sub_1000F24EC(&qword_100AD2680);
  __chkstk_darwin(v160);
  v159 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v158 = &v147 - v14;
  v157 = sub_1000F24EC(&qword_100AE0D70);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v15;
  __chkstk_darwin(v16);
  v176 = &v147 - v17;
  v18 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v18 - 8);
  v165 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v147 - v21;
  v23 = type metadata accessor for Date();
  v153 = *(v23 - 8);
  __chkstk_darwin(v23);
  v151 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v185 = &v147 - v26;
  __chkstk_darwin(v27);
  v29 = &v147 - v28;
  v152 = v30;
  __chkstk_darwin(v31);
  v169 = &v147 - v32;
  v186 = sub_1000F24EC(&qword_100AD64E8);
  v170 = *(v186 - 8);
  __chkstk_darwin(v186);
  v180 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v187 = &v147 - v35;
  __chkstk_darwin(v36);
  v168 = &v147 - v37;
  __chkstk_darwin(v38);
  v40 = &v147 - v39;
  v189 = type metadata accessor for VisitAssetMetadata();
  v42 = __chkstk_darwin(v189);
  v174 = &v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v44 = *(a1 + 16)) == 0)
  {
    a5(0xD000000000000014, 0x80000001008FEE30, v42);
    return _swiftEmptyArrayStorage;
  }

  v183 = v22;
  v190 = v29;
  v148 = a6;
  v149 = a5;
  v182 = *(v41 + 16);
  v45 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v178 = *(v41 + 72);
  v177 = (v153 + 48);
  v181 = (v153 + 32);
  v175 = (v41 + 32);
  v163 = "Visit durations = []";
  v46 = (v41 + 8);
  v184 = _swiftEmptyArrayStorage;
  v47 = v186;
  v48 = v189;
  v191 = v23;
  v179 = (v41 + 8);
  v49 = v174;
  v164 = (v41 + 16);
  do
  {
    v188 = v44;
    v182(v49, v45, v48, v42);
    v50 = v183;
    VisitAssetMetadata.visitStartTime.getter();
    if ((*v177)(v50, 1, v23) == 1)
    {
      sub_100004F84(v50, &unk_100AD4790);
      v172(0xD000000000000040, v163 | 0x8000000000000000);
      (*v46)(v49, v48);
    }

    else
    {
      v51 = *v181;
      v52 = v40;
      v53 = v169;
      (*v181)(v169, v50, v23);
      v54 = *(v47 + 48);
      v55 = v168;
      v56 = v53;
      v40 = v52;
      v51(v168, v56, v23);
      (*v175)(&v55[v54], v49, v48);
      sub_100021CEC(v55, v52, &qword_100AD64E8);
      v57 = v184;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1003E5D98(0, *(v57 + 2) + 1, 1, v57);
      }

      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      v23 = v191;
      v46 = v179;
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1003E5D98(v58 > 1, v59 + 1, 1, v57);
      }

      *(v57 + 2) = v59 + 1;
      v60 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v184 = v57;
      sub_100021CEC(v52, v57 + v60 + *(v170 + 72) * v59, &qword_100AD64E8);
      v47 = v186;
      v48 = v189;
      v49 = v174;
    }

    v45 += v178;
    v44 = v188 - 1;
  }

  while (v188 != 1);
  v193 = v184;

  sub_10060FBCC(&v193);

  v62 = v193;
  v63 = [objc_allocWithZone(NSDateFormatter) init];
  v64 = String._bridgeToObjectiveC()();
  v168 = v63;
  [v63 setDateFormat:v64];

  v65 = *(v62 + 2);
  if (!v65)
  {

    v140 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage;
LABEL_43:
    v193 = 0;
    v194 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v193 = 0xD000000000000014;
    v194 = 0x80000001008FEEF0;
    v192 = v140;
    sub_1000F24EC(&qword_100AD60A0);
    sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
    v141 = BidirectionalCollection<>.joined(separator:)();
    v143 = v142;

    v144._countAndFlagsBits = v141;
    v144._object = v143;
    String.append(_:)(v144);

    v145._countAndFlagsBits = 23818;
    v145._object = 0xE200000000000000;
    String.append(_:)(v145);
    v149(v193, v194);

    return v61;
  }

  v66 = (*(v170 + 80) + 32) & ~*(v170 + 80);
  v147 = v62;
  v67 = v62 + v66;
  v177 = *(v170 + 72);
  v150 = "MM/dd/yyyy@HH:mm:ss";
  v188 = (v153 + 8);
  v164 = (v153 + 56);
  v163 = v153 + 16;
  v170 = v65;
  v61 = _swiftEmptyArrayStorage;
  v68 = 1;
  v178 = _swiftEmptyArrayStorage;
  v69 = v181;
  v174 = -v65;
  while (1)
  {
    v184 = v61;
    v77 = v187;
    sub_1000082B4(v67, v187, &qword_100AD64E8);
    v78 = v180;
    sub_1000082B4(v77, v180, &qword_100AD64E8);
    v79 = v186;
    v80 = *(v186 + 48);
    v81 = *v69;
    v82 = v191;
    (*v69)(v190, v78, v191);
    v83 = *v179;
    (*v179)(v78 + v80, v189);
    v182 = v68;
    v183 = v67;
    if (v68 >= v170)
    {
      v86 = [v162 endDate];
      v85 = v185;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_1000082B4(v177 + v67, v78, &qword_100AD64E8);
      v84 = *(v79 + 48);
      v85 = v185;
      v81(v185, v78, v82);
      v83(v78 + v84, v189);
    }

    v87 = v190;
    v88 = static Date.< infix(_:_:)();
    v89 = v174;
    if ((v88 & 1) == 0)
    {
      if (static Date.== infix(_:_:)())
      {
        v119 = v165;
        v120 = v191;
        (*v164)(v165, 1, 1, v191);
        v121 = sub_100606198(v87, v119, v168);
        v123 = v122;
        sub_100004F84(v119, &unk_100AD4790);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_10009BCC8(0, *(v178 + 2) + 1, 1, v178);
        }

        v125 = *(v178 + 2);
        v124 = *(v178 + 3);
        if (v125 >= v124 >> 1)
        {
          v178 = sub_10009BCC8((v124 > 1), v125 + 1, 1, v178);
        }

        v126 = v178;
        *(v178 + 2) = v125 + 1;
        v127 = &v126[16 * v125];
        *(v127 + 4) = v121;
        *(v127 + 5) = v123;
        v128 = v180;
        sub_1000082B4(v187, v180, &qword_100AD64E8);
        v129 = *(v186 + 48);
        v130 = v153;
        v131 = v151;
        (*(v153 + 16))(v151, v87, v120);
        v132 = (*(v130 + 80) + 16) & ~*(v130 + 80);
        v133 = swift_allocObject();
        v81((v133 + v132), v131, v120);
        v134 = (v128 + v129);
        v135 = v161;
        (*v175)(v161, v134, v189);
        v136 = (v135 + *(v167 + 20));
        *v136 = sub_100622758;
        v136[1] = v133;
        v137 = *(v130 + 8);
        (v137)(v128, v120);
        v61 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_1003E6394(0, *(v61 + 2) + 1, 1, v61);
        }

        v139 = *(v61 + 2);
        v138 = *(v61 + 3);
        if (v139 >= v138 >> 1)
        {
          v61 = sub_1003E6394(v138 > 1, v139 + 1, 1, v61);
        }

        v137();
        (v137)(v87, v120);
        sub_100004F84(v187, &qword_100AD64E8);
        *(v61 + 2) = v139 + 1;
        sub_100617828(v161, v61 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v139, type metadata accessor for VisitDuration);
        v69 = v181;
      }

      else
      {
        v193 = 0;
        v194 = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        v70._countAndFlagsBits = 0xD000000000000029;
        v70._object = (v150 | 0x8000000000000000);
        String.append(_:)(v70);
        sub_10008D1A8(&qword_100AE1D80, &type metadata accessor for Date);
        v71 = v191;
        v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v72);

        v73._countAndFlagsBits = 0x20646E65203E2029;
        v73._object = 0xEE00282065746164;
        String.append(_:)(v73);
        v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v74);

        v75._countAndFlagsBits = 11817;
        v75._object = 0xE200000000000000;
        String.append(_:)(v75);
        v172(v193, v194);

        v76 = *v188;
        (*v188)(v85, v71);
        v76(v87, v71);
        sub_100004F84(v187, &qword_100AD64E8);
        v61 = v184;
      }

      goto LABEL_16;
    }

    sub_10008D1A8(&qword_100AD2698, &type metadata accessor for Date);
    v90 = v191;
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
      break;
    }

    v91 = *v163;
    v169 = v91;
    v92 = v158;
    (v91)(v158, v190, v90);
    v93 = v160;
    (v91)(v92 + *(v160 + 48), v85, v90);
    v94 = v159;
    sub_1000082B4(v92, v159, &qword_100AD2680);
    v95 = *(v93 + 48);
    v96 = v176;
    v81(v176, v94, v90);
    v97 = *v188;
    (*v188)(v94 + v95, v191);
    sub_100021CEC(v92, v94, &qword_100AD2680);
    v81((v96 + *(v157 + 36)), v94 + *(v93 + 48), v191);
    v98 = v191;
    v97(v94, v191);
    v99 = v165;
    (v169)(v165, v185, v98);
    (*v164)(v99, 0, 1, v98);
    v100 = sub_100606198(v190, v99, v168);
    v102 = v101;
    sub_100004F84(v99, &unk_100AD4790);
    v103 = v178;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_10009BCC8(0, *(v103 + 2) + 1, 1, v103);
    }

    v105 = *(v103 + 2);
    v104 = *(v103 + 3);
    v106 = v97;
    if (v105 >= v104 >> 1)
    {
      v103 = sub_10009BCC8((v104 > 1), v105 + 1, 1, v103);
    }

    *(v103 + 2) = v105 + 1;
    v178 = v103;
    v107 = &v103[16 * v105];
    *(v107 + 4) = v100;
    *(v107 + 5) = v102;
    v108 = v180;
    sub_1000082B4(v187, v180, &qword_100AD64E8);
    v109 = *(v186 + 48);
    v110 = v154;
    sub_1000082B4(v176, v154, &qword_100AE0D70);
    v111 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v112 = swift_allocObject();
    sub_100021CEC(v110, v112 + v111, &qword_100AE0D70);
    v113 = (v108 + v109);
    v114 = v171;
    (*v175)(v171, v113, v189);
    v115 = (v114 + *(v167 + 20));
    *v115 = sub_1006227C8;
    v115[1] = v112;
    v106(v108, v98);
    v61 = v184;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_1003E6394(0, *(v61 + 2) + 1, 1, v61);
    }

    v116 = v190;
    v118 = *(v61 + 2);
    v117 = *(v61 + 3);
    if (v118 >= v117 >> 1)
    {
      v61 = sub_1003E6394(v117 > 1, v118 + 1, 1, v61);
    }

    sub_100004F84(v176, &qword_100AE0D70);
    v106(v185, v98);
    v106(v116, v98);
    sub_100004F84(v187, &qword_100AD64E8);
    *(v61 + 2) = v118 + 1;
    sub_100617828(v171, v61 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v118, type metadata accessor for VisitDuration);
    v69 = v181;
    v89 = v174;
LABEL_16:
    v68 = v182 + 1;
    v67 = v177 + v183;
    if ((v182 + v89 + 1) == 1)
    {

      v140 = v178;
      goto LABEL_43;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1006167D4(uint64_t a1, unint64_t a2)
{
  v125 = a1;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v102 - v4;
  v119 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v119);
  v118 = (&v102 - v6);
  v117 = sub_1000F24EC(&qword_100AD5B20);
  v7 = *(v117 - 8);
  __chkstk_darwin(v117);
  v104 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v102 - v10;
  __chkstk_darwin(v12);
  v14 = &v102 - v13;
  v15 = type metadata accessor for PhotoLibraryAssetMetadata();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v103 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  __chkstk_darwin(v21);
  v112 = &v102 - v22;
  v130 = a2;
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 1)
  {
    v24 = 0;
    v115 = (v7 + 56);
    v127 = (v16 + 48);
    v128 = v130 & 0xC000000000000001;
    v122 = (v16 + 8);
    v123 = (v16 + 32);
    v105 = (v16 + 56);
    v114 = xmmword_100941EE0;
    v106 = v5;
    v116 = v11;
    v124 = v14;
    v126 = v15;
    v113 = v20;
    v129 = result;
    while (1)
    {
      if (v128)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v130 + 8 * v24 + 32);
      }

      v27 = v26;
      type metadata accessor for PhotoAsset();
      v28 = swift_dynamicCastClass();
      v131 = v27;
      if (v28)
      {
        v29 = v28;
        v30 = OBJC_IVAR____TtC7Journal10PhotoAsset_metadata;
        if (*(v28 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
        {
          goto LABEL_18;
        }

        v31 = *(v28 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v31)
        {
          v32 = [v31 assetMetaData];
          if (v32)
          {
            v33 = v32;
            v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v37 = v118;
            *v118 = v34;
            v37[1] = v36;
            v15 = v126;
            v14 = v124;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0);
            v38 = swift_allocObject();
            (*v115)(v38 + *(*v38 + 104), 1, 1, v117);
            *(v38 + *(*v38 + 112)) = v114;
            v39 = v37;
            v11 = v116;
            sub_100021CEC(v39, v38 + *(*v38 + 120), &unk_100AEE0A0);
            *(v29 + v30) = v38;
          }
        }

        if (*(v29 + v30))
        {
LABEL_18:

          sub_100046ADC(v14);

          if ((*v127)(v14, 1, v15) != 1)
          {
            v40 = v112;
            (*v123)(v112, v14, v15);
            PhotoLibraryAssetMetadata.date.getter();
            v41 = sub_100606500(v5, v125);
            v120 = v42;
            v121 = v41;
            v44 = v43;
            v46 = v45;
            sub_100004F84(v5, &unk_100AD4790);
            if (v46 == 1)
            {
              v15 = v126;
              (*v122)(v40, v126);
            }

            else
            {
              v111 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
              v110 = v73;
              PhotoLibraryAssetMetadata.date.getter();
              v108 = PhotoLibraryAssetMetadata.size.getter();
              v107 = v74;
              PhotoLibraryAssetMetadata.squareCropRect.getter();
              v109 = v44;
              PhotoLibraryAssetMetadata.landscapeCropRect.getter();
              PhotoLibraryAssetMetadata.portraitCropRect.getter();
              v11 = v116;
              v5 = v106;
              v75 = v113;
              v76 = v118;
              PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
              v77 = v126;
              (*v122)(v40, v126);
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0);
              v78 = swift_allocObject();
              (*v115)(v78 + *(*v78 + 104), 1, 1, v117);
              *(v78 + *(*v78 + 112)) = v114;
              v79 = v76;
              v14 = v124;
              sub_100021CEC(v79, v78 + *(*v78 + 120), &unk_100AEE0A0);
              *(v29 + v30) = v78;

              v15 = v77;
              v20 = v75;
            }

            goto LABEL_8;
          }
        }

        else
        {

          (*v105)(v14, 1, 1, v15);
        }

        v25 = v14;
      }

      else
      {
        type metadata accessor for LivePhotoAsset();
        v47 = swift_dynamicCastClass();
        if (v47)
        {
          v48 = v47;
          v49 = OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata;
          if (*(v47 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
          {
            goto LABEL_27;
          }

          v50 = *(v47 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
          if (v50)
          {
            v51 = [v50 assetMetaData];
            if (v51)
            {
              v52 = v51;
              v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v55 = v54;

              v56 = v118;
              *v118 = v53;
              v56[1] = v55;
              v15 = v126;
              v14 = v124;
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0);
              v57 = swift_allocObject();
              (*v115)(v57 + *(*v57 + 104), 1, 1, v117);
              *(v57 + *(*v57 + 112)) = v114;
              v58 = v56;
              v11 = v116;
              sub_100021CEC(v58, v57 + *(*v57 + 120), &unk_100AEE0A0);
              *(v48 + v49) = v57;
            }
          }

          if (*(v48 + v49))
          {
LABEL_27:

            sub_100046ADC(v11);

            if ((*v127)(v11, 1, v15) != 1)
            {
              (*v123)(v20, v11, v15);
              PhotoLibraryAssetMetadata.date.getter();
              v80 = sub_100606500(v5, v125);
              v82 = v81;
              v121 = v83;
              v85 = v84;
              sub_100004F84(v5, &unk_100AD4790);
              if (v85 == 1)
              {
                (*v122)(v20, v15);
              }

              else
              {
                v120 = v82;
                v111 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
                v110 = v86;
                PhotoLibraryAssetMetadata.date.getter();
                v108 = PhotoLibraryAssetMetadata.size.getter();
                v107 = v87;
                PhotoLibraryAssetMetadata.squareCropRect.getter();
                v109 = v80;
                PhotoLibraryAssetMetadata.landscapeCropRect.getter();
                PhotoLibraryAssetMetadata.portraitCropRect.getter();
                v5 = v106;
                v11 = v116;
                v20 = v113;
                v88 = v118;
                PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
                (*v122)(v20, v126);
                swift_storeEnumTagMultiPayload();
                sub_1000F24EC(&unk_100AEE0B0);
                v89 = swift_allocObject();
                (*v115)(v89 + *(*v89 + 104), 1, 1, v117);
                *(v89 + *(*v89 + 112)) = v114;
                sub_100021CEC(v88, v89 + *(*v89 + 120), &unk_100AEE0A0);
                *(v48 + v49) = v89;

                v15 = v126;
              }

              v14 = v124;
              goto LABEL_8;
            }
          }

          else
          {

            (*v105)(v11, 1, 1, v15);
          }

          v25 = v11;
        }

        else
        {
          type metadata accessor for VideoAsset();
          v59 = swift_dynamicCastClass();
          if (!v59)
          {

            goto LABEL_8;
          }

          v60 = v59;
          v61 = OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
          if (*(v59 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
          {
            goto LABEL_35;
          }

          v62 = *(v59 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
          if (v62)
          {
            v63 = [v62 assetMetaData];
            if (v63)
            {
              v64 = v63;
              v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v67 = v66;

              v68 = v118;
              *v118 = v65;
              v68[1] = v67;
              v15 = v126;
              v14 = v124;
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&unk_100AEE0B0);
              v69 = swift_allocObject();
              (*v115)(v69 + *(*v69 + 104), 1, 1, v117);
              *(v69 + *(*v69 + 112)) = v114;
              v70 = v68;
              v11 = v116;
              sub_100021CEC(v70, v69 + *(*v69 + 120), &unk_100AEE0A0);
              *(v60 + v61) = v69;
            }
          }

          if (*(v60 + v61))
          {
LABEL_35:

            v71 = v104;
            sub_100046ADC(v104);
            v72 = v71;
            v15 = v126;

            if ((*v127)(v72, 1, v15) != 1)
            {
              v90 = v103;
              (*v123)(v103, v72, v15);
              PhotoLibraryAssetMetadata.date.getter();
              v91 = sub_100606500(v5, v125);
              v93 = v92;
              v121 = v94;
              v96 = v95;
              sub_100004F84(v5, &unk_100AD4790);
              if (v96 == 1)
              {
                (*v122)(v90, v15);
              }

              else
              {
                v120 = v93;
                v111 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
                v110 = v97;
                PhotoLibraryAssetMetadata.date.getter();
                v108 = PhotoLibraryAssetMetadata.size.getter();
                v107 = v98;
                v102 = PhotoLibraryAssetMetadata.squareCropRect.getter();
                v109 = v91;
                PhotoLibraryAssetMetadata.landscapeCropRect.getter();
                PhotoLibraryAssetMetadata.portraitCropRect.getter();
                v5 = v106;
                v11 = v116;
                v99 = v118;
                PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
                (*v122)(v90, v126);
                swift_storeEnumTagMultiPayload();
                sub_1000F24EC(&unk_100AEE0B0);
                v100 = swift_allocObject();
                (*v115)(v100 + *(*v100 + 104), 1, 1, v117);
                *(v100 + *(*v100 + 112)) = v114;
                sub_100021CEC(v99, v100 + *(*v100 + 120), &unk_100AEE0A0);
                *(v60 + v61) = v100;

                v15 = v126;
              }

              v14 = v124;
              v20 = v113;
              goto LABEL_8;
            }

            v25 = v72;
          }

          else
          {

            v101 = v104;
            (*v105)(v104, 1, 1, v15);
            v25 = v101;
          }
        }
      }

      sub_100004F84(v25, &qword_100AD5B20);
LABEL_8:
      ++v24;
      result = v129;
      if (v129 == v24)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100617828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006178B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032EC8;

  return sub_1006086E4(v2, v3);
}

uint64_t sub_100617948(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100032ECC;

  return sub_100608898(a1, a2, v6, v7, v8);
}

uint64_t sub_100617A08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100032EC8;

  return sub_100608548(v2, v3, v4, v6, v5);
}

void sub_100617AC4(unint64_t a1@<X0>, void *a2@<X1>, void (*a3)(unint64_t, unint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(unint64_t, unint64_t, __n128)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v1207 = a6;
  v1206 = a5;
  v1245 = a3;
  v1236 = a2;
  v1208 = a7;
  v1136 = sub_1000F24EC(&qword_100ADA888);
  __chkstk_darwin(v1136);
  v1135 = &v1067 - v9;
  v1134 = type metadata accessor for WorkoutIconAssetMetadata();
  v1253 = *(v1134 - 8);
  __chkstk_darwin(v1134);
  v1133 = &v1067 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1132 = sub_1000F24EC(&qword_100ADA8A0);
  __chkstk_darwin(v1132);
  v1131 = &v1067 - v11;
  v1130 = type metadata accessor for WorkoutRouteAssetMetadata();
  v1251 = *(v1130 - 8);
  __chkstk_darwin(v1130);
  v1129 = &v1067 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1198 = type metadata accessor for MultiPinMapAssetMetadata();
  v13 = *(v1198 - 8);
  __chkstk_darwin(v1198);
  v1194 = &v1067 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v15 - 8);
  v1197 = &v1067 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v1139 = &v1067 - v18;
  __chkstk_darwin(v19);
  v1149 = &v1067 - v20;
  __chkstk_darwin(v21);
  v1144 = &v1067 - v22;
  v1148 = sub_1000F24EC(&qword_100AD38D0);
  __chkstk_darwin(v1148);
  v1147 = &v1067 - v23;
  v24 = sub_1000F24EC(&unk_100AEED30);
  __chkstk_darwin(v24 - 8);
  v1152 = &v1067 - v25;
  v1153 = type metadata accessor for VisitAssetMetadata();
  v1199 = *(v1153 - 8);
  __chkstk_darwin(v1153);
  v1123 = &v1067 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v1122 = &v1067 - v28;
  __chkstk_darwin(v29);
  v1156 = &v1067 - v30;
  v1173 = sub_1000F24EC(&qword_100ADA8F0);
  __chkstk_darwin(v1173);
  v1172 = &v1067 - v31;
  v1171 = type metadata accessor for ContactAssetMetadata();
  v1250 = *(v1171 - 8);
  __chkstk_darwin(v1171);
  v1170 = &v1067 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000F24EC(&qword_100AD6030);
  __chkstk_darwin(v33 - 8);
  v1165 = &v1067 - v34;
  v1164 = sub_1000F24EC(&qword_100ADA958);
  __chkstk_darwin(v1164);
  v1163 = &v1067 - v35;
  v1162 = type metadata accessor for PodcastAssetMetadata();
  v1249 = *(v1162 - 8);
  __chkstk_darwin(v1162);
  v1161 = &v1067 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1160 = sub_1000F24EC(&qword_100ADA8E0);
  __chkstk_darwin(v1160);
  v1159 = &v1067 - v37;
  v38 = sub_1000F24EC(&qword_100ADF198);
  __chkstk_darwin(v38 - 8);
  v1181 = &v1067 - v39;
  v1158 = type metadata accessor for MusicAssetMetadata();
  v40 = *(v1158 - 8);
  __chkstk_darwin(v1158);
  v1157 = &v1067 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1190 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v1190);
  v1189 = (&v1067 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1180 = type metadata accessor for MediaViewType();
  v43 = *(v1180 - 8);
  __chkstk_darwin(v1180);
  v1183 = &v1067 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v1192 = &v1067 - v46;
  v47 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v47 - 8);
  v1118 = &v1067 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v1120 = &v1067 - v50;
  __chkstk_darwin(v51);
  v1119 = &v1067 - v52;
  __chkstk_darwin(v53);
  v1126 = &v1067 - v54;
  __chkstk_darwin(v55);
  v1124 = &v1067 - v56;
  __chkstk_darwin(v57);
  v1125 = &v1067 - v58;
  __chkstk_darwin(v59);
  v1127 = &v1067 - v60;
  __chkstk_darwin(v61);
  v1128 = &v1067 - v62;
  __chkstk_darwin(v63);
  v1138 = &v1067 - v64;
  __chkstk_darwin(v65);
  v1143 = &v1067 - v66;
  __chkstk_darwin(v67);
  v1142 = &v1067 - v68;
  __chkstk_darwin(v69);
  v1141 = &v1067 - v70;
  __chkstk_darwin(v71);
  v1140 = &v1067 - v72;
  __chkstk_darwin(v73);
  v1155 = &v1067 - v74;
  __chkstk_darwin(v75);
  v1151 = &v1067 - v76;
  __chkstk_darwin(v77);
  v1154 = &v1067 - v78;
  __chkstk_darwin(v79);
  v1150 = &v1067 - v80;
  __chkstk_darwin(v81);
  v1169 = &v1067 - v82;
  __chkstk_darwin(v83);
  v1174 = &v1067 - v84;
  __chkstk_darwin(v85);
  v1188 = &v1067 - v86;
  __chkstk_darwin(v87);
  v1187 = &v1067 - v88;
  __chkstk_darwin(v89);
  v1166 = &v1067 - v90;
  __chkstk_darwin(v91);
  v1232 = &v1067 - v92;
  __chkstk_darwin(v93);
  v1179 = &v1067 - v94;
  __chkstk_darwin(v95);
  v1191 = &v1067 - v96;
  __chkstk_darwin(v97);
  v1178 = &v1067 - v98;
  __chkstk_darwin(v99);
  v1204 = &v1067 - v100;
  v1219 = type metadata accessor for PendingPhotoAsset(0);
  __chkstk_darwin(v1219);
  v1218 = (&v1067 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1225 = type metadata accessor for UUID();
  v102 = *(v1225 - 8);
  __chkstk_darwin(v1225);
  v1222 = &v1067 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104);
  v1223 = &v1067 - v105;
  v1233 = type metadata accessor for AssetSource();
  v106 = *(v1233 - 8);
  __chkstk_darwin(v1233);
  v1117 = &v1067 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v108);
  v1121 = &v1067 - v109;
  __chkstk_darwin(v110);
  v1137 = &v1067 - v111;
  __chkstk_darwin(v112);
  v1146 = &v1067 - v113;
  __chkstk_darwin(v114);
  v1145 = &v1067 - v115;
  __chkstk_darwin(v116);
  v1193 = &v1067 - v117;
  __chkstk_darwin(v118);
  v1182 = &v1067 - v119;
  __chkstk_darwin(v120);
  v1168 = &v1067 - v121;
  __chkstk_darwin(v122);
  v1186 = &v1067 - v123;
  __chkstk_darwin(v124);
  v1185 = &v1067 - v125;
  __chkstk_darwin(v126);
  v1202 = &v1067 - v127;
  __chkstk_darwin(v128);
  v1221 = &v1067 - v129;
  __chkstk_darwin(v130);
  v1224 = &v1067 - v131;
  v1231 = type metadata accessor for AssetType();
  v132 = *(v1231 - 8);
  __chkstk_darwin(v1231);
  v1220 = &v1067 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v134);
  v1240 = &v1067 - v135;
  v136 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v136 - 8);
  v1184 = &v1067 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v138);
  v1167 = &v1067 - v139;
  __chkstk_darwin(v140);
  v1177 = &v1067 - v141;
  __chkstk_darwin(v142);
  v1176 = &v1067 - v143;
  __chkstk_darwin(v144);
  v1175 = &v1067 - v145;
  __chkstk_darwin(v146);
  v1195 = &v1067 - v147;
  __chkstk_darwin(v148);
  v1201 = &v1067 - v149;
  __chkstk_darwin(v150);
  v1203 = &v1067 - v151;
  __chkstk_darwin(v152);
  v1239 = &v1067 - v153;
  v1244 = type metadata accessor for URL();
  v154 = *(v1244 - 8);
  __chkstk_darwin(v1244);
  v1196 = &v1067 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v156);
  v1200 = &v1067 - v157;
  __chkstk_darwin(v158);
  v1238 = &v1067 - v159;
  swift_retain_n();
  v1261 = _swiftEmptyArrayStorage;
  v1260 = _swiftEmptyArrayStorage;
  v1252 = a1;
  v1205 = a1 >> 62;
  if (a1 >> 62)
  {
    v160 = _CocoaArrayWrapper.endIndex.getter();
    if (v160)
    {
      goto LABEL_3;
    }

LABEL_564:
    swift_retain_n();
    v1048 = 0;
    v1045 = 0;
    v161 = 0;
    v1251 = 0;
    v1217 = 0;
    v1250 = 1;
    v1050 = v1252;
    goto LABEL_565;
  }

  v160 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v160)
  {
    goto LABEL_564;
  }

LABEL_3:
  v1246 = v160;
  if (v160 < 1)
  {
    __break(1u);
LABEL_580:
    __break(1u);
    return;
  }

  v1083 = " pending photo requests, ";
  v1230 = enum case for AssetSource.suggestionSheet(_:);
  v1229 = (v106 + 104);
  v1084 = "setType value of ";
  v1095 = enum case for AssetType.workoutIcon(_:);
  v1214 = (v132 + 104);
  v1215 = (v106 + 16);
  v1237 = (v102 + 16);
  v1213 = (v132 + 16);
  v1212 = (v102 + 8);
  v1216 = (v106 + 8);
  v1211 = (v132 + 8);
  v1094 = (v1253 + 32);
  v1085 = "StateOfMindAsset";
  v1099 = (v106 + 56);
  v1089 = "content completely missing";
  v1090 = "WorkoutIconAsset";
  v1087 = "Journaling.MotionActivityAsset";
  v1088 = "light content missing";
  v1093 = enum case for AssetType.workoutRoute(_:);
  v1086 = "MOSuggestionAssetWorkout";
  v1096 = "dark content missing";
  v1091 = "WorkoutRouteAsset";
  v1092 = (v1251 + 32);
  v1116 = (v13 + 48);
  v1113 = (v13 + 16);
  v1114 = (v13 + 8);
  v1106 = enum case for AssetType.contact(_:);
  v1105 = (v1250 + 32);
  v1104 = enum case for AssetType.podcast(_:);
  v1108 = (v43 + 56);
  v1109 = (v43 + 16);
  v1107 = (v43 + 8);
  v1103 = (v1249 + 32);
  v1102 = enum case for AssetType.music(_:);
  v1100 = "content missing album art.";
  v1101 = (v40 + 32);
  v1110 = "MOSuggestionAssetMediaItem";
  v1112 = "route and icon - ";
  v1115 = enum case for AssetType.livePhoto(_:);
  v1241 = (v154 + 56);
  v1228 = (v154 + 32);
  v1227 = (v154 + 16);
  v1226 = (v154 + 8);
  v1209 = enum case for AssetType.photo(_:);
  v1243 = "iaType value of ";
  v1242 = "EntryViewModel.Reflection";
  v1249 = v1252 & 0xC000000000000001;
  v1097 = (v1199 + 8);
  v1098 = (v1199 + 16);
  swift_retain_n();
  v1247 = 0;
  v161 = 0;
  v1251 = 0;
  v162 = 0;
  v1217 = 0;
  v163 = &selRef_sharedScheduler;
  v1111 = xmmword_100941EE0;
  v1250 = 1;
  v164 = v1246;
  v1210 = a4;
  do
  {
    if (v1249)
    {
      v176 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v176 = *(v1252 + 8 * v162 + 32);
    }

    v1253 = v176;
    v177 = [v176 assetType];
    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = v179;
    if (v178 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v180 == v181)
    {

      goto LABEL_17;
    }

    v1248 = v162;
    v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v183)
    {

      v162 = v1248;
LABEL_17:
      v184 = v1253;
      v185 = [v1253 v163[189]];
      objc_opt_self();
      v186 = swift_dynamicCastObjCClass();
      if (v186)
      {
        v165 = v161;
        v166 = a4;
        v167 = v184;
        v168 = sub_100615084(v186);
        v170 = v169;
        v171 = v162;
        v173 = v172;
        v175 = v174;
        swift_unknownObjectRelease();
        sub_1003A75B8(v1247, v165, v1250, v1251);

        a4 = v166;
        v161 = v170 & 1;
        v1247 = v168;
        v1250 = v173;
        v162 = v171;
        v163 = &selRef_sharedScheduler;
        v1251 = v175;
        v164 = v1246;
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
      v187 = [v184 v163[189]];

      sub_10061518C(0xD000000000000019, (v1243 | 0x8000000000000000), 0xD000000000000021, (v1242 | 0x8000000000000000), v187, v1245);
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v190 = v189;
    if (v188 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v190 == v191)
    {

      goto LABEL_27;
    }

    v193 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v194 = v1232;
    if (v193)
    {

      v164 = v1246;
LABEL_27:
      v195 = v1253;
      v1254 = [v1253 v163[189]];
      v196 = v1239;
      v197 = v1244;
      v198 = swift_dynamicCast();
      v199 = *v1241;
      if (v198)
      {
        v199(v196, 0, 1, v197);
        (*v1228)(v1238, v196, v197);
        v200 = v1240;
        v201 = v1231;
        (*v1214)(v1240, v1209, v1231);
        v202 = v1224;
        v203 = v1233;
        (*v1229)(v1224, v1230, v1233);
        v204 = v1223;
        UUID.init()();
        v205 = objc_allocWithZone(type metadata accessor for PlaceholderAsset());
        v1234 = *v1237;
        v206 = v1222;
        v1235 = v161;
        v207 = v1225;
        v1234(v1222, v204, v1225);
        v208 = v1220;
        (*v1213)(v1220, v200, v201);
        v209 = v1221;
        (*v1215)(v1221, v202, v203);
        v210 = sub_100285908(v206, v208, v209);
        v211 = v1246;
        v212 = v1210;
        (*v1216)(v202, v203);
        (*v1211)(v1240, v201);
        (*v1212)(v204, v207);
        sub_100606BC4(v210, v1236, &v1261);
        v213 = v1219;
        v214 = v1218;
        v215 = v1235;
        v1234(v1218 + *(v1219 + 20), &v210[OBJC_IVAR____TtC7Journal5Asset_id], v207);
        v216 = v1238;
        v217 = v1244;
        (*v1227)(v214 + *(v213 + 24), v1238, v1244);
        v218 = v1253;
        *v214 = v1253;
        v219 = v218;
        sub_100604190(v214);

        v220 = v216;
        v161 = v215;
        a4 = v212;
        v163 = &selRef_sharedScheduler;
        v221 = v217;
        v164 = v211;
        (*v1226)(v220, v221);
        goto LABEL_29;
      }

      v199(v196, 1, 1, v197);
      sub_100004F84(v196, &unk_100AD6DD0);
      v222 = [v195 v163[189]];

      v223 = 0x7373416F746F6850;
      v224 = 5001813;
      v225 = 0xE300000000000000;
      goto LABEL_31;
    }

    v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v228 = v227;
    if (v226 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v228 == v229)
    {

LABEL_37:
      v231 = v1253;
      v1254 = [v1253 v163[189]];
      v232 = v1203;
      v233 = v1244;
      v234 = swift_dynamicCast();
      v235 = *v1241;
      if (v234)
      {
        v236 = v161;
        v237 = a4;
        v235(v232, 0, 1, v233);
        v238 = v232;
        v239 = v1200;
        (*v1228)(v1200, v238, v233);
        (*v1229)(v1202, v1230, v1233);
        v240 = v231;
        v241 = v1201;
        (*v1227)(v1201, v239, v233);
        v235(v241, 0, 1, v233);
        v242 = [v240 metadata];
        v243 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoLocalIdentifier);
        sub_1001E1DA0(&v1254, v243, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          v244 = swift_dynamicCast();
          v245 = v1258;
          if (!v244)
          {
            v245 = 0;
          }

          v1234 = v245;
          if (v244)
          {
            v246 = v1259;
          }

          else
          {
            v246 = 0;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
          v1234 = 0;
          v246 = 0;
        }

        v252 = [v1253 metadata];
        v253 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoTakenDate);
        sub_1001E1DA0(&v1254, v253, &v1256);

        sub_100177B94(&v1254);
        v164 = v1246;
        a4 = v237;
        if (*(&v1257 + 1))
        {
          v254 = type metadata accessor for Date();
          v255 = v1204;
          v256 = swift_dynamicCast();
          (*(*(v254 - 8) + 56))(v255, v256 ^ 1u, 1, v254);
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
          v257 = type metadata accessor for Date();
          (*(*(v257 - 8) + 56))(v1204, 1, 1, v257);
        }

        v161 = v236;
        v258 = [v1253 metadata];
        v259 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoBestSquareCropRect);
        sub_1001E1DA0(&v1254, v259, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          sub_1000065A8(0, &qword_100AEB650);
          if (swift_dynamicCast())
          {
            v260 = v1258;
            [v1258 cgRect];
            v1080 = v261;
            v1081 = v262;
            v1079 = v263;
            v1082 = v264;

            *&v267 = v1079;
            *&v266 = v1080;
            v265 = 0;
            *(&v266 + 1) = v1081;
            *(&v267 + 1) = v1082;
            goto LABEL_57;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
        }

        v266 = 0uLL;
        v265 = 1;
        v267 = 0uLL;
LABEL_57:
        v1262[0] = v266;
        v1262[1] = v267;
        v1263 = v265;
        v268 = [v1253 metadata];
        v269 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoBestLandscapeCropRect);
        sub_1001E1DA0(&v1254, v269, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          sub_1000065A8(0, &qword_100AEB650);
          if (swift_dynamicCast())
          {
            v270 = v1258;
            [v1258 cgRect];
            v1080 = v271;
            v1081 = v272;
            v1079 = v273;
            v1082 = v274;

            *&v277 = v1079;
            *&v276 = v1080;
            v275 = 0;
            *(&v276 + 1) = v1081;
            *(&v277 + 1) = v1082;
            goto LABEL_62;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
        }

        v276 = 0uLL;
        v275 = 1;
        v277 = 0uLL;
LABEL_62:
        v1264[0] = v276;
        v1264[1] = v277;
        v1265 = v275;
        v278 = [v1253 metadata];
        v279 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoBestPortraitCropRect);
        sub_1001E1DA0(&v1254, v279, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          sub_1000065A8(0, &qword_100AEB650);
          if (swift_dynamicCast())
          {
            v280 = v1258;
            [v1258 cgRect];
            v1080 = v281;
            v1081 = v282;
            v1079 = v283;
            v1082 = v284;

            *&v287 = v1079;
            *&v286 = v1080;
            v285 = 0;
            *(&v286 + 1) = v1081;
            *(&v287 + 1) = v1082;
LABEL_67:
            v288 = v1253;
            v1266[0] = v286;
            v1266[1] = v287;
            v1267 = v285;
            LOBYTE(v1066) = 1;
            BYTE8(v1065) = 1;
            LOBYTE(v1064) = 1;
            v289 = sub_100224918(v1202, v1201, 0, v1234, v246, v1204, 0, 0, 0, v1064, 0, *(&v1065 + 1), 0, 0, v1066, v1262, v1264, v1266);
            sub_100606BC4(v289, v1236, &v1261);

            (*v1226)(v1200, v1244);
            goto LABEL_29;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
        }

        v286 = 0uLL;
        v285 = 1;
        v287 = 0uLL;
        goto LABEL_67;
      }

      v235(v232, 1, 1, v233);
      sub_100004F84(v232, &unk_100AD6DD0);
      v247 = [v231 v163[189]];

      sub_10061518C(0x7373416F65646956, 0xEA00000000007465, 5001813, 0xE300000000000000, v247, v1245);

      swift_unknownObjectRelease();

      goto LABEL_75;
    }

    v230 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v230)
    {

      goto LABEL_37;
    }

    v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v250 = v249;
    if (v248 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v250 == v251)
    {
      v1235 = v161;

LABEL_70:
      v291 = v1253;
      v1254 = [v1253 v163[189]];
      v292 = v1195;
      v293 = v1244;
      v294 = swift_dynamicCast();
      v295 = *v1241;
      if (!v294)
      {
        v295(v292, 1, 1, v293);
        sub_100004F84(v292, &unk_100AD6DD0);
        v313 = [v291 v163[189]];

        v314 = 0x746F68506576694CLL;
        v315 = 0xEE0074657373416FLL;
        v316 = 5001813;
        v317 = 0xE300000000000000;
        goto LABEL_73;
      }

      v295(v292, 0, 1, v293);
      (*v1228)(v1196, v292, v293);
      v296 = v1231;
      (*v1214)(v1240, v1115, v1231);
      v297 = v1224;
      v298 = v1233;
      (*v1229)(v1224, v1230, v1233);
      v299 = v1223;
      UUID.init()();
      v300 = objc_allocWithZone(type metadata accessor for PlaceholderAsset());
      v1234 = *v1237;
      v301 = v1222;
      v302 = v1225;
      v1234(v1222, v299, v1225);
      v303 = v1220;
      (*v1213)(v1220, v1240, v296);
      v304 = v1221;
      (*v1215)(v1221, v297, v298);
      v305 = v304;
      v163 = &selRef_sharedScheduler;
      v306 = sub_100285908(v301, v303, v305);
      v307 = v298;
      a4 = v1210;
      (*v1216)(v297, v307);
      (*v1211)(v1240, v1231);
      (*v1212)(v299, v302);
      sub_100606BC4(v306, v1236, &v1261);
      v308 = v1219;
      v309 = v1218;
      v1234(v1218 + *(v1219 + 20), &v306[OBJC_IVAR____TtC7Journal5Asset_id], v302);
      v310 = v1196;
      (*v1227)(v309 + *(v308 + 24), v1196, v293);
      v311 = v1253;
      *v309 = v1253;
      v312 = v311;
      sub_100604190(v309);

      (*v1226)(v310, v293);
      goto LABEL_74;
    }

    v290 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v290)
    {
      v1235 = v161;

      goto LABEL_70;
    }

    v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v320 = v319;
    if (v318 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v320 == v321)
    {

LABEL_81:
      v164 = v1246;
      v195 = v1253;
      v323 = [v1253 v163[189]];
      objc_opt_self();
      v324 = swift_dynamicCastObjCClass();
      if (!v324)
      {
        swift_unknownObjectRelease();
        v222 = [v195 v163[189]];

        v225 = (v1112 | 0x8000000000000000);
        v223 = 0x737341636973754DLL;
        v224 = 0xD00000000000001ALL;
LABEL_31:
        sub_10061518C(v223, 0xEA00000000007465, v224, v225, v222, v1245);

        swift_unknownObjectRelease();

        v162 = v1248;
        goto LABEL_6;
      }

      v325 = v324;
      v326 = [v324 albumArt];
      if (!v326)
      {
        sub_100606AE0(0x737341636973754DLL, 0xEA00000000007465, 0xD00000000000001ALL, (v1110 | 0x8000000000000000), v1245);

        swift_unknownObjectRelease();
        v162 = v1248;
        goto LABEL_6;
      }

      *&v1082 = v326;
      v1234 = v325;
      v327 = [v325 mediaType];
      if (v327 > 3)
      {
        if ((v327 - 6) < 3)
        {
          *&v1081 = v323;
          (*v1229)(v1182, v1230, v1233);
          v337 = v1234;
          v338 = [v1234 mediaType];
          sub_100606EAC(v338, 0, v1183);
          v339 = [v337 title];
          *&v1080 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *&v1079 = v340;

          v341 = [v337 albumTitle];
          v342 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1077 = v343;
          v1078 = v342;

          v344 = [v337 artistName];
          v345 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1075 = v346;
          v1076 = v345;

          v347 = [v337 previewURL];
          if (v347)
          {
            v348 = v347;
            v349 = v1184;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v350 = v349;
            v195 = v1253;
            v351 = 0;
          }

          else
          {
            v351 = 1;
            v350 = v1184;
          }

          (*v1241)(v350, v351, 1, v1244);
          v434 = [v195 metadata];
          v435 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaThirdPartyAppeName);
          sub_1001E1DA0(&v1254, v435, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v436 = swift_dynamicCast();
            v437 = v1258;
            if (!v436)
            {
              v437 = 0;
            }

            v1074 = v437;
            if (v436)
            {
              v438 = v1259;
            }

            else
            {
              v438 = 0;
            }
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v1074 = 0;
            v438 = 0;
          }

          v439 = [v1253 metadata];
          v440 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaStartDate);
          sub_1001E1DA0(&v1254, v440, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v441 = type metadata accessor for Date();
            v442 = v1166;
            v443 = swift_dynamicCast();
            (*(*(v441 - 8) + 56))(v442, v443 ^ 1u, 1, v441);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v444 = type metadata accessor for Date();
            v442 = v1166;
            (*(*(v444 - 8) + 56))(v1166, 1, 1, v444);
          }

          v445 = v1234;
          v446 = [v1234 bgColor];
          v447 = [v445 bgColorVariant];
          v448 = v1165;
          sub_100606F40(v447, v1165);
          v449 = v1082;
          v450 = v1082;
          v451 = sub_100594058(v1182, v1183, v1080, v1079, v1078, v1077, v1076, v1075, v1184, v1074, v438, v449, v442, v446, v448);
          sub_100606BC4(v451, v1236, &v1261);

          swift_unknownObjectRelease();
          goto LABEL_75;
        }

        if (v327 == 5)
        {
LABEL_109:
          *&v1081 = v323;
          v371 = v1233;
          (*v1229)(v1186, v1230, v1233);
          v372 = [v1234 trackIdentifier];
          if (v372)
          {
            v373 = v372;
            *&v1080 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *&v1079 = v374;
          }

          else
          {
            *&v1080 = 0;
            *&v1079 = 0xE000000000000000;
          }

          v513 = v1241;
          v514 = v1234;
          v515 = [v1234 title];
          v516 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v518 = v517;

          v519 = [v514 previewURL];
          if (v519)
          {
            v520 = v1177;
            v521 = v519;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v522 = v520;
            v195 = v1253;
            v523 = 0;
          }

          else
          {
            v523 = 1;
            v522 = v1177;
          }

          (*v513)(v522, v523, 1, v1244);
          v524 = [v1234 artistName];
          v525 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1075 = v526;

          v527 = [v195 metadata];
          v528 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaStartDate);
          sub_1001E1DA0(&v1254, v528, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v529 = type metadata accessor for Date();
            v530 = v1179;
            v531 = swift_dynamicCast();
            (*(*(v529 - 8) + 56))(v530, v531 ^ 1u, 1, v529);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v532 = type metadata accessor for Date();
            (*(*(v532 - 8) + 56))(v1179, 1, 1, v532);
          }

          v533 = [v1253 metadata];
          v534 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyPodcastNumberOfRepetitions);
          sub_1001E1DA0(&v1254, v534, &v1256);

          sub_100177B94(&v1254);
          v1235 = v161;
          v1077 = v518;
          v1078 = v516;
          v1076 = v525;
          if (*(&v1257 + 1))
          {
            v535 = swift_dynamicCast();
            v536 = v1258;
            if (!v535)
            {
              v536 = 0;
            }

            v1073 = v536;
            v537 = v535 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v1073 = 0;
            v537 = 1;
          }

          LODWORD(v1072) = v537;
          v538 = [v1234 mediaType];
          sub_100606EAC(v538, 0, v1192);
          v539 = v1240;
          (*v1214)(v1240, v1104, v1231);
          v1234 = *v1215;
          v540 = v1224;
          v1234(v1224, v1186, v371);
          *&v1082 = v1082;
          v541 = v1223;
          UUID.init()();
          v542 = objc_allocWithZone(type metadata accessor for PodcastAsset());
          *&v542[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = 0;
          v543 = v1222;
          v544 = v1225;
          (*v1237)(v1222, v541, v1225);
          v545 = v1220;
          (*v1213)(v1220, v539, v1231);
          v546 = v1221;
          v1234(v1221, v540, v371);
          v547 = sub_100285908(v543, v545, v546);
          v1074 = *v1212;
          v1074(v541, v544);
          v1234 = *v1216;
          (v1234)(v540, v371);
          (*v1211)(v1240, v1231);
          v548 = v1189;
          v549 = v1082;
          *v1189 = v1082;
          swift_storeEnumTagMultiPayload();
          *&v1082 = v549;
          v550 = v547;
          UUID.init()();
          v551 = UUID.uuidString.getter();
          v553 = v552;
          v1074(v541, v544);
          type metadata accessor for AssetAttachment(0);
          v554 = swift_allocObject();
          *(v554 + 16) = 0;
          sub_100617828(v548, v554 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v555 = (v554 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v555 = v551;
          v555[1] = v553;
          v556 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v550 + v556) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v557._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v557);
          swift_endAccess();
          v558 = v1177;
          sub_1000082B4(v1177, v1176, &unk_100AD6DD0);
          v559 = v1179;
          sub_1000082B4(v1179, v1191, &unk_100AD4790);
          v560 = v1181;
          v561 = v1192;
          v562 = v1180;
          (*v1109)(v1181, v1192, v1180);
          (*v1108)(v560, 0, 1, v562);
          v1066 = v1073;
          v563 = v1161;
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();
          v564 = v1082;

          (*v1107)(v561, v562);
          sub_100004F84(v558, &unk_100AD6DD0);
          (v1234)(v1186, v1233);
          sub_100004F84(v559, &unk_100AD4790);
          v565 = v1163;
          (*v1103)(v1163, v563, v1162);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80);
          v566 = swift_allocObject();
          v567 = *(*v566 + 104);
          v568 = sub_1000F24EC(&qword_100AD2A70);
          (*(*(v568 - 8) + 56))(v566 + v567, 1, 1, v568);
          *(v566 + *(*v566 + 112)) = v1111;
          sub_100021CEC(v565, v566 + *(*v566 + 120), &qword_100ADA958);
          *(v550 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = v566;

          sub_100606BC4(v550, v1236, &v1261);

          swift_unknownObjectRelease();
        }

        else
        {
          if (v327 != 4)
          {
LABEL_133:
            v1254 = 0;
            v1255 = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v426._countAndFlagsBits = 0xD000000000000020;
            v426._object = (v1100 | 0x8000000000000000);
            DefaultStringInterpolation.appendLiteral(_:)(v426);
            [v1234 mediaType];
            sub_1006042A0();
            v427._countAndFlagsBits = 0;
            v427._object = 0xE000000000000000;
            DefaultStringInterpolation.appendLiteral(_:)(v427);
            sub_100606AE0(0x737341636973754DLL, 0xEA00000000007465, v1254, v1255, v1245);

            swift_unknownObjectRelease();

            v162 = v1248;
            goto LABEL_6;
          }

LABEL_107:
          *&v1081 = v323;
          v367 = v1233;
          (*v1229)(v1185, v1230, v1233);
          v368 = [v1234 trackIdentifier];
          if (v368)
          {
            v369 = v368;
            *&v1080 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *&v1079 = v370;
          }

          else
          {
            *&v1080 = 0;
            *&v1079 = 0xE000000000000000;
          }

          v452 = v1178;
          v453 = [v1234 previewURL];
          v454 = v1241;
          if (v453)
          {
            v455 = v1175;
            v456 = v453;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v457 = v455;
            v195 = v1253;
            v458 = 0;
          }

          else
          {
            v458 = 1;
            v457 = v1175;
          }

          (*v454)(v457, v458, 1, v1244);
          v459 = v1234;
          v460 = [v1234 artistName];
          v461 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v463 = v462;

          v464 = [v459 title];
          v465 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1075 = v466;
          v1076 = v465;

          v467 = [v459 albumTitle];
          v468 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1073 = v469;
          v1074 = v468;

          v470 = [v195 metadata];
          v471 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMusicNumberOfRepetitions);
          sub_1001E1DA0(&v1254, v471, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v472 = swift_dynamicCast();
            v473 = v1258;
            if (!v472)
            {
              v473 = 0;
            }

            v1071 = v473;
            v474 = v472 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v1071 = 0;
            v474 = 1;
          }

          LODWORD(v1070) = v474;
          v475 = [v1253 metadata];
          v476 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyMediaStartDate);
          sub_1001E1DA0(&v1254, v476, &v1256);

          sub_100177B94(&v1254);
          v1235 = v161;
          v1077 = v463;
          v1078 = v461;
          if (*(&v1257 + 1))
          {
            v477 = type metadata accessor for Date();
            v478 = swift_dynamicCast();
            (*(*(v477 - 8) + 56))(v452, v478 ^ 1u, 1, v477);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v479 = type metadata accessor for Date();
            (*(*(v479 - 8) + 56))(v452, 1, 1, v479);
          }

          v480 = [v1234 mediaType];
          sub_100606EAC(v480, 0, v1192);
          v481 = v1240;
          (*v1214)(v1240, v1102, v1231);
          v1234 = *v1215;
          v482 = v1224;
          v1234(v1224, v1185, v367);
          v1072 = v1082;
          v483 = v1223;
          UUID.init()();
          v484 = objc_allocWithZone(type metadata accessor for MusicAsset());
          *&v484[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = 0;
          v485 = v1222;
          (*v1237)(v1222, v483, v1225);
          v486 = v1220;
          (*v1213)(v1220, v481, v1231);
          v487 = v1221;
          v1234(v1221, v482, v367);
          v1234 = sub_100285908(v485, v486, v487);
          v488 = *v1212;
          v489 = v1225;
          (*v1212)(v483, v1225);
          *&v1082 = *v1216;
          (v1082)(v482, v367);
          (*v1211)(v1240, v1231);
          v490 = v1189;
          v491 = v1072;
          *v1189 = v1072;
          swift_storeEnumTagMultiPayload();
          v1072 = v491;
          UUID.init()();
          v492 = UUID.uuidString.getter();
          v494 = v493;
          v488(v483, v489);
          type metadata accessor for AssetAttachment(0);
          v495 = swift_allocObject();
          *(v495 + 16) = 0;
          sub_100617828(v490, v495 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v496 = (v495 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v496 = v492;
          v496[1] = v494;
          v497 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          v498 = v1234;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v498 + v497) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v499._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v499);
          swift_endAccess();
          v500 = v1175;
          sub_1000082B4(v1175, v1176, &unk_100AD6DD0);
          v501 = v1178;
          sub_1000082B4(v1178, v1191, &unk_100AD4790);
          v502 = v1181;
          v503 = v1192;
          v504 = v1180;
          (*v1109)(v1181, v1192, v1180);
          (*v1108)(v502, 0, 1, v504);
          v505 = v1157;
          MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();
          v506 = v1072;

          (*v1107)(v503, v504);
          sub_100004F84(v500, &unk_100AD6DD0);
          (v1082)(v1185, v1233);
          sub_100004F84(v501, &unk_100AD4790);
          v507 = v1159;
          (*v1101)(v1159, v505, v1158);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E90);
          v508 = swift_allocObject();
          v509 = *(*v508 + 104);
          v510 = sub_1000F24EC(&qword_100AD6F70);
          (*(*(v510 - 8) + 56))(v508 + v509, 1, 1, v510);
          *(v508 + *(*v508 + 112)) = v1111;
          sub_100021CEC(v507, v508 + *(*v508 + 120), &qword_100ADA8E0);
          v511 = v1234;
          *(v1234 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = v508;
          v512 = v511;

          sub_100606BC4(v512, v1236, &v1261);

          swift_unknownObjectRelease();
        }

LABEL_179:

LABEL_180:
        v161 = v1235;
LABEL_181:
        v164 = v1246;
        v162 = v1248;
        v163 = &selRef_sharedScheduler;
        goto LABEL_6;
      }

      if (v327 == 1)
      {
        goto LABEL_107;
      }

      if (v327 == 2)
      {
        goto LABEL_109;
      }

      if (v327 != 3)
      {
        goto LABEL_133;
      }

      *&v1081 = v323;
      (*v1229)(v1168, v1230, v1233);
      v328 = [v1234 previewURL];
      if (v328)
      {
        v329 = v1167;
        v330 = v328;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v331 = v329;
        v195 = v1253;
        v332 = 0;
      }

      else
      {
        v332 = 1;
        v331 = v1167;
      }

      (*v1241)(v331, v332, 1, v1244);
      v569 = [v195 metadata];
      v570 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyPhotoLocalIdentifier);
      sub_1001E1DA0(&v1254, v570, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v571 = swift_dynamicCast();
        if (v571)
        {
          v572 = v1258;
        }

        else
        {
          v572 = 0;
        }

        if (v571)
        {
          v573 = v1259;
        }

        else
        {
          v573 = 0;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v572 = 0;
        v573 = 0;
      }

      v574 = [v1253 metadata];
      v575 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyVideoMomentDate);
      sub_1001E1DA0(&v1254, v575, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v576 = type metadata accessor for Date();
        v577 = swift_dynamicCast();
        (*(*(v576 - 8) + 56))(v194, v577 ^ 1u, 1, v576);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v578 = type metadata accessor for Date();
        (*(*(v578 - 8) + 56))(v194, 1, 1, v578);
      }

      v164 = v1246;
      memset(v1268, 0, sizeof(v1268));
      v1269 = 1;
      LOBYTE(v1066) = 1;
      BYTE8(v1065) = 1;
      LOBYTE(v1064) = 1;
      v579 = sub_100224918(v1168, v1167, 0, v572, v573, v194, 0, 0, 0, v1064, 0, *(&v1065 + 1), 0, 0, v1066, v1268, v1268, v1268);
      sub_100606BC4(v579, v1236, &v1261);

      swift_unknownObjectRelease();
      v162 = v1248;
      goto LABEL_6;
    }

    v322 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v322)
    {

      goto LABEL_81;
    }

    v333 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v335 = v334;
    if (v333 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v335 == v336)
    {

      v162 = v1248;
      goto LABEL_99;
    }

    v352 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v162 = v1248;
    if (v352)
    {

LABEL_99:
      v353 = v1253;
      v354 = [v1253 v163[189]];
      objc_opt_self();
      v355 = swift_dynamicCastObjCClass();
      v164 = v1246;
      if (!v355)
      {
        swift_unknownObjectRelease();
        v362 = [v353 v163[189]];

        v363 = 0x41746361746E6F43;
        v364 = 0xEC00000074657373;
        v365 = 0x6567616D494955;
        v366 = 0xE700000000000000;
        goto LABEL_104;
      }

      *&v1080 = v355;
      v356 = v354;
      (*v1229)(v1193, v1230, v1233);
      v357 = [v353 metadata];
      v358 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyContactName);
      sub_1001E1DA0(&v1254, v358, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v359 = swift_dynamicCast();
        v360 = v1253;
        if (v359)
        {
          *&v1082 = v1258;
          v361 = v1259;
LABEL_116:
          *&v1081 = v361;
          v379 = [v360 metadata];
          v380 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactStartTime);
          sub_1001E1DA0(&v1254, v380, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v381 = type metadata accessor for Date();
            v382 = v1187;
            v383 = swift_dynamicCast();
            (*(*(v381 - 8) + 56))(v382, v383 ^ 1u, 1, v381);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v384 = type metadata accessor for Date();
            (*(*(v384 - 8) + 56))(v1187, 1, 1, v384);
          }

          v385 = [v1253 metadata];
          v386 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactEndTime);
          sub_1001E1DA0(&v1254, v386, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v387 = type metadata accessor for Date();
            v388 = v1188;
            v389 = swift_dynamicCast();
            (*(*(v387 - 8) + 56))(v388, v389 ^ 1u, 1, v387);
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v390 = type metadata accessor for Date();
            (*(*(v390 - 8) + 56))(v1188, 1, 1, v390);
          }

          v391 = [v1253 metadata];
          v392 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactDuration);
          sub_1001E1DA0(&v1254, v392, &v1256);

          sub_100177B94(&v1254);
          if (*(&v1257 + 1))
          {
            v393 = swift_dynamicCast();
            v394 = v1258;
            if (!v393)
            {
              v394 = 0;
            }

            *&v1079 = v394;
            v395 = v393 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            *&v1079 = 0;
            v395 = 1;
          }

          LODWORD(v1078) = v395;
          v396 = [v1253 metadata];
          v397 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100604AA0(MOSuggestionAssetMetadataKeyContactNumberOfExchanges);
          sub_1001E1DA0(&v1254, v397, &v1256);

          sub_100177B94(&v1254);
          v1235 = v161;
          if (*(&v1257 + 1))
          {
            v398 = swift_dynamicCast();
            v399 = v1258;
            if (!v398)
            {
              v399 = 0;
            }

            v1077 = v399;
            v400 = v398 ^ 1;
          }

          else
          {
            sub_100004F84(&v1256, &qword_100AD13D0);
            v1077 = 0;
            v400 = 1;
          }

          LODWORD(v1076) = v400;
          v1234 = v356;
          (*v1214)(v1240, v1106, v1231);
          v1075 = *v1215;
          v401 = v1224;
          v402 = v1233;
          v1075(v1224, v1193, v1233);
          swift_unknownObjectRetain();
          v403 = v1223;
          UUID.init()();
          v404 = objc_allocWithZone(type metadata accessor for ContactAsset());
          *&v404[OBJC_IVAR____TtC7Journal12ContactAsset_metadata] = 0;
          v405 = v1222;
          v406 = v1225;
          (*v1237)(v1222, v403, v1225);
          v407 = v1220;
          (*v1213)(v1220, v1240, v1231);
          v408 = v1221;
          v1075(v1221, v401, v402);
          v1074 = sub_100285908(v405, v407, v408);
          v409 = *v1212;
          (*v1212)(v403, v406);
          v1075 = *v1216;
          (v1075)(v401, v402);
          (*v1211)(v1240, v1231);
          v410 = v1189;
          *v1189 = v1080;
          swift_storeEnumTagMultiPayload();
          swift_unknownObjectRetain();
          UUID.init()();
          v411 = UUID.uuidString.getter();
          v413 = v412;
          v409(v403, v406);
          type metadata accessor for AssetAttachment(0);
          v414 = swift_allocObject();
          *(v414 + 16) = 0;
          sub_100617828(v410, v414 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v415 = (v414 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v415 = v411;
          v415[1] = v413;
          v416 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          v417 = v1074;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v417 + v416) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v418._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v418);
          swift_endAccess();
          v419 = v1187;
          sub_1000082B4(v1187, v1191, &unk_100AD4790);
          v420 = v1188;
          sub_1000082B4(v1188, v1174, &unk_100AD4790);
          v421 = v1170;
          ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)();
          swift_unknownObjectRelease();
          (v1075)(v1193, v1233);
          sub_100004F84(v420, &unk_100AD4790);
          sub_100004F84(v419, &unk_100AD4790);
          v422 = v1172;
          (*v1105)(v1172, v421, v1171);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E60);
          v423 = swift_allocObject();
          v424 = *(*v423 + 104);
          v425 = sub_1000F24EC(&qword_100AD8440);
          (*(*(v425 - 8) + 56))(v423 + v424, 1, 1, v425);
          *(v423 + *(*v423 + 112)) = v1111;
          sub_100021CEC(v422, v423 + *(*v423 + 120), &qword_100ADA8F0);
          *(v417 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata) = v423;

          sub_100606BC4(v417, v1236, &v1261);
          swift_unknownObjectRelease();

          goto LABEL_179;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v360 = v1253;
      }

      *&v1082 = 0;
      v361 = 0xE000000000000000;
      goto LABEL_116;
    }

    v375 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v377 = v376;
    if (v375 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v377 == v378)
    {

      goto LABEL_136;
    }

    v428 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v428)
    {

LABEL_136:
      v353 = v1253;
      v429 = [v1253 v163[189]];
      objc_opt_self();
      v430 = swift_dynamicCastObjCClass();
      v164 = v1246;
      if (!v430)
      {
        swift_unknownObjectRelease();
        v362 = [v353 v163[189]];

        v366 = 0xEA00000000006E6FLL;
        v363 = 0x7461447469736956;
        v364 = 0xE900000000000061;
        v365 = 0x697461636F4C4C43;
        goto LABEL_104;
      }

      v1078 = v430;
      v1068 = v429;
      v431 = [v353 metadata];
      v432 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitMapItem);
      sub_1001E1DA0(&v1254, v432, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        sub_1000065A8(0, &qword_100AD5A90);
        if (swift_dynamicCast())
        {
          v433 = v1258;
        }

        else
        {
          v433 = 0;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v433 = 0;
      }

      v584 = v1150;
      v585 = [v1253 metadata];
      v586 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace);
      sub_1001E1DA0(&v1254, v586, &v1256);

      sub_100177B94(&v1254);
      if (!*(&v1257 + 1))
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v588 = v1253;
        goto LABEL_207;
      }

      v587 = swift_dynamicCast();
      v588 = v1253;
      if (!v587)
      {
        goto LABEL_207;
      }

      if (v1258 > 2)
      {
        if (v1258 == 3)
        {
          LODWORD(v1073) = 0;
          v589 = 2;
        }

        else
        {
          if (v1258 != 4)
          {
            goto LABEL_207;
          }

          LODWORD(v1073) = 0;
          v589 = 3;
        }

LABEL_208:
        v1234 = v589;
      }

      else
      {
        if (v1258 != 1)
        {
          if (v1258 == 2)
          {
            LODWORD(v1073) = 0;
            v589 = 1;
            goto LABEL_208;
          }

LABEL_207:
          LODWORD(v1073) = 1;
          v589 = 4;
          goto LABEL_208;
        }

        LODWORD(v1073) = 0;
        v1234 = 0;
      }

      v590 = [v588 metadata];
      v591 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewPlaceName);
      sub_1001E1DA0(&v1254, v591, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v592 = swift_dynamicCast();
        v593 = v1258;
        if (!v592)
        {
          v593 = 0;
        }

        *&v1080 = v593;
        if (v592)
        {
          v594 = v1259;
        }

        else
        {
          v594 = 0;
        }

        *&v1079 = v594;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        *&v1080 = 0;
        *&v1079 = 0;
      }

      v595 = [v1253 metadata];
      v596 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewCityName);
      sub_1001E1DA0(&v1254, v596, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v597 = swift_dynamicCast();
        if (v597)
        {
          v598 = v1258;
        }

        else
        {
          v598 = 0;
        }

        if (v597)
        {
          v599 = v1259;
        }

        else
        {
          v599 = 0;
        }

        v1076 = v599;
        v1077 = v598;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1076 = 0;
        v1077 = 0;
      }

      v600 = sub_1000A0F34(v1234);
      v1074 = v601;
      v1075 = v600;
      v602 = [v1253 metadata];
      v603 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime);
      sub_1001E1DA0(&v1254, v603, &v1256);

      sub_100177B94(&v1254);
      *&v1082 = v433;
      if (*(&v1257 + 1))
      {
        v604 = type metadata accessor for Date();
        v605 = swift_dynamicCast();
        v606 = *(v604 - 8);
        (*(v606 + 56))(v584, v605 ^ 1u, 1, v604);
        if ((*(v606 + 48))(v584, 1, v604) != 1)
        {
          (*(v606 + 32))(v1169, v584, v604);
          goto LABEL_232;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v604 = type metadata accessor for Date();
        (*(*(v604 - 8) + 56))(v584, 1, 1, v604);
      }

      v607 = [v1236 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Date();
      if ((*(*(v604 - 8) + 48))(v584, 1, v604) != 1)
      {
        sub_100004F84(v584, &unk_100AD4790);
      }

LABEL_232:
      type metadata accessor for Date();
      *&v1081 = *(v604 - 8);
      v608 = *(v1081 + 56);
      v608(v1169, 0, 1, v604);
      v609 = [v1253 metadata];
      v610 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime);
      sub_1001E1DA0(&v1254, v610, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v611 = v1151;
        v612 = swift_dynamicCast();
        v608(v611, v612 ^ 1u, 1, v604);
        if ((*(v1081 + 48))(v611, 1, v604) != 1)
        {
          v613 = v1154;
          (*(v1081 + 32))(v1154, v611, v604);
          goto LABEL_238;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v611 = v1151;
        v608(v1151, 1, 1, v604);
      }

      v614 = [v1236 endDate];
      v613 = v1154;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if ((*(v1081 + 48))(v611, 1, v604) != 1)
      {
        sub_100004F84(v611, &unk_100AD4790);
      }

LABEL_238:
      v608(v613, 0, 1, v604);
      v608(v1155, 1, 1, v604);
      v615 = v1078;
      [v1078 coordinate];
      [v615 coordinate];
      v616 = v1082;
      if (v1082)
      {
        v617 = [v1082 _styleAttributes];
        if (v617)
        {
          v618 = v617;
          sub_1000065A8(0, &qword_100AD5A80);
          *&v1081 = NSCoding<>.toData.getter();
          v1078 = v619;
        }

        else
        {
          *&v1081 = 0;
          v1078 = 0xF000000000000000;
        }

        sub_1000065A8(0, &qword_100AD5A90);
        v632 = v616;
        v633 = NSCoding<>.toData.getter();
        v1071 = v634;
        v1072 = v633;
      }

      else
      {
        *&v1081 = 0;
        v1071 = 0xF000000000000000;
        v1072 = 0;
        v1078 = 0xF000000000000000;
      }

      v635 = v1253;
      if ((v1073 & 1) == 0)
      {
        sub_100895B04(v1234, 1uLL);
      }

      v636 = [v635 metadata];
      v637 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v638 = MOSuggestionAssetMetadataKeyLocationPreviewVisitHorizontalUncertainty;
      sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitHorizontalUncertainty);
      sub_1001E1DA0(&v1254, v637, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v639 = swift_dynamicCast();
        v640 = v1258;
        if (!v639)
        {
          v640 = 0;
        }

        v1073 = v640;
        v641 = v639 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1073 = 0;
        v641 = 1;
      }

      LODWORD(v1070) = v641;
      v642 = [v635 metadata];
      v643 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(v638);
      sub_1001E1DA0(&v1254, v643, &v1256);

      sub_100177B94(&v1254);
      v1235 = v161;
      if (*(&v1257 + 1))
      {
        v644 = swift_dynamicCast();
        v645 = v1258;
        if (!v644)
        {
          v645 = 0;
        }

        v1069 = v645;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1069 = 0;
      }

      v646 = *v1229;
      v647 = v1152;
      v648 = v1230;
      v649 = v1233;
      (*v1229)(v1152, v1230, v1233);
      (*v1099)(v647, 0, 1, v649);
      v1066 = v1069;
      v1064 = v1072;
      v650 = v1156;
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      if (v1217)
      {
        v651 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
        v652 = v1153;
        if (!*&v1217[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
        {
          v667 = v1217;
          v161 = v1235;
          goto LABEL_274;
        }

        v653 = v1217;

        v654 = v1144;
        sub_1000768B4(v1144);
        v655 = v654;

        v656 = (*v1116)(v654, 1, v1198);
        v161 = v1235;
        if (v656)
        {
          sub_100004F84(v654, &unk_100AD5B30);
          goto LABEL_274;
        }

        v676 = v1194;
        v677 = v654;
        v678 = v1198;
        (*v1113)(v1194, v677, v1198);
        sub_100004F84(v655, &unk_100AD5B30);
        v679 = MultiPinMapAssetMetadata.visitsData.getter();
        (*v1114)(v676, v678);
        if (!v679)
        {
LABEL_274:
          sub_10019992C(0);
        }

        sub_1000F24EC(&qword_100AD64A8);
        v668 = v1199;
        v669 = swift_allocObject();
        v670 = sub_10033CBFC(v669, 1);
        (*(v668 + 16))(v671, v1156, v652);
        v672._countAndFlagsBits = v670;
        DebugData.init(name:)(v672);
        sub_1001B2CEC();

        if (*&v1217[v651])
        {

          v673 = v1149;
          sub_1000768B4(v1149);

          v674 = *v1116;
          if (!(*v1116)(v673, 1, v1198))
          {
            MultiPinMapAssetMetadata.isSlim.getter();
          }

          sub_100004F84(v1149, &unk_100AD5B30);
          if (*&v1217[v651])
          {

            v680 = v1139;
            sub_1000768B4(v1139);

            if (v674(v680, 1, v1198))
            {
              sub_100004F84(v680, &unk_100AD5B30);
              goto LABEL_289;
            }

            v686 = v680;
            v687 = MultiPinMapAssetMetadata.revision.getter();
            v689 = v688;
            sub_100004F84(v686, &unk_100AD5B30);
            if (v689)
            {
              v675 = 0;
            }

            else
            {
              v675 = v687;
            }
          }

          else
          {
LABEL_289:
            v675 = 0;
          }

          v652 = v1153;
        }

        else
        {
          v675 = 0;
        }

        v164 = v1246;
        if (__OFADD__(v675, 1))
        {
          goto LABEL_580;
        }

        v690 = v1147;
        MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
        swift_storeEnumTagMultiPayload();
        v691 = sub_1001B2BEC(v690);
        v692 = v1217;
        sub_10004AD20(v691);

        swift_unknownObjectRelease();
        v666 = v1156;
      }

      else
      {
        v657 = v1224;
        v646(v1224, v648, v649);
        sub_1000F24EC(&qword_100AD64A8);
        v658 = v1199;
        v659 = swift_allocObject();
        v660 = sub_10033CBFC(v659, 1);
        v652 = v1153;
        (*(v658 + 16))(v661, v650, v1153);
        v662._countAndFlagsBits = v660;
        countAndFlagsBits = DebugData.init(name:)(v662).name._countAndFlagsBits;
        v664 = v657;
        v163 = &selRef_sharedScheduler;
        v1217 = sub_10011CEC0(v664, countAndFlagsBits);
        v665 = v1217;
        sub_100606BC4(v665, v1236, &v1261);

        swift_unknownObjectRelease();
        v666 = v650;
        v161 = v1235;
        v164 = v1246;
      }

      sub_1003A98C8(v1234);
      (*v1097)(v666, v652);
LABEL_29:
      v162 = v1248;
      goto LABEL_6;
    }

    v580 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v582 = v581;
    if (v580 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v582 == v583)
    {
    }

    else
    {
      v620 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v620 & 1) == 0)
      {
        v681 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v683 = v682;
        v684 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v1235 = v161;
        if (v681 == v684 && v683 == v685)
        {
        }

        else
        {
          v693 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v693 & 1) == 0)
          {
            v872 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v874 = v873;
            if (v872 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v874 == v875)
            {

              goto LABEL_433;
            }

            v878 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v878)
            {

LABEL_433:
              v879 = [v1253 content];
              objc_opt_self();
              v880 = swift_dynamicCastObjCClass();
              if (!v880)
              {
                swift_unknownObjectRelease();
                v163 = &selRef_sharedScheduler;
                v291 = v1253;
                v313 = [v1253 content];
                a4 = v1210;

                v317 = 0xEA00000000006E6FLL;
                v314 = 0x4D636972656E6547;
                v315 = 0xEF74657373417061;
                v316 = 0x697461636F4C4C43;
                goto LABEL_73;
              }

              v881 = v880;
              v882 = [v1253 metadata];
              v883 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime);
              sub_1001E1DA0(&v1254, v883, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v884 = type metadata accessor for Date();
                v885 = v1125;
                v886 = swift_dynamicCast();
                v887 = *(v884 - 8);
                (*(v887 + 56))(v885, v886 ^ 1u, 1, v884);
                if ((*(v887 + 48))(v885, 1, v884) != 1)
                {
                  (*(v887 + 32))(v1127, v1125, v884);
                  goto LABEL_444;
                }
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                v884 = type metadata accessor for Date();
                (*(*(v884 - 8) + 56))(v1125, 1, 1, v884);
              }

              v892 = [v1236 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              type metadata accessor for Date();
              if ((*(*(v884 - 8) + 48))(v1125, 1, v884) != 1)
              {
                sub_100004F84(v1125, &unk_100AD4790);
              }

LABEL_444:
              type metadata accessor for Date();
              v893 = *(v884 - 8);
              v894 = *(v893 + 56);
              v894(v1127, 0, 1, v884);
              v895 = [v1253 metadata];
              v896 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyLocationPreviewVisitEndTime);
              sub_1001E1DA0(&v1254, v896, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v897 = v1126;
                v898 = swift_dynamicCast();
                v894(v897, v898 ^ 1u, 1, v884);
                if ((*(v893 + 48))(v897, 1, v884) != 1)
                {
                  (*(v893 + 32))(v1124, v1126, v884);
                  goto LABEL_450;
                }
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                v894(v1126, 1, 1, v884);
              }

              v899 = [v1236 endDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              if ((*(v893 + 48))(v1126, 1, v884) != 1)
              {
                sub_100004F84(v1126, &unk_100AD4790);
              }

LABEL_450:
              v894(v1124, 0, 1, v884);
              v894(v1191, 1, 1, v884);
              [v881 coordinate];
              [v881 coordinate];
              [v881 horizontalAccuracy];
              v901 = v900;
              v902 = *v1229;
              v903 = v1152;
              v904 = v1230;
              v905 = v1233;
              (*v1229)(v1152, v1230, v1233);
              (*v1099)(v903, 0, 1, v905);
              v1066 = v901;
              v1064 = 0;
              v906 = v1122;
              VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
              v907 = v1224;
              v902(v1224, v904, v905);
              v908 = v1123;
              v909 = v1153;
              (*v1098)(v1123, v906, v1153);
              v910 = sub_10033CC64(v907, v908);
              sub_100606BC4(v910, v1236, &v1261);

              swift_unknownObjectRelease();
              (*v1097)(v906, v909);
LABEL_499:
              a4 = v1210;
              goto LABEL_180;
            }

            v888 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v890 = v889;
            if (v888 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v890 == v891)
            {

              goto LABEL_453;
            }

            v911 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v911)
            {

LABEL_453:
              v912 = [v1253 content];
              objc_opt_self();
              v913 = v912;
              *&v1082 = swift_dynamicCastObjCClass();
              if (!v1082)
              {
                swift_unknownObjectRelease();
                v163 = &selRef_sharedScheduler;
                v291 = v1253;
                v313 = [v1253 content];
                a4 = v1210;

                v314 = 0xD000000000000010;
                v921 = v1085;
                goto LABEL_519;
              }

              (*v1229)(v1121, v1230, v1233);
              v914 = type metadata accessor for Date();
              v915 = *(*(v914 - 8) + 56);
              v915(v1119, 1, 1, v914);
              v915(v1120, 1, 1, v914);
              v916 = [v1253 metadata];
              v917 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupCount);
              sub_1001E1DA0(&v1254, v917, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v918 = swift_dynamicCast();
                v919 = v1258;
                if (!v918)
                {
                  v919 = 0;
                }

                *&v1081 = v919;
                v920 = v918 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                *&v1081 = 0;
                v920 = 1;
              }

              LODWORD(v1080) = v920;
              v926 = [v1253 metadata];
              v927 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupTotalTime);
              sub_1001E1DA0(&v1254, v927, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v928 = swift_dynamicCast();
                v929 = v1258;
                if (!v928)
                {
                  v929 = 0;
                }

                *&v1079 = v929;
                v930 = v928 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                *&v1079 = 0;
                v930 = 1;
              }

              LODWORD(v1078) = v930;
              v931 = [v1253 metadata];
              v932 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupStartDates);
              sub_1001E1DA0(&v1254, v932, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                sub_1000F24EC(&qword_100ADB2B8);
                v933 = swift_dynamicCast();
                v934 = v1258;
                if (!v933)
                {
                  v934 = 0;
                }

                v1077 = v934;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                v1077 = 0;
              }

              v935 = [v1253 metadata];
              v936 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupEndDates);
              sub_1001E1DA0(&v1254, v936, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                sub_1000F24EC(&qword_100ADB2B8);
                v937 = swift_dynamicCast();
                v938 = v1258;
                if (!v937)
                {
                  v938 = 0;
                }

                v1076 = v938;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                v1076 = 0;
              }

              v939 = [v1253 metadata];
              v940 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupAverageHeartrate);
              sub_1001E1DA0(&v1254, v940, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v941 = swift_dynamicCast();
                v942 = v1258;
                if (!v941)
                {
                  v942 = 0;
                }

                v1075 = v942;
                v943 = v941 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                v1075 = 0;
                v943 = 1;
              }

              LODWORD(v1074) = v943;
              v944 = [v1253 metadata];
              v945 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupTotalCalories);
              sub_1001E1DA0(&v1254, v945, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v946 = swift_dynamicCast();
                v947 = v1258;
                if (!v946)
                {
                  v947 = 0;
                }

                v1073 = v947;
                v948 = v946 ^ 1;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                v1073 = 0;
                v948 = 1;
              }

              LODWORD(v1072) = v948;
              v949 = [v1253 metadata];
              v950 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutGroupTotalCaloriesWithUnit);
              sub_1001E1DA0(&v1254, v950, &v1256);

              sub_100177B94(&v1254);
              if (*(&v1257 + 1))
              {
                v951 = swift_dynamicCast();
                if (v951)
                {
                  v952 = v1258;
                }

                else
                {
                  v952 = 0;
                }

                if (v951)
                {
                  v953 = v1259;
                }

                else
                {
                  v953 = 0;
                }

                v1070 = v953;
                v1071 = v952;
              }

              else
              {
                sub_100004F84(&v1256, &qword_100AD13D0);
                v1070 = 0;
                v1071 = 0;
              }

              v954 = v1240;
              v955 = v1231;
              (*v1214)(v1240, v1095, v1231);
              v1069 = *v1215;
              v956 = v1224;
              (v1069)(v1224, v1121, v1233);
              v1234 = v913;
              swift_unknownObjectRetain();
              v957 = v1223;
              UUID.init()();
              v958 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset());
              *&v958[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
              v959 = v1222;
              v960 = v1225;
              (*v1237)(v1222, v957, v1225);
              v961 = v1220;
              (*v1213)(v1220, v954, v955);
              v962 = v1221;
              v963 = v1233;
              (v1069)(v1221, v956, v1233);
              v964 = sub_100285908(v959, v961, v962);
              v965 = *v1212;
              (*v1212)(v957, v960);
              v1069 = *v1216;
              v1069(v956, v963);
              (*v1211)(v1240, v1231);
              v966 = v1189;
              *v1189 = v1082;
              swift_storeEnumTagMultiPayload();
              swift_unknownObjectRetain();
              UUID.init()();
              v967 = UUID.uuidString.getter();
              v969 = v968;
              v965(v957, v960);
              type metadata accessor for AssetAttachment(0);
              v970 = swift_allocObject();
              *(v970 + 16) = 0;
              sub_100617828(v966, v970 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
              v971 = (v970 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
              *v971 = v967;
              v971[1] = v969;
              v972 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
              swift_beginAccess();
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              sub_100286DC0(*((*(v964 + v972) & 0xFFFFFFFFFFFFFF8) + 0x10));
              v973._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              DebugData.init(name:)(v973);
              swift_endAccess();
              v974 = v1119;
              sub_1000082B4(v1119, v1191, &unk_100AD4790);
              v975 = v1120;
              sub_1000082B4(v1120, v1174, &unk_100AD4790);
              v1066 = v1073;
              *(&v1065 + 1) = v1076;
              v976 = v1133;
              WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
              swift_unknownObjectRelease();
              sub_100004F84(v975, &unk_100AD4790);
              sub_100004F84(v974, &unk_100AD4790);
              v1069(v1121, v1233);
              v977 = v1135;
              (*v1094)(v1135, v976, v1134);
              swift_storeEnumTagMultiPayload();
              sub_1000F24EC(&qword_100AE0DD0);
              v978 = swift_allocObject();
              v979 = *(*v978 + 104);
              v980 = sub_1000F24EC(&qword_100AE4280);
              (*(*(v980 - 8) + 56))(v978 + v979, 1, 1, v980);
              *(v978 + *(*v978 + 112)) = v1111;
              sub_100021CEC(v977, v978 + *(*v978 + 120), &qword_100ADA888);
              *(v964 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = v978;

              sub_100606BC4(v964, v1236, &v1261);
              swift_unknownObjectRelease();

LABEL_498:
              goto LABEL_499;
            }

            v922 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v924 = v923;
            if (v922 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v924 == v925)
            {
            }

            else
            {
              v981 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v981 & 1) == 0)
              {
                v1254 = 0;
                v1255 = 0xE000000000000000;
                _StringGuts.grow(_:)(67);
                v1001._countAndFlagsBits = 0xD000000000000041;
                v1001._object = (v1083 | 0x8000000000000000);
                DefaultStringInterpolation.appendLiteral(_:)(v1001);
                v1002 = v1253;
                v1003 = [v1253 assetType];
                v1004 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v1006 = v1005;

                v1007._countAndFlagsBits = v1004;
                v1007._object = v1006;
                j___sSS6appendyySSF(v1007);

                v1008._countAndFlagsBits = 0;
                v1008._object = 0xE000000000000000;
                DefaultStringInterpolation.appendLiteral(_:)(v1008);
                a4 = v1210;
                v1245(v1254, v1255);

                goto LABEL_180;
              }
            }

            v982 = [v1253 content];
            objc_opt_self();
            v983 = swift_dynamicCastObjCClass();
            if (!v983)
            {
              goto LABEL_518;
            }

            v984 = v983;
            v985 = [v983 imageAsset];
            if (!v985)
            {
              goto LABEL_518;
            }

            v986 = v985;
            sub_1000065A8(0, &qword_100AEB658);
            v987 = sub_10084744C(1);
            v988 = [v986 imageWithTraitCollection:v987];

            if (!v988)
            {
              goto LABEL_518;
            }

            v989 = [v984 imageAsset];
            if (!v989 || (v990 = v989, v991 = sub_10084744C(2), v992 = [v990 imageWithTraitCollection:v991], v990, v991, !v992))
            {

LABEL_518:
              swift_unknownObjectRelease();
              v163 = &selRef_sharedScheduler;
              v291 = v1253;
              v313 = [v1253 content];
              a4 = v1210;

              v314 = 0xD000000000000010;
              v921 = v1084;
LABEL_519:
              v315 = (v921 | 0x8000000000000000);
              v316 = 0x6567616D494955;
              v317 = 0xE700000000000000;
LABEL_73:
              sub_10061518C(v314, v315, v316, v317, v313, v1245);

              swift_unknownObjectRelease();

LABEL_74:
              v161 = v1235;
LABEL_75:
              v164 = v1246;
              v162 = v1248;
              goto LABEL_6;
            }

            v993 = [v988 imageAsset];
            if (v993)
            {
              v994 = v993;
              v995 = sub_10084744C(1);
              [v994 registerImage:v992 withTraitCollection:v995];
            }

            (*v1229)(v1117, v1230, v1233);
            v996 = [v1253 metadata];
            v997 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindIdentifier);
            sub_1001E1DA0(&v1254, v997, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v998 = swift_dynamicCast();
              if (v998)
              {
                v999 = v1258;
              }

              else
              {
                v999 = 0;
              }

              if (v998)
              {
                v1000 = v1259;
              }

              else
              {
                v1000 = 0;
              }

              v1234 = v1000;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              v999 = 0;
              v1234 = 0;
            }

            v1009 = [v1253 metadata];
            v1010 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindStartDate);
            sub_1001E1DA0(&v1254, v1010, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v1011 = type metadata accessor for Date();
              v1012 = v1118;
              v1013 = swift_dynamicCast();
              (*(*(v1011 - 8) + 56))(v1012, v1013 ^ 1u, 1, v1011);
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              v1014 = type metadata accessor for Date();
              (*(*(v1014 - 8) + 56))(v1118, 1, 1, v1014);
            }

            v1015 = [v1253 metadata];
            v1016 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindReflectiveInterval);
            sub_1001E1DA0(&v1254, v1016, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v1017 = swift_dynamicCast();
              v1018 = v1258;
              if (!v1017)
              {
                v1018 = 0;
              }

              *&v1082 = v1018;
              v1019 = v1017 ^ 1;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              *&v1082 = 0;
              v1019 = 1;
            }

            LODWORD(v1081) = v1019;
            v1020 = [v1253 metadata];
            v1021 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindLabels);
            sub_1001E1DA0(&v1254, v1021, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100ADB9B8);
              v1022 = swift_dynamicCast();
              v1023 = v1258;
              if (!v1022)
              {
                v1023 = 0;
              }

              *&v1080 = v1023;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              *&v1080 = 0;
            }

            v1024 = [v1253 metadata];
            v1025 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindDomains);
            sub_1001E1DA0(&v1254, v1025, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100ADB9B8);
              v1026 = swift_dynamicCast();
              v1027 = v1258;
              if (!v1026)
              {
                v1027 = 0;
              }

              *&v1079 = v1027;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              *&v1079 = 0;
            }

            v1028 = [v1253 metadata];
            v1029 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindValenceClassification);
            sub_1001E1DA0(&v1254, v1029, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v1030 = swift_dynamicCast();
              v1031 = v1258;
              if (!v1030)
              {
                v1031 = 0;
              }

              v1078 = v1031;
              v1032 = v1030 ^ 1;
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              v1078 = 0;
              v1032 = 1;
            }

            v1033 = [v1253 metadata];
            v1034 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsLight);
            sub_1001E1DA0(&v1254, v1034, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100AEB660);
              if (swift_dynamicCast())
              {
                v1035 = v1258;
                goto LABEL_549;
              }
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
            }

            v1035 = sub_1001998AC(0);
LABEL_549:
            v1036 = sub_100605CC4(v1035);

            v1037 = [v1253 metadata];
            v1038 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyStateOfMindAssociatedColorsDark);
            sub_1001E1DA0(&v1254, v1038, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              sub_1000F24EC(&qword_100AEB660);
              if (swift_dynamicCast())
              {
                v1039 = v1258;
LABEL_554:
                v1040 = sub_100605CC4(v1039);

                v1041 = v988;
                v1042 = v992;
                v1043 = sub_10019CD80(v1117, v988, v992, v999, v1234, v1118, v1082, v1081, v1080, v1079, v1078, v1032, v1036, v1040);
                sub_100606BC4(v1043, v1236, &v1261);
                swift_unknownObjectRelease();

                goto LABEL_498;
              }
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
            }

            v1039 = sub_1001998AC(0);
            goto LABEL_554;
          }
        }

        v694 = [v1253 v163[189]];
        objc_opt_self();
        v695 = swift_dynamicCastObjCClass();
        v696 = v1233;
        if (v695)
        {
          v697 = v695;
          v698 = [v695 imageAsset];
          if (!v698 || (v699 = v698, sub_1000065A8(0, &qword_100AEB658), v700 = sub_10084744C(1), v701 = [v699 imageWithTraitCollection:v700], v699, v700, !v701))
          {
            v702 = [v1253 v163[189]];

            sub_10061518C(0xD00000000000001ELL, (v1090 | 0x8000000000000000), 0xD000000000000015, (v1089 | 0x8000000000000000), v702, v1245);
            swift_unknownObjectRelease();

            v701 = 0;
          }

          v703 = a4;
          v704 = [v697 imageAsset];
          if (v704 && (v705 = v704, sub_1000065A8(0, &qword_100AEB658), v706 = sub_10084744C(2), v707 = [v705 imageWithTraitCollection:v706], v705, v706, (v1234 = v707) != 0))
          {
            swift_unknownObjectRelease();
            v708 = v1253;
            a4 = v703;
          }

          else
          {
            v829 = v1253;
            v830 = [v1253 v163[189]];

            sub_10061518C(0xD00000000000001ELL, (v1090 | 0x8000000000000000), 0xD000000000000014, (v1088 | 0x8000000000000000), v830, v1245);
            swift_unknownObjectRelease();
            v708 = v829;
            a4 = v703;
            swift_unknownObjectRelease();

            v1234 = 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v708 = v1253;
          v831 = [v1253 v163[189]];

          sub_10061518C(0xD00000000000001ELL, (v1090 | 0x8000000000000000), 0xD00000000000001ALL, (v1087 | 0x8000000000000000), v831, v1245);
          swift_unknownObjectRelease();

          v1234 = 0;
          v701 = 0;
        }

        v832 = [v708 metadata];
        v833 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityType);
        sub_1001E1DA0(&v1254, v833, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            *&v1082 = v1258;
            v834 = v1259;
            goto LABEL_402;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
        }

        *&v1082 = 0;
        v834 = 0xE000000000000000;
LABEL_402:
        *&v1081 = v834;
        v835 = [v1253 metadata];
        v836 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityTypeEnum);
        sub_1001E1DA0(&v1254, v836, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            *&v1080 = v1258;
            v837 = v1259;
            goto LABEL_407;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
        }

        *&v1080 = 0;
        v837 = 0xE000000000000000;
LABEL_407:
        *&v1079 = v837;
        v838 = [v1253 metadata];
        v839 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityTypeLocalized);
        sub_1001E1DA0(&v1254, v839, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            v1078 = v1258;
            v840 = v1259;
            goto LABEL_412;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
        }

        v1078 = 0;
        v840 = 0xE000000000000000;
LABEL_412:
        v1077 = v840;
        v841 = v1253;
        v842 = [v1253 metadata];
        v843 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityNumberOfSteps);
        sub_1001E1DA0(&v1254, v843, &v1256);

        sub_100177B94(&v1254);
        if (*(&v1257 + 1))
        {
          if (swift_dynamicCast())
          {
            v844 = v1258;
LABEL_417:
            (*v1229)(v1137, v1230, v696);
            v1254 = v844;
            v845 = dispatch thunk of CustomStringConvertible.description.getter();
            v847 = v846;
            v848 = [v841 metadata];
            v849 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityStartDate);
            sub_1001E1DA0(&v1254, v849, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v850 = type metadata accessor for Date();
              v851 = v1138;
              v852 = swift_dynamicCast() ^ 1;
              v853 = v851;
              v841 = v1253;
              (*(*(v850 - 8) + 56))(v853, v852, 1, v850);
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              v854 = type metadata accessor for Date();
              (*(*(v854 - 8) + 56))(v1138, 1, 1, v854);
            }

            v855 = [v841 metadata];
            v856 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100604AA0(MOSuggestionAssetMetadataKeyMotionActivityEndDate);
            sub_1001E1DA0(&v1254, v856, &v1256);

            sub_100177B94(&v1254);
            if (*(&v1257 + 1))
            {
              v857 = type metadata accessor for Date();
              v858 = v1128;
              v859 = swift_dynamicCast();
              (*(*(v857 - 8) + 56))(v858, v859 ^ 1u, 1, v857);
            }

            else
            {
              sub_100004F84(&v1256, &qword_100AD13D0);
              v860 = type metadata accessor for Date();
              v858 = v1128;
              (*(*(v860 - 8) + 56))(v1128, 1, 1, v860);
            }

            v861 = v701;
            v862 = v701;
            v863 = v1234;
            v864 = v1234;
            v865 = sub_10020EB14(v1137, v861, v863, v1082, v1081, v1080, v1079, v1078, v1077, v845, v847, v1138, v858);
            sub_100606BC4(v865, v1236, &v1261);

            v164 = v1246;
            v162 = v1248;
            v161 = v1235;
            goto LABEL_6;
          }
        }

        else
        {
          sub_100004F84(&v1256, &qword_100AD13D0);
        }

        v844 = 0;
        goto LABEL_417;
      }
    }

    v353 = v1253;
    v621 = [v1253 v163[189]];
    objc_opt_self();
    v622 = swift_dynamicCastObjCClass();
    v164 = v1246;
    if (!v622)
    {
      swift_unknownObjectRelease();
      v362 = [v353 v163[189]];

      v363 = 0xD000000000000011;
      v365 = 0xD000000000000018;
      v364 = (v1096 | 0x8000000000000000);
      v366 = (v1091 | 0x8000000000000000);
LABEL_104:
      sub_10061518C(v363, v364, v365, v366, v362, v1245);

      swift_unknownObjectRelease();
LABEL_19:

      goto LABEL_6;
    }

    v1234 = v621;
    *&v1082 = v622;
    v623 = [v622 route];
    *&v1081 = v623;
    v1235 = v161;
    if (v623)
    {
      v624 = v623;
      (*v1229)(v1145, v1230, v1233);
      v625 = [v624 locationReadings];
      sub_1000065A8(0, &unk_100AD2BF0);
      v626 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v627 = [v353 metadata];
      v628 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutType);
      sub_1001E1DA0(&v1254, v628, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v629 = swift_dynamicCast();
        if (v629)
        {
          v630 = v1258;
        }

        else
        {
          v630 = 0;
        }

        if (v629)
        {
          v631 = v1259;
        }

        else
        {
          v631 = 0;
        }

        v1076 = v631;
        v1077 = v630;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1076 = 0;
        v1077 = 0;
      }

      v709 = [v1253 metadata];
      v710 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutDuration);
      sub_1001E1DA0(&v1254, v710, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          v1075 = v1258;
          goto LABEL_317;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
      }

      v1075 = 0;
LABEL_317:
      v711 = [v1253 metadata];
      v712 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutStartTime);
      sub_1001E1DA0(&v1254, v712, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v713 = type metadata accessor for Date();
        v714 = v1140;
        v715 = swift_dynamicCast();
        (*(*(v713 - 8) + 56))(v714, v715 ^ 1u, 1, v713);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v716 = type metadata accessor for Date();
        (*(*(v716 - 8) + 56))(v1140, 1, 1, v716);
      }

      v717 = [v1253 metadata];
      v718 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutEndTime);
      sub_1001E1DA0(&v1254, v718, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v719 = type metadata accessor for Date();
        v720 = v1141;
        v721 = swift_dynamicCast();
        (*(*(v719 - 8) + 56))(v720, v721 ^ 1u, 1, v719);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v722 = type metadata accessor for Date();
        (*(*(v722 - 8) + 56))(v1141, 1, 1, v722);
      }

      v723 = [v1253 metadata];
      v724 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutAverageHeartRate);
      sub_1001E1DA0(&v1254, v724, &v1256);

      sub_100177B94(&v1254);
      v1078 = v626;
      if (*(&v1257 + 1))
      {
        v725 = swift_dynamicCast();
        v726 = v1258;
        if (!v725)
        {
          v726 = 0;
        }

        v1074 = v726;
        v727 = v725 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1074 = 0;
        v727 = 1;
      }

      LODWORD(v1073) = v727;
      v728 = v1253;
      v729 = [v1253 metadata];
      v730 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurnt);
      sub_1001E1DA0(&v1254, v730, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v731 = swift_dynamicCast();
        v732 = v1258;
        if (!v731)
        {
          v732 = 0;
        }

        v1072 = v732;
        v733 = v731 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1072 = 0;
        v733 = 1;
      }

      LODWORD(v1071) = v733;
      v734 = [v728 metadata];
      v735 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurntWithUnit);
      sub_1001E1DA0(&v1254, v735, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v736 = swift_dynamicCast();
        if (v736)
        {
          v737 = v1258;
        }

        else
        {
          v737 = 0;
        }

        if (v736)
        {
          v738 = v1259;
        }

        else
        {
          v738 = 0;
        }

        v1069 = v738;
        v1070 = v737;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1069 = 0;
        v1070 = 0;
      }

      v739 = [v728 metadata];
      v740 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutTotalDistanceWithUnit);
      sub_1001E1DA0(&v1254, v740, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v1080 = v1258;
          v741 = v1259;
LABEL_347:
          *&v1079 = v741;
          v742 = v1240;
          v743 = v1231;
          (*v1214)(v1240, v1093, v1231);
          v1068 = *v1215;
          v744 = v1224;
          v1068(v1224, v1145, v1233);
          v745 = v1223;
          UUID.init()();
          v746 = objc_allocWithZone(type metadata accessor for WorkoutRouteAsset());
          *&v746[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = 0;
          v747 = v1222;
          v748 = v745;
          v749 = v1225;
          (*v1237)(v1222, v748, v1225);
          v750 = v1220;
          (*v1213)(v1220, v742, v743);
          v751 = v1221;
          v752 = v1233;
          v1068(v1221, v744, v1233);
          v753 = sub_100285908(v747, v750, v751);
          (*v1212)(v1223, v749);
          v1067 = *v1216;
          v1067(v744, v752);
          (*v1211)(v1240, v1231);
          v754 = v1140;
          sub_1000082B4(v1140, v1191, &unk_100AD4790);
          v755 = v1141;
          sub_1000082B4(v1141, v1174, &unk_100AD4790);
          v1068 = v753;
          v1066 = v1069;
          *(&v1065 + 1) = v1072;
          v756 = v1129;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          v1067(v1145, v1233);
          sub_100004F84(v755, &unk_100AD4790);
          sub_100004F84(v754, &unk_100AD4790);
          v757 = v1131;
          (*v1092)(v1131, v756, v1130);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20);
          v758 = swift_allocObject();
          v759 = *(*v758 + 104);
          v760 = sub_1000F24EC(&qword_100AD5B28);
          (*(*(v760 - 8) + 56))(v758 + v759, 1, 1, v760);
          *(v758 + *(*v758 + 112)) = v1111;
          sub_100021CEC(v757, v758 + *(*v758 + 120), &qword_100ADA8A0);
          v761 = v1068;
          *(v1068 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = v758;

          sub_100606BC4(v761, v1236, &v1261);

          v161 = v1235;
          v164 = v1246;
          v162 = v1248;
          v163 = &selRef_sharedScheduler;
          v353 = v1253;
          goto LABEL_348;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
      }

      *&v1080 = 0;
      v741 = 0xE000000000000000;
      goto LABEL_347;
    }

LABEL_348:
    v762 = [v1082 icon];
    if (v762)
    {
      v763 = v762;
      v764 = v1233;
      (*v1229)(v1146, v1230, v1233);
      v765 = [v353 metadata];
      v766 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutType);
      sub_1001E1DA0(&v1254, v766, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v767 = swift_dynamicCast();
        v768 = v1258;
        if (!v767)
        {
          v768 = 0;
        }

        *&v1080 = v768;
        if (v767)
        {
          v769 = v1259;
        }

        else
        {
          v769 = 0;
        }

        *&v1079 = v769;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        *&v1080 = 0;
        *&v1079 = 0;
      }

      v770 = [v1253 metadata];
      v771 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutDuration);
      sub_1001E1DA0(&v1254, v771, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          v1078 = v1258;
          goto LABEL_364;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
      }

      v1078 = 0;
LABEL_364:
      v772 = [v1253 metadata];
      v773 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutStartTime);
      sub_1001E1DA0(&v1254, v773, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v774 = type metadata accessor for Date();
        v775 = v1142;
        v776 = swift_dynamicCast();
        (*(*(v774 - 8) + 56))(v775, v776 ^ 1u, 1, v774);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v777 = type metadata accessor for Date();
        (*(*(v777 - 8) + 56))(v1142, 1, 1, v777);
      }

      v778 = [v1253 metadata];
      v779 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutWorkoutEndTime);
      sub_1001E1DA0(&v1254, v779, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v780 = type metadata accessor for Date();
        v781 = v1143;
        v782 = swift_dynamicCast();
        (*(*(v780 - 8) + 56))(v781, v782 ^ 1u, 1, v780);
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v783 = type metadata accessor for Date();
        (*(*(v783 - 8) + 56))(v1143, 1, 1, v783);
      }

      v784 = [v1253 metadata];
      v785 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutAverageHeartRate);
      sub_1001E1DA0(&v1254, v785, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v786 = swift_dynamicCast();
        v787 = v1258;
        if (!v786)
        {
          v787 = 0;
        }

        v1077 = v787;
        v788 = v786 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1077 = 0;
        v788 = 1;
      }

      LODWORD(v1076) = v788;
      v789 = [v1253 metadata];
      v790 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurnt);
      sub_1001E1DA0(&v1254, v790, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v791 = swift_dynamicCast();
        v792 = v1258;
        if (!v791)
        {
          v792 = 0;
        }

        v1075 = v792;
        v793 = v791 ^ 1;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1075 = 0;
        v793 = 1;
      }

      LODWORD(v1074) = v793;
      v794 = [v1253 metadata];
      v795 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutCaloriesBurntWithUnit);
      sub_1001E1DA0(&v1254, v795, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        v796 = swift_dynamicCast();
        if (v796)
        {
          v797 = v1258;
        }

        else
        {
          v797 = 0;
        }

        if (v796)
        {
          v798 = v1259;
        }

        else
        {
          v798 = 0;
        }

        v1072 = v798;
        v1073 = v797;
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
        v1072 = 0;
        v1073 = 0;
      }

      v799 = [v1253 metadata];
      v800 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100604AA0(MOSuggestionAssetMetadataKeyWorkoutTotalDistanceWithUnit);
      sub_1001E1DA0(&v1254, v800, &v1256);

      sub_100177B94(&v1254);
      if (*(&v1257 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v1082 = v1258;
          v801 = v1259;
LABEL_394:
          *&v1081 = v801;
          v802 = v1240;
          (*v1214)(v1240, v1095, v1231);
          v1071 = *v1215;
          v803 = v1224;
          (v1071)(v1224, v1146, v764);
          v1070 = v763;
          v804 = v1223;
          UUID.init()();
          v805 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset());
          *&v805[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
          v806 = v1222;
          v807 = v1225;
          (*v1237)(v1222, v804, v1225);
          v808 = v1220;
          (*v1213)(v1220, v802, v1231);
          v809 = v1221;
          (v1071)(v1221, v803, v764);
          v1069 = sub_100285908(v806, v808, v809);
          v810 = *v1212;
          (*v1212)(v804, v807);
          v1071 = *v1216;
          v1071(v803, v764);
          (*v1211)(v1240, v1231);
          v811 = v1189;
          v812 = v1070;
          *v1189 = v1070;
          swift_storeEnumTagMultiPayload();
          v1070 = v812;
          UUID.init()();
          v813 = UUID.uuidString.getter();
          v815 = v814;
          v810(v804, v807);
          type metadata accessor for AssetAttachment(0);
          v816 = swift_allocObject();
          *(v816 + 16) = 0;
          sub_100617828(v811, v816 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v817 = (v816 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v817 = v813;
          v817[1] = v815;
          v818 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          v819 = v1069;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100286DC0(*((*(v819 + v818) & 0xFFFFFFFFFFFFFF8) + 0x10));
          v820._countAndFlagsBits = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          DebugData.init(name:)(v820);
          swift_endAccess();
          v821 = v1142;
          sub_1000082B4(v1142, v1191, &unk_100AD4790);
          v822 = v1143;
          sub_1000082B4(v1143, v1174, &unk_100AD4790);
          v1066 = 0;
          v1065 = 0u;
          v823 = v1133;
          WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
          v824 = v1070;

          v1071(v1146, v1233);
          sub_100004F84(v822, &unk_100AD4790);
          sub_100004F84(v821, &unk_100AD4790);
          v825 = v1135;
          (*v1094)(v1135, v823, v1134);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0DD0);
          v826 = swift_allocObject();
          v827 = *(*v826 + 104);
          v828 = sub_1000F24EC(&qword_100AE4280);
          (*(*(v828 - 8) + 56))(v826 + v827, 1, 1, v828);
          *(v826 + *(*v826 + 112)) = v1111;
          sub_100021CEC(v825, v826 + *(*v826 + 120), &qword_100ADA888);
          *(v819 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = v826;

          sub_100606BC4(v819, v1236, &v1261);

          swift_unknownObjectRelease();
          goto LABEL_179;
        }
      }

      else
      {
        sub_100004F84(&v1256, &qword_100AD13D0);
      }

      *&v1082 = 0;
      v801 = 0xE000000000000000;
      goto LABEL_394;
    }

    if (!v1081)
    {
      v1254 = 0;
      v1255 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v866._countAndFlagsBits = 0xD000000000000021;
      v866._object = (v1086 | 0x8000000000000000);
      DefaultStringInterpolation.appendLiteral(_:)(v866);
      v867 = [v353 v163[189]];
      if ([v867 respondsToSelector:"debugDescription"])
      {
        v868 = [v867 debugDescription];
        swift_unknownObjectRelease();
        v869 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v871 = v870;
      }

      else
      {
        swift_unknownObjectRelease();
        v869 = 0;
        v871 = 0xE000000000000000;
      }

      v876._countAndFlagsBits = v869;
      v876._object = v871;
      j___sSS6appendyySSF(v876);

      v877._countAndFlagsBits = 0;
      v877._object = 0xE000000000000000;
      DefaultStringInterpolation.appendLiteral(_:)(v877);
      sub_100606AE0(0xD000000000000011, (v1096 | 0x8000000000000000), v1254, v1255, v1245);

      swift_unknownObjectRelease();

      goto LABEL_181;
    }

    swift_unknownObjectRelease();

LABEL_6:
    ++v162;
  }

  while (v164 != v162);
  v1044 = v1252;
  if (v1217)
  {
    v1045 = v1247;
    if (*&v1217[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
    {

      v1046 = v1197;
      sub_1000768B4(v1197);

      v1047 = v1198;
      if ((*v1116)(v1046, 1, v1198))
      {
        sub_100004F84(v1046, &unk_100AD5B30);
        v1048 = 0;
      }

      else
      {
        v1049 = v1194;
        (*v1113)(v1194, v1046, v1047);
        sub_100004F84(v1046, &unk_100AD5B30);
        v1048 = MultiPinMapAssetMetadata.visitsData.getter();
        (*v1114)(v1049, v1047);
      }
    }

    else
    {
      v1048 = 0;
    }
  }

  else
  {
    v1048 = 0;
    v1217 = 0;
    v1045 = v1247;
  }

  v1050 = v1044;
LABEL_565:
  v1051 = sub_1006152DC(v1048, v1236, v1245, a4, v1206, v1207);

  swift_beginAccess();
  v1052 = v1261;
  sub_1006167D4(v1051, v1261);
  v1053 = sub_100603F00(v1050);
  if (!v1053)
  {
    v1257 = 0u;
    v1256 = 0u;
    goto LABEL_574;
  }

  v1054 = v1053;
  v1055 = [v1053 metadata];

  v1056 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100604AA0(MOSuggestionAssetMetadataKeyTransferID);
  sub_1001E1DA0(&v1254, v1056, &v1256);

  sub_100177B94(&v1254);
  if (!*(&v1257 + 1))
  {
LABEL_574:
    sub_100004F84(&v1256, &qword_100AD13D0);
    v1058 = 0;
    v1059 = 0;
    goto LABEL_575;
  }

  v1057 = swift_dynamicCast();
  if (v1057)
  {
    v1058 = v1254;
  }

  else
  {
    v1058 = 0;
  }

  if (v1057)
  {
    v1059 = v1255;
  }

  else
  {
    v1059 = 0;
  }

LABEL_575:
  v1060 = v1260;
  if (v1205)
  {
    v1061 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1061 = *((v1252 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1062 = v1208;
  *v1208 = v1045;
  v1062[1] = v161;
  v1063 = v1251;
  v1062[2] = v1250;
  v1062[3] = v1063;
  v1062[4] = v1052;
  v1062[5] = v1060;
  v1062[6] = v1051;
  v1062[7] = v1061;
  v1062[8] = v1058;
  v1062[9] = v1059;
}