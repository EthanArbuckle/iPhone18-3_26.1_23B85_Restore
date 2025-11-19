uint64_t sub_100409FF4(uint64_t a1)
{
  sub_10025C9B0(&qword_1006DBE08);
  _objc_retain(*(a1 + 16));

  v3 = UICollectionViewDiffableDataSource.__allocating_init(collectionView:cellProvider:)();

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
  return v3;
}

void SearchCollectionViewDataSource.dataSource.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___dataSource);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void (*SearchCollectionViewDataSource.dataSource.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = SearchCollectionViewDataSource.dataSource.getter();
  return sub_10040A1B8;
}

void sub_10040A1B8(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    SearchCollectionViewDataSource.dataSource.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    SearchCollectionViewDataSource.dataSource.setter(*a1);
  }
}

uint64_t sub_10040A238()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource_cellProvider);

  return v2;
}

uint64_t sub_10040A27C()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource_supplementaryViewProvider);

  return v2;
}

uint64_t SearchCollectionViewDataSource.init(collectionView:cellProvider:supplementaryViewProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___viewModel;
  v6 = type metadata accessor for GroupedSearchItems.SectionCache();
  (*(*(v6 - 8) + 56))(v5 + v10, 1);
  *(v5 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___dataSource) = 0;
  _objc_retain(a1);
  *(v5 + 16) = a1;

  v7 = (v5 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource_cellProvider);
  *v7 = a2;
  v7[1] = a3;

  v8 = (v5 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource_supplementaryViewProvider);
  *v8 = a4;
  v8[1] = a5;

  _objc_release(a1);
  return v16;
}

uint64_t SearchCollectionViewDataSource.deinit()
{
  _objc_release(*(v0 + 16));
  sub_10040917C(v0 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___viewModel);
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail30SearchCollectionViewDataSource____lazy_storage___dataSource));

  return v2;
}

