void sub_100307BDC()
{
  *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource) = 0;
  v1 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection;
  v2 = objc_allocWithZone(ICFilterSelection);
  sub_1000054A4(0, &unk_1006C2B90);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithFilterTypeSelections:isa joinOperator:0];

  *(v0 + v1) = v4;
  *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries) = 0;
  *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation) = 0;
  v5 = v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_tagRowLimit;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_enabledSections) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem) = 35;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

_UNKNOWN **sub_100307D2C()
{
  v30 = 0;
  v1 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_context];
  if (!v1)
  {
    v15 = 0;
LABEL_7:
    sub_10000C840(v15);
    return &off_10064C848;
  }

  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = v0;
  v2[4] = &v30;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10030E778;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100655DE8;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  [v5 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  if (v30 != 1)
  {
    v15 = sub_10030E778;
    goto LABEL_7;
  }

  v9 = [objc_opt_self() cloudSpecificFilterTypes];
  sub_1000054A4(0, &qword_1006C3F30);
  sub_10030E710();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = 0;
  v12 = v10 & 0xC000000000000001;
  v13 = v10 + 56;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v16 = *(&off_10064C848 + v11 + 32);
    v17 = v16 - 1;
    if ((v16 - 1) > 0x21 || ((0x3FFFFE7FFuLL >> v17) & 1) == 0)
    {
      goto LABEL_21;
    }

    v18 = [objc_allocWithZone(NSNumber) initWithInteger:qword_100542A40[v17]];
    if (v12)
    {
      v19 = __CocoaSet.contains(_:)();

      if (v19)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    if (!*(v10 + 16) || (v20 = NSObject._rawHashValue(seed:)(*(v10 + 40)), v21 = -1 << *(v10 + 32), v22 = v20 & ~v21, ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
    {
LABEL_20:

      v12 = v10 & 0xC000000000000001;
LABEL_21:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100189704(0, v14[2] + 1, 1);
        v14 = aBlock[0];
      }

      v28 = v14[2];
      v27 = v14[3];
      if (v28 >= v27 >> 1)
      {
        sub_100189704((v27 > 1), v28 + 1, 1);
        v14 = aBlock[0];
      }

      v14[2] = v28 + 1;
      *(v14 + v28 + 32) = v16;
      goto LABEL_9;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = *(*(v10 + 48) + 8 * v22);
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v12 = v10 & 0xC000000000000001;
LABEL_9:
    ++v11;
  }

  while (v11 != 11);

  sub_10000C840(sub_10030E778);
  return v14;
}

void sub_10030813C(char a1)
{
  v2 = sub_10015DA04(&unk_1006C3F00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = swift_projectBox();
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v8 = Strong;
    v9 = sub_100305558(Strong);

    swift_beginAccess();
    (*(v3 + 16))(v5, v6, v2);
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  else
  {
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = v10;
    v9 = sub_100305558(v10);

    swift_beginAccess();
    (*(v3 + 16))(v5, v6, v2);
    dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
  }

  (*(v3 + 8))(v5, v2);
LABEL_7:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_1003083AC();
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_100308630();
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_100308B04();
  }
}

uint64_t sub_1003083AC()
{
  v27 = type metadata accessor for IndexPath();
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10015DA04(&unk_1006C3F00);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v25 = v0;
  v9 = sub_100305558(v6);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v10 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v5 + 8))(v8, v4);
  v24 = v10;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v26 = UICollectionElementKindSectionHeader;
    v13 = *(v25 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView);
    v14 = v24 + 32;
    v15 = (v1 + 8);
    do
    {
      v16 = *(v14 + v12);
      v17 = v26;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v15)(v3, v27);
      v19 = [v13 supplementaryViewForElementKind:v17 atIndexPath:isa];

      if (v19)
      {
        type metadata accessor for FolderComposerFilterHeader();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v21 = v20;
          v22 = v19;
          sub_10030CBD0(v21, v16);
        }
      }

      ++v12;
    }

    while (v11 != v12);
  }
}

uint64_t sub_100308630()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C3FD0);
  v3 = __chkstk_darwin(v2 - 8);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v39 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = __chkstk_darwin(v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = 0;
  v15 = (v14 + 48);
  v42 = (v14 + 32);
  v43 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView;
  v44 = (v14 + 8);
  v45 = v0;
  do
  {
    v16 = *(&off_10064CF98 + v13 + 32);
    v17 = sub_100305558(v10);
    v47 = v16;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v18 = *v15;
    if ((*v15)(v6, 1, v7) == 1)
    {
      v10 = sub_1000073B4(v6, &unk_1006C3FD0);
      goto LABEL_3;
    }

    (*v42)(v12, v6, v7);
    v19 = *(v1 + v43);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v21 = [v19 cellForItemAtIndexPath:isa];

    if (v21)
    {
      type metadata accessor for FolderComposerFilterCellDatePicker();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v45;
        sub_10030B400(v22, v16);

        v1 = v23;
        v10 = (*v44)(v12, v7);
        goto LABEL_3;
      }
    }

    v10 = (*v44)(v12, v7);
    v1 = v45;
LABEL_3:
    ++v13;
  }

  while (v13 != 4);
  v24 = sub_100305558(v10);
  v46 = 30;
  v25 = v40;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if (v18(v25, 1, v7) == 1)
  {
    v26 = sub_1000073B4(v25, &unk_1006C3FD0);
    v27 = v41;
  }

  else
  {
    v27 = v41;
    (*v42)(v41, v25, v7);
    v28 = *(v1 + v43);
    v29 = IndexPath._bridgeToObjectiveC()().super.isa;
    v30 = [v28 cellForItemAtIndexPath:v29];

    if (v30)
    {
      type metadata accessor for FolderComposerFilterCellDateRangePicker();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        sub_10030BD70(v31);
      }
    }

    v26 = (*v44)(v27, v7);
  }

  v32 = v45;
  v33 = sub_100305558(v26);
  v46 = 31;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if (v18(v25, 1, v7) == 1)
  {
    return sub_1000073B4(v25, &unk_1006C3FD0);
  }

  (*v42)(v27, v25, v7);
  v35 = *(v32 + v43);
  v36 = IndexPath._bridgeToObjectiveC()().super.isa;
  v37 = [v35 cellForItemAtIndexPath:v36];

  if (v37)
  {
    type metadata accessor for FolderComposerFilterCellDateRangePicker();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      sub_10030BD70(v38);
    }
  }

  return (*v44)(v27, v7);
}

uint64_t sub_100308B04()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for IndexPath();
  result = __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v11 = (v10 + 48);
  v19 = (v10 + 32);
  v20 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView;
  v18 = (v10 + 8);
  do
  {
    v12 = *(&off_10064CFE8 + v9 + 32);
    v13 = sub_100305558(result);
    v21 = v12;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*v11)(v4, 1, v5) == 1)
    {
      result = sub_1000073B4(v4, &unk_1006C3FD0);
    }

    else
    {
      (*v19)(v8, v4, v5);
      v14 = *(v1 + v20);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v16 = [v14 cellForItemAtIndexPath:isa];

      if (v16)
      {
        type metadata accessor for FolderComposerFilterCellEntry();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          sub_10030A300(v17, v12);
        }
      }

      result = (*v18)(v8, v5);
    }

    ++v9;
  }

  while (v9 != 3);
  return result;
}

uint64_t sub_100308D50(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&unk_1006C3F00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = sub_100305558(v12);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v16 = sub_1002B3F04();
  [a1 frame];
  v18 = sub_1003AADCC(v17);

  if (v18)
  {

    (*(v9 + 16))(v11, v14, v8);
    v19 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    (*(v9 + 8))(v11, v8);
    v20 = *(v19 + 16);
    v21 = (v19 + 32);
    while (v20)
    {
      v22 = *v21++;
      --v20;
      if (v22 == 13)
      {
      }
    }

    LOBYTE(aBlock[0]) = 12;
    NSDiffableDataSourceSnapshot.insertItems(_:afterItem:)();
    sub_1000054A4(0, &qword_1006BE9E0);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v12;
    aBlock[4] = sub_10030E67C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_100655C80;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002B0510();
    sub_10015DA04(&unk_1006C3F20);
    sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
    v28 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v31 + 8))(v4, v28);
    (*(v29 + 8))(v7, v30);
  }

  else
  {
  }
}

uint64_t sub_1003091EC()
{
  v0 = sub_10015DA04(&unk_1006C3F00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-v2];
  v4 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_100305558(result);

    swift_beginAccess();
    (*(v1 + 16))(v3, v4, v0);
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_10030937C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

void sub_10030948C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 participantUserIDs];
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void sub_1003094F0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 folderIdentifiers];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t sub_10030954C()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100305558(v7);
  v15[15] = 12;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000073B4(v4, &unk_1006C3FD0);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = *(v1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v11 cellForItemAtIndexPath:isa];

    (*(v6 + 8))(v9, v5);
    if (v13)
    {
      type metadata accessor for TagContainerCell();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100309744()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-v3];
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10030954C();
  if (v9)
  {
    v10 = v9;
    sub_100308D50(v9);
  }

  v11 = sub_100305558(v9);
  v17[15] = 13;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000073B4(v4, &unk_1006C3FD0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v13 = *(v1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [v13 cellForItemAtIndexPath:isa];

  if (v15)
  {
    type metadata accessor for FolderComposerFilterCellTagsExpandCollapse();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      sub_10030C6D0(v16);
    }
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100309A5C(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = [a1 ic_existingObjectWithID:*(a2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_accountObjectID)];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 isLocalAccount];
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

  *a3 = v7;
}

uint64_t sub_100309AF0(char *a1, uint64_t a2, char *a3, char *a4)
{
  v6 = *&a4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection];
  v7 = *a3;
  v8 = *&a1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection];
  *&a1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection] = v6;
  v9 = v6;

  sub_10046B0A0();
  [a1 setNeedsUpdateConfiguration];

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = v7;
  v11 = &a1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_joinOperatorChanged];
  v12 = *&a1[OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_joinOperatorChanged];
  *v11 = sub_10030E704;
  v11[1] = v10;
  v13 = a4;

  return sub_10000C840(v12);
}

uint64_t sub_100309BD0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10015DA04(&unk_1006C3F00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10015DA04(&qword_1006BE778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = a3;
  v10 = sub_100305558();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v11 = sub_10030D794(inited, v8);

  if (*(v11 + 16))
  {
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v11);

    v12 = *(a2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource);
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100309D68(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = a1;
  v7 = &a1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  v8 = *&a1[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  *v7 = sub_10030E6E8;
  v7[1] = v6;
  v9 = a4;
  v10 = a1;
  sub_10000C840(v8);
  v11 = *&v9[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_accountObjectID];
  v12 = *&v10[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_accountObjectID];
  *&v10[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_accountObjectID] = v11;
  v13 = v11;

  v14 = [*&v9[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] filterTypeSelectionForFilterType:(*((swift_isaMask & *v10) + 0xC8))()];
  v15 = *&v10[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&v10[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = v14;
  v16 = v14;

  [v10 setNeedsUpdateConfiguration];
}

uint64_t sub_100309EC0(uint64_t a1, void *a2)
{
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  [*(a1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) setSelection:*(a2 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection) forFilterType:(*((swift_isaMask & *a2) + 0xC8))(v13)];
  *(a1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem) = 35;
  sub_100303670(1, 0, 0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v9 + 8);
  v24(v12, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  aBlock[4] = sub_10030E6F0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_100655D48;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002B0510();
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  v20 = v26;
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v30 + 8))(v20, v21);
  (*(v28 + 8))(v7, v29);
  return (v24)(v15, v25);
}

void sub_10030A300(_BYTE *a1, unsigned __int8 a2)
{
  if ((a2 - 1) > 0x21u)
  {
    return;
  }

  if (((0x3FFFFE7FFuLL >> (a2 - 1)) & 1) == 0)
  {
    return;
  }

  v5 = [*(v2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) filterTypeSelectionForFilterType:qword_100542A40[(a2 - 1)]];
  if (!v5)
  {
    return;
  }

  v84 = v5;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_showDisclosure] = 0;
    v8 = v84;
    [a1 setNeedsUpdateConfiguration];
    if (a2 <= 0x16u)
    {
      if (((1 << a2) & 0x104000) != 0)
      {
        v22 = [objc_opt_self() mainBundle];
        v23 = String._bridgeToObjectiveC()();
        v24 = [v22 localizedStringForKey:v23 value:0 table:0];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText];
        *v28 = v25;
        v28[1] = v27;

        [a1 setNeedsUpdateConfiguration];
        v29 = [v7 primaryDateSummary];
LABEL_17:
        v21 = v29;
        goto LABEL_18;
      }

      if (((1 << a2) & 0x208000) != 0)
      {
        v14 = [objc_opt_self() mainBundle];
        v15 = String._bridgeToObjectiveC()();
        v16 = [v14 localizedStringForKey:v15 value:0 table:0];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText];
        *v20 = v17;
        v20[1] = v19;

        [a1 setNeedsUpdateConfiguration];
        v21 = [v7 secondaryDateSummary];
        if (v21)
        {
          goto LABEL_18;
        }

        goto LABEL_40;
      }

      if (((1 << a2) & 0x410000) != 0)
      {
        if ([objc_opt_self() isArabic])
        {
          v9 = [v7 relativeRangeAmountAndTimeInterval];
          if (v9)
          {
            v10 = v9;
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;
          }

          else
          {
            v11 = 0;
            v13 = 0;
          }

          v82 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText];
          *v82 = v11;
          v82[1] = v13;

          [a1 setNeedsUpdateConfiguration];
          v21 = [v7 relativeRangeLabel];
          if (!v21)
          {
            v32 = 0;
            v34 = 0xE000000000000000;
            goto LABEL_19;
          }

LABEL_18:
          v31 = v21;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

LABEL_19:
          v35 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_trailingText];
          *v35 = v32;
          v35[1] = v34;

          [a1 setNeedsUpdateConfiguration];

          goto LABEL_20;
        }

        v77 = [v7 relativeRangeLabel];
        if (v77)
        {
          v78 = v77;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;
        }

        else
        {
          v79 = 0;
          v81 = 0xE000000000000000;
        }

        v83 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText];
        *v83 = v79;
        v83[1] = v81;

        [a1 setNeedsUpdateConfiguration];
        v21 = [v7 relativeRangeAmountAndTimeInterval];
        if (v21)
        {
          goto LABEL_18;
        }

LABEL_40:
        v32 = 0;
        v34 = 0;
        goto LABEL_19;
      }
    }

    v30 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText];
    *v30 = 0;
    v30[1] = 0;

    [a1 setNeedsUpdateConfiguration];
    v29 = [v7 primaryDateSummary];
    goto LABEL_17;
  }

LABEL_20:
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_showDisclosure] = 1;
    v38 = v84;
    [a1 setNeedsUpdateConfiguration];
    v39 = objc_opt_self();
    v40 = [v39 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText];
    *v46 = v43;
    v46[1] = v45;

    [a1 setNeedsUpdateConfiguration];
    v47 = [v37 participantUserIDs];
    v48 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = *(v48 + 16);

    if (v49)
    {
      v50 = [v37 summary];
    }

    else
    {
      v51 = [v39 mainBundle];
      v52 = String._bridgeToObjectiveC()();
      v50 = [v51 localizedStringForKey:v52 value:0 table:0];
    }

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_trailingText];
    *v56 = v53;
    v56[1] = v55;

    [a1 setNeedsUpdateConfiguration];
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (v57)
  {
    v58 = v57;
    a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_showDisclosure] = 1;
    [a1 setNeedsUpdateConfiguration];
    v59 = objc_opt_self();
    v60 = [v59 mainBundle];
    v61 = String._bridgeToObjectiveC()();
    v62 = [v60 localizedStringForKey:v61 value:0 table:0];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText];
    *v66 = v63;
    v66[1] = v65;

    [a1 setNeedsUpdateConfiguration];
    v67 = [v58 folderIdentifiers];
    v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = *(v68 + 16);

    if (v69)
    {
      v70 = [v58 folderSummaryList];
    }

    else
    {
      v71 = [v59 mainBundle];
      v72 = String._bridgeToObjectiveC()();
      v70 = [v71 localizedStringForKey:v72 value:0 table:0];
    }

    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = &a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_trailingText];
    *v76 = v73;
    v76[1] = v75;

    [a1 setNeedsUpdateConfiguration];
  }
}

void sub_10030ABA4(char *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v6 = *a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = v6;
  v8 = &a1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_dateSelectionChanged];
  v9 = *&a1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_dateSelectionChanged];
  *v8 = sub_10030E6BC;
  v8[1] = v7;
  v10 = a4;
  sub_10000C840(v9);
  sub_10030B400(a1, v6);
}

