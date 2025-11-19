void sub_10001AB2C()
{
  sub_1000043AC();
  v1 = v0;
  sub_10002E87C(&qword_1001031C0);
  sub_100004458();
  sub_100005B90();
  __chkstk_darwin(v2);
  v3 = sub_10002E87C(&unk_1001031C8);
  sub_100004458();
  v5 = v4;
  sub_100005B90();
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v9 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v5 + 8))(v8, v3);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v9 + 16) > v1)
  {
    v10 = v9 + 16 * v1;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);

    dispatch thunk of LibraryDataSource.sortedSections.getter();
    v15[0] = v12;
    v15[1] = v11;
    OrderedDictionary.subscript.getter();

    v13 = sub_10000F430();
    v14(v13);
    sub_100002EEC();
    return;
  }

  __break(1u);
}

BOOL sub_10001ACF8()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (v2)
  {

    return 1;
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 verticalSizeClass];

    if (v5 == 2)
    {
      v6 = [v0 traitCollection];
      v7 = [v6 horizontalSizeClass];

      return v7 == 2;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10001ADD8()
{
  sub_1000079FC();
  v0 = sub_10002E87C(&unk_100102410);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  v3 = v15 - v2;
  v4 = type metadata accessor for ShortcutsLibrarySection();
  sub_100004458();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039BC();
  v10 = v9 - v8;
  IndexPath.section.getter();
  sub_10001AB2C();
  if (sub_10000AB80(v3, 1, v4) == 1)
  {
    sub_1000069B0(v3, &unk_100102410);
LABEL_6:
    type metadata accessor for ShortcutsLibraryItem();
    sub_100004730();
    sub_1000042A8(v11, v12, v13, v14);
    goto LABEL_7;
  }

  (*(v6 + 32))(v10, v3, v4);
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if (!v15[1])
  {
    (*(v6 + 8))(v10, v4);
    goto LABEL_6;
  }

  ShortcutsLibrarySection.item(for:)();

  (*(v6 + 8))(v10, v4);
LABEL_7:
  sub_1000046DC();
}

void sub_10001AFB0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id))
{
  v9 = a3;
  v10 = a4;
  v11 = a1;
  a6(v9);

  sub_100019C20();
}

id sub_10001B050(uint64_t a1)
{
  v120 = a1;
  v113 = type metadata accessor for AutoShortcutApp();
  sub_100004458();
  v111 = v2;
  __chkstk_darwin(v3);
  sub_1000039BC();
  sub_100005B9C(v5 - v4);
  v119 = type metadata accessor for UIListContentConfiguration.TextProperties();
  sub_100004458();
  v118 = v6;
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_100005B9C(v9 - v8);
  v116 = type metadata accessor for UIListContentConfiguration();
  sub_100004458();
  v115 = v10;
  __chkstk_darwin(v11);
  sub_1000039BC();
  v12 = sub_10002E87C(&unk_100102410);
  sub_100002EE0(v12);
  sub_100005B90();
  __chkstk_darwin(v13);
  v15 = &v110 - v14;
  v16 = type metadata accessor for LibrarySectionOptions.Header();
  sub_100004458();
  v18 = v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v121 = &v110 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v110 - v26;
  __chkstk_darwin(v25);
  v29 = &v110 - v28;
  sub_10000E8F4();
  sub_10001AB2C();

  v30 = type metadata accessor for ShortcutsLibrarySection();
  if (sub_10000AB80(v15, 1, v30) == 1)
  {
    return sub_100007A44(v15, &unk_100102410);
  }

  ShortcutsLibrarySection.header.getter();
  sub_100002F04();
  (*(v32 + 8))(v15, v30);
  v33 = *(v18 + 32);
  v114 = v29;
  v33(v29, v27, v16);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v34 = result;
  v35 = v16;
  v36 = v1;
  [result safeAreaInsets];

  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v37 = result;
  [result safeAreaInsets];

  v38 = *(v18 + 16);
  v39 = v121;
  v40 = v114;
  v38(v121, v114, v35);
  v41 = (*(v18 + 88))(v39, v35);
  if (v41 == enum case for LibrarySectionOptions.Header.nameAndIconName(_:))
  {
    v42 = sub_10000F188();
    (v38)(v42);
    v43 = sub_10000B0D0();
    v44(v43);

    static UIListContentConfiguration.prominentInsetGroupedHeader()();
    sub_100005E18();
    v45 = sub_1000051F0();
    v46(v45);
    UIListContentConfiguration.TextProperties.font.getter();
    sub_10001C87C();
    v47(v36, v119);
    v48 = String._bridgeToObjectiveC()();

    sub_10002E87C(&qword_1000FFA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C0C20;
    *(inited + 32) = NSFontAttributeName;
    v50 = sub_100002FC4(0, &qword_1000FFA08);
    sub_100005B0C(v50);
    sub_1000137B8();
    sub_10001C834(v51, v52);
    v53 = NSFontAttributeName;
    v54 = v22;
    sub_10001C6B0();
    isa = sub_10001C760().super.isa;

    [v48 sizeWithAttributes:isa];

    v56 = sub_100007958();
    [v56 v57];
    CGRectGetWidth(v122);

    v58 = *(v18 + 8);
    v58(v40, v35);
LABEL_7:
    v59 = v121;
    return (v58)(v59, v35);
  }

  if (v41 == enum case for LibrarySectionOptions.Header.appAttributedUserShortcut(_:))
  {
    v60 = sub_10000F188();
    (v38)(v60);
    v61 = sub_10000B0D0();
    v62(v61);
    static UIListContentConfiguration.prominentInsetGroupedHeader()();
    sub_100005E18();
    v63 = sub_1000051F0();
    v64(v63);
    UIListContentConfiguration.TextProperties.font.getter();
    sub_10001C87C();
    v65(v36, v119);
    v66 = String._bridgeToObjectiveC()();

    sub_10002E87C(&qword_1000FFA00);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_1000C0C20;
    *(v67 + 32) = NSFontAttributeName;
    v68 = sub_100002FC4(0, &qword_1000FFA08);
    sub_100005B0C(v68);
    sub_1000137B8();
    sub_10001C834(v69, v70);
    v71 = NSFontAttributeName;
    v72 = v22;
    sub_10001C6B0();
    v73 = sub_10001C760().super.isa;

    [v66 sizeWithAttributes:v73];

    v74 = sub_100007958();
    [v74 v75];
    CGRectGetWidth(v123);

    v58 = *(v18 + 8);
    v58(v114, v35);
    v59 = v39;
    return (v58)(v59, v35);
  }

  if (v41 == enum case for LibrarySectionOptions.Header.appShortcut(_:))
  {
    v76 = sub_10000F188();
    (v38)(v76);
    v77 = sub_10000B0D0();
    v78(v77);
    v79 = v111;
    (*(v111 + 32))(v112, v22, v113);
    static UIListContentConfiguration.prominentInsetGroupedHeader()();
    v80 = v117;
    UIListContentConfiguration.textProperties.getter();
    v81 = sub_1000051F0();
    v82(v81);
    UIListContentConfiguration.TextProperties.font.getter();
    sub_10001C87C();
    v83(v80, v119);
    AutoShortcutApp.localizedName.getter();
    v84 = String._bridgeToObjectiveC()();

    sub_10002E87C(&qword_1000FFA00);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_1000C0C20;
    *(v85 + 32) = NSFontAttributeName;
    v86 = sub_100002FC4(0, &qword_1000FFA08);
    sub_100005B0C(v86);
    sub_1000137B8();
    sub_10001C834(v87, v88);
    v89 = NSFontAttributeName;
    v90 = v22;
    sub_10001C6B0();
    v91 = sub_10001C760().super.isa;

    [v84 sizeWithAttributes:v91];

    v92 = sub_100007958();
    [v92 v93];
    CGRectGetWidth(v124);

    (*(v79 + 8))(v112, v113);
    v58 = *(v18 + 8);
    v58(v114, v35);
    goto LABEL_7;
  }

  if (v41 == enum case for LibrarySectionOptions.Header.tip(_:))
  {
    v94 = sub_1000197B0();
    v95 = v114;
    if (v94)
    {
      _s14descr1000EF9A1C27MiniTipCollectionHeaderViewCMa();
      v96 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v97 = sub_1000B0224(v96);

      if (v97)
      {
        v98 = sub_100007958();
        [v98 v99];
        CGRectGetWidth(v125);
        sub_100006310();
        [v97 v100];

LABEL_19:
        v108 = *(v18 + 8);
        v108(v95, v35);
        return (v108)(v39, v35);
      }
    }
  }

  else
  {
    v95 = v114;
    if (v41 == enum case for LibrarySectionOptions.Header.syncUnavailable(_:))
    {
      _s14descr1000EF9A1C35SyncUnavailableCollectionHeaderViewCMa();
      v101 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_100033988();
      v104 = sub_1000AF960(v36, v101, 0.0, v102, 0.0, v103);

      v105 = sub_100007958();
      [v105 v106];
      CGRectGetWidth(v126);
      sub_100006310();
      [v104 v107];

      goto LABEL_19;
    }
  }

  v109 = *(v18 + 8);
  v109(v95, v35);
  return (v109)(v39, v35);
}

double sub_10001BB78(void *a1)
{
  v3 = type metadata accessor for LibrarySectionOptions.Footer();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  v9 = v8 - v7;
  v10 = sub_10002E87C(&unk_100102410);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  v12 = sub_100033AA4();
  sub_100004458();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000039BC();
  v18 = v17 - v16;
  sub_10000E8F4();
  sub_10001AB2C();

  if (sub_10000AB80(v1, 1, v12) == 1)
  {
    sub_100007A44(v1, &unk_100102410);
    return 0.0;
  }

  (*(v14 + 32))(v18, v1, v12);
  ShortcutsLibrarySection.footer.getter();
  if ((*(v5 + 88))(v9, v3) != enum case for LibrarySectionOptions.Footer.spacer(_:))
  {
    (*(v14 + 8))(v18, v12);
    (*(v5 + 8))(v9, v3);
    return 0.0;
  }

  [a1 frame];
  Width = CGRectGetWidth(v21);
  (*(v14 + 8))(v18, v12);
  return Width;
}

void sub_10001BF28()
{
  sub_100033AC4();
  v1 = v0;
  v73 = v2;
  v75 = type metadata accessor for AutoShortcutAppSection();
  sub_100004458();
  v77 = v3;
  __chkstk_darwin(v4);
  sub_1000039BC();
  v76 = v6 - v5;
  v78 = type metadata accessor for ShortcutsLibraryItem.ItemType();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v12 = v11 - v10;
  v13 = sub_10002E87C(&unk_1000FF9E0);
  sub_100002EE0(v13);
  sub_100005B90();
  __chkstk_darwin(v14);
  v16 = v72 - v15;
  v17 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000039BC();
  v23 = v22 - v21;
  sub_10000E8F4();
  sub_10001ADD8();

  if (sub_10000AB80(v16, 1, v17) == 1)
  {
    sub_100007A44(v16, &unk_1000FF9E0);
LABEL_18:
    sub_10000A7D4();
    return;
  }

  (*(v19 + 32))(v23, v16, v17);
  v24 = sub_100033A80();
  if (!v24)
  {
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v74 = v23;
  v72[1] = v19;
  [v24 safeAreaInsets];
  v27 = v26;

  v28 = sub_100033A80();
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  [v28 safeAreaInsets];
  v31 = v30;

  sub_100017B98(v82);
  v32 = v82[3];
  sub_1000182F8(v82);
  [v32 sectionInset];
  v34 = v33;

  v35 = &v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics];
  [*&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 24] sectionInset];
  v37 = v36;
  v38 = sub_100033A80();
  v39 = v76;
  v40 = v77;
  if (!v38)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v41 = v38;
  v42 = v34 + v37;
  [v38 bounds];
  v44 = v43;
  v46 = v45;

  v83.origin.x = sub_100019C20();
  v83.size.width = v44;
  v83.size.height = v46;
  v47 = CGRectGetWidth(v83) - (v27 + v31) - v42;
  ShortcutsLibraryItem.itemType.getter();
  v48 = v78;
  v49 = (*(v8 + 88))(v12, v78);
  if (v49 == enum case for ShortcutsLibraryItem.ItemType.appShortcutTopHit(_:))
  {
    (*(v8 + 96))(v12, v48);
    LODWORD(v78) = *(v12 + *(sub_10002E87C(&unk_1000FF9F0) + 48));
    (*(v40 + 32))(v39, v12, v75);
    v50 = [v1 traitCollection];
    [v50 horizontalSizeClass];

    memcpy(v81, v35, sizeof(v81));
    memcpy(v80, v35, sizeof(v80));
    v51 = v40;
    v52 = v81[10];

    sub_10001939C(v81, v79);
    AutoShortcutAppSection.items.getter();
    type metadata accessor for AggregatedEntry();
    sub_10001C834(&qword_1001031E0, &type metadata accessor for AggregatedEntry);
    v53 = Array<A>.hashValue.getter();

    sub_10001CDCC(v53, v52, v47);
    if (v54)
    {
      v55 = sub_10001C8F0(v39, v78, v47);
      [v55 sizeThatFits:{v47, 0.0}];
      swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v52;
      v56 = sub_100019C20();
      sub_100022B10(v53, v57, v56, v58, v47);

      (*(v51 + 8))(v39, v75);
      v59 = sub_10000F6DC();
      v60(v59);
      v52 = v79[0];
    }

    else
    {

      (*(v51 + 8))(v39, v75);
      v68 = sub_10000F6DC();
      v69(v68);
    }

    memcpy(v79, v35, sizeof(v79));
    memcpy(v35, v80, 0x50uLL);
    v35[10] = v52;
    sub_100007A44(v79, &qword_1000FF9B8);
    goto LABEL_18;
  }

  if (v49 != enum case for ShortcutsLibraryItem.ItemType.emptyState(_:))
  {
    [v35[3] itemSize];
    v70 = sub_10000F6DC();
    v71(v70);
    (*(v8 + 8))(v12, v48);
    goto LABEL_18;
  }

  v61 = v73;
  [v73 frame];
  CGRectGetHeight(v84);
  [v35[3] sectionInset];
  [v35[3] sectionInset];
  v62 = sub_100033A80();
  if (!v62)
  {
    goto LABEL_22;
  }

  v63 = v62;
  [v62 safeAreaInsets];

  v64 = sub_100033A80();
  if (v64)
  {
    v65 = v64;
    [v64 safeAreaInsets];

    if ([v61 numberOfSections] >= 2)
    {
      [v35[3] itemSize];
      [v35[3] sectionInset];
      [v35[3] sectionInset];
    }

    v66 = sub_10000F6DC();
    v67(v66);
    (*(v8 + 8))(v12, v78);
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_10001C6B0()
{

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_10001C718()
{
}

uint64_t sub_10001C738()
{

  return sub_100048024();
}

NSDictionary sub_10001C760()
{

  return Dictionary._bridgeToObjectiveC()();
}

uint64_t sub_10001C834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001C890()
{

  return sub_100048024();
}

uint64_t sub_10001C8B4(unint64_t *a1)
{

  return sub_100009624(a1, v1);
}

id sub_10001C8F0(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v44 = sub_10002E87C(&qword_1001031D8);
  sub_100003EC8();
  __chkstk_darwin(v8);
  sub_100003EF4();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  AutoShortcutAppSection.items.getter();
  sub_100003A0C();
  type metadata accessor for AggregatedEntry();
  sub_10000F668(&qword_1001031E0, &type metadata accessor for AggregatedEntry);
  v15 = Array<A>.hashValue.getter();

  v16 = Bool.hashValue.getter();
  v45 = v16 ^ Double.hashValue.getter() ^ v15;
  v17 = AutoShortcutAppSection.bundleIdentifier.getter();
  v19 = v18;
  v20 = qword_100102D98;
  swift_beginAccess();
  v21 = *(v4 + v20);

  v22 = sub_1000AA328(v17, v19, v21);
  v24 = v23;

  if (v22)
  {
    if (v24 == v45)
    {
      v25 = [v22 superview];
      if (!v25)
      {
        return v22;
      }

      v26 = v25;

      v22 = v26;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v43 = v11;
  if (Strong)
  {
    v28 = Strong;
    sub_100017B98(v48);

    v29 = v49;
    sub_1000182F8(v48);
    v30 = [v29 itemsPerRow];
  }

  else
  {
    v30 = 2;
  }

  swift_unknownObjectWeakLoadStrong();
  sub_100003A0C();
  v31 = type metadata accessor for LibraryIndirectMenuDataSource();
  sub_100003A00();
  swift_allocObject();
  v32 = sub_1000095CC();
  v33 = sub_10001026C(v32);
  __chkstk_darwin(v33);
  *(&v43 - 6) = a1;
  *(&v43 - 40) = a2 & 1;
  *(&v43 - 4) = a3;
  *(&v43 - 3) = v30;
  *(&v43 - 2) = v4;
  type metadata accessor for AppShortcutChiclet(0);
  sub_10000F668(&qword_1001031E8, type metadata accessor for AppShortcutChiclet);
  PrefetchableImage.RootView.init(content:)();
  KeyPath = swift_getKeyPath();
  v47[3] = v31;
  v47[4] = sub_10000F668(&qword_100102650, type metadata accessor for LibraryIndirectMenuDataSource);
  v47[0] = v33;
  v35 = &v14[*(v44 + 36)];
  sub_10001D37C();
  *v35 = KeyPath;

  sub_1000069B0(v47, &qword_100102658);
  sub_10001D37C();
  v36 = objc_allocWithZone(sub_10002E87C(&qword_1001031F0));
  v37 = _UIHostingView.init(rootView:)();
  v38 = AutoShortcutAppSection.bundleIdentifier.getter();
  v40 = v39;
  swift_beginAccess();
  v22 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v4 + v20);
  sub_1000AF30C(v22, v45, v38, v40, isUniquelyReferenced_nonNull_native);
  *(v4 + v20) = v46;

  swift_endAccess();

  sub_1000069B0(v14, &qword_1001031D8);
  return v22;
}

uint64_t sub_10001CDCC(Swift::UInt a1, uint64_t a2, double a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_100022A90(a1, a3);
  if (v5)
  {
    return *(*(a2 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

void sub_10001CE50()
{
  type metadata accessor for AutoShortcutAppSection();
  if (v0 <= 0x3F)
  {
    sub_10001CF3C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TopHitViewColorScheme();
      if (v2 <= 0x3F)
      {
        sub_10001CF84();
        if (v3 <= 0x3F)
        {
          sub_10001CFDC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10001CF3C()
{
  result = qword_100100ED8;
  if (!qword_100100ED8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100100ED8);
  }

  return result;
}

void sub_10001CF84()
{
  if (!qword_100102858)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100102858);
    }
  }
}

void sub_10001CFDC()
{
  if (!qword_100102860)
  {
    sub_100041CB4(&qword_1000FF770);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100102860);
    }
  }
}

uint64_t sub_10001D054@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, double a5@<D0>)
{
  v24 = a3;
  v23 = a2;
  v8 = type metadata accessor for TopHitCollectionViewStyle();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AutoShortcutAppSection();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v12 + 16);
  v15(v14, a1, v11);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = type metadata accessor for AppShortcutChiclet(0);
  v18 = v17[10];
  *&a4[v18] = swift_getKeyPath();
  sub_10002E87C(&unk_100103200);
  swift_storeEnumTagMultiPayload();
  v19 = v17[11];
  *&a4[v19] = swift_getKeyPath();
  sub_10002E87C(&qword_1000FF640);
  swift_storeEnumTagMultiPayload();
  v15(a4, v14, v11);
  a4[v17[5]] = v23;
  *&a4[v17[6]] = a5;
  *&a4[v17[9]] = v24;
  v20 = &a4[v17[7]];
  *v20 = sub_1000AF958;
  v20[1] = v16;
  swift_retain_n();
  AutoShortcutAppSection.bundleIdentifier.getter();
  (*(v25 + 104))(v10, enum case for TopHitCollectionViewStyle.library(_:), v26);
  TopHitViewColorScheme.init(bundleIdentifier:style:)();

  (*(v12 + 8))(v14, v11);
}

uint64_t sub_10001D338()
{
  swift_weakDestroy();
  sub_100003A00();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001D37C()
{
  sub_100006360();
  sub_10002E87C(v1);
  sub_100003EC8();
  v2 = sub_100005BCC();
  v3(v2);
  return v0;
}

uint64_t sub_10001D3E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AggregatedEntry();
  sub_100002EE0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10001D450(v5, a1);
}

uint64_t sub_10001D450@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AggregatedEntry();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LibraryMenu();
  __chkstk_darwin(v8);
  (*(v5 + 16))(v7, a1, v4);
  LibraryMenu.init(entry:)();
  sub_10001D5C4(&qword_100101040, &type metadata accessor for LibraryMenu);
  result = AnyView.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_10001D5C4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10001D60C(id *a1)
{
  v1 = *a1;
  result = [*a1 alpha];
  if (v3 == 0.5)
  {

    return [v1 setAlpha:0.0];
  }

  return result;
}

id sub_10001D6CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryCell();
  return objc_msgSendSuper2(&v2, "isSelected");
}

void sub_10001D700()
{
  if (!qword_100102920)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100102920);
    }
  }
}

