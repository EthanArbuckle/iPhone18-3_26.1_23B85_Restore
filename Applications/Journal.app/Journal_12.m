id sub_10015A82C(void *a1)
{
  v2 = [objc_allocWithZone(UIPreviewParameters) init];
  [a1 bounds];
  v7 = [objc_opt_self() bezierPathWithRoundedRect:v3 cornerRadius:{v4, v5, v6, 16.0}];
  [v2 setVisiblePath:v7];

  v8 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v8];

  v9 = [objc_allocWithZone(UITargetedDragPreview) initWithView:a1 parameters:v2];
  return v9;
}

id sub_10015A958(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  v13 = [v1 isEditing];
  result = 0;
  if ((v13 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v15 = v21[1];
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100004F84(v5, &qword_100AD4B90);
    }

    else
    {
      sub_10001DAC8(v5, v12, type metadata accessor for AppNavigationSidebarController.Item);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [a1 cellForItemAtIndexPath:isa];

      if (v17)
      {
        sub_10001C850(v12, v10, type metadata accessor for AppNavigationSidebarController.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v18 = [v17 contentView];
          v19 = sub_10015A82C(v18);

          sub_10000D5C8(v12, type metadata accessor for AppNavigationSidebarController.Item);
          sub_10000D5C8(v10, type metadata accessor for AppNavigationSidebarController.Item);
          return v19;
        }

        sub_10000D5C8(v12, type metadata accessor for AppNavigationSidebarController.Item);

        v20 = v10;
      }

      else
      {
        v20 = v12;
      }

      sub_10000D5C8(v20, type metadata accessor for AppNavigationSidebarController.Item);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10015AC74()
{
  v0 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v3 = v8[1];
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v4 = type metadata accessor for AppNavigationSidebarController.Item(0);
  LOBYTE(v5) = 1;
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10000D5C8(v2, type metadata accessor for AppNavigationSidebarController.Item);
    v5 = 3u >> (EnumCaseMultiPayload & 7);
  }

  return v5 & 1;
}

uint64_t sub_10015ADD8()
{
  v1 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v17 - v10;
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v17[0] = v0;
  static UIViewController.ViewLoading.subscript.getter();

  v14 = v17[1];
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100004F84(v3, &qword_100AD4B90);
  }

  else
  {
    sub_10001DAC8(v3, v13, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10001C850(v13, v11, type metadata accessor for AppNavigationSidebarController.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000D5C8(v13, type metadata accessor for AppNavigationSidebarController.Item);
      sub_10000D5C8(v11, type metadata accessor for AppNavigationSidebarController.Item);
      return 0;
    }

    sub_10000D5C8(v11, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10001C850(v13, v8, type metadata accessor for AppNavigationSidebarController.Item);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10000D5C8(v8, type metadata accessor for AppNavigationSidebarController.Item);
      v16 = [v17[0] isEditing];
      sub_10000D5C8(v13, type metadata accessor for AppNavigationSidebarController.Item);
      return v16 ^ 1;
    }

    sub_10000D5C8(v13, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10000D5C8(v8, type metadata accessor for AppNavigationSidebarController.Item);
  }

  return 1;
}

id sub_10015B10C()
{
  v1 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - v2;
  v4 = type metadata accessor for SidebarPreferences.Brick();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 isEditing];
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v9 = v11[1];
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v10 = type metadata accessor for AppNavigationSidebarController.Item(0);
    if ((*(*(v10 - 8) + 48))(v3, 1, v10) == 1)
    {
      return sub_100004F84(v3, &qword_100AD4B90);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_100142810();
      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      return sub_10000D5C8(v3, type metadata accessor for AppNavigationSidebarController.Item);
    }
  }

  return result;
}

uint64_t sub_10015B368(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v133 = v131 - v3;
  v135 = type metadata accessor for UUID();
  v134 = *(v135 - 8);
  v4 = __chkstk_darwin(v135);
  v132 = v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v131 - v7;
  __chkstk_darwin(v6);
  v140 = v131 - v9;
  v10 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v137 = v131 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v131 - v17;
  __chkstk_darwin(v16);
  v138 = v131 - v19;
  v20 = sub_1000F24EC(&qword_100AD4B90);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v131 - v24;
  v26 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v143 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v141 = (v131 - v31);
  v32 = __chkstk_darwin(v30);
  v34 = v131 - v33;
  __chkstk_darwin(v32);
  v142 = v131 - v35;
  v36 = type metadata accessor for IndexPath();
  v37 = *(v36 - 8);
  v145 = v36;
  v146 = v37;
  __chkstk_darwin(v36);
  v147 = a1;
  v148 = v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = [a1 items];
  v136 = sub_1000F24EC(&unk_100AD4CA0);
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v40 >> 62))
  {
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_103:
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_103;
  }

LABEL_3:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v67 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_38;
    }

    v41 = *(v40 + 32);
    swift_unknownObjectRetain();
  }

  v42 = [v147 destinationIndexPath];
  if (!v42)
  {

    return swift_unknownObjectRelease();
  }

  v43 = v42;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v139 = v41;
  v44 = [v41 dragItem];
  v45 = [v44 localObject];

  if (v45)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v151 = 0u;
    v152 = 0u;
  }

  v153 = v151;
  v154 = v152;
  v47 = v139;
  if (!*(&v152 + 1))
  {
    sub_100004F84(&v153, &qword_100AD13D0);
    goto LABEL_20;
  }

  v131[1] = type metadata accessor for EntryViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v49 = v148;
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v48 = v153;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v143 + 48))(v25, 1, v26) == 1)
  {
    sub_100004F84(v25, &qword_100AD4B90);
    v49 = v148;
    v47 = v139;
    goto LABEL_21;
  }

  v50 = v142;
  sub_10001DAC8(v25, v142, type metadata accessor for AppNavigationSidebarController.Item);
  sub_10001C850(v50, v34, type metadata accessor for AppNavigationSidebarController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v139;
  if (EnumCaseMultiPayload)
  {
    sub_10000D5C8(v50, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10000D5C8(v34, type metadata accessor for AppNavigationSidebarController.Item);
    goto LABEL_20;
  }

  v60 = v34;
  v61 = v138;
  sub_10001DAC8(v60, v138, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_10001C850(v61, v18, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v62 = sub_1000F24EC(&qword_100AD47A0);
  v63 = (*(*(v62 - 8) + 48))(v18, 2, v62);
  v49 = v148;
  if (!v63)
  {
    v74 = v134;
    v75 = v140;
    v76 = v135;
    (*(v134 + 32))(v140, v18, v135);
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    v78 = sub_10000617C(v77, qword_100AD47F0);
    v79 = *(v74 + 16);
    v143 = v74 + 16;
    v141 = v79;
    v79(v8, v75, v76);
    v80 = v147;
    swift_unknownObjectRetain();
    v144 = v78;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v81, v82))
    {

      swift_unknownObjectRelease();
      v74 = *(v74 + 8);
      (v74)(v8, v76);
      goto LABEL_84;
    }

    v83 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v153 = v61;
    *v83 = 134218242;
    v84 = [v80 items];
    v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v85 >> 62)
    {
      goto LABEL_132;
    }

    for (i = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      *(v83 + 4) = i;
      v80 = v147;
      swift_unknownObjectRelease();
      *(v83 + 12) = 2080;
      sub_1001588B0(&qword_100AE19B0, &type metadata accessor for UUID);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v74 = *(v74 + 8);
      (v74)(v8, v76);
      v90 = sub_100008458(v87, v89, &v153);

      *(v83 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v81, v82, "Dragging %ld entries into journal with id %s", v83, 0x16u);
      sub_10000BA7C(v61);

LABEL_84:
      v96 = [v80 items];
      v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v147 = v74;
      if (v81 >> 62)
      {
        v83 = _CocoaArrayWrapper.endIndex.getter();
        if (!v83)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v83)
        {
          goto LABEL_122;
        }
      }

      if (v83 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_132:
      ;
    }

    for (j = 0; j != v83; ++j)
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v98 = *(v81 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      v99 = [v98 dragItem];
      v100 = [v99 localObject];

      if (v100)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v151 = 0u;
        v152 = 0u;
      }

      v153 = v151;
      v154 = v152;
      if (*(&v152 + 1))
      {
        if (swift_dynamicCast())
        {
          v101 = v149;
          NSManagedObjectContext.performAndWait<A>(_:)();
          if (v153 == 1)
          {
            v102 = *(v101 + 32);
            JournalEntryMO.recoverRecentlyDeleted()();
          }

          sub_1007788F0(v140);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
        sub_100004F84(&v153, &qword_100AD13D0);
      }
    }

LABEL_122:

    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v108 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    *&v153 = 0;
    v109 = [v108 save:&v153];
    v110 = v135;
    v111 = v140;
    v112 = v138;
    if (v109)
    {
      v113 = v153;
      swift_unknownObjectRelease();
      (v147)(v111, v110);
    }

    else
    {
      v114 = v153;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v115 = v132;
      v141(v132, v111, v110);
      swift_errorRetain();
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v153 = v120;
        *v118 = 136315394;
        sub_1001588B0(&qword_100AE19B0, &type metadata accessor for UUID);
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v122 = v110;
        v124 = v123;
        v125 = v115;
        v126 = v147;
        (v147)(v125, v122);
        v127 = sub_100008458(v121, v124, &v153);

        *(v118 + 4) = v127;
        *(v118 + 12) = 2112;
        swift_errorRetain();
        v128 = _swift_stdlib_bridgeErrorToNSError();
        *(v118 + 14) = v128;
        *v119 = v128;
        _os_log_impl(&_mh_execute_header, v116, v117, "Error saving after adding entry to journal with id %s: %@", v118, 0x16u);
        sub_100004F84(v119, &unk_100AD4BB0);

        sub_10000BA7C(v120);

        swift_unknownObjectRelease();

        v126(v140, v135);
        v129 = v138;
LABEL_130:
        sub_10000D5C8(v129, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        sub_10000D5C8(v142, type metadata accessor for AppNavigationSidebarController.Item);
        return (*(v146 + 8))(v148, v145);
      }

      swift_unknownObjectRelease();

      v130 = v147;
      (v147)(v115, v110);
      v130(v111, v110);
    }

    v129 = v112;
    goto LABEL_130;
  }

  sub_10000D5C8(v61, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_10000D5C8(v142, type metadata accessor for AppNavigationSidebarController.Item);
  sub_10000D5C8(v18, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
LABEL_21:
  v52 = [v47 dragItem];
  v53 = [v52 localObject];

  if (v53)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v151 = 0u;
    v152 = 0u;
  }

  v153 = v151;
  v154 = v152;
  if (!*(&v152 + 1))
  {
    (*(v146 + 8))(v49, v145);
    swift_unknownObjectRelease();
    v55 = &qword_100AD13D0;
    v56 = &v153;
    return sub_100004F84(v56, v55);
  }

  type metadata accessor for EntryViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v146 + 8))(v49, v145);
    return swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v54 = v153;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v143 + 48))(v23, 1, v26) == 1)
  {
    (*(v146 + 8))(v49, v145);
    swift_unknownObjectRelease();
    v55 = &qword_100AD4B90;
    v56 = v23;
    return sub_100004F84(v56, v55);
  }

  v57 = v141;
  sub_10001DAC8(v23, v141, type metadata accessor for AppNavigationSidebarController.Item);
  sub_10001C850(v57, v29, type metadata accessor for AppNavigationSidebarController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    swift_unknownObjectRelease();
    v58 = type metadata accessor for AppNavigationSidebarController.Item;
    sub_10000D5C8(v57, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v146 + 8))(v49, v145);
    v59 = v29;
    return sub_10000D5C8(v59, v58);
  }

  v64 = v137;
  sub_10001DAC8(v29, v137, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_10001C850(v64, v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v65 = sub_1000F24EC(&qword_100AD47A0);
  if ((*(*(v65 - 8) + 48))(v13, 2, v65) != 1)
  {
    swift_unknownObjectRelease();
    v58 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType;
    sub_10000D5C8(v64, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    sub_10000D5C8(v141, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v146 + 8))(v49, v145);
    v59 = v13;
    return sub_10000D5C8(v59, v58);
  }

  sub_10000D5C8(v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v66 = [v147 items];
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v149 = _swiftEmptyArrayStorage;
  v13 = (v39 & 0xFFFFFFFFFFFFFF8);
  if (v39 >> 62)
  {
    goto LABEL_111;
  }

  v67 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
  v68 = _swiftEmptyArrayStorage;
  if (!v67)
  {
    goto LABEL_69;
  }

  v69 = 0;
  do
  {
    v147 = v68;
    v70 = v69;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v69 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v70 >= *(v13 + 2))
        {
          goto LABEL_109;
        }

        v71 = *(v39 + 8 * v70 + 32);
        swift_unknownObjectRetain();
        v69 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_108;
        }
      }

      v72 = [v71 dragItem];
      v73 = [v72 localObject];

      if (v73)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v151 = 0u;
        v152 = 0u;
      }

      v153 = v151;
      v154 = v152;
      if (*(&v152 + 1))
      {
        break;
      }

      sub_100004F84(&v153, &qword_100AD13D0);
LABEL_42:
      ++v70;
      if (v69 == v67)
      {
        v68 = v147;
        goto LABEL_69;
      }
    }

    if ((swift_dynamicCast() & 1) == 0 || !v150)
    {
      goto LABEL_42;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v68 = v149;
  }

  while (v69 != v67);
LABEL_69:

  *&v153 = _swiftEmptyArrayStorage;
  if (!(v68 >> 62))
  {
    v91 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v148;
    if (v91)
    {
      goto LABEL_71;
    }

LABEL_113:
    v95 = _swiftEmptyArrayStorage;
    goto LABEL_114;
  }

  v91 = _CocoaArrayWrapper.endIndex.getter();
  v92 = v148;
  if (!v91)
  {
    goto LABEL_113;
  }

LABEL_71:
  v93 = 0;
  v39 = 0;
  while (2)
  {
    if ((v68 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v94 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      goto LABEL_77;
    }

    if (v93 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_110;
    }

    v94 = v93 + 1;
    if (!__OFADD__(v93, 1))
    {
LABEL_77:
      v13 = v68;
      NSManagedObjectContext.performAndWait<A>(_:)();
      if (v151)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v147 = v39;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v39 = v147;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v93;
      if (v94 == v91)
      {
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_82:
  v95 = v153;
  v92 = v148;
LABEL_114:

  if ((v95 & 0x8000000000000000) != 0 || (v95 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_117:
      v103 = type metadata accessor for TaskPriority();
      v104 = v133;
      (*(*(v103 - 8) + 56))(v133, 1, 1, v103);
      type metadata accessor for MainActor();
      v105 = v144;
      v106 = static MainActor.shared.getter();
      v107 = swift_allocObject();
      v107[2] = v106;
      v107[3] = &protocol witness table for MainActor;
      v107[4] = v95;
      v107[5] = v105;
      sub_1003E9628(0, 0, v104, &unk_1009436A0, v107);
    }
  }

  else if (*(v95 + 16))
  {
    goto LABEL_117;
  }

  swift_unknownObjectRelease();

  sub_10000D5C8(v137, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_10000D5C8(v141, type metadata accessor for AppNavigationSidebarController.Item);
  return (*(v146 + 8))(v92, v145);
}

uint64_t sub_10015CBFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1001542F0(a1, v4, v5, v7, v6);
}

uint64_t sub_10015CCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD4C88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015CD38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_100150868(a1, v4, v5, v6);
}

uint64_t sub_10015CDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1001594E0(a1, v4, v5, sub_1001594E0, v6);
}

unint64_t sub_10015CEB4()
{
  result = qword_100AD4CF0;
  if (!qword_100AD4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4CF0);
  }

  return result;
}

uint64_t sub_10015CF08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100159428(a1, v4, v5, sub_100159428, v6);
}

uint64_t sub_10015D030(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AppNavigationSidebarController.Item(0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100145FF0(a1, v7, v1 + v4, v8);
}

uint64_t sub_10015D134(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

void sub_10015D1D8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100144A60(a1, v4, v5, v6, v7);
}

void sub_10015D27C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  type metadata accessor for AppNavigationSidebarController.Item(0);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];

  sub_100143A68(a1, v5, v6, v7, v1 + v4);
}

void sub_10015D358(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AppNavigationSidebarController.Item(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_100143AE0(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_10015D460()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10015D4A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_10015D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a5(0) - 8);
  v12 = *(v6 + 16);
  v13 = v6 + ((*(v11 + 80) + 24) & ~*(v11 + 80));

  return a6(a1, a2, a3, a4, v12, v13);
}

uint64_t sub_10015D5E4()
{
  v1 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppNavigationSidebarController.Item(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = sub_1000F24EC(&qword_100AD47A0);
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v0 + v2, 2, v6))
  {
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = type metadata accessor for SidebarPreferences.Brick();
      goto LABEL_9;
    }

    if (!EnumCaseMultiPayload && !v7(v0 + v5, 2, v6))
    {
      v10 = type metadata accessor for UUID();
LABEL_9:
      (*(*(v10 - 8) + 8))(v0 + v5, v10);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10015D814(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v9 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for AppNavigationSidebarController.Item(0) - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_100142588(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_10015D914(void *a1)
{
  type metadata accessor for OpenSensitiveURLAction.Destination();

  return sub_1008B598C(a1);
}

uint64_t sub_10015D984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100140C2C(a1, v4, v5, v6);
}

uint64_t sub_10015DA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1001402F4(a1, v4, v5, v6);
}

uint64_t sub_10015DAEC(uint64_t a1)
{
  v3 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10013FD5C(a1, v4);
}

void sub_10015DB5C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10015DB6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10015DBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1000F24EC(&qword_100AD4D38) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1000F24EC(&qword_100AD4D30) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1000F24EC(&qword_100AD4D28) - 8);
  v14 = *(v13 + 80);
  return sub_10014C154(a1, a2, a3, *(v3 + 16), v3 + v8, v3 + v11, v3 + ((v11 + v12 + v14) & ~v14), v3 + ((*(v13 + 64) + v14 + ((v11 + v12 + v14) & ~v14)) & ~v14));
}

unint64_t sub_10015DD78()
{
  result = qword_100AD4DE8;
  if (!qword_100AD4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4DE8);
  }

  return result;
}

