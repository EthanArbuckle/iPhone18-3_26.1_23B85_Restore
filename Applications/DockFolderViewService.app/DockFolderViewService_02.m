uint64_t sub_100024C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCItemSortDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v48 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Logger();
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = *(v53 + 64);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v22 = *(v12 + 16);
  v57 = a1;
  v52 = v22;
  v22(v17, a1, v11);
  v23 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v23, v51);
  v55 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v50 = v4;
    v26 = v25;
    v49 = swift_slowAlloc();
    v59 = v49;
    *v26 = 136315394;
    *(v26 + 4) = sub_100037B98(0xD000000000000015, 0x8000000100092B00, &v59);
    *(v26 + 12) = 2080;
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
    v48 = v23;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v11;
    v29 = v8;
    v30 = a2;
    v31 = v5;
    v33 = v32;
    (*(v12 + 8))(v17, v28);
    v34 = sub_100037B98(v27, v33, &v59);
    v5 = v31;
    a2 = v30;
    v8 = v29;

    *(v26 + 14) = v34;
    v35 = v48;
    _os_log_impl(&_mh_execute_header, v48, v51, "%s start observing url: %s", v26, 0x16u);
    swift_arrayDestroy();

    v4 = v50;
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  (*(v53 + 8))(v21, v54);
  v36 = v58;
  sub_100024298(v58);
  v37 = v56;
  v52(v56, v57, v55);
  (*(v5 + 16))(v8, v36, v4);
  v38 = type metadata accessor for DockFolderDataSource(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  sub_10002E5B8(v37, v8);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = (v41 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  v44 = *(v41 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  v45 = *(v41 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler + 8);
  *v43 = sub_100042804;
  v43[1] = v42;

  sub_1000414DC(v44);

  v46 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource) = v41;
  swift_retain_n();

  sub_10002E9C0();

  return (*(v5 + 8))(v36, v4);
}

void sub_100025194()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000258B4();
  }
}

uint64_t sub_1000251E8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v35 = type metadata accessor for Logger();
  v16 = *(v35 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v35);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v37 = a1;
  sub_100042774(a1, v15, &unk_1000BCA20, &qword_100090BC0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v3;
    v23 = v22;
    v31 = swift_slowAlloc();
    v38 = v31;
    *v23 = 136315394;
    *(v23 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v38);
    *(v23 + 12) = 2080;
    sub_100042774(v15, v12, &unk_1000BCA20, &qword_100090BC0);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_100006390(v15, &unk_1000BCA20, &qword_100090BC0);
    v27 = sub_100037B98(v24, v26, &v38);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s got url: %s", v23, 0x16u);
    swift_arrayDestroy();

    v3 = v32;
  }

  else
  {

    sub_100006390(v15, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v16 + 8))(v19, v35);
  v28 = v36;
  sub_100042774(v37, v36, &unk_1000BCA20, &qword_100090BC0);
  if ((*(v4 + 48))(v28, 1, v3) == 1)
  {
    return sub_100006390(v28, &unk_1000BCA20, &qword_100090BC0);
  }

  v30 = v34;
  (*(v4 + 32))(v34, v28, v3);
  sub_100024C78(v30, v33);
  return (*(v4 + 8))(v30, v3);
}

uint64_t sub_10002561C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0x6573624F706F7473, 0xEF2928676E697672, &v23);
    *(v9 + 12) = 2080;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v1;
    v14 = v13;

    v15 = sub_100037B98(v12, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %s", v9, 0x16u);
    swift_arrayDestroy();

    result = (*(v2 + 8))(v5, v21);
  }

  else
  {

    result = (*(v2 + 8))(v5, v1);
  }

  v17 = *&v6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v17)
  {
    v18 = *(*(v17 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v18)
    {

      v19 = v18;
      dispatch thunk of DOCNodeCollection.stopObserving()();
    }
  }

  return result;
}

