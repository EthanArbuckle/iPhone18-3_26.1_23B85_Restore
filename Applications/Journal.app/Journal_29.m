void sub_10030D2F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10030D348(char *a1)
{
  v2 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v113 - v6);
  __chkstk_darwin(v8);
  v10 = (&v113 - v9);
  __chkstk_darwin(v11);
  v13 = (&v113 - v12);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v118 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v117 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IndexPath();
  v120 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v113 - v22;
  __chkstk_darwin(v24);
  v26 = &v113 - v25;
  __chkstk_darwin(v27);
  v29 = &v113 - v28;
  v30 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v30 - 8);
  v113 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v116 = (&v113 - v33);
  __chkstk_darwin(v34);
  v115 = (&v113 - v35);
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v114 = (&v113 - v38);
  v119 = a1;
  [a1 action];
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v48._countAndFlagsBits = 0x746163696C707544;
      v48._object = 0xEA00000000002065;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
      v49 = *&v122[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
      if (v49 && (v50 = [v49 indexPathsForSelectedItems]) != 0)
      {
        v51 = v50;
        v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = v52[2];
        if (v53 == 0.0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v52 = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[2];
        if (v53 == 0.0)
        {
          goto LABEL_20;
        }
      }

      v67 = 0;
      v80 = v120 + 16;
      v120 = *(v120 + 16);
      v121 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
      v81 = *(v80 + 64);
      v115 = v52;
      v82 = v52 + ((v81 + 32) & ~v81);
      v83 = *(v80 + 56);
      v20 = (v80 - 8);
      while (1)
      {
        (v120)(v23, v82, v18);
        v84 = *&v122[v121];
        if (!v84)
        {
          break;
        }

        v85 = v84;
        dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

        (*v20)(v23, v18);
        v86 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
        if ((*(*(v86 - 8) + 48))(v7, 1, v86) == 1)
        {
          goto LABEL_42;
        }

        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_100014124(v7, type metadata accessor for JournalEntryCollectionViewController.Item);
          goto LABEL_43;
        }

        v87 = 1;
LABEL_44:
        v77 = __OFADD__(v67, v87);
        v67 += v87;
        if (v77)
        {
          goto LABEL_85;
        }

        v82 += v83;
        --*&v53;
        if (v53 == 0.0)
        {
          goto LABEL_81;
        }
      }

      (*v20)(v23, v18);
      v88 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v88 - 8) + 56))(v7, 1, 1, v88);
LABEL_42:
      sub_100004F84(v7, &unk_100AD7CB0);
LABEL_43:
      v87 = 0;
      goto LABEL_44;
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      v100 = type metadata accessor for JournalEntryCollectionViewController(0);
      v124.receiver = v122;
      v124.super_class = v100;
      objc_msgSendSuper2(&v124, "validateCommand:", v119);
      return;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v61._countAndFlagsBits = 0x206574656C6544;
    v61._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
    v62 = *&v122[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v62 && (v63 = [v62 indexPathsForSelectedItems]) != 0)
    {
      v64 = v63;
      v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = v65[2];
      if (v66 == 0.0)
      {
LABEL_20:

        v67 = 0;
LABEL_83:
        v123 = v67;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v111._countAndFlagsBits = 0x73656972746E4520;
        v111._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v111);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v112 = String._bridgeToObjectiveC()();

        [v119 setTitle:v112];

        return;
      }
    }

    else
    {
      v65 = _swiftEmptyArrayStorage;
      v66 = _swiftEmptyArrayStorage[2];
      if (v66 == 0.0)
      {
        goto LABEL_20;
      }
    }

    v67 = 0;
    v101 = v120 + 16;
    v120 = *(v120 + 16);
    v121 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
    v102 = *(v101 + 64);
    v116 = v65;
    v103 = v65 + ((v102 + 32) & ~v102);
    v104 = *(v101 + 56);
    v105 = (v101 - 8);
    while (1)
    {
      (v120)(v20, v103, v18);
      v106 = *&v122[v121];
      if (!v106)
      {
        break;
      }

      v107 = v106;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      (*v105)(v20, v18);
      v108 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      if ((*(*(v108 - 8) + 48))(v4, 1, v108) == 1)
      {
        goto LABEL_77;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_100014124(v4, type metadata accessor for JournalEntryCollectionViewController.Item);
        goto LABEL_78;
      }

      v109 = 1;
LABEL_79:
      v77 = __OFADD__(v67, v109);
      v67 += v109;
      if (v77)
      {
        goto LABEL_87;
      }

      v103 += v104;
      --*&v66;
      if (v66 == 0.0)
      {
LABEL_81:

        goto LABEL_83;
      }
    }

    (*v105)(v20, v18);
    v110 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    (*(*(v110 - 8) + 56))(v4, 1, 1, v110);
LABEL_77:
    sub_100004F84(v4, &unk_100AD7CB0);
LABEL_78:
    v109 = 0;
    goto LABEL_79;
  }

  v39 = v122;
  v40 = sub_100302D24();
  if (v40)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v41._countAndFlagsBits = 0x2065766F6D6552;
    v41._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v41);
    v42 = *&v39[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v42 && (v43 = [v42 indexPathsForSelectedItems]) != 0)
    {
      v44 = v43;
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = v45[2];
      if (v46 == 0.0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v45 = _swiftEmptyArrayStorage;
      v46 = _swiftEmptyArrayStorage[2];
      if (v46 == 0.0)
      {
LABEL_6:

        v47 = 0;
LABEL_34:
        v123 = v47;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v78 = 0x72616D6B6F6F4220;
        v79 = 0xEA0000000000736BLL;
        goto LABEL_62;
      }
    }

    LODWORD(v116) = v40;
    v47 = 0;
    v68 = v120 + 16;
    v120 = *(v120 + 16);
    v121 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
    v69 = *(v68 + 64);
    v115 = v45;
    v20 = (v45 + ((v69 + 32) & ~v69));
    v70 = *(v68 + 56);
    v71 = (v68 - 8);
    while (1)
    {
      (v120)(v29, v20, v18);
      v72 = *&v122[v121];
      if (!v72)
      {
        break;
      }

      v73 = v72;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      (*v71)(v29, v18);
      v74 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      if ((*(*(v74 - 8) + 48))(v13, 1, v74) == 1)
      {
        goto LABEL_28;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v75 = 1;
        goto LABEL_30;
      }

      sub_100014124(v13, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_29:
      v75 = 0;
LABEL_30:
      v77 = __OFADD__(v47, v75);
      v47 += v75;
      if (v77)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        swift_once();
LABEL_64:
        v99 = &qword_100B30DE0;
        goto LABEL_68;
      }

      v20 = (v20 + v70);
      --*&v46;
      if (v46 == 0.0)
      {

        LOBYTE(v40) = v116;
        goto LABEL_34;
      }
    }

    (*v71)(v29, v18);
    v76 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    (*(*(v76 - 8) + 56))(v13, 1, 1, v76);
LABEL_28:
    sub_100004F84(v13, &unk_100AD7CB0);
    goto LABEL_29;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v54._countAndFlagsBits = 0x6B72616D6B6F6F42;
  v54._object = 0xE900000000000020;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v54);
  v55 = *&v39[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v55 && (v56 = [v55 indexPathsForSelectedItems]) != 0)
  {
    v57 = v56;
    v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = v58[2];
    if (v59 == 0.0)
    {
LABEL_15:

      v60 = 0;
      goto LABEL_61;
    }
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
    v59 = _swiftEmptyArrayStorage[2];
    if (v59 == 0.0)
    {
      goto LABEL_15;
    }
  }

  LODWORD(v116) = v40;
  v60 = 0;
  v89 = v120 + 16;
  v120 = *(v120 + 16);
  v121 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v90 = *(v89 + 64);
  v114 = v58;
  v20 = (v58 + ((v90 + 32) & ~v90));
  v91 = *(v89 + 56);
  v92 = (v89 - 8);
  do
  {
    (v120)(v26, v20, v18);
    v93 = *&v122[v121];
    if (!v93)
    {
      (*v92)(v26, v18);
      v97 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v97 - 8) + 56))(v10, 1, 1, v97);
LABEL_55:
      sub_100004F84(v10, &unk_100AD7CB0);
      goto LABEL_56;
    }

    v94 = v93;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    (*v92)(v26, v18);
    v95 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v95 - 8) + 48))(v10, 1, v95) == 1)
    {
      goto LABEL_55;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v96 = 1;
      goto LABEL_57;
    }

    sub_100014124(v10, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_56:
    v96 = 0;
LABEL_57:
    v77 = __OFADD__(v60, v96);
    v60 += v96;
    if (v77)
    {
      goto LABEL_86;
    }

    v20 = (v20 + v91);
    --*&v59;
  }

  while (v59 != 0.0);

  LOBYTE(v40) = v116;
LABEL_61:
  v123 = v60;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v78 = 0x73656972746E4520;
  v79 = 0xE800000000000000;
LABEL_62:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v78);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v20 = v119;
  String.init(localized:table:bundle:locale:comment:)();
  v98 = String._bridgeToObjectiveC()();

  [v20 setTitle:v98];

  if (v40)
  {
    if (qword_100AD0908 != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_64;
  }

  if (qword_100AD08F8 != -1)
  {
    swift_once();
  }

  v99 = &qword_100B30DD0;
LABEL_68:
  [v20 setImage:*v99];
}

uint64_t sub_10030E350(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v3 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v3 - 8);
  v147 = (&v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v137 - v6);
  v150 = type metadata accessor for IndexPath();
  v142 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v137 - v10;
  v12 = type metadata accessor for EntryListType();
  v149 = *(v12 - 8);
  __chkstk_darwin(v12);
  v145 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1000F24EC(&unk_100AE92C0);
  __chkstk_darwin(v148);
  v141 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v144 = &v137 - v16;
  __chkstk_darwin(v17);
  v19 = &v137 - v18;
  v20 = sub_1000F24EC(&unk_100ADE5F0);
  __chkstk_darwin(v20 - 8);
  v140 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v138 = &v137 - v23;
  __chkstk_darwin(v24);
  v139 = &v137 - v25;
  __chkstk_darwin(v26);
  v143 = &v137 - v27;
  __chkstk_darwin(v28);
  v30 = &v137 - v29;
  __chkstk_darwin(v31);
  v33 = &v137 - v32;
  __chkstk_darwin(v34);
  v36 = &v137 - v35;
  __chkstk_darwin(v37);
  v39 = &v137 - v38;
  __chkstk_darwin(v40);
  v42 = &v137 - v41;
  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v43 = *&v151[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel];
    if (v43)
    {
      v44 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
      swift_beginAccess();
      sub_1000140BC(v43 + v44, v42, type metadata accessor for EntryListType);
      v45 = v149;
      v46 = *(v149 + 56);
      v46(v42, 0, 1, v12);
    }

    else
    {
      v45 = v149;
      v46 = *(v149 + 56);
      v46(v42, 1, 1, v12);
    }

    v47 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v47 - 8) + 56))(v39, 1, 2, v47);
    v46(v39, 0, 1, v12);
    v48 = *(v148 + 48);
    sub_1000082B4(v42, v19, &unk_100ADE5F0);
    sub_1000082B4(v39, &v19[v48], &unk_100ADE5F0);
    v49 = *(v45 + 48);
    if (v49(v19, 1, v12) == 1)
    {
      sub_100004F84(v39, &unk_100ADE5F0);
      sub_100004F84(v42, &unk_100ADE5F0);
      if (v49(&v19[v48], 1, v12) == 1)
      {
        v50 = v19;
LABEL_9:
        sub_100004F84(v50, &unk_100ADE5F0);
        v51 = 0;
        return v51 & 1;
      }
    }

    else
    {
      sub_1000082B4(v19, v36, &unk_100ADE5F0);
      if (v49(&v19[v48], 1, v12) != 1)
      {
        v58 = v145;
        sub_10031894C(&v19[v48], v145, type metadata accessor for EntryListType);
        v59 = sub_100023858(v36, v58);
        sub_100014124(v58, type metadata accessor for EntryListType);
        sub_100004F84(v39, &unk_100ADE5F0);
        sub_100004F84(v42, &unk_100ADE5F0);
        sub_100014124(v36, type metadata accessor for EntryListType);
        sub_100004F84(v19, &unk_100ADE5F0);
        if (v59)
        {
          goto LABEL_73;
        }

        goto LABEL_13;
      }

      sub_100004F84(v39, &unk_100ADE5F0);
      sub_100004F84(v42, &unk_100ADE5F0);
      sub_100014124(v36, type metadata accessor for EntryListType);
    }

    sub_100004F84(v19, &unk_100AE92C0);
LABEL_13:
    v52 = sub_10030B1AC();
    v53 = sub_10031619C(v52);
LABEL_14:
    v51 = v53;

    return v51 & 1;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v60 = sub_10030B1AC();
      if (v60 >> 62)
      {
        goto LABEL_95;
      }

      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

    if (static Selector.== infix(_:_:)())
    {
      v62 = *&v151[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel];
      if (v62)
      {
        v63 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
        swift_beginAccess();
        v64 = v139;
        sub_1000140BC(v62 + v63, v139, type metadata accessor for EntryListType);
        v65 = v149;
        v66 = *(v149 + 56);
        v66(v64, 0, 1, v12);
      }

      else
      {
        v65 = v149;
        v66 = *(v149 + 56);
        v64 = v139;
        v66(v139, 1, 1, v12);
      }

      v108 = v148;
      v110 = v140;
      v109 = v141;
      v111 = v138;
      v112 = sub_1000F24EC(&qword_100AD47A0);
      (*(*(v112 - 8) + 56))(v111, 1, 2, v112);
      v66(v111, 0, 1, v12);
      v113 = *(v108 + 48);
      sub_1000082B4(v64, v109, &unk_100ADE5F0);
      sub_1000082B4(v111, v109 + v113, &unk_100ADE5F0);
      v114 = *(v65 + 48);
      if (v114(v109, 1, v12) == 1)
      {
        sub_100004F84(v111, &unk_100ADE5F0);
        sub_100004F84(v64, &unk_100ADE5F0);
        if (v114(v109 + v113, 1, v12) == 1)
        {
          v50 = v109;
          goto LABEL_9;
        }
      }

      else
      {
        sub_1000082B4(v109, v110, &unk_100ADE5F0);
        if (v114(v109 + v113, 1, v12) != 1)
        {
          v117 = v109 + v113;
          v118 = v145;
          sub_10031894C(v117, v145, type metadata accessor for EntryListType);
          v119 = sub_100023858(v110, v118);
          sub_100014124(v118, type metadata accessor for EntryListType);
          sub_100004F84(v111, &unk_100ADE5F0);
          sub_100004F84(v64, &unk_100ADE5F0);
          sub_100014124(v110, type metadata accessor for EntryListType);
          sub_100004F84(v109, &unk_100ADE5F0);
          if (v119)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        }

        sub_100004F84(v111, &unk_100ADE5F0);
        sub_100004F84(v64, &unk_100ADE5F0);
        sub_100014124(v110, type metadata accessor for EntryListType);
      }

      sub_100004F84(v109, &unk_100AE92C0);
LABEL_68:
      v115 = sub_10030B1AC();
      v116 = sub_100316044(v115);

      if (!v116)
      {
        goto LABEL_73;
      }

      if (qword_100AD0A58 != -1)
      {
        swift_once();
      }

      v51 = sub_100771E70();
      return v51 & 1;
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      sub_1000082B4(v137, v153, &qword_100AD13D0);
      v101 = v154;
      if (v154)
      {
        v102 = sub_10000CA14(v153, v154);
        v103 = *(v101 - 8);
        v104 = __chkstk_darwin(v102);
        v106 = &v137 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v103 + 16))(v106, v104);
        v107 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v103 + 8))(v106, v101);
        sub_10000BA7C(v153);
      }

      else
      {
        v107 = 0;
      }

      v121 = type metadata accessor for JournalEntryCollectionViewController(0);
      v152.receiver = v151;
      v152.super_class = v121;
      v51 = objc_msgSendSuper2(&v152, "canPerformAction:withSender:", a1, v107);
      swift_unknownObjectRelease();
      return v51 & 1;
    }

    v92 = *&v151[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v92)
    {
      v93 = [v92 indexPathsForSelectedItems];
      v94 = v147;
      if (v93)
      {
        v95 = v93;
        v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v96 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v96 = _swiftEmptyArrayStorage;
      v94 = v147;
    }

    v122 = *(v96 + 2);
    if (!v122)
    {
      goto LABEL_92;
    }

    v123 = 0;
    v148 = v96;
    v149 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
    v124 = *(v142 + 16);
    v125 = v96 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
    v126 = *(v142 + 72);
    v127 = (v142 + 8);
    v128 = v150;
    v129 = v146;
    while (1)
    {
      v124(v129, v125, v128);
      v130 = *&v151[v149];
      if (!v130)
      {
        break;
      }

      v131 = v128;
      v132 = v130;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      v133 = v131;
      v94 = v147;
      (*v127)(v129, v133);
      v134 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      if ((*(*(v134 - 8) + 48))(v94, 1, v134) == 1)
      {
        goto LABEL_86;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v135 = 1;
        goto LABEL_88;
      }

      sub_100014124(v94, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_87:
      v135 = 0;
LABEL_88:
      v128 = v150;
      v90 = __OFADD__(v123, v135);
      v123 += v135;
      v129 = v146;
      if (v90)
      {
LABEL_94:
        __break(1u);
LABEL_95:
        v61 = _CocoaArrayWrapper.endIndex.getter();
LABEL_23:

        v51 = v61 != 0;
        return v51 & 1;
      }

      v125 += v126;
      if (!--v122)
      {

        v51 = v123 > 0;
        return v51 & 1;
      }
    }

    (*v127)(v129, v128);
    v136 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    (*(*(v136 - 8) + 56))(v94, 1, 1, v136);
LABEL_86:
    sub_100004F84(v94, &unk_100AD7CB0);
    goto LABEL_87;
  }

  v54 = *&v151[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel];
  if (v54)
  {
    v55 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_1000140BC(v54 + v55, v33, type metadata accessor for EntryListType);
    v56 = v149;
    v57 = *(v149 + 56);
    v57(v33, 0, 1, v12);
  }

  else
  {
    v56 = v149;
    v57 = *(v149 + 56);
    v57(v33, 1, 1, v12);
  }

  v67 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v67 - 8) + 56))(v30, 1, 2, v67);
  v57(v30, 0, 1, v12);
  v68 = *(v148 + 48);
  v69 = v144;
  sub_1000082B4(v33, v144, &unk_100ADE5F0);
  v70 = v69;
  sub_1000082B4(v30, v69 + v68, &unk_100ADE5F0);
  v71 = *(v56 + 48);
  if (v71(v70, 1, v12) == 1)
  {
    sub_100004F84(v30, &unk_100ADE5F0);
    v72 = v144;
    sub_100004F84(v33, &unk_100ADE5F0);
    if (v71(v72 + v68, 1, v12) == 1)
    {
      v50 = v72;
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  v73 = v143;
  sub_1000082B4(v70, v143, &unk_100ADE5F0);
  if (v71(v70 + v68, 1, v12) == 1)
  {
    sub_100004F84(v30, &unk_100ADE5F0);
    v72 = v144;
    sub_100004F84(v33, &unk_100ADE5F0);
    sub_100014124(v73, type metadata accessor for EntryListType);
LABEL_33:
    sub_100004F84(v72, &unk_100AE92C0);
    goto LABEL_34;
  }

  v97 = v70 + v68;
  v98 = v145;
  sub_10031894C(v97, v145, type metadata accessor for EntryListType);
  v99 = v70;
  v100 = sub_100023858(v73, v98);
  sub_100014124(v98, type metadata accessor for EntryListType);
  sub_100004F84(v30, &unk_100ADE5F0);
  sub_100004F84(v33, &unk_100ADE5F0);
  sub_100014124(v73, type metadata accessor for EntryListType);
  sub_100004F84(v99, &unk_100ADE5F0);
  if (v100)
  {
    goto LABEL_73;
  }

LABEL_34:
  v74 = *&v151[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v74)
  {
    v75 = [v74 indexPathsForSelectedItems];
    if (v75)
    {
      v76 = v75;
      v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = v77[2];
      if (v78 == 0.0)
      {
        goto LABEL_92;
      }

      goto LABEL_39;
    }
  }

  v77 = _swiftEmptyArrayStorage;
  v78 = _swiftEmptyArrayStorage[2];
  if (v78 == 0.0)
  {
LABEL_92:

    v51 = 0;
    return v51 & 1;
  }

LABEL_39:
  v79 = 0;
  v148 = *(v142 + 16);
  v149 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v80 = *(v142 + 80);
  v147 = v77;
  v81 = v77 + ((v80 + 32) & ~v80);
  v82 = *(v142 + 72);
  v83 = (v142 + 8);
  v84 = v150;
  do
  {
    (v148)(v11, v81, v84);
    v85 = *&v151[v149];
    if (!v85)
    {
      (*v83)(v11, v84);
      v89 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v89 - 8) + 56))(v7, 1, 1, v89);
LABEL_45:
      sub_100004F84(v7, &unk_100AD7CB0);
      goto LABEL_46;
    }

    v86 = v85;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    (*v83)(v11, v84);
    v87 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v87 - 8) + 48))(v7, 1, v87) == 1)
    {
      goto LABEL_45;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v88 = 1;
      goto LABEL_47;
    }

    sub_100014124(v7, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_46:
    v88 = 0;
LABEL_47:
    v84 = v150;
    v90 = __OFADD__(v79, v88);
    v79 += v88;
    if (v90)
    {
      __break(1u);
      goto LABEL_94;
    }

    v81 += v82;
    --*&v78;
  }

  while (v78 != 0.0);

  if (v79 == 1)
  {
    v91 = sub_10030B1AC();
    v53 = sub_100316044(v91);
    goto LABEL_14;
  }