unint64_t sub_10015DDCC()
{
  result = qword_100AD4DF0;
  if (!qword_100AD4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4DF0);
  }

  return result;
}

uint64_t sub_10015DE20(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_10015DEEC()
{
  type metadata accessor for SidebarPreferences.Brick();

  sub_10014B870();
}

void sub_10015DF60(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for JournalSidebarViewModel(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_100148AD8(a1, a2, v9, (v2 + v6), v10);
}

uint64_t sub_10015E0D8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD4E38);
  sub_10000617C(v0, qword_100AD4E38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10015E398(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10015E454;

  return sub_10015F254(0, 0, a1);
}

uint64_t sub_10015E454()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10015E6E0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10015E790;

  return sub_100160460(0);
}

uint64_t sub_10015E790()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

void sub_10015E900(const char *a1, double a2)
{
  if (qword_100ACF9A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AD4E38);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_1000F24EC(&unk_100AD5B10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = Current - a2;
    v10 = String.init(format:_:)();
    v12 = sub_100008458(v10, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v5, a1, v6, 0xCu);
    sub_10000BA7C(v7);
  }
}

void sub_10015EAB8(uint64_t a1, void *a2)
{
  v4 = sub_1000F24EC(&qword_100AD4E78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = objc_allocWithZone(CSSearchableIndex);
  v9 = NSFileProtectionCompleteUnlessOpen;
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v8 initWithName:v10 protectionClass:v9 bundleIdentifier:v11];

  (*(v5 + 16))(v7, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  aBlock[4] = sub_1001608FC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A5E9B0;
  v15 = _Block_copy(aBlock);

  [a2 searchableIndex:v12 reindexAllSearchableItemsWithAcknowledgementHandler:v15];
  _Block_release(v15);
}

uint64_t sub_10015EE88(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v2[4] = swift_getObjCClassMetadata();
  v4 = a1;

  return _swift_task_switch(sub_10015EF14, 0, 0);
}

uint64_t sub_10015EF14()
{
  v1 = v0[4];
  v2 = v0[2];
  static Date.timeIntervalSinceReferenceDate.getter();
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10015F014;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000002DLL, 0x80000001008E1420, sub_100160C6C, v4, &type metadata for () + 8);
}

uint64_t sub_10015F014()
{

  return _swift_task_switch(sub_10015F12C, 0, 0);
}

uint64_t sub_10015F12C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10015E900("SpotlightUtilities.reindexAllSearchableItems completed in %s seconds.", *(v0 + 40));

  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

id sub_10015F1FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015F254(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 336) = a3;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  v5 = type metadata accessor for CSSearchQuery.Results.Item();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  v6 = type metadata accessor for CSSearchQuery.Results();
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v3 + 216) = v7;
  *(v3 + 224) = v9;

  return _swift_task_switch(sub_10015F3A4, v7, v9);
}

uint64_t sub_10015F3A4()
{
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v0 + 232) = v1;
  if (qword_100ACF9A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 240) = sub_10000617C(v2, qword_100AD4E38);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 336);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "SpotlightUtilities.setDisableSearchInSpotlightFlag disableSearchInSpotlight: %{BOOL}d", v6, 8u);
  }

  v7 = objc_allocWithZone(CSSearchQuery);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithQueryString:v8 queryContext:0];
  *(v0 + 248) = v9;

  sub_1000F24EC(&qword_100AD4E80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940080;
  *(v0 + 256) = NSFileProtectionCompleteUnlessOpen;
  *(v10 + 32) = NSFileProtectionCompleteUnlessOpen;
  type metadata accessor for FileProtectionType(0);
  v11 = NSFileProtectionCompleteUnlessOpen;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setProtectionClasses:isa];

  CSSearchQuery.results.getter();
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_10015F618;

  return sub_1007AB554();
}

uint64_t sub_10015F618(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  (*(v3[25] + 8))(v3[26], v3[24]);
  v5 = v3[28];
  v6 = v3[27];
  if (v1)
  {
    v7 = sub_10016013C;
  }

  else
  {
    v7 = sub_10015F7A8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10015F7A8()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 272);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "SpotlightUtilities.setDisableSearchInSpotlightFlag found %ld searchable items", v5, 0xCu);
  }

  else
  {
  }

  v6 = *(v0 + 272);
  v7 = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + 336)];
  *(v0 + 288) = v7;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = *(v0 + 176);
    v10 = *(v9 + 16);
    v9 += 16;
    v51 = v10;
    v11 = *(v0 + 272) + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = (v9 - 8);
    v13 = _swiftEmptyArrayStorage;
    v50 = *(v9 + 56);
    while (1)
    {
      v14 = *(v0 + 184);
      v15 = *(v0 + 168);
      v51(v14, v11, v15);
      v16 = CSSearchQuery.Results.Item.item.getter();
      (*v12)(v14, v15);
      v17 = [v16 attributeSet];
      v18 = [v17 disableSearchInSpotlight];

      if (!v18)
      {
        break;
      }

      sub_1000065A8(0, &unk_100ADE730);
      v19 = v7;
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_7:
      v11 += v50;
      if (!--v8)
      {

        goto LABEL_17;
      }
    }

    v21 = v7;
LABEL_12:
    v22 = [v16 attributeSet];
    [v22 setDisableSearchInSpotlight:v7];

    [v16 setIsUpdate:1];
    v23 = v16;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v13 = *(v0 + 144);
    goto LABEL_7;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_17:
  *(v0 + 296) = v13;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = &_s10Foundation8CalendarV9ComponentO6minuteyA2EmFWC_ptr;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 256);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = objc_allocWithZone(CSSearchableIndex);
    v31 = v27;
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v30 initWithName:v32 protectionClass:v31 bundleIdentifier:v33];

    *(v28 + 4) = v34;
    *v29 = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "SpotlightUtilities.setDisableSearchInSpotlightFlag searchableIndex = %@", v28, 0xCu);
    sub_10012B714(v29);

    v26 = &_s10Foundation8CalendarV9ComponentO6minuteyA2EmFWC_ptr;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    if (v13 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v38;

    _os_log_impl(&_mh_execute_header, v35, v36, "SpotlightUtilities.setDisableSearchInSpotlightFlag updated = %ld items", v37, 0xCu);
  }

  else
  {
  }

  v39 = *(v0 + 256);
  v40 = objc_allocWithZone(v26[357]);
  v41 = v39;
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v40 initWithName:v42 protectionClass:v41 bundleIdentifier:v43];
  *(v0 + 304) = v44;

  sub_1000065A8(0, &qword_100AD4E88);
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 312) = isa;
  v46 = v41;
  v47 = String._bridgeToObjectiveC()();
  *(v0 + 320) = v47;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10015FE84;
  v48 = swift_continuation_init();
  *(v0 + 136) = sub_1000F24EC(&unk_100AE1D70);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1003C2474;
  *(v0 + 104) = &unk_100A5EB40;
  *(v0 + 112) = v48;
  [v44 indexSearchableItems:isa deleteSearchableItemsWithIdentifiers:0 clientState:0 clientStateName:0 protectionClass:v46 forBundleID:v47 options:256 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10015FE84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {

    v3 = *(v1 + 216);
    v4 = *(v1 + 224);
    v5 = sub_1001602B8;
  }

  else
  {
    v3 = *(v1 + 216);
    v4 = *(v1 + 224);
    v5 = sub_10015FF9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10015FF9C()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 256);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 288);
    v11 = *(v0 + 248);

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v4, v5, "SpotlightUtilities.setDisableSearchInSpotlightFlag update of %ld items was successful", v8, 0xCu);
  }

  else
  {
    v10 = *(v0 + 288);
    v11 = *(v0 + 248);
    swift_bridgeObjectRelease_n();
  }

  sub_10015E900("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10016013C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "SpotlightUtilities.setDisableSearchInSpotlightFlag error %@", v3, 0xCu);
    sub_10012B714(v4);
  }

  else
  {
  }

  sub_10015E900("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001602B8()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  swift_willThrow();

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "SpotlightUtilities.setDisableSearchInSpotlightFlag error %@", v9, 0xCu);
    sub_10012B714(v10);
  }

  else
  {
  }

  sub_10015E900("SpotlightUtilities.setDisableSearchInSpotlightFlag completed in %s seconds.", *(v0 + 232));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100160460(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  *(v1 + 144) = v2;
  *(v1 + 152) = v4;

  return _swift_task_switch(sub_1001604EC, v2, v4);
}

uint64_t sub_1001604EC()
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v0[20] = v1;
  v2 = objc_allocWithZone(CSSearchableIndex);
  v3 = NSFileProtectionCompleteUnlessOpen;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 initWithName:v4 protectionClass:v3 bundleIdentifier:v5];
  v0[21] = v6;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;
  v0[2] = v0;
  v0[3] = sub_1001606BC;
  v8 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&unk_100AE1D70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003C2474;
  v0[13] = &unk_100A5E960;
  v0[14] = v8;
  [v6 deleteSearchableItemsWithDomainIdentifiers:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001606BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);
  if (v2)
  {
    v5 = sub_100160868;
  }

  else
  {
    v5 = sub_1001607EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001607EC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  sub_10015E900("SpotlightUtilities.deleteAllSearchableItems completed in %s seconds.", v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100160868()
{
  v1 = *(v0 + 22);
  v2 = *(v0 + 21);
  v3 = v0[20];
  swift_willThrow();

  sub_10015E900("SpotlightUtilities.deleteAllSearchableItems completed in %s seconds.", v3);
  v4 = *(v0 + 1);

  return v4();
}

uint64_t sub_100160968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100160AF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032EC8;

  return sub_10015EE88(v2, v3);
}

uint64_t sub_100160BAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100032EC8;

  return sub_100564D88(v2, v3, v4);
}

uint64_t sub_100160C74()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032EC8;

  return sub_10015E6E0(v2);
}

uint64_t sub_100160D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100564E70(a1, v4, v5, v6);
}

uint64_t sub_100160DEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032ECC;

  return sub_10015E398(v2, v3);
}

uint64_t sub_100160EA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_100160EEC()
{
  result = qword_100AD4E90;
  if (!qword_100AD4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4E90);
  }

  return result;
}

unint64_t sub_100160F40()
{
  if (*v0)
  {
    return 0xD000000000000045;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

void sub_100160F88(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD4EA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = NSItemProvider.loadDataRepresentation(for:completionHandler:)();
}

uint64_t sub_1001610E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      sub_100160EEC();
      swift_allocError();
      *v4 = 0;
    }

    swift_errorRetain();
    sub_1000F24EC(&qword_100AD4EA0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100049ED8(a1, a2);
    sub_1000F24EC(&qword_100AD4EA0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001611A0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD4E98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = NSItemProvider.loadFileRepresentation(for:openInPlace:completionHandler:)();
}

uint64_t sub_1001612FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v22 - v14;
  __chkstk_darwin(v13);
  v17 = v22 - v16;
  sub_100161650(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1001616C0(v7);
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      sub_100160EEC();
      v18 = swift_allocError();
      *v19 = 0;
    }

    swift_willThrow();
    swift_errorRetain();
    v22[0] = v18;
    sub_1000F24EC(&qword_100AD4E98);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v9 + 32))(v17, v7, v8);
    sub_10057757C(v15);
    (*(v9 + 16))(v12, v15, v8);
    sub_1000F24EC(&qword_100AD4E98);
    CheckedContinuation.resume(returning:)();
    v20 = *(v9 + 8);
    v20(v15, v8);
    return (v20)(v17, v8);
  }
}

uint64_t sub_1001615BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AD4E98);

  return sub_1001612FC(a1, a2, a3);
}

uint64_t sub_100161650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001616C0(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100161728(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AD4EA0);

  return sub_1001610E0(a1, a2, a3);
}

unint64_t sub_1001617D0()
{
  result = qword_100AD4EA8;
  if (!qword_100AD4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4EA8);
  }

  return result;
}

id sub_100161864()
{
  v1 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v1);
  v2 = sub_1000F24EC(&qword_100ADD520);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for FullScreenAssetNavigationController();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    Width = CGRectGetWidth(v17);
    [v7 safeAreaInsets];
    v10 = Width - v9;
    [v7 safeAreaInsets];
    *&v12 = v10 - v11;
    v13 = [v7 traitCollection];
    [v13 horizontalSizeClass];

    UserInterfaceSizeClass.init(_:)();
    v14 = sub_10002DDD4(v12, 0, v4);

    UIViewController.traitOverrides.getter();
    v15[15] = v14;
    sub_10002E2A0();
    dispatch thunk of UIMutableTraits.subscript.setter();
    return UIViewController.traitOverrides.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100161C54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenAssetNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100161CAC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingStackView;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingIcon;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v4[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_sizeType] = 6;
  *&v4[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_iconHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint] = 0;
  v12 = type metadata accessor for ConfettiHostingIndicatorView();
  v18.receiver = v4;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  sub_1000F24EC(&unk_100AEBEC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940080;
  *(v14 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v14 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v17[3] = v12;
  v17[0] = v13;
  v15 = v13;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000BA7C(v17);
  sub_100161E9C();

  return v15;
}

void sub_100161E9C()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000F24EC(&qword_100AD4F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  [v1 setClipsToBounds:1];
  static _UICornerMaskingConfiguration.capsule.getter();
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v10 = [objc_opt_self() configurationWithFont:v9];

  v11 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingIcon];
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  v56 = v12;
  [v11 setImage:v14];

  v15 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  [v15 setText:v16];

  v17 = [v8 preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v15 setFont:v17];

  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  [v15 setTextColor:v19];

  v20 = [objc_opt_self() effectWithStyle:16];
  v21 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  [v1 addSubview:v21];
  sub_100013178(0.0);

  v22 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingStackView];
  [v22 setAxis:0];
  v55 = v21;
  v23 = [v21 contentView];
  [v23 addSubview:v22];

  [v11 setContentMode:1];
  v24 = [v18 whiteColor];
  [v11 setTintColor:v24];

  [v22 addArrangedSubview:v11];
  v54 = v15;
  [v22 addArrangedSubview:v15];
  v25 = &selRef_setSuggestedName_;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v11 heightAnchor];
  v27 = [v11 widthAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 multiplier:1.0];

  [v28 setActive:1];
  v29 = [v22 superview];
  if (v29)
  {
    v30 = v29;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v22 topAnchor];
    v32 = [v30 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setConstant:0.0];
    [v33 setActive:1];

    v25 = &selRef_setSuggestedName_;
  }

  v34 = [v22 superview];
  if (v34)
  {
    v35 = v34;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [v22 leadingAnchor];
    v37 = [v35 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    [v38 setConstant:8.0];
    if (v38)
    {
      [v38 setActive:1];
    }

    v25 = &selRef_setSuggestedName_;
  }

  else
  {
    v38 = 0;
  }

  v39 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint];
  *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint] = v38;

  v40 = [v22 superview];
  if (v40)
  {
    v41 = v40;
    [v22 v25[278]];
    v42 = [v22 trailingAnchor];
    v43 = [v41 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    [v44 setConstant:-12.0];
    if (v44)
    {
      [v44 setActive:1];
    }

    v25 = &selRef_setSuggestedName_;
  }

  else
  {
    v44 = 0;
  }

  v45 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint];
  *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint] = v44;

  [v11 v25[278]];
  v46 = [v11 heightAnchor];
  v47 = [v11 widthAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 multiplier:1.0];

  [v48 setActive:1];
  [v11 v25[278]];
  v49 = [v11 heightAnchor];
  v50 = [v49 constraintEqualToConstant:24.0];

  [v50 setActive:1];
  v51 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_iconHeightConstraint];
  *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_iconHeightConstraint] = v50;

  LODWORD(v52) = 1144750080;
  [v22 setContentHuggingPriority:0 forAxis:v52];
  LODWORD(v53) = 1132068864;
  [v54 setContentCompressionResistancePriority:0 forAxis:v53];
  sub_1001627EC(v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_sizeType]);
}

id sub_1001627EC(unsigned __int8 a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (a1 > 4u)
  {
    if (a1 != 5)
    {
      if (a1 == 7)
      {
        goto LABEL_29;
      }

      if (a1 != 6)
      {
        goto LABEL_26;
      }
    }

    if (v4 == 1)
    {
      goto LABEL_36;
    }

    if (v4 != 2)
    {
      goto LABEL_26;
    }

LABEL_13:
    v5 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel];
    [v5 setHidden:0];
    v6 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint];
    if (v6)
    {
      [v6 setConstant:8.0];
    }

    v7 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint];
    if (v7)
    {
      [v7 setConstant:-12.0];
    }

    v8 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingIcon];
    [*&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingStackView] setCustomSpacing:v8 afterView:3.0];
    v9 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleFootnote];
    [v8 setPreferredSymbolConfiguration:v9];

    v10 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v5 setFont:v10];

    goto LABEL_34;
  }

  if (a1 != 1)
  {
    if (a1 != 3)
    {
      if (a1 != 4)
      {
        goto LABEL_26;
      }

      if (v4 != 2)
      {
        if (v4 != 1)
        {
LABEL_26:
          result = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel];
          v19 = "setHidden:";
          v11 = 1;

          return [result v19];
        }

LABEL_36:
        v27 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel];
        [v27 setHidden:1];
        v28 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint];
        if (v28)
        {
          [v28 setConstant:1.0];
        }

        v29 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint];
        if (v29)
        {
          [v29 setConstant:-1.0];
        }

        v30 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingIcon];
        v31 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption1];
        [v30 setPreferredSymbolConfiguration:v31];

        v32 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
        [v27 setFont:v32];

        result = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_iconHeightConstraint];
        if (result)
        {
          v19 = "setConstant:";
LABEL_42:

          return [result v19];
        }

        return result;
      }
    }

    goto LABEL_13;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_26;
    }

    v12 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel];
    [v12 setHidden:0];
    v13 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint];
    if (v13)
    {
      [v13 setConstant:6.0];
    }

    v14 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint];
    if (v14)
    {
      [v14 setConstant:-8.0];
    }

    v15 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingIcon];
    [*&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingStackView] setCustomSpacing:v15 afterView:3.0];
    v16 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption1];
    [v15 setPreferredSymbolConfiguration:v16];

    v17 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v12 setFont:v17];

    result = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_iconHeightConstraint];
    if (result)
    {
      v19 = "setConstant:";
      goto LABEL_42;
    }

    return result;
  }