void *sub_1000258B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v42 = v13;
    v43 = v6;
    v44 = v5;
    v45 = v2;
    v46 = v1;
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092A60, v47);
    *(v14 + 12) = 2080;
    v15 = v11;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100037B98(v17, v19, v47);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v21 = *&v15[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
    if (v21)
    {
      v22 = *(*(v21 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      if (v22)
      {

        v23 = v22;
        v24 = dispatch thunk of DOCNodeCollection.nodes.getter();
      }

      else
      {
        v24 = _swiftEmptyArrayStorage;
      }

      v5 = v44;
      v2 = v45;
      if (v24 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v25 = 0;
      v5 = v44;
      v2 = v45;
    }

    v47[1] = v25;
    v48 = v21 == 0;
    sub_10000589C(&qword_1000BC4C8, &qword_100090BD8);
    v26 = String.init<A>(describing:)();
    v28 = sub_100037B98(v26, v27, v47);

    *(v14 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v12, v42, "%s %s nodes count: %s", v14, 0x20u);
    swift_arrayDestroy();

    (*(v7 + 8))(v10, v43);
    v1 = v46;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  sub_100026CAC();
  sub_100022BB4();
  result = sub_100025E00();
  v30 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v30)
  {
    v31 = *(*(v30 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v31)
    {

      if (([v31 isGathering] & 1) == 0)
      {
        sub_1000265E8();
      }

      v32 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      if (v32)
      {
        v33 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler + 8];
        v34 = v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];

        v35 = sub_1000268A4(3, v34);
        if (v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = _swiftEmptyArrayStorage;
        }

        v37 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
        swift_beginAccess();
        (*(v2 + 16))(v5, &v11[v37], v1);
        v38 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v39 = *&v11[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v40 = sub_10000C104(v36);

        v32(v38, v39, v5, v40);
        sub_1000414DC(v32);

        return (*(v2 + 8))(v5, v1);
      }

      else
      {
      }
    }
  }

  return result;
}

void *sub_100025E00()
{
  v73 = type metadata accessor for URL();
  v78 = *(v73 - 8);
  v1 = *(v78 + 8);
  __chkstk_darwin(v73 - 8);
  v71 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v67 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v80 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v82 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_100037B98(0xD000000000000021, 0x80000001000926D0, &v82);
    *(v14 + 12) = 2048;
    v16 = *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v16)
    {
      v17 = [v16 visibleCells];
      sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v18 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v80;
    }

    else
    {
      v19 = 0;
    }

    *(v14 + 14) = v19;

    _os_log_impl(&_mh_execute_header, v11, v12, "%s updating thumbnails in: %ld visibleCells.", v14, 0x16u);
    sub_1000064E0(v15);
  }

  else
  {
  }

  (*(v6 + 8))(v9, v5);
  result = *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (result)
  {
    v77 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v21 = [result visibleCells];
    sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      v79 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostContainerView;
      v81 = v22 & 0xC000000000000001;
      while (1)
      {
        if (v81)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        type metadata accessor for DOCSBCollectionViewCell(0);
        if (swift_dynamicCastClass())
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v29 = Strong;
            v30 = [Strong traitCollection];

            if (v30)
            {
              v31 = v26;
              v32 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();

              if (v32)
              {
                v33 = v30;
                dispatch thunk of DOCItemCollectionCellContent.traitCollection.setter();
              }
            }
          }

          v34 = v26;
          v35 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();

          v10 = v80;
          if (v35)
          {
            dispatch thunk of DOCItemCollectionCellContent.updateThumbnail(completion:)();
          }
        }

        ++v24;
        if (v27 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    result = *&v10[v77];
    if (result)
    {
      v36 = [result visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
      sub_10001A2A8(0, &unk_1000BBD10, UICollectionReusableView_ptr);
      v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v37 >> 62)
      {
        goto LABEL_56;
      }

      for (j = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
      {
        v39 = 0;
        v79 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource;
        v40 = v37 & 0xC000000000000001;
        v81 = v37 & 0xFFFFFFFFFFFFFF8;
        v69 = j;
        v70 = v37;
        v77 = v37 & 0xC000000000000001;
        v67 = (v78 + 8);
        v68 = (v78 + 16);
        while (1)
        {
          if (v40)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v39 >= *(v81 + 16))
            {
              goto LABEL_55;
            }

            v43 = *(v37 + 8 * v39 + 32);
          }

          v44 = v43;
          v45 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          type metadata accessor for DOCSBFolderCollectionHeaderView();
          v46 = swift_dynamicCastClass();
          if (!v46)
          {
            goto LABEL_36;
          }

          v47 = v46;
          v48 = *&v10[v79];
          if (v48)
          {
            v49 = *(*(v48 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
            if (!v49)
            {

LABEL_47:
              v78 = v44;
              v56 = *v68;
              v74 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url;
              v75 = v56;
              v57 = v72;
              v58 = v73;
              v56(v72, v48 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url, v73);
              v59 = URL.lastPathComponent.getter();
              v61 = v60;
              v76 = *v67;
              v76(v57, v58);

              v62 = HIBYTE(v61) & 0xF;
              if ((v61 & 0x2000000000000000) == 0)
              {
                v62 = v59 & 0xFFFFFFFFFFFFLL;
              }

              if (v62)
              {
                v63 = v71;
                v75(v71, v48 + v74, v58);
                v64 = URL.lastPathComponent.getter();
                v66 = v65;

                v76(v63, v58);
                v41 = v64;
                v42 = v66;
              }

              else
              {

                v42 = 0xE800000000000000;
                v41 = 0x6E6F697461636F4CLL;
              }

              v10 = v80;
              j = v69;
              v37 = v70;
              v40 = v77;
              v44 = v78;
              goto LABEL_35;
            }

            v50 = v49;
            v51 = dispatch thunk of DOCNodeCollection.observedNode.getter();

            if (!v51)
            {
              goto LABEL_47;
            }

            v52 = [v51 displayName];
            swift_unknownObjectRelease();
            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = v54;

            v41 = v53;
            v42 = v55;
            v10 = v80;
            v40 = v77;
          }

          else
          {
            v41 = 0;
            v42 = 0xE000000000000000;
          }

LABEL_35:
          (*((swift_isaMask & *v47) + 0x88))(v41, v42);
LABEL_36:

          ++v39;
          if (v45 == j)
          {
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        ;
      }
    }
  }

  return result;
}

uint64_t sub_1000265E8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v9 = 136315650;
    *(v9 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100092A80, &v25);
    *(v9 + 12) = 2080;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v1;
    v14 = v13;

    v15 = sub_100037B98(v12, v14, &v25);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    v16 = *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v17 = *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v18 = sub_100037B98(v16, v17, &v25);

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s self: %s handling request to push new icon to SpringBoard for identifier: %s", v9, 0x20u);
    swift_arrayDestroy();

    (*(v2 + 8))(v5, v23);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  v20 = v6;
  sub_100033C70(sub_1000427DC, v19);
}

uint64_t sub_1000268A4(uint64_t a1, char a2)
{
  if (a2)
  {

    goto LABEL_4;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_4:
    v7 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
    if (v7)
    {
      v8 = *(*(v7 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      if (v8)
      {

        v9 = v8;
        v10 = dispatch thunk of DOCNodeCollection.nodes.getter();
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      v19 = sub_10003ECA8(a1, v10);
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if (v25)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          swift_unknownObjectRelease();
          v27 = _swiftEmptyArrayStorage;
        }

        v28 = v27[2];

        if (__OFSUB__(v25 >> 1, v23))
        {
          __break(1u);
        }

        else if (v28 == (v25 >> 1) - v23)
        {
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
            swift_unknownObjectRelease();
            v26 = _swiftEmptyArrayStorage;
          }

          goto LABEL_33;
        }

        swift_unknownObjectRelease();
      }

      sub_10000E00C(v19, v21, v23, v25);
LABEL_33:
      v29 = sub_100009BF0(v26);
LABEL_34:
      v18 = v29;
LABEL_35:
      swift_unknownObjectRelease();
      return v18;
    }

    return 0;
  }

  v11 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);
  v13 = *(v12 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (v13)
  {

    v3 = v13;
    v14 = dispatch thunk of DOCNodeCollection.nodes.getter();

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v14 = _swiftEmptyArrayStorage;
  if (a1 < 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  v4 = v14 >> 62;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= a1)
    {
      v16 = a1;
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a1)
    {
      v3 = v16;
    }

    else
    {
      v3 = 0;
    }

    if (v15 >= v3)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

  if (v14 < 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v12 >= a1)
    {
      v36 = a1;
    }

    else
    {
      v36 = v12;
    }

    if (v12 < 0)
    {
      v36 = a1;
    }

    if (a1)
    {
      v3 = v36;
    }

    else
    {
      v3 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v3)
    {
LABEL_18:
      if ((v14 & 0xC000000000000001) != 0)
      {

        if (v3)
        {
          for (i = 0; i != v3; ++i)
          {
            sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
            _ArrayBuffer._typeCheckSlowPath(_:)(i);
          }
        }

LABEL_40:

        if (v4)
        {
          a1 = _CocoaArrayWrapper.subscript.getter();
          v12 = v31;
          v11 = v32;
          v3 = v33;

          if (v3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v11 = 0;
          a1 = v14 & 0xFFFFFFFFFFFFFF8;
          v12 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
          v3 = (2 * v3) | 1;
          if (v3)
          {
LABEL_45:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v34 = swift_dynamicCastClass();
            if (!v34)
            {
              swift_unknownObjectRelease();
              v34 = _swiftEmptyArrayStorage;
            }

            v35 = v34[2];

            if (!__OFSUB__(v3 >> 1, v11))
            {
              if (v35 == (v3 >> 1) - v11)
              {
                v18 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v18)
                {
                  return v18;
                }

                v18 = _swiftEmptyArrayStorage;
                goto LABEL_35;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            swift_unknownObjectRelease_n();
          }
        }

        sub_10000E00C(a1, v12, v11, v3);
        goto LABEL_34;
      }

LABEL_39:

      goto LABEL_40;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __break(1u);
  return result;
}

void sub_100026CAC()
{
  v264 = sub_10000589C(&unk_1000BC6B0, &qword_100090BD0);
  v1 = *(*(v264 - 1) + 64);
  __chkstk_darwin(v264);
  v3 = &v240 - v2;
  v256 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v4 = *(*(v256 - 8) + 64);
  __chkstk_darwin(v256);
  v258 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v255 = &v240 - v7;
  __chkstk_darwin(v8);
  v257 = &v240 - v9;
  __chkstk_darwin(v10);
  v266 = &v240 - v11;
  __chkstk_darwin(v12);
  v14 = &v240 - v13;
  v15 = type metadata accessor for Logger();
  v268 = *(v15 - 8);
  v269 = v15;
  v16 = *(v268 + 64);
  __chkstk_darwin(v15);
  v254 = &v240 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v240 - v19;
  __chkstk_darwin(v21);
  v253 = &v240 - v22;
  __chkstk_darwin(v23);
  v261 = &v240 - v24;
  __chkstk_darwin(v25);
  v259 = &v240 - v26;
  __chkstk_darwin(v27);
  v263 = &v240 - v28;
  __chkstk_darwin(v29);
  v31 = &v240 - v30;
  v32 = type metadata accessor for URL();
  v270 = *(v32 - 8);
  v33 = *(v270 + 64);
  __chkstk_darwin(v32);
  v252 = &v240 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v260 = &v240 - v36;
  __chkstk_darwin(v37);
  v265 = &v240 - v38;
  __chkstk_darwin(v39);
  v41 = &v240 - v40;
  v267 = v0;
  v262 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource;
  v42 = *&v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (!v42)
  {
    return;
  }

  v43 = *(*(v42 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v43)
  {
    return;
  }

  v44 = *(v42 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);

  v45 = v43;

  v46 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v46)
  {
    return;
  }

  v47 = [v46 nodeURL];
  if (v47)
  {
    v248 = v20;
    v48 = v47;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static Logger.UI.getter();
    swift_unknownObjectRetain_n();
    v49 = v267;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    v52 = os_log_type_enabled(v50, v51);
    v251 = v32;
    v246 = v41;
    v250 = v46;
    v249 = v49;
    if (v52)
    {
      LODWORD(v245) = v51;
      v247 = v50;
      v53 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      v273 = v244;
      *v53 = 136448002;
      *(v53 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v273);
      *(v53 + 12) = 2080;
      v272 = v46;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v54 = String.init<A>(describing:)();
      v56 = sub_100037B98(v54, v55, &v273);

      *(v53 + 14) = v56;
      *(v53 + 22) = 2080;
      v57 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
      swift_beginAccess();
      v58 = v270;
      v59 = v265;
      (*(v270 + 16))(v265, &v49[v57], v32);
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v58 + 8))(v59, v32);
      v63 = sub_100037B98(v60, v62, &v273);

      *(v53 + 24) = v63;
      *(v53 + 32) = 2080;
      if (*&v267[v262])
      {
        v64 = *&v267[v262];

        v65 = sub_10002E384();
        v67 = v66;
      }

      else
      {
        v65 = 7104878;
        v67 = 0xE300000000000000;
      }

      v69 = sub_100037B98(v65, v67, &v273);

      *(v53 + 34) = v69;
      *(v53 + 42) = 1024;
      objc_opt_self();
      v68 = v250;
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        v71 = [v70 isValid];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v71 = 1;
      }

      *(v53 + 44) = v71;
      swift_unknownObjectRelease();
      *(v53 + 48) = 1024;
      v72 = [v68 isInTrash];
      swift_unknownObjectRelease();
      *(v53 + 50) = v72;
      swift_unknownObjectRelease();
      *(v53 + 54) = 2080;
      v272 = [v68 cachedDomain];
      sub_10000589C(&qword_1000BC430, &qword_100090B88);
      v73 = String.init<A>(describing:)();
      v75 = sub_100037B98(v73, v74, &v273);

      *(v53 + 56) = v75;
      *(v53 + 64) = 2080;
      v76 = [v68 providerDomainID];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80 = sub_100037B98(v77, v79, &v273);

      *(v53 + 66) = v80;
      v81 = v247;
      _os_log_impl(&_mh_execute_header, v247, v245, "%{public}s observedNode: %s directoryURL: %s changed displayName: %s isValid: %{BOOL}d isInTrash: %{BOOL}d cachedDomain: %s providerDomainID: %s", v53, 0x4Au);
      swift_arrayDestroy();

      v247 = *(v268 + 8);
      (v247)(v31, v269);
      v32 = v251;
    }

    else
    {

      swift_unknownObjectRelease_n();
      v247 = *(v268 + 8);
      (v247)(v31, v269);
      v68 = v46;
    }

    v82 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
    v83 = v249;
    swift_beginAccess();
    v84 = v270;
    v85 = *(v270 + 16);
    v243 = v82;
    v242 = v270 + 16;
    v241 = v85;
    v85(v14, &v83[v82], v32);
    v86 = v84 + 56;
    v87 = *(v84 + 56);
    v88 = 1;
    v87(v14, 0, 1, v32);
    v89 = [v68 nodeURL];
    v90 = v266;
    if (v89)
    {
      v91 = v89;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v88 = 0;
    }

    v245 = v86;
    v244 = v87;
    v87(v90, v88, 1, v32);
    v92 = v264[12];
    sub_100042774(v14, v3, &unk_1000BCA20, &qword_100090BC0);
    sub_100042774(v90, &v3[v92], &unk_1000BCA20, &qword_100090BC0);
    v93 = v32;
    v94 = *(v270 + 48);
    if (v94(v3, 1, v93) == 1)
    {
      sub_100006390(v90, &unk_1000BCA20, &qword_100090BC0);
      sub_100006390(v14, &unk_1000BCA20, &qword_100090BC0);
      if (v94(&v3[v92], 1, v93) == 1)
      {
        sub_100006390(v3, &unk_1000BCA20, &qword_100090BC0);
LABEL_30:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v115 = v251;
        v128 = v248;
        goto LABEL_70;
      }
    }

    else
    {
      v95 = v257;
      sub_100042774(v3, v257, &unk_1000BCA20, &qword_100090BC0);
      if (v94(&v3[v92], 1, v93) != 1)
      {
        v118 = v270;
        v119 = &v3[v92];
        v120 = v265;
        (*(v270 + 32))(v265, v119, v93);
        sub_1000422FC(&qword_1000BC4C0, &type metadata accessor for URL);
        v121 = v95;
        v122 = dispatch thunk of static Equatable.== infix(_:_:)();
        v123 = *(v118 + 8);
        v123(v120, v93);
        sub_100006390(v266, &unk_1000BCA20, &qword_100090BC0);
        sub_100006390(v14, &unk_1000BCA20, &qword_100090BC0);
        v123(v121, v93);
        sub_100006390(v3, &unk_1000BCA20, &qword_100090BC0);
        if (v122)
        {
          goto LABEL_30;
        }

LABEL_25:
        v96 = v263;
        static Logger.UI.getter();
        swift_unknownObjectRetain_n();
        v97 = v249;
        v98 = v249;
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        v264 = v98;

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          *v101 = 136448258;
          *(v101 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v272);
          *(v101 + 12) = 2080;
          v271 = v68;
          swift_unknownObjectRetain();
          sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
          v102 = String.init<A>(describing:)();
          v104 = sub_100037B98(v102, v103, &v272);

          *(v101 + 14) = v104;
          *(v101 + 22) = 2080;
          v105 = &v97[v243];
          v106 = v265;
          v107 = v251;
          v241(v265, v105, v251);
          sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
          v108 = dispatch thunk of CustomStringConvertible.description.getter();
          v110 = v109;
          (*(v270 + 8))(v106, v107);
          v111 = sub_100037B98(v108, v110, &v272);

          *(v101 + 24) = v111;
          *(v101 + 32) = 2080;
          v112 = [v68 nodeURL];
          if (v112)
          {
            v113 = v255;
            v114 = v112;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v244(v113, 0, 1, v251);
          }

          else
          {
            v244(v255, 1, 1, v251);
          }

          v129 = String.init<A>(describing:)();
          v131 = sub_100037B98(v129, v130, &v272);

          *(v101 + 34) = v131;
          *(v101 + 42) = 2080;
          v116 = v261;
          if (*&v267[v262])
          {
            v132 = *&v267[v262];

            v133 = sub_10002E384();
            v135 = v134;
          }

          else
          {
            v133 = 7104878;
            v135 = 0xE300000000000000;
          }

          v136 = sub_100037B98(v133, v135, &v272);

          *(v101 + 44) = v136;
          *(v101 + 52) = 1024;
          objc_opt_self();
          v137 = swift_dynamicCastObjCClass();
          if (v137)
          {
            v138 = [v137 isValid];
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
            v138 = 1;
          }

          *(v101 + 54) = v138;
          swift_unknownObjectRelease();
          *(v101 + 58) = 1024;
          v139 = [v68 isInTrash];
          swift_unknownObjectRelease();
          *(v101 + 60) = v139;
          swift_unknownObjectRelease();
          *(v101 + 64) = 2080;
          v271 = [v68 cachedDomain];
          sub_10000589C(&qword_1000BC430, &qword_100090B88);
          v140 = String.init<A>(describing:)();
          v142 = sub_100037B98(v140, v141, &v272);

          *(v101 + 66) = v142;
          *(v101 + 74) = 2080;
          p_type = &stru_1000B6FF0.type;
          v143 = [v68 providerDomainID];
          v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v146 = v145;

          v147 = sub_100037B98(v144, v146, &v272);

          *(v101 + 76) = v147;
          _os_log_impl(&_mh_execute_header, v99, v100, "%{public}s observedNode: %s directoryURL: %s != observedNode.nodeURL: %s changed displayName: %s isValid: %{BOOL}d isInTrash: %{BOOL}d cachedDomain: %s providerDomainID: %s", v101, 0x54u);
          swift_arrayDestroy();

          (v247)(v263, v269);
          v115 = v251;
        }

        else
        {

          swift_unknownObjectRelease_n();
          (v247)(v96, v269);
          v115 = v251;
          v116 = v261;
          p_type = (&stru_1000B6FF0 + 16);
        }

        v128 = v248;
        v148 = [v68 p_type[463]];
        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = v150;

        v152 = HIBYTE(v151) & 0xF;
        if ((v151 & 0x2000000000000000) == 0)
        {
          v152 = v149 & 0xFFFFFFFFFFFFLL;
        }

        v153 = v259;
        if (!v152)
        {
          v154 = [v68 cachedDomain];
          if (!v154)
          {
            LODWORD(v266) = 1;
            goto LABEL_55;
          }
        }

        v155 = [v68 cachedDomain];
        if (v155)
        {
          v156 = v155;
          if ([v155 isEnabled] && !objc_msgSend(v156, "isHidden"))
          {

            LODWORD(v266) = 0;
          }

          else
          {
            static Logger.UI.getter();
            v157 = v156;
            v158 = Logger.logObject.getter();
            v159 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              v272 = swift_slowAlloc();
              *v160 = 136316162;
              *(v160 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v272);
              *(v160 + 12) = 2080;
              v161 = v157;
              v162 = [v161 description];
              v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v165 = v164;

              v166 = sub_100037B98(v163, v165, &v272);
              v116 = v261;

              *(v160 + 14) = v166;
              *(v160 + 22) = 1024;
              LODWORD(v166) = [v161 isEnabled];

              *(v160 + 24) = v166;
              *(v160 + 28) = 1024;
              LODWORD(v166) = [v161 isHidden];

              *(v160 + 30) = v166;
              *(v160 + 34) = 1024;
              v115 = v251;
              LODWORD(v166) = [v161 owningApplicationIsHidden];

              *(v160 + 36) = v166;
              _os_log_impl(&_mh_execute_header, v158, v159, "%s domain: %s isEnabled: %{BOOL}d isHidden: %{BOOL}d owningApplicationIsHidden: %{BOOL}d). Requesting removal from Dock", v160, 0x28u);
              swift_arrayDestroy();
              v128 = v248;
            }

            else
            {
            }

            (v247)(v153, v269);
            LODWORD(v266) = 1;
          }

          v68 = v250;
        }

        else
        {
          LODWORD(v266) = 0;
        }

LABEL_55:
        v125 = [v68 isTrashed];
        v167 = [v68 nodeURL];
        v168 = v260;
        if (v167)
        {
          v169 = v167;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL._bridgeToObjectiveC()(v170);
          v172 = v171;
          v173 = [objc_opt_self() fiNodeFromURL:v171];

          if (v173)
          {
            static Logger.UI.getter();
            v174 = v173;
            swift_unknownObjectRetain();
            v175 = v264;
            v176 = v174;
            v177 = Logger.logObject.getter();
            v178 = static os_log_type_t.debug.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v177, v178))
            {
              v179 = swift_slowAlloc();
              v264 = swift_slowAlloc();
              v272 = v264;
              *v179 = 136316162;
              *(v179 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v272);
              *(v179 + 12) = 2080;
              v180 = v176;
              v181 = [v180 description];
              v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v184 = v183;

              v185 = sub_100037B98(v182, v184, &v272);

              *(v179 + 14) = v185;
              *(v179 + 22) = 2080;
              if (*&v267[v262])
              {
                v186 = *&v267[v262];

                v187 = sub_10002E384();
                v189 = v188;
              }

              else
              {
                v187 = 7104878;
                v189 = 0xE300000000000000;
              }

              v201 = sub_100037B98(v187, v189, &v272);

              *(v179 + 24) = v201;
              *(v179 + 32) = 1024;
              v202 = [v180 isTrashed];

              *(v179 + 34) = v202;
              *(v179 + 38) = 2080;
              v68 = v250;
              v271 = [v250 providerDomainID];
              type metadata accessor for FPProviderDomainID(0);
              v203 = String.init<A>(describing:)();
              v205 = sub_100037B98(v203, v204, &v272);

              *(v179 + 40) = v205;
              _os_log_impl(&_mh_execute_header, v177, v178, "%s reFetchedNode: %s displayName: %s isTrashed: %{BOOL}d providerDomainID: %s", v179, 0x30u);
              swift_arrayDestroy();

              (v247)(v261, v269);
              v115 = v251;
            }

            else
            {

              (v247)(v116, v269);
            }

            v125 = [v176 isAnyParentTrashed];

            (*(v270 + 8))(v168, v115);
            v126 = 0;
            v124 = 1;
            v128 = v248;
          }

          else
          {
            v190 = v253;
            static Logger.UI.getter();
            v191 = v252;
            v241(v252, v168, v115);
            v192 = Logger.logObject.getter();
            v193 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v192, v193))
            {
              v194 = swift_slowAlloc();
              v272 = swift_slowAlloc();
              *v194 = 136315394;
              *(v194 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v272);
              *(v194 + 12) = 2080;
              sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
              v195 = dispatch thunk of CustomStringConvertible.description.getter();
              v197 = v196;
              v198 = *(v270 + 8);
              v198(v191, v251);
              v199 = sub_100037B98(v195, v197, &v272);
              v115 = v251;

              *(v194 + 14) = v199;
              _os_log_impl(&_mh_execute_header, v192, v193, "%s could not fetch node from URL: %s. Observed node is invalid.", v194, 0x16u);
              swift_arrayDestroy();

              v128 = v248;

              (v247)(v253, v269);
              v198(v168, v115);
              v68 = v250;
            }

            else
            {

              v200 = *(v270 + 8);
              v200(v191, v115);
              (v247)(v190, v269);
              v200(v168, v115);
            }

            v124 = 1;
            v126 = 1;
          }
        }

        else
        {
          v126 = 0;
          v124 = 1;
        }

        v127 = v266;
LABEL_70:
        v206 = [v68 cachedDomain];
        if (v206)
        {
          v207 = v206;
          v208 = [objc_opt_self() sharedManager];
          v209 = [v207 topLevelBundleIdentifier];
          if (!v209)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v209 = String._bridgeToObjectiveC()();
          }

          v210 = [v208 hostAppCanNavigateToAppBundleID:v209];

          v211 = v210 != 0;
          if (((v126 | v125 | v127) & 1) == 0)
          {
            v128 = v248;
            if (v210)
            {
              goto LABEL_86;
            }

            goto LABEL_78;
          }

          v128 = v248;
        }

        else
        {
          if (((v126 | v125 | v127) & 1) == 0)
          {
LABEL_78:
            if (v124)
            {
              v212 = v254;
              static Logger.UI.getter();
              v213 = v250;
              swift_unknownObjectRetain();
              v214 = Logger.logObject.getter();
              v215 = static os_log_type_t.debug.getter();
              swift_unknownObjectRelease();
              v216 = os_log_type_enabled(v214, v215);
              v217 = v246;
              if (v216)
              {
                v218 = swift_slowAlloc();
                v272 = swift_slowAlloc();
                *v218 = 136315394;
                *(v218 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v272);
                *(v218 + 12) = 2080;
                v271 = v213;
                swift_unknownObjectRetain();
                sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
                v219 = String.init<A>(describing:)();
                v221 = sub_100037B98(v219, v220, &v272);

                *(v218 + 14) = v221;
                _os_log_impl(&_mh_execute_header, v214, v215, "%s observedNode: %s changed. Inform SpringBoard URL changed", v218, 0x16u);
                swift_arrayDestroy();
              }

              (v247)(v212, v269);
              v222 = v249;
              if (swift_unknownObjectWeakLoadStrong())
              {
                sub_10004A144(v222, v217);
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              v223 = v270;
              v224 = v265;
              (*(v270 + 32))(v265, v217, v115);
              v225 = v243;
              swift_beginAccess();
              (*(v223 + 40))(&v222[v225], v224, v115);
              swift_endAccess();
            }

            else
            {
              (*(v270 + 8))(v246, v115);
              swift_unknownObjectRelease();
            }

            return;
          }

          v211 = 0;
        }

LABEL_86:
        LODWORD(v266) = v127;
        static Logger.UI.getter();
        v226 = v250;
        swift_unknownObjectRetain();
        v227 = Logger.logObject.getter();
        v228 = v128;
        v229 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v227, v229))
        {
          v230 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          *v230 = 136316418;
          *(v230 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v272);
          *(v230 + 12) = 2080;
          v271 = v226;
          swift_unknownObjectRetain();
          sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
          v231 = String.init<A>(describing:)();
          v233 = sub_100037B98(v231, v232, &v272);

          *(v230 + 14) = v233;
          v115 = v251;
          *(v230 + 22) = 1024;
          *(v230 + 24) = v125;
          *(v230 + 28) = 1024;
          *(v230 + 30) = v266;
          *(v230 + 34) = 1024;
          *(v230 + 36) = v211;
          *(v230 + 40) = 1024;
          *(v230 + 42) = v126;
          _os_log_impl(&_mh_execute_header, v227, v229, "%s observedNode: %s isTrashed: %{BOOL}d providerIsDisabled: %{BOOL}d providerIsHidden: %{BOOL}d isInvalid: %{BOOL}d. Requesting removal from Dock", v230, 0x2Eu);
          swift_arrayDestroy();
        }

        (v247)(v228, v269);
        v234 = v246;
        v235 = v258;
        v236 = v249;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v237 = [v250 nodeURL];
          if (v237)
          {
            v238 = v237;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v239 = 0;
          }

          else
          {
            v239 = 1;
          }

          v244(v235, v239, 1, v115);
          sub_10004A890(v236, v235);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_100006390(v235, &unk_1000BCA20, &qword_100090BC0);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(v270 + 8))(v234, v115);
        return;
      }

      sub_100006390(v266, &unk_1000BCA20, &qword_100090BC0);
      sub_100006390(v14, &unk_1000BCA20, &qword_100090BC0);
      (*(v270 + 8))(v95, v93);
    }

    sub_100006390(v3, &unk_1000BC6B0, &qword_100090BD0);
    goto LABEL_25;
  }

  swift_unknownObjectRelease();
}