uint64_t sub_10040A57C()
{
  v7 = 0;
  v1 = type metadata accessor for GroupedSearchItems.SectionCache();
  v3[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v5 = v3 - v3[0];
  v7 = v0;
  sub_100408CD0(v3 - v3[0]);
  v3[2] = &v6;
  v4 = GroupedSearchItems.SectionCache.items.modify();
  GroupedSearchItems.beginUpdate()();
  v4();
  return sub_100409C70(v5);
}

uint64_t sub_10040A650(unsigned int a1)
{
  v6 = a1;
  v9 = 0;
  v8 = 0;
  v3[0] = (*(*(type metadata accessor for GroupedSearchItems.SectionCache() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v3 - v3[0];
  v9 = __chkstk_darwin(v6) & 1;
  v8 = v1;
  sub_100408CD0(v3 - v3[0]);
  v3[1] = &v7;
  v4 = GroupedSearchItems.SectionCache.items.modify();
  GroupedSearchItems.endUpdateAndRemoveOldSections()();
  v4();
  sub_100409C70(v5);
  return sub_10040A750(v6 & 1);
}

uint64_t sub_10040A750(unsigned int a1)
{
  v11 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v12 = 0;
  v2 = type metadata accessor for GroupedSearchItems.SectionCache();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v9 = &v6 - v7;
  v17 = sub_10025C9B0(&qword_1006DBCD8);
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v11);
  v16 = &v6 - v8;
  v20 = &v6 - v8;
  v19 = v3 & 1;
  v18 = v1;
  sub_100408CD0(v4);
  v10 = GroupedSearchItems.SectionCache.cachedSections()();
  sub_100409C70(v9);
  sub_10040BAFC(v10, v16);
  v13 = SearchCollectionViewDataSource.dataSource.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  _objc_release(v13);
  return (*(v14 + 8))(v16, v17);
}

Swift::Void __swiftcall SearchCollectionViewDataSource.addSuggestions(_:animated:)(Swift::OpaquePointer _, Swift::Bool animated)
{
  rawValue = _._rawValue;
  v8 = animated;
  v14 = 0;
  v18 = sub_10040AB00;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v9 = 0;
  v10 = (*(*(type metadata accessor for GroupedSearchItems.SectionCache() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = v5 - v10;
  v25 = v3;
  v24 = v4 & 1;
  v23 = v2;
  v12 = sub_10040BD3C();
  v16 = sub_10025C9B0(&qword_1006DBCE8);
  sub_10040BDA0();
  v22 = Dictionary.values.getter();
  v15 = sub_10025C9B0(&qword_1006DBCF0);
  v17 = sub_10040BE20();
  sub_10040BEA8();
  v19 = Sequence.flatMap<A>(_:)();
  v7._rawValue = v19;
  sub_100264880();
  v21 = v7._rawValue;
  sub_100408CD0(v11);
  v5[1] = &v20;
  v6 = GroupedSearchItems.SectionCache.items.modify();
  GroupedSearchItems.replaceSections(with:)(v7);
  v6();
  sub_100409C70(v11);
  sub_10040A750(v8);
}

uint64_t sub_10040AB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

Swift::Void __swiftcall SearchCollectionViewDataSource.clearSuggestions(animated:)(Swift::Bool animated)
{
  v5 = animated;
  v8 = 0;
  v7 = 0;
  v2[0] = (*(*(type metadata accessor for GroupedSearchItems.SectionCache() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = v2 - v2[0];
  v8 = __chkstk_darwin(v5) & 1;
  v7 = v1;
  sub_100408CD0(v2 - v2[0]);
  v2[1] = &v6;
  v3 = GroupedSearchItems.SectionCache.items.modify();
  GroupedSearchItems.removeAll()();
  v3();
  sub_100409C70(v4);
  sub_10040A750(v5);
}

uint64_t SearchCollectionViewDataSource.reload(_:animated:)(void *a1, int a2)
{
  v39 = a1;
  v31 = a2;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v17 = sub_10025C9B0(&qword_1006DBCD8);
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v21 = &v11 - v20;
  v22 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v11 - v20);
  v23 = &v11 - v22;
  v49 = &v11 - v22;
  v4 = sub_10025C9B0(&qword_1006DBD08);
  v24 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v42 = &v11 - v24;
  v29 = 0;
  v25 = type metadata accessor for GroupedSearchItems();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v34 = &v11 - v28;
  v38 = type metadata accessor for GroupedSearchItems.SectionCache();
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v30 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v37 = &v11 - v30;
  v44 = type metadata accessor for SearchItem();
  v40 = *(v44 - 8);
  v41 = v44 - 8;
  v32 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v39);
  v33 = &v11 - v32;
  v48 = &v11 - v32;
  v47 = v5;
  v43 = 1;
  v46 = v6 & 1;
  v45 = v2;
  sub_100408CD0(v7);
  GroupedSearchItems.SectionCache.items.getter();
  (*(v35 + 8))(v37, v38);
  _objc_retain(v39);
  GroupedSearchItems.subscript.getter();
  if ((*(v40 + 48))(v42, v43, v44) == 1)
  {
    sub_10040BF30(v42);
    _objc_release(v39);
    return (*(v26 + 8))(v34, v25);
  }

  else
  {
    (*(v40 + 32))(v33, v42, v44);
    (*(v26 + 8))(v34, v25);
    _objc_release(v39);
    v11 = SearchCollectionViewDataSource.dataSource.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    _objc_release(v11);
    v12 = _allocateUninitializedArray<A>(_:)();
    (*(v40 + 16))(v8, v33, v44);
    v9._rawValue = v12;
    sub_1002612B0();
    rawValue = v9._rawValue;
    NSDiffableDataSourceSnapshot.reloadItems(_:)(v9);

    v14 = SearchCollectionViewDataSource.dataSource.getter();
    (*(v18 + 16))(v21, v23, v17);
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    v16 = *(v18 + 8);
    v15 = v18 + 8;
    v16(v21, v17);
    _objc_release(v14);
    v16(v23, v17);
    return (*(v40 + 8))(v33, v44);
  }
}

uint64_t SearchCollectionViewDataSource.remove(_:animated:)(uint64_t a1, int a2)
{
  v6 = a1;
  v10 = a2;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(type metadata accessor for GroupedSearchItems.SectionCache() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v5 - v5;
  v14 = __chkstk_darwin(v6);
  v13 = v3 & 1;
  v12 = v2;
  sub_100408CD0(&v5 - v5);
  v7 = &v11;
  v8 = GroupedSearchItems.SectionCache.items.modify();
  GroupedSearchItems.remove(_:)();
  v8();
  sub_100409C70(v9);
  return sub_10040A750(v10 & 1);
}

void SearchCollectionViewDataSource.searchItem(for:)()
{
  v0 = SearchCollectionViewDataSource.dataSource.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  _objc_release(v0);
}

void SearchCollectionViewDataSource.section(atIndex:)()
{
  v0 = SearchCollectionViewDataSource.dataSource.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();
  _objc_release(v0);
}

uint64_t SearchCollectionViewDataSource.suggestion(for:)(uint64_t a1)
{
  v26 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v20 = 0;
  v10 = type metadata accessor for GroupedSearchItems();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v6 - v13;
  v15 = type metadata accessor for GroupedSearchItems.SectionCache();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v19 = &v6 - v18;
  v21 = (*(*(sub_10025C9B0(&qword_1006DBD08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v30 = &v6 - v21;
  v31 = type metadata accessor for SearchItem();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v22 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v26);
  v23 = &v6 - v22;
  v24 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v25 = &v6 - v24;
  v34 = &v6 - v24;
  v33 = v4;
  v32 = v1;
  v27 = SearchCollectionViewDataSource.dataSource.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  _objc_release(v27);
  if ((*(v28 + 48))(v30, 1, v31) == 1)
  {
    sub_10040BF30(v30);
    return 0;
  }

  else
  {
    (*(v28 + 32))(v25, v30, v31);
    sub_100408CD0(v19);
    GroupedSearchItems.SectionCache.items.getter();
    (*(v16 + 8))(v19, v15);
    (*(v28 + 16))(v23, v25, v31);
    v8 = GroupedSearchItems.subscript.getter();
    (*(v11 + 8))(v14, v10);
    v7 = *(v28 + 8);
    v6 = v28 + 8;
    v7(v23, v31);
    v7(v25, v31);
    return v8;
  }
}

uint64_t sub_10040B804(uint64_t a1)
{
  v11 = a1;
  v18 = 0;
  v17 = 0;
  v4[1] = 0;
  v14 = type metadata accessor for GroupedSearchItems();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v5 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = v4 - v5;
  v10 = type metadata accessor for GroupedSearchItems.SectionCache();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v11);
  v9 = v4 - v6;
  v18 = v2;
  v17 = v1;
  sub_100408CD0(v4 - v6);
  GroupedSearchItems.SectionCache.items.getter();
  (*(v7 + 8))(v9, v10);
  v16 = GroupedSearchItems.suggestions(in:)();
  (*(v12 + 8))(v15, v14);
  return v16;
}

void SearchCollectionViewDataSource.apply(_:animatingDifferences:completion:)()
{
  v0 = SearchCollectionViewDataSource.dataSource.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  _objc_release(v0);
}

unint64_t sub_10040BA74()
{
  v2 = qword_1006DBCC8;
  if (!qword_1006DBCC8)
  {
    sub_10025CAA4(&qword_1006DBCC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBCC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10040BAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v18 = a1;
  v21 = sub_10040C264;
  v26 = 0;
  v25 = 0;
  v16 = sub_10025C9B0(&qword_1006DBCD8);
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v18);
  v15 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v17 = &v6 - v8;
  v26 = &v6 - v8;
  v25 = v4;
  v9 = 0;
  v12 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v10 = type metadata accessor for SearchItem();
  v11 = sub_10040BFD8();
  sub_10040C058();
  NSDiffableDataSourceSnapshot.init()();
  (*(v13 + 32))(v17, v15, v16);
  v24 = v18;
  v19 = &v22;
  v23 = v17;
  v20 = sub_10025C9B0(&qword_1006DBCC0);
  sub_10040C28C();
  Sequence.forEach(_:)();
  (*(v13 + 16))(v6, v17, v16);

  return (*(v13 + 8))(v17, v16);
}

unint64_t sub_10040BD3C()
{
  v2 = qword_1006DBCE0;
  if (!qword_1006DBCE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DBCE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10040BDA0()
{
  v2 = qword_1006DC060;
  if (!qword_1006DC060)
  {
    sub_10040BD3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10040BE20()
{
  v2 = qword_1006DBCF8;
  if (!qword_1006DBCF8)
  {
    sub_10025CAA4(&qword_1006DBCF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBCF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10040BEA8()
{
  v2 = qword_1006DBD00;
  if (!qword_1006DBD00)
  {
    sub_10025CAA4(&qword_1006DBCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBD00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10040BF30(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_10040BFD8()
{
  v2 = qword_1006DBD10;
  if (!qword_1006DBD10)
  {
    type metadata accessor for GroupedSearchItems.Section.Kind();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10040C058()
{
  v2 = qword_1006DBD18;
  if (!qword_1006DBD18)
  {
    type metadata accessor for SearchItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10040C0D8(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v17 = 0;
  v16 = 0;
  v3 = sub_10025C9B0(&qword_1006DBE00);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v14 = &v7 - v7;
  v17 = a1;
  v16 = v4;
  v12 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v8 = _allocateUninitializedArray<A>(_:)();
  GroupedSearchItems.Section.kind.getter();
  v5 = v8;
  sub_1002612B0();
  v9._rawValue = v5;
  v13 = sub_10025C9B0(&qword_1006DBCD8);
  NSDiffableDataSourceSnapshot.appendSections(_:)(v9);

  v15 = GroupedSearchItems.Section.items.getter();
  GroupedSearchItems.Section.kind.getter();
  (*(*(v12 - 8) + 56))(v14, 0, 1);
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  sub_10040C548(v14);
}

unint64_t sub_10040C28C()
{
  v2 = qword_1006DBD20;
  if (!qword_1006DBD20)
  {
    sub_10025CAA4(&qword_1006DBCC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBD20);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SearchCollectionViewDataSource()
{
  v1 = qword_1006DBD50;
  if (!qword_1006DBD50)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10040C3A4()
{
  updated = sub_10040C4AC();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_10040C4AC()
{
  v4 = qword_1006DBD60;
  if (!qword_1006DBD60)
  {
    type metadata accessor for GroupedSearchItems.SectionCache();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DBD60);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_10040C548(uint64_t a1)
{
  v3 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SearchItem.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v119 = a1;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v2 = sub_10025C9B0(&qword_1006DBE10);
  v58 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v59 = v11 - v58;
  v113 = 0;
  v60 = type metadata accessor for SearchItem.LegacySuggested();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60);
  v64 = v11 - v63;
  v151 = v11 - v63;
  v65 = (*(*(sub_10025C9B0(&qword_1006D9760) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v66 = v11 - v65;
  v67 = type metadata accessor for SearchItem.Link();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v71 = v11 - v70;
  v150 = v11 - v70;
  v72 = (*(*(sub_10025C9B0(&qword_1006D9878) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v73 = v11 - v72;
  v74 = type metadata accessor for SearchItem.Location();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v78 = v11 - v77;
  v149 = v11 - v77;
  v79 = (*(*(sub_10025C9B0(&qword_1006D7ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v80 = v11 - v79;
  v81 = type metadata accessor for SearchItem.Document();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v85 = v11 - v84;
  v148 = v11 - v84;
  v86 = (*(*(sub_10025C9B0(&qword_1006DBE18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v113);
  v87 = v11 - v86;
  v88 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v89 = v11 - v88;
  v90 = type metadata accessor for SearchItem.Generic();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v90);
  v94 = v11 - v93;
  v147 = v11 - v93;
  v95 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v96 = v11 - v95;
  v146 = v11 - v95;
  v97 = (*(*(sub_10025C9B0(&qword_1006DBE20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v98 = v11 - v97;
  v99 = type metadata accessor for SearchItem.Contact();
  v100 = *(v99 - 8);
  v101 = v99 - 8;
  v102 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v103 = v11 - v102;
  v145 = v11 - v102;
  v104 = (*(*(sub_10025C9B0(&unk_1006DBC30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v105 = v11 - v104;
  v106 = type metadata accessor for SearchItem.InstantAnswer();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v106);
  v110 = v11 - v109;
  v144 = v11 - v109;
  v111 = (*(*(sub_10025C9B0(&qword_1006DBE28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v112 = v11 - v111;
  v114 = type metadata accessor for SearchItem.TopHit();
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v117 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v113);
  v118 = v11 - v117;
  v143 = v11 - v117;
  v120 = type metadata accessor for SearchItem();
  v121 = *(v120 - 8);
  v122 = v120 - 8;
  v123 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v119);
  v124 = v11 - v123;
  v125 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v126 = v11 - v125;
  v142 = v11 - v125;
  v141 = v9;
  if ([v9 isLegacy])
  {
    _objc_retain(v119);
    SearchItem.LegacySuggested.init(suggestion:)(v119, v59);
    if ((*(v61 + 48))(v59, 1, v60) == 1)
    {
      sub_10040EE54(v59);
      goto LABEL_75;
    }

    (*(v61 + 32))(v64, v59, v60);
    (*(v61 + 16))(v124, v64, v60);
    (*(v121 + 104))(v124, enum case for SearchItem.legacy(_:), v120);
    (*(v121 + 32))(v126, v124, v120);
    (*(v61 + 8))(v64, v60);
    goto LABEL_74;
  }

  v54 = [v119 category];
  _objc_retain(v54);
  v55 = [objc_opt_self() topHitsCategory];
  v56 = [v54 isGroupedInCategory:?];
  _objc_release(v55);
  if ((v56 & 1) == 0)
  {
    _objc_release(v54);
    _objc_retain(v54);
    v52 = [objc_opt_self() instantAnswersCategory];
    v53 = [v54 isGroupedInCategory:?];
    _objc_release(v52);
    if ((v53 & 1) == 0)
    {
      _objc_release(v54);
      _objc_retain(v54);
      v50 = [objc_opt_self() contactCategory];
      v51 = [v54 isGroupedInCategory:?];
      _objc_release(v50);
      if (v51)
      {
        v130 = v54;
        _objc_retain(v119);
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v48 = v49;
        }

        else
        {
          _objc_release(v119);
          v48 = 0;
        }

        v47 = v48;
        if (v48)
        {
          v46 = v47;
          v45 = v47;
          v129 = v47;
          _objc_retain(v47);
          SearchItem.Contact.init(suggestion:)();
          if ((*(v100 + 48))(v98, 1, v99) != 1)
          {
            (*(v100 + 32))(v103, v98, v99);
            (*(v100 + 16))(v124, v103, v99);
            (*(v121 + 104))(v124, enum case for SearchItem.contact(_:), v120);
            (*(v121 + 32))(v126, v124, v120);
            (*(v100 + 8))(v103, v99);
            _objc_release(v45);
            _objc_release(v54);
            _objc_release(v54);
            goto LABEL_74;
          }

          sub_10040EFA4(v98);
          _objc_release(v45);
        }
      }

      else
      {
        _objc_release(v54);
        _objc_retain(v54);
        v43 = [objc_opt_self() genericCategory];
        v44 = [v54 isGroupedInCategory:?];
        _objc_release(v43);
        if (v44)
        {
          v132 = v54;
          _objc_retain(v119);
          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          if (v42)
          {
            v41 = v42;
          }

          else
          {
            _objc_release(v119);
            v41 = 0;
          }

          v40 = v41;
          if (v41)
          {
            v39 = v40;
            v38 = v40;
            v131 = v40;
            _objc_retain(v40);
            SearchItem.Generic.init(suggestion:)();
            if ((*(v91 + 48))(v89, 1, v90) != 1)
            {
              (*(v91 + 32))(v96, v89, v90);
              (*(v91 + 16))(v124, v96, v90);
              (*(v121 + 104))(v124, enum case for SearchItem.suggestion(_:), v120);
              (*(v121 + 32))(v126, v124, v120);
              (*(v91 + 8))(v96, v90);
              _objc_release(v38);
              _objc_release(v54);
              _objc_release(v54);
              goto LABEL_74;
            }

            sub_10040EEFC(v89);
            _objc_release(v38);
          }
        }

        else
        {
          _objc_release(v54);
          _objc_retain(v54);
          v36 = [objc_opt_self() recentGenericCategory];
          v37 = [v54 isGroupedInCategory:?];
          _objc_release(v36);
          if (v37)
          {
            v134 = v54;
            _objc_retain(v119);
            objc_opt_self();
            v35 = swift_dynamicCastObjCClass();
            if (v35)
            {
              v34 = v35;
            }

            else
            {
              _objc_release(v119);
              v34 = 0;
            }

            v33 = v34;
            if (v34)
            {
              v32 = v33;
              v31 = v33;
              v133 = v33;
              _objc_retain(v33);
              SearchItem.Generic.init(suggestion:)();
              if ((*(v91 + 48))(v87, 1, v90) != 1)
              {
                (*(v91 + 32))(v94, v87, v90);
                (*(v91 + 16))(v124, v94, v90);
                (*(v121 + 104))(v124, enum case for SearchItem.recent(_:), v120);
                (*(v121 + 32))(v126, v124, v120);
                (*(v91 + 8))(v94, v90);
                _objc_release(v31);
                _objc_release(v54);
                _objc_release(v54);
                goto LABEL_74;
              }

              sub_10040EEFC(v87);
              _objc_release(v31);
            }
          }

          else
          {
            _objc_release(v54);
            _objc_retain(v54);
            v29 = [objc_opt_self() documentCategory];
            v30 = [v54 isGroupedInCategory:?];
            _objc_release(v29);
            if (v30)
            {
              v136 = v54;
              _objc_retain(v119);
              objc_opt_self();
              v28 = swift_dynamicCastObjCClass();
              if (v28)
              {
                v27 = v28;
              }

              else
              {
                _objc_release(v119);
                v27 = 0;
              }

              v26 = v27;
              if (v27)
              {
                v25 = v26;
                v24 = v26;
                v135 = v26;
                _objc_retain(v26);
                SearchItem.Document.init(suggestion:)();
                if ((*(v82 + 48))(v80, 1, v81) != 1)
                {
                  (*(v82 + 32))(v85, v80, v81);
                  (*(v82 + 16))(v124, v85, v81);
                  (*(v121 + 104))(v124, enum case for SearchItem.document(_:), v120);
                  (*(v121 + 32))(v126, v124, v120);
                  (*(v82 + 8))(v85, v81);
                  _objc_release(v24);
                  _objc_release(v54);
                  _objc_release(v54);
                  goto LABEL_74;
                }

                sub_1002C5128(v80);
                _objc_release(v24);
              }
            }

            else
            {
              _objc_release(v54);
              _objc_retain(v54);
              v22 = [objc_opt_self() locationCategory];
              v23 = [v54 isGroupedInCategory:?];
              _objc_release(v22);
              if (v23)
              {
                v138 = v54;
                _objc_retain(v119);
                objc_opt_self();
                v21 = swift_dynamicCastObjCClass();
                if (v21)
                {
                  v20 = v21;
                }

                else
                {
                  _objc_release(v119);
                  v20 = 0;
                }

                v19 = v20;
                if (v20)
                {
                  v18 = v19;
                  v17 = v19;
                  v137 = v19;
                  _objc_retain(v19);
                  SearchItem.Location.init(suggestion:)();
                  if ((*(v75 + 48))(v73, 1, v74) != 1)
                  {
                    (*(v75 + 32))(v78, v73, v74);
                    (*(v75 + 16))(v124, v78, v74);
                    (*(v121 + 104))(v124, enum case for SearchItem.location(_:), v120);
                    (*(v121 + 32))(v126, v124, v120);
                    (*(v75 + 8))(v78, v74);
                    _objc_release(v17);
                    _objc_release(v54);
                    _objc_release(v54);
                    goto LABEL_74;
                  }

                  sub_100347AA0(v73);
                  _objc_release(v17);
                }
              }

              else
              {
                _objc_release(v54);
                _objc_retain(v54);
                v15 = [objc_opt_self() linkCategory];
                v16 = [v54 isGroupedInCategory:?];
                _objc_release(v15);
                if (v16)
                {
                  v140 = v54;
                  _objc_retain(v119);
                  objc_opt_self();
                  v14 = swift_dynamicCastObjCClass();
                  if (v14)
                  {
                    v13 = v14;
                  }

                  else
                  {
                    _objc_release(v119);
                    v13 = 0;
                  }

                  v12 = v13;
                  if (v13)
                  {
                    v11[1] = v12;
                    v11[0] = v12;
                    v139 = v12;
                    _objc_retain(v12);
                    SearchItem.Link.init(suggestion:)();
                    if ((*(v68 + 48))(v66, 1, v67) != 1)
                    {
                      (*(v68 + 32))(v71, v66, v67);
                      (*(v68 + 16))(v124, v71, v67);
                      (*(v121 + 104))(v124, enum case for SearchItem.link(_:), v120);
                      (*(v121 + 32))(v126, v124, v120);
                      (*(v68 + 8))(v71, v67);
                      _objc_release(v11[0]);
                      _objc_release(v54);
                      _objc_release(v54);
                      goto LABEL_74;
                    }

                    sub_1003446CC(v66);
                    _objc_release(v11[0]);
                  }
                }
              }
            }
          }
        }
      }

      _objc_release(v54);
      _objc_release(v54);
      goto LABEL_75;
    }

    v128 = v54;
    _objc_retain(v119);
    SearchItem.InstantAnswer.init(suggestion:)(v119, v105);
    if ((*(v107 + 48))(v105, 1, v106) == 1)
    {
      sub_1002F1D54(v105);
      _objc_release(v54);
      _objc_release(v54);
      goto LABEL_75;
    }

    (*(v107 + 32))(v110, v105, v106);
    (*(v107 + 16))(v124, v110, v106);
    (*(v121 + 104))(v124, enum case for SearchItem.instantAnswer(_:), v120);
    (*(v121 + 32))(v126, v124, v120);
    (*(v107 + 8))(v110, v106);
    _objc_release(v54);
    _objc_release(v54);
LABEL_74:
    (*(v121 + 16))(v57, v126, v120);
    (*(v121 + 56))(v57, 0, 1, v120);
    _objc_release(v119);
    return (*(v121 + 8))(v126, v120);
  }

  v127 = v54;
  _objc_retain(v119);
  SearchItem.TopHit.init(suggestion:)(v119, v112);
  if ((*(v115 + 48))(v112, 1, v114) != 1)
  {
    (*(v115 + 32))(v118, v112, v114);
    (*(v115 + 16))(v124, v118, v114);
    (*(v121 + 104))(v124, enum case for SearchItem.topHit(_:), v120);
    (*(v121 + 32))(v126, v124, v120);
    (*(v115 + 8))(v118, v114);
    _objc_release(v54);
    _objc_release(v54);
    goto LABEL_74;
  }

  sub_10040F04C(v112);
  _objc_release(v54);
  _objc_release(v54);
LABEL_75:
  _objc_release(v119);
  return (*(v121 + 56))(v57, 1, 1, v120);
}

uint64_t sub_10040EE54(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.LegacySuggested();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10040EEFC(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.Generic();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10040EFA4(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.Contact();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10040F04C(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.TopHit();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10040F118()
{
  v3 = type metadata accessor for StringSearchScope();
  v2 = _allocateUninitializedArray<A>(_:)();
  (*(*(v3 - 8) + 104))(v0, enum case for StringSearchScope.general(_:));
  result = v2;
  sub_1002612B0();
  qword_1006F0248 = v2;
  return result;
}

uint64_t *sub_10040F1A4()
{
  if (qword_1006D60B0 != -1)
  {
    swift_once();
  }

  return &qword_1006F0248;
}

uint64_t sub_10040F204()
{
  v1 = sub_10040F1A4();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_10040F25C(uint64_t a1)
{
  v2 = sub_10040F1A4();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t sub_10040F2D0(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v7 = a2;
  v13 = 0;
  v12 = 0;
  v11 = type metadata accessor for StringSearchCriteria();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v13 = __chkstk_darwin(v10);
  v12 = a2;

  (*(v8 + 16))(v6, v10, v11);
  IntentParameter.wrappedValue.setter();

  return (*(v8 + 8))(v10, v11);
}

void (*sub_10040F3F8(void *a1, uint64_t a2))(void **a1)
{
  v4 = sub_100294700(0x30uLL);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10040F494(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = type metadata accessor for StringSearchCriteria();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[3] = a2;

  return _swift_task_switch(sub_10040F594, 0);
}

uint64_t sub_10040F594()
{
  v0[2] = v0;
  v0[10] = type metadata accessor for MainActor();
  v0[11] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10040F63C, v1);
}

uint64_t sub_10040F63C()
{
  *(v0 + 16) = v0;
  *(v0 + 96) = sub_1003B8D78();

  return _swift_task_switch(sub_10040F6C4, 0);
}

uint64_t sub_10040F6C4()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v0;
  if (v1)
  {
    v9 = v10[9];
    v8 = v10[7];
    v7 = v10[8];
    v10[4] = v10[12];
    sub_10035F9D8();
    StringSearchCriteria.term.getter();
    v10[13] = String._bridgeToObjectiveC()();
    (*(v7 + 8))(v9, v8);

    v10[14] = @"allMailboxes";
    _objc_retain(@"allMailboxes");
    v10[15] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10040F8F4, v2);
  }

  else
  {
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to find message list view controller", 0x2BuLL, 1);
    sub_100367A00();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();

    v5 = *(v10[2] + 8);

    return v5();
  }
}

uint64_t sub_10040F8F4()
{
  v3 = v0[14];
  v4 = v0[13];
  v1 = v0[12];
  v0[2] = v0;
  [v1 beginSearchWithQueryString:? scope:?];

  _objc_release(v3);
  _objc_release(v4);

  return _swift_task_switch(sub_10040F9B0, 0);
}

uint64_t sub_10040F9B0()
{
  v3 = *(v0 + 96);
  *(v0 + 16) = v0;
  static IntentResult.result<>()();
  _objc_release(v3);

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_10040FA6C()
{
  v15 = &v17;
  v17 = 0;
  v10 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v14 = &v6 - v6;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v13 = &v6 - v7;
  v2 = sub_10025C9B0(&qword_1006D6280);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v12 = &v6 - v8;
  sub_10025C9B0(&qword_1006DBE70);
  v3 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 56);
  v9 = 1;
  v3(v12, 1);
  v4 = type metadata accessor for IntentDialog();
  (*(*(v4 - 8) + 56))(v13, v9);
  v11 = type metadata accessor for StringSearchCriteria();
  sub_100410730();
  sub_1003BD8F8(v14);
  v16 = IntentParameter<>.init(description:requestValueDialog:inputConnectionBehavior:)();

  v17 = v16;
  sub_100268928();
  return v16;
}

uint64_t sub_10040FC9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10040F204();
  *a1 = result;
  return result;
}

void (*sub_10040FCE4(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_10040F3F8(v3, *v1);
  return sub_10034C098;
}

unint64_t sub_10040FD90()
{
  v2 = qword_1006DBE38;
  if (!qword_1006DBE38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10040FE0C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_10040F494(a1, v6);
}

uint64_t sub_10040FECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10040FA6C();
  *a1 = result;
  return result;
}

unint64_t sub_10040FF28()
{
  v2 = qword_1006DBE40;
  if (!qword_1006DBE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10040FFA4()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0250;
  sub_10002094C(v7, qword_1006F0250);
  v11 = sub_1000208F4(v7, v6);
  sub_1004100E4();
  sub_1004101B8();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1004100E4()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("system", 6uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1004101B8()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ShowInAppSearchResultsIntent", 0x1CuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_100410290()
{
  if (qword_1006D60B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0250);
}

uint64_t sub_1004102FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100410290();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_100410378()
{
  v2 = qword_1006DBE48;
  if (!qword_1006DBE48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10041040C()
{
  v2 = qword_1006DBE50;
  if (!qword_1006DBE50)
  {
    type metadata accessor for StringSearchCriteria();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10041048C(uint64_t a1)
{
  result = sub_10040FF28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004104E8()
{
  v2 = qword_1006DBE58;
  if (!qword_1006DBE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10041057C()
{
  v2 = qword_1006DBE60;
  if (!qword_1006DBE60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004106A0()
{
  v2 = qword_1006DBE68;
  if (!qword_1006DBE68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100410730()
{
  v2 = qword_1006DBE78;
  if (!qword_1006DBE78)
  {
    type metadata accessor for StringSearchCriteria();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE78);
    return WitnessTable;
  }

  return v2;
}

void *sub_1004107DC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView);
  _objc_retain(v2);
  return v2;
}

void *sub_100410824()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_10041086C()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel);
  _objc_retain(v2);
  return v2;
}

id sub_1004108B4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100410924(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_1004109BC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel);
  _objc_retain(v2);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v1 = String._bridgeToObjectiveC()();

  [v2 setText:v1];
  _objc_release(v1);
  _objc_release(v2);
  v4 = *(v0 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel);
  _objc_retain(v4);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v3 = String._bridgeToObjectiveC()();

  [v4 setText:v3];
  _objc_release(v3);
  _objc_release(v4);
}

uint64_t sub_100410AF0()
{
  v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Label informing users of search indexing status", 0x2FuLL, 1);
  v70 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Label informing users on how to speed up search indexing while plugged in China", 0x4FuLL, 1);
  v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Label informing users on how to speed up search indexing while plugged in most regions", 0x56uLL, 1);
  v72 = OBJC_IVAR____TtC10MobileMail19SearchPreparingView_indexStatus;
  v73 = (v0 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_indexStatus);
  swift_beginAccess();
  if (*v73)
  {
    v64 = *(v68 + v72);
    _objc_retain(v64);
    swift_endAccess();
    v65 = [v64 scenario];
    _objc_release(v64);
    v66 = v65;
    v67 = 0;
  }

  else
  {
    swift_endAccess();
    v66 = 0;
    v67 = 1;
  }

  sub_10025C9B0(&qword_1006DBEA0);
  if (v67)
  {
LABEL_46:
    sub_1004109BC();
    goto LABEL_48;
  }

  if (v66)
  {
    if (v66 != 1)
    {
      if (v66 != 2)
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }

      goto LABEL_46;
    }

    v39 = *(v68 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel);
    _objc_retain(v39);
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPTIMIZING_SEARCH_TITLE", 0x17uLL, 1);
    v37 = sub_10028FEB4();
    v11._countAndFlagsBits = sub_100015E30();
    v11._object = v12;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v37, v11, v69);

    _objc_release(v37);

    v38 = String._bridgeToObjectiveC()();

    [v39 setText:v38];
    _objc_release(v38);
    _objc_release(v39);
    v40 = *(v68 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel);
    _objc_retain(v40);
    v41 = MobileGestalt_get_current_device();
    if (v41)
    {
      v36 = v41;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    wapiCapability = MobileGestalt_get_wapiCapability();
    _objc_release(v36);
    if (wapiCapability)
    {
      v32 = objc_opt_self();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPTIMIZING_SEARCH_OTHER_EXPLANATION_WLAN", 0x28uLL, 1);
      v33 = String._bridgeToObjectiveC()();

      v34 = [v32 modelSpecificLocalizedStringKeyForKey:v33];
      _objc_release(v33);
      if (v34)
      {
        v30._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30._object = v13;
        _objc_release(v34);
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v31._object)
      {
        v29 = v31;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v28 = sub_10028FEB4();
      v14._countAndFlagsBits = sub_100015E30();
      v14._object = v15;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v14, v70);

      _objc_release(v28);
    }

    else
    {
      v25 = objc_opt_self();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPTIMIZING_SEARCH_OTHER_EXPLANATION_WiFi", 0x28uLL, 1);
      v26 = String._bridgeToObjectiveC()();

      v27 = [v25 modelSpecificLocalizedStringKeyForKey:v26];
      _objc_release(v26);
      if (v27)
      {
        v23._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23._object = v16;
        _objc_release(v27);
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v24._object)
      {
        v22 = v24;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = sub_10028FEB4();
      v17._countAndFlagsBits = sub_100015E30();
      v17._object = v18;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v17, v71);

      _objc_release(v21);
    }

    v20 = String._bridgeToObjectiveC()();

    [v40 setText:v20];
    _objc_release(v20);
    _objc_release(v40);
  }

  else
  {
    v61 = *(v68 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel);
    _objc_retain(v61);
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPTIMIZING_SEARCH_TITLE", 0x17uLL, 1);
    bundle = sub_10028FEB4();
    v2._countAndFlagsBits = sub_100015E30();
    v2._object = v3;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, bundle, v2, v69);

    _objc_release(bundle);

    v60 = String._bridgeToObjectiveC()();

    [v61 setText:v60];
    _objc_release(v60);
    _objc_release(v61);
    v62 = *(v68 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel);
    _objc_retain(v62);
    v63 = MobileGestalt_get_current_device();
    if (v63)
    {
      v58 = v63;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v57 = MobileGestalt_get_wapiCapability();
    _objc_release(v58);
    if (v57)
    {
      v54 = objc_opt_self();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPTIMIZING_SEARCH_NORMAL_EXPLANATION_WLAN", 0x29uLL, 1);
      v55 = String._bridgeToObjectiveC()();

      v56 = [v54 modelSpecificLocalizedStringKeyForKey:v55];
      _objc_release(v55);
      if (v56)
      {
        v52._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52._object = v4;
        _objc_release(v56);
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      if (v53._object)
      {
        v51 = v53;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v50 = sub_10028FEB4();
      v5._countAndFlagsBits = sub_100015E30();
      v5._object = v6;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v5, v70);

      _objc_release(v50);
    }

    else
    {
      v47 = objc_opt_self();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPTIMIZING_SEARCH_NORMAL_EXPLANATION_WiFi", 0x29uLL, 1);
      v48 = String._bridgeToObjectiveC()();

      v49 = [v47 modelSpecificLocalizedStringKeyForKey:v48];
      _objc_release(v48);
      if (v49)
      {
        v45._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45._object = v7;
        _objc_release(v49);
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      if (v46._object)
      {
        v44 = v46;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v43 = sub_10028FEB4();
      v8._countAndFlagsBits = sub_100015E30();
      v8._object = v9;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v8, v71);

      _objc_release(v43);
    }

    v42 = String._bridgeToObjectiveC()();

    [v62 setText:v42];
    _objc_release(v42);
    _objc_release(v62);
  }

LABEL_48:
}

uint64_t sub_100411918(void *a1)
{
  _objc_retain(a1);
  v4 = (v1 + OBJC_IVAR____TtC10MobileMail19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  _objc_release(v2);
  swift_endAccess();
  return sub_100410AF0();
}

char *sub_100411A1C(double a1, double a2, double a3, double a4)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  *&v11 = a3;
  *(&v11 + 1) = a4;
  ObjectType = swift_getObjectType();
  v14 = v10;
  v15 = v11;
  v16 = v4;
  v6 = OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView;
  sub_100264A18();
  *&v4[v6] = sub_10025C704();
  v7 = OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel;
  sub_100264928();
  *&v16[v7] = sub_10025C704();
  v8 = OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel;
  *&v16[v8] = sub_10025C704();
  *&v16[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_indexStatus] = 0;
  v13.receiver = v16;
  v13.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v13, "initWithFrame:", v10, v11);
  _objc_retain(v12);
  v16 = v12;
  sub_100411BBC();
  _objc_release(v16);
  return v12;
}

void sub_100411BBC()
{
  v3 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel];
  _objc_retain(v3);
  v2 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor:?];
  _objc_release(v2);
  _objc_release(v3);
  v6 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel];
  _objc_retain(v6);
  v4 = objc_opt_self();
  _objc_retain(UIFontTextStyleSubheadline);
  v5 = [v4 _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightMedium];
  _objc_release(UIFontTextStyleSubheadline);
  [v6 setFont:v5];
  _objc_release(v5);
  _objc_release(v6);
  v7 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel];
  _objc_retain(v7);
  [v7 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v7);
  v8 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel];
  _objc_retain(v8);
  [v8 setTextAlignment:?];
  _objc_release(v8);
  v10 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel];
  _objc_retain(v10);
  v9 = [objc_opt_self() secondaryLabelColor];
  [v10 setTextColor:?];
  _objc_release(v9);
  _objc_release(v10);
  v13 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel];
  _objc_retain(v13);
  v11 = objc_opt_self();
  _objc_retain(UIFontTextStyleFootnote);
  v12 = [v11 _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightRegular];
  _objc_release(UIFontTextStyleFootnote);
  [v13 setFont:v12];
  _objc_release(v12);
  _objc_release(v13);
  v14 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel];
  _objc_retain(v14);
  [v14 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v14);
  v15 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel];
  _objc_retain(v15);
  [v15 setTextAlignment:1];
  _objc_release(v15);
  v16 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel];
  _objc_retain(v16);
  [v16 setNumberOfLines:?];
  _objc_release(v16);
  v18 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v18);
  v17 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel];
  _objc_retain(v17);
  [v18 addArrangedSubview:v17];
  _objc_release(v17);
  _objc_release(v18);
  v20 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v20);
  v19 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel];
  _objc_retain(v19);
  [v20 addArrangedSubview:v19];
  _objc_release(v19);
  _objc_release(v20);
  v21 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v21);
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v21);
  v22 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v22);
  [v22 setAxis:1];
  _objc_release(v22);
  v23 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v23);
  [v23 setSpacing:?];
  _objc_release(v23);
  v24 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v24);
  [v0 addSubview:v24];
  _objc_release(v24);
  v43 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v42 = v1;
  v25 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v25);
  v27 = [v25 topAnchor];
  _objc_release(v25);
  _objc_retain(v0);
  v26 = [v0 topAnchor];
  _objc_release(v0);
  v28 = [v27 constraintEqualToAnchor:v26 constant:12.0];
  _objc_release(v26);
  _objc_release(v27);
  *v42 = v28;
  v29 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v29);
  v31 = [v29 bottomAnchor];
  _objc_release(v29);
  _objc_retain(v0);
  v30 = [v0 bottomAnchor];
  _objc_release(v0);
  v32 = [v31 constraintEqualToAnchor:v30 constant:6.0];
  _objc_release(v30);
  _objc_release(v31);
  v42[1] = v32;
  v33 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v33);
  v35 = [v33 leadingAnchor];
  _objc_release(v33);
  _objc_retain(v0);
  v34 = [v0 leadingAnchor];
  _objc_release(v0);
  v36 = [v35 constraintEqualToAnchor:v34 constant:16.0];
  _objc_release(v34);
  _objc_release(v35);
  v42[2] = v36;
  v37 = *&v0[OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView];
  _objc_retain(v37);
  v40 = [v37 trailingAnchor];
  _objc_release(v37);
  _objc_retain(v38);
  v39 = [v38 trailingAnchor];
  _objc_release(v38);
  v41 = [v40 constraintEqualToAnchor:v39 constant:-16.0];
  _objc_release(v39);
  _objc_release(v40);
  v42[3] = v41;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];
  _objc_release(isa);
}

void sub_100412610()
{
  v0 = OBJC_IVAR____TtC10MobileMail19SearchPreparingView_stackView;
  sub_100264A18();
  *v0 = sub_10025C704();
  v1 = OBJC_IVAR____TtC10MobileMail19SearchPreparingView_titleLabel;
  sub_100264928();
  *v1 = sub_10025C704();
  v2 = OBJC_IVAR____TtC10MobileMail19SearchPreparingView_explanationLabel;
  *v2 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail19SearchPreparingView_indexStatus = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100412864()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_contacts);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1004128CC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_contacts);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
  sub_100412D18();
}

uint64_t (*sub_100412950(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1004129C0;
}

uint64_t sub_1004129C0(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_100412D18();
}

id sub_100412A10()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100412A80(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  _objc_retain(a1);
  v4 = (v1 + OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_100412DC8(v5);
  _objc_release(v5);
  _objc_release(a1);
}

void (*sub_100412B84(void *a1))(id **a1, char a2)
{
  v4 = sub_100294700(0x28uLL);
  *a1 = v4;
  v4[4] = v1;
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  v4[3] = v5;
  return sub_100412C44;
}

void sub_100412C44(id **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v2 = v3[3];
    _objc_retain(v2);
    sub_100412A80(v2);
    sub_10026A58C(v3 + 3);
  }

  else
  {
    sub_100412A80(v3[3]);
  }

  free(v3);
}

uint64_t sub_100412D18()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_contacts);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  (*((*v0 & swift_isaMask) + 0x90))(v3);
}

void sub_100412DC8(void *a1)
{
  v27 = 0;
  v28 = a1;
  _objc_retain(a1);
  if (a1)
  {
    [a1 cancel];
    _objc_release(a1);
  }

  v10 = &v11[OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts];
  swift_beginAccess();
  if (*v10)
  {
    v9 = *v10;
    _objc_retain(*v10);
    swift_endAccess();
    v8 = [objc_opt_self() mainThreadScheduler];
    v6 = swift_allocObject();
    _objc_retain(v11);
    swift_unknownObjectWeakInit();
    _objc_release(v11);

    v18 = sub_100413480;
    v19 = v6;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = 0;
    v16 = sub_1002919E0;
    v17 = &unk_10065F4A8;
    v7 = _Block_copy(&aBlock);

    [v9 onScheduler:v8 addSuccessBlock:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
    _objc_release(v9);
  }

  else
  {
    swift_endAccess();
  }

  v5 = &v11[OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts];
  swift_beginAccess();
  if (*v5)
  {
    v4 = *v5;
    _objc_retain(*v5);
    swift_endAccess();
    v3 = [objc_opt_self() mainThreadScheduler];
    v1 = swift_allocObject();
    _objc_retain(v11);
    swift_unknownObjectWeakInit();
    _objc_release(v11);

    v25 = sub_100413414;
    v26 = v1;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = 0;
    v23 = sub_100291B2C;
    v24 = &unk_10065F480;
    v2 = _Block_copy(&v20);

    [v4 onScheduler:v3 addFailureBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();
    _objc_release(v4);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1004131B4(void *a1, uint64_t a2)
{
  v7 = 0;
  v10 = a1;
  v9 = a2 + 16;
  _objc_retain(a1);
  sub_10025C9B0(&qword_1006DB680);
  _objc_retain(a1);
  sub_100413964();
  _conditionallyBridgeFromObjectiveC_bridgeable<A>(_:_:)();
  _objc_release(a1);
  _objc_release(a1);
  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    _objc_retain(Strong);
    sub_10026A58C(&Strong);
    swift_endAccess();

    sub_1004128CC(v4);
    _objc_release(v3);
  }

  else
  {
    sub_10026A58C(&Strong);
    swift_endAccess();
  }
}

void sub_100413348(void *a1, uint64_t a2)
{
  v3[5] = a1;
  v3[4] = (a2 + 16);
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    _objc_retain(v3[0]);
    sub_10026A58C(v3);
    swift_endAccess();
    sub_1004128CC(0);
    _objc_release(v2);
  }

  else
  {
    sub_10026A58C(v3);
    swift_endAccess();
  }
}

uint64_t sub_10041341C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100413488(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1004134EC()
{
  v4 = v0;
  _objc_retain(v0);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SearchResultConfigurationCell();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  _objc_release(v0);
  v2 = sub_100412A10();
  if (v2)
  {
    v1 = v2;
    _objc_retain(v2);
    sub_10026A58C(&v2);
    [v1 cancel];
    _objc_release(v1);
  }

  else
  {
    sub_10026A58C(&v2);
  }
}

char *sub_10041363C(double a1, double a2, double a3, double a4)
{
  v15 = 0;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  *OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_contacts = 0;
  *&v15[OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts] = 0;
  v10.receiver = v15;
  v10.super_class = type metadata accessor for SearchResultConfigurationCell();
  v9 = objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
  _objc_retain(v9);
  v15 = v9;
  _objc_release(v9);
  return v9;
}

char *sub_100413784(void *a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_contacts = 0;
  *&v7[OBJC_IVAR____TtC10MobileMail29SearchResultConfigurationCell_futureContacts] = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for SearchResultConfigurationCell();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    _objc_retain(v4);
    v7 = v4;
    _objc_release(a1);
    _objc_release(v7);
    return v4;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id sub_1004138CC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultConfigurationCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100413964()
{
  v2 = qword_1006DBF08;
  if (!qword_1006DBF08)
  {
    sub_10025CAA4(&qword_1006DB680);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBF08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004139EC()
{
  if (qword_1006D60C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F0268);
}

uint64_t *sub_100413A58()
{
  if (qword_1006D60C8 != -1)
  {
    swift_once();
  }

  return &qword_1006F0280;
}

uint64_t sub_100413AB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_contactCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF18);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413B38@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_documentCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF28);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413BB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_legacySuggestedSearchRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF38);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413C38@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_listCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF38);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413CB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_linkCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF50);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413D38@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_locationCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF60);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413DB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_photoCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF70);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413E38@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_instantAnswerFlightCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF80);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413EB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_instantAnswerHotelCellRegistration;
  v2 = sub_10025C9B0(&qword_1006DBF90);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_100413F38@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_topHitCellRegistration);
  swift_beginAccess();
  sub_100417C94(v3, a1);
  return swift_endAccess();
}

uint64_t sub_100413F9C(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006DBFA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_100417C94(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_topHitCellRegistration);
  v6 = &v8;
  swift_beginAccess();
  sub_100417DC8(v4, v5);
  swift_endAccess();
  return sub_100417FFC(v7);
}

uint64_t sub_1004140E8()
{
  sub_100414144();
  v1 = SearchCollectionViewDataSource.isEmpty.getter();

  return (v1 ^ 1) & 1;
}

uint64_t sub_100414144()
{
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___dataSource);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_100417A48();

  v2 = (v5 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___dataSource);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

void *sub_100414238()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_cellRegistrationFactory);
  _objc_retain(v2);
  return v2;
}

double sub_100414280()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_currentKeyboardOverlap);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_100414308(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_currentKeyboardOverlap);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return swift_endAccess();
}

uint64_t sub_1004143AC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_lastVisibleIndexPaths);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_100414414(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_lastVisibleIndexPaths);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void *sub_100414494()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_scene);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_1004144DC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_100414544(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1004145B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_100414620()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1004146A0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F0268);
  sub_1000208F4(v1, qword_1006F0268);
  return sub_1004146EC();
}

uint64_t sub_100414724@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004139EC();
  swift_beginAccess();
  v1 = type metadata accessor for Logger();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1004147B0(uint64_t a1)
{
  v10 = a1;
  v14 = 0;
  v13 = 0;
  v11 = type metadata accessor for Logger();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v3 - v4;
  v14 = __chkstk_darwin(v10);
  v13 = v1;
  v5 = sub_1004139EC();
  (*(v8 + 16))(v6, v10, v11);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

id sub_10041497C()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___collectionView);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100414B88(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___collectionView];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_100414AF0(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___collectionView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100414B88(void *a1)
{
  sub_10042A168();
  _objc_retain(a1);
  v17 = [a1 view];
  _objc_release(a1);
  if (v17)
  {
    v15 = v17;
  }

  else
  {
    LOBYTE(v7) = 2;
    v8 = 48;
    LODWORD(v9) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v15 bounds];
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  _objc_release(v15);
  v5 = sub_100414E14();
  v18 = sub_100414EE4(v5, v10, v11, v12, v13);
  _objc_retain(v18);
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v18);
  _objc_retain(v18);
  v14 = [objc_opt_self() systemBackgroundColor];
  [v18 setBackgroundColor:?];
  _objc_release(v14);
  _objc_release(v18);
  _objc_retain(a1);
  [v18 setDelegate:a1];
  swift_unknownObjectRelease();
  _objc_retain(v18);
  [v18 setKeyboardDismissMode:1];
  _objc_release(v18);
  return v18;
}

id sub_100414E14()
{
  sub_1004180B0();
  v2 = swift_allocObject();
  _objc_retain(v1);
  swift_unknownObjectWeakInit();
  _objc_release(v1);

  v3 = sub_10041D48C(sub_10041C5D4, v2);

  return v3;
}

uint64_t (*sub_100414F44())(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___cellProvider);
  swift_beginAccess();
  v10 = *v9;
  sub_10041D4D4(*v9);
  swift_endAccess();
  if (v10)
  {
    return v10;
  }

  v5 = sub_100415070(v8);
  v6 = v1;

  v4 = &v8[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___cellProvider];
  swift_beginAccess();
  v2 = *v4;
  *v4 = v5;
  v4[1] = v6;
  sub_1003009E8(v2);
  swift_endAccess();
  return v5;
}

uint64_t (*sub_100415070(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  return sub_100429820;
}

uint64_t sub_10041511C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v302 = a4;
  v301 = a3;
  v305 = a2;
  v304 = a1;
  v303 = 0;
  v344 = 0;
  v343 = 0;
  v342 = 0;
  v341 = 0;
  v339 = 0;
  v345 = 0;
  v268 = 0;
  v327 = 0;
  v322 = 0;
  v4 = sub_10025C9B0(&qword_1006DC330);
  v269 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4 - 8);
  v270 = &v53 - v269;
  v271 = (*(*(sub_10025C9B0(&qword_1006DC338) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v303);
  v272 = &v53 - v271;
  v273 = type metadata accessor for Logger();
  v274 = *(v273 - 8);
  v275 = v274;
  v279 = *(v274 + 64);
  v5 = __chkstk_darwin(v303);
  v281 = (v279 + 15) & 0xFFFFFFFFFFFFFFF0;
  v276 = &v53 - v281;
  v6 = __chkstk_darwin(v5);
  v277 = &v53 - v281;
  v7 = __chkstk_darwin(v6);
  v278 = &v53 - v281;
  v8 = __chkstk_darwin(v7);
  v280 = &v53 - v281;
  __chkstk_darwin(v8);
  v282 = &v53 - v281;
  v283 = type metadata accessor for SearchItem.InstantAnswer();
  v284 = *(v283 - 8);
  v285 = v284;
  __chkstk_darwin(v283 - 8);
  v286 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = v286;
  v10 = sub_10025C9B0(&qword_1006DBFA8);
  v287 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v288 = &v53 - v287;
  v11 = sub_10025C9B0(&qword_1006DC340);
  v289 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11 - 8);
  v290 = &v53 - v289;
  v12 = sub_10025C9B0(&qword_1006DC348);
  v291 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v292 = &v53 - v291;
  v13 = sub_10025C9B0(&qword_1006DC350);
  v293 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13 - 8);
  v294 = &v53 - v293;
  v14 = sub_10025C9B0(&qword_1006DC358);
  v295 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - 8);
  v296 = &v53 - v295;
  v15 = sub_10025C9B0(&qword_1006DC360);
  v297 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15 - 8);
  v298 = &v53 - v297;
  v299 = (*(*(sub_10025C9B0(&unk_1006DC368) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v303);
  v300 = &v53 - v299;
  v306 = type metadata accessor for SearchItem();
  v307 = *(v306 - 8);
  v308 = v307;
  v309 = *(v307 + 64);
  v16 = __chkstk_darwin(v304);
  v310 = &v53 - ((v309 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = v16;
  v343 = v17;
  v342 = v18;
  v311 = v19 + 16;
  v341 = v19 + 16;
  v312 = &v340;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v313 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v267 = v313;
    v263 = v313;
    v339 = v313;
    (*(v308 + 16))(v310, v301, v306);
    v20 = (*(v308 + 88))(v310, v306);
    v264 = v20;
    if (v20 == enum case for SearchItem.allMailboxes(_:))
    {
      (*(v308 + 96))(v310, v306);
      v262 = 0;
      v261 = type metadata accessor for SearchItem.Generic();
      (*(*(v261 - 8) + 8))(v310);

      v265 = v262;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.contact(_:))
    {
      (*(v308 + 96))(v310, v306);
      v255 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_contactCellRegistration];
      v257 = sub_10025C9B0(&qword_1006DBF18);
      v256 = *(v257 - 8);
      (*(v256 + 16))(v300, v255);
      (*(v256 + 56))(v300, 0, 1, v257);
      v258 = 0;
      v21 = type metadata accessor for ContactConfigurationCell();
      v260 = sub_1004176C0(v300, v304, v305, v301, v21);
      sub_100429D14(v300);
      v259 = type metadata accessor for SearchItem.Contact();
      (*(*(v259 - 8) + 8))(v310);

      v265 = v260;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.photo(_:))
    {
      (*(v308 + 96))(v310, v306);
      v231 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_photoCellRegistration];
      v233 = sub_10025C9B0(&qword_1006DBF70);
      v232 = *(v233 - 8);
      (*(v232 + 16))(v292, v231);
      (*(v232 + 56))(v292, 0, 1, v233);
      v234 = 0;
      v25 = type metadata accessor for PhotoConfigurationCell();
      v236 = sub_1004176C0(v292, v304, v305, v301, v25);
      sub_100429A44(v292);
      v235 = type metadata accessor for SearchItem.Photo();
      (*(*(v235 - 8) + 8))(v310);

      v265 = v236;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.location(_:))
    {
      (*(v308 + 96))(v310, v306);
      v237 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_locationCellRegistration];
      v239 = sub_10025C9B0(&qword_1006DBF60);
      v238 = *(v239 - 8);
      (*(v238 + 16))(v294, v237);
      (*(v238 + 56))(v294, 0, 1, v239);
      v240 = 0;
      v24 = type metadata accessor for LocationConfigurationCell();
      v242 = sub_1004176C0(v294, v304, v305, v301, v24);
      sub_100429AF8(v294);
      v241 = type metadata accessor for SearchItem.Location();
      (*(*(v241 - 8) + 8))(v310);

      v265 = v242;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.document(_:))
    {
      (*(v308 + 96))(v310, v306);
      v249 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_documentCellRegistration];
      v251 = sub_10025C9B0(&qword_1006DBF28);
      v250 = *(v251 - 8);
      (*(v250 + 16))(v298, v249);
      (*(v250 + 56))(v298, 0, 1, v251);
      v252 = 0;
      v22 = type metadata accessor for DocumentConfigurationCell();
      v254 = sub_1004176C0(v298, v304, v305, v301, v22);
      sub_100429C60(v298);
      v253 = type metadata accessor for SearchItem.Document();
      (*(*(v253 - 8) + 8))(v310);

      v265 = v254;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.legacy(_:))
    {
      (*(v308 + 96))(v310, v306);
      v54 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_legacySuggestedSearchRegistration];
      v56 = sub_10025C9B0(&qword_1006DBF38);
      v55 = *(v56 - 8);
      (*(v55 + 16))(v290, v54);
      (*(v55 + 56))(v290, 0, 1, v56);
      v57 = 0;
      v51 = type metadata accessor for AdjustableSeparatorInsetListCell();
      v59 = sub_1004176C0(v290, v304, v305, v301, v51);
      sub_100429828(v290);
      v58 = type metadata accessor for SearchItem.LegacySuggested();
      (*(*(v58 - 8) + 8))(v310);

      v265 = v59;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.suggestion(_:))
    {
      (*(v308 + 96))(v310, v306);
      v225 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_listCellRegistration];
      v227 = sub_10025C9B0(&qword_1006DBF38);
      v226 = *(v227 - 8);
      (*(v226 + 16))(v290, v225);
      (*(v226 + 56))(v290, 0, 1, v227);
      v228 = 0;
      v26 = type metadata accessor for AdjustableSeparatorInsetListCell();
      v230 = sub_1004176C0(v290, v304, v305, v301, v26);
      sub_100429828(v290);
      v229 = type metadata accessor for SearchItem.Generic();
      (*(*(v229 - 8) + 8))(v310);

      v265 = v230;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.recent(_:))
    {
      (*(v308 + 96))(v310, v306);
      v219 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_listCellRegistration];
      v221 = sub_10025C9B0(&qword_1006DBF38);
      v220 = *(v221 - 8);
      (*(v220 + 16))(v290, v219);
      (*(v220 + 56))(v290, 0, 1, v221);
      v222 = 0;
      v27 = type metadata accessor for AdjustableSeparatorInsetListCell();
      v224 = sub_1004176C0(v290, v304, v305, v301, v27);
      sub_100429828(v290);
      v223 = type metadata accessor for SearchItem.Generic();
      (*(*(v223 - 8) + 8))(v310);

      v265 = v224;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.topHit(_:))
    {
      (*(v308 + 96))(v310, v306);
      v214 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_topHitCellRegistration];
      v215 = v315;
      v216 = 0;
      swift_beginAccess();
      sub_100417C94(v214, v288);
      swift_endAccess();
      v28 = sub_1003C1558();
      v218 = sub_1004176C0(v288, v304, v305, v301, v28);
      sub_100417FFC(v288);
      v217 = type metadata accessor for SearchItem.TopHit();
      (*(*(v217 - 8) + 8))(v310);

      v265 = v218;
      v266 = v268;
    }

    else if (v264 == enum case for SearchItem.instantAnswer(_:))
    {
      v29 = v282;
      (*(v308 + 96))(v310, v306);
      (*(v285 + 32))(v286, v310, v283);
      v345 = v286;
      v203 = sub_1004139EC();
      v206 = &v338;
      v209 = 0;
      swift_beginAccess();
      v204 = *(v275 + 16);
      v205 = (v275 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v204(v29, v203, v273);
      swift_endAccess();
      v212 = Logger.logObject.getter();
      v207 = v212;
      v211 = static os_log_type_t.default.getter();
      v208 = v211;
      v210 = sub_10025C9B0(&unk_1006D7720);
      v213 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v212, v211))
      {
        v30 = v268;
        v194 = static UnsafeMutablePointer.allocate(capacity:)();
        v190 = v194;
        v191 = sub_10025C9B0(&qword_1006D7290);
        v192 = 0;
        v195 = sub_1002641E8(0);
        v193 = v195;
        v196 = sub_1002641E8(v192);
        v318[0] = v194;
        v317 = v195;
        v316 = v196;
        v197 = 0;
        v198 = v318;
        sub_10026423C(0, v318);
        sub_10026423C(v197, v198);
        v315[3] = v213;
        v199 = &v53;
        __chkstk_darwin(&v53);
        v200 = &v53 - 6;
        *(&v53 - 4) = v31;
        *(&v53 - 3) = &v317;
        *(&v53 - 2) = &v316;
        v201 = sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        v202 = v30;
        if (v30)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v207, v208, "[instant answers] Creating UICollectionViewCell for instant answer", v190, 2u);
          v188 = 0;
          sub_10026429C(v193);
          sub_10026429C(v196);
          UnsafeMutablePointer.deallocate()();

          v189 = v202;
        }
      }

      else
      {

        v189 = v268;
      }

      v184 = v189;

      v185 = *(v275 + 8);
      v186 = (v275 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v185(v282, v273);
      v187 = SearchItem.InstantAnswer.instantAnswerKind.getter();
      if (v187)
      {
        if (v187 == 1)
        {
          v38 = v278;
          v138 = sub_1004139EC();
          v139 = v328;
          v141 = 0;
          swift_beginAccess();
          v204(v38, v138, v273);
          swift_endAccess();
          v144 = Logger.logObject.getter();
          v140 = v144;
          v143 = static os_log_type_t.default.getter();
          v142 = v143;
          v145 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v144, v143))
          {
            v39 = v184;
            v129 = static UnsafeMutablePointer.allocate(capacity:)();
            v125 = v129;
            v126 = sub_10025C9B0(&qword_1006D7290);
            v127 = 0;
            v130 = sub_1002641E8(0);
            v128 = v130;
            v131 = sub_1002641E8(v127);
            v326 = v129;
            v325 = v130;
            v324 = v131;
            v132 = 0;
            v133 = &v326;
            sub_10026423C(0, &v326);
            sub_10026423C(v132, v133);
            v323[3] = v145;
            v134 = &v53;
            __chkstk_darwin(&v53);
            v135 = &v53 - 6;
            *(&v53 - 4) = v40;
            *(&v53 - 3) = &v325;
            *(&v53 - 2) = &v324;
            v136 = sub_10025C9B0(&qword_1006D72C0);
            sub_10026E6E0();
            Sequence.forEach(_:)();
            v137 = v39;
            if (v39)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&_mh_execute_header, v140, v142, "[instant answers] Received item type hotel, so creating hotel configuration cell", v125, 2u);
              v123 = 0;
              sub_10026429C(v128);
              sub_10026429C(v131);
              UnsafeMutablePointer.deallocate()();

              v124 = v137;
            }
          }

          else
          {

            v124 = v184;
          }

          v116 = v124;

          v185(v278, v273);
          v117 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_instantAnswerHotelCellRegistration];
          v119 = sub_10025C9B0(&qword_1006DBF90);
          v118 = *(v119 - 8);
          (*(v118 + 16))(v270, v117);
          (*(v118 + 56))(v270, 0, 1, v119);
          v120 = type metadata accessor for InstantAnswerHotelCell();
          v122 = sub_1004176C0(v270, v304, v305, v301, v120);
          v121 = v122;
          sub_1004298DC(v270);
          v327 = v122;
          v41 = v122;
          if (v122)
          {
            v115 = v121;
            v112 = v121;
            v42 = swift_dynamicCastClass();
            v113 = v42;
            if (v42)
            {
              v111 = v113;
            }

            else
            {

              v111 = 0;
            }

            v114 = v111;
          }

          else
          {
            v114 = 0;
          }

          v110 = v114;
          if (v114)
          {
            v109 = v110;
            v108 = v110;
            v43 = v263;
            sub_1002F1FF0();
          }

          (*(v285 + 8))(v286, v283);

          v265 = v121;
          v266 = v116;
        }

        else if (v187 == 2)
        {
          v44 = v277;
          v100 = sub_1004139EC();
          v101 = &v332;
          v103 = 0;
          swift_beginAccess();
          v204(v44, v100, v273);
          swift_endAccess();
          v106 = Logger.logObject.getter();
          v102 = v106;
          v105 = static os_log_type_t.default.getter();
          v104 = v105;
          v107 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v106, v105))
          {
            v45 = v184;
            v91 = static UnsafeMutablePointer.allocate(capacity:)();
            v87 = v91;
            v88 = sub_10025C9B0(&qword_1006D7290);
            v89 = 0;
            v92 = sub_1002641E8(0);
            v90 = v92;
            v93 = sub_1002641E8(v89);
            v331 = v91;
            v330 = v92;
            v329 = v93;
            v94 = 0;
            v95 = &v331;
            sub_10026423C(0, &v331);
            sub_10026423C(v94, v95);
            v328[3] = v107;
            v96 = &v53;
            __chkstk_darwin(&v53);
            v97 = &v53 - 6;
            *(&v53 - 4) = v46;
            *(&v53 - 3) = &v330;
            *(&v53 - 2) = &v329;
            v98 = sub_10025C9B0(&qword_1006D72C0);
            sub_10026E6E0();
            Sequence.forEach(_:)();
            v99 = v45;
            if (v45)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&_mh_execute_header, v102, v104, "[instant answers] Received item type restaurant, so not creating any cell as restaurant is not supported yet", v87, 2u);
              v85 = 0;
              sub_10026429C(v90);
              sub_10026429C(v93);
              UnsafeMutablePointer.deallocate()();

              v86 = v99;
            }
          }

          else
          {

            v86 = v184;
          }

          v84 = v86;

          v185(v277, v273);
          (*(v285 + 8))(v286, v283);

          v265 = 0;
          v266 = v84;
        }

        else
        {
          v47 = v276;
          v76 = sub_1004139EC();
          v77 = &v337;
          v79 = 0;
          swift_beginAccess();
          v204(v47, v76, v273);
          swift_endAccess();
          v82 = Logger.logObject.getter();
          v78 = v82;
          v81 = static os_log_type_t.default.getter();
          v80 = v81;
          v83 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v82, v81))
          {
            v49 = v184;
            v67 = static UnsafeMutablePointer.allocate(capacity:)();
            v63 = v67;
            v64 = sub_10025C9B0(&qword_1006D7290);
            v65 = 0;
            v68 = sub_1002641E8(0);
            v66 = v68;
            v69 = sub_1002641E8(v65);
            v336 = v67;
            v335 = v68;
            v334 = v69;
            v70 = 0;
            v71 = &v336;
            sub_10026423C(0, &v336);
            sub_10026423C(v70, v71);
            v333 = v83;
            v72 = &v53;
            __chkstk_darwin(&v53);
            v73 = &v53 - 6;
            *(&v53 - 4) = v50;
            *(&v53 - 3) = &v335;
            *(&v53 - 2) = &v334;
            v74 = sub_10025C9B0(&qword_1006D72C0);
            sub_10026E6E0();
            Sequence.forEach(_:)();
            v75 = v49;
            if (v49)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&_mh_execute_header, v78, v80, "[instant answers] Received item type nil, so not creating configuration cell", v63, 2u);
              v61 = 0;
              sub_10026429C(v66);
              sub_10026429C(v69);
              UnsafeMutablePointer.deallocate()();

              v62 = v75;
            }
          }

          else
          {

            v62 = v184;
          }

          v60 = v62;

          v185(v276, v273);
          (*(v285 + 8))(v286, v283);

          v265 = 0;
          v266 = v60;
        }
      }

      else
      {
        v32 = v280;
        v176 = sub_1004139EC();
        v177 = v323;
        v179 = 0;
        swift_beginAccess();
        v204(v32, v176, v273);
        swift_endAccess();
        v182 = Logger.logObject.getter();
        v178 = v182;
        v181 = static os_log_type_t.default.getter();
        v180 = v181;
        v183 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v182, v181))
        {
          v33 = v184;
          v167 = static UnsafeMutablePointer.allocate(capacity:)();
          v163 = v167;
          v164 = sub_10025C9B0(&qword_1006D7290);
          v165 = 0;
          v168 = sub_1002641E8(0);
          v166 = v168;
          v169 = sub_1002641E8(v165);
          v321 = v167;
          v320 = v168;
          v319 = v169;
          v170 = 0;
          v171 = &v321;
          sub_10026423C(0, &v321);
          sub_10026423C(v170, v171);
          v318[1] = v183;
          v172 = &v53;
          __chkstk_darwin(&v53);
          v173 = &v53 - 6;
          *(&v53 - 4) = v34;
          *(&v53 - 3) = &v320;
          *(&v53 - 2) = &v319;
          v174 = sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          v175 = v33;
          if (v33)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v178, v180, "[instant answers] Received item type flight, so creating flight configuration cell", v163, 2u);
            v161 = 0;
            sub_10026429C(v166);
            sub_10026429C(v169);
            UnsafeMutablePointer.deallocate()();

            v162 = v175;
          }
        }

        else
        {

          v162 = v184;
        }

        v154 = v162;

        v185(v280, v273);
        v155 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_instantAnswerFlightCellRegistration];
        v157 = sub_10025C9B0(&qword_1006DBF80);
        v156 = *(v157 - 8);
        (*(v156 + 16))(v272, v155);
        (*(v156 + 56))(v272, 0, 1, v157);
        v158 = type metadata accessor for InstantAnswerFlightCell();
        v160 = sub_1004176C0(v272, v304, v305, v301, v158);
        v159 = v160;
        sub_100429990(v272);
        v322 = v160;
        v35 = v160;
        if (v160)
        {
          v153 = v159;
          v150 = v159;
          v36 = swift_dynamicCastClass();
          v151 = v36;
          if (v36)
          {
            v149 = v151;
          }

          else
          {

            v149 = 0;
          }

          v152 = v149;
        }

        else
        {
          v152 = 0;
        }

        v148 = v152;
        if (v152)
        {
          v147 = v148;
          v146 = v148;
          v37 = v263;
          sub_1002F1FF0();
        }

        (*(v285 + 8))(v286, v283);

        v265 = v159;
        v266 = v154;
      }
    }

    else
    {
      if (v264 == enum case for SearchItem.link(_:))
      {
        (*(v308 + 96))(v310, v306);
        v243 = &v263[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_linkCellRegistration];
        v245 = sub_10025C9B0(&qword_1006DBF50);
        v244 = *(v245 - 8);
        (*(v244 + 16))(v296, v243);
        (*(v244 + 56))(v296, 0, 1, v245);
        v246 = 0;
        v23 = type metadata accessor for LinkConfigurationCell();
        v248 = sub_1004176C0(v296, v304, v305, v301, v23);
        sub_100429BAC(v296);
        v247 = type metadata accessor for SearchItem.Link();
        (*(*(v247 - 8) + 8))(v310);

        v265 = v248;
      }

      else
      {
        (*(v308 + 8))(v310, v306);

        v265 = 0;
      }

      v266 = v268;
    }
  }

  else
  {
    v265 = 0;
    v266 = v268;
  }

  return v265;
}