LABEL_29:
  v20 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel];
  [v20 setHidden:0];
  v21 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint];
  if (v21)
  {
    [v21 setConstant:12.0];
  }

  v22 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint];
  if (v22)
  {
    [v22 setConstant:-16.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingIcon];
  [*&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingStackView] setCustomSpacing:v23 afterView:4.0];
  v24 = sub_100047788(UIFontTextStyleSubheadline, &off_100A55B30, 0);
  sub_100047D60(&unk_100A55B50);
  v25 = [objc_opt_self() configurationWithFont:v24];

  [v23 setSymbolConfiguration:v25];
  v26 = sub_100047788(UIFontTextStyleSubheadline, &off_100A55B68, 0);
  sub_100047D60(&unk_100A55B88);
  [v20 setFont:v26];

LABEL_34:
  result = *&v1[OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_iconHeightConstraint];
  if (result)
  {
    v19 = "setConstant:";
    goto LABEL_42;
  }

  return result;
}

id sub_100162DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfettiHostingIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100162EB8()
{
  v1 = OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingIcon;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_hostingLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_sizeType) = 6;
  *(v0 + OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_iconHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal28ConfettiHostingIndicatorView_stackTrailingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_100162FB4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result;
    v3 = [v2 viewIfLoaded];
    v4 = [v3 window];

    if (!v4)
    {
      v5 = [v2 presentedViewController];
      if (!v5)
      {
        goto LABEL_6;
      }

      v4 = v5;
    }

    if (([v2 isBeingDismissed] & 1) == 0)
    {
      v6 = [v2 isMovingFromParentViewController];

      result = v1;
      if ((v6 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_6:

LABEL_8:
    return 0;
  }

  return result;
}

uint64_t sub_100163090(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100163130, v5, v4);
}

uint64_t sub_100163130()
{
  v1 = sub_100162FB4();
  v0[9] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = static MainActor.shared.getter();
    v0[10] = v3;
    v4 = swift_task_alloc();
    v0[11] = v4;
    *(v4 + 16) = v2;
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_10016332C;

    return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000037, 0x80000001008E1760, sub_100163EF0, v4, &type metadata for () + 8);
  }

  else
  {

    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    v11 = UIViewController.forPresenting.getter();

    sub_10080CED4(v11, v8, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v13 = (v9 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_onDelete);
    *v13 = sub_100163EE8;
    v13[1] = v8;

    v14 = v0[1];

    return v14(1);
  }
}

uint64_t sub_10016332C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10016348C, v3, v2);
}

uint64_t sub_10016348C()
{
  v1 = v0[9];

  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = UIViewController.forPresenting.getter();

  sub_10080CED4(v7, v4, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v9 = (v5 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_onDelete);
  *v9 = sub_100163EE8;
  v9[1] = v4;

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_1001635A0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD4E78);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10066362C(sub_1001608FC, v8);
}

uint64_t sub_1001636E8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_1003E9628(0, 0, v4, &unk_100943C00, v7);
}

uint64_t sub_10016380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100163900, v7, v6);
}

uint64_t sub_100163900()
{
  v1 = v0[6];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[9] = v2;
  v0[10] = v4;

  return _swift_task_switch(sub_100163998, v2, v4);
}

uint64_t sub_100163998()
{
  (*(v0[4] + 104))(v0[5], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[3]);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100163A8C;
  v2 = v0[5];
  v3 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_100163FAC, v3, &type metadata for () + 8);
}

uint64_t sub_100163A8C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v4 = v2[9];
    v5 = v2[10];

    return _swift_task_switch(sub_100163BDC, v4, v5);
  }
}

uint64_t sub_100163BDC()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100163C40, v1, v2);
}

uint64_t sub_100163C40()
{
  v1 = *(v0 + 48);

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_100163CF4;

  return sub_10077E5EC(v1, &protocol witness table for MainActor);
}

uint64_t sub_100163CF4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100163E38, v3, v2);
}

uint64_t sub_100163E38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100163EA0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100163EF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10016380C(a1, v4, v5, v6);
}

uint64_t sub_100163FC8()
{
  v1 = v0;
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model;
  if (*(v1 + OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model))
  {
    v6 = *(v1 + OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model);
  }

  else
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v8 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v8 - 8) + 56))(v4, 2, 2, v8);
    type metadata accessor for EntryListViewModel(0);
    swift_allocObject();
    v6 = sub_100010AF4(v4, v7);
    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100164140()
{
  v1 = v0;
  v2 = type metadata accessor for EntriesSortOrder();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for InsightsEntriesViewController();
  v20.receiver = v0;
  v20.super_class = v8;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v9 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v9)
  {
    v10 = v9;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityLabel:v11];
  }

  v12 = sub_100163FC8();
  (*(v3 + 104))(v5, enum case for EntriesSortOrder.entryDate(_:), v2);
  v13 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
  swift_beginAccess();
  (*(v3 + 24))(v12 + v13, v5, v2);
  swift_endAccess();
  sub_100022BB4();

  (*(v3 + 8))(v5, v2);
  v14 = _UISolariumEnabled();
  v15 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask;
  v16 = v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask];
  v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_wantsBottomGradientMask] = v14 ^ 1;
  if ([v1 isViewLoaded] && v16 != v1[v15])
  {
    sub_10001A264();
  }

  sub_1003032B4(v17, 0, 1);
}

uint64_t sub_10016448C()
{
  v1 = type metadata accessor for Calendar.Component();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Calendar();
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for DateComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&qword_100AD3750);
  __chkstk_darwin(v16 - 8);
  v18 = &v34 - v17;
  v19 = sub_100163FC8();
  v20 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  swift_beginAccess();
  sub_100165BCC(v0 + v20, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v21 = &unk_100AD9850;
    v22 = v11;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    static Calendar.current.getter();
    Calendar.date(from:)();
    v23 = v43 + 8;
    v24 = *(v43 + 8);
    v24(v4, v41);
    if ((*(v40 + 48))(v7, 1, v42) != 1)
    {
      v34 = v4;
      v26 = v40;
      (*(v40 + 32))(v39, v7, v42);
      static Calendar.current.getter();
      v28 = v37;
      v27 = v38;
      v29 = *(v37 + 104);
      v35 = v24;
      v30 = v36;
      v29(v36, enum case for Calendar.Component.day(_:), v38);
      v43 = v23;
      v31 = v34;
      Calendar.dateInterval(of:for:)();
      (*(v28 + 8))(v30, v27);
      v35(v31, v41);
      (*(v26 + 8))(v39, v42);
      (*(v13 + 8))(v15, v12);
      goto LABEL_7;
    }

    (*(v13 + 8))(v15, v12);
    v21 = &unk_100AD4790;
    v22 = v7;
  }

  sub_100004F84(v22, v21);
  v25 = type metadata accessor for DateInterval();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
LABEL_7:
  v32 = OBJC_IVAR____TtC7Journal18EntryListViewModel_dateInterval;
  swift_beginAccess();
  sub_100165C3C(v18, v19 + v32);
  swift_endAccess();
  sub_100119574();

  return sub_100004F84(v18, &qword_100AD3750);
}

void sub_100164A34(uint64_t a1)
{
  [v1 loadViewIfNeeded];
  *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus) = 1;

  sub_1003032B4(a1, 0, 0);
}

id sub_100164A94()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v5[4] = sub_100166008;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100029CCC;
  v5[3] = &unk_100A5ED38;
  v2 = _Block_copy(v5);

  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);

  return v3;
}

id sub_100164B98(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_10007294C(0, a2);

  return v5;
}

uint64_t sub_100164C08()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000F24EC(&qword_100ADE620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v29 - v7;
  v8 = sub_1000F24EC(&qword_100AF1550);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v15)
  {
    return 0;
  }

  v30 = v11;
  v31 = v4;
  v16 = v12;
  swift_allocObject();
  v34 = ObjectType;
  swift_unknownObjectWeakInit();
  type metadata accessor for JournalEntryCollectionViewCell();
  sub_1000065A8(0, &qword_100AD43F0);
  v17 = v15;
  v32 = v14;
  v33 = v17;
  UICollectionView.CellRegistration.init(handler:)();
  sub_1000065A8(0, &qword_100ADE560);
  v18 = v36;
  UICollectionView.CellRegistration.init(handler:)();
  v19 = *(v16 + 16);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v30;
  v19(v29, v14, v30);
  v21 = v31;
  v22 = v35;
  (*(v31 + 16))(v35, v18, v3);
  v23 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v24 = (v9 + *(v21 + 80) + v23) & ~*(v21 + 80);
  v25 = swift_allocObject();
  (*(v16 + 32))(v25 + v23, v29, v20);
  (*(v21 + 32))(v25 + v24, v22, v3);
  *(v25 + ((v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v26 = objc_allocWithZone(sub_1000F24EC(&unk_100AD7CC0));
  v27 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  (*(v21 + 8))(v36, v3);
  (*(v16 + 8))(v32, v20);
  return v27;
}

void sub_100164FE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext) objectWithID:v4];
    type metadata accessor for JournalEntryMO();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      v11 = [v9 managedObjectContext];
      if (!v11)
      {
        v11 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v9, 0, 0, v11);
      *(a1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate + 8) = &off_100A66DF8;
      swift_unknownObjectWeakAssign();

      sub_10005A9EC(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_100165160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100165F48(a3, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v15 = *v6;
    v7 = v15;
    type metadata accessor for JournalEntryCollectionViewCell();
    sub_1000065A8(0, &qword_100AD43F0);
    v8 = v7;
    v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    if (qword_100ACFBF8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100B2F718);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "InsightsEntriesViewController - Unhandled cell type", v13, 2u);
    }

    v15 = xmmword_100943C10;
    sub_1000065A8(0, &qword_100ADE560);
    v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_100165FAC(v6);
  }

  return v9;
}

uint64_t sub_100165388(char a1)
{
  if ((a1 & 1) == 0)
  {
    return UIViewController.contentUnavailableConfiguration.setter();
  }

  return sub_1001653D8();
}

uint64_t sub_1001653D8()
{
  v0 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for UIContentUnavailableConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  if (qword_100AD0778 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD0780 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  v5 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v6 + 8) = 0x4034000000000000;
  v5(v12, 0);
  v7 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v8 + 24) = 0x4034000000000000;
  v7(v12, 0);
  static UIBackgroundConfiguration.clear()();
  UIContentUnavailableConfiguration.background.setter();
  v12[3] = v1;
  v12[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v9 = sub_10001A770(v12);
  (*(v2 + 16))(v9, v4, v1);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100165638(unint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D50;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  sub_1000065A8(0, &qword_100AD4420);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  *(v4 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v9 = sub_1005F9B54(a1, v4);

  return v9;
}

id sub_1001659FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsEntriesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InsightsEntriesViewController()
{
  result = qword_100AD5078;
  if (!qword_100AD5078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100165AD8()
{
  sub_100165B74();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100165B74()
{
  if (!qword_100AD3A18)
  {
    type metadata accessor for DateComponents();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD3A18);
    }
  }
}

uint64_t sub_100165BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD9850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD3750);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100165CBC(void *a1)
{
  if (qword_100ACFBF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100B2F718);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Empty cell dequeued in InsightsEntriesViewController! This should not happen. Please debug me.", v5, 2u);
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [a1 heightAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];

  [v7 setActive:1];
}

uint64_t sub_100165E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AF1550);
  sub_1000F24EC(&qword_100ADE620);

  return sub_100165160(a1, a2, a3);
}

uint64_t sub_100165F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165FAC(uint64_t a1)
{
  v2 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100166010(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v8 = (*((swift_isaMask & *v2) + 0x208) + **((swift_isaMask & *v2) + 0x208));
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100166168;

  return v8(a1, a2, 1);
}

uint64_t sub_100166168()
{
  v1 = *(*v0 + 16);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1001662A0, v2, v4);
}

uint64_t sub_1001662A0()
{
  (*((swift_isaMask & **(v0 + 32)) + 0x298))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100166338(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v8 = (*((swift_isaMask & *v2) + 0x208) + **((swift_isaMask & *v2) + 0x208));
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100166490;

  return v8(a1, a2, 0);
}

uint64_t sub_100166490()
{
  v1 = *(*v0 + 16);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100166A3C, v2, v4);
}

uint64_t sub_1001665C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100166670;

  return sub_100166010(a1, a2);
}

uint64_t sub_100166670()
{
  v1 = *(*v0 + 16);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100166A38, v2, v4);
}

uint64_t sub_1001667A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100166670;

  return sub_100166338(a1, a2);
}

uint64_t sub_100166850(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1001668F8;

  return sub_100166010(a1, a2);
}

uint64_t sub_1001668F8()
{
  v1 = *(*v0 + 16);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100136BE8, v2, v4);
}

char *sub_100166A44(void *a1)
{
  v2 = v1;
  v106 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v106);
  v105 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v5 - 8);
  v7 = v103 - v6;
  v8 = sub_1000F24EC(&qword_100AD50C8);
  __chkstk_darwin(v8 - 8);
  v109 = v103 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v103[1] = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v103[2] = v103 - v14;
  v15 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v15 - 8);
  v112 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v104 = v103 - v18;
  __chkstk_darwin(v19);
  v107 = v103 - v20;
  __chkstk_darwin(v21);
  v108 = v103 - v22;
  __chkstk_darwin(v23);
  v111 = v103 - v24;
  __chkstk_darwin(v25);
  v114 = v103 - v26;
  v27 = OBJC_IVAR____TtC7Journal18FullScreenLinkView_dateLabel;
  *&v2[v27] = [objc_allocWithZone(UILabel) init];
  v28 = objc_allocWithZone(type metadata accessor for LPLinkAssetView());
  v29 = a1;
  v30 = sub_1008A32C0(v29);
  v115 = v29;

  *&v2[OBJC_IVAR____TtC7Journal18FullScreenLinkView_linkView] = v30;
  v31 = type metadata accessor for FullScreenLinkView();
  v118.receiver = v2;
  v118.super_class = v31;
  v32 = objc_msgSendSuper2(&v118, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = objc_allocWithZone(UIStackView);
  v34 = v32;
  v35 = [v33 init];
  [v35 setAxis:1];
  [v35 setAlignment:3];
  [v35 setSpacing:16.0];
  v36 = v35;
  [v34 addSubview:v36];
  v37 = [v36 superview];
  v116 = v36;
  if (v37)
  {
    v38 = v37;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v36 centerYAnchor];
    v40 = [v38 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    [v41 setConstant:0.0];
    if (v41)
    {
      [v41 setActive:1];
    }

    v36 = v116;
  }

  v42 = [v36 superview];
  if (v42)
  {
    v43 = v42;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [v116 leadingAnchor];
    v45 = [v43 leadingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    v36 = v116;
    [v46 setConstant:20.0];
    [v46 setActive:1];
  }

  v47 = [v36 superview];
  if (v47)
  {
    v48 = v47;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v36 trailingAnchor];
    v50 = [v48 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    v36 = v116;
    [v51 setConstant:-20.0];
    [v51 setActive:1];
  }

  v52 = OBJC_IVAR____TtC7Journal18FullScreenLinkView_linkView;
  v53 = [*&v34[OBJC_IVAR____TtC7Journal18FullScreenLinkView_linkView] layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v117[0] = xmmword_100B30F28;
  v117[1] = *&qword_100B30F38;
  v117[2] = xmmword_100B30F48;
  v117[3] = *&qword_100B30F58;
  [v53 setCornerRadii:v117];

  [v36 addArrangedSubview:*&v34[v52]];
  v110 = v52;
  v54 = [*&v34[v52] widthAnchor];
  v55 = [v36 widthAnchor];

  v56 = [v54 constraintEqualToAnchor:v55];
  [v56 setActive:1];

  type metadata accessor for LinkAsset();
  v57 = v115;
  v58 = swift_dynamicCastClass();
  v59 = v10;
  v60 = v11;
  v61 = v7;
  v113 = v34;
  if (v58)
  {
    v62 = v57;
    v63 = v109;
    sub_1006ACC54(v109);
    v64 = type metadata accessor for LinkAssetMetadata();
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64) == 1)
    {

      sub_100004F84(v63, &qword_100AD50C8);
      v66 = v108;
      (*(v60 + 56))(v108, 1, 1, v59);
    }

    else
    {
      v103[0] = v61;
      v67 = v108;
      LinkAssetMetadata.date.getter();

      v68 = v63;
      v66 = v67;
      v61 = v103[0];
      (*(v65 + 8))(v68, v64);
      if ((*(v60 + 48))(v67, 1, v59) != 1)
      {
        v82 = *(v60 + 32);
        v80 = v60;
        v83 = &v120;
        goto LABEL_29;
      }
    }

    sub_100004F84(v66, &unk_100AD4790);
  }

  type metadata accessor for ThirdPartyMediaAsset();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  v69 = v57;
  sub_1006ACA14(v61);
  v70 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v61, 1, v70) != 1)
  {
    v66 = v107;
    ThirdPartyMediaAssetMetadata.startTime.getter();

    (*(v71 + 8))(v61, v70);
    if ((*(v60 + 48))(v66, 1, v59) == 1)
    {
      goto LABEL_20;
    }

    v82 = *(v60 + 32);
    v80 = v60;
    v83 = &v119;
LABEL_29:
    v84 = *(v83 - 32);
    v82(v84, v66, v59);
    v75 = v111;
    v82(v111, v84, v59);
    (*(v80 + 56))(v75, 0, 1, v59);
    v79 = v114;
    goto LABEL_30;
  }

  sub_100004F84(v61, &qword_100AD50C0);
  v66 = v107;
  (*(v60 + 56))(v107, 1, 1, v59);
LABEL_20:
  sub_100004F84(v66, &unk_100AD4790);
  v57 = v115;