void sub_100028CBC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = a3;
    v14 = a2;
    v15 = v13;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100037B98(0xD000000000000047, 0x80000001000929E0, aBlock);
    *(v15 + 12) = 1024;
    *(v15 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s createIfNeeded: %{BOOL}d", v15, 0x12u);
    sub_1000064E0(v16);

    a2 = v14;
    a3 = v22;
  }

  (*(v7 + 8))(v10, v6);
  v17 = [objc_allocWithZone(DOCDownloadSettings) init];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a2;
  v19[4] = a3;
  aBlock[4] = sub_100042588;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000299A0;
  aBlock[3] = &unk_1000AECB0;
  v20 = _Block_copy(aBlock);

  [v17 fetchDefaultDownloadsLocationItemAndCreateIfNeeded:a1 & 1 completion:v20];
  _Block_release(v20);
}

uint64_t sub_100028F8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v49 = a4;
  v50 = a5;
  v45 = a3;
  v7 = type metadata accessor for Logger();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v27 = &v45 - v26;
  if (a1)
  {
    v28 = [a1 fileURL];
    if (v28)
    {
      v29 = v28;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = *(v21 + 56);
      v30(v16, 0, 1, v20);
    }

    else
    {
      v30 = *(v21 + 56);
      v30(v16, 1, 1, v20);
    }

    sub_100042594(v16, v19);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      v39 = *(v21 + 32);
      v39(v27, v19, v20);
      (*(v21 + 16))(v23, v27, v20);
      v40 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v41 = (v22 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = v45;
      v39((v42 + v40), v23, v20);
      v43 = (v42 + v41);
      v44 = v50;
      *v43 = v49;
      v43[1] = v44;

      DOCRunInMainThread(_:)();

      return (*(v21 + 8))(v27, v20);
    }
  }

  else
  {
    v30 = *(v21 + 56);
    (v30)(v19, 1, 1, v20, v25);
  }

  sub_100006390(v19, &unk_1000BCA20, &qword_100090BC0);
  static Logger.UI.getter();
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_100037B98(0xD000000000000047, 0x80000001000929E0, &v52);
    *(v33 + 12) = 2080;
    v51 = a2;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
    v34 = String.init<A>(describing:)();
    v36 = sub_100037B98(v34, v35, &v52);

    *(v33 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s failed to get Downloads url. Error: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  (*(v47 + 8))(v10, v48);
  v37 = v46;
  v30(v46, 1, 1, v20);
  v49(v37);
  return sub_100006390(v37, &unk_1000BCA20, &qword_100090BC0);
}

uint64_t sub_1000294F0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v5 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Logger();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = *(v13 + 16);
  if (Strong)
  {
    v22 = Strong;
    v21(v19, a2, v12);
    v38 = a2;
    v23 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
    swift_beginAccess();
    v24 = &v22[v23];
    a2 = v38;
    (*(v13 + 40))(v24, v19, v12);
    swift_endAccess();
    static Logger.UI.getter();
    v37 = v21;
    v21(v16, a2, v12);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44[0] = v36;
      *v27 = 136315394;
      *(v27 + 4) = sub_100037B98(0xD000000000000047, 0x80000001000929E0, v44);
      *(v27 + 12) = 2080;
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
      v35 = v25;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v13 + 8))(v16, v12);
      v31 = sub_100037B98(v28, v30, v44);

      *(v27 + 14) = v31;
      v32 = v35;
      _os_log_impl(&_mh_execute_header, v35, v26, "%s resolved url: %s for Downloads folder placeholder. Calling delegate to inform of new url.", v27, 0x16u);
      swift_arrayDestroy();

      a2 = v38;
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    (*(v39 + 8))(v43, v40);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10004A144(v22, a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v21 = v37;
  }

  v21(v8, a2, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  v41(v8);
  return sub_100006390(v8, &unk_1000BCA20, &qword_100090BC0);
}

void sub_1000299A0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_100029A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSBFolderPresentationController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029C94()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100029E84(void *a1)
{
  sub_10001BBE4(v6);
  if (v7)
  {
    sub_100042398(v6, v7);
    v3 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    if (v3)
    {
      v4 = v3;
      sub_1000064E0(v6);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100049360(v1, v4);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1000064E0(v6);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 deselectItemAtIndexPath:isa animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

UIMenu sub_10002A078(uint64_t a1, void *a2)
{
  v2 = sub_10002B084(a1, a2);
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = v3 & 0xC000000000000001;
    if (i)
    {
      v7 = 0;
      do
      {
        v8 = v7;
        while (1)
        {
          if (v6)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_37;
            }

            v9 = *(v3 + 8 * v8 + 32);
          }

          v10 = v9;
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (([v9 attributes] & 2) == 0)
          {
            break;
          }

          ++v8;
          if (v7 == i)
          {
            goto LABEL_17;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v7 != i);
    }

LABEL_17:
    if (!i)
    {
      break;
    }

    v12 = 0;
LABEL_19:
    v13 = v12;
    while (1)
    {
      if (v6)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      v15 = v14;
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (([v14 attributes] & 2) != 0)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v12 != i)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      ++v13;
      if (v12 == i)
      {
        goto LABEL_31;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_31:

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

    v17 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
    v17 = _swiftEmptyArrayStorage;
  }

  sub_10001A2A8(0, &unk_1000BC480, UIMenu_ptr);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v29.value.super.isa = 0;
  v29.is_nil = 0;
  v19.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v29, 1, 0xFFFFFFFFFFFFFFFFLL, v17, _swiftEmptyArrayStorage).super.super.isa;
  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

    v20 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
    v20 = _swiftEmptyArrayStorage;
  }

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v30, 1, 0xFFFFFFFFFFFFFFFFLL, v20, children).super.super.isa;
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10008F960;
  *(v23 + 32) = v19;
  *(v23 + 40) = isa;
  preferredElementSize = v23;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v31, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, childrena);
}

uint64_t sub_10002A530(void *a1, void *a2)
{
  type metadata accessor for DOCNodeContextMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = a2;
    sub_10001BBE4(v10);
    if (v11)
    {
      sub_100042398(v10, v11);
      v6 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
      sub_1000064E0(v10);
      if (v6)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v8 = [a1 cellForItemAtIndexPath:isa];

        if (v8)
        {
          v9 = sub_10002A674(v8);

          swift_unknownObjectRelease();
          return v9;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_100006390(v10, &qword_1000BC450, &unk_100090BA0);
    }

    return 0;
  }

  return result;
}

id sub_10002A674(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  result = [a1 window];
  if (!result)
  {
    return result;
  }

  v12 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  result = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  result = [result indexPathForCell:a1];
  if (!result)
  {
    return result;
  }

  v13 = result;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v10, v8, v3);
  sub_10001BBE4(&v31);
  if (!*&v31.d)
  {
    (*(v4 + 8))(v10, v3);
    sub_100006390(&v31, &qword_1000BC450, &unk_100090BA0);
    return 0;
  }

  sub_100042398(&v31, *&v31.d);
  v14 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
  result = sub_1000064E0(&v31);
  if (!v14)
  {
LABEL_15:
    (*(v4 + 8))(v10, v3);
    return 0;
  }

  v15 = *(v1 + v12);
  if (!v15)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = v15;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v18 = [v16 cellForItemAtIndexPath:isa];

  if (!v18)
  {
    (*(v4 + 8))(v10, v3);
    swift_unknownObjectRelease();
    return 0;
  }

  type metadata accessor for DOCSBCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v19 = v18;
  v20 = DOCItemCollectionCell.thumbnailView.getter();

  v21 = v20;
  sub_10002ACB0(v10, [v14 isFolder]);
  v23 = v22;
  [v21 bounds];
  [a1 convertPoint:v21 fromCoordinateSpace:?];
  v25 = v24;
  v27 = v26;
  v28 = [v23 visiblePath];
  if (v28)
  {
    v29 = v28;
    CGAffineTransformMakeTranslation(&v31, -v25, -v27);
    [v29 applyTransform:&v31];
  }

  v30 = [objc_allocWithZone(UITargetedPreview) initWithView:v21 parameters:v23];
  swift_unknownObjectRelease();

  (*(v4 + 8))(v10, v3);
  return v30;
}

void sub_10002ACB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(UIPreviewParameters) init];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  v7 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v8 cellForItemAtIndexPath:isa];

  if (!v10)
  {
    return;
  }

  type metadata accessor for DOCSBCollectionViewCell(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

    return;
  }

  v12 = v11;
  v13 = v10;
  v14 = DOCItemCollectionCell.thumbnailView.getter();

  v15 = v14;
  [v15 _continuousCornerRadius];
  if (v16 <= 0.0 || (a2 & 1) != 0)
  {
    sub_10001BBE4(&v42);
    if (*&v42.d)
    {
      sub_100042398(&v42, *&v42.d);
      if (dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)())
      {
        sub_1000064E0(&v42);
        sub_10001A2A8(0, &qword_1000BC460, UIBezierPath_ptr);
        [v15 bounds];
        v26 = static UIBezierPath.path(for:thumbnailSize:)();
        [v15 bounds];
        [v12 convertPoint:v15 fromCoordinateSpace:?];
        CGAffineTransformMakeTranslation(&v42, v27, v28);
        [v26 applyTransform:&v42];
        [v5 setVisiblePath:v26];
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 bounds];
  [v12 convertRect:v15 fromCoordinateSpace:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v15 _continuousCornerRadius];
  v26 = [objc_opt_self() bezierPathWithRoundedRect:v18 cornerRadius:{v20, v22, v24, v25}];
  [v5 setVisiblePath:v26];
LABEL_11:

  v29 = [v5 visiblePath];
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    [v15 bounds];
    [v12 convertRect:v15 fromCoordinateSpace:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [v15 _continuousCornerRadius];
    v40 = v39;

    v41 = [objc_opt_self() bezierPathWithRoundedRect:v32 cornerRadius:{v34, v36, v38, v40}];
    [v5 setVisiblePath:v41];
  }
}

void *sub_10002B084(uint64_t a1, void *a2)
{
  v3 = v2;
  v66 = a2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v5];

  type metadata accessor for DOCActionManager();
  v7 = DOCActionManager.init()();
  result = _DocumentManagerBundle();
  if (result)
  {
    v9 = result;
    v74._object = 0x8000000100092910;
    v10._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 0x206E6920776F6853;
    v11._object = 0xED000073656C6946;
    v74._countAndFlagsBits = 0xD000000000000046;
    v12._countAndFlagsBits = 0x206E6920776F6853;
    v12._object = 0xED000073656C6946;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v74);

    v13 = UIDocumentBrowserActionIdentifierRevealInFiles;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v3;
    v15 = objc_allocWithZone(UIDocumentBrowserAction);
    v16 = v13;
    swift_unknownObjectRetain();
    v60 = v3;
    v17 = String._bridgeToObjectiveC()();

    v72 = sub_100042454;
    v73 = v14;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_1000379B8;
    v71 = &unk_1000AEC10;
    v18 = _Block_copy(&aBlock);
    v19 = [v15 initWithIdentifier:v16 localizedTitle:v17 unresolvedHandler:v18];

    _Block_release(v18);

    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() systemImageNamed:v20];

    [v19 setImage:v21];
    [v19 setAvailability:1];
    [v19 setSupportsMultipleItems:0];
    v61 = a1;
    v63 = v6;
    v22 = v7;
    v23 = DOCActionManager.menuActions(for:in:currentConfiguration:)();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008F940;
    *(inited + 32) = v19;
    aBlock = v23;
    v57 = v19;
    sub_10000D760(inited);
    v25 = aBlock;
    sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_100090650;
    *(v26 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v26 + 32;
    *(v26 + 40) = v27;
    *(v26 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v26 + 56) = v28;
    *(v26 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v26 + 72) = v29;
    v67 = _swiftEmptyArrayStorage;
    if (v25 >> 62)
    {
      goto LABEL_41;
    }

    v65 = v25 & 0xFFFFFFFFFFFFFF8;
    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v66 = v22;
      if (i)
      {
        v31 = 0;
        v62 = v25 & 0xC000000000000001;
        v64 = _swiftEmptyArrayStorage;
        do
        {
          v32 = v31;
          while (1)
          {
            if (v62)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v32 >= *(v65 + 16))
              {
                goto LABEL_38;
              }

              v33 = *(v25 + 8 * v32 + 32);
            }

            v34 = v33;
            v31 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v35 = v25;
            v36 = [v33 identifier];
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            aBlock = v37;
            v69 = v39;
            __chkstk_darwin(v40);
            v74._object = &aBlock;
            LOBYTE(v37) = sub_1000200DC(sub_10004245C, v56, v26);

            if (v37)
            {
              break;
            }

            ++v32;
            v22 = v66;
            v25 = v35;
            if (v31 == i)
            {
              goto LABEL_20;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v22 = v66;
          v25 = v35;
          if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v64 = v67;
        }

        while (v31 != i);
      }

      else
      {
        v64 = _swiftEmptyArrayStorage;
      }

LABEL_20:
      swift_setDeallocating();
      swift_arrayDestroy();

      aBlock = _swiftEmptyArrayStorage;
      v42 = v64;
      v43 = v64 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v63;
      if (!v43)
      {
        break;
      }

      v25 = 0;
      v62 = v42 & 0xC000000000000001;
      v59 = v42 & 0xFFFFFFFFFFFFFF8;
      v58 = v43;
      while (1)
      {
        if (v62)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v59 + 16))
          {
            goto LABEL_40;
          }

          v45 = *(v42 + 8 * v25 + 32);
        }

        v46 = v45;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v65 = v25 + 1;
        v47 = [v45 identifier];
        if (!v47)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = String._bridgeToObjectiveC()();
        }

        [objc_opt_self() isDestructiveActionIdentifier:v47];

        UIDocumentBrowserAction.preferredLocalizedTitleForMenus.getter();
        v26 = v48;
        sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
        v49 = [v46 image];
        v22 = UIDocumentBrowserAction.compositeIdentifierForMenus.getter();
        v50 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = swift_allocObject();
        v51[2] = v50;
        v52 = v66;
        v51[3] = v66;
        v51[4] = v46;
        v51[5] = v61;
        swift_unknownObjectRetain();
        v53 = v52;
        v56[1] = sub_10004253C;
        v74._object = v51;
        v56[0] = 0;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v25;
        v44 = v63;
        v42 = v64;
        if (v65 == v58)
        {
          v55 = aBlock;
          v22 = v66;
          goto LABEL_36;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v65 = v25 & 0xFFFFFFFFFFFFFF8;
    }

    v55 = _swiftEmptyArrayStorage;
LABEL_36:

    return v55;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v8];

    if (!swift_unknownObjectWeakLoadStrong())
    {
      [objc_allocWithZone(UIViewController) init];
    }

    sub_10003F1F0(_swiftEmptyArrayStorage);
    v10 = objc_allocWithZone(type metadata accessor for DOCActionContext());
    v11 = DOCActionContext.init(appearance:configuration:presentingViewController:performer:transitionProxy:actionReporting:userInfo:)();
    dispatch thunk of DOCActionContext.updateWithPropertiesFrom(triggeringAction:)();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10008F940;
    *(v12 + 32) = a5;
    swift_unknownObjectRetain();
    DOCActionManager.perform(_:on:actionContext:)();
  }

  return result;
}