void sub_10030AC44(uint64_t a1, char a2)
{
  v4 = sub_10015DA04(&unk_1006C3FD0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v61 - v9;
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v22 = &v61 - v21;
  if ((a2 - 1) > 0x21u)
  {
    return;
  }

  if (((0x3FFFFE7FFuLL >> (a2 - 1)) & 1) == 0)
  {
    return;
  }

  v23 = qword_100542A40[(a2 - 1)];
  v24 = *(v2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection);
  v68 = v20;
  v25 = [v24 filterTypeSelectionForFilterType:v23];
  if (!v25)
  {
    return;
  }

  v69 = v25;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    goto LABEL_28;
  }

  v67 = v26;
  if (*(v2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries) != 1)
  {
    v33 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem;
    v66 = v2;
    v34 = *(v2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem);
    v35.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (v34 > 19)
    {
      v36 = v67;
      if (v34 != 21)
      {
        v37 = v34 == 20;
        v38 = v66;
        if (v37)
        {
          v65 = 0;
          v39 = 21;
LABEL_23:
          v40 = &selRef_setPrimaryDate_;
          goto LABEL_27;
        }

LABEL_22:
        v39 = 35;
        v65 = 1;
        goto LABEL_23;
      }

      v65 = 0;
      v39 = 20;
      v40 = &selRef_setSecondaryDate_;
    }

    else
    {
      v36 = v67;
      if (v34 != 14)
      {
        v37 = v34 == 15;
        v38 = v66;
        if (v37)
        {
          v65 = 0;
          v39 = 14;
          v40 = &selRef_setSecondaryDate_;
          goto LABEL_27;
        }

        goto LABEL_22;
      }

      v65 = 0;
      v39 = 15;
      v40 = &selRef_setPrimaryDate_;
    }

    v38 = v66;
LABEL_27:
    [v36 *v40];

    v47 = *(v38 + v33);
    if (v47 == 35)
    {
LABEL_28:
      v41 = v69;
      goto LABEL_29;
    }

    LODWORD(v67) = v39;
    v48 = sub_100305558(v46);
    v72 = v47;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v49 = v68;
    v50 = *(v68 + 48);
    if (v50(v10, 1, v13) == 1)
    {

      sub_1000073B4(v10, &unk_1006C3FD0);
      return;
    }

    v63 = *(v49 + 32);
    v64 = v49 + 32;
    v63(v19, v10, v13);
    v51 = *(v66 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v62 = v51;
    v53 = [v51 cellForItemAtIndexPath:isa];

    if (!v53)
    {
      (*(v49 + 8))(v19, v13);
      goto LABEL_40;
    }

    type metadata accessor for FolderComposerFilterCellEntry();
    v54 = swift_dynamicCastClass();
    if (!v54)
    {

      (*(v68 + 8))(v19, v13);
      return;
    }

    sub_10030A300(v54, v47);
    if (v65)
    {
      (*(v68 + 8))(v19, v13);

      goto LABEL_40;
    }

    v55 = *(v66 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource);
    v71 = v67;
    v56 = v55;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if (v50(v7, 1, v13) == 1)
    {
      (*(v68 + 8))(v19, v13);

      sub_1000073B4(v7, &unk_1006C3FD0);
      return;
    }

    v63(v16, v7, v13);
    v57 = IndexPath._bridgeToObjectiveC()().super.isa;
    v58 = [v62 cellForItemAtIndexPath:v57];

    if (v58)
    {
      v59 = swift_dynamicCastClass();
      if (v59)
      {
        sub_10030A300(v59, v67);

LABEL_53:
        v60 = *(v68 + 8);
        v60(v16, v13);
        v60(v19, v13);
        return;
      }

      v53 = v69;
    }

    else
    {
      v58 = v69;
    }

    goto LABEL_53;
  }

  v27 = v2;
  v28.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v66 = v28.super.isa;
  if ((a2 - 26) < 4u)
  {
    v29 = 0x1C1D1A1Bu >> (8 * ((a2 - 26) & 0x1F));
    [v67 *off_100655ED8[(a2 - 26)]];

    v31 = sub_100305558(v30);
    v70 = v29;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v32 = v68;
    if ((*(v68 + 48))(v12, 1, v13) == 1)
    {

      sub_1000073B4(v12, &unk_1006C3FD0);
      return;
    }

    (*(v32 + 32))(v22, v12, v13);
    v42 = *(v27 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView);
    v43 = IndexPath._bridgeToObjectiveC()().super.isa;
    v44 = [v42 cellForItemAtIndexPath:v43];

    if (v44)
    {
      type metadata accessor for FolderComposerFilterCellDatePicker();
      v45 = swift_dynamicCastClass();
      if (v45)
      {
        sub_10030B400(v45, v29);
      }

      else
      {
      }

      (*(v68 + 8))(v22, v13);
      return;
    }

    (*(v32 + 8))(v22, v13);
LABEL_40:

    return;
  }

  [v67 setPrimaryDate:v28.super.isa];

  v41 = v66;
LABEL_29:
}

void sub_10030B400(char *a1, unsigned __int8 a2)
{
  v5 = sub_10015DA04(&unk_1006C1710);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v42 - v10;
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v14 = sub_1003059D0(a2);
  if (v15)
  {
    goto LABEL_9;
  }

  v16 = [*(v2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) filterTypeSelectionForFilterType:v14];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

LABEL_9:
    v20 = &a1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_popoverLeadingText];
    *v20 = 0;
    *(v20 + 1) = 0;

    [a1 setNeedsUpdateConfiguration];
    static Date.now.getter();
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
    v22 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_date;
    swift_beginAccess();
    sub_10023A008(v8, &a1[v22]);
    swift_endAccess();
    [a1 setNeedsUpdateConfiguration];
    sub_1000073B4(v8, &unk_1006C1710);
    return;
  }

  v19 = v18;
  if (a2 > 0x1Bu)
  {
    if (a2 == 29)
    {
      goto LABEL_14;
    }

    if (a2 != 28)
    {
      goto LABEL_21;
    }

LABEL_12:
    v23 = [v18 primaryDate];
    if (v23)
    {
      v24 = v23;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = type metadata accessor for Date();
      (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
    }

    else
    {
      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    }

    v30 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_date;
    swift_beginAccess();
    sub_10023A008(v13, &a1[v30]);
    swift_endAccess();
    goto LABEL_20;
  }

  if (a2 == 26)
  {
    goto LABEL_12;
  }

  if (a2 == 27)
  {
LABEL_14:
    v26 = [v18 secondaryDate];
    if (v26)
    {
      v27 = v26;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for Date();
      (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
    }

    else
    {
      v31 = type metadata accessor for Date();
      (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    }

    v32 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_date;
    swift_beginAccess();
    sub_10023A008(v11, &a1[v32]);
    swift_endAccess();
    v13 = v11;
LABEL_20:
    [a1 setNeedsUpdateConfiguration];
    sub_1000073B4(v13, &unk_1006C1710);
  }

LABEL_21:
  v33 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries;
  a1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_prefersPopover] = *(v2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries);
  [a1 setNeedsUpdateConfiguration];
  if (*(v2 + v33) == 1)
  {
    if ([v19 selectionType] == 6)
    {
      if (a2 > 0x1Bu)
      {
        if (a2 != 29 && a2 != 28)
        {
          goto LABEL_30;
        }
      }

      else if (a2 != 26 && a2 != 27)
      {
        goto LABEL_30;
      }

      v35 = [objc_opt_self() mainBundle];
      v36 = String._bridgeToObjectiveC()();
      v37 = [v35 localizedStringForKey:v36 value:0 table:0];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = &a1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_popoverLeadingText];
      *v41 = v38;
      v41[1] = v40;
      goto LABEL_32;
    }

LABEL_30:
    v34 = &a1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_popoverLeadingText];
    *v34 = 0;
    *(v34 + 1) = 0;
LABEL_32:

    [a1 setNeedsUpdateConfiguration];
  }
}

void sub_10030B998(char *a1, uint64_t a2, char *a3, void *a4)
{
  v6 = *a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = v6;
  v8 = &a1[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeSelectionChanged];
  v9 = *&a1[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeSelectionChanged];
  *v8 = sub_10030E684;
  v8[1] = v7;
  v10 = a4;
  sub_10000C840(v9);
  sub_10030BD70(a1);
}

void sub_10030BA2C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 - 1) <= 0x21u && ((0x3FFFFE7FFuLL >> (a3 - 1)))
  {
    v13 = [*(v3 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) filterTypeSelectionForFilterType:qword_100542A40[(a3 - 1)]];
    if (v13)
    {
      v26 = v13;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14 && (v15 = v14, [v14 setRelativeRangeSelectionType:a1], v16 = Int._bridgeToObjectiveC()().super.super.isa, objc_msgSend(v15, "setRelativeRangeAmount:", v16), v16, v18 = *(v3 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem), v18 != 35))
      {
        v20 = v3;
        v21 = sub_100305558(v17);
        v27 = v18;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        if ((*(v10 + 48))(v8, 1, v9) == 1)
        {

          sub_1000073B4(v8, &unk_1006C3FD0);
        }

        else
        {
          (*(v10 + 32))(v12, v8, v9);
          v22 = *(v20 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v24 = [v22 cellForItemAtIndexPath:isa];

          if (v24)
          {
            type metadata accessor for FolderComposerFilterCellEntry();
            v25 = swift_dynamicCastClass();
            if (v25)
            {
              sub_10030A300(v25, v18);
            }

            else
            {
            }

            (*(v10 + 8))(v12, v9);
          }

          else
          {
            (*(v10 + 8))(v12, v9);
          }
        }
      }

      else
      {
        v19 = v26;
      }
    }
  }
}

void sub_10030BD70(char *a1)
{
  v2 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem;
  v3 = *(v1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem) - 1;
  if (v3 <= 0x21 && ((0x3FFFFE7FFuLL >> v3) & 1) != 0)
  {
    v5 = [*(v1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) filterTypeSelectionForFilterType:qword_100542B50[(*(v1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem) - 1)]];
    if (v5)
    {
      v16 = v5;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = *(v1 + v2);
        if (v7 == 22 || v7 == 16)
        {
          v9 = v6;
          v10 = [v6 relativeRangeAmount];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 integerValue];
          }

          else
          {
            v12 = 0;
          }

          v13 = &a1[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_amount];
          *v13 = v12;
          v13[8] = v11 == 0;
          [a1 setNeedsUpdateConfiguration];
          v14 = [v9 relativeRangeSelectionType];
          v15 = &a1[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeType];
          *v15 = v14;
          v15[8] = 0;
          [a1 setNeedsUpdateConfiguration];
        }
      }
    }
  }
}

uint64_t sub_10030BEFC(_BYTE *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = 3;
  if (!a4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_tagRowLimit + 8])
  {
    v6 = *&a4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_tagRowLimit];
  }

  v7 = &a1[OBJC_IVAR___ICTagContainerCell_tagRowLimit];
  v8 = *&a1[OBJC_IVAR___ICTagContainerCell_tagRowLimit];
  v9 = a1[OBJC_IVAR___ICTagContainerCell_tagRowLimit + 8];
  *v7 = v6;
  v7[8] = 0;
  if ((v9 & 1) != 0 || v6 != v8)
  {
    sub_1002B412C();
  }

  v10 = OBJC_IVAR___ICTagContainerCell_allowsContextualMenu;
  a1[OBJC_IVAR___ICTagContainerCell_allowsContextualMenu] = 0;
  v11 = sub_1002B3F04();
  v11[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_allowsContextualMenu] = a1[v10];

  v12 = a1[OBJC_IVAR___ICTagContainerCell_hasGroupInset];
  a1[OBJC_IVAR___ICTagContainerCell_hasGroupInset] = 1;
  if ((v12 & 1) == 0)
  {
    [a1 setNeedsLayout];
    [a1 layoutIfNeeded];
    [a1 setNeedsUpdateConfiguration];
  }

  v13 = a1[OBJC_IVAR___ICTagContainerCell_allowsExclusion];
  a1[OBJC_IVAR___ICTagContainerCell_allowsExclusion] = 1;
  if ((v13 & 1) == 0)
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v14 = a1[OBJC_IVAR___ICTagContainerCell_includesNewTagItem];
  a1[OBJC_IVAR___ICTagContainerCell_includesNewTagItem] = 1;
  if ((v14 & 1) == 0)
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v15 = a1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem];
  a1[OBJC_IVAR___ICTagContainerCell_includesAllTagsItem] = 0;
  if (v15 == 1)
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v16 = *&a4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentingViewController];
  v17 = OBJC_IVAR___ICTagContainerCell_presentingViewController;
  v18 = *&a1[OBJC_IVAR___ICTagContainerCell_presentingViewController];
  *&a1[OBJC_IVAR___ICTagContainerCell_presentingViewController] = v16;
  v19 = v16;

  v20 = OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView;
  v21 = *&a1[OBJC_IVAR___ICTagContainerCell____lazy_storage___collectionView];
  v22 = *&a1[v17];
  v23 = *&v21[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_presentingViewController];
  *&v21[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_presentingViewController] = v22;
  v24 = v21;
  v25 = v22;

  v26 = *&a4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_accountObjectID];
  v27 = OBJC_IVAR___ICTagContainerCell_defaultAccountObjectID;
  v28 = *&a1[OBJC_IVAR___ICTagContainerCell_defaultAccountObjectID];
  *&a1[OBJC_IVAR___ICTagContainerCell_defaultAccountObjectID] = v26;
  v29 = v26;

  v30 = *&a1[v20];
  v31 = *&a1[v27];
  v32 = *&v30[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_defaultAccountObjectID];
  *&v30[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_defaultAccountObjectID] = v31;
  v33 = v30;
  v34 = v31;

  a1[OBJC_IVAR___ICTagContainerCell_preservesSuperviewHorizontalLayoutMargins] = 1;
  [a1 setNeedsUpdateConfiguration];
  v35 = [*&a4[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] filterTypeSelectionForFilterType:0];
  if (v35)
  {
    v36 = v35;
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      if (![v37 mode])
      {
        v39 = *&a1[v20];
        v40 = v36;
        v36 = v39;
        sub_1003AAA40(v38, 0);
      }
    }
  }

  v41 = swift_allocObject();
  *(v41 + 16) = a4;
  v42 = &a1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  v43 = *&a1[OBJC_IVAR___ICTagContainerCell_selectionDidChange];
  *v42 = sub_10030E66C;
  v42[1] = v41;
  v44 = a4;
  sub_10000C840(v43);
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  v46 = &a1[OBJC_IVAR___ICTagContainerCell_dataDidChange];
  v47 = *&a1[OBJC_IVAR___ICTagContainerCell_dataDidChange];
  *v46 = sub_10030E674;
  v46[1] = v45;
  v48 = v44;

  return sub_10000C840(v47);
}

uint64_t sub_10030C28C(void *a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100305558(v9);
  v27[15] = 8;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000073B4(v6, &unk_1006C3FD0);
  }

  (*(v8 + 32))(v11, v6, v7);
  v14 = *(a2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16 = [v14 cellForItemAtIndexPath:isa];

  if (v16)
  {
    type metadata accessor for FolderComposerFilterCellTags();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection;
      v19 = *(v17 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection);
      if (v19)
      {
        v20 = v17;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = v21;
          v16 = v16;
          v23 = v19;
          if (![v22 mode])
          {
            [a1 setTagOperator:{objc_msgSend(v22, "tagOperator")}];
            v24 = v20;
            v25 = *&v20[v18];
            *&v24[v18] = a1;
            v26 = a1;

            [v24 setNeedsUpdateConfiguration];
            [*(a2 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) setSelection:v26 forFilterType:0];

            return (*(v8 + 8))(v11, v7);
          }
        }
      }
    }
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10030C578(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006C3F00);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = sub_100305558(v4);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v8 = sub_10030D794(&off_10064D0B0, v6);
  if (*(v8 + 16))
  {
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v8);

    v9 = *(a1 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource);
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  return sub_100309744();
}

id sub_10030C6D0(char *a1)
{
  v2 = sub_10030954C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1002B3F04();

    v5 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 && (v7 = [v6 indexer]) != 0)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = [v9 hiddenTagCount];
        v11 = v8;
      }

      else
      {
        v10 = 0;
        v11 = v4;
        v4 = v8;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *&a1[OBJC_IVAR____TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse_hiddenTagCount] = v10;
  return [a1 setNeedsUpdateConfiguration];
}

uint64_t sub_10030C7D8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  switch(*a3)
  {
    case 1:
      type metadata accessor for FolderComposerFilterCellQuickNotes();
      break;
    case 2:
      type metadata accessor for FolderComposerFilterCellPinnedNotes();
      break;
    case 3:
      type metadata accessor for FolderComposerFilterCellLockedNotes();
      break;
    case 4:
      type metadata accessor for FolderComposerFilterCellDateCreated();
      break;
    case 5:
      type metadata accessor for FolderComposerFilterCellDateEdited();
      break;
    case 6:
      type metadata accessor for FolderComposerFilterCellShared();
      break;
    case 7:
      type metadata accessor for FolderComposerFilterCellMentions();
      break;
    case 8:
      type metadata accessor for FolderComposerFilterCellTags();
      break;
    case 9:
      type metadata accessor for FolderComposerFilterCellChecklists();
      break;
    case 0xA:
      type metadata accessor for FolderComposerFilterCellAttachments();
      break;
    case 0xB:
      type metadata accessor for FolderComposerFilterCellFolders();
      break;
    case 0xC:
      type metadata accessor for TagContainerCell();
      break;
    case 0xD:
      type metadata accessor for FolderComposerFilterCellTagsExpandCollapse();
      break;
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x20:
    case 0x21:
    case 0x22:
      type metadata accessor for FolderComposerFilterCellEntry();
      break;
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      type metadata accessor for FolderComposerFilterCellDatePicker();
      break;
    case 0x1E:
    case 0x1F:
      type metadata accessor for FolderComposerFilterCellDateRangePicker();
      break;
    default:
      type metadata accessor for FolderComposerFilterJoinCell();
      break;
  }

  return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
}