LABEL_21:
  v72 = *&v57[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (!v72)
  {
    v75 = v111;
    (*(v60 + 56))(v111, 1, 1, v59);
    v79 = v114;
    v80 = v60;
LABEL_30:
    v81 = v59;
    v74 = v112;
    goto LABEL_31;
  }

  v73 = [v72 createdDate];
  v75 = v111;
  v74 = v112;
  if (v73)
  {
    v76 = v104;
    v77 = v73;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = 0;
  }

  else
  {
    v78 = 1;
    v76 = v104;
  }

  (*(v60 + 56))(v76, v78, 1, v59);
  sub_1001679C0(v76, v75);
  v79 = v114;
  v80 = v60;
  v81 = v59;
LABEL_31:
  sub_1001679C0(v75, v79);
  v85 = OBJC_IVAR____TtC7Journal18FullScreenLinkView_dateLabel;
  v86 = *&v113[OBJC_IVAR____TtC7Journal18FullScreenLinkView_dateLabel];
  sub_100088AC8(v79, v74);
  v87 = *(v80 + 48);
  v88 = v87(v74, 1, v81);
  v89 = v86;
  if (v88 == 1)
  {
    sub_100004F84(v74, &unk_100AD4790);
    v90 = 0;
  }

  else
  {
    v91 = v105;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    static FormatStyleCapitalizationContext.standalone.getter();
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static Date.now.getter();
    sub_100167A30();
    Date.formatted<A>(_:)();
    sub_1000FBBCC(v91);
    (*(v80 + 8))(v74, v81);
    v90 = String._bridgeToObjectiveC()();
  }

  [v89 setText:v90];

  v92 = v113;
  v93 = v114;
  [*&v113[v85] setHidden:{v87(v114, 1, v81) == 1}];
  v94 = *&v92[v85];
  v95 = objc_opt_self();
  v96 = v94;
  v97 = [v95 secondaryLabelColor];
  [v96 setTextColor:v97];

  v98 = qword_100AD03E0;
  v99 = *&v92[v85];
  if (v98 != -1)
  {
    swift_once();
  }

  [v99 setFont:qword_100B303D8];

  [*&v92[v85] setAdjustsFontForContentSizeCategory:1];
  [*&v92[v85] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v92[v85] setAdjustsFontSizeToFitWidth:1];
  [*&v92[v85] setLineBreakMode:0];
  [*&v92[v85] setNumberOfLines:0];
  v100 = v116;
  [v116 addArrangedSubview:*&v92[v85]];
  v101 = *&v92[v110];
  sub_100760CA8(v101, 1);

  sub_100004F84(v93, &unk_100AD4790);
  return v92;
}

id sub_10016791C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001679C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100167A30()
{
  result = qword_100AD1F88;
  if (!qword_100AD1F88)
  {
    _s23YearAdaptiveFormatStyleVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1F88);
  }

  return result;
}

void sub_100167B1C(char a1)
{
  if (a1)
  {
    v3 = sub_10032C5FC(a1);
    FilterOption.description.getter(a1);
    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() tokenWithIcon:v3 text:v4];

    [v5 setRepresentedObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    v6 = [v1 searchBar];
    v7 = [v6 searchTextField];

    v8 = v5;
    v9 = [v7 tokens];
    sub_100168AC4();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setTokens:isa];
  }
}

id sub_100167D7C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC7Journal23JournalSearchController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchTokens] = _swiftEmptyArrayStorage;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for JournalSearchController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_100167EA8(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal23JournalSearchController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchTokens] = _swiftEmptyArrayStorage;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalSearchController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100167F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalSearchController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100168030(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = v39 - v3;
  v5 = [a1 searchBar];
  v6 = [v5 text];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = [a1 searchBar];
  v11 = [v10 searchTextField];

  v12 = [v11 tokens];
  sub_100168AC4();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_1000961EC(v7, v9);
  v16 = v15;
  *&v46[0] = 12369903;
  v17 = static String._uncheckedFromUTF8(_:)();
  if (v16)
  {
    if (v14 == v17 && v16 == v18)
    {
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v20 = (HIBYTE(v9) & 0xF);
  }

  else
  {
    v20 = (v7 & 0xFFFFFFFFFFFFLL);
  }

  if (v20)
  {
    goto LABEL_16;
  }

  if (v13 >> 62)
  {
LABEL_52:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

LABEL_53:

    v33 = v43;
    v34 = &v43[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText];
    *v34 = 0;
    *(v34 + 1) = 0xE000000000000000;

    *&v33[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchTokens] = _swiftEmptyArrayStorage;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10055AA58();
      return swift_unknownObjectRelease();
    }

    return result;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_53;
  }

LABEL_16:
  v21 = &v43[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText];
  if (v7 == *&v43[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText] && v9 == *&v43[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchText + 8] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v22 = *&v43[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchTokens];

    v23 = sub_1007ED038(v13, v22);

    if (v23)
    {
LABEL_20:
    }
  }

  *v21 = v7;
  v21[1] = v9;

  *&v43[OBJC_IVAR____TtC7Journal23JournalSearchController_currentSearchTokens] = v13;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    if (v20)
    {
      goto LABEL_58;
    }
  }

  v39[1] = Strong;
  if (v13 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v20;
    v41 = v7;
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_56:
    v42 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v25 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = v20;
  v41 = v7;
  if (!v25)
  {
    goto LABEL_56;
  }

LABEL_24:
  v7 = 0;
  v42 = _swiftEmptyArrayStorage;
  v39[0] = v4;
  do
  {
    v4 = v7;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v26 = *(v13 + 8 * v4 + 32);
      }

      v20 = v26;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if ([v26 representedObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v44 = 0u;
        v45 = 0u;
      }

      v46[0] = v44;
      v46[1] = v45;
      if (*(&v45 + 1))
      {
        break;
      }

      sub_1000261D4(v46);
LABEL_27:
      ++v4;
      if (v7 == v25)
      {
        v4 = v39[0];
        goto LABEL_57;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v27 = v47;
    if (v47 == 14)
    {
      goto LABEL_27;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1003E4DB8(0, *(v42 + 2) + 1, 1, v42);
    }

    v30 = *(v42 + 2);
    v29 = *(v42 + 3);
    v20 = (v30 + 1);
    if (v30 >= v29 >> 1)
    {
      v42 = sub_1003E4DB8((v29 > 1), v30 + 1, 1, v42);
    }

    v31 = v42;
    *(v42 + 2) = v20;
    v31[v30 + 32] = v27;
    v4 = v39[0];
  }

  while (v7 != v25);
LABEL_57:

  v7 = v41;
  sub_10055A250(v42, v41, v9);

  swift_unknownObjectRelease();
  if (v40)
  {
LABEL_58:
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
    type metadata accessor for MainActor();
    v36 = v43;
    v37 = static MainActor.shared.getter();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = &protocol witness table for MainActor;
    v38[4] = v7;
    v38[5] = v9;
    v38[6] = v36;
    sub_1003E9628(0, 0, v4, &unk_100943D40, v38);
  }
}

uint64_t sub_10016867C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100168718, v8, v7);
}

uint64_t sub_100168718()
{
  if (qword_100ACF9B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1001687E4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100168DC4(v3, v2);
}

uint64_t sub_1001687E4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_10016890C, v4, v3);
}

uint64_t sub_10016890C()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10055A678(v0[9], v0[2], v0[3]);
    swift_unknownObjectRelease();
  }

  v1 = v0[1];

  return v1();
}

unint64_t sub_100168AC4()
{
  result = qword_100AD5178;
  if (!qword_100AD5178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5178);
  }

  return result;
}

uint64_t sub_100168B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10016867C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100168BD8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD5180);
  sub_10000617C(v0, qword_100AD5180);
  return Logger.init(subsystem:category:)();
}

id sub_100168C58()
{
  v0 = type metadata accessor for JournalSpotlightManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1[15] = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  qword_100B2F3D0 = result;
  return result;
}

id sub_100168D14()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1[15] = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100168DC4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for CSSearchQuery.Results.Item();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for CSSearchQuery.Results();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100168FD4, v2, 0);
}

uint64_t sub_100168FD4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  [*(v1 + 112) cancel];
  sub_100169B20(v3, v2);
  v4 = objc_allocWithZone(CSSearchQuery);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithQueryString:v5 queryContext:0];
  v0[19] = v6;

  v7 = *(v1 + 112);
  *(v1 + 112) = v6;
  v8 = v6;

  CSSearchQuery.results.getter();
  sub_100169CB8();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_100169134;

  return sub_1007AB554();
}

uint64_t sub_100169134(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *(*v2 + 128);
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 40);
  if (v1)
  {
    v9 = sub_10016982C;
  }

  else
  {
    v9 = sub_1001692C4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001692C4()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[8];
    v32 = *(v3 + 16);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = (v3 + 8);
    v31 = *(v3 + 72);
    v29 = (v4 + 48);
    v6 = _swiftEmptyArrayStorage;
    v27 = v4;
    v28 = (v4 + 32);
    do
    {
      v33 = v6;
      v7 = v0[15];
      v8 = v0[13];
      v10 = v0[6];
      v9 = v0[7];
      v32(v7, v5, v8);
      v11 = CSSearchQuery.Results.Item.item.getter();
      v12 = [v11 uniqueIdentifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.init(string:)();

      (*v30)(v7, v8);
      if ((*v29)(v10, 1, v9) == 1)
      {
        sub_100004F84(v0[6], &unk_100AD6DD0);
        v6 = v33;
      }

      else
      {
        v13 = *v28;
        (*v28)(v0[9], v0[6], v0[7]);
        v6 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1003E4AE0(0, v33[2] + 1, 1, v33);
        }

        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1003E4AE0(v14 > 1, v15 + 1, 1, v6);
        }

        v16 = v0[9];
        v17 = v0[7];
        v6[2] = v15 + 1;
        v13(v6 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v15, v16, v17);
      }

      v5 += v31;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[10];
  v21 = v0[5];
  v22 = swift_allocObject();
  v0[23] = v22;
  *(v22 + 16) = v6;
  *(v22 + 24) = v21;
  (*(v18 + 104))(v19, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v20);

  v23 = swift_task_alloc();
  v0[24] = v23;
  v24 = sub_1000F24EC(&unk_100AEED10);
  *v23 = v0;
  v23[1] = sub_100169620;
  v25 = v0[12];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v25, sub_100169D0C, v22, v24);
}

uint64_t sub_100169620()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];
    v7 = v2[5];
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_10016977C, v7, 0);
  }
}

uint64_t sub_10016977C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016982C()
{
  if (qword_100ACF9A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD5180);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in getEntryIdsForSearchText %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  v7 = *(v0 + 152);

  v8 = *(v0 + 8);

  return v8(_swiftEmptyArrayStorage);
}

uint64_t sub_100169AB0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100169B20(uint64_t a1, void *a2)
{
  v4 = 12;
  sub_1001999C0(0, 12, 0);
  v5 = "ent";
  do
  {
    v14 = *(v5 - 1);
    v15 = *v5;
    swift_bridgeObjectRetain_n();
    v6._countAndFlagsBits = 0x22203D3D20;
    v6._object = 0xE500000000000000;
    String.append(_:)(v6);
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 0x74647763222ALL;
    v8._object = 0xE600000000000000;
    String.append(_:)(v8);

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_1001999C0((v9 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    v11 = &_swiftEmptyArrayStorage[2 * v10];
    v11[4] = v14;
    v11[5] = v15;
    v5 += 16;
    --v4;
  }

  while (v4);
  swift_arrayDestroy();
  sub_1000F24EC(&qword_100AD60A0);
  sub_10009BDD4();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

unint64_t sub_100169CB8()
{
  result = qword_100AD51C0;
  if (!qword_100AD51C0)
  {
    type metadata accessor for JournalSpotlightManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD51C0);
  }

  return result;
}

uint64_t sub_100169D0C@<X0>(uint64_t *a1@<X8>)
{
  result = static JournalDataUtilities.fetchObjectIds(objectURIs:context:)();
  *a1 = result;
  return result;
}

id sub_100169E78(void *a1)
{
  v3 = [v1 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setImage:a1];
  [v3 setIsAccessibilityElement:1];
  v4 = UIAccessibilityTraitImage;
  v5 = [v3 accessibilityTraits];
  if ((v4 & ~v5) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityTraits:v6 | v5];
  [v3 setAccessibilityIgnoresInvertColors:1];

  return v3;
}

id sub_100169FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasPhotoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10016A0C8(double a1, double a2)
{
  [v2 frame];
  v5 = 0.0;
  if (v6 > a2)
  {
    [v2 frame];
    v5 = (v7 - a2) * 0.5;
  }

  [v2 frame];
  if (v8 > a1)
  {
    [v2 frame];
  }

  return v5;
}

void sub_10016A1AC(void *a1)
{
  v1 = a1;
  sub_10016A170();
}

id sub_10016A1F4(void *a1)
{
  v3 = *(v1 + qword_100AD5288);
  [v3 zoomScale];
  v5 = 1.0;
  if (v6 == 1.0)
  {
    [a1 locationInView:*(v1 + qword_100AD52A8)];
    v8 = v7;
    v10 = v9;
    [v3 frame];
    v12 = v11 / 3.0;
    [v3 frame];
    v14 = v8 - v12 * 0.5;
    v5 = v10 - v13 / 3.0 * 0.5;
    v15 = "zoomToRect:animated:";
    v16 = v3;
    v4 = v12;
  }

  else
  {
    v15 = "setZoomScale:animated:";
    v14 = 1.0;
    v16 = v3;
  }

  return [v16 v15];
}

void sub_10016A314(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10016A1F4(v4);
}

uint64_t sub_10016A37C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10016A6C4(v7);

  return v9 & 1;
}

id sub_10016A3DC()
{
  v0 = sub_10016A738();

  return v0;
}

uint64_t sub_10016A410(void *a1)
{
  [a1 contentSize];
  [a1 setContentInset:{sub_10016A0C8(v3, v4)}];
  v5 = *((swift_isaMask & *v1) + 0x120);

  return v5();
}

void sub_10016A4A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10016A410(v4);
}

id sub_10016A534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenZoomableMediaAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10016A590(uint64_t a1)
{
  sub_10010CA14(*(a1 + qword_100AD52A0), *(a1 + qword_100AD52A0 + 8));
  v2 = *(a1 + qword_100AD52A8);
}

void sub_10016A628()
{
  *(v0 + qword_100AD5290) = 0;
  *(v0 + qword_100AD5298) = 0;
  v1 = (v0 + qword_100AD52A0);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + qword_100AD52B0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10016A6C4(void *a1)
{
  v2 = *(v1 + qword_100AD5290);
  if (!v2)
  {
    return 0;
  }

  sub_10016A778();
  v4 = v2;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

unint64_t sub_10016A778()
{
  result = qword_100AD5338;
  if (!qword_100AD5338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5338);
  }

  return result;
}

uint64_t sub_10016A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v6[8] = v7;
  v6[9] = v9;

  return _swift_task_switch(sub_10016A85C, v7, v9);
}

uint64_t sub_10016A85C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = objc_allocWithZone(AVSpeechUtterance);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:v4];
  v0[10] = v5;

  LODWORD(v6) = 0.5;
  [v5 setRate:v6];
  LODWORD(v7) = 1.0;
  [v5 setVolume:v7];
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() voiceWithIdentifier:v8];

  [v5 setVoice:v9];
  v10 = swift_task_alloc();
  v0[11] = v10;
  v10[2] = v2;
  v10[3] = v5;
  v10[4] = v1;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_10016AA2C;
  v12 = v0[2];
  v13 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v11, v12, v13, 0xD00000000000001ALL, 0x80000001008E1C20, sub_10016B610, v10, &type metadata for () + 8);
}

uint64_t sub_10016AA2C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10016AB70, v3, v2);
}

uint64_t sub_10016AB70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a4;
  v25 = a3;
  v5 = type metadata accessor for URL();
  v20 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD4E78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v24 = *(a2 + OBJC_IVAR____TtC7Journal30RandomAudioRecordingsGenerator_synthesizer);
  (*(v9 + 16))(v12, v22, v8);
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v6 + 80) + v15 + 8) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v14, v12, v8);
  *(v17 + v15) = v13;
  (*(v6 + 32))(v17 + v16, v21, v20);
  aBlock[4] = sub_10016B61C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016B4D8;
  aBlock[3] = &unk_100A5EED0;
  v18 = _Block_copy(aBlock);

  [v24 writeUtterance:v25 toBufferCallback:v18];
  _Block_release(v18);
}