uint64_t sub_1004176C0(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[5] = a5;
  v18[4] = a1;
  v18[3] = a2;
  v18[2] = a3;
  v18[1] = a4;
  _objc_retain(a2);
  v14 = a5;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  type metadata accessor for SearchItem();
  type metadata accessor for UICollectionView.CellRegistration();
  v11 = type metadata accessor for Optional();
  v5 = sub_10041D54C();
  sub_10026A250(sub_10041D508, v13, v11, &type metadata for Never, v5, v12, v18);
  _objc_release(a2);
  return v18[0];
}

uint64_t sub_100417818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v15 = a1;
  v16 = a3;
  v12 = a4;
  v17 = a5;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v26 = a5;
  v11 = (*(*(sub_10025C9B0(&qword_1006DBD08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v10 - v11;
  v25 = __chkstk_darwin(v15);
  v24 = a2;
  v23 = v7;
  v22 = v8;
  v18 = type metadata accessor for SearchItem();
  v13 = *(v18 - 8);
  v14 = v18 - 8;
  (*(v13 + 16))(v19, v12);
  (*(v13 + 56))(v19, 0, 1, v18);
  v21 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_10040BF30(v19);
  result = v21;
  *v20 = v21;
  return result;
}

uint64_t sub_1004179A8(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___cellProvider);
  swift_beginAccess();
  v3 = *v6;
  *v6 = a1;
  v6[1] = a2;
  sub_1003009E8(v3);
  swift_endAccess();
}

uint64_t sub_100417A48()
{
  type metadata accessor for SearchCollectionViewDataSource();
  v5 = sub_10041497C();
  v6 = sub_100414F44();
  v4 = v0;
  v1 = sub_100417AC8();
  return SearchCollectionViewDataSource.__allocating_init(collectionView:cellProvider:supplementaryViewProvider:)(v5, v6, v4, v1, v2);
}

uint64_t (*sub_100417AC8())()
{
  v9 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___supplementaryViewProvider);
  swift_beginAccess();
  v10 = *v9;
  sub_10041D4D4(*v9);
  swift_endAccess();
  if (v10)
  {
    return v10;
  }

  v5 = sub_100418244(v8);
  v6 = v1;

  v4 = &v8[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___supplementaryViewProvider];
  swift_beginAccess();
  v2 = *v4;
  *v4 = v5;
  v4[1] = v6;
  sub_1003009E8(v2);
  swift_endAccess();
  return v5;
}

uint64_t sub_100417BF4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___dataSource);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id sub_100417C74()
{
  result = sub_100418114();
  qword_1006F0280 = result;
  return result;
}