LABEL_73:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_10030F810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v6 = sub_1000F24EC(&unk_100AD7CB0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v62 - v11;
  __chkstk_darwin(v10);
  v71 = v62 - v13;
  v72 = type metadata accessor for IndexPath();
  v14 = *(v72 - 8);
  __chkstk_darwin(v72);
  v73 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
  v70 = v3;
  v17 = *(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v17)
  {
    v18 = [v17 indexPathsForSelectedItems];
    if (v18)
    {
      v19 = v18;
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v20;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = v73;
  v23 = v21[2];

  if (!v23)
  {
    return result;
  }

  v69 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v78 = *(v70 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v78)
  {
    return result;
  }

  v25 = *(v70 + v16);
  v65 = a3;
  v66 = a1;
  if (!v25)
  {
    v30 = v78;
    goto LABEL_12;
  }

  v26 = v78;
  v27 = [v25 indexPathsForSelectedItems];
  if (!v27)
  {
LABEL_12:
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v28 = v27;
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_13:
  v81 = _swiftEmptyArrayStorage;
  v31 = v29[2];
  v32 = v71;
  if (v31)
  {
    v62[1] = v29;
    v63 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
    v34 = *(v14 + 16);
    v33 = v14 + 16;
    v35 = v29 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v75 = (v33 - 8);
    v76 = v34;
    v64 = _swiftEmptyArrayStorage;
    v77 = v33;
    v74 = *(v33 + 56);
    v36 = &unk_100AD7CB0;
    v37 = v72;
    v68 = v9;
    while (1)
    {
      v79 = v35;
      v80 = v31;
      v76(v22);
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      sub_1000082B4(v32, v12, v36);
      v38 = v32;
      v39 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (v41(v12, 1, v39) == 1)
      {
        sub_100004F84(v38, v36);
        (*v75)(v22, v37);
        sub_100004F84(v12, v36);
        v32 = v38;
      }

      else
      {
        v42 = v36;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_100014124(v12, type metadata accessor for JournalEntryCollectionViewController.Item);
          v43 = *(v70 + v69);
          if (v43)
          {
            v44 = v43;
            v45 = v68;
            v46 = v73;
            dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

            if (v41(v45, 1, v39) != 1)
            {
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v51 = v45;
              v37 = v72;
              if (EnumCaseMultiPayload == 1)
              {
                v52 = *v45;
                v53 = [*(v70 + v63) objectWithID:*v45];

                type metadata accessor for JournalEntryMO();
                v54 = swift_dynamicCastClass();
                v36 = v42;
                if (v54)
                {
                  v55 = v54;
                  v56 = [v54 managedObjectContext];
                  if (!v56)
                  {
                    v56 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
                  }

                  type metadata accessor for EntryViewModel();
                  swift_allocObject();
                  sub_100035ADC(v55, 0, 0, v56);
                  sub_100004F84(v71, v42);
                  (*v75)(v73, v37);
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v64 = v81;
                  v32 = v71;
                  v22 = v73;
                }

                else
                {

                  v32 = v71;
                  sub_100004F84(v71, v42);
                  v22 = v73;
                  (*v75)(v73, v37);
                }
              }

              else
              {
                v32 = v71;
                v36 = v42;
                sub_100004F84(v71, v42);
                v22 = v73;
                (*v75)(v73, v37);
                sub_100014124(v51, type metadata accessor for JournalEntryCollectionViewController.Item);
              }

              goto LABEL_16;
            }

            v32 = v71;
            sub_100004F84(v71, v42);
            v37 = v72;
            (*v75)(v46, v72);
            v47 = v45;
            v36 = v42;
            v22 = v46;
          }

          else
          {
            v48 = v71;
            sub_100004F84(v71, v36);
            v37 = v72;
            v22 = v73;
            (*v75)(v73, v72);
            v47 = v68;
            v49 = v39;
            v32 = v48;
            (*(v40 + 56))(v68, 1, 1, v49);
          }

          sub_100004F84(v47, v36);
        }

        else
        {
          v32 = v71;
          sub_100004F84(v71, v36);
          v37 = v72;
          v22 = v73;
          (*v75)(v73, v72);
          sub_100014124(v12, type metadata accessor for JournalEntryCollectionViewController.Item);
        }
      }

LABEL_16:
      v35 = &v79[v74];
      v31 = v80 - 1;
      if (v80 == 1)
      {

        v57 = v64;
        goto LABEL_36;
      }
    }
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_36:
  v58 = swift_allocObject();
  v59 = v70;
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  v60[2] = v67;
  v60[3] = v65;
  v60[4] = v58;
  v61 = *((swift_isaMask & *v59) + 0x4D0);

  v61(v57, v66, 0, sub_1003183D8, v60);
}

void sub_100310040(char a1, void (*a2)(void))
{
  if (a1)
  {
    a2();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();
      v6 = *(v3 + 8);

      if (v5)
      {
        ObjectType = swift_getObjectType();
        (*(v6 + 96))(ObjectType, v6);
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1003100F4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v2 - 8);
  v4 = (v33 - v3);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100302D24();
  result = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (result)
  {
    result = [result indexPathsForSelectedItems];
    if (result)
    {
      v11 = result;
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = v12;
      v14 = *(v12 + 16);
      v15 = &qword_100ADE000;
      if (v14)
      {
        v35 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
        v36 = v1;
        v37 = *(v6 + 16);
        v38 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
        v16 = *(v6 + 80);
        v33[1] = v13;
        v17 = v13 + ((v16 + 32) & ~v16);
        v18 = *(v6 + 72);
        v34 = v9 ^ 1;
        v37(v8, v17, v5);
        while (1)
        {
          v20 = *(v1 + v38);
          if (!v20)
          {
            break;
          }

          v21 = v20;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          v22 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
          if ((*(*(v22 - 8) + 48))(v4, 1, v22) == 1)
          {
            goto LABEL_6;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v23 = v1;
            v24 = *v4;
            v25 = [*(v23 + v35) objectWithID:*v4];

            type metadata accessor for JournalEntryMO();
            v26 = swift_dynamicCastClass();
            if (v26)
            {
              [v26 setFlagged:v34 & 1];
            }

            v1 = v36;
          }

          else
          {
            sub_100014124(v4, type metadata accessor for JournalEntryCollectionViewController.Item);
          }

LABEL_7:
          (*(v6 + 8))(v8, v5);
          v17 += v18;
          if (!--v14)
          {

            v15 = &qword_100ADE000;
            goto LABEL_18;
          }

          v37(v8, v17, v5);
        }

        v19 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
        (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
LABEL_6:
        sub_100004F84(v4, &unk_100AD7CB0);
        goto LABEL_7;
      }

LABEL_18:
      v27 = *(v1 + v15[78]);
      v39 = 0;
      if ([v27 save:&v39])
      {
        v28 = v39;
      }

      else
      {
        v29 = v39;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v30 = v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v31 = *(v30 + 8);
        ObjectType = swift_getObjectType();
        (*(v31 + 96))(ObjectType, v31);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10031055C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v2 - 8);
  v4 = (v30 - v3);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v10)
  {
    v11 = [v10 indexPathsForSelectedItems];
    if (v11)
    {
      v12 = v11;
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v36 = _swiftEmptyArrayStorage;
  v14 = *(v13 + 2);
  if (!v14)
  {

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v30[1] = v13;
  v31 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  v15 = v6 + 16;
  v34 = *(v6 + 16);
  v35 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v16 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v17 = _swiftEmptyArrayStorage;
  v18 = (v15 - 8);
  v19 = *(v15 + 56);
  v32 = v1;
  v33 = v19;
  v34(v9, v16, v5);
  while (1)
  {
    v21 = *(v1 + v35);
    if (!v21)
    {
      (*v18)(v9, v5);
      v20 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
LABEL_9:
      sub_100004F84(v4, &unk_100AD7CB0);
      goto LABEL_10;
    }

    v22 = v21;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v23 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v23 - 8) + 48))(v4, 1, v23) == 1)
    {
      (*v18)(v9, v5);
      goto LABEL_9;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *v4;
      v25 = [*(v1 + v31) objectWithID:*v4];

      type metadata accessor for JournalEntryMO();
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v28 = [v26 managedObjectContext];
        if (!v28)
        {
          v28 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
        }

        type metadata accessor for EntryViewModel();
        swift_allocObject();
        sub_100035ADC(v27, 0, 0, v28);
        (*v18)(v9, v5);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v36;
        v1 = v32;
      }

      else
      {

        (*v18)(v9, v5);
        v1 = v32;
      }
    }

    else
    {
      (*v18)(v9, v5);
      sub_100014124(v4, type metadata accessor for JournalEntryCollectionViewController.Item);
    }

LABEL_10:
    v16 += v33;
    if (!--v14)
    {
      break;
    }

    v34(v9, v16, v5);
  }

LABEL_26:
  sub_100306248(v17);
}

void sub_100310B88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 88))(1, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100310C58(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
LABEL_14:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
      }

      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v7 = a1 & 1;
      v23 = v4;
      v22 = a1 & 1;
      do
      {
        if (v6)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked);
        *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked) = v7;
        if (v9 == (a1 & 1))
        {
        }

        else
        {
          v10 = a1;
          a1 = v2;
          v11 = *(v8 + 24);
          v2 = swift_allocObject();
          swift_weakInit();
          v12 = swift_allocObject();
          v12[2] = sub_1003182C4;
          v12[3] = v2;
          aBlock[4] = sub_100028EF4;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10001A7D4;
          aBlock[3] = &unk_100A66EF8;
          v13 = _Block_copy(aBlock);

          [v11 performBlockAndWait:v13];
          _Block_release(v13);
          LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

          if (v11)
          {
            __break(1u);
            goto LABEL_14;
          }

          aBlock[0] = sub_1004959AC(&off_100A58AB0);
          PassthroughSubject.send(_:)();

          v2 = a1;
          a1 = v10;
          v4 = v23;
          v7 = v22;
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }

  v14 = *(v21 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
  aBlock[0] = 0;
  if ([v14 save:aBlock])
  {
    v15 = aBlock[0];
  }

  else
  {
    v16 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = v21 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v19 + 96))(ObjectType, v19);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100310FB8()
{
  v1 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v35 - v8;
  v9 = type metadata accessor for IndexPath();
  v48 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v49 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v49)
  {
    return;
  }

  v14 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v14)
  {
    v19 = v49;
    goto LABEL_6;
  }

  v15 = v49;
  v16 = [v14 indexPathsForSelectedItems];
  if (!v16)
  {
LABEL_6:
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v17 = v16;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_7:
  v47 = v18[2];
  if (v47)
  {
    v20 = 0;
    v45 = (v5 + 48);
    v46 = v48 + 16;
    v38 = (v48 + 32);
    v44 = (v48 + 8);
    v39 = _swiftEmptyArrayStorage;
    v36 = v4;
    v37 = v3;
    v43 = v9;
    while (1)
    {
      if (v20 >= v18[2])
      {
        __break(1u);
        return;
      }

      v22 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v23 = v18;
      v24 = *(v48 + 72);
      (*(v48 + 16))(v13, v18 + v22 + v24 * v20, v9);
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      if ((*v45)(v3, 1, v4) == 1)
      {
        v21 = v4;
        sub_100004F84(v3, &unk_100AD7CB0);
      }

      else
      {
        v25 = v40;
        sub_10031894C(v3, v40, type metadata accessor for JournalEntryCollectionViewController.Item);
        v26 = v25;
        v27 = v41;
        sub_10031894C(v26, v41, type metadata accessor for JournalEntryCollectionViewController.Item);
        v21 = v4;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v29 = v27;
        v9 = v43;
        sub_100014124(v29, type metadata accessor for JournalEntryCollectionViewController.Item);
        if (EnumCaseMultiPayload == 1)
        {
          v30 = *v38;
          (*v38)(v42, v13, v9);
          v31 = v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100199B50(0, v31[2] + 1, 1);
            v31 = v50;
          }

          v18 = v23;
          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            sub_100199B50(v33 > 1, v34 + 1, 1);
            v31 = v50;
          }

          v31[2] = v34 + 1;
          v39 = v31;
          v9 = v43;
          v30(v31 + v22 + v34 * v24, v42, v43);
          v4 = v36;
          v3 = v37;
          goto LABEL_11;
        }
      }

      (*v44)(v13, v9);
      v4 = v21;
      v18 = v23;
LABEL_11:
      if (v47 == ++v20)
      {

        return;
      }
    }
  }
}

uint64_t sub_100311474()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v49[-v3];
  v5 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v5 - 8);
  v56 = &v49[-v6];
  v7 = type metadata accessor for UnsupportedEntryMode();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v54 = &v49[-v11];
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v49[-v18];
  result = [v1 isEditing];
  if ((result & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
    v22 = *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v22 && (v23 = [v22 indexPathsForSelectedItems]) != 0)
    {
      v24 = v23;
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v9;
      v26 = v7;
      v27 = v19;
      v28 = v13;
      v29 = v4;
      v30 = v25;

      v31 = v30;
      v4 = v29;
      v13 = v28;
      v19 = v27;
      v7 = v26;
      v9 = v53;
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
    }

    v32 = *(v31 + 2);

    if (v32 == 1)
    {
      v33 = *&v1[v21];
      v52 = v4;
      if (v33 && (v34 = [v33 indexPathsForSelectedItems]) != 0)
      {
        v35 = v34;
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
      }

      v37 = v56;
      if (*(v36 + 2))
      {
        v53 = v9;
        (*(v13 + 16))(v15, v36 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

        (*(v13 + 32))(v19, v15, v12);
        v51 = v1;
        v38 = sub_1000AB4D8();
        if (v38)
        {
          v39 = v38;
          v59 = *(v38 + 4);
          type metadata accessor for JournalEntryMO();
          if (MinimumSupportedVersion.isEditingSupported.getter())
          {
            goto LABEL_24;
          }

          JournalEntryMO.unsupportedEntryMode.getter();
          v40 = *(v55 + 48);
          if (v40(v37, 1, v7) == 1)
          {
            v41 = *(v55 + 104);
            v50 = enum case for UnsupportedEntryMode.hiddenAll(_:);
            v41(v54);
            if (v40(v37, 1, v7) != 1)
            {
              sub_100004F84(v56, &qword_100ADE5A0);
            }

            v42 = v53;
            v43 = v54;
            v44 = v50;
          }

          else
          {
            v43 = v54;
            v45 = v55;
            (*(v55 + 32))(v54, v37, v7);
            v44 = enum case for UnsupportedEntryMode.hiddenAll(_:);
            v41 = *(v45 + 104);
            v42 = v53;
          }

          (v41)(v42, v44, v7);
          sub_1000249D4(&unk_100ADE5E0, &type metadata accessor for UnsupportedEntryMode);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v46 = *(v55 + 8);
          v46(v42, v7);
          v46(v43, v7);
          if (v58 != v57)
          {
LABEL_24:
            v47 = type metadata accessor for CanvasContentInputType();
            v48 = v52;
            swift_storeEnumTagMultiPayload();
            (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
            sub_1003054F0(v39, v48, 1);

            sub_100004F84(v48, &qword_100AD57F0);
          }

          else
          {
            sub_1004164C0(v51);
          }
        }

        return (*(v13 + 8))(v19, v12);
      }

      else
      {
      }
    }
  }

  return result;
}

BOOL sub_100311AD8()
{
  type metadata accessor for IndexPath();
  sub_1000249D4(&unk_100AE0020, &type metadata accessor for IndexPath);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100311D00(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v45 = type metadata accessor for Date();
  v6 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v41 - v17;
  v19 = [v2 traitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (v20 != 5)
  {
    return 0;
  }

  v21 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellPath;
  swift_beginAccess();
  sub_1000082B4(v2 + v21, v10, &unk_100ADFB90);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &unk_100ADFB90);
    return 0;
  }

  (*(v12 + 32))(v18, v10, v11);
  v22 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellTime;
  swift_beginAccess();
  sub_1000082B4(v2 + v22, v5, &unk_100AD4790);
  v23 = v6;
  v24 = *(v6 + 48);
  v25 = v45;
  if (v24(v5, 1, v45) == 1)
  {
    (*(v12 + 8))(v18, v11);
    sub_100004F84(v5, &unk_100AD4790);
    return 0;
  }

  v26 = v44;
  (*(v23 + 32))(v44, v5, v25);
  Date.timeIntervalSinceNow.getter();
  if (fabs(v27) >= 0.35 || (v28 = v43, (static IndexPath.== infix(_:_:)() & 1) == 0))
  {
    (*(v23 + 8))(v26, v25);
    (*(v12 + 8))(v18, v11);
    return 0;
  }

  if (qword_100ACFBF8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000617C(v29, qword_100B2F718);
  (*(v12 + 16))(v14, v28, v11);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v43 = v23;
    v33 = v32;
    v42 = swift_slowAlloc();
    v46 = v42;
    *v33 = 136315138;
    sub_1000249D4(&unk_100ADE600, &type metadata accessor for IndexPath);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v12 + 8);
    v37(v14, v11);
    v38 = sub_100008458(v34, v36, &v46);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Double click at %s!", v33, 0xCu);
    sub_10000BA7C(v42);

    (*(v43 + 8))(v44, v45);
    v37(v18, v11);
  }

  else
  {

    v40 = *(v12 + 8);
    v40(v14, v11);
    (*(v23 + 8))(v26, v25);
    v40(v18, v11);
  }

  return 1;
}