unint64_t sub_10030CA8C(char *a1)
{
  v2 = sub_10015DA04(&unk_1006C3F00);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = sub_100305558(v4);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v8 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v3 + 8))(v6, v2);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v8 + 16))
  {
    v10 = *(v8 + result + 32);

    return sub_10030CBD0(a1, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030CBD0(char *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_10015DA04(&unk_1006C3F00);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_100305558(v6);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  if (v3 == 12)
  {
    NSDiffableDataSourceSnapshot.numberOfSections.getter();
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 localizedStringForKey:v11 value:0 table:0];
LABEL_11:
    v18 = v12;

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = &a1[OBJC_IVAR____TtC11MobileNotes26FolderComposerFilterHeader_text];
    *v22 = v19;
    v22[1] = v21;
    goto LABEL_12;
  }

  v13 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = -v14;
    v16 = 32;
    while (*(v13 + v16) != v3)
    {
      ++v16;
      if (v15 + v16 == 32)
      {
        goto LABEL_7;
      }
    }

    if (v16 == 33)
    {
      v10 = [objc_opt_self() mainBundle];
      v11 = String._bridgeToObjectiveC()();
      v12 = [v10 localizedStringForKey:v11 value:0 table:0];
      goto LABEL_11;
    }
  }

  else
  {
LABEL_7:
  }

  v17 = &a1[OBJC_IVAR____TtC11MobileNotes26FolderComposerFilterHeader_text];
  *v17 = 0;
  *(v17 + 1) = 0;
LABEL_12:

  [a1 setNeedsUpdateConfiguration];
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10030CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {

    goto LABEL_12;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_12:
    type metadata accessor for FolderComposerFilterHeader();
    return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v8 != a3)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for FolderComposerFilterDataSource.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FolderComposerFilterDataSource.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FolderComposerFilterDataSource.Section(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FolderComposerFilterDataSource.Section(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10030D370()
{
  result = qword_1006C3ED8;
  if (!qword_1006C3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3ED8);
  }

  return result;
}

unint64_t sub_10030D40C()
{
  result = qword_1006C3EF0;
  if (!qword_1006C3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3EF0);
  }

  return result;
}

uint64_t sub_10030D460(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_10030D4C8(a1, a4);
  v6 = v5[2];

  return a2(v5 + 4, v6);
}

void *sub_10030D4C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, _swiftEmptyArrayStorage);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, _swiftEmptyArrayStorage, v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

uint64_t sub_10030D604(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

char *sub_10030D668(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_10030D724(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1000054A4(0, a5);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030D794(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C3F00);
  result = __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = 0;
  v24 = (v6 + 16);
  v25 = a1 + 32;
  v23 = (v6 + 8);
  v11 = _swiftEmptyArrayStorage;
  v21 = v9;
  v22 = a2;
LABEL_4:
  while (2)
  {
    if (v10 >= v9)
    {
      __break(1u);
    }

    else
    {
      v12 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        v13 = *(v25 + v10++);
        (*v24)(v8, a2, v4);
        v14 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
        (*v23)(v8, v4);
        v15 = *(v14 + 16);
        v16 = (v14 + 32);
        do
        {
          if (!v15)
          {

            if (v12 == v9)
            {
              return v11;
            }

            goto LABEL_4;
          }

          v17 = *v16++;
          --v15;
        }

        while (v17 != v13);

        result = swift_isUniquelyReferenced_nonNull_native();
        v26 = v11;
        if ((result & 1) == 0)
        {
          result = sub_100189704(0, v11[2] + 1, 1);
          v11 = v26;
        }

        v19 = v11[2];
        v18 = v11[3];
        if (v19 >= v18 >> 1)
        {
          result = sub_100189704((v18 > 1), v19 + 1, 1);
          v11 = v26;
        }

        v11[2] = v19 + 1;
        *(v11 + v19 + 32) = v13;
        v9 = v21;
        a2 = v22;
        if (v12 != v21)
        {
          continue;
        }

        return v11;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

unint64_t sub_10030D9BC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1001CB4E4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10030F564(v6, a2, 0, &type metadata accessor for CollaboratorStatus);
  *v2 = v4;
  return result;
}

unint64_t sub_10030DA90(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_10030DB74(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_10030DC18(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1001CB548(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10030DB74(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_10030DCD8(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

unint64_t sub_10030DCE8(unint64_t result)
{
  if (result >= 0x23)
  {
    return 35;
  }

  return result;
}

unint64_t sub_10030DCF8()
{
  result = qword_1006C3F10;
  if (!qword_1006C3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3F10);
  }

  return result;
}

unint64_t sub_10030DD4C()
{
  result = qword_1006C3F18;
  if (!qword_1006C3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3F18);
  }

  return result;
}

uint64_t sub_10030DE50(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_10015DA04(&qword_1006C3FC0);
  sub_10015DA04(&qword_1006C3FB0);
  sub_10015DA04(&qword_1006C3FB8);
  sub_10015DA04(&qword_1006C3FA8);
  sub_10015DA04(&qword_1006C3FA0);
  sub_10015DA04(&qword_1006C3F90);
  sub_10015DA04(&qword_1006C3F98);
  sub_10015DA04(&qword_1006C3F70);
  sub_10015DA04(&qword_1006C3F68);
  sub_10015DA04(&qword_1006C3F88);
  sub_10015DA04(&qword_1006C3F80);
  sub_10015DA04(&qword_1006C3F78);
  sub_10015DA04(&qword_1006C3F58);
  sub_10015DA04(&qword_1006C3F50);
  sub_10015DA04(&qword_1006C3F48);
  sub_10015DA04(&qword_1006C3F40);
  sub_10015DA04(&qword_1006C3F60);
  return sub_10030C7D8(a1, a2, a3);
}

uint64_t sub_10030E5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(&qword_1006C3F38);

  return sub_10030CEB0(a1, a2, a3);
}

unint64_t sub_10030E710()
{
  result = qword_1006C3FE0;
  if (!qword_1006C3FE0)
  {
    sub_1000054A4(255, &qword_1006C3F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3FE0);
  }

  return result;
}

BOOL sub_10030E784()
{
  v0 = sub_100305558();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v11 == 35)
  {
    return 0;
  }

  v2 = &byte_10064CB00;
  for (i = 12; i; --i)
  {
    v4 = *v2++;
    if (v4 == v11)
    {
      return 1;
    }
  }

  v5 = &byte_10064D058;
  v6 = 3;
  do
  {
    v7 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v9 = *v5++;
  }

  while (v9 != v11);
  return v11 == 13 || v7 != 0;
}

BOOL sub_10030E830()
{
  v0 = sub_100305558();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v11 == 35)
  {
    return 0;
  }

  v2 = &byte_10064CB00;
  for (i = 12; i; --i)
  {
    v4 = *v2++;
    if (v4 == v11)
    {
      return 1;
    }
  }

  v5 = &byte_10064D080;
  v6 = 3;
  do
  {
    v7 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v9 = *v5++;
  }

  while (v9 != v11);
  return v11 == 13 || v7 != 0;
}

void sub_10030E8DC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchTime();
  v87 = *(v89 - 8);
  v8 = __chkstk_darwin(v89);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v79 - v11;
  v13 = sub_100305558();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v14 = LOBYTE(aBlock[0]);
  if (LOBYTE(aBlock[0]) == 35)
  {
    return;
  }

  v15 = &byte_10064CB00;
  v16 = 12;
  v85 = v6;
  while (v16)
  {
    v17 = *v15++;
    --v16;
    if (v17 == LOBYTE(aBlock[0]))
    {
      v18 = v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem];
      if (v18 != LOBYTE(aBlock[0]) || v18 == 35)
      {
        v20 = aBlock[0];
      }

      else
      {
        v20 = 35;
      }

      v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem] = v20;
      sub_100303670(1, 0, 0);
LABEL_45:
      sub_1000054A4(0, &qword_1006BE9E0);
      v83 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v82 = v12;
      + infix(_:_:)();
      v72 = v86;
      v84 = v5;
      v87 = *(v87 + 8);
      (v87)(v10, v89);
      v73 = swift_allocObject();
      *(v73 + 16) = v1;
      aBlock[4] = sub_10030FEE0;
      aBlock[5] = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_100655E38;
      v74 = _Block_copy(aBlock);
      v75 = v1;

      v76 = v88;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002B0510();
      sub_10015DA04(&unk_1006C3F20);
      sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v78 = v82;
      v77 = v83;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v74);

      (*(v72 + 8))(v4, v2);
      (*(v85 + 8))(v76, v84);
      (v87)(v78, v89);
      return;
    }
  }

  v21 = &byte_10064D0A8;
  v22 = 3;
  do
  {
    if (!v22)
    {
      if (LOBYTE(aBlock[0]) != 13)
      {
        goto LABEL_45;
      }

      v31 = sub_10030954C();
      if (!v31)
      {
        return;
      }

      v29 = v31;
      v32 = &v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_tagRowLimit];
      v33 = 3;
      if (v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_tagRowLimit + 8] & 1 | (*&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_tagRowLimit] == 3))
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *v32 = v33;
      v32[8] = 0;
      v34 = v31 + OBJC_IVAR___ICTagContainerCell_tagRowLimit;
      v35 = *(v31 + OBJC_IVAR___ICTagContainerCell_tagRowLimit);
      v36 = *(v31 + OBJC_IVAR___ICTagContainerCell_tagRowLimit + 8);
      *v34 = v33;
      *(v34 + 8) = 0;
      if ((v36 & 1) != 0 || v33 != v35)
      {
        sub_1002B412C();
      }

      sub_100309744();
LABEL_44:

      goto LABEL_45;
    }

    v23 = *v21++;
    --v22;
  }

  while (v23 != LOBYTE(aBlock[0]));
  if (v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries] == 1)
  {
    v24 = &byte_10064CB30;
    v25 = 13;
    while (v25)
    {
      v26 = *v24++;
      --v25;
      if (v26 == LOBYTE(aBlock[0]))
      {
        v27 = *&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v29 = [v27 cellForItemAtIndexPath:isa];

        v30 = 1;
        goto LABEL_29;
      }
    }
  }

  v29 = 0;
  v30 = 0;
LABEL_29:
  if (v14 == 34)
  {
    v59 = [*&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] filterTypeSelectionForFilterType:7];
    if (!v59)
    {
      goto LABEL_48;
    }

    v60 = v59;
    objc_opt_self();
    v61 = swift_dynamicCastObjCClass();
    if (!v61)
    {

      return;
    }

    v83 = v61;
    v84 = v2;
    aBlock[0] = v61;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v1;
    v62 = v1;
    v81 = v29;
    v63 = v62;
    v80 = v60;
    v64 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v65 = *&v63[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation];
    *&v63[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation] = v64;

    v45 = *&v63[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentViewControllerBlock];
    v66 = *&v63[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_accountObjectID];
    v67 = type metadata accessor for FolderComposerFolderViewController();
    v68 = objc_allocWithZone(v67);
    *&v68[OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController____lazy_storage___folderSelectionDataSource] = 0;
    *&v68[OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController_accountObjectID] = v66;
    *&v68[OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController_folderSelection] = v83;
    v92.receiver = v68;
    v92.super_class = v67;
    v83 = v80;
    v69 = v66;
    v48 = objc_msgSendSuper2(&v92, "initWithNibName:bundle:", 0, 0);
    goto LABEL_41;
  }

  if (v14 == 33)
  {
    v49 = [*&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] filterTypeSelectionForFilterType:4];
    if (!v49)
    {
      goto LABEL_48;
    }

    v38 = v49;
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (!v50)
    {
      goto LABEL_47;
    }

    v83 = v50;
    v84 = v2;
    aBlock[0] = v50;
    swift_getKeyPath();
    v51 = swift_allocObject();
    v81 = v29;
    *(v51 + 16) = v1;
    v52 = v1;
    LODWORD(v80) = v30;
    v53 = v52;
    v54 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v55 = *&v53[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation];
    *&v53[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation] = v54;

    v56 = &v53[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentViewControllerBlock];
    v30 = v80;
    v45 = *v56;
    v57 = type metadata accessor for FolderComposerParticipantViewController();
    v58 = objc_allocWithZone(v57);
    *&v58[OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource] = 0;
    *&v58[OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection] = v83;
    v91.receiver = v58;
    v91.super_class = v57;
    v83 = v38;
    v48 = objc_msgSendSuper2(&v91, "initWithNibName:bundle:", 0, 0);
LABEL_41:
    v70 = v48;
    v71 = v81;
    v45();

    v2 = v84;
    v29 = v71;
LABEL_42:
    if (v30)
    {
      [*&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView] ic_deselectAllItemsAnimated:0];
    }

    goto LABEL_44;
  }

  if (v14 != 32)
  {
    goto LABEL_42;
  }

  v37 = [*&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection] filterTypeSelectionForFilterType:3];
  if (v37)
  {
    v38 = v37;
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v83 = v39;
      v84 = v2;
      aBlock[0] = v39;
      swift_getKeyPath();
      v40 = swift_allocObject();
      v81 = v29;
      *(v40 + 16) = v1;
      v80 = v1;
      v41 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v42 = v80;
      v43 = *&v80[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation];
      *&v80[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_popoverSelectionObservation] = v41;
      v44 = v42;

      v45 = *&v44[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_presentViewControllerBlock];
      v46 = type metadata accessor for FolderComposerParticipantViewController();
      v47 = objc_allocWithZone(v46);
      *&v47[OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource] = 0;
      *&v47[OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection] = v83;
      v90.receiver = v47;
      v90.super_class = v46;
      v83 = v38;
      v48 = objc_msgSendSuper2(&v90, "initWithNibName:bundle:", 0, 0);
      goto LABEL_41;
    }

LABEL_47:
  }

LABEL_48:
}

uint64_t sub_10030F2DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1000054A4(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10030F40C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = result;
  v12 = __OFSUB__(result, v9);
  v13 = result - v9;
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v8)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v12)
  {
    sub_10001722C(result, 1);
    return sub_10030FA98(v6, v5, v11, v3, &qword_1006C6400, UIMenuElement_ptr, sub_10030FEB4, sub_10037514C);
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_10030F564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

char *sub_10030F700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1000054A4(0, &qword_1006C3FF0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10030F82C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_10001722C(result, 1);

  return sub_10030F700(v6, v5, 1, v3);
}

unint64_t sub_10030F918(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10030F9D8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1001CC0C8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10030F918(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10030FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t), uint64_t (*a8)(uint64_t))
{
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = a4;
  v14 = a3;
  v13 = a2;
  v27 = a7;
  v28 = a8;
  v16 = *v9;
  v9 = (*v9 & 0xFFFFFFFFFFFFFF8);
  v8 = v9 + 4;
  v12 = &v9[a1 + 4];
  sub_1000054A4(0, a5);
  result = swift_arrayDestroy();
  v19 = __OFSUB__(v14, v15);
  v15 = v14 - v15;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v10 = v16 >> 62;
  if (!(v16 >> 62))
  {
    v20 = v9[2];
    v21 = v20 - v13;
    if (!__OFSUB__(v20, v13))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_10030D460(v11, v27, v18, v28);
  }

LABEL_25:
  v25 = _CocoaArrayWrapper.endIndex.getter();
  v21 = v25 - v13;
  if (__OFSUB__(v25, v13))
  {
    goto LABEL_27;
  }

LABEL_6:
  v22 = (v12 + 8 * v14);
  v23 = &v8[v13];
  if (v22 != v23 || v22 >= &v23[8 * v21])
  {
    memmove(v22, v23, 8 * v21);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v9[2];
  }

  if (__OFADD__(result, v15))
  {
    goto LABEL_28;
  }

  v9[2] = result + v15;
LABEL_17:
  if (v14 < 1)
  {
    return result;
  }

  result = __chkstk_darwin(result);
  v18 = v26;
  v26[2] = v14;
  v26[3] = v12;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    return sub_10030D460(v11, v27, v18, v28);
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == v14)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_10030FC2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = result;
  v12 = __OFSUB__(result, v9);
  v13 = result - v9;
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v8)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v12)
  {
    sub_10001722C(result, 1);
    return sub_10030FA98(v6, v5, v11, v3, &qword_1006C5F80, CKShareParticipant_ptr, sub_10030FE88, sub_10037514C);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10030FD94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_10030F2DC(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_10030FF3C(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v2 setParticipantUserIDs:isa];
}

uint64_t sub_100310000()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static DeleteAttachmentsIntent.title);
  sub_10002597C(v6, static DeleteAttachmentsIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t DeleteAttachmentsIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC768 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static DeleteAttachmentsIntent.title);
}

uint64_t static DeleteAttachmentsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static DeleteAttachmentsIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteAttachmentsIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static DeleteAttachmentsIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C3FF8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C4000);
  __chkstk_darwin(v1);
  sub_10021B2D8();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4008);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6D68636174746120;
  v3._object = 0xEC00000073746E65;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*DeleteAttachmentsIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t (*DeleteAttachmentsIntent.entities.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_100310888()
{
  v0 = sub_10015DA04(&qword_1006C3FF8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C4000);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4008);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6D68636174746120;
  v3._object = 0xEC00000073746E65;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100310A3C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return DeleteAttachmentsIntent.perform()(a1, v4, v5, v6);
}