void *sub_100417C94(const void *a1, void *a2)
{
  v6 = sub_10025C9B0(&qword_1006DBFA0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DBFA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_100417DC8(const void *a1, void *a2)
{
  v7 = sub_10025C9B0(&qword_1006DBFA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006DBFA8);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006DBFA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_100417FFC(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBFA0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1004180B0()
{
  v2 = qword_1006DBFE8;
  if (!qword_1006DBFE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DBFE8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_100418140()
{
  v1 = sub_100413A58();
  swift_beginAccess();
  v2 = *v1;
  _objc_retain(*v1);
  swift_endAccess();
  return v2;
}

void sub_1004181A8(void *a1)
{
  v2 = sub_100413A58();
  _objc_retain(a1);
  swift_beginAccess();
  v1 = *v2;
  *v2 = a1;
  _objc_release(v1);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t (*sub_100418244(void *a1))()
{
  v26 = a1;
  v16 = 0;
  v15 = sub_100418A20;
  v20 = sub_100429554;
  v29 = sub_10042955C;
  v57 = sub_100429564;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v47 = sub_10025C9B0(&qword_1006DC300);
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v37 = v45;
  v38 = *(v45 + 64);
  v9 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v44 = &v9 - v9;
  v10 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v9);
  v48 = &v9 - v10;
  v62 = &v9 - v10;
  v52 = sub_10025C9B0(&qword_1006DC308);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v35 = v49;
  v36 = *(v49 + 64);
  v11 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v42 = &v9 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v51 = &v9 - v12;
  v61 = &v9 - v12;
  v56 = sub_10025C9B0(&unk_1006DC310);
  v53 = *(v56 - 8);
  v54 = v56 - 8;
  v32 = v53;
  v33 = *(v53 + 64);
  v13 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v26);
  v40 = &v9 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v55 = &v9 - v14;
  v60 = &v9 - v14;
  v59 = v5;
  v23 = 0;
  v17 = type metadata accessor for SeparatorSupplementaryView();
  static SeparatorSupplementaryView.reuseIdentifier.getter();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v22 = type metadata accessor for TitleAndButtonSupplementaryView_iOS();
  v18 = static TitleAndButtonSupplementaryView_iOS.reuseIdentifier.getter();
  v19 = v6;
  v24 = &unk_10065F4E0;
  v25 = 24;
  v34 = 7;
  v21 = swift_allocObject();
  _objc_retain(v26);
  swift_unknownObjectWeakInit();
  _objc_release(v26);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v31 = type metadata accessor for TitleSupplementaryView();
  v27 = static TitleSupplementaryView.reuseIdentifier.getter();
  v28 = v7;
  v30 = swift_allocObject();
  _objc_retain(v26);
  swift_unknownObjectWeakInit();
  _objc_release(v26);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v53 + 16))(v40, v55, v56);
  (*(v49 + 16))(v42, v51, v52);
  (*(v45 + 16))(v44, v48, v47);
  v39 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v41 = (v39 + v33 + *(v35 + 80)) & ~*(v35 + 80);
  v43 = (v41 + v36 + *(v37 + 80)) & ~*(v37 + 80);
  v58 = swift_allocObject();
  (*(v53 + 32))(v58 + v39, v40, v56);
  (*(v49 + 32))(v58 + v41, v42, v52);
  (*(v45 + 32))(v58 + v43, v44, v47);
  (*(v45 + 8))(v48, v47);
  (*(v49 + 8))(v51, v52);
  (*(v53 + 8))(v55, v56);
  return v57;
}

uint64_t sub_100418A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v38 = "";
  v63 = 0;
  v39 = sub_10041940C;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v76 = 0;
  v5 = sub_10025C9B0(&unk_1006DC320);
  v40 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v41 = v21 - v40;
  v49 = 0;
  v42 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v46 = v21 - v45;
  v47 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v48 = v21 - v47;
  v50 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v51 = v21 - v50;
  v52 = type metadata accessor for UIButton.Configuration();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v56 = v21 - v55;
  v57 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21 - v55);
  v58 = v21 - v57;
  v82 = v21 - v57;
  v66 = *(*(sub_10025C9B0(&qword_1006DBE00) - 8) + 64);
  v65 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v64);
  v67 = v21 - v65;
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v69 = v21 - v68;
  v81 = v21 - v68;
  v80 = v8;
  v78 = v9;
  v79 = v10;
  v77 = v11;
  v70 = v12 + 16;
  v76 = v12 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v36 = Strong;
    _objc_retain(Strong);
    sub_10026A58C(p_Strong);
    v14 = swift_endAccess();
    v37 = sub_100414144(v14);
    _objc_release(v36);
    IndexPath.section.getter();
    SearchCollectionViewDataSource.section(atIndex:)();
  }

  else
  {
    sub_10026A58C(&Strong);
    swift_endAccess();
    v13 = type metadata accessor for GroupedSearchItems.Section.Kind();
    (*(*(v13 - 8) + 56))(v69, 1);
  }

  static UIButton.Configuration.plain()();
  v31 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SEARCH_SHOW_ALL", 0xFuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Main", 4uLL, v31 & 1);
  v27 = [objc_opt_self() mainBundle];
  sub_100015CC0();
  v72 = v38;
  v30 = 0;
  v73 = 0;
  v74 = 2;
  v28 = 0;
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  (*(v43 + 104))(v46, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v42);
  UIButton.Configuration.titleAlignment.setter();
  v29 = &v71;
  v15 = UIButton.Configuration.contentInsets.modify();
  *(v16 + 24) = 0;
  v15();
  sub_1004296F8(v69, v67);
  v32 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v67, v31) == 1)
  {
    sub_10040C548(v67);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v22 = GroupedSearchItems.Section.Kind.title.getter();
    v23 = v17;
    (*(v33 + 8))(v67, v32);
    v24 = v22;
    v25 = v23;
  }

  v21[3] = v25;
  v21[4] = v24;
  (*(v53 + 16))(v56, v58, v52);
  v21[5] = 0;
  sub_100015D3C();
  v21[2] = sub_100015E30();
  v21[1] = v18;
  v21[0] = sub_100015E5C();
  variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  TitleAndButtonSupplementaryView_iOS.Model.init(title:buttonConfiguration:buttonAction:)();
  v19 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  (*(*(v19 - 8) + 56))(v41, 0, 1);
  TitleAndButtonSupplementaryView_iOS.model.setter();
  (*(v53 + 8))(v58, v52);
  return sub_10040C548(v69);
}

uint64_t sub_100419420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v31 = (*(*(sub_10025C9B0(&qword_1006DBE00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v30);
  v32 = &v16 - v31;
  v33 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v34 = &v16 - v33;
  v42 = &v16 - v33;
  v41 = v7;
  v39 = v8;
  v40 = v9;
  v38 = v10;
  v35 = v11 + 16;
  v37 = v11 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v24 = Strong;
    _objc_retain(Strong);
    sub_10026A58C(p_Strong);
    v13 = swift_endAccess();
    v25 = sub_100414144(v13);
    _objc_release(v24);
    IndexPath.section.getter();
    SearchCollectionViewDataSource.section(atIndex:)();
  }

  else
  {
    sub_10026A58C(&Strong);
    swift_endAccess();
    v12 = type metadata accessor for GroupedSearchItems.Section.Kind();
    (*(*(v12 - 8) + 56))(v34, 1);
  }

  sub_1004296F8(v34, v32);
  v20 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  if ((*(v21 + 48))(v32, 1) == 1)
  {
    sub_10040C548(v32);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v16 = GroupedSearchItems.Section.Kind.title.getter();
    v17 = v14;
    (*(v21 + 8))(v32, v20);
    v18 = v16;
    v19 = v17;
  }

  TitleSupplementaryView.title.setter();
  static SearchCollectionViewLayoutFactory_iOS.horizontalPadding.getter();
  TitleSupplementaryView.horizontalPadding.setter();
  return sub_10040C548(v34);
}

uint64_t sub_100419728()
{

  type metadata accessor for SeparatorSupplementaryView();
  static SeparatorSupplementaryView.reuseIdentifier.getter();
  v4 = static String.== infix(_:_:)();
  sub_100268744();
  if (v4 & 1) != 0 || (, , type metadata accessor for TitleAndButtonSupplementaryView_iOS(), static TitleAndButtonSupplementaryView_iOS.reuseIdentifier.getter(), v2 = static String.== infix(_:_:)(), sub_100268744(), (v2))
  {

    return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  }

  else
  {

    type metadata accessor for TitleSupplementaryView();
    static TitleSupplementaryView.reuseIdentifier.getter();
    v1 = static String.== infix(_:_:)();
    sub_100268744();

    if (v1)
    {
      return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100419990(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___supplementaryViewProvider);
  swift_beginAccess();
  v3 = *v6;
  *v6 = a1;
  v6[1] = a2;
  sub_1003009E8(v3);
  swift_endAccess();
}

char *sub_100419A7C(void *a1, void *a2, uint64_t a3)
{
  v101 = a1;
  v87 = a2;
  v88 = a3;
  v99 = 0;
  v48 = sub_10041D5B0;
  ObjectType = swift_getObjectType();
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v4 = sub_10025C9B0(&qword_1006DBFA8);
  v50 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v51 = &v16 - v50;
  v52 = sub_10025C9B0(&qword_1006DBF90);
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v56 = &v16 - v55;
  v57 = sub_10025C9B0(&qword_1006DBF80);
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v57);
  v61 = &v16 - v60;
  v62 = sub_10025C9B0(&qword_1006DBF70);
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v66 = &v16 - v65;
  v67 = sub_10025C9B0(&qword_1006DBF60);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v71 = &v16 - v70;
  v72 = sub_10025C9B0(&qword_1006DBF50);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v72);
  v76 = &v16 - v75;
  v77 = sub_10025C9B0(&qword_1006DBF38);
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v81 = &v16 - v80;
  v82 = sub_10025C9B0(&qword_1006DBF28);
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82);
  v86 = &v16 - v85;
  v89 = sub_10025C9B0(&qword_1006DBF18);
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v101);
  v93 = &v16 - v92;
  v109 = v5;
  v108 = v6;
  v107 = v7;
  v110 = v3;
  v95 = v3;
  v94 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_topHitCellRegistration;
  v96 = sub_10025C9B0(&qword_1006DBFA0);
  v8 = *(v96 - 8);
  v97 = *(v8 + 56);
  v98 = v8 + 56;
  v97(&v95[v94], 1);
  v9 = &v110[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_currentKeyboardOverlap];
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
  v100 = 0;
  *&v110[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_lastVisibleIndexPaths] = 0;
  v110[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated] = 0;
  swift_unknownObjectWeakInit();
  v10 = v101;
  v11 = v100;
  *&v110[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___collectionView] = v100;
  v12 = &v110[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___cellProvider];
  *v12 = 0;
  v12[1] = 0;
  *&v110[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___dataSource] = v11;
  v13 = &v110[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___supplementaryViewProvider];
  *v13 = 0;
  v13[1] = 0;
  _objc_retain(v10);
  if (v101)
  {
    v47 = v101;
    v43 = v101;
    v44 = [v101 daemonInterface];
    _objc_release(v43);
    v45 = [v44 messageRepository];
    _objc_release(v44);
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v41 = v46;
  v106 = v46;
  type metadata accessor for SearchCollectionViewCellRegistrationFactory();
  _objc_retain(v87);
  _objc_retain(v41);
  v14 = sub_100401DD8(v87, v41);
  v40 = v14;
  v105 = v14;
  v17 = v110;
  _objc_retain(v101);
  *&v17[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_scene] = v101;
  v18 = v110;
  _objc_retain(v14);
  *&v18[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_cellRegistrationFactory] = v14;
  v19 = v110;
  swift_unknownObjectRetain();
  v20 = &v19[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
  v21 = &v104;
  v36 = 33;
  v37 = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v22 = v110;
  sub_1004022D4();
  (*(v90 + 32))(&v22[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_contactCellRegistration], v93, v89);
  v23 = v110;
  sub_1004034C8();
  (*(v83 + 32))(&v23[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_documentCellRegistration], v86, v82);
  v24 = v110;
  sub_1004077D8();
  v27 = *(v78 + 32);
  v26 = v78 + 32;
  v27(&v24[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_legacySuggestedSearchRegistration], v81, v77);
  v25 = v110;
  sub_100403C0C();
  v27(&v25[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_listCellRegistration], v81, v77);
  v28 = v110;
  sub_100407D28();
  (*(v73 + 32))(&v28[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_linkCellRegistration], v76, v72);
  v29 = v110;
  sub_100405430();
  (*(v68 + 32))(&v29[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_locationCellRegistration], v71, v67);
  v30 = v110;
  sub_100405AE0();
  (*(v63 + 32))(&v30[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_photoCellRegistration], v66, v62);
  v31 = v110;
  sub_1004072F4();
  (*(v58 + 32))(&v31[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_instantAnswerFlightCellRegistration], v61, v57);
  v32 = v110;
  sub_10040772C();
  (*(v53 + 32))(&v32[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_instantAnswerHotelCellRegistration], v56, v52);
  v103.receiver = v110;
  v103.super_class = ObjectType;
  v42 = objc_msgSendSuper2(&v103, "initWithNibName:bundle:", v37);
  _objc_retain(v42);
  v110 = v42;
  v35 = v42;
  v34 = swift_allocObject();
  v33 = v34 + 16;
  _objc_retain(v42);
  swift_unknownObjectWeakInit();
  _objc_release(v42);

  sub_100406190(v48, v34);

  (v97)(v51, 0, 1, v96);
  v38 = &v35[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_topHitCellRegistration];
  v39 = &v102;
  swift_beginAccess();
  sub_100417DC8(v51, v38);
  swift_endAccess();
  sub_10041AA4C();
  _objc_release(v40);
  _objc_release(v41);
  swift_unknownObjectRelease();
  _objc_release(v87);
  _objc_release(v101);
  _objc_release(v110);
  return v42;
}

uint64_t sub_10041A8CC(uint64_t a1)
{
  v7[4] = (a1 + 16);
  swift_beginAccess();
  v7[0] = swift_unknownObjectWeakLoadStrong();
  if (v7[0])
  {
    v5 = v7[0];
    _objc_retain(v7[0]);
    sub_10026A58C(v7);
    swift_endAccess();
    v6 = *&v5[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_scene];
    _objc_retain(v6);
    _objc_release(v5);
    if (v6)
    {
      v3 = [v6 isInExpandedEnvironment];
      _objc_release(v6);
      v4 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10026A58C(v7);
    swift_endAccess();
  }

  v4 = 2;
LABEL_6:
  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

void sub_10041AA4C()
{
  _objc_retain(v0);
  v12 = [v0 view];
  _objc_release(v0);
  if (v12)
  {
    v11 = v12;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 239;
    LODWORD(v3) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v8 = sub_10041497C();
  [v11 addSubview:?];
  _objc_release(v8);
  _objc_release(v11);
  v9 = sub_10041497C();
  _objc_retain(v0);
  v10 = [v0 view];
  _objc_release(v0);
  if (v10)
  {
    v7 = v10;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 240;
    LODWORD(v3) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v9 mf_pinToView:v1 usingLayoutMargins:{v2, v3}];
  _objc_release(v7);
  _objc_release(v9);
  v6 = sub_10041497C();
  v4 = MSAccessibilityIdentifierMailSearchSuggestions;
  _objc_retain(MSAccessibilityIdentifierMailSearchSuggestions);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();

  _objc_release(v4);
  [v6 setAccessibilityIdentifier:v5];
  _objc_release(v5);
  _objc_release(v6);
}

void sub_10041AD7C()
{
  v4 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_topHitCellRegistration;
  v0 = sub_10025C9B0(&qword_1006DBFA0);
  (*(*(v0 - 8) + 56))(v4, 1);
  v1 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_currentKeyboardOverlap;
  *OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_currentKeyboardOverlap = 0;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  *OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_lastVisibleIndexPaths = 0;
  *OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated = 0;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___collectionView = 0;
  v2 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___cellProvider;
  *OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___cellProvider = 0;
  *(v2 + 8) = 0;
  *OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___dataSource = 0;
  v3 = OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___supplementaryViewProvider;
  *OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController____lazy_storage___supplementaryViewProvider = 0;
  *(v3 + 8) = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10041AF80()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  v2 = [objc_opt_self() sharedController];
  _objc_retain(v0);
  [v2 unregisterKeyboardAvoidable:v0];
  swift_unknownObjectRelease();
  _objc_release(v2);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10041B43C()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  _objc_retain(v0);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, "viewDidLoad");
  _objc_release(v2);
  v3 = [objc_opt_self() sharedController];
  _objc_retain(v2);
  [v3 registerKeyboardAvoidable:v2];
  swift_unknownObjectRelease();
  _objc_release(v3);
}

void sub_10041B564(char a1)
{
  ObjectType = swift_getObjectType();
  v20 = a1 & 1;
  v19 = v1;
  _objc_retain(v1);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1);
  _objc_release(v12);
  v8 = sub_100413A58();
  swift_beginAccess();
  v10 = *v8;
  _objc_retain(*v8);
  swift_endAccess();
  _objc_retain(v12);
  v9 = [v12 traitCollection];
  _objc_release(v12);
  [v10 setTraitCollection:v9];
  _objc_release(v9);
  _objc_release(v10);
  v11 = sub_100413A58();
  swift_beginAccess();
  v17 = *v11;
  _objc_retain(*v11);
  swift_endAccess();
  _objc_retain(v12);
  [v12 systemMinimumLayoutMargins];
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  _objc_release(v12);
  [v17 setSystemLayoutMargins:{v13, v14, v15, v16}];
  _objc_release(v17);
}

void sub_10041B80C()
{
  ObjectType = swift_getObjectType();
  v14 = v0;
  _objc_retain(v0);
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewLayoutMarginsDidChange");
  _objc_release(v7);
  v6 = sub_100413A58();
  swift_beginAccess();
  v12 = *v6;
  _objc_retain(*v6);
  swift_endAccess();
  _objc_retain(v7);
  [v7 systemMinimumLayoutMargins];
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  _objc_release(v7);
  [v12 setSystemLayoutMargins:{v8, v9, v10, v11}];
  _objc_release(v12);
}

void sub_10041B9C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = v1;
  _objc_retain(v1);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  _objc_release(v5);
  _objc_retain(v5);
  v6 = [v5 traitCollection];
  _objc_release(v5);
  _objc_retain(a1);
  if (a1)
  {
    if ([v6 mf_traitDifferenceAffectsTextLayout:?])
    {
      v2 = sub_100413A58();
      swift_beginAccess();
      v3 = *v2;
      _objc_retain(*v2);
      swift_endAccess();
      [v3 setTraitCollection:v6];
      _objc_release(v3);
    }

    _objc_release(a1);
    _objc_release(v6);
  }

  else
  {
    _objc_release(v6);
  }
}

uint64_t sub_10041BC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v63 = a2;
  v66 = a1;
  v65 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v49 = 0;
  v50 = sub_10025C9B0(&qword_1006DC378);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v52 = &v19 - v51;
  v53 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v54 = *(v53 - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  __chkstk_darwin(v53 - 8);
  v58 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = &v19 - v58;
  __chkstk_darwin(&v19 - v58);
  v59 = &v19 - v58;
  v60 = sub_10025C9B0(&qword_1006DC380);
  v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v60 - 8);
  v62 = &v19 - v61;
  v67 = sub_10025C9B0(&qword_1006DBE00);
  v69 = *(*(v67 - 8) + 64);
  v3 = __chkstk_darwin(v66);
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = &v19 - v71;
  v4 = __chkstk_darwin(v3);
  v70 = &v19 - v71;
  v5 = __chkstk_darwin(v4);
  v72 = &v19 - v71;
  v81 = &v19 - v71;
  v80 = v5;
  v79 = v6;
  v74 = v7 + 16;
  v73 = v7 + 16;
  v78 = v7 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v8 = Strong;
    sub_10026A58C(&Strong);
    v9 = swift_endAccess();
    v48 = sub_100414144(v9);

    SearchCollectionViewDataSource.section(atIndex:)();
  }

  else
  {
    sub_10026A58C(&Strong);
    swift_endAccess();
    (*(v55 + 56))(v72, 1, 1, v53);
  }

  (*(v55 + 104))(v70, enum case for GroupedSearchItems.Section.Kind.recentSearches(_:), v53);
  v10 = *(v55 + 56);
  v44 = 1;
  v10(v70, 0);
  v43 = &v62[*(v60 + 48)];
  v42 = v43;
  sub_1004296F8(v72, v62);
  sub_1004296F8(v70, v43);
  v45 = *(v55 + 48);
  v46 = (v55 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v45(v62, v44, v53) == 1)
  {
    if (v45(v42, 1, v53) == 1)
    {
      sub_10040C548(v62);
      v41 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1004296F8(v62, v68);
    if (v45(v42, 1, v53) != 1)
    {
      v37 = *(v55 + 32);
      v36 = v55 + 32;
      v37(v59, v68, v53);
      v37(v57, v42, v53);
      sub_10042A0E8();
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v55 + 8);
      v38 = v55 + 8;
      v39(v57, v53);
      v39(v59, v53);
      sub_10040C548(v62);
      v41 = v40;
      goto LABEL_10;
    }

    (*(v55 + 8))(v68, v53);
  }

  sub_100429E2C(v62);
  v41 = 0;
LABEL_10:
  v35 = v41;
  sub_10040C548(v70);
  if (v35)
  {
    v11 = v49;
    v30 = swift_allocObject();
    v28 = v30 + 16;
    v27 = &v75;
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    swift_unknownObjectWeakInit();

    v31 = static SearchCollectionViewLayoutFactory_iOS.recentSearchesSectionLayout(_:deletion:)();

    v32 = v31;
    sub_10040C548(v72);
    v33 = v32;
    v34 = v11;
    return v33;
  }

  v12 = v49;
  swift_unknownObjectRetain();
  v24 = &v19;
  __chkstk_darwin(&v19);
  v25 = &v19 - 4;
  *(&v19 - 2) = v13;
  v14 = sub_10025C9B0(&qword_1006DC388);
  sub_10026A250(sub_100429F58, v25, v67, &type metadata for Never, v14, v15, v52);
  v26 = v12;
  if (!v12)
  {
    swift_unknownObjectRelease();
    v21 = &v19;
    __chkstk_darwin(&v19);
    v22 = &v19 - 4;
    *(&v19 - 2) = sub_10041D3E0;
    *(&v19 - 1) = 0;
    v16 = sub_100429FB4();
    sub_100302B20(sub_100429F84, v22, v50, &type metadata for Never, v16, v17, &v76);
    v23 = 0;
    sub_10042A018(v52);
    v20 = v76;
    sub_10040C548(v72);
    v33 = v20;
    v34 = v23;
    return v33;
  }

  swift_unknownObjectRelease();
  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_10041C5DC(void *a1, uint64_t a2)
{
  v8[5] = a1;
  v8[4] = (a2 + 16);
  swift_beginAccess();
  v8[0] = swift_unknownObjectWeakLoadStrong();
  if (v8[0])
  {
    v4 = v8[0];
    _objc_retain(v8[0]);
    sub_10026A58C(v8);
    swift_endAccess();
    v5 = sub_10041C71C(a1);
    _objc_release(v4);
    v6 = v5 & 1;
  }

  else
  {
    sub_10026A58C(v8);
    swift_endAccess();
    v6 = 2;
  }

  if (v6 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v6;
  }

  return v3 & 1;
}

uint64_t sub_10041C71C(uint64_t a1)
{
  v82 = a1;
  v62 = sub_10041D658;
  v63 = sub_100427BA0;
  v64 = sub_10026EE84;
  v65 = sub_10026434C;
  v66 = sub_10026434C;
  v67 = sub_10026EF2C;
  v94 = 0;
  v93 = 0;
  v68 = 0;
  v86 = 0;
  v69 = 0;
  v70 = type metadata accessor for IndexPath();
  v72 = *(v70 - 8);
  v71 = v70 - 8;
  v73 = v72;
  v74 = *(v72 + 64);
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v76 = v19 - v75;
  v77 = type metadata accessor for Logger();
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v82);
  v81 = v19 - v80;
  v94 = v2;
  v93 = v1;
  v83 = sub_100414144();
  v84 = SearchCollectionViewDataSource.suggestion(for:)(v82);

  if (v84)
  {
    v60 = v84;
    v58 = v84;
    objc_opt_self();
    v59 = swift_dynamicCastObjCClass();
    if (v59)
    {
      v57 = v59;
    }

    else
    {
      _objc_release(v58);
      v57 = 0;
    }

    v56 = v57;
  }

  else
  {
    v56 = 0;
  }

  v55 = v56;
  if (v56)
  {
    v54 = v55;
    v50 = v55;
    v86 = v55;
    _objc_retain(v55);
    v52 = [v50 category];
    _objc_release(v50);
    v51 = [objc_opt_self() recentSearchCategory];
    v53 = [v52 isGroupedInCategory:?];
    _objc_release(v51);
    _objc_release(v52);
    if (v53)
    {
      v48 = sub_100414144();
      SearchCollectionViewDataSource.remove(_:animated:)(v50, 1);

      v49 = &v61[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        p_Strong = &Strong;
        v47 = Strong;
        swift_unknownObjectRetain();
        sub_100294754();
        swift_endAccess();
        swift_getObjectType();
        _objc_retain(v61);
        [v47 searchSuggestionsViewController:v61 deleteRecentSuggestion:v50];
        _objc_release(v61);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100294754();
        swift_endAccess();
      }

      _objc_release(v50);
      v45 = 1;
      return v45 & 1;
    }

    _objc_release(v50);
  }

  v3 = v81;
  v27 = sub_1004139EC();
  v28 = &v92;
  v33 = 32;
  swift_beginAccess();
  (*(v78 + 16))(v3, v27, v77);
  swift_endAccess();
  v29 = v73;
  (*(v72 + 16))(v76, v82, v70);
  v30 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = 7;
  v31 = swift_allocObject();
  (*(v72 + 32))(v31 + v30, v76, v70);

  v4 = swift_allocObject();
  v5 = v31;
  v35 = v4;
  *(v4 + 16) = v62;
  *(v4 + 24) = v5;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v32 = 17;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v6 = swift_allocObject();
  v7 = v35;
  v36 = v6;
  *(v6 + 16) = v63;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v36;
  v40 = v8;
  *(v8 + 16) = v64;
  *(v8 + 24) = v9;
  v42 = sub_10025C9B0(&unk_1006D7720);
  v39 = _allocateUninitializedArray<A>(_:)();
  v41 = v10;

  v11 = v37;
  v12 = v41;
  *v41 = v65;
  v12[1] = v11;

  v13 = v38;
  v14 = v41;
  v41[2] = v66;
  v14[3] = v13;

  v15 = v40;
  v16 = v41;
  v41[4] = v67;
  v16[5] = v15;
  sub_1002612B0();

  if (os_log_type_enabled(v43, v44))
  {
    v17 = v68;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v19[2] = sub_10025C9B0(&qword_1006D7290);
    v21 = sub_1002641E8(0);
    v22 = sub_1002641E8(1);
    v23 = &v91;
    v91 = v20;
    v24 = &v90;
    v90 = v21;
    v25 = &v89;
    v89 = v22;
    sub_10026423C(2, &v91);
    sub_10026423C(1, v23);
    v87 = v65;
    v88 = v37;
    sub_100264250(&v87, v23, v24, v25);
    v26 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v87 = v66;
      v88 = v38;
      sub_100264250(&v87, &v91, &v90, &v89);
      v19[0] = 0;
      v87 = v67;
      v88 = v40;
      sub_100264250(&v87, &v91, &v90, &v89);
      _os_log_impl(&_mh_execute_header, v43, v44, "Invalid delete resent search request at: %s", v20, 0xCu);
      sub_10026429C(v21);
      sub_10026429C(v22);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v43);
  (*(v78 + 8))(v81, v77);
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_10041D330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_10025C9B0(&qword_1006DC388) + 48);
  v3 = type metadata accessor for GroupedSearchItems.Section.Kind();
  (*(*(v3 - 8) + 16))(a3, a1);
  result = swift_unknownObjectRetain();
  *(a3 + v7) = a2;
  return result;
}