void sub_10031230C(void *a1, void *a2, void *a3)
{
  v39 = a3;
  v6 = type metadata accessor for IndexPath();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AE4850);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v36 - v17;
  v19 = [a1 traitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (v20 != 5)
  {
    return;
  }

  type metadata accessor for JournalEntryCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    return;
  }

  v36 = v8;
  v37 = v21;
  v38 = a2;
  v22 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_indexPathWithLatestAssetGridSelection;
  swift_beginAccess();
  v23 = v40;
  (*(v40 + 16))(v18, v39, v6);
  (*(v23 + 56))(v18, 0, 1, v6);
  v24 = *(v9 + 48);
  sub_1000082B4(v3 + v22, v11, &unk_100ADFB90);
  sub_1000082B4(v18, &v11[v24], &unk_100ADFB90);
  v25 = *(v23 + 48);
  if (v25(v11, 1, v6) == 1)
  {
    v26 = v38;
    v27 = v38;
    sub_100004F84(v18, &unk_100ADFB90);
    if (v25(&v11[v24], 1, v6) == 1)
    {

      sub_100004F84(v11, &unk_100ADFB90);
      return;
    }
  }

  else
  {
    sub_1000082B4(v11, v14, &unk_100ADFB90);
    if (v25(&v11[v24], 1, v6) != 1)
    {
      v31 = v40;
      v32 = v36;
      (*(v40 + 32))(v36, &v11[v24], v6);
      sub_1000249D4(&unk_100AE0020, &type metadata accessor for IndexPath);
      v33 = v38;
      v39 = v38;
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v31 + 8);
      v35(v32, v6);
      sub_100004F84(v18, &unk_100ADFB90);
      v35(v14, v6);
      v26 = v33;
      sub_100004F84(v11, &unk_100ADFB90);
      if (v34)
      {

        return;
      }

      goto LABEL_9;
    }

    v26 = v38;
    v28 = v38;
    sub_100004F84(v18, &unk_100ADFB90);
    (*(v40 + 8))(v14, v6);
  }

  sub_100004F84(v11, &unk_100AE4850);
LABEL_9:
  v29 = *(*(v37 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView) + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v29)
  {
    v30 = v29;
    sub_1006018C4();
  }
}

uint64_t sub_1003128EC(void *a1)
{
  v3 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  if (*(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_isSearchActive))
  {
    return 0;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 cellForItemAtIndexPath:isa];

  if (v7)
  {
    type metadata accessor for JournalEntryCollectionViewCell();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = *(*(v8 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView) + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView)) != 0 && (v10 = [v9 indexPathsForSelectedItems]) != 0)
    {
      v11 = v10;
      type metadata accessor for IndexPath();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = *(v12 + 16);

      if (v13)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v14 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (v14)
  {
    v15 = v14;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    v16 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
    {

      sub_100004F84(v5, &unk_100AD7CB0);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100014124(v5, type metadata accessor for JournalEntryCollectionViewController.Item);
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {

      sub_100014124(v5, type metadata accessor for JournalEntryCollectionViewController.Item);
    }
  }

  return 0;
}

void *sub_100312BC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v5 = type metadata accessor for EntryListType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AE92C0);
  __chkstk_darwin(v9);
  v11 = v33 - v10;
  v12 = sub_1000F24EC(&unk_100ADE5F0);
  __chkstk_darwin(v12 - 8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = v33 - v20;
  if ([v3 isEditing])
  {
    return 0;
  }

  v33[0] = a2;
  v33[1] = v3;
  v23 = *&v3[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel];
  if (v23)
  {
    v24 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_1000140BC(v23 + v24, v21, type metadata accessor for EntryListType);
    v25 = *(v6 + 56);
    v25(v21, 0, 1, v5);
  }

  else
  {
    v25 = *(v6 + 56);
    v25(v21, 1, 1, v5);
  }

  v26 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v26 - 8) + 56))(v17, 1, 2, v26);
  v25(v17, 0, 1, v5);
  v27 = *(v9 + 48);
  sub_1000082B4(v21, v11, &unk_100ADE5F0);
  sub_1000082B4(v17, &v11[v27], &unk_100ADE5F0);
  v28 = *(v6 + 48);
  if (v28(v11, 1, v5) == 1)
  {
    sub_100004F84(v17, &unk_100ADE5F0);
    sub_100004F84(v21, &unk_100ADE5F0);
    if (v28(&v11[v27], 1, v5) == 1)
    {
      sub_100004F84(v11, &unk_100ADE5F0);
      return 0;
    }

    goto LABEL_12;
  }

  sub_1000082B4(v11, v14, &unk_100ADE5F0);
  if (v28(&v11[v27], 1, v5) == 1)
  {
    sub_100004F84(v17, &unk_100ADE5F0);
    sub_100004F84(v21, &unk_100ADE5F0);
    sub_100014124(v14, type metadata accessor for EntryListType);
LABEL_12:
    sub_100004F84(v11, &unk_100AE92C0);
    goto LABEL_13;
  }

  sub_10031894C(&v11[v27], v8, type metadata accessor for EntryListType);
  v32 = sub_100023858(v14, v8);
  sub_100014124(v8, type metadata accessor for EntryListType);
  sub_100004F84(v17, &unk_100ADE5F0);
  sub_100004F84(v21, &unk_100ADE5F0);
  sub_100014124(v14, type metadata accessor for EntryListType);
  sub_100004F84(v11, &unk_100ADE5F0);
  if (v32)
  {
    return 0;
  }

LABEL_13:
  v29 = v33[0];
  result = sub_1001E44BC();
  if (result)
  {

    v30 = [v34 traitCollection];
    v31 = [v30 userInterfaceIdiom];

    return (v31 != 5 || (sub_100311D00(v29) & 1) != 0);
  }

  return result;
}

uint64_t sub_100313110(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v12, v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

void sub_100313224(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v29 = [a1 cellForItemAtIndexPath:isa];

  if (v29)
  {
    type metadata accessor for JournalEntryCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(v16 + 16))(v3, v14, ObjectType, v16);
        swift_unknownObjectRelease();
      }

      v18 = v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 8);
        v20 = swift_getObjectType();
        (*(v19 + 16))(v3, v20, v19);
        swift_unknownObjectRelease();
      }

      v21 = *(*(v14 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView) + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
      if (v21)
      {
        v22 = v21;
        sub_1006018C4();
      }

      v23 = type metadata accessor for IndexPath();
      v24 = *(v23 - 8);
      (*(v24 + 16))(v11, a2, v23);
      (*(v24 + 56))(v11, 0, 1, v23);
      v25 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellPath;
      swift_beginAccess();
      sub_100014318(v11, v3 + v25, &unk_100ADFB90);
      swift_endAccess();
      Date.init()();

      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
      v27 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellTime;
      swift_beginAccess();
      sub_100014318(v8, v3 + v27, &unk_100AD4790);
      swift_endAccess();
    }

    else
    {
      v28 = v29;
    }
  }
}

void sub_1003135C8(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 cellForItemAtIndexPath:isa];

  if (v13)
  {
    type metadata accessor for JournalEntryCollectionViewCell();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    v7 = v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(v2, v6, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    v10 = v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      v12 = swift_getObjectType();
      (*(v11 + 24))(v2, v12, v11);

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_9:
    }
  }
}

uint64_t sub_100313758(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100313A88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
  v19 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v19 || (v20 = v19, sub_1006018C4(), v20, (v21 = *(v2 + v18)) == 0))
  {
    (*(v14 + 56))(v12, 1, 1, v13, v15);
    return sub_100004F84(v12, &unk_100ADFB90);
  }

  v22 = [v21 indexPathForCell:a1];
  if (v22)
  {
    v23 = v22;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v14 + 56);
    v24(v9, 0, 1, v13);
  }

  else
  {
    v24 = *(v14 + 56);
    v24(v9, 1, 1, v13);
  }

  sub_100021CEC(v9, v12, &unk_100ADFB90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_100004F84(v12, &unk_100ADFB90);
  }

  (*(v14 + 32))(v17, v12, v13);
  v26 = *(v14 + 16);
  v26(v6, v17, v13);
  v24(v6, 0, 1, v13);
  v27 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_indexPathWithLatestAssetGridSelection;
  swift_beginAccess();
  sub_100014318(v6, v2 + v27, &unk_100ADFB90);
  swift_endAccess();
  v26(v6, v17, v13);
  v24(v6, 0, 1, v13);
  sub_100307AFC(v6);
  sub_100004F84(v6, &unk_100ADFB90);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_100313DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for IndexPath();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for JournalFeatureFlags();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v10;
  v6[13] = v9;

  return _swift_task_switch(sub_100313F50, v10, v9);
}

uint64_t sub_100313F50()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  *(v0 + 112) = v1;
  if (!v1)
  {
    goto LABEL_18;
  }

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  (*(v3 + 104))(v2, enum case for JournalFeatureFlags.fullScreenViewer(_:), v4);

  v5 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);

    (*(v7 + 16))(v6, v9, v8);

    v11 = sub_100437D24(v6, v1, 1);
    v12 = [v10 traitCollection];
    v13 = [v12 userInterfaceIdiom];

    if (v13 != 5)
    {
      v23 = *(v0 + 32);
      v24 = [objc_allocWithZone(type metadata accessor for FullScreenAssetNavigationController()) initWithRootViewController:v11];
      sub_1000065A8(0, &qword_100ADE550);
      v25 = v24;
      v26 = sub_1004B71D4(v23);
      [v25 setPreferredTransition:v26];

      v27 = UIViewController.forPresenting.getter();
      [v27 presentViewController:v25 animated:1 completion:0];

      goto LABEL_19;
    }

    v14 = [*(v0 + 24) viewIfLoaded];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 window];

      if (v16)
      {
        v17 = [v16 rootViewController];

        if (v17)
        {
          type metadata accessor for SceneSplitViewController(0);
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            [v18 showViewController:v11 sender:*(v0 + 24)];

LABEL_19:

            v28 = *(v0 + 8);

            return v28();
          }
        }
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v19 = sub_10054B1CC();
  *(v0 + 120) = v19;
  if (!v19)
  {

    goto LABEL_18;
  }

  v20 = swift_task_alloc();
  *(v0 + 128) = v20;
  *v20 = v0;
  v20[1] = sub_1003142C8;
  v21 = *(v0 + 32);

  return sub_100163090(v1, v21);
}

uint64_t sub_1003142C8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10031440C, v3, v2);
}

uint64_t sub_10031440C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10031448C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v2)
  {
    v4 = v2;
    [v4 setAllowsFocus:(a1 & 1) == 0];
    sub_1006018C4();
  }
}

id sub_10031450C()
{
  result = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (result)
  {
    return [result allowsFocus];
  }

  return result;
}

uint64_t sub_100314540(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for MainActor();
  v13 = a1;
  v14 = v2;
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  (*(v6 + 32))(&v17[v16], v8, v5);
  sub_1003E9628(0, 0, v11, &unk_10094F300, v17);
}

uint64_t sub_100314750(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v2)
  {
    return 0;
  }

  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941D50;
  *(v3 + 32) = v2;
  v4 = *((swift_isaMask & *v1) + 0x4B8);
  swift_retain_n();
  v5 = v4(v3);

  return v5;
}

void sub_10031483C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  if (*(a1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry))
  {
    v5 = type metadata accessor for CanvasContentInputType();
    swift_storeEnumTagMultiPayload();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

    sub_1003054F0(v6, v4, 1);

    sub_100004F84(v4, &qword_100AD57F0);
  }
}

void *sub_100314CF8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100314D18()
{
  result = qword_100ADE530;
  if (!qword_100ADE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE530);
  }

  return result;
}

void sub_100314D6C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for CanvasViewController(0);
    v10 = a1;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      v12 = [v2 traitCollection];
      v13 = [v12 userInterfaceIdiom];

      if (v13 == 5 || ((*(v5 + 104))(v7, enum case for JournalFeatureFlags.canvasPush(_:), v4), v14 = JournalFeatureFlags.isEnabled.getter(), (*(v5 + 8))(v7, v4), (v14 & 1) != 0))
      {
        v15 = [v10 navigationController];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 popViewControllerAnimated:1];
        }
      }

      else
      {
        [v2 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

uint64_t sub_100314F54(char *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for CanvasViewController(0);
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      swift_unknownObjectWeakAssign();
    }
  }

  v8 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  NSManagedObjectContext.performAndWait<A>(_:)();
  if ((v13 & 1) == 0)
  {
    sub_100304A74(v8, 0);
  }

  v9 = v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 64))(v2, a1, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100315088(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = &v2[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(v2, a1, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  sub_1004FC46C();
  v10 = [objc_opt_self() standardUserDefaults];
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v11 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  type metadata accessor for AppStoreRatingManager();
  v12 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = [v2 viewIfLoaded];
  v14 = [v13 window];

  v15 = [v14 windowScene];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = v15;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v12;
  v19[5] = v15;
  sub_1003E9628(0, 0, v6, &unk_10094F310, v19);
}

uint64_t sub_100315360(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003153F8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10031549C(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_100313DFC(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_1003155A0(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for JournalMembershipListViewController());

  v12 = sub_10012D520(v6, sub_1003189B4, v5);
  v7 = [v12 popoverPresentationController];
  if (v7)
  {
    v8 = v7;
    [v7 setSourceItem:{objc_msgSend(a2, "presentationSourceItem")}];

    swift_unknownObjectRelease();
  }

  if (_UISolariumEnabled() && [a2 presentationSourceItem])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      sub_1000065A8(0, &qword_100ADE550);
      *(swift_allocObject() + 16) = v10;
      swift_unknownObjectRetain();
      v11 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

      [v12 setPreferredTransition:v11];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  [a3 presentViewController:v12 animated:1 completion:0];
}

void sub_1003157CC(void *a1)
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Empty cell dequeued! This should not happen. Please debug me.", v5, 2u);
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [a1 heightAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];

  [v7 setActive:1];
}

uint64_t sub_100315928(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1003159E8()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v0 - 8);
  v2 = v23 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1000F24EC(&unk_100AE1A40);
    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100940080;
    (*(v10 + 16))(v14 + v13, v12, v9);
    v20 = static JournalDataUtilities.fetchJournalEntryMOs(entryUUIDs:context:)();

    if (v20 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_13:
        if ((v20 & 0xC000000000000001) == 0)
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v21 = *(v20 + 32);
LABEL_16:
          v22 = v21;

          (*(v10 + 8))(v12, v9);
          return v22;
        }

LABEL_26:
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_16;
      }
    }

    else
    {
      result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_13;
      }
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_21;
  }

  sub_100004F84(v8, &qword_100AD1420);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v15 = v23[0];
    (*(v4 + 32))(v23[0], v2, v3);
    sub_1000F24EC(&qword_100AD65F0);
    v12 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100940080;
    (*(v4 + 16))(&v12[v9], v15, v3);
    v16 = static JournalDataUtilities.fetchJournalEntryMOs(objectURIs:context:)();

    if (v16 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_7;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_10;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 32);
LABEL_10:
        v18 = v17;

        (*(v4 + 8))(v15, v3);
        return v18;
      }

      __break(1u);
      goto LABEL_26;
    }

    (*(v4 + 8))(v15, v3);
LABEL_21:

    return 0;
  }

  sub_100004F84(v2, &unk_100AD6DD0);
  return 0;
}

BOOL sub_100316044(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_18:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = 0;
  do
  {
    v4 = v2 == v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v3, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:

        return 0;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v3 + 32);

      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }
    }

    v7 = *(v5 + 32);
    type metadata accessor for JournalEntryMO();
    if ((MinimumSupportedVersion.isEditingSupported.getter() & 1) == 0)
    {
      goto LABEL_14;
    }

    NSManagedObjectContext.performAndWait<A>(_:)();

    ++v3;
  }

  while ((v7 & 1) == 0);
  return v4;
}

uint64_t sub_10031619C(unint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v2 - 8);
  v4 = v24 - v3;
  v5 = type metadata accessor for UnsupportedEntryMode();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v31 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  if (a1 >> 62)
  {
LABEL_22:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v32 = v10;
      v30 = v4;
      v12 = 0;
      v4 = (a1 & 0xC000000000000001);
      v10 = (a1 & 0xFFFFFFFFFFFFFF8);
      v27 = (v6 + 48);
      v24[0] = v6 + 32;
      v33 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v25 = (v6 + 8);
      v26 = (v6 + 104);
      v24[1] = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v4)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_19:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v12 >= *(v10 + 2))
          {
            __break(1u);
            goto LABEL_22;
          }

          v13 = *(a1 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_19;
          }
        }

        v34 = *(v13 + 32);
        type metadata accessor for JournalEntryMO();
        v6 = &v34;
        if (MinimumSupportedVersion.isEditingSupported.getter())
        {
        }

        else
        {
          v15 = v11;
          v16 = a1;
          v17 = v30;
          JournalEntryMO.unsupportedEntryMode.getter();
          v18 = *v27;
          if ((*v27)(v17, 1, v5) == 1)
          {
            v19 = *v26;
            (*v26)(v32, v33, v5);
            if (v18(v17, 1, v5) != 1)
            {
              sub_100004F84(v17, &qword_100ADE5A0);
            }

            v20 = v32;
          }

          else
          {
            v20 = v32;
            (*v24[0])(v32, v17, v5);
            v19 = *v26;
          }

          v21 = v31;
          v19(v31, v33, v5);
          sub_1000249D4(&qword_100ADC210, &type metadata accessor for UnsupportedEntryMode);
          v6 = dispatch thunk of static Equatable.== infix(_:_:)();

          v22 = *v25;
          (*v25)(v21, v5);
          v22(v20, v5);
          a1 = v16;
          v11 = v15;
          v10 = v28;
          v4 = v29;
          if (v6)
          {
            return 0;
          }
        }

        ++v12;
        if (v14 == v11)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100316564(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000082B4(a1, v4, &qword_100AD1420);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004F84(v4, &qword_100AD1420);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_1000F24EC(&unk_100AE1A40);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940080;
  (*(v6 + 16))(v10 + v9, v8, v5);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v11 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v13 = static JournalDataUtilities.fetchJournalEntryMOs(entryUUIDs:context:)();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_22:

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = v15;
  v17 = [v16 managedObjectContext];
  if (!v17)
  {
    v17 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
  }

  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v18 = sub_100035ADC(v16, 0, 0, v17);
  if (sub_10005AAB0(1) & 1) == 0 && (sub_10005AAB0(16) & 1) == 0 || (NSManagedObjectContext.performAndWait<A>(_:)(), (v19[7]))
  {
    (*(v6 + 8))(v8, v5);

LABEL_19:

    return 0;
  }

  NSManagedObjectContext.performAndWait<A>(_:)();

  (*(v6 + 8))(v8, v5);
  if (v19[6] == 1)
  {
    goto LABEL_19;
  }

  return v18;
}