void *sub_10002BAF4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001BBE4(v18);
  if (v19)
  {
    sub_100042398(v18, v19);
    v6 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    sub_1000064E0(v18);
    if (v6)
    {
      swift_getObjectType();
      if (DOCNode.supportsDrag.getter())
      {
        if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource))
        {
          v7 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);

          v8 = sub_10002E050();

          if (v8)
          {
            [v8 supportsPickingFolders];
          }
        }

        v13 = DOCNode.dragItemFor(session:supportsPickingFolders:)();
        if (v13)
        {
          v14 = v13;
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10008F940;
          *(v15 + 32) = v14;
          swift_unknownObjectRelease();
          return v15;
        }
      }

      else
      {
        static Logger.UI.getter();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v18[0] = v12;
          *v11 = 136315138;
          *(v11 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100092880, v18);
          _os_log_impl(&_mh_execute_header, v9, v10, "%s: Item cannot be dragged because it does not support drag", v11, 0xCu);
          sub_1000064E0(v12);
        }

        (*(v2 + 8))(v5, v1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100006390(v18, &qword_1000BC450, &unk_100090BA0);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10002C3FC(uint64_t a1)
{
  v58 = a1;
  v2 = type metadata accessor for DOCItemCollectionCellStackMetrics();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DOCItemCollectionLayoutTraits.ListItemTraits();
  v55 = *(v57 - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(v57);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DOCItemCollectionLayoutTraits.GridItemTraits();
  v52 = *(v54 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v54);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DOCItemCollectionContext();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UITraitCollection.Traits();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v61.origin.x = v22;
  v61.origin.y = v24;
  v61.size.width = v26;
  v61.size.height = v28;
  v62 = CGRectStandardize(v61);
  width = v62.size.width;
  height = v62.size.height;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (width <= 0.0 || height <= 0.0)
    {
    }

    else
    {
      v46 = v3;
      v47 = v2;
      v48 = v1;
      v50 = Strong;
      v49 = [Strong traitCollection];
      sub_10000589C(&unk_1000BC530, &qword_100090D00);
      v32 = *(v16 + 72);
      v33 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100090660;
      static UITraitCollection.Traits.hSizeClass.getter();
      static UITraitCollection.Traits.vSizeClass.getter();
      static UITraitCollection.Traits.displayScale.getter();
      static UITraitCollection.Traits.sizeCategory.getter();
      v59 = v34;
      sub_1000422FC(&unk_1000BD180, &type metadata accessor for UITraitCollection.Traits);
      sub_10000589C(&unk_1000BC540, &qword_100090D08);
      sub_100043240(&unk_1000BD190, &unk_1000BC540, &qword_100090D08);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v35 = v49;
      LOBYTE(v33) = UITraitCollection.doc_hasSpecified(_:)();

      (*(v16 + 8))(v19, v15);
      if (v33)
      {
        (*(v51 + 104))(v14, enum case for DOCItemCollectionContext.dockFolderApp(_:), v11);
        v36 = [v50 traitCollection];
        v37 = type metadata accessor for DOCItemCollectionLayoutTraits();
        v38 = *(v37 + 48);
        v39 = *(v37 + 52);
        swift_allocObject();
        DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)();
        dispatch thunk of DOCItemCollectionLayoutTraits.gridItemLayoutTraits.getter();
        v40 = v53;
        dispatch thunk of DOCItemCollectionLayoutTraits.listItemLayoutTraits.getter();
        v41 = v56;
        static DOCItemCollectionCellStackMetrics.zero.getter();
        v42 = [objc_allocWithZone(DOCAppearance) init];
        v43 = v58;
        v44 = dispatch thunk of DOCItemCollectionCellContent.node.getter();
        if (v44)
        {
          v44 = swift_unknownObjectRelease();
        }

        __chkstk_darwin(v44);
        *(&v46 - 14) = v43;
        *(&v46 - 104) = 0;
        *(&v46 - 12) = v10;
        *(&v46 - 11) = v40;
        *(&v46 - 80) = 0;
        *(&v46 - 9) = v41;
        *(&v46 - 8) = v42;
        *(&v46 - 56) = 0;
        *(&v46 - 55) = v45;
        *(&v46 - 27) = 0;
        *(&v46 - 6) = v50;
        *(&v46 - 5) = 0;
        *(&v46 - 16) = 256;
        *(&v46 - 3) = v48;
        *(&v46 - 2) = 0;
        *(&v46 - 1) = 0xE000000000000000;
        dispatch thunk of DOCItemCollectionCellContent.withNotificationsDisabled(_:)();

        (*(v46 + 8))(v41, v47);
        (*(v55 + 8))(v40, v57);
        (*(v52 + 8))(v10, v54);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10002CA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, void *a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v47 = a8;
  v43 = a6;
  v53 = a18;
  v54 = a17;
  v52 = a16;
  v51 = a15;
  v49 = a14;
  v50 = a13;
  v48 = a12;
  v45 = a10;
  v46 = a11;
  v44 = a9;
  v21 = sub_10000589C(&qword_1000BC550, &qword_100090D10);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v43 - v23;
  v25 = sub_10000589C(&qword_1000BC558, &qword_100090D18);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v43 - v27;
  v29 = sub_10000589C(&qword_1000BC560, &unk_100090D20);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v43 - v31;
  dispatch thunk of DOCItemCollectionCellContent.isInSearchMode.setter();
  v33 = type metadata accessor for DOCItemCollectionLayoutTraits.GridItemTraits();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v32, a3, v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  dispatch thunk of DOCItemCollectionCellContent.gridItemLayoutTraits.setter();
  v35 = type metadata accessor for DOCItemCollectionLayoutTraits.ListItemTraits();
  v36 = *(v35 - 8);
  (*(v36 + 16))(v28, a4, v35);
  (*(v36 + 56))(v28, 0, 1, v35);
  dispatch thunk of DOCItemCollectionCellContent.listItemLayoutTraits.setter();
  dispatch thunk of DOCItemCollectionCellContent.minimumRowHeight.setter();
  dispatch thunk of DOCItemCollectionCellContent.isInCreateMode.setter();
  v37 = type metadata accessor for DOCItemCollectionCellStackMetrics();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v24, v43, v37);
  (*(v38 + 56))(v24, 0, 1, v37);
  dispatch thunk of DOCItemCollectionCellContent.stackMetrics.setter();
  v39 = a7;
  dispatch thunk of DOCItemCollectionCellContent.appearance.setter();
  dispatch thunk of DOCItemCollectionCellContent.preferLastUsedDate.setter();
  dispatch thunk of DOCItemCollectionCellContent.canBecomeSelectable.setter();
  dispatch thunk of DOCItemCollectionCellContent.isSelecting.setter();
  dispatch thunk of DOCItemCollectionCellContent.isDropping.setter();
  v40 = [v48 traitCollection];
  dispatch thunk of DOCItemCollectionCellContent.traitCollection.setter();
  dispatch thunk of DOCItemCollectionCellContent.itemsOrigin.setter();
  dispatch thunk of DOCItemCollectionCellContent.isPickable.setter();
  v41 = *(v52 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_imageCache);

  dispatch thunk of DOCItemCollectionCellContent.imageCache.setter();

  dispatch thunk of DOCItemCollectionCellContent.sourceName.setter();
  dispatch thunk of DOCItemCollectionCellContent.disableProgressViews.setter();
  return dispatch thunk of DOCItemCollectionCellContent.useSystemHighlightStyle.setter();
}

void sub_10002CE64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_cellContentPool);
    __chkstk_darwin(Strong);
    v7 = v6;

    v8 = dispatch thunk of DOCItemCollectionCellContentPool.content(for:contentUpdate:)();

    sub_100086094(*&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8], *&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16], 0);
    v9 = v8;
    dispatch thunk of DOCItemCollectionCell.cellContent.setter();
  }
}

void sub_10002CF6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_cellContentPool);
    __chkstk_darwin(Strong);
    v8 = v7;

    v9 = dispatch thunk of DOCItemCollectionCellContentPool.content(for:contentUpdate:)();

    v10 = a1 + qword_1000BD530;
    *v10 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8];
    *(v10 + 16) = 0;
    v11 = v9;
    dispatch thunk of DOCItemCollectionCell.cellContent.setter();
  }
}

id sub_10002D084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v37[1] = a7;
  v38 = a6;
  v39 = a1;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a5)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        v40 = a3;
        type metadata accessor for DOCSBCollectionViewCellGrid(0);
        swift_unknownObjectRetain();
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        goto LABEL_11;
      }
    }

    v40 = a3;
    type metadata accessor for DOCSBCollectionViewCellFan(0);
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
LABEL_11:
    v33 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    swift_unknownObjectRelease();
    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 clearColor];
    [v35 setBackgroundColor:v36];

    return v35;
  }

  v38 = v15;
  v39 = v16;
  static Logger.DockApp.getter();
  (*(v11 + 16))(v14, a2, v10);
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v23 = 136315394;
    swift_getObjectType();
    v24 = DOCNode.nodeDescription.getter();
    v26 = sub_100037B98(v24, v25, &v40);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v11 + 8))(v14, v10);
    v30 = sub_100037B98(v27, v29, &v40);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Collection view asked for cell for item %s at index path %s but none was returned [self was deallocated].", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  (*(v39 + 8))(v19, v38);
  return [objc_allocWithZone(UICollectionViewCell) init];
}

char *sub_10002D514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(UICollectionReusableView) init];
  }

  v6 = Strong;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  if (*(v6 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration) == 1)
  {
    type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();
  }

  else
  {
    type metadata accessor for DOCSBFolderCollectionHeaderViewBannerStyle();
  }

  v11 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  *&v11[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_interactionDelegate + 8] = &off_1000AE908;
  swift_unknownObjectWeakAssign();
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  v13[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openButtonHidden] = [objc_opt_self() doc_isApplicationInstalledWithBundleIdentifier:DOCDocumentsAppBundleIdentifier] ^ 1;
  [v13 setNeedsLayout];

  return v13;
}

void sub_10002D714(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(a1 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize) = *(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8);
    sub_100003050();
    if (*&v3[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource])
    {
      v4 = *&v3[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];

      v5 = sub_10002E384();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = (a1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
    v9 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle + 8);
    *v8 = v5;
    v8[1] = v7;

    sub_100003A20();
  }
}

void sub_10002D800()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource))
    {
      v2 = *(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);

      v3 = sub_10002E384();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0xE000000000000000;
    }

    sub_100003E04(v3, v5);
  }
}

void *sub_10002D980(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  [a1 locationInView:*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer)];
  result = *(v2 + v3);
  if (result)
  {
    v5 = [result hitTest:0 withEvent:?];
    if (!v5)
    {
      v11 = 0;
      return (v11 & 1);
    }

    v6 = v5;
    v7 = *(v2 + v3);
    if (v7)
    {
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
      v8 = v6;
      v9 = v7;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        v11 = 1;
LABEL_11:

        return (v11 & 1);
      }
    }

    else
    {
      v12 = v5;
    }

    v13 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
    if (v13)
    {
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
      v14 = v13;
      v11 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002DB00(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCItemSortDescriptor();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for Logger();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v18 = v5[2];
  v51 = a1;
  v53 = v18;
  v18(v13, a1, v4);

  v19 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.info.getter();

  v46 = a1;
  v20 = os_log_type_enabled(v19, a1);
  v21 = &unk_1000BF000;
  if (v20)
  {
    v22 = swift_slowAlloc();
    v47 = v5;
    v23 = v22;
    v45 = swift_slowAlloc();
    v54[0] = v45;
    *v23 = 136315650;
    *(v23 + 4) = sub_100037B98(0x6373654474726F73, 0xEE00726F74706972, v54);
    *(v23 + 12) = 2080;
    v24 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor;
    swift_beginAccess();
    v44 = v19;
    v25 = v53;
    v53(v10, (v2 + v24), v4);
    v26 = String.init<A>(describing:)();
    v28 = sub_100037B98(v26, v27, v54);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    v25(v10, v13, v4);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    v52 = v47[1];
    v52(v13, v4);
    v32 = sub_100037B98(v29, v31, v54);

    *(v23 + 24) = v32;
    v21 = &unk_1000BF000;
    v33 = v44;
    _os_log_impl(&_mh_execute_header, v44, v46, "%s new: %s, old: %s", v23, 0x20u);
    swift_arrayDestroy();

    v5 = v47;
  }

  else
  {

    v52 = v5[1];
    v52(v13, v4);
  }

  (*(v49 + 8))(v17, v50);
  v34 = v21[29];
  swift_beginAccess();
  v35 = v53;
  v53(v10, (v2 + v34), v4);
  sub_1000422FC(&qword_1000BC4E8, &type metadata accessor for DOCItemSortDescriptor);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v52)(v10, v4);
  if ((v36 & 1) == 0)
  {
    v38 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);
    v35(v10, (v2 + v34), v4);
    v39 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
    swift_beginAccess();
    v40 = v48;
    v35(v48, (v38 + v39), v4);
    swift_beginAccess();
    v41 = v5[3];

    v41(v38 + v39, v10, v4);
    swift_endAccess();
    sub_10002F100(v40);

    v42 = v52;
    v52(v40, v4);
    return v42(v10, v4);
  }

  return result;
}

id sub_10002E050()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = *(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v5)
  {
    return 0;
  }

  sub_10001A2A8(0, &qword_1000BC438, FPProviderDomain_ptr);
  swift_getObjectType();
  v6 = [v5 providerDomainID];
  v7 = sub_10003F320(v6, 1);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_10002E384()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = *(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (v11 && (, v12 = v11, v13 = dispatch thunk of DOCNodeCollection.observedNode.getter(), , v12, v13))
  {
    v14 = [v13 displayName];
    swift_unknownObjectRelease();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url;
    v17 = v3[2];
    v17(v10, v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url, v2, v8);
    v18 = URL.lastPathComponent.getter();
    v20 = v19;
    v25 = v1;
    v21 = v3[1];
    v21(v10, v2);

    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      (v17)(v6, v25 + v16, v2);
      v15 = URL.lastPathComponent.getter();
      v21(v6, v2);
    }

    else
    {
      return 0x6E6F697461636F4CLL;
    }
  }

  return v15;
}

uint64_t sub_10002E5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v5 = type metadata accessor for DOCItemSortDescriptor();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v2 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  *v18 = 0;
  v18[1] = 0;
  v19 = *(v13 + 16);
  v38 = v12;
  v39 = a1;
  v19(v2 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url, a1, v12, v15);
  (v19)(v17, a1, v12);
  v20 = v6[2];
  v21 = v41;
  v20(v11, v41, v5);
  v22 = type metadata accessor for DockFolderDataSourceObserver(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  sub_10002F630(v17, v11);
  v37 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver;
  *(v3 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) = v25;
  v20((v3 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor), v21, v5);
  v20(v11, v21, v5);
  v26 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
  swift_beginAccess();
  v27 = v40;
  v20(v40, v25 + v26, v5);
  swift_beginAccess();
  v28 = v6[3];

  v28(v25 + v26, v11, v5);
  swift_endAccess();
  sub_10002F100(v27);

  v29 = v6[1];
  v29(v41, v5);
  (*(v13 + 8))(v39, v38);
  v29(v27, v5);
  v29(v11, v5);
  v30 = *(v3 + v37);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = (v30 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
  v33 = *(v30 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
  v34 = *(v30 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);
  *v32 = sub_10004280C;
  v32[1] = v31;

  swift_retain_n();
  sub_1000414DC(v33);

  return v3;
}

uint64_t sub_10002E968()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002EC6C();
  }

  return result;
}

uint64_t sub_10002E9C0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = &unk_1000BF000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v25);
    *(v10 + 12) = 2080;
    v23 = v2;
    v11 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver;
    v24 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);
    type metadata accessor for DockFolderDataSourceObserver(0);

    v12 = String.init<A>(describing:)();
    v14 = sub_100037B98(v12, v13, &v25);

    *(v10 + 14) = v14;
    v15 = *(v1 + v11);
    *(v10 + 22) = 2080;
    v24 = *(v15 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v16 = v24;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v17 = String.init<A>(describing:)();
    v19 = sub_100037B98(v17, v18, &v25);
    v9 = &unk_1000BF000;

    *(v10 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s X1 dataSource: %s nodeCollection: %s", v10, 0x20u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v23);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v20 = *(v1 + v9[28]);

  sub_100031624();
}

uint64_t sub_10002EC6C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100092740, &v21);
    *(v9 + 12) = 2048;
    v10 = *(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v10)
    {
      v11 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);

      v12 = v10;
      v13 = dispatch thunk of DOCNodeCollection.nodes.getter();

      if (!(v13 >> 62))
      {
LABEL_4:
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

        *(v9 + 14) = v14;

        _os_log_impl(&_mh_execute_header, v7, v8, "%s nodes count: %ld)", v9, 0x16u);
        sub_1000064E0(v20);

        goto LABEL_7;
      }
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_4;
      }
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

LABEL_7:
  result = (*(v3 + 8))(v6, v2);
  v16 = v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler;
  v17 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  if (v17)
  {
    v18 = *(v16 + 8);

    v17(v19);
    return sub_1000414DC(v17);
  }

  return result;
}

uint64_t sub_10002EEF8()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);

  v4 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor;
  v5 = type metadata accessor for DOCItemSortDescriptor();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler + 8);
  sub_1000414DC(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t sub_10002F020()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DOCItemSortDescriptor();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10002F100(char *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&unk_1000BC3F0, &qword_100090B80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for DOCItemSortDescriptor();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Logger();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v20 = v9[2];
  v52 = a1;
  v54 = v20;
  v20(v15, a1, v8);

  v21 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.info.getter();

  v48 = a1;
  v22 = os_log_type_enabled(v21, a1);
  v23 = &unk_1000BF000;
  v47 = v9;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v53 = v2;
    v25 = v24;
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v25 = 136315650;
    *(v25 + 4) = sub_100037B98(0x6373654474726F73, 0xEE00726F74706972, v55);
    *(v25 + 12) = 2080;
    v44 = v21;
    v26 = v9;
    v27 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
    swift_beginAccess();
    v28 = v54;
    v54(v12, (v53 + v27), v8);
    v29 = String.init<A>(describing:)();
    v46 = v7;
    v31 = sub_100037B98(v29, v30, v55);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2080;
    v28(v12, v15, v8);
    v23 = &unk_1000BF000;
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v49 = v26[1];
    v49(v15, v8);
    v35 = sub_100037B98(v32, v34, v55);
    v7 = v46;

    *(v25 + 24) = v35;
    v36 = v44;
    _os_log_impl(&_mh_execute_header, v44, v48, "%s new: %s, old: %s", v25, 0x20u);
    swift_arrayDestroy();

    v2 = v53;
  }

  else
  {

    v49 = v9[1];
    v49(v15, v8);
  }

  (*(v50 + 8))(v19, v51);
  v37 = v23[33];
  swift_beginAccess();
  v38 = v54;
  v54(v12, (v2 + v37), v8);
  sub_1000422FC(&qword_1000BC4E8, &type metadata accessor for DOCItemSortDescriptor);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v49)(v12, v8);
  if ((v39 & 1) == 0)
  {
    v41 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v41)
    {
      v38(v7, v2 + v37, v8);
      (v47[7])(v7, 0, 1, v8);
      v42 = v41;
      dispatch thunk of DOCNodeCollection.reorderItems(with:)();

      return sub_100006390(v7, &unk_1000BC3F0, &qword_100090B80);
    }
  }

  return result;
}