uint64_t sub_10041D418@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  v3 = sub_10025C9B0(&qword_1006DC388);
  result = a2(a1, *(a1 + *(v3 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_10041D4D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10041D54C()
{
  v2 = qword_1006DBFF8;
  if (!qword_1006DBFF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DBFF8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_10041D5B8(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_10041D658@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IndexPath();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_10041D5F8(v3, a1);
}

void sub_10041D6CC(uint64_t a1, int a2, int a3)
{
  v62 = a3;
  v63 = a2;
  v82 = 0;
  v64 = 0;
  v79 = 0;
  v75 = 0;
  v85 = a1;
  v84 = a2;
  v83 = a3;
  v65 = (v3 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated);
  v66 = &v81;
  swift_beginAccess();
  v67 = *v65;
  swift_endAccess();
  if (v67)
  {
    v60 = 0;
  }

  else
  {
    v60 = v62 ^ 1;
  }

  if (v60)
  {
    v57 = &v61[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_lastVisibleIndexPaths];
    v58 = &v68;
    swift_beginAccess();
    *v57 = 0;

    swift_endAccess();
    v59 = v64;
    return;
  }

  v50 = sub_10041497C();
  v47 = [v50 indexPathsForVisibleItems];
  v46 = v47;
  v53 = 0;
  v48 = type metadata accessor for IndexPath();
  v49 = v48;
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80[2] = v51;
  v54 = sub_10025C9B0(&unk_1006DAFC0);
  v52 = v54;
  sub_100427D28();
  v55 = v64;
  v56 = _ArrayProtocol.filter(_:)();
  v39 = v56;

  v80[0] = v56;
  v41 = sub_1003C15BC();
  v40 = v41;
  sub_100427DB0();
  v42 = v80;
  v44 = Sequence<>.sorted()();
  v43 = v44;
  sub_100264880();
  v79 = v44;
  v78 = v44;
  sub_100427E30();
  v45 = Collection.isEmpty.getter();
  v4 = v61;

  if (v45)
  {
    v25 = 0;
    goto LABEL_20;
  }

  v32 = &v61[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_lastVisibleIndexPaths];
  v34 = &v73;
  swift_beginAccess();
  v36 = *v32;
  v33 = v36;

  swift_endAccess();

  v35 = v43;

  v37 = &v71;
  v38 = &v72;
  v71 = v36;
  v72 = v43;
  if (!v36)
  {
    if (!*v38)
    {
      sub_100264880();
      v31 = 1;
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  sub_1002A730C(v37, &v70);
  if (!*v38)
  {
    sub_100264880();
LABEL_17:
    sub_1002A7344();
    v31 = 0;
    goto LABEL_13;
  }

  v69 = *v38;
  v29 = v70;
  v28 = v69;
  sub_100427F44();
  v30 = static Array<A>.== infix(_:_:)();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  v31 = v30;
LABEL_13:
  v27 = v31;

  if (v31)
  {
    v26 = v63;
  }

  else
  {
    v26 = 1;
  }

  v25 = v26;
LABEL_20:
  v24 = v25;

  if (v25)
  {
    v5 = v55;

    v16 = &v61[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_lastVisibleIndexPaths];
    v17 = &v77;
    v18 = 0;
    swift_beginAccess();
    *v16 = v43;

    swift_endAccess();
    v76 = v43;
    v6 = v61;
    v19 = &v10;
    __chkstk_darwin(v18);
    v20 = v9;
    v9[2] = v7;
    v21 = sub_100427EE0();
    v8 = Sequence.compactMap<A>(_:)();
    v22 = v5;
    v23 = v8;
    v14 = v8;

    v75 = v14;
    v15 = &v61[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 reportSuggestionsVisible:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    v11 = v22;
  }

  else
  {
    v11 = v55;
  }

  v10 = v11;
}

uint64_t sub_10041DFFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100414144();
  v5 = SearchCollectionViewDataSource.suggestion(for:)(a1);

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10041E1C8(void *a1, uint64_t a2)
{
  v107 = a1;
  v109 = a2;
  v80 = sub_100427FC4;
  v81 = sub_10026E818;
  v82 = sub_10026434C;
  v83 = sub_10026434C;
  v84 = sub_10026EBF8;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v85 = 0;
  v92 = 0;
  v86 = type metadata accessor for Logger();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v90 = v41 - v89;
  v91 = (*(*(sub_10025C9B0(&qword_1006DBD08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v113 = v41 - v91;
  v115 = type metadata accessor for SearchItem();
  v111 = *(v115 - 8);
  v112 = v115 - 8;
  v93 = v111;
  v94 = *(v111 + 64);
  v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v92);
  v96 = v41 - v95;
  v97 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v98 = v41 - v97;
  v99 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v100 = v41 - v99;
  v126 = v41 - v99;
  v105 = type metadata accessor for IndexPath();
  v103 = *(v105 - 8);
  v104 = v105 - 8;
  v101 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v107);
  v106 = v41 - v101;
  v125 = v6;
  v124 = v7;
  v123 = v102;
  (*(v103 + 16))(v41 - v101);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v103 + 8))(v106, v105);
  v114 = 1;
  [v107 deselectItemAtIndexPath:isa animated:1];
  _objc_release(isa);
  v110 = sub_100414144();
  SearchCollectionViewDataSource.searchItem(for:)();

  if ((*(v111 + 48))(v113, v114, v115) == 1)
  {
    return sub_10040BF30(v113);
  }

  v76 = *(v111 + 32);
  v77 = v111 + 32;
  v76(v100, v113, v115);
  v78 = sub_100414144();
  v79 = SearchCollectionViewDataSource.suggestion(for:)(v109);

  if (!v79)
  {
    return (*(v111 + 8))(v100, v115);
  }

  v75 = v79;
  v71 = v79;
  v122 = v79;
  v72 = *(v111 + 16);
  v73 = v111 + 16;
  v72(v98, v100, v115);
  v9 = (*(v111 + 88))(v98, v115);
  v74 = v9;
  if (v9 == enum case for SearchItem.contact(_:))
  {
    (*(v111 + 96))(v98, v115);
    v10 = type metadata accessor for SearchItem.Contact();
    (*(*(v10 - 8) + 8))(v98);
LABEL_18:
    v12 = sub_10041F71C();
    v70 = v13;
    v12(v71, v109);

    goto LABEL_32;
  }

  if (v74 == enum case for SearchItem.location(_:))
  {
    (*(v111 + 96))(v98, v115);
    v25 = type metadata accessor for SearchItem.Location();
    (*(*(v25 - 8) + 8))(v98);
    goto LABEL_25;
  }

  if (v74 == enum case for SearchItem.document(_:))
  {
    (*(v111 + 96))(v98, v115);
    v23 = type metadata accessor for SearchItem.Document();
    (*(*(v23 - 8) + 8))(v98);
LABEL_25:
    v26 = sub_10041F794();
    v66 = v27;
    v26(v71, v109);

    goto LABEL_32;
  }

  if (v74 == enum case for SearchItem.legacy(_:))
  {
    (*(v111 + 96))(v98, v115);
    v14 = sub_10041F4E4();
    v69 = v15;
    v14(v71, v109);

    v16 = type metadata accessor for SearchItem.LegacySuggested();
    (*(*(v16 - 8) + 8))(v98);
    goto LABEL_32;
  }

  if (v74 == enum case for SearchItem.suggestion(_:) || v74 == enum case for SearchItem.recent(_:))
  {
    (*(v111 + 96))(v98, v115);
    v11 = type metadata accessor for SearchItem.Generic();
    (*(*(v11 - 8) + 8))(v98);
    goto LABEL_18;
  }

  if (v74 == enum case for SearchItem.topHit(_:))
  {
    (*(v111 + 96))(v98, v115);
    v17 = sub_10041F55C();
    v68 = v18;
    v17(v71, v109);

    v19 = type metadata accessor for SearchItem.TopHit();
    (*(*(v19 - 8) + 8))(v98);
  }

  else
  {
    if (v74 != enum case for SearchItem.instantAnswer(_:))
    {
      if (v74 != enum case for SearchItem.link(_:))
      {
        v28 = v90;
        v50 = sub_1004139EC();
        v51 = &v121;
        v54 = 32;
        swift_beginAccess();
        (*(v87 + 16))(v28, v50, v86);
        swift_endAccess();
        v72(v96, v100, v115);
        v52 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v55 = 7;
        v56 = swift_allocObject();
        v76((v56 + v52), v96, v115);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        v53 = 17;
        v58 = swift_allocObject();
        *(v58 + 16) = 0;
        v59 = swift_allocObject();
        *(v59 + 16) = 8;
        v29 = swift_allocObject();
        v30 = v56;
        v57 = v29;
        *(v29 + 16) = v80;
        *(v29 + 24) = v30;
        v31 = swift_allocObject();
        v32 = v57;
        v61 = v31;
        *(v31 + 16) = v81;
        *(v31 + 24) = v32;
        v63 = sub_10025C9B0(&unk_1006D7720);
        v60 = _allocateUninitializedArray<A>(_:)();
        v62 = v33;

        v34 = v58;
        v35 = v62;
        *v62 = v82;
        v35[1] = v34;

        v36 = v59;
        v37 = v62;
        v62[2] = v83;
        v37[3] = v36;

        v38 = v61;
        v39 = v62;
        v62[4] = v84;
        v39[5] = v38;
        sub_1002612B0();

        if (os_log_type_enabled(v64, v65))
        {
          v40 = v85;
          v43 = static UnsafeMutablePointer.allocate(capacity:)();
          v41[4] = sub_10025C9B0(&qword_1006D7290);
          v42 = 0;
          v44 = sub_1002641E8(0);
          v45 = sub_1002641E8(v42);
          v46 = &v120;
          v120 = v43;
          v47 = &v119;
          v119 = v44;
          v48 = &v118;
          v118 = v45;
          sub_10026423C(0, &v120);
          sub_10026423C(1, v46);
          v116 = v82;
          v117 = v58;
          sub_100264250(&v116, v46, v47, v48);
          v49 = v40;
          if (v40)
          {

            __break(1u);
          }

          else
          {
            v116 = v83;
            v117 = v59;
            sub_100264250(&v116, &v120, &v119, &v118);
            v41[2] = 0;
            v116 = v84;
            v117 = v61;
            sub_100264250(&v116, &v120, &v119, &v118);
            _os_log_impl(&_mh_execute_header, v64, v65, "Unable to select search item in section: %ld", v43, 0xCu);
            v41[1] = 0;
            sub_10026429C(v44);
            sub_10026429C(v45);
            UnsafeMutablePointer.deallocate()();
          }
        }

        else
        {
        }

        _objc_release(v64);
        (*(v87 + 8))(v90, v86);
        (*(v111 + 8))(v98, v115);
        goto LABEL_32;
      }

      (*(v111 + 96))(v98, v115);
      v24 = type metadata accessor for SearchItem.Link();
      (*(*(v24 - 8) + 8))(v98);
      goto LABEL_25;
    }

    (*(v111 + 96))(v98, v115);
    v20 = sub_10041F5D4();
    v67 = v21;
    v20(v71, v109);

    v22 = type metadata accessor for SearchItem.InstantAnswer();
    (*(*(v22 - 8) + 8))(v98);
  }

LABEL_32:
  _objc_release(v71);
  return (*(v111 + 8))(v100, v115);
}

void (*sub_10041F4E4())(void *a1, uint64_t a2)
{
  _objc_retain(v0);
  v1 = swift_allocObject();
  result = sub_100428028;
  *(v1 + 16) = v0;
  return result;
}

void (*sub_10041F55C())(void *a1, uint64_t a2)
{
  _objc_retain(v0);
  v1 = swift_allocObject();
  result = sub_100428030;
  *(v1 + 16) = v0;
  return result;
}

void (*sub_10041F5D4())(void *a1, uint64_t a2)
{
  _objc_retain(v0);
  v1 = swift_allocObject();
  result = sub_100428038;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_10041F64C()
{
  v4 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v2 = *(v4 - 8);
  v3 = v4 - 8;
  v1 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v5 = &v1 - v1;
  SearchItem.section.getter();
  v6 = GroupedSearchItems.Section.Kind.rawValue.getter();
  (*(v2 + 8))(v5, v4);
  return v6;
}

void (*sub_10041F71C())(void *a1, uint64_t a2)
{
  _objc_retain(v0);
  v1 = swift_allocObject();
  result = sub_100428028;
  *(v1 + 16) = v0;
  return result;
}

void (*sub_10041F794())(void *a1, uint64_t a2)
{
  _objc_retain(v0);
  v1 = swift_allocObject();
  result = sub_100428040;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_10041FBA0()
{
  v3 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated);
  swift_beginAccess();
  *v3 = 0;
  swift_endAccess();
  sub_100414144();
  v1 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  SearchCollectionViewDataSource.clearSuggestions(animated:)(v1 & 1);
}

uint64_t sub_10041FC74()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated);
  swift_beginAccess();
  *v2 = 0;
  swift_endAccess();
  sub_100414144();
  sub_10040A57C();
}

uint64_t sub_10041FD40()
{
  sub_100414144();
  sub_10040A650(1u);
}

void *sub_10041FDE0(void *a1)
{
  v124 = v159;
  v132 = a1;
  v133 = 0;
  v173 = 0;
  v172 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v161 = 0;
  v160 = 0;
  memset(v159, 0, sizeof(v159));
  v156 = 0;
  v152 = 0;
  v126 = type metadata accessor for Logger();
  v127 = *(v126 - 8);
  v128 = v127;
  v2 = __chkstk_darwin(v132);
  v129 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v2;
  v172 = v1;
  v130 = (v1 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated);
  v131 = &v171;
  swift_beginAccess();
  *v130 = 0;
  swift_endAccess();
  v135 = [v132 categories];
  v134 = v135;
  v141 = sub_10040BD3C();
  v136 = v141;
  v170 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  KeyPath = swift_getKeyPath();
  v137 = KeyPath;

  v140 = sub_10025C9B0(&qword_1006DC050);
  v138 = v140;
  v142 = sub_100428078();
  v4 = Sequence.compactMap<A>(_:)();
  v143 = 0;
  v144 = v4;
  v105 = v4;

  sub_100264880();

  v169 = v105;
  v114 = sub_10040BDA0();
  v106 = v114;
  v108 = Set.init<A>(_:)();
  v107 = v108;
  v168 = v108;

  v5 = swift_allocObject();
  v6 = v132;
  v116 = v5;
  v109 = v5;
  *(v5 + 16) = v108;
  v118 = sub_100428100;
  v166 = sub_100428100;
  v167 = v5;
  v111 = [v6 suggestions];
  v110 = v111;
  v112 = sub_100427EE0();
  v113 = v112;
  v164 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = sub_10025C9B0(&qword_1006DBCE8);
  v115 = v121;
  v163 = Dictionary.init()();

  v7 = v125;
  v117 = v37;
  v8 = __chkstk_darwin(v116);
  v120 = &v37[-6];
  v37[-4] = v118;
  v37[-3] = v8;
  v37[-2] = v9;
  v122 = sub_10025C9B0(&unk_1006DC070);
  v119 = v122;
  sub_10040BEA8();
  Sequence.reduce<A>(into:_:)();
  v123 = 0;

  sub_100264880();
  v103 = v165;

  v104 = Dictionary.isEmpty.getter();

  if (v104)
  {
    v51 = v123;
  }

  else
  {
    v10 = v123;
    v98 = v165;

    v153 = v98;
    v99 = v37;
    __chkstk_darwin(v37);
    v100 = &v37[-4];
    v37[-2] = sub_100421038;
    v37[-1] = 0;
    v11 = sub_100428274();
    v13 = sub_10025E9D8(sub_100428244, v100, v119, &type metadata for String, &type metadata for Never, v11, &protocol witness table for Never, v12);
    v101 = v10;
    v102 = v13;
    if (v10)
    {
      result = 0;
      __break(1u);
      return result;
    }

    v14 = v129;
    v77 = v102;
    sub_100264880();
    v152 = v77;
    v75 = sub_1004139EC();
    v81 = 32;
    v85 = 32;
    v76 = &v151;
    swift_beginAccess();
    (*(v128 + 16))(v14, v75, v126);
    swift_endAccess();

    v86 = 7;
    v78 = swift_allocObject();
    *(v78 + 16) = v77;

    v15 = swift_allocObject();
    v16 = v78;
    v87 = v15;
    *(v15 + 16) = sub_100278D34;
    *(v15 + 24) = v16;

    v97 = Logger.logObject.getter();
    v79 = v97;
    v96 = static os_log_type_t.default.getter();
    v80 = v96;
    v82 = 17;
    v90 = swift_allocObject();
    v83 = v90;
    *(v90 + 16) = v81;
    v91 = swift_allocObject();
    v84 = v91;
    *(v91 + 16) = 8;
    v17 = swift_allocObject();
    v18 = v87;
    v88 = v17;
    *(v17 + 16) = sub_1004282FC;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v88;
    v94 = v19;
    v89 = v19;
    *(v19 + 16) = sub_10026EE84;
    *(v19 + 24) = v20;
    v95 = sub_10025C9B0(&unk_1006D7720);
    v92 = _allocateUninitializedArray<A>(_:)();
    v93 = v21;

    v22 = v90;
    v23 = v93;
    *v93 = sub_10026434C;
    v23[1] = v22;

    v24 = v91;
    v25 = v93;
    v93[2] = sub_10026434C;
    v25[3] = v24;

    v26 = v93;
    v27 = v94;
    v93[4] = sub_10026EF2C;
    v26[5] = v27;
    sub_1002612B0();

    if (os_log_type_enabled(v97, v96))
    {
      v28 = v101;
      v68 = static UnsafeMutablePointer.allocate(capacity:)();
      v65 = v68;
      v66 = sub_10025C9B0(&qword_1006D7290);
      v69 = sub_1002641E8(0);
      v67 = v69;
      v71 = 1;
      v70 = sub_1002641E8(1);
      v149 = v68;
      v148 = v69;
      v147 = v70;
      v72 = &v149;
      sub_10026423C(2, &v149);
      sub_10026423C(v71, v72);
      v145 = sub_10026434C;
      v146 = v83;
      sub_100264250(&v145, v72, &v148, &v147);
      v73 = v28;
      v74 = v28;
      if (v28)
      {
        v63 = 0;

        __break(1u);
      }

      else
      {
        v145 = sub_10026434C;
        v146 = v84;
        sub_100264250(&v145, &v149, &v148, &v147);
        v61 = 0;
        v62 = 0;
        v145 = sub_10026EF2C;
        v146 = v89;
        sub_100264250(&v145, &v149, &v148, &v147);
        v59 = 0;
        v60 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "Update search suggestions with suggestions: %s", v65, 0xCu);
        sub_10026429C(v67);
        sub_10026429C(v70);
        UnsafeMutablePointer.deallocate()();

        v64 = v59;
      }
    }

    else
    {
      v29 = v101;

      v64 = v29;
    }

    v57 = v64;

    (*(v128 + 8))(v129, v126);
    v58 = &v125[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v56 = Strong;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      v54 = v165;

      v52 = sub_10025C9B0(&unk_1006D74B0);
      v53 = _dictionaryUpCast<A, B, C, D>(_:)();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v56 reportSuggestionsFetched:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    v51 = v57;
  }

  v49 = v51;

  v44 = v165;

  v45 = Dictionary.keys.getter();

  v162 = v45;
  v46 = sub_10025C9B0(&qword_1006DC080);
  sub_100428138();
  v48 = Set.symmetricDifference<A>(_:)();
  v47 = v48;
  v161 = v48;

  Set.makeIterator()();
  v30 = v124;
  v31 = v49;
  v32 = v174;
  v160 = v176;
  *(v124 + 1) = v175;
  *v30 = v32;
  for (i = v31; ; i = v40)
  {
    v42 = i;
    sub_10025C9B0(&qword_1006DC090);
    Set.Iterator.next()();
    v43 = v158;
    if (!v158)
    {
      break;
    }

    v41 = v43;
    v39 = v43;
    v40 = v42;
    v156 = v43;
    v33 = v43;
    v155 = _allocateUninitializedArray<A>(_:)();
    v154 = v39;
    Dictionary.subscript.setter();
  }

  v34 = v125;
  sub_1004281C0();
  v37[0] = &v34[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_suggestionsUpdated];
  v37[1] = &v157;
  swift_beginAccess();
  *v37[0] = 1;
  swift_endAccess();
  v37[2] = sub_100414144();
  v38._rawValue = v165;

  v35 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  SearchCollectionViewDataSource.addSuggestions(_:animated:)(v38, v35 & 1);

  sub_100264880();

  return v38._rawValue;
}

void sub_100420BC8(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = [v2 groupingCategory];
  _objc_release(v2);
}

uint64_t sub_100420C3C(id *a1)
{
  v2 = *a1;
  _objc_retain(*a1);

  swift_getAtKeyPath();
  _objc_release(v2);
}

uint64_t sub_100420CB4()
{
  sub_10040BD3C();
  sub_10040BDA0();
  return Set.contains(_:)() & 1;
}

uint64_t sub_100420D2C(uint64_t a1, id *a2, uint64_t (*a3)(id), uint64_t a4, void *a5)
{
  v11 = *a2;
  v12 = [*a2 category];
  v13 = [v12 groupingCategory];
  if (v13)
  {
    _objc_release(v12);

    v8 = a3(v13);

    if (v8)
    {
      _objc_retain(a5);
      [v11 setDelegate:a5];
      swift_unknownObjectRelease();
      _objc_retain(v13);
      _objc_retain(v11);
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100421004;
      *(v7 + 24) = 0;

      sub_10025C9B0(&unk_1006DC070);
      v6 = Dictionary.subscript.modify();
      sub_10025C9B0(&qword_1006DBCE8);
      Array.append(_:)();
      v6();

      _objc_release(v13);
      _objc_release(v13);
      return sub_1003009E8(sub_100278D28);
    }

    _objc_release(v13);
  }

  else
  {
    _objc_release(v12);
  }

  return sub_1003009E8(0);
}

uint64_t sub_100421038()
{
  DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v0);

  sub_10040BD3C();
  sub_1004292FC();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(": ", 2uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v1);

  KeyPath = swift_getKeyPath();

  v6 = sub_10025C9B0(&qword_1006DBCE8);
  v2 = sub_1004293BC();
  sub_10025E9D8(sub_100429388, KeyPath, v6, &type metadata for String, &type metadata for Never, v2, &protocol witness table for Never, v7);

  sub_10025C9B0(&unk_1006D69B0);
  sub_100428364();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100264880();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744();
  return String.init(stringInterpolation:)();
}

void sub_100421288(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  _objc_retain(*a1);
  v5 = [v3 ef_publicDescription];
  *a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[1] = v2;
  _objc_release(v5);
  _objc_release(v3);
}

uint64_t sub_100421318@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t sub_100421450(uint64_t a1)
{
  sub_100414144();
  v3 = sub_10040B804(a1);

  return v3;
}

void sub_10042156C()
{
  v0 = sub_10041497C();
  sub_10041D6CC(v0, 1, 0);
  _objc_release(v0);
}

void sub_100421620(double a1, double a2, double a3, double a4)
{
  v8 = sub_10041497C();
  [v8 setLayoutMargins:{a1, a2, a3, a4}];
  _objc_release(v8);
}

void sub_1004218D4(double a1, double a2, double a3, double a4)
{
  *v10 = a1;
  *&v10[8] = a2;
  *&v10[16] = a3;
  *&v10[24] = a4;
  v8 = (v4 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_currentKeyboardOverlap);
  swift_beginAccess();
  v9 = *v8;
  swift_endAccess();
  if (!CGRectEqualToRect(v9, *v10))
  {
    v5 = (v7 + OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_currentKeyboardOverlap);
    swift_beginAccess();
    *v5 = *v10;
    v5[1] = *&v10[8];
    v5[2] = *&v10[16];
    v5[3] = *&v10[24];
    swift_endAccess();
    v6 = sub_10041497C();
    sub_10041D6CC(v6, 0, 1);
    _objc_release(v6);
  }
}

uint64_t sub_100421B40(void *a1)
{
  sub_100414144();
  v1 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  SearchCollectionViewDataSource.reload(_:animated:)(a1, v1 & 1);
}

uint64_t sub_100421C1C(uint64_t a1)
{
  sub_100414144();
  v1 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  SearchCollectionViewDataSource.remove(_:animated:)(a1, v1 & 1);
}

void sub_100421CF8(void *a1, uint64_t a2, void *a3)
{
  _objc_retain(a1);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v4 = v7;
  }

  else
  {
    _objc_release(a1);
    v4 = 0;
  }

  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = Strong;
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      _objc_retain(a3);
      [v8 searchSuggestionsViewController:a3 didSelectSuggestion:v4];
      _objc_release(a3);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(v4);
  }
}

void sub_100421E9C(void *a1, uint64_t a2, void *a3)
{
  _objc_retain(a1);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v13 = v16;
  }

  else
  {
    _objc_release(a1);
    v13 = 0;
  }

  if (v13)
  {
    sub_10025C9B0(&qword_1006DC2E8);
    _allocateUninitializedArray<A>(_:)();
    v12 = v3;
    _objc_retain(@"MFSuggestionsListIndexKey");
    *v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12[1] = v4;
    sub_100278E2C();
    v5 = IndexPath.row.getter();
    v12[2] = sub_100422310(v5);
    _objc_retain(@"MFSuggestionsRankingIndexKey");
    v12[3] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12[4] = v6;
    v12[5] = sub_100422310([v13 rankingIndex]);
    sub_1002612B0();
    _objc_release(@"MFSuggestionsRankingIndexKey");
    _objc_release(@"MFSuggestionsListIndexKey");
    Dictionary.init(dictionaryLiteral:)();
    [v13 userDidInteract];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = Strong;
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      if ([v18 respondsToSelector:"searchSuggestionsViewController:didSelectItemID:messageList:indexInformation:topHitSuggestion:"])
      {
        swift_unknownObjectRetain();
        v11 = swift_allocObject();
        *(v11 + 16) = v18;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_100429494;
        *(v8 + 24) = v11;
        v17 = sub_1004294E4;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        _objc_retain(a3);
        v10 = [v13 itemID];
        v9 = [v13 messageList];
        (v17)(a3, v10);
        _objc_release(v9);
        swift_unknownObjectRelease();
        _objc_release(a3);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(v13);
  }
}

void sub_100422350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_100278E2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a6(a1, a2, a3);
  _objc_release(isa);
}

void sub_1004223E8(void *a1, uint64_t a2, char *a3)
{
  v49 = a3;
  v51 = a2;
  v50 = a1;
  v62 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v48 = 0;
  v58 = type metadata accessor for Logger();
  v52 = v58;
  v53 = *(v58 - 8);
  v56 = v53;
  v54 = v53;
  v3 = __chkstk_darwin(v50);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v5;
  v79 = v3;
  v78 = v6;
  v77 = v7;
  v57 = sub_1004139EC();
  v59 = &v76;
  swift_beginAccess();
  (*(v56 + 16))(v5, v57, v58);
  swift_endAccess();
  v64 = Logger.logObject.getter();
  v60 = v64;
  v63 = static os_log_type_t.default.getter();
  v61 = v63;
  sub_10025C9B0(&unk_1006D7720);
  v65 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v64, v63))
  {
    v8 = v48;
    v39 = static UnsafeMutablePointer.allocate(capacity:)();
    v35 = v39;
    v36 = sub_10025C9B0(&qword_1006D7290);
    v37 = 0;
    v40 = sub_1002641E8(0);
    v38 = v40;
    v41 = sub_1002641E8(v37);
    v69 = v39;
    v68 = v40;
    v67 = v41;
    v42 = 0;
    v43 = &v69;
    sub_10026423C(0, &v69);
    sub_10026423C(v42, v43);
    v66 = v65;
    v44 = v16;
    __chkstk_darwin(v16);
    v45 = &v16[-6];
    v16[-4] = v9;
    v16[-3] = &v68;
    v16[-2] = &v67;
    v46 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v47 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v60, v61, "[instant answers] Selected instant answer row", v35, 2u);
      v33 = 0;
      sub_10026429C(v38);
      sub_10026429C(v41);
      UnsafeMutablePointer.deallocate()();

      v34 = v47;
    }
  }

  else
  {

    v34 = v48;
  }

  (*(v54 + 8))(v55, v52);
  v10 = v50;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v31 = v32;
  }

  else
  {

    v31 = 0;
  }

  v30 = v31;
  if (v31)
  {
    v29 = v30;
    v23 = v30;
    v75 = v30;
    v24 = [v30 instantAnswer];
    v27 = [v24 bodyCardSectionID];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v11;
    v73 = v25;
    v74 = v11;

    v28 = &v49[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v72 = Strong;
    if (Strong)
    {
      v22 = v72;
      v21 = v72;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      if ([v22 respondsToSelector:"searchSuggestionsViewController:didSelectItemID:instantAnswerSuggestion:cardSectionID:"])
      {
        swift_unknownObjectRetain();
        v19 = 7;
        v20 = swift_allocObject();
        *(v20 + 16) = v21;
        v13 = swift_allocObject();
        v14 = v20;
        *(v13 + 16) = sub_10042862C;
        *(v13 + 24) = v14;
        v70 = sub_100428670;
        v71 = v13;
      }

      else
      {
        v70 = 0;
        v71 = 0;
      }

      v17 = v70;
      v18 = v71;
      if (v70)
      {
        v16[3] = v17;
        v16[4] = v18;
        v16[2] = v18;
        v16[0] = v17;
        v15 = v49;
        v16[1] = [v23 itemID];
        (v16[0])(v49);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }
  }
}

void sub_100422C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = String._bridgeToObjectiveC()();
  a6(a1, a2, a3);
  _objc_release(v10);
}