void sub_1003169B4(unint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100B2FC98)
  {
    v23 = v4;
    v24 = a1;
    v12 = qword_100B2FCA0;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 80);
    swift_unknownObjectRetain();
    v14(ObjectType, v12);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      sub_100004F84(v7, &unk_100AD6DD0);
    }

    else
    {
      v15 = (*(v9 + 32))(v11, v7, v8);
      __chkstk_darwin(v15);
      *(&v22 - 2) = v11;
      v16 = v24;

      v17 = sub_100195154(sub_1003182CC, (&v22 - 4), v16, sub_10030CB10);

      if (v17)
      {
        (*(v12 + 128))(ObjectType, v12);
        v18 = type metadata accessor for TaskPriority();
        v19 = v23;
        (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
        type metadata accessor for MainActor();
        v20 = static MainActor.shared.getter();
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = &protocol witness table for MainActor;
        sub_1003E9628(0, 0, v19, &unk_10094F340, v21);
      }

      swift_unknownObjectRelease();
      (*(v9 + 8))(v11, v8);
    }
  }
}

id sub_100316D30()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v47 - v3);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!result)
  {
    return result;
  }

  result = [result indexPathsForSelectedItems];
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_24:

    if (qword_100ACFE28 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v15 = 0;
  v57 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v53 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  v55 = 0;
  v56 = v6 + 16;
  *&v13 = 138412290;
  v49 = v13;
  v51 = v1;
  v52 = v14;
  while (v15 < *(v12 + 16))
  {
    (*(v6 + 16))(v9, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v5);
    v17 = *(v1 + v57);
    if (v17)
    {
      v18 = v17;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      v19 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      if ((*(*(v19 - 8) + 48))(v4, 1, v19) != 1)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v20 = *v4;
          v21 = [*(v1 + v53) objectWithID:*v4];

          type metadata accessor for JournalEntryMO();
          if (swift_dynamicCastClass())
          {
            v54 = v21;
            v22 = v55;
            v23 = JournalEntryMO.deepCopy()();
            if (v22)
            {
              if (qword_100ACFBF8 != -1)
              {
                swift_once();
              }

              v24 = type metadata accessor for Logger();
              sub_10000617C(v24, qword_100B2F718);
              swift_errorRetain();
              v25 = Logger.logObject.getter();
              v26 = static os_log_type_t.error.getter();

              v50 = v25;
              if (os_log_type_enabled(v25, v26))
              {
                v27 = swift_slowAlloc();
                v55 = v22;
                v28 = v27;
                v48 = swift_slowAlloc();
                *v28 = v49;
                swift_errorRetain();
                v29 = _swift_stdlib_bridgeErrorToNSError();
                *(v28 + 4) = v29;
                v30 = v48;
                *v48 = v29;
                v31 = v26;
                v32 = v50;
                _os_log_impl(&_mh_execute_header, v50, v31, "Failed to duplicate entry: %@", v28, 0xCu);
                sub_100004F84(v30, &unk_100AD4BB0);
              }

              else
              {
              }

              v55 = 0;
            }

            else
            {
              v33 = v23;
              v55 = 0;
            }

            v1 = v51;
            v14 = v52;
          }

          else
          {

            v14 = v52;
          }
        }

        else
        {
          sub_100014124(v4, type metadata accessor for JournalEntryCollectionViewController.Item);
        }

        goto LABEL_7;
      }
    }

    else
    {
      v16 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    }

    sub_100004F84(v4, &unk_100AD7CB0);
LABEL_7:
    ++v15;
    (*(v6 + 8))(v9, v5);
    if (v14 == v15)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_25:
  v34 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v58[0] = 0;
  if ([v34 save:v58])
  {
    v35 = v58[0];
  }

  else
  {
    v36 = v1;
    v37 = v58[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFBF8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000617C(v38, qword_100B2F718);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to save main context: %@", v41, 0xCu);
      sub_100004F84(v42, &unk_100AD4BB0);
    }

    else
    {
    }

    v1 = v36;
  }

  v44 = v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 96))(ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100317440()
{
  v1 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v12 && (v13 = [v12 indexPathsForSelectedItems]) != 0)
  {
    v14 = v13;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v15 + 2))
    {
LABEL_4:
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    if (!*&_swiftEmptyArrayStorage[2])
    {
      goto LABEL_4;
    }
  }

  (*(v5 + 16))(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  (*(v5 + 32))(v11, v7, v4);
  v17 = sub_1000AB4D8();
  if (v17)
  {
    v18 = v17;
    v19 = type metadata accessor for CanvasContentInputType();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    sub_1003054F0(v18, v3, 1);

    sub_100004F84(v3, &qword_100AD57F0);
  }

  return (*(v5 + 8))(v11, v4);
}

BOOL sub_1003176CC()
{
  v1 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v12 - v2);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v4)
  {
    v11 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    goto LABEL_6;
  }

  v5 = v4;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v6 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
LABEL_6:
    sub_100004F84(v3, &unk_100AD7CB0);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v3;
    v8 = [*(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext) objectWithID:v7];

    type metadata accessor for JournalEntryMO();
    v9 = swift_dynamicCastClass() != 0;

    return v9;
  }

  sub_100014124(v3, type metadata accessor for JournalEntryCollectionViewController.Item);
  return 0;
}

uint64_t sub_1003178A4()
{
  v1 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v0, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = type metadata accessor for IndexPath();
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  sub_100307AFC(v3);
  sub_100004F84(v3, &unk_100ADFB90);
  v8(v3, 1, 1, v7);
  v9 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_indexPathWithLatestAssetGridSelection;
  swift_beginAccess();
  sub_100014318(v3, v0 + v9, &unk_100ADFB90);
  return swift_endAccess();
}

void sub_100317A40(uint64_t a1, void *a2)
{
  v4 = sub_1000F24EC(&unk_100ADFB90);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v14 - v6;
  v8 = [a2 nextFocusedIndexPath];
  if (v8)
  {
    v9 = v8;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    sub_100004F84(v7, &unk_100ADFB90);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_100004F84(v7, &unk_100ADFB90);
    v12 = [v2 traitCollection];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 5)
    {
      sub_1006018C4();
    }
  }
}

uint64_t sub_100317BD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v36[-v5];
  v7 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v7 - 8);
  v42 = &v36[-v8];
  v9 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v9 - 8);
  v41 = &v36[-v10];
  v11 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36[-v12];
  v14 = type metadata accessor for UnsupportedEntryMode();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v36[-v19];
  v21 = sub_1000AB4D8();
  if (v21)
  {
    v40 = a1;
    v44 = *(v21 + 4);
    type metadata accessor for JournalEntryMO();

    if (MinimumSupportedVersion.isEditingSupported.getter())
    {
      goto LABEL_10;
    }

    v38 = v6;
    v39 = v1;
    JournalEntryMO.unsupportedEntryMode.getter();
    v22 = *(v15 + 48);
    if (v22(v13, 1, v14) == 1)
    {
      v23 = *(v15 + 104);
      v37 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v23(v20);
      if (v22(v13, 1, v14) != 1)
      {
        sub_100004F84(v13, &qword_100ADE5A0);
      }

      v2 = v39;
      v24 = v37;
    }

    else
    {
      (*(v15 + 32))(v20, v13, v14);
      v24 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v23 = *(v15 + 104);
      v2 = v39;
    }

    (v23)(v17, v24, v14);
    sub_1000249D4(&unk_100ADE5E0, &type metadata accessor for UnsupportedEntryMode);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v25 = *(v15 + 8);
    v25(v17, v14);
    v25(v20, v14);
    v6 = v38;
    if (v44 != v43)
    {
LABEL_10:

      v26 = type metadata accessor for CanvasContentInputType();
      v27 = v41;
      swift_storeEnumTagMultiPayload();
      (*(*(v26 - 8) + 56))(v27, 0, 1, v26);

      sub_1003054F0(v28, v27, 1);

      sub_100004F84(v27, &qword_100AD57F0);
    }

    else
    {
      sub_1004164C0(v2);
    }

    a1 = v40;
  }

  v29 = type metadata accessor for IndexPath();
  v30 = *(v29 - 8);
  v31 = v42;
  (*(v30 + 16))(v42, a1, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  v32 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellPath;
  swift_beginAccess();
  sub_100014318(v31, v2 + v32, &unk_100ADFB90);
  swift_endAccess();
  Date.init()();

  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v6, 0, 1, v33);
  v34 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_lastSelectedCellTime;
  swift_beginAccess();
  sub_100014318(v6, v2 + v34, &unk_100AD4790);
  return swift_endAccess();
}

uint64_t sub_100318204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1007495D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1003182EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1005BB03C();
}

uint64_t sub_1003183A4(uint64_t result)
{
  if (result)
  {
    return (*(v1 + 16))();
  }

  return result;
}

double *sub_1003183E4()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v27 - v7);
  v9 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (!v9)
  {
    v21 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    goto LABEL_8;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v11 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
LABEL_8:
    sub_100004F84(v8, &unk_100AD7CB0);
    return _swiftEmptyArrayStorage;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100014124(v8, type metadata accessor for JournalEntryCollectionViewController.Item);
    return _swiftEmptyArrayStorage;
  }

  v12 = *v8;
  v13 = [*(v1 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext) objectWithID:*v8];

  type metadata accessor for JournalEntryMO();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    return _swiftEmptyArrayStorage;
  }

  v15 = v14;
  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.debug(_:), v2);
  v16 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v5, v2);
  if (v16)
  {
    v17 = [v15 objectID];
    v18 = sub_1007A73DC();
    v20 = sub_1007AA708(v17, v18, v19);
  }

  else
  {
    v20 = [objc_allocWithZone(NSItemProvider) init];
  }

  v23 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v20];

  v24 = v13;
  v25 = [v15 managedObjectContext];
  if (!v25)
  {
    v25 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
  }

  type metadata accessor for EntryViewModel();
  swift_allocObject();
  [v23 setLocalObject:{sub_100035ADC(v15, 0, 0, v25)}];

  sub_1000F24EC(&unk_100AD4780);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100941D50;
  *(v26 + 32) = v23;

  return v26;
}

id sub_1003187FC(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForItemAtIndexPath:isa];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(UIDragPreviewParameters) init];
  [v3 bounds];
  v9 = [objc_opt_self() bezierPathWithRoundedRect:v5 cornerRadius:{v6, v7, v8, 16.0}];
  [v4 setVisiblePath:v9];

  v10 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v10];

  return v4;
}

uint64_t sub_10031894C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1003189BC()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1003189F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100ADE618);
  sub_1000F24EC(&qword_100ADE620);
  sub_1000F24EC(&qword_100AF1550);

  return sub_100308E68(a1, a2, a3);
}

uint64_t sub_100318BAC()
{
  sub_1000F24EC(&qword_100ADE610);
  sub_1000065A8(0, &qword_100AD4D40);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

unint64_t sub_100318C58()
{
  result = qword_100ADE648;
  if (!qword_100ADE648)
  {
    sub_1000F2A18(&qword_100ADE640);
    sub_1000F2A18(&qword_100ADE650);
    sub_10000B58C(&qword_100ADE658, &qword_100ADE650);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE648);
  }

  return result;
}

uint64_t sub_100318D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_10030B830(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_100318EB0()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:0];
}

void sub_100318F4C(char a1)
{
  type metadata accessor for IndexPath();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_100309960(a1, v3, v4, v5);
}

uint64_t sub_100318FE4()
{

  return swift_deallocObject();
}

unint64_t sub_100319090()
{
  result = qword_100ADE7A8;
  if (!qword_100ADE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE7A8);
  }

  return result;
}

uint64_t sub_100319114()
{

  return sub_10030C834();
}

uint64_t sub_100319264()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_1003192A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasFallbackAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003192E8(void *a1, char *a2)
{
  if (qword_100ACFC30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100ADE8D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "BGContinuedProcessingTask called %@", v8, 0xCu);
    sub_10012B714(v9);
  }

  v11 = *&a2[OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions];
  if (v11 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v31 = Strong;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v5;
      v16 = v11;
      v17 = [v14 progress];
      [v17 setCompletedUnitCount:0];

      aBlock[0] = *&v16[OBJC_IVAR____TtC7Journal13ExportOptions_progress];
      v18 = aBlock[0];
      swift_getKeyPath();
      *(swift_allocObject() + 16) = v14;
      v19 = v15;
      v20 = v18;
      v21 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v22 = *&a2[OBJC_IVAR____TtC7Journal13ExportManager_progressObservation];
      *&a2[OBJC_IVAR____TtC7Journal13ExportManager_progressObservation] = v21;

      sub_100325460(v16);
      v23 = swift_allocObject();
      *(v23 + 16) = v14;
      *(v23 + 24) = a2;
      aBlock[4] = sub_10031A508;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A675F0;
      v24 = _Block_copy(aBlock);
      v25 = v19;
      v26 = a2;

      [v14 setExpirationHandler:v24];

      _Block_release(v24);
      v27 = *&v26[OBJC_IVAR____TtC7Journal13ExportManager_currentContinuedProcessingTask];
      *&v26[OBJC_IVAR____TtC7Journal13ExportManager_currentContinuedProcessingTask] = v14;

      return;
    }
  }

  else
  {
    v31 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100008458(0xD000000000000018, 0x80000001008EAB60, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v28, "Skipping execution of export background task with identifier %s. Export options or presenting view controller are nil.", v29, 0xCu);
      sub_10000BA7C(v30);

      return;
    }
  }
}

uint64_t sub_100319754(void **a1, uint64_t a2, void *a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a3;
  v11 = v8;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_1003E9628(0, 0, v7, &unk_10094F600, v13);
}

uint64_t sub_100319894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10031992C, v7, v6);
}

uint64_t sub_10031992C()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = [v2 progress];
  [v3 setTotalUnitCount:{objc_msgSend(v1, "totalUnitCount")}];
  v4 = [v1 totalUnitCount];
  [v1 fractionCompleted];
  v6 = v5 * v4;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_7;
  }

  v7 = v0[2];
  [v3 setCompletedUnitCount:v6];
  v2 = [v7 title];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v1 = "v16@?0@BGTask8";
  if (qword_100AD0BC8 != -1)
  {
    goto LABEL_24;
  }

LABEL_7:
  v27._object = 0x80000001008EAC10;
  v8._object = (v1 | 0x8000000000000000);
  v8._countAndFlagsBits = 0x1000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000024;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, qword_100B31298, v9, v27);
  sub_1000F24EC(&unk_100AD5B10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940080;
  [v3 fractionCompleted];
  v12 = v11 * 100.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 < 9.22337204e18)
  {
    v13 = v0[2];
    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = v12;
    static String.localizedStringWithFormat(_:_:)();

    v14 = String._bridgeToObjectiveC()();

    [v13 updateTitle:v2 subtitle:v14];

    if (qword_100ACFC30 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_11:
  v15 = type metadata accessor for Logger();
  sub_10000617C(v15, qword_100ADE8D0);
  v16 = v3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = [v16 totalUnitCount];
    *(v19 + 12) = 2048;
    *(v19 + 14) = [v16 completedUnitCount];

    _os_log_impl(&_mh_execute_header, v17, v18, "bgTask updating progress total=%lld completed=%lld", v19, 0x16u);
  }

  else
  {

    v17 = v16;
  }

  if ([v16 isFinished])
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "bgTask.setTaskCompleted", v22, 2u);
    }

    v23 = v0[2];

    [v23 setTaskCompletedWithSuccess:1];
  }

  v24 = v0[1];

  return v24();
}

void sub_100319DE0(void *a1, uint64_t a2)
{
  if (qword_100ACFC30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100ADE8D0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "BGContinuedProcessingTask expirationHandler called %@", v8, 0xCu);
    sub_10012B714(v9);
  }

  if (*(a2 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask))
  {

    Task.cancel()();
  }
}

void sub_100319F78()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  if (*(v0 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:defaultValue:table:bundle:locale:comment:)();
    if (qword_100AD0BC8 != -1)
    {
      swift_once();
    }

    v31._object = 0x80000001008EAC10;
    v7._object = 0x80000001008EABF0;
    v31._countAndFlagsBits = 0xD000000000000024;
    v7._countAndFlagsBits = 0x1000000000000014;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, qword_100B31298, v8, v31);
    v9 = objc_allocWithZone(BGContinuedProcessingTaskRequest);
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();

    v12 = String._bridgeToObjectiveC()();

    v13 = [v9 initWithIdentifier:v10 title:v11 subtitle:v12];

    v14 = v13;
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v4, v1);
    [v14 setEarliestBeginDate:isa];

    if (qword_100ACFC30 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100ADE8D0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Submitting background export task to BGTaskScheduler", v19, 2u);
    }

    v20 = [objc_opt_self() sharedScheduler];
    v30 = 0;
    v21 = [v20 submitTaskRequest:v14 error:&v30];

    if (v21)
    {
      v22 = v30;
    }

    else
    {
      v23 = v30;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        swift_errorRetain();
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v28;
        *v27 = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "Error scheduling background export task: %@", v26, 0xCu);
        sub_10012B714(v27);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10031A510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_100319894(a1, v4, v5, v7, v6);
}

uint64_t sub_10031A5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for StateOfMindAssetMetadata();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE6680);
  v4[9] = swift_task_alloc();
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

  v4[10] = v7;
  v4[11] = v9;

  return _swift_task_switch(sub_10031A710, v7, v9);
}

uint64_t sub_10031A710()
{
  v1 = v0[5];
  v2 = sub_10031ABA0(v1);
  v4 = v3;
  v0[12] = v3;
  v5 = sub_100197FB8();
  v7 = sub_10031B7A4(v5, v6, 0xD000000000000029, 0x80000001008EAC80, 0, 0);
  v0[13] = v8;

  v9 = *(v1 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata);
  if (v9)
  {
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];

    sub_10025BAFC(v10);

    v13 = (*(v12 + 48))(v10, 1, v11);
    v14 = v0[9];
    if (v13)
    {
      sub_10031B694(v0[9]);
      v15 = 0;
      v9 = 0;
    }

    else
    {
      v17 = v0[7];
      v16 = v0[8];
      v18 = v0[6];
      (*(v17 + 16))(v16, v0[9], v18);
      sub_10031B694(v14);
      v19 = sub_100196950(1);
      v9 = v20;
      (*(v17 + 8))(v16, v18);
      v15 = v19;
    }
  }

  else
  {
    v15 = 0;
  }

  sub_10031B7A4(v15, v9, 0xD000000000000029, 0x80000001008EACB0, 0, 0);
  v0[14] = v21;

  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_10031A950;
  v23 = v0[4];
  v25 = v0[2];
  v24 = v0[3];

  return sub_100847498(v25, v24, v23, v2, v4, 0, 0, v7);
}