void sub_10016AEAC(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v41 = a1;
    if ([v6 frameLength])
    {
      swift_beginAccess();
      if (!*(a3 + 16))
      {
        sub_1000F24EC(&unk_100AE88B0);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_100940080;
        v44[1] = 0xEA0000000000203ALL;
        v8 = v41;
        v9 = [v6 format];
        v10 = [v9 settings];

        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = Dictionary.description.getter();
        v13 = v12;

        v14._countAndFlagsBits = v11;
        v14._object = v13;
        String.append(_:)(v14);

        *(v7 + 56) = &type metadata for String;
        *(v7 + 32) = 0x73676E6974746553;
        *(v7 + 40) = 0xEA0000000000203ALL;
        print(_:separator:terminator:)();

        v15 = [v6 format];

        v16 = [v15 settings];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = objc_allocWithZone(AVAudioFile);
        URL._bridgeToObjectiveC()(v18);
        v20 = v19;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v44[0] = 0;
        v22 = [v17 initForWriting:v20 settings:isa commonFormat:3 interleaved:0 error:v44];

        v23 = v44[0];
        if (!v22)
        {
          v36 = v44[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
LABEL_18:
          sub_1000F24EC(&unk_100AE88B0);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_100940080;
          v42 = 0;
          v43 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);
          v38._countAndFlagsBits = 0x1000000000000026;
          v38._object = 0x80000001008E1C80;
          String.append(_:)(v38);
          sub_1000F24EC(&qword_100AD5BC0);
          _print_unlocked<A, B>(_:_:)();
          v39 = v42;
          v40 = v43;
          *(v37 + 56) = &type metadata for String;
          *(v37 + 32) = v39;
          *(v37 + 40) = v40;
          print(_:separator:terminator:)();

          return;
        }

        swift_beginAccess();
        v24 = *(a3 + 16);
        *(a3 + 16) = v22;
        v25 = v23;
      }

      swift_beginAccess();
      v26 = *(a3 + 16);
      if (!v26)
      {

        return;
      }

      v42 = 0;
      v27 = v26;
      if ([v27 writeFromBuffer:v6 error:&v42])
      {
        v28 = v42;

        return;
      }

      v35 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_18;
    }

    sub_1000F24EC(&qword_100AD4E78);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    sub_1000F24EC(&unk_100AE88B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100940080;
    _StringGuts.grow(_:)(32);

    v30 = [a1 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    *(v29 + 56) = &type metadata for String;
    *(v29 + 32) = 0x100000000000001ELL;
    *(v29 + 40) = 0x80000001008E1C60;
    print(_:separator:terminator:)();
  }
}

void sub_10016B4D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10016B5A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RandomAudioRecordingsGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10016B61C(void *a1)
{
  v3 = *(sub_1000F24EC(&qword_100AD4E78) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for URL();
  v6 = *(v1 + v5);

  sub_10016AEAC(a1, v1 + v4, v6);
}

uint64_t sub_10016B70C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B2F3D8);
  sub_10000617C(v0, qword_100B2F3D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10016B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1000F24EC(&qword_100AD5408);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v7;
  v4[23] = v6;

  return _swift_task_switch(sub_10016B8D8, v7, v6);
}

uint64_t sub_10016B8D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 104);
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
  }

  v7 = 0;
  v27 = *(v4 + 104) + 32;
  v28 = **(v4 + 96);
  v29 = v5 & 0xC000000000000001;
  v30 = v6;
  do
  {
    v31 = v7;
    if (v29)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v27 + 8 * v7);
    }

    v10 = v9;
    v12 = *(v4 + 144);
    v11 = *(v4 + 152);
    v13 = *(v4 + 112);
    v14 = type metadata accessor for TaskPriority();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v11, 1, 1, v14);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v10;
    sub_1000082B4(v11, v12, &qword_100AD5170);
    LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);

    v17 = v10;
    v18 = *(v4 + 144);
    if (v11 == 1)
    {
      sub_100004F84(*(v4 + 144), &qword_100AD5170);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v15 + 8))(v18, v14);
    }

    if (v16[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = &unk_100943F28;
    *(v22 + 24) = v16;

    sub_1000F24EC(&unk_100AE9460);
    v23 = v21 | v19;
    if (v21 | v19)
    {
      v23 = v4 + 16;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v19;
      *(v4 + 40) = v21;
    }

    ++v7;
    v8 = *(v4 + 152);
    *(v4 + 48) = 1;
    *(v4 + 56) = v23;
    *(v4 + 64) = v28;
    swift_task_create();

    sub_100004F84(v8, &qword_100AD5170);
  }

  while (v30 != v31 + 1);
LABEL_18:
  *(v4 + 72) = _swiftEmptyArrayStorage;
  sub_1000F24EC(&unk_100AE9460);
  TaskGroup.makeAsyncIterator()();
  *(v4 + 192) = _swiftEmptyArrayStorage;
  v24 = static MainActor.shared.getter();
  *(v4 + 200) = v24;
  v25 = swift_task_alloc();
  *(v4 + 208) = v25;
  *v25 = v4;
  v25[1] = sub_10016BCDC;
  a4 = *(v4 + 120);
  a3 = &protocol witness table for MainActor;
  v6 = v4 + 80;
  a2 = v24;

  return TaskGroup.Iterator.next(isolation:)(v6, a2, a3, a4);
}

uint64_t sub_10016BCDC()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_10016BE20, v3, v2);
}

uint64_t sub_10016BE20()
{
  v1 = v0[10];
  if (v1 == 1)
  {
    v6 = v0[24];
    v7 = v0[11];
    (*(v0[16] + 8))(v0[17], v0[15]);

    *v7 = v6;

    v8 = v0[1];

    return v8();
  }

  else
  {
    if (v1)
    {
      v2 = v1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10015DB5C(v1);
      v0[24] = v0[9];
    }

    v3 = static MainActor.shared.getter();
    v0[25] = v3;
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_10016BCDC;
    v5 = v0[15];

    return TaskGroup.Iterator.next(isolation:)(v0 + 10, v3, &protocol witness table for MainActor, v5);
  }
}

uint64_t sub_10016BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_10016C0A0;

  return sub_10016E908(a5);
}

uint64_t sub_10016C0A0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10016C1A0, 0, 0);
}

uint64_t sub_10016C1C0(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10016C2B4;

  return v5(v2 + 16);
}

uint64_t sub_10016C2B4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10016C3E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10016BFF4(a1, v4, v5, v7, v6);
}

uint64_t sub_10016C4A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_10016C1C0(a1, v4);
}

char *sub_10016C55C(char *a1, uint64_t a2, uint64_t a3)
{
  v272 = a3;
  v273 = a1;
  v268 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v268);
  v269 = &v247 - v4;
  v267 = type metadata accessor for PhotoLibraryAssetMetadata();
  v266 = *(v267 - 8);
  __chkstk_darwin(v267);
  v265 = &v247 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v257);
  v258 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v285 = *(v7 - 8);
  v286 = v7;
  v8 = __chkstk_darwin(v7);
  v247 = &v247 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v252 = &v247 - v11;
  v12 = __chkstk_darwin(v10);
  v253 = &v247 - v13;
  __chkstk_darwin(v12);
  v260 = &v247 - v14;
  v278 = type metadata accessor for UUID();
  v284 = *(v278 - 8);
  v15 = __chkstk_darwin(v278);
  v275 = &v247 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v283 = &v247 - v17;
  v288 = type metadata accessor for AssetType();
  v276 = *(v288 - 8);
  v18 = __chkstk_darwin(v288);
  v274 = &v247 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v282 = (&v247 - v20);
  v21 = sub_1000F24EC(&unk_100AD4790);
  v22 = __chkstk_darwin(v21 - 8);
  v256 = &v247 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v263 = (&v247 - v25);
  v26 = __chkstk_darwin(v24);
  v264 = &v247 - v27;
  __chkstk_darwin(v26);
  v279 = (&v247 - v28);
  v29 = sub_1000F24EC(&unk_100AD6DD0);
  v30 = __chkstk_darwin(v29 - 8);
  v250 = &v247 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v259 = (&v247 - v33);
  v34 = __chkstk_darwin(v32);
  v254 = &v247 - v35;
  v36 = __chkstk_darwin(v34);
  v270 = (&v247 - v37);
  v38 = __chkstk_darwin(v36);
  v261 = (&v247 - v39);
  __chkstk_darwin(v38);
  v281 = (&v247 - v40);
  v280 = type metadata accessor for AssetSource();
  v41 = *(v280 - 8);
  v42 = __chkstk_darwin(v280);
  v255 = &v247 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v262 = &v247 - v45;
  v46 = __chkstk_darwin(v44);
  v271 = &v247 - v47;
  v48 = __chkstk_darwin(v46);
  v277 = &v247 - v49;
  __chkstk_darwin(v48);
  v51 = &v247 - v50;
  v52 = type metadata accessor for UTType();
  v53 = *(v52 - 8);
  v54 = __chkstk_darwin(v52);
  v249 = &v247 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v58 = &v247 - v57;
  __chkstk_darwin(v56);
  v60 = &v247 - v59;
  v61 = *(v53 + 16);
  v251 = a2;
  v248 = v61;
  v61(&v247 - v59, a2, v52);
  static UTType.image.getter();
  sub_100170184(&qword_100AD5410, &type metadata accessor for UTType);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v53 + 8);
  v62(v58, v52);
  if (a2)
  {
    v62(v60, v52);
    v287 = v41;
    v63 = *(v41 + 16);
    v64 = v280;
    (v63)(v51, v272, v280);
    v270 = v63;
    v65 = v285;
    v66 = v286;
    v67 = *(v285 + 16);
    v68 = v281;
    v272 = v285 + 16;
    v263 = v67;
    (v67)(v281, v273, v286);
    (*(v65 + 56))(v68, 0, 1, v66);
    sub_1005778EC();
    v69 = v276;
    v70 = v282;
    (*(v276 + 104))(v282, enum case for AssetType.photo(_:), v288);
    v71 = v277;
    v273 = v51;
    (v63)(v277, v51, v64);
    v72 = v283;
    UUID.init()();
    v73 = objc_allocWithZone(type metadata accessor for PhotoAsset());
    *&v73[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = 0;
    v74 = v284;
    v75 = *(v284 + 16);
    v76 = v275;
    v77 = v278;
    v262 = (v284 + 16);
    v259 = v75;
    (v75)(v275, v72, v278);
    v78 = v274;
    (*(v69 + 16))(v274, v70, v288);
    v79 = v271;
    (v270)(v271, v71, v64);
    v80 = sub_100285908(v76, v78, v79);
    v83 = *(v74 + 8);
    v82 = v74 + 8;
    v81 = v83;
    v83(v283, v77);
    v84 = *(v287 + 8);
    v287 += 8;
    v277 = v84;
    (v84)(v71, v64);
    (*(v69 + 8))(v282, v288);
    v85 = v261;
    sub_1000082B4(v281, v261, &unk_100AD6DD0);
    v86 = v64;
    if ((*(v285 + 48))(v85, 1, v286) == 1)
    {
      sub_100004F84(v85, &unk_100AD6DD0);
    }

    else
    {
      v113 = v81;
      v284 = v82;
      v114 = v260;
      (*(v285 + 32))(v260, v85, v286);
      v115 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v116 = String._bridgeToObjectiveC()();

      v117 = [v115 fileExistsAtPath:v116];

      if (v117)
      {
        sub_1000F24EC(&unk_100AD4780);
        v118 = swift_allocObject();
        *(v118 + 16) = xmmword_100941D50;
        v119 = v258;
        v120 = v286;
        (v263)(v258, v114, v286);
        type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v121 = v283;
        UUID.init()();
        v122 = UUID.uuidString.getter();
        v124 = v123;
        v113(v121, v278);
        type metadata accessor for AssetAttachment(0);
        v125 = swift_allocObject();
        *(v125 + 16) = 0;
        sub_1001700CC(v119, v125 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
        v126 = (v125 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v126 = v122;
        v126[1] = v124;
        *(v118 + 32) = v125;
        (*(v285 + 8))(v114, v120);
        v127 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        *&v80[v127] = v118;
      }

      else
      {
        v171 = v286;
        if (qword_100ACFE08 != -1)
        {
          swift_once();
        }

        v172 = type metadata accessor for Logger();
        sub_10000617C(v172, qword_100AE55E0);
        v173 = v253;
        v174 = v260;
        (v263)(v253, v260, v171);
        v175 = v80;
        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v282 = v179;
          v288 = swift_slowAlloc();
          v289 = v288;
          *v178 = 138412802;
          *(v178 + 4) = v175;
          *v179 = v175;
          *(v178 + 12) = 2080;
          LODWORD(v276) = v177;
          v180 = v283;
          v181 = v278;
          (v259)(v283, &v175[OBJC_IVAR____TtC7Journal5Asset_id], v278);
          sub_100170184(&qword_100AE19B0, &type metadata accessor for UUID);
          v182 = v175;
          v183 = v174;
          v184 = dispatch thunk of CustomStringConvertible.description.getter();
          v186 = v185;
          v113(v180, v181);
          v187 = sub_100008458(v184, v186, &v289);

          *(v178 + 14) = v187;
          *(v178 + 22) = 2080;
          sub_100170184(&qword_100ADEFD0, &type metadata accessor for URL);
          v188 = v253;
          v189 = dispatch thunk of CustomStringConvertible.description.getter();
          v191 = v190;
          v192 = *(v285 + 8);
          v192(v188, v171);
          v193 = sub_100008458(v189, v191, &v289);

          *(v178 + 24) = v193;
          _os_log_impl(&_mh_execute_header, v176, v276, "%@[%s] failed init imageFile does not exist: %s", v178, 0x20u);
          sub_100004F84(v282, &unk_100AD4BB0);

          swift_arrayDestroy();

          v192(v183, v171);
        }

        else
        {

          v224 = *(v285 + 8);
          v224(v173, v171);
          v224(v174, v171);
        }

        v86 = v280;
      }
    }

    v225 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    v226 = *&v80[v225];
    v227 = v279;
    if (v226 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_33;
      }
    }

    else if (*((v226 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      sub_1000082B4(v227, v264, &unk_100AD4790);
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v109 = v80;
      v297.origin.x = CGRectZero.origin.x;
      v297.origin.y = y;
      v297.size.width = width;
      v297.size.height = height;
      v231 = NSStringFromCGRect(v297);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v298.origin.x = CGRectZero.origin.x;
      v298.origin.y = y;
      v298.size.width = width;
      v298.size.height = height;
      v232 = NSStringFromCGRect(v298);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v299.origin.x = CGRectZero.origin.x;
      v299.origin.y = y;
      v299.size.width = width;
      v299.size.height = height;
      v233 = NSStringFromCGRect(v299);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v234 = v265;
      PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
      sub_100004F84(v279, &unk_100AD4790);
      sub_100004F84(v281, &unk_100AD6DD0);
      (v277)(v273, v86);
      v235 = v269;
      (*(v266 + 32))(v269, v234, v267);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0);
      v236 = swift_allocObject();
      v237 = *(*v236 + 104);
      v238 = sub_1000F24EC(&qword_100AD5B20);
      (*(*(v238 - 8) + 56))(v236 + v237, 1, 1, v238);
      *(v236 + *(*v236 + 112)) = xmmword_100941EE0;
      sub_10017005C(v235, v236 + *(*v236 + 120));
      *&v109[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v236;

      return v109;
    }

    sub_100170130();
    swift_allocError();
    *v239 = 0;
    swift_willThrow();

    sub_100004F84(v227, &unk_100AD4790);
    sub_100004F84(v281, &unk_100AD6DD0);
    (v277)(v273, v86);
    if (qword_100ACF9B8 != -1)
    {
      swift_once();
    }

    v240 = type metadata accessor for Logger();
    sub_10000617C(v240, qword_100B2F3D8);
    swift_errorRetain();
    v241 = Logger.logObject.getter();
    v242 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v241, v242))
    {
      v243 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      *v243 = 138412290;
      swift_errorRetain();
      v245 = _swift_stdlib_bridgeErrorToNSError();
      *(v243 + 4) = v245;
      *v244 = v245;
      _os_log_impl(&_mh_execute_header, v241, v242, "Failed to create photo/video asset: %@", v243, 0xCu);
      sub_100004F84(v244, &unk_100AD4BB0);
    }

    else
    {
    }

    return 0;
  }

  static UTType.movie.getter();
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  v62(v58, v52);
  if (v87)
  {
    v62(v60, v52);
    v287 = v41;
    v88 = (v41 + 16);
    v89 = *(v41 + 16);
    v90 = v262;
    v91 = v280;
    (v89)(v262, v272, v280);
    v281 = v88;
    v279 = v89;
    v93 = v285;
    v92 = v286;
    v94 = *(v285 + 16);
    v95 = v270;
    v272 = v285 + 16;
    v261 = v94;
    (v94)(v270, v273, v286);
    (*(v93 + 56))(v95, 0, 1, v92);
    sub_1005778EC();
    v96 = v276;
    v97 = v282;
    (*(v276 + 104))(v282, enum case for AssetType.video(_:), v288);
    v98 = v91;
    (v89)(v277, v90, v91);
    v99 = v283;
    UUID.init()();
    v100 = objc_allocWithZone(type metadata accessor for VideoAsset());
    *&v100[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
    v101 = v284;
    v102 = v275;
    v103 = v278;
    (*(v284 + 16))(v275, v99, v278);
    v104 = v274;
    (*(v96 + 16))(v274, v97, v288);
    v105 = v271;
    v106 = v277;
    (v279)(v271, v277, v98);
    v107 = v104;
    v108 = v285;
    v109 = sub_100285908(v102, v107, v105);
    v110 = *(v101 + 8);
    v284 = v101 + 8;
    v110(v99, v103);
    v281 = *(v287 + 8);
    v287 += 8;
    (v281)(v106, v98);
    v111 = v286;
    (*(v96 + 8))(v282, v288);
    v112 = v254;
    sub_1000082B4(v270, v254, &unk_100AD6DD0);
    if ((*(v108 + 48))(v112, 1, v111) == 1)
    {
      sub_100004F84(v112, &unk_100AD6DD0);
    }

    else
    {
      v153 = v252;
      (*(v108 + 32))(v252, v112, v111);
      v154 = v258;
      (v261)(v258, v153, v111);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v155 = v283;
      UUID.init()();
      v156 = UUID.uuidString.getter();
      v158 = v157;
      v110(v155, v278);
      type metadata accessor for AssetAttachment(0);
      v159 = swift_allocObject();
      *(v159 + 16) = 0;
      sub_1001700CC(v154, v159 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
      v160 = (v159 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v160 = v156;
      v160[1] = v158;
      v161 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v109[v161] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v109[v161] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      (*(v108 + 8))(v153, v111);
    }

    v162 = v263;
    sub_1000082B4(v263, v264, &unk_100AD4790);
    v163 = CGRectZero.origin.y;
    v164 = CGRectZero.size.width;
    v165 = CGRectZero.size.height;
    v291.origin.x = CGRectZero.origin.x;
    v291.origin.y = v163;
    v291.size.width = v164;
    v291.size.height = v165;
    v166 = NSStringFromCGRect(v291);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v292.origin.x = CGRectZero.origin.x;
    v292.origin.y = v163;
    v292.size.width = v164;
    v292.size.height = v165;
    v167 = NSStringFromCGRect(v292);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v293.origin.x = CGRectZero.origin.x;
    v293.origin.y = v163;
    v293.size.width = v164;
    v293.size.height = v165;
    v168 = NSStringFromCGRect(v293);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v169 = v265;
    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v162, &unk_100AD4790);
    sub_100004F84(v270, &unk_100AD6DD0);
    v170 = &v290;
  }

  else
  {
    static UTType.livePhoto.getter();
    v128 = dispatch thunk of static Equatable.== infix(_:_:)();
    v62(v58, v52);
    v62(v60, v52);
    if ((v128 & 1) == 0)
    {
      if (qword_100ACF9B8 != -1)
      {
        swift_once();
      }

      v194 = type metadata accessor for Logger();
      sub_10000617C(v194, qword_100B2F3D8);
      v195 = v249;
      v248(v249, v251, v52);
      v196 = Logger.logObject.getter();
      v197 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v289 = v199;
        *v198 = 136315138;
        sub_100170184(&qword_100AD5418, &type metadata accessor for UTType);
        v200 = dispatch thunk of CustomStringConvertible.description.getter();
        v202 = v201;
        v62(v195, v52);
        v203 = sub_100008458(v200, v202, &v289);

        *(v198 + 4) = v203;
        _os_log_impl(&_mh_execute_header, v196, v197, "Unknown mimetype: %s", v198, 0xCu);
        sub_10000BA7C(v199);
      }

      else
      {

        v62(v195, v52);
      }

      return 0;
    }

    v287 = v41;
    v129 = (v41 + 16);
    v130 = *(v41 + 16);
    v131 = v255;
    v132 = v280;
    (v130)(v255, v272, v280);
    v281 = v129;
    v279 = v130;
    v134 = v285;
    v133 = v286;
    v135 = *(v285 + 16);
    v136 = v259;
    v272 = v285 + 16;
    v270 = v135;
    (v135)(v259, v273, v286);
    (*(v134 + 56))(v136, 0, 1, v133);
    sub_1005778EC();
    v137 = v276;
    v138 = v282;
    (*(v276 + 104))(v282, enum case for AssetType.video(_:), v288);
    v139 = v132;
    (v130)(v277, v131, v132);
    v140 = v283;
    UUID.init()();
    v141 = objc_allocWithZone(type metadata accessor for VideoAsset());
    *&v141[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
    v142 = v284;
    v143 = v275;
    v144 = v278;
    (*(v284 + 16))(v275, v140, v278);
    v145 = v274;
    (*(v137 + 16))(v274, v138, v288);
    v146 = v271;
    v147 = v277;
    (v279)(v271, v277, v139);
    v148 = v145;
    v149 = v285;
    v109 = sub_100285908(v143, v148, v146);
    v150 = *(v142 + 8);
    v284 = v142 + 8;
    v150(v140, v144);
    v281 = *(v287 + 8);
    v287 += 8;
    (v281)(v147, v139);
    v151 = v286;
    (*(v137 + 8))(v282, v288);
    v152 = v250;
    sub_1000082B4(v259, v250, &unk_100AD6DD0);
    if ((*(v149 + 48))(v152, 1, v151) == 1)
    {
      sub_100004F84(v152, &unk_100AD6DD0);
    }

    else
    {
      v204 = v247;
      (*(v149 + 32))(v247, v152, v151);
      v205 = v258;
      (v270)(v258, v204, v151);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v206 = v283;
      UUID.init()();
      v207 = UUID.uuidString.getter();
      v209 = v208;
      v150(v206, v278);
      type metadata accessor for AssetAttachment(0);
      v210 = swift_allocObject();
      *(v210 + 16) = 0;
      sub_1001700CC(v205, v210 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
      v211 = (v210 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v211 = v207;
      v211[1] = v209;
      v212 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v109[v212] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v109[v212] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      (*(v149 + 8))(v204, v151);
    }

    v213 = v256;
    sub_1000082B4(v256, v264, &unk_100AD4790);
    v214 = CGRectZero.origin.y;
    v215 = CGRectZero.size.width;
    v216 = CGRectZero.size.height;
    v294.origin.x = CGRectZero.origin.x;
    v294.origin.y = v214;
    v294.size.width = v215;
    v294.size.height = v216;
    v217 = NSStringFromCGRect(v294);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v295.origin.x = CGRectZero.origin.x;
    v295.origin.y = v214;
    v295.size.width = v215;
    v295.size.height = v216;
    v218 = NSStringFromCGRect(v295);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v296.origin.x = CGRectZero.origin.x;
    v296.origin.y = v214;
    v296.size.width = v215;
    v296.size.height = v216;
    v219 = NSStringFromCGRect(v296);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v169 = v265;
    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v213, &unk_100AD4790);
    sub_100004F84(v259, &unk_100AD6DD0);
    v170 = &v287;
  }

  (v281)(*(v170 - 32), v280);
  v220 = v269;
  (*(v266 + 32))(v269, v169, v267);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&unk_100AEE0B0);
  v221 = swift_allocObject();
  v222 = *(*v221 + 104);
  v223 = sub_1000F24EC(&qword_100AD5B20);
  (*(*(v223 - 8) + 56))(v221 + v222, 1, 1, v223);
  *(v221 + *(*v221 + 112)) = xmmword_100941EE0;
  sub_10017005C(v220, v221 + *(*v221 + 120));
  *&v109[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v221;

  return v109;
}

uint64_t sub_10016E908(uint64_t a1)
{
  v1[4] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for AssetSource();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD7C40);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for UTType();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v6;
  v1[21] = v5;

  return _swift_task_switch(sub_10016EB48, v6, v5);
}

uint64_t sub_10016EB48()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[4];
  v5 = *(v3 + 56);
  v5(v0[13], 1, 1, v2);
  UTType.init(importedAs:conformingTo:)();
  UTType.identifier.getter();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 hasItemConformingToTypeIdentifier:v6];

  v8 = *(v3 + 8);
  v0[22] = v8;
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = v2;
  v10 = v8;
  v8(v1, v9);
  if (v7)
  {
    v11 = v0[19];
    v5(v0[13], 1, 1, v0[14]);
    UTType.init(importedAs:conformingTo:)();

    if (v11)
    {
      swift_getObjectType();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v0[24] = v12;
    v0[25] = v14;
    v25 = sub_10016EFD0;
LABEL_16:

    return _swift_task_switch(v25, v12, v14);
  }

  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[4];
  static UTType.image.getter();
  UTType.identifier.getter();
  v18 = String._bridgeToObjectiveC()();

  LODWORD(v17) = [v17 hasItemConformingToTypeIdentifier:v18];

  v19 = v16;
  v20 = v10;
  v10(v15, v19);
  if (v17)
  {
    static UTType.image.getter();
LABEL_12:
    v30 = v0[19];

    if (v30)
    {
      swift_getObjectType();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v31;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v0[34] = v12;
    v0[35] = v14;
    v25 = sub_10016FA68;
    goto LABEL_16;
  }

  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[4];
  static UTType.movie.getter();
  UTType.identifier.getter();
  v24 = String._bridgeToObjectiveC()();

  LODWORD(v23) = [v23 hasItemConformingToTypeIdentifier:v24];

  v20(v21, v22);
  if (v23)
  {
    static UTType.movie.getter();
    goto LABEL_12;
  }

  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[4];
  static UTType.livePhoto.getter();
  UTType.identifier.getter();
  v29 = String._bridgeToObjectiveC()();

  LOBYTE(v28) = [v28 hasItemConformingToTypeIdentifier:v29];

  v20(v26, v27);
  if (v28)
  {
    static UTType.livePhoto.getter();
    goto LABEL_12;
  }

  if (qword_100ACF9B8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000617C(v32, qword_100B2F3D8);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Failed to find proper UTType of incoming asset", v35, 2u);
  }

  v36 = v0[1];

  return v36(0);
}

uint64_t sub_10016EFD0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[26] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_10016F0DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001008E1D20, sub_100170054, v4, &type metadata for Data);
}