uint64_t sub_10002F630(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v5 = type metadata accessor for DOCItemSortDescriptor();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection) = 0;
  v9 = (v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 0;
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest) = 0;
  v10 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v2 + v10, a1, v11);
  v13 = *(v6 + 16);
  v13(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor, a2, v5);
  v13(v8, a2, v5);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  (*(v6 + 32))(v15 + v14, v8, v5);

  sub_10002FC2C(sub_1000428D8, v15);

  (*(v6 + 8))(a2, v5);
  (*(v12 + 8))(v18, v11);
  return v2;
}

void sub_10002F870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BC3F0, &qword_100090B80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_retain_n();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = a2;
    v34 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_100037B98(0xD000000000000022, 0x8000000100092B20, &v34);
    *(v16 + 12) = 2080;
    v33 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v18 = v33;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v19 = String.init<A>(describing:)();
    v30 = v8;
    v21 = sub_100037B98(v19, v20, &v34);

    *(v16 + 14) = v21;
    *(v16 + 22) = 1024;
    LODWORD(v21) = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest);

    *(v16 + 24) = v21;

    _os_log_impl(&_mh_execute_header, v13, v14, "%s finished setting up node observer: %s, hasPendingStartObservingRequest: %{BOOL}d observation", v16, 0x1Cu);
    swift_arrayDestroy();
    a2 = v31;

    v7 = v32;

    (*(v9 + 8))(v12, v30);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest) == 1)
  {
    v22 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection;
    v23 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v23)
    {
      v24 = v23;
      dispatch thunk of DOCNodeCollection.startObservationIfNeeded()();

      v25 = *(a1 + v22);
      if (v25)
      {
        v26 = type metadata accessor for DOCItemSortDescriptor();
        v27 = *(v26 - 8);
        (*(v27 + 16))(v7, a2, v26);
        (*(v27 + 56))(v7, 0, 1, v26);
        v28 = v25;
        dispatch thunk of DOCNodeCollection.reorderItems(with:)();

        sub_100006390(v7, &unk_1000BC3F0, &qword_100090B80);
      }
    }
  }
}

uint64_t sub_10002FC2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a1;
  v80 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v72 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v7 = *(v71 + 64);
  __chkstk_darwin(v73);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  __chkstk_darwin(v9);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v76 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v65 - v22;
  static Logger.UI.getter();
  swift_retain_n();
  v24 = Logger.logObject.getter();
  LODWORD(v66) = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v24, v66);
  v77 = v18;
  v78 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v26 = 136315906;
    *(v26 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, aBlock);
    *(v26 + 12) = 2080;
    (*(v13 + 16))(v16, v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v12);
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = sub_100037B98(v27, v29, aBlock);

    *(v26 + 14) = v30;
    *(v26 + 22) = 2080;
    v81 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v31 = v81;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v32 = String.init<A>(describing:)();
    v34 = sub_100037B98(v32, v33, aBlock);

    *(v26 + 24) = v34;
    *(v26 + 32) = 1024;
    LODWORD(v30) = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode);

    *(v26 + 34) = v30;

    _os_log_impl(&_mh_execute_header, v24, v66, "%s directoryURL: %s nodeCollection: %s hasStartedFetchingNode: %{BOOL}d", v26, 0x26u);
    swift_arrayDestroy();

    v35 = &unk_1000BF000;
    v66 = *(v77 + 8);
    v66(v23, v78);
  }

  else
  {

    v66 = *(v18 + 8);
    v66(v23, v17);
    v35 = &unk_1000BF000;
  }

  v36 = swift_allocObject();
  v37 = v79;
  v38 = v80;
  v36[2] = v3;
  v36[3] = v37;
  v36[4] = v38;
  v39 = v35[31];
  v40 = *(v13 + 16);
  v40(v16, v3 + v39, v12);

  URL.startAccessingSecurityScopedResource()();
  v43 = *(v13 + 8);
  v42 = v13 + 8;
  v41 = v43;
  v43(v16, v12);
  if (*(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode))
  {
    v74 = v42;
    v75 = v36;
    v44 = v76;
    static Logger.UI.getter();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    LODWORD(v73) = v46;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v72 = v45;
      v48 = v47;
      aBlock[0] = swift_slowAlloc();
      *v48 = 136315394;
      *(v48 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, aBlock);
      *(v48 + 12) = 2080;
      v40(v16, v3 + v39, v12);
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v41(v16, v12);
      v52 = sub_100037B98(v49, v51, aBlock);

      *(v48 + 14) = v52;
      v53 = v72;
      _os_log_impl(&_mh_execute_header, v72, v73, "%s Already started setting up node observer for URL: %s", v48, 0x16u);
      swift_arrayDestroy();

      v54 = v76;
    }

    else
    {

      v54 = v44;
    }

    v66(v54, v78);
    sub_100030658(v3, v79, v80);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 1;
    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v56 = v67;
    v55 = v68;
    v57 = v69;
    (*(v68 + 104))(v67, enum case for DispatchQoS.QoSClass.userInitiated(_:), v69);
    v58 = static OS_dispatch_queue.global(qos:)();
    (*(v55 + 8))(v56, v57);
    v59 = swift_allocObject();
    v59[2] = v3;
    v59[3] = sub_1000422E4;
    v59[4] = v36;
    aBlock[4] = sub_1000422F0;
    aBlock[5] = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000AEB20;
    v60 = _Block_copy(aBlock);

    v61 = v70;
    static DispatchQoS.unspecified.getter();
    v81 = _swiftEmptyArrayStorage;
    sub_1000422FC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_100043240(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70);
    v62 = v72;
    v63 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);

    (*(v74 + 8))(v62, v63);
    (*(v71 + 8))(v61, v73);
  }
}

uint64_t sub_100030658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v35 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v11;
    v18 = v17;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v18 = 136315650;
    *(v18 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, &v38);
    *(v18 + 12) = 2080;
    (*(v6 + 16))(v9, a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v5);
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
    v32 = v15;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = a3;
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v23 = sub_100037B98(v19, v22, &v38);
    a3 = v20;

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    v37 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v24 = v37;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v25 = String.init<A>(describing:)();
    v27 = sub_100037B98(v25, v26, &v38);

    *(v18 + 24) = v27;
    v28 = v32;
    _os_log_impl(&_mh_execute_header, v32, v35, "%s Node observer for URL: %s completion: %s", v18, 0x20u);
    swift_arrayDestroy();

    (*(v34 + 8))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v36;
  *(v29 + 24) = a3;

  DOCRunInMainThread(_:)();
}

void sub_100030A3C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v63 = a2;
  v5 = type metadata accessor for Logger();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v13[2];
  v58 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL;
  v59 = v18;
  (v18)(v17, a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v12, v15);
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v60 = v13[1];
  v60(v17, v12);
  v22 = [objc_opt_self() fiNodeFromURL:v21];

  if (v22)
  {
    v23 = [v22 cachedDomain];
    if (v23)
    {

      v24 = swift_allocObject();
      v24[2] = v22;
      v24[3] = a1;
      v24[4] = v63;
      v24[5] = a3;
      v25 = v22;

      DOCRunInMainThread(_:)();
    }

    else
    {
      static Logger.UI.getter();
      v25 = v22;

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v54 = v36;
        v55 = v35;
        v37 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v65 = v53;
        *v37 = 136315650;
        *(v37 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, &v65);
        *(v37 + 12) = 2080;
        v38 = [v25 respondsToSelector:"debugDescription"];
        v56 = v25;
        if (v38)
        {
          v39 = [v25 debugDescription];
          v57 = a3;
          v40 = v39;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        v64[0] = v41;
        v64[1] = v43;
        sub_10000589C(&qword_1000BBCF0, "0T");
        v45 = String.init<A>(describing:)();
        v47 = sub_100037B98(v45, v46, &v65);

        *(v37 + 14) = v47;
        *(v37 + 22) = 2080;
        v59(v17, a1 + v58, v12);
        sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v60(v17, v12);
        v51 = sub_100037B98(v48, v50, &v65);

        *(v37 + 24) = v51;
        v52 = v55;
        _os_log_impl(&_mh_execute_header, v55, v54, "%s Couldn't set up node observer for node: %s cachedDomain was nil directoryURL: %s ", v37, 0x20u);
        swift_arrayDestroy();

        v44 = (*(v61 + 8))(v11, v62);
        v25 = v56;
      }

      else
      {

        v44 = (*(v61 + 8))(v11, v62);
      }

      *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 0;
      v63(v44);
    }
  }

  else
  {
    static Logger.UI.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v57 = a3;
      v29 = v28;
      v56 = swift_slowAlloc();
      v64[0] = v56;
      *v29 = 136315394;
      *(v29 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, v64);
      *(v29 + 12) = 2080;
      v59(v17, a1 + v58, v12);
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v60(v17, v12);
      v33 = sub_100037B98(v30, v32, v64);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s Couldn't create FINode for URL: %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    v34 = (*(v61 + 8))(v8, v62);
    *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 0;
    v63(v34);
  }
}

uint64_t sub_100031138(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v48 = type metadata accessor for URL();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v48);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  swift_unknownObjectRelease();
  v47 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v41 = v16;
    v42 = v12;
    v43 = v11;
    v44 = a4;
    v45 = a3;
    v18 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, &v51);
    *(v18 + 12) = 2080;
    if ([a1 respondsToSelector:"debugDescription"])
    {
      v19 = [a1 debugDescription];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v49 = v20;
    v50 = v22;
    sub_10000589C(&qword_1000BBCF0, "0T");
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v51);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2080;
    v49 = [a1 cachedDomain];
    sub_10000589C(&qword_1000BC430, &qword_100090B88);
    v26 = String.init<A>(describing:)();
    v28 = sub_100037B98(v26, v27, &v51);

    *(v18 + 24) = v28;
    *(v18 + 32) = 2080;
    v29 = v46;
    v30 = v48;
    (*(v8 + 16))(v46, a2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v48);
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v8 + 8))(v29, v30);
    v34 = sub_100037B98(v31, v33, &v51);

    *(v18 + 34) = v34;
    v35 = v41;
    _os_log_impl(&_mh_execute_header, v41, v47, "%s Finished creating FINode. Now setting up node observer for node: %s cachedDomain: %s directoryURL: %s", v18, 0x2Au);
    swift_arrayDestroy();

    (*(v42 + 8))(v15, v43);
    a3 = v45;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  type metadata accessor for DOCNodeCollection();
  swift_unknownObjectRetain();
  LOBYTE(v49) = 1;
  v36 = DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)();
  v37 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  *(a2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection) = v36;
  v38 = v36;

  sub_1000422FC(&qword_1000BC428, type metadata accessor for DockFolderDataSourceObserver);
  swift_unknownObjectRetain();
  dispatch thunk of DOCNodeCollection.delegate.setter();

  return a3();
}

void sub_100031624()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v19);
    *(v9 + 12) = 2080;
    v18 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v10 = v18;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v11 = String.init<A>(describing:)();
    v13 = sub_100037B98(v11, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s nodeCollection: %s.", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v6, v2);
  v14 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection;
  v15 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (v15 || (*(v1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest) = 1, v16 = swift_allocObject(), swift_weakInit(), , sub_10002FC2C(sub_1000422D8, v16), , (v15 = *(v1 + v14)) != 0))
  {
    v17 = v15;
    dispatch thunk of DOCNodeCollection.startObservationIfNeeded()();
  }
}

uint64_t sub_1000318D0()
{
  v0 = sub_10000589C(&unk_1000BC3F0, &qword_100090B80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    static Logger.UI.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v3;
      v14 = v13;
      v29[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, v29);
      *(v14 + 12) = 2080;
      v28 = *(v10 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      v15 = v28;
      sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
      v16 = String.init<A>(describing:)();
      v18 = sub_100037B98(v16, v17, v29);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s finished setting up node observer: %s, starting observation", v14, 0x16u);
      swift_arrayDestroy();

      v3 = v27;
    }

    (*(v5 + 8))(v8, v4);
    v19 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection;
    v20 = *(v10 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v20 && (v21 = v20, dispatch thunk of DOCNodeCollection.startObservationIfNeeded()(), v21, (v22 = *(v10 + v19)) != 0))
    {
      v23 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
      swift_beginAccess();
      v24 = type metadata accessor for DOCItemSortDescriptor();
      v25 = *(v24 - 8);
      (*(v25 + 16))(v3, v10 + v23, v24);
      (*(v25 + 56))(v3, 0, 1, v24);
      v26 = v22;
      dispatch thunk of DOCNodeCollection.reorderItems(with:)();

      return sub_100006390(v3, &unk_1000BC3F0, &qword_100090B80);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100031C5C()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
  v4 = type metadata accessor for DOCItemSortDescriptor();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);
  sub_1000414DC(*(v0 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t sub_100031D84(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100031DBC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DOCItemSortDescriptor();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockFolderDisplayMode(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockFolderDisplayMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockFolderDisplayState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockFolderDisplayState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10003216C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100032180(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000321C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100032220()
{
  result = qword_1000BC2F8;
  if (!qword_1000BC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC2F8);
  }

  return result;
}

unint64_t sub_100032278()
{
  result = qword_1000BC300;
  if (!qword_1000BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC300);
  }

  return result;
}

uint64_t sub_1000322CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  p_type = &stru_1000B6FF0.type;
  if (os_log_type_enabled(v10, v11))
  {
    v23 = v4;
    v24 = v1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315906;
    *(v13 + 4) = sub_100037B98(0xD000000000000028, 0x80000001000925F0, &v25);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *v14 = v9;
    *(v13 + 22) = 1024;
    *(v13 + 24) = [v9 isGathering];
    *(v13 + 28) = 2048;
    v16 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 30) = v17;

    _os_log_impl(&_mh_execute_header, v10, v11, "%s collection: %@ isGathering: %{BOOL}d count: %ld", v13, 0x26u);
    sub_100006390(v14, &qword_1000BC328, &qword_100090AD0);

    sub_1000064E0(v15);

    (*(v5 + 8))(v8, v23);
    v2 = v24;
    p_type = (&stru_1000B6FF0 + 16);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  result = [v9 p_type[431]];
  if ((result & 1) == 0)
  {
    v19 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v19)
    {
      v20 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v19(v21);
      return sub_1000414DC(v19);
    }
  }

  return result;
}

uint64_t sub_1000325B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = a1;
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v28 = v7;
    v29 = v6;
    v30 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v14 = 136316162;
    *(v14 + 4) = sub_100037B98(0xD000000000000028, 0x8000000100092590, &v32);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    *(v14 + 22) = 2048;
    v16 = v11;
    v17 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 24) = v18;

    *(v14 + 32) = 1024;
    v19 = [v16 isGathering];

    *(v14 + 34) = v19;
    *(v14 + 38) = 2080;
    v31 = a2;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v20 = String.init<A>(describing:)();
    v22 = sub_100037B98(v20, v21, &v32);

    *(v14 + 40) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s collection: %@ count: %ld isGathering: %{BOOL}d observedNode: %s", v14, 0x30u);
    sub_100006390(v15, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v28 + 8))(v10, v29);
    v3 = v30;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = [v11 isGathering];
  if ((result & 1) == 0)
  {
    v24 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v24)
    {
      v25 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v24(v26);
      return sub_1000414DC(v24);
    }
  }

  return result;
}

void sub_10003293C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  p_type = &stru_1000B6FF0.type;
  if (os_log_type_enabled(v10, v11))
  {
    v24 = v4;
    v25 = v1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v13 = 136316162;
    *(v13 + 4) = sub_100037B98(0xD000000000000024, 0x8000000100092560, &v26);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *v14 = v9;
    *(v13 + 22) = 2048;
    v15 = v9;
    v16 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 24) = v17;

    *(v13 + 32) = 1024;
    v18 = [v15 isGathering];

    *(v13 + 34) = v18;
    *(v13 + 38) = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    if (byte_1000BD758)
    {
      __break(1u);
      return;
    }

    *(v13 + 40) = Current - *&qword_1000BD750;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s collection: %@ count: %ld isGathering: %{BOOL}d took to get here: %f", v13, 0x30u);
    sub_100006390(v14, &qword_1000BC328, &qword_100090AD0);

    sub_1000064E0(v23);

    (*(v5 + 8))(v8, v24);
    v2 = v25;
    p_type = (&stru_1000B6FF0 + 16);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  if (([v9 p_type[431]] & 1) == 0)
  {
    v20 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v20)
    {
      v21 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v20(v22);
      sub_1000414DC(v20);
    }
  }
}