uint64_t sub_10031A950(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_10031AB0C;
  }

  else
  {

    v6[17] = a2;
    v6[18] = a1;

    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_10031AA9C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10031AA9C()
{

  v1 = v0[1];
  v3 = v0[17];
  v2 = v0[18];

  return v1(v2, v3);
}

uint64_t sub_10031AB0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031ABA0(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindAssetMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (!*(a1 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    return 0;
  }

  sub_10025BAFC(v8);

  if (!(*(v3 + 48))(v8, 1, v2))
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_10031B694(v8);
    v10 = sub_1001954FC();
    (*(v3 + 8))(v5, v2);
    if (!v10)
    {
      return 0;
    }

    if (v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_9:
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v11 = *(v10 + 32);
        }

        v12 = v11;

        v15 = 0;
        v16 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v15 = 0xD000000000000011;
        v16 = 0x80000001008EAD00;
        v13._countAndFlagsBits = sub_100417480();
        String.append(_:)(v13);

        v14._countAndFlagsBits = 59;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);

        return v15;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  sub_10031B694(v8);
  return 0;
}

uint64_t sub_10031AE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_10031A5D8(a1, a2, a3);
}

uint64_t sub_10031AED0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    if (v6[2])
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

    v6[5] = a2;
    v6[6] = a1;

    return _swift_task_switch(sub_10031B058, v10, v12);
  }
}

double sub_10031B074@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for StateOfMindAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {

    sub_10025BAFC(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = sub_1001956A8(0);
      v13 = v12;
      v14 = sub_100196950(0);
      v16 = v15;
      *(a1 + 24) = &_s6ResultVN;
      *(a1 + 32) = sub_10031B6FC();
      *(a1 + 40) = sub_10031B750();
      v17 = swift_allocObject();
      *a1 = v17;
      v17[2] = v11;
      v17[3] = v13;
      v17[4] = v14;
      v17[5] = v16;
      (*(v7 + 8))(v10, v6);
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_10031B694(v5);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_10031B298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000F24EC(&qword_100ADE910);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000CA14(a1, a1[3]);
  sub_10031BB78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_10031B430(uint64_t a1)
{
  result = sub_10031B458();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10031B458()
{
  result = qword_100ADE8E8;
  if (!qword_100ADE8E8)
  {
    type metadata accessor for StateOfMindAsset();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE8E8);
  }

  return result;
}

uint64_t sub_10031B4B0()
{
  if (*v0)
  {
    return 0x746169636F737361;
  }

  else
  {
    return 0x736C6562616CLL;
  }
}

uint64_t sub_10031B4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEC000000736E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10031B5CC(uint64_t a1)
{
  v2 = sub_10031BB78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031B608(uint64_t a1)
{
  v2 = sub_10031BB78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10031B644@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10031B994(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10031B694(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE6680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10031B6FC()
{
  result = qword_100ADE8F0;
  if (!qword_100ADE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE8F0);
  }

  return result;
}

unint64_t sub_10031B750()
{
  result = qword_100ADE8F8;
  if (!qword_100ADE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE8F8);
  }

  return result;
}

unint64_t sub_10031B7A4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  _StringGuts.grow(_:)(39);

  v13._countAndFlagsBits = a3;
  v13._object = a4;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x3D656C7974732022;
  v14._object = 0xE900000000000022;
  String.append(_:)(v14);
  if (a6)
  {
    v15 = a6;
  }

  else
  {
    a5 = 0;
    v15 = 0xE000000000000000;
  }

  v16._countAndFlagsBits = a5;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 15906;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x3E7669642F3CLL;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  return 0xD000000000000010;
}

uint64_t sub_10031B8FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10031B944(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10031B994(void *a1)
{
  v3 = sub_1000F24EC(&qword_100ADE900);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000CA14(a1, a1[3]);
  sub_10031BB78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BA7C(a1);
  return v7;
}

unint64_t sub_10031BB78()
{
  result = qword_100ADE908;
  if (!qword_100ADE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE908);
  }

  return result;
}

unint64_t sub_10031BBE0()
{
  result = qword_100ADE918;
  if (!qword_100ADE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE918);
  }

  return result;
}

unint64_t sub_10031BC38()
{
  result = qword_100ADE920;
  if (!qword_100ADE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE920);
  }

  return result;
}

unint64_t sub_10031BC90()
{
  result = qword_100ADE928;
  if (!qword_100ADE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE928);
  }

  return result;
}

id sub_10031BCE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnknownAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UnknownAsset()
{
  result = qword_100ADE958;
  if (!qword_100ADE958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10031BD74(char a1, double a2)
{
  v3 = v2;
  v6 = [v3 superview];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v3 bottomAnchor];
  v9 = [v7 safeAreaLayoutGuide];
  v10 = [v9 bottomAnchor];

  v11 = [v8 *(&off_100A677A0)[a1]];
  if (v11)
  {
    [v11 setConstant:-a2];
    [v11 setActive:1];
  }

  return v11;
}

id sub_10031BEA8(id *a1, double a2, double a3)
{
  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    result = *a1;
    v15 = 0;
    goto LABEL_9;
  }

  v8 = *a1;
  v9 = a2 / a3;
  if (!*a1)
  {
    goto LABEL_6;
  }

  [*a1 multiplier];
  result = v8;
  if (v11 != v9)
  {
    [v8 setActive:0];
LABEL_6:
    v12 = [v4 widthAnchor];
    v13 = [v4 heightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 multiplier:v9];

    result = v14;
    *a1 = v14;
    if (!v14)
    {
      return result;
    }
  }

  v15 = 1;
LABEL_9:

  return [result setActive:v15];
}

uint64_t sub_10031C008(void *a1)
{
  v3 = [v1 topAnchor];
  v4 = [a1 layoutMarginsGuide];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5];
  LODWORD(v7) = 1144750080;
  [v6 setPriority:v7];
  v8 = [v1 leadingAnchor];
  v9 = [a1 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  LODWORD(v12) = 1144750080;
  [v11 setPriority:v12];
  sub_1000F24EC(&unk_100AD4780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10094F800;
  *(v13 + 32) = v6;
  *(v13 + 40) = v11;
  v32 = v6;
  v14 = v11;
  v15 = [v1 topAnchor];
  v16 = [a1 layoutMarginsGuide];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintGreaterThanOrEqualToAnchor:v17];
  *(v13 + 48) = v18;
  v19 = [v1 leadingAnchor];
  v20 = [a1 layoutMarginsGuide];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintGreaterThanOrEqualToAnchor:v21];
  *(v13 + 56) = v22;
  v23 = [v1 centerXAnchor];
  v24 = [a1 layoutMarginsGuide];
  v25 = [v24 centerXAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v13 + 64) = v26;
  v27 = [v1 centerYAnchor];
  v28 = [a1 layoutMarginsGuide];
  v29 = [v28 centerYAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v13 + 72) = v30;

  return v13;
}

uint64_t sub_10031C39C()
{
  v3 = static AppInfo.bundleIdentifier.getter();
  v4 = v0;

  v1._object = 0x80000001008EAEB0;
  v1._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v1);

  qword_100B2F7B0 = v3;
  *algn_100B2F7B8 = v4;
  return result;
}

id sub_10031C7A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10031C7FC(uint64_t a1, uint64_t a2, id a3)
{
  v5 = OBJC_IVAR____TtC7Journal35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider;
  result = *(v3 + OBJC_IVAR____TtC7Journal35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider);
  if (!result)
  {
    v8 = [a3 textLayoutManager];
    v9 = [objc_allocWithZone(type metadata accessor for TranscriptWaitingViewTextAttachmentViewProvider()) initWithTextAttachment:v3 parentView:a1 textLayoutManager:v8 location:a2];

    v10 = *(v3 + v5);
    *(v3 + v5) = v9;

    return *(v3 + v5);
  }

  return result;
}

uint64_t sub_10031C898()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

id sub_10031C90C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal36AudioRecordingLiveActivityStopButton____lazy_storage___packageView;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal36AudioRecordingLiveActivityStopButton____lazy_storage___packageView);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = objc_allocWithZone(type metadata accessor for AudioRecordingLiveActivityStopButton.PackageView());
    v4 = sub_10031D664();
    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_10015DB5C(v6);
  }

  sub_10015DB6C(v3);
  return v4;
}

id sub_10031C9A4(double a1, double a2, double a3, double a4)
{
  v8 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v8 - 8);
  v10 = v30 - v9;
  v11 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v11 - 8);
  v30[1] = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UIView.Invalidations.Configuration();
  __chkstk_darwin(v17);
  v18 = sub_1000F24EC(&qword_100ADEAB0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v30 - v20;
  v22 = OBJC_IVAR____TtC7Journal36AudioRecordingLiveActivityStopButton__phase;
  v33 = 0;
  UIView.Invalidations.Configuration.init()();
  sub_10031D610();
  UIView.Invalidating.init(wrappedValue:_:)();
  v23 = v31;
  (*(v19 + 32))(&v31[v22], v21, v18);
  v24 = v13;
  *&v23[OBJC_IVAR____TtC7Journal36AudioRecordingLiveActivityStopButton____lazy_storage___packageView] = 1;
  v25 = type metadata accessor for AudioRecordingLiveActivityStopButton();
  v32.receiver = v23;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  static UIButton.Configuration.plain()();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  (*(v14 + 16))(v10, v16, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  UIButton.configuration.setter();
  v27 = sub_10031C90C();
  if (v27)
  {
    v28 = v27;
    [v27 setUserInteractionEnabled:0];
    [v26 addSubview:v28];
    sub_100013178(0.0);

    (*(v14 + 8))(v16, v24);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  return v26;
}

uint64_t sub_10031CDAC(void *a1)
{
  v3 = type metadata accessor for UIView.Invalidations.Configuration();
  __chkstk_darwin(v3);
  v4 = sub_1000F24EC(&qword_100ADEAB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = OBJC_IVAR____TtC7Journal36AudioRecordingLiveActivityStopButton__phase;
  v11[15] = 0;
  UIView.Invalidations.Configuration.init()();
  sub_10031D610();
  UIView.Invalidating.init(wrappedValue:_:)();

  (*(v5 + 32))(v1 + v8, v7, v4);
  v9 = OBJC_IVAR____TtC7Journal36AudioRecordingLiveActivityStopButton____lazy_storage___packageView;
  *(v1 + OBJC_IVAR____TtC7Journal36AudioRecordingLiveActivityStopButton____lazy_storage___packageView) = 1;
  (*(v5 + 8))(v1 + v8, v4);
  sub_10015DB5C(*(v1 + v9));
  type metadata accessor for AudioRecordingLiveActivityStopButton();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10031CFCC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AudioRecordingLiveActivityStopButton();
  objc_msgSendSuper2(&v5, "didMoveToWindow");
  v1 = [v0 window];
  if (v1 && (v2 = v1, v3 = [v1 windowScene], v2, v3))
  {
    v4 = [objc_opt_self() defaultCenter];
    [v4 addObserver:v0 selector:"resetAnimation" name:UISceneDidActivateNotification object:v3];
  }

  else
  {
    v4 = [objc_opt_self() defaultCenter];
    [v4 removeObserver:v0 name:UISceneDidActivateNotification object:0];
  }
}

void sub_10031D138()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  [v0 isHighlighted];
  v1 = sub_10031C90C();
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_rootLayer;
    v3 = *&v1[OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_rootLayer];
    v4 = v1;
    v5 = String._bridgeToObjectiveC()();

    v6 = [v3 stateWithName:v5];

    LODWORD(v7) = 1.0;
    [*&v4[OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_stateController] setState:v6 ofLayer:*&v4[v2] transitionSpeed:v7];
  }

  else
  {
  }
}

id sub_10031D2E8()
{
  v1 = sub_10031C90C();
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_rootLayer;
    v3 = *&v1[OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_rootLayer];
    v4 = v1;
    v5 = String._bridgeToObjectiveC()();
    v6 = [v3 stateWithName:v5];

    [*&v4[OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_stateController] setState:v6 ofLayer:*&v4[v2] transitionSpeed:0.0];
  }

  return [v0 setNeedsUpdateConfiguration];
}

uint64_t type metadata accessor for AudioRecordingLiveActivityStopButton()
{
  result = qword_100ADE9F8;
  if (!qword_100ADE9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031D4F8()
{
  sub_10031D590();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10031D590()
{
  if (!qword_100ADEA08)
  {
    type metadata accessor for UIView.Invalidations.Configuration();
    sub_10031D610();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADEA08);
    }
  }
}

unint64_t sub_10031D610()
{
  result = qword_100ADEA10;
  if (!qword_100ADEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEA10);
  }

  return result;
}

id sub_10031D664()
{
  v1 = objc_allocWithZone(NSDataAsset);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithName:v2];

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [v3 data];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();

  v30 = 0;
  v10 = [objc_opt_self() packageWithData:isa type:v9 options:0 error:&v30];

  if (!v10)
  {
    v28 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000340DC(v5, v7);

LABEL_9:
    type metadata accessor for AudioRecordingLiveActivityStopButton.PackageView();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v11 = v30;
  sub_1000340DC(v5, v7);
  v12 = [v10 rootLayer];
  if (!v12)
  {

LABEL_8:

    goto LABEL_9;
  }

  *&v0[OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_rootLayer] = v12;
  v13 = v12;
  v14 = objc_allocWithZone(CAStateController);
  v15 = v13;
  result = [v14 initWithLayer:v15];
  if (result)
  {
    v17 = result;

    *&v0[OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_stateController] = v17;
    [v15 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v29.receiver = v0;
    v29.super_class = type metadata accessor for AudioRecordingLiveActivityStopButton.PackageView();
    v26 = objc_msgSendSuper2(&v29, "initWithFrame:", v19, v21, v23, v25);
    [v15 setGeometryFlipped:{objc_msgSend(v10, "isGeometryFlipped")}];
    v27 = [v26 layer];
    [v27 addSublayer:v15];

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10031DA18()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AudioRecordingLiveActivityStopButton.PackageView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v2 = *&v0[OBJC_IVAR____TtCC7Journal36AudioRecordingLiveActivityStopButtonP33_9B17AF2B67F796200586389DA24B04BC11PackageView_rootLayer];
  [v2 bounds];
  v3 = Width / CGRectGetWidth(v12);
  [v0 bounds];
  Height = CGRectGetHeight(v13);
  [v2 bounds];
  v5 = Height / CGRectGetHeight(v14);
  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  [v0 bounds];
  MidX = CGRectGetMidX(v15);
  [v0 bounds];
  [v2 setPosition:{MidX, CGRectGetMidY(v16)}];
  CATransform3DMakeScale(&v9, v6, v6, 1.0);
  return [v2 setTransform:&v9];
}

id sub_10031DBC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for InsightsTip(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10031DD38()
{
  v0 = sub_1000F24EC(&qword_100AEE0E0);
  sub_100006118(v0, qword_100B2F7C0);
  sub_10000617C(v0, qword_100B2F7C0);
  sub_100026188();
  v1 = static NSUserDefaults.shared.getter();
  [v1 isStreakReminderEnabled];

  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10031DEAC()
{
  v0 = sub_1000F24EC(&unk_100ADE720);
  sub_100006118(v0, qword_100B2F7D8);
  sub_10000617C(v0, qword_100B2F7D8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

void *sub_10031DF5C()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_1000F24EC(&qword_100ADA0D8);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_1000B4CC8(v5);

  return v6;
}

uint64_t sub_10031E0E4()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Color.white.getter();
  v5 = Text.foregroundStyle<A>(_:)();
  sub_1000594D0(v0, v2, v4 & 1);

  return v5;
}

uint64_t sub_10031E1FC()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Color.white.getter();
  v5 = Text.foregroundStyle<A>(_:)();
  sub_1000594D0(v0, v2, v4 & 1);

  return v5;
}

uint64_t sub_10031E30C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100ADA050);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_1000F24EC(&qword_100ADA058);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000B58C(&qword_100ADA060, &qword_100ADA058);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000F24EC(&qword_100ADA068);
  a1[4] = sub_10023F2A0();
  sub_10001A770(a1);
  sub_10000B58C(&qword_100ADA088, &qword_100ADA050);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10031E56C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a1;
  v17 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100ADA098);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v16 - v7;
  v9 = sub_1000F24EC(&qword_100ADA0A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  sub_10000B58C(&qword_100ADA0A8, &qword_100ADA0A0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = 5;
  static PredicateExpressions.build_Arg<A>(_:)();
  v13 = v17;
  (*(v3 + 104))(v5, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v17);
  a2[3] = sub_1000F24EC(&qword_100ADA0B0);
  a2[4] = sub_1000B1210();
  sub_10001A770(a2);
  sub_10000B58C(&qword_100ADA0D0, &qword_100ADA098);
  v14 = v18;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v3 + 8))(v5, v13);
  (*(v6 + 8))(v8, v14);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10031E984()
{
  v0 = sub_1000F24EC(&qword_100ADC228);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADC238);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_10031EC28@<X0>(uint64_t *a1@<X8>)
{
  sub_10031F03C();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10031EC6C()
{
  result = qword_100ADEAB8;
  if (!qword_100ADEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEAB8);
  }

  return result;
}

uint64_t sub_10031ECC0()
{
  v0 = sub_1000F24EC(&unk_100ADE720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - v2;
  v4 = sub_1000F24EC(&qword_100AEE0E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Tips.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFC40 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v4, qword_100B2F7C0);
  (*(v5 + 16))(v7, v12, v4);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (qword_100ACFC48 != -1)
  {
    swift_once();
  }

  v14 = sub_10000617C(v0, qword_100B2F7D8);
  swift_beginAccess();
  (*(v1 + 16))(v3, v14, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v11, v8);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  v15 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v15;
}

unint64_t sub_10031F03C()
{
  result = qword_100ADEAC8;
  if (!qword_100ADEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEAC8);
  }

  return result;
}

uint64_t sub_10031F090()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADEAD0);
  sub_10000617C(v0, qword_100ADEAD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10031F150(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_1000F24EC(&qword_100AD5B28);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[8] = v5;
  v3[9] = v7;

  return _swift_task_switch(sub_10031F22C, v5, v7);
}

uint64_t sub_10031F22C()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10031F2C4;
  v2 = v0[5];
  v3 = v0[4];

  return sub_10008B5E8(v3, v2);
}

uint64_t sub_10031F2C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_10031F3EC, v4, v3);
}