uint64_t sub_10016F0DC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_10016F7C8;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_10016F1F8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10016F1F8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  *(v0 + 232) = *(v0 + 16);
  v1(v2, v3);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  return _swift_task_switch(sub_10016F284, v4, v5);
}

uint64_t sub_10016F284()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[19];
  (*(v0[10] + 104))(v0[12], enum case for AssetSource.external(_:), v0[9]);

  sub_100049ED8(v1, v2);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_10016F380;
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[12];

  return sub_1001B8F60(v3, &protocol witness table for MainActor, v5, v6, v7);
}

uint64_t sub_10016F380(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_10016F5B0;
  }

  else
  {
    v4[33] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_10016F4CC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10016F4CC()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];

  sub_1000340DC(v3, v2);

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_10016F5B0()
{
  v1 = v0[29];
  v2 = v0[30];

  sub_1000340DC(v1, v2);
  if (qword_100ACF9B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100B2F3D8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not load PencilKit drawing: %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10016F7C8()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[14];

  v1(v2, v3);
  v4 = v0[20];
  v5 = v0[21];

  return _swift_task_switch(sub_10016F860, v4, v5);
}

uint64_t sub_10016F860()
{

  if (qword_100ACF9B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100B2F3D8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not load PencilKit drawing: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_10016FA68()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[36] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_10016FB68;
  v6 = v0[5];
  v7 = v0[6];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001008E1D00, sub_10017004C, v4, v7);
}

uint64_t sub_10016FB68()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_10016FEC4;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_10016FCAC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10016FCAC()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_10016FD10, v1, v2);
}

uint64_t sub_10016FD10()
{
  v13 = v0[22];
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];

  (*(v8 + 56))(v9, 0, 1, v7);
  (*(v8 + 32))(v6, v9, v7);
  (*(v4 + 104))(v3, enum case for AssetSource.external(_:), v5);
  v10 = sub_10016C55C(v6, v1, v3);
  (*(v4 + 8))(v3, v5);
  (*(v8 + 8))(v6, v7);
  v13(v1, v2);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10016FEC4()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_10016FF28, v1, v2);
}

uint64_t sub_10016FF28()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  (*(v5 + 56))(v6, 1, 1, v4);
  v1(v2, v3);
  sub_100004F84(v6, &unk_100AD6DD0);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_10017005C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AEE0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001700CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100170130()
{
  result = qword_100AD5420;
  if (!qword_100AD5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5420);
  }

  return result;
}

uint64_t sub_100170184(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001701CC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001754E0(*a1);
  *a2 = result;
  return result;
}

id sub_1001701F8()
{
  v1 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator____lazy_storage___pickerPresentationHandler;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator____lazy_storage___pickerPresentationHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator____lazy_storage___pickerPresentationHandler);
  }

  else
  {
    v4 = type metadata accessor for PickerPresentationHandler();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC7JournalP33_5C692566AD29E277CBCA17308A33F5D425PickerPresentationHandler_coordinator] = v0;
    swift_unownedRetain();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, "init");
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100170298()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (!v2)
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = [v2 window];

    if (v3)
    {
      v4 = v3;
      [v4 frame];
      [v4 safeAreaInsets];
      [v4 safeAreaInsets];
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 traitCollection];
  if ([v7 horizontalSizeClass] == 1)
  {
    v8 = [v7 userInterfaceIdiom];

    if (v8 != 5)
    {
      v9 = [v6 view];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 window];

        if (v11)
        {
          [v11 safeAreaInsets];

          return;
        }

        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_12:
}

void sub_100170468()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) - 2 < 2)
  {
    sub_100170298();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong view];

      if (v3)
      {
LABEL_4:
        [v3 safeAreaInsets];

        goto LABEL_27;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_27;
  }

  if (!*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl))
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 contentInset];
      [v5 setContentInset:?];
    }

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      goto LABEL_30;
    }

    return;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    if ([v7 isFirstResponder])
    {
      goto LABEL_15;
    }
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    goto LABEL_19;
  }

  v8 = v9;
  if (([v9 isFirstResponder] & 1) == 0)
  {

    goto LABEL_19;
  }

LABEL_15:
  v10 = [v8 inputAccessoryView];

  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v28.origin.x = v12;
    v28.origin.y = v14;
    v28.size.width = v16;
    v28.size.height = v18;
    CGRectGetHeight(v28);
  }

LABEL_19:
  if (_UISolariumEnabled())
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 navigationController];

      if (v21)
      {
        [v21 isToolbarHidden];
      }
    }
  }

  if (*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastReportedKeyboardHeight) > 0.0)
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v3 = [v22 view];

      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

LABEL_27:
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    [v24 contentInset];
    [v25 setContentInset:?];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
LABEL_30:
    v26 = v6;
    [v6 verticalScrollIndicatorInsets];
    [v26 setVerticalScrollIndicatorInsets:?];
  }
}

uint64_t sub_1001707E8(char a1, char a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &aBlock - v10;
  if (a2)
  {
    *(v3 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = type metadata accessor for CanvasContentInputType();
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      sub_100177AB4(v11, v8);
      sub_1003C858C(v8);

      if (*(v13 + OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay) == 1)
      {
        sub_100661550();
      }

      swift_unknownObjectRelease();
      sub_100004F84(v11, &qword_100AD57F0);
    }
  }

  if (a1)
  {
    v15 = 0.2;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = objc_opt_self();
  v24 = DebugData.init(name:);
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100006C7C;
  v23 = &unk_100A5F798;
  v17 = _Block_copy(&aBlock);

  v24 = sub_100177CB0;
  v25 = v3;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10003264C;
  v23 = &unk_100A5F7C0;
  v18 = _Block_copy(&aBlock);

  [v16 animateWithDuration:0 delay:v17 options:v18 animations:v15 completion:0.0];
  _Block_release(v18);
  _Block_release(v17);
}

void sub_100170AF4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"keyboardDidShow" name:UIKeyboardDidShowNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"keyboardDidHide" name:UIKeyboardDidHideNotification object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:"textViewDidBeginEditing:" name:UITextViewTextDidBeginEditingNotification object:0];
}

void sub_100170C4C(char a1)
{
  if ((a1 & 1) == 0 && (v2 = swift_unknownObjectWeakLoadStrong()) != 0 || (v2 = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v3;
    if (Strong)
    {
      v6 = [Strong isBeingDismissed];

      if ((v6 & 1) == 0 && *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
      {
        sub_100173CDC(1, v1, DebugData.init(name:), &unk_100A5F540, sub_1002E55E8);
      }
    }

    v8 = v5;
    if ([v8 isFirstResponder])
    {
    }

    else
    {
      v7 = [v8 canBecomeFirstResponder];

      if (v7)
      {
        [v8 becomeFirstResponder];
      }
    }
  }
}

void sub_100170DC0()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) != 1)
  {
    if (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v6 = Strong, v7 = [Strong isFirstResponder], v6, (v7) || (v8 = swift_unknownObjectWeakLoadStrong()) != 0 && (v9 = v8, v10 = objc_msgSend(v8, "isFirstResponder"), v9, v10))
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "keyboardDidBeginEditing - Hardware keyboard detected!", v13, 2u);
      }

      v20 = 0u;
      v21 = 0u;
      sub_1000F24EC(&qword_100AD5808);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940080;
      v19[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19[2] = v15;
      v16 = UIKeyboardWillShowNotification;
      AnyHashable.init<A>(_:)();
      type metadata accessor for CGRect(0);
      *(inited + 96) = v17;
      v18 = swift_allocObject();
      *(inited + 72) = v18;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      sub_1003630D0(inited);
      swift_setDeallocating();
      sub_100004F84(inited + 32, &unk_100AD5810);
      Notification.init(name:object:userInfo:)();
      sub_100171154();
      (*(v2 + 8))(v4, v1);
      sub_100171914();
    }
  }
}

void sub_100171154()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD57F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v66 - v7;
  __chkstk_darwin(v6);
  v10 = v66 - v9;
  v11 = Notification.userInfo.getter();
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v66[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66[2] = v13;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v14 = sub_100361EDC(v67), (v15 & 1) == 0))
  {

    sub_100177B94(v67);
LABEL_15:
    v68 = 0u;
    v69 = 0u;
    goto LABEL_16;
  }

  sub_10000BA20(*(v12 + 56) + 32 * v14, &v68);
  sub_100177B94(v67);

  if (!*(&v69 + 1))
  {
LABEL_16:
    sub_100004F84(&v68, &qword_100AD13D0);
    return;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    if (v16 = v67[3], (v17 = swift_unknownObjectWeakLoadStrong()) != 0) && (v18 = v17, v19 = [v17 isFirstResponder], v18, (v19) || (v20 = swift_unknownObjectWeakLoadStrong()) != 0 && (v21 = v20, v22 = objc_msgSend(v20, "isFirstResponder"), v21, v22))
    {
      v23 = *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);
      *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) = 1;
      v24 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastReportedKeyboardHeight;
      *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastReportedKeyboardHeight) = v16;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        if ([Strong isEditing])
        {
          v27 = [v26 inputAccessoryView];
          if (v27)
          {
            v28 = v27;
            [v27 frame];
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = v35;

            v70.origin.x = v30;
            v70.origin.y = v32;
            v70.size.width = v34;
            v70.size.height = v36;
            Height = CGRectGetHeight(v70);
          }

          else
          {
            Height = 0.0;
          }

          *(v1 + v24) = *(v1 + v24) - Height;
          v51 = swift_unknownObjectWeakLoadStrong();
          if (v51 && (v52 = v51, v53 = [v51 isBeingDismissed], v52, (v53 & 1) == 0) && *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3 || (v54 = swift_unknownObjectWeakLoadStrong()) == 0)
          {
          }

          else
          {
            v55 = v54;
            *v10 = 0;
            v56 = type metadata accessor for CanvasContentInputType();
            swift_storeEnumTagMultiPayload();
            (*(*(v56 - 8) + 56))(v10, 0, 1, v56);
            swift_getKeyPath();
            swift_getKeyPath();
            static UIViewController.ViewLoading.subscript.getter();

            sub_100177AB4(v10, v8);
            sub_1003C858C(v8);

            if (*(v55 + OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay) == 1)
            {
              sub_100661550();
            }

            swift_unknownObjectRelease();

            sub_100004F84(v10, &qword_100AD57F0);
          }

LABEL_41:
          if (v23 == 2)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1003BECA8(1);
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v63 = swift_unknownObjectWeakLoadStrong();
            if (!v63 || (v64 = v63, v65 = [v63 isBeingDismissed], v64, (v65 & 1) != 0) || *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) != 3)
            {
              sub_100173CDC(1, v1, DebugData.init(name:), &unk_100A5F540, sub_1002E55E8);
            }
          }

          return;
        }
      }

      v38 = swift_unknownObjectWeakLoadStrong();
      if (v38)
      {
        v39 = v38;
        if ([v38 isEditing] && ((v40 = objc_msgSend(v39, "inputAccessoryView")) == 0 ? (v50 = 0.0) : (v41 = v40, objc_msgSend(v40, "frame"), v43 = v42, v45 = v44, v47 = v46, v49 = v48, v41, v71.origin.x = v43, v71.origin.y = v45, v71.size.width = v47, v71.size.height = v49, v50 = CGRectGetHeight(v71)), ((*(v1 + v24) = *(v1 + v24) - v50, (v57 = swift_unknownObjectWeakLoadStrong()) == 0) || (v58 = v57, v59 = objc_msgSend(v57, "isBeingDismissed"), v58, (v59 & 1) != 0) || *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) != 3) && (v60 = swift_unknownObjectWeakLoadStrong()) != 0))
        {
          v61 = v60;
          *v5 = 1;
          v62 = type metadata accessor for CanvasContentInputType();
          swift_storeEnumTagMultiPayload();
          (*(*(v62 - 8) + 56))(v5, 0, 1, v62);
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          sub_100177AB4(v5, v8);
          sub_1003C858C(v8);

          if (*(v61 + OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay) == 1)
          {
            sub_100661550();
          }

          swift_unknownObjectRelease();

          sub_100004F84(v5, &qword_100AD57F0);
        }

        else
        {
        }
      }

      goto LABEL_41;
    }
  }
}