void sub_100422CB4(void *a1, uint64_t a2, char *a3)
{
  v113 = a1;
  v107 = a2;
  v106 = a3;
  v89 = sub_10041D658;
  v90 = sub_100427BA0;
  v91 = sub_10026EE84;
  v92 = sub_10026434C;
  v93 = sub_10026434C;
  v94 = sub_10026EF2C;
  v95 = sub_100429444;
  v96 = sub_100429488;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v97 = 0;
  v98 = 0;
  v99 = type metadata accessor for IndexPath();
  v101 = *(v99 - 8);
  v100 = v99 - 8;
  v102 = v101;
  v103 = *(v101 + 64);
  v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v105 = v32 - v104;
  v108 = type metadata accessor for Logger();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v113);
  v112 = v32 - v111;
  v130 = v3;
  v129 = v4;
  v128 = v5;
  _objc_retain(v3);
  objc_opt_self();
  v114 = swift_dynamicCastObjCClass();
  if (v114)
  {
    v88 = v114;
  }

  else
  {
    _objc_release(v113);
    v88 = 0;
  }

  v87 = v88;
  if (v88)
  {
    v86 = v87;
    v77 = v87;
    v127 = v87;
    v79 = sub_10025C9B0(&qword_1006DC2E8);
    v80 = _allocateUninitializedArray<A>(_:)();
    v78 = v6;
    v81 = @"MFSuggestionsListIndexKey";
    _objc_retain(@"MFSuggestionsListIndexKey");
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v78;
    *v78 = v7;
    v8[1] = v9;
    v83 = sub_100278E2C();
    v10 = IndexPath.row.getter();
    v11 = sub_100422310(v10);
    v12 = v80;
    v78[2] = v11;
    sub_1002612B0();
    v82 = v12;
    _objc_release(v81);
    v84 = Dictionary.init(dictionaryLiteral:)();
    v126 = v84;
    v85 = &v106[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v125 = Strong;
    if (Strong)
    {
      v73 = &v125;
      v74 = v125;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      v75 = [v74 respondsToSelector:"searchSuggestionsViewController:didSelectItemID:messageList:indexInformation:"];
      swift_unknownObjectRelease();
      v76 = v75;
    }

    else
    {
      sub_100294754();
      swift_endAccess();
      v76 = 2;
    }

    v124 = v76;
    if (v76 == 2)
    {
      v72 = 0;
    }

    else
    {
      v72 = v124;
    }

    if (v72)
    {
      v71 = &v106[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
      swift_beginAccess();
      v117 = swift_unknownObjectWeakLoadStrong();
      if (v117)
      {
        v69 = &v117;
        v70 = v117;
        swift_unknownObjectRetain();
        sub_100294754();
        swift_endAccess();
        swift_getObjectType();
        if ([v70 respondsToSelector:"searchSuggestionsViewController:didSelectItemID:messageList:indexInformation:"])
        {
          swift_unknownObjectRetain();
          v67 = 7;
          v68 = swift_allocObject();
          *(v68 + 16) = v70;
          v14 = swift_allocObject();
          v15 = v68;
          v16 = v96;
          *(v14 + 16) = v95;
          *(v14 + 24) = v15;
          v115 = v16;
          v116 = v14;
        }

        else
        {
          v115 = 0;
          v116 = 0;
        }

        v65 = v115;
        v66 = v116;
        if (v115)
        {
          v63 = v65;
          v64 = v66;
          v62 = v66;
          v59 = v65;
          _objc_retain(v106);
          v58 = [v77 objectID];
          v61 = [v58 collectionItemID];
          _objc_release(v58);
          v60 = [v77 messageList];
          (v59)(v106, v61);
          _objc_release(v60);
          swift_unknownObjectRelease();
          _objc_release(v106);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        sub_100294754();
        swift_endAccess();
      }
    }

    else
    {
      v17 = v112;
      v40 = sub_1004139EC();
      v41 = &v123;
      v46 = 32;
      swift_beginAccess();
      (*(v109 + 16))(v17, v40, v108);
      swift_endAccess();
      v42 = v102;
      (*(v101 + 16))(v105, v107, v99);
      v43 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v47 = 7;
      v44 = swift_allocObject();
      (*(v101 + 32))(v44 + v43, v105, v99);

      v18 = swift_allocObject();
      v19 = v44;
      v48 = v18;
      *(v18 + 16) = v89;
      *(v18 + 24) = v19;

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      v45 = 17;
      v50 = swift_allocObject();
      *(v50 + 16) = 32;
      v51 = swift_allocObject();
      *(v51 + 16) = 8;
      v20 = swift_allocObject();
      v21 = v48;
      v49 = v20;
      *(v20 + 16) = v90;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v49;
      v53 = v22;
      *(v22 + 16) = v91;
      *(v22 + 24) = v23;
      v55 = sub_10025C9B0(&unk_1006D7720);
      v52 = _allocateUninitializedArray<A>(_:)();
      v54 = v24;

      v25 = v50;
      v26 = v54;
      *v54 = v92;
      v26[1] = v25;

      v27 = v51;
      v28 = v54;
      v54[2] = v93;
      v28[3] = v27;

      v29 = v53;
      v30 = v54;
      v54[4] = v94;
      v30[5] = v29;
      sub_1002612B0();

      if (os_log_type_enabled(v56, v57))
      {
        v31 = v97;
        v33 = static UnsafeMutablePointer.allocate(capacity:)();
        v32[2] = sub_10025C9B0(&qword_1006D7290);
        v34 = sub_1002641E8(0);
        v35 = sub_1002641E8(1);
        v36 = &v122;
        v122 = v33;
        v37 = &v121;
        v121 = v34;
        v38 = &v120;
        v120 = v35;
        sub_10026423C(2, &v122);
        sub_10026423C(1, v36);
        v118 = v92;
        v119 = v50;
        sub_100264250(&v118, v36, v37, v38);
        v39 = v31;
        if (v31)
        {

          __break(1u);
        }

        else
        {
          v118 = v93;
          v119 = v51;
          sub_100264250(&v118, &v122, &v121, &v120);
          v32[0] = 0;
          v118 = v94;
          v119 = v53;
          sub_100264250(&v118, &v122, &v121, &v120);
          _os_log_impl(&_mh_execute_header, v56, v57, "Unable to select search item at indexPath: %s", v33, 0xCu);
          sub_10026429C(v34);
          sub_10026429C(v35);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v56);
      (*(v109 + 8))(v112, v108);
    }

    _objc_release(v77);
  }
}

void sub_100423C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_100278E2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a5(a1, a2, a3);
  _objc_release(isa);
}

uint64_t sub_100423CBC(uint64_t a1)
{
  v78 = a1;
  v90 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v65 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v66 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1 - 8);
  v67 = v19 - v66;
  v68 = (*(*(sub_10025C9B0(&qword_1006DC0B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v69 = v19 - v68;
  v70 = type metadata accessor for IndexPath();
  v71 = *(v70 - 8);
  v72 = v71;
  v73 = *(v71 + 64);
  v2 = __chkstk_darwin(v90);
  v75 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = v19 - v75;
  __chkstk_darwin(v2);
  v76 = v19 - v75;
  v108 = v19 - v75;
  v86 = type metadata accessor for Logger();
  v79 = v86;
  v80 = *(v86 - 8);
  v84 = v80;
  v81 = v80;
  v82 = *(v80 + 64);
  v3 = __chkstk_darwin(v78);
  v4 = v19 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v4;
  v107 = v3;
  v106 = v5;
  v85 = sub_1004139EC();
  v87 = &v105;
  swift_beginAccess();
  (*(v84 + 16))(v4, v85, v86);
  swift_endAccess();
  v92 = Logger.logObject.getter();
  v88 = v92;
  v91 = static os_log_type_t.default.getter();
  v89 = v91;
  sub_10025C9B0(&unk_1006D7720);
  v93 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v92, v91))
  {
    v6 = v65;
    v56 = static UnsafeMutablePointer.allocate(capacity:)();
    v52 = v56;
    v53 = sub_10025C9B0(&qword_1006D7290);
    v54 = 0;
    v57 = sub_1002641E8(0);
    v55 = v57;
    v58 = sub_1002641E8(v54);
    v97 = v56;
    v96 = v57;
    v95 = v58;
    v59 = 0;
    v60 = &v97;
    sub_10026423C(0, &v97);
    sub_10026423C(v59, v60);
    v94 = v93;
    v61 = v19;
    __chkstk_darwin(v19);
    v62 = &v19[-6];
    v19[-4] = v7;
    v19[-3] = &v96;
    v19[-2] = &v95;
    v63 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v64 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v88, v89, "[instant answers] Tapped on Open link button in instant answer", v52, 2u);
      v50 = 0;
      sub_10026429C(v55);
      sub_10026429C(v58);
      UnsafeMutablePointer.deallocate()();

      v51 = v64;
    }
  }

  else
  {

    v51 = v65;
  }

  (*(v81 + 8))(v83, v79);
  v47 = sub_10041497C();
  v49 = [v47 indexPathForCell:v78];
  v48 = v49;

  if (v49)
  {
    v46 = v48;
    v45 = v48;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v72 + 32))(v69, v74, v70);
    (*(v72 + 56))(v69, 0, 1, v70);
  }

  else
  {
    (*(v72 + 56))(v69, 1, 1, v70);
  }

  if ((*(v72 + 48))(v69, 1, v70) == 1)
  {
    return sub_1004283EC(v69);
  }

  (*(v72 + 32))(v76, v69, v70);
  v42 = sub_100414144();
  v44 = SearchCollectionViewDataSource.suggestion(for:)(v76);
  v43 = v44;

  if (v44)
  {
    v41 = v43;
    v39 = v43;
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v38 = v40;
    }

    else
    {

      v38 = 0;
    }

    v37 = v38;
  }

  else
  {
    v37 = 0;
  }

  v36 = v37;
  if (!v37)
  {
    return (*(v72 + 8))(v76, v70);
  }

  v35 = v36;
  v27 = v36;
  v104 = v36;
  v32 = 0;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v67, 1);
  v10 = v27;
  type metadata accessor for MainActor();
  v26 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = v67;
  v13 = v27;
  v14 = v32;
  v11[2] = v26;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v13;
  sub_1002C7DB4(v14, v14, v12, &unk_10050AFE0, v11, &type metadata for Bool);

  v28 = [v27 instantAnswer];
  v31 = [v28 buttonsCardSectionID];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v15;
  v102 = v29;
  v103 = v15;

  sub_10042856C();
  v33 = sub_10025C704();
  v101 = v33;
  v34 = &v77[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v24 = Strong;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    if ([v25 respondsToSelector:"searchSuggestionsViewController:didSelectItemID:instantAnswerSuggestion:cardSectionID:command:"])
    {
      swift_unknownObjectRetain();
      v22 = 7;
      v23 = swift_allocObject();
      *(v23 + 16) = v24;
      v16 = swift_allocObject();
      v17 = v23;
      *(v16 + 16) = sub_1004285D0;
      *(v16 + 24) = v17;
      v98 = sub_100428620;
      v99 = v16;
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v20 = v98;
    v21 = v99;
    if (v98)
    {
      v19[3] = v20;
      v19[4] = v21;
      v19[2] = v21;
      v19[0] = v20;
      v18 = v77;
      v19[1] = [v27 itemID];
      (v19[0])(v77);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return (*(v72 + 8))(v76, v70);
}

uint64_t sub_100424A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v4[20] = a1;
  v4[18] = v4;
  v4[19] = 0;
  v5 = type metadata accessor for URL();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7250);
  v4[25] = swift_task_alloc();
  v4[19] = a4;
  type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v9;
  v4[28] = v6;

  return _swift_task_switch(sub_100424C00, v9);
}

uint64_t sub_100424C00()
{
  v14 = v0[21];
  v0[18] = v0;
  v15 = [objc_opt_self() sharedApplication];
  v0[29] = v15;
  v16 = [v14 instantAnswer];
  v17 = [v16 flightCheckInUrl];
  if (v17)
  {
    v12 = *(v13 + 200);
    v10 = *(v13 + 192);
    v11 = *(v13 + 176);
    v9 = *(v13 + 184);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 32))(v12, v10, v11);
    (*(v9 + 56))(v12, 0, 1, v11);
    _objc_release(v17);
  }

  else
  {
    (*(*(v13 + 184) + 56))(*(v13 + 200), 1, 1, *(v13 + 176));
  }

  if ((*(*(v13 + 184) + 48))(*(v13 + 200), 1, *(v13 + 176)) == 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = *(v13 + 200);
    v5 = *(v13 + 176);
    v4 = *(v13 + 184);
    URL._bridgeToObjectiveC()(v4);
    v7 = v1;
    (*(v4 + 8))(v6, v5);
    v8 = v7;
  }

  *(v13 + 240) = v8;
  _objc_release(v16);
  *(v13 + 16) = *(v13 + 144);
  *(v13 + 56) = v13 + 248;
  *(v13 + 24) = sub_100424F48;
  v3 = swift_continuation_init();
  *(v13 + 136) = sub_10025C9B0(&qword_1006DC2D0);
  *(v13 + 112) = v3;
  *(v13 + 80) = _NSConcreteStackBlock;
  *(v13 + 88) = 1107296256;
  *(v13 + 92) = 0;
  *(v13 + 96) = sub_100461BDC;
  *(v13 + 104) = &unk_10065F9F8;
  [v15 openURL:v8 withCompletionHandler:?];

  return _swift_continuation_await(v13 + 16);
}

uint64_t sub_100424F48()
{
  v3 = *v0;
  *(*v0 + 144) = *v0;
  v1 = *(v3 + 216);

  return _swift_task_switch(sub_100425060, v1);
}

uint64_t sub_100425060()
{
  v5 = *(v0 + 240);
  v1 = *(v0 + 232);
  v2 = *(v0 + 160);
  *(v0 + 144) = v0;
  *v2 = *(v0 + 248);
  _objc_release(v1);
  _objc_release(v5);

  v3 = *(*(v0 + 144) + 8);

  return v3();
}

void sub_100425148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = String._bridgeToObjectiveC()();
  a7(a1, a2, a3);
  _objc_release(v11);
}