uint64_t DeleteAttachmentsIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *(type metadata accessor for AttachmentEntity() - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100310BB0, 0, 0);
}

uint64_t sub_100310BB0()
{
  IntentParameter.wrappedValue.getter();
  v4 = v0[2];
  v0[11] = v4;
  v5 = v4[2];
  v0[12] = v5;
  if (!v5)
  {
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];

    AppDependency.wrappedValue.getter();
    v12 = v0[4];
    v0[17] = [v12 modernManagedObjectContext];

    v13 = swift_allocObject();
    v0[18] = v13;
    v13[2] = v11;
    v13[3] = v10;
    v13[4] = v9;

    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_100311198;
    v1 = sub_1001A1CC8;
    v3 = &type metadata for () + 8;
    v2 = v13;

    return NSManagedObjectContext.perform<A>(_:)(v4, v1, v2, v3);
  }

  v6 = v0[9];
  v0[13] = 0;
  if (!v4[2])
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(_:)(v4, v1, v2, v3);
  }

  sub_100311C5C(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v0[10]);
  AppDependency.wrappedValue.getter();
  v0[14] = v0[3];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_100310DFC;

  return (sub_1001A9F98)();
}

uint64_t sub_100310DFC()
{
  v2 = *v1;
  v2[16] = v0;

  v3 = v2[14];
  sub_1001EAA40(v2[10]);
  if (v0)
  {

    v4 = sub_100311328;
  }

  else
  {

    v4 = sub_100310F4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100310F4C(void *a1, id (*a2)(), void *a3, char *a4)
{
  v5 = v4[13] + 1;
  if (v5 == v4[12])
  {
    v7 = v4[7];
    v6 = v4[8];
    v8 = v4[6];

    AppDependency.wrappedValue.getter();
    v9 = v4[4];
    v4[17] = [v9 modernManagedObjectContext];

    v10 = swift_allocObject();
    v4[18] = v10;
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v6;

    a1 = swift_task_alloc();
    v4[19] = a1;
    *a1 = v4;
    a1[1] = sub_100311198;
    a2 = sub_1001A1CC8;
    a4 = &type metadata for () + 8;
    a3 = v10;

    return NSManagedObjectContext.perform<A>(_:)(a1, a2, a3, a4);
  }

  v4[13] = v5;
  v11 = v4[11];
  if (v5 >= *(v11 + 16))
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(_:)(a1, a2, a3, a4);
  }

  sub_100311C5C(v11 + ((*(v4[9] + 80) + 32) & ~*(v4[9] + 80)) + *(v4[9] + 72) * v5, v4[10]);
  AppDependency.wrappedValue.getter();
  v4[14] = v4[3];
  v12 = swift_task_alloc();
  v4[15] = v12;
  *v12 = v4;
  v12[1] = sub_100310DFC;

  return (sub_1001A9F98)();
}

uint64_t sub_100311198()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_10031138C;
  }

  else
  {
    v4 = *(v2 + 136);

    v3 = sub_1003112B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003112B8()
{
  static IntentResult.result<>()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100311328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031138C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003113FC@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes23DeleteAttachmentsIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_100311428(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 note];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      *(v7 + 24) = v6;
      v11[4] = sub_100311E70;
      v11[5] = v7;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_100249504;
      v11[3] = &unk_100655FE0;
      v8 = _Block_copy(v11);
      v9 = v4;
      v10 = v6;

      [v10 enumerateAttachmentsInOrderUsingBlock:v8];
      _Block_release(v8);
      [v10 updateModificationDateAndChangeCountAndSaveImmediately];
      sub_1000054A4(0, &unk_1006C2C90);
      [swift_getObjCClassFromMetadata() deleteAttachment:v3];
    }

    else
    {
    }
  }
}

void sub_1003115B0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  sub_1000054A4(0, &qword_1006C1730);
  if (static NSObject.== infix(_:_:)())
  {
    v10 = [a6 textStorage];
    if (v10)
    {
      v11 = v10;
      v12 = String._bridgeToObjectiveC()();
      [v11 replaceCharactersInRange:a2 withString:{a3, v12}];
    }

    *a4 = 1;
  }
}

uint64_t _s11MobileNotes23DeleteAttachmentsIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v29 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v28 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v21 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v26 = &v21 - v7;
  v25 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v24 = type metadata accessor for LocalizedStringResource();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C34B0);
  v32 = 0xD000000000000021;
  v33 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v23 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v32 = 0xD000000000000024;
  v33 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006BCCE8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = *(v8 + 104);
  v16 = v25;
  v15(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v25);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15(v10, v14, v16);
  v17 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v22 + 56))(v17, 0, 1, v24);
  v34 = 0;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v27, 1, 1, v18);
  v19(v28, 1, 1, v18);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_100311D1C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  return v23;
}

uint64_t sub_100311C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100311CC4()
{
  result = qword_1006C4010;
  if (!qword_1006C4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4010);
  }

  return result;
}

unint64_t sub_100311D1C()
{
  result = qword_1006BCCF0;
  if (!qword_1006BCCF0)
  {
    type metadata accessor for AttachmentEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BCCF0);
  }

  return result;
}

unint64_t sub_100311D7C()
{
  result = qword_1006C4018;
  if (!qword_1006C4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4018);
  }

  return result;
}

unint64_t sub_100311DD4()
{
  result = qword_1006C4020;
  if (!qword_1006C4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4020);
  }

  return result;
}

uint64_t sub_100311E78()
{
  result = _s11MobileNotes20VisibleAccountsQueryVACycfC_0();
  static AccountEntity.defaultQuery = result;
  *algn_1006EF698 = v1;
  byte_1006EF6A0 = v2 & 1;
  return result;
}

uint64_t *AccountEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1006BC770 != -1)
  {
    swift_once();
  }

  return &static AccountEntity.defaultQuery;
}

uint64_t static AccountEntity.defaultQuery.getter()
{
  if (qword_1006BC770 != -1)
  {
    swift_once();
  }

  v0 = static AccountEntity.defaultQuery;

  return v0;
}

uint64_t sub_100311F74()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static AccountEntity.typeDisplayRepresentation);
  sub_10002597C(v10, static AccountEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t AccountEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC778 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static AccountEntity.typeDisplayRepresentation);
}

uint64_t static AccountEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC778 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static AccountEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AccountEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccountID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccountEntity.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for AccountID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccountEntity.managedObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountEntity.managedObjectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccountEntity.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountEntity() + 24));

  return v1;
}

uint64_t AccountEntity.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccountEntity() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static AccountEntity.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static AccountID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AccountEntity();
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t AccountEntity.hash(into:)()
{
  type metadata accessor for AccountID();
  sub_10001C264(&unk_1006C4040, &type metadata accessor for AccountID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for AccountEntity();
  type metadata accessor for URL();
  sub_10001C264(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int AccountEntity.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for AccountID();
  sub_10001C264(&unk_1006C4040, &type metadata accessor for AccountID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for AccountEntity();
  type metadata accessor for URL();
  sub_10001C264(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100312918()
{
  Hasher.init(_seed:)();
  type metadata accessor for AccountID();
  sub_10001C264(&unk_1006C4040, &type metadata accessor for AccountID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_10001C264(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100312A1C()
{
  type metadata accessor for AccountID();
  sub_10001C264(&unk_1006C4040, &type metadata accessor for AccountID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_10001C264(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100312B1C()
{
  Hasher.init(_seed:)();
  type metadata accessor for AccountID();
  sub_10001C264(&unk_1006C4040, &type metadata accessor for AccountID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_10001C264(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100312C1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC770 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1006EF698;
  v2 = byte_1006EF6A0;
  *a1 = static AccountEntity.defaultQuery;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t sub_100312CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static AccountID.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100312D3C(uint64_t a1)
{
  v2 = sub_10001C264(&qword_1006C4160, type metadata accessor for AccountEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t AccountEntity.displayRepresentation.getter()
{
  v1 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *(v0 + *(type metadata accessor for AccountEntity() + 24));
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v8 + 56))(v6, 1, 1, v7);
  v13 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_10031300C(uint64_t a1)
{
  v3 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*(v1 + *(a1 + 24)));
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v10 + 56))(v8, 1, 1, v9);
  v14 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100313264(uint64_t a1)
{
  v2 = sub_10001C264(&qword_1006C4108, type metadata accessor for AccountEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void AccountEntity.init<A>(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  static AccountEntity.identifier<A>(for:)(a1);
  v4 = [a1 localizedName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a2 + *(type metadata accessor for AccountEntity() + 24));
  *v9 = v6;
  v9[1] = v8;
  v10 = [a1 objectID];
  v11 = [v10 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

void static AccountEntity.identifier<A>(for:)(void *a1)
{
  v2 = type metadata accessor for ManagedEntityContextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccountID.Authority();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (v23 - v11);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v13 = a1;
    AccountID.Authority.init(_:)();
    (*(v7 + 16))(v10, v12, v6);
    (*(v3 + 104))(v5, enum case for ManagedEntityContextType.modern(_:), v2);
    AccountID.init(authority:contextType:)();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v23[3] = &OBJC_PROTOCOL___ICLegacyAccount;
    v14 = swift_dynamicCastObjCProtocolConditional();
    if (v14)
    {
      v15 = v14;
      v16 = a1;
      if ([v15 isLocalAccount])
      {
        (*(v7 + 104))(v12, enum case for AccountID.Authority.local(_:), v6);
        (*(v3 + 104))(v5, enum case for ManagedEntityContextType.html(_:), v2);
        AccountID.init(authority:contextType:)();
      }

      else
      {
        v17 = [objc_opt_self() emailAddressForAccount:v15];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23[0] = v16;
        v20 = v19;

        *v12 = v18;
        v12[1] = v20;
        (*(v7 + 104))(v12, enum case for AccountID.Authority.synced(_:), v6);
        (*(v3 + 104))(v5, enum case for ManagedEntityContextType.html(_:), v2);
        AccountID.init(authority:contextType:)();
      }
    }

    else
    {
      v23[1] = 0;
      v23[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v21._object = 0x800000010056C8E0;
      v21._countAndFlagsBits = 0xD00000000000003CLL;
      String.append(_:)(v21);
      swift_getObjectType();
      v22._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v22);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t AccountEntity.init(for:in:)(uint64_t a1, void *a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for AccountEntity();
  v3[6] = swift_task_alloc();
  v6 = a2;
  v7 = a3;

  return _swift_task_switch(sub_100313864, 0, 0);
}

uint64_t sub_100313864()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100313950;
  v8 = v0[5];
  v7 = v0[6];

  return NSManagedObjectContext.perform<A>(_:)(v7, sub_100192648, v3, v8);
}

uint64_t sub_100313950()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100313B00;
  }

  else
  {

    v2 = sub_100313A6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100313A6C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_100314040(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100313B00()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t AccountEntity.init(for:in:includeContents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100313BB0, 0, 0);
}

uint64_t sub_100313BB0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for AccountEntity();
  *v6 = v0;
  v6[1] = sub_100313CA8;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_100315CE4, v3, v7);
}

uint64_t sub_100313CA8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100313E2C;
  }

  else
  {

    v2 = sub_100313DC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100313DC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100313E2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100313EA0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    v18[1] = &OBJC_PROTOCOL___ICAccountObject;
    v7 = swift_dynamicCastObjCProtocolUnconditional();
    v8 = v5;
    sub_10042FBA0(v7);
    v9 = [v7 localizedName];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v15 = (a3 + *(type metadata accessor for AccountEntity() + 24));
    *v15 = v11;
    v15[1] = v13;
    v16 = [v7 objectID];
    v17 = [v16 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = v18[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100314040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AccountEntity.init(for:in:includeContents:noteContext:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = type metadata accessor for AccountEntity();
  v5[7] = swift_task_alloc();
  v8 = a2;
  v9 = a3;

  return _swift_task_switch(sub_100314158, 0, 0);
}

uint64_t sub_100314158()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100314244;
  v8 = v0[6];
  v7 = v0[7];

  return NSManagedObjectContext.perform<A>(_:)(v7, sub_100315CE4, v3, v8);
}

uint64_t sub_100314244()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100314400;
  }

  else
  {

    v2 = sub_100314360;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100314360()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  sub_100314040(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100314400()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t static AccountEntity.managedObjectID(for:in:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B70EC;

  return (sub_100314C68)(a1, a2);
}

id sub_100314550@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 legacyAccountForLocalAccount];
  if (result)
  {
    v4 = [result objectID];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_1003145C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() localAccountInContext:a1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectID];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_100314650(void *a1@<X0>, void *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 legacyAccountForEmailAddress:v4];

  if (v5)
  {
    v6 = [v5 objectID];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1003146EC(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 activeAccountWithUserRecordName:v5 context:a1];

  if (v6)
  {
    v7 = [v6 objectID];
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

uint64_t sub_1003147A8(uint64_t a1, void *a2, void *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return AccountEntity.init(for:in:)(a1, a2, a3);
}

uint64_t sub_100314858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  return _swift_task_switch(sub_10031487C, 0, 0);
}

uint64_t sub_10031487C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100314968;
  v7 = v0[5];
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_100315CE4, v3, v7);
}

uint64_t sub_100314968()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100314A84;
  }

  else
  {

    v2 = sub_100315CFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100314A84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100314AF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000A600;

  return AccountEntity.init(for:in:includeContents:noteContext:)(a1, a2, a3, 0, a5);
}

uint64_t sub_100314BB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B75E8;

  return (sub_100314C68)(a1, a2);
}

uint64_t sub_100314C68(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = sub_10015DA04(&qword_1006C4200);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for ManagedEntityContextType();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for AccountID.Authority();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100314DC0, 0, 0);
}

uint64_t sub_100314DC0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  AccountID.authority.getter();
  AccountID.contextType.getter();
  v9 = *(v8 + 48);
  (*(v2 + 32))(v7, v1, v3);
  (*(v6 + 32))(v7 + v9, v4, v5);
  v10 = (*(v2 + 88))(v7, v3);
  if (v10 == enum case for AccountID.Authority.synced(_:))
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    (*(*(v0 + 112) + 96))(v13, *(v0 + 104));
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v12 + 88))(v7 + v9, v11);
    if (v16 == enum case for ManagedEntityContextType.modern(_:))
    {
      v17 = [*(v0 + 56) modernManagedObjectContext];
      *(v0 + 200) = v17;
      v18 = swift_allocObject();
      *(v0 + 208) = v18;
      v18[2] = v15;
      v18[3] = v14;
      v18[4] = v17;
      v17;
      v19 = swift_task_alloc();
      *(v0 + 216) = v19;
      v20 = sub_10015DA04(&unk_1006BFED0);
      *v19 = v0;
      v19[1] = sub_1003158D0;
      v21 = sub_100315C6C;
      v22 = v0 + 16;
LABEL_10:
      v32 = v18;
LABEL_15:

      return NSManagedObjectContext.perform<A>(_:)(v22, v21, v32, v20);
    }

    if (v16 == enum case for ManagedEntityContextType.html(_:))
    {
      v27 = [*(v0 + 56) htmlManagedObjectContext];
      *(v0 + 176) = v27;
      if (v27)
      {
        v28 = v27;
        v29 = *(v0 + 56);
        v18 = swift_allocObject();
        *(v0 + 184) = v18;
        v18[2] = v29;
        v18[3] = v15;
        v18[4] = v14;
        v30 = v29;
        v28;
        v31 = swift_task_alloc();
        *(v0 + 192) = v31;
        v20 = sub_10015DA04(&unk_1006BFED0);
        *v31 = v0;
        v31[1] = sub_100315700;
        v21 = sub_100315C8C;
        v22 = v0 + 24;
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if (v10 == enum case for AccountID.Authority.local(_:))
  {
    v23 = (*(*(v0 + 88) + 88))(v7 + v9, *(v0 + 80));
    if (v23 == enum case for ManagedEntityContextType.modern(_:))
    {
      v24 = [*(v0 + 56) modernManagedObjectContext];
      *(v0 + 152) = v24;
      v25 = swift_allocObject();
      *(v0 + 160) = v25;
      *(v25 + 16) = v24;
      v24;
      v26 = swift_task_alloc();
      *(v0 + 168) = v26;
      v20 = sub_10015DA04(&unk_1006BFED0);
      *v26 = v0;
      v26[1] = sub_100315534;
      v21 = sub_100315CAC;
      v22 = v0 + 32;
    }

    else
    {
      if (v23 != enum case for ManagedEntityContextType.html(_:))
      {
        goto LABEL_18;
      }

      v33 = [*(v0 + 56) htmlManagedObjectContext];
      *(v0 + 128) = v33;
      if (!v33)
      {
LABEL_22:

        v38 = *(v0 + 8);

        return v38(0);
      }

      v34 = v33;
      v35 = *(v0 + 56);
      v25 = swift_allocObject();
      *(v0 + 136) = v25;
      *(v25 + 16) = v35;
      v34;
      v36 = v35;
      v37 = swift_task_alloc();
      *(v0 + 144) = v37;
      v20 = sub_10015DA04(&unk_1006BFED0);
      *v37 = v0;
      v37[1] = sub_100315364;
      v21 = sub_100315CC8;
      v22 = v0 + 40;
    }

    v32 = v25;
    goto LABEL_15;
  }

LABEL_18:

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_100315364()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 128);

    return _swift_task_switch(sub_1003154A4, 0, 0);
  }
}

uint64_t sub_1003154A4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100315534()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100315670, 0, 0);
  }
}

uint64_t sub_100315670()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100315700()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 176);

    return _swift_task_switch(sub_100315840, 0, 0);
  }
}

uint64_t sub_100315840()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1003158D0()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100315A0C, 0, 0);
  }
}

uint64_t sub_100315A0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100315AE8()
{
  result = qword_1006C40D0;
  if (!qword_1006C40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C40D0);
  }

  return result;
}