void sub_100171914()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) == 1)
  {
    if (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v2 = Strong, v3 = [Strong isFirstResponder], v2, (v3) || (v4 = swift_unknownObjectWeakLoadStrong()) != 0 && (v5 = v4, v6 = objc_msgSend(v4, "isFirstResponder"), v5, v6))
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "keyboardDidShow - Changing to keyboard constraint.", v9, 2u);
      }

      sub_100170468();
    }
  }
}

void sub_100171A5C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD57F0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl;
  if (*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) == 1)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "keyboardDidHide", v11, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v13 = Strong, v14 = [Strong isBeingDismissed], v13, (v14 & 1) == 0) && *(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
    {
      *(v1 + v8) = 3;
    }

    else
    {
      *(v1 + v8) = 0;
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = type metadata accessor for CanvasContentInputType();
        (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        sub_100177AB4(v7, v5);
        sub_1003C858C(v5);

        if (*(v16 + OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay) == 1)
        {
          sub_100661550();
        }

        swift_unknownObjectRelease();
        sub_100004F84(v7, &qword_100AD57F0);
      }
    }

    sub_100170468();
  }
}

uint64_t sub_100171D00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

BOOL sub_100171D44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

void sub_100171DA0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v9 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl;
  v10 = &off_100AD5000;
  if (*(a4 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) != 2)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v12 = *(a4 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle);
  if (v12 != 2)
  {
    if (v12 == 3)
    {
      if (a2 != 3)
      {
        goto LABEL_12;
      }
    }

    else if (a2 & 0xFE) == 2 || ((v12 ^ a2))
    {
      goto LABEL_12;
    }

    a3 = 0;
  }

LABEL_12:
  if (*(a4 + v9) != 2)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        if (a2 == 3)
        {
          goto LABEL_23;
        }
      }

      else if ((a2 & 0xFE) == 2)
      {
        if (a3)
        {
          v44 = 0.2;
        }

        else
        {
          v44 = 0.0;
        }

        v45 = objc_opt_self();
        v57 = DebugData.init(name:);
        v58 = 0;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_100006C7C;
        v56 = &unk_100A5F130;
        v46 = _Block_copy(&aBlock);

        v57 = sub_100175E5C;
        v58 = a4;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_10003264C;
        v56 = &unk_100A5F158;
        v47 = _Block_copy(&aBlock);

        [v45 animateWithDuration:0 delay:v46 options:v47 animations:v44 completion:0.0];
        _Block_release(v47);
        _Block_release(v46);
      }
    }

    v48 = swift_allocObject();
    swift_weakInit();
    v49 = a1;

    sub_1001754F0(a3 & 1, a4, v48, v49, a2, a3 & 1);

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003BECA8(a3 & 1);
    swift_unknownObjectRelease();
  }

LABEL_15:
  if (a2 != 2)
  {
    if (a2 != 3)
    {
      v13 = a1;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412546;
        *(v16 + 4) = v13;
        *v17 = v13;
        *(v16 + 12) = 1024;
        *(v16 + 14) = a2 & 1;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "presentPicker - Presenting %@ w/ sheet presentation (expandable=%{BOOL}d).", v16, 0x12u);
        sub_100004F84(v17, &unk_100AD4BB0);

        v10 = &off_100AD5000;
      }

      sub_100172F48(v13, a2);
      goto LABEL_29;
    }

LABEL_23:
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      v25 = "presentPicker - Presenting %@ w/ inspector presentation.";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v20, v21, v25, v22, 0xCu);
      sub_100004F84(v23, &unk_100AD4BB0);

      v10 = &off_100AD5000;

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v26 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v26;
    *v23 = v26;
    v27 = v26;
    v25 = "presentPicker - Presenting %@ w/o presentation style.";
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28 && (v29 = v28, v30 = [v28 isFirstResponder], v29, v30) || (v31 = swift_unknownObjectWeakLoadStrong()) != 0 && (v32 = v31, v33 = objc_msgSend(v31, "isFirstResponder"), v32, v33))
  {
    if (a2 != 3)
    {
      [v52 becomeFirstResponder];
    }
  }

  *(a4 + v9) = 3;
  swift_unknownObjectWeakAssign();
  *(v10[141] + a4) = a2;
  v34 = swift_allocObject();
  v34[2] = DebugData.init(name:);
  v34[3] = 0;
  v34[4] = a1;
  if (a2 == 3)
  {
    v35 = a1;
    v36 = [v52 viewIfLoaded];
    if (v36 && (v37 = v36, v38 = [v36 window], v37, v38) && (v51 = objc_msgSend(v38, "rootViewController"), v38, v51))
    {
      type metadata accessor for SceneSplitViewController(0);
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        v40 = v39;
        v50 = v35;
        sub_1002EAF9C(v50, a3 & 1, v40, v50);

        v41 = v50;
      }

      else
      {

        v41 = v51;
      }
    }

    else
    {

      v41 = v52;
    }
  }

  else
  {
    v57 = sub_1001754D4;
    v58 = v34;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100006C7C;
    v56 = &unk_100A5F0E0;
    v42 = _Block_copy(&aBlock);
    v43 = a1;

    [v52 presentViewController:v43 animated:a3 & 1 completion:v42];

    _Block_release(v42);
  }
}

void sub_1001725B8(void *a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4();
    return;
  }

  v65 = Strong;
  v13 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl;
  if (*(v5 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) != 2)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  v15 = *(v5 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle);
  if (v15 != 2)
  {
    if (v15 == 3)
    {
      if (a2 != 3)
      {
        goto LABEL_13;
      }
    }

    else if (a2 & 0xFE) == 2 || ((v15 ^ a2))
    {
      goto LABEL_13;
    }

    a3 = 0;
  }

LABEL_13:
  if (*(v5 + v13) != 2)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {
        if (a2 == 3)
        {
          v64 = a4;
          goto LABEL_25;
        }
      }

      else if ((a2 & 0xFE) == 2)
      {
        if (a3)
        {
          v51 = 0.2;
        }

        else
        {
          v51 = 0.0;
        }

        v63 = objc_opt_self();
        v70 = DebugData.init(name:);
        v71 = 0;
        aBlock = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_100006C7C;
        v69 = &unk_100A5F5B8;
        v52 = a4;
        v53 = _Block_copy(&aBlock);

        v70 = sub_100177CB0;
        v71 = v6;
        aBlock = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_10003264C;
        v69 = &unk_100A5F5E0;
        v54 = _Block_copy(&aBlock);

        [v63 animateWithDuration:0 delay:v53 options:v54 animations:v51 completion:0.0];
        _Block_release(v54);
        v55 = v53;
        a4 = v52;
        _Block_release(v55);
      }
    }

    v56 = swift_allocObject();
    swift_weakInit();

    v57 = a1;

    sub_100175E84(a3 & 1, v6, v56, v57, a2, a3 & 1, a4, a5);

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003BECA8(a3 & 1);
    swift_unknownObjectRelease();
  }

LABEL_16:
  v64 = a4;
  if (a2 != 2)
  {
    if (a2 != 3)
    {
      v16 = a1;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v59 = a3;
        v20 = swift_slowAlloc();
        *v19 = 138412546;
        *(v19 + 4) = v16;
        *v20 = v16;
        *(v19 + 12) = 1024;
        *(v19 + 14) = a2 & 1;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, "presentPicker - Presenting %@ w/ sheet presentation (expandable=%{BOOL}d).", v19, 0x12u);
        sub_100004F84(v20, &unk_100AD4BB0);
        a3 = v59;
      }

      sub_100172F48(v16, a2);
      goto LABEL_31;
    }

LABEL_25:
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v60 = a3;
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "presentPicker - Presenting %@ w/ inspector presentation.", v25, 0xCu);
      sub_100004F84(v26, &unk_100AD4BB0);
      a3 = v60;

LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v28 = a1;
  v23 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v29))
  {
    v61 = a3;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v28;
    *v31 = v28;
    v32 = v28;
    _os_log_impl(&_mh_execute_header, v23, v29, "presentPicker - Presenting %@ w/o presentation style.", v30, 0xCu);
    sub_100004F84(v31, &unk_100AD4BB0);

    a3 = v61;
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33 && (v34 = v33, v35 = [v33 isFirstResponder], v34, (v35 & 1) != 0) || (v36 = swift_unknownObjectWeakLoadStrong()) != 0 && (v37 = v36, v38 = objc_msgSend(v36, "isFirstResponder"), v37, v38))
  {
    if (a2 != 3)
    {
      [v65 becomeFirstResponder];
    }
  }

  *(v6 + v13) = 3;
  swift_unknownObjectWeakAssign();
  *(v6 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) = a2;
  v39 = swift_allocObject();
  v39[2] = v64;
  v39[3] = a5;
  v39[4] = a1;
  if (a2 == 3)
  {
    v40 = a1;
    swift_retain_n();
    v41 = v40;
    v42 = [v65 viewIfLoaded];
    if (v42 && (v43 = v42, v44 = [v42 window], v43, v44) && (v62 = objc_msgSend(v44, "rootViewController"), v44, v62))
    {
      type metadata accessor for SceneSplitViewController(0);
      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v46 = v45;
        v58 = v41;

        sub_1002EB680(v58, a3 & 1, v46, v64, a5, v58);

        v47 = v58;
      }

      else
      {

        v47 = v62;
      }
    }

    else
    {

      v47 = v65;
    }
  }

  else
  {
    v70 = sub_100177CB8;
    v71 = v39;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_100006C7C;
    v69 = &unk_100A5F590;
    v48 = _Block_copy(&aBlock);
    v49 = a1;
    swift_retain_n();
    v50 = v49;

    [v65 presentViewController:v50 animated:a3 & 1 completion:v48];

    _Block_release(v48);
  }
}

uint64_t sub_100172EB4(uint64_t a1, void *a2, uint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001725B8(a2, a3, a4 & 1, a5, a6);
  }

  return result;
}

void sub_100172F48(void *a1, char a2)
{
  if ((a2 & 0xFE) != 2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = [a1 sheetPresentationController];
      if (v4)
      {
        v5 = v4;
        v6 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();
        [a1 setModalInPresentation:{v6, Strong}];
        v7 = String._bridgeToObjectiveC()();
        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        v9 = [v19 traitCollection];
        if ([v9 horizontalSizeClass] == 1)
        {
          v10 = [v9 userInterfaceIdiom];

          if (v10 != 5)
          {
            sub_1000065A8(0, &qword_100AD85C0);
            swift_allocObject();
            swift_weakInit();
            v11 = v7;

            static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
            if (a2)
            {
              goto LABEL_20;
            }

LABEL_18:
            if (_swiftEmptyArrayStorage >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_23;
              }
            }

            else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

LABEL_20:
            v12 = [objc_opt_self() largeDetent];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_23:
            sub_1000065A8(0, &qword_100AD85C0);
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v5 setDetents:isa];

            [v5 setLargestUndimmedDetentIdentifier:v7];
            if (!v6)
            {
              v14 = [v19 p_ivar_lyt[394]];
              if ([v14 horizontalSizeClass] == 1)
              {
                v15 = [v14 userInterfaceIdiom];

                v16 = v15 != 5;
LABEL_28:
                [v5 setPrefersGrabberVisible:v16];
                v17 = sub_1001701F8();
                [v5 setDelegate:v17];

                return;
              }
            }

            v16 = 0;
            goto LABEL_28;
          }
        }

        else
        {
        }

        if (a2)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }
  }
}

void sub_100173354(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = UIAccessibilityLayoutChangedNotification;
  v5 = [a3 view];
  UIAccessibilityPostNotification(v4, v5);
}

uint64_t sub_1001733D0(uint64_t result)
{
  v2 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl;
  if (*(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) != 2)
  {
    v3 = v1;
    v4 = result;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "willPresentSuggestionPicker", v7, 2u);
    }

    v8 = objc_opt_self();
    v17 = DebugData.init(name:);
    v18 = 0;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100006C7C;
    v16 = &unk_100A5F4F0;
    v9 = _Block_copy(&v13);

    v17 = sub_100177B34;
    v18 = v3;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10003264C;
    v16 = &unk_100A5F518;
    v10 = _Block_copy(&v13);

    [v8 animateWithDuration:0 delay:v9 options:v10 animations:0.2 completion:0.0];
    _Block_release(v10);
    _Block_release(v9);

    *(v3 + v2) = 2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong becomeFirstResponder];
    }

    return sub_100173CDC(v4 & 1, v3, DebugData.init(name:), &unk_100A5F540, sub_1002E55E8);
  }

  return result;
}

void sub_100173644()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);
  if (v1 != 3)
  {
    if (v1 != 2)
    {
      return;
    }

    if (qword_100AD0138 != -1)
    {
      swift_once();
    }

    v2 = sub_1000F24EC(&unk_100AD57F8);
    sub_10000617C(v2, qword_100B2FE68);
    swift_allocObject();
    swift_weakInit();

    Tips.Event.sendDonation<>(_:)();
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "pickerDidPresent", v5, 2u);
  }

  sub_100170468();
}

void sub_1001737C8(char a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);
  sub_1001707E8(a1, 1);
  if (v4 == 2)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "dismissPicker - Dismissing suggestion sheet.", v7, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003BECA8(a1 & 1);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v15 = Strong;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v15;
        *v13 = v9;
        v14 = v15;
        _os_log_impl(&_mh_execute_header, v10, v11, "dismissPicker - Dismissing %@.", v12, 0xCu);
        sub_100004F84(v13, &unk_100AD4BB0);
      }

      sub_100173CDC(a1 & 1, a2, DebugData.init(name:), &unk_100A5F068, sub_1002E5EE0);
    }
  }
}

void sub_100173A50(char a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);
  sub_1001707E8(a1, 1);
  if (v7 == 2)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "dismissPicker - Dismissing suggestion sheet.", v10, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003BECA8(a1 & 1);
      swift_unknownObjectRelease();
    }

    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    a2();
    return;
  }

  v12 = Strong;
  v18 = Strong;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v18;
    *v16 = v12;
    v17 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "dismissPicker - Dismissing %@.", v15, 0xCu);
    sub_100004F84(v16, &unk_100AD4BB0);
  }

  sub_100173F3C(a1 & 1, a2, a3);
}

uint64_t sub_100173CDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
      v13 = v11;
      goto LABEL_6;
    }

    v13 = v12;
    if ([v12 isBeingDismissed])
    {

LABEL_6:
      goto LABEL_7;
    }

    v15 = [v13 sheetPresentationController];
    if (v15)
    {
      v16 = v15;
      [v15 setDelegate:0];
    }

    if (*(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
    {
      v17 = [v13 viewIfLoaded];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 window];

        if (v19)
        {
          v20 = [v19 rootViewController];

          if (v20)
          {
            type metadata accessor for SceneSplitViewController(0);
            v21 = swift_dynamicCastClass();
            if (!v21)
            {

              return swift_unknownObjectWeakAssign();
            }

            a5(a1 & 1, v21);
          }
        }
      }
    }

    else
    {
      v23[4] = a3;
      v23[5] = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_100006C7C;
      v23[3] = a4;
      v22 = _Block_copy(v23);

      [v13 dismissViewControllerAnimated:a1 & 1 completion:v22];

      _Block_release(v22);
    }

    return swift_unknownObjectWeakAssign();
  }

LABEL_7:

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100173F3C(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      v11 = v9;
      goto LABEL_6;
    }

    v11 = v10;
    if ([v10 isBeingDismissed])
    {

LABEL_6:
      goto LABEL_7;
    }

    v13 = [v11 sheetPresentationController];
    if (v13)
    {
      v14 = v13;
      [v13 setDelegate:0];
    }

    if (*(v4 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
    {
      v15 = [v11 viewIfLoaded];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 window];

        if (v17)
        {
          v18 = [v17 rootViewController];

          if (v18)
          {
            type metadata accessor for SceneSplitViewController(0);
            if (!swift_dynamicCastClass())
            {

              return swift_unknownObjectWeakAssign();
            }

            sub_1002E635C(a1 & 1, a2, a3);
          }
        }
      }
    }

    else
    {
      v20[4] = a2;
      v20[5] = a3;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_100006C7C;
      v20[3] = &unk_100A5F4C8;
      v19 = _Block_copy(v20);

      [v11 dismissViewControllerAnimated:a1 & 1 completion:v19];

      _Block_release(v19);
    }

    return swift_unknownObjectWeakAssign();
  }

LABEL_7:
  a2();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1001741BC()
{
  v1 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_100038534(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CanvasLayoutCoordinator()
{
  result = qword_100AD5498;
  if (!qword_100AD5498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017430C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1001743E8()
{
  *(v0 + 16) = 0x3FD999999999999ALL;
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator____lazy_storage___pickerPresentationHandler) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_isTrackingPickerDismissGesture) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastReportedKeyboardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) = 2;
  *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) = 0;
  return v0;
}

void sub_1001744FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong transitionCoordinator];

    if (v3)
    {
      if (*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) == 3)
      {
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v4, v5, "pickerWillPresent - Animating bottom constraint to picker constant.", v6, 2u);
        }

        v7 = swift_allocObject();
        swift_weakInit();
        v9[4] = sub_100177B24;
        v9[5] = v7;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 1107296256;
        v9[2] = sub_1002E6808;
        v9[3] = &unk_100A5F4A0;
        v8 = _Block_copy(v9);

        [v3 animateAlongsideTransition:0 completion:v8];
        _Block_release(v8);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1001746DC(void *a1)
{
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100173644();
    }
  }

  return result;
}