uint64_t sub_10031F3EC()
{
  v1 = v0[11];
  if (v1)
  {
LABEL_13:

    v15 = v0[1];

    return v15(v1);
  }

  v2 = v0[7];
  sub_10031FC9C(v0[6] + qword_100B2F7F0, v2);
  v3 = type metadata accessor for WorkoutRouteAssetMetadata();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    sub_10031FC34(v0[7]);
LABEL_8:
    if (qword_100ACFC50 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100ADEAD0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "generateImage no route info in metadata", v14, 2u);
    }

    goto LABEL_13;
  }

  v7 = WorkoutRouteAssetMetadata.route.getter();
  v0[12] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = (v0[6] + qword_100AF0110);
  v0[13] = *v8;
  v0[14] = v8[1];
  type metadata accessor for MainActor();

  v0[15] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10031F668, v10, v9);
}

uint64_t sub_10031F668()
{
  receiver = v0[7].receiver;
  v3 = v0[6].receiver;
  super_class = v0[6].super_class;

  v4 = type metadata accessor for RouteMapGenerator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC7Journal17RouteMapGenerator_mapSnapshotter] = 0;
  *&v5[OBJC_IVAR____TtC7Journal17RouteMapGenerator_lineWidth] = 0x4008000000000000;
  v5[OBJC_IVAR____TtC7Journal17RouteMapGenerator_sizeType] = 8;
  v6 = &v5[OBJC_IVAR____TtC7Journal17RouteMapGenerator_id];
  *v6 = super_class;
  v6[1] = receiver;
  *&v5[OBJC_IVAR____TtC7Journal17RouteMapGenerator_routeCoordinates] = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v0[8].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v7 = v0[4].receiver;
  v8 = v0[4].super_class;

  return _swift_task_switch(sub_10031F760, v7, v8);
}

uint64_t sub_10031F760()
{
  v1 = *(*(v0 + 48) + qword_100B302E0);
  *(v0 + 152) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_10031F80C;

  return sub_1002A69B8(v1);
}

uint64_t sub_10031F80C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 144) = a1;

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return _swift_task_switch(sub_10031F954, v5, v4);
}

uint64_t sub_10031F954()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (sub_100511E4C(*(v0 + 152)))
    {
      if (qword_100ACFCB0 != -1)
      {
        swift_once();
      }

      sub_100752914(v1, *(v0 + 104), *(v0 + 112));
    }

    v2 = *(v0 + 144);
  }

  else
  {
    if (qword_100ACFC50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100ADEAD0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "error generating route map image", v6, 2u);
    }

    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t type metadata accessor for WorkoutRouteThumbnailCacheOperation()
{
  result = qword_100ADEB10;
  if (!qword_100ADEB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031FB44()
{
  sub_10031FBD4();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10031FBD4()
{
  if (!qword_100ADEB20)
  {
    type metadata accessor for WorkoutRouteAssetMetadata();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADEB20);
    }
  }
}

uint64_t sub_10031FC34(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10031FC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10031FEA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryMetadataButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10031FF20@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD9990);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for JournalEntryMetadataButton.ContentView();
  sub_1000082B4(v1 + *(v10 + 24), v9, &qword_100AD9990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Calendar();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100320128@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADECB0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for JournalEntryMetadataButton.ContentView();
  sub_1000082B4(v1 + *(v10 + 28), v9, &qword_100ADECB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100322238(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100320300()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for JournalEntryMetadataButton.ContentView() + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100320458@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100ADB0A0);
  __chkstk_darwin(v2);
  v4 = &v36 - v3;
  v47 = type metadata accessor for PlainButtonStyle();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000F24EC(&qword_100ADED78);
  __chkstk_darwin(v40);
  v8 = &v36 - v7;
  v46 = sub_1000F24EC(&qword_100ADED80);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v36 - v9;
  v48 = sub_1000F24EC(&qword_100ADED88);
  __chkstk_darwin(v48);
  v11 = &v36 - v10;
  v12 = type metadata accessor for EntryListType();
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  if (qword_100AD0A58 != -1)
  {
    swift_once();
  }

  v41 = v11;
  v18 = sub_100771E70();
  v39 = a1;
  if (v18)
  {
    v37 = v4;
    v38 = v2;
    v19 = v42;
    sub_100320128(v17);
    v20 = sub_1000F24EC(&qword_100AD47A0);
    v21 = *(*(v20 - 8) + 56);
    v21(v14, 2, 2, v20);
    v22 = sub_100023858(v17, v14);
    sub_100011478(v14);
    sub_100011478(v17);
    if (v22 & 1) != 0 || (sub_100320128(v17), v21(v14, 1, 2, v20), v23 = sub_100023858(v17, v14), sub_100011478(v14), sub_100011478(v17), (v23) || (sub_100320300())
    {
      v24 = sub_1007716BC(*(v19 + 8), 3);
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

    v4 = v37;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0x4018000000000000;
  v8[16] = 0;
  v25 = sub_1000F24EC(&qword_100ADED90);
  sub_100320B58(v24, &v8[*(v25 + 44)]);

  PlainButtonStyle.init()();
  sub_10000B58C(&qword_100ADED98, &qword_100ADED78);
  sub_100052258(&qword_100AD2918, &type metadata accessor for PlainButtonStyle);
  v26 = v43;
  v27 = v47;
  View.buttonStyle<A>(_:)();
  (*(v45 + 8))(v6, v27);
  sub_100004F84(v8, &qword_100ADED78);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v28 = v41;
  (*(v44 + 32))(v41, v26, v46);
  v29 = (v28 + *(v48 + 36));
  v30 = v54;
  v29[4] = v53;
  v29[5] = v30;
  v29[6] = v55;
  v31 = v50;
  *v29 = v49;
  v29[1] = v31;
  v32 = v52;
  v29[2] = v51;
  v29[3] = v32;
  v33 = enum case for DynamicTypeSize.accessibility1(_:);
  v34 = type metadata accessor for DynamicTypeSize();
  (*(*(v34 - 8) + 104))(v4, v33, v34);
  sub_100052258(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1003220EC();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v4, &qword_100ADB0A0);
    return sub_1000C61FC(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100320B58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v101 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v118 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v91 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v96 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v88 - v11;
  __chkstk_darwin(v12);
  v100 = &v88 - v13;
  __chkstk_darwin(v14);
  v119 = &v88 - v15;
  __chkstk_darwin(v16);
  v105 = &v88 - v17;
  v18 = sub_1000F24EC(&qword_100ADEDA8);
  __chkstk_darwin(v18 - 8);
  v115 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v88 - v21;
  v113 = type metadata accessor for Calendar.Component();
  v95 = *(v113 - 8);
  __chkstk_darwin(v113);
  v92 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Calendar();
  v93 = *(v23 - 8);
  v94 = v23;
  __chkstk_darwin(v23);
  v90 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Date();
  v25 = *(v122 - 8);
  __chkstk_darwin(v122);
  v117 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v89 = &v88 - v28;
  __chkstk_darwin(v29);
  v121 = &v88 - v30;
  v31 = sub_1000F24EC(&qword_100ADEDB0);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v88 - v33;
  v35 = sub_1000F24EC(&qword_100ADEDB8);
  __chkstk_darwin(v35 - 8);
  v112 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v120 = &v88 - v38;
  if (a1 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v107 = v8;
  v110 = v7;
  if (v39)
  {
    v88 = &v88;
    __chkstk_darwin(v39);
    *(&v88 - 2) = a1;

    sub_1000F24EC(&qword_100ADEDC0);
    sub_1003222A4();
    Button.init(action:label:)();
    v40 = v120;
    (*(v32 + 32))(v120, v34, v31);
    (*(v32 + 56))(v40, 0, 1, v31);
  }

  else
  {
    (*(v32 + 56))(v120, 1, 1, v31);
  }

  JournalEntryMO.displayDate.getter();
  v41 = v90;
  sub_10031FF20(v90);
  v42 = v89;
  static Date.now.getter();
  v43 = v95;
  v44 = v92;
  v45 = v113;
  v95[13](v92, enum case for Calendar.Component.year(_:), v113);
  v88 = Calendar.compare(_:to:toGranularity:)();
  (v43[1])(v44, v45);
  v46 = *(v25 + 8);
  v113 = v25 + 8;
  v95 = v46;
  (v46)(v42, v122);
  (*(v93 + 8))(v41, v94);
  JournalEntryMO.displayDate.getter();
  v47 = v96;
  static FormatStyle<>.dateTime.getter();
  v48 = v97;
  static Date.FormatStyle.Symbol.Weekday.wide.getter();
  v49 = v98;
  Date.FormatStyle.weekday(_:)();
  (*(v91 + 8))(v48, v102);
  v50 = *(v107 + 8);
  v51 = v110;
  v50(v47, v110);
  v52 = v103;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v53 = v100;
  Date.FormatStyle.month(_:)();
  (*(v104 + 8))(v52, v106);
  v50(v49, v51);
  v54 = v108;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v109 + 8))(v54, v111);
  v50(v53, v51);
  if (v88)
  {
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  }

  else
  {
    static Date.FormatStyle.Symbol.Year.omitted.getter();
  }

  v56 = v118;
  v55 = v119;
  Date.FormatStyle.year(_:)();
  (*(v99 + 8))(v56, v101);
  v50(v55, v51);
  sub_100052258(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
  sub_100052258(&qword_100AD5BF0, &type metadata accessor for Date);
  v57 = Text.init<A>(_:format:)();
  v59 = v58;
  v61 = v60;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v62 = Text.font(_:)();
  v64 = v63;
  v66 = v65;

  sub_1000594D0(v57, v59, v61 & 1);

  LODWORD(v131[0]) = static HierarchicalShapeStyle.secondary.getter();
  v67 = Text.foregroundStyle<A>(_:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  sub_1000594D0(v62, v64, v66 & 1);

  KeyPath = swift_getKeyPath();
  v75 = swift_getKeyPath();
  LOBYTE(v64) = v71 & 1;
  v134 = v71 & 1;
  v133 = 0;
  v76 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v135 = 0;
  *&v123 = v67;
  *(&v123 + 1) = v69;
  LOBYTE(v124) = v64;
  *(&v124 + 1) = v73;
  v125 = KeyPath;
  *&v126 = v75;
  *(&v126 + 1) = 1;
  LOBYTE(v127) = 0;
  BYTE8(v127) = v76;
  *&v128 = v77;
  *(&v128 + 1) = v78;
  *&v129 = v79;
  *(&v129 + 1) = v80;
  v130 = 0;
  sub_1000F24EC(&qword_100ADEE10);
  sub_1003224CC();
  v81 = v114;
  View.accessibilityRespondsToUserInteraction(_:)();
  v131[4] = v127;
  v131[5] = v128;
  v131[6] = v129;
  v132 = v130;
  v131[0] = v123;
  v131[1] = v124;
  v131[2] = v125;
  v131[3] = v126;
  sub_100004F84(v131, &qword_100ADEE10);
  v82 = v120;
  v83 = v112;
  sub_1000082B4(v120, v112, &qword_100ADEDB8);
  v84 = v115;
  sub_1000082B4(v81, v115, &qword_100ADEDA8);
  v85 = v116;
  sub_1000082B4(v83, v116, &qword_100ADEDB8);
  v86 = sub_1000F24EC(&qword_100ADEE40);
  sub_1000082B4(v84, v85 + *(v86 + 48), &qword_100ADEDA8);
  sub_100004F84(v81, &qword_100ADEDA8);
  (v95)(v121, v122);
  sub_100004F84(v82, &qword_100ADEDB8);
  sub_100004F84(v84, &qword_100ADEDA8);
  return sub_100004F84(v83, &qword_100ADEDB8);
}

uint64_t sub_100321874@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0xC018000000000000;
  *(a2 + 16) = 0;
  sub_1000F24EC(&qword_100ADEE48);
  sub_1001C2DB4(a1);
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1003226D4;
  *(v5 + 24) = v4;

  sub_1000F24EC(&qword_100ADEE50);
  sub_1000F24EC(&qword_100ADEE58);
  sub_10000B58C(&qword_100ADEE60, &qword_100ADEE50);
  sub_10032270C();
  sub_1003227C0();
  ForEach<>.init(_:id:content:)();
  v6 = (a2 + *(sub_1000F24EC(&qword_100ADEDE8) + 36));
  v7 = *(sub_1000F24EC(&qword_100ADCBF0) + 28);
  v8 = enum case for ControlSize.small(_:);
  v9 = type metadata accessor for ControlSize();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  v10 = static Animation.default.getter();
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1000F24EC(&qword_100ADEDC0);
  v13 = (a2 + *(result + 36));
  *v13 = v10;
  v13[1] = v11;
  return result;
}

uint64_t sub_100321ADC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100321B80(uint64_t a1, void **a2)
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_1000082B4(a1, &v11 - v5, &qword_100AD1420);
  v7 = *a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId:isa];
}

uint64_t sub_100321CBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for JournalMO();
  sub_100052258(&qword_100ADEEB0, &type metadata accessor for JournalMO);
  v8 = a2;
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result - a1;
    if (!__OFSUB__(result, a1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result - a1;
    if (!__OFSUB__(result, a1))
    {
LABEL_3:
      v14 = v13;
      v15 = static Alignment.center.getter();
      v17 = v16;
      v18 = a4 + *(sub_1000F24EC(&qword_100ADEE58) + 36);
      sub_100321DEC(v18);
      result = sub_1000F24EC(&qword_100ADEEA8);
      v19 = (v18 + *(result + 36));
      *v19 = v15;
      v19[1] = v17;
      *a4 = v9;
      *(a4 + 8) = v11;
      *(a4 + 16) = v14;
      return result;
    }
  }

  __break(1u);
  return result;
}

double sub_100321DEC@<D0>(uint64_t a1@<X8>)
{
  v2 = static Color.black.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = static Alignment.center.getter();
  v5 = v4;
  v6 = *(sub_1000F24EC(&qword_100ADEEB8) + 36);
  v7 = enum case for BlendMode.destinationOut(_:);
  v8 = type metadata accessor for BlendMode();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  result = v11;
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v2;
  *(a1 + 48) = 256;
  *(a1 + 56) = v3;
  *(a1 + 64) = v5;
  return result;
}

void sub_100321F08(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);

  sub_1003AD1A0(v3, 0, a1);
}

void sub_100321F48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong performPrimaryAction];
  }
}

uint64_t sub_100321FA4(uint64_t a1)
{
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_100022B50(a1, &v9 - v6);
  sub_100022B50(v7, v4);
  sub_10003C544();
  EnvironmentValues.subscript.setter();
  return sub_100011478(v7);
}

void sub_10032209C()
{
  if (!qword_100ADB020)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADB020);
    }
  }
}

unint64_t sub_1003220EC()
{
  result = qword_100ADEDA0;
  if (!qword_100ADEDA0)
  {
    sub_1000F2A18(&qword_100ADED88);
    sub_1000F2A18(&qword_100ADED78);
    type metadata accessor for PlainButtonStyle();
    sub_10000B58C(&qword_100ADED98, &qword_100ADED78);
    sub_100052258(&qword_100AD2918, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEDA0);
  }

  return result;
}

uint64_t sub_100322238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryListType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003222A4()
{
  result = qword_100ADEDC8;
  if (!qword_100ADEDC8)
  {
    sub_1000F2A18(&qword_100ADEDC0);
    sub_10032235C();
    sub_10000B58C(&qword_100ADEE00, &qword_100ADEE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEDC8);
  }

  return result;
}

unint64_t sub_10032235C()
{
  result = qword_100ADEDD0;
  if (!qword_100ADEDD0)
  {
    sub_1000F2A18(&qword_100ADEDD8);
    sub_1003223E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEDD0);
  }

  return result;
}

unint64_t sub_1003223E8()
{
  result = qword_100ADEDE0;
  if (!qword_100ADEDE0)
  {
    sub_1000F2A18(&qword_100ADEDE8);
    sub_10000B58C(&qword_100ADEDF0, &qword_100ADEDF8);
    sub_10000B58C(&qword_100ADCBE8, &qword_100ADCBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEDE0);
  }

  return result;
}

unint64_t sub_1003224CC()
{
  result = qword_100ADEE18;
  if (!qword_100ADEE18)
  {
    sub_1000F2A18(&qword_100ADEE10);
    sub_100322558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEE18);
  }

  return result;
}

unint64_t sub_100322558()
{
  result = qword_100ADEE20;
  if (!qword_100ADEE20)
  {
    sub_1000F2A18(&qword_100ADEE28);
    sub_100322610();
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEE20);
  }

  return result;
}

unint64_t sub_100322610()
{
  result = qword_100ADEE30;
  if (!qword_100ADEE30)
  {
    sub_1000F2A18(&qword_100ADEE38);
    sub_10000B58C(&qword_100ADB5A8, &qword_100ADB5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEE30);
  }

  return result;
}

unint64_t sub_10032270C()
{
  result = qword_100ADEE68;
  if (!qword_100ADEE68)
  {
    sub_1000F2A18(&qword_100AD1420);
    sub_100052258(&qword_100AD4B40, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEE68);
  }

  return result;
}

unint64_t sub_1003227C0()
{
  result = qword_100ADEE70;
  if (!qword_100ADEE70)
  {
    sub_1000F2A18(&qword_100ADEE58);
    sub_100322878();
    sub_10000B58C(&qword_100ADEEA0, &qword_100ADEEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEE70);
  }

  return result;
}

unint64_t sub_100322878()
{
  result = qword_100ADEE78;
  if (!qword_100ADEE78)
  {
    sub_1000F2A18(&qword_100ADEE80);
    sub_100322930();
    sub_10000B58C(&qword_100ADEE90, &qword_100ADEE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEE78);
  }

  return result;
}

unint64_t sub_100322930()
{
  result = qword_100ADEE88;
  if (!qword_100ADEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEE88);
  }

  return result;
}