uint64_t sub_100032C74(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = a1;

  v10 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.debug.getter();

  v39 = a1;
  v11 = os_log_type_enabled(v10, a1);
  p_type = &stru_1000B6FF0.type;
  if (v11)
  {
    v13 = swift_slowAlloc();
    v38 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v34 = v15;
    v37 = swift_slowAlloc();
    v40 = v37;
    *v14 = 136316418;
    *(v14 + 4) = sub_100037B98(0xD000000000000043, 0x80000001000924E0, &v40);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v9;
    *v15 = v9;
    *(v14 + 22) = 2080;
    v16 = v9;
    v36 = v5;
    v17 = v16;
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v18 = Array.description.getter();
    v20 = sub_100037B98(v18, v19, &v40);
    v35 = v4;
    v21 = v20;

    *(v14 + 24) = v21;
    *(v14 + 32) = 1024;
    v22 = [v17 isGathering];

    *(v14 + 34) = v22;
    *(v14 + 38) = 2080;
    sub_10001A2A8(0, &qword_1000BC318, FPItemID_ptr);
    sub_1000414EC();
    v23 = Dictionary.description.getter();
    v25 = sub_100037B98(v23, v24, &v40);

    *(v14 + 40) = v25;
    *(v14 + 48) = 2080;
    v26 = Array.description.getter();
    v28 = sub_100037B98(v26, v27, &v40);
    p_type = (&stru_1000B6FF0 + 16);

    *(v14 + 50) = v28;
    _os_log_impl(&_mh_execute_header, v10, v39, "%s collection: %@ nodes: %s isGathering: %{BOOL}d nodesByOldItemID: %s deleteNodesWith: %s", v14, 0x3Au);
    sub_100006390(v34, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v2 = v38;

    (*(v36 + 8))(v8, v35);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  result = [v9 p_type[431]];
  if ((result & 1) == 0)
  {
    v30 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v30)
    {
      v31 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v30(v32);
      return sub_1000414DC(v30);
    }
  }

  return result;
}

uint64_t sub_100033074(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v6;
    v14 = v13;
    v25 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD00000000000003DLL, 0x8000000100092980, &v25);
    *(v14 + 12) = 2080;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = sub_100037B98(v15, v16, &v25);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2080;
    v24 = a3;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100037B98(v18, v19, &v25);

    *(v14 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s reveal in files action: %s on node: %s", v14, 0x20u);
    swift_arrayDestroy();

    (*(v7 + 8))(v10, v23);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000499C0(a4, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100033860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ImageOptions();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = *a1;
  (*(v16 + 16))(&v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  v17 = *(a3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_imageCache);
  v18 = objc_allocWithZone(type metadata accessor for NodeThumbnail());
  swift_unknownObjectRetain();

  v19 = NodeThumbnail.init(node:imageOptions:imageCache:)();
  NodeThumbnail.scheduleUpdateIfNeeded()();
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v21;
    v24 = v23;
    v48 = swift_slowAlloc();
    v52 = v48;
    *v24 = 136315906;
    *(v24 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100092690, &v52);
    *(v24 + 12) = 2080;
    v25 = v20;
    v45 = v22;
    v26 = v25;
    v27 = [v25 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v20;
    v29 = v28;
    v46 = v8;
    v30 = a4;
    v32 = v31;

    v33 = sub_100037B98(v29, v32, &v52);
    a4 = v30;

    *(v24 + 14) = v33;
    *(v24 + 22) = 2080;
    Correct = NodeThumbnail.hasFinishedTryingToFetchCorrectThumbnail.getter();
    v35 = (Correct & 1) == 0;
    if (Correct)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (v35)
    {
      v37 = 0xE500000000000000;
    }

    else
    {
      v37 = 0xE400000000000000;
    }

    v38 = sub_100037B98(v36, v37, &v52);

    *(v24 + 24) = v38;
    *(v24 + 32) = 2080;
    v51 = v15;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, &v52);

    *(v24 + 34) = v41;
    v20 = v49;
    v42 = v47;
    _os_log_impl(&_mh_execute_header, v47, v45, "%s thumbnail: %s hasFinishedTryingToFetchCorrectThumbnail: %s node: %s", v24, 0x2Au);
    swift_arrayDestroy();

    (*(v50 + 8))(v11, v46);
  }

  else
  {

    (*(v50 + 8))(v11, v8);
  }

  *a4 = v15;
  a4[1] = v20;
  return swift_unknownObjectRetain();
}

uint64_t sub_100033C70(uint64_t a1, uint64_t a2)
{
  v143 = a1;
  v144 = a2;
  v136 = type metadata accessor for FolderAssetType();
  v134 = *(v136 - 8);
  v3 = *(v134 + 64);
  __chkstk_darwin(v136);
  v135 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for FolderIconFetcher();
  v5 = *(v140 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v140);
  v138 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v7;
  __chkstk_darwin(v8);
  v139 = &v128 - v9;
  v10 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v146 = &v128 - v12;
  v13 = sub_10000589C(&unk_1000BC340, &unk_100091350);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v128 = &v128 - v15;
  v133 = type metadata accessor for ImageOptions();
  v131 = *(v133 - 8);
  v16 = *(v131 + 64);
  __chkstk_darwin(v133);
  v130 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v17;
  __chkstk_darwin(v18);
  v132 = &v128 - v19;
  v20 = type metadata accessor for Logger();
  v141 = *(v20 - 1);
  v142 = v20;
  v21 = *(v141 + 64);
  __chkstk_darwin(v20);
  v23 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v128 - v25;
  __chkstk_darwin(v27);
  v29 = &v128 - v28;
  v30 = &v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v32 = *&v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8];
  v31 = *&v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16];
  v145 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v35 = [Strong traitCollection];

    v36 = &selRef_displayScale;
  }

  else
  {
    v35 = [objc_opt_self() mainScreen];
    v36 = &selRef_scale;
  }

  [v35 *v36];
  v38 = v37;

  v39 = v145;
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    v147 = [v40 traitCollection];
  }

  else
  {
    v147 = 0;
  }

  v42 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v42)
  {
    v43 = *(*(v42 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v43)
    {
      v44 = *(v42 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);

      v45 = v43;

      v46 = dispatch thunk of DOCNodeCollection.observedNode.getter();

      if (v46)
      {
        v140 = swift_allocObject();
        v47 = objc_opt_self();
        v48 = [v47 sharedManager];
        v49 = [v48 isFilesAppLocked];

        v139 = v46;
        if ((v49 & 1) != 0 || (v50 = [v47 sharedManager], v51 = objc_msgSend(v50, "nodeRequiresAuthentication_Sync:", v46), v50, v51))
        {
          static Logger.UI.getter();
          v52 = v39;
          swift_unknownObjectRetain();
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v149[0] = swift_slowAlloc();
            *v55 = 136315650;
            *(v55 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v149);
            *(v55 + 12) = 2080;
            v56 = v52;
            v57 = [v56 description];
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v46 = v139;
            v61 = sub_100037B98(v58, v60, v149);

            *(v55 + 14) = v61;
            *(v55 + 22) = 2080;
            v148 = v46;
            swift_unknownObjectRetain();
            sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
            v62 = String.init<A>(describing:)();
            v64 = sub_100037B98(v62, v63, v149);

            *(v55 + 24) = v64;
            _os_log_impl(&_mh_execute_header, v53, v54, "%s self: %s Files app is locked or node: %s requires authentication. Fetching thumbnail for folder icon instead", v55, 0x20u);
            swift_arrayDestroy();
          }

          v66 = v141;
          v65 = v142;
          (*(v141 + 8))(v29, v142);
          v67 = v140;
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_10008F940;
          *(v68 + 32) = v46;
          *(v67 + 16) = v68;
          swift_unknownObjectRetain();
        }

        else
        {
          v92 = sub_1000268A4(3, *v30);
          v66 = v141;
          if (!v92)
          {
            sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_10008F940;
            *(v93 + 32) = v46;
            swift_unknownObjectRetain();
            v92 = v93;
          }

          v65 = v142;
          v67 = v140;
          *(v140 + 16) = v92;
        }

        static Logger.UI.getter();

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v149[0] = swift_slowAlloc();
          *v96 = 136315394;
          *(v96 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v149);
          *(v96 + 12) = 2080;
          swift_beginAccess();
          v97 = *(v140 + 16);

          sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
          v98 = Array.description.getter();
          v100 = v99;

          v101 = sub_100037B98(v98, v100, v149);

          *(v96 + 14) = v101;
          v67 = v140;
          _os_log_impl(&_mh_execute_header, v94, v95, "%s creating icon for nodes: %s", v96, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v66 + 8))(v26, v65);
        v102 = v147;
        v103 = v128;
        swift_beginAccess();
        v104 = *(v67 + 16);
        if (v104 >> 62)
        {
          if (v104 < 0)
          {
            v106 = *(v67 + 16);
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_26:
            v147 = v102;
            if (v102)
            {
LABEL_27:
              [v102 displayScale];
              v105 = v102;
              UITraitCollection._ifColorForIconFolderTintComponents.getter();
              v142 = v105;

LABEL_35:
              v109 = v132;
              ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
              v110 = type metadata accessor for TaskPriority();
              (*(*(v110 - 8) + 56))(v146, 1, 1, v110);
              v111 = v131;
              v112 = v130;
              (*(v131 + 16))(v130, v109, v133);
              v113 = (*(v111 + 80) + 48) & ~*(v111 + 80);
              v114 = (v129 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
              v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
              v116 = (v115 + 23) & 0xFFFFFFFFFFFFFFF8;
              v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
              v118 = swift_allocObject();
              *(v118 + 2) = 0;
              *(v118 + 3) = 0;
              v119 = v145;
              *(v118 + 4) = v140;
              *(v118 + 5) = v119;
              v120 = v112;
              v121 = v133;
              (*(v111 + 32))(&v118[v113], v120, v133);
              *&v118[v114] = v147;
              v122 = &v118[v115];
              *v122 = v32;
              *(v122 + 1) = v31;
              *&v118[v116] = v38;
              *&v118[v117] = v139;
              v123 = &v118[(v117 + 15) & 0xFFFFFFFFFFFFFFF8];
              v124 = v144;
              *v123 = v143;
              *(v123 + 1) = v124;
              v125 = v119;
              swift_unknownObjectRetain();

              v126 = v142;

              sub_100064E70(0, 0, v146, &unk_100090B10, v118);

              swift_unknownObjectRelease();

              (*(v111 + 8))(v132, v121);
            }

LABEL_34:
            v107 = [objc_opt_self() mainScreen];
            [v107 scale];

            v108 = type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents();
            (*(*(v108 - 8) + 56))(v103, 1, 1, v108);
            v142 = 0;
            goto LABEL_35;
          }
        }

        else if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        swift_beginAccess();
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v67 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v67 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v127 = *((*(v67 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v147 = v102;
        if (v102)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }
  }

  static Logger.UI.getter();
  v69 = v39;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v72 = 136315394;
    *(v72 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v149);
    *(v72 + 12) = 2080;
    v73 = v69;
    v74 = [v73 description];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = sub_100037B98(v75, v77, v149);

    *(v72 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v70, v71, "%s self: %s can not create icon because observedNode is nil. Falling back to a generic folder icon", v72, 0x16u);
    swift_arrayDestroy();
  }

  (*(v141 + 8))(v23, v142);
  v79 = v147;
  (*(v134 + 104))(v135, enum case for FolderAssetType.complete(_:), v136);
  v80 = v79;
  v81 = v139;
  FolderIconFetcher.init(node:assetType:size:scale:traitCollection:)();
  v82 = type metadata accessor for TaskPriority();
  v83 = v146;
  (*(*(v82 - 8) + 56))(v146, 1, 1, v82);
  v84 = v138;
  v85 = v140;
  (*(v5 + 16))(v138, v81, v140);
  v86 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v87 = (v137 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  (*(v5 + 32))(v88 + v86, v84, v85);
  v89 = (v88 + v87);
  v90 = v144;
  *v89 = v143;
  v89[1] = v90;

  sub_100064E70(0, 0, v83, &unk_100090AF8, v88);

  return (*(v5 + 8))(v81, v85);
}

uint64_t sub_100034C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = async function pointer to FolderIconFetcher.fetchImageWithOverlays()[1];
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_100034CE8;

  return FolderIconFetcher.fetchImageWithOverlays()();
}

uint64_t sub_100034CE8(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {

    v4 = sub_100034ED4;
  }

  else
  {
    v4 = sub_100034E04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100034E04()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(v1);
    if (v2)
    {
      v3 = v2;
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0xF000000000000000;
    }

    v7 = *(v0 + 40);
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v6 = 0xF000000000000000;
  }

  v8 = *(v0 + 24);
  (*(v0 + 16))(v4, v6);
  sub_100041D6C(v4, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100034ED4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0, 0xF000000000000000);
  sub_100041D6C(0, 0xF000000000000000);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100034F4C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  *(v11 + 104) = a11;
  *(v11 + 88) = a2;
  *(v11 + 96) = a3;
  *(v11 + 80) = a1;
  *(v11 + 64) = a9;
  *(v11 + 72) = a10;
  *(v11 + 48) = a7;
  *(v11 + 56) = a8;
  v12 = type metadata accessor for Logger();
  *(v11 + 128) = v12;
  v13 = *(v12 - 8);
  *(v11 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v11 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100035028, 0, 0);
}

uint64_t sub_100035028()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48) + 16;
  v3 = sub_10000589C(&qword_1000BBD90, &qword_100090580);
  v4 = sub_10000589C(&qword_1000BC3B8, &qword_100090B18);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_100035160;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 32, v3, v4, 0, 0, &unk_100090B28, v5, v3);
}

uint64_t sub_100035160()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_100035278, 0, 0);
}

uint64_t sub_100035278()
{
  v41 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_10000C2FC(*(v0 + 32));

  v5 = sub_10000C444(v4);
  v6 = sub_100041B24(v5, v3, v2, v1);

  if (v6 && (v7 = UIImagePNGRepresentation(v6)) != 0)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 104);
  static Logger.UI.getter();
  sub_100041D04(v9, v11);

  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  sub_100041D6C(v9, v11);

  swift_unknownObjectRelease();
  v16 = os_log_type_enabled(v14, v15);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 128);
  if (v16)
  {
    v36 = *(v0 + 104);
    v39 = v15;
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v40);
    *(v20 + 12) = 2080;
    *(v0 + 16) = v9;
    *(v0 + 24) = v11;
    sub_100041D04(v9, v11);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v21 = String.init<A>(describing:)();
    v38 = v17;
    v37 = v19;
    v23 = v6;
    v24 = sub_100037B98(v21, v22, &v40);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    sub_10000589C(&qword_1000BBD88, &qword_100090578);
    v25 = Array.description.getter();
    v27 = v26;

    v28 = sub_100037B98(v25, v27, &v40);
    v6 = v23;

    *(v20 + 24) = v28;
    *(v20 + 32) = 2080;
    *(v0 + 40) = v36;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v29 = String.init<A>(describing:)();
    v31 = sub_100037B98(v29, v30, &v40);

    *(v20 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v14, v39, "%s returning iconData: %s composed of: %s for observedNode: %s", v20, 0x2Au);
    swift_arrayDestroy();

    (*(v18 + 8))(v38, v37);
  }

  else
  {

    (*(v18 + 8))(v17, v19);
  }

  v32 = *(v0 + 144);
  v33 = *(v0 + 120);
  (*(v0 + 112))(v9, v11);
  sub_100041D6C(v9, v11);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100035620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = type metadata accessor for Logger();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();
  v10 = *(*(sub_10000589C(&qword_1000BCE60, &unk_100090AE0) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v11 = sub_10000589C(&qword_1000BC3D0, &qword_100090B40);
  v6[26] = v11;
  v12 = *(v11 - 8);
  v6[27] = v12;
  v13 = *(v12 + 64) + 15;
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_100035794, 0, 0);
}