uint64_t sub_100174744()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v1 + 16))(v3, result + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_logger, v0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sent NewSuggestionsTip.suggestionSheetDidOpen donation", v7, 2u);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_1001748CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong transitionCoordinator];

    if (v3)
    {
      if (*(v0 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) == 3)
      {
        v4 = v0;
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v5, v6, "pickerDismissGestureStarted", v7, 2u);
        }

        *(v4 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_isTrackingPickerDismissGesture) = 1;
        v15 = DebugData.init(name:);
        v16 = 0;
        v11 = _NSConcreteStackBlock;
        v12 = 1107296256;
        v13 = sub_1002E6808;
        v14 = &unk_100A5F450;
        v8 = _Block_copy(&v11);
        v9 = swift_allocObject();
        swift_weakInit();
        v15 = sub_100177AAC;
        v16 = v9;
        v11 = _NSConcreteStackBlock;
        v12 = 1107296256;
        v13 = sub_1002E6808;
        v14 = &unk_100A5F478;
        v10 = _Block_copy(&v11);

        [v3 animateAlongsideTransition:v8 completion:v10];
        _Block_release(v10);
        _Block_release(v8);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_100174B28(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100174B98([a1 isCancelled] ^ 1);
  }

  return result;
}

void sub_100174B98(char a1)
{
  v3 = sub_1000F24EC(&qword_100AD57F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl;
  if (*(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) == 3)
  {
    v10 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_isTrackingPickerDismissGesture;
    if (*(v1 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_isTrackingPickerDismissGesture) == 1)
    {
      v11 = v1;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = a1 & 1;
        _os_log_impl(&_mh_execute_header, v12, v13, "pickerDismissGestureEnded didDismiss=%{BOOL}d", v14, 8u);
      }

      *(v11 + v10) = 0;
      if (a1)
      {
        *(v11 + v9) = 0;
        swift_unknownObjectWeakAssign();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = type metadata accessor for CanvasContentInputType();
          (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          sub_100177AB4(v8, v6);
          sub_1003C858C(v6);

          if (*(v16 + OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay) == 1)
          {
            sub_100661550();
          }

          swift_unknownObjectRelease();
          sub_100004F84(v8, &qword_100AD57F0);
        }

        sub_100170468();
      }
    }
  }
}

uint64_t sub_100174EB0(void *a1)
{
  swift_beginAccess();
  *&result = COERCE_DOUBLE(swift_weakLoadStrong());
  if (*&result != 0.0)
  {
    [a1 maximumDetentValue];
    v4 = v3;

    *&result = v4 * 0.4;
  }

  return result;
}

id sub_100175050(void *a1)
{
  result = [a1 selectedDetentIdentifier];
  if (result)
  {
    v2 = result;
    swift_unownedRetainStrong();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000065A8(0, &qword_100AD4C80);
      sub_1000F24EC(&qword_100AD57E8);
      if (swift_dynamicCast())
      {
        v3 = *(&v6 + 1);
        if (*(&v6 + 1))
        {
          v4 = v7;
          sub_10000CA14(&v5, *(&v6 + 1));
          (*(v4 + 8))(v2, v3, v4);

          return sub_10000BA7C(&v5);
        }
      }

      else
      {
        v7 = 0;
        v5 = 0u;
        v6 = 0u;
      }
    }

    else
    {

      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }

    return sub_100004F84(&v5, &qword_100AD57E0);
  }

  return result;
}

id sub_100175250()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerPresentationHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CanvasLayoutCoordinator.PickerPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for CanvasLayoutCoordinator.PickerPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100175438(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100175454(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_100175480()
{
  result = qword_100AD57D0;
  if (!qword_100AD57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD57D0);
  }

  return result;
}

unint64_t sub_1001754E0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1001754F0(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for JournalFeatureFlags();
  v72 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 33) = a6;
  *(v15 + 40) = DebugData.init(name:);
  *(v15 + 48) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_retain_n();
    v20 = a4;
    goto LABEL_8;
  }

  LODWORD(v71) = a1;
  v73 = a5;
  v74 = Strong;
  v17 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_presentedPicker;
  v18 = swift_unknownObjectWeakLoadStrong();
  swift_retain_n();
  v19 = a4;
  if (!v18)
  {

    goto LABEL_7;
  }

  v69 = v19;
  if ([v18 isBeingDismissed])
  {

LABEL_7:
    a5 = v73;
LABEL_8:
    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      sub_100171DA0(a4, a5, a6 & 1, v21);
    }

    goto LABEL_10;
  }

  v70 = v18;
  v22 = [v18 sheetPresentationController];
  if (v22)
  {
    v23 = v22;
    [v22 setDelegate:0];
  }

  v24 = v71;
  if (*(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) != 3)
  {
    v79 = sub_100175E60;
    v80 = v15;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_100006C7C;
    v78 = &unk_100A5F2C0;
    v42 = _Block_copy(&aBlock);

    v43 = v70;
    [v70 dismissViewControllerAnimated:v24 & 1 completion:v42];

    _Block_release(v42);
LABEL_10:
    swift_unknownObjectWeakAssign();

    return;
  }

  v68 = v17;
  v25 = v70;
  v26 = [v70 viewIfLoaded];
  if (!v26)
  {

LABEL_27:
    goto LABEL_10;
  }

  v27 = v26;
  v28 = [v26 window];

  if (!v28)
  {

    goto LABEL_27;
  }

  v29 = [v28 rootViewController];

  v67 = v29;
  if (!v29)
  {

    v44 = v74;
LABEL_30:

    goto LABEL_10;
  }

  type metadata accessor for SceneSplitViewController(0);
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    v44 = v67;
    goto LABEL_30;
  }

  v65 = v30;
  LODWORD(v66) = a6 & 1;
  v31 = swift_allocObject();
  v32 = v69;
  *(v31 + 16) = a3;
  *(v31 + 24) = v32;
  *(v31 + 32) = v73;
  *(v31 + 33) = v66;
  *(v31 + 40) = DebugData.init(name:);
  *(v31 + 48) = 0;
  swift_retain_n();
  v33 = v32;
  if (!_UISolariumEnabled())
  {

LABEL_44:

    goto LABEL_10;
  }

  v66 = v33;
  v69 = v31;
  v34 = [objc_opt_self() currentTraitCollection];
  v35 = [v34 userInterfaceIdiom];

  if (v35 != 1)
  {
    v36 = v65;
    if (v35 == 5)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

  v45 = v72;
  (*(v72 + 104))(v14, enum case for JournalFeatureFlags.inspectorColumn(_:), v12);
  v46 = JournalFeatureFlags.isEnabled.getter();
  (*(v45 + 8))(v14, v12);
  v36 = v65;
  if ((v46 & 1) == 0)
  {
LABEL_33:

    goto LABEL_44;
  }

LABEL_21:
  v37 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorRootController;
  v38 = swift_unknownObjectWeakLoadStrong();
  v39 = v69;
  if (!v38)
  {
    swift_beginAccess();
    v47 = swift_weakLoadStrong();
    if (v47)
    {
      v48 = v66;
      sub_100171DA0(v66, v73, a6 & 1, v47);
    }

    else
    {
    }

    goto LABEL_44;
  }

  v40 = *(v36 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView);
  v41 = swift_allocObject();
  v41[2] = sub_1002E9704;
  v41[3] = 0;
  v41[4] = v40;
  v72 = v37;
  if (v71)
  {
    [v40 hideColumn:4];

    goto LABEL_38;
  }

  v71 = objc_opt_self();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_100175E64;
  *(v49 + 24) = v41;
  v79 = sub_100028EF4;
  v80 = v49;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_10001A7D4;
  v78 = &unk_100A5F220;
  v50 = v40;
  v51 = _Block_copy(&aBlock);
  v64[1] = v80;
  v52 = v50;

  [v71 performWithoutAnimation:v51];
  v53 = v51;
  v40 = v50;
  _Block_release(v53);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  v39 = v69;

  if ((v50 & 1) == 0)
  {
LABEL_38:
    v54 = swift_allocObject();
    v54[2] = v36;
    v54[3] = sub_100177C48;
    v54[4] = v39;

    v55 = v67;
    v56 = [v40 transitionCoordinator];
    if (v56)
    {
      v57 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_100175E70;
      *(v58 + 24) = v54;
      v79 = sub_10015E050;
      v80 = v58;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_1002E6808;
      v78 = &unk_100A5F298;
      v59 = _Block_copy(&aBlock);

      [v57 animateAlongsideTransition:0 completion:v59];

      _Block_release(v59);
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = *(v36 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController);
      sub_1000065A8(0, &qword_100AD4C80);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v61 setViewControllers:isa];

      swift_beginAccess();
      v63 = swift_weakLoadStrong();
      if (v63)
      {
        v60 = v66;
        sub_100171DA0(v66, v73, a6 & 1, v63);

        goto LABEL_43;
      }
    }

    v60 = v66;
LABEL_43:
    swift_unknownObjectWeakAssign();

    goto LABEL_44;
  }

  __break(1u);
}

void sub_100175E84(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v76) = a1;
  v15 = type metadata accessor for JournalFeatureFlags();
  v73 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  v78 = a6;
  *(v18 + 33) = a6;
  *(v18 + 40) = a7;
  *(v18 + 48) = a8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_retain_n();
    v25 = a4;
    swift_retain_n();
    v26 = v25;
    goto LABEL_8;
  }

  v75 = a5;
  v74 = a7;
  v77 = Strong;
  v72 = OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_presentedPicker;
  v20 = swift_unknownObjectWeakLoadStrong();
  swift_retain_n();
  v21 = a4;
  swift_retain_n();
  v22 = v21;
  v23 = v20;
  if (!v20)
  {

    goto LABEL_7;
  }

  v24 = v22;
  if ([v23 isBeingDismissed])
  {

LABEL_7:
    a7 = v74;
    a5 = v75;
LABEL_8:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001725B8(a4, a5, v78 & 1, a7, a8);
    }

    goto LABEL_10;
  }

  v27 = [v23 sheetPresentationController];
  if (v27)
  {
    v28 = v24;
    v29 = v23;
    v30 = v27;
    [v27 setDelegate:0];

    v23 = v29;
    v24 = v28;
  }

  if (*(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) != 3)
  {
    v83 = sub_100177C48;
    v84 = v18;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100006C7C;
    v82 = &unk_100A5F748;
    v49 = _Block_copy(&aBlock);

    [v23 dismissViewControllerAnimated:v76 & 1 completion:v49];

    _Block_release(v49);
LABEL_10:
    swift_unknownObjectWeakAssign();

    return;
  }

  v31 = [v23 viewIfLoaded];
  if (!v31)
  {

    goto LABEL_27;
  }

  v32 = v31;
  v71 = v23;
  v33 = [v31 window];

  if (!v33 || (v34 = [v33 rootViewController], v33, (v70 = v34) == 0))
  {

LABEL_27:
    v50 = v77;
LABEL_28:

    goto LABEL_10;
  }

  type metadata accessor for SceneSplitViewController(0);
  v35 = swift_dynamicCastClass();
  if (!v35)
  {

    v50 = v70;
    goto LABEL_28;
  }

  v69 = v35;
  v36 = v78 & 1;
  v37 = v24;
  v38 = swift_allocObject();
  *(v38 + 16) = a3;
  *(v38 + 24) = v37;
  *(v38 + 32) = v75;
  *(v38 + 33) = v36;
  *(v38 + 40) = v74;
  *(v38 + 48) = a8;
  swift_retain_n();
  v39 = v37;
  swift_retain_n();
  v40 = v39;
  if (!_UISolariumEnabled())
  {
    goto LABEL_30;
  }

  v67 = v40;
  v68 = v38;
  v41 = [objc_opt_self() currentTraitCollection];
  v42 = [v41 userInterfaceIdiom];

  if (v42 != 1)
  {
    v43 = v69;
    if (v42 == 5)
    {
      goto LABEL_21;
    }

LABEL_33:

    v51 = v71;
    v40 = v67;
    goto LABEL_43;
  }

  v52 = v73;
  (v73)[13](v17, enum case for JournalFeatureFlags.inspectorColumn(_:), v15);
  v53 = JournalFeatureFlags.isEnabled.getter();
  (v52[1])(v17, v15);
  v43 = v69;
  if ((v53 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v44 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorRootController;
  v45 = swift_unknownObjectWeakLoadStrong();
  if (!v45)
  {
    swift_beginAccess();
    v54 = swift_weakLoadStrong();
    v40 = v67;
    if (v54)
    {
      sub_1001725B8(v67, v75, v78 & 1, v74, a8);

      goto LABEL_31;
    }

LABEL_30:

LABEL_31:

    v51 = v71;
LABEL_43:

    goto LABEL_10;
  }

  v66 = v44;

  v46 = *(v43 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView);
  v47 = swift_allocObject();
  v47[2] = sub_1002E9704;
  v47[3] = 0;
  v47[4] = v46;
  v73 = v46;
  if (v76)
  {
    [v46 hideColumn:4];

    v48 = v68;
    goto LABEL_37;
  }

  v76 = objc_opt_self();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_100177CBC;
  *(v55 + 24) = v47;
  v83 = sub_100177C4C;
  v84 = v55;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_10001A7D4;
  v82 = &unk_100A5F6A8;
  v56 = _Block_copy(&aBlock);
  v57 = v73;

  [v76 performWithoutAnimation:v56];
  _Block_release(v56);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  v48 = v68;
  if ((v56 & 1) == 0)
  {
LABEL_37:
    v58 = swift_allocObject();
    v58[2] = v43;
    v58[3] = sub_100177C48;
    v58[4] = v48;

    v59 = v70;
    v60 = [v73 transitionCoordinator];
    if (v60)
    {
      v61 = v60;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_100177CC0;
      *(v62 + 24) = v58;
      v83 = sub_100177CB4;
      v84 = v62;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81 = sub_1002E6808;
      v82 = &unk_100A5F720;
      v63 = _Block_copy(&aBlock);

      [v61 animateAlongsideTransition:0 completion:v63];

      _Block_release(v63);
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = *(v43 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController);
      sub_1000065A8(0, &qword_100AD4C80);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v64 setViewControllers:isa];

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v40 = v67;
        sub_1001725B8(v67, v75, v78 & 1, v74, a8);

        v51 = v71;
        goto LABEL_42;
      }
    }

    v51 = v71;
    v40 = v67;
LABEL_42:
    swift_unknownObjectWeakAssign();

    goto LABEL_43;
  }

  __break(1u);
}

void sub_1001768A0(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t, id))
{
  v13 = *(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);
  v28 = a3;
  sub_1001707E8(a1, 1);
  if (v13 == 2)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "dismissPicker - Dismissing suggestion sheet.", v16, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003BECA8(a1 & 1);
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    sub_100170C4C(1);
    goto LABEL_11;
  }

  v18 = Strong;
  v27 = a6;
  v19 = Strong;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v26 = a7;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v18;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "dismissPicker - Dismissing %@.", v22, 0xCu);
    sub_100004F84(v23, &unk_100AD4BB0);
    a7 = v26;
  }

  v25 = v28;
  sub_100177634(a1 & 1, a2, v25, a4, a5, v27, a7);

LABEL_11:
}

uint64_t sub_100176B28(char a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_retain_n();
    goto LABEL_7;
  }

  v7 = Strong;
  v8 = swift_unknownObjectWeakLoadStrong();
  swift_retain_n();
  if (!v8)
  {

LABEL_7:
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = sub_100658B00();

      sub_1002B40C8();
    }

    goto LABEL_9;
  }

  if ([v8 isBeingDismissed])
  {

    goto LABEL_7;
  }

  v13 = [v8 sheetPresentationController];
  if (v13)
  {
    v14 = v13;
    [v13 setDelegate:0];
  }

  if (*(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
  {
    v15 = [v8 viewIfLoaded];
    if (v15 && (v16 = v15, v17 = [v15 window], v16, v17) && (v18 = objc_msgSend(v17, "rootViewController"), v17, v18))
    {
      type metadata accessor for SceneSplitViewController(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = v19;

        sub_1002EC6B0(a1 & 1, v20, a3);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    v22[4] = sub_100177980;
    v22[5] = a3;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_100006C7C;
    v22[3] = &unk_100A5F3D8;
    v21 = _Block_copy(v22);

    [v8 dismissViewControllerAnimated:a1 & 1 completion:v21];

    _Block_release(v21);
  }

LABEL_9:
  swift_unknownObjectWeakAssign();
}

void sub_100176E00(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);

  sub_1001707E8(a1, 1);
  if (v6 == 2)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "dismissPicker - Dismissing suggestion sheet.", v9, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003BECA8(a1 & 1);
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = sub_100658B00();

      sub_1002B40C8();
    }

    else
    {
    }

    return;
  }

  v11 = Strong;
  v12 = Strong;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v11;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "dismissPicker - Dismissing %@.", v15, 0xCu);
    sub_100004F84(v16, &unk_100AD4BB0);
  }

  sub_100176B28(a1 & 1, a2, a3);
}

void sub_100177084(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_retain_n();
    v13 = a4;
    goto LABEL_7;
  }

  v10 = Strong;
  v11 = swift_unknownObjectWeakLoadStrong();
  swift_retain_n();
  v12 = a4;
  if (!v11)
  {

    goto LABEL_7;
  }

  v26 = v12;
  if ([v11 isBeingDismissed])
  {

LABEL_7:
    sub_1003BDDC0(a3, a4);
    goto LABEL_8;
  }

  v14 = [v11 sheetPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 setDelegate:0];
  }

  if (*(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
  {
    v16 = [v11 viewIfLoaded];
    if (v16 && (v17 = v16, v18 = [v16 window], v17, v18) && (v19 = objc_msgSend(v18, "rootViewController"), v18, v19))
    {
      type metadata accessor for SceneSplitViewController(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;

        v22 = v26;
        v23 = a1 & 1;
        v24 = v22;
        sub_1002ECC0C(v23, v21, a3, v22);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    aBlock[4] = sub_10017762C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A5F360;
    v25 = _Block_copy(aBlock);

    [v11 dismissViewControllerAnimated:a1 & 1 completion:v25];

    _Block_release(v25);
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
}

void sub_100177384(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);

  v9 = a4;
  sub_1001707E8(a1, 1);
  if (v8 == 2)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "dismissPicker - Dismissing suggestion sheet.", v12, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003BECA8(a1 & 1);
      swift_unknownObjectRelease();
    }

    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    sub_1003BDDC0(a3, v9);

    return;
  }

  v14 = Strong;
  v15 = Strong;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v14;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "dismissPicker - Dismissing %@.", v18, 0xCu);
    sub_100004F84(v19, &unk_100AD4BB0);
  }

  v21 = v9;
  sub_100177084(a1 & 1, a2, a3, v21);
}