unint64_t sub_100315B88()
{
  result = qword_1006C40F8;
  if (!qword_1006C40F8)
  {
    sub_10017992C(&qword_1006C4100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C40F8);
  }

  return result;
}

uint64_t sub_100315BEC(uint64_t a1)
{
  result = sub_10001C264(&qword_1006C4160, type metadata accessor for AccountEntity);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100315D14()
{
  result = qword_1006C4208;
  if (!qword_1006C4208)
  {
    sub_10017992C(&qword_1006C4210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4208);
  }

  return result;
}

Swift::Int sub_100315D84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100315E50()
{
  String.hash(into:)();
}

Swift::Int sub_100315F08()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100315FD0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003161D4(*a1);
  *a2 = result;
  return result;
}

void sub_100316000(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = "RIGHT_TO_LEFT_OVERRIDE";
  v5 = "com.apple.notes.account";
  v6 = 0xD000000000000016;
  v7 = "com.apple.notes.folder";
  v8 = 0xD000000000000014;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ALL;
    v7 = "com.apple.notes.note";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = "com.apple.notes.archive";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

unint64_t sub_100316150()
{
  result = qword_1006C4218;
  if (!qword_1006C4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4218);
  }

  return result;
}

unint64_t sub_1003161A8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003161D4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003161D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D0D8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100316220()
{
  result = qword_1006C4220;
  if (!qword_1006C4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4220);
  }

  return result;
}

void *sub_100316274()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      if (([v3 isDefaultFolderForAccount] & 1) != 0 || objc_msgSend(v3, "isTrashFolder"))
      {

        return _swiftEmptyArrayStorage;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return sub_100393518();
}

id sub_1003163C0()
{
  v0 = sub_10039373C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 children];
  sub_1000054A4(0, &qword_1006C6400);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100316D64();
  v4 = sub_100316E18();
  sub_1002DC26C(v4);
  v5 = sub_1003171D8();
  sub_1002DC26C(v5);

  if (v3 >> 62)
  {
    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_10030F40C(0, 0, v3);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v1 menuByReplacingChildren:isa];

  return v7;
}

void sub_100316584()
{
  v42 = sub_100393814();
  v0 = [v42 children];
  sub_1000054A4(0, &qword_1006C6400);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_75;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_76:
    if (v43)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_79;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      break;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      break;
    }

    v14 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_20;
    }

LABEL_16:
    ++v3;
    if (v14 == v2)
    {
      goto LABEL_76;
    }
  }

  v7 = [v6 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    goto LABEL_21;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_22;
  }

  v14 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
LABEL_21:

LABEL_22:
  v15 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    goto LABEL_87;
  }

  if (v43)
  {
    if (v15 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_79;
    }

LABEL_27:
    v16 = v3 + 5;
    while (1)
    {
      v17 = v16 - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        if (v17 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v18 = *(v1 + 8 * v16);
      }

      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20 || (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0))
      {
        v21 = [v20 identifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
        {

          goto LABEL_60;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          goto LABEL_60;
        }

        if (v17 != v3)
        {
LABEL_43:
          if ((v1 & 0xC000000000000001) != 0)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 < 0)
            {
              goto LABEL_84;
            }

            v30 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v30)
            {
              goto LABEL_85;
            }

            if (v17 >= v30)
            {
              goto LABEL_86;
            }

            v31 = *(v1 + 8 * v16);
            v28 = *(v1 + 8 * v3 + 32);
            v29 = v31;
          }

          v32 = v29;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_10030FFBC(v1);
            v33 = (v1 >> 62) & 1;
          }

          else
          {
            LODWORD(v33) = 0;
          }

          v34 = v1 & 0xFFFFFFFFFFFFFF8;
          v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v32;

          if ((v1 & 0x8000000000000000) != 0 || v33)
          {
            v1 = sub_10030FFBC(v1);
            v34 = v1 & 0xFFFFFFFFFFFFFF8;
            if ((v17 & 0x8000000000000000) != 0)
            {
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              v2 = _CocoaArrayWrapper.endIndex.getter();
              if (!v2)
              {
                goto LABEL_76;
              }

              goto LABEL_3;
            }
          }

          else if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v17 >= *(v34 + 16))
          {
            goto LABEL_74;
          }

          v36 = *(v34 + 8 * v16);
          *(v34 + 8 * v16) = v28;
        }
      }

      else
      {

        if (v17 != v3)
        {
          goto LABEL_43;
        }
      }

      if (__OFADD__(v3++, 1))
      {
        goto LABEL_73;
      }

LABEL_60:
      v38 = v16 - 3;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_71;
      }

      if (v1 >> 62)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v16;
      if (v38 == v39)
      {
        goto LABEL_79;
      }
    }
  }

  if (v15 != *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_79:
  if (v1 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40 < v3)
    {
      goto LABEL_83;
    }

LABEL_81:
    sub_10030F3E4(v3, v40);
    v44 = sub_100316BBC();
    sub_10015DA04(&qword_1006C32B8);
    Array.appendNonNil(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 menuByReplacingChildren:isa];
  }

  else
  {
    v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40 >= v3)
    {
      goto LABEL_81;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }
}

uint64_t sub_100316BBC()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  if (![v3 isDeletable])
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = objc_allocWithZone(ICDeleteFolderActivity);
  v7 = v4;
  v8 = [v6 initWithFolder:v3 presentingViewController:Strong sender:v0];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v9 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v12[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10017C07C;
    v12[3] = &unk_1006561D8;
    v10 = _Block_copy(v12);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 actionWithCompletion:v10];

  _Block_release(v10);
  return v11;
}

id sub_100316DA0()
{
  v0 = objc_opt_self();

  return [v0 setHidesSystemPaperNotesInCustomFolders:0];
}

id sub_100316DDC()
{
  v0 = objc_opt_self();

  return [v0 setHidesSystemPaperNotesInCustomFolders:1];
}

void *sub_100316E54(uint64_t a1, SEL *a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder);
  if (v4)
  {
    v7 = v4;
    v8 = [v7 type];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v15 = _swiftEmptyArrayStorage;
LABEL_11:

        return v15;
      }
    }

    v16 = objc_opt_self();
    v17 = [v16 mainBundle];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = objc_opt_self();
    v21 = [v20 *a2] ^ 1;
    sub_1000054A4(0, &unk_1006BD380);
    v28 = a3;
    v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v23 = [v16 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 localizedStringForKey:v24 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [v20 *a2];
    v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_10015DA04(&unk_1006BD390);
    v15 = swift_allocObject();
    *(v15 + 1) = xmmword_100531E20;
    v15[4] = v22;
    v15[5] = v26;
    goto LABEL_11;
  }

  return _swiftEmptyArrayStorage;
}

id sub_100317160()
{
  v0 = objc_opt_self();

  return [v0 setHidesMathNotesInCustomFolders:0];
}

id sub_10031719C()
{
  v0 = objc_opt_self();

  return [v0 setHidesMathNotesInCustomFolders:1];
}

id sub_100317214()
{
  v0 = objc_opt_self();

  return [v0 setHidesCallNotesInCustomFolders:0];
}

id sub_100317250()
{
  v0 = objc_opt_self();

  return [v0 setHidesCallNotesInCustomFolders:1];
}

id sub_10031728C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = [objc_opt_self() sharedContext];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 managedObjectContext];
  }

  else
  {
    v17 = 0;
  }

  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_context] = v17;
  v18 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v14[v18] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v19 = &v14[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v19 = 0;
  v19[1] = 0;
  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = a1;
  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = 0;
  swift_unknownObjectWeakAssign();
  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v20 = *v19;
  *v19 = a5;
  v19[1] = a6;
  v21 = a3;
  v22 = a1;
  sub_100010854(a5);
  sub_10000C840(v20);
  v25.receiver = v14;
  v25.super_class = type metadata accessor for NoteContainerActionMenu();
  v23 = objc_msgSendSuper2(&v25, "init");
  sub_10000C840(a5);

  return v23;
}

id sub_100317570(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = [objc_opt_self() sharedContext];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 managedObjectContext];
  }

  else
  {
    v17 = 0;
  }

  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_context] = v17;
  v18 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v14[v18] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v19 = &v14[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v19 = 0;
  v19[1] = 0;
  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = 0;
  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = a1;
  swift_unknownObjectWeakAssign();
  *&v14[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v20 = *v19;
  *v19 = a5;
  v19[1] = a6;
  v21 = a3;
  v22 = a1;
  sub_100010854(a5);
  sub_10000C840(v20);
  v25.receiver = v14;
  v25.super_class = type metadata accessor for NoteContainerActionMenu();
  v23 = objc_msgSendSuper2(&v25, "init");
  sub_10000C840(a5);

  return v23;
}

id sub_100317854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderListActionMenu();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003178AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_opt_self() sharedContext];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 managedObjectContext];
  }

  else
  {
    v13 = 0;
  }

  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_context] = v13;
  v14 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v6[v14] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v6[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v15 = 0;
  v15[1] = 0;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = a1;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = 0;
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v16 = *v15;
  *v15 = a5;
  v15[1] = a6;
  v17 = a3;
  v18 = a1;
  sub_100010854(a5);
  sub_10000C840(v16);
  v20.receiver = v6;
  v20.super_class = type metadata accessor for NoteContainerActionMenu();
  return objc_msgSendSuper2(&v20, "init");
}

id sub_100317A64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_opt_self() sharedContext];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 managedObjectContext];
  }

  else
  {
    v13 = 0;
  }

  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_context] = v13;
  v14 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v6[v14] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v6[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v15 = 0;
  v15[1] = 0;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = 0;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = a1;
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v16 = *v15;
  *v15 = a5;
  v15[1] = a6;
  v17 = a3;
  v18 = a1;
  sub_100010854(a5);
  sub_10000C840(v16);
  v20.receiver = v6;
  v20.super_class = type metadata accessor for NoteContainerActionMenu();
  return objc_msgSendSuper2(&v20, "init");
}

unint64_t sub_100317C48(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >> 62)
  {
    v9 = a1;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v9;
    if (!v2)
    {
      return v2 & 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v2 & 1;
    }
  }

  if (*(a1 + 72))
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 64);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= result)
  {
LABEL_12:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v1 + 8 * v3 + 32);
LABEL_11:
    v6 = v5;
    __chkstk_darwin(v5);
    type metadata accessor for ICSelectionStateModel(0);
    Array.firstSearchingBackwardsIndex(from:matching:)();
    v8 = v7;

    LOBYTE(v2) = v8 ^ 1;
    return v2 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100317E0C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >> 62)
  {
    v9 = a1;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v9;
    if (!v2)
    {
      return v2 & 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v2 & 1;
    }
  }

  if (*(a1 + 72))
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 64);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= result)
  {
LABEL_12:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v1 + 8 * v3 + 32);
LABEL_11:
    v6 = v5;
    __chkstk_darwin(v5);
    type metadata accessor for ICSelectionStateModel(0);
    Array.firstSearchingForwardsIndex(from:matching:)();
    v8 = v7;

    LOBYTE(v2) = v8 ^ 1;
    return v2 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100317FCC(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  v6 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = *(a2 + 24);
  if (v9)
  {
    v16 = a1;
    v10 = a1;
    v9(&v16);
  }

  if ((a3 & 1) != 0 && (v11 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection, swift_beginAccess(), sub_100006038(a1 + v11, v8, &unk_1006BFEA0), v12 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0), LODWORD(v11) = (*(*(v12 - 8) + 48))(v8, 1, v12), sub_1000073B4(v8, &unk_1006BFEA0), v11 == 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = static NSObject.== infix(_:_:)() ^ 1;
  }

  return v13 & 1;
}

uint64_t (*sub_100318158(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
LABEL_5:
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10032D240;
    *(v10 + 24) = v6;
    sub_100010854(a1);
    result = sub_10032D224;
    goto LABEL_6;
  }

  v7 = *(a3 + 24);
  if (v7)
  {
    v8 = *(a3 + 32);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10032D220;
    *(v6 + 24) = v9;

    goto LABEL_5;
  }

  result = 0;
LABEL_6:
  v12 = *(a3 + 56);
  if (v12 >> 62)
  {
    v20 = result;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    result = v20;
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_19:
    sub_10000C840(result);
    return 0;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_8:
  if (*(a3 + 72))
  {
    goto LABEL_19;
  }

  v13 = *(a3 + 64);
  if (v12 >> 62)
  {
    v15 = result;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    result = v15;
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v13 & 0x8000000000000000) != 0 || v13 >= v14)
  {
    goto LABEL_19;
  }

  v16 = __chkstk_darwin(result);
  type metadata accessor for ICSelectionStateModel(0);
  v17 = Array.firstSearchingBackwardsIndex(from:matching:)();
  v19 = v18;
  sub_10000C840(v16);
  if (v19)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

uint64_t (*sub_1003183E4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_10032D240;
LABEL_5:
    v11 = v7;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v6;
    sub_100010854(a1);
    result = sub_10032B258;
    goto LABEL_6;
  }

  v8 = *(a3 + 24);
  if (v8)
  {
    v9 = *(a3 + 32);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10032B250;
    *(v6 + 24) = v10;

    v7 = sub_10032B254;
    goto LABEL_5;
  }

  result = 0;
LABEL_6:
  v14 = *(a3 + 56);
  if (v14 >> 62)
  {
    v22 = result;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    result = v22;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_19:
    sub_10000C840(result);
    return 0;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_8:
  if (*(a3 + 72))
  {
    goto LABEL_19;
  }

  v15 = *(a3 + 64);
  if (v14 >> 62)
  {
    v17 = result;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    result = v17;
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v15 & 0x8000000000000000) != 0 || v15 >= v16)
  {
    goto LABEL_19;
  }

  v18 = __chkstk_darwin(result);
  type metadata accessor for ICSelectionStateModel(0);
  v19 = Array.firstSearchingForwardsIndex(from:matching:)();
  v21 = v20;
  sub_10000C840(v18);
  if (v21)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_10031866C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v11 = sub_10015DA04(&unk_1006BFEA0);
  result = __chkstk_darwin(v11 - 8);
  v14 = &v22[-v13];
  v23 = a1;
  if (a2)
  {
    result = a2(&v23);
  }

  if (a4)
  {
    v15 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_100006038(a1 + v15, v14, &unk_1006BFEA0);
    v16 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    LODWORD(v15) = (*(*(v16 - 8) + 48))(v14, 1, v16);
    result = sub_1000073B4(v14, &unk_1006BFEA0);
    if (v15 == 1)
    {
      v17 = 0;
      return v17 & 1;
    }
  }

  v18 = *(a5 + 56);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) > a6)
  {
    v19 = *(v18 + 8 * a6 + 32);
LABEL_10:
    v20 = v19;
    type metadata accessor for ICSelectionStateModel(0);
    v21 = static NSObject.== infix(_:_:)();

    v17 = v21 ^ 1;
    return v17 & 1;
  }

  __break(1u);
  return result;
}

void sub_100318834(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4 >> 62)
  {
    v2 = a2;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 <= a2)
    {
      return;
    }

    while (1)
    {
      *(a1 + 64) = a2;
      *(a1 + 72) = 0;
      v6 = *(a1 + 56);
      if ((v6 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v7 = *(v6 + 8 * a2 + 32);
        goto LABEL_6;
      }

      __break(1u);
LABEL_13:
      a2 = v2;
      if (v5 <= v2)
      {
        return;
      }
    }
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
  v8 = v7;
  sub_100015450();
}

uint64_t sub_100318910(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 >> 62)
  {
    v3 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    result = v3;
    if (!v4)
    {
      return 0;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if (*(result + 72))
  {
    return 0;
  }

  v2 = *(result + 64);
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  __chkstk_darwin(result);
  type metadata accessor for ICSelectionStateModel(0);
  Array.firstSearchingBackwards(from:matching:)();
  result = v5;
  if (v5)
  {
    return result;
  }

  result = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  __chkstk_darwin(result);
  Array.firstSearchingForwards(from:matching:)();
  return v6;
}

uint64_t sub_100318AD8(void *a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 24);
  if (v6)
  {
    v14 = a1;
    sub_100010854(v6);
    v7 = a1;
    v6(&v14);
    sub_10000C840(v6);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v14 = a3;
    v13 = a1;
    v9 = a1;
    sub_100010854(v8);
    v10 = a3;
    v11 = v8(&v14, &v13);
    sub_10000C840(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_100318C04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);

    sub_10015DA04(&qword_1006BE060);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

void sub_100318CA8(int a1@<W2>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v22 = a1, v5 = Strong + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue, v6 = Strong, swift_beginAccess(), v7 = *v5, v17 = *(v5 + 16), v16 = v7, v8 = *(v5 + 32), v9 = *(v5 + 48), v10 = *(v5 + 64), v21 = *(v5 + 80), v19 = v9, v20 = v10, v18 = v8, sub_100006038(&v16, v14, &qword_1006C42D0), v6, v14[2] = v18, v14[3] = v19, v14[4] = v20, v15 = v21, v14[0] = v16, v14[1] = v17, __chkstk_darwin(v11), type metadata accessor for ICSelectionStateModel(0), OS_dispatch_queue.sync<A>(execute:)(), sub_1000073B4(&v16, &qword_1006C42D0), v12 = sub_100016590(), v13, v12))
  {
    [v12 setAutomaticallyRemoveDeletedTags:v22 & 1];

    *a2 = 0;
  }

  else
  {
    *a2 = 1;
  }
}