uint64_t sub_100035794()
{
  v53 = v0;
  v1 = *(v0 + 136);
  v2 = swift_beginAccess();
  v6 = *v1;
  if (*v1 >> 62)
  {
    if (v6 < 0)
    {
      v45 = *v1;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v40 = *(v0 + 224);
    v41 = **(v0 + 128);
    sub_10000589C(&qword_1000BBD90, &qword_100090580);
    TaskGroup.makeAsyncIterator()();
    *(v0 + 232) = _swiftEmptyArrayStorage;
    v42 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v43 = swift_task_alloc();
    *(v0 + 240) = v43;
    *v43 = v0;
    v43[1] = sub_100035DFC;
    v44 = *(v0 + 224);
    v5 = *(v0 + 208);
    v2 = v0 + 96;
    v3 = 0;
    v4 = 0;

    return TaskGroup.Iterator.next(isolation:)(v2, v3, v4, v5);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v51 = v6 & 0xC000000000000001;
    v47 = (*(v0 + 176) + 8);

    v8 = 0;
    v48 = v7;
    v49 = v6;
    while (1)
    {
      if (v51)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v10 = *(v0 + 152);
      v11 = *(v0 + 160);
      v12 = *(v0 + 144);
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10008F940;
      *(v13 + 32) = v9;
      swift_unknownObjectRetain();
      v14 = sub_100033304(v13, v10, v11);

      if (v14)
      {
        if (*(v14 + 16))
        {
          v15 = *(v0 + 200);
          v50 = *(v0 + 192);
          v16 = *(v14 + 40);
          swift_unknownObjectRetain();

          v17 = type metadata accessor for TaskPriority();
          v18 = *(v17 - 8);
          (*(v18 + 56))(v15, 1, 1, v17);
          v19 = swift_allocObject();
          v19[2] = 0;
          v20 = v19 + 2;
          v19[3] = 0;
          v19[4] = v16;
          v19[5] = v9;
          sub_100042774(v15, v50, &qword_1000BCE60, &unk_100090AE0);
          LODWORD(v15) = (*(v18 + 48))(v50, 1, v17);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v21 = *(v0 + 192);
          if (v15 == 1)
          {
            sub_100006390(*(v0 + 192), &qword_1000BCE60, &unk_100090AE0);
            if (*v20)
            {
              goto LABEL_14;
            }

LABEL_20:
            v23 = 0;
            v25 = 0;
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v18 + 8))(v21, v17);
            if (!*v20)
            {
              goto LABEL_20;
            }

LABEL_14:
            v22 = v19[3];
            swift_getObjectType();
            swift_unknownObjectRetain();
            v23 = dispatch thunk of Actor.unownedExecutor.getter();
            v25 = v24;
            swift_unknownObjectRelease();
          }

          v36 = **(v0 + 128);
          v37 = swift_allocObject();
          *(v37 + 16) = &unk_100090B50;
          *(v37 + 24) = v19;

          sub_10000589C(&qword_1000BBD90, &qword_100090580);
          v38 = v25 | v23;
          if (v25 | v23)
          {
            v38 = v0 + 16;
            *(v0 + 16) = 0;
            *(v0 + 24) = 0;
            *(v0 + 32) = v23;
            *(v0 + 40) = v25;
          }

          v6 = v49;
          v39 = *(v0 + 200);
          *(v0 + 72) = 1;
          *(v0 + 80) = v38;
          *(v0 + 88) = v36;
          swift_task_create();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_100006390(v39, &qword_1000BCE60, &unk_100090AE0);
          v7 = v48;
          goto LABEL_6;
        }
      }

      v26 = *(v0 + 184);
      static Logger.UI.getter();
      swift_unknownObjectRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 184);
      v31 = *(v0 + 168);
      if (v29)
      {
        v32 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v52);
        *(v32 + 12) = 2080;
        *(v0 + 112) = v9;
        swift_unknownObjectRetain();
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        v33 = String.init<A>(describing:)();
        v35 = sub_100037B98(v33, v34, &v52);
        v7 = v48;

        *(v32 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s did not get a valid thumbnail for node: %s", v32, 0x16u);
        swift_arrayDestroy();

        v6 = v49;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*v47)(v30, v31);
LABEL_6:
      if (v7 == ++v8)
      {

        goto LABEL_25;
      }
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v2, v3, v4, v5);
}

uint64_t sub_100035DFC()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_100035EF8, 0, 0);
}

uint64_t sub_100035EF8()
{
  v22 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 232);
  if (*(v0 + 96))
  {
    v20 = *(v0 + 96);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 232);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_10000DAD8(0, v4[2] + 1, 1, *(v0 + 232));
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10000DAD8((v5 > 1), v6 + 1, 1, v4);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v20;
    *(v0 + 232) = v4;
    v7 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_100035DFC;
    v9 = *(v0 + 224);
    v10 = *(v0 + 208);

    return TaskGroup.Iterator.next(isolation:)(v0 + 96, 0, 0, v10);
  }

  else
  {
    v11 = *(v0 + 136);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v21 = v2;

    sub_1000381E8(&v21, v11);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    v17 = *(v0 + 120);

    *v17 = v21;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10003615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10003622C, 0, 0);
}

uint64_t sub_10003622C()
{
  v40 = v0;
  v1 = [*(v0 + 40) hasFinishedTryingToFetchCorrectThumbnail];
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 72);
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    if (v6)
    {
      v10 = *(v0 + 48);
      v11 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v39);
      *(v11 + 12) = 2080;
      *(v0 + 24) = v10;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v12 = String.init<A>(describing:)();
      v14 = sub_100037B98(v12, v13, &v39);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s hasFinishedTryingToFetchCorrectThumbnail=true for node: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    (*(v8 + 8))(v7, v9);
    v15 = *(v0 + 40);
    v16 = *(v0 + 32);
    *v16 = *(v0 + 48);
    v16[1] = v15;
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 80);
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 80);
    v27 = *(v0 + 56);
    v26 = *(v0 + 64);
    if (v24)
    {
      v28 = *(v0 + 48);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315394;
      v39 = v30;
      *(v29 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v39);
      *(v29 + 12) = 2080;
      *(v0 + 16) = v28;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v31 = String.init<A>(describing:)();
      v33 = sub_100037B98(v31, v32, &v39);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s hasFinishedTryingToFetchCorrectThumbnail=false for node: %s", v29, 0x16u);
      swift_arrayDestroy();

      (*(v26 + 8))(v25, v27);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

    v34 = swift_task_alloc();
    *(v0 + 88) = v34;
    *(v34 + 16) = *(v0 + 40);
    v35 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v36 = swift_task_alloc();
    *(v0 + 96) = v36;
    v37 = sub_10000589C(&qword_1000BBD90, &qword_100090580);
    *v36 = v0;
    v36[1] = sub_1000366C0;
    v38 = *(v0 + 32);

    return withCheckedContinuation<A>(isolation:function:_:)(v38, 0, 0, 0xD00000000000003ALL, 0x8000000100092650, sub_100042130, v34, v37);
  }
}

uint64_t sub_1000366C0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v8 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100036810(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v50[-v11];
  v13 = sub_10000589C(&qword_1000BC3D8, &qword_100090B68);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50[-v16];
  v18 = *(v14 + 16);
  v54 = a1;
  v18(&v50[-v16], a1, v13);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  (*(v14 + 32))(v20 + v19, v17, v13);
  v61 = sub_100042210;
  v62 = v20;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10000D508;
  v60 = &unk_1000AEA80;
  v21 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  LODWORD(v17) = [a2 registerGenerationCompletionHandler:v21];
  _Block_release(v21);
  if (v17)
  {
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v24 = 136315650;
      *(v24 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &aBlock);
      *(v24 + 12) = 2080;
      v25 = [a2 thumbnail];
      v26 = [v25 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v6;
      v28 = v27;
      v30 = v29;

      v31 = sub_100037B98(v28, v30, &aBlock);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2080;
      v56 = a3;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v32 = String.init<A>(describing:)();
      v34 = sub_100037B98(v32, v33, &aBlock);

      *(v24 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s registerGenerationCompletionHandler success: %s for observedNode: %s", v24, 0x20u);
      swift_arrayDestroy();

      return (*(v55 + 8))(v12, v53);
    }

    else
    {

      return (*(v55 + 8))(v12, v6);
    }
  }

  else
  {
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock = v52;
      *v38 = 136315650;
      *(v38 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &aBlock);
      *(v38 + 12) = 2080;
      v39 = [a2 thumbnail];
      v51 = v37;
      v40 = v39;
      v41 = [v39 description];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v6;
      v43 = v42;
      v45 = v44;

      v46 = sub_100037B98(v43, v45, &aBlock);

      *(v38 + 14) = v46;
      *(v38 + 22) = 2080;
      v56 = a3;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v47 = String.init<A>(describing:)();
      v49 = sub_100037B98(v47, v48, &aBlock);

      *(v38 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v36, v51, "%s registerGenerationCompletionHandler failed: %s for observedNode: %s", v38, 0x20u);
      swift_arrayDestroy();

      (*(v55 + 8))(v10, v53);
    }

    else
    {

      (*(v55 + 8))(v10, v6);
    }

    aBlock = a3;
    v58 = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100036EB4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v12;
    v14 = v13;
    v30 = swift_slowAlloc();
    v33[0] = v30;
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v33);
    *(v14 + 12) = 2080;
    v15 = [a1 thumbnail];
    v16 = [v15 description];
    v31 = a3;
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v6;
    v19 = v18;
    v21 = v20;

    v22 = sub_100037B98(v19, v21, v33);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2080;
    v32 = a2;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, v33);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v11, v29, "%s registerGenerationCompletionHandler sent completion block: %s for observedNode: %s", v14, 0x20u);
    swift_arrayDestroy();

    (*(v7 + 8))(v10, v28);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v33[0] = a2;
  v33[1] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10000589C(&qword_1000BC3D8, &qword_100090B68);
  return CheckedContinuation.resume(returning:)();
}

BOOL sub_1000371B4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v18 = a3;
  v6 = *a3;
  v7 = *a3 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_32:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *(v7 + 16);
  }

  v9 = 0;
  while (v8 != v9)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v10 = *(v6 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v11 = DOCNode.isEqualTo(node:)();
    swift_unknownObjectRelease();
    if (v11)
    {
      goto LABEL_14;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_30;
    }
  }

  v9 = 0;
LABEL_14:

  swift_beginAccess();
  v13 = *v18;
  v7 = *v18 & 0xFFFFFFFFFFFFFF8;
  if (*v18 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  while (v6 != v14)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v7 + 16))
      {
        goto LABEL_29;
      }

      v15 = *(v13 + 8 * v14 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v16 = DOCNode.isEqualTo(node:)();
    swift_unknownObjectRelease();
    if (v16)
    {
      goto LABEL_27;
    }

    v12 = __OFADD__(v14++, 1);
    if (v12)
    {
      goto LABEL_31;
    }
  }

  v14 = 0;
LABEL_27:

  return v14 < v9;
}

void sub_1000373C0(void *a1, uint64_t a2)
{
  DOCScaledThumbnailCornerRadius();
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = v4;
    v7 = (a2 + 40);
    p_type = &stru_1000B6FF0.type;
    do
    {
      v10 = *(v7 - 1);
      v11 = *v7;
      swift_unknownObjectRetain();
      v12 = [swift_unknownObjectRetain() thumbnail];
      v13 = [v11 isRepresentativeIcon];
      v14 = [v10 isFolder];
      [v12 size];
      DOCAdaptSizeToRect();
      v19 = v15;
      v20 = v16;
      v21 = v17;
      v22 = v18;
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = [objc_opt_self() bezierPathWithRoundedRect:v15 cornerRadius:{v16, v17, v18, v6}];
      }

      v24 = p_type;
      v25 = [a1 p_type[377]];
      CGContextSaveGState(v25);

      p_type = v24;
      v26 = v23;
      [v26 addClip];
      [v12 drawInRect:{v19, v20, v21, v22}];
      if (v13)
      {
        c = [a1 v24[377]];
        v27 = [objc_opt_self() separatorColor];
        v28 = [v27 CGColor];

        p_type = v24;
        CGContextSetStrokeColorWithColor(c, v28);

        v29 = [a1 v24[377]];
        CGContextSetLineWidth(v29, 1.0);

        [v26 stroke];
      }

      v9 = [a1 p_type[377]];
      CGContextRestoreGState(v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v7 += 2;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1000376A8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = a3;
  sub_100041D04(a1, a2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  sub_100041D6C(a1, a2);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v13;
    v15 = v14;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v15 = 136315650;
    *(v15 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100092A80, &v35);
    *(v15 + 12) = 2080;
    v16 = v11;
    v17 = [v16 description];
    v29 = v6;
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v11;
    v20 = v19;
    v22 = v21;

    v23 = sub_100037B98(v20, v22, &v35);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    v33 = a1;
    v34 = a2;
    sub_100041D04(a1, a2);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, &v35);

    *(v15 + 24) = v26;
    v11 = v32;
    _os_log_impl(&_mh_execute_header, v12, v30, "%s self: %s iconData: %s", v15, 0x20u);
    swift_arrayDestroy();

    result = (*(v7 + 8))(v10, v29);
  }

  else
  {

    result = (*(v7 + 8))(v10, v6);
  }

  if (a2 >> 60 != 15)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100041D18(a1, a2);
      sub_10004782C(v11, a1, a2);
      swift_unknownObjectRelease();
      return sub_100041D6C(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1000379B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  v5(v6, v8);

  return sub_1000064E0(v8);
}

unint64_t sub_100037A68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100037AE0(a1, a2, v6);
}