uint64_t sub_10042523C(uint64_t a1)
{
  v66 = a1;
  v78 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v55 = 0;
  v56 = (*(*(sub_10025C9B0(&qword_1006DC0B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v57 = v12 - v56;
  v58 = type metadata accessor for IndexPath();
  v59 = *(v58 - 8);
  v60 = v59;
  v61 = *(v59 + 64);
  v1 = __chkstk_darwin(v78);
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  v62 = v12 - v63;
  __chkstk_darwin(v1);
  v64 = v12 - v63;
  v95 = v12 - v63;
  v74 = type metadata accessor for Logger();
  v67 = v74;
  v68 = *(v74 - 8);
  v72 = v68;
  v69 = v68;
  v70 = *(v68 + 64);
  v2 = __chkstk_darwin(v66);
  v3 = v12 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v3;
  v94 = v2;
  v93 = v4;
  v73 = sub_1004139EC();
  v75 = &v92;
  swift_beginAccess();
  (*(v72 + 16))(v3, v73, v74);
  swift_endAccess();
  v80 = Logger.logObject.getter();
  v76 = v80;
  v79 = static os_log_type_t.default.getter();
  v77 = v79;
  sub_10025C9B0(&unk_1006D7720);
  v81 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v80, v79))
  {
    v5 = v55;
    v46 = static UnsafeMutablePointer.allocate(capacity:)();
    v42 = v46;
    v43 = sub_10025C9B0(&qword_1006D7290);
    v44 = 0;
    v47 = sub_1002641E8(0);
    v45 = v47;
    v48 = sub_1002641E8(v44);
    v85 = v46;
    v84 = v47;
    v83 = v48;
    v49 = 0;
    v50 = &v85;
    sub_10026423C(0, &v85);
    sub_10026423C(v49, v50);
    v82 = v81;
    v51 = v12;
    __chkstk_darwin(v12);
    v52 = &v12[-6];
    v12[-4] = v6;
    v12[-3] = &v84;
    v12[-2] = &v83;
    v53 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v54 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v76, v77, "[instant answers] Tapped on View Message button in instant answer", v42, 2u);
      v40 = 0;
      sub_10026429C(v45);
      sub_10026429C(v48);
      UnsafeMutablePointer.deallocate()();

      v41 = v54;
    }
  }

  else
  {

    v41 = v55;
  }

  (*(v69 + 8))(v71, v67);
  v37 = sub_10041497C();
  v39 = [v37 indexPathForCell:v66];
  v38 = v39;

  if (v39)
  {
    v36 = v38;
    v35 = v38;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v60 + 32))(v57, v62, v58);
    (*(v60 + 56))(v57, 0, 1, v58);
  }

  else
  {
    (*(v60 + 56))(v57, 1, 1, v58);
  }

  if ((*(v60 + 48))(v57, 1, v58) == 1)
  {
    return sub_1004283EC(v57);
  }

  (*(v60 + 32))(v64, v57, v58);
  v32 = sub_100414144();
  v34 = SearchCollectionViewDataSource.suggestion(for:)(v64);
  v33 = v34;

  if (v34)
  {
    v31 = v33;
    v29 = v33;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v28 = v30;
    }

    else
    {

      v28 = 0;
    }

    v27 = v28;
  }

  else
  {
    v27 = 0;
  }

  v26 = v27;
  if (!v27)
  {
    return (*(v60 + 8))(v64, v58);
  }

  v25 = v26;
  v19 = v26;
  v91 = v26;
  v20 = [v26 instantAnswer];
  v23 = [v20 buttonsCardSectionID];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v8;
  v89 = v21;
  v90 = v8;

  v24 = &v65[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v17 = Strong;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    if ([v18 respondsToSelector:"searchSuggestionsViewController:didSelectItemID:instantAnswerSuggestion:cardSectionID:"])
    {
      swift_unknownObjectRetain();
      v15 = 7;
      v16 = swift_allocObject();
      *(v16 + 16) = v17;
      v9 = swift_allocObject();
      v10 = v16;
      *(v9 + 16) = sub_10042862C;
      *(v9 + 24) = v10;
      v86 = sub_100428670;
      v87 = v9;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v13 = v86;
    v14 = v87;
    if (v86)
    {
      v12[3] = v13;
      v12[4] = v14;
      v12[2] = v14;
      v12[0] = v13;
      v11 = v65;
      v12[1] = [v19 itemID];
      (v12[0])(v65);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return (*(v60 + 8))(v64, v58);
}

uint64_t sub_100425EDC(uint64_t a1)
{
  v132 = a1;
  v144 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v109 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v110 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1 - 8);
  v111 = v24 - v110;
  v112 = (*(*(sub_10025C9B0(&qword_1006D7250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v144);
  v113 = v24 - v112;
  v114 = type metadata accessor for URL();
  v115 = *(v114 - 8);
  v116 = v115;
  v118 = *(v115 + 64);
  v117 = v118;
  __chkstk_darwin(v114 - 8);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = v24 - v120;
  __chkstk_darwin(v24 - v120);
  v121 = v24 - v120;
  v168 = v24 - v120;
  v122 = (*(*(sub_10025C9B0(&qword_1006DC0B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v144);
  v123 = v24 - v122;
  v124 = type metadata accessor for IndexPath();
  v125 = *(v124 - 8);
  v126 = v125;
  v127 = *(v125 + 64);
  v2 = __chkstk_darwin(v144);
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v128 = v24 - v129;
  __chkstk_darwin(v2);
  v130 = v24 - v129;
  v167 = v24 - v129;
  v140 = type metadata accessor for Logger();
  v133 = v140;
  v134 = *(v140 - 8);
  v138 = v134;
  v135 = v134;
  v136 = *(v134 + 64);
  v3 = __chkstk_darwin(v132);
  v4 = v24 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v4;
  v166 = v3;
  v165 = v5;
  v139 = sub_1004139EC();
  v141 = &v164;
  swift_beginAccess();
  (*(v138 + 16))(v4, v139, v140);
  swift_endAccess();
  v146 = Logger.logObject.getter();
  v142 = v146;
  v145 = static os_log_type_t.default.getter();
  v143 = v145;
  sub_10025C9B0(&unk_1006D7720);
  v147 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v146, v145))
  {
    v6 = v109;
    v100 = static UnsafeMutablePointer.allocate(capacity:)();
    v96 = v100;
    v97 = sub_10025C9B0(&qword_1006D7290);
    v98 = 0;
    v101 = sub_1002641E8(0);
    v99 = v101;
    v102 = sub_1002641E8(v98);
    v151 = v100;
    v150 = v101;
    v149 = v102;
    v103 = 0;
    v104 = &v151;
    sub_10026423C(0, &v151);
    sub_10026423C(v103, v104);
    v148 = v147;
    v105 = v24;
    __chkstk_darwin(v24);
    v106 = &v24[-6];
    v107 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v108 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v142, v143, "[instant answers] Tapped on View Message button in instant answer", v96, 2u);
      v94 = 0;
      sub_10026429C(v99);
      sub_10026429C(v102);
      UnsafeMutablePointer.deallocate()();

      v95 = v108;
    }
  }

  else
  {

    v95 = v109;
  }

  (*(v135 + 8))(v137, v133);
  v91 = sub_10041497C();
  v93 = [v91 indexPathForCell:v132];
  v92 = v93;

  if (v93)
  {
    v90 = v92;
    v89 = v92;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v126 + 32))(v123, v128, v124);
    (*(v126 + 56))(v123, 0, 1, v124);
  }

  else
  {
    (*(v126 + 56))(v123, 1, 1, v124);
  }

  if ((*(v126 + 48))(v123, 1, v124) == 1)
  {
    return sub_1004283EC(v123);
  }

  (*(v126 + 32))(v130, v123, v124);
  v86 = sub_100414144();
  v88 = SearchCollectionViewDataSource.suggestion(for:)(v130);
  v87 = v88;

  if (v88)
  {
    v85 = v87;
    v83 = v87;
    objc_opt_self();
    v84 = swift_dynamicCastObjCClass();
    if (v84)
    {
      v82 = v84;
    }

    else
    {

      v82 = 0;
    }

    v81 = v82;
  }

  else
  {
    v81 = 0;
  }

  v80 = v81;
  if (!v81)
  {
    return (*(v126 + 8))(v130, v124);
  }

  v79 = v80;
  v76 = v80;
  v163 = v80;
  v77 = [v80 instantAnswer];
  v8 = [v77 hotelReservationForAddress];
  v78 = v8;
  if (v8)
  {
    v75 = v78;
    v70 = v78;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v9;

    v73 = v71;
    v74 = v72;
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v69 = v74;
  v68 = v73;

  if (v69)
  {
    v66 = v68;
    v67 = v69;
    v154[0] = v68;
    v154[1] = v69;
    v55 = 1;
    v54 = 1;
    v153 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
    v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+", v54, v55);
    v57 = sub_1002686CC();
    v56 = &type metadata for String;
    sub_100427384();
    v60 = &v153;
    v58 = &v152;
    v61 = v154;
    v59 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v62 = v10;
    v63 = v59;
    sub_100268744();
    sub_100268744();
    sub_100268744();
    v64 = v63;
    v65 = v62;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v52 = v65;
  v53 = v64;
  if (!v65)
  {

    return (*(v126 + 8))(v130, v124);
  }

  v50 = v53;
  v51 = v52;
  v45 = v52;
  v44 = v53;
  v161 = v53;
  v162 = v52;
  v49 = 1;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("http://maps.apple.com/?q=", 0x19uLL, 1)._object;
  v47 = static String.+ infix(_:_:)();
  v48 = v11;

  URL.init(string:)();

  v12 = (*(v116 + 48))(v113, v49, v114);
  if (v12 == 1)
  {
    sub_100286140(v113);

    return (*(v126 + 8))(v130, v124);
  }

  v35 = *(v116 + 32);
  v34 = v116 + 32;
  v35(v121, v113, v114);
  v41 = 0;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v111, 1);
  v14 = *(v116 + 16);
  v31 = v116 + 16;
  v14(v119, v121, v114);
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
  v15 = swift_allocObject();
  v16 = v33;
  v17 = v119;
  v18 = v114;
  v19 = v35;
  v36 = v15;
  *(v15 + 16) = v32;
  *(v15 + 24) = &protocol witness table for MainActor;
  v19(v15 + v16, v17, v18);
  sub_1002C7DB4(v41, v41, v111, &unk_10050B000, v36, &type metadata for Bool);

  v37 = [v76 instantAnswer];
  v40 = [v37 buttonsCardSectionID];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v20;
  v159 = v38;
  v160 = v20;

  sub_10042856C();
  v42 = sub_10025C704();
  v158 = v42;
  v43 = &v131[OBJC_IVAR____TtC10MobileMail31SearchSuggestionsViewController_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v29 = Strong;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    if ([v30 respondsToSelector:"searchSuggestionsViewController:didSelectItemID:instantAnswerSuggestion:cardSectionID:command:"])
    {
      swift_unknownObjectRetain();
      v27 = 7;
      v28 = swift_allocObject();
      *(v28 + 16) = v29;
      v21 = swift_allocObject();
      v22 = v28;
      *(v21 + 16) = sub_1004285D0;
      *(v21 + 24) = v22;
      v155 = sub_100428620;
      v156 = v21;
    }

    else
    {
      v155 = 0;
      v156 = 0;
    }

    v25 = v155;
    v26 = v156;
    if (v155)
    {
      v24[3] = v25;
      v24[4] = v26;
      v24[2] = v26;
      v24[0] = v25;
      v23 = v131;
      v24[1] = [v76 itemID];
      (v24[0])(v131);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  (*(v116 + 8))(v121, v114);

  return (*(v126 + 8))(v130, v124);
}

uint64_t sub_100427384()
{
  sub_100427C7C(0);

  return 0;
}

uint64_t sub_1004273C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v4[20] = a1;
  v4[18] = v4;
  v4[19] = 0;
  v5 = type metadata accessor for URL();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[19] = a4;
  type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v9;
  v4[27] = v6;

  return _swift_task_switch(sub_1004274FC, v9);
}

uint64_t sub_1004274FC()
{
  v1 = *(v0 + 192);
  v6 = *(v0 + 184);
  v7 = *(v0 + 176);
  v5 = *(v0 + 168);
  *(v0 + 144) = v0;
  v11 = [objc_opt_self() sharedApplication];
  *(v0 + 224) = v11;
  (*(v6 + 16))(v1, v5, v7);
  URL._bridgeToObjectiveC()(v2);
  v9 = v3;
  *(v0 + 232) = v3;
  (*(v6 + 8))(v1, v7);
  sub_10025C9B0(&unk_1006DC2C0);
  _allocateUninitializedArray<A>(_:)();
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_1002697CC();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 240) = isa;

  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = sub_10042774C;
  v8 = swift_continuation_init();
  *(v0 + 136) = sub_10025C9B0(&qword_1006DC2D0);
  *(v0 + 112) = v8;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_100461BDC;
  *(v0 + 104) = &unk_10065F9D0;
  [v11 openURL:v9 options:isa completionHandler:?];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10042774C()
{
  v3 = *v0;
  *(*v0 + 144) = *v0;
  v1 = *(v3 + 208);

  return _swift_task_switch(sub_100427864, v1);
}

uint64_t sub_100427864()
{
  v5 = *(v0 + 240);
  v6 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 160);
  *(v0 + 144) = v0;
  *v2 = *(v0 + 248);
  _objc_release(v1);
  _objc_release(v5);
  _objc_release(v6);

  v3 = *(*(v0 + 144) + 8);

  return v3();
}

id sub_1004279CC(void *a1, double a2, double a3, double a4, double a5)
{
  v8 = [v5 initWithFrame:a2 collectionViewLayout:{a3, a4, a5}];
  _objc_release(a1);
  return v8;
}

id sub_100427A3C(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  aBlock = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_100427AEC;
  v10 = &unk_10065FC60;
  v4 = _Block_copy(&aBlock);
  v5 = [v3 initWithSectionProvider:?];
  _Block_release(v4);

  return v5;
}

id sub_100427AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7 = v5(a2, a3);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_100427BA0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for IndexPath();
  v1 = sub_100427BFC();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_100427BFC()
{
  v2 = qword_1006DC008;
  if (!qword_1006DC008)
  {
    type metadata accessor for IndexPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100427C7C(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for CompareOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_100427D28()
{
  v2 = qword_1006DC018;
  if (!qword_1006DC018)
  {
    sub_10025CAA4(&unk_1006DAFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100427DB0()
{
  v2 = qword_1006DC028;
  if (!qword_1006DC028)
  {
    type metadata accessor for IndexPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100427E30()
{
  v2 = qword_1006DC030;
  if (!qword_1006DC030)
  {
    sub_10025CAA4(&unk_1006DAFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100427EE0()
{
  v2 = qword_1006DC038;
  if (!qword_1006DC038)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC038);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100427F44()
{
  v2 = qword_1006DC040;
  if (!qword_1006DC040)
  {
    type metadata accessor for IndexPath();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100427FC4()
{
  type metadata accessor for SearchItem();

  return sub_10041F64C();
}

unint64_t sub_100428078()
{
  v2 = qword_1006DC058;
  if (!qword_1006DC058)
  {
    sub_10025CAA4(&qword_1006DC050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100428138()
{
  v2 = qword_1006DC088;
  if (!qword_1006DC088)
  {
    sub_10025CAA4(&qword_1006DC080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100428274()
{
  v2 = qword_1006DC098;
  if (!qword_1006DC098)
  {
    sub_10025CAA4(&unk_1006DC070);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004282FC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10025C9B0(&unk_1006D69B0);
  v1 = sub_100428364();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_100428364()
{
  v2 = qword_1006DC0A8;
  if (!qword_1006DC0A8)
  {
    sub_10025CAA4(&unk_1006D69B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004283EC(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100428494(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_100424A88(a1, v6, v7, v8);
}

unint64_t sub_10042856C()
{
  v2 = qword_1006DC0B8;
  if (!qword_1006DC0B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC0B8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10042867C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for URL() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_1004273C0(a1, v7, v8, v1 + v9);
}

uint64_t type metadata accessor for SearchSuggestionsViewController()
{
  v1 = qword_1006DC148;
  if (!qword_1006DC148)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_100428820()
{
  updated = sub_100428C38();
  if (v0 <= 0x3F)
  {
    updated = sub_100428CEC();
    if (v1 <= 0x3F)
    {
      updated = sub_100428DA0();
      if (v2 <= 0x3F)
      {
        updated = sub_100428E54();
        if (v3 <= 0x3F)
        {
          updated = sub_100428F08();
          if (v4 <= 0x3F)
          {
            updated = sub_100428FBC();
            if (v5 <= 0x3F)
            {
              updated = sub_100429070();
              if (v6 <= 0x3F)
              {
                updated = sub_100429124();
                if (v7 <= 0x3F)
                {
                  updated = sub_1004291D8();
                  if (v8 <= 0x3F)
                  {
                    updated = swift_updateClassMetadata2();
                    if (!updated)
                    {
                      return 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return updated;
}

uint64_t sub_100428C38()
{
  v4 = qword_1006DC158;
  if (!qword_1006DC158)
  {
    type metadata accessor for ContactConfigurationCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC158);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100428CEC()
{
  v4 = qword_1006DC160;
  if (!qword_1006DC160)
  {
    type metadata accessor for DocumentConfigurationCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC160);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100428DA0()
{
  v4 = qword_1006DC168;
  if (!qword_1006DC168)
  {
    type metadata accessor for AdjustableSeparatorInsetListCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC168);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100428E54()
{
  v4 = qword_1006DC170;
  if (!qword_1006DC170)
  {
    type metadata accessor for LinkConfigurationCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC170);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100428F08()
{
  v4 = qword_1006DC178;
  if (!qword_1006DC178)
  {
    type metadata accessor for LocationConfigurationCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC178);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100428FBC()
{
  v4 = qword_1006DC180;
  if (!qword_1006DC180)
  {
    type metadata accessor for PhotoConfigurationCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC180);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100429070()
{
  v4 = qword_1006DC188;
  if (!qword_1006DC188)
  {
    type metadata accessor for InstantAnswerFlightCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC188);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100429124()
{
  v4 = qword_1006DC190;
  if (!qword_1006DC190)
  {
    type metadata accessor for InstantAnswerHotelCell();
    type metadata accessor for SearchItem();
    v3 = type metadata accessor for UICollectionView.CellRegistration();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC190);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1004291D8()
{
  v4 = qword_1006DC198;
  if (!qword_1006DC198)
  {
    sub_10025CAA4(&qword_1006DBFA0);
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC198);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1004292FC()
{
  v2 = qword_1006DC2D8;
  if (!qword_1006DC2D8)
  {
    sub_10040BD3C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004293BC()
{
  v2 = qword_1006DC2E0;
  if (!qword_1006DC2E0)
  {
    sub_10025CAA4(&qword_1006DBCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC2E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004294F0()
{
  v2 = qword_1006DC2F8;
  if (!qword_1006DC2F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC2F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100429564()
{
  sub_10025C9B0(&unk_1006DC310);
  sub_10025C9B0(&qword_1006DC308);
  sub_10025C9B0(&qword_1006DC300);

  return sub_100419728();
}

void *sub_1004296F8(const void *a1, void *a2)
{
  v6 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DBE00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100429828(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF38);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1004298DC(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF90);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100429990(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF80);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100429A44(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF70);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100429AF8(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF60);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100429BAC(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF50);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100429C60(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF28);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100429D14(uint64_t a1)
{
  v3 = sub_10025C9B0(&qword_1006DBF18);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100429DC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100429E2C(uint64_t a1)
{
  v4 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(sub_10025C9B0(&qword_1006DC380) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_100429FB4()
{
  v2 = qword_1006DC390;
  if (!qword_1006DC390)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC390);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10042A018(uint64_t a1)
{
  v4 = sub_10025C9B0(&qword_1006DC388);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = type metadata accessor for GroupedSearchItems.Section.Kind();
    (*(*(v1 - 8) + 8))(a1);
    swift_unknownObjectRelease();
  }

  return a1;
}

unint64_t sub_10042A0E8()
{
  v2 = qword_1006DC398;
  if (!qword_1006DC398)
  {
    type metadata accessor for GroupedSearchItems.Section.Kind();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10042A168()
{
  v2 = qword_1006DC3A0;
  if (!qword_1006DC3A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC3A0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_10042A20C(void *a1, uint64_t a2)
{
  v4 = [swift_getObjCClassFromMetadata() configurationWithTextStyle:a1 scale:a2];
  _objc_release(a1);
  return v4;
}

void *sub_10042A2C4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView);
  _objc_retain(v2);
  return v2;
}

void *sub_10042A30C()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_10042A354()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_10042A39C()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_10042A3E4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView);
  _objc_retain(v2);
  return v2;
}

id sub_10042A42C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedRecognizer);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_10042A49C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedRecognizer);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_10042A534()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedHandler);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10042A5A8(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedHandler);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_10042A68C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v17 = a1;
  v18 = a2;
  v19 = v2;
  v13 = OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView;
  sub_1002649B4();
  sub_1002A75C8();
  v14 = MFImageGlyphUnreadDot;
  _objc_retain(MFImageGlyphUnreadDot);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = sub_1002A7840();
  _objc_release(v14);
  if (v15)
  {
    *&v2[v13] = sub_10042A1CC(v15);
    v5 = OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel;
    sub_100264928();
    *&v19[v5] = sub_10025C704();
    v6 = OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel;
    sub_10042A984();
    *&v19[v6] = sub_10025C704();
    v7 = OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel;
    *&v19[v7] = sub_10025C704();
    v8 = OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView;
    sub_100264A18();
    *&v19[v8] = sub_10025C704();
    *&v19[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedRecognizer] = 0;

    v3 = &v19[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedHandler];
    *v3 = a1;
    *(v3 + 1) = a2;
    v16.receiver = v19;
    v16.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    _objc_retain(v9);
    v19 = v9;

    _objc_release(v19);
    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10042A984()
{
  v2 = qword_1006DC448;
  if (!qword_1006DC448)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC448);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_10042AA64(void *a1)
{
  v21 = a1;
  v20 = v1;
  ObjectType = swift_getObjectType();
  v37 = 0;
  v36 = 0;
  v25 = type metadata accessor for Date();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v13 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v1);
  v24 = &v7 - v13;
  v37 = v3;
  v36 = v2;
  _objc_retain(v2);
  _objc_retain(v21);
  v35.receiver = v20;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, "displayMessageUsingViewModel:", v21);
  _objc_release(v21);
  _objc_release(v20);
  v19 = *&v20[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v19);
  v15 = [v21 subject];
  v17 = [v15 subjectString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v4;
  v18 = String._bridgeToObjectiveC()();
  _objc_release(v15);

  _objc_release(v17);
  [v19 setText:v18];
  _objc_release(v18);
  _objc_release(v19);
  v28 = *&v20[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel];
  _objc_retain(v28);
  _objc_retain(v21);
  v26 = [v21 displayDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v5.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = v20;
  isa = v5.super.isa;
  _objc_release(v21);
  (*(v22 + 8))(v24, v25);
  _objc_release(v26);
  [v28 setDate:isa];
  _objc_release(isa);
  _objc_release(v28);
  v29 = *&v6[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v29);
  v30 = &v6[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedRecognizer];
  v31 = &v34;
  swift_beginAccess();
  v32 = *v30;
  _objc_retain(v32);
  swift_endAccess();
  v33 = v32;
  v12 = v32 == 0;
  v11 = v12;
  sub_10026A58C(&v33);
  _objc_retain(v21);
  if (v11)
  {
    v10 = 1;
  }

  else
  {
    _objc_retain(v21);
    v9 = [v21 isRead];
    _objc_release(v21);
    v10 = v9;
  }

  v8 = v10;
  _objc_release(v21);
  [v29 setHidden:v8 & 1];
  _objc_release(v29);
}

void sub_10042AEF4()
{
  ObjectType = swift_getObjectType();
  v105 = v0;
  _objc_retain(v0);
  v104.receiver = v0;
  v104.super_class = ObjectType;
  objc_msgSendSuper2(&v104, "createPrimaryViews");
  _objc_release(v0);
  v11 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v11);
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v11);
  v13 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v13);
  v12 = [objc_opt_self() mf_messageHeaderSenderLabelFont];
  [v13 setFont:?];
  _objc_release(v12);
  _objc_release(v13);
  v15 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v15);
  v14 = [objc_opt_self() labelColor];
  [v15 setTextColor:?];
  _objc_release(v14);
  _objc_release(v15);
  v16 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v16);
  [v16 setNumberOfLines:2];
  _objc_release(v16);
  v17 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v17);
  [v17 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v17);
  v18 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v18);
  LODWORD(v1) = 1132068864;
  [v18 setContentCompressionResistancePriority:v1 forAxis:?];
  _objc_release(v18);
  v19 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v19);
  LODWORD(v2) = 1148846080;
  [v19 setContentCompressionResistancePriority:v2 forAxis:?];
  _objc_release(v19);
  v21 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel];
  _objc_retain(v21);
  v20 = [objc_opt_self() secondaryLabelColor];
  [v21 setTextColor:?];
  _objc_release(v20);
  _objc_release(v21);
  v24 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel];
  _objc_retain(v24);
  v22 = objc_opt_self();
  _objc_retain(UIFontTextStyleSubheadline);
  v23 = [v22 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  _objc_release(UIFontTextStyleSubheadline);
  [v24 setFont:v23];
  _objc_release(v23);
  _objc_release(v24);
  v25 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel];
  _objc_retain(v25);
  [v25 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v25);
  v27 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel];
  _objc_retain(v27);
  v26 = [objc_opt_self() linkColor];
  [v27 setTextColor:?];
  _objc_release(v26);
  _objc_release(v27);
  v30 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel];
  _objc_retain(v30);
  v28 = objc_opt_self();
  _objc_retain(UIFontTextStyleFootnote);
  v29 = [v28 preferredFontForTextStyle:UIFontTextStyleFootnote];
  _objc_release(UIFontTextStyleFootnote);
  [v30 setFont:v29];
  _objc_release(v29);
  _objc_release(v30);
  v31 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel];
  _objc_retain(v31);
  [v31 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v31);
  v34 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel];
  _objc_retain(v34);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Details", 7uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The details label in the conversation view header", 0x31uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v33 = String._bridgeToObjectiveC()();

  [v34 setText:v33];
  _objc_release(v33);
  _objc_release(v34);
  v35 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v35);
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v35);
  v37 = *&v0[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v37);
  sub_1002AED18();
  _objc_retain(UIFontTextStyleCaption1);
  v36 = sub_10042A20C(UIFontTextStyleCaption1, 1);
  [v37 setPreferredSymbolConfiguration:?];
  _objc_release(v36);
  _objc_release(v37);
  v38 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v38);
  LODWORD(v7) = 1148846080;
  [v38 setContentHuggingPriority:0 forAxis:v7];
  _objc_release(v38);
  v39 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v39);
  LODWORD(v8) = 1148846080;
  [v39 setContentCompressionResistancePriority:0 forAxis:v8];
  _objc_release(v39);
  v40 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v40);
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v40);
  v41 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v41);
  [v41 setAxis:1];
  _objc_release(v41);
  v42 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v42);
  [v42 setAlignment:4];
  _objc_release(v42);
  v43 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v43);
  [v43 setSpacing:?];
  _objc_release(v43);
  v44 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v44);
  [v101 addSubview:v44];
  _objc_release(v44);
  v45 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v45);
  [v101 addSubview:v45];
  _objc_release(v45);
  v47 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v47);
  v46 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel];
  _objc_retain(v46);
  [v47 addArrangedSubview:v46];
  _objc_release(v46);
  _objc_release(v47);
  v49 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v49);
  v48 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel];
  _objc_retain(v48);
  [v49 addArrangedSubview:v48];
  _objc_release(v48);
  _objc_release(v49);
  v50 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v50);
  [v101 addSubview:v50];
  _objc_release(v50);
  v97 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v96 = v9;
  v51 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v51);
  v54 = [v51 topAnchor];
  _objc_release(v51);
  _objc_retain(v101);
  v52 = [v101 layoutMarginsGuide];
  _objc_release(v101);
  v53 = [v52 topAnchor];
  _objc_release(v52);
  v55 = [v54 constraintEqualToAnchor:v53 constant:?];
  _objc_release(v53);
  _objc_release(v54);
  *v96 = v55;
  v56 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v56);
  v59 = [v56 bottomAnchor];
  _objc_release(v56);
  _objc_retain(v101);
  v57 = [v101 layoutMarginsGuide];
  _objc_release(v101);
  v58 = [v57 bottomAnchor];
  _objc_release(v57);
  v60 = [v59 constraintLessThanOrEqualToAnchor:v58 constant:?];
  _objc_release(v58);
  _objc_release(v59);
  v96[1] = v60;
  v61 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v61);
  v64 = [v61 leadingAnchor];
  _objc_release(v61);
  _objc_retain(v101);
  v62 = [v101 layoutMarginsGuide];
  _objc_release(v101);
  v63 = [v62 leadingAnchor];
  _objc_release(v62);
  v65 = [v64 constraintEqualToAnchor:v63 constant:-8.0];
  _objc_release(v63);
  _objc_release(v64);
  v96[2] = v65;
  v66 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v66);
  v69 = [v66 trailingAnchor];
  _objc_release(v66);
  v67 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v67);
  v68 = [v67 leadingAnchor];
  _objc_release(v67);
  v70 = [v69 constraintEqualToAnchor:v68 constant:-4.0];
  _objc_release(v68);
  _objc_release(v69);
  v96[3] = v70;
  v71 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v71);
  v74 = [v71 bottomAnchor];
  _objc_release(v71);
  v72 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v72);
  v73 = [v72 firstBaselineAnchor];
  _objc_release(v72);
  v75 = [v74 constraintEqualToAnchor:v73];
  _objc_release(v73);
  _objc_release(v74);
  v96[4] = v75;
  v76 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v76);
  v79 = [v76 firstBaselineAnchor];
  _objc_release(v76);
  v77 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v77);
  v78 = [v77 firstBaselineAnchor];
  _objc_release(v77);
  v80 = [v79 constraintEqualToAnchor:v78];
  _objc_release(v78);
  _objc_release(v79);
  v96[5] = v80;
  v81 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v81);
  v84 = [v81 trailingAnchor];
  _objc_release(v81);
  _objc_retain(v101);
  v82 = [v101 layoutMarginsGuide];
  _objc_release(v101);
  v83 = [v82 trailingAnchor];
  _objc_release(v82);
  v85 = [v84 constraintEqualToAnchor:v83 constant:8.0];
  _objc_release(v83);
  _objc_release(v84);
  v96[6] = v85;
  v86 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v86);
  v89 = [v86 leadingAnchor];
  _objc_release(v86);
  v87 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v87);
  v88 = [v87 trailingAnchor];
  _objc_release(v87);
  v90 = [v89 constraintEqualToAnchor:v88 constant:4.0];
  _objc_release(v88);
  _objc_release(v89);
  v96[7] = v90;
  v91 = *&v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_stackView];
  _objc_retain(v91);
  v94 = [v91 bottomAnchor];
  _objc_release(v91);
  _objc_retain(v101);
  v92 = [v101 layoutMarginsGuide];
  _objc_release(v101);
  v93 = [v92 bottomAnchor];
  _objc_release(v92);
  v95 = [v94 constraintEqualToAnchor:v93 constant:-4.0];
  _objc_release(v93);
  _objc_release(v94);
  v96[8] = v95;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v97 activateConstraints:isa];
  _objc_release(isa);
  sub_1003C7288();
  _objc_retain(v101);
  v103[3] = ObjectType;
  v103[0] = v101;
  v102 = sub_1003C72EC(v103, "tappedHeader:");
  _objc_retain(v102);
  v100 = &v101[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedRecognizer];
  swift_beginAccess();
  v10 = *v100;
  *v100 = v102;
  _objc_release(v10);
  swift_endAccess();
  [v101 addGestureRecognizer:v102];
  _objc_release(v102);
}

uint64_t sub_10042C4B8()
{
  v15 = (v0 + OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedRecognizer);
  swift_beginAccess();
  v16 = *v15;
  _objc_retain(*v15);
  swift_endAccess();
  if (v16)
  {
    v13 = v16;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 99;
    LODWORD(v5) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v14 removeGestureRecognizer:{v3, v4, v5}];
  _objc_release(v13);
  v6 = *&v14[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_subjectLabel];
  _objc_retain(v6);
  [v6 setNumberOfLines:13];
  _objc_release(v6);
  v7 = &v14[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedRecognizer];
  swift_beginAccess();
  v1 = *v7;
  *v7 = 0;
  _objc_release(v1);
  swift_endAccess();
  v8 = *&v14[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_detailsLabel];
  _objc_retain(v8);
  [v8 removeFromSuperview];
  _objc_release(v8);
  v9 = *&v14[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_dateLabel];
  _objc_retain(v9);
  [v9 removeFromSuperview];
  _objc_release(v9);
  v10 = *&v14[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_unreadImageView];
  _objc_retain(v10);
  [v10 removeFromSuperview];
  _objc_release(v10);
  v11 = &v14[OBJC_IVAR____TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock_tappedHandler];
  swift_beginAccess();
  v12 = *v11;

  swift_endAccess();
  v12();
}

id sub_10042CA14(void *a1)
{
  v4 = [v1 initWithImage:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_10042CA64()
{
  v35 = &v41;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v16 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v9 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v33 = &v9 - v9;
  v1 = sub_10025C9B0(&qword_1006DC4D0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v9 - v10;
  v2 = sub_10025C9B0(&unk_1006D7080);
  v11 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v32 = &v9 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v31 = &v9 - v12;
  v17 = sub_10025C9B0(&qword_1006D8740);
  v13 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v9 - v13;
  v4 = sub_10025C9B0(&qword_1006D6280);
  v14 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v29 = &v9 - v14;
  sub_10025C9B0(&unk_1006D7090);
  v15 = v40;
  memset(v40, 0, sizeof(v40));
  sub_10000B074();
  sub_1003DC7F0();
  v38 = AppDependency.__allocating_init(key:manager:)();

  v41 = v38;
  sub_10025C9B0(&qword_1006DC4D8);
  v21 = type metadata accessor for LocalizedStringResource();
  v5 = *(v21 - 8);
  v23 = *(v5 + 56);
  v22 = v5 + 56;
  v24 = 1;
  v23(v29, 1);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v19, v24);
  v25 = type metadata accessor for IntentDialog();
  v7 = *(v25 - 8);
  v27 = *(v7 + 56);
  v26 = v7 + 56;
  v27(v31, v24);
  v18 = sub_100341F40();
  sub_1004389E4(v20);
  sub_1003BD8F8(v33);
  v36 = IntentParameter<>.init(description:default:kind:requestValueDialog:inputConnectionBehavior:)();

  v42 = v36;
  sub_10025C9B0(&unk_1006DCC10);
  (v23)(v29, v24, v24, v21);
  memset(__src, 0, sizeof(__src));
  v30 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  (v27)(v31, v24, v24, v25);
  (v27)(v32, v24, v24, v25);
  v28 = sub_10028D658();
  v34 = sub_1002B9D60();
  sub_1003BD8F8(v33);
  v37 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v43 = v37;
  sub_1002FE5E4();
  return v38;
}

uint64_t sub_10042D0A0()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_10042D104(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v8[0] = a2;
  v11 = a3;
  v8[1] = a4;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v8 - v9;
  v16 = __chkstk_darwin(v12);
  v13 = v5;
  v14 = a3;
  v15 = v6;

  sub_1002F29E4(v12, v10);
  IntentParameter.wrappedValue.setter();

  return sub_1002A70C0(v12);
}

void *sub_10042D1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v6, sizeof(__dst));

  return memcpy(a4, __dst, 0x48uLL);
}

void *sub_10042D290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[12] = a1;
  v7[9] = a2;
  v7[10] = a3;
  v7[11] = a4;

  sub_1002CD078(a1, v7);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0();
  return result;
}

uint64_t sub_10042D328@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Send a draft email";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 18;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10042D50C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v25 = 0;
  v24 = sub_10042D8BC;
  v1 = sub_10025C9B0(&qword_1006DC478);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v28 = &v7 - v8;
  v19 = sub_10025C9B0(&qword_1006DC480);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v27 = sub_10032C4C8();
  v12 = 5;
  v26 = &unk_10065FF90;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DC488);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t sub_10042D854@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342058(a1, &v4);
  *a2 = sub_1003D6DCC();
}

uint64_t sub_10042D8BC()
{
  swift_getKeyPath();
  sub_10032C4C8();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10025C9B0(&qword_1006DC4C8);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  sub_1002612B0();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10042D990@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100342058(a1, &v4);
  *a2 = sub_1003D6C78();
}

uint64_t sub_10042DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a4;
  v4[44] = a3;
  v4[43] = a2;
  v4[42] = a1;
  v4[18] = v4;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[24] = 0;
  v4[14] = 0;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[33] = 0;
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v4[46] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[47] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[48] = swift_task_alloc();
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v4[54] = swift_task_alloc();
  v6 = type metadata accessor for IntentDialog();
  v4[55] = v6;
  v4[56] = *(v6 - 8);
  v4[57] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v4[58] = v7;
  v4[59] = *(v7 - 8);
  v4[60] = swift_task_alloc();
  v8 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v4[61] = v8;
  v4[62] = *(v8 - 8);
  v4[63] = swift_task_alloc();
  v9 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4[64] = v9;
  v4[65] = *(v9 - 8);
  v4[66] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D8740);
  v4[67] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v4[68] = v10;
  v4[69] = *(v10 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v11 = sub_10025C9B0(&qword_1006D7C40);
  v4[72] = v11;
  v4[73] = *(v11 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v4[76] = v12;
  v4[77] = *(v12 - 8);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[86] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[87] = v18;
  v4[88] = v13;

  return _swift_task_switch(sub_10042E07C, v18);
}

uint64_t sub_10042E07C()
{
  v269 = v0;
  *(v0 + 144) = v0;
  v245 = sub_1003D6B10();
  sub_10035277C();
  _objc_release(v245);
  v242 = sub_1003D6B10();
  v243 = sub_10035333C();
  _objc_release(v242);
  *(v244 + 152) = v243;
  if (!*(v244 + 152))
  {
    sub_10026A58C((v244 + 152));
    v2 = *(v244 + 680);
    v236 = *(v244 + 608);
    v235 = *(v244 + 616);
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v235 + 16))(v2, v3, v236);
    oslog = Logger.logObject.getter();
    v237 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v239 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v237))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v232 = sub_1002641E8(0);
      v233 = sub_1002641E8(0);
      *(v244 + 304) = buf;
      *(v244 + 312) = v232;
      *(v244 + 320) = v233;
      sub_10026423C(0, (v244 + 304));
      sub_10026423C(0, (v244 + 304));
      *(v244 + 328) = v239;
      v234 = swift_task_alloc();
      v234[2] = v244 + 304;
      v234[3] = v244 + 312;
      v234[4] = v244 + 320;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v237, "#SiriMail no compose sheet onscreen, launching draft message for SendDraftIntent", buf, 2u);
      sub_10026429C(v232);
      sub_10026429C(v233);
      UnsafeMutablePointer.deallocate()();
    }

    v226 = *(v244 + 680);
    v227 = *(v244 + 608);
    v225 = *(v244 + 616);
    _objc_release(oslog);
    (*(v225 + 8))(v226, v227);
    v228 = sub_1003D6DCC();
    sub_1003DC448();
    v229 = nullsub_13(v228);
    v230 = v4;
    *(v244 + 712) = v229;
    *(v244 + 720) = v4;
    v5 = swift_task_alloc();
    v6 = v229;
    v7 = v230;
    *(v244 + 728) = v5;
    *v5 = *(v244 + 144);
    v5[1] = sub_100431978;
    v8 = *(v244 + 600);

    return sub_1003DABB0(v8, v6, v7);
  }

  sub_10026A58C((v244 + 152));
  v240 = sub_1003D6B10();
  v1 = sub_10035333C();
  v241 = v1;
  *(v244 + 760) = v1;
  if (!v1)
  {
    _objc_release(v240);
    goto LABEL_17;
  }

  v221 = *(v244 + 360);
  v220 = *(v244 + 352);
  v219 = *(v244 + 344);
  *(v244 + 264) = v1;
  _objc_release(v240);
  sub_10042D1FC(v219, v220, v221, (v244 + 16));
  v222 = *(v244 + 16);
  v223 = *(v244 + 24);

  sub_10028D6D0();
  v224 = sub_10047E92C(v222, v223);

  if ((v224 & 1) == 0)
  {
    v10 = *(v244 + 672);
    v215 = *(v244 + 608);
    v214 = *(v244 + 616);
    v11 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v214 + 16))(v10, v11, v215);
    log = Logger.logObject.getter();
    v216 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v218 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v216))
    {
      v210 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v211 = sub_1002641E8(0);
      v212 = sub_1002641E8(0);
      *(v244 + 272) = v210;
      *(v244 + 280) = v211;
      *(v244 + 288) = v212;
      sub_10026423C(0, (v244 + 272));
      sub_10026423C(0, (v244 + 272));
      *(v244 + 296) = v218;
      v213 = swift_task_alloc();
      v213[2] = v244 + 272;
      v213[3] = v244 + 280;
      v213[4] = v244 + 288;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v216, "#SiriMail compose sheet onscreen but not the target one, launching draft message for SendDraftIntent", v210, 2u);
      sub_10026429C(v211);
      sub_10026429C(v212);
      UnsafeMutablePointer.deallocate()();
    }

    v205 = *(v244 + 672);
    v206 = *(v244 + 608);
    v204 = *(v244 + 616);
    _objc_release(log);
    (*(v204 + 8))(v205, v206);
    v207 = sub_1003D6DCC();
    sub_1003DC448();
    v208 = nullsub_13(v207);
    v209 = v12;
    *(v244 + 768) = v208;
    *(v244 + 776) = v12;
    v13 = swift_task_alloc();
    v6 = v208;
    v7 = v209;
    *(v244 + 784) = v13;
    *v13 = *(v244 + 144);
    v13[1] = sub_100434AF4;
    v8 = *(v244 + 592);

    return sub_1003DABB0(v8, v6, v7);
  }

  _objc_release(v241);