id sub_100318E80()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_observers;
  result = swift_beginAccess();
  v4 = *&v0[v2];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v0[v2] = _swiftEmptyArrayStorage;

    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, "dealloc");
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      AnyCancellable.cancel()();
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10031915C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_persistenceConfiguration);
  if (sub_1001F45FC(a1, a2))
  {
    return 1;
  }

  if (a1 && a2)
  {
    v7 = a1;
    v8 = sub_1001B9EA4();
    if (v8)
    {
      v9 = v8;
      v10 = [v5 makeModernBackgroundContext];
      if (v10)
      {
        v11 = v10;
        v12 = (*(v10 + 2))();
        _Block_release(v11);
        __chkstk_darwin(v13);
        NSManagedObjectContext.performAndWait<A>(_:)();

        return v14;
      }
    }
  }

  return 0;
}

uint64_t sub_10031928C(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  sub_10000C850(a2, 1, a3);
  return swift_endAccess();
}

uint64_t sub_1003192FC(void *a1, uint64_t a2, char a3, uint64_t (*a4)(), uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willAdoptModelForSelectionStateController:v5 isNavigating:0];
    swift_unknownObjectRelease();
  }

  v9 = *&v5[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10032D144;
  *(v11 + 24) = v10;
  v27 = sub_10032D13C;
  v28 = v11;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000EAF8;
  v26 = &unk_1006579C0;
  v12 = _Block_copy(&aBlock);
  v13 = v9;
  v14 = v5;
  v15 = a1;

  dispatch_sync(v13, v12);

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      if (a4)
      {
        v27 = a4;
        v28 = a5;
        aBlock = _NSConcreteStackBlock;
        v24 = 1107296256;
        v25 = sub_10028DCE8;
        v26 = &unk_1006579E8;
        a4 = _Block_copy(&aBlock);
      }

      [v19 selectionStateController:v14 didAdoptModelFromArchive:a2 systemPaperAlert:a3 & 1 completion:a4];
      swift_unknownObjectRelease();
      _Block_release(a4);
    }
  }

  return result;
}