unint64_t sub_100037AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100037B98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100037C64(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100041480(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000064E0(v11);
  return v7;
}

unint64_t sub_100037C64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100037D70(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100037D70(uint64_t a1, unint64_t a2)
{
  v4 = sub_100037DBC(a1, a2);
  sub_100037EEC(&off_1000ADAB0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100037DBC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100037FD8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100037FD8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100037EEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10003804C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100037FD8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000589C(&qword_1000BC310, &qword_100090AC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003804C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000589C(&qword_1000BC310, &qword_100090AC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_100038140(void **a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100010FD4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10003825C(v5);
  *a1 = v3;
}

Swift::Int sub_1000381E8(void **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100011020(v4);
  }

  v5 = v4[2];
  v7[0] = v4 + 4;
  v7[1] = v5;
  result = sub_100038388(v7, a2);
  *a1 = v4;
  return result;
}

void sub_10003825C(uint64_t *a1)
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
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100038890(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_10003849C(0, v2, 1, a1);
  }
}

Swift::Int sub_100038388(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000589C(&qword_1000BBD90, &qword_100090580);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = v7 + 4;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_100039274(v9, v10, a1, v6, a2);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_100038744(0, v4, 1, a1, a2);
  }

  return result;
}

void sub_10003849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v34 - v12;
  v15.n128_f64[0] = __chkstk_darwin(v13);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      (v46)(v48, v23, v8, v15);
      v27 = v49;
      v26(v49, v24, v8);
      v28 = IndexPath.item.getter();
      v29 = IndexPath.item.getter();
      v30 = *v45;
      (*v45)(v27, v8);
      v30(v25, v8);
      if (v29 >= v28)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = &v39[v35];
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v24, v32, v8);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100038744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v19 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 16 * a3 - 16);
    v8 = result - a3;
    v16 = *a4;
LABEL_4:
    v14 = v7;
    v15 = a3;
    v9 = *(v6 + 16 * a3);
    v13 = v8;
    while (1)
    {
      v17 = *v7;
      v18 = v9;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = sub_1000371B4(&v18, &v17, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v5)
      {
        break;
      }

      if (!v10)
      {
        v6 = v16;
LABEL_12:
        a3 = v15 + 1;
        v7 = v14 + 1;
        v8 = v13 - 1;
        if (v15 + 1 != a2)
        {
          goto LABEL_4;
        }

        return result;
      }

      v6 = v16;
      if (!v16)
      {
        __break(1u);
        return result;
      }

      v9 = v7[1];
      v7[1] = *v7;
      *v7-- = v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_100038890(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v119 = a1;
  v9 = type metadata accessor for IndexPath();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v123 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v116 - v13;
  __chkstk_darwin(v14);
  v139 = &v116 - v15;
  v18.n128_f64[0] = __chkstk_darwin(v16);
  v138 = &v116 - v19;
  v20 = a3[1];
  v128 = v17;
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v128;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v22 = sub_10000F704(v22);
    }

    v141 = v22;
    v112 = *(v22 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v22[16 * v112];
        v114 = *&v22[16 * v112 + 24];
        sub_100039A38(*a3 + *(v9 + 72) * v113, *a3 + *(v9 + 72) * *&v22[16 * v112 + 16], *a3 + *(v9 + 72) * v114, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_10000F704(v22);
        }

        if (v112 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v22[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v141 = v22;
        sub_10000F678(v112 - 1);
        v22 = v141;
        v112 = *(v141 + 2);
        if (v112 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v117 = a4;
  v21 = 0;
  v136 = (v17 + 8);
  v137 = v17 + 16;
  v135 = (v17 + 32);
  v22 = _swiftEmptyArrayStorage;
  v121 = a3;
  v140 = v9;
  while (1)
  {
    v129 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v130 = v20;
      v118 = v6;
      v23 = *a3;
      v120 = v21;
      v24 = v128[9];
      v5 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v134 = v23;
      v26 = v9;
      v27 = v128[2];
      v28 = v138;
      v27(v138, v5, v26, v18);
      v29 = &v25[v24 * v21];
      v30 = v139;
      v126 = v27;
      (v27)(v139, v29, v26);
      v131 = IndexPath.item.getter();
      v127 = IndexPath.item.getter();
      v31 = v128[1];
      v31(v30, v26);
      v125 = v31;
      v31(v28, v26);
      v32 = v120 + 2;
      v132 = v24;
      v33 = &v134[v24 * (v120 + 2)];
      while (1)
      {
        v34 = v130;
        if (v130 == v32)
        {
          break;
        }

        v35 = v126;
        LODWORD(v134) = v127 < v131;
        v36 = v138;
        v37 = v140;
        (v126)(v138, v33, v140);
        v38 = v139;
        v35(v139, v5, v37);
        v39 = IndexPath.item.getter();
        v40 = IndexPath.item.getter();
        v41 = v125;
        (v125)(v38, v37);
        v41(v36, v37);
        v22 = v129;
        ++v32;
        v33 += v132;
        v5 += v132;
        if (((v134 ^ (v40 >= v39)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v6 = v118;
      v21 = v120;
      a3 = v121;
      v9 = v140;
      if (v127 < v131)
      {
        if (v34 < v120)
        {
          goto LABEL_123;
        }

        if (v120 < v34)
        {
          v42 = v132 * (v34 - 1);
          v5 = v34 * v132;
          v130 = v34;
          v43 = v34;
          v44 = v120;
          v45 = v120 * v132;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v135;
              (*v135)(v123, &v46[v45], v9);
              if (v45 < v42 || &v46[v45] >= &v46[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v47(&v46[v42], v123, v9);
              a3 = v121;
              v22 = v129;
            }

            ++v44;
            v42 -= v132;
            v5 -= v132;
            v45 += v132;
          }

          while (v44 < v43);
          v6 = v118;
          v21 = v120;
          v34 = v130;
        }
      }
    }

    v48 = a3[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v117)
      {
        if (__OFADD__(v21, v117))
        {
          goto LABEL_124;
        }

        if (v21 + v117 >= v48)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v21 + v117;
        }

        if (v5 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v5)
        {
          break;
        }
      }
    }

    v5 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_10000D8A0(0, *(v22 + 2) + 1, 1, v22);
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v22 = sub_10000D8A0((v49 > 1), v50 + 1, 1, v22);
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v5;
    v53 = *v119;
    if (!*v119)
    {
      goto LABEL_131;
    }

    v124 = v5;
    if (v50)
    {
      while (1)
      {
        v5 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v5 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v5];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v5 - 1;
        if (v5 - 1 >= v51)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v5 + 40];
        sub_100039A38(*a3 + v128[9] * v92, *a3 + v128[9] * *&v22[16 * v5 + 32], *a3 + v128[9] * v93, v53);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_10000F704(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v141 = v22;
        sub_10000F678(v5);
        v22 = v141;
        v51 = *(v141 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v5 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v5 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v124;
    if (v124 >= v20)
    {
      goto LABEL_94;
    }
  }

  v118 = v6;
  v95 = *a3;
  v96 = v128[9];
  v134 = v128[2];
  v97 = &v95[v96 * (v34 - 1)];
  v131 = -v96;
  v132 = v95;
  v120 = v21;
  v98 = (v21 - v34);
  v122 = v96;
  v99 = &v95[v34 * v96];
  v124 = v5;
LABEL_85:
  v130 = v34;
  v125 = v99;
  v126 = v98;
  v127 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v138;
    v102 = v134;
    (v134)(v138, v99, v9);
    v103 = v139;
    v102(v139, v100, v140);
    v104 = IndexPath.item.getter();
    v105 = IndexPath.item.getter();
    v106 = *v136;
    v107 = v103;
    v9 = v140;
    (*v136)(v107, v140);
    v106(v101, v9);
    if (v105 >= v104)
    {
LABEL_84:
      v34 = v130 + 1;
      v97 = v127 + v122;
      v98 = v126 - 1;
      v5 = v124;
      v99 = &v125[v122];
      if (v130 + 1 != v124)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v21 = v120;
      a3 = v121;
      v22 = v129;
      if (v124 < v120)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v108 = *v135;
    v109 = v133;
    (*v135)(v133, v99, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v9);
    v100 += v131;
    v99 += v131;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_100039274(uint64_t result, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v8 = a3;
  v96 = result;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_88:
    v6 = v8;
    v8 = *v96;
    if (*v96)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_90;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v100 = v9;
      v14 = *v8;
      v101 = *(*v8 + 16 * v13);
      v105 = *(*v8 + 16 * v10);
      v102 = v105;
      *v106 = v101;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = v102;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v97 = sub_1000371B4(v106, &v105, a5);
      if (v7)
      {
LABEL_101:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v15 = v12 + 2;
      v94 = v12;
      v90 = 16 * v12;
      v16 = (v14 + 16 * v12 + 32);
      while (1)
      {
        v17 = v100;
        if (v100 == v15)
        {
          break;
        }

        v18 = *v16;
        v105 = *(v16 - 1);
        v103 = v105;
        *v106 = v18;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v6 = v103;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = sub_1000371B4(v106, &v105, a5);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v15;
        ++v16;
        if ((v97 ^ v19))
        {
          v17 = v15 - 1;
          break;
        }
      }

      v7 = 0;
      v8 = a3;
      v12 = v94;
      if (v97)
      {
        if (v17 < v94)
        {
          goto LABEL_123;
        }

        v20 = v90;
        if (v94 < v17)
        {
          v21 = 16 * v17 - 16;
          v22 = v17;
          v23 = v94;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = *(v24 + v20);
              *(v24 + v20) = *(v24 + v21);
              *(v24 + v21) = v25;
            }

            ++v23;
            v21 -= 16;
            v20 += 16;
          }

          while (v23 < v22);
        }
      }

      v13 = v17;
    }

    v26 = *(v8 + 1);
    if (v13 >= v26)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_119;
    }

    if (v13 - v12 >= a4)
    {
      goto LABEL_132;
    }

    v27 = v12 + a4;
    if (__OFADD__(v12, a4))
    {
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

    if (v27 >= v26)
    {
      v27 = *(v8 + 1);
    }

    if (v27 < v12)
    {
      goto LABEL_122;
    }

    if (v13 == v27)
    {
LABEL_132:
      if (v13 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v87 = v11;
      v88 = v27;
      v74 = *v8;
      v75 = *v8 + 16 * v13 - 16;
      v95 = v12;
      v76 = v12 - v13;
      do
      {
        v99 = v13;
        v77 = *(v74 + 16 * v13);
        v89 = v76;
        v91 = v75;
        v78 = v75;
        do
        {
          v105 = *v78;
          *v106 = v77;
          v6 = v77;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v79 = sub_1000371B4(v106, &v105, a5);
          if (v7)
          {
            goto LABEL_101;
          }

          v80 = v79;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (!v80)
          {
            break;
          }

          if (!v74)
          {
            goto LABEL_125;
          }

          v77 = v78[1];
          v78[1] = *v78;
          *v78-- = v77;
        }

        while (!__CFADD__(v76++, 1));
        v13 = v99 + 1;
        v75 = v91 + 16;
        v76 = v89 - 1;
      }

      while (v99 + 1 != v88);
      v13 = v88;
      v7 = 0;
      v8 = a3;
      v12 = v95;
      v11 = v87;
      if (v88 < v95)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v98 = v13;
    if ((result & 1) == 0)
    {
      result = sub_10000D8A0(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v29 = *(v11 + 2);
    v28 = *(v11 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_10000D8A0((v28 > 1), v29 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v30;
    v31 = &v11[16 * v29];
    *(v31 + 4) = v12;
    *(v31 + 5) = v13;
    v32 = *v96;
    if (!*v96)
    {
      goto LABEL_128;
    }

    if (v29)
    {
      break;
    }

LABEL_3:
    v9 = *(v8 + 1);
    v10 = v98;
    if (v98 >= v9)
    {
      goto LABEL_88;
    }
  }

  while (1)
  {
    v6 = v30 - 1;
    if (v30 >= 4)
    {
      v37 = &v11[16 * v30 + 32];
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_105;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_106;
      }

      v44 = &v11[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_108;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_111;
      }

      if (v48 >= v40)
      {
        v66 = &v11[16 * v6 + 32];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_117;
        }

        if (v35 < v69)
        {
          v6 = v30 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

    if (v30 == 3)
    {
      v33 = *(v11 + 4);
      v34 = *(v11 + 5);
      v43 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      v36 = v43;
LABEL_47:
      if (v36)
      {
        goto LABEL_107;
      }

      v49 = &v11[16 * v30];
      v51 = *v49;
      v50 = *(v49 + 1);
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_110;
      }

      v55 = &v11[16 * v6 + 32];
      v57 = *v55;
      v56 = *(v55 + 1);
      v43 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v43)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v53, v58))
      {
        goto LABEL_114;
      }

      if (v53 + v58 >= v35)
      {
        if (v35 < v58)
        {
          v6 = v30 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_61;
    }

    v59 = &v11[16 * v30];
    v61 = *v59;
    v60 = *(v59 + 1);
    v43 = __OFSUB__(v60, v61);
    v53 = v60 - v61;
    v54 = v43;
LABEL_61:
    if (v54)
    {
      goto LABEL_109;
    }

    v62 = &v11[16 * v6];
    v64 = *(v62 + 4);
    v63 = *(v62 + 5);
    v43 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v43)
    {
      goto LABEL_112;
    }

    if (v65 < v53)
    {
      goto LABEL_3;
    }

LABEL_68:
    v70 = v6 - 1;
    if (v6 - 1 >= v30)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_124;
    }

    v71 = *&v11[16 * v70 + 32];
    v72 = *&v11[16 * v6 + 40];
    sub_100039FF0((*v8 + 16 * v71), (*v8 + 16 * *&v11[16 * v6 + 32]), (*v8 + 16 * v72), v32, a5);
    if (v7)
    {
    }

    if (v72 < v71)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10000F704(v11);
    }

    if (v70 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v73 = &v11[16 * v70];
    *(v73 + 4) = v71;
    *(v73 + 5) = v72;
    v107 = v11;
    result = sub_10000F678(v6);
    v11 = v107;
    v30 = *(v107 + 2);
    if (v30 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
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
  result = sub_10000F704(v11);
  v11 = result;
LABEL_90:
  v82 = v7;
  v107 = v11;
  v83 = *(v11 + 2);
  if (v83 < 2)
  {
  }

  while (*v6)
  {
    v7 = v83 - 1;
    v84 = *&v11[16 * v83];
    v85 = *&v11[16 * v83 + 24];
    sub_100039FF0((*v6 + 16 * v84), (*v6 + 16 * *&v11[16 * v83 + 16]), (*v6 + 16 * v85), v8, a5);
    if (v82)
    {
    }

    if (v85 < v84)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10000F704(v11);
    }

    if (v83 - 2 >= *(v11 + 2))
    {
      goto LABEL_116;
    }

    v86 = &v11[16 * v83];
    *v86 = v84;
    *(v86 + 1) = v85;
    v107 = v11;
    result = sub_10000F678(v83 - 1);
    v11 = v107;
    v83 = *(v107 + 2);
    if (v83 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

void sub_100039A38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = type metadata accessor for IndexPath();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v8 + 16);
      v51 = (v8 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = IndexPath.item.getter();
          v46 = IndexPath.item.getter();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v46 < v57)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v55 = v14;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = IndexPath.item.getter();
        v27 = IndexPath.item.getter();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v27 >= v26)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  sub_10003A474(&v65, &v64, &v63);
}

uint64_t sub_100039FF0(char *__src, uint64_t *a2, _OWORD *a3, char *a4, uint64_t *a5)
{
  v6 = a3;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a2;
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      v14 = __src;
      v15 = a4;
      memmove(a4, __src, 16 * v9);
      __src = v14;
      a4 = v15;
    }

    v58 = &a4[16 * v9];
    v16 = a4;
    if (v7 >= 16 && v13 < v6)
    {
      v17 = v13;
      v51 = v6;
      while (1)
      {
        v18 = __src;
        v19 = v17[1];
        v56 = *v17;
        v57 = v19;
        v20 = v16;
        v21 = *v16;
        v22 = *(v16 + 8);
        v54 = v21;
        v55 = v22;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v23 = sub_1000371B4(&v56, &v54, a5);
        if (v5)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v39 = v58 - v20 + 15;
          if (v58 - v20 >= 0)
          {
            v39 = v58 - v20;
          }

          v40 = v39 >> 4;
          if (v18 < v20 || v18 >= (v20 + (v39 & 0xFFFFFFFFFFFFFFF0)))
          {
            memmove(v18, v20, 16 * v40);
          }

          else if (v18 != v20)
          {
            v41 = 16 * v40;
            __src = v18;
            v42 = v20;
            goto LABEL_60;
          }

          return 1;
        }

        v24 = v23;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v24)
        {
          break;
        }

        v25 = v17;
        v26 = v18;
        v27 = v18 == v17;
        v17 += 2;
        v16 = v20;
        if (!v27)
        {
          goto LABEL_18;
        }

LABEL_19:
        __src = (v26 + 2);
        if (v16 >= v58 || v17 >= v51)
        {
          goto LABEL_54;
        }
      }

      v25 = v20;
      v16 = (v20 + 2);
      v26 = v18;
      if (v18 == v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v26 = *v25;
      goto LABEL_19;
    }

    goto LABEL_54;
  }

  v49 = __src;
  v16 = a4;
  if (a4 != a2 || &a2[2 * v12] <= a4)
  {
    v28 = a2;
    memmove(a4, a2, 16 * v12);
    a2 = v28;
  }

  __src = a2;
  v58 = (v16 + 16 * v12);
  if (v10 < 16 || a2 <= v49)
  {
LABEL_54:
    v45 = &v58[-v16 + 15];
    if (&v58[-v16] >= 0)
    {
      v45 = &v58[-v16];
    }

    if (__src >= v16 && __src < v16 + (v45 & 0xFFFFFFFFFFFFFFF0) && __src == v16)
    {
      return 1;
    }

    v41 = 16 * (v45 >> 4);
    v42 = v16;
LABEL_60:
    memmove(__src, v42, v41);
    return 1;
  }

  v29 = -v16;
  v50 = v16;
  v47 = -v16;
LABEL_28:
  v30 = v5;
  v52 = __src;
  v48 = __src - 16;
  v31 = v58;
  v32 = &v58[v29];
  --v6;
  while (1)
  {
    v34 = *(v31 - 2);
    v33 = *(v31 - 1);
    v31 -= 16;
    v56 = v34;
    v57 = v33;
    v35 = *(v52 - 1);
    v54 = *(v52 - 2);
    v55 = v35;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v5 = v30;
    v36 = sub_1000371B4(&v56, &v54, a5);
    if (v30)
    {
      break;
    }

    v37 = v36;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v38 = (v6 + 1);
    if (v37)
    {
      if (v38 != v52)
      {
        *v6 = *v48;
      }

      v16 = v50;
      if (v58 <= v50 || (__src = v48, v29 = v47, v48 <= v49))
      {
        __src = v48;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v38 != v58)
    {
      *v6 = *v31;
    }

    v32 -= 16;
    --v6;
    v58 = v31;
    if (v31 <= v50)
    {
      v58 = v31;
      v16 = v50;
      __src = v52;
      goto LABEL_54;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v32 >= 0)
  {
    v43 = v32;
  }

  else
  {
    v43 = v32 + 15;
  }

  v44 = v43 >> 4;
  v42 = v50;
  __src = v52;
  if (v52 < v50 || v52 >= &v50[v43 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v52, v50, 16 * v44);
    return 1;
  }

  if (v52 != v50)
  {
    v41 = 16 * v44;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_10003A474(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10003A558(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for IndexPath();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = __chkstk_darwin(v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_10003A7FC(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_10003A8F0;

  return v6(v2 + 16);
}

uint64_t sub_10003A8F0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10003AA04(int a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v12)
    {
      [v12 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v13 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v13);
    v14 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v15 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    *v14 = 0;
    v14[1] = 0;

    v16 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    v17 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts];
    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v32 = a1;
    v36 = v23;
    *v22 = 136315906;
    *(v22 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v36);
    v33 = v6;
    *(v22 + 12) = 2080;
    v25 = *&v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v24 = *&v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v26 = sub_100037B98(v25, v24, &v36);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2080;
    v35 = v18[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v27 = String.init<A>(describing:)();
    v29 = sub_100037B98(v27, v28, &v36);

    *(v22 + 24) = v29;
    *(v22 + 32) = 1024;
    *(v22 + 34) = v32 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v22, 0x26u);
    swift_arrayDestroy();

    result = (*(v34 + 8))(v11, v33);
  }

  else
  {

    result = (*(v7 + 8))(v11, v6);
  }

  *(a3 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isOpened) = 0;
  return result;
}