LABEL_17:
  v202 = sub_1003D6B10();
  v14 = sub_10035333C();
  v203 = v14;
  if (!v14)
  {
    v36 = *(v244 + 624);
    v51 = *(v244 + 608);
    v50 = *(v244 + 616);
    _objc_release(v202);
    v37 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v50 + 16))(v36, v37, v51);
    v53 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v54 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v53, v52))
    {
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v47 = sub_1002641E8(0);
      v48 = sub_1002641E8(0);
      *(v244 + 160) = v46;
      *(v244 + 168) = v47;
      *(v244 + 176) = v48;
      sub_10026423C(0, (v244 + 160));
      sub_10026423C(0, (v244 + 160));
      *(v244 + 184) = v54;
      v49 = swift_task_alloc();
      v49[2] = v244 + 160;
      v49[3] = v244 + 168;
      v49[4] = v244 + 176;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v53, v52, "#SiriMail could not find an active email composition, doing nothing.", v46, 2u);
      sub_10026429C(v47);
      sub_10026429C(v48);
      UnsafeMutablePointer.deallocate()();
    }

    v40 = *(v244 + 624);
    v41 = *(v244 + 608);
    v44 = *(v244 + 456);
    v45 = *(v244 + 440);
    v42 = *(v244 + 368);
    v39 = *(v244 + 616);
    v43 = *(v244 + 448);
    _objc_release(v53);
    (*(v39 + 8))(v40, v41);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("There's nothing to send.", 0x18uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v42);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v43 + 8))(v44, v45);
    goto LABEL_49;
  }

  *(v244 + 192) = v14;
  _objc_release(v202);
  v15 = [v203 sendButtonItem];
  v201 = v15;
  if (!v15)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v200 = [v15 isEnabled];
  _objc_release(v201);
  if ((v200 & 1) == 0)
  {
    v34 = *(v244 + 632);
    v67 = *(v244 + 608);
    v66 = *(v244 + 616);
    v35 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v66 + 16))(v34, v35, v67);
    v69 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v70 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v69, v68))
    {
      v62 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v63 = sub_1002641E8(0);
      v64 = sub_1002641E8(0);
      *(v244 + 200) = v62;
      *(v244 + 208) = v63;
      *(v244 + 216) = v64;
      sub_10026423C(0, (v244 + 200));
      sub_10026423C(0, (v244 + 200));
      *(v244 + 224) = v70;
      v65 = swift_task_alloc();
      v65[2] = v244 + 200;
      v65[3] = v244 + 208;
      v65[4] = v244 + 216;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v69, v68, "#SiriMail send button is disabled, user is missing vital information in the message", v62, 2u);
      sub_10026429C(v63);
      sub_10026429C(v64);
      UnsafeMutablePointer.deallocate()();
    }

    v56 = *(v244 + 632);
    v57 = *(v244 + 608);
    v60 = *(v244 + 456);
    v61 = *(v244 + 440);
    v58 = *(v244 + 368);
    v55 = *(v244 + 616);
    v59 = *(v244 + 448);
    _objc_release(v69);
    (*(v55 + 8))(v56, v57);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sorry, I cannot send the email yet.", 0x23uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v58);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v59 + 8))(v60, v61);
    _objc_release(v203);
    goto LABEL_49;
  }

  v199 = *(v244 + 544);
  v198 = *(v244 + 536);
  v197 = *(v244 + 552);
  sub_10042D0A0();
  if ((*(v197 + 48))(v198, 1, v199) == 1)
  {
    v32 = *(v244 + 640);
    v83 = *(v244 + 608);
    v82 = *(v244 + 616);
    sub_1002A70C0(*(v244 + 536));
    v33 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v82 + 16))(v32, v33, v83);
    v85 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v86 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v85, v84))
    {
      v78 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v79 = sub_1002641E8(0);
      v80 = sub_1002641E8(0);
      *(v244 + 232) = v78;
      *(v244 + 240) = v79;
      *(v244 + 248) = v80;
      sub_10026423C(0, (v244 + 232));
      sub_10026423C(0, (v244 + 232));
      *(v244 + 256) = v86;
      v81 = swift_task_alloc();
      v81[2] = v244 + 232;
      v81[3] = v244 + 240;
      v81[4] = v244 + 248;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v85, v84, "#SiriMail sending the message now", v78, 2u);
      sub_10026429C(v79);
      sub_10026429C(v80);
      UnsafeMutablePointer.deallocate()();
    }

    v72 = *(v244 + 640);
    v73 = *(v244 + 608);
    v76 = *(v244 + 456);
    v77 = *(v244 + 440);
    v74 = *(v244 + 368);
    v71 = *(v244 + 616);
    v75 = *(v244 + 448);
    _objc_release(v85);
    (*(v71 + 8))(v72, v73);
    [v203 performSend];
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it.", 0x11uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v74);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v75 + 8))(v76, v77);
    _objc_release(v203);
    goto LABEL_49;
  }

  v192 = *(v244 + 528);
  v193 = *(v244 + 512);
  v188 = *(v244 + 504);
  v189 = *(v244 + 488);
  v191 = *(v244 + 520);
  v187 = *(v244 + 496);
  (*(*(v244 + 552) + 32))(*(v244 + 568), *(v244 + 536), *(v244 + 544));
  static Date.FormatStyle.DateStyle.omitted.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v195._countAndFlagsBits = Date.formatted(date:time:)();
  v195._object = v16;
  v190 = *(v187 + 8);
  v190(v188, v189);
  v194 = *(v191 + 8);
  v194(v192, v193);
  *(v244 + 112) = v195;
  v196 = [v203 compositionContext];
  if (!v196)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v179 = *(v244 + 560);
  v178 = *(v244 + 544);
  v184 = *(v244 + 480);
  v183 = *(v244 + 464);
  v177 = *(v244 + 552);
  v182 = *(v244 + 472);
  (*(v177 + 16))(v179);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v180 = *(v177 + 8);
  v180(v179, v178);
  [v196 setSendLaterDate:isa];
  _objc_release(isa);
  _objc_release(v196);
  [v203 performSend];
  static Calendar.current.getter();
  v186 = Calendar.isDateInToday(_:)();
  v185 = *(v182 + 8);
  v185(v184, v183);
  if (v186)
  {
    v17 = *(v244 + 664);
    v168 = *(v244 + 608);
    v167 = *(v244 + 616);
    v18 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v167 + 16))(v17, v18, v168);

    v169 = swift_allocObject();
    *(v169 + 16) = v195;
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.info.getter();
    v171 = swift_allocObject();
    *(v171 + 16) = 32;
    v172 = swift_allocObject();
    *(v172 + 16) = 8;
    v170 = swift_allocObject();
    *(v170 + 16) = sub_10035728C;
    *(v170 + 24) = v169;
    v173 = swift_allocObject();
    *(v173 + 16) = sub_10026EE84;
    *(v173 + 24) = v170;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v174 = v19;

    *v174 = sub_10026434C;
    v174[1] = v171;

    v174[2] = sub_10026434C;
    v174[3] = v172;

    v174[4] = sub_10026EF2C;
    v174[5] = v173;
    sub_1002612B0();

    if (os_log_type_enabled(v175, v176))
    {
      v164 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v165 = sub_1002641E8(0);
      v166 = sub_1002641E8(1);
      v264 = v164;
      v265 = v165;
      v266 = v166;
      sub_10026423C(2, &v264);
      sub_10026423C(1, &v264);
      v267 = sub_10026434C;
      v268 = v171;
      sub_100264250(&v267, &v264, &v265, &v266);
      v267 = sub_10026434C;
      v268 = v172;
      sub_100264250(&v267, &v264, &v265, &v266);
      v267 = sub_10026EF2C;
      v268 = v173;
      sub_100264250(&v267, &v264, &v265, &v266);
      _os_log_impl(&_mh_execute_header, v175, v176, "#SiriMail scheduling the message to be sent for today at %s", v164, 0xCu);
      sub_10026429C(v165);
      sub_10026429C(v166);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v151 = *(v244 + 664);
    v152 = *(v244 + 608);
    v162 = *(v244 + 568);
    v163 = *(v244 + 544);
    v160 = *(v244 + 456);
    v161 = *(v244 + 440);
    v156 = *(v244 + 424);
    v154 = *(v244 + 416);
    v157 = *(v244 + 408);
    v155 = *(v244 + 392);
    v158 = *(v244 + 368);
    v150 = *(v244 + 616);
    v159 = *(v244 + 448);
    v153 = *(v244 + 400);
    _objc_release(v175);
    (*(v150 + 8))(v151, v152);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it today at ", 0x1AuLL, 1);
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);

    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v195);
    v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);

    (*(v153 + 16))(v154, v156, v155);
    (*(v153 + 32))(v157, v154, v155);
    (*(v153 + 8))(v156, v155);
    String.LocalizationValue.init(stringInterpolation:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v158);
    v260 = "Dialog to show and say when message will be sent later today.";
    v261 = 61;
    v262 = 2;
    v263 = 0;
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v159 + 8))(v160, v161);

    v180(v162, v163);
    _objc_release(v203);
  }

  else
  {
    v148 = *(v244 + 480);
    v147 = *(v244 + 464);
    static Calendar.current.getter();
    v149 = Calendar.isDateInTomorrow(_:)();
    v185(v148, v147);
    if (v149)
    {
      v22 = *(v244 + 656);
      v138 = *(v244 + 608);
      v137 = *(v244 + 616);
      v23 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v137 + 16))(v22, v23, v138);

      v139 = swift_allocObject();
      *(v139 + 16) = v195;
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.info.getter();
      v141 = swift_allocObject();
      *(v141 + 16) = 32;
      v142 = swift_allocObject();
      *(v142 + 16) = 8;
      v140 = swift_allocObject();
      *(v140 + 16) = sub_10035728C;
      *(v140 + 24) = v139;
      v143 = swift_allocObject();
      *(v143 + 16) = sub_10026EE84;
      *(v143 + 24) = v140;
      sub_10025C9B0(&unk_1006D7720);
      _allocateUninitializedArray<A>(_:)();
      v144 = v24;

      *v144 = sub_10026434C;
      v144[1] = v141;

      v144[2] = sub_10026434C;
      v144[3] = v142;

      v144[4] = sub_10026EF2C;
      v144[5] = v143;
      sub_1002612B0();

      if (os_log_type_enabled(v145, v146))
      {
        v134 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v135 = sub_1002641E8(0);
        v136 = sub_1002641E8(1);
        v255 = v134;
        v256 = v135;
        v257 = v136;
        sub_10026423C(2, &v255);
        sub_10026423C(1, &v255);
        v258 = sub_10026434C;
        v259 = v141;
        sub_100264250(&v258, &v255, &v256, &v257);
        v258 = sub_10026434C;
        v259 = v142;
        sub_100264250(&v258, &v255, &v256, &v257);
        v258 = sub_10026EF2C;
        v259 = v143;
        sub_100264250(&v258, &v255, &v256, &v257);
        _os_log_impl(&_mh_execute_header, v145, v146, "#SiriMail scheduling the message to be sent for tomorrow at %s", v134, 0xCu);
        sub_10026429C(v135);
        sub_10026429C(v136);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v121 = *(v244 + 656);
      v122 = *(v244 + 608);
      v132 = *(v244 + 568);
      v133 = *(v244 + 544);
      v130 = *(v244 + 456);
      v131 = *(v244 + 440);
      v126 = *(v244 + 424);
      v124 = *(v244 + 416);
      v127 = *(v244 + 408);
      v125 = *(v244 + 392);
      v128 = *(v244 + 368);
      v120 = *(v244 + 616);
      v129 = *(v244 + 448);
      v123 = *(v244 + 400);
      _objc_release(v145);
      (*(v120 + 8))(v121, v122);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it tomorrow at ", 0x1DuLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);

      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v195);
      v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);

      (*(v123 + 16))(v124, v126, v125);
      (*(v123 + 32))(v127, v124, v125);
      (*(v123 + 8))(v126, v125);
      String.LocalizationValue.init(stringInterpolation:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v128);
      v251 = "Dialog to show and say when message will be sent some time tomorrow.";
      v252 = 68;
      v253 = 2;
      v254 = 0;
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v129 + 8))(v130, v131);

      v180(v132, v133);
      _objc_release(v203);
    }

    else
    {
      v104 = *(v244 + 648);
      v110 = *(v244 + 608);
      v107 = *(v244 + 528);
      v108 = *(v244 + 512);
      v105 = *(v244 + 504);
      v106 = *(v244 + 488);
      v109 = *(v244 + 616);
      static Date.FormatStyle.DateStyle.abbreviated.getter();
      static Date.FormatStyle.TimeStyle.shortened.getter();
      v111._countAndFlagsBits = Date.formatted(date:time:)();
      v111._object = v27;
      v190(v105, v106);
      v194(v107, v108);
      *(v244 + 128) = v111;
      v28 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v109 + 16))(v104, v28, v110);

      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.info.getter();
      v114 = swift_allocObject();
      *(v114 + 16) = 32;
      v115 = swift_allocObject();
      *(v115 + 16) = 8;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_10035728C;
      *(v113 + 24) = v112;
      v116 = swift_allocObject();
      *(v116 + 16) = sub_10026EE84;
      *(v116 + 24) = v113;
      sub_10025C9B0(&unk_1006D7720);
      _allocateUninitializedArray<A>(_:)();
      v117 = v29;

      *v117 = sub_10026434C;
      v117[1] = v114;

      v117[2] = sub_10026434C;
      v117[3] = v115;

      v117[4] = sub_10026EF2C;
      v117[5] = v116;
      sub_1002612B0();

      if (os_log_type_enabled(v118, v119))
      {
        v101 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v102 = sub_1002641E8(0);
        v103 = sub_1002641E8(1);
        v246 = v101;
        v247 = v102;
        v248 = v103;
        sub_10026423C(2, &v246);
        sub_10026423C(1, &v246);
        v249 = sub_10026434C;
        v250 = v114;
        sub_100264250(&v249, &v246, &v247, &v248);
        v249 = sub_10026434C;
        v250 = v115;
        sub_100264250(&v249, &v246, &v247, &v248);
        v249 = sub_10026EF2C;
        v250 = v116;
        sub_100264250(&v249, &v246, &v247, &v248);
        _os_log_impl(&_mh_execute_header, v118, v119, "#SiriMail scheduling the message to be sent for %s", v101, 0xCu);
        sub_10026429C(v102);
        sub_10026429C(v103);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v88 = *(v244 + 648);
      v89 = *(v244 + 608);
      v99 = *(v244 + 568);
      v100 = *(v244 + 544);
      v97 = *(v244 + 456);
      v98 = *(v244 + 440);
      v93 = *(v244 + 424);
      v91 = *(v244 + 416);
      v94 = *(v244 + 408);
      v92 = *(v244 + 392);
      v95 = *(v244 + 368);
      v87 = *(v244 + 616);
      v96 = *(v244 + 448);
      v90 = *(v244 + 400);
      _objc_release(v118);
      (*(v87 + 8))(v88, v89);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it on ", 0x14uLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);

      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v111);
      v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);

      (*(v90 + 16))(v91, v93, v92);
      (*(v90 + 32))(v94, v91, v92);
      (*(v90 + 8))(v93, v92);
      String.LocalizationValue.init(stringInterpolation:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v95);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v96 + 8))(v97, v98);

      v180(v99, v100);
      _objc_release(v203);
    }
  }

LABEL_49:

  v38 = *(*(v244 + 144) + 8);

  return v38();
}