uint64_t sub_1003229AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003229F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100322A60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100ADEEC8);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v47 = sub_1000F24EC(&qword_100ADEED0);
  __chkstk_darwin(v47);
  v14 = &v43 - v13;
  v48 = sub_1000F24EC(&qword_100ADEED8);
  __chkstk_darwin(v48);
  v16 = &v43 - v15;
  v45 = sub_1000F24EC(&qword_100ADEEE0);
  __chkstk_darwin(v45);
  v18 = &v43 - v17;
  if (a2)
  {
    if (a1 != 2)
    {
LABEL_3:
      v19 = static HorizontalAlignment.center.getter();
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v43 = v12;
    v21 = a1;
    v22 = a2;
    v23 = v7;
    v24 = v14;
    v25 = v18;
    v26 = v16;
    v27 = v20;
    os_log(_:dso:log:_:_:)();

    v16 = v26;
    v18 = v25;
    v14 = v24;
    v7 = v23;
    a2 = v22;
    a1 = v21;
    v12 = v43;
    v28 = v44;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1002F3070(a1, 0);
    (*(v28 + 8))(v9, v7);
    if (v49 != 2)
    {
      goto LABEL_3;
    }
  }

  v19 = static HorizontalAlignment.leading.getter();
LABEL_6:
  *v12 = v19;
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v29 = sub_1000F24EC(&qword_100ADEEE8);
  sub_100322FD0(a1, a2 & 1, a3, &v12[*(v29 + 44)]);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1002F3070(a1, 0);
    (*(v44 + 8))(v9, v7);
    if (v49 != 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    static Alignment.leading.getter();
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    goto LABEL_10;
  }

LABEL_8:
  static Alignment.center.getter();
LABEL_11:
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v12, v14, &qword_100ADEEC8);
  v31 = &v14[*(v47 + 36)];
  v32 = v54;
  *(v31 + 4) = v53;
  *(v31 + 5) = v32;
  *(v31 + 6) = v55;
  v33 = v50;
  *v31 = v49;
  *(v31 + 1) = v33;
  v34 = v52;
  *(v31 + 2) = v51;
  *(v31 + 3) = v34;
  v35 = static Edge.Set.all.getter();
  sub_100021CEC(v14, v16, &qword_100ADEED0);
  v36 = &v16[*(v48 + 36)];
  *v36 = v35;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  KeyPath = swift_getKeyPath();
  sub_100021CEC(v16, v18, &qword_100ADEED8);
  v38 = &v18[*(v45 + 36)];
  *v38 = KeyPath;
  *(v38 + 1) = 1;
  v38[16] = 0;
  v39 = swift_getKeyPath();
  v40 = v46;
  sub_100021CEC(v18, v46, &qword_100ADEEE0);
  result = sub_1000F24EC(&qword_100ADEEF0);
  v42 = (v40 + *(result + 36));
  *v42 = v39;
  v42[1] = 0x3FEC28F5C28F5C29;
  return result;
}

uint64_t sub_100322FD0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52._countAndFlagsBits = a3;
  v50 = a2;
  *&v51 = a1;
  v57 = a4;
  v56 = sub_1000F24EC(&qword_100ADEEF8);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v6;
  v48 = type metadata accessor for AccessibilityTraits();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100ADEF00);
  __chkstk_darwin(v9 - 8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v45 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  static Font.title2.getter();
  Font.bold()();

  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  sub_1000594D0(v13, v15, v17 & 1);

  LODWORD(v64._countAndFlagsBits) = static HierarchicalShapeStyle.primary.getter();
  v23 = Text.foregroundStyle<A>(_:)();
  v25 = v24;
  LOBYTE(v13) = v26;
  v28 = v27;
  sub_1000594D0(v18, v20, v22 & 1);

  v64._countAndFlagsBits = v23;
  v64._object = v25;
  LOBYTE(v65) = v13 & 1;
  *(&v65 + 1) = v28;
  static AccessibilityTraits.isHeader.getter();
  v29 = v46;
  View.accessibilityAddTraits(_:)();
  (*(v47 + 8))(v8, v48);
  sub_1000594D0(v23, v25, v13 & 1);

  v30 = static VerticalAlignment.center.getter();
  sub_1003235B0(v52._countAndFlagsBits, &v64);
  LOBYTE(v25) = v66;
  v52 = v64;
  v51 = v65;
  v63 = 1;
  v62 = v66;
  v31 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v33 = static HierarchicalShapeStyle.secondary.getter();
  v58 = v30;
  v59[0] = 1;
  *&v59[24] = v51;
  *&v59[8] = v52;
  v59[40] = v25;
  *&v60 = KeyPath;
  *(&v60 + 1) = v31;
  v61 = v33;
  sub_1000F24EC(&qword_100ADEF08);
  sub_100323C40();
  v34 = v53;
  View.monospacedDigit()();
  v66 = *&v59[16];
  v67 = *&v59[32];
  v68 = v60;
  v69 = v61;
  v64 = v58;
  v65 = *v59;
  sub_100004F84(&v64, &qword_100ADEF08);
  v35 = v49;
  sub_100323DDC(v29, v49);
  v36 = v55;
  v37 = *(v55 + 16);
  v38 = v54;
  v39 = v34;
  v40 = v56;
  v37(v54, v34, v56);
  v41 = v57;
  sub_100323DDC(v35, v57);
  v42 = sub_1000F24EC(&qword_100ADEF38);
  v37((v41 + *(v42 + 48)), v38, v40);
  v43 = *(v36 + 8);
  v43(v39, v40);
  sub_100004F84(v29, &qword_100ADEF00);
  v43(v38, v40);
  return sub_100004F84(v35, &qword_100ADEF00);
}

double sub_1003235B0@<D0>(uint64_t a1@<X2>, Swift::String *a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.TimeFormatStyle();
  v62 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Date.FormatStyle.DateStyle();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  if (*(a1 + 80) == 1)
  {
    v17 = sub_100323E4C(0);
    v19 = v18;
    v21 = v20;
    v22 = sub_100323E4C(1);
    v24 = v23;
    v26 = v25;
    v27 = Text.accessibilityLabel(_:)();
    v61 = v28;
    v62 = v27;
    v30 = v29;
    v32 = v31;
    sub_1000594D0(v22, v24, v26 & 1);

    sub_1000594D0(v17, v19, v21 & 1);

    v64 = v62;
    v65 = v30;
    v66 = v32 & 1;
    v67 = v61;
    v68 = 0;
  }

  else
  {
    v54 = v5;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._countAndFlagsBits = 10794;
    v33._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
    sub_1005F04CC(v15);
    static Date.FormatStyle.DateStyle.omitted.getter();
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v34 = Date.formatted(date:time:)();
    v36 = v35;
    (*(v56 + 8))(v8, v57);
    (*(v9 + 8))(v11, v55);
    (*(v13 + 8))(v15, v12);
    v37._countAndFlagsBits = v34;
    v37._object = v36;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v37);

    v38._countAndFlagsBits = 2107946;
    v38._object = 0xE300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    sub_1005F02FC();
    v40 = v39;
    static Duration.seconds(_:)();
    v41 = v58;
    if (v40 >= 3600.0)
    {
      static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
    }

    else
    {
      static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
    }

    v42 = v62;
    v43 = v59;
    static FormatStyle<>.time(pattern:)();
    (*(v60 + 8))(v41, v61);
    sub_1003247A8(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle);
    v44 = v54;
    Duration.formatted<A>(_:)();
    (*(v42 + 8))(v43, v44);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v69);

    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v45);
    LocalizedStringKey.init(stringInterpolation:)();
    v64 = Text.init(_:tableName:bundle:comment:)();
    v65 = v47;
    v66 = v46 & 1;
    v67 = v48;
    v68 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v69._countAndFlagsBits;
  v50 = v70;
  v51 = v71;
  v52 = v63;
  *v63 = v69;
  v52[1] = v50;
  LOBYTE(v52[2]._countAndFlagsBits) = v51;
  return result;
}

uint64_t sub_100323BEC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_100323C40()
{
  result = qword_100ADEF10;
  if (!qword_100ADEF10)
  {
    sub_1000F2A18(&qword_100ADEF08);
    sub_100323CF8();
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF10);
  }

  return result;
}

unint64_t sub_100323CF8()
{
  result = qword_100ADEF18;
  if (!qword_100ADEF18)
  {
    sub_1000F2A18(&qword_100ADEF20);
    sub_10000B58C(&qword_100ADEF28, &qword_100ADEF30);
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF18);
  }

  return result;
}

uint64_t sub_100323DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADEF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100323E4C(char a1)
{
  v79 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v73 = *(v79 - 8);
  __chkstk_darwin(v79);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.DateStyle();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin(v6);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v71 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v70 = *(v18 - 8);
  __chkstk_darwin(v18);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Duration.UnitsFormatStyle();
  v68 = *(v21 - 8);
  v69 = v21;
  __chkstk_darwin(v21);
  v64 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v23 - 8);
  if (a1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0x6E6F697461727544;
    v24._object = 0xEA0000000000203ALL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
    sub_1005EFF5C();
    v60 = static Duration.seconds(_:)();
    v59 = v25;
    sub_1000F24EC(&qword_100ADCE28);
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v62 = v11;
    v61 = v14;
    v57 = v15;
    v58 = v18;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100942000;
    static Duration.UnitsFormatStyle.Unit.hours.getter();
    static Duration.UnitsFormatStyle.Unit.minutes.getter();
    static Duration.UnitsFormatStyle.Unit.seconds.getter();
    sub_100496D78(v26);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v27 = v63;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v28 = v66;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v29 = v71;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v30 = v64;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v16 + 8))(v29, v57);
    (*(v70 + 8))(v28, v58);
    (*(v65 + 8))(v27, v67);
    sub_1003247A8(&qword_100ADD0F8, &type metadata accessor for Duration.UnitsFormatStyle);
    v31 = v69;
    Duration.formatted<A>(_:)();
    (*(v68 + 8))(v30, v31);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v80);

    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    sub_1005EFF5C();
    v35 = static Duration.seconds(_:)();
    v33 = sub_1005B0524(v35, v36);
  }

  v37 = v33;
  v38 = v34;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
  v40._countAndFlagsBits = v37;
  v40._object = v38;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v40);

  v41._countAndFlagsBits = 548913696;
  v41._object = 0xA400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v41);
  v42 = v72;
  sub_1005F04CC(v72);
  v43 = sub_10048FE64();
  v45 = v44;
  v46 = v75;
  v47 = *(v74 + 8);
  v47(v42, v75);
  v48._countAndFlagsBits = v43;
  v48._object = v45;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v48);

  v49._countAndFlagsBits = 8236;
  v49._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  sub_1005F04CC(v42);
  v50 = v76;
  static Date.FormatStyle.DateStyle.omitted.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v51 = Date.formatted(date:time:)();
  v53 = v52;
  (*(v73 + 8))(v3, v79);
  (*(v77 + 8))(v50, v78);
  v47(v42, v46);
  v54._countAndFlagsBits = v51;
  v54._object = v53;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v55);
  LocalizedStringKey.init(stringInterpolation:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1003247A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003247F0()
{
  result = qword_100ADEF40;
  if (!qword_100ADEF40)
  {
    sub_1000F2A18(&qword_100ADEEF0);
    sub_1003248A8();
    sub_10000B58C(&qword_100ADB5A8, &qword_100ADB5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF40);
  }

  return result;
}

unint64_t sub_1003248A8()
{
  result = qword_100ADEF48;
  if (!qword_100ADEF48)
  {
    sub_1000F2A18(&qword_100ADEEE0);
    sub_100324960();
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF48);
  }

  return result;
}

unint64_t sub_100324960()
{
  result = qword_100ADEF50;
  if (!qword_100ADEF50)
  {
    sub_1000F2A18(&qword_100ADEED8);
    sub_1003249EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF50);
  }

  return result;
}

unint64_t sub_1003249EC()
{
  result = qword_100ADEF58;
  if (!qword_100ADEF58)
  {
    sub_1000F2A18(&qword_100ADEED0);
    sub_10000B58C(&qword_100ADEF60, &qword_100ADEEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF58);
  }

  return result;
}

unint64_t sub_100324AB8()
{
  result = qword_100ADEF68;
  if (!qword_100ADEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF68);
  }

  return result;
}

unint64_t sub_100324B10()
{
  result = qword_100ADEF70;
  if (!qword_100ADEF70)
  {
    sub_1000F2A18(&qword_100ADEF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADEF70);
  }

  return result;
}

void sub_100324BC4()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for AlertProgressContentViewController();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  v1 = [objc_allocWithZone(UIProgressView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setObservedProgress:*&v0[OBJC_IVAR____TtC7JournalP33_C0870F0871EA99EA9E6D05F47CB4490834AlertProgressContentViewController_progress]];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    v6 = 20.0;
  }

  else
  {
    v6 = 16.0;
  }

  sub_1000F24EC(&unk_100AD4780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941830;
  v8 = [v1 topAnchor];
  v9 = [v0 view];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v7 + 32) = v12;
  v13 = [v1 leadingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16 constant:v6];
  *(v7 + 40) = v17;
  v18 = [v1 bottomAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v18 constraintLessThanOrEqualToAnchor:v21];
  *(v7 + 48) = v22;
  v23 = [v1 trailingAnchor];

  v24 = [v0 view];
  if (v24)
  {
    v25 = v24;
    v26 = objc_opt_self();
    v27 = [v25 trailingAnchor];

    v28 = [v23 constraintEqualToAnchor:v27 constant:-v6];
    *(v7 + 56) = v28;
    sub_1001AD130();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];

    return;
  }

LABEL_14:
  __break(1u);
}

id sub_100324FEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertProgressContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100325058(uint64_t a1, char a2, void *a3, void *a4, char a5)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for JurassicAlertController();
  if (qword_100AD0BC8 != -1)
  {
    swift_once();
  }

  v8.super.isa = qword_100B31298;
  v34._object = 0x80000001008EB420;
  v9._object = 0x80000001008EB400;
  v34._countAndFlagsBits = 0xD00000000000001ELL;
  v9._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_100B31298, v10, v34);
  v35._object = 0x80000001008EB4B0;
  v11._object = 0x80000001008EB440;
  v35._countAndFlagsBits = 0xD00000000000001FLL;
  v11._countAndFlagsBits = 0x1000000000000066;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v8, v12, v35);
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v36._object = 0xE600000000000000;
  v16._countAndFlagsBits = 0x6C65636E6143;
  v16._object = 0xE600000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0x6C65636E6143;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v8, v17, v36);
  v18 = String._bridgeToObjectiveC()();

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v18 style:1 handler:0];

  [v15 addAction:v20];
  v37._object = 0xE900000000000074;
  v21._countAndFlagsBits = 0x74726F707845;
  v37._countAndFlagsBits = 0x726F707865206F44;
  v21._object = 0xE600000000000000;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v8, v22, v37);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = a1;
  *(v24 + 32) = a2;
  *(v24 + 40) = a3;
  *(v24 + 48) = a4;
  *(v24 + 56) = a5 & 1;
  *(v24 + 64) = ObjectType;

  v25 = a3;
  v26 = a4;
  v27 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100329538;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016B4D8;
  aBlock[3] = &unk_100A67B20;
  v28 = _Block_copy(aBlock);

  v29 = [v19 actionWithTitle:v27 style:0 handler:v28];
  _Block_release(v28);

  [v15 addAction:v29];
  [v26 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_100325460(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  swift_unknownObjectWeakAssign();
  v7 = *&v1[OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions];
  *&v1[OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions] = a1;
  v8 = a1;

  v9 = OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask;
  if (*&v2[OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask])
  {

    Task.cancel()();

    *&v2[v9] = 0;
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = v8;
  v12 = v2;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  *&v2[v9] = sub_1003E9628(0, 0, v6, &unk_1009500B8, v14);
}

uint64_t sub_10032563C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100ADEFB0);
  sub_10000617C(v0, qword_100ADEFB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003256B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = type metadata accessor for CancellationError();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v10;
  v5[23] = v9;

  return _swift_task_switch(sub_10032585C, v10, v9);
}

uint64_t sub_10032585C()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC7Journal13ExportOptions_continueInBackground);
  *(v0 + 265) = v1;
  if ((v1 & 1) == 0)
  {
    v2 = [objc_opt_self() sharedApplication];
    [v2 setIdleTimerDisabled:1];
  }

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_100325958;
  v4 = *(v0 + 80);

  return sub_10076977C(v4);
}