void sub_10031965C(int a1, int a2)
{
  v3 = v2;
  LODWORD(v65) = a2;
  LODWORD(v66) = a1;
  v4 = sub_10015DA04(&unk_1006BFEA0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v61 - v9;
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  v13 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - v14;
  v16 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  v17 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v67 = v2;
  v18 = v17;
  sub_10015DA04(&qword_1006BFF10);
  OS_dispatch_queue.sync<A>(execute:)();

  v20 = *&v70[0];
  if (!*&v70[0])
  {
    return;
  }

  v62 = v7;
  v63 = v16;
  v21 = *&v3[v16];
  __chkstk_darwin(v19);
  v64 = v10;
  *(&v61 - 2) = v3;
  type metadata accessor for ICSelectionStateModel(0);
  v22 = v21;
  OS_dispatch_queue.sync<A>(execute:)();

  v23 = *&v70[0];
  v24 = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
  v70[2] = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
  v70[3] = v24;
  v70[4] = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
  v25 = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
  v70[0] = *&v3[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  v70[1] = v25;
  sub_100006038(v70, v69, &unk_1006C4328);
  sub_1000108C4(v20, 0, v70);
  sub_1000073B4(v70, &unk_1006C4328);
  v26 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_100006038(&v20[v26], v15, &qword_1006BEF28);
  v27 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v28 = (*(*(v27 - 8) + 48))(v15, 1, v27);
  sub_1000073B4(v15, &qword_1006BEF28);
  v29 = v28 == 1;
  v30 = v64;
  if (v29)
  {
    v31 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_100006038(&v20[v31], v12, &unk_1006BFEA0);
    v32 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    if ((*(*(v32 - 8) + 48))(v12, 1, v32) == 1)
    {

      sub_1000073B4(v12, &unk_1006BFEA0);
      return;
    }

    sub_1000073B4(v12, &unk_1006BFEA0);
  }

  v33 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = 0;
  v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = v65 & 1;
  v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
  v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 1;
  v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
  v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = v66 & 1;
  v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
  v68.receiver = v34;
  v68.super_class = v33;
  v35 = objc_msgSendSuper2(&v68, "init");
  v36 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
  swift_beginAccess();
  sub_100006038(&v20[v36], v30, &unk_1006BFEA0);
  v37 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
  v38 = *(v37 - 8);
  v39 = (*(v38 + 48))(v30, 1, v37);
  v66 = v23;
  if (v39 != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        sub_10032CD7C(v30, type metadata accessor for ICSelectionStateModel.ObjectSelection);
      }

      else
      {
        v43 = *(sub_10015DA04(&unk_1006C43C0) + 48);
        v44 = type metadata accessor for URL();
        v45 = *(*(v44 - 8) + 8);
        v45(v30 + v43, v44);
        v45(v30, v44);
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v46 = v30;
      v47 = *v30;
      v48 = *(v30 + 8);

      if (!v47)
      {

        goto LABEL_22;
      }

      if (!v48)
      {

        goto LABEL_22;
      }

      v42 = v62;
      *v62 = v47;
      *(v42 + 8) = v48;
      *(v42 + 16) = v35;
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v41 = *v30;

      if (v41)
      {
        v42 = v62;
        *v62 = v41;
        *(v42 + 8) = v35;
LABEL_21:
        swift_storeEnumTagMultiPayload();
        (*(v38 + 56))(v42, 0, 1, v37);
        swift_beginAccess();
        v50 = v35;
        sub_10000A49C(v42, &v20[v36], &unk_1006BFEA0);
        swift_endAccess();
      }
    }

    else
    {
      v49 = *v30;

      if (v49)
      {
        v42 = v62;
        *v62 = v49;
        *(v42 + 8) = v35;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v65 = v35;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willAdoptModelForSelectionStateController:v3 isNavigating:0];
    swift_unknownObjectRelease();
  }

  v52 = *&v3[v63];
  v53 = swift_allocObject();
  *(v53 + 16) = v3;
  *(v53 + 24) = v20;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_10032CD5C;
  *(v54 + 24) = v53;
  v69[4] = sub_10032D13C;
  v69[5] = v54;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 1107296256;
  v69[2] = sub_10000EAF8;
  v69[3] = &unk_100657920;
  v55 = _Block_copy(v69);
  v56 = v52;
  v57 = v3;

  v58 = v20;

  dispatch_sync(v56, v55);

  _Block_release(v55);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if (v56)
  {
    __break(1u);
  }

  else
  {
    v59 = swift_unknownObjectWeakLoadStrong();
    if (v59)
    {
      v60 = v66;
      [v59 selectionStateController:v57 didAdoptModelFromOldModel:v66 isNavigating:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100319ED8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = v6;
  v19 = v3[2];
  v20 = v6;
  v21 = v3[4];
  v9 = *v3;
  v8 = v3[1];
  v18[0] = v4;
  v18[1] = v8;
  v14 = v19;
  v15 = v7;
  v16 = v3[4];
  v22 = *(v3 + 10);
  v17 = *(v3 + 10);
  v12 = v9;
  v13 = v5;
  sub_100006038(v18, v11, &qword_1006C42D0);
  sub_10015DA04(&qword_1006BFF10);
  OS_dispatch_queue.sync<A>(execute:)();
  result = sub_1000073B4(v18, &qword_1006C42D0);
  *a2 = v11[0];
  return result;
}

void sub_10031A000(uint64_t a1@<X0>, int a2@<W2>, char **a3@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = v8;
  v22 = v5[2];
  v23 = v8;
  v24 = v5[4];
  v11 = *v5;
  v10 = v5[1];
  v21[0] = v6;
  v21[1] = v10;
  v17 = v22;
  v18 = v9;
  v19 = v5[4];
  v25 = *(v5 + 10);
  v20 = *(v5 + 10);
  v15 = v11;
  v16 = v7;
  sub_100006038(v21, &v14, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v21, &qword_1006C42D0);
  v12 = v14;
  v13 = sub_10001566C(a2, 1);

  *a3 = v13;
}

uint64_t sub_10031A18C(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willAdoptModelForSelectionStateController:v2 isNavigating:0];
    swift_unknownObjectRelease();
  }

  v6 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10032D144;
  *(v8 + 24) = v7;
  v17[4] = sub_10032D13C;
  v17[5] = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000EAF8;
  v17[3] = &unk_1006578A8;
  v9 = _Block_copy(v17);
  v10 = v6;
  v11 = v2;
  v12 = a1;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      if ([v15 respondsToSelector:"selectionStateController:didAdoptInstantNoteModelFromArchive:"])
      {
        [v16 selectionStateController:v11 didAdoptInstantNoteModelFromArchive:a2];
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10031A40C(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    v22 = 0;
LABEL_12:
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v18 = JSONEncoder.init()();
    __chkstk_darwin(v18);
    v20 = v19;
    sub_10015DA04(&qword_1006C42D0);
    OS_dispatch_queue.sync<A>(execute:)();

    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = aBlock;
    v26 = v32;
    sub_1000060B4(&unk_1006C43B0, &qword_1006C42D0);
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v24 = v30;
    v23[0] = v25;
    v23[1] = v26;
    v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    sub_1000073B4(v23, &qword_1006C42D0);

    sub_10000C840(v22);
    return v21;
  }

  v3 = a1;
  v4 = sub_100013FA4();
  v5 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
  __chkstk_darwin(v4);
  v7 = v6;
  sub_10015DA04(&unk_1006BFED0);
  OS_dispatch_queue.sync<A>(execute:)();

  v8 = aBlock;
  if (!v4)
  {
    if (!aBlock)
    {
      goto LABEL_8;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!aBlock)
  {
    v8 = v4;
    goto LABEL_10;
  }

  sub_1000054A4(0, &qword_1006BFEC0);
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
LABEL_8:

    v22 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v10 = *&v2[v5];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v3;
  v12 = swift_allocObject();
  v22 = sub_10032D144;
  *(v12 + 16) = sub_10032D144;
  *(v12 + 24) = v11;
  *&v33 = sub_10032D13C;
  *(&v33 + 1) = v12;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_10000EAF8;
  *(&v32 + 1) = &unk_100657830;
  v13 = _Block_copy(&aBlock);
  v14 = v3;
  v15 = v10;
  v16 = v2;

  dispatch_sync(v15, v13);

  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10031A8F0()
{
  v1 = *&v0[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10032CC34;
  *(v3 + 24) = v2;
  v9[4] = sub_10032D13C;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000EAF8;
  v9[3] = &unk_100657740;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10031AA50(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v2 = *v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10032CC3C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10032D13C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_1006577B8;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

void sub_10031AC14(void *a1)
{
  v3 = sub_10015DA04(&qword_1006BEF28);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = (&v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v4);
  v9 = (&v140 - v8);
  v10 = &v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
  if (*&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
  {
    v11 = *(v10 + 4);
    if (v11)
    {
      v12 = *(v10 + 5);
      if (v12)
      {
        v145 = &v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
        v147 = a1;
        v148 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
        __chkstk_darwin(v7);
        v149 = v1;
        *(&v140 - 2) = v1;
        v14 = v13;
        v15 = v12;
        v146 = v11;
        sub_10015DA04(&qword_1006BEE10);
        OS_dispatch_queue.sync<A>(execute:)();

        v17 = aBlock;
        if (aBlock)
        {
          v18 = v147;
          if (v147)
          {
            sub_1000054A4(0, &qword_1006C4310);
            v19 = v18;
            v20 = static NSObject.== infix(_:_:)();

            if ((v20 & 1) == 0)
            {
              goto LABEL_11;
            }

LABEL_9:

            return;
          }
        }

        else
        {
          v18 = v147;
          if (!v147)
          {
            goto LABEL_9;
          }
        }

LABEL_11:
        v157 = 0;
        __chkstk_darwin(v16);
        *(&v140 - 2) = v21;
        v23 = v22;
        OS_dispatch_queue.sync<A>(execute:)();

        v144 = v15;
        if (!aBlock || (aBlock, v18) && (v24 = [v18 isEmpty], !v24))
        {
          v49 = 0;
          v143 = 0;
          v50 = v157;
          if (!v157)
          {
            goto LABEL_60;
          }

LABEL_22:
          v51 = *&v149[v148];
          __chkstk_darwin(v24);
          *(&v140 - 2) = v52;
          type metadata accessor for ICSelectionStateModel(0);
          v53 = v50;
          v54 = v51;
          OS_dispatch_queue.sync<A>(execute:)();

          v55 = v158;
          v56 = v145[3];
          v160 = v145[2];
          v161 = v56;
          v162 = v145[4];
          v57 = v145[1];
          v158 = *v145;
          v159 = v57;
          sub_100006038(&v158, &v151, &unk_1006C4328);
          sub_1000108C4(v53, 0, &v158);
          sub_1000073B4(&v158, &unk_1006C4328);
          if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v53[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
          {
            v78 = v149;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v80 = Strong;
              v81 = [Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"];
              v15 = v144;
              if (v81)
              {
                [v80 selectionStateController:v78 didIgnoreDuplicateModel:v53];
                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }

              v77 = v146;
            }

            else
            {

              v77 = v146;
              v15 = v144;
            }

            goto LABEL_68;
          }

          v147 = v55;
          v142 = v49;
          v58 = v149;
          v59 = swift_unknownObjectWeakLoadStrong();
          if (v59)
          {
            [v59 willAdoptModelForSelectionStateController:v58 isNavigating:0];
            swift_unknownObjectRelease();
          }

          v60 = *&v58[v148];
          v61 = swift_allocObject();
          *(v61 + 16) = v58;
          *(v61 + 24) = v53;
          *(v61 + 32) = 0;
          v62 = swift_allocObject();
          *(v62 + 16) = sub_10032D24C;
          *(v62 + 24) = v61;
          v155 = sub_10032D13C;
          v156 = v62;
          v151 = _NSConcreteStackBlock;
          v152 = 1107296256;
          v153 = sub_10000EAF8;
          v154 = &unk_100657650;
          v63 = v53;
          v64 = v58;
          v65 = _Block_copy(&v151);
          v66 = v64;
          v67 = v63;
          v68 = v60;

          dispatch_sync(v68, v65);

          _Block_release(v65);
          LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

          if ((v65 & 1) == 0)
          {
            v69 = swift_unknownObjectWeakLoadStrong();
            v15 = v144;
            v49 = v142;
            if (v69)
            {
              v70 = v147;
              [v69 selectionStateController:v66 didAdoptModelFromOldModel:v147 isNavigating:0];

              swift_unknownObjectRelease();

LABEL_29:
              v71 = v49;
LABEL_70:
              sub_10000C840(v71);
              return;
            }

            v77 = v146;
            goto LABEL_37;
          }

          __break(1u);
          goto LABEL_92;
        }

        v151 = 0;
        v25 = v149;
        v26 = *&v149[v148];
        v27 = swift_allocObject();
        v27[2] = &v157;
        v27[3] = v25;
        v27[4] = &v151;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10032CB64;
        *(v28 + 24) = v27;
        v143 = v27;
        *&v165 = sub_10032D13C;
        *(&v165 + 1) = v28;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v164 = sub_10000EAF8;
        *(&v164 + 1) = &unk_1006576C8;
        v29 = _Block_copy(&aBlock);
        v30 = v26;
        v31 = v25;

        dispatch_sync(v30, v29);

        _Block_release(v29);
        LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

        if (v29)
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32 && (v33 = [v32 shouldRevertToDefaultFolderWhenUnselectingTagsForSelectionStateController:v31], swift_unknownObjectRelease(), v33))
        {
          sub_1000054A4(0, &qword_1006C3F30);
          isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
          v35 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
          v36 = objc_allocWithZone(v35);
          swift_unknownObjectWeakInit();
          v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = 0;
          swift_unknownObjectWeakAssign();
          v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = 1;
          v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = 0;
          *&v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = 0;
          v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = 1;
          *&v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = 0;
          *&v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = isa;
          v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = 1;
          *&v36[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = 0;
          v150.receiver = v36;
          v150.super_class = v35;
          v37 = objc_msgSendSuper2(&v150, "init");
          v38 = v37;
          if (v157)
          {
            v39 = *&v149[v148];
            __chkstk_darwin(v37);
            *(&v140 - 2) = v31;
            v142 = v40;
            v41 = v39;
            sub_10015DA04(&unk_1006BFED0);
            OS_dispatch_queue.sync<A>(execute:)();

            v42 = aBlock;
            v43 = v145[3];
            v165 = v145[2];
            v166 = v43;
            v167 = v145[4];
            v44 = v145[1];
            aBlock = *v145;
            v164 = v44;
            v45 = v38;
            sub_100006038(&aBlock, &v158, &unk_1006C4328);
            sub_1001F6D70(v42, &aBlock);
            v47 = v46;
            sub_1000073B4(&aBlock, &unk_1006C4328);

            if (v47)
            {
              objc_opt_self();
              v48 = swift_dynamicCastObjCClass();
              v15 = v144;
              v18 = v147;
              if (v48 || (objc_opt_self(), (v48 = swift_dynamicCastObjCClass()) != 0))
              {
                *v9 = v48;
                v9[1] = v38;
                v91 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
                swift_storeEnumTagMultiPayload();
                (*(*(v91 - 8) + 56))(v9, 0, 1, v91);
              }

              else
              {

                swift_unknownObjectRelease();
                v138 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
                (*(*(v138 - 8) + 56))(v9, 1, 1, v138);
              }
            }

            else
            {

              v90 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
              (*(*(v90 - 8) + 56))(v9, 1, 1, v90);
              v15 = v144;
              v18 = v147;
            }

            v92 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
            v38 = v142;
            swift_beginAccess();
            v93 = v38 + v92;
            v94 = v9;
LABEL_57:
            sub_10000A49C(v94, v93, &qword_1006BEF28);
            swift_endAccess();
            goto LABEL_58;
          }

          v15 = v144;
          v18 = v147;
        }

        else
        {
          v72 = swift_unknownObjectWeakLoadStrong();
          if (v72)
          {
            v73 = [v72 shouldRevertToAllTagsWhenUnselectingTagsForSelectionStateController:v31];
            v72 = swift_unknownObjectRelease();
            if (v73)
            {
              v74 = objc_allocWithZone(ICTagSelection);
              v38 = [v74 initWithManagedObjectContext:v146 mode:1];
              v15 = v144;
              v18 = v147;
              if (v157)
              {
                v75 = v157;
                sub_1001BAC68(v38, 0);
              }

              goto LABEL_58;
            }
          }

          v38 = v157;
          v15 = v144;
          v18 = v147;
          if (!v151)
          {
            if (!v157)
            {
              goto LABEL_59;
            }

            v82 = *&v149[v148];
            __chkstk_darwin(v72);
            *(&v140 - 2) = v31;
            v38 = v38;
            v83 = v82;
            sub_10015DA04(&unk_1006BFED0);
            OS_dispatch_queue.sync<A>(execute:)();

            v84 = aBlock;
            v85 = v145[3];
            v165 = v145[2];
            v166 = v85;
            v167 = v145[4];
            v86 = v145[1];
            aBlock = *v145;
            v164 = v86;
            sub_100006038(&aBlock, &v158, &unk_1006C4328);
            sub_1001F6D70(v84, &aBlock);
            v88 = v87;
            sub_1000073B4(&aBlock, &unk_1006C4328);

            if (v88)
            {
              objc_opt_self();
              v89 = swift_dynamicCastObjCClass();
              v15 = v144;
              v18 = v147;
              if (v89 || (objc_opt_self(), (v89 = swift_dynamicCastObjCClass()) != 0))
              {
                *v6 = v89;
                v6[1] = 0;
                v96 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
                swift_storeEnumTagMultiPayload();
                (*(*(v96 - 8) + 56))(v6, 0, 1, v96);
              }

              else
              {
                swift_unknownObjectRelease();
                v139 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
                (*(*(v139 - 8) + 56))(v6, 1, 1, v139);
              }
            }

            else
            {
              v95 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
              (*(*(v95 - 8) + 56))(v6, 1, 1, v95);
              v15 = v144;
              v18 = v147;
            }

            v97 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
            swift_beginAccess();
            v93 = v38 + v97;
            v94 = v6;
            goto LABEL_57;
          }

          v157 = v151;
          v76 = v151;
        }

LABEL_58:

LABEL_59:
        v49 = sub_10032CB64;
        v50 = v157;
        if (!v157)
        {
LABEL_60:
          if (!v18)
          {
            v53 = v146;
LABEL_69:

            v71 = v49;
            goto LABEL_70;
          }

          v98 = v18;
          if (![v98 isNonEmpty])
          {
            v77 = v98;
            v53 = v146;
            goto LABEL_68;
          }

          v141 = type metadata accessor for ICSelectionStateModel(0);
          v53 = [objc_allocWithZone(v141) init];
          v99 = sub_1001BAC68(v98, 0);
          __chkstk_darwin(v99);
          *(&v140 - 2) = v100;
          v102 = v101;
          sub_10015DA04(&unk_1006BFED0);
          OS_dispatch_queue.sync<A>(execute:)();

          v104 = v158;
          v142 = v49;
          if (!v158)
          {
LABEL_75:
            __chkstk_darwin(v103);
            *(&v140 - 2) = v115;
            v117 = v116;
            OS_dispatch_queue.sync<A>(execute:)();

            v118 = v158;
            v119 = v145[3];
            v160 = v145[2];
            v161 = v119;
            v162 = v145[4];
            v120 = v145[1];
            v158 = *v145;
            v159 = v120;
            sub_100006038(&v158, &v151, &unk_1006C4328);
            sub_1000108C4(v53, 0, &v158);
            sub_1000073B4(&v158, &unk_1006C4328);
            if ((static NSObject.== infix(_:_:)() & 1) == 0 || *&v53[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
            {
              v145 = v118;
              v147 = v98;
              v121 = v149;
              v122 = swift_unknownObjectWeakLoadStrong();
              if (v122)
              {
                [v122 willAdoptModelForSelectionStateController:v121 isNavigating:0];
                swift_unknownObjectRelease();
              }

              v123 = *&v121[v148];
              v124 = swift_allocObject();
              *(v124 + 16) = v121;
              *(v124 + 24) = v53;
              *(v124 + 32) = 0;
              v125 = swift_allocObject();
              *(v125 + 16) = sub_10032D24C;
              *(v125 + 24) = v124;
              v155 = sub_10032D13C;
              v156 = v125;
              v151 = _NSConcreteStackBlock;
              v152 = 1107296256;
              v153 = sub_10000EAF8;
              v154 = &unk_1006575D8;
              v126 = v53;
              v127 = v121;
              v128 = _Block_copy(&v151);
              v129 = v127;
              v130 = v123;
              v67 = v126;

              dispatch_sync(v130, v128);

              _Block_release(v128);
              LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

              if ((v128 & 1) == 0)
              {
                v131 = swift_unknownObjectWeakLoadStrong();
                v132 = v144;
                v49 = v142;
                v15 = v147;
                if (v131)
                {
                  v133 = v129;
                  v134 = v145;
                  [v131 selectionStateController:v133 didAdoptModelFromOldModel:v145 isNavigating:0];

                  swift_unknownObjectRelease();

                  goto LABEL_29;
                }

                v77 = v132;
LABEL_37:
                v53 = v67;
LABEL_68:

                goto LABEL_69;
              }

LABEL_93:
              __break(1u);
              return;
            }

            v135 = v149;
            v136 = swift_unknownObjectWeakLoadStrong();
            if (v136)
            {
              v137 = v136;
              if (([v136 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
              {

                swift_unknownObjectRelease();
                goto LABEL_89;
              }

              [v137 selectionStateController:v135 didIgnoreDuplicateModel:v53];
              swift_unknownObjectRelease();
            }

LABEL_89:
            v77 = v15;
            v15 = v98;
            goto LABEL_68;
          }

          v140 = 0;
          v105 = objc_allocWithZone(type metadata accessor for FolderListSelectionValidator());
          v106 = objc_opt_self();
          v107 = v15;
          v108 = v98;
          v109 = v146;
          v110 = [v105 initWithModernContext:v109 htmlContext:v107 hidesSystemPaperNotesInCustomFolders:objc_msgSend(v106 hidesMathNotesInCustomFolders:"hidesSystemPaperNotesInCustomFolders") hidesCallNotesInCustomFolders:{objc_msgSend(v106, "hidesMathNotesInCustomFolders"), objc_msgSend(v106, "hidesCallNotesInCustomFolders")}];

          v98 = v108;
          v111 = v108;
          v112 = sub_100014954(v104);
          if (v112)
          {
            v113 = v112;
            v114 = sub_100014A9C(v112, 0, v147);

            if ((v114 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          else
          {
          }

          sub_100013994(v104, 0);
LABEL_74:

          v15 = v144;
          v49 = v142;
          goto LABEL_75;
        }

        goto LABEL_22;
      }
    }
  }
}

void sub_10031C018(void **a1, uint64_t a2, void **a3)
{
  v5 = (a2 + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateQueue);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v9 = v8;
  v28 = v5[2];
  v29 = v8;
  v30 = v5[4];
  v11 = *v5;
  v10 = v5[1];
  v27[0] = v6;
  v27[1] = v10;
  v34 = v28;
  v35 = v9;
  v36 = v5[4];
  v31 = *(v5 + 10);
  v37 = *(v5 + 10);
  v32 = v11;
  v33 = v7;
  sub_100006038(v27, v25, &qword_1006C42D0);
  type metadata accessor for ICSelectionStateModel(0);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(v27, &qword_1006C42D0);
  v12 = *&v25[0];
  v13 = sub_10001566C(1, 1);

  v14 = *a1;
  *a1 = v13;

  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v18 = v17;
  v34 = v5[2];
  v35 = v17;
  v36 = v5[4];
  v20 = *v5;
  v19 = v5[1];
  v32 = v15;
  v33 = v19;
  v25[2] = v34;
  v25[3] = v18;
  v25[4] = v5[4];
  v37 = *(v5 + 10);
  v26 = *(v5 + 10);
  v25[0] = v20;
  v25[1] = v16;
  sub_100006038(&v32, &v24, &qword_1006C42D0);
  sub_10015DA04(&qword_1006BFF10);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000073B4(&v32, &qword_1006C42D0);
  v21 = v24;
  if (v24)
  {
    v22 = sub_10001566C(1, 1);
  }

  else
  {
    v22 = 0;
  }

  v23 = *a3;
  *a3 = v22;
}

uint64_t sub_10031C244(uint64_t *a1)
{
  v2 = sub_10015DA04(&qword_1006BEF28);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for ICSelectionStateModel.ContainerSelection(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_containerSelection;
  swift_beginAccess();
  sub_100006038(v12 + v13, v4, &qword_1006BEF28);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v14 = &qword_1006BEF28;
    v15 = v4;
LABEL_3:
    sub_1000073B4(v15, v14);
    return 1;
  }

  sub_10032CBD0(v4, v11);
  sub_10032CBD0(v11, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v17 = sub_10015DA04(&qword_1006BF058);
      v14 = &qword_1006BCC20;
      v15 = v9 + *(v17 + 48);
      goto LABEL_3;
    }

LABEL_8:
    sub_10032CD7C(v9, type metadata accessor for ICSelectionStateModel.ContainerSelection);
    return 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_8;
  }

  v19 = *v9;

  if (!v19)
  {
    return 1;
  }

  return 0;
}

void sub_10031C510(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = 0;
    swift_unknownObjectWeakAssign();
    v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = 0;
    v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = 0;
    *&v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = 0;
    v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = 0;
    *&v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = 0;
    *&v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = 0;
    v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = 0;
    *&v5[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = 0;
    v28.receiver = v5;
    v28.super_class = v4;
    swift_unknownObjectRetain();
    v6 = objc_msgSendSuper2(&v28, "init");
    v7 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    swift_unknownObjectRetain();
    v8 = v7;
    v9 = v6;
    sub_10000FE7C(a1, v6);

    swift_unknownObjectRelease();
    v10 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    __chkstk_darwin(v11);
    v13 = v12;
    OS_dispatch_queue.sync<A>(execute:)();

    v14 = *&v29[0];
    v15 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v29[2] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v29[3] = v15;
    v29[4] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v16 = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v29[0] = *&v2[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v29[1] = v16;
    sub_100006038(v29, aBlock, &unk_1006C4328);
    sub_1000108C4(v8, 0, v29);
    sub_1000073B4(v29, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v8[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_16;
        }

        [v26 selectionStateController:v2 didIgnoreDuplicateModel:v8];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        [v17 willAdoptModelForSelectionStateController:v2 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v18 = *&v2[v10];
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      *(v19 + 24) = v8;
      *(v19 + 32) = 0;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_10032D24C;
      *(v20 + 24) = v19;
      aBlock[4] = sub_10032D13C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000EAF8;
      aBlock[3] = &unk_100657560;
      v21 = _Block_copy(aBlock);
      v8 = v8;
      v22 = v18;
      v23 = v2;

      dispatch_sync(v22, v21);

      _Block_release(v21);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
        return;
      }

      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        [v24 selectionStateController:v23 didAdoptModelFromOldModel:v14 isNavigating:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

LABEL_16:
    swift_unknownObjectRelease();
  }
}

void sub_10031CA00(uint64_t a1, uint64_t a2, char a3, char a4, void *a5, char a6, char a7, void *a8, void *a9, void *a10)
{
  if (a1)
  {
    v15 = a1;
    v16 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
    v17 = objc_allocWithZone(v16);
    v53 = v15;
    swift_unknownObjectWeakInit();
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = 0;
    swift_unknownObjectWeakAssign();
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = a3 & 1;
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = a7 & 1;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = a8;
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = a4 & 1;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = a5;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = a9;
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = a6 & 1;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = a10;
    v55.receiver = v17;
    v55.super_class = v16;
    swift_unknownObjectRetain();
    v18 = a8;
    v19 = a5;
    v20 = a9;
    v21 = a10;
    v22 = objc_msgSendSuper2(&v55, "init");
    v23 = a8;
    if (a9 && (v24 = [v20 BOOLValue], v24))
    {
      v25 = *&v52[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
      __chkstk_darwin(v24);
      type metadata accessor for ICSelectionStateModel(0);
      v26 = v25;
      OS_dispatch_queue.sync<A>(execute:)();
      v15 = v53;

      v27 = *&v56[0];
    }

    else
    {
      v27 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    }

    swift_unknownObjectRetain();
    v28 = v27;
    v29 = v22;
    sub_10000FE7C(v15, v22);

    swift_unknownObjectRelease();
    v51 = v29;

    if (v23)
    {
      v30 = [v18 BOOLValue];
      if (v30)
      {
        __chkstk_darwin(v30);
        v32 = v31;
        sub_10015DA04(&qword_1006BF0E0);
        OS_dispatch_queue.sync<A>(execute:)();

        v33 = *&v28[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
        *&v28[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = *&v56[0];
      }
    }

    v34 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v35 = *&v52[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v30);
    type metadata accessor for ICSelectionStateModel(0);
    v36 = v35;
    OS_dispatch_queue.sync<A>(execute:)();

    v37 = *&v56[0];
    v38 = *&v52[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v56[2] = *&v52[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v56[3] = v38;
    v56[4] = *&v52[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v39 = *&v52[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v56[0] = *&v52[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v56[1] = v39;
    sub_100006038(v56, aBlock, &unk_1006C4328);
    sub_1000108C4(v28, 0, v56);
    sub_1000073B4(v56, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v28[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_18;
      }

      v49 = Strong;
      if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      [v49 selectionStateController:v52 didIgnoreDuplicateModel:v28];
    }

    else
    {
      v40 = swift_unknownObjectWeakLoadStrong();
      if (v40)
      {
        [v40 willAdoptModelForSelectionStateController:v52 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v41 = *&v52[v34];
      v42 = swift_allocObject();
      *(v42 + 16) = v52;
      *(v42 + 24) = v28;
      *(v42 + 32) = 0;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_10032D24C;
      *(v43 + 24) = v42;
      aBlock[4] = sub_10032D13C;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000EAF8;
      aBlock[3] = &unk_1006574E8;
      v44 = _Block_copy(aBlock);
      v28 = v28;
      v45 = v41;
      v46 = v52;

      dispatch_sync(v45, v44);

      _Block_release(v44);
      LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

      if (v44)
      {
        __break(1u);
        return;
      }

      v47 = swift_unknownObjectWeakLoadStrong();
      if (!v47)
      {

        goto LABEL_18;
      }

      [v47 selectionStateController:v46 didAdoptModelFromOldModel:v37 isNavigating:0];
    }

    swift_unknownObjectRelease();
LABEL_18:

LABEL_19:
    swift_unknownObjectRelease();
  }
}

void sub_10031D148(uint64_t a1, char a2, uint64_t a3, char a4, char a5, void *a6, char a7, char a8, void *a9, void *a10, void *a11)
{
  if (a1)
  {
    v14 = a1;
    v16 = type metadata accessor for ICSelectionStateModel.ContainerSelectionOptions();
    v17 = objc_allocWithZone(v16);
    v55 = v14;
    swift_unknownObjectWeakInit();
    v53 = a2;
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_forceApply] = a2 & 1;
    swift_unknownObjectWeakAssign();
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_usingRootViewController] = a4 & 1;
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensurePresented] = a8 & 1;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_ensureSelectedNote] = a9;
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_deferUntilDataLoaded] = a5 & 1;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_dismissOverlayContent] = a6;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_keepEditorShowing] = a10;
    v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_animated] = a7 & 1;
    *&v17[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptions_completionBlocks] = a11;
    v57.receiver = v17;
    v57.super_class = v16;
    swift_unknownObjectRetain();
    v18 = a9;
    v19 = a6;
    v20 = a10;
    v21 = a11;
    v22 = objc_msgSendSuper2(&v57, "init");
    if (a10 && (v23 = [v20 BOOLValue], v23))
    {
      v24 = *&v54[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
      __chkstk_darwin(v23);
      type metadata accessor for ICSelectionStateModel(0);
      v25 = v24;
      OS_dispatch_queue.sync<A>(execute:)();
      v14 = v55;

      v26 = *&v58[0];
    }

    else
    {
      v26 = [objc_allocWithZone(type metadata accessor for ICSelectionStateModel(0)) init];
    }

    swift_unknownObjectRetain();
    v27 = v26;
    v28 = v22;
    sub_10000FE7C(v14, v22);

    swift_unknownObjectRelease();
    v52 = v28;

    if (a9)
    {
      v29 = [v18 BOOLValue];
      v30 = v54;
      if (v29)
      {
        __chkstk_darwin(v29);
        v32 = v31;
        sub_10015DA04(&qword_1006BF0E0);
        OS_dispatch_queue.sync<A>(execute:)();

        v33 = *&v27[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
        *&v27[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = *&v58[0];
      }
    }

    else
    {
      v30 = v54;
    }

    v34 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v35 = *&v30[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v29);
    type metadata accessor for ICSelectionStateModel(0);
    v36 = v35;
    OS_dispatch_queue.sync<A>(execute:)();

    v37 = *&v58[0];
    v38 = *&v30[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v58[2] = *&v30[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v58[3] = v38;
    v58[4] = *&v30[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v39 = *&v30[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v58[0] = *&v30[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v58[1] = v39;
    sub_100006038(v58, aBlock, &unk_1006C4328);
    sub_1000108C4(v27, 0, v58);
    sub_1000073B4(v58, &unk_1006C4328);
    if ((v53 & 1) != 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || *&v27[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong willAdoptModelForSelectionStateController:v30 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v41 = *&v30[v34];
      v42 = swift_allocObject();
      *(v42 + 16) = v30;
      *(v42 + 24) = v27;
      *(v42 + 32) = 0;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_10032D24C;
      *(v43 + 24) = v42;
      aBlock[4] = sub_10032D13C;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000EAF8;
      aBlock[3] = &unk_100657470;
      v44 = _Block_copy(aBlock);
      v27 = v27;
      v45 = v41;
      v46 = v30;

      dispatch_sync(v45, v44);

      _Block_release(v44);
      LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

      if (v44)
      {
        __break(1u);
        return;
      }

      v47 = swift_unknownObjectWeakLoadStrong();
      if (!v47)
      {

        goto LABEL_20;
      }

      [v47 selectionStateController:v46 didAdoptModelFromOldModel:v37 isNavigating:0];
    }

    else
    {
      v48 = swift_unknownObjectWeakLoadStrong();
      if (!v48)
      {

        goto LABEL_20;
      }

      v49 = v48;
      if (([v48 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      [v49 selectionStateController:v30 didIgnoreDuplicateModel:v27];
    }

    swift_unknownObjectRelease();

LABEL_20:
    swift_unknownObjectRelease();
  }
}

void sub_10031DA8C(void *a1)
{
  v3 = sub_10015DA04(&unk_1006BFEA0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v89 - v4);
  if (!a1)
  {
    return;
  }

  v96 = a1;
  if ([v96 ic_isNoteType])
  {
    v96 = v96;
    if ([v96 ic_isNoteType])
    {
      v6 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = 0;
      v7[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
      v7[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
      v7[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 0;
      v7[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
      v7[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = 1;
      v7[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
      v97.receiver = v7;
      v97.super_class = v6;
      v8 = objc_msgSendSuper2(&v97, "init");
      v94 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
      v9 = *&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
      __chkstk_darwin(v8);
      v95 = v10;
      *(&v89 - 2) = v10;
      type metadata accessor for ICSelectionStateModel(0);
      v11 = v9;
      OS_dispatch_queue.sync<A>(execute:)();

      v12 = v106;
      v13 = v8;
      v14 = [v96 ic_isNoteType];
      v92 = v13;
      if (v14)
      {
        *v5 = a1;
        v5[1] = v13;
        v15 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
        v16 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
        swift_beginAccess();
        v17 = v96;
        sub_10000A49C(v5, &v12[v16], &unk_1006BFEA0);
        swift_endAccess();
      }

      else
      {
      }

      v63 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
      v64 = *&v12[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
      *&v12[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;

      v66 = v94;
      v65 = v95;
      __chkstk_darwin(v67);
      *(&v89 - 2) = v65;
      v69 = v68;
      OS_dispatch_queue.sync<A>(execute:)();

      v70 = v106;
      v71 = *&v65[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
      v108 = *&v65[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
      v109 = v71;
      v110 = *&v65[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
      v72 = *&v65[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
      v106 = *&v65[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
      v107 = v72;
      sub_100006038(&v106, &v101, &unk_1006C4328);
      sub_1000108C4(v12, 0, &v106);
      sub_1000073B4(&v106, &unk_1006C4328);
      v93 = v70;
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v12[v63])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v83 = Strong;
          if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
          {

            swift_unknownObjectRelease();
            goto LABEL_36;
          }

          [v83 selectionStateController:v65 didIgnoreDuplicateModel:v12];
          swift_unknownObjectRelease();
        }

        goto LABEL_35;
      }

      v73 = swift_unknownObjectWeakLoadStrong();
      if (v73)
      {
        [v73 willAdoptModelForSelectionStateController:v65 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v74 = *&v66[v65];
      v75 = swift_allocObject();
      *(v75 + 16) = v65;
      *(v75 + 24) = v12;
      *(v75 + 32) = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_10032D24C;
      *(v76 + 24) = v75;
      *&v103 = sub_10032D13C;
      *(&v103 + 1) = v76;
      *&v101 = _NSConcreteStackBlock;
      *(&v101 + 1) = 1107296256;
      *&v102 = sub_10000EAF8;
      *(&v102 + 1) = &unk_1006573F8;
      v77 = _Block_copy(&v101);
      v78 = v74;
      v79 = v65;
      v12 = v12;

      dispatch_sync(v78, v77);

      _Block_release(v77);
      LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

      if ((v78 & 1) == 0)
      {
        v80 = swift_unknownObjectWeakLoadStrong();
        if (v80)
        {
          v81 = v93;
          [v80 selectionStateController:v79 didAdoptModelFromOldModel:v93 isNavigating:0];

          swift_unknownObjectRelease();

LABEL_36:
          return;
        }

LABEL_35:

        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_52;
    }

    goto LABEL_21;
  }

  if ([v96 ic_isBaseAttachmentType])
  {
    v18 = v96;
    v19 = &v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    if (!*&v1[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration])
    {
      goto LABEL_23;
    }

    v20 = *(v19 + 4);
    if (!v20)
    {
      goto LABEL_23;
    }

    v21 = *(v19 + 3);
    v108 = *(v19 + 2);
    v109 = v21;
    v110 = *(v19 + 4);
    v22 = *(v19 + 1);
    v106 = *v19;
    v107 = v22;
    v23 = v96;
    v24 = v20;
    sub_100006038(&v106, &v101, &unk_1006C4328);
    v25 = sub_1001F70FC(v23, &v106);
    v27 = v26;
    sub_1000073B4(&v106, &unk_1006C4328);
    if (!v25)
    {

      return;
    }

    v95 = v1;

    v100 = 0;
    v28 = swift_allocObject();
    v28[2] = v24;
    v28[3] = v23;
    v28[4] = v27;
    v28[5] = &v100;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_10032D244;
    *(v29 + 24) = v28;
    v93 = v28;
    *&v103 = sub_1001C71A8;
    *(&v103 + 1) = v29;
    *&v101 = _NSConcreteStackBlock;
    *(&v101 + 1) = 1107296256;
    *&v102 = sub_10000EAF8;
    *(&v102 + 1) = &unk_100657308;
    v30 = _Block_copy(&v101);
    v96 = v23;
    v31 = v24;
    v94 = v27;

    v92 = v31;
    [v31 performBlockAndWait:v30];
    _Block_release(v30);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    v32 = v100;
    v33 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = v32;
    v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = 0;
    v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = 0;
    v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = 0;
    v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = 1;
    v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = 1;
    v34[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = 1;
    v99.receiver = v34;
    v99.super_class = v33;
    v35 = v32;
    v36 = objc_msgSendSuper2(&v99, "init");
    v37 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v38 = v95;
    v39 = *&v95[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v36);
    *(&v89 - 2) = v38;
    type metadata accessor for ICSelectionStateModel(0);
    v40 = v39;
    OS_dispatch_queue.sync<A>(execute:)();

    v41 = v101;
    v42 = v36;
    sub_1001BA988(v96, v94, v36);
    v91 = v42;

    v43 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v44 = *&v41[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v41[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;

    v90 = v37;
    v45 = v41;
    __chkstk_darwin(v46);
    *(&v89 - 2) = v38;
    v48 = v47;
    OS_dispatch_queue.sync<A>(execute:)();

    v49 = v101;
    v50 = *(v19 + 3);
    v103 = *(v19 + 2);
    v104 = v50;
    v105 = *(v19 + 4);
    v51 = *(v19 + 1);
    v101 = *v19;
    v102 = v51;
    sub_100006038(&v101, v98, &unk_1006C4328);
    sub_1000108C4(v41, 0, &v101);
    sub_1000073B4(&v101, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v41[v43])
    {
      v84 = v95;
      v85 = swift_unknownObjectWeakLoadStrong();
      if (v85)
      {
        v86 = v85;
        if (([v85 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_49;
        }

        [v86 selectionStateController:v84 didIgnoreDuplicateModel:v45];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v89 = v49;
      v52 = v95;
      v53 = swift_unknownObjectWeakLoadStrong();
      if (v53)
      {
        [v53 willAdoptModelForSelectionStateController:v52 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v54 = *&v90[v52];
      v55 = swift_allocObject();
      *(v55 + 16) = v52;
      *(v55 + 24) = v45;
      *(v55 + 32) = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_10032D24C;
      *(v56 + 24) = v55;
      v98[4] = sub_10032D13C;
      v98[5] = v56;
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 1107296256;
      v98[2] = sub_10000EAF8;
      v98[3] = &unk_100657380;
      v57 = _Block_copy(v98);
      v58 = v52;
      v59 = v54;
      v90 = v45;

      dispatch_sync(v59, v57);

      _Block_release(v57);
      LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

      if (v59)
      {
        goto LABEL_53;
      }

      v60 = swift_unknownObjectWeakLoadStrong();
      v61 = v89;
      if (v60)
      {
        [v60 selectionStateController:v58 didAdoptModelFromOldModel:v89 isNavigating:0];

        swift_unknownObjectRelease();

        v62 = v96;
LABEL_50:

        v88 = v100;

        return;
      }
    }

LABEL_49:
    v62 = v96;
    v87 = v94;

    goto LABEL_50;
  }

  if ([v96 ic_isInvitationType])
  {
    v96 = v96;
    sub_10031FA1C(a1, 1);
LABEL_21:
  }

  v18 = v96;
LABEL_23:
}

void sub_10031E7EC(void *a1, void *a2, char a3, char a4, char a5, char a6, char a7, int a8)
{
  v9 = v8;
  v80 = a8;
  v17 = sub_10015DA04(&unk_1006BFEA0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = (&v78 - v19);
  if (!a1)
  {
    v33 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v34 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v18);
    *(&v78 - 2) = v9;
    type metadata accessor for ICSelectionStateModel(0);
    v35 = v34;
    OS_dispatch_queue.sync<A>(execute:)();

    v36 = v88;
    v37 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
    (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
    v38 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
    swift_beginAccess();
    sub_10000A49C(v20, &v36[v38], &unk_1006BFEA0);
    swift_endAccess();
    v39 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v40 = *&v36[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v36[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;

    __chkstk_darwin(v41);
    *(&v78 - 2) = v9;
    v43 = v42;
    OS_dispatch_queue.sync<A>(execute:)();

    v44 = v88;
    v45 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v90 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v91 = v45;
    v92 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v46 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v88 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v89 = v46;
    sub_100006038(&v88, &aBlock, &unk_1006C4328);
    sub_1000108C4(v36, 0, &v88);
    sub_1000073B4(&v88, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && !*&v36[v39])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v75 = Strong;
        if (([Strong respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_29;
        }

        [v75 selectionStateController:v9 didIgnoreDuplicateModel:v36];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v47 = swift_unknownObjectWeakLoadStrong();
      if (v47)
      {
        [v47 willAdoptModelForSelectionStateController:v9 isNavigating:0];
        swift_unknownObjectRelease();
      }

      v48 = *&v9[v33];
      v49 = swift_allocObject();
      *(v49 + 16) = v9;
      *(v49 + 24) = v36;
      *(v49 + 32) = 0;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_10032D24C;
      *(v50 + 24) = v49;
      v86 = sub_10032D13C;
      v87 = v50;
      aBlock = _NSConcreteStackBlock;
      v83 = 1107296256;
      v84 = sub_10000EAF8;
      v85 = &unk_100657128;
      v51 = _Block_copy(&aBlock);
      v52 = v9;
      v53 = v48;
      v36 = v36;

      dispatch_sync(v53, v51);

      _Block_release(v51);
      LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

      if (v51)
      {
        __break(1u);
        goto LABEL_43;
      }

      v54 = swift_unknownObjectWeakLoadStrong();
      if (v54)
      {
        [v54 selectionStateController:v52 didAdoptModelFromOldModel:v44 isNavigating:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

LABEL_29:
    return;
  }

  v79 = a1;
  if ([v79 ic_isNoteType])
  {
    v21 = type metadata accessor for ICSelectionStateModel.ObjectSelectionOptions();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_scrollState] = a2;
    v22[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_startEditing] = a3 & 1;
    v22[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showInkPicker] = a4 & 1;
    v22[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_dismissOverlayContent] = a5 & 1;
    v22[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_showLatestUpdatesIfAvailable] = a6 & 1;
    v22[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_animated] = a7 & 1;
    v22[OBJC_IVAR___ICSelectionStateModelObjectSelectionOptions_ensurePresented] = v80 & 1;
    v81.receiver = v22;
    v81.super_class = v21;
    v23 = a2;
    v24 = objc_msgSendSuper2(&v81, "init");
    v25 = OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue;
    v26 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue];
    __chkstk_darwin(v24);
    *(&v78 - 2) = v9;
    type metadata accessor for ICSelectionStateModel(0);
    v27 = v26;
    OS_dispatch_queue.sync<A>(execute:)();

    v28 = v88;
    v29 = v24;
    if ([v79 ic_isNoteType])
    {
      *v20 = a1;
      v20[1] = v29;
      v30 = type metadata accessor for ICSelectionStateModel.ObjectSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v31 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_objectSelection;
      swift_beginAccess();
      v32 = v79;
      sub_10000A49C(v20, &v28[v31], &unk_1006BFEA0);
      swift_endAccess();
    }

    else
    {
    }

    v56 = OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult;
    v57 = *&v28[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult];
    *&v28[OBJC_IVAR____TtC11MobileNotes21ICSelectionStateModel_currentSelectedSearchResult] = 0;

    __chkstk_darwin(v58);
    *(&v78 - 2) = v9;
    v60 = v59;
    OS_dispatch_queue.sync<A>(execute:)();

    v61 = v88;
    v62 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 48];
    v90 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 32];
    v91 = v62;
    v92 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 64];
    v63 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration + 16];
    v88 = *&v9[OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_utilityConfiguration];
    v89 = v63;
    sub_100006038(&v88, &aBlock, &unk_1006C4328);
    sub_1000108C4(v28, 0, &v88);
    sub_1000073B4(&v88, &unk_1006C4328);
    if ((static NSObject.== infix(_:_:)() & 1) == 0 || *&v28[v56])
    {
      v64 = v80 ^ 1;
      if (v80)
      {
        v65 = swift_unknownObjectWeakLoadStrong();
        if (v65)
        {
          [v65 willAdoptModelForSelectionStateController:v9 isNavigating:0];
          swift_unknownObjectRelease();
        }
      }

      v66 = *&v9[v25];
      v67 = swift_allocObject();
      *(v67 + 16) = v9;
      *(v67 + 24) = v28;
      *(v67 + 32) = v64 & 1;
      v68 = swift_allocObject();
      *(v68 + 16) = sub_10032D24C;
      *(v68 + 24) = v67;
      v86 = sub_10032D13C;
      v87 = v68;
      aBlock = _NSConcreteStackBlock;
      v83 = 1107296256;
      v84 = sub_10000EAF8;
      v85 = &unk_1006571A0;
      v69 = _Block_copy(&aBlock);
      v70 = v66;
      v71 = v9;
      v72 = v28;

      dispatch_sync(v70, v69);

      _Block_release(v69);
      LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

      if ((v69 & 1) == 0)
      {
        if ((v80 & 1) != 0 && (v73 = swift_unknownObjectWeakLoadStrong()) != 0)
        {
          [v73 selectionStateController:v71 didAdoptModelFromOldModel:v61 isNavigating:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

LABEL_43:
      __break(1u);
      return;
    }

    if (v80)
    {
      v76 = swift_unknownObjectWeakLoadStrong();
      if (v76)
      {
        v77 = v76;
        if (([v76 respondsToSelector:"selectionStateController:didIgnoreDuplicateModel:"] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_39;
        }

        [v77 selectionStateController:v9 didIgnoreDuplicateModel:v28];
        swift_unknownObjectRelease();
      }
    }

LABEL_39:
    return;
  }

  v55 = v79;
}