void sub_10001D798()
{
  type metadata accessor for AggregatedEntry();
  if (v0 <= 0x3F)
  {
    sub_10001D700();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001D81C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LibraryCell();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_hostingView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    sub_10001C820();

    v4 = sub_100017370();
    [v5 v6];
  }

  v7 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1000AE758(v8);
    [v0 setBackgroundColor:v9];
  }

  else
  {
    [v0 setBackgroundColor:0];
  }
}

uint64_t sub_10001D944(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10001D95C()
{
  result = qword_1001028A8;
  if (!qword_1001028A8)
  {
    sub_100041CB4(&qword_1001027D8);
    sub_100009624(&qword_1001028B0, &qword_1001027C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001028A8);
  }

  return result;
}

void *AppShortcutChiclet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10002E87C(&qword_1001027C8);
  v5 = sub_100002EE0(v4);
  __chkstk_darwin(v5);
  v7 = &__src[-v6];
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_10002E87C(&qword_1001027D0);
  sub_10001DC34(v2, &v7[*(v8 + 44)]);
  type metadata accessor for AppShortcutChiclet(0);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000CB78(v7, a1, &qword_1001027C8);
  v9 = sub_10002E87C(&qword_1001027D8);
  return memcpy((a1 + *(v9 + 36)), __src, 0x70uLL);
}

uint64_t sub_10001DC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for AppShortcutChiclet(0);
  v67 = *(v3 - 8);
  __chkstk_darwin(v3);
  v70 = v4;
  v72 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002E87C(&qword_1001029B0);
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v7 = v54 - v6;
  v8 = type metadata accessor for TopHitCollectionViewStyle();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v59 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10002E87C(&qword_1001029B8);
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = v54 - v10;
  v64 = sub_10002E87C(&qword_1001029C0);
  v11 = __chkstk_darwin(v64);
  v73 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v63 = v54 - v14;
  __chkstk_darwin(v13);
  v71 = v54 - v15;
  v55 = sub_10002E87C(&qword_1001029C8);
  __chkstk_darwin(v55);
  v17 = v54 - v16;
  v18 = sub_10002E87C(&qword_1001029D0);
  __chkstk_darwin(v18);
  v20 = v54 - v19;
  v21 = type metadata accessor for AutoShortcutAppSection.SectionType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002E87C(&qword_1001029D8);
  v26 = __chkstk_darwin(v25 - 8);
  v60 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v54 - v28;
  v68 = v3;
  if (*(a1 + *(v3 + 20)) == 1)
  {
    AutoShortcutAppSection.sectionType.getter();
    if ((*(v22 + 88))(v24, v21) == enum case for AutoShortcutAppSection.SectionType.categorized(_:))
    {
      v30 = (*(v22 + 96))(v24, v21);
      v54[2] = v54;
      v54[1] = *(v24 + 1);
      v31 = __chkstk_darwin(v30);
      __chkstk_darwin(v31);
      sub_10002E87C(&qword_100102A18);
      sub_1000A54B4();
      Label.init(title:icon:)();

      v32 = static Font.title3.getter();
      KeyPath = swift_getKeyPath();
      v34 = &v17[*(v55 + 36)];
      *v34 = KeyPath;
      v34[1] = v32;
      static Font.Weight.semibold.getter();
      sub_1000A5778();
      View.fontWeight(_:)();
      sub_100083220(v17, &qword_1001029C8);
      v35 = static Edge.Set.all.getter();
      v36 = &v20[*(v18 + 36)];
      *v36 = v35;
      *(v36 + 8) = xmmword_1000C5DD0;
      *(v36 + 24) = xmmword_1000C5DE0;
      v36[40] = 0;
      sub_10000CB78(v20, v29, &qword_1001029D0);
      v37 = 0;
    }

    else
    {
      (*(v22 + 8))(v24, v21);
      v37 = 1;
    }

    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v38 = 1;
    v37 = 1;
  }

  v56 = v29;
  sub_1000042A8(v29, v37, 1, v18);
  (*(v57 + 104))(v59, enum case for TopHitCollectionViewStyle.library(_:), v58);
  AutoShortcutAppSection.items.getter();
  sub_10001E7B8();
  *v7 = v38;
  *(v7 + 1) = v39;
  v7[16] = 0;
  (*(v61 + 104))(v7, enum case for TopHitCollectionView.Layout.grid<A, B>(_:), v62);
  TopHitViewColorScheme.platterBackgroundGradient.getter();
  v40 = v72;
  sub_10001E9A8(a1, v72);
  v41 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v42 = swift_allocObject();
  sub_10001EE58(v40, v42 + v41);
  type metadata accessor for AggregatedEntry();
  sub_10002E87C(&qword_1001029E0);
  sub_10001D5C4(&qword_1001029E8, &type metadata accessor for AggregatedEntry);
  sub_10001FFF0();
  v43 = v65;
  TopHitCollectionView.init(style:items:layout:backgroundGradient:containerWidth:content:)();
  v44 = sub_10002012C();
  v45 = v63;
  (*(v66 + 32))(v63, v43, v69);
  v46 = (v45 + *(v64 + 36));
  *v46 = v44 & 1;
  v46[1] = 0;
  v47 = v71;
  sub_10000CB78(v45, v71, &qword_1001029C0);
  v48 = v56;
  v49 = v60;
  sub_10000823C(v56, v60, &qword_1001029D8);
  v50 = v73;
  sub_10000823C(v47, v73, &qword_1001029C0);
  v51 = v74;
  sub_10000823C(v49, v74, &qword_1001029D8);
  v52 = sub_10002E87C(&qword_100102A10);
  sub_10000823C(v50, v51 + *(v52 + 48), &qword_1001029C0);
  sub_100083220(v47, &qword_1001029C0);
  sub_100083220(v48, &qword_1001029D8);
  sub_100083220(v50, &qword_1001029C0);
  return sub_100083220(v49, &qword_1001029D8);
}

uint64_t sub_10001E5AC()
{
  v1 = type metadata accessor for AppShortcutChiclet(0);
  sub_100005C58();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v0 + v4;
  type metadata accessor for AutoShortcutAppSection();
  sub_1000044FC();
  (*(v8 + 8))(v0 + v4);

  v9 = v1[8];
  type metadata accessor for TopHitViewColorScheme();
  sub_1000044FC();
  (*(v10 + 8))(v0 + v4 + v9);
  v11 = v1[10];
  sub_10002E87C(&unk_100103200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    sub_1000044FC();
    (*(v12 + 8))(v7 + v11);
  }

  else
  {
  }

  v13 = v1[11];
  sub_10002E87C(&qword_1000FF640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000AB80(v7 + v13, 1, v14))
    {
      (*(*(v14 - 8) + 8))(v7 + v13, v14);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_10001E7B8()
{
  v1 = v0;
  v2 = type metadata accessor for TopHitCollectionViewStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppShortcutChiclet(0);
  v7 = *(v1 + *(v6 + 24));
  (*(v3 + 104))(v5, enum case for TopHitCollectionViewStyle.library(_:), v2);
  TopHitCollectionViewStyle.contentViewHorizontalPadding.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  result = static TopHitViewMetrics.width.getter();
  v12 = *(v1 + *(v6 + 36));
  if (v12 <= 2)
  {
    v12 = 2;
  }

  if (v12 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = (v7 - (v9 + v9)) / v11;
  if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutChiclet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EA0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10002E87C(&qword_100103050);
  return sub_10001EA60(v1, a1 + *(v3 + 44));
}

uint64_t sub_10001EA60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002E87C(&qword_100103058);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6 - 8];
  v8 = sub_10002E87C(&qword_100103060);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v25[-v12 - 8];
  v14 = sub_10002E87C(&qword_100103068);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v15);
  v19 = &v25[-v18 - 8];
  sub_10001EEBC(&v25[-v18 - 8]);
  if (a1[5])
  {
    v20 = swift_allocObject();
    memcpy((v20 + 16), a1, 0x48uLL);
    sub_100021258(a1, v25);
    sub_10002E87C(&qword_100100D58);
    sub_1000212A0();
    Button.init(action:label:)();
    (*(v5 + 32))(v13, v7, v4);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_1000042A8(v13, v21, 1, v4);
  sub_10001ED94();
  sub_10001D37C();
  sub_10001ED94();
  v22 = a2 + *(sub_10002E87C(&unk_100103070) + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_10001D37C();
  sub_1000069B0(v13, &qword_100103060);
  sub_10001EDF4(v19);
  sub_1000069B0(v11, &qword_100103060);
  return sub_10001EDF4(v17);
}

uint64_t sub_10001ED94()
{
  sub_100006360();
  sub_10002E87C(&qword_100103068);
  sub_100003EC8();
  v1 = sub_100005BCC();
  v2(v1);
  return v0;
}

uint64_t sub_10001EDF4(uint64_t a1)
{
  sub_10002E87C(&qword_100103068);
  sub_100003EC8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10001EE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutChiclet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EEBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v44 = sub_10002E87C(&qword_100103098);
  __chkstk_darwin(v44);
  v48 = &v38 - v3;
  v45 = sub_10002E87C(&qword_1001030A0);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = &v38 - v4;
  v47 = sub_10002E87C(&qword_1001030A8);
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v41 = &v38 - v5;
  v6 = sub_10002E87C(&qword_100103068);
  __chkstk_darwin(v6 - 8);
  v46 = &v38 - v7;
  v8 = type metadata accessor for AccessibilityTraits();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002E87C(&qword_1001030B0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = sub_10002E87C(&qword_1001030B8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = v2[7];
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0x4018000000000000;
  v14[16] = 0;
  v19 = sub_10002E87C(&qword_1001030C0);
  sub_10001F5B8(v2, v18 != 0, &v14[*(v19 + 44)]);
  v20 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v21 = &v14[*(v12 + 36)];
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  static AccessibilityTraits.isHeader.getter();
  sub_100021010();
  View.accessibilityAddTraits(_:)();
  (*(v9 + 8))(v11, v8);
  sub_1000069B0(v14, &qword_1001030B0);
  if (v18)
  {
    v26 = swift_allocObject();
    v27 = memcpy((v26 + 16), v2, 0x48uLL);
    __chkstk_darwin(v27);
    *(&v38 - 2) = v17;
    sub_100021258(v2, &v50);
    sub_10002119C();
    v28 = v40;
    v39 = v17;
    Button.init(action:label:)();
    v29 = sub_10000966C(&qword_1001030E0, &qword_1001030A0);
    v30 = sub_100021144();
    v31 = v41;
    v32 = v45;
    View.buttonStyle<A>(_:)();
    (*(v42 + 8))(v28, v32);
    v33 = v43;
    v34 = v47;
    (*(v43 + 16))(v48, v31, v47);
    swift_storeEnumTagMultiPayload();
    v50 = v32;
    v51 = &type metadata for HeaderButtonStyle;
    v52 = v29;
    v53 = v30;
    swift_getOpaqueTypeConformance2();
    v17 = v39;
    _ConditionalContent<>.init(storage:)();
    (*(v33 + 8))(v31, v34);
  }

  else
  {
    sub_10001D37C();
    swift_storeEnumTagMultiPayload();
    v35 = sub_10000966C(&qword_1001030E0, &qword_1001030A0);
    v36 = sub_100021144();
    v50 = v45;
    v51 = &type metadata for HeaderButtonStyle;
    v52 = v35;
    v53 = v36;
    swift_getOpaqueTypeConformance2();
    sub_10002119C();
    _ConditionalContent<>.init(storage:)();
  }

  sub_10001F554();
  return sub_1000069B0(v17, &qword_1001030B8);
}

uint64_t sub_10001F554()
{
  sub_100006360();
  sub_10002E87C(&qword_100103068);
  sub_100003EC8();
  v1 = sub_100005BCC();
  v2(v1);
  return v0;
}

uint64_t sub_10001F5B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v80) = a2;
  v81 = a3;
  v79 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for UIListContentConfiguration();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002E87C(&qword_100103100);
  __chkstk_darwin(v72);
  v73 = &v69 - v6;
  v70 = type metadata accessor for IconView.DisplayMode();
  v7 = *(v70 - 8);
  __chkstk_darwin(v70);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IconSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for IconView();
  v71 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002E87C(&qword_100103108);
  v18 = __chkstk_darwin(v17 - 8);
  v82 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v69 - v20;
  v22 = a1;
  v23 = *(a1 + 16);
  v83 = &v69 - v20;
  if (v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v26 = round(*(v22 + 24) * 1.35);
      *v13 = v26;
      v13[1] = v26;
      (*(v11 + 104))(v13, enum case for IconSize.custom(_:), v10);
      v27 = v23;
      *v9 = [v25 symbolColor];
      v9[8] = 0;
      (*(v7 + 104))(v9, enum case for IconView.DisplayMode.customColor(_:), v70);
    }

    else
    {
      *v13 = *(v22 + 24);
      (*(v11 + 104))(v13, enum case for IconSize.custom(_:), v10);
      (*(v7 + 104))(v9, enum case for IconView.DisplayMode.default(_:), v70);
      v27 = v23;
    }

    IconView.init(_:size:displayMode:animated:)();
    v28 = v71;
    (*(v71 + 16))(v73, v16, v14);
    swift_storeEnumTagMultiPayload();
    sub_10000F668(&unk_100103130, &type metadata accessor for IconView);
    v32 = v83;
    _ConditionalContent<>.init(storage:)();

    (*(v28 + 8))(v16, v14);
    v29 = sub_10002E87C(&unk_100103110);
    v30 = v32;
    v31 = 0;
  }

  else
  {
    v29 = sub_10002E87C(&unk_100103110);
    v30 = v21;
    v31 = 1;
  }

  sub_1000042A8(v30, v31, 1, v29);
  v33 = *(v22 + 8);
  v85 = *v22;
  v86 = v33;
  sub_1000200D8();

  v34 = Text.init<A>(_:)();
  v36 = v35;
  LOBYTE(v33) = v37;
  v38 = v74;
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v39 = v77;
  UIListContentConfiguration.textProperties.getter();
  (*(v75 + 8))(v38, v76);
  UIListContentConfiguration.TextProperties.font.getter();
  (*(v78 + 8))(v39, v79);
  Font.init(_:)();
  v40 = Text.font(_:)();
  v79 = v41;
  v43 = v42;
  v45 = v44;

  sub_10002072C(v34, v36, v33 & 1);

  LODWORD(v78) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v43 & 1;
  LOBYTE(v85) = v43 & 1;
  LOBYTE(__src[0]) = 0;
  if (v80)
  {
    v55 = Image.init(systemName:)();
    v56 = static HierarchicalShapeStyle.secondary.getter();
    static Font.callout.getter();
    static Font.Weight.semibold.getter();
    v57 = Font.weight(_:)();

    KeyPath = swift_getKeyPath();
    v59 = v56;
  }

  else
  {
    v55 = 0;
    v59 = 0;
    KeyPath = 0;
    v57 = 0;
  }

  sub_10001D37C();
  v60 = v81;
  sub_10001D37C();
  v61 = sub_10002E87C(&unk_100103120);
  v62 = *(v61 + 48);
  __src[0] = v40;
  v63 = v79;
  __src[1] = v79;
  LODWORD(v77) = v54;
  LOBYTE(__src[2]) = v54;
  v80 = v40;
  *(&__src[2] + 1) = *v98;
  HIDWORD(__src[2]) = *&v98[3];
  __src[3] = v45;
  v64 = v78;
  LOBYTE(__src[4]) = v78;
  *(&__src[4] + 1) = *v97;
  HIDWORD(__src[4]) = *&v97[3];
  __src[5] = v47;
  __src[6] = v49;
  __src[7] = v51;
  __src[8] = v53;
  LOBYTE(__src[9]) = 0;
  memcpy((v60 + v62), __src, 0x49uLL);
  v65 = *(v61 + 64);
  v66 = v45;
  v67 = (v60 + v65);
  sub_10001D37C();
  sub_10002073C(v55);
  sub_10002078C(v55);
  *v67 = v55;
  v67[1] = v59;
  v67[2] = KeyPath;
  v67[3] = v57;
  sub_1000069B0(v83, &qword_100103108);
  sub_10002078C(v55);
  v85 = v80;
  v86 = v63;
  v87 = v77;
  *v88 = *v98;
  *&v88[3] = *&v98[3];
  v89 = v66;
  v90 = v64;
  *v91 = *v97;
  *&v91[3] = *&v97[3];
  v92 = v47;
  v93 = v49;
  v94 = v51;
  v95 = v53;
  v96 = 0;
  sub_1000069B0(&v85, &qword_100101C90);
  return sub_1000069B0(v82, &qword_100103108);
}

unint64_t sub_10001FFF0()
{
  result = qword_1001029F0;
  if (!qword_1001029F0)
  {
    sub_100041CB4(&qword_1001029E0);
    sub_100009624(&qword_1001029F8, &qword_100102A00);
    sub_10001D5C4(&qword_100102A08, type metadata accessor for EntryAnnotationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001029F0);
  }

  return result;
}

unint64_t sub_1000200D8()
{
  result = qword_1001001C8;
  if (!qword_1001001C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001001C8);
  }

  return result;
}

uint64_t sub_10002012C()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002E87C(&qword_100102A40);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10002E87C(&qword_1000FF770);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  type metadata accessor for AppShortcutChiclet(0);
  sub_10002054C(v15);
  (*(v1 + 104))(v13, enum case for UserInterfaceSizeClass.regular(_:), v0);
  sub_1000042A8(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_10000823C(v15, v6, &qword_1000FF770);
  sub_10000823C(v13, &v6[v16], &qword_1000FF770);
  if (sub_10000AB80(v6, 1, v0) != 1)
  {
    sub_10000823C(v6, v10, &qword_1000FF770);
    if (sub_10000AB80(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_10001D5C4(&qword_100102A48, &type metadata accessor for UserInterfaceSizeClass);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_100083220(v13, &qword_1000FF770);
      sub_100083220(v15, &qword_1000FF770);
      v20(v10, v0);
      sub_100083220(v6, &qword_1000FF770);
      return v17 & 1;
    }

    sub_100083220(v13, &qword_1000FF770);
    sub_100083220(v15, &qword_1000FF770);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_100083220(v13, &qword_1000FF770);
  sub_100083220(v15, &qword_1000FF770);
  if (sub_10000AB80(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100083220(v6, &qword_100102A40);
    v17 = 0;
    return v17 & 1;
  }

  sub_100083220(v6, &qword_1000FF770);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10002054C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002E87C(&qword_1000FF640);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_10000823C(v2, &v13 - v9, &qword_1000FF640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000CB78(v10, a1, &qword_1000FF770);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002072C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002073C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002078C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000207D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v54 = a3;
  v4 = type metadata accessor for AppShortcutChiclet(0);
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = v5;
  v53 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AggregatedEntry();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = v8;
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TopHitViewColorScheme();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002E87C(&qword_100102A50);
  __chkstk_darwin(v14 - 8);
  v16 = v39 - v15;
  v17 = sub_10002E87C(&qword_100102A00);
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin(v17);
  v47 = v39 - v18;
  v45 = AggregatedEntry.entryIcon.getter();
  v19 = type metadata accessor for TopHitIconMask();
  v46 = v16;
  sub_1000042A8(v16, 1, 1, v19);
  v44 = AggregatedEntry.iconBadges.getter();
  v20 = AggregatedEntry.shortTitle.getter();
  if (!v21)
  {
    v20 = AggregatedEntry.name.getter();
  }

  v42 = v21;
  v43 = v20;
  v22 = *(v11 + 16);
  v23 = v56 + *(v4 + 32);
  v39[1] = v13;
  v22(v13, v23, v10);
  v24 = *(v7 + 16);
  v55 = v7 + 16;
  v24(v9, a1, v6);
  v40 = a1;
  v41 = v24;
  v25 = *(v7 + 80);
  v39[0] = swift_allocObject();
  v26 = *(v7 + 32);
  v26(v39[0] + ((v25 + 16) & ~v25), v9, v6);
  v27 = v53;
  sub_10001E9A8(v56, v53);
  v28 = a1;
  v29 = v6;
  v24(v9, v28, v6);
  v30 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v31 = (v51 + v25 + v30) & ~v25;
  v32 = swift_allocObject();
  sub_10001EE58(v27, v32 + v30);
  v26(v32 + v31, v9, v29);
  v33 = v47;
  TopHitView.init(icon:iconMask:badges:name:colorScheme:menu:tapHandler:)();
  v34 = sub_10002E87C(&qword_1001029E0);
  v35 = v54;
  v36 = v54 + *(v34 + 36);
  v41(v36, v40, v29);
  v37 = v36 + *(type metadata accessor for EntryAnnotationModifier(0) + 20);
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  return (*(v49 + 32))(v35, v33, v50);
}

uint64_t sub_100020CB8()
{
  type metadata accessor for AggregatedEntry();
  sub_1000044FC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100020D34()
{
  v1 = type metadata accessor for AppShortcutChiclet(0);
  sub_100005C58();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v22 = *(v5 + 64);
  v6 = type metadata accessor for AggregatedEntry();
  sub_100004458();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);
  v12 = v0 + v4;
  type metadata accessor for AutoShortcutAppSection();
  sub_1000044FC();
  (*(v13 + 8))(v0 + v4);

  v14 = v1[8];
  type metadata accessor for TopHitViewColorScheme();
  sub_1000044FC();
  (*(v15 + 8))(v0 + v4 + v14);
  v16 = v1[10];
  sub_10002E87C(&unk_100103200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    sub_1000044FC();
    (*(v17 + 8))(v12 + v16);
  }

  else
  {
  }

  v18 = v1[11];
  sub_10002E87C(&qword_1000FF640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000AB80(v12 + v18, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v12 + v18, v19);
    }
  }

  else
  {
  }

  v20 = (v4 + v22 + v9) & ~v9;
  (*(v8 + 8))(v0 + v20, v6);

  return _swift_deallocObject(v0, v20 + v11, v3 | v9 | 7);
}

uint64_t sub_100020FB8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLockedByAppProtection.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100021010()
{
  result = qword_1001030C8;
  if (!qword_1001030C8)
  {
    sub_100041CB4(&qword_1001030B0);
    sub_10000966C(&qword_1001030D0, &qword_1001030D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001030C8);
  }

  return result;
}

uint64_t sub_1000210C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppShortcutChiclet(0);
  sub_100002EE0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1000207D8(a1, v7, a2);
}

unint64_t sub_100021144()
{
  result = qword_1001030E8;
  if (!qword_1001030E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001030E8);
  }

  return result;
}

unint64_t sub_10002119C()
{
  result = qword_1001030F0;
  if (!qword_1001030F0)
  {
    sub_100041CB4(&qword_1001030B8);
    sub_100021010();
    sub_10000F668(&qword_100101C68, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001030F0);
  }

  return result;
}

unint64_t sub_1000212A0()
{
  result = qword_100103080;
  if (!qword_100103080)
  {
    sub_100041CB4(&qword_100100D58);
    sub_100009624(&qword_100100D60, &qword_100103090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103080);
  }

  return result;
}

unint64_t sub_100021358()
{
  result = qword_1001007E8;
  if (!qword_1001007E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007E8);
  }

  return result;
}

uint64_t sub_1000213AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Font.title3.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_100021404@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100021488()
{
  result = qword_100100800;
  if (!qword_100100800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100800);
  }

  return result;
}

uint64_t sub_1000214DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryViewController();
  objc_msgSendSuper2(&v2, "viewWillLayoutSubviews");
  return sub_100017AA4();
}

void sub_100021518(void *a1)
{
  type metadata accessor for TipController.UseSiriToRunShortcutTip();
  [objc_opt_self() isHeySiriEnabled];
  Tips.Parameter.init<A>(_:_:_:_:)();
  sub_10002E87C(&qword_100100300);
  sub_100003F04();
  sub_100027864(v2, v3);
  sub_10000520C();
  v7 = sub_100027864(v4, v5);
  Tips.Parameter.init<A>(_:_:_:_:)();
  v6 = [a1 mostRunOrLatestImportedVisibleShortcut];
  sub_100027B38(v6);
}

uint64_t sub_1000216B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1000216F8()
{
  result = qword_100100808;
  if (!qword_100100808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100808);
  }

  return result;
}

unint64_t sub_100021754()
{
  result = qword_100100550;
  if (!qword_100100550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100550);
  }

  return result;
}

unint64_t sub_1000217B0()
{
  result = qword_1001007F0;
  if (!qword_1001007F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007F0);
  }

  return result;
}

unint64_t sub_100021808()
{
  result = qword_100100810;
  if (!qword_100100810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100810);
  }

  return result;
}

unint64_t sub_10002185C()
{
  result = qword_100100828;
  if (!qword_100100828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100828);
  }

  return result;
}

unint64_t sub_1000218B4()
{
  result = qword_1001007F8;
  if (!qword_1001007F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001007F8);
  }

  return result;
}

unint64_t sub_10002192C()
{
  result = qword_100102A58;
  if (!qword_100102A58)
  {
    sub_100041CB4(&qword_100102A60);
    sub_100009624(&qword_100102998, &qword_100102988);
    sub_1000219E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102A58);
  }

  return result;
}

unint64_t sub_1000219E4()
{
  result = qword_1001029A8;
  if (!qword_1001029A8)
  {
    sub_100041CB4(&qword_100102978);
    sub_100021A9C();
    sub_100009624(&qword_100102998, &qword_100102988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001029A8);
  }

  return result;
}

unint64_t sub_100021A9C()
{
  result = qword_100102990;
  if (!qword_100102990)
  {
    sub_100041CB4(&qword_100102968);
    sub_100041CB4(&qword_100102988);
    sub_100009624(&qword_100102998, &qword_100102988);
    sub_100021C0C();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AppShortcutEntity();
    sub_10001D5C4(&qword_1001029A0, &type metadata accessor for AppShortcutEntity);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102990);
  }

  return result;
}

unint64_t sub_100021C0C()
{
  result = qword_1000FF5A0;
  if (!qword_1000FF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF5A0);
  }

  return result;
}

uint64_t sub_100021C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v80 = a2;
  v70 = sub_10002E87C(&qword_100102950);
  v60 = *(v70 - 8);
  __chkstk_darwin(v70);
  v62 = &v59 - v3;
  v72 = sub_10002E87C(&qword_100102958);
  __chkstk_darwin(v72);
  v75 = &v59 - v4;
  v66 = sub_10002E87C(&qword_100102960);
  __chkstk_darwin(v66);
  v68 = &v59 - v5;
  v73 = sub_10002E87C(&qword_100102968);
  __chkstk_darwin(v73);
  v69 = &v59 - v6;
  v65 = type metadata accessor for AppEntityVisualState();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10002E87C(&qword_100102970);
  v61 = *(v67 - 8);
  __chkstk_darwin(v67);
  v71 = &v59 - v8;
  v9 = type metadata accessor for AggregatedEntry();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_10002E87C(&qword_100102978);
  __chkstk_darwin(v79);
  v74 = &v59 - v13;
  v77 = sub_10002E87C(&qword_100102980);
  __chkstk_darwin(v77);
  v78 = &v59 - v14;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2 + *(type metadata accessor for EntryAnnotationModifier(0) + 20);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A549C(v20, 0);
    (*(v16 + 8))(v18, v15);
    if (v81 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v40 = sub_10002E87C(&qword_100102988);
    (*(*(v40 - 8) + 16))(v78, v76, v40);
    swift_storeEnumTagMultiPayload();
    sub_100009624(&qword_100102998, &qword_100102988);
    sub_1000219E4();
    return _ConditionalContent<>.init(storage:)();
  }

  if (v20)
  {
    goto LABEL_6;
  }

LABEL_3:
  (*(v10 + 16))(v12, v2, v9);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == enum case for AggregatedEntry.userShortcut(_:))
  {
    (*(v10 + 96))(v12, v9);
    v22 = *v12;
    v62 = v22;
    v23 = WFDatabaseObjectDescriptor.id.getter();
    v25 = v24;

    v81 = v23;
    v82 = v25;
    v85 = &_swiftEmptyArrayStorage;
    sub_10001D5C4(&qword_100100F30, &type metadata accessor for AppEntityVisualState);
    sub_10002E87C(&unk_100103260);
    sub_100009624(&qword_100100F38, &unk_100103260);
    v26 = v63;
    v27 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = sub_10002E87C(&qword_100102988);
    v29 = sub_100009624(&qword_100102998, &qword_100102988);
    v30 = sub_100021C0C();
    v31 = v71;
    View.appEntity<A>(entityType:identifier:state:)();
    (*(v64 + 8))(v26, v27);

    v32 = v61;
    v33 = v31;
    v34 = v67;
    (*(v61 + 16))(v68, v33, v67);
    swift_storeEnumTagMultiPayload();
    v81 = v28;
    v82 = &type metadata for WorkflowEntity;
    v83 = v29;
    v84 = v30;
    swift_getOpaqueTypeConformance2();
    v35 = type metadata accessor for AppShortcutEntity();
    v36 = sub_10001D5C4(&qword_1001029A0, &type metadata accessor for AppShortcutEntity);
    v81 = v28;
    v82 = v35;
    v83 = v29;
    v84 = v36;
    swift_getOpaqueTypeConformance2();
    v37 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_10000823C(v37, v75, &qword_100102968);
    swift_storeEnumTagMultiPayload();
    sub_100021A9C();
    v38 = v74;
    _ConditionalContent<>.init(storage:)();

    sub_100083220(v37, &qword_100102968);
    (*(v32 + 8))(v71, v34);
  }

  else
  {
    v38 = v74;
    if (v21 == enum case for AggregatedEntry.appShortcut(_:))
    {
      (*(v10 + 96))(v12, v9);
      v71 = *v12;
      v42 = v71;
      v61 = type metadata accessor for AppShortcutEntity();
      v43 = [v42 id];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v81 = v44;
      v82 = v46;
      v85 = &_swiftEmptyArrayStorage;
      sub_10001D5C4(&qword_100100F30, &type metadata accessor for AppEntityVisualState);
      sub_10002E87C(&unk_100103260);
      sub_100009624(&qword_100100F38, &unk_100103260);
      v47 = v63;
      v48 = v65;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v49 = sub_10002E87C(&qword_100102988);
      v50 = sub_100009624(&qword_100102998, &qword_100102988);
      v51 = sub_10001D5C4(&qword_1001029A0, &type metadata accessor for AppShortcutEntity);
      v52 = v62;
      v53 = v61;
      View.appEntity<A>(entityType:identifier:state:)();
      (*(v64 + 8))(v47, v48);

      v54 = v60;
      v55 = v70;
      (*(v60 + 16))(v68, v52, v70);
      swift_storeEnumTagMultiPayload();
      v56 = sub_100021C0C();
      v81 = v49;
      v82 = &type metadata for WorkflowEntity;
      v83 = v50;
      v84 = v56;
      swift_getOpaqueTypeConformance2();
      v81 = v49;
      v82 = v53;
      v83 = v50;
      v84 = v51;
      swift_getOpaqueTypeConformance2();
      v57 = v69;
      _ConditionalContent<>.init(storage:)();
      sub_10000823C(v57, v75, &qword_100102968);
      swift_storeEnumTagMultiPayload();
      sub_100021A9C();
      _ConditionalContent<>.init(storage:)();

      sub_100083220(v57, &qword_100102968);
      (*(v54 + 8))(v62, v55);
    }

    else
    {
      v58 = sub_10002E87C(&qword_100102988);
      (*(*(v58 - 8) + 16))(v75, v76, v58);
      swift_storeEnumTagMultiPayload();
      sub_100021A9C();
      sub_100009624(&qword_100102998, &qword_100102988);
      _ConditionalContent<>.init(storage:)();
      (*(v10 + 8))(v12, v9);
    }
  }

  sub_10000823C(v38, v78, &qword_100102978);
  swift_storeEnumTagMultiPayload();
  sub_10002E87C(&qword_100102988);
  sub_100009624(&qword_100102998, &qword_100102988);
  sub_1000219E4();
  _ConditionalContent<>.init(storage:)();
  return sub_100083220(v38, &qword_100102978);
}

unint64_t sub_100022A90(Swift::UInt a1, double a2)
{
  Hasher.init(_seed:)();
  sub_100022C34(&v6, a1, a2);
  v4 = Hasher._finalize()();

  return sub_100022C7C(a1, v4, a2);
}

unint64_t sub_100022B10(Swift::UInt a1, char a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  sub_100022A90(a1, a5);
  sub_100009610();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  sub_10002E87C(&qword_100103278);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a2 & 1, v12);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_100022A90(a1, a5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_5:
  if (v17)
  {
    v20 = (*(*v6 + 56) + 16 * v16);
    *v20 = a3;
    v20[1] = a4;
  }

  else
  {
    v21 = sub_10000F430();

    return sub_100022D04(v21, v22, v23, a5, a3, a4);
  }

  return result;
}

void sub_100022C34(int a1, Swift::UInt a2, double a3)
{
  Hasher._combine(_:)(a2);
  v4 = 0.0;
  if (a3 != 0.0)
  {
    v4 = a3;
  }

  Hasher._combine(_:)(*&v4);
}

unint64_t sub_100022C7C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = -1 << *(v3 + 32);
  result = a2 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8) == a3 && *v8 == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100022D04(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v6 = a3[6] + 16 * result;
  *v6 = a2;
  *(v6 + 8) = a4;
  v7 = (a3[7] + 16 * result);
  *v7 = a5;
  v7[1] = a6;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

Swift::Int sub_100022D54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  sub_100022C34(&v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_100022DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100022EFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
    v6 = v5;

    if (v5)
    {
      LibraryLayoutMode.symbolName.getter();
      v7 = String._bridgeToObjectiveC()();

      [v6 setSymbolName:v7 pointSizeToWidthRatio:3.3];
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
    v11 = v10;

    if (v10)
    {
      v12 = LibraryLayoutMode.accessibilityLabel.getter();
      sub_1000163E0(v12, v13, v11);
    }
  }

  v14 = objc_opt_self();
  v16[4] = sub_10002445C;
  v16[5] = a2;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100003190;
  v16[3] = &unk_1000F3AD0;
  v15 = _Block_copy(v16);

  [v14 animateWithDuration:v15 animations:0.125];
  _Block_release(v15);
}

id sub_1000230B0()
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LibraryViewController.LibraryFlowLayout();
  v2 = objc_msgSendSuper2(&v5, "layoutAttributesForItemAtIndexPath:", isa);

  if (v2)
  {
    v3 = v2;
    [v3 setZIndex:IndexPath.item.getter()];
  }

  return v2;
}

id sub_100023148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_100023314(a1, a2, a3, a4);

  return v10;
}

void sub_1000231FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
    v3 = v2;

    if (v2)
    {
      v4 = [v3 imageView];

      if (v4)
      {
        v9[0] = 0x3FF0000000000000;
        v9[1] = 0;
        v9[2] = 0;
        v9[3] = 0x3FF0000000000000;
        v9[4] = 0;
        v9[5] = 0;
        [v4 setTransform:v9];
      }
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
    v8 = v7;

    if (v7)
    {
      [v8 setAlpha:1.0];
    }
  }
}

id sub_100023314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v147 = a2;
  v148 = a3;
  v146 = a1;
  v132 = type metadata accessor for LibrarySectionOptions.Footer();
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v133 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for AutoShortcutApp();
  v128 = *(v129 - 8);
  v7 = __chkstk_darwin(v129);
  v126 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v8;
  __chkstk_darwin(v7);
  v127 = &v122 - v9;
  v10 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v141 = *(v10 - 8);
  v142 = v10;
  v11 = __chkstk_darwin(v10);
  v140 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v139 = &v122 - v13;
  v14 = type metadata accessor for LibrarySectionOptions();
  v137 = *(v14 - 8);
  v138 = v14;
  __chkstk_darwin(v14);
  v136 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LibrarySectionOptions.Header();
  v144 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = (&v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_10002E87C(&unk_100102410);
  __chkstk_darwin(v19 - 8);
  v21 = &v122 - v20;
  v22 = type metadata accessor for ShortcutsLibrarySection();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v131 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v122 - v27;
  v143 = v4;
  sub_10000E8F4(v26);
  v145 = a4;
  IndexPath.section.getter();
  sub_10001AB2C();

  if (sub_10000AB80(v21, 1, v22) == 1)
  {
    sub_1000069B0(v21, &unk_100102410);
    return 0;
  }

  v124 = v23;
  v123 = *(v23 + 32);
  v123(v28, v21, v22);
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v147;
  v33 = v148;
  v34 = v30 == v147 && v31 == v148;
  v130 = v22;
  v135 = v28;
  if (v34)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v32 && v36 == v33)
      {

        v39 = v124;
        v41 = v133;
        v40 = v134;
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v39 = v124;
        v41 = v133;
        v40 = v134;
        if ((v38 & 1) == 0)
        {
          (*(v124 + 8))(v135, v130);
          return 0;
        }
      }

      v93 = v135;
      ShortcutsLibrarySection.footer.getter();
      v94 = v132;
      if ((*(v40 + 88))(v41, v132) != enum case for LibrarySectionOptions.Footer.spacer(_:))
      {
        (*(v39 + 8))(v93, v130);
        (*(v40 + 8))(v41, v94);
        return 0;
      }

      v95 = String._bridgeToObjectiveC()();
      v96 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v29 = [v146 dequeueReusableSupplementaryViewOfKind:v95 withReuseIdentifier:v96 forIndexPath:isa];

      goto LABEL_41;
    }
  }

  ShortcutsLibrarySection.header.getter();
  v42 = v144;
  v43 = (v144)[11](v18, v16);
  if (v43 != enum case for LibrarySectionOptions.Header.nameAndIconName(_:))
  {
    if (v43 == enum case for LibrarySectionOptions.Header.appAttributedUserShortcut(_:))
    {
      (v42)[12](v18, v16);
      v65 = *v18;
      v66 = v18[1];
      v67 = String._bridgeToObjectiveC()();
      v68 = String._bridgeToObjectiveC()();
      v69 = IndexPath._bridgeToObjectiveC()().super.isa;
      v70 = [v146 dequeueReusableSupplementaryViewOfKind:v67 withReuseIdentifier:v68 forIndexPath:v69];

      _s14descr1000EF9A1C17SectionHeaderViewCMa();
      v29 = swift_dynamicCastClassUnconditional();
      v71 = String._bridgeToObjectiveC()();
      v72 = String._bridgeToObjectiveC()();
      v73 = sub_100005D9C(v71);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002E87C(&qword_1001000D0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1000C0C20;
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = sub_100041A78();
      *(v74 + 32) = v65;
      *(v74 + 40) = v66;
      v75 = String.init(format:_:)();
      v77 = v76;

      v78 = [objc_opt_self() tintColor];
      v79 = [objc_allocWithZone(WFColor) initWithPlatformColor:v78];

      sub_100028F94(v75, v77, 0x662E6E6F73726570, 0xEB000000006C6C69, v80, 0, 0, 0, 0);
    }

    else
    {
      if (v43 != enum case for LibrarySectionOptions.Header.appShortcut(_:))
      {
        v39 = v124;
        if (v43 == enum case for LibrarySectionOptions.Header.tip(_:))
        {
          v98 = String._bridgeToObjectiveC()();
          if (qword_1000FF568 != -1)
          {
            swift_once();
          }

          v99 = String._bridgeToObjectiveC()();
          v100 = IndexPath._bridgeToObjectiveC()().super.isa;
          v101 = [v146 dequeueReusableSupplementaryViewOfKind:v98 withReuseIdentifier:v99 forIndexPath:v100];

          _s14descr1000EF9A1C27MiniTipCollectionHeaderViewCMa();
          v102 = swift_dynamicCastClass();
          if (!v102)
          {
          }

          v103 = sub_1000B0224(v102);
        }

        else
        {
          if (v43 != enum case for LibrarySectionOptions.Header.syncUnavailable(_:))
          {
            (*(v124 + 8))(v135, v130);
            (v42)[1](v18, v16);
            return 0;
          }

          v104 = String._bridgeToObjectiveC()();
          if (qword_1000FF560 != -1)
          {
            swift_once();
          }

          v105 = String._bridgeToObjectiveC()();
          v106 = IndexPath._bridgeToObjectiveC()().super.isa;
          v102 = [v146 dequeueReusableSupplementaryViewOfKind:v104 withReuseIdentifier:v105 forIndexPath:v106];

          _s14descr1000EF9A1C35SyncUnavailableCollectionHeaderViewCMa();
          v107 = swift_dynamicCastClass();
          if (!v107)
          {

            v29 = 0;
            goto LABEL_41;
          }

          v108 = v107;
          v109 = v143;
          sub_100033988();
          v103 = sub_1000AF960(v109, v108, v110, v111, v112, v113);
        }

        v29 = v103;

        goto LABEL_41;
      }

      (v42)[12](v18, v16);
      v81 = v128;
      v144 = *(v128 + 32);
      v82 = v127;
      v83 = v18;
      v84 = v129;
      (v144)(v127, v83, v129);
      v85 = String._bridgeToObjectiveC()();
      v86 = String._bridgeToObjectiveC()();
      v87 = IndexPath._bridgeToObjectiveC()().super.isa;
      v88 = [v146 dequeueReusableSupplementaryViewOfKind:v85 withReuseIdentifier:v86 forIndexPath:v87];

      _s14descr1000EF9A1C21AppShortcutHeaderViewCMa();
      v29 = swift_dynamicCastClassUnconditional();
      v89 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v90 = v126;
      (*(v81 + 16))(v126, v82, v84);
      v91 = (*(v81 + 80) + 24) & ~*(v81 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = v89;
      (v144)(v92 + v91, v90, v84);

      sub_1000AC2D0(v82, sub_1000AFC54, v92);

      (*(v81 + 8))(v82, v84);
    }

    v39 = v124;
    goto LABEL_41;
  }

  (v42)[12](v18, v16);
  v44 = *v18;
  v45 = v18[1];
  v133 = v18[2];
  v134 = v44;
  v144 = v18[3];
  v46 = String._bridgeToObjectiveC()();
  v47 = String._bridgeToObjectiveC()();
  v48 = IndexPath._bridgeToObjectiveC()().super.isa;
  v49 = [v146 dequeueReusableSupplementaryViewOfKind:v46 withReuseIdentifier:v47 forIndexPath:v48];

  _s14descr1000EF9A1C17SectionHeaderViewCMa();
  v29 = swift_dynamicCastClassUnconditional();
  v50 = v136;
  ShortcutsLibrarySection.options.getter();
  v51 = v139;
  LibrarySectionOptions.workflowCreationBehavior.getter();
  (*(v137 + 8))(v50, v138);
  v53 = v140;
  v52 = v141;
  v54 = v142;
  (*(v141 + 104))(v140, enum case for LibraryWorkflowCreationBehavior.none(_:), v142);
  sub_10000F668(&unk_100103240, &type metadata accessor for LibraryWorkflowCreationBehavior);
  LOBYTE(v48) = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v52 + 8);
  v55(v53, v54);
  v55(v51, v54);
  v56 = 0;
  v57 = 0;
  v39 = v124;
  if ((v48 & 1) == 0)
  {
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = v130;
    v60 = v131;
    (*(v39 + 16))(v131, v135, v130);
    v61 = (*(v39 + 80) + 24) & ~*(v39 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v58;
    v123((v57 + v61), v60, v59);
    v56 = sub_1000AFD40;
  }

  v62 = [objc_opt_self() tintColor];
  v63 = [objc_allocWithZone(WFColor) initWithPlatformColor:v62];

  sub_100028F94(v134, v45, v133, v144, v64, v56, v57, 0, 0);

  sub_10000B970(v56);
LABEL_41:
  if (_UISolariumEnabled())
  {
    if (v29)
    {
      [v29 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
    }

    goto LABEL_48;
  }

  if (!v29)
  {
LABEL_48:
    (*(v39 + 8))(v135, v130);
    return v29;
  }

  v114 = v143;
  result = [v143 view];
  if (result)
  {
    v116 = result;
    [result layoutMargins];
    v118 = v117;

    result = [v114 view];
    if (result)
    {
      v119 = result;
      [result layoutMargins];
      v121 = v120;

      [v29 setLayoutMargins:{0.0, v118, 0.0, v121}];
      goto LABEL_48;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000243C8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = sub_100024474(a1, a2);

  return v6;
}

char *sub_100024474(void *a1, uint64_t a2)
{
  v102 = a1;
  v96 = type metadata accessor for AutoShortcutAppSection();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v97 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002E87C(&unk_1001026E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v98 = (&v92 - v9);
  v99 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v99);
  v100 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for LibrarySectionOptions();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShortcutsLibraryItem.ItemType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10002E87C(&unk_1000FF9E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v92 - v17;
  v19 = type metadata accessor for ShortcutsLibraryItem();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v2;
  sub_10000E8F4(v21);
  v101 = a2;
  sub_10001ADD8();

  if (sub_10000AB80(v18, 1, v19) == 1)
  {
    sub_1000069B0(v18, &unk_1000FF9E0);
    return 0;
  }

  v20[4](v23, v18, v19);
  v25 = v19;
  ShortcutsLibraryItem.itemType.getter();
  v26 = (*(v13 + 88))(v15, v12);
  v27 = v23;
  if (v26 == enum case for ShortcutsLibraryItem.ItemType.workflow(_:))
  {
    (*(v13 + 96))(v15, v12);
    v28 = *v15;
    v29 = type metadata accessor for LibraryCell();
    v98 = v20;
    v97 = v23;
    v106[0] = v29;
    sub_10002E87C(&qword_100103218);
    String.init<A>(describing:)();
    v30 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v32 = [v102 dequeueReusableCellWithReuseIdentifier:v30 forIndexPath:isa];

    v24 = swift_dynamicCastClassUnconditional();
    v33 = v103;
    sub_100017B98(v106);
    v34 = v107;
    sub_1000182F8(v106);
    v35 = *&v24[OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference];
    *&v24[OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference] = v28;
    v36 = v28;

    v102 = v34;
    sub_10002590C(v34);
    v37 = sub_1000AE758(v36);
    [v24 setBackgroundColor:v37];

    v38 = swift_unknownObjectRetain();
    sub_1000268FC(v38, &off_1000F3D80);
    v39 = WFDatabaseObjectDescriptor.id.getter();
    v41 = v40;
    v104 = &_swiftEmptyArrayStorage;
    sub_10000F668(&qword_100100F30, &type metadata accessor for AppEntityVisualState);
    sub_10002E87C(&unk_100103260);
    sub_10000966C(&qword_100100F38, &unk_100103260);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v104 = v39;
    v105 = v41;
    v42 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
    sub_100021C0C();
    v43 = AppEntityViewAnnotation.init<A>(entityType:identifier:state:)();
    UIView.annotate(with:)();
    sub_100026B3C();

    v44 = [v33 isEditing];
    v24[OBJC_IVAR____TtC9Shortcuts11LibraryCell_isJiggling] = v44;
    sub_1000278DC();
    sub_100027CB0(v24, 0, 0, 0);

    v98[1](v97, v25);
    return v24;
  }

  v100 = v25;
  if (v26 == enum case for ShortcutsLibraryItem.ItemType.autoShortcut(_:))
  {
    v97 = v23;
    v45 = v20;
    (*(v13 + 96))(v15, v12);
    v46 = *v15;
    v106[0] = type metadata accessor for LibraryCell();
    sub_10002E87C(&qword_100103218);
    String.init<A>(describing:)();
    v47 = String._bridgeToObjectiveC()();

    v48 = IndexPath._bridgeToObjectiveC()().super.isa;
    v49 = [v102 dequeueReusableCellWithReuseIdentifier:v47 forIndexPath:v48];

    v24 = swift_dynamicCastClassUnconditional();
    v50 = v103;

    v51 = v98;
    sub_1000AADD4();

    sub_10001D37C();
    v52 = type metadata accessor for AutoShortcutApp();
    if (sub_10000AB80(v8, 1, v52) == 1)
    {
      sub_1000069B0(v8, &unk_1001026E0);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v53 = AutoShortcutApp.bundleIdentifier.getter();
      v54 = v79;
      (*(*(v52 - 8) + 8))(v8, v52);
    }

    sub_100017B98(v106);
    v80 = v107;
    sub_1000182F8(v106);
    sub_1000AFDE8(v46, v53, v54, v80, v50, v24);

    sub_1000069B0(v51, &unk_1001026E0);
    (v45[1])(v97, v100);
    return v24;
  }

  if (v26 != enum case for ShortcutsLibraryItem.ItemType.appShortcutTopHit(_:))
  {
    if (v26 == enum case for ShortcutsLibraryItem.ItemType.emptyState(_:))
    {
      (*(v13 + 96))(v15, v12);
      v81 = v93;
      v82 = v92;
      v83 = v94;
      (*(v93 + 32))(v92, v15, v94);
      v106[0] = _s14descr1000EF9A1C16EmptySectionCellCMa();
      sub_10002E87C(&qword_100103220);
      String.init<A>(describing:)();
      v84 = String._bridgeToObjectiveC()();

      v85 = IndexPath._bridgeToObjectiveC()().super.isa;
      v86 = [v102 dequeueReusableCellWithReuseIdentifier:v84 forIndexPath:v85];

      v24 = swift_dynamicCastClassUnconditional();
      sub_100017B98(v106);
      v87 = v107;
      sub_1000182F8(v106);
      v88 = [v87 floatingViewConfiguration];

      [v88 cornerRadius];
      v90 = v89;

      *&v24[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_cornerRadius] = v90;
      sub_1000AC654();
      v91 = LibrarySectionOptions.emptyStateContent.getter();
      if (v91)
      {
        sub_1000AC5F8(v91);
      }

      (*(v81 + 8))(v82, v83);
      (v20[1])(v27, v100);
      return v24;
    }

    (v20[1])(v23, v100);
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  (*(v13 + 96))(v15, v12);
  v55 = *(v15 + *(sub_10002E87C(&unk_1000FF9F0) + 48));
  v56 = v95;
  v57 = v96;
  (*(v95 + 32))(v97, v15, v96);
  v106[0] = _s14descr1000EF9A1C10TopHitCellCMa();
  sub_10002E87C(&unk_100103228);
  String.init<A>(describing:)();
  v58 = String._bridgeToObjectiveC()();

  v59 = IndexPath._bridgeToObjectiveC()().super.isa;
  v60 = v102;
  v61 = [v102 dequeueReusableCellWithReuseIdentifier:v58 forIndexPath:v59];

  v24 = swift_dynamicCastClassUnconditional();
  [v60 frame];
  Width = CGRectGetWidth(v108);
  v63 = v103;
  result = [v103 view];
  if (result)
  {
    v65 = result;
    [result safeAreaInsets];
    v67 = v66;

    result = [v63 view];
    if (result)
    {
      v68 = result;
      v69 = Width - v67;
      [result safeAreaInsets];
      v71 = v70;

      v72 = *&v63[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_flowLayout];
      [v72 sectionInset];
      v74 = v69 - v71 - v73;
      [v72 sectionInset];
      v76 = v74 - v75;

      v77 = v97;
      v78 = sub_10001C8F0(v97, v55, v76);

      sub_1000AD118(v78);

      (*(v56 + 8))(v77, v57);
      (v20[1])(v23, v100);
      return v24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000251B0()
{
  v1 = v0;
  sub_100003A60();
  v2 = type metadata accessor for ShortcutChiclet.Model.Metrics();
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_1000039BC();
  v4 = sub_10002E87C(&qword_100103170);
  sub_100002EE0(v4);
  sub_100005B90();
  __chkstk_darwin(v5);
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_hostingView] = 0;
  v6 = OBJC_IVAR____TtC9Shortcuts11LibraryCell_model;
  type metadata accessor for ShortcutChiclet.ButtonType();
  sub_100004730();
  sub_1000042A8(v7, v8, v9, v10);
  static ShortcutChiclet.Model.Metrics.default.getter();
  type metadata accessor for ShortcutChiclet.Model();
  sub_100006640();
  *&v0[v6] = sub_100005C6C();
  v11 = OBJC_IVAR____TtC9Shortcuts11LibraryCell_progress;
  type metadata accessor for ShortcutChiclet.Progress();
  sub_100006640();
  *&v0[v11] = ShortcutChiclet.Progress.init()();
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_observation] = 0;
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference] = 0;
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut] = 0;
  v12 = &v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_associatedBundleId];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_layoutMetrics] = 0;
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_isEnabled] = 0;
  v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_isJiggling] = 0;
  v13 = &v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___run];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___stop];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___accessibilitySelect];
  v16 = type metadata accessor for LibraryCell();
  *v15 = 0;
  *(v15 + 1) = 0;
  v25.receiver = v1;
  v25.super_class = v16;
  v17 = sub_1000B01DC(&v25, "initWithFrame:");
  v18 = objc_allocWithZone(UIPointerInteraction);
  v19 = v17;
  v20 = [v18 initWithDelegate:v19];
  v21 = v19;
  sub_100003C20([v21 addInteraction:v20], "setClipsToBounds:");

  swift_getKeyPath();
  v22 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v23 = *&v21[OBJC_IVAR____TtC9Shortcuts11LibraryCell_observation];
  *&v21[OBJC_IVAR____TtC9Shortcuts11LibraryCell_observation] = v22;

  return v21;
}

id sub_100025460@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alpha];
  *a2 = v4;
  return result;
}

void sub_100025538()
{
  v1 = v0;
  v2 = type metadata accessor for ShortcutChiclet.Model.Metrics();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_layoutMetrics];
  if (v9)
  {
    v20 = OBJC_IVAR____TtC9Shortcuts11LibraryCell_layoutMetrics;
    v10 = v9;
    sub_1000263B8(v10, v8);
    dispatch thunk of ShortcutChiclet.Model.metrics.getter();
    sub_10000F668(&qword_100103190, &type metadata accessor for ShortcutChiclet.Model.Metrics);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12 = *(v3 + 8);
    v12(v6, v2);
    if (v11)
    {
      v12(v8, v2);
    }

    else
    {
      v19 = v12;
      (*(v3 + 16))(v6, v8, v2);
      dispatch thunk of ShortcutChiclet.Model.metrics.setter();
      v13 = [v1 layer];
      v14 = *&v1[v20];
      if (v14)
      {
        v15 = [v14 floatingViewConfiguration];
        [v15 cornerRadius];
        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      v18 = v19;
      [v13 setCornerRadius:v17];

      v18(v8, v2);
    }
  }
}

void sub_1000257A8()
{
  v2 = sub_10002E87C(&qword_100100020);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  sub_100019C2C();
  v4 = *(v0 + OBJC_IVAR___WFMainViewController_content);
  if (v4)
  {
    type metadata accessor for LibraryViewController();
    sub_1000095CC();
    if (swift_dynamicCastClass())
    {
      v5 = v4;
      sub_100025964();
      v7 = v6;
      v9 = v8;

      if (v9)
      {
        v10 = [objc_opt_self() hiddenAppBundleIdentifiers];
        v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = sub_100067198(v7, v9, v11);

        if (v12)
        {
          type metadata accessor for RootNavigationContext();
          sub_100004730();
          sub_1000042A8(v13, v14, v15, v16);
          sub_1000349DC();
          sub_1000069B0(v1, &qword_100100020);
        }
      }
    }
  }
}

void sub_10002590C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_layoutMetrics);
  *(v1 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_layoutMetrics) = a1;
  v3 = a1;

  sub_100025538();
}

void sub_100025964()
{
  sub_1000043AC();
  type metadata accessor for Logger();
  sub_100004458();
  v105 = v3;
  v106 = v2;
  __chkstk_darwin(v2);
  sub_1000039BC();
  v107 = v5 - v4;
  v6 = sub_10002E87C(&unk_1001026E0);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  v115 = &v103 - v8;
  sub_1000042F8();
  v122 = type metadata accessor for AutoShortcutApp();
  sub_100004458();
  v109 = v9;
  __chkstk_darwin(v10);
  sub_100003EF4();
  v113 = v11 - v12;
  sub_10000667C();
  __chkstk_darwin(v13);
  sub_100005184();
  v108 = v14;
  sub_1000042F8();
  type metadata accessor for LibrarySectionOptions();
  sub_100004458();
  v118 = v15;
  v119 = v16;
  __chkstk_darwin(v15);
  sub_1000039BC();
  v114 = (v18 - v17);
  sub_1000042F8();
  v19 = type metadata accessor for LibrarySectionOptions.SectionType();
  sub_100004458();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100003EF4();
  v116 = v23 - v24;
  sub_10000667C();
  v26 = __chkstk_darwin(v25);
  v28 = &v103 - v27;
  __chkstk_darwin(v26);
  sub_100005184();
  v120 = v29;
  v30 = 0;
  v31 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_groups);
  v32 = *(v31 + 16);
  v33 = v31 + 40;
  v34 = &_swiftEmptyArrayStorage;
  v117 = v31;
  v121 = v35;
  while (v32 != v30)
  {
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    swift_getObjectType();
    sub_1000A1614();
    swift_unknownObjectRetain();
    sub_100003BD0();
    dispatch thunk of LibraryGroup.sections.getter();
    sub_1000A1614();
    swift_unknownObjectRelease();
    v36 = *(v1 + 16);
    v37 = v34[2];
    if (__OFADD__(v37, v36))
    {
      goto LABEL_57;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > v34[3] >> 1)
    {
      sub_100026680();
      v34 = v38;
    }

    v19 = v121;
    if (*(v1 + 16))
    {
      if ((v34[3] >> 1) - v34[2] < v36)
      {
        goto LABEL_60;
      }

      swift_arrayInitWithCopy();

      if (v36)
      {
        v39 = v34[2];
        v40 = __OFADD__(v39, v36);
        v41 = v39 + v36;
        if (v40)
        {
          goto LABEL_61;
        }

        v34[2] = v41;
      }
    }

    else
    {

      if (v36)
      {
        goto LABEL_58;
      }
    }

    v33 += 16;
    ++v30;
    v31 = v117;
  }

  v42 = v34[2];
  if (v42)
  {
    v123 = &_swiftEmptyArrayStorage;
    sub_10002694C();
    v43 = v123;
    sub_100003A3C();
    v45 = v34 + v44;
    v111 = *(v46 + 56);
    v112 = v47;
    v119 = v46;
    v48 = (v46 - 8);
    v110 = (v21 + 32);
    do
    {
      v49 = v114;
      v50 = v118;
      v112(v114, v45, v118);
      LibrarySectionOptions.sectionType.getter();
      (*v48)(v49, v50);
      v123 = v43;
      v51 = v28;
      v52 = *(v43 + 2);
      if (v52 >= *(v43 + 3) >> 1)
      {
        sub_10002694C();
        v43 = v123;
      }

      *(v43 + 2) = v52 + 1;
      sub_100003A3C();
      (*(v21 + 32))(&v43[v53 + *(v21 + 72) * v52], v51, v121);
      v45 = v111 + v45;
      --v42;
      v28 = v51;
    }

    while (v42);

    v19 = v121;
  }

  else
  {

    v43 = &_swiftEmptyArrayStorage;
  }

  v54 = 0;
  v55 = *(v43 + 2);
  v121 = (v21 + 88);
  LODWORD(v119) = enum case for LibrarySectionOptions.SectionType.shortcuts(_:);
  LODWORD(v118) = enum case for LibrarySectionOptions.SectionType.appShortcuts(_:);
  LODWORD(v112) = enum case for LibrarySectionOptions.SectionType.uninhabited(_:);
  v56 = (v21 + 8);
  v111 = (v21 + 96);
  v114 = (v109 + 32);
  v110 = &_swiftEmptyArrayStorage;
LABEL_23:
  v57 = v116;
  while (v55 != v54)
  {
    if (v54 >= *(v43 + 2))
    {
      goto LABEL_59;
    }

    sub_100003A3C();
    v59 = *(v21 + 16);
    v60 = v120;
    v59(v120, &v43[v58 + *(v21 + 72) * v54], v19);
    v59(v57, v60, v19);
    v61 = (*(v21 + 88))(v57, v19);
    if (v61 == v119)
    {
      v62 = *v56;
      (*v56)(v60, v19);
      v62(v57, v19);
      v63 = 1;
      v64 = v115;
    }

    else
    {
      v64 = v115;
      if (v61 == v118)
      {
        (*v56)(v120, v19);
        (*v111)(v57, v19);
        (*v114)(v64, v57, v122);
        v63 = 0;
      }

      else
      {
        if (v61 != v112)
        {
          goto LABEL_62;
        }

        (*v56)(v120, v19);
        v63 = 1;
      }
    }

    v65 = v64;
    v66 = v64;
    v67 = v122;
    sub_1000042A8(v65, v63, 1, v122);
    if (sub_10000AB80(v66, 1, v67) == 1)
    {
      sub_1000069B0(v66, &unk_1001026E0);
      ++v54;
      goto LABEL_23;
    }

    v68 = *v114;
    (*v114)(v108, v66, v122);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100026A48();
      v110 = v75;
    }

    v57 = v116;
    v70 = v110[2];
    v69 = v110[3];
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      sub_100005E38(v69);
      v104 = v76;
      sub_100026A48();
      v71 = v104;
      v110 = v77;
    }

    ++v54;
    v110[2] = v71;
    sub_100003A3C();
    v68(v73 + v72 + *(v74 + 72) * v70, v108, v122);
  }

  v78 = v110;
  v79 = v110[2];
  if (v79)
  {
    v123 = &_swiftEmptyArrayStorage;
    sub_10001A19C(0, v79, 0);
    v80 = v123;
    sub_100003A3C();
    v82 = v78 + v81;
    v120 = *(v83 + 56);
    v121 = v84;
    v85 = (v83 - 8);
    do
    {
      v86 = v113;
      v87 = v122;
      v121(v113, v82, v122);
      v88 = AutoShortcutApp.bundleIdentifier.getter();
      v90 = v89;
      (*v85)(v86, v87);
      v123 = v80;
      v92 = v80[2];
      v91 = v80[3];
      if (v92 >= v91 >> 1)
      {
        sub_10001A19C(v91 > 1, v92 + 1, 1);
        v80 = v123;
      }

      v80[2] = v92 + 1;
      v93 = &v80[2 * v92];
      v93[4] = v88;
      v93[5] = v90;
      v82 += v120;
      --v79;
    }

    while (v79);
  }

  else
  {

    v80 = &_swiftEmptyArrayStorage;
  }

  v94 = v107;
  if (*(v117 + 16) == 1)
  {
    type metadata accessor for AllShortcutsGroup();
    sub_1000095CC();
    if (swift_dynamicCastClass())
    {
      goto LABEL_54;
    }
  }

  v95 = v80[2];
  if (v95 >= 2)
  {
    static WFLog.subscript.getter();

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v123 = v99;
      *v98 = 136315138;
      v100 = Array.description.getter();
      v102 = sub_10000DA48(v100, v101, &v123);

      *(v98 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v96, v97, "Found multiple auto-shortcut apps when checking which one to protect: %s", v98, 0xCu);
      sub_10000DF90(v99);
    }

    (*(v105 + 8))(v94, v106);
    v95 = v80[2];
  }

  if (!v95)
  {
LABEL_54:
  }

  else
  {
  }

  sub_100002EEC();
}

uint64_t sub_1000263B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = type metadata accessor for ShortcutChiclet.Model.Metrics.Button();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = type metadata accessor for ShortcutChiclet.Model.Metrics.Icon();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v19 - v15;
  [a1 workflowIconToLabelMargin];
  [a1 workflowGlyphDimension];
  ShortcutChiclet.Model.Metrics.Icon.init(textSpacing:dimension:)();
  [a1 workflowButtonDimension];
  ShortcutChiclet.Model.Metrics.Button.init(pointSize:)();
  v17 = [a1 floatingViewConfiguration];
  [v17 cornerRadius];

  [a1 workflowContentEdgeInsets];
  (*(v11 + 16))(v14, v16, v10);
  (*(v4 + 16))(v7, v9, v3);
  ShortcutChiclet.Model.Metrics.init(cornerRadius:insets:icon:button:)();

  (*(v4 + 8))(v9, v3);
  return (*(v11 + 8))(v16, v10);
}

void sub_100026680()
{
  sub_100002FA8();
  if (v4)
  {
    sub_100090464();
    if (v6 != v7)
    {
      sub_100009598();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10000CB1C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100007C08(v2, v5, &qword_100101F48, &unk_1000C53A0);
  sub_10000E8D4();
  type metadata accessor for LibrarySectionOptions();
  sub_10000525C();
  sub_100003A3C();
  if (v1)
  {
    sub_10000A838(&type metadata accessor for LibrarySectionOptions, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000F1D4();
  }
}

void sub_100026758()
{
  sub_1000043AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v10)
  {
    sub_1000060D8();
    if (v12 != v13)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100011894();
    }
  }

  else
  {
    v11 = v0;
  }

  v14 = *(v7 + 16);
  if (v11 <= v14)
  {
    v15 = *(v7 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10002E87C(v1);
  v16 = *(v5(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_18:
  v5(0);
  sub_100003A3C();
  if (v9)
  {
    v3(v7 + v22, v14, v19 + v22);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100002EEC();
}

uint64_t sub_1000268FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_10002696C();

  return swift_unknownObjectRelease();
}

uint64_t sub_10002696C()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of ShortcutChiclet.Model.buttonAction.setter();
}

void sub_100026A48()
{
  sub_100002FA8();
  if (v4)
  {
    sub_100090464();
    if (v6 != v7)
    {
      sub_100009598();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10000CB1C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100007C08(v2, v5, &qword_100101F40, &unk_1000C4090);
  sub_10000E8D4();
  type metadata accessor for AutoShortcutApp();
  sub_10000525C();
  sub_100003A3C();
  if (v1)
  {
    sub_10000A838(&type metadata accessor for AutoShortcutApp, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000F1D4();
  }
}

void sub_100026B3C()
{
  sub_1000043AC();
  v1 = v0;
  v2 = sub_10002E87C(&qword_100103168);
  sub_100004458();
  v73 = v3;
  __chkstk_darwin(v4);
  sub_100003EF4();
  v71 = v5 - v6;
  __chkstk_darwin(v7);
  v72 = &v68 - v8;
  v9 = sub_10002E87C(&qword_100103170);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  v12 = (&v68 - v11);
  v13 = sub_10002E87C(&qword_100103178);
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_100003EF4();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v68 - v20;
  __chkstk_darwin(v19);
  v23 = &v68 - v22;
  sub_100004730();
  v27 = sub_1000042A8(v24, v25, v26, v2);
  v28 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut];
  if (v28)
  {
    v29 = v28;
    v30 = [v29 chicletColor];
    v31 = [objc_opt_self() defaultGlyphCharacter];
    v32 = objc_allocWithZone(WFWorkflowIcon);
    v69 = sub_1000AF278(v30, v31, 0, 0xF000000000000000);
    sub_100003A00();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ShortcutChiclet.MenuItemDataSource();
    sub_100006640();
    v33 = ShortcutChiclet.MenuItemDataSource.init(getMenuItems:)();
    v70 = v2;
    *v12 = v33;
    v34 = v1;
    v35 = enum case for ShortcutChiclet.ButtonType.menu(_:);
    v36 = type metadata accessor for ShortcutChiclet.ButtonType();
    sub_100003EC8();
    v38 = v35;
    v1 = v34;
    (*(v37 + 104))(v12, v38, v36);
    sub_1000042A8(v12, 0, 1, v36);

    v39 = dispatch thunk of ShortcutChiclet.Model.buttonType.setter();
    __chkstk_darwin(v39);
    v40 = v69;
    *(&v68 - 4) = v29;
    *(&v68 - 3) = v40;
    *(&v68 - 2) = v1;
    type metadata accessor for ShortcutChiclet();
    sub_100017394();
    sub_10000F668(v41, v42);
    PrefetchableImage.RootView.init(content:)();
    v2 = v70;
  }

  else
  {
    v43 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference];
    if (!v43)
    {
      goto LABEL_6;
    }

    __chkstk_darwin(v27);
    *(&v68 - 2) = v43;
    *(&v68 - 1) = v0;
    v70 = type metadata accessor for ShortcutChiclet();
    sub_100017394();
    sub_10000F668(v44, v45);
    v29 = v43;
    v1 = v0;
    PrefetchableImage.RootView.init(content:)();
  }

  v0 = &unk_1000C6880;
  v46 = sub_10000F430();
  sub_1000069B0(v46, v47);
  sub_1000042A8(v21, 0, 1, v2);
  sub_10002769C();
LABEL_6:
  sub_10001D37C();
  if (sub_10000AB80(v17, 1, v2) == 1)
  {
    v48 = sub_10000F430();
    sub_1000069B0(v48, v49);
    v50 = v17;
  }

  else
  {
    v52 = v72;
    v51 = v73;
    (*(v73 + 32))(v72, v17, v2);
    v53 = OBJC_IVAR____TtC9Shortcuts11LibraryCell_hostingView;
    v54 = *&v1[OBJC_IVAR____TtC9Shortcuts11LibraryCell_hostingView];
    if (!v54)
    {
      type metadata accessor for LibraryCellHostingView(0);
      v58 = v71;
      (*(v51 + 16))(v71, v52, v2);
      v59 = sub_10002775C(v58);
      v60 = v1;
      v61 = objc_opt_self();
      v62 = v59;
      v63 = [v61 clearColor];
      [v62 setBackgroundColor:v63];

      v64 = [v60 contentView];
      [v64 addSubview:v62];

      v65 = sub_10000478C();
      v66(v65);
      sub_1000069B0(v23, &qword_100103178);
      v67 = *&v60[v53];
      *&v60[v53] = v62;

      goto LABEL_11;
    }

    (*(v51 + 16))(v71, v52, v2);
    v55 = v54;
    sub_10000A594();
    dispatch thunk of _UIHostingView.rootView.setter();

    v56 = sub_10000478C();
    v57(v56);
    v50 = v23;
  }

  sub_1000069B0(v50, &qword_100103178);
LABEL_11:
  sub_100002EEC();
}

uint64_t sub_100027204(void *a1)
{
  v1 = a1;

  sub_1000AE93C();
  sub_10002756C();
  sub_100027604();
  return ShortcutChiclet.init(reference:model:progress:renderUnderglow:runAction:stopAction:accessibilitySelectionAction:shouldUseClearBackground:)();
}

uint64_t sub_1000272D0()
{
  v1 = [objc_opt_self() lockedAppBundleIdentifiers];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_lockedAppBundleIdCache;

  v5 = sub_1000273C4(v4, v2);

  if (v5)
  {
  }

  else
  {
    *(v0 + v3) = v2;

    sub_10000E8F4();
    sub_100003C10();
    sub_100010CE4();
  }
}

uint64_t sub_1000273C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10002756C()
{
  sub_1000079FC();
  v2 = (v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___stop);
  if (!*(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___stop))
  {
    sub_100003A00();
    swift_allocObject();
    sub_100005764();
    *v2 = sub_1000AF860;
    v2[1] = v1;

    v3 = sub_100011DAC();
    sub_10000B970(v3);
  }

  sub_1000118D0();
  sub_1000046DC();
}

void sub_100027604()
{
  sub_1000079FC();
  v2 = (v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___accessibilitySelect);
  if (!*(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___accessibilitySelect))
  {
    sub_100003A00();
    swift_allocObject();
    sub_100005764();
    *v2 = sub_1000AF830;
    v2[1] = v1;

    v3 = sub_100011DAC();
    sub_10000B970(v3);
  }

  sub_1000118D0();
  sub_1000046DC();
}

uint64_t sub_10002769C()
{
  sub_100006360();
  sub_10002E87C(v1);
  sub_100003EC8();
  v2 = sub_100005BCC();
  v3(v2);
  return v0;
}

uint64_t sub_10002775C(uint64_t a1)
{
  v3 = sub_10002E87C(&qword_100103168);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = _UIHostingView.init(rootView:)();
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t sub_100027864(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100041CB4(&qword_100100300);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000278DC()
{
  v1 = v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_isJiggling];
  v2 = [v0 layer];
  if (v1 == 1)
  {
    v3 = sub_1000ADE9C();
    v4 = String._bridgeToObjectiveC()();
    [v2 addAnimation:v3 forKey:v4];

    v5 = [v0 layer];
    v6 = sub_1000ADFD8();
    v7 = String._bridgeToObjectiveC()();
    [v5 addAnimation:v6 forKey:v7];

    v8 = [v0 layer];
    v9 = sub_1000AE114();
    v10 = String._bridgeToObjectiveC()();
    [v8 addAnimation:v9 forKey:v10];
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();
    [v2 removeAnimationForKey:v11];

    v12 = [v0 layer];
    v13 = String._bridgeToObjectiveC()();
    [v12 removeAnimationForKey:v13];

    v9 = [v0 layer];
    v10 = String._bridgeToObjectiveC()();
    [v9 removeAnimationForKey:v10];
  }

  return dispatch thunk of ShortcutChiclet.Model.isEditing.setter();
}

void sub_100027B38(void *a1)
{
  type metadata accessor for TipController.UseSiriToRunShortcutTip();
  sub_10002E87C(&qword_1001002E8);
  Tips.Parameter.wrappedValue.getter();
  if (v11)
  {

    v2 = v10;
  }

  else
  {
    v2 = 0;
  }

  sub_1000284B4(v10, v11);
  if (!a1)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_16;
  }

  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (!v11)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:

LABEL_17:
    v9 = a1;
    sub_10004A058(a1);
    Tips.Parameter.wrappedValue.setter();
    return;
  }

  if (v2 == v4 && v11 == v6)
  {

    return;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }
}

uint64_t sub_100027CB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_10002E87C(&unk_100101EB0);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  if (sub_100027EE0(a1))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      dispatch thunk of LibraryDelegate.runningWorkflow.getter();
      swift_unknownObjectRelease();
      v10 = type metadata accessor for RunningWorkflow();
      if (sub_10000AB80(v9, 1, v10) == 1)
      {
        sub_1000171D4(v9, &unk_100101EB0);
      }

      else
      {
        v13 = RunningWorkflow.runViewSource.getter();
        (*(*(v10 - 8) + 8))(v9, v10);
        if (v13)
        {
          [v13 updateSourceView:a1];
        }
      }
    }

    sub_1000284F8(1, a4 & 1);
    sub_100028358();
  }

  else
  {
    v11 = sub_100028358();
    v12 = v11 >= 1.0 || v11 < 0.0;
    sub_1000284F8(v12, a4 & 1);
    type metadata accessor for ShortcutChiclet.Progress();
    static ShortcutChiclet.Progress.noProgress.getter();
  }

  return dispatch thunk of ShortcutChiclet.Progress.apply(value:cancelled:)();
}

uint64_t type metadata accessor for TipController.UseSiriToRunShortcutTip()
{
  result = qword_100100388;
  if (!qword_100100388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100027EE0(uint64_t a1)
{
  v2 = type metadata accessor for RunningWorkflow.WorkflowType();
  sub_100004458();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (&v47 - v9);
  v11 = sub_10002E87C(&unk_100101EB0);
  sub_100002EE0(v11);
  sub_100005B90();
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for RunningWorkflow();
  sub_100004458();
  v48 = v16;
  __chkstk_darwin(v17);
  sub_1000039BC();
  v20 = v19 - v18;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_1000042A8(v14, 1, 1, v15);
    goto LABEL_7;
  }

  swift_getObjectType();
  dispatch thunk of LibraryDelegate.runningWorkflow.getter();
  swift_unknownObjectRelease();
  if (sub_10000AB80(v14, 1, v15) == 1)
  {
LABEL_7:
    sub_1000171D4(v14, &unk_100101EB0);
    goto LABEL_8;
  }

  (*(v48 + 32))(v20, v14, v15);
  v21 = *(a1 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut);
  if (v21)
  {
    v22 = v21;
    RunningWorkflow.workflowType.getter();
    if ((*(v4 + 88))(v10, v2) == enum case for RunningWorkflow.WorkflowType.autoShortcut(_:))
    {
      (*(v4 + 96))(v10, v2);
      v23 = *v10;
      sub_100002FC4(0, &qword_100100CA8);
      v24 = static NSObject.== infix(_:_:)();

      v25 = sub_10001386C();
      v26(v25);
      return v24 & 1;
    }

    v40 = sub_10001386C();
    v41(v40);

    (*(v4 + 8))(v10, v2);
LABEL_8:
    v24 = 0;
    return v24 & 1;
  }

  v28 = *(a1 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference);
  if (!v28)
  {
    v42 = sub_10001386C();
    v43(v42);
    goto LABEL_8;
  }

  v29 = v28;
  RunningWorkflow.workflowType.getter();
  if ((*(v4 + 88))(v8, v2) != enum case for RunningWorkflow.WorkflowType.reference(_:))
  {
    v44 = sub_10001386C();
    v45(v44);

    (*(v4 + 8))(v8, v2);
    goto LABEL_8;
  }

  (*(v4 + 96))(v8, v2);
  v30 = *v8;
  v31 = [*v8 identifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = [v29 identifier];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (v32 == v36 && v34 == v38)
  {
    v24 = 1;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v46 = v48;

  (*(v46 + 8))(v20, v15);
  return v24 & 1;
}

double sub_100028358()
{
  v0 = sub_10002E87C(&unk_100101EB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    dispatch thunk of LibraryDelegate.runningWorkflow.getter();
    swift_unknownObjectRelease();
    v3 = type metadata accessor for RunningWorkflow();
    if (sub_10000AB80(v2, 1, v3) != 1)
    {
      RunningWorkflow.progress.getter();
      v5 = v6;
      (*(*(v3 - 8) + 8))(v2, v3);
      return v5;
    }

    sub_1000171D4(v2, &unk_100101EB0);
  }

  type metadata accessor for ShortcutChiclet.Progress();
  static ShortcutChiclet.Progress.noProgress.getter();
  return v4;
}

uint64_t sub_1000284B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1000284F8(char a1, char a2)
{
  v5 = a1 & 1;
  v6 = OBJC_IVAR____TtC9Shortcuts11LibraryCell_isEnabled;
  v7 = v2[OBJC_IVAR____TtC9Shortcuts11LibraryCell_isEnabled];
  v8 = [v2 contentView];
  [v8 alpha];
  v10 = v9;

  v11 = 0.5;
  if (v7)
  {
    v11 = 1.0;
  }

  if (v7 != v5 || v10 != v11)
  {
    v2[v6] = v5;
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    *(v13 + 32) = xmmword_1000C6460;
    if (a2)
    {
      v14 = objc_opt_self();
      aBlock[4] = sub_1000AF820;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003190;
      aBlock[3] = &unk_1000F3E28;
      v15 = _Block_copy(aBlock);
      v16 = v2;

      [v14 animateKeyframesWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];

      _Block_release(v15);
    }

    else
    {
      v17 = [v2 contentView];
      v19 = v17;
      v18 = 0.5;
      if (a1)
      {
        v18 = 1.0;
      }

      [v17 setAlpha:v18];
    }
  }
}

uint64_t sub_100028708()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100028740()
{
  v1 = v0;
  v2 = sub_10002E87C(&qword_100100008);
  __chkstk_darwin(v2 - 8);
  v4 = &v29[-v3];
  v5 = type metadata accessor for TipType();
  sub_10000F720();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000039BC();
  v11 = v10 - v9;
  v12 = type metadata accessor for LibraryConfiguration();
  sub_10000F720();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000039BC();
  v18 = v17 - v16;
  v19 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tip;
  sub_100003FE4();
  sub_10001990C(&v1[v19], &v32);
  if (v33)
  {
    sub_100028B50(&v32, &v30);
  }

  else
  {
    v20 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
    sub_100003FE4();
    (*(v14 + 16))(v18, &v1[v20], v12);
    LibraryConfiguration.tipType.getter();
    (*(v14 + 8))(v18, v12);
    sub_100048E50(v11, *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database], &v30);
    (*(v7 + 8))(v11, v5);
    if (v33)
    {
      sub_1000171D4(&v32, &qword_1001026D8);
    }
  }

  if (!v31)
  {
    return sub_1000171D4(&v30, &qword_1001026D8);
  }

  sub_100028B50(&v30, &v32);
  if ((byte_100109C20 & 1) == 0)
  {
    sub_100028B68();
  }

  sub_10002A3B8(&v32, &v30);
  swift_beginAccess();
  sub_1000B1AF4(&v30, &v1[v19]);
  swift_endAccess();
  sub_100041C04(&v32, v33);
  v21 = Tip.shouldDisplay.getter();
  v22 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tipStatusObservation;
  v23 = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tipStatusObservation];
  if (!v23)
  {
    v24 = type metadata accessor for TaskPriority();
    sub_1000042A8(v4, 1, 1, v24);
    sub_10002A3B8(&v32, &v30);
    type metadata accessor for MainActor();
    v25 = v1;
    v26 = static MainActor.shared.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = &protocol witness table for MainActor;
    sub_100028B50(&v30, v27 + 32);
    *(v27 + 72) = v21 & 1;
    *(v27 + 80) = v25;
    sub_100084AEC();
  }

  *&v1[v22] = v23;

  return sub_10000DF90(&v32);
}

uint64_t sub_100028B08()
{
  swift_unknownObjectRelease();
  sub_10000DF90(v0 + 32);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100028B50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100028B68()
{
  sub_1000043AC();
  v0 = type metadata accessor for Tips.ConfigurationOption.AnalyticsEngine();
  sub_100004458();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000039BC();
  v6 = v5 - v4;
  v7 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  sub_100004458();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000039BC();
  v13 = v12 - v11;
  v14 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  sub_100004458();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000039BC();
  v20 = v19 - v18;
  if ((byte_100109C20 & 1) == 0)
  {
    byte_100109C20 = 1;
    sub_10002E87C(&qword_1001002F8);
    type metadata accessor for Tips.ConfigurationOption();
    sub_100004458();
    *(swift_allocObject() + 16) = xmmword_1000C0D90;
    static Tips.ConfigurationOption.DisplayFrequency.system.getter();
    static Tips.ConfigurationOption.displayFrequency(_:)();
    (*(v16 + 8))(v20, v14);
    static Tips.ConfigurationOption.DatastoreLocation.tipsGroupContainer.getter();
    static Tips.ConfigurationOption.datastoreLocation(_:)();
    (*(v9 + 8))(v13, v7);
    static Tips.ConfigurationOption.AnalyticsEngine.coreAnalytics.getter();
    static Tips.ConfigurationOption.analyticsEngine(_:)();
    (*(v2 + 8))(v6, v0);
    static Tips.configure(_:)();
  }

  sub_100002EEC();
}

id sub_100028E50()
{
  sub_100003A60();
  v3.receiver = v0;
  v3.super_class = v1();
  return sub_1000B01DC(&v3, "initWithFrame:");
}

id sub_100028EF8()
{
  sub_100003A60();
  *&v0[*v1] = 0;
  v5.receiver = v0;
  v5.super_class = v3(v2);
  return sub_1000B01DC(&v5, "initWithFrame:");
}

void sub_100028F94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = type metadata accessor for UIListContentConfiguration.TextProperties();
  sub_100004458();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000039BC();
  v19 = v18 - v17;
  v20 = type metadata accessor for UIListContentConfiguration();
  sub_100004458();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000039BC();
  v26 = v25 - v24;
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  UIListContentConfiguration.textProperties.getter();
  (*(v22 + 8))(v26, v20);
  v27 = UIListContentConfiguration.TextProperties.font.getter();
  (*(v15 + 8))(v19, v13);
  [v27 pointSize];
  v29 = v28;

  sub_100002FC4(0, &qword_1001031B8);
  v30 = objc_opt_self();

  v31 = [v30 wf_accentColor];
  v32 = [objc_allocWithZone(WFColor) initWithPlatformColor:v31];

  v33 = [objc_opt_self() clearColor];
  v34 = [objc_allocWithZone(WFIconColorBackground) initWithColor:v33];

  v35 = sub_100029224(a3, a4, v32, v34);
  sub_1000292C8(a1, a2, v35, a6, a7, a8, a9, v29, v29);
}

id sub_100029224(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  if (a2)
  {
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = String._bridgeToObjectiveC()();

    v6 = [v7 initWithSymbolName:v8 symbolColor:a3 background:a4];
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1000292C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v20 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewController20LibrarySectionHeader_header;
  v21 = *&v10[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController20LibrarySectionHeader_header];
  if (v21)
  {
    [v21 removeFromSuperview];
    v22 = *&v10[v20];
  }

  else
  {
    v22 = 0;
  }

  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  *&__src[3] = a8;
  *&__src[4] = a9;
  __src[5] = a4;
  __src[6] = a5;
  __src[7] = a6;
  __src[8] = a7;
  memcpy(__dst, __src, sizeof(__dst));
  if (v22)
  {
    v23 = a3;

    sub_10000B960(a4);
    sub_10000B960(a6);
    sub_100021258(__src, v46);
    v24 = v22;
    dispatch thunk of _UIHostingView.rootView.setter();
  }

  else
  {
    objc_allocWithZone(sub_10002E87C(&qword_1001031B0));
    v25 = a3;

    sub_10000B960(a4);
    sub_10000B960(a6);
    sub_100021258(__src, v46);
    v26 = _UIHostingView.init(rootView:)();
    v27 = *&v10[v20];
    *&v10[v20] = v26;
  }

  v28 = *&v10[v20];
  if (v28)
  {
    v29 = v28;
    sub_100041E24([v29 setTranslatesAutoresizingMaskIntoConstraints:0], "addSubview:");
    v30 = objc_opt_self();
    sub_10002E87C(&qword_1001000E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000C13C0;
    v32 = [v29 leadingAnchor];
    v33 = [v10 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:15.0];

    *(v31 + 32) = v34;
    v35 = [v29 trailingAnchor];
    v36 = [v10 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:-15.0];

    *(v31 + 40) = v37;
    v38 = [v29 topAnchor];
    v39 = [v10 topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v31 + 48) = v40;
    v41 = [v29 bottomAnchor];

    v42 = [v10 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v31 + 56) = v43;
    sub_100002FC4(0, &qword_1001002C8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 activateConstraints:isa];
  }

  return sub_100029694(__src);
}

void sub_1000296C4()
{
  v0 = sub_100013B1C();
  v1 = sub_1000297CC(v0);
  v2 = sub_10000D55C(v1);

  v3 = sub_10001287C();
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000D55C(v3);
    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      [v7 setEnabled:v2 > 0];
    }
  }
}

uint64_t sub_100029A18(void *a1)
{
  v2 = [a1 indexPathsForSelectedItems];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for IndexPath();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Int sub_100029A80(uint64_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100029B28();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_100029B88(v7);
  *a1 = v3;
  return result;
}

Swift::Int sub_100029B88(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10006A054(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100069D98(0, v2, 1, a1);
  }

  return result;
}

void sub_100029CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000043AC();
  a19 = v21;
  a20 = v22;
  v23 = sub_10002E87C(&qword_1001002E8);
  sub_100004458();
  v25 = v24;
  sub_100005B90();
  __chkstk_darwin(v26);
  v28 = &a9 - v27;
  v29 = sub_10002E87C(&qword_100100328);
  sub_100004458();
  v31 = v30;
  sub_100005B90();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_10002E87C(&qword_1001003F0);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_1000C0D80;
  (*(v31 + 16))(v34, v20, v29);
  Tips.Rule.init<A>(_:_:)();
  v35 = type metadata accessor for TipController.UseSiriToRunShortcutTip();
  (*(v25 + 16))(v28, v20 + *(v35 + 20), v23);
  sub_10002E87C(&qword_100100300);
  sub_100003F04();
  sub_100027864(v36, v37);
  sub_10000520C();
  sub_100027864(v38, v39);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();

  static Tips.RuleBuilder.buildPartialBlock(first:)();

  sub_100002EEC();
}

uint64_t sub_100029F98@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002E87C(&qword_1001003F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_10002E87C(&qword_100100400);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100009624(&qword_100100408, &qword_100100400);
  static PredicateExpressions.build_Arg<A>(_:)();
  static PredicateExpressions.build_NilLiteral<A>()();
  a1[3] = sub_10002E87C(&qword_100100410);
  a1[4] = sub_10002A220();
  sub_10002A304(a1);
  sub_100009624(&qword_100100430, &qword_1001003F8);
  sub_100027864(&qword_100100438, sub_10002A364);
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10002A220()
{
  result = qword_100100418;
  if (!qword_100100418)
  {
    sub_100041CB4(&qword_100100410);
    sub_100009624(&qword_100100420, &qword_100100400);
    sub_100009624(&qword_100100428, &qword_1001003F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100418);
  }

  return result;
}

uint64_t *sub_10002A304(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_10002A364()
{
  result = qword_100100440;
  if (!qword_100100440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100440);
  }

  return result;
}

uint64_t sub_10002A3B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10002A4DC()
{
  sub_100005730();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for LibraryViewController();
  objc_msgSendSuper2(&v4, "didMoveToParentViewController:", v0);
  sub_10000453C();
  sub_100009E14(v2, v3);
  LibraryView.observeChanges(_:)(v0 != 0);
}

uint64_t sub_10002A568()
{
  if (sub_10000CBC4())
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_10000AB18();
    swift_getWitnessTable();
    sub_100033530();
    type metadata accessor for _TraitWritingModifier();
    sub_100033530();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    sub_100009544();
    swift_getWitnessTable();
    sub_100033530();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_100033530();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10002A68C()
{
  if (sub_10000CBC4())
  {
    type metadata accessor for _TagTraitWritingModifier();
    sub_10000A5C0();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_10000AB18();
    swift_getWitnessTable();
    sub_100033530();
    type metadata accessor for _TraitWritingModifier();
    sub_10000A5C0();
    type metadata accessor for Optional();
    sub_100009544();
    swift_getWitnessTable();
    sub_100033530();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_100033530();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

NSString sub_10002A86C@<X0>(void *a1@<X8>)
{
  result = sub_100033448();
  *a1 = result;
  return result;
}

uint64_t sub_10002A8D0()
{
  sub_1000070CC();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_10002A964()
{
  sub_1000060B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002A9A0()
{
  _Block_release(*(v0 + 16));
  sub_100003A00();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002A9D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AA14()
{
  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002AA64()
{
  type metadata accessor for OpenWorkflowOptions();
  sub_100003EC8();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_10002AB08()
{
  swift_unknownObjectRelease();

  sub_100041ED4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002AB50()
{
  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002ABC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AC08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AC48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002E87C(&qword_100100328);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10002E87C(&qword_1001002E8);
    v8 = a1 + *(a3 + 20);
  }

  return sub_10000AB80(v8, a2, v7);
}

uint64_t sub_10002AD34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002E87C(&qword_100100328);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10002E87C(&qword_1001002E8);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000042A8(v10, a2, a2, v9);
}

uint64_t sub_10002AE18()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AF00@<X0>(uint64_t *a1@<X8>)
{
  result = AddShortcutToHomeScreenAction.$shortcut.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002B03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootNavigationDestination();

  return sub_10000AB80(a1, a2, v4);
}

uint64_t sub_10002B084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootNavigationDestination();

  return sub_1000042A8(a1, a2, a2, v4);
}

uint64_t sub_10002B518()
{
  sub_10002E87C(&qword_100100BB8);
  sub_100003EC8();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B61C()
{
  sub_100003A00();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002B650()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002B698()
{
  v1 = sub_100005BF0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002B6CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002B760()
{
  sub_100003F64();
  v2 = type metadata accessor for ShortcutsLibraryItem();

  return sub_10000AB80(v1, v0, v2);
}

uint64_t sub_10002B7A0()
{
  sub_100003F64();
  type metadata accessor for ShortcutsLibraryItem();
  v0 = sub_100005248();

  return sub_1000042A8(v0, v1, v2, v3);
}

uint64_t sub_10002B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LibrarySectionOptions();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000AB80(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10002B884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003F64();
  result = type metadata accessor for LibrarySectionOptions();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_100005248();

    return sub_1000042A8(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 36)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_10002B95C@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of LibraryDataSource.selectedWorkflowIds.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002B98C@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of LibraryDataSource.sortOrderComparators.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002B9BC()
{
  sub_10001387C();
  result = EnvironmentValues.lineLimit.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_10002B9FC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 104, 7);
}

__n128 sub_10002BA74(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_10002BA94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002BACC()
{
  v1 = type metadata accessor for LibrarySectionOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectWeakDestroy();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002BBB8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002BC00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002BC48()
{
  type metadata accessor for ShortcutsLibraryItem();
  sub_1000044FC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002BCC4()
{
  sub_10001387C();
  result = ShortcutsLibraryItem.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_10002BCEC()
{
  sub_10001387C();
  result = ShortcutsLibraryItem.actionCountText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_10002BD14()
{
  sub_10001387C();
  result = ShortcutsLibraryItem.modificationDateText.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_10002BD40()
{
  swift_getAssociatedTypeWitness();
  sub_100041CB4(&qword_100100F40);
  sub_100005BCC();
  swift_getAssociatedConformanceWitness();
  sub_10007394C();
  type metadata accessor for TableHeaderRowContent();
  type metadata accessor for EmptyTableRowContent();
  type metadata accessor for Section();
  type metadata accessor for Section();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10002BF10(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100003F80(*(a1 + 8));
  }

  sub_10002E87C(&qword_100101598);
  v4 = sub_100011924();

  return sub_10000AB80(v4, a2, v5);
}

uint64_t sub_10002BF94(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10002E87C(&qword_100101598);
    sub_100011924();
    sub_100007094();

    return sub_1000042A8(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_10002C018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A0C();
  type metadata accessor for RootNavigationDestination();
  sub_10000525C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_10002E87C(&qword_100101648);
    sub_10000525C();
    if (*(v10 + 84) != a2)
    {
      return sub_100003F80(*(v3 + *(a3 + 24) + 8));
    }

    v9 = sub_100011924();
  }

  return sub_10000AB80(v9, a2, v8);
}

void sub_10002C100(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_100003A0C();
  type metadata accessor for RootNavigationDestination();
  sub_10000525C();
  if (*(v8 + 84) != a3)
  {
    sub_10002E87C(&qword_100101648);
    sub_10000525C();
    if (*(v9 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    sub_100011924();
  }

  sub_100007094();

  sub_1000042A8(v10, v11, v12, v13);
}

uint64_t sub_10002C2B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C2EC()
{
  type metadata accessor for SidebarView(0);
  sub_10000B120();
  sub_10000F44C();
  v0 = sub_100012B3C();
  if (!sub_100084810(v0))
  {
    sub_100002F04();
    v1 = sub_1000042EC();
    v2(v1);
  }

  sub_10002E87C(&qword_100101598);
  sub_100017438();
  swift_unknownObjectRelease();
  v3 = sub_1000118C4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002C44C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002C47C(uint64_t a1, uint64_t a2)
{
  sub_10002E87C(&qword_100101948);
  sub_100003EC8();
  v3 = sub_100005BCC();
  v4(v3);
  return a2;
}

uint64_t sub_10002C4E0()
{
  type metadata accessor for DestinationRow(0);
  sub_10000F804();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v14 = *(v6 + 64);
  v7 = type metadata accessor for RootNavigationDestination();
  sub_100003EC8();
  v9 = *(v8 + 8);
  v10 = sub_100006144();
  v9(v10);
  v11 = v1 + v5 + *(v0 + 20);

  v12 = sub_10002E87C(&qword_100101648);
  if (!sub_10008483C(v12))
  {
    (v9)(v11 + v2, v7);
  }

  return _swift_deallocObject(v1, v5 + v14, v4 | 7);
}

uint64_t sub_10002C620()
{
  sub_1000079FC();
  v1 = type metadata accessor for LibraryWorkflowCreationBehavior();
  sub_100004458();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  sub_100004700();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();
  sub_1000118C4();
  sub_1000046DC();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10002C6F0()
{
  sub_1000079FC();
  v1 = type metadata accessor for LibraryWorkflowCreationBehavior();
  sub_100004458();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_100004700();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();
  sub_1000118C4();
  sub_1000046DC();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10002C7C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C808()
{
  sub_10002E87C(&qword_100101A10);
  sub_1000044FC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002C8EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100076084();
  *a1 = result;
  return result;
}

uint64_t sub_10002C944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005730();
  type metadata accessor for RootNavigationDestination();
  sub_10000525C();
  if (*(v7 + 84) != a2)
  {
    return sub_100003F80(*(v3 + *(a3 + 20)));
  }

  return sub_10000AB80(v3, a2, v6);
}

void sub_10002C9DC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_100003A0C();
  type metadata accessor for RootNavigationDestination();
  sub_10000525C();
  if (*(v8 + 84) == a3)
  {
    sub_100007094();

    sub_1000042A8(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_10002CAD0(uint64_t a1, uint64_t a2)
{
  sub_100003A0C();
  v4 = type metadata accessor for RootNavigationDestination();

  return sub_10000AB80(v2, a2, v4);
}

uint64_t sub_10002CB14()
{
  sub_100003A0C();
  type metadata accessor for RootNavigationDestination();
  sub_100007094();

  return sub_1000042A8(v0, v1, v2, v3);
}

uint64_t sub_10002CB5C()
{
  v0 = sub_100005BCC();
  sub_100041CB4(v0);
  sub_100041CB4(&qword_1001018F0);
  sub_10000CB04();
  sub_100009624(v1, &qword_1001018E0);
  sub_100082B40();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002CC04()
{
  type metadata accessor for List();
  type metadata accessor for List();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100005D14();
  return swift_getWitnessTable();
}

uint64_t sub_10002CCE4()
{
  type metadata accessor for Section();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_100005D14();
  return swift_getWitnessTable();
}

char *sub_10002CE5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100013378(a3, result);
  }

  return result;
}

uint64_t sub_10002CE7C()
{
  swift_unknownObjectWeakDestroy();
  sub_100003A00();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002CEB4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002CF00()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002CF48()
{
  v1 = sub_100005BF0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002CF80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002CFC8()
{

  v0 = sub_100005BF0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002CFF8()
{
  sub_100003A00();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002D030()
{

  v1 = sub_100005BF0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002D068()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002D110(uint64_t a1)
{
  sub_100005280(a1);
  result = AddShortcutToHomeScreenAction.shortcut.getter();
  *v1 = result;
  return result;
}

uint64_t sub_10002D13C(uint64_t a1)
{
  v2 = sub_100005280(a1);
  result = CreateShortcutiCloudLinkAction.shortcut.getter(v2);
  *v1 = result;
  return result;
}

uint64_t sub_10002D190(uint64_t a1)
{
  v2 = sub_100005280(a1);
  result = CreateShortcutiCloudLinkAction.shortcut.getter(v2);
  *v1 = result;
  return result;
}

uint64_t sub_10002D20C(uint64_t a1)
{
  sub_100005280(a1);
  result = CreateFolderAction.name.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_10002D260(uint64_t a1)
{
  v2 = sub_100005280(a1);
  result = CreateWorkflowAction.name.getter(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t sub_10002D2B4(uint64_t a1)
{
  sub_100005280(a1);
  result = AddShortcutToHomeScreenAction.shortcut.getter();
  *v1 = result;
  return result;
}

uint64_t sub_10002D2EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002D334()
{
  sub_100019CF0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002D378()
{
  sub_1000060B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002D3B4()
{
  v1 = type metadata accessor for LibraryDataSource.SortType();
  sub_100004458();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10002D46C()
{
  _Block_release(*(v0 + 16));
  sub_100003A00();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002D4A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D4F0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003F64();
  type metadata accessor for AutoShortcutAppSection();
  sub_10000525C();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_13:

    return sub_10000AB80(v9, v3, v8);
  }

  if (v3 != 0x7FFFFFFF)
  {
    type metadata accessor for TopHitViewColorScheme();
    sub_10000525C();
    if (*(v13 + 84) == v3)
    {
      v8 = v12;
      v14 = a3[8];
    }

    else
    {
      sub_10002E87C(&qword_1001027E0);
      sub_10000525C();
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v14 = a3[10];
      }

      else
      {
        v8 = sub_10002E87C(&qword_1001027E8);
        v14 = a3[11];
      }
    }

    v9 = v4 + v14;
    goto LABEL_13;
  }

  v10 = *(v4 + a3[7]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_10002D64C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003F64();
  type metadata accessor for AutoShortcutAppSection();
  sub_10000525C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[7]) = (v4 - 1);
      return;
    }

    type metadata accessor for TopHitViewColorScheme();
    sub_10000525C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[8];
    }

    else
    {
      sub_10002E87C(&qword_1001027E0);
      sub_10000525C();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[10];
      }

      else
      {
        v10 = sub_10002E87C(&qword_1001027E8);
        v14 = a4[11];
      }
    }

    v11 = v5 + v14;
  }

  sub_1000042A8(v11, v4, v4, v10);
}

uint64_t sub_10002D7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AggregatedEntry();
  sub_10000525C();
  if (*(v7 + 84) == a2)
  {

    return sub_10000AB80(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 > 1)
    {
      return (v9 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10002D84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100003F64();
  type metadata accessor for AggregatedEntry();
  sub_10000525C();
  if (*(v9 + 84) == a3)
  {

    sub_1000042A8(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = -v4;
  }
}

uint64_t sub_10002D8F4()
{
  sub_100017384();
  if (v1)
  {
    return sub_100003F80(*(v0 + 8));
  }

  sub_10002E87C(&qword_100102A70);
  v3 = sub_10000F7D0();

  return sub_10000AB80(v3, v4, v5);
}

void sub_10002D96C()
{
  sub_1000052A4();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_10002E87C(&qword_100102A70);
    v3 = sub_10000F7D0();

    sub_1000042A8(v3, v4, v0, v5);
  }
}

uint64_t sub_10002DA0C()
{
  sub_100017384();
  if (v1)
  {
    return sub_100003F80(*v0);
  }

  sub_10002E87C(&qword_100102A70);
  v3 = sub_10000F7D0();

  return sub_10000AB80(v3, v4, v5);
}

void sub_10002DA84()
{
  sub_1000052A4();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_10002E87C(&qword_100102A70);
    v3 = sub_10000F7D0();

    sub_1000042A8(v3, v4, v0, v5);
  }
}

uint64_t sub_10002DAFC()
{
  sub_100017384();
  if (v3)
  {
    return sub_100003F80(*v0);
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_10002E87C(&qword_100102A70);
  if (*(*(v7 - 8) + 84) == v6)
  {
    v8 = v7;
    v9 = *(v5 + 20);
  }

  else
  {
    v8 = sub_10002E87C(&qword_100102BD0);
    v9 = *(v5 + 24);
  }

  return sub_10000AB80(v0 + v9, v6, v8);
}

void sub_10002DBCC()
{
  sub_1000052A4();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_10002E87C(&qword_100102A70);
    if (*(*(v7 - 8) + 84) == v6)
    {
      v8 = v7;
      v9 = *(v5 + 20);
    }

    else
    {
      v8 = sub_10002E87C(&qword_100102BD0);
      v9 = *(v5 + 24);
    }

    sub_1000042A8(v1 + v9, v0, v0, v8);
  }
}

uint64_t sub_10002DCA4()
{
  v1 = type metadata accessor for AppGridView(0);
  sub_100005C58();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = v0 + v4 + *(v1 + 20);

  v8 = *(sub_10002E87C(&qword_100102A70) + 32);
  v9 = type metadata accessor for AutoShortcutApp();
  if (!sub_10000AB80(v7 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  v10 = *(v1 + 24);
  sub_10002E87C(&qword_100102A68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003EC8();
    (*(v11 + 8))(v0 + v4 + v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_10002DE40()
{
  v1 = type metadata accessor for AppGridView(0);
  sub_100005C58();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v17 = *(v5 + 64);
  v6 = type metadata accessor for AutoShortcutApp();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v16 = *(v7 + 64);

  v9 = v0 + v4 + *(v1 + 20);

  v10 = *(sub_10002E87C(&qword_100102A70) + 32);
  if (!sub_10000AB80(v9 + v10, 1, v6))
  {
    (*(v7 + 8))(v9 + v10, v6);
  }

  v11 = *(v1 + 24);
  sub_10002E87C(&qword_100102A68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003EC8();
    (*(v12 + 8))(v0 + v4 + v11);
  }

  else
  {
  }

  v13 = v3 | v8;
  v14 = (v4 + v17 + v8) & ~v8;
  (*(v7 + 8))(v0 + v14, v6);

  return _swift_deallocObject(v0, v14 + v16, v13 | 7);
}

uint64_t sub_10002E050@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E0A4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002E0FC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002E168()
{
  v1 = (type metadata accessor for AppListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(sub_10002E87C(&qword_100102A70) + 32);
  v7 = type metadata accessor for AutoShortcutApp();
  if (!sub_10000AB80(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002E2A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E314@<X0>(uint64_t *a1@<X8>)
{
  result = AddShortcutToHomeScreenAction.$shortcut.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E340@<X0>(uint64_t *a1@<X8>)
{
  result = AddShortcutToHomeScreenAction.$title.getter();
  *a1 = result;
  return result;
}

id sub_10002E36C()
{
  result = [v0 textInputMode];
  if (result)
  {
    v2 = sub_100032A74(result);
    if (v3)
    {
      if (v2 == 0x6F69746174636964 && v3 == 0xE90000000000006ELL)
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v6 = sub_1000A1240(v0);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        if (String.count.getter() != 1)
        {
LABEL_16:

          return 0;
        }

        sub_10008485C(v8, v9);
        v11 = v10;

        if (v11)
        {
          v12 = sub_100003BD0();
          if (sub_10002E498(v12, v13) == 1)
          {
            v14 = sub_100003BD0();
            v16 = sub_1000848A4(v14, v15);

            if ((v16 & 0x100000000) == 0)
            {
              return (v16 == 65532);
            }

            return 0;
          }

          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_10002E498(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return sub_100032BB8(0xFuLL, v3 | (v2 << 16), a1, a2);
}

void variable initialization expression of OpenNavigationDestinationAction._target()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_100007D4C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_10000CACC(v5, v44);
  v7 = __chkstk_darwin(v6);
  sub_100012AFC(v7, v8, v9, v10, v11, v12, v13, v14, v45);
  v15 = sub_10002E87C(&qword_1000FF578);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100019C0C(v17, v46);
  v18 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v18);
  sub_100005B90();
  __chkstk_darwin(v19);
  sub_100005AEC(v20, v47);
  v21 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_10000443C();
  v25 = type metadata accessor for Locale();
  v26 = sub_100002EE0(v25);
  __chkstk_darwin(v26);
  sub_10001C694();
  v27 = type metadata accessor for String.LocalizationValue();
  v28 = sub_100002EE0(v27);
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100011D5C();
  v29 = type metadata accessor for LocalizedStringResource();
  sub_100003EC8();
  __chkstk_darwin(v30);
  sub_100003EB0();
  v31 = sub_10002E87C(&qword_1000FF588);
  sub_100007064(v31);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v33 = *(v23 + 104);
  v33(v0, enum case for LocalizedStringResource.BundleDescription.main(_:), v21);
  sub_100007BC8();
  sub_1000042D0();
  sub_100011DE8();
  static Locale.current.getter();
  v33(v0, v32, v21);
  sub_1000042D0();
  v34 = sub_100017400();
  sub_100033518(v34, v35, v36, v29);
  type metadata accessor for NavigationDestinationEntity();
  sub_100004730();
  sub_100033518(v37, v38, v39, v40);
  v41 = type metadata accessor for IntentDialog();
  sub_100002E90(v41);
  v42 = sub_100033504();
  v43(v42);
  sub_100015B88(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
  sub_100006084();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

uint64_t sub_10002E87C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void variable initialization expression of OpenWorkflowAction._target()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_100007924(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_10000E8B0(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005AEC(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF598);
  sub_100005CB0(v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100013784();
  v27 = sub_100017990();
  sub_10000396C(v27);
  v28 = sub_10000A5AC();
  v29(v28);
  sub_100021C0C();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of CreateWorkflowAction._name()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000F7E0(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100019C0C(v5, v31);
  v6 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100005AEC(v8, v32);
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100008340(v11, v33);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v12);
  sub_100003EB0();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v17);
  sub_1000051D8();
  v18 = sub_10002E87C(&qword_1000FF5B0);
  sub_1000118F4(v18);
  static Locale.current.getter();
  v19 = sub_100004398();
  v0(v19);
  sub_100005B78();
  sub_10000F6AC();
  sub_100003BC0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = sub_100006A08();
  v0(v20);
  sub_10000F6AC();
  sub_100006B38();
  type metadata accessor for String.IntentInputOptions();
  v21 = sub_100008330();
  sub_100033518(v21, v22, v23, v24);
  type metadata accessor for IntentDialog();
  v25 = sub_100005E08();
  sub_1000042A8(v25, v26, v27, v28);
  v29 = sub_1000095B8();
  v30(v29);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of CreateFolderAction._name()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000F7E0(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100019C0C(v5, v31);
  v6 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100005AEC(v8, v32);
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100008340(v11, v33);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v12);
  sub_100003EB0();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v17);
  sub_1000051D8();
  v18 = sub_10002E87C(&qword_1000FF5B0);
  sub_1000118F4(v18);
  static Locale.current.getter();
  v19 = sub_100004398();
  v0(v19);
  sub_100005B78();
  sub_10000F6AC();
  sub_100003BC0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = sub_100006A08();
  v0(v20);
  sub_10000F6AC();
  sub_100006B38();
  type metadata accessor for String.IntentInputOptions();
  v21 = sub_100008330();
  sub_100033518(v21, v22, v23, v24);
  type metadata accessor for IntentDialog();
  v25 = sub_100005E08();
  sub_1000042A8(v25, v26, v27, v28);
  v29 = sub_1000095B8();
  v30(v29);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of MoveShortcutToFolderAction._shortcuts()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_100007924(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_10000E8B0(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005AEC(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF5B8);
  sub_100005CB0(v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100013784();
  v27 = sub_100017990();
  sub_10000396C(v27);
  v28 = sub_10000A5AC();
  v29(v28);
  sub_100021C0C();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of MoveShortcutToFolderAction._folder()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_100007944();
  sub_100007D4C(v1);
  v2 = sub_10002E87C(&qword_1000FF570);
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_10000CACC(v4, v43);
  v6 = __chkstk_darwin(v5);
  sub_100012AFC(v6, v7, v8, v9, v10, v11, v12, v13, v44);
  v14 = sub_10002E87C(&qword_1000FF578);
  sub_100002EE0(v14);
  sub_100005B90();
  __chkstk_darwin(v15);
  sub_100019C0C(v16, v45);
  v17 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v17);
  sub_100005B90();
  __chkstk_darwin(v18);
  sub_100005AEC(v19, v46);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_10000443C();
  v23 = type metadata accessor for Locale();
  v24 = sub_100002EE0(v23);
  __chkstk_darwin(v24);
  sub_1000039BC();
  sub_100011D5C();
  v25 = type metadata accessor for String.LocalizationValue();
  v26 = sub_100002EE0(v25);
  __chkstk_darwin(v26);
  sub_1000039BC();
  v27 = sub_1000046A8();
  sub_100003EC8();
  __chkstk_darwin(v28);
  sub_1000051D8();
  v29 = sub_10002E87C(&qword_1000FF588);
  sub_100007064(v29);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = *(v21 + 104);
  v31 = sub_100007DAC();
  v30(v31);
  sub_100007BC8();
  sub_100011850();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = sub_100007DAC();
  v30(v32);
  sub_100011850();
  v33 = sub_100017400();
  sub_100033518(v33, v34, v35, v27);
  type metadata accessor for NavigationDestinationEntity();
  sub_100004730();
  sub_100033518(v36, v37, v38, v39);
  v40 = type metadata accessor for IntentDialog();
  sub_100002E90(v40);
  v41 = sub_100033504();
  v42(v41);
  sub_10002F79C();
  sub_100006084();
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_100002EEC();
}

unint64_t sub_10002F79C()
{
  result = qword_1000FF5C0;
  if (!qword_1000FF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF5C0);
  }

  return result;
}

void variable initialization expression of AddShortcutToHomeScreenAction._shortcut()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_100007924(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_10000E8B0(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005AEC(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF598);
  sub_100005CB0(v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100013784();
  v27 = sub_100017990();
  sub_10000396C(v27);
  v28 = sub_10000A5AC();
  v29(v28);
  sub_100021C0C();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of AddShortcutToHomeScreenAction._title()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  v31 = v2;
  v32 = v1;
  __chkstk_darwin(v1);
  sub_100007944();
  v30 = v3;
  v4 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v4);
  sub_100005B90();
  __chkstk_darwin(v5);
  sub_100005AEC(v6, v28);
  v7 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v7);
  sub_100005B90();
  __chkstk_darwin(v8);
  sub_100008340(v9, v29);
  v10 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  sub_100005B00();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v12);
  sub_100003EB0();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v17);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = sub_100004398();
  v0(v18);
  sub_100005B78();
  sub_10000F6AC();
  sub_100003BC0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = sub_100006A08();
  v0(v19);
  sub_10000F6AC();
  sub_100006B38();
  type metadata accessor for String.IntentInputOptions();
  v20 = sub_100008330();
  sub_100033518(v20, v21, v22, v23);
  type metadata accessor for IntentDialog();
  v24 = sub_100005E08();
  sub_1000042A8(v24, v25, v26, v27);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of AddShortcutToHomeScreenAction._image()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_100007D4C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100005B00();
  sub_10000516C(v5);
  v6 = sub_10002E87C(&qword_1000FF5D0);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100005B00();
  sub_10000F7E0(v8);
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100019C0C(v11, v30);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v12);
  sub_100003EB0();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v17);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5D8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = sub_100004398();
  v0(v18);
  sub_100005B78();
  sub_10000F6AC();
  sub_100003BC0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = sub_100006A08();
  v0(v19);
  sub_100006634();
  sub_10000F6AC();
  sub_100006B38();
  type metadata accessor for IntentFile();
  v20 = sub_100008330();
  sub_100033518(v20, v21, v22, v23);
  type metadata accessor for IntentDialog();
  v24 = sub_100005E08();
  sub_1000042A8(v24, v25, v26, v27);
  v28 = sub_100033504();
  v29(v28);
  IntentParameter<>.init(title:description:default:supportedTypeIdentifiers:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of RenameShortcutAction._shortcut()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_100007924(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_10000E8B0(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005AEC(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF598);
  sub_100005CB0(v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100013784();
  v27 = sub_100017990();
  sub_10000396C(v27);
  v28 = sub_10000A5AC();
  v29(v28);
  sub_100021C0C();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of RenameShortcutAction._name()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000F7E0(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100019C0C(v5, v31);
  v6 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100005AEC(v8, v32);
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100008340(v11, v33);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v12);
  sub_100003EB0();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v17);
  sub_1000051D8();
  v18 = sub_10002E87C(&qword_1000FF5C8);
  sub_1000118F4(v18);
  static Locale.current.getter();
  v19 = sub_100004398();
  v0(v19);
  sub_100005B78();
  sub_10000F6AC();
  sub_100003BC0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = sub_100006A08();
  v0(v20);
  sub_10000F6AC();
  sub_100006B38();
  type metadata accessor for String.IntentInputOptions();
  v21 = sub_100008330();
  sub_100033518(v21, v22, v23, v24);
  type metadata accessor for IntentDialog();
  v25 = sub_100005E08();
  sub_1000042A8(v25, v26, v27, v28);
  v29 = sub_1000095B8();
  v30(v29);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of GetShortcutAttributesAction._attribute()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_100007D4C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_10000CACC(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_100012AFC(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100019C0C(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF5E0);
  sub_10003353C(v24);
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  sub_100011DE8();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100006634();
  sub_100013784();
  sub_100006B38();
  v27 = type metadata accessor for IntentDialog();
  sub_100002E90(v27);
  v28 = sub_100033504();
  v29(v28);
  sub_1000309C0();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_100002EEC();
}

unint64_t sub_1000309C0()
{
  result = qword_1000FF5E8;
  if (!qword_1000FF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF5E8);
  }

  return result;
}

void variable initialization expression of GetShortcutAttributesAction._shortcut()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_100007924(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_10000E8B0(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005AEC(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF598);
  sub_100005CB0(v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  sub_100011DE8();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100013784();
  v27 = sub_100017990();
  sub_10000396C(v27);
  v28 = sub_10000A5AC();
  v29(v28);
  sub_100021C0C();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of SetShortcutAttributesAction._operation()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_100007D4C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_10000CACC(v5, v29);
  v7 = __chkstk_darwin(v6);
  sub_100012AFC(v7, v8, v9, v10, v11, v12, v13, v14, v30);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100019C0C(v17, v31);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5F0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = sub_1000334E0();
  v0(v24);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334F4();
  v0(v25);
  sub_100006634();
  sub_100013784();
  sub_100006B38();
  v26 = type metadata accessor for IntentDialog();
  sub_100002E90(v26);
  v27 = sub_100033504();
  v28(v27);
  sub_100030FAC();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_100002EEC();
}

unint64_t sub_100030FAC()
{
  result = qword_1000FF5F8;
  if (!qword_1000FF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF5F8);
  }

  return result;
}

void variable initialization expression of SetShortcutAttributesAction._attribute()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_100007D4C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_10000CACC(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_100012AFC(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100019C0C(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF5E0);
  sub_10003353C(v24);
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100006634();
  sub_100013784();
  sub_100006B38();
  v27 = type metadata accessor for IntentDialog();
  sub_100002E90(v27);
  v28 = sub_100033504();
  v29(v28);
  sub_1000309C0();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_100002EEC();
}

void _s9Shortcuts24ChangeShortcutIconActionV9_shortcut33_B29CCC7E825B40691968E618E6A8EC65LL10AppIntents15IntentParameterCyAA14WorkflowEntityVGvpfi_0()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_100007924(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_10000E8B0(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005AEC(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF598);
  sub_100005CB0(v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100013784();
  v27 = sub_100017990();
  sub_10000396C(v27);
  v28 = sub_10000A5AC();
  v29(v28);
  sub_100021C0C();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of SetShortcutAttributesAction._state()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_100007D4C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100005B00();
  sub_10000516C(v5);
  v6 = sub_10002E87C(&qword_1000FF600);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100005B00();
  sub_10000F7E0(v8);
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100019C0C(v11, v30);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v12);
  sub_100003EB0();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v17);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF608);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = sub_100004398();
  v0(v18);
  sub_100005B78();
  sub_10000F6AC();
  sub_100003BC0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = sub_100006A08();
  v0(v19);
  sub_100006634();
  sub_10000F6AC();
  sub_100006B38();
  type metadata accessor for Bool.IntentDisplayName();
  v20 = sub_100008330();
  sub_100033518(v20, v21, v22, v23);
  type metadata accessor for IntentDialog();
  v24 = sub_100005E08();
  sub_1000042A8(v24, v25, v26, v27);
  v28 = sub_100033504();
  v29(v28);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of CreateShortcutiCloudLinkAction._shortcut()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000516C(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_100007924(v5, v30);
  v7 = __chkstk_darwin(v6);
  sub_10000E8B0(v7, v8, v9, v10, v11, v12, v13, v14, v31);
  v15 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100005AEC(v17, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v18);
  sub_100003EB0();
  v19 = type metadata accessor for Locale();
  v20 = sub_100002EE0(v19);
  __chkstk_darwin(v20);
  sub_10000443C();
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = sub_100002EE0(v21);
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_1000046A8();
  sub_10000F174();
  __chkstk_darwin(v23);
  sub_1000051D8();
  v24 = sub_10002E87C(&qword_1000FF598);
  sub_100005CB0(v24);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = sub_1000334E0();
  v0(v25);
  sub_1000132D8();
  sub_100006124();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = sub_1000334F4();
  v0(v26);
  sub_100013784();
  v27 = sub_100017990();
  sub_10000396C(v27);
  v28 = sub_10000A5AC();
  v29(v28);
  sub_100021C0C();
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of DeleteWorkflowAction._entities()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v3);
  sub_100007944();
  sub_10000516C(v4);
  v5 = sub_10002E87C(&qword_1000FF570);
  v6 = sub_100002EE0(v5);
  __chkstk_darwin(v6);
  sub_100007924(v7, v31);
  __chkstk_darwin(v8);
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003EB0();
  v14 = type metadata accessor for Locale();
  v15 = sub_100002EE0(v14);
  __chkstk_darwin(v15);
  sub_10000443C();
  v16 = type metadata accessor for String.LocalizationValue();
  v17 = sub_100002EE0(v16);
  __chkstk_darwin(v17);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v18);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5B8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v12 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  sub_1000042D0();
  sub_100004730();
  sub_1000042A8(v19, v20, v21, v0);
  v22 = type metadata accessor for IntentDialog();
  sub_100004730();
  sub_1000042A8(v23, v24, v25, v22);
  v26 = sub_100005E08();
  sub_1000042A8(v26, v27, v28, v22);
  v29 = sub_10000A5AC();
  v30(v29);
  sub_100021C0C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of SearchShortcutsAction._searchPhrase()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_100007944();
  sub_10000F7E0(v2);
  v3 = sub_10002E87C(&qword_1000FF570);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100019C0C(v5, v30);
  v6 = sub_10002E87C(&qword_1000FF5A8);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100005AEC(v8, v31);
  v9 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v9);
  sub_100005B90();
  __chkstk_darwin(v10);
  sub_100008340(v11, v32);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100017314();
  __chkstk_darwin(v12);
  sub_100003EB0();
  v13 = type metadata accessor for Locale();
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_10000443C();
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = sub_100002EE0(v15);
  __chkstk_darwin(v16);
  sub_10001C694();
  type metadata accessor for LocalizedStringResource();
  sub_10000F174();
  __chkstk_darwin(v17);
  sub_1000051D8();
  sub_10002E87C(&qword_1000FF5C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = sub_100004398();
  v0(v18);
  sub_100005B78();
  sub_10000F6AC();
  sub_100003BC0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = sub_100006A08();
  v0(v19);
  sub_10000F6AC();
  sub_100006B38();
  type metadata accessor for String.IntentInputOptions();
  v20 = sub_100008330();
  sub_100033518(v20, v21, v22, v23);
  type metadata accessor for IntentDialog();
  v24 = sub_100005E08();
  sub_1000042A8(v24, v25, v26, v27);
  v28 = sub_1000095B8();
  v29(v28);
  sub_10000B0B8();
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_100002EEC();
}

void variable initialization expression of SearchShortcutsAction._folder()
{
  sub_1000043AC();
  type metadata accessor for InputConnectionBehavior();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_100007944();
  sub_100007D4C(v1);
  v2 = sub_10002E87C(&qword_1000FF570);
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_10000CACC(v4, v43);
  v6 = __chkstk_darwin(v5);
  sub_100012AFC(v6, v7, v8, v9, v10, v11, v12, v13, v44);
  v14 = sub_10002E87C(&qword_1000FF578);
  sub_100002EE0(v14);
  sub_100005B90();
  __chkstk_darwin(v15);
  sub_100019C0C(v16, v45);
  v17 = sub_10002E87C(&qword_1000FF580);
  sub_100002EE0(v17);
  sub_100005B90();
  __chkstk_darwin(v18);
  sub_100005AEC(v19, v46);
  type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_100004458();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_10000443C();
  v23 = type metadata accessor for Locale();
  v24 = sub_100002EE0(v23);
  __chkstk_darwin(v24);
  sub_1000039BC();
  sub_100011D5C();
  v25 = type metadata accessor for String.LocalizationValue();
  v26 = sub_100002EE0(v25);
  __chkstk_darwin(v26);
  sub_1000039BC();
  v27 = sub_1000046A8();
  sub_100003EC8();
  __chkstk_darwin(v28);
  sub_1000051D8();
  v29 = sub_10002E87C(&qword_1000FF588);
  sub_100007064(v29);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = *(v21 + 104);
  v31 = sub_100007DAC();
  v30(v31);
  sub_100007BC8();
  sub_100011850();
  sub_100006124();
  sub_100011DE8();
  static Locale.current.getter();
  v32 = sub_100007DAC();
  v30(v32);
  sub_100011850();
  v33 = sub_100017400();
  sub_100033518(v33, v34, v35, v27);
  type metadata accessor for NavigationDestinationEntity();
  sub_100004730();
  sub_100033518(v36, v37, v38, v39);
  v40 = type metadata accessor for IntentDialog();
  sub_100002E90(v40);
  v41 = sub_100033504();
  v42(v41);
  sub_10002F79C();
  sub_100006084();
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_100002EEC();
}

uint64_t sub_100032544()
{
  type metadata accessor for ColorScheme();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_1000039BC();
  v1 = sub_100003BD0();
  v2(v1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100032610@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_10002E87C(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100032694(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_1000FF770);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  sub_100032ED4(a1, &v6 - v4);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_10003273C(uint64_t a1)
{
  v2 = sub_100015B88(&qword_1000FFA10, type metadata accessor for Key);
  v3 = sub_100015B88(&unk_1000FF840, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000327F8(uint64_t a1)
{
  v2 = sub_100015B88(&qword_1000FF818, type metadata accessor for WFWorkflowRunSource);
  v3 = sub_100015B88(&qword_1000FF820, type metadata accessor for WFWorkflowRunSource);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000328B4(uint64_t a1)
{
  v2 = sub_100015B88(&unk_100101F70, type metadata accessor for WFWorkflowTypeName);
  v3 = sub_100015B88(&qword_1000FF810, type metadata accessor for WFWorkflowTypeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100032970@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000329B8(uint64_t a1)
{
  v2 = sub_100015B88(&qword_1000FF828, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_100015B88(&unk_1000FF830, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100032A74(void *a1)
{
  v2 = [a1 primaryLanguage];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100032AE4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t sub_100032B38()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_100003BD0();
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_100032BB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_100032DC4(a1, a3, a4);
  result = sub_100032DC4(a2, a3, a4);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
        v7 = result;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_38;
  }

  return 0;
}

unint64_t sub_100032DC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100032E64(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10008FF0C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100032E64(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_10008DB4C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100032ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_1000FF770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr1000EF9A1C13LayoutMetricsV17TopHitsItemLayoutVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr1000EF9A1C13LayoutMetricsV17TopHitsItemLayoutVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100032FCC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100032FD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100032FF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100033350(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000333C8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100033448()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_100033480()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10003353C(uint64_t a1)
{
  *(v1 - 144) = a1;

  return String.LocalizationValue.init(stringLiteral:)();
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return static String._fromUTF8Repairing(_:)();
    }

LABEL_9:
    __break(1u);
    return static String._fromUTF8Repairing(_:)();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_1000FF470 != -1)
  {
    sub_10000446C();
  }

  return &static NSBundle._current;
}

id sub_1000336A4()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_1000FF470 != -1)
  {
    sub_10000446C();
  }

  v1 = static NSBundle._current;

  return v1;
}

Swift::Int sub_10003378C(Swift::UInt a1, double a2)
{
  Hasher.init(_seed:)();
  sub_100022C34(&v5, a1, a2);
  return Hasher._finalize()();
}

void sub_100033820()
{
  v0 = sub_10000A884();
  if (v0)
  {
    v1 = v0;
    [v0 layoutMargins];

    v2 = sub_10000A884();
    if (v2)
    {
      v3 = v2;
      [v2 layoutMargins];

      sub_100006098();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000338A8()
{
  if (!sub_10001ACF8())
  {
    sub_100017B98(v5);
    v0 = v6;
    sub_1000182F8(v5);
    [v0 sectionInset];
  }

  v1 = sub_10000A884();
  if (v1)
  {
    v2 = v1;
    [v1 layoutMargins];

    v3 = sub_10000A884();
    if (v3)
    {
      v4 = v3;
      [v3 layoutMargins];

      sub_100019C20();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100033988()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutMargins];

    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 layoutMargins];

      sub_100006098();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100033A2C()
{
  result = qword_1000FF9C8;
  if (!qword_1000FF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF9C8);
  }

  return result;
}

id sub_100033A80()
{
  v3 = *(v0 + 2032);

  return [v1 v3];
}

uint64_t sub_100033AA4()
{

  return type metadata accessor for ShortcutsLibrarySection();
}

uint64_t sub_100033AE8()
{
  type metadata accessor for PrefetchableImage.Coordinator();
  static PrefetchableImage.Coordinator.current.getter();
  static Duration.zero.getter();
  dispatch thunk of PrefetchableImage.Coordinator.deactivate(after:)();
}

id sub_100033B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemImagePrefetcher();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100033BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WFMainViewController_initialDestination;
  type metadata accessor for RootNavigationDestination();
  sub_100003EC8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_100033C38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WFMainViewController_currentDestination;
  sub_100005BC0();
  swift_beginAccess();
  return sub_10000823C(v1 + v3, a1, &qword_100100028);
}

Swift::Int MoveShortcutToFolderAction.MoveError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100033D38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100033DB4()
{
  v0 = sub_100007194();
  v1 = [v0 tabBarController];

  if (v1)
  {
    [v1 setSelectedIndex:0];
    v2 = [v1 selectedViewController];
    if (v2)
    {
      v5 = v2;
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
      }

      v4 = v5;
    }

    else
    {
      v4 = v1;
    }
  }
}

void sub_100033E9C()
{
  type metadata accessor for RootNavigationDestination();
  sub_100004730();
  sub_1000042A8(v1, v2, v3, v4);
  *(v0 + OBJC_IVAR___WFMainViewController_navigationCompletions) = &_swiftEmptyArrayStorage;
  v5 = OBJC_IVAR___WFMainViewController_mainUndoManager;
  *(v0 + v5) = [objc_allocWithZone(NSUndoManager) init];
  *(v0 + OBJC_IVAR___WFMainViewController_display) = 0;
  *(v0 + OBJC_IVAR___WFMainViewController____lazy_storage___columnSidebar) = 0;
  *(v0 + OBJC_IVAR___WFMainViewController____lazy_storage___compactSidebar) = 0;
  *(v0 + OBJC_IVAR___WFMainViewController____lazy_storage___columnGalleryViewController) = 0;
  *(v0 + OBJC_IVAR___WFMainViewController____lazy_storage___compactGalleryViewController) = 0;
  *(v0 + OBJC_IVAR___WFMainViewController____lazy_storage___searchStateController) = 0;
  *(v0 + OBJC_IVAR___WFMainViewController_content) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100033FCC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MainViewController(0);
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  type metadata accessor for ActionDrawerDataSource();
  static ActionDrawerDataSource.shared.getter();

  type metadata accessor for GlyphRegistry();
  static GlyphRegistry.shared.getter();

  type metadata accessor for SystemImagePrefetcher();
  return sub_100033AE8();
}

void sub_100034098(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == [a1 horizontalSizeClass])
  {
    v13.receiver = v3;
    v13.super_class = type metadata accessor for MainViewController(0);
    objc_msgSendSuper2(&v13, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  }

  else
  {
    v8 = sub_10000BDD4();
    v9 = a1;
    sub_100090558(a1);

    v20.receiver = v3;
    v20.super_class = type metadata accessor for MainViewController(0);
    objc_msgSendSuper2(&v20, "willTransitionToTraitCollection:withTransitionCoordinator:", v9, a2);
    sub_100003A00();
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    v18 = sub_100041C48;
    v19 = v10;
    sub_100013320();
    v15 = 1107296256;
    v16 = sub_10003426C;
    v17 = &unk_1000F1AE0;
    v11 = _Block_copy(aBlock);
    v12 = v3;

    [a2 animateAlongsideTransition:0 completion:v11];
    _Block_release(v11);
  }
}

void sub_100034218()
{
  v0 = sub_10000BDD4();
  sub_100090558(0);
}

uint64_t sub_10003426C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_10003434C()
{
  v0 = WFUserInterfaceFromViewController();

  return v0;
}

void sub_10003437C()
{
  v1 = &_swiftEmptyArrayStorage;
  v60 = &_swiftEmptyArrayStorage;
  sub_10002E87C(&qword_100100170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C0C20;
  v3 = *(v0 + OBJC_IVAR___WFMainViewController_content);
  *(inited + 32) = v3;
  v59[0] = &_swiftEmptyArrayStorage;
  v4 = v3;
  v5 = *(inited + 32);
  if (v5)
  {
    v6 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100041E90();
    if (v8)
    {
      sub_100005E38(v7);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    sub_100005178();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v59[0];
  }

  swift_setDeallocating();
  sub_100069AB4();
  sub_100042104(v1);
  v9 = sub_100007194();
  v10 = [v9 tabBarController];

  if (!v10)
  {
    v12 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v11 = sub_1000414EC(v10);
  v12 = &_swiftEmptyArrayStorage;
  if (!v11)
  {
LABEL_21:
    v18 = v12;
    v19 = sub_10000D55C(v12);
    v20 = 0;
    v55 = v18 & 0xFFFFFFFFFFFFFF8;
    v56 = v18 & 0xC000000000000001;
    v54 = (v18 + 32);
    v21 = &_swiftEmptyArrayStorage;
    v51 = v19;
    while (1)
    {
      if (v20 == v19)
      {

        sub_100042104(v21);
        v46 = v60;
        v47 = sub_10000D55C(v60);
        for (i = 0; v47 != i; ++i)
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            sub_100003BD0();
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v49 = v46[i + 4];
          }

          v50 = v49;
          if (__OFADD__(i, 1))
          {
            goto LABEL_75;
          }

          type metadata accessor for LibraryViewController();
          if (swift_dynamicCastClass())
          {
            break;
          }
        }

        return;
      }

      if (v56)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v55 + 16))
        {
          goto LABEL_72;
        }

        v22 = *&v54[8 * v20];
      }

      v23 = v22;
      v24 = __OFADD__(v20++, 1);
      if (v24)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v25 = [v22 viewControllers];
      v26 = sub_100003A0C();
      v27 = sub_100002FC4(v26, &qword_1000FFFA8);
      sub_100006324();
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v28 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v21 >> 62;
      if (v21 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v31 + v29;
      if (__OFADD__(v31, v29))
      {
        goto LABEL_73;
      }

      v58 = v29;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v30)
      {
        goto LABEL_37;
      }

      v33 = v21 & 0xFFFFFFFFFFFFFF8;
      if (v32 > *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_38;
      }

LABEL_39:
      v34 = *(v33 + 16);
      v35 = (*(v33 + 24) >> 1) - v34;
      v36 = v33 + 8 * v34;
      v57 = v33;
      if (v28 >> 62)
      {
        if (v28 < 0)
        {
          v9 = v28;
        }

        else
        {
          v9 = v28 & 0xFFFFFFFFFFFFFF8;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_56;
        }

        sub_10000A5E0();
        v37 = _CocoaArrayWrapper.endIndex.getter();
        if (v35 < v37)
        {
          goto LABEL_81;
        }

        if (v27 < 1)
        {
          goto LABEL_82;
        }

        v52 = v37;
        v53 = v21;
        v38 = v36 + 32;
        sub_100041C50();
        for (j = 0; j != v27; ++j)
        {
          v40 = sub_100011918();
          sub_10002E87C(v40);
          v41 = sub_10006B9E0(v59, j, v28);
          v43 = *v42;
          (v41)(v59, 0);
          *(v38 + 8 * j) = v43;
        }

        v19 = v51;
        v9 = v52;
        v21 = v53;
LABEL_52:

        if (v9 < v58)
        {
          goto LABEL_74;
        }

        if (v9 > 0)
        {
          v44 = *(v57 + 16);
          v24 = __OFADD__(v44, v9);
          v45 = v44 + v9;
          if (v24)
          {
            goto LABEL_79;
          }

          *(v57 + 16) = v45;
        }
      }

      else
      {
        v9 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          if (v35 < v9)
          {
            goto LABEL_80;
          }

          swift_arrayInitWithCopy();
          goto LABEL_52;
        }

LABEL_56:

        if (v58 > 0)
        {
          goto LABEL_74;
        }
      }
    }

    if (v30)
    {
LABEL_37:
      _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_38:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v33 = v21 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_39;
  }

  v13 = &_swiftEmptyArrayStorage;
  v59[0] = &_swiftEmptyArrayStorage;
  v14 = sub_10000D55C(v11);
  v9 = 0;
  while (1)
  {
    if (v14 == v9)
    {

      v12 = v13;
      goto LABEL_21;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      sub_100006324();
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v15 = *(v11 + 8 * v9 + 32);
    }

    v16 = v15;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    objc_opt_self();
    sub_100041DA8();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100041E90();
      if (v8)
      {
        sub_100005E38(v17);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      sub_100005178();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v59[0];
      ++v9;
    }

    else
    {

      ++v9;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void *sub_100034958()
{
  v1 = *(v0 + OBJC_IVAR___WFMainViewController_content);
  if (v1)
  {
    type metadata accessor for LibraryViewController();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = &OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController;
    }

    else
    {
      type metadata accessor for GalleryHostingViewController(0);
      v2 = swift_dynamicCastClass();
      if (!v2)
      {
        return 0;
      }

      v3 = &OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController;
    }

    v1 = *(v2 + *v3);
    v4 = v1;
  }

  return v1;
}

void sub_1000349DC()
{
  sub_1000043AC();
  v4 = v3;
  v5 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100003EF4();
  sub_100041D7C();
  __chkstk_darwin(v9);
  sub_1000043D0();
  v10 = *(v7 + 104);
  if (*(v0 + OBJC_IVAR___WFMainViewController_display))
  {
    v11 = enum case for RootNavigationDestination.shortcuts(_:);
    v10(v1, enum case for RootNavigationDestination.shortcuts(_:), v5);
  }

  else
  {
    v10(v1, enum case for RootNavigationDestination.allShortcuts(_:), v5);
    v11 = enum case for RootNavigationDestination.shortcuts(_:);
  }

  (*(v7 + 16))(v2, v1, v5);
  v12 = (*(v7 + 88))(v2, v5);
  if (v12 == v11)
  {
    sub_100033DB4();
    if (v4)
    {
      v4();
    }

    goto LABEL_9;
  }

  if (v12 == enum case for RootNavigationDestination.allShortcuts(_:))
  {
    type metadata accessor for MainViewController(0);
    sub_10000448C();
    sub_100004594(v13, v14);
    RootView.navigate(to:completion:)();
LABEL_9:
    v15 = sub_10000F430();
    v16(v15);
    goto LABEL_13;
  }

  if (v4)
  {
    v4();
  }

  v17 = *(v7 + 8);
  v18 = sub_10000F430();
  v17(v18);
  (v17)(v2, v5);
LABEL_13:
  sub_100002EEC();
}

void sub_100034BF4()
{
  sub_1000043AC();
  v2 = v1;
  v3 = sub_10002E87C(&qword_100100020);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100041D8C();
  v5 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000039BC();
  v11 = v10 - v9;
  v12 = sub_100007194();
  v13 = [v12 tabBarController];

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = sub_100041564(v13);
  if (!v14)
  {

LABEL_10:
    v25 = *(v2 + OBJC_IVAR___WFMainViewController_database);
    v26 = objc_allocWithZone(type metadata accessor for TriggerRootViewController());
    v27 = v25;
    v24 = TriggerRootViewController.init(with:)();
    v20 = v24;
    goto LABEL_11;
  }

  v15 = v14;
  (*(v7 + 104))(v11, enum case for RootNavigationDestination.automations(_:), v5);
  v16 = sub_100007C20();
  (*(v7 + 8))(v11, v5);
  sub_100066898(v16, (v15 & 0xC000000000000001) == 0, v15);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(v15 + 8 * v16 + 32);
  }

  v18 = v17;

  objc_opt_self();
  v19 = swift_dynamicCastObjCClassUnconditional();
  v20 = v18;
  v21 = [v19 viewControllers];
  sub_100002FC4(0, &qword_1000FFFA8);
  sub_100041EEC();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!sub_10000D55C(v22))
  {

    __break(1u);
    return;
  }

  sub_100066898(0, (v22 & 0xC000000000000001) == 0, v22);
  if ((v22 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v23 = *(v22 + 32);
  }

  type metadata accessor for TriggerRootViewController();
  sub_100041EEC();
  v24 = swift_dynamicCastClassUnconditional();
LABEL_11:
  v28 = v24;
  sub_10000B314();

  v29 = sub_100003BD0();
  sub_10000823C(v29, v30, v31);
  v32 = type metadata accessor for RootNavigationContext();
  v33 = sub_100041D70();
  sub_10000F7EC(v33, v34, v32);
  if (v35)
  {

    sub_1000069B0(v0, &qword_100100020);
  }

  else
  {
    v36 = RootNavigationContext.createAutomation.getter();
    sub_100002F04();
    v37 = sub_1000042EC();
    v38(v37);
    if (v36)
    {
      TriggerRootViewController.startCreateNewPersonalAutomation()();
    }
  }

  sub_100002EEC();
}

void sub_100034F7C()
{
  sub_1000043AC();
  v50 = v4;
  v52 = v5;
  v54 = v6;
  v53 = v7;
  v8 = sub_10002E87C(&qword_100100020);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  sub_100007D94();
  v10 = sub_10002E87C(&qword_1000FFFC0);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  sub_10001C6D0();
  v51 = type metadata accessor for RootPPTTestCase();
  sub_100004458();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v48 = v14 - v13;
  v15 = sub_10002E87C(&qword_1000FFFC8);
  sub_100002EE0(v15);
  sub_100005B90();
  __chkstk_darwin(v16);
  sub_100019C2C();
  v17 = type metadata accessor for GalleryNavigationDestination();
  sub_100004458();
  v49 = v18;
  __chkstk_darwin(v19);
  sub_1000039BC();
  v22 = v21 - v20;
  v23 = [*(v0 + OBJC_IVAR___WFMainViewController_splitView) detailViewController];
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = v23;
  objc_opt_self();
  sub_1000095CC();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {

LABEL_7:
    v29 = 0;
    v28 = 0;
    goto LABEL_8;
  }

  v26 = [v25 viewControllers];

  sub_100002FC4(0, &qword_1000FFFA8);
  sub_100041DA8();
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = sub_1000354BC(v27, sub_100066898);

  if (v28)
  {
    type metadata accessor for GalleryHostingViewController(0);
    sub_100041EEC();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v28;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_8:
  v31 = sub_100007194();
  v32 = [v31 tabBarController];

  if (v32)
  {
    v33 = [v32 selectedViewController];

    if (!v33)
    {
      LODWORD(v32) = 1;
      if (!v29)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    type metadata accessor for GalleryHostingViewController(0);
    sub_1000095CC();
    LODWORD(v32) = swift_dynamicCastClass() == 0;
  }

  if (!v29)
  {
LABEL_15:
    v34 = sub_100033D88();
    sub_100007078();
    sub_10000B314();

    goto LABEL_16;
  }

LABEL_12:

  if (v32)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_10000823C(v50, v1, &qword_1000FFFC8);
  sub_10000F7EC(v1, 1, v17);
  if (v41)
  {
    sub_1000069B0(v1, &qword_1000FFFC8);
  }

  else
  {
    (*(v49 + 32))(v22, v1, v17);
    v35 = sub_100033D88();
    sub_10003F514(v22, v53 & 1);

    (*(v49 + 8))(v22, v17);
  }

  sub_10000823C(v54, v3, &qword_100100020);
  v36 = type metadata accessor for RootNavigationContext();
  sub_10000F7EC(v3, 1, v36);
  if (v41)
  {

    sub_1000069B0(v3, &qword_100100020);
    sub_100004730();
    sub_1000042A8(v37, v38, v39, v51);
  }

  else
  {
    RootNavigationContext.pptTest.getter();
    sub_100002F04();
    (*(v40 + 8))(v3, v36);
    sub_10000F7EC(v2, 1, v51);
    if (!v41)
    {
      v42 = sub_100011DAC();
      v43(v42);
      v44 = sub_100033D88();
      sub_10003FB40(v48);

      v45 = sub_10000F430();
      v47 = v46(v45);
      goto LABEL_26;
    }
  }

  v47 = sub_1000069B0(v2, &qword_1000FFFC0);
LABEL_26:
  if (v52)
  {
    v52(v47);
  }

  sub_100002EEC();
}

char *sub_1000354BC(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    sub_100003BD0();
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id sub_100035554()
{
  result = *(v0 + OBJC_IVAR___WFMainViewController_content);
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return [result scrollForNavigationTap];
    }
  }

  return result;
}

id sub_1000355A8(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_100002FC4(0, &qword_100100158);
  v6 = *(v3 + OBJC_IVAR___WFMainViewController_database);
  v7 = a1;
  v8 = v6;
  v9 = sub_100041DA8();
  v11 = sub_10004B834(v9, v10);
  v12 = sub_100038150(v11, v7, a2);

  return v12;
}

id sub_1000356CC()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [swift_getObjCClassFromMetadata() alertWithError:v0];

  return v1;
}

void sub_100035730()
{
  sub_1000043AC();
  v3 = v2;
  v4 = sub_10002E87C(&qword_100100018);
  sub_100002EE0(v4);
  sub_100005B90();
  __chkstk_darwin(v5);
  sub_10001C6D0();
  v35 = type metadata accessor for OpenWorkflowOptions();
  sub_100004458();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000039BC();
  sub_10000A7F8();
  type metadata accessor for ShortcutsFeatureFlags();
  sub_100004458();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100007B08();
  v10 = [objc_allocWithZone(WFAddShortcutEvent) init];
  v11 = @"ShortcutSourceOnDevice";
  [v10 setShortcutSource:v11];

  [v10 track];
  v12 = sub_100041EB0();
  v13(v12);
  LOBYTE(v10) = ShortcutsFeatureFlags.isFeatureEnabled.getter();
  v14 = sub_100041F0C();
  v15(v14);
  v16 = *(v0 + OBJC_IVAR___WFMainViewController_database);
  if (v10)
  {
    v17 = objc_allocWithZone(WFWorkflow);
    v18 = sub_100040940(v3, v16);
    type metadata accessor for OpenWorkflowOptions.ActionError();
    sub_100041EBC();
    sub_100004730();
    sub_1000042A8(v19, v20, v21, v22);
    sub_100006B58();
    sub_100038150(v18, 0, v1);

    (*(v7 + 8))(v1, v36);
  }

  else
  {
    v37 = 0;
    v23 = [v16 createWorkflowWithOptions:v3 error:&v37];
    v24 = v37;
    if (v23)
    {
      sub_10000E8D4();
      type metadata accessor for OpenWorkflowOptions.ActionError();
      sub_100041EBC();
      sub_100004730();
      sub_1000042A8(v25, v26, v27, v28);
      v29 = v24;
      sub_100006B58();
      v30 = sub_100011E00();
      sub_1000355A8(v30, v31);

      (*(v7 + 8))(v1, v36);
    }

    else
    {
      v32 = v37;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v33 = WFUserInterfaceFromViewController();
      sub_100002FC4(0, &qword_1000FFF98);
      swift_errorRetain();
      v34 = sub_1000356CC();
      sub_100041E24(v34, "presentAlert:");
      swift_unknownObjectRelease();
    }
  }

  sub_100005BCC();
  sub_100002EEC();
}

void sub_100035AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000043AC();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_1000042EC();
  v27 = sub_10002E87C(v26);
  v28 = v27 - 8;
  __chkstk_darwin(v27);
  sub_100003EF4();
  sub_100041D7C();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  v25;

  ShortcutFileImportView.init(importResult:completion:)();
  KeyPath = swift_getKeyPath();
  sub_10000448C();
  v35 = sub_100004594(v33, v34);
  v36 = &v31[*(sub_10002E87C(&qword_100100100) + 36)];
  *v36 = KeyPath;
  v36[1] = v20;
  v36[2] = v35;
  v37 = swift_getKeyPath();
  v20;
  v38 = WFUserInterfaceFromViewController();
  v39 = &v31[*(v28 + 44)];
  *v39 = v37;
  v39[1] = v38;
  sub_10000823C(v31, v21, &qword_1001000F8);
  v40 = objc_allocWithZone(sub_10002E87C(&qword_100100108));
  v41 = UIHostingController.init(rootView:)();
  sub_100004730();
  sub_100007078();
  sub_1000392A8(v42, v43, v44, v45, v46);

  v47 = sub_1000043C4();
  sub_1000069B0(v47, v48);
  sub_100002EEC();
}