uint64_t sub_100325958()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_100325D64;
  }

  else
  {
    v5 = sub_100325A94;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100325A94()
{
  v25 = v0;
  if (qword_100ACFC58 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100ADEFB0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v21 = v0[19];
    v6 = v0[17];
    v19 = v0[20];
    v20 = v0[18];
    v7 = v0[15];
    v8 = v0[16];
    v23 = v5;
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v10 = 136315138;
    v11 = *(v9 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath + 8);
    v0[5] = *(v9 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath);
    v0[6] = v11;
    (*(v8 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
    sub_1000777B4();

    URL.appending<A>(path:directoryHint:)();
    (*(v8 + 8))(v6, v7);

    sub_100209458();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v21 + 8))(v19, v20);
    v15 = sub_100008458(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v23, "Export succeeded: %s", v10, 0xCu);
    sub_10000BA7C(v22);
  }

  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_100326314;
  v17 = v0[10];

  return sub_100326F28(v17);
}

uint64_t sub_100325D64()
{
  v1 = *(v0 + 200);
  *(v0 + 56) = v1;
  *(v0 + 224) = v1;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {

    if (qword_100ACFC58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100ADEFB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Export finished: cancelled", v5, 2u);
    }

    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);

    sub_10072B094(1);
    (*(v7 + 8))(v6, v8);
    goto LABEL_7;
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 264) == 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {

    if (qword_100ACFC58 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100ADEFB0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Export finished: nothing to export", v26, 2u);
    }

    v27 = *(v0 + 88);

    v28 = *(v27 + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
    *(v0 + 232) = v28;
    if (v28)
    {
      v28;
      v21 = swift_task_alloc();
      *(v0 + 240) = v21;
      *v21 = v0;
      v22 = sub_100326510;
      goto LABEL_28;
    }

    sub_1003277D4();
    sub_10072B094(1);
LABEL_7:

    if ((*(v0 + 265) & 1) == 0)
    {
      v9 = [objc_opt_self() sharedApplication];
      [v9 setIdleTimerDisabled:0];
    }

    v10 = *(v0 + 8);

    return v10();
  }

  if (qword_100ACFC58 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000617C(v13, qword_100ADEFB0);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Export failed: %@", v16, 0xCu);
    sub_100004F84(v17, &unk_100AD4BB0);
  }

  v19 = *(v0 + 88);

  v20 = *(v19 + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
  *(v0 + 248) = v20;
  if (!v20)
  {

    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    sub_10032796C(v29, v30);

    sub_10072B094(0);
    goto LABEL_7;
  }

  v20;
  v21 = swift_task_alloc();
  *(v0 + 256) = v21;
  *v21 = v0;
  v22 = sub_100326728;
LABEL_28:
  v21[1] = v22;

  return UIViewController.dismissAsync(animated:)(1);
}

uint64_t sub_100326314()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_100326978;
  }

  else
  {
    v5 = sub_100326450;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100326450()
{

  if ((*(v0 + 265) & 1) == 0)
  {
    v1 = [objc_opt_self() sharedApplication];
    [v1 setIdleTimerDisabled:0];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100326510()
{
  v1 = *v0;
  v2 = *(*v0 + 232);

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_100326650, v4, v3);
}

uint64_t sub_100326650()
{

  sub_1003277D4();
  sub_10072B094(1);

  if ((*(v0 + 265) & 1) == 0)
  {
    v1 = [objc_opt_self() sharedApplication];
    [v1 setIdleTimerDisabled:0];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100326728()
{
  v1 = *v0;
  v2 = *(*v0 + 248);

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_100326868, v4, v3);
}

uint64_t sub_100326868()
{

  swift_getErrorValue();
  v1 = Error.localizedDescription.getter();
  sub_10032796C(v1, v2);

  sub_10072B094(0);

  if ((*(v0 + 265) & 1) == 0)
  {
    v3 = [objc_opt_self() sharedApplication];
    [v3 setIdleTimerDisabled:0];
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100326978()
{
  v1 = *(v0 + 216);
  *(v0 + 56) = v1;
  *(v0 + 224) = v1;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {

    if (qword_100ACFC58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100ADEFB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Export finished: cancelled", v5, 2u);
    }

    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);

    sub_10072B094(1);
    (*(v7 + 8))(v6, v8);
    goto LABEL_7;
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 264) == 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {

    if (qword_100ACFC58 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100ADEFB0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Export finished: nothing to export", v26, 2u);
    }

    v27 = *(v0 + 88);

    v28 = *(v27 + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
    *(v0 + 232) = v28;
    if (v28)
    {
      v28;
      v21 = swift_task_alloc();
      *(v0 + 240) = v21;
      *v21 = v0;
      v22 = sub_100326510;
      goto LABEL_28;
    }

    sub_1003277D4();
    sub_10072B094(1);
LABEL_7:

    if ((*(v0 + 265) & 1) == 0)
    {
      v9 = [objc_opt_self() sharedApplication];
      [v9 setIdleTimerDisabled:0];
    }

    v10 = *(v0 + 8);

    return v10();
  }

  if (qword_100ACFC58 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000617C(v13, qword_100ADEFB0);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Export failed: %@", v16, 0xCu);
    sub_100004F84(v17, &unk_100AD4BB0);
  }

  v19 = *(v0 + 88);

  v20 = *(v19 + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
  *(v0 + 248) = v20;
  if (!v20)
  {

    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    sub_10032796C(v29, v30);

    sub_10072B094(0);
    goto LABEL_7;
  }

  v20;
  v21 = swift_task_alloc();
  *(v0 + 256) = v21;
  *v21 = v0;
  v22 = sub_100326728;
LABEL_28:
  v21[1] = v22;

  return UIViewController.dismissAsync(animated:)(1);
}

uint64_t sub_100326F28(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v6;
  v2[19] = v5;

  return _swift_task_switch(sub_1003270BC, v6, v5);
}

uint64_t sub_1003270BC()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
  v0[20] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1003273F8;

    return UIViewController.dismissAsync(animated:)(1);
  }

  else
  {

    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[12];
    v6 = v0[7];
    v7 = OBJC_IVAR____TtC7Journal13ExportOptions_destinationDirectoryURL;
    swift_beginAccess();
    sub_100161650(v6 + v7, v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_100004F84(v0[12], &unk_100AD6DD0);
    }

    else
    {
      v9 = v0[15];
      v8 = v0[16];
      v10 = v0[11];
      v11 = v0[9];
      v12 = v0[10];
      v13 = v0[7];
      (*(v0[14] + 32))(v8, v0[12], v0[13]);
      v14 = *(v13 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath + 8);
      v0[5] = *(v13 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath);
      v0[6] = v14;
      (*(v12 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v11);
      sub_1000777B4();

      URL.appending<A>(path:directoryHint:)();
      (*(v12 + 8))(v10, v11);

      sub_1003286C4(v9, v8);
      v15 = v0[16];
      v16 = v0[13];
      v17 = *(v0[14] + 8);
      v18 = v0[7];
      v17(v0[15], v16);
      v17(v15, v16);
      sub_100328A78(v18);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1003273F8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return _swift_task_switch(sub_100327538, v4, v3);
}

uint64_t sub_100327538()
{

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtC7Journal13ExportOptions_destinationDirectoryURL;
  swift_beginAccess();
  sub_100161650(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[12], &unk_100AD6DD0);
  }

  else
  {
    v6 = v0[15];
    v18 = v0[16];
    v7 = v0[11];
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[7];
    (*(v0[14] + 32))();
    v11 = *(v10 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath + 8);
    v0[5] = *(v10 + OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath);
    v0[6] = v11;
    (*(v9 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
    sub_1000777B4();

    URL.appending<A>(path:directoryHint:)();
    (*(v9 + 8))(v7, v8);

    sub_1003286C4(v6, v18);
    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[7];
    v15 = *(v0[14] + 8);
    v15(v0[15], v13);
    v15(v12, v13);
    sub_100328A78(v14);
  }

  v16 = v0[1];

  return v16();
}

void sub_1003277D4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100AD0BC8 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_100B31298;
    v11._object = 0x80000001008EB5A0;
    v3._object = 0x80000001008EB580;
    v11._countAndFlagsBits = 0xD00000000000001ALL;
    v3._countAndFlagsBits = 0xD000000000000013;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_100B31298, v4, v11);
    v12._object = 0x80000001008EB5E0;
    v6._countAndFlagsBits = 0xD000000000000014;
    v6._object = 0x80000001008EB5C0;
    v12._countAndFlagsBits = 0xD00000000000001DLL;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v2, v7, v12);
    v9 = sub_10059CA0C(v5._countAndFlagsBits, v5._object, v8._countAndFlagsBits, v8._object, DebugData.init(name:), 0);
  }
}

void sub_10032796C(uint64_t a1, NSString a2)
{
  if (qword_100AD0BC8 != -1)
  {
    swift_once();
  }

  v3._object = 0xED000064656C6961;
  v12._object = 0xED000064656C6961;
  v3._countAndFlagsBits = 0x662074726F707845;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x662074726F707845;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_100B31298, v4, v12);
  v5 = String._bridgeToObjectiveC()();

  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for JurassicAlertController();
  v10 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v5 message:a2 preferredStyle:1];

  if (qword_100AD0428 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() actionWithTitle:v6 style:0 handler:0];

  [v10 addAction:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_100327B58(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 281) = a5;
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 280) = a2;
  *(v6 + 72) = a1;
  *(v6 + 80) = a3;
  sub_1000F24EC(&unk_100AD6DD0);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  v8 = type metadata accessor for FileStoreConfiguration();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v6 + 168) = v9;
  *(v6 + 176) = *(v9 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 216) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 224) = v10;
  *(v6 + 232) = v11;

  return _swift_task_switch(sub_100327DAC, v10, v11);
}

uint64_t sub_100327DAC()
{
  v1 = *(v0 + 176);
  v39 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v35 = *(v0 + 200);
  v36 = *(v0 + 144);
  v4 = *(v0 + 128);
  v37 = *(v0 + 120);
  v38 = *(v0 + 136);
  v5 = *(v0 + 281);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 280);
  v9 = objc_allocWithZone(type metadata accessor for ExportOptions());

  v10 = sub_100696F58(v8, v7, v6, v5);
  *(v0 + 240) = v10;
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  (*(v2 + 8))(v3, v36);
  v11 = *&v10[OBJC_IVAR____TtC7Journal13ExportOptions_saveToDirectoryFilename];
  v12 = *&v10[OBJC_IVAR____TtC7Journal13ExportOptions_saveToDirectoryFilename + 8];
  *(v0 + 40) = v11;
  *(v0 + 48) = v12;
  (*(v4 + 104))(v38, enum case for URL.DirectoryHint.isDirectory(_:), v37);
  sub_1000777B4();

  URL.appending<A>(path:directoryHint:)();
  (*(v4 + 8))(v38, v37);

  v13 = *(v1 + 8);
  *(v0 + 248) = v13;
  *(v0 + 256) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v35, v39);
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  *(v0 + 56) = 0;
  LODWORD(v6) = [v15 removeItemAtURL:v17 error:v0 + 56];

  v19 = *(v0 + 56);
  if (v6)
  {
    v20 = v19;
  }

  else
  {
    v21 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v22 = [v14 defaultManager];
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  *(v0 + 64) = 0;
  v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v0 + 64];

  v27 = *(v0 + 64);
  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v29 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *(v0 + 264) = [objc_allocWithZone(type metadata accessor for DocumentPicker()) init];
  v30 = swift_task_alloc();
  *(v0 + 272) = v30;
  *v30 = v0;
  v30[1] = sub_100328130;
  v31 = *(v0 + 208);
  v32 = *(v0 + 112);
  v33 = *(v0 + 88);

  return sub_100761190(v32, v31, v33);
}

uint64_t sub_100328130()
{
  v1 = *v0;
  v2 = *(*v0 + 264);

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_10032829C, v4, v3);
}

uint64_t sub_10032829C()
{
  v45 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 112);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 112);
    (*(v0 + 248))(*(v0 + 208), *(v0 + 168));

    sub_100004F84(v5, &unk_100AD6DD0);
  }

  else
  {
    (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 112), *(v0 + 168));
    v6 = URL.startAccessingSecurityScopedResource()();
    if (qword_100ACFC58 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100ADEFB0);
    v12 = *(v10 + 16);
    v12(v8, v7, v9);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 248);
    v17 = *(v0 + 184);
    v18 = *(v0 + 168);
    if (v15)
    {
      v43 = v14;
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v19 = 136315394;
      sub_100209458();
      v41 = v6;
      v20 = v12;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v16(v17, v18);
      v24 = v21;
      v12 = v20;
      v25 = sub_100008458(v24, v23, &v44);

      *(v19 + 4) = v25;
      *(v19 + 12) = 1024;
      *(v19 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v13, v43, "startAccessingSecurityScopedResource to destinationDirectoryURL: %s, response: %{BOOL}d", v19, 0x12u);
      sub_10000BA7C(v42);
    }

    else
    {

      v16(v17, v18);
    }

    v26 = *(v0 + 240);
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 281);
    v12(v29, *(v0 + 192), v27);
    (*(v28 + 56))(v29, 0, 1, v27);
    v32 = OBJC_IVAR____TtC7Journal13ExportOptions_destinationDirectoryURL;
    swift_beginAccess();
    sub_10032964C(v29, v26 + v32);
    swift_endAccess();
    v33 = *(v30 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions);
    *(v30 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions) = v26;
    v34 = v26;

    if (v31 == 1)
    {
      swift_unknownObjectWeakAssign();
      sub_100319F78();
    }

    else
    {
      sub_100325460(*(v0 + 240));
    }

    v35 = *(v0 + 248);
    v36 = *(v0 + 208);
    v37 = *(v0 + 192);
    v38 = *(v0 + 168);

    v35(v37, v38);
    v35(v36, v38);
  }

  v39 = *(v0 + 8);

  return v39();
}

void sub_1003286C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = v39 - v9;
  v10 = [objc_opt_self() defaultManager];
  v43 = a2;
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v45 = 0;
  LODWORD(a2) = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v45];

  if (a2)
  {
    v14 = v45;
  }

  else
  {
    v16 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v3 = 0;
  }

  URL._bridgeToObjectiveC()(v15);
  v18 = v17;
  v45 = 0;
  v19 = [v10 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:4 error:&v45];

  v20 = v45;
  if (v19)
  {
    v39[1] = v3;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v20;

    v41 = *(v21 + 16);
    if (v41)
    {
      v23 = 0;
      v39[2] = v44 + 16;
      v40 = v21;
      while (1)
      {
        if (v23 >= *(v21 + 16))
        {
          __break(1u);
        }

        v24 = v44;
        v25 = v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23;
        v26 = v42;
        (*(v44 + 16))(v42, v25, v5);
        URL.lastPathComponent.getter();
        URL.appendingPathComponent(_:)();

        URL._bridgeToObjectiveC()(v27);
        v29 = v28;
        v30 = *(v24 + 8);
        v30(v26, v5);
        URL._bridgeToObjectiveC()(v31);
        v33 = v32;
        v45 = 0;
        v34 = v10;
        v35 = [v10 moveItemAtURL:v29 toURL:v32 error:&v45];

        v36 = v45;
        if (!v35)
        {
          break;
        }

        ++v23;
        v30(v7, v5);
        v10 = v34;
        v21 = v40;
        if (v41 == v23)
        {
          goto LABEL_10;
        }
      }

      v38 = v36;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v30(v7, v5);
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
    v37 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100328A78(uint64_t a1)
{
  v34 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v35 = &countAndFlagsBits - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &countAndFlagsBits - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &countAndFlagsBits - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  if (qword_100AD0BC8 != -1)
  {
    swift_once();
  }

  v12 = qword_100B31298;
  v36._object = 0x80000001008EB4F0;
  v13._object = 0x80000001008EB4D0;
  v36._countAndFlagsBits = 0xD00000000000001FLL;
  v13._countAndFlagsBits = 0xD000000000000018;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, qword_100B31298, v14, v36)._countAndFlagsBits;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000022;
  v15._object = 0x80000001008EB510;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  v16 = OBJC_IVAR____TtC7Journal13ExportOptions_destinationDirectoryURL;
  v17 = v34;
  swift_beginAccess();
  sub_100161650(v17 + v16, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &unk_100AD6DD0);
    v18 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v19 = URL.lastPathComponent.getter();
    v18 = v20;
    (*(v8 + 8))(v10, v7);
  }

  type metadata accessor for JurassicAlertController();
  v21._countAndFlagsBits = v19;
  v21._object = v18;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  String.LocalizationValue.init(stringInterpolation:)();
  v23 = v12;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();

  v26 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  v37._object = 0xE200000000000000;
  v27._countAndFlagsBits = 19279;
  v27._object = 0xE200000000000000;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v37._countAndFlagsBits = 19279;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v23, v28, v37);
  v29 = String._bridgeToObjectiveC()();

  v30 = [objc_opt_self() actionWithTitle:v29 style:1 handler:0];

  [v26 addAction:v30];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    [Strong presentViewController:v26 animated:1 completion:0];
  }
}

uint64_t sub_100328F9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6, char a7, uint64_t a8)
{
  v15 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = a5;
  v20 = a6;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  *(v22 + 48) = a4;
  *(v22 + 56) = v19;
  *(v22 + 64) = v20;
  *(v22 + 72) = a7;
  *(v22 + 80) = a8;
  sub_1003E9BBC(0, 0, v17, &unk_1009500A0, v22);
}

uint64_t sub_10032911C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 121) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 120) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return _swift_task_switch(sub_1003291CC, v10, v9);
}

uint64_t sub_1003291CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_1003292E4;
    v3 = *(v0 + 121);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = *(v0 + 120);

    return sub_100327B58(v6, v7, v4, v5, v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 104) == 0;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1003292E4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_100329424, v4, v3);
}

uint64_t sub_100329424()
{

  **(v0 + 40) = *(v0 + 104) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100329550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 64);
  v12 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_10032911C(a1, v4, v5, v6, v7, v9, v12, v8);
}

uint64_t sub_10032964C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003296BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1003256B0(a1, v4, v5, v7, v6);
}

id sub_10032977C(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal10FadingView_contentFadeGradientLayer;
  *&v1[v3] = [objc_allocWithZone(CAGradientLayer) init];
  *&v1[OBJC_IVAR____TtC7Journal10FadingView_fadeLocations] = 0;
  *&v1[OBJC_IVAR____TtC7Journal10FadingView_fadeColors] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FadingView();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1000248C4();
  }

  return v5;
}

id sub_10032984C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003298DC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10032BA30;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A67BE8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_100329B64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel;
    v3 = *&Strong[OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel];
    v4 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    if (Strong[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] == 6)
    {
      v5 = Strong;
      v6 = v3;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v1;
      v8 = v3;

      if ((v7 & 1) == 0)
      {

        goto LABEL_8;
      }
    }

    sub_1005765B4();
    v10 = v9;

    if (!v10)
    {
      v11 = 0;
      v12 = v2;
      goto LABEL_9;
    }

LABEL_8:
    v12 = v2;
    v11 = String._bridgeToObjectiveC()();

LABEL_9:
    [v3 setText:v11];

    v13 = *&v1[v12];
    if (v1[v4] == 6)
    {
      v14 = v13;

      v15 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v13;

      if (v16)
      {
        v15 = 1;
      }

      else if (sub_1006B7C60(v1[v4], &off_100A58B28))
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }
    }

    [v13 setNumberOfLines:v15];

    [*&v1[v12] setLineBreakMode:4];
    v18 = *&v1[v12];
    v19 = v1[v4];
    if (v19 > 3 || v1[v4] <= 1u || v19 == 2)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = v18;

      if (v20)
      {
LABEL_28:
        v23 = 1;
        goto LABEL_31;
      }

      if (v1[v4] <= 3u || v1[v4] != 6)
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_28;
        }

        if (v1[v4] <= 6u)
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v23 = v25 & 1;
LABEL_31:
          [v18 setTextAlignment:v23];

          if (v1[v4] > 6u)
          {
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {
              v27 = v1[v4];

              if (v27 == 6)
              {
              }

              else
              {
                v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v32 & 1) == 0)
                {
                  v34 = qword_100AD03F0;
                  v29 = *&v1[v12];
                  if (v34 != -1)
                  {
                    swift_once();
                  }

                  v30 = &selRef_secondaryLabelColor;
                  v31 = &qword_100B303E8;
                  goto LABEL_48;
                }
              }

              v33 = qword_100AD03B0;
              v29 = *&v1[v12];
              if (v33 != -1)
              {
                swift_once();
              }

              v30 = &selRef_secondaryLabelColor;
              v31 = &qword_100B303A8;
LABEL_48:
              [v29 setFont:*v31];

              v35 = *&v1[v12];
              v36 = [objc_opt_self() *v30];
              [v35 setTextColor:v36];

              return;
            }
          }

          v28 = qword_100AD03C8;
          v29 = *&v1[v12];
          if (v28 != -1)
          {
            swift_once();
          }

          v30 = &selRef_labelColor;
          v31 = &qword_100B303C0;
          goto LABEL_48;
        }
      }
    }

    else
    {
      v22 = v18;
    }

    v23 = 1;
    goto LABEL_31;
  }
}

uint64_t sub_10032A548()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v10 = *((swift_isaMask & *v8) + 0x58);
  v11 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v12 = v8;
  v10(6, v11);

  v13 = *(v1 + OBJC_IVAR____TtC7Journal20ContactAssetGridView_previousSizeType);
  if (v13 == 8 || (result = sub_10003C2FC(*(v1 + v9), v13), (result & 1) == 0))
  {
    sub_1000746FC();
    sub_1000746FC();
    sub_1003298DC();
    sub_100005508();
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10032BA28;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A67BC0;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000826D8();
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v19 + 8))(v4, v2);
    return (*(v5 + 8))(v7, v18);
  }

  return result;
}

void sub_10032A890()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v3 = Strong[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    if (v3 > 3)
    {
      if (v3 - 4 >= 2)
      {
        if (v3 == 6)
        {
          v10 = Strong;
          sub_10032A9C8();
        }

        else
        {
          v11 = Strong;
          sub_10032B408();
        }

        goto LABEL_7;
      }
    }

    else if (v3 >= 3)
    {
      v4 = Strong;
      sub_10032AF24();
LABEL_7:
      v6 = v1[v2];

      v1[OBJC_IVAR____TtC7Journal20ContactAssetGridView_previousSizeType] = v6;
      [v1 layoutIfNeeded];
      v7 = *&v1[OBJC_IVAR____TtC7Journal16ContactAssetView_contactLabel];
      v8 = v1;
      [v7 layoutIfNeeded];
      v9 = *&v8[OBJC_IVAR____TtC7Journal16ContactAssetView_assetImageView];

      [v9 layoutIfNeeded];
      return;
    }

    v5 = Strong;
    sub_10032A9DC();
    goto LABEL_7;